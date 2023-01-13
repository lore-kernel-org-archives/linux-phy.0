Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CB9EC54EBE
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jan 2023 15:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hjrO387rPePB7BRdDKE/5/CD614a6FZmhr7Qh+783vg=; b=Vc2ubHkFWl+0aq
	K20QKEn6GjqlD5nQKikl4OPBxeI2ffHJfqsyX+D7AH4EsyegGdi8zSalEjHGFKd9iPdmM2/bb38qe
	3/TNAJEnAMB/kuGujJv9ge6HA3vO6PfAKbD8DvOf0ZhNsLspu/IT8LxcuZOiOjFEdrc5nnH8uwUfn
	Mg6v6Lz7UG+tgj5O1eT8/Aztv8iKsZeyAc2rAANTTmVMtjhsN/ysZfCKKYDvGM/FjCr1GBhHF8nor
	PYyDlsBHwWZeoj9cw1SrxvH/j+jQ/uapS7rfID0OBl5W0B8s8CUL+9P5dA2ZPRH+dthnwR/S0POhX
	RbQljmmlWDluM857rR2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGLeD-0036Ry-O5; Fri, 13 Jan 2023 15:07:13 +0000
Received: from egress-ip33b.ess.de.barracuda.com ([18.185.115.237])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGLeA-0036Pq-RH
	for linux-phy@lists.infradead.org; Fri, 13 Jan 2023 15:07:12 +0000
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71]) by mx-outbound23-220.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Fri, 13 Jan 2023 15:07:06 +0000
Received: by mail-pj1-f71.google.com with SMTP id x8-20020a17090a1f8800b0022153149290so10103211pja.5
        for <linux-phy@lists.infradead.org>; Fri, 13 Jan 2023 07:07:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z+NSHccOtsCvHIJa85NeQChFC1UztUbiKQ4lP4DgpYE=;
        b=W9+BtAl08PRQpEb9/gbIViu7QsPYIAff+i6FpkK4mdaCYS6DY0+6/aufc6tFCweI2o
         9P1DKxBQCY5CluMNnBoYx55P+Sa+okGBGBsDdaqJod/93s66g0BvXZHdH4HHkXIrIntF
         ght67/8qciMtcCtM5OUjR7QDf0AOo+hbFd8Xk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z+NSHccOtsCvHIJa85NeQChFC1UztUbiKQ4lP4DgpYE=;
        b=eX6CrHCduRF1MywZ2tM78MjNvNYnKixWcR0Hf/OdaLf0XbroINWYP6eac8ctz9XIzV
         NoTnGnuHhOeduyMbcO6qNwif5Hj8xwPsf4U37EHvxK0H8eToMXyyN1Amg9wKHUnl0voE
         DxFe9I4xmaUxKOhuSDn0AGnKe6lWAsuyOPMgu8ghokBbCogUzD7RFSxaye+fQWha+JnQ
         dyQnjl5Q/kgp7+ceb2ih4DBost05psn3gx8RsEXhDGGG8q1XWviBGKhaXxrwDlsyOEZE
         Yh8NfFE3n23QPTPOK3IBPZcqUBRawV+gCf594haYJhWgmVb6VnAOWmoXnvhMjC7FcCYc
         FgHQ==
X-Gm-Message-State: AFqh2krGRTvGhN+msmTvNvxsNXEIbk1tnvMbCifHX5D2k00YBLxoGz9V
	fTDpRoy5XlHxywJIORL2PKAUEzG0Zt7ZSTVBuf3XIrBhisPbvDTTzrKEUtE6oYYBNoP+mMeJzlm
	WxA4m7IV2nWjFbSVzLxuLwYvsqzinG8i/6dNNq/FNUKyIojh/wN8dBLaYwwFy2Q==
X-Received: by 2002:a17:903:2447:b0:191:1a7c:ef9f with SMTP id l7-20020a170903244700b001911a7cef9fmr114145357pls.1.1673622425259;
        Fri, 13 Jan 2023 07:07:05 -0800 (PST)
X-Google-Smtp-Source: AMrXdXusrPlnaK+wmzYGKRbXYOFMSqbu96oB8HP0e7TOKd6vguQ6K8ok85JPWB7jm/g9wf1EWy8T0A==
X-Received: by 2002:a17:903:2447:b0:191:1a7c:ef9f with SMTP id l7-20020a170903244700b001911a7cef9fmr114145330pls.1.1673622424972;
        Fri, 13 Jan 2023 07:07:04 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id v11-20020a170902f0cb00b00180033438a0sm14325723pla.106.2023.01.13.07.07.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 07:07:04 -0800 (PST)
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
Subject: [PATCH V4 1/2] phy: ti: j721e-wiz: Manage TypeC lane swap if typec-dir-gpios not specified
Date: Fri, 13 Jan 2023 20:36:14 +0530
Message-Id: <20230113150615.19375-2-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230113150615.19375-1-sinthu.raja@ti.com>
References: <20230113150615.19375-1-sinthu.raja@ti.com>
MIME-Version: 1.0
X-BESS-ID: 1673622425-306108-5562-20503-1
X-BESS-VER: 2019.1_20221214.2106
X-BESS-Apparent-Source-IP: 209.85.216.71
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.245440 [from 
	cloudscan14-215.eu-central-1a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, BSF_SC0_MISMATCH_TO
X-BESS-BRTS-Status: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_070711_051754_C2F93678 
X-CRM114-Status: GOOD (  19.34  )
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

No changes in V4.

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

 drivers/phy/ti/phy-j721e-wiz.c | 38 +++++++++++++++++++++++++---------
 1 file changed, 28 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index ddce5ef7711c..b5c1b82e99a6 100644
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
@@ -1234,15 +1235,30 @@ static int wiz_phy_reset_deassert(struct reset_controller_dev *rcdev,
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
+				if (wiz->lane_phy_type[i] == PHY_TYPE_USB3)
+					if (wiz->master_lane_num[i] == 0)
+						regmap_field_write(wiz->typec_ln10_swap, 1);
+			}
+		}
 	}
 
 	if (id == 0) {
@@ -1386,8 +1402,10 @@ static int wiz_get_lane_phy_types(struct device *dev, struct wiz *wiz)
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
