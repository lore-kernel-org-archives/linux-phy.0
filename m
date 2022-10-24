Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B3FAFA373E
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 09:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vw31b+MpPawxyJkk5YqVA69Gf9gUS0ZlrIfRef6paCw=; b=3r4xsDJvO3kPvU
	B/fAqf/4mbdHo4gSt4ATeOquKDt9hRTECAhf+WdDBm8PI7g7vLkyTQu7q/4W374SA9uqnAnli1V3A
	0D8qiUBeF/STyDeyB4TzvHUlS1xhBjFcsMF54s1XzXBHfn4RYqSolsONEqjyHsyOeC/KK0RmVa4lt
	UYRcwrjYGnDsUMW012+57wJJZH9MTsRs01RdFdtiqIjPxV746ajj8r7bZHbYxrU2CpNHVJMw14xJ3
	g6nv3N4G1EMdT+Egkgu6CV/JidBn1RQCzabQimLUyaIXFWlJPUXfXb/5sEzhBOqwBfIXzln6VIMiv
	v6IS0cueGvlEA8DnAepQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omtL4-000Gfb-Lm; Mon, 24 Oct 2022 09:01:42 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omtL1-000GcN-FH
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 09:01:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 497E360C8F;
	Mon, 24 Oct 2022 09:01:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A98DBC433D7;
	Mon, 24 Oct 2022 09:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666602097;
	bh=/QOd/A9j2LYjcIHbC2MjcBtERDD4VyR/2Wsyxi0u9T4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=irTWdS5LhaCd53En9T6AMWsM8Zp+9Ohltok3bZc4rw5BQfb20vZHbb5kOGtzt2sMg
	 N6vSRbrPZEqdJzkJhB6Yw5J8I0iMUDBCr0PXqy+eSQ4KB6XJ+3QkTar1hUYtsHzdcs
	 Kywpas+NHSc4SzfGCSIMgipfNIuXSxhT1AqAZj2f5zR0yY9QIJ7gdZgoE7DirVXLZG
	 gbe+zyj+H+aG4+2ELglXdVEYX3n1c7K8cJFQ5uFiqQk5oumWmQWFApxnI6A/ULQ1/u
	 4t+nmIY3h9bPwTDwCs2rUmMgLHmeRFJnQBwfCL11NXRGR51tJWeWykgzbWorpYI5JU
	 IDfNd/sr67ITg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1omtKj-00056N-0h; Mon, 24 Oct 2022 11:01:21 +0200
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
Subject: [PATCH 01/10] phy: qcom-qmp-ufs: move device-id table
Date: Mon, 24 Oct 2022 11:00:32 +0200
Message-Id: <20221024090041.19574-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221024090041.19574-1-johan+linaro@kernel.org>
References: <20221024090041.19574-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_020139_627244_A3651C26 
X-CRM114-Status: GOOD (  13.95  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 78 ++++++++++++-------------
 1 file changed, 39 insertions(+), 39 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 9b58d742af3b..acb8efa1d758 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1081,45 +1081,6 @@ static int qmp_ufs_create(struct device *dev, struct device_node *np, int id,
 	return 0;
 }
 
-static const struct of_device_id qmp_ufs_of_match_table[] = {
-	{
-		.compatible = "qcom,msm8996-qmp-ufs-phy",
-		.data = &msm8996_ufs_cfg,
-	}, {
-		.compatible = "qcom,msm8998-qmp-ufs-phy",
-		.data = &sdm845_ufsphy_cfg,
-	}, {
-		.compatible = "qcom,sc8180x-qmp-ufs-phy",
-		.data = &sm8150_ufsphy_cfg,
-	}, {
-		.compatible = "qcom,sc8280xp-qmp-ufs-phy",
-		.data = &sm8350_ufsphy_cfg,
-	}, {
-		.compatible = "qcom,sdm845-qmp-ufs-phy",
-		.data = &sdm845_ufsphy_cfg,
-	}, {
-		.compatible = "qcom,sm6115-qmp-ufs-phy",
-		.data = &sm6115_ufsphy_cfg,
-	}, {
-		.compatible = "qcom,sm6350-qmp-ufs-phy",
-		.data = &sdm845_ufsphy_cfg,
-	}, {
-		.compatible = "qcom,sm8150-qmp-ufs-phy",
-		.data = &sm8150_ufsphy_cfg,
-	}, {
-		.compatible = "qcom,sm8250-qmp-ufs-phy",
-		.data = &sm8150_ufsphy_cfg,
-	}, {
-		.compatible = "qcom,sm8350-qmp-ufs-phy",
-		.data = &sm8350_ufsphy_cfg,
-	}, {
-		.compatible = "qcom,sm8450-qmp-ufs-phy",
-		.data = &sm8450_ufsphy_cfg,
-	},
-	{ },
-};
-MODULE_DEVICE_TABLE(of, qmp_ufs_of_match_table);
-
 static int qmp_ufs_probe(struct platform_device *pdev)
 {
 	struct qcom_qmp *qmp;
@@ -1185,6 +1146,45 @@ static int qmp_ufs_probe(struct platform_device *pdev)
 	return ret;
 }
 
+static const struct of_device_id qmp_ufs_of_match_table[] = {
+	{
+		.compatible = "qcom,msm8996-qmp-ufs-phy",
+		.data = &msm8996_ufs_cfg,
+	}, {
+		.compatible = "qcom,msm8998-qmp-ufs-phy",
+		.data = &sdm845_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,sc8180x-qmp-ufs-phy",
+		.data = &sm8150_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,sc8280xp-qmp-ufs-phy",
+		.data = &sm8350_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,sdm845-qmp-ufs-phy",
+		.data = &sdm845_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,sm6115-qmp-ufs-phy",
+		.data = &sm6115_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,sm6350-qmp-ufs-phy",
+		.data = &sdm845_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,sm8150-qmp-ufs-phy",
+		.data = &sm8150_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,sm8250-qmp-ufs-phy",
+		.data = &sm8150_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,sm8350-qmp-ufs-phy",
+		.data = &sm8350_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,sm8450-qmp-ufs-phy",
+		.data = &sm8450_ufsphy_cfg,
+	},
+	{ },
+};
+MODULE_DEVICE_TABLE(of, qmp_ufs_of_match_table);
+
 static struct platform_driver qmp_ufs_driver = {
 	.probe		= qmp_ufs_probe,
 	.driver = {
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
