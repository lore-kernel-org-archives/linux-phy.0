Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FB91C43219
	for <linux-phy@archiver.kernel.org>; Sat,  5 Nov 2022 15:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xrsioB8CaEZFtFaXd0v+4TUs1o9PV65AH8gNHyQGXiE=; b=U6f2SWr8uFfDh7
	EpmhPRCKqZJDcEciCVRJtYfGyJt0aDuB1IMPRwYaXkV/Zzyi3lC/m8CNftgKUZAsSRrayLcQwKThD
	ruTe+E+ZFj0eple2Ontd8hSQDQX+9hbjlWi3ytCqRr2OmfJmRMnrGsCU8nwplOpywt70Of3nNEvW4
	a2VfNfTR39ihtzRRLorblvoxUPuCea/43fR+ki9Qm/2XuDrTAbz5ar2sKNGG5aLxjio8HDRx9fEUt
	9fRW75nILtqP9WxLlwHvT/+zeINbj9syQpORHw7j0A6qfyOc7IFDQyceTeOuesjNoDJwZ3OcycS0y
	HBl3jjzI9Mi/q+1IqnoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orKhI-006mLf-NF; Sat, 05 Nov 2022 15:03:00 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orKhB-006mE4-Bb
	for linux-phy@lists.infradead.org; Sat, 05 Nov 2022 15:02:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1AC3E60B6E;
	Sat,  5 Nov 2022 15:02:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01083C433B5;
	Sat,  5 Nov 2022 15:02:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667660570;
	bh=eVTTvAzbKTl5nJxTY0KfBfBle3JTOhre2q4tdbvgPEQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=txblBFZFX5poDLWVqSVokTVR9xiRHl0vjxAyZRkI07GoYXJ67id57LaXdTkYM9FPY
	 pNbg80cLTzRK3h18yP6+hNQCfdn1OJ3knuZ4Xd0Ie2zqjxbVv5Pyf/7c70LYkP+1MM
	 iHATTziuvHNEpxEPW2tfTv/fsDJJN5XHEPlilbXrWSC8na+rZoFh1c05DFhhY+eTLU
	 kTJz5/oBdKSbI30H5w9GRCL+Rwr7BEIr+3gsyJA53Yg19u79F2Z2+D/FxsbTdBEkxw
	 pCUsRq1hL6S/TruTksb9CMFPCB1sz0eJtbgRfUjhc7tCPFJArRkm0cICB76fGVbN0V
	 mEZdzqJa4vi9g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1orKgo-0005KJ-Pj; Sat, 05 Nov 2022 16:02:30 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v5 02/16] phy: qcom-qmp-pcie: move device-id table
Date: Sat,  5 Nov 2022 15:59:25 +0100
Message-Id: <20221105145939.20318-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221105145939.20318-1-johan+linaro@kernel.org>
References: <20221105145939.20318-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_080253_513740_AA523063 
X-CRM114-Status: GOOD (  13.39  )
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

Move the device-id table below probe() and next to the driver structure
to keep the driver callback functions grouped together.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 90 ++++++++++++------------
 1 file changed, 45 insertions(+), 45 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 4e5111d19692..e66f6adc404b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2280,51 +2280,6 @@ static int qmp_pcie_create(struct device *dev, struct device_node *np, int id,
 	return 0;
 }
 
-static const struct of_device_id qmp_pcie_of_match_table[] = {
-	{
-		.compatible = "qcom,ipq6018-qmp-pcie-phy",
-		.data = &ipq6018_pciephy_cfg,
-	}, {
-		.compatible = "qcom,ipq8074-qmp-gen3-pcie-phy",
-		.data = &ipq8074_pciephy_gen3_cfg,
-	}, {
-		.compatible = "qcom,ipq8074-qmp-pcie-phy",
-		.data = &ipq8074_pciephy_cfg,
-	}, {
-		.compatible = "qcom,msm8998-qmp-pcie-phy",
-		.data = &msm8998_pciephy_cfg,
-	}, {
-		.compatible = "qcom,sc8180x-qmp-pcie-phy",
-		.data = &sc8180x_pciephy_cfg,
-	}, {
-		.compatible = "qcom,sdm845-qhp-pcie-phy",
-		.data = &sdm845_qhp_pciephy_cfg,
-	}, {
-		.compatible = "qcom,sdm845-qmp-pcie-phy",
-		.data = &sdm845_qmp_pciephy_cfg,
-	}, {
-		.compatible = "qcom,sdx55-qmp-pcie-phy",
-		.data = &sdx55_qmp_pciephy_cfg,
-	}, {
-		.compatible = "qcom,sm8250-qmp-gen3x1-pcie-phy",
-		.data = &sm8250_qmp_gen3x1_pciephy_cfg,
-	}, {
-		.compatible = "qcom,sm8250-qmp-gen3x2-pcie-phy",
-		.data = &sm8250_qmp_gen3x2_pciephy_cfg,
-	}, {
-		.compatible = "qcom,sm8250-qmp-modem-pcie-phy",
-		.data = &sm8250_qmp_gen3x2_pciephy_cfg,
-	}, {
-		.compatible = "qcom,sm8450-qmp-gen3x1-pcie-phy",
-		.data = &sm8450_qmp_gen3x1_pciephy_cfg,
-	}, {
-		.compatible = "qcom,sm8450-qmp-gen4x2-pcie-phy",
-		.data = &sm8450_qmp_gen4x2_pciephy_cfg,
-	},
-	{ },
-};
-MODULE_DEVICE_TABLE(of, qmp_pcie_of_match_table);
-
 static int qmp_pcie_probe(struct platform_device *pdev)
 {
 	struct qcom_qmp *qmp;
@@ -2408,6 +2363,51 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 	return ret;
 }
 
+static const struct of_device_id qmp_pcie_of_match_table[] = {
+	{
+		.compatible = "qcom,ipq6018-qmp-pcie-phy",
+		.data = &ipq6018_pciephy_cfg,
+	}, {
+		.compatible = "qcom,ipq8074-qmp-gen3-pcie-phy",
+		.data = &ipq8074_pciephy_gen3_cfg,
+	}, {
+		.compatible = "qcom,ipq8074-qmp-pcie-phy",
+		.data = &ipq8074_pciephy_cfg,
+	}, {
+		.compatible = "qcom,msm8998-qmp-pcie-phy",
+		.data = &msm8998_pciephy_cfg,
+	}, {
+		.compatible = "qcom,sc8180x-qmp-pcie-phy",
+		.data = &sc8180x_pciephy_cfg,
+	}, {
+		.compatible = "qcom,sdm845-qhp-pcie-phy",
+		.data = &sdm845_qhp_pciephy_cfg,
+	}, {
+		.compatible = "qcom,sdm845-qmp-pcie-phy",
+		.data = &sdm845_qmp_pciephy_cfg,
+	}, {
+		.compatible = "qcom,sdx55-qmp-pcie-phy",
+		.data = &sdx55_qmp_pciephy_cfg,
+	}, {
+		.compatible = "qcom,sm8250-qmp-gen3x1-pcie-phy",
+		.data = &sm8250_qmp_gen3x1_pciephy_cfg,
+	}, {
+		.compatible = "qcom,sm8250-qmp-gen3x2-pcie-phy",
+		.data = &sm8250_qmp_gen3x2_pciephy_cfg,
+	}, {
+		.compatible = "qcom,sm8250-qmp-modem-pcie-phy",
+		.data = &sm8250_qmp_gen3x2_pciephy_cfg,
+	}, {
+		.compatible = "qcom,sm8450-qmp-gen3x1-pcie-phy",
+		.data = &sm8450_qmp_gen3x1_pciephy_cfg,
+	}, {
+		.compatible = "qcom,sm8450-qmp-gen4x2-pcie-phy",
+		.data = &sm8450_qmp_gen4x2_pciephy_cfg,
+	},
+	{ },
+};
+MODULE_DEVICE_TABLE(of, qmp_pcie_of_match_table);
+
 static struct platform_driver qmp_pcie_driver = {
 	.probe		= qmp_pcie_probe,
 	.driver = {
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
