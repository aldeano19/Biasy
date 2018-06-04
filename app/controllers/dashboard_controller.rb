class DashboardController < ApplicationController
  # include WatsonHelper

  def index




    @journalists = Journalist.all
  end

  def doc_collection_analysis

    out = ""

    analysis = JSON.parse(WatsonHelper.query_articles_collection)

    @docs = Array.new

    analysis['results'].each do |document|

      new_doc = {}

      title = document['extracted_metadata']['title']


      puts title
      out += "<h3>#{title}<\\h3>"

      entities = document['enriched_text']['entities']

      new_doc[:title] = title
      new_doc[:entities] = Array.new


      entities.each do |element|
        subject = element['text']
        count = element['count']
        sentiment = element['sentiment']['label']


        line = "<p> #{count} | #{subject} | #{sentiment}<\\p>"
        puts line

        out += line

        new_doc[:entities].push({subject: subject, count: count, sentiment: sentiment})
      end

      @docs.push(new_doc)

    end

    render "dashboard/doc_analysis"
  end

end
