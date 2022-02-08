Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BA33C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  8 Feb 2022 00:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HI3+zyk8LPJ1V/e8wS6qXfh/iqo2qly5itz2eNFqwYo=; b=HeQjfTE96552p9
	wn4anZv1SW8zLUPcE6fjzz9vqqwSxBuBwEZyzFc8nd4IOYzzkphpvJBPt5mfcALxaTbAcX+u72hDj
	8fSNLhjJn/GEPQkGfBo4taa+rp2YK4R6terZl1o/YUr+ufDlTPAHw9GUGzCjWtjjUCaMfnA8j+FVt
	ZpTNG1JLcvroFIHCvOKmdW34FVi+UDSTKIROlq2vOUVjx2ycigp5zol2RwN0qL+Qbad23G+RxKnux
	k01iDkMX48WzsE18QhVbLakHfH9+muqGDZ0RocoeRFaj/PchJFOtjjiUXYCc+DqjBfSHU2HM+3yra
	NSr+Tg7eOfVizKC3bR/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHECH-00C2fB-Uv; Tue, 08 Feb 2022 00:17:29 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHECF-00C2eM-T2
 for linux-phy@lists.infradead.org; Tue, 08 Feb 2022 00:17:29 +0000
Received: by mail-pf1-x432.google.com with SMTP id y5so14950704pfe.4
 for <linux-phy@lists.infradead.org>; Mon, 07 Feb 2022 16:17:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qa8nRRq7La+ePNvAYQN25AB/Dkqw4RLGBac/uizNapc=;
 b=BYCyTLpFbAjJTU6RHckyUagUkCaBidw8jqLtHxiBGZ/TMfCh+6O/0Snj0cMZ1puh0S
 uYDNk0hTL+QekX34gKoIEa0F1tt4xC3CHNWKNfr9b0ETucRKUrr3yeblGqHNAUur7Bis
 bflpEEt3adM3BKkVN71bUHSUbIJXEC1hpB194=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qa8nRRq7La+ePNvAYQN25AB/Dkqw4RLGBac/uizNapc=;
 b=i7gxk0iQ5yTGv5T13fJTmdera70sSHKTSmYVwd+vZQ9Qyh0JpBC+LkRJjsYhX6ciM3
 L3FJaRTDK/RG3RQVChzfEkfh4rPJhZfxffHTM/RjXZH4HmX6FgndtiRWeVdlq0j9iQH0
 uVkMxUCZAjWNefAPXLPxMT8bSyOfNlqDjc8q5PIxAeXRamCuszjZv+/UAeulWcZa0C8p
 HZmRNV4nEeLcRWtf7LolPHM4VVcHiJK2XMB526mzDyFzBxNBl4skYP+5FAT8cobNpcbP
 ptLIvX2faTeDLTTVL50/IFQASXZ4RaMc3ge8kdTzhIEPCg/eL6pZUoLp2d5WY9nGGyRz
 Cx6g==
X-Gm-Message-State: AOAM530GsyMdjpu2cNYbrFWaQGJ9haMYT1xkmY6A2WqYFaCQkpmMwG47
 pvCgGrjHf0bFfca+Ss646zirzg==
X-Google-Smtp-Source: ABdhPJygKdc6xNR6j7YG2/jk9p/HVmxGlPDfdBoX3re4AlFyciQoFr9C4uvoSniH6pqktdxztYyKlw==
X-Received: by 2002:a63:b207:: with SMTP id x7mr1470669pge.392.1644279446187; 
 Mon, 07 Feb 2022 16:17:26 -0800 (PST)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:201:6c4d:c442:5b4:f597])
 by smtp.gmail.com with ESMTPSA id mz4sm456185pjb.53.2022.02.07.16.17.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Feb 2022 16:17:25 -0800 (PST)
From: Douglas Anderson <dianders@chromium.org>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: quic_mkrishn@quicinc.com, linux-arm-msm@vger.kernel.org,
 Sankeerth Billakanti <quic_sbillaka@quicinc.com>, robdclark@gmail.com,
 quic_khsieh@quicinc.com, quic_abhinavk@quicinc.com,
 linux-phy@lists.infradead.org, Stephen Boyd <swboyd@chromium.org>,
 Douglas Anderson <dianders@chromium.org>, Andy Gross <agross@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [REPOST PATCH v1 0/3] Add support for eDP PHY on SC7280 platform
Date: Mon,  7 Feb 2022 16:17:01 -0800
Message-Id: <20220208001704.367069-1-dianders@chromium.org>
X-Mailer: git-send-email 2.35.0.263.gb82422642f-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_161727_967130_9D3A5335 
X-CRM114-Status: GOOD (  10.32  )
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

This is a repost of the patch series that Sankeerth Billakanti posted
back in November. As Stephen pointed out [1] a few days ago, it wasn't
posted to the right place.

I've tested this and it seems to bring the eDP up on my sc7280 board,
so I'm re-posting it in the hopes that it can land soon-ish unless
there's something terribly wrong with it. ;-)

If it makes folks happier, I have no objections to Sankeerth's
original patches landing. These are the exact same thing but simply
with the addition of my Signed-off-by.

[1] https://lore.kernel.org/r/CAE-0n50sONq+URcWwvDH=UPshgy6+XZEB3sK_4n+5jNktHsEhg@mail.gmail.com


Sankeerth Billakanti (3):
  dt-bindings: phy: Add eDP PHY compatible for sc7280
  phy: qcom: Add support for eDP PHY on sc7280
  phy: qcom: Program SSC only if supported by sink

 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 4 +++-
 drivers/phy/qualcomm/phy-qcom-edp.c                     | 9 ++++++---
 2 files changed, 9 insertions(+), 4 deletions(-)

-- 
2.35.0.263.gb82422642f-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
