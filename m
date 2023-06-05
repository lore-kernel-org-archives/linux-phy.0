Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B3C4C77B73
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jun 2023 18:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wplp9x0LCgywhxuLwfdwUUfCm0ljlvHYSlYloVHSwz8=; b=jZEXUy2keEATXs
	LWlkWKQzuQcg4AuMfvH++zAZlIGKNWSSxLMyGit9ngedDCjBUM5tWDa0qJ7aOhTGA+ZSNqYBTlZ8n
	W21Qz8BqXyvLoSM5hM0SdEZ+RFfMi63IVlJT2IEEV5DBxSu1zaUQK0LpOcZ/VGEtI9W4RxM2S7Ney
	rhHEHjRiyklPDz3bjLEKHUP1daF4ScY88g9EOAS4SAYiNbhgLxCXApJgXOOBFU+L76gbJ32LbK2Rr
	iJ7gNa5w4F3AAuia5dtXOM9e7qCpfESxF3IswSeYn2qnRjjTrR7LdkSimlG4CfycSKDO+XG37djsa
	/hHdGfIoEeyeFWIcYPKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6FCs-00GRfp-31;
	Mon, 05 Jun 2023 18:45:30 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6FCp-00GReW-0s
	for linux-phy@lists.infradead.org;
	Mon, 05 Jun 2023 18:45:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1685990725;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cIk38l37E6hXe6+p5eeVC3Bjfx5cAZMiuspPWHWk1HU=;
	b=buJez1MqYATxPF0SQ4zTdT6gQJC+cbTdXNEWDvniqxPa8kyY/9+g0It2JvTDKXzjeP8bLu
	AvgRlrZk8vDjzU1PocE7qLmoKwgnXBuVmNV/YMVOaOEuEwWiaHSzJJFkNy8lU+/5culVuh
	5wIqjdNgpQ4OwMESkG993bMqM3MEgIQ=
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com
 [209.85.167.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-377-oi7RA-3dPA-b9S550nR8cA-1; Mon, 05 Jun 2023 14:45:24 -0400
X-MC-Unique: oi7RA-3dPA-b9S550nR8cA-1
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-39a9800f960so1584387b6e.3
        for <linux-phy@lists.infradead.org>; Mon, 05 Jun 2023 11:45:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685990722; x=1688582722;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cIk38l37E6hXe6+p5eeVC3Bjfx5cAZMiuspPWHWk1HU=;
        b=dwYKwy3oEgQ1dPLxE+v9wOlSOurFNu6Ayao9rlQFFIv/Uvu/ZRCxUCkZfXZRQvvDrj
         WjBEsAb4BTOTgpujDCvJ5Le4+H0pRiyVSeLEmd0L+f6/FHzdoXwtY4pzg0OdAAE7L/va
         qAd5Gm+jh8xOkwuCwD6ixiD4gTEuxPbavdfPA4aqkER5Z6nFDOtVsyuJLvqHYyjSJrfP
         jp2YhnX9ZdRAXwiu0vqP5MpXlu6zSG5yb5WIG17nyDAwJIpgUBYyvbUOoWTjtt/FpBDu
         KXezBsDNk6G82S/g3SE8QT/D8ZIieW9vcT3CjHihke60aQjTKGIG5J4nlxW1m/vs6Al1
         UVhQ==
X-Gm-Message-State: AC+VfDw51kXbU6EfVmpjXpa78njY4aJjKrlII1VxtWvc2yHNxHasnl9z
	mgth6T/0MVXUQhzEPxyRiJUtbEAvcc2l12kJEdr1vZqyU1/giTnvTdfp/Q1PcngjNM93d2jMuwO
	NHwnIl5ozK0vjgWDDmWH3ICo9jw==
X-Received: by 2002:aca:d0e:0:b0:39a:be43:6f13 with SMTP id 14-20020aca0d0e000000b0039abe436f13mr2661003oin.43.1685990721878;
        Mon, 05 Jun 2023 11:45:21 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5aKRoOVG33caBXHFKr+14vig9tpTuBnhpRF8RLbpsx2FRYHffkPb3HLCIfmdsedIIYhKcWXg==
X-Received: by 2002:aca:d0e:0:b0:39a:be43:6f13 with SMTP id 14-20020aca0d0e000000b0039abe436f13mr2660983oin.43.1685990721608;
        Mon, 05 Jun 2023 11:45:21 -0700 (PDT)
Received: from fedora.redhat.com ([107.171.218.122])
        by smtp.gmail.com with ESMTPSA id d10-20020a0cc68a000000b00625da789003sm4785771qvj.110.2023.06.05.11.45.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 11:45:21 -0700 (PDT)
From: Adrien Thierry <athierry@redhat.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Manu Gautam <mgautam@codeaurora.org>,
	Wesley Cheng <wcheng@codeaurora.org>,
	Philipp Zabel <pza@pengutronix.de>
Cc: Adrien Thierry <athierry@redhat.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 1/2] phy: qcom-snps-femto-v2: properly enable ref clock
Date: Mon,  5 Jun 2023 14:44:53 -0400
Message-Id: <20230605184455.34832-2-athierry@redhat.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230605184455.34832-1-athierry@redhat.com>
References: <20230605184455.34832-1-athierry@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_114527_405340_3F91FE6A 
X-CRM114-Status: GOOD (  20.42  )
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
