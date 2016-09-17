namespace :add_db_info do
  desc "generates all jobs in db"
    task add_previous_jobs: :environment do
      Job.destroy_all

      skills_used = Skill.all

      tic = Job.new do |j|
        j.client =  "Transport Inner Circle"
        j.description = "A freight transport company based out of Montreal. They were looking to up their online presence so I designed and built them this entire web app"
        j.url = "http://www.transportinnercircle.herokuapp.com/"
        j.repository = "https://github.com/pwat92/transportinnercircle"
        j.screenshot = "TransportInnerCircleScreen.png"
        j.type_of_work = "Design & Rails Application"
        j.skills = [skills_used[0], skills_used[1], skills_used[9], skills_used[10], skills_used[11]]
      end

      notoriety = Job.new do |j|
        j.client =  "Noteoriety"
        j.description = "A note sharing app for students, allows for easy sharing of notes and class work. I built the entire backend and API and also designed all of the data structures."
        j.url = "http://www.noteoriety.com/"
        j.repository = nil
        j.screenshot = "rawcode.png"
        j.type_of_work = "Rails API & Data structure Design"
        j.skills = [skills_used[0], skills_used[1]]
      end

      ttc = Job.new do |j|
        j.client =  "Travelling Tea Club"
        j.description = "The travelling tea club is a company that I started. It is a monthly tea club which allows people to try new tea every month!. I designed and built the entire store, using a shopify theme and writing some code myself to get it just how I liked it"
        j.url = "https://travellingteaclub.com/"
        j.repository = nil
        j.screenshot = "TravellingTeaClubScreen.png"
        j.type_of_work = "Design & Shopify Store"
        j.skills = [skills_used[4], skills_used[5], skills_used[6], skills_used[10], skills_used[11]]
      end

      stb = Job.new do |j|
        j.client =  "Sharethebus"
        j.description = "A Montreal based start up that is revolutionizing the way large groups of people travel! I worked mostly on the backend of their rails and mobile apps, incredible learning and incredible people!"
        j.url = "https://www.sharethebus.com/"
        j.repository = nil
        j.screenshot = "rawcode.png"
        j.type_of_work = "Rails Application & a little AngularJS"
        j.skills = [skills_used[0], skills_used[1], skills_used[2], skills_used[7], skills_used[9], skills_used[10], skills_used[11]]
      end

      pdm = Job.new do |j|
        j.client =  "Pro Deco Montreal"
        j.description = "A Montreal based paint contracting company. I designed the logo, business cards and website for Pro Deco Montreal!"
        j.url = "http://prodecomontreal.ca/"
        j.repository = nil
        j.screenshot = "ProDecoLogo.png"
        j.type_of_work = "Design & Wordpress develpment"
        j.skills = [skills_used[3], skills_used[5], skills_used[6], skills_used[10], skills_used[11]]
      end

      pwp = Job.new do |j|
        j.client =  "This Website!"
        j.description = "The site you're on right now! I needed a way to display all of my previous and future work! so I designed and coded this rails application to do just that!"
        j.url = nil
        j.repository = "https://github.com/pwat92/portfolio"
        j.screenshot = "PortfolioSiteScreen.png"
        j.type_of_work = "Design & Rails Application"
        j.skills = [skills_used[0], skills_used[1], skills_used[2], skills_used[5], skills_used[6], skills_used[8], skills_used[9], skills_used[10], skills_used[11]]
      end

      tic.save
      stb.save
      ttc.save
      notoriety.save
      pdm.save
      pwp.save
      puts "total jobs in db: #{Job.count}"
      puts "done"
    end

  desc "generates skills in db"
    task add_previous_skills: :environment do
      Skill.destroy_all

      ruby = Skill.new do |s|
        s.name = "Ruby"
        s.picture = "rubylogo.png"
        s.level = 90
      end

      rails = Skill.new do |s|
        s.name = "Ruby on Rails"
        s.picture = "railslogo.png"
        s.level = 90
      end

      javascript = Skill.new do |s|
        s.name = "Javascript"
        s.picture = "javascriptlogo.png"
        s.level = 50
      end

      wordpress = Skill.new do |s|
        s.name = "Wordpress"
        s.picture = "wordpresslogo.png"
        s.level = 70
      end

      shopify = Skill.new do |s|
        s.name = "Shopify"
        s.picture = "shopifylogo.png"
        s.level = 70
      end

      photoshop = Skill.new do |s|
        s.name = "Photoshop"
        s.picture = "photoshoplogo.png"
        s.level = 65
      end

      sketch = Skill.new do |s|
        s.name = "Sketch"
        s.picture = "sketchlogo.png"
        s.level = 65
      end

      angular = Skill.new do |s|
        s.name = "AngularJS"
        s.picture = "angularlogo.png"
        s.level = 40
      end

      jquery = Skill.new do |s|
        s.name = "JQuery"
        s.picture = "jquerylogo.png"
        s.level = 40
      end

      git = Skill.new do |s|
        s.name = "Git"
        s.picture = "gitlogo.png"
        s.level = 90
      end

      css = Skill.new do |s|
        s.name = "CSS"
        s.picture = "csslogo.png"
        s.level = 65
      end

      html = Skill.new do |s|
        s.name = "HTML"
        s.picture = "htmllogo.png"
        s.level = 90
      end

      ruby.save #0
      rails.save #1
      javascript.save #2
      wordpress.save #3
      shopify.save #4
      photoshop.save #5
      sketch.save #6
      angular.save #7
      jquery.save #8
      git.save #9
      css.save #10
      html.save #11

      puts "total skills in db: #{Skill.count}"
      puts "done"
    end

  desc "generates testimonials in db"
    task add_previous_testimonials: :environment do
      Testimonial.destroy_all
      @jobs = Job.all

      martin = Testimonial.create do |t|
        t.testimonial = "Patrick is an energetic person who loves to be involved in every aspect of the company. He loves to make the work place more enjoyable by organizing social activities for his coworkers. As a developer, he is eager to learn new technologies and concepts. He works hard to learn and solve issues."
        t.job = @jobs[1]
        t.giver = "Martin Provencher"
        t.position = "CTO"
      end

      puts "total testimonials in db #{Testimonial.count}"
      puts "done"
    end
end
