Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE257C25B07
	for <linux-phy@archiver.kernel.org>; Fri,  5 Aug 2022 15:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HJLZ18ynU1e+TYI64JbkYycGlsgJaGw8RLE8BmgAPyc=; b=TFstd5cw8x23+n
	G+IGpwfQG4Nw/iySmyiwRvfnIVZKGn9gt9owMZ6lJhQueSTatP9mtJiQCi6O0ijdy6kzpv0LYc+yu
	voMAn4YNZhT1TXbDe5RT/BdRmgYfsZ9v4OAiXN+htqDNj2/9YpGkY9QNkMHhL4XzLDE5rSPJE5hk/
	EI1vsxr4cPAWTtdff40GZ4UB0ptrS02b6DN3YYbDkyqAX8M/7aTWO+uIwTEaEaDrRNLL4C4/x9vEy
	q7xcR2+LpAdViCbLWKoamrWJrgQYPmvrj0/aAJUzxTVruxoXCTtDk+qLV6nHL0NJENli2Q2brntmZ
	aiN8ZwzJDSB9wUopCyYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJzSU-00GNEW-4x; Fri, 05 Aug 2022 15:41:54 +0000
Received: from mail-oa1-x31.google.com ([2001:4860:4864:20::31])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJzSR-00GNCh-1Q
	for linux-phy@lists.infradead.org; Fri, 05 Aug 2022 15:41:52 +0000
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-10bd4812c29so3290107fac.11
        for <linux-phy@lists.infradead.org>; Fri, 05 Aug 2022 08:41:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=lOl/GNDv/KDZqcxla19dOB87ZLzXemHoorThzLeF0nk=;
        b=SEg2h8EVLAfFh7GhldRUFlAwtZoATfI03IG9hm1z4XE4v5EpzjDBGOCLaq2Tra2uM3
         Z/W8+5F2Iyx4aIttXSjr1k33Uvt9OeoHkJ+IeKybmB5ARUPYN7HoU2LoOI+hXYkMR1vo
         rXJRVGq7y/KqWHVdL7njjI6ji/KFmZFLgg4BejAgcPPLGxQR0irCMnGvSLDG4iSQgj3X
         5FV+XK8hjXV6qEpYIqfN9ASatNMKYP/vHlpEGyXuZahlH9Ar41d2Pgr1UMK6c+2y7DtM
         3CLYwZcPacIcYKdAVIsZLo6EhRJp8KPO49vHBwBAJlpvE5bVP6RpBtB0ADO46+mV5N11
         RfJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=lOl/GNDv/KDZqcxla19dOB87ZLzXemHoorThzLeF0nk=;
        b=2gbjWcdhhgqVSTRPO0B1ghbqHjaQVWnBN3VxUl/+8pj53WZDOkMoSj7sajRPFL6oio
         aX30aiMi4VKnYjdK6UMaBNLA6RWi/3dlKVP1fO1rJTWo6GI4Idlx8VlYtblN0BvoC4X6
         T+BY4bn4IH99uT6Qe4P4aF7++ZEYj5r5fdhA1wfpxMYFf+RCr+y9B2lvwx7RTpDYBj7e
         ZGkvVRYkmjWLl054KROOStZ9N1IXL6QMuGwhvwS3gGcVX74XDPNE4bjhTHwL2KILLKAd
         lI9nwiAEdF19YW6kS8j1I7G5S0ZbLB36ztB5CG3schLKdZzPMenGcOat8OHGyfGXn2Bb
         aW8w==
X-Gm-Message-State: ACgBeo1pmpX8ooS2MWdHPqOwr8pebvE5seQE6lwIM7pmopvjIByp+upI
	lJr1lD3HK94H+UlWmGXgiLT1tg==
X-Google-Smtp-Source: AA6agR7S++p3NhUJDcoiw3cYSM27nFYZSPnG8O9ctA346/+CKhxkqi2xphHJwmSQ1ttlZUzT9zVrtQ==
X-Received: by 2002:a05:6870:5591:b0:10e:20d0:b2cb with SMTP id n17-20020a056870559100b0010e20d0b2cbmr6746473oao.12.1659714108120;
        Fri, 05 Aug 2022 08:41:48 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id l15-20020a4a854f000000b004357c1d1efasm753500ooh.21.2022.08.05.08.41.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Aug 2022 08:41:47 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Stephen Boyd <swboyd@chromium.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	johan+linaro@kernel.org
Subject: [PATCH] phy: qcom: edp: Postpone clk_set_rate until the PLL is up
Date: Fri,  5 Aug 2022 08:44:32 -0700
Message-Id: <20220805154432.546740-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220805_084151_176303_BA1A790D 
X-CRM114-Status: GOOD (  12.47  )
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

When the platform was booted with the involved clocks enabled the
clk_set_rate() of the link and pixel clocks will perculate to the
children, which will fail to update because the PHY driver has just shut
down the PLL.

Postpone the clock rate updates until the PLL is back online to avoid
reconfiguring the clocks while the PLL is not ticking.

Fixes: f199223cb490 ("phy: qcom: Introduce new eDP PHY driver")
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 28 ++++++++++++++++------------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 7e3570789845..b66b83c388ed 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -272,31 +272,30 @@ static int qcom_edp_configure_pll(const struct qcom_edp *edp)
 	return 0;
 }
 
-static int qcom_edp_set_vco_div(const struct qcom_edp *edp)
+static int qcom_edp_set_vco_div(const struct qcom_edp *edp, unsigned long *pixel_freq)
 {
 	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
-	unsigned long pixel_freq;
 	u32 vco_div;
 
 	switch (dp_opts->link_rate) {
 	case 1620:
 		vco_div = 0x1;
-		pixel_freq = 1620000000UL / 2;
+		*pixel_freq = 1620000000UL / 2;
 		break;
 
 	case 2700:
 		vco_div = 0x1;
-		pixel_freq = 2700000000UL / 2;
+		*pixel_freq = 2700000000UL / 2;
 		break;
 
 	case 5400:
 		vco_div = 0x2;
-		pixel_freq = 5400000000UL / 4;
+		*pixel_freq = 5400000000UL / 4;
 		break;
 
 	case 8100:
 		vco_div = 0x0;
-		pixel_freq = 8100000000UL / 6;
+		*pixel_freq = 8100000000UL / 6;
 		break;
 
 	default:
@@ -306,15 +305,13 @@ static int qcom_edp_set_vco_div(const struct qcom_edp *edp)
 
 	writel(vco_div, edp->edp + DP_PHY_VCO_DIV);
 
-	clk_set_rate(edp->dp_link_hw.clk, dp_opts->link_rate * 100000);
-	clk_set_rate(edp->dp_pixel_hw.clk, pixel_freq);
-
 	return 0;
 }
 
 static int qcom_edp_phy_power_on(struct phy *phy)
 {
 	const struct qcom_edp *edp = phy_get_drvdata(phy);
+	unsigned long pixel_freq;
 	int timeout;
 	int ret;
 	u32 val;
@@ -363,7 +360,7 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 	writel(0x01, edp->tx1 + TXn_TRAN_DRVR_EMP_EN);
 	writel(0x04, edp->tx1 + TXn_TX_BAND);
 
-	ret = qcom_edp_set_vco_div(edp);
+	ret = qcom_edp_set_vco_div(edp, &pixel_freq);
 	if (ret)
 		return ret;
 
@@ -409,8 +406,15 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 
 	writel(0x19, edp->edp + DP_PHY_CFG);
 
-	return readl_poll_timeout(edp->edp + DP_PHY_STATUS,
-				  val, val & BIT(1), 500, 10000);
+	ret = readl_poll_timeout(edp->edp + DP_PHY_STATUS,
+				 val, val & BIT(1), 500, 10000);
+	if (ret)
+		return ret;
+
+	clk_set_rate(edp->dp_link_hw.clk, edp->dp_opts.link_rate * 100000);
+	clk_set_rate(edp->dp_pixel_hw.clk, pixel_freq);
+
+	return 0;
 }
 
 static int qcom_edp_phy_power_off(struct phy *phy)
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
