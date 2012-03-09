require 'net/telnet'

class CheckpointKnocker
  class << self
    def knock(options={})
      host = options[:host]
      port = options[:port]
      user = options[:user]
      pass = options[:pass]

      begin
        h = Net::Telnet.new('Host' => host,
                            'Port' => port)

        h.waitfor(/User:/) { |c| print c }
        h.print("#{user}\n") { |c| print c }

        h.waitfor(/password:/) { |c| print c }
        h.print("#{pass}\n") { |c| print c }

        h.waitfor(/authenticated/) { |c| print c }
        h.print("1") { |c| print c }

        h.waitfor(/authorized/) { |c| print c }
        h.close
      rescue Errno::ECONNRESET
        # finished
      end
    end
  end
end
