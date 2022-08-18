//
//  ViewController.swift
//  YoutubeMusicLayout_example
//
//  Created by Seokjune Hong on 2022/08/18.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let downButton: UIButton = {
       let view = UIButton()
        view.backgroundColor = .clear
        view.setImage(UIImage(systemName: "chevron.down"), for: .normal)
        view.tintColor = .white
//        view.backgroundColor = .darkGray
        
        return view
    }()
    
    let shareButton: UIButton = {
       let view = UIButton()
        view.backgroundColor = .clear
        view.setImage(UIImage(systemName: "square.and.arrow.up"), for: .normal)
        view.tintColor = .white
//        view.backgroundColor = .darkGray
        
        return view
    }()
    
    let moreButton: UIButton = {
        let view = UIButton()
         view.backgroundColor = .clear
         view.setImage(UIImage(systemName: "ellipsis.circle"), for: .normal)
         view.tintColor = .white
//         view.backgroundColor = .darkGray
         
         return view
     }()
    
    let mainImageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Insomnia")
        
        return view
    }()
    
    let hateButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .clear
        view.setImage(UIImage(systemName: "hand.thumbsdown"), for: .normal)
        view.tintColor = .white
//        view.backgroundColor = .darkGray
        
        return view
    }()
    
    let likeButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .clear
        view.setImage(UIImage(systemName: "hand.thumbsup"), for: .normal)
        view.tintColor = .white
//        view.backgroundColor = .darkGray
        
        return view
    }()
    
    let titleLabel: UILabel = {
        let view = UILabel()
        view.text = "Insomnia (불면증)"
        view.font = .boldSystemFont(ofSize: 30)
        view.textColor = .white
        
        return view
    }()
    
    let playButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .clear
        view.setImage(UIImage(systemName: "play.fill"), for: .normal)
        view.tintColor = .white
//        view.backgroundColor = .darkGray
        
        return view
    }()
    
    let nextButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .clear
        view.setImage(UIImage(systemName: "forward.end"), for: .normal)
        view.tintColor = .white
//        view.backgroundColor = .darkGray
        
        return view
    }()
    
    let beforeButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .clear
        view.setImage(UIImage(systemName: "backward.end"), for: .normal)
        view.tintColor = .white
//        view.backgroundColor = .darkGray
        
        return view
    }()
    
    let randomButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .clear
        view.setImage(UIImage(systemName: "shuffle"), for: .normal)
        view.tintColor = .white
//        view.backgroundColor = .darkGray
        
        return view
    }()
    
    let replayButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .clear
        view.setImage(UIImage(systemName: "repeat"), for: .normal)
        view.tintColor = .white
//        view.backgroundColor = .darkGray
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        configureUI()
    }
    
    func configureUI() {
        [downButton, shareButton, moreButton, mainImageView, titleLabel, likeButton, hateButton, playButton, nextButton, beforeButton, randomButton, replayButton].forEach{ view.addSubview($0) }
        
        downButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.width.height.equalTo(50)
//            make.centerY.equalTo(view)
        }
        
        moreButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.width.height.equalTo(50)
            make.trailing.equalTo(view)
        }
        
        shareButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.width.height.equalTo(50)
            make.trailing.equalTo(moreButton.snp.leading)
        }
        
        mainImageView.snp.makeConstraints { make in
            make.topMargin.equalTo(150)
            make.trailingMargin.equalTo(-20)
            make.leadingMargin.equalTo(20)
            make.height.equalTo(mainImageView.snp.width)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view.snp.centerX)
            make.top.equalTo(mainImageView.snp.bottom).offset(30)
        }
        
        hateButton.snp.makeConstraints { make in
            make.centerY.equalTo(titleLabel)
            make.leading.equalTo(mainImageView.snp.leading)
        }
        
        likeButton.snp.makeConstraints { make in
            make.centerY.equalTo(titleLabel)
            make.trailing.equalTo(mainImageView.snp.trailing)
        }
        
        playButton.snp.makeConstraints { make in
            make.width.height.equalTo(70)
            make.centerX.equalTo(view.snp.centerX)
            make.top.equalTo(titleLabel.snp.bottom).offset(50)
        }
        
        beforeButton.snp.makeConstraints { make in
            make.width.height.equalTo(70)
            make.centerY.equalTo(playButton.snp.centerY)
            make.trailing.equalTo(playButton.snp.leading)
        }
        
        randomButton.snp.makeConstraints { make in
            make.width.height.equalTo(70)
            make.centerY.equalTo(playButton.snp.centerY)
            make.trailing.equalTo(beforeButton.snp.leading)
        }
        
        nextButton.snp.makeConstraints { make in
            make.width.height.equalTo(70)
            make.centerY.equalTo(playButton.snp.centerY)
            make.leading.equalTo(playButton.snp.trailing)
        }
        
        replayButton.snp.makeConstraints { make in
            make.width.height.equalTo(70)
            make.centerY.equalTo(playButton.snp.centerY)
            make.leading.equalTo(nextButton.snp.trailing)
        }
    }
}

