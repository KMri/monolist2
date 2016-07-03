class RankingController < ApplicationController
  def have
    @have_rank_hs = Have.all.group(:item_id).limit(10).order("count_all DESC").count

    @item_hs = {}
    @have_rank_hs.each do |item_id, count|
      @item_hs[item_id] = count
    end
    
  end
  
  def want
    @want_rank_hs = Want.all.group(:item_id).limit(10).order("count_all DESC").count

    @item_hs = {}
    @want_rank_hs.each do |item_id, count|
      @item_hs[item_id] = count
    end
  end
end
