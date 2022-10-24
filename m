Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AE42ECDFA1
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 09:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VzrUmRtfcfdNOQQZgimFHOzGUtzr+/XUfOtM+Adfr9k=; b=c925H2j4LngLXb
	GqfwUsvxniTqLzbQSx1IDk9MKemmXXb5FgQrS0eZiZ9uFvK2VYu3Nd/jLW3ZFjdHt6AL/a3PNBrH4
	haXBN3hmfp+AK/SaZqzy/+GJwD+OjR6qslH1ajr/nMbjBShJwuFqIAWYaeLEA9kVOrKc7wC7tuDgn
	Dn/dJYy4USmmcKejp1BWGzN49BLIKk4od24tqgiEr04Qc+f213GuGW7CgQGHWE6YgOvZthW/CfoFV
	Rtb5OSPwKIACbqIRhJVCl+Wt4heJNb4GoXG0ah0oOy1YjxDJyLtoB5LDay8e6IIBTJdLRs5/i4BzL
	mJtmmnjdktKGFcMoCtdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omtL7-000Ggu-0z; Mon, 24 Oct 2022 09:01:45 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omtL2-000GdB-GL
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 09:01:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 12D1F6108E;
	Mon, 24 Oct 2022 09:01:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC32CC4315C;
	Mon, 24 Oct 2022 09:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666602097;
	bh=eORV9LmEcdHb6Kr3GUyjApeVuli873Sn/SlzBLhCixE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=q7XBzBVRtDWnivgHChKd8A/o1R1cb2VYbr4gnTcDGLrR86JS7bQQhNT8mGyivYcul
	 vwFBYJZEUjz8rd8qEKMSxVhcC8TydFAciESdoYPXWZlE9sgcQWCJRScjhdYdJze1bJ
	 0Wez0oSziuZ9ZyhcFBxJnXdu3+qutXqO9DqEXld84PSf7vBBJqMdFx88/Lg5Lqrtl5
	 i3mzW+nMXW/sabTHP2g4V9uUbM5YMg4NeU0ujNAiZTzZom2GGh0LwqCOh7inOder4H
	 CBUCAb3/+U16HOaeADXyirs+xfNlH1uACipBUseyVCQ7M5E5HOQRvLLw6eqyO9ZdTC
	 Qlk0WYccbCjHw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1omtKj-00056j-Px; Mon, 24 Oct 2022 11:01:21 +0200
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
Subject: [PATCH 09/10] phy: qcom-qmp-ufs: restructure PHY creation
Date: Mon, 24 Oct 2022 11:00:40 +0200
Message-Id: <20221024090041.19574-10-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221024090041.19574-1-johan+linaro@kernel.org>
References: <20221024090041.19574-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_020140_639607_5D793601 
X-CRM114-Status: GOOD (  16.10  )
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

In preparation for supporting devicetree bindings which do not use a
child node, move the PHY creation to probe() proper and parse the serdes
resource in what is now the legacy devicetree helper.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 34 ++++++++++++-------------
 1 file changed, 16 insertions(+), 18 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index fa703e856eb7..bf5c1a6b9ca4 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -983,12 +983,15 @@ static int qmp_ufs_clk_init(struct qmp_ufs *qmp)
 	return devm_clk_bulk_get(dev, num, qmp->clks);
 }
 
-static int qmp_ufs_create(struct qmp_ufs *qmp, struct device_node *np)
+static int qmp_ufs_parse_dt_legacy(struct qmp_ufs *qmp, struct device_node *np)
 {
+	struct platform_device *pdev = to_platform_device(qmp->dev);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	struct device *dev = qmp->dev;
-	struct phy *generic_phy;
-	int ret;
+
+	qmp->serdes = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(qmp->serdes))
+		return PTR_ERR(qmp->serdes);
 
 	/*
 	 * Get memory resources for the PHY:
@@ -1025,16 +1028,6 @@ static int qmp_ufs_create(struct qmp_ufs *qmp, struct device_node *np)
 	if (IS_ERR(qmp->pcs_misc))
 		dev_vdbg(dev, "PHY pcs_misc-reg not used\n");
 
-	generic_phy = devm_phy_create(dev, np, &qcom_qmp_ufs_phy_ops);
-	if (IS_ERR(generic_phy)) {
-		ret = PTR_ERR(generic_phy);
-		dev_err(dev, "failed to create PHY: %d\n", ret);
-		return ret;
-	}
-
-	qmp->phy = generic_phy;
-	phy_set_drvdata(generic_phy, qmp);
-
 	return 0;
 }
 
@@ -1056,10 +1049,6 @@ static int qmp_ufs_probe(struct platform_device *pdev)
 	if (!qmp->cfg)
 		return -EINVAL;
 
-	qmp->serdes = devm_platform_ioremap_resource(pdev, 0);
-	if (IS_ERR(qmp->serdes))
-		return PTR_ERR(qmp->serdes);
-
 	ret = qmp_ufs_clk_init(qmp);
 	if (ret)
 		return ret;
@@ -1072,10 +1061,19 @@ static int qmp_ufs_probe(struct platform_device *pdev)
 	if (!child)
 		return -EINVAL;
 
-	ret = qmp_ufs_create(qmp, child);
+	ret = qmp_ufs_parse_dt_legacy(qmp, child);
 	if (ret)
 		goto err_node_put;
 
+	qmp->phy = devm_phy_create(dev, child, &qcom_qmp_ufs_phy_ops);
+	if (IS_ERR(qmp->phy)) {
+		ret = PTR_ERR(qmp->phy);
+		dev_err(dev, "failed to create PHY: %d\n", ret);
+		goto err_node_put;
+	}
+
+	phy_set_drvdata(qmp->phy, qmp);
+
 	of_node_put(child);
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
