# Michael Le @ le.michael6@gmail.com
# 06_performance_monitor.rb 
# use respective spec.rb to see success/ failures in code
# can be found in /spec/
#
# bundle exec rspec spec/06_performance_monitor_spec.rb
# 
def measure(x = 1)
    start_time = Time.now
    x.times {yield}
    avg_time = (Time.now - start_time) / (x)
end