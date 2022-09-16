Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47051C6FA82
	for <linux-phy@archiver.kernel.org>; Fri, 16 Sep 2022 06:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2bgNA37+OZwJZWn//t3On7MoMpakYsIper0pquuaTSw=; b=ncoCJYvZ/s0gzP
	CWP2STGryYlILclE3i809Mt+LSweLZ3mMtHem3AV6QK5MUMcrDk+RWad/PWPhna/s+mljQ+Oewb5F
	317QIF7wZQn6W2kxLQNAim61MYIGtiRbuFZ0JyXGrwbnxiyp96B7opuhwjglrh2W5XO1sY44/jkZH
	TZ9Zg/fYXtUTIMsUTkLJp6Hc9rTBes4rkZIGDXSTFMxM9orsJ/jta+hbuh0HWUWLuM5zwSVlic4K+
	EvH49iNqZDjPgQVzqGGRB2XOvP79UWM2hCumkA9qWrLbx06K4CGPyJZCzubZB7/68YVUFRBQLnqGd
	NOmLwa80mOJ7JVxQQjgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ4fa-0095yB-De; Fri, 16 Sep 2022 06:17:46 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ4fY-0095kN-6A
	for linux-phy@lists.infradead.org; Fri, 16 Sep 2022 06:17:45 +0000
Received: by mail-lf1-x12b.google.com with SMTP id w8so33929601lft.12
        for <linux-phy@lists.infradead.org>; Thu, 15 Sep 2022 23:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=IGJdO2o9W+EN9QbSgrXXc87YNjS5Imv5FNNu7TSke8M=;
        b=ediOniOvKQsnu4ipXEdJ5RnQ3r0QzOmyZDnEkpC1CrOtZBCl7KfHzXi/AJWbcHuyHT
         h7fxsdnHxyR3pCtQ7s528qKw7XPVRrcdvDelAzB2BSh7GeIz9uXcRKXfPwN70Tml48ox
         sutHHaZ0NRAMc0ki5J9OTB2T2fGMWEJqhqOfVkhLR2uFYo2NIflwPYXPhB/RZxQkkpNK
         IKvUUgV9ZerqwxG4Yrte23h+YgFcK96eY6+4z3lsAJf3rrgE280RgZKDmaD9UNsV6NzL
         eAu5G/jVG6cEwCaBB5lToVx09WqXDnhnFt8TOg5/skwTyW4N10wRkDosSlEmYqwYz5rt
         nvgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=IGJdO2o9W+EN9QbSgrXXc87YNjS5Imv5FNNu7TSke8M=;
        b=x3bF4Ljk97TJTi500Dlpb072nqmBqjblUFdcjATkaYHvGHEZoEman65vciXbmgtmKQ
         93gR7TGwKYmPMbSI433H3hGDwfg1ENSmyDxBG4406hXRdX8VdtpGpjUfYyWNUzrqOF5J
         Kiv4Ajk6oBpACIE4LggMMjkSCrRxj5tRddfHKNx1Ws8jWjWAVlsVEMoSZBqlAHhsknLv
         X/KrDDC9AS2Hk3GiFZIxmnSrMmFng4gV8PwBqqxSn4gIX3xCeAkZ1gBOH0QA8jWwiMjL
         dfRuW2yAlCBICu3Gfw0F2CGR97yyLODzGqAuhjb344Vhj64+YzO+RzVD2xuW7fLMPu+O
         A7dQ==
X-Gm-Message-State: ACrzQf3MJ1QO3605hNCFElqb06MW4xJoyT3lKlTGPcsClf0Lm1eMhCXs
	wdn5IRKaewO8Cc4Fhhdxjcd3GA==
X-Google-Smtp-Source: AMsMyM6PIkWlCjzFPaXY8+6RRN4/pzBptHKoG2rk9EfbxoDRJtBRoHvHNGcRABuG92wKdtplYTFrrQ==
X-Received: by 2002:a05:6512:3da1:b0:49f:1b3d:88b9 with SMTP id k33-20020a0565123da100b0049f1b3d88b9mr1057157lfv.67.1663309061446;
        Thu, 15 Sep 2022 23:17:41 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id b15-20020a2eb90f000000b00261eaa819b7sm3529383ljb.30.2022.09.15.23.17.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Sep 2022 23:17:40 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Taniya Das <quic_tdas@quicinc.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v4 0/3] phy: qcom-qmp-ufs: add symbol clocks support
Date: Fri, 16 Sep 2022 09:17:37 +0300
Message-Id: <20220916061740.87167-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220915_231744_245777_E6038E13 
X-CRM114-Status: UNSURE (   7.29  )
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

Register UFS symbol clocks in the Qualcomm QMP PHY driver. Some of the
platforms (msm8996, sc7280, sm8350/sm8450) expect them to be defined (to
be used as GCC clock parents).

Changes since v3:
- Rewrote asm9260 clk driver to fix the TODO item by using parent index
  rather than calling of_clk_get_parent_name().

Changes since v2:
- Added error handling to phy_symbols_clk_register() (requested by
  Johan).

Changes since v1:
- Added a macro used by clk-asm9260, so that the clk-fixed-rate changes
  do not affect the driver
- Changed registered clock names to be unique (as e.g. SC8280XP will
  have two UFS PHYs).

Dmitry Baryshkov (3):
  clk: asm9260: use parent index to link the reference clock
  clk: fixed-rate: add devm_clk_hw_register_fixed_rate
  phy: qcom-qmp-ufs: provide symbol clocks

 drivers/clk/clk-asm9260.c               | 29 +++++-------
 drivers/clk/clk-fixed-rate.c            | 28 ++++++++++--
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 59 +++++++++++++++++++++++++
 include/linux/clk-provider.h            | 48 +++++++++++++++++---
 4 files changed, 136 insertions(+), 28 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
