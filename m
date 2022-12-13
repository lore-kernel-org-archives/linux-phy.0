Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A86CBC10F1D
	for <linux-phy@archiver.kernel.org>; Tue, 13 Dec 2022 12:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u0OGJctkVnqwn9khOBjJnmQTnSJhGhJ+3Fzh22OtWYo=; b=UT1TF15tZIvGwl
	bJH3fWIxIlMmfr5LfhXTAWezGj8eX/AOJqS7Oh2USrPinlKqoOHU5IMmA8HSb7W5ikkJyFBRwj/oE
	hRO/YIioUrzPNZuBflFLgoe2MAjgmoYfwYCovZJaWerl7NI++3CfTnK3Vxbhu4gCB6pNDlu+RseoK
	oNb0/LpfUP3Du0X7L2N3DBQF7J1IR9o4UdNiQd5x+MF5xx6y8zaCtU+vYawaUuwqFhrNuCYanSLHp
	AgQycZykMLrNv8XL7sf0FeLHR1alsjKQ4FYuXAU+ySIph7IC+3Guojw+NTMhE7HiGYKXwE2MzMv+f
	C2Vn1ccnerMQlzaVd7xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p54im-00HQ7O-4Z; Tue, 13 Dec 2022 12:49:20 +0000
Received: from egress-ip4b.ess.de.barracuda.com ([18.185.115.208])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p54ij-00HPtT-9G
	for linux-phy@lists.infradead.org; Tue, 13 Dec 2022 12:49:19 +0000
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69]) by mx-outbound20-247.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Tue, 13 Dec 2022 12:49:12 +0000
Received: by mail-pj1-f69.google.com with SMTP id z4-20020a17090ab10400b002195a146546so2299120pjq.9
        for <linux-phy@lists.infradead.org>; Tue, 13 Dec 2022 04:49:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mJx0rqXAD4/GS75NvFhhlmtznHYCg5Ca/9JyH7cg9Uo=;
        b=kJcvRSdIp5NMz5v1W2KrvA5RQ6yRnVaMEmRm9XeDvp9L9VdtmbkgqW/ajupMeLa5C8
         LYH1eSD2TDLLz7yzclYpZzqrSSJIDUMS6YJ1c9JX2pO9hXEawe8hnibZOn4njwmTYQs0
         PsxVRQq0//XNw635iCjmc9cBeLcyKAdYiG5ao=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mJx0rqXAD4/GS75NvFhhlmtznHYCg5Ca/9JyH7cg9Uo=;
        b=2vPbgofeqbdO1TA9SIQB81S76r8zNteb9krdv+x6z7fnzpcKV7KgUHjqY/y+Nc8VH2
         hVqgRbaiQ/gQvXJxvUolphTWc6u/dAt2sfSfgOABjHQIQm2x2kEtzwpxGKAmQooPkbIf
         d/uRhhWvtSwaObSwzkYAmsMi2o+XvsoStbxyxAEW7MxUmlFX/qTdPxczs1uaTcESxSjM
         r0U3bP1zVxZ4fMd+iLR4swzo6AKhoERxLPnCX3Z/cFybqXtE3c9GU7DyAsgnpagsRxZ9
         758g3NdS+kvC+06ivORGEeT9ffxnw2+G5PhhMbIdRE6VY4qtpKb/PkXflu1B/6RjcW2Q
         E8lQ==
X-Gm-Message-State: ANoB5pl4/0phg/hgHrH1S2NXBGN24JIcyQtOdTLfz0yH1LdNhPgV8BVa
	cjny9nw0Pxq0WAa7/i7itGLhZ6NrIrNGnUf0mfHMNmFc+5fhD7/W9MQtMAT28BGPl0h76mm9ucG
	/v5YMzE7Da2gBZ6tCk8sr5GuYuCg8n/4FCQIDq6uKtaQhsGSOgqQM4MFIvocgyQ==
X-Received: by 2002:a62:6303:0:b0:578:83f5:554d with SMTP id x3-20020a626303000000b0057883f5554dmr7396316pfb.23.1670935750569;
        Tue, 13 Dec 2022 04:49:10 -0800 (PST)
X-Google-Smtp-Source: AA0mqf79NvSLf3fR4k5b2OfX28LbYFMvdBnV3f6QI2mYequV8Z64orw6uQKCILT4aH7NwsrBcXjRnA==
X-Received: by 2002:a62:6303:0:b0:578:83f5:554d with SMTP id x3-20020a626303000000b0057883f5554dmr7396294pfb.23.1670935750251;
        Tue, 13 Dec 2022 04:49:10 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id y15-20020aa7942f000000b0057622e8e82csm7605485pfo.191.2022.12.13.04.49.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 04:49:09 -0800 (PST)
From: Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To: Vinod Koul <vkoul@kernel.org>,
	Ravi Gunasekaran <r-gunasekaran@ti.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
	Roger Quadros <rogerq@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH 1/2] phy: ti: j721e-wiz: Manage TypeC lane swap if typec-gpio-dir not specified
Date: Tue, 13 Dec 2022 18:18:53 +0530
Message-Id: <20221213124854.3779-2-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221213124854.3779-1-sinthu.raja@ti.com>
References: <20221213124854.3779-1-sinthu.raja@ti.com>
MIME-Version: 1.0
X-BESS-ID: 1670935751-305367-5379-5821-1
X-BESS-VER: 2019.1_20221212.2317
X-BESS-Apparent-Source-IP: 209.85.216.69
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.244774 [from 
	cloudscan15-235.eu-central-1a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, BSF_SC0_MISMATCH_TO
X-BESS-BRTS-Status: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221213_044917_499182_949ACE9A 
X-CRM114-Status: GOOD (  21.39  )
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

It's possible that the Type-C plug orientation on the DIR line will be
implemented through hardware design. In that situation, there won't be
an external GPIO line available, but the driver still needs to address
this since the DT won't use the typec-gpio-dir property.

Add code to handle LN10 Type-C swap if typec-gpio-dir property is not
specified in DT.

Remove typec-gpio-dir check to use minimum debounce from Type-C spec if
it is not provided in DT

Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
---
 drivers/phy/ti/phy-j721e-wiz.c | 65 +++++++++++++++++++++-------------
 1 file changed, 40 insertions(+), 25 deletions(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index 141b51af4427..b17eec632d49 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -375,6 +375,7 @@ struct wiz {
 	struct gpio_desc	*gpio_typec_dir;
 	int			typec_dir_delay;
 	u32 lane_phy_type[WIZ_MAX_LANES];
+	u32 lane_phy_reg[WIZ_MAX_LANES];
 	struct clk		*input_clks[WIZ_MAX_INPUT_CLOCKS];
 	struct clk		*output_clks[WIZ_MAX_OUTPUT_CLOCKS];
 	struct clk_onecell_data	clk_data;
@@ -1231,14 +1232,28 @@ static int wiz_phy_reset_deassert(struct reset_controller_dev *rcdev,
 	int ret;
 
 	/* if typec-dir gpio was specified, set LN10 SWAP bit based on that */
-	if (id == 0 && wiz->gpio_typec_dir) {
-		if (wiz->typec_dir_delay)
-			msleep_interruptible(wiz->typec_dir_delay);
-
-		if (gpiod_get_value_cansleep(wiz->gpio_typec_dir))
-			regmap_field_write(wiz->typec_ln10_swap, 1);
-		else
-			regmap_field_write(wiz->typec_ln10_swap, 0);
+	if (id == 0 && wiz->typec_dir_delay) {
+		msleep_interruptible(wiz->typec_dir_delay);
+
+		if (wiz->gpio_typec_dir) {
+			if (gpiod_get_value_cansleep(wiz->gpio_typec_dir))
+				regmap_field_write(wiz->typec_ln10_swap, 1);
+			else
+				regmap_field_write(wiz->typec_ln10_swap, 0);
+		} else {
+			/* if no typec-dir gpio was specified, and USB lines
+			 * are connected to Lane 0 then set LN10 SWAP bit to 1.
+			 */
+			u32 num_lanes = wiz->num_lanes;
+			int i;
+
+			for (i = 0; i < num_lanes; i++) {
+				if ((wiz->lane_phy_type[i] == PHY_TYPE_USB3) \
+						&& wiz->lane_phy_reg[i] == 0) {
+					regmap_field_write(wiz->typec_ln10_swap, 1);
+				}
+			}
+		}
 	}
 
 	if (id == 0) {
@@ -1370,8 +1385,10 @@ static int wiz_get_lane_phy_types(struct device *dev, struct wiz *wiz)
 		dev_dbg(dev, "%s: Lanes %u-%u have phy-type %u\n", __func__,
 			reg, reg + num_lanes - 1, phy_type);
 
-		for (i = reg; i < reg + num_lanes; i++)
+		for (i = reg; i < reg + num_lanes; i++) {
+			wiz->lane_phy_reg[i] = reg;
 			wiz->lane_phy_type[i] = phy_type;
+		}
 	}
 
 	return 0;
@@ -1464,24 +1481,22 @@ static int wiz_probe(struct platform_device *pdev)
 		goto err_addr_to_resource;
 	}
 
-	if (wiz->gpio_typec_dir) {
-		ret = of_property_read_u32(node, "typec-dir-debounce-ms",
-					   &wiz->typec_dir_delay);
-		if (ret && ret != -EINVAL) {
-			dev_err(dev, "Invalid typec-dir-debounce property\n");
-			goto err_addr_to_resource;
-		}
+	ret = of_property_read_u32(node, "typec-dir-debounce-ms",
+				   &wiz->typec_dir_delay);
+	if (ret && ret != -EINVAL) {
+		dev_err(dev, "Invalid typec-dir-debounce property\n");
+		goto err_addr_to_resource;
+	}
 
-		/* use min. debounce from Type-C spec if not provided in DT  */
-		if (ret == -EINVAL)
-			wiz->typec_dir_delay = WIZ_TYPEC_DIR_DEBOUNCE_MIN;
+	/* use min. debounce from Type-C spec if not provided in DT  */
+	if (ret == -EINVAL)
+		wiz->typec_dir_delay = WIZ_TYPEC_DIR_DEBOUNCE_MIN;
 
-		if (wiz->typec_dir_delay < WIZ_TYPEC_DIR_DEBOUNCE_MIN ||
-		    wiz->typec_dir_delay > WIZ_TYPEC_DIR_DEBOUNCE_MAX) {
-			ret = -EINVAL;
-			dev_err(dev, "Invalid typec-dir-debounce property\n");
-			goto err_addr_to_resource;
-		}
+	if (wiz->typec_dir_delay < WIZ_TYPEC_DIR_DEBOUNCE_MIN ||
+	    wiz->typec_dir_delay > WIZ_TYPEC_DIR_DEBOUNCE_MAX) {
+		ret = -EINVAL;
+		dev_err(dev, "Invalid typec-dir-debounce property\n");
+		goto err_addr_to_resource;
 	}
 
 	ret = wiz_get_lane_phy_types(dev, wiz);
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
