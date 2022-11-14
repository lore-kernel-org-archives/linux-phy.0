Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB2D2C3A5A1
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 11:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q8Yu0FfZU7N8hRGEp9kX5/VMvWSp9xdZREHX3g34f2c=; b=0TM62TXqrOy3A2
	qak57EaqO10ne/SS1iVqz6aKlZRSWbr6WcRggjFPUtHoTpXwJKVdiXeUGZd0TEdLRbWJgUqTyYPCs
	ecwWtzxHoIfVvHeBCwc5M/RsN0UDlOc6wcqqYkA4/0tSir4M4AQkBMmqinX110NvQmbKB3Vyy9KN7
	yyGtLH5fTT5YQXsuiu4xXHT/dNx5KrssGWw8dlv+kcrqqdOAPINJAtkPgmg7TkxsVYQ5aMukR+Lt/
	9uPfMybAOGgCOz8JXNAe1UqdnJq3Lj09FmqTfNitIj4BxrH31sXOF3TEsn16iDVnnOKHGmOlLEMKg
	hKk8ffKzRnyn6SHq9C+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJS-000D6d-T1; Mon, 14 Nov 2022 11:07:38 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJ8-000Coj-7I
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 11:07:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 83887B80DF2;
	Mon, 14 Nov 2022 11:07:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C12FFC43470;
	Mon, 14 Nov 2022 11:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668424033;
	bh=gb5CrES5i1MPh8b3132Uh6ovMit58esVSHhwegvZhXk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HPXUbtH363d6xWDkySjUNZHgid1Q3I3xjwHiHYSYjRVKFIIGxrb7ai2GP1ihrhCQE
	 bO5lOMPlY+K9NRYimuchRFYPajLQj0CPBFZSfmiEgPssRscgLMZMeTd7ktaybgDRcc
	 rgXP3ku1jAVPahbPiMDbtowcAYh++tCDOrwNE7a9O5fsumipIaFLAonXR/lz8TqfdI
	 PsLcih/q83m43h6+nPvxsNP9mqffhfUYz9eq6Gs3+FoG6j+nk2hRCMvlLuC/ns0mWy
	 XYRiujCLkVKUtJSIM/DsEpavzGwoPPm8yRvkzz+bJ+DX3k864omsP0N6O0IfNBCadW
	 cFb9JS7WwpN7Q==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ouXIX-0001ET-U7; Mon, 14 Nov 2022 12:06:41 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 02/22] phy: qcom-qmp-combo: move device-id table
Date: Mon, 14 Nov 2022 12:06:01 +0100
Message-Id: <20221114110621.4639-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114110621.4639-1-johan+linaro@kernel.org>
References: <20221114110621.4639-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_030718_655838_449A0431 
X-CRM114-Status: GOOD (  13.62  )
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

Move the device-id table after probe() and next to the driver structure
to keep the driver callback functions grouped together.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 50 +++++++++++------------
 1 file changed, 25 insertions(+), 25 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index d6a031bcfc30..e7c8c4417142 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2646,31 +2646,6 @@ static int qmp_combo_create(struct device *dev, struct device_node *np, int id,
 	return 0;
 }
 
-static const struct of_device_id qmp_combo_of_match_table[] = {
-	{
-		.compatible = "qcom,sc7180-qmp-usb3-dp-phy",
-		.data = &sc7180_usb3dpphy_cfg,
-	},
-	{
-		.compatible = "qcom,sc8180x-qmp-usb3-dp-phy",
-		.data = &sc8180x_usb3dpphy_cfg,
-	},
-	{
-		.compatible = "qcom,sc8280xp-qmp-usb43dp-phy",
-		.data = &sc8280xp_usb43dpphy_combo_cfg,
-	},
-	{
-		.compatible = "qcom,sdm845-qmp-usb3-dp-phy",
-		.data = &sdm845_usb3dpphy_cfg,
-	},
-	{
-		.compatible = "qcom,sm8250-qmp-usb3-dp-phy",
-		.data = &sm8250_usb3dpphy_cfg,
-	},
-	{ }
-};
-MODULE_DEVICE_TABLE(of, qmp_combo_of_match_table);
-
 static const struct dev_pm_ops qmp_combo_pm_ops = {
 	SET_RUNTIME_PM_OPS(qmp_combo_runtime_suspend,
 			   qmp_combo_runtime_resume, NULL)
@@ -2815,6 +2790,31 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	return ret;
 }
 
+static const struct of_device_id qmp_combo_of_match_table[] = {
+	{
+		.compatible = "qcom,sc7180-qmp-usb3-dp-phy",
+		.data = &sc7180_usb3dpphy_cfg,
+	},
+	{
+		.compatible = "qcom,sc8180x-qmp-usb3-dp-phy",
+		.data = &sc8180x_usb3dpphy_cfg,
+	},
+	{
+		.compatible = "qcom,sc8280xp-qmp-usb43dp-phy",
+		.data = &sc8280xp_usb43dpphy_combo_cfg,
+	},
+	{
+		.compatible = "qcom,sdm845-qmp-usb3-dp-phy",
+		.data = &sdm845_usb3dpphy_cfg,
+	},
+	{
+		.compatible = "qcom,sm8250-qmp-usb3-dp-phy",
+		.data = &sm8250_usb3dpphy_cfg,
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(of, qmp_combo_of_match_table);
+
 static struct platform_driver qmp_combo_driver = {
 	.probe		= qmp_combo_probe,
 	.driver = {
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
