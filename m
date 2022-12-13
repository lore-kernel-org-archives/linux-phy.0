Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC5BDC4708D
	for <linux-phy@archiver.kernel.org>; Tue, 13 Dec 2022 12:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YltdvdkwnqleEK48ryzDZ+UL5/6K3i+29mM+3B8TOLQ=; b=bGT3HEJNKJeC9W
	nybNmqu5+P5hohnsNzvtPvdTqQwCb0xwWCD0DyRvnnm8xh3KNqDcrR76a+YO+DxNXuweoyMhore7T
	BXq/bvVJy3Lp9lQCPJAuw4uwqvHiv3hI3JgLAVDZlWiaa9pClywPWb/gNgciadgiTVcauV0ro1iLa
	XfHIjlS0YxPWdylXariz69ALNEIVub5IuTYE+Nu2x8JXCGVJHADew9f0WQ+SgpKqiMxngLqZKBWLS
	UjmMON/mnTqiFfOzoeukHLLHNq8P9vfVVTwJ4nvusU4qLlm74qoUj6ZZ6BpsxlbmK2SiUf17l2Pb+
	xuftZr4P/ZZYmsNXuKXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p54im-00HQ6x-1r; Tue, 13 Dec 2022 12:49:20 +0000
Received: from egress-ip4a.ess.de.barracuda.com ([18.184.203.227])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p54ij-00HPv9-8m
	for linux-phy@lists.infradead.org; Tue, 13 Dec 2022 12:49:18 +0000
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198]) by mx-outbound46-236.eu-central-1c.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Tue, 13 Dec 2022 12:49:14 +0000
Received: by mail-pl1-f198.google.com with SMTP id c12-20020a170902d48c00b00189e5443387so13068680plg.15
        for <linux-phy@lists.infradead.org>; Tue, 13 Dec 2022 04:49:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j4XCC2SNWD3YZuAByZlmhT1HNH2lwLYNZczilwjwoq8=;
        b=ntUrA3y4KwnbuSPFOpGeXbFZS994aN7CbbPZvsvQY3PU9CtDofaTWlURW3hJYm4piF
         A66eOcFeGRqyEFm8dIVPjXxBamT5ucn0otb8CI1bLk5XJz9moaDp5oEgpEV2JTV+QcpM
         X40o4VrWxhPAf+u0Rfru6DLlA8tcnZbaACL1c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j4XCC2SNWD3YZuAByZlmhT1HNH2lwLYNZczilwjwoq8=;
        b=e99TE9gAyRIkfLMsv7Tz13U8VcO5mJWHE4YkGL8GOy5bS/WhEgK2MBBiahqHJgE6t0
         DsBw8ky2fjbsLT7HLCXBF9mQuNU6a9y9fJ4LMZasGE6+NP2x4gVoJtWIs56k6Xp8YfLl
         s0V0dwtjfJYuHnojXkbbcNpVdr9IeYlrssPknAINiEKBgWA4hkz9ZcNNmquEf3X+W8zu
         XEq7FF+WjD1crStmzN21o+J4eBmmhQ3+dF6AjDp7R8jeq6eUPws/ij8KDR6i6ortc8Wu
         ecwPbCnCG5ve8aZtCtNyiFFkh17BP0Gqj+z7/z6MsuiGKDOmvJZWfPCS+Xeo7FnM969L
         DCKQ==
X-Gm-Message-State: ANoB5pl5F891eOH6AER/GVxQsTIHWV1rGv/6Qq2doHrpQ2AARQo6G//Q
	1Y09UuCdO5bk4O+b/wFTRMN64OsQV+s7V3y3PSZ1MUg1yZEoYJ1dqhuD7k8rd23LlJjgHd3yZku
	GWsYhD2RbTXWZWw4spvgUo2LDr2LRPncBbbpegCV/VCVrW/NM9ko8zsX5pZ456A==
X-Received: by 2002:aa7:8250:0:b0:572:75f0:8010 with SMTP id e16-20020aa78250000000b0057275f08010mr18208297pfn.14.1670935753766;
        Tue, 13 Dec 2022 04:49:13 -0800 (PST)
X-Google-Smtp-Source: AA0mqf5N/tf/eQTEMT+wfQQLT9zHuYzXU6hPK99CRRxu4RbFzyftkLwlvTX28bUzYdHPhFSp+h5E/g==
X-Received: by 2002:aa7:8250:0:b0:572:75f0:8010 with SMTP id e16-20020aa78250000000b0057275f08010mr18208275pfn.14.1670935753461;
        Tue, 13 Dec 2022 04:49:13 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id y15-20020aa7942f000000b0057622e8e82csm7605485pfo.191.2022.12.13.04.49.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 04:49:12 -0800 (PST)
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
Subject: [PATCH 2/2] phy: ti: j721e-wiz: Add support to enable LN23 Type-C swap
Date: Tue, 13 Dec 2022 18:18:54 +0530
Message-Id: <20221213124854.3779-3-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221213124854.3779-1-sinthu.raja@ti.com>
References: <20221213124854.3779-1-sinthu.raja@ti.com>
MIME-Version: 1.0
X-BESS-ID: 1670935754-312012-5631-5405-1
X-BESS-VER: 2019.1_20221212.2317
X-BESS-Apparent-Source-IP: 209.85.214.198
X-BESS-Outbound-Spam-Score: 0.50
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.244774 [from 
	cloudscan9-142.eu-central-1a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.50 BSF_RULE7568M          META: Custom Rule 7568M 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
X-BESS-Outbound-Spam-Status: SCORE=0.50 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_RULE7568M, BSF_BESS_OUTBOUND, BSF_SC0_MISMATCH_TO
X-BESS-BRTS-Status: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221213_044917_502628_438A5735 
X-CRM114-Status: GOOD (  14.77  )
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

Serdes wiz supports both LN23 and LN10 Type-C swap. Add support to
configure LN23 bit to swap between lane2 or lane3 if required.

Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
---
 drivers/phy/ti/phy-j721e-wiz.c | 33 +++++++++++++++++++++++++++++----
 1 file changed, 29 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index b17eec632d49..0091892af0b0 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -58,6 +58,11 @@ enum wiz_lane_standard_mode {
 	LANE_MODE_GEN4,
 };
 
+enum wiz_lane_typec_swap_mode {
+	LANE10_SWAP = 0,
+	LANE23_SWAP = 2,
+};
+
 enum wiz_refclk_mux_sel {
 	PLL0_REFCLK,
 	PLL1_REFCLK,
@@ -194,6 +199,9 @@ static const struct reg_field p_mac_div_sel1[WIZ_MAX_LANES] = {
 static const struct reg_field typec_ln10_swap =
 					REG_FIELD(WIZ_SERDES_TYPEC, 30, 30);
 
+static const struct reg_field typec_ln23_swap =
+					REG_FIELD(WIZ_SERDES_TYPEC, 31, 31);
+
 struct wiz_clk_mux {
 	struct clk_hw		hw;
 	struct regmap_field	*field;
@@ -366,6 +374,7 @@ struct wiz {
 	struct regmap_field	*mux_sel_field[WIZ_MUX_NUM_CLOCKS];
 	struct regmap_field	*div_sel_field[WIZ_DIV_NUM_CLOCKS_16G];
 	struct regmap_field	*typec_ln10_swap;
+	struct regmap_field	*typec_ln23_swap;
 	struct regmap_field	*sup_legacy_clk_override;
 
 	struct device		*dev;
@@ -675,6 +684,13 @@ static int wiz_regfield_init(struct wiz *wiz)
 		return PTR_ERR(wiz->typec_ln10_swap);
 	}
 
+	wiz->typec_ln23_swap = devm_regmap_field_alloc(dev, regmap,
+						       typec_ln23_swap);
+	if (IS_ERR(wiz->typec_ln23_swap)) {
+		dev_err(dev, "LN23_SWAP reg field init failed\n");
+		return PTR_ERR(wiz->typec_ln23_swap);
+	}
+
 	wiz->phy_en_refclk = devm_regmap_field_alloc(dev, regmap, phy_en_refclk);
 	if (IS_ERR(wiz->phy_en_refclk)) {
 		dev_err(dev, "PHY_EN_REFCLK reg field init failed\n");
@@ -1242,15 +1258,24 @@ static int wiz_phy_reset_deassert(struct reset_controller_dev *rcdev,
 				regmap_field_write(wiz->typec_ln10_swap, 0);
 		} else {
 			/* if no typec-dir gpio was specified, and USB lines
-			 * are connected to Lane 0 then set LN10 SWAP bit to 1.
+			 * are connected to SWAP lanes '0' or '2' then set LN10 SWAP
+			 * or LN23 bit to 1 respectively.
 			 */
 			u32 num_lanes = wiz->num_lanes;
 			int i;
 
 			for (i = 0; i < num_lanes; i++) {
-				if ((wiz->lane_phy_type[i] == PHY_TYPE_USB3) \
-						&& wiz->lane_phy_reg[i] == 0) {
-					regmap_field_write(wiz->typec_ln10_swap, 1);
+				if (wiz->lane_phy_type[i] == PHY_TYPE_USB3) {
+					switch (wiz->lane_phy_reg[i]) {
+					case LANE10_SWAP:
+						regmap_field_write(wiz->typec_ln10_swap, 1);
+						break;
+					case LANE23_SWAP:
+						regmap_field_write(wiz->typec_ln23_swap, 1);
+						break;
+					default:
+						break;
+					}
 				}
 			}
 		}
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
