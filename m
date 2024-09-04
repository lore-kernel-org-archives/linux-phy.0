Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8689CD4844
	for <linux-phy@archiver.kernel.org>; Wed,  4 Sep 2024 02:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U+BpyN0TjVEsEzstaTsdjXTgCewEeWr3v5Wc+cvhTmY=; b=p0R6wYPIvLfZF1
	F8YsdnTbQjxCSFnYRM6jYDm6mE0OqDMBcnLZHVXHoh8Co3U1J5fccG2IEPtUHlqDBhLZdXrcaF6d9
	o3VDerFB79jvnzawvuv630OgSS4cG9EzTGAFEXAVwuEmUN5M5smmK1lcJwcP6gSVk42u2NMJu5su5
	0MXqzZxD9+H9R8wUd9juGyyrmMfcyzlGa5Sky6S63eIHvp6Huvi24sqemZ4lzRQGTmN8W1xqJ0nN2
	xkkPKH6SbWAkrivV5/2pWwpcy1+AaKjl2YWyzlEcL5Ua8cYJdAVE2+nCEg2WY6ex+F98/cx0UgfzI
	mdM2HWbIngt4nz/CZJjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slfpv-00000002aqB-1g55;
	Wed, 04 Sep 2024 02:33:35 +0000
Received: from mail-io1-xd30.google.com ([2607:f8b0:4864:20::d30])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slfpr-00000002aoX-1h5k
	for linux-phy@lists.infradead.org;
	Wed, 04 Sep 2024 02:33:33 +0000
Received: by mail-io1-xd30.google.com with SMTP id ca18e2360f4ac-82a1abff760so213976839f.0
        for <linux-phy@lists.infradead.org>; Tue, 03 Sep 2024 19:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725417210; x=1726022010; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HmNqbg3yGfYLTkXW6S6jugsOEeVckNDMDMzxEWmAPPQ=;
        b=nPtG4YgRjeVINZc64SKKj0FDJy/ABgJWN4Lddp3c/bqwBEch4hU6Y6kPlIaI1rtVQe
         BV01tloij0UTbekAx6lOxWOk7xXeiA8zTGfU/oGxHAqbx8B82oA041t2I6k9oV/Bvsnx
         f0mmctcD3za5d0H4MPJT7Uk1ABK26qsAEjzKPyG1xkbgJLGGuNZm3hl35575BEwmuTM5
         midNpUz+dJQ9/1DcVGaedGH0xKvr7Z3o7tcbBcZbCt12kvWUgPMMXzDWxI8d3i6AEvC/
         cpOXGFYxMb0grz4noh5Ib8iThCD0y3GpmIY0M7pBHMGOFnv5MH3oLo+X78GS0tE8zA1R
         jx1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725417210; x=1726022010;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HmNqbg3yGfYLTkXW6S6jugsOEeVckNDMDMzxEWmAPPQ=;
        b=UdV7vHoOObNcvUpPvTu9kTIOkSmk208eU4baA1KxXU8ldv5Mn+ZNYf8qEGqCE2YggC
         BJd3GNQ4+yuj/Yr6W7d+kMTWYLzK+DmHbdij78QEZgKk0GGjRp8M9wSEMg/xEoAJa26I
         O9ry7FLmlptxtmqFe4224cq1Jdc5q6dFP2ttjCLe4bjJ3jD2ZoEsvDaHDnJ0i3iApAKa
         VRzpbUr0KKWO3lU44BMVnfiDiKGC9RlQBT390xOIaUMxVxNxJinS9rTsJzEpKccx9qRq
         mrXknEL4VuMpmExHaymzWC1y28mcQIS7y4DOy2cPXmAt1ZXF/L4xqEuiw9tdj8s7enhb
         yO3A==
X-Gm-Message-State: AOJu0YyCSg5rvljUNUKAv3d6NMz/JoSUhU7e/OIsVNg+3RLJqLaL5TH+
	1ME7kAJ5a/1vCcR1Y+acqQdHiFFCCz1VeknS/BE/DvpYG623TAIFEazRKQ==
X-Google-Smtp-Source: AGHT+IFaGu+OSpFyIJd0ANhd9Us1h419LPnKpM02Mf6Qgk65tlbE7dDOn+Xko3A33H/1hBlPw6Rxxg==
X-Received: by 2002:a05:6e02:b45:b0:39f:577d:8979 with SMTP id e9e14a558f8ab-39f577d8b15mr115501415ab.22.1725417209676;
        Tue, 03 Sep 2024 19:33:29 -0700 (PDT)
Received: from aford-System-Version.lan (c-75-72-166-104.hsd1.mn.comcast.net. [75.72.166.104])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-39f3afc4ff6sm34556175ab.37.2024.09.03.19.33.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Sep 2024 19:33:29 -0700 (PDT)
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
Subject: [PATCH V5 2/5] phy: freescale: fsl-samsung-hdmi: Simplify REG21_PMS_S_MASK lookup
Date: Tue,  3 Sep 2024 21:32:41 -0500
Message-ID: <20240904023310.163371-3-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240904023310.163371-1-aford173@gmail.com>
References: <20240904023310.163371-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_193331_465386_8AF74681 
X-CRM114-Status: GOOD (  11.53  )
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
---
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
