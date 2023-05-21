Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 246DCC7EE23
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 19:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4ga7VP7vjvjdqapxCa8R3IXVpO6XWZuYKJ70RNmIyzA=; b=ryOgQtkBuYxDvl
	AQz+dvcAyizPaZHY0owLtEU5cvQ5rvszTeZ978cWqSRPtKS1PUuvLq6tTca4/2eLdNLREvg651ROE
	uLRLGpHOFSPc72LNVWdwmPKDZNGaiVuTtjr+mLLdaFs4UQfo7AJN0Wv+whHFHyS0g8yQsBo+aFBcZ
	vbxN0w/Gaf0u3nrBhnxrgbeITKJ/pRdlPOPFeQAe6Z0vylTNDVNgVGwLnL3UZ0PGGfGDgalAKxlv9
	hwMq7hlMBAXki41XBcAYPJIxkiHRsc6w9VIljN8k+6xSlaDc2wzp9qeIa1wdiGJAF7b8tMMCyw6hs
	bMs6bLWp4ZjJhaIbJ3bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0orB-004Wdm-2J;
	Sun, 21 May 2023 19:36:41 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0or8-004WcC-2U
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 19:36:40 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-4f3bb61f860so1056850e87.3
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 12:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684697797; x=1687289797;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PfUuosppnnvPXefcrMwxVhtyjnjhrdnm5TpWO7x6umY=;
        b=vpiYXod8/V5Hwcj3BxAOd25fwGE+3nWqC5GIsuc7Ussrou98XYljupR/6n09sR1JSM
         WIqrJhTaaBLnb/AkEIvg+dmClqH1BYpjg7zekBa4Uz4vRT4SVkdYiEPfDxBBESzRRAZE
         SbsRjaXqBcP3Fm9pkCrqGu61LcTBZXYlQ9NyXhpxg2QPcuHg+AImP+TLtNqwNaa301od
         AyNIeODs12iY/xtcGT+9xz09wI8Dd6JtuWxg0sppCkfml/8vM9fYdu60V0U43ZcHZotj
         trV8SNu6hx8yQJCZPKTjKZCXoeQXQZPtG4w9no0sYIlCbx9g8vaB2UwfVgzV2DbbTme2
         dOPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684697797; x=1687289797;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PfUuosppnnvPXefcrMwxVhtyjnjhrdnm5TpWO7x6umY=;
        b=XGj842BW4zveM6FladeBbJQwRBZBGQNTvJpAOQU5fDfwT5DRiSw58+Pja+jljbf1EE
         tA4Kz9FoRvdGuM7oogvoIkwyxmxhr3AZDKEVIYmDa+HPPRjZFGvWhZA5Y82esWzhgdbd
         cq5lN86GnQaIEkxz4AE51I5b1/uPaWXMovSQjupZAjz5OUDzIVyUYiTDF/uaDqTEwJ+R
         MZJa0MKwpKZH2mXd98s6BZejLUjE4dnqt1Wn20f8NqHvoAcFCfhH6UnDLPzsw0VSiVOo
         Xs1LE7ayHrDPRjsadNtEtpUljWHqTaC0fSKrVQ3QzIrRk1kQUaO6LCdly+ly5W9aA7VA
         fDoQ==
X-Gm-Message-State: AC+VfDxTrHyyLsSWbO46vQy8RAeuan1WXfYk9fqfaPH7n1GpgQBNVV75
	OVhv8tIdj11nRxzEO9EQN7IN9A==
X-Google-Smtp-Source: ACHHUZ6joq/6rzGJow4uSwYkk50ZsOxo6hW+qJ120q/HX3uTpokDTKZqSMVM29lwBAjAh112qKviSQ==
X-Received: by 2002:a2e:8945:0:b0:2af:c2b:40c1 with SMTP id b5-20020a2e8945000000b002af0c2b40c1mr3273238ljk.3.1684697796827;
        Sun, 21 May 2023 12:36:36 -0700 (PDT)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id q4-20020a2e8744000000b002adb98fdf81sm830009ljj.7.2023.05.21.12.36.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 12:36:36 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 0/5] phy: qcom-qmp-usb: split away legacy USB+DP code
Date: Sun, 21 May 2023 22:36:30 +0300
Message-Id: <20230521193635.3078983-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_123638_911019_B90AC5D4 
X-CRM114-Status: UNSURE (   9.41  )
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

While working on the QMP binding cleanup, I noticed that USB QMP driver
supports both simple USB PHYs (which should be updated) and USB-only
part of USB+DP PHYs (which are largely legacy and don't need to be
updated). To ease further cleanup perform a quick cleanup of the last
remaining USB+DP PHY (on sm8150 platform) and split the legacy codepath
from the USB QMP PHY driver.

Dmitry Baryshkov (5):
  dt-bindings: phy: qcom,sc7180-qmp-usb3-dp-phy: add sm8150 USB+DP PHY
  phy: qcom-qmp-combo: add support for the USB+DP PHY on SM8150 platform
  arm64: dts: qcom: sm8150: turn first USB PHY into USB+DP PHY
  dt-bindings: phy: qcom,msm8996-qmp-usb3-phy: drop legacy bindings
  phy: qcom-qmp-usb: split off the legacy USB+dp_com support

 .../phy/qcom,msm8996-qmp-usb3-phy.yaml        |   80 -
 .../phy/qcom,sc7180-qmp-usb3-dp-phy.yaml      |    2 +
 arch/arm64/boot/dts/qcom/sm8150.dtsi          |   17 +-
 drivers/phy/qualcomm/Kconfig                  |   10 +
 drivers/phy/qualcomm/Makefile                 |    1 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     |    4 +
 .../phy/qualcomm/phy-qcom-qmp-usb-legacy.c    | 1407 +++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       |  556 -------
 8 files changed, 1437 insertions(+), 640 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
