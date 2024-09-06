module DeprecatedHubspot
  class File
    UPLOAD_FILE_PATH = '/filemanager/api/v2/files'

    class << self
      def upload(file, params)
        query = {
          overwrite: params['overwrite'] || false,
          hidden: params['hidden'] || false
        }
        options = {
          multipart:
            [
              { name: 'files', contents: file },
              { name: 'file_names', contents: params['file_names'] },
              { name: 'folder_paths', contents: params['folder_paths'] }
            ]
        }
        DeprecatedHubspot::FilesConnection.post(UPLOAD_FILE_PATH, params: query, body: options)
      end
    end
  end
end
