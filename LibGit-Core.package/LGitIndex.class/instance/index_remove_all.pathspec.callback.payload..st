libgit - calls
index_remove_all: index pathspec: pathspec callback: callback payload: payload
	
	^ self
		ffiCallSafely:
			#(LGitReturnCodeEnum git_index_remove_all #(self, LGitStringArray * pathspec, LGitIndexMatchedPathCallback callback, void *payload))
		options: #(optMayGC optCoerceNilToNull)