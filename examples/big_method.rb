def enqueue_next_jobs(job_id)
  return if deleted?
  finished_jobs_ids = Media.where(_id: self._id).find_and_modify(
    { "$push" => { "finished_jobs_ids" => job_id }},
    { new: true }
  ).finished_jobs_ids

  if jobs.where(:job_id.nin => finished_jobs_ids).empty?
    finish_job_processing
  else
    jobs_dependent_of = jobs.dependent_of(job_id)
    jobs_dependent_of.each do |job|
      waiting_dependencies = (job.dependencies - finished_jobs_ids)
      if waiting_dependencies.empty?
        job.enqueue
      end
    end
  end
end
