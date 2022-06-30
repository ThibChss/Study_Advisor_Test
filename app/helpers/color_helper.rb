module ColorHelper
  def color(difficulty)
    color = ""
    if difficulty == "medium"
      color = "#FF9F29"
    elsif difficulty == "easy"
      color = "#93c47d"
    elsif difficulty == "hard"
      color = "#F44336"
    end
    return color
  end

  def background_color(difficulty)
    color = ""
    if difficulty == "medium"
      color = "#FF9F2920"
    elsif difficulty == "easy"
      color = "#93c47d20"
    elsif difficulty == "hard"
      color = "#F4433620"
    end
    return color
  end

  def passed(score)
    score >= 2 ? "#93c47d" : "#F44336"
  end

  def background_passed(score)
    score >= 2 ? "#93c47d20" : "#F4433620"
  end
end
