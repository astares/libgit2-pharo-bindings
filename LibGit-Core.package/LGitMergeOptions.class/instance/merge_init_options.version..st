libgit - calls
merge_init_options: opts version: version 
	^ self
		ffiCall: #(int git_merge_init_options(
			LGitMergeOptions * self, 
			LGitOptionsVersionsEnum version))
		options: #()