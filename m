Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB0A6C77B73
	for <linux-phy@archiver.kernel.org>; Fri,  5 May 2023 00:20:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Cc:MIME-Version:Message-Id:Date
	:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iiFADmu4ZqR/nEnuTh8dBYN+WTH/c1YN2K0EcJdDijM=; b=VduwxZu5jza0aA
	7YvbC0q2p/1FwKQN9CcY842w6obva90auESSrjOOI+xtQNuXsQ9Pzc09SkLmAFP6yN9Qpmhvvtzcv
	jf1C9pssxSG6UOxnM8dIaR8KiCrkM9fRxnZmmBjjIl/trbArQE3Dbo+TpLThHZbM1dfSt9TXzxwUn
	yyChrNMoYn6ZWuWc1VURk2C3dtleN0/MMNCSOfeMxvV+s/nLLB41SYQY0VByXjIMqeGDM5y1BEd93
	EPK0XP5qQ3HvnGxyaCsUVJhs8976wMaF/yDEiGrg1KHilmIfA1rbsPNvkaByc1vTPdVzUw15Bndq3
	9tW2gVJsRmxF50zseoCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pujBw-009Nqg-0o;
	Fri, 05 May 2023 00:20:56 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pujBs-009NoR-0E
	for linux-phy@lists.infradead.org;
	Fri, 05 May 2023 00:20:53 +0000
Received: by mail-pj1-x1029.google.com with SMTP id 98e67ed59e1d1-24e24b0193fso909761a91.2
        for <linux-phy@lists.infradead.org>; Thu, 04 May 2023 17:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20221208.gappssmtp.com; s=20221208; t=1683246048; x=1685838048;
        h=to:from:cc:content-transfer-encoding:mime-version:message-id:date
         :subject:from:to:cc:subject:date:message-id:reply-to;
        bh=8TmpvJbU96K5mWAE+i9LXk7p3PZGa9UIfo8DUIyUZ0c=;
        b=LSbtL8+iwnX5GqWaGBkCj5rkG6Gk0y6hZi+1w189U0O1tCpGD2Jutew6l7t00+dHHM
         pmmTo2/kAT2zb4bZQ0AjNDI6QlsMybGTy8m+4VKZQG3FPpbhOR4GwsQYHTo1JSrYTtSq
         j1toePpqa6F4s3B12xkrFCc+UiRr62QzyiMy9O0juqjTlObi9W6dP4l8w6PcYjf+DcMI
         DDloLYjO69NWdgdFxg9r4fWhltlDq3NNHeRGUSiHau4SwNxHUXaUbQ/RXnd8RenvO0e4
         Hh5VRijo3++skLzX7LkAV7l2JC2q4j27oeaQzVzEl4iSKl9g7maZbyXCp/JzF7u1gxmZ
         9RwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683246048; x=1685838048;
        h=to:from:cc:content-transfer-encoding:mime-version:message-id:date
         :subject:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8TmpvJbU96K5mWAE+i9LXk7p3PZGa9UIfo8DUIyUZ0c=;
        b=Mw2pzBwt2WeHh2+YOdzbhYNAH53C1X/zkhs5NzraLI+XRRTxE/NUy4Th7+/HyFQOOL
         kJp8dHmKRhZdNvEFOaRl+MQRBXbZJRktKHSQ7GAViIyUDccP0m0DvJf2sqxCIU/ZWGFb
         toJ+1arDGUKsEayEdUqFSDiyljKoByMFvFB9mp9SjbkMQmo96Aq0wyLM5rsylOaOZhfn
         n/T2o00Cm/udRat5T0hXjvg300L310L0AOKwIHJbe+A8uZRj5wsWMShJ5GZ7DC9/SHRp
         BApTsI/WUA/DMPNUY9MGor5q/AIIw2Yu9OTewobS2ZTSzw03aDK02+FHZxI92qB2E/cd
         C0kg==
X-Gm-Message-State: AC+VfDxMta/JQbeQaxv6BkVmqm6tB9GJeFNsx5A32gU20bNORYPXD4le
	lSjB73mZUv8+3QubeP8MH30MYQ==
X-Google-Smtp-Source: ACHHUZ43/6VUqC/4H/Fyb8yXxZtcJhQwJ+Pf66SFGn86RioprdSlGVfrxR7XKatPpG2zpuh26E5OqA==
X-Received: by 2002:a17:90b:3e83:b0:24d:dc79:5901 with SMTP id rj3-20020a17090b3e8300b0024ddc795901mr3994645pjb.26.1683246047965;
        Thu, 04 May 2023 17:20:47 -0700 (PDT)
Received: from localhost ([135.180.227.0])
        by smtp.gmail.com with ESMTPSA id cq2-20020a17090af98200b002470b9503desm3659179pjb.55.2023.05.04.17.20.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 May 2023 17:20:47 -0700 (PDT)
Subject: [PATCH] phy: mediatek: Remove unusued ret and check
Date: Thu,  4 May 2023 17:19:46 -0700
Message-Id: <20230505001945.10179-1-palmer@rivosinc.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Cc: chunkuang.hu@kernel.org, p.zabel@pengutronix.de, chunfeng.yun@mediatek.com,
  kishon@kernel.org, matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com,
  dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
  linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, linux@rivosinc.com,
  Palmer Dabbelt <palmer@rivosinc.com>
From: Palmer Dabbelt <palmer@rivosinc.com>
To: vkoul@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_172052_317431_67836FBE 
X-CRM114-Status: GOOD (  12.15  )
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

From: Palmer Dabbelt <palmer@rivosinc.com>

This trips up a maybe-uninitialized warning, but it's actually just not
used.

Signed-off-by: Palmer Dabbelt <palmer@rivosinc.com>
---
I just stumbled into this one when trying to test Linus' master.  I'm
not sure it's a sane fix, but I'm not using the driver.  No rush no my
end, I'll just keep the fix around in my local tree for now.
---
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
index abfc077fb0a8..3fc0913ec73b 100644
--- a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
+++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
@@ -213,7 +213,7 @@ static int mtk_hdmi_pll_calc(struct mtk_hdmi_phy *hdmi_phy, struct clk_hw *hw,
 	u64 tmds_clk, pixel_clk, da_hdmitx21_ref_ck, ns_hdmipll_ck, pcw;
 	u8 txpredivs[4] = { 2, 4, 6, 12 };
 	u32 fbkdiv_low;
-	int i, ret;
+	int i;
 
 	pixel_clk = rate;
 	tmds_clk = pixel_clk;
@@ -295,8 +295,6 @@ static int mtk_hdmi_pll_calc(struct mtk_hdmi_phy *hdmi_phy, struct clk_hw *hw,
 	mtk_hdmi_pll_set_hw(hw, PLL_PREDIV, fbkdiv_high, fbkdiv_low,
 			    PLL_FBKDIV_HS3, posdiv1, posdiv2, txprediv,
 			    txposdiv, digital_div);
-	if (ret)
-		return -EINVAL;
 
 	return 0;
 }
-- 
2.40.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
