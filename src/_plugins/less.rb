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
                stdin, stdout, stderr = Open3.popen3("lessc -")
                stdin.puts(content)
                stdin.close
                output = stdout.read
                stdout.close
		stderr.close
		output
            rescue => e
                puts "Error converting .less: #{e.message}"
            end
        end
    end
end
