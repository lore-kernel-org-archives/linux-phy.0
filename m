Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19554C3DA7A
	for <linux-phy@archiver.kernel.org>; Fri,  6 Jan 2023 07:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q0vcukLTbK3G69K0xx2PJoyglHjjCZ/2LSeth01DADc=; b=HeuSLFIXDVwUYj
	B3yVf2kpm7um7y5eRCuxoGCAvad4EUMi1Ay9ZLd6dqQDEYCu4ugmT8E9TZrQEsQr1rvrpGQPyHXnb
	wenSVOQIDwNHzL+D8ezPQZ6hPcZQShkHiUPfAJR5IwLYNZunerMMYa+qlR2mLJ6F4pwGcHyLUerXV
	yG0+iFREvz4BBhIDK4pW4bVh7q+wepJe4COVExtADEpR48lMow/r2PaIDJ+oSE58dSlvYfPfGtzY9
	v1fjZN5VFRepgW9WqvCjZJDiCTF89qLAw5eSub0un4au2rBIQ01xtd/olq1lLBtlFdtKse5brmAvL
	Fl6ddZIr3FfFDz6ngoKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDgzL-006Jph-2A; Fri, 06 Jan 2023 07:18:03 +0000
Received: from egress-ip33a.ess.de.barracuda.com ([18.185.115.192])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDgzH-006JnS-7r
	for linux-phy@lists.infradead.org; Fri, 06 Jan 2023 07:18:01 +0000
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199]) by mx-outbound47-78.eu-central-1c.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Fri, 06 Jan 2023 07:17:55 +0000
Received: by mail-pf1-f199.google.com with SMTP id a18-20020a62bd12000000b0056e7b61ec78so461378pff.17
        for <linux-phy@lists.infradead.org>; Thu, 05 Jan 2023 23:17:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8AImsv2GJblVk3IBHF2BxV6bmixq4VrLyxTcmlA/Kds=;
        b=VXvOYP2BVNIXjx3gBef5U41bnvuMVLE4b79oG8axuvfvEMBc8hRtffnHT6LFo21dl4
         kVIPW/ujQJOrLTrmQ+n7GDxS8GhGcmxNYYKA6ago+BXICWBhHu+XsSKC2ehIncSvLY/8
         tXhIns51ATr30xQfUDBlc4pS4VLHuQvBal344=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8AImsv2GJblVk3IBHF2BxV6bmixq4VrLyxTcmlA/Kds=;
        b=1/U9qRxjxk/feGkqq30vAhGix/eg/HNU65K1K3yJJrRcfUwkRo1r2JLx38A5Aydh+Y
         hhO+dEiV9/p2Q6oewi0DzFHM6de14fzf5Mj5zTusmqgLny6OSL+JrzR95T6e+Gf26QvF
         fsCABGTXnLqdTqkKRqvj4XPS/Yq85mKAxYZkkawIBFVwv7dghbZMEoh4F20xaqw2ik87
         WXOpkbvtM4/oM1S5qVVdXgdsiXslTpsL1FE6GmSaxAC3jlJOnELLXATiiPbKs/3V7aIN
         XsZ8zHgqQiLB4lQkZ6CiFfklkO5i5e/+RfTJg19bIOfojSdT839hayhGt7c1ZxFZAn6q
         JZjA==
X-Gm-Message-State: AFqh2kr9kApG7XnsA10V3dXVlfXCVXgHpBQ5GSZJZhyKiHLe3kyYFgJA
	zkhVZ63aGJZ0f7FUWqXqwBFZqEWxrUl+3dWdIUidqWgxv31ShcrG81X2/y+9MyXq1vqAmsPzc4f
	5N3vx0joBO/AovSpfCKEtjxNmbXkvjZlk1etC5DVQq5zvD0wIQDYhx5zQc0o8+g==
X-Received: by 2002:a17:902:efc4:b0:192:85f2:49d with SMTP id ja4-20020a170902efc400b0019285f2049dmr39498693plb.18.1672989474571;
        Thu, 05 Jan 2023 23:17:54 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtJjjc8Hv5sNigU6DWyn7qgZerAzkn5dOxYGducXViHoR5KqjHCSi/G5BMJ1QZX0bS8Y8mDjw==
X-Received: by 2002:a17:902:efc4:b0:192:85f2:49d with SMTP id ja4-20020a170902efc400b0019285f2049dmr39498676plb.18.1672989474275;
        Thu, 05 Jan 2023 23:17:54 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id h5-20020a170902680500b00189348ab156sm138845plk.283.2023.01.05.23.17.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 23:17:53 -0800 (PST)
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
Subject: [PATCH V2 1/2] phy: ti: j721e-wiz: Manage TypeC lane swap if typec-dir-gpios not specified
Date: Fri,  6 Jan 2023 12:47:13 +0530
Message-Id: <20230106071714.30562-2-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230106071714.30562-1-sinthu.raja@ti.com>
References: <20230106071714.30562-1-sinthu.raja@ti.com>
MIME-Version: 1.0
X-BESS-ID: 1672989475-312110-5399-42726-1
X-BESS-VER: 2019.1_20221214.2106
X-BESS-Apparent-Source-IP: 209.85.210.199
X-BESS-Outbound-Spam-Score: 0.90
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.245283 [from 
	cloudscan11-0.eu-central-1a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.40 BSF_SC0_SA085b         META: Custom Rule SA085b 
	0.50 BSF_RULE7568M          META: Custom Rule 7568M 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
X-BESS-Outbound-Spam-Status: SCORE=0.90 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_SA085b, BSF_RULE7568M, BSF_BESS_OUTBOUND, BSF_SC0_MISMATCH_TO
X-BESS-BRTS-Status: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230105_231759_446788_6DB9B224 
X-CRM114-Status: GOOD (  18.81  )
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
---

Changes in V2:
=============
Address review comments:
- Update commit description as per review comments.
- Restore code to check only debounce delay only if typec-dir-gpios property is specified in DT.
- Rename lane_phy_reg variable as master_lane_num.
- Update inline comments.

V1: https://lore.kernel.org/lkml/20221213124854.3779-2-sinthu.raja@ti.com/T/#mb1f9f8d26b4ef735bbbc3994a1e9c16d52ca2c19

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
