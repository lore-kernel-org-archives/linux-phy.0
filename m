Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31177CA0ED3
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 01:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vwQbsCFQ/HjXG2GgVKxoJq4uIeGUSEdokFQW5gj86sA=; b=WTdltfcis0s4ON
	PdN4a6PAwRVJ5oht5P+of+esy0TfeNZkF53f7FTFImv1llGWh74qiQ+uRqG/lAQKp/0lJs5t09k9v
	9IKnfbbB3+jQvCdiyRGdisHjCIiJ+eZE3kg3j1bDf5z/d0p+6bOGzyDoHOXvpthsM7y18En2I3fSl
	7F1VIIXkShS0be0ErIx7V/BWnEmkdgIfAgXfxoe4FYchQxFcTeNv5GDgz7USsffTW7sXNldJz3F/E
	cG9sG6DNZMCmkHle3riiK8xHdpSCkF1VEK1AxQNKkkeCbE+SnI3TRYRAQwAQXXH6ExxMnuk7DLJrk
	u4ok4S3+ngjTNR7h9cEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slIOQ-0000000Fwch-3mY4;
	Tue, 03 Sep 2024 01:31:38 +0000
Received: from mail-il1-x135.google.com ([2607:f8b0:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slIOO-0000000FwbR-1cIV
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 01:31:37 +0000
Received: by mail-il1-x135.google.com with SMTP id e9e14a558f8ab-39d2ac2a9d9so16641225ab.0
        for <linux-phy@lists.infradead.org>; Mon, 02 Sep 2024 18:31:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725327095; x=1725931895; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9wVQDkoBZtHEQkKMZT4UIQ8IV+tatzzx9ZIraz0AFHI=;
        b=bqSXEZRFc/Jf6aTVvUosJ9F7MQzEg4/NHxeR4fCsBnAxS5nb7ZOLLd+p8MolPlwhxw
         2fJCH2F8sUwFKZWeoA6igi3fksMkKpraiFNPNByR1G7awdmVZhszFnKSouRnewS2WsAe
         TBlViFqN3kPoaTojRBqwWGc6Kt/kA8/l+zkAK4S05dvmxSCflPqImfOX4MaUkdSNwxvB
         XJazOysy6uqTV7RCRUFjbfpV0Ghmwu9cCB94RAeBaUjivwpChXERYEotuvV3XSUaMVYv
         blv6xPqrK/up1+0+qDbNs/IW3Btb8n5pEF83pbLHIvTK/LDYl546eSXEda/Cbp995VWF
         YjUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725327095; x=1725931895;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9wVQDkoBZtHEQkKMZT4UIQ8IV+tatzzx9ZIraz0AFHI=;
        b=td18iGU6dembjgkYO6dEv1Od+5cRgacaD1SndsKyxvI3FCE6TywVUbMgcIl1kMRJzi
         wWGhVxV/0oQ9hB3GWTFLz68E/au8GwwBpp+iyRsYMUPfQi4d/du+U7mp8JN+5PmZElyx
         RxBGEi7Pl0KfTTCccT7+ZxWeDz3zbAEVFRMj5hN9/fL+Y0SbSO/GIs78TYvqLl3ZlPZY
         WQaofqFTwIL6NMpMvqLzUDP37z7miu3swSOFOmSOXJIW1j77+V9dqOu6Jsgj4rukBcqM
         ba/5n4+jbKkJeOX/3/zN+gB0+3iOrnb9ZnAa9+BkL6kphKZvHHJDKhkfg2nFftU01r2m
         KHpA==
X-Gm-Message-State: AOJu0Yyy6SiEs3lPTTriVydOa38uwaXV8aTATzfQhirgCZmgDyTG3/YV
	wt9zoRcmprdthG9cLBB30jRKbAx/cj1kkiK/lloVtJAlEmRUdIbW+YjSsA==
X-Google-Smtp-Source: AGHT+IE0MGF4aNsgfVs4SXY+HfrnvzcV+aUNnWbo1l7pAkhO8tS/DkTg/rkSwfteXsUIx2VFq8s2kQ==
X-Received: by 2002:a05:6e02:1a29:b0:39f:61e4:1ad8 with SMTP id e9e14a558f8ab-39f61e48be4mr46839095ab.26.1725327094959;
        Mon, 02 Sep 2024 18:31:34 -0700 (PDT)
Received: from aford-System-Version.lan (c-75-72-166-104.hsd1.mn.comcast.net. [75.72.166.104])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-39f3b059c32sm28466715ab.75.2024.09.02.18.31.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 18:31:34 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-phy@lists.infradead.org
Cc: dominique.martinet@atmark-techno.com,
	linux-imx@nxp.com,
	festevam@gmail.com,
	frieder.schrempf@kontron.de,
	aford@beaconembedded.com,
	Sandor.yu@nxp.com,
	Adam Ford <aford173@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Lucas Stach <l.stach@pengutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: [PATCH V4 2/5] phy: freescale: fsl-samsung-hdmi: Simplify REG21_PMS_S_MASK lookup
Date: Mon,  2 Sep 2024 20:30:44 -0500
Message-ID: <20240903013113.139698-3-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240903013113.139698-1-aford173@gmail.com>
References: <20240903013113.139698-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_183136_453539_9C9CC1B2 
X-CRM114-Status: GOOD (  11.71  )
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

The value of 'S' is writen to two places, PHY_REG3[7:4] and
PHY_REG21[3:0].  There is a lookup table which contains
the value of PHY_REG3.  Rather than using a switch statement
based on the pixel clock to search for the value of 'S' again,
just shift the contents of PHY_REG3[7:4] >> 4 and place the value
in PHY_REG21[3:0].  Doing this can eliminate an entire function.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 39 ++------------------
 1 file changed, 4 insertions(+), 35 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index bc5d3625ece6..a700a300dc6f 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -355,40 +355,6 @@ to_fsl_samsung_hdmi_phy(struct clk_hw *hw)
 	return container_of(hw, struct fsl_samsung_hdmi_phy, hw);
 }
 
-static void
-fsl_samsung_hdmi_phy_configure_pixclk(struct fsl_samsung_hdmi_phy *phy,
-				      const struct phy_config *cfg)
-{
-	u8 div = 0x1;
-
-	switch (cfg->pixclk) {
-	case  22250000 ...  33750000:
-		div = 0xf;
-		break;
-	case  35000000 ...  40000000:
-		div = 0xb;
-		break;
-	case  43200000 ...  47500000:
-		div = 0x9;
-		break;
-	case  50349650 ...  63500000:
-		div = 0x7;
-		break;
-	case  67500000 ...  90000000:
-		div = 0x5;
-		break;
-	case  94000000 ... 148500000:
-		div = 0x3;
-		break;
-	case 154000000 ... 297000000:
-		div = 0x1;
-		break;
-	}
-
-	writeb(REG21_SEL_TX_CK_INV | FIELD_PREP(REG21_PMS_S_MASK, div),
-	       phy->regs + PHY_REG(21));
-}
-
 static void
 fsl_samsung_hdmi_phy_configure_pll_lock_det(struct fsl_samsung_hdmi_phy *phy,
 					    const struct phy_config *cfg)
@@ -457,7 +423,10 @@ static int fsl_samsung_hdmi_phy_configure(struct fsl_samsung_hdmi_phy *phy,
 	for (i = 0; i < PHY_PLL_DIV_REGS_NUM; i++)
 		writeb(cfg->pll_div_regs[i], phy->regs + PHY_REG(2) + i * 4);
 
-	fsl_samsung_hdmi_phy_configure_pixclk(phy, cfg);
+	/* High nibble of pll_div_regs[1] contains S which also gets written to REG21 */
+	writeb(REG21_SEL_TX_CK_INV | FIELD_PREP(REG21_PMS_S_MASK,
+	       cfg->pll_div_regs[1] >> 4), phy->regs + PHY_REG(21));
+
 	fsl_samsung_hdmi_phy_configure_pll_lock_det(phy, cfg);
 
 	writeb(REG33_FIX_DA | REG33_MODE_SET_DONE, phy->regs + PHY_REG(33));
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
