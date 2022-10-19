Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62DBBC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 19 Oct 2022 11:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4GOhkrbGoV8mOWKgepwLmXWL/tict9wWpK4Oji0GhsI=; b=D4fdv1O/PRjDMe
	+pAwaURUkInV+Qqa6kVXkeyimCfh3zQoSb3Et+RmCMQuoinH1s7ZDfvjNN67YGgQLRpku0jejYTVm
	W3OOC6/pPWTTpwSUa6h8X35ACxN3BWfuQ9uQFP5vXvwHj+sCBkul8ngC0qv5HSd1/hVvzCuCpgsja
	2FYp3QRifeBiVKdrNLjlyMhgJx9k8nFbMfulR4RXX9B8cWrlMc+gLLiGLZu7fkpQF8DBcyomohfze
	rA1DIab0105EEdRb6gPnMhsPx0HMhvrfzwqgFUB23VHINPStOfYj9gYvrznK+B3XuXskE9QZG1/gz
	iwbddSrJGcRcPlIeO4yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol7N4-000vAo-NZ; Wed, 19 Oct 2022 11:36:26 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol7Mz-000v4k-Dq
	for linux-phy@lists.infradead.org; Wed, 19 Oct 2022 11:36:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 325AE60B60;
	Wed, 19 Oct 2022 11:36:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 048BCC433B5;
	Wed, 19 Oct 2022 11:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666179379;
	bh=RKmmV23bkSpDlRLmTokv3qcqyk7TcLCeC4BhtbLpLVQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=u8UdKjvXbDaLOjwHYOPAbV4OTBuVTBhLJJBkYGVKL0eFoTFN9Dd/Nx1Kx8AvWJi+/
	 p++bpKpUKpkR4dcJuS5ZGII83hO6PUGnpXyJ1DvWba3YjB1w7xq/Faibs+X7gzSILr
	 Lxw/gg1i/37I86cx35XVIeZMu28fcPkgXF8fpP66SNwel8H/TB1/oCew8p5O17Lhwf
	 iD+gG43cqUoN2CaGuOh9ulleFd74iqgzY1r27YdU9bDjAsYkVDgphsUJxmugWXn0yu
	 zN4n+qUgRzbrlXMEMLv289TtFrmyVgG2wbI2cWPanBb8P1SklIUru0IGvUVNkbhgj8
	 jqOZsSXibKFqQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ol7Ml-0005pI-D2; Wed, 19 Oct 2022 13:36:07 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 02/15] phy: qcom-qmp-pcie: move device-id table
Date: Wed, 19 Oct 2022 13:35:39 +0200
Message-Id: <20221019113552.22353-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221019113552.22353-1-johan+linaro@kernel.org>
References: <20221019113552.22353-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_043621_586234_AD8E5EE3 
X-CRM114-Status: GOOD (  14.58  )
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
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
