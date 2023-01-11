Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30C03C46467
	for <linux-phy@archiver.kernel.org>; Wed, 11 Jan 2023 11:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jW6IH2+cZ0hGGOd8qW+IbWG0pruC5oFcjIifc4qrSQY=; b=WM5d6BO85zUYTF
	6OUL3B9M9kSl1QQH5+wO9235Xz4lH8Y9QS0SOpTgYm0t5n2BPbW33vAUMZ2d6jNT2YTPMl+A/OHLU
	DxgtaMHlGWumnVQz4zOrZtnXeRgrrNUqPypXIzzI+9+baI9wFht8ZhoF2YxDgHvfDcvAkv6w9BeBg
	Mj8qWj43a7NXHaWPhjZO26IyxlwfsklxQsnwituz5GobD6vkvTm+C5eWYTInsJp3ded7GbVNBF/4Z
	YtFBSjMXKfCoB/XH9Ce0A4asMxKG6tPm/lnJQ06BnLl0GIPWFZPQLM58pn1VVdkLRbdzpP3hvQzoj
	HTn+f2aaflfHfQ60wl/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFZ3t-00B1Ze-Et; Wed, 11 Jan 2023 11:14:29 +0000
Received: from egress-ip33b.ess.de.barracuda.com ([18.185.115.237])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFZ3p-00B1Vo-CV
	for linux-phy@lists.infradead.org; Wed, 11 Jan 2023 11:14:27 +0000
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200]) by mx-outbound19-234.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Wed, 11 Jan 2023 11:14:19 +0000
Received: by mail-pg1-f200.google.com with SMTP id j21-20020a63fc15000000b00476d6932baeso6605439pgi.23
        for <linux-phy@lists.infradead.org>; Wed, 11 Jan 2023 03:14:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BkPrecdgrR3b0Zn1YRgmmd3I/dP7Z74WRRmS7mk66ds=;
        b=mN/1G5z6IeHzR0ihluySvAN5QNjYJ+qje7EMK6DCW0ewl5L270keiG8IVDtw/FMAdn
         /ImAXFmn0aHVdkqwb+6Ht2TBpKfACvCU2PBY56Ddv+Nx1LlMRAfS9/Oqbl0r24tCUz3k
         BhKEq3YDKT0Mc3h8z3KHCuJST9JwCRezUu3ws=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BkPrecdgrR3b0Zn1YRgmmd3I/dP7Z74WRRmS7mk66ds=;
        b=4Bh6pNoB/Rssz7eCH1smFFuUYDh5du+R9cOCzN0weHtWQHrsBzDCP7nyCTGoxPSHkg
         qqlWBAXS9mlTsf9Cf+9lKXOA7iXMkolUygKNO9WvXmD+SrWbHrPiiP0q0FHNnPrH+xb5
         maOL/yA5HllMr5NeXkx8wB8n1NAKXG0ZFrVwCbreOeDV2qwWm/EehHgZ2qfXTzrzcU/J
         f6y5CqEhhuEH4SExTdGvAj37JQZ7qK4WaDEBh1RbHi7mdVarWcB1ESYd8eeEDKnZRXMR
         VfiLNl2vj9VRzuChgs1BuomJrkiAhkXlNHTUcw7GNgzZlAxPfGoQwmwNz9tY8NkbYajP
         Ftug==
X-Gm-Message-State: AFqh2krh6ymNnJyGlbd57y2vNxFZ2TDDfjqGTex9p2D25yceNl7Mz97O
	qXk6F5/jErhkHuQ85Y6Yp5Wd2Ry5EvXq41lHaSHwis8fygXgL+i8NcQ+7bJuvpuXaMYHvLCcPXE
	rj2sWvFsgX3gOr5JAItf3aKo6v9ys7DDqvSWvfIYAKy6See72Hujr083BatNhYA==
X-Received: by 2002:a05:6a00:1d03:b0:580:149a:5650 with SMTP id a3-20020a056a001d0300b00580149a5650mr73276191pfx.22.1673435658896;
        Wed, 11 Jan 2023 03:14:18 -0800 (PST)
X-Google-Smtp-Source: AMrXdXud9FlZyCl95wBnuTgi/435XVOzxGcFz7TtRPVqAXRv7LSQge9pHXoidmVlz1ItLBaC1vOyvQ==
X-Received: by 2002:a05:6a00:1d03:b0:580:149a:5650 with SMTP id a3-20020a056a001d0300b00580149a5650mr73276181pfx.22.1673435658626;
        Wed, 11 Jan 2023 03:14:18 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id d206-20020a621dd7000000b00589ed7ae132sm4235666pfd.13.2023.01.11.03.14.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 03:14:18 -0800 (PST)
From: Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To: Roger Quadros <rogerq@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Ravi Gunasekaran <r-gunasekaran@ti.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH V3 1/2] phy: ti: j721e-wiz: Manage TypeC lane swap if typec-dir-gpios not specified
Date: Wed, 11 Jan 2023 16:43:55 +0530
Message-Id: <20230111111356.17392-2-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230111111356.17392-1-sinthu.raja@ti.com>
References: <20230111111356.17392-1-sinthu.raja@ti.com>
MIME-Version: 1.0
X-BESS-ID: 1673435659-305098-5386-438-1
X-BESS-VER: 2019.1_20221214.2106
X-BESS-Apparent-Source-IP: 209.85.215.200
X-BESS-Outbound-Spam-Score: 0.50
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.245393 [from 
	cloudscan13-151.eu-central-1a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
	0.50 BSF_RULE7568M          META: Custom Rule 7568M 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.50 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_RULE7568M, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_031425_608094_04DA0C9C 
X-CRM114-Status: GOOD (  18.85  )
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

From: Sinthu Raja <sinthu.raja@ti.com>

It's possible that the Type-C plug orientation on the DIR line will be
implemented through hardware design. In that situation, there won't be
an external GPIO line available, but the driver still needs to address
this since the DT won't use the typec-dir-gpios property.

Add code to handle LN10 Type-C swap if typec-dir-gpios property is not
specified in DT.

Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
Reviewed-by: Roger Quadros <rogerq@kernel.org>
---

Changes in V3:
=============
- Added Reviewed-by tag.

Changes in V2:
=============
Address review comments:
- Update commit description as per review comments.
- Restore code to check only debounce delay only if typec-dir-gpios property is specified in DT.
- Rename lane_phy_reg variable as master_lane_num.
- Update inline comments.

 drivers/phy/ti/phy-j721e-wiz.c | 39 +++++++++++++++++++++++++---------
 1 file changed, 29 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index ddce5ef7711c..571f0ca18874 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -376,6 +376,7 @@ struct wiz {
 	struct gpio_desc	*gpio_typec_dir;
 	int			typec_dir_delay;
 	u32 lane_phy_type[WIZ_MAX_LANES];
+	u32 master_lane_num[WIZ_MAX_LANES];
 	struct clk		*input_clks[WIZ_MAX_INPUT_CLOCKS];
 	struct clk		*output_clks[WIZ_MAX_OUTPUT_CLOCKS];
 	struct clk_onecell_data	clk_data;
@@ -1234,15 +1235,31 @@ static int wiz_phy_reset_deassert(struct reset_controller_dev *rcdev,
 	struct wiz *wiz = dev_get_drvdata(dev);
 	int ret;
 
-	/* if typec-dir gpio was specified, set LN10 SWAP bit based on that */
-	if (id == 0 && wiz->gpio_typec_dir) {
-		if (wiz->typec_dir_delay)
-			msleep_interruptible(wiz->typec_dir_delay);
-
-		if (gpiod_get_value_cansleep(wiz->gpio_typec_dir))
-			regmap_field_write(wiz->typec_ln10_swap, 1);
-		else
-			regmap_field_write(wiz->typec_ln10_swap, 0);
+	if (id == 0) {
+		/* if typec-dir gpio was specified, set LN10 SWAP bit based on that */
+		if (wiz->gpio_typec_dir) {
+			if (wiz->typec_dir_delay)
+				msleep_interruptible(wiz->typec_dir_delay);
+
+			if (gpiod_get_value_cansleep(wiz->gpio_typec_dir))
+				regmap_field_write(wiz->typec_ln10_swap, 1);
+			else
+				regmap_field_write(wiz->typec_ln10_swap, 0);
+		} else {
+			/* if no typec-dir gpio was specified and PHY type is
+			 * USB3 with master lane number is '0', set LN10 SWAP
+			 * bit to '1'
+			 */
+			u32 num_lanes = wiz->num_lanes;
+			int i;
+
+			for (i = 0; i < num_lanes; i++) {
+				if ((wiz->lane_phy_type[i] == PHY_TYPE_USB3)
+						&& wiz->master_lane_num[i] == 0) {
+					regmap_field_write(wiz->typec_ln10_swap, 1);
+				}
+			}
+		}
 	}
 
 	if (id == 0) {
@@ -1386,8 +1403,10 @@ static int wiz_get_lane_phy_types(struct device *dev, struct wiz *wiz)
 		dev_dbg(dev, "%s: Lanes %u-%u have phy-type %u\n", __func__,
 			reg, reg + num_lanes - 1, phy_type);
 
-		for (i = reg; i < reg + num_lanes; i++)
+		for (i = reg; i < reg + num_lanes; i++) {
+			wiz->master_lane_num[i] = reg;
 			wiz->lane_phy_type[i] = phy_type;
+		}
 	}
 
 	return 0;
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
