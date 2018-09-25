desc 'Считает кол-во rb файлов '
task :counterr, [:directory] do |_t, arg| 

  def file_counter(directory)
    rubs = Dir[directory + '/*.rb'].size # кол-во рб файлов в текущей директории
    folder_arr = Dir[directory + '/*/'] # кол-во папок в текущей директории
    unless folder_arr.empty?
      for i in folder_arr
        rubs += file_counter(i) # рекурсивный вызов этого метода в папку
      end
    end
    rubs # возвращает кол-во рб файлов
  end

  puts file_counter('../..')
end