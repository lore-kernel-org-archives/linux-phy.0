Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D89BEB64DD
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jun 2023 14:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4r0Vyam/acRe28iFIEsq7E2xi2NHcUR3ckxe31GWVm8=; b=UjxAh2lpsonqfW
	tDzg49QAZC2PQDWEKCpwfwM1m9EDTyoWxb3B7QGXysMXJK+cKtyCclHAHyrsR45/MHHoIWkfVXz0e
	GurOSxy9ecIEC3fIR2TgzAb9HlpKR8kp5Tck/uNOlvbINSBz1sfFON2YiqLimyBgJcjiZDcIHJpCy
	qmjpcbkEkyHPOJOXJIi35YUAZwSnEOiCGkNiOclUlm8e0FnB81iLvMLb3J7uZCHc4eau+ODr8gF4n
	HpdvEZb5FcZZ59WBRB/pYy8nA41Lty0s1oht7LadeOC1BhQkkZv+Zrfv04nRQ2W45+5lzri15ImGf
	mQ6wmCaGIwjBfHEy3Qgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qEsuk-001Keg-07;
	Thu, 29 Jun 2023 14:46:30 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qEsuf-001KdS-2x
	for linux-phy@lists.infradead.org;
	Thu, 29 Jun 2023 14:46:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1688049985;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mJHAjr6KTZnVlwFWvOamTtWU7Nmn1qurp7u5WOjdc6M=;
	b=aq7PMk87Ys/hPSkrTCGZ6tJ1pj+yCoqt7m0uW8P5Xk/I/R10fpUDrhOx42ZCFj6doHi/XL
	pKemklTBroE02ryDleeG3PyTwDBOo7ErRHhBjfqApJwfGdOhEYrFZcPxGK2UVvBv1A3dFI
	xbUU3gHS88HLWzN5SHree+k5rXyeH4U=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-316-AeVR_hT0MqqIzPdt0vqb0Q-1; Thu, 29 Jun 2023 10:46:24 -0400
X-MC-Unique: AeVR_hT0MqqIzPdt0vqb0Q-1
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-76597a79a0aso98943485a.1
        for <linux-phy@lists.infradead.org>; Thu, 29 Jun 2023 07:46:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688049983; x=1690641983;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mJHAjr6KTZnVlwFWvOamTtWU7Nmn1qurp7u5WOjdc6M=;
        b=P1JoOgVeHuPLb/t3Ti2F6EXLUVQ6hV6n9AJfnV0UJ+dYPOkaAad4+gqOUyy3QhGfGb
         IkDMCacWlV2Svu9Wr/eGbHbAX3VimzMIqaWqSupP9nYb0dCrixYenBQLkxn4P979EKas
         K2+jMCmvaICHiRCLMD19V/3ZuhP5cxos9r1pH1M5bTIEXxpS9SeVsNMfA5ZoAFMVbcQ9
         idpEBEl5mz6dmIADmyjLPSVHM1Jj5QpgB74DTP3IvnQ/My7JvU/gBlJYKlyyuIeZWEbY
         5OFcFGfEun6LKt+Y+hZPCbPoch2igcMSk2/3uFgT6BUTnk83kIhmpPlALiSIR0BeawQL
         gt8A==
X-Gm-Message-State: AC+VfDzOq2eC5KNMB8/ZHJ+OKDAliUdh3nuRugT15JefL2prHAt5eWcK
	drEcv+5WhPSvVHtwc+NJb+iil4qE1aQhlElGha5F0ufUnOZwyctfDTBZCq97+5c3GZnMNVmoxze
	yRhFU7ci5OCHTDImSVzowCJTs9Q==
X-Received: by 2002:a05:6214:493:b0:62f:ffcc:337a with SMTP id pt19-20020a056214049300b0062fffcc337amr53542791qvb.25.1688049983503;
        Thu, 29 Jun 2023 07:46:23 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7ha+Mfs7Doj4shg6GNpLPTKkZCYV++sdbCYEyb8MOGt3lEwlYQ8NSoBGVyWNAjXMtZrjqRwQ==
X-Received: by 2002:a05:6214:493:b0:62f:ffcc:337a with SMTP id pt19-20020a056214049300b0062fffcc337amr53542772qvb.25.1688049983271;
        Thu, 29 Jun 2023 07:46:23 -0700 (PDT)
Received: from fedora.redhat.com ([107.171.218.122])
        by smtp.gmail.com with ESMTPSA id a17-20020a0ccdd1000000b005dd8b9345b4sm7055590qvn.76.2023.06.29.07.46.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jun 2023 07:46:22 -0700 (PDT)
From: Adrien Thierry <athierry@redhat.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Wesley Cheng <wcheng@codeaurora.org>,
	Manu Gautam <mgautam@codeaurora.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Philipp Zabel <pza@pengutronix.de>
Cc: Adrien Thierry <athierry@redhat.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v4 2/3] phy: qcom-snps-femto-v2: properly enable ref clock
Date: Thu, 29 Jun 2023 10:45:39 -0400
Message-Id: <20230629144542.14906-3-athierry@redhat.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230629144542.14906-1-athierry@redhat.com>
References: <20230629144542.14906-1-athierry@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230629_074626_026164_5C19567F 
X-CRM114-Status: GOOD (  20.35  )
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
the clk_disable_unused() initcall. This leads to the dwc3 controller
failing to initialize if probed after clk_disable_unused() is called,
for instance when the driver is built as a module.

To fix this, switch to the clk_bulk API to handle both cfg_ahb and ref
clocks at the proper places.

Note that the cfg_ahb clock is currently not used by any device tree
instantiation of the PHY. Work needs to be done separately to fix this.

Link: https://lore.kernel.org/linux-arm-msm/ZEqvy+khHeTkC2hf@fedora/
Fixes: 51e8114f80d0 ("phy: qcom-snps: Add SNPS USB PHY driver for QCOM based SOCs")
Signed-off-by: Adrien Thierry <athierry@redhat.com>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 63 ++++++++++++++-----
 1 file changed, 48 insertions(+), 15 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index 3335480fc395..6170f8fd118e 100644
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
 
@@ -135,6 +139,34 @@ struct qcom_snps_hsphy {
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
+	 * TODO: Currently no device tree instantiation of the PHY is using the clock.
+	 * This needs to be fixed in order for this code to be able to use devm_clk_bulk_get().
+	 */
+	hsphy->clks[0].id = "cfg_ahb";
+	hsphy->clks[0].clk = devm_clk_get_optional(dev, "cfg_ahb");
+	if (IS_ERR(hsphy->clks[0].clk))
+		return dev_err_probe(dev, PTR_ERR(hsphy->clks[0].clk),
+				     "failed to get cfg_ahb clk\n");
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
@@ -365,16 +397,16 @@ static int qcom_snps_hsphy_init(struct phy *phy)
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
@@ -382,7 +414,7 @@ static int qcom_snps_hsphy_init(struct phy *phy)
 	ret = reset_control_deassert(hsphy->phy_reset);
 	if (ret) {
 		dev_err(&phy->dev, "failed to de-assert phy_reset, %d\n", ret);
-		goto disable_ahb_clk;
+		goto disable_clks;
 	}
 
 	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_CFG0,
@@ -439,8 +471,8 @@ static int qcom_snps_hsphy_init(struct phy *phy)
 
 	return 0;
 
-disable_ahb_clk:
-	clk_disable_unprepare(hsphy->cfg_ahb_clk);
+disable_clks:
+	clk_bulk_disable_unprepare(hsphy->num_clks, hsphy->clks);
 poweroff_phy:
 	regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
 
@@ -452,7 +484,7 @@ static int qcom_snps_hsphy_exit(struct phy *phy)
 	struct qcom_snps_hsphy *hsphy = phy_get_drvdata(phy);
 
 	reset_control_assert(hsphy->phy_reset);
-	clk_disable_unprepare(hsphy->cfg_ahb_clk);
+	clk_bulk_disable_unprepare(hsphy->num_clks, hsphy->clks);
 	regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
 	hsphy->phy_initialized = false;
 
@@ -545,14 +577,15 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
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
