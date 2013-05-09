require "open3"

module Jekyll
    class LessConverter < Converter
        def matches(ext)
            ext =~ /^\.less$/
        end

        def output_ext(ext)
            ".css"
        end

        def convert(content)
            begin
                stdin, stdout, stderr, wait_thr = Open3.popen2("lessc -")
                stdin.puts(content)
                stdin.close
                output = stdout.read
                wait_thr.value
                output
            rescue => e
                puts "Error converting .less: #{e.message}"
            end
        end
    end
end
