Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E74FCA0ED2
	for <linux-phy@archiver.kernel.org>; Fri, 30 Aug 2024 03:25:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fA2mUSNDHe8RQdmqxD44kpcv4xNMZacD+DMD72t91Ks=; b=k28Nb/KVjNj/4x
	5FD1eHbHhgJOvApsBgP7S7KvmdqfEvr540Wh+Dr9OXJ9VLMU85aPBdHgjlm2fiD/zBx/9sAOaYSkW
	kI6qcQUcJbV81y9+INhIyUvj6dhxRKUqubjSipHmFiDIPqf/fUyQm43/f1JXtaHYEEWuBso2ULmH4
	k7MpNv12cKdflOdDqweoN+R+ccM88VQbfIfARTKe50TzNHERvZC9dXGGpnVK9mesBYyILlkKvb2Uo
	kqFjReIY8pkTvlP08K7B184V/OFxQSjJssVhOdcFF94xx2iLydA50WmZoSkEol8rq9to8zdKMm1Yu
	ZjQfwwBui7gE/4rZSdUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjsGG-00000004VEv-4Ask;
	Fri, 30 Aug 2024 03:25:21 +0000
Received: from mail-io1-xd2d.google.com ([2607:f8b0:4864:20::d2d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjsFs-00000004V8E-3nS2
	for linux-phy@lists.infradead.org;
	Fri, 30 Aug 2024 03:24:58 +0000
Received: by mail-io1-xd2d.google.com with SMTP id ca18e2360f4ac-8252bc7b00bso59894939f.1
        for <linux-phy@lists.infradead.org>; Thu, 29 Aug 2024 20:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724988295; x=1725593095; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qjWUxBy6BGIw8Dk+DXNW4fn9hLAEVEXI1Eh6S4ImcZM=;
        b=Faxm/GdUS6xKG8gdsHG6XRbzTAycqF6A1A+u0MqjWtVof3Aw0wzqG4Gwz6RmBFgBVs
         UJ/VYyOolETPHEwvrlyDubGgl9EXgWE5vpdByZWTz1Y3a3re6zeVydbvAcJuOesGM7qv
         6cgE8NKMEmnqqbDosBA8sqQNoGH0wbh4Hg9sfb0uGY2jycEAjvHRg36hfBKaYDOmbIME
         s3MVVHYysByPMmJcR2wwkIEsIQhZbtZ46aULSQ156w2daufepvhKpjl0/Bza/n26h9f2
         UqkfxQQuRPAaVfYFsD921gacWV9jA70wwDLmABJiboSDtvCEIweLkV2v6xLuW54tRRcl
         NI5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724988295; x=1725593095;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qjWUxBy6BGIw8Dk+DXNW4fn9hLAEVEXI1Eh6S4ImcZM=;
        b=Uam2Bx7otxzoe9ecUOnv4ghsqWCMlzHQMY1MQz0MbMY6EofvTxMkERx/j4VDjsyhVL
         BwEdbjI7slj4H3m/sm0c9zTtTJvO41wfgqAtKIJX+yjdgEYlPfnnfWkakI045N7kLYJ9
         TeGCJUa7O97Q3EsvXR0sttBk2Fma/CSnNM1w93jB5kn2Tws/0DdvWylmAo7jVZegJPh3
         Lmppfijwx6/BbUClWibFKzuqvAYKXB7tu20MQ99Vli9LVQUi8Zi5WYN1SzXO+sLBz2jO
         vBl6Tt5lxsK1lx7Kpa4S/WRQWTXRDTOPvhZheV8rRcIfRNnjV68e3hW1gO0EYluy+6ay
         GIOg==
X-Gm-Message-State: AOJu0YwhHaCi3q3Yx3G9Q3666OI6zZRyfo7zurhsj6glJFzdyaY/6nHE
	UNinQAzWWfMFAizO3PMnSiNBpaizwyXoaqraARfJIIKYXjiX6fgyR+DLMg==
X-Google-Smtp-Source: AGHT+IGgAovizFpEX5LFsdulAECAYWdhHOcXnLoaPD7mfBHOBepP/pyh+1mkEnBE5dqGg8/ucQDK4w==
X-Received: by 2002:a05:6602:140f:b0:81f:abb2:1e9b with SMTP id ca18e2360f4ac-82a110364e8mr710451939f.6.1724988295253;
        Thu, 29 Aug 2024 20:24:55 -0700 (PDT)
Received: from aford-System-Version.lan (c-75-72-166-104.hsd1.mn.comcast.net. [75.72.166.104])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4ced2dcdf0fsm543140173.20.2024.08.29.20.24.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 20:24:54 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-phy@lists.infradead.org
Cc: dominique.martinet@atmark-techno.com,
	linux-imx@nxp.com,
	festevam@gmail.com,
	frieder.schrempf@kontron.de,
	aford@beaconembedded.com,
	Adam Ford <aford173@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Lucas Stach <l.stach@pengutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: [RFC V3 2/3] phy: freescale: fsl-samsung-hdmi: Simplify REG21_PMS_S_MASK lookup
Date: Thu, 29 Aug 2024 22:24:26 -0500
Message-ID: <20240830032442.226031-2-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240830032442.226031-1-aford173@gmail.com>
References: <20240830032442.226031-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_202456_966907_34106B0F 
X-CRM114-Status: UNSURE (   9.90  )
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

The value of 'S' is writen to two places, PHY_REG3[7:4] and
PHY_REG21[3:0].  There is a lookup table which contains
the value of PHY_REG3.  Rather than using a switch statement
based on the pixel clock to search for the value of 'S' again,
just shift the contents of PHY_REG3[7:4] >> 4 and place the value
in PHY_REG21[3:0].  Doing this can eliminate an entire function.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
V3: New to series

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
