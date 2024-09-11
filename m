Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DBE0EE01FA
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 01:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GYt3QmJl2tRs/ushySaZarOdx+SSLexWZUeJjhUjFn8=; b=uQOttisQWTVWpx
	V97THJXEVKSVcyid8Ctm1084RD0uKsu8+eKVrUnKatEbhewrOg1wvRvvNJeec7jwh62jXu4ZaeBOP
	Fj88yDeKUlLjXrrr64pX0h4VhWf5YXYeAHulNFP18O6S2jCEK6F3hxcSGOFFhRZE66Y+LW7/6LZ90
	FhfNSRKxF6iVDQz6C0ku28hzBhuxvrBS1H0h7feyCipGbArIBSy+ZMUZwHjvb6UF5Hxi0QUpmbqDk
	W+UQ/HeV72sfsBLzJXZYU67oV/FgzHShRHP/DimPFTc7ZWriaBfMh3UPUHyCPUYbqHieJp+6VSezI
	dEplfBttawTH+e8nbHlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soCAU-00000007gz3-3CeS;
	Wed, 11 Sep 2024 01:29:14 +0000
Received: from mail-il1-x134.google.com ([2607:f8b0:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soCAR-00000007gxM-3MEV
	for linux-phy@lists.infradead.org;
	Wed, 11 Sep 2024 01:29:13 +0000
Received: by mail-il1-x134.google.com with SMTP id e9e14a558f8ab-3a043496fdeso19756945ab.3
        for <linux-phy@lists.infradead.org>; Tue, 10 Sep 2024 18:29:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726018150; x=1726622950; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T3LsMRu85yB/qOlSnmRAsRxtDcGqXg+1AwrMb5pI1nY=;
        b=mrGLJUcSC9QHTLxF+HArR/NWqOi2Rsfw6QPlt96O3OVOs+yIqrVKHM/q9GrIKza/vv
         +FGn+hnNk8uUiOvke0NxIzeI2TkEoxvM9cYmQDjPNCI9GvLT69PaaYjxgisv4pLNBU3t
         vGUud4+D1iW/w8Yzh8RrW83ZX9ib4g4knBY5jxGgR1uIXHgRshVEL49fWlgfYxWH8C4m
         zpNYFnp8ES2giE1vWgcg3YIGnk9hiwYkZxwGO3JOaPjyLO0PijlYSZJ197Pic9OJDhXq
         HzmV8LsB5Nka75u0kXLqMpSz+CNyDct0AqFaaGg7mk4HeBabjjEhITBY6xbT9C7FLS8z
         ts/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726018150; x=1726622950;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T3LsMRu85yB/qOlSnmRAsRxtDcGqXg+1AwrMb5pI1nY=;
        b=E6Q5Odg/D3N4XCqiQhOzt6oDN75a25dy7T9OuGXuS44cRkfk9Pk7Ntp0CtKWpY8s2S
         LickKIQgLrD3Rkw+eE/1Zak2jHhpwo63pPzE7zevhWdiXnmeS1b+AQ1Zdet0b6ZbO6G4
         IQokSAZLJ9aHJW/2gT4ygoNwpS6IocgSE3+CzXEZx9qEPcgR+3LUj9jv9+x8OOpGBAeI
         /4cG2mQUBLWcEMtkJ5q8nkwc7mR9+0N1AjShGin5QZxxXn9I2x4714n9vr4J6UhIHVjB
         VHAepP78pqYd8YZS5+Mlr/aR68Uh3SRFr6I5AM6Mx9i+x2GK7epyuiH75sCshxvI/DCT
         WYrQ==
X-Gm-Message-State: AOJu0YxrliIBbInowGAvTvBw8vQRbYuTgIR7QL18+GR+1CmlGdUBQGw3
	DDsCr27huhyFKHPwHd/+wOW0MNfds/NuWkiOlzKpRSEUYd3kFUAkkZlB4Q==
X-Google-Smtp-Source: AGHT+IH3tx8lMHCc7+unvAj5udtcpFzie1RB7+MgSxm4JZnTaAsKyx3vroG72SZyZ+pVjJ6jy7L8Ew==
X-Received: by 2002:a05:6e02:1b08:b0:39d:351a:d0a2 with SMTP id e9e14a558f8ab-3a0576bc30emr140299235ab.25.1726018150265;
        Tue, 10 Sep 2024 18:29:10 -0700 (PDT)
Received: from aford-System-Version.lan (c-75-72-166-104.hsd1.mn.comcast.net. [75.72.166.104])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4d094561c8csm1917945173.62.2024.09.10.18.29.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2024 18:29:07 -0700 (PDT)
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
	Lucas Stach <l.stach@pengutronix.de>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: [PATCH V7 2/5] phy: freescale: fsl-samsung-hdmi: Simplify REG21_PMS_S_MASK lookup
Date: Tue, 10 Sep 2024 20:28:08 -0500
Message-ID: <20240911012838.944630-3-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240911012838.944630-1-aford173@gmail.com>
References: <20240911012838.944630-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_182911_858141_35057857 
X-CRM114-Status: GOOD (  11.25  )
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
