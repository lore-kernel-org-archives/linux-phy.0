Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40F6AC02191
	for <linux-phy@archiver.kernel.org>; Sat, 14 Sep 2024 11:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kd8y+4Trp6IV48kzLBxQb4QtZpVyn43LVGaXxgfE0n4=; b=kph1zIDB+D4ygP
	u7Ln+GB/ZQ7vXsjX4Q64/f3XkbIsLxkHDsUqGNkM1EVDjMgezCm08WczVK94gIhlVA1vwi2jqxNr3
	KwH85haRRliq35p2Uz6K+DnOTeTW6+zQqNXHZ3hsVyrxzF8gK57yQEVddZrTvDP1JTrS5xHIqcCAa
	GjFpFzrM5dPJEyZRXr2d9maJKPGXwn7Bny/jo2bT7Q6n6WN7JuIl8OkZ3Kd7+5KLKcjBzHbVR/UD7
	c+qBfcxb7SBWfC/6Twmyj69bhtKmOexep62gnZwl5GBOx6o1V5tjb7sf6fQAUi4g/+Cz8wHJQ6NZ0
	YF+UtNXvMHMkJ5+jcPuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spQxC-00000000bUK-3VaX;
	Sat, 14 Sep 2024 11:28:38 +0000
Received: from mail-il1-x129.google.com ([2607:f8b0:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spQxA-00000000bSz-2gTK
	for linux-phy@lists.infradead.org;
	Sat, 14 Sep 2024 11:28:38 +0000
Received: by mail-il1-x129.google.com with SMTP id e9e14a558f8ab-3a08c5a2bddso8210385ab.2
        for <linux-phy@lists.infradead.org>; Sat, 14 Sep 2024 04:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726313315; x=1726918115; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tUqDak0O3QXqMSK46gM4L1oImDEknZFw9hO3+gSGP9E=;
        b=LYN/4tTD98OIzslNQ7UMPJSPK+EyzP5OOFbo2gPRpDQYPoiIhhc7kMYI9lKuRpVtnt
         K4NWt5G1EcdfcSt+mF/3ikyN4nrAIxOy6lhoj7KsHy8wYtw0c/OeLn7FY/rdMa/4HCGc
         9oTmYHHRfybHfX8OE+3z+T2Ri/etNt4zw/M4dN7U8b70TG3B5ina+pGGhiuniGNVFCde
         DQR6HF4BRadalO8QYhuJIkLsKPHFCuwBV0nOYEtV/Whp6/bVPC89smd2udaCO1BVwpv4
         FC1MJsLKSlwvFGZDHrrdU1Y4HKt93H+KPiL3XzvJJhgegWIgeJtwB30r24LmAfJVnXE8
         S4ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726313315; x=1726918115;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tUqDak0O3QXqMSK46gM4L1oImDEknZFw9hO3+gSGP9E=;
        b=qcmvMB10pzDdMak1P+d0REfJ9iT7kD/tgOYGmBspS1YoTdrmMOW3JV/lJZD14L4h1h
         3DA4tboEbB5AygPb/fDEh8RWdbhVMvq3KXPgL/6evPKHoKvsNfKuiUYWaQpPI+FCNkgD
         0Q/bEa6RarFPWokF6kI18P+NUV7ar27BUK1aILb5TfZXBcmk5+pGZQ5mv5qHhkAXFsTq
         5ELS/dM4/sYu6scEP9nY8RpJPhAdFK2nURMC/Hwh8VzaGFUfFngeA0r56FaPpxRuGgxQ
         yPWmSeuCSOvoB91/ltZtK1tGfGnHs6fMBiond56J82DkawTj+ihpDeuDe/01RG6tVx+g
         5RsA==
X-Gm-Message-State: AOJu0YxpJ3LEcNqmh7utX6aC0HGCNSy5wEba4femYlhttouJ097XW5uu
	sH7cNHiZk0nDTYeJwDmXiVeuneDDspr2LGtrWYwYRgWWgBJtopyMVoRh7g==
X-Google-Smtp-Source: AGHT+IGtPFYjznHVWoDep8DJKi1LGKBj4gH/E/hrp7OfcL8Bw58Bk3unjUUFazFUIVuJuUFyjo2VvA==
X-Received: by 2002:a05:6e02:1a0e:b0:39f:558a:e404 with SMTP id e9e14a558f8ab-3a0848ac716mr99880625ab.4.1726313315075;
        Sat, 14 Sep 2024 04:28:35 -0700 (PDT)
Received: from aford-System-Version.lan (c-75-72-166-104.hsd1.mn.comcast.net. [75.72.166.104])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4d37ed35572sm350307173.131.2024.09.14.04.28.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Sep 2024 04:28:34 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-phy@lists.infradead.org
Cc: dominique.martinet@atmark-techno.com,
	linux-imx@nxp.com,
	festevam@gmail.com,
	frieder.schrempf@kontron.de,
	aford@beaconembedded.com,
	Sandor.yu@nxp.com,
	neil.armstrong@linaro.org,
	Adam Ford <aford173@gmail.com>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Lucas Stach <l.stach@pengutronix.de>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: [PATCH V8 2/5] phy: freescale: fsl-samsung-hdmi: Simplify REG21_PMS_S_MASK lookup
Date: Sat, 14 Sep 2024 06:27:46 -0500
Message-ID: <20240914112816.520224-3-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240914112816.520224-1-aford173@gmail.com>
References: <20240914112816.520224-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240914_042836_699270_243FE3BB 
X-CRM114-Status: GOOD (  10.87  )
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
Reviewed-by: Dominique Martinet <dominique.martinet@atmark-techno.com>
Tested-by: Dominique Martinet <dominique.martinet@atmark-techno.com>
---
V7:  No Change
V6:  No Change
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
