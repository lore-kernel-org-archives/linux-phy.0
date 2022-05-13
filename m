Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E866AC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 13 May 2022 22:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5O8raibIl7Uff1oLT8IidADYyvvp/Bxhoni0IGY319E=; b=2pyCpf6aZp8yWl
	7r8p6WdZo8ZSPpYldzWb81OruujoetGCkSidNejAcz2+WvP8+xY9uCnOr90ngAwnZ2wqfLcau//XH
	zeBVvjFGdh+aAwZEFAsmt89U1skvWL8mCTdJXDsJClV/WoViYkTbs83ViZQObP0ptIYRIuYxkRY9q
	mslhoNm6KCv/0tgvIndMkXfGeFblS3lYPQaQIrx9vb6/ApKy6M9ibxHMcCcCGFTRxJrT29afFG8eu
	RF/ALqqkkMs2bONPWUAjsYEZ/mi5YRhkjTKNtz3QwlLso8zULiQ2su4R+xrczw/Sorufl6OB4SUrq
	T4ffzVXFjNoNtxIFiVYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npe85-000GDH-5v; Fri, 13 May 2022 22:51:25 +0000
Received: from mail-oo1-xc29.google.com ([2607:f8b0:4864:20::c29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npe82-000GCU-Sb
 for linux-phy@lists.infradead.org; Fri, 13 May 2022 22:51:24 +0000
Received: by mail-oo1-xc29.google.com with SMTP id
 q7-20020a4adc47000000b0035f4d798376so2995414oov.6
 for <linux-phy@lists.infradead.org>; Fri, 13 May 2022 15:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e/NkuoBvgXYvzbAWwDOMbCfFkUOSLZa+w7ZV3Xisx9Q=;
 b=q6a2UCZsF6tRfpudX73+ygATvEqE3U/hHfuBCYlGVgjWXvCDSW/ooU2SkKFmpaOLS7
 YPpH0IJZTg6k1W03pYag5iFNAVKNKh4v7OCFnWiYnxn3CaPjUEKIvSM6bxQDufFc6f9/
 GD6o2mcO0TrehK8pAaOFj0Tg314Q26WSVg9rvleROfG4P43JYbhkvNiJiWGcBrLCW3vc
 AaetJgKnbR2vO2uUMIKppHQshRWUF8XugOfLyni+kHaagH7WdeNaEF7qmXo1w+oFY1Ov
 lIngYXjfhjKfXDHnctftngoOo3V11HEGeUk7Fo0gzYlrigRN578xuJc0pfTAIBOIUdn7
 NJwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e/NkuoBvgXYvzbAWwDOMbCfFkUOSLZa+w7ZV3Xisx9Q=;
 b=XV2n/hFnPrpTfujgsIfQ0UWuqCvAWzp9quBjMGrMRtyjFjc6/gB0sEFGna+BFq+0PT
 LkEKpmlqjY5y+N2gx5tJOHZ+MgP+KUm+Ht4j4eFfRfKQGOXOtvuiTNrJJ4MjtXnFKfrQ
 JBg8Xop2hpTYHDIDPjC8k9uC/mYFSfyTwnwH7JsEjAlIk2o71ihMRYXtfhTA30mbS64f
 jgB23qZGF7K7W5ZcoWJLKQjZfJ2SOMIbIYgQh7E6Qd3Y2TmDh53MPFnkd8RPt2n6HtXU
 9CUCOE8oLO/xRpRDJvXTJuHBsUP7Jv5HkoDgR+YvCYFliQeS42T0EynhVp3Isw8KM9j5
 r8Fg==
X-Gm-Message-State: AOAM5327mK2ohDUBMDQqTlkwXaVj7MPzgL+7TpangDyIFYXOb1x2q8Db
 peJ7oP6wEAxc/Vwzfntf+X7Dpg==
X-Google-Smtp-Source: ABdhPJzMxFG/WXvLdVMsesmbtKJjSkP4lUdqfhD8ANxWOAUX1Kn0kFoSk2IBFcRPKM7kdFvPu67Axw==
X-Received: by 2002:a4a:a602:0:b0:35f:2658:f34f with SMTP id
 e2-20020a4aa602000000b0035f2658f34fmr2737335oom.17.1652482280733; 
 Fri, 13 May 2022 15:51:20 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186]) by smtp.gmail.com with ESMTPSA id
 l9-20020a4ae2c9000000b0035eb4e5a6d4sm1592679oot.42.2022.05.13.15.51.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 May 2022 15:51:19 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] phy: qcom-qmp: Add SC8280XP USB3 UNI phy
Date: Fri, 13 May 2022 15:53:45 -0700
Message-Id: <20220513225348.1671639-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220513_155123_011716_CDCF55D3 
X-CRM114-Status: UNSURE (   6.16  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

The SC8280XP platform has two instances of the 5nm USB3 UNI phy attached
to the multi-port USB controller, this series adds definitions for this
PHY.

Bjorn Andersson (3):
  dt-bindings: phy: qcom,qmp: Add compatible for SC8280XP USB3 UNI phy
  phy: qcom-qmp: Add USB3 5NM QMP UNI registers
  phy: qcom-qmp: Add SC8280XP USB3 UNI phy

 .../devicetree/bindings/phy/qcom,qmp-phy.yaml |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp.c           | 138 ++++
 .../phy/qualcomm/phy-qcom-usb3-5nm-qmp-uni.h  | 617 ++++++++++++++++++
 3 files changed, 756 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-usb3-5nm-qmp-uni.h

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
