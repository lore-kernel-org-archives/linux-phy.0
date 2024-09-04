Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8485ECD4F4A
	for <linux-phy@archiver.kernel.org>; Wed,  4 Sep 2024 23:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qnFeBE8VN4ZPj1NPB6/Y7Khd4OFZTUTrwi/g1XQoyB8=; b=FAitI7o/oyf/jO
	BlEqvOScNrN+HgSbUrUbUKP72s8xaQdEQRnoYGN5XY6KBu2BaO1PlkVt/le/ZTpCWvMpn09S61aiS
	wOHa36Ww07zTQsaoCCq31Fs7dFTGEC0jf/gk01Ozg2WA2fhF8o/XpyIJOyrly8aJ9GsjRw6a4dK56
	KtTrJR/cRjCKmxeB6Tn+dQhLvHRYPM2amm+ClFsWtTlB//014k1cArcTflm8jjKbB3DRhQYVLf1rP
	vErwA31h0g2urqNKGvVG3ZDDYdmZSH+r+2OZVCs1CvBTT1dEYgE8iu3RoSh/Jqz0p1g1u9tzM4hoC
	ZPdyFdX/wttLmFqPB7gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slzsD-00000006QS8-184f;
	Wed, 04 Sep 2024 23:57:17 +0000
Received: from mail-il1-x12f.google.com ([2607:f8b0:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slzsA-00000006QRW-13UG
	for linux-phy@lists.infradead.org;
	Wed, 04 Sep 2024 23:57:15 +0000
Received: by mail-il1-x12f.google.com with SMTP id e9e14a558f8ab-39fdd5c44d3so675055ab.3
        for <linux-phy@lists.infradead.org>; Wed, 04 Sep 2024 16:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725494232; x=1726099032; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KnvKz4VCRDYIFlWg27wCPTIEDT/7xtP8qgUadloc2x4=;
        b=LAkqlGqnjs+Qe82Mogy6P4XrUKarM8rNVeT/4rcVIpBhQiG+ILaOuFSbrhSjJUsTrH
         3eSz5Sk1SGsD3kGRq5Lx2SIRPbnNwLE9M2EtlV8LQT5qx/qDDt2gbzKYm5Buj56LjpT5
         a1nj1WyXvAlhuaIOZAP+XBR5c+0Q9wzAPJLC1ob5CTntUrtbWEiLRdkchrrS9F2lf/rY
         cDiYm4M7/d5imut7r+Br8K0BXcGrtuM/Snki/wC38FYXHlqonGxmJntmCKiOIA4gNQBB
         ib6DbjenFy1P/8UC7pSPI8ahw5burgVIhj1y3JCLkyYSGcnnEbUD3b3cLmkyO6AOQZA7
         Cq0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725494232; x=1726099032;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KnvKz4VCRDYIFlWg27wCPTIEDT/7xtP8qgUadloc2x4=;
        b=OsbQRWMFm5U88xg9Yuz/LXSmzn8dsNTbGo8bWbjEpDdOf5JR4qcsBVI8dTsIdgzl+j
         kvXLjq1aKfqXDrvrWhr4c/iGwAQXIRK470BjDUv9H/qKIMHtuJMTxglmBLcR1WUbmnZ/
         vxDvC19uKiLSSGQsDdIffPKXtZSrQ1y8w42Z2u1IaCfz5CoZfqC7y6v0zn+QszVGY2Lq
         TIdmMdP3Z38A3Y7/KR4s/RUV9Zl1lCHb8vSSMht2uVJpCvgfiipopg1vU9k9AuTnxy/A
         HpPflM6Wh4/pzH1qZNkptN80S6ga/O3kvL9YZGgi/caRVkBhaJ+2ds3kPl/7KqvyPYMK
         mstA==
X-Gm-Message-State: AOJu0YxMXgVF8hFOU0Yzjk4IZOsyC5smIrZ3925Kq13TIIf94Vt2+Bb7
	5osxPWqVpM5NUNL9KgyQK2BPEQk8loFXlAVFFtUgCHzIBR+cuTJJkCsGBQ==
X-Google-Smtp-Source: AGHT+IG5q6rMM03957Ull+SI14wbNpAwjXrsDNrc4H2Nc/UMDXZUgDTC9FfN5eufAb767R3BTk4ItA==
X-Received: by 2002:a05:6e02:174d:b0:39b:4ec0:645c with SMTP id e9e14a558f8ab-39f4f68207cmr202094565ab.4.1725494232585;
        Wed, 04 Sep 2024 16:57:12 -0700 (PDT)
Received: from aford-System-Version.lan (c-75-72-166-104.hsd1.mn.comcast.net. [75.72.166.104])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-39f3afc594csm39396735ab.43.2024.09.04.16.57.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 16:57:12 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-phy@lists.infradead.org
Cc: dominique.martinet@atmark-techno.com,
	linux-imx@nxp.com,
	festevam@gmail.com,
	frieder.schrempf@kontron.de,
	aford@beaconembedded.com,
	Sandor.yu@nxp.com,
	Adam Ford <aford173@gmail.com>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Lucas Stach <l.stach@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: [PATCH V6 2/5] phy: freescale: fsl-samsung-hdmi: Simplify REG21_PMS_S_MASK lookup
Date: Wed,  4 Sep 2024 18:30:30 -0500
Message-ID: <20240904233100.114611-3-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240904233100.114611-1-aford173@gmail.com>
References: <20240904233100.114611-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_165714_311605_F945C6A5 
X-CRM114-Status: GOOD (  11.36  )
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
Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
Tested-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
V6:  No Change
V5:  No Change
---
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 39 ++------------------
 1 file changed, 4 insertions(+), 35 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index acea7008aefc..4f6874226f9a 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -364,40 +364,6 @@ to_fsl_samsung_hdmi_phy(struct clk_hw *hw)
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
@@ -466,7 +432,10 @@ static int fsl_samsung_hdmi_phy_configure(struct fsl_samsung_hdmi_phy *phy,
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
