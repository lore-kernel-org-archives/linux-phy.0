Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3939EE01F3
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 06:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8WexWOnZTmgQZ5GWmD4+PCMmSZmnmH8UwJAO4IH9zBA=; b=re3fpDl3qVmlNy
	YL99FYFA756k1wlEqBIEC1qOuzCNFMZzz5vX1fWF+0llc5eeemT6YxYVkAYmcrr6SiKAzvNQfgUem
	POX7kwfWiatvLHTb71ll4rJ1ZuSvh9UDP7ISz9Hpib26Ggn9znOwUm6s2Mc0huW2pdxR1Vpwuz2Z6
	G5obDJpKvFyagJTDfNW8o0Dt/JPPxboux7VfS8/D+E67DeqPEGNYequi1eUTCfhPsqlvWnk6xQBek
	RJ/KbfwErYmZarBeLtXzEn61GJGvOJO8FIjLT155khLwUD3KhXX9AbylZV7IyIIoc1BvjaUmcdRlL
	J/naWXg+zOyvEzWWL8lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soGWf-00000008DzN-2hUv;
	Wed, 11 Sep 2024 06:08:25 +0000
Received: from gw2.atmark-techno.com ([35.74.137.57])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soGWc-00000008Dxg-3KPN
	for linux-phy@lists.infradead.org;
	Wed, 11 Sep 2024 06:08:24 +0000
Authentication-Results: gw2.atmark-techno.com;
	dkim=pass (2048-bit key; unprotected) header.d=atmark-techno.com header.i=@atmark-techno.com header.a=rsa-sha256 header.s=google header.b=fZJ4R/TR;
	dkim-atps=neutral
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	by gw2.atmark-techno.com (Postfix) with ESMTPS id 7334942C
	for <linux-phy@lists.infradead.org>; Wed, 11 Sep 2024 15:08:21 +0900 (JST)
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-277f9af7500so5896111fac.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Sep 2024 23:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atmark-techno.com; s=google; t=1726034900; x=1726639700; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9lp38k0toLxisIn/B8aEYnDA+fE9TR3RoFUskSoeQ60=;
        b=fZJ4R/TRzTK3T/mLLWvKsx/06VJAUmOlpvhxKKVV1z9r+UMbf4SI9OERWPCl7FLar7
         J4BdYo+qJN1KObWPY4oaCjwWsHyoiYSlQqC/J9LmSEJq8jSuad/HqlILE3mc8J/xO9X5
         255fIeiHDg0kPzU7d9LQaZm+WPga4yUyB9FaWTEZq5OxUTLkb1K6bkreKyIryDdSByVJ
         AxbzuDcUHyei9hSURr1Ga0Bjrc1b2yNz68XQkPYeapCOwC5XKM5J7jC+P/lyy54uzPKN
         nJYndLT5Or0SqCufWgVfmGV3GCVxLd1V9xmDX/iNnTJ4JzEs7xucCnnn6UkHBVLAg0SK
         i3Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726034900; x=1726639700;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9lp38k0toLxisIn/B8aEYnDA+fE9TR3RoFUskSoeQ60=;
        b=lAAnmJ11NTcEjAymwrW3qh5Kv8ZYn9eFnRS/OJNGDoBVFHQaJFeygQSQvTWJe5FPCf
         /U/uUc17D0vzrFs1qMZcKNUeqdyh0FhjCHRoZ9CK8sqCHjJ0UyvzD5By2062ZLGPESPx
         x/buv8iOLQRvhO3wtuZJ7Z+6e8mGqSugwG594dcgceUP8LFNfi9/kQKqAUpxwIPO+V0+
         7aFeZhjsKuAMJXW43upbJeTRNnehWSP+WILboVm5JT55IL8UqCrrdSYDaPCSDCAAlWXx
         Q2kk0DZ2yQYbzVZkG5zG8DqXdLWun8SuiSiqTk5akMUKs6kpAsud9aJ82pHm7C5xQm5+
         B5aQ==
X-Forwarded-Encrypted: i=1; AJvYcCXoUTI3+aLj6UFYWoA8G6qCcUuLlbKwWMIk6SuwS9bdkL3vV2JKFCc+wsfzJ0Q8Z15dBkj/L5D5ku8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyrytx16O7dEWPui4NTXicdIGUyFbj6jQ+jtczlngNZqyQsVAlX
	A4c9R5y2dLvIZKnmBSEvtrBsPQrwOnioXoVAXIP867MnRxjkHWN4s0af4suplbyOSM3AyGbg9re
	X3s7nBnr9EPnB/IdFgL82GOP1pu3bUrBi2RfuFkDvYcxqE9nQGFqJ5Mixrt+IpQwYjHl+Wqp8
X-Received: by 2002:a05:6870:e0d2:b0:277:e40b:1aff with SMTP id 586e51a60fabf-27b9d92257cmr9017164fac.9.1726034900077;
        Tue, 10 Sep 2024 23:08:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHxdpLsS49QByP64MoIJ5Yg0iFT4+YNDfB8VHF2UKv2JNQthocyLtssFQVJrFtRaLDY2b5xFw==
X-Received: by 2002:a05:6870:e0d2:b0:277:e40b:1aff with SMTP id 586e51a60fabf-27b9d92257cmr9017144fac.9.1726034899668;
        Tue, 10 Sep 2024 23:08:19 -0700 (PDT)
Received: from localhost (103.131.189.35.bc.googleusercontent.com. [35.189.131.103])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-719090ae07bsm2267726b3a.163.2024.09.10.23.08.18
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Sep 2024 23:08:19 -0700 (PDT)
Date: Wed, 11 Sep 2024 15:08:07 +0900
From: Dominique Martinet <dominique.martinet@atmark-techno.com>
To: Frieder Schrempf <frieder@fris.de>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Vinod Koul <vkoul@kernel.org>, Adam Ford <aford173@gmail.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH 0/2] Extending PLL LUT for i.MX8MP Samsung HDMI PHY
Message-ID: <ZuEzxw96vRlYJ321@atmark-techno.com>
References: <20240910181544.214797-1-frieder@fris.de>
 <ZuDjAwPxHeJTvXAp@atmark-techno.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZuDjAwPxHeJTvXAp@atmark-techno.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_230822_972579_00DD47C7 
X-CRM114-Status: GOOD (  13.00  )
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

Dominique Martinet wrote on Wed, Sep 11, 2024 at 09:23:31AM +0900:
> so if I find some time I'll whip some loop to check all other values...

There were more differences than I thought there'd be (see diff below)

they're all minor enough to probably not care, but your script finds
exact values for them so it might be worth updating the regs if we keep
the table...
(OTOH these seem to work, and "if it works don't touch it" -- I have no
further opinion now I've checked, curiosity is sated)

Might want to just check 154000000 though, reg6's 0x80 was not set so
SDC was disabled? and it'd get the integer fraction (153600000) instead
if I understand this correctly

---------
diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index a5ad51425ee3..72facc7bd045 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -73,7 +73,7 @@ static const struct phy_config phy_pll_cfg[] = {
 		.pixclk = 24024000,
 		.pll_div_regs = { 0xd1, 0x50, 0xf1, 0x99, 0x02, 0x80, 0x40 },
 	}, {
-		.pixclk = 25175000,
+		.pixclk = 25177981,
 		.pll_div_regs = { 0xd1, 0x54, 0xfc, 0xcc, 0x91, 0x80, 0x40 },
 	},  {
 		.pixclk = 26750000,
@@ -82,16 +82,16 @@ static const struct phy_config phy_pll_cfg[] = {
 		.pixclk = 27027000,
 		.pll_div_regs = { 0xd1, 0x5a, 0xf2, 0xfd, 0x0c, 0x80, 0x40 },
 	}, {
-		.pixclk = 29500000,
+		.pixclk = 29487500,
 		.pll_div_regs = { 0xd1, 0x62, 0xf4, 0x95, 0x08, 0x80, 0x40 },
 	}, {
-		.pixclk = 30750000,
+		.pixclk = 30729661,
 		.pll_div_regs = { 0xd1, 0x66, 0xf4, 0x82, 0x01, 0x88, 0x45 },
 	}, {
-		.pixclk = 30888000,
+		.pixclk = 30848949,
 		.pll_div_regs = { 0xd1, 0x66, 0xf4, 0x99, 0x18, 0x88, 0x45 },
 	}, {
-		.pixclk = 33750000,
+		.pixclk = 33731250,
 		.pll_div_regs = { 0xd1, 0x70, 0xf4, 0x82, 0x01, 0x80, 0x40 },
 	}, {
 		.pixclk = 35000000,
@@ -106,13 +106,13 @@ static const struct phy_config phy_pll_cfg[] = {
 		.pixclk = 44500000,
 		.pll_div_regs = { 0xd1, 0x5c, 0x92, 0x98, 0x11, 0x84, 0x41 },
 	}, {
-		.pixclk = 47000000,
+		.pixclk = 47005000,
 		.pll_div_regs = { 0xd1, 0x62, 0x94, 0x95, 0x82, 0x80, 0x40 },
 	}, {
-		.pixclk = 47500000,
+		.pixclk = 47502000,
 		.pll_div_regs = { 0xd1, 0x63, 0x96, 0xa1, 0x82, 0x80, 0x40 },
 	}, {
-		.pixclk = 50349650,
+		.pixclk = 50355924,
 		.pll_div_regs = { 0xd1, 0x54, 0x7c, 0xc3, 0x8f, 0x80, 0x40 },
 	}, {
 		.pixclk = 53250000,
@@ -124,16 +124,16 @@ static const struct phy_config phy_pll_cfg[] = {
 		.pixclk = 54054000,
 		.pll_div_regs = { 0xd1, 0x5a, 0x72, 0xfd, 0x0c, 0x80, 0x40 },
 	}, {
-		.pixclk = 59000000,
+		.pixclk = 58975000,
 		.pll_div_regs = { 0xd1, 0x62, 0x74, 0x95, 0x08, 0x80, 0x40 },
 	}, {
-		.pixclk = 59340659,
+		.pixclk = 59264777,
 		.pll_div_regs = { 0xd1, 0x62, 0x74, 0xdb, 0x52, 0x88, 0x47 },
 	},  {
-		.pixclk = 61500000,
+		.pixclk = 61459322,
 		.pll_div_regs = { 0xd1, 0x66, 0x74, 0x82, 0x01, 0x88, 0x45 },
 	}, {
-		.pixclk = 63500000,
+		.pixclk = 63437500,
 		.pll_div_regs = { 0xd1, 0x69, 0x74, 0x89, 0x08, 0x80, 0x40 },
 	}, {
 		.pixclk = 67500000,
@@ -145,25 +145,25 @@ static const struct phy_config phy_pll_cfg[] = {
 		.pixclk = 72072000,
 		.pll_div_regs = { 0xd1, 0x5a, 0x52, 0xfd, 0x0c, 0x80, 0x40 },
 	}, {
-		.pixclk = 74176000,
+		.pixclk = 74175824,
 		.pll_div_regs = { 0xd1, 0x5d, 0x58, 0xdb, 0xA2, 0x88, 0x41 },
 	}, {
 		.pixclk = 74250000,
 		.pll_div_regs = { 0xd1, 0x5c, 0x52, 0x90, 0x0d, 0x84, 0x41 },
 	}, {
-		.pixclk = 78500000,
+		.pixclk = 78487500,
 		.pll_div_regs = { 0xd1, 0x62, 0x54, 0x87, 0x01, 0x80, 0x40 },
 	},  {
-		.pixclk = 82000000,
+		.pixclk = 81945763,
 		.pll_div_regs = { 0xd1, 0x66, 0x54, 0x82, 0x01, 0x88, 0x45 },
 	}, {
-		.pixclk = 82500000,
+		.pixclk = 82486555,
 		.pll_div_regs = { 0xd1, 0x67, 0x54, 0x88, 0x01, 0x90, 0x49 },
 	}, {
-		.pixclk = 89000000,
+		.pixclk = 89075000,
 		.pll_div_regs = { 0xd1, 0x70, 0x54, 0x84, 0x83, 0x80, 0x40 },
 	}, {
-		.pixclk = 90000000,
+		.pixclk = 89950000,
 		.pll_div_regs = { 0xd1, 0x70, 0x54, 0x82, 0x01, 0x80, 0x40 },
 	}, {
 		.pixclk = 94000000,
@@ -178,7 +178,7 @@ static const struct phy_config phy_pll_cfg[] = {
 		.pixclk = 99000000,
 		.pll_div_regs = { 0xd1, 0x52, 0x32, 0x82, 0x01, 0x88, 0x47 },
 	}, {
-		.pixclk = 100699300,
+		.pixclk = 100711847,
 		.pll_div_regs = { 0xd1, 0x54, 0x3c, 0xc3, 0x8f, 0x80, 0x40 },
 	},  {
 		.pixclk = 102500000,
@@ -196,16 +196,16 @@ static const struct phy_config phy_pll_cfg[] = {
 		.pixclk = 108108000,
 		.pll_div_regs = { 0xd1, 0x5a, 0x32, 0xfd, 0x0c, 0x80, 0x40 },
 	}, {
-		.pixclk = 118000000,
+		.pixclk = 117950000,
 		.pll_div_regs = { 0xd1, 0x62, 0x34, 0x95, 0x08, 0x80, 0x40 },
 	},  {
-		.pixclk = 123000000,
+		.pixclk = 122918644,
 		.pll_div_regs = { 0xd1, 0x66, 0x34, 0x82, 0x01, 0x88, 0x45 },
 	}, {
-		.pixclk = 127000000,
+		.pixclk = 126875000,
 		.pll_div_regs = { 0xd1, 0x69, 0x34, 0x89, 0x08, 0x80, 0x40 },
 	}, {
-		.pixclk = 135000000,
+		.pixclk = 134925000,
 		.pll_div_regs = { 0xd1, 0x70, 0x34, 0x82, 0x01, 0x80, 0x40 },
 	}, {
 		.pixclk = 135580000,
@@ -214,20 +214,20 @@ static const struct phy_config phy_pll_cfg[] = {
 		.pixclk = 137520000,
 		.pll_div_regs = { 0xd1, 0x72, 0x38, 0x99, 0x10, 0x85, 0x41 },
 	}, {
-		.pixclk = 138750000,
+		.pixclk = 138658397,
 		.pll_div_regs = { 0xd1, 0x73, 0x35, 0x88, 0x05, 0x90, 0x4d },
 	}, {
-		.pixclk = 140000000,
+		.pixclk = 140040000,
 		.pll_div_regs = { 0xd1, 0x75, 0x36, 0xa7, 0x90, 0x80, 0x40 },
 	},  {
-		.pixclk = 148352000,
+		.pixclk = 148265128,
 		.pll_div_regs = { 0xd1, 0x7b, 0x35, 0xdb, 0x39, 0x90, 0x45 },
 	}, {
-		.pixclk = 148500000,
+		.pixclk = 148396403,
 		.pll_div_regs = { 0xd1, 0x7b, 0x35, 0x84, 0x03, 0x90, 0x45 },
 	}, {
 		.pixclk = 154000000,
-		.pll_div_regs = { 0xd1, 0x40, 0x18, 0x83, 0x01, 0x00, 0x40 },
+		.pll_div_regs = { 0xd1, 0x40, 0x18, 0x83, 0x01, 0x80, 0x40 },
 	}, {
 		.pixclk = 157000000,
 		.pll_div_regs = { 0xd1, 0x41, 0x11, 0xa7, 0x14, 0x80, 0x40 },
@@ -268,10 +268,10 @@ static const struct phy_config phy_pll_cfg[] = {
 		.pixclk = 254000000,
 		.pll_div_regs = { 0xd1, 0x69, 0x14, 0x89, 0x08, 0x80, 0x40 },
 	}, {
-		.pixclk = 277500000,
+		.pixclk = 277316794,
 		.pll_div_regs = { 0xd1, 0x73, 0x15, 0x88, 0x05, 0x90, 0x4d },
 	},  {
-		.pixclk = 297000000,
+		.pixclk = 296792806,
 		.pll_div_regs = { 0xd1, 0x7b, 0x15, 0x84, 0x03, 0x90, 0x45 },
 	},
 };
-------------
-- 
Dominique

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
