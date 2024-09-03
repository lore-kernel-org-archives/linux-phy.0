Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56FABC54FC6
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 01:31:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IPHfBTFJzuy6xcLj2nDqtRVwcnxN+oSbRJvvAafsjvw=; b=bv7/ZGEHOg2qMx
	i9eTAGgqP6EJdMTdXy+KN/fkc9xwzMwWZDzThFJFTJhV8ulcV1Rwd7qiT2BGLF0V6bublNVgVvh9V
	Wp+ZYx8uUTKzEFk2beayttyPpy4uyClgW3IEYz3wi3yj8motzcdZje8Yms6CBylMycgPRk9azU499
	zl2oNJGzGHnPcOKWykujHO5FTTXMRX+QqxBYLc4ibuTYhj4WmDea9RTCd6O4372FlNUi+hmiGg2Cz
	26Gohzs+vPCT/SQIoLCcmmQP2a9XnOImXVl75s8xweQPsbu5VANhGDh3Y1Ndq1MyA5eV76dIyYXQP
	fKQmI+WNNdZK1WSki81A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slIOg-0000000Fwhz-4BAu;
	Tue, 03 Sep 2024 01:31:55 +0000
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slIOd-0000000FwgU-209p
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 01:31:52 +0000
Received: by mail-io1-xd2a.google.com with SMTP id ca18e2360f4ac-829e8718502so199453339f.3
        for <linux-phy@lists.infradead.org>; Mon, 02 Sep 2024 18:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725327110; x=1725931910; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rjDycFG/gwvOYgM+KYAdbKzrZuoPb1hpign8aj2gA/s=;
        b=ib4DEbBnuDfe93X/Kvlccf54yL0rY0/2C7LXewUUtw2fCOcKLTi9Nvdyj39c116PXz
         xUVlTUSoJzfnoYckXitAm4I01VRDOvI5WLT9DOr4LVXsBeDA8IJfFsnkw576kT3BTL/d
         lNkbX9u3uZHhNrIGFNwnH6XSj66ex01Wg7TG3bSm/V/WcF/7SenzmiSsxgDj8GrvruTy
         aTy62eL4LFihnf2l9kZLBYfzu1kuY/cefzSCvs14LpuDa2co3psyef3kfT5mtNSsp0ts
         S+IHWa1tFdkeI/vhGdBju4nUOaX5guajE5xqMBgqDysjXvGxiPD+IHH0METimC6Ru9d0
         7CAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725327110; x=1725931910;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rjDycFG/gwvOYgM+KYAdbKzrZuoPb1hpign8aj2gA/s=;
        b=WGjE2e8tjODKSLjAjIDXhFyJUMhbZz55Sv2zPQzJIDQ5z5e2Bn4qTnT111FxTvBHHF
         hABGXDIzIOpFbG2O5Vwp3gfgR7jU0rAJn8XqAYbEXfLkQ8qZeZp7sV+FR+x+e2ufGAuO
         rd1LRLRJOQ7knw3GJ8UaiJ6G7HdakiOgM5mcLz8+iKXjzAb+g5O2IeNYEZC3SqqusIAj
         kWheCNcgEm2S0JE+n3w6keSADhZkjh/HdnbF8n8Um1GjuM5Y/szrl9buOwadJIVFVYwM
         Arggqyow5id5qXhbEVofzOP1sraJ3qEh+VfQoIGlB6PAsykprv7PXWfOxojFpGiWgb5R
         +5Uw==
X-Gm-Message-State: AOJu0YzyPFBH0Dno+nqWNIgLK5F4ZdOYV8AcI8tgbqzhxqTbDKMby1RW
	eTtfWF2Qkzs1va8X1pJ/b6qCnWs85Zp9ou3e6WaInS6mywN8qynFn/jwIQ==
X-Google-Smtp-Source: AGHT+IFBxGp8SaeQqQUz2zloZ4K1h8vgzjf3pkmahMn9NrG4HemfvelUnukoTgxIAlFGA7ZKWawR9A==
X-Received: by 2002:a05:6e02:1fcc:b0:39f:36f3:196f with SMTP id e9e14a558f8ab-39f378ea649mr163711435ab.4.1725327109783;
        Mon, 02 Sep 2024 18:31:49 -0700 (PDT)
Received: from aford-System-Version.lan (c-75-72-166-104.hsd1.mn.comcast.net. [75.72.166.104])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-39f3b059c32sm28466715ab.75.2024.09.02.18.31.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 18:31:49 -0700 (PDT)
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
	Marco Felsch <m.felsch@pengutronix.de>,
	Lucas Stach <l.stach@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: [PATCH V4 5/5] phy: freescale: fsl-samsung-hdmi:  Remove unnecessary LUT entries
Date: Mon,  2 Sep 2024 20:30:47 -0500
Message-ID: <20240903013113.139698-6-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240903013113.139698-1-aford173@gmail.com>
References: <20240903013113.139698-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_183151_540940_33CD6486 
X-CRM114-Status: GOOD (  11.22  )
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

The lookup table contains entries which use the integer divider
instead of just the fractional divider.  Since the set and round
functions check both the integer divider values and the LUT values,
it's no longer necessary to keep the integer divder values in the,
as they are able to by dynamically calcuated.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 83 +++-----------------
 1 file changed, 13 insertions(+), 70 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index 0bf526e282a7..7cfad4ed94f3 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -60,25 +60,16 @@ static const struct phy_config phy_pll_cfg[] = {
 	}, {
 		.pixclk = 23750000,
 		.pll_div_regs = { 0xd1, 0x50, 0xf1, 0x86, 0x85, 0x80, 0x40 },
-	}, {
-		.pixclk = 24000000,
-		.pll_div_regs = { 0xd1, 0x50, 0xf0, 0x00, 0x00, 0x80, 0x00 },
 	}, {
 		.pixclk = 24024000,
 		.pll_div_regs = { 0xd1, 0x50, 0xf1, 0x99, 0x02, 0x80, 0x40 },
 	}, {
 		.pixclk = 25175000,
 		.pll_div_regs = { 0xd1, 0x54, 0xfc, 0xcc, 0x91, 0x80, 0x40 },
-	}, {
-		.pixclk = 25200000,
-		.pll_div_regs = { 0xd1, 0x54, 0xf0, 0x00, 0x00, 0x80, 0x00 },
-	}, {
+	},  {
 		.pixclk = 26750000,
 		.pll_div_regs = { 0xd1, 0x5a, 0xf2, 0x89, 0x88, 0x80, 0x40 },
-	}, {
-		.pixclk = 27000000,
-		.pll_div_regs = { 0xd1, 0x5a, 0xf0, 0x00, 0x00, 0x80, 0x00 },
-	}, {
+	},  {
 		.pixclk = 27027000,
 		.pll_div_regs = { 0xd1, 0x5a, 0xf2, 0xfd, 0x0c, 0x80, 0x40 },
 	}, {
@@ -96,18 +87,9 @@ static const struct phy_config phy_pll_cfg[] = {
 	}, {
 		.pixclk = 35000000,
 		.pll_div_regs = { 0xd1, 0x58, 0xb8, 0x8b, 0x88, 0x80, 0x40 },
-	}, {
-		.pixclk = 36000000,
-		.pll_div_regs = { 0xd1, 0x5a, 0xb0, 0x00, 0x00, 0x80, 0x00 },
-	}, {
+	},  {
 		.pixclk = 36036000,
 		.pll_div_regs = { 0xd1, 0x5a, 0xb2, 0xfd, 0x0c, 0x80, 0x40 },
-	}, {
-		.pixclk = 40000000,
-		.pll_div_regs = { 0xd1, 0x64, 0xb0, 0x00, 0x00, 0x80, 0x00 },
-	}, {
-		.pixclk = 43200000,
-		.pll_div_regs = { 0xd1, 0x5a, 0x90, 0x00, 0x00, 0x80, 0x00 },
 	}, {
 		.pixclk = 43243200,
 		.pll_div_regs = { 0xd1, 0x5a, 0x92, 0xfd, 0x0c, 0x80, 0x40 },
@@ -123,19 +105,13 @@ static const struct phy_config phy_pll_cfg[] = {
 	}, {
 		.pixclk = 50349650,
 		.pll_div_regs = { 0xd1, 0x54, 0x7c, 0xc3, 0x8f, 0x80, 0x40 },
-	}, {
-		.pixclk = 50400000,
-		.pll_div_regs = { 0xd1, 0x54, 0x70, 0x00, 0x00, 0x80, 0x00 },
 	}, {
 		.pixclk = 53250000,
 		.pll_div_regs = { 0xd1, 0x58, 0x72, 0x84, 0x03, 0x82, 0x41 },
 	}, {
 		.pixclk = 53500000,
 		.pll_div_regs = { 0xd1, 0x5a, 0x72, 0x89, 0x88, 0x80, 0x40 },
-	}, {
-		.pixclk = 54000000,
-		.pll_div_regs = { 0xd1, 0x5a, 0x70, 0x00, 0x00, 0x80, 0x00 },
-	}, {
+	},  {
 		.pixclk = 54054000,
 		.pll_div_regs = { 0xd1, 0x5a, 0x72, 0xfd, 0x0c, 0x80, 0x40 },
 	}, {
@@ -144,10 +120,7 @@ static const struct phy_config phy_pll_cfg[] = {
 	}, {
 		.pixclk = 59340659,
 		.pll_div_regs = { 0xd1, 0x62, 0x74, 0xdb, 0x52, 0x88, 0x47 },
-	}, {
-		.pixclk = 59400000,
-		.pll_div_regs = { 0xd1, 0x63, 0x70, 0x00, 0x00, 0x80, 0x00 },
-	}, {
+	},  {
 		.pixclk = 61500000,
 		.pll_div_regs = { 0xd1, 0x66, 0x74, 0x82, 0x01, 0x88, 0x45 },
 	}, {
@@ -159,10 +132,7 @@ static const struct phy_config phy_pll_cfg[] = {
 	}, {
 		.pixclk = 70000000,
 		.pll_div_regs = { 0xd1, 0x58, 0x58, 0x8b, 0x88, 0x80, 0x40 },
-	}, {
-		.pixclk = 72000000,
-		.pll_div_regs = { 0xd1, 0x5a, 0x50, 0x00, 0x00, 0x80, 0x00 },
-	}, {
+	},  {
 		.pixclk = 72072000,
 		.pll_div_regs = { 0xd1, 0x5a, 0x52, 0xfd, 0x0c, 0x80, 0x40 },
 	}, {
@@ -174,10 +144,7 @@ static const struct phy_config phy_pll_cfg[] = {
 	}, {
 		.pixclk = 78500000,
 		.pll_div_regs = { 0xd1, 0x62, 0x54, 0x87, 0x01, 0x80, 0x40 },
-	}, {
-		.pixclk = 80000000,
-		.pll_div_regs = { 0xd1, 0x64, 0x50, 0x00, 0x00, 0x80, 0x00 },
-	}, {
+	},  {
 		.pixclk = 82000000,
 		.pll_div_regs = { 0xd1, 0x66, 0x54, 0x82, 0x01, 0x88, 0x45 },
 	}, {
@@ -204,10 +171,7 @@ static const struct phy_config phy_pll_cfg[] = {
 	}, {
 		.pixclk = 100699300,
 		.pll_div_regs = { 0xd1, 0x54, 0x3c, 0xc3, 0x8f, 0x80, 0x40 },
-	}, {
-		.pixclk = 100800000,
-		.pll_div_regs = { 0xd1, 0x54, 0x30, 0x00, 0x00, 0x80, 0x00 },
-	}, {
+	},  {
 		.pixclk = 102500000,
 		.pll_div_regs = { 0xd1, 0x55, 0x32, 0x8c, 0x05, 0x90, 0x4b },
 	}, {
@@ -219,19 +183,13 @@ static const struct phy_config phy_pll_cfg[] = {
 	}, {
 		.pixclk = 107000000,
 		.pll_div_regs = { 0xd1, 0x5a, 0x32, 0x89, 0x88, 0x80, 0x40 },
-	}, {
-		.pixclk = 108000000,
-		.pll_div_regs = { 0xd1, 0x5a, 0x30, 0x00, 0x00, 0x80, 0x00 },
-	}, {
+	},  {
 		.pixclk = 108108000,
 		.pll_div_regs = { 0xd1, 0x5a, 0x32, 0xfd, 0x0c, 0x80, 0x40 },
 	}, {
 		.pixclk = 118000000,
 		.pll_div_regs = { 0xd1, 0x62, 0x34, 0x95, 0x08, 0x80, 0x40 },
-	}, {
-		.pixclk = 118800000,
-		.pll_div_regs = { 0xd1, 0x63, 0x30, 0x00, 0x00, 0x80, 0x00 },
-	}, {
+	},  {
 		.pixclk = 123000000,
 		.pll_div_regs = { 0xd1, 0x66, 0x34, 0x82, 0x01, 0x88, 0x45 },
 	}, {
@@ -252,10 +210,7 @@ static const struct phy_config phy_pll_cfg[] = {
 	}, {
 		.pixclk = 140000000,
 		.pll_div_regs = { 0xd1, 0x75, 0x36, 0xa7, 0x90, 0x80, 0x40 },
-	}, {
-		.pixclk = 144000000,
-		.pll_div_regs = { 0xd1, 0x78, 0x30, 0x00, 0x00, 0x80, 0x00 },
-	}, {
+	},  {
 		.pixclk = 148352000,
 		.pll_div_regs = { 0xd1, 0x7b, 0x35, 0xdb, 0x39, 0x90, 0x45 },
 	}, {
@@ -279,9 +234,6 @@ static const struct phy_config phy_pll_cfg[] = {
 	}, {
 		.pixclk = 165000000,
 		.pll_div_regs = { 0xd1, 0x45, 0x11, 0x84, 0x81, 0x90, 0x4b },
-	}, {
-		.pixclk = 180000000,
-		.pll_div_regs = { 0xd1, 0x4b, 0x10, 0x00, 0x00, 0x80, 0x00 },
 	}, {
 		.pixclk = 185625000,
 		.pll_div_regs = { 0xd1, 0x4e, 0x12, 0x9a, 0x95, 0x80, 0x40 },
@@ -300,25 +252,16 @@ static const struct phy_config phy_pll_cfg[] = {
 	}, {
 		.pixclk = 213000000,
 		.pll_div_regs = { 0xd1, 0x58, 0x12, 0x84, 0x03, 0x82, 0x41 },
-	}, {
-		.pixclk = 216000000,
-		.pll_div_regs = { 0xd1, 0x5a, 0x10, 0x00, 0x00, 0x80, 0x00 },
 	}, {
 		.pixclk = 216216000,
 		.pll_div_regs = { 0xd1, 0x5a, 0x12, 0xfd, 0x0c, 0x80, 0x40 },
-	}, {
-		.pixclk = 237600000,
-		.pll_div_regs = { 0xd1, 0x63, 0x10, 0x00, 0x00, 0x80, 0x00 },
-	}, {
+	},  {
 		.pixclk = 254000000,
 		.pll_div_regs = { 0xd1, 0x69, 0x14, 0x89, 0x08, 0x80, 0x40 },
 	}, {
 		.pixclk = 277500000,
 		.pll_div_regs = { 0xd1, 0x73, 0x15, 0x88, 0x05, 0x90, 0x4d },
-	}, {
-		.pixclk = 288000000,
-		.pll_div_regs = { 0xd1, 0x78, 0x10, 0x00, 0x00, 0x80, 0x00 },
-	}, {
+	},  {
 		.pixclk = 297000000,
 		.pll_div_regs = { 0xd1, 0x7b, 0x15, 0x84, 0x03, 0x90, 0x45 },
 	},
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
