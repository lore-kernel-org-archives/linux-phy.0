Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA45DEB64DA
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jun 2023 19:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+/lBzWT0FPzOynoxIBpfKyQq8TkYZia/bw/x2x9oNEQ=; b=XFyATNlnytei6D
	6BsetGkmLd31h5Z5TOgt/1PxUhYvMOz2+uRaNa7NRkuZqRvxGYRBF7INYVi6PEPOXmd7XOA/qjd6t
	6apyb/hsQ47OwPzporpldm5O9VI62fuXO9Hf9HMuYTHIaFG/ANk21/6FQ1UR/ce22zf3hkKFVdZSm
	IfSNkZA9C8E99hZ7B2kUin5UQmGUv7CDssH8z1Qh1Ug5gmuk5Vad0au49yYfTKmh9WjKB1zN0owCW
	X5wFrZcKdXp2XuLiqGToscStS1Fs+xpOGqdXoyDtQGdc1m/OcxtGkqtV8oUWveuPMzB2Z9bv6kpld
	GaDFzxkZ6k9ywWWaym3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCQAg-001Zxj-1G;
	Thu, 22 Jun 2023 19:40:46 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCQAd-001Zw5-0y
	for linux-phy@lists.infradead.org;
	Thu, 22 Jun 2023 19:40:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1687462839;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uDPZNxjzH+jHNZJo2QpSpUM+1Ny6iijvGtMks4f3Nq8=;
	b=grKhdC6ucKdYd2MKadnBK+giv4QIm75J1TDVsZrQu5v1ccnQ9qYSoJaLYywvAa24ezSVQE
	tCAOClTkjuRAAjSHlVTqbZ2Kw4589Yn30NegRusd452zSzXEbr7pbdSMOnZqF5JoOvi9i2
	/AkjfQclru/g1SUkwuID2qLAHLq+bBQ=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-569-RthxeHjmOaq4ZyB70r3myg-1; Thu, 22 Jun 2023 15:40:38 -0400
X-MC-Unique: RthxeHjmOaq4ZyB70r3myg-1
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-62ff9f695d3so81279806d6.3
        for <linux-phy@lists.infradead.org>; Thu, 22 Jun 2023 12:40:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687462837; x=1690054837;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uDPZNxjzH+jHNZJo2QpSpUM+1Ny6iijvGtMks4f3Nq8=;
        b=aRZXwQcUgSpid75RLJX3i64X1CNLkzZe7vQaD2FyrxKOcXA9CHr9hk16vsFy+nGRP2
         tskryFvf0rEBR0pBjeDJ06SMnHJwybJlBRALyhjTB3dDJuDX9fztUPhwFJ+/LhmUOunL
         6mAsJZPoIDqIv7OR1abLGIPCkbekMAnLhOtjnkOLjcEDpKCKNCIR5ATahrZA40yKq2pa
         kASBaFejQNtZmXAIRjPgi42UEaGWwEzmg3Uow73oEeajSzMHS4gwar2KaC6aV2io86L/
         Ahi6A3LR7clh3ChSHBKtHNdcBs5C0IyUXfp90punRis4chiGsDNDqiVEopo9e5hThBfX
         BkGA==
X-Gm-Message-State: AC+VfDxBqdXfVQ5GdlJ8LwhEfAayP02uTvmaUBXgLMNf+mrTlZ/FSyub
	DLNCIeB713zQNFbOSBM4rvUIcYghD2/wKFPqjZ5P9VXFxvLJYn8rxpjZWzu86CrWv7+9alfYYwq
	2uWsIJ1HQeVpLy2rSmmOIBXFqOg==
X-Received: by 2002:ad4:4eea:0:b0:632:28ab:87ef with SMTP id dv10-20020ad44eea000000b0063228ab87efmr2462852qvb.9.1687462837637;
        Thu, 22 Jun 2023 12:40:37 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ48ljbTVVqciyrTAaT63ohXJ00bzYVr2e5hnlxltW2yKLyktmAlcIfQrs9LDlnWNwknhydvkg==
X-Received: by 2002:ad4:4eea:0:b0:632:28ab:87ef with SMTP id dv10-20020ad44eea000000b0063228ab87efmr2462833qvb.9.1687462837364;
        Thu, 22 Jun 2023 12:40:37 -0700 (PDT)
Received: from fedora.redhat.com ([107.171.218.122])
        by smtp.gmail.com with ESMTPSA id jo30-20020a056214501e00b006301819be40sm4174183qvb.49.2023.06.22.12.40.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jun 2023 12:40:36 -0700 (PDT)
From: Adrien Thierry <athierry@redhat.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Wesley Cheng <wcheng@codeaurora.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Philipp Zabel <pza@pengutronix.de>,
	Manu Gautam <mgautam@codeaurora.org>
Cc: Adrien Thierry <athierry@redhat.com>,
	Andrew Halaney <ahalaney@redhat.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 1/3] phy: qcom-snps-femto-v2: properly enable ref clock
Date: Thu, 22 Jun 2023 15:40:18 -0400
Message-Id: <20230622194021.80892-2-athierry@redhat.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230622194021.80892-1-athierry@redhat.com>
References: <20230622194021.80892-1-athierry@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_124043_440882_BB15000F 
X-CRM114-Status: GOOD (  20.21  )
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

The driver is not enabling the ref clock, which thus gets disabled by
the clk_disable_unused initcall. This leads to the dwc3 controller
failing to initialize if probed after clk_disable_unused is called, for
instance when the driver is built as a module.

To fix this, switch to the clk_bulk API to handle both cfg_ahb and ref
clocks at the proper places.

Note that the cfg_ahb clock is currently not used by any device tree
instantiation of the PHY. Work needs to be done separately to fix this.

Link: https://lore.kernel.org/linux-arm-msm/ZEqvy+khHeTkC2hf@fedora/
Fixes: 51e8114f80d0 ("phy: qcom-snps: Add SNPS USB PHY driver for QCOM based SOCs")
Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
Signed-off-by: Adrien Thierry <athierry@redhat.com>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 67 ++++++++++++++-----
 1 file changed, 49 insertions(+), 18 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index 6c237f3cc66d..ce1d2f8b568a 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -110,11 +110,13 @@ struct phy_override_seq {
 /**
  * struct qcom_snps_hsphy - snps hs phy attributes
  *
+ * @dev: device structure
+ *
  * @phy: generic phy
  * @base: iomapped memory space for snps hs phy
  *
- * @cfg_ahb_clk: AHB2PHY interface clock
- * @ref_clk: phy reference clock
+ * @num_clks: number of clocks
+ * @clks: array of clocks
  * @phy_reset: phy reset control
  * @vregs: regulator supplies bulk data
  * @phy_initialized: if PHY has been initialized correctly
@@ -122,11 +124,13 @@ struct phy_override_seq {
  * @update_seq_cfg: tuning parameters for phy init
  */
 struct qcom_snps_hsphy {
+	struct device *dev;
+
 	struct phy *phy;
 	void __iomem *base;
 
-	struct clk *cfg_ahb_clk;
-	struct clk *ref_clk;
+	int num_clks;
+	struct clk_bulk_data *clks;
 	struct reset_control *phy_reset;
 	struct regulator_bulk_data vregs[SNPS_HS_NUM_VREGS];
 
@@ -135,6 +139,32 @@ struct qcom_snps_hsphy {
 	struct phy_override_seq update_seq_cfg[NUM_HSPHY_TUNING_PARAMS];
 };
 
+static int qcom_snps_hsphy_clk_init(struct qcom_snps_hsphy *hsphy)
+{
+	struct device *dev = hsphy->dev;
+
+	hsphy->num_clks = 2;
+	hsphy->clks = devm_kcalloc(dev, hsphy->num_clks, sizeof(*hsphy->clks), GFP_KERNEL);
+	if (!hsphy->clks)
+		return -ENOMEM;
+
+	/*
+	 * HACK: For cfg_ahb clock, use devm_clk_get_optional() because currently no device
+	 * tree instantiation of the PHY is using the clock. This needs to be fixed in order
+	 * for this code to be able to use devm_clk_bulk_get().
+	 */
+	hsphy->clks[0].id = "cfg_ahb";
+	hsphy->clks[0].clk = devm_clk_get_optional(dev, "cfg_ahb");
+
+	hsphy->clks[1].id = "ref";
+	hsphy->clks[1].clk = devm_clk_get(dev, "ref");
+	if (IS_ERR(hsphy->clks[1].clk))
+		return dev_err_probe(dev, PTR_ERR(hsphy->clks[1].clk),
+				     "failed to get ref clk\n");
+
+	return 0;
+}
+
 static inline void qcom_snps_hsphy_write_mask(void __iomem *base, u32 offset,
 						u32 mask, u32 val)
 {
@@ -165,7 +195,7 @@ static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
 					   0, USB2_AUTO_RESUME);
 	}
 
-	clk_disable_unprepare(hsphy->cfg_ahb_clk);
+	clk_bulk_disable_unprepare(hsphy->num_clks, hsphy->clks);
 	return 0;
 }
 
@@ -175,9 +205,9 @@ static int qcom_snps_hsphy_resume(struct qcom_snps_hsphy *hsphy)
 
 	dev_dbg(&hsphy->phy->dev, "Resume QCOM SNPS PHY, mode\n");
 
-	ret = clk_prepare_enable(hsphy->cfg_ahb_clk);
+	ret = clk_bulk_prepare_enable(hsphy->num_clks, hsphy->clks);
 	if (ret) {
-		dev_err(&hsphy->phy->dev, "failed to enable cfg ahb clock\n");
+		dev_err(&hsphy->phy->dev, "failed to enable clocks\n");
 		return ret;
 	}
 
@@ -374,16 +404,16 @@ static int qcom_snps_hsphy_init(struct phy *phy)
 	if (ret)
 		return ret;
 
-	ret = clk_prepare_enable(hsphy->cfg_ahb_clk);
+	ret = clk_bulk_prepare_enable(hsphy->num_clks, hsphy->clks);
 	if (ret) {
-		dev_err(&phy->dev, "failed to enable cfg ahb clock, %d\n", ret);
+		dev_err(&phy->dev, "failed to enable clocks, %d\n", ret);
 		goto poweroff_phy;
 	}
 
 	ret = reset_control_assert(hsphy->phy_reset);
 	if (ret) {
 		dev_err(&phy->dev, "failed to assert phy_reset, %d\n", ret);
-		goto disable_ahb_clk;
+		goto disable_clks;
 	}
 
 	usleep_range(100, 150);
@@ -391,7 +421,7 @@ static int qcom_snps_hsphy_init(struct phy *phy)
 	ret = reset_control_deassert(hsphy->phy_reset);
 	if (ret) {
 		dev_err(&phy->dev, "failed to de-assert phy_reset, %d\n", ret);
-		goto disable_ahb_clk;
+		goto disable_clks;
 	}
 
 	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_CFG0,
@@ -448,8 +478,8 @@ static int qcom_snps_hsphy_init(struct phy *phy)
 
 	return 0;
 
-disable_ahb_clk:
-	clk_disable_unprepare(hsphy->cfg_ahb_clk);
+disable_clks:
+	clk_bulk_disable_unprepare(hsphy->num_clks, hsphy->clks);
 poweroff_phy:
 	regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
 
@@ -461,7 +491,7 @@ static int qcom_snps_hsphy_exit(struct phy *phy)
 	struct qcom_snps_hsphy *hsphy = phy_get_drvdata(phy);
 
 	reset_control_assert(hsphy->phy_reset);
-	clk_disable_unprepare(hsphy->cfg_ahb_clk);
+	clk_bulk_disable_unprepare(hsphy->num_clks, hsphy->clks);
 	regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
 	hsphy->phy_initialized = false;
 
@@ -554,14 +584,15 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
 	if (!hsphy)
 		return -ENOMEM;
 
+	hsphy->dev = dev;
+
 	hsphy->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(hsphy->base))
 		return PTR_ERR(hsphy->base);
 
-	hsphy->ref_clk = devm_clk_get(dev, "ref");
-	if (IS_ERR(hsphy->ref_clk))
-		return dev_err_probe(dev, PTR_ERR(hsphy->ref_clk),
-				     "failed to get ref clk\n");
+	ret = qcom_snps_hsphy_clk_init(hsphy);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to initialize clocks\n");
 
 	hsphy->phy_reset = devm_reset_control_get_exclusive(&pdev->dev, NULL);
 	if (IS_ERR(hsphy->phy_reset)) {
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
