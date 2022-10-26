Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBED6C38A2D
	for <linux-phy@archiver.kernel.org>; Wed, 26 Oct 2022 07:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1E0zonR+RuahaFpCa9isXiKMgf7d0saw2hTmDuZV5no=; b=g/q8E9tTKpo8FX
	H8qse9HVX7wkeyZcbGAtdomUA9s9Gs9AJSwMFk6KvgZr50dReNUpf40aoPq5FoPB2Qs71tVs2oBVk
	yddF3oYxfjaebhZgMALF83fDHGu1ttvktQPseYEusFzrRy1Nk3qysw7LSeiDSmJsZDMlvETCsPC0y
	sGpWuCLtDpJvjEweFqhHg9TGDFfciB95/H+HHAorpWTCShNJCLSxTKi5CW/OXJwYaEOLBsTs10ZIA
	BawvXHVovRLuZdVjF5RkCUVFdTSOZVLpBcc4I965KF/WQunqnOZ78pmgIcCvtDE4SkZyRX30fT/r6
	kpUGbVIIblNqSTJ19Tlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onb7K-008Qnw-AF; Wed, 26 Oct 2022 07:46:26 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onb6j-008Qdf-K4; Wed, 26 Oct 2022 07:45:51 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 29Q7jjhL118078;
	Wed, 26 Oct 2022 02:45:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1666770345;
	bh=FLep20rOiKaqZbwK7WvJmzJJvkAh5DtSNpNrVkz3nGI=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=v/8p1rDhku7jKaOM7l/kykrUxyboswF+kEM8YmvC83FUFSR67honWJ83BsiDMcKkE
	 j49cj2u85cWYFq+sxalfQ495vAoJS+4WX8lArcDBYYeMlx0dKaCzVUwR3O8TKpHE1X
	 LYYP7cP+EudnNi/qDE+DjAQJYNxUPorkW+B7pdiU=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 29Q7jjBB099189
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 26 Oct 2022 02:45:45 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Wed, 26
 Oct 2022 02:45:45 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Wed, 26 Oct 2022 02:45:45 -0500
Received: from uda0492258.dhcp.ti.com (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 29Q7jXFl005631;
	Wed, 26 Oct 2022 02:45:41 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <robh+dt@kernel.org>, <lee@kernel.org>, <krzysztof.kozlowski@linaro.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <kishon@kernel.org>,
        <vkoul@kernel.org>, <dan.carpenter@oracle.com>, <rogerq@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>,
        <linux-arm-kernel@lists.infradead.org>, <s-vadapalli@ti.com>
Subject: [PATCH v3 2/3] phy: ti: gmii-sel: Update methods for fetching and using qsgmii main port
Date: Wed, 26 Oct 2022 13:15:31 +0530
Message-ID: <20221026074532.109220-3-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221026074532.109220-1-s-vadapalli@ti.com>
References: <20221026074532.109220-1-s-vadapalli@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_004549_833280_12D5E835 
X-CRM114-Status: GOOD (  19.32  )
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

The number of QSGMII main ports are specific to the device. TI's J7200 for
which the QSGMII main port property is fetched from the device-tree has
only one QSGMII main port. However, devices like TI's J721e support up to
two QSGMII main ports. Thus, the existing methods for fetching and using
the QSGMII main port are not scalable.

Update the existing methods for handling the QSGMII main ports and its
associated requirements to make it scalable for future devices.

Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
---
 drivers/phy/ti/phy-gmii-sel.c | 29 ++++++++++++++++++++++-------
 1 file changed, 22 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
index 0bcfd6d96b4d..c8f30d2e1f46 100644
--- a/drivers/phy/ti/phy-gmii-sel.c
+++ b/drivers/phy/ti/phy-gmii-sel.c
@@ -50,6 +50,7 @@ struct phy_gmii_sel_soc_data {
 	const struct reg_field (*regfields)[PHY_GMII_SEL_LAST];
 	bool use_of_data;
 	u64 extra_modes;
+	u32 num_qsgmii_main_ports;
 };
 
 struct phy_gmii_sel_priv {
@@ -213,6 +214,8 @@ struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw5g_soc_j7200 = {
 	.use_of_data = true,
 	.regfields = phy_gmii_sel_fields_am654,
 	.extra_modes = BIT(PHY_INTERFACE_MODE_QSGMII),
+	.num_ports = 4,
+	.num_qsgmii_main_ports = 1,
 };
 
 static const struct of_device_id phy_gmii_sel_id_table[] = {
@@ -378,11 +381,13 @@ static int phy_gmii_sel_init_ports(struct phy_gmii_sel_priv *priv)
 static int phy_gmii_sel_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
+	const struct phy_gmii_sel_soc_data *soc_data;
 	struct device_node *node = dev->of_node;
 	const struct of_device_id *of_id;
 	struct phy_gmii_sel_priv *priv;
 	u32 main_ports = 1;
 	int ret;
+	u32 i;
 
 	of_id = of_match_node(phy_gmii_sel_id_table, pdev->dev.of_node);
 	if (!of_id)
@@ -394,16 +399,26 @@ static int phy_gmii_sel_probe(struct platform_device *pdev)
 
 	priv->dev = &pdev->dev;
 	priv->soc_data = of_id->data;
+	soc_data = priv->soc_data;
 	priv->num_ports = priv->soc_data->num_ports;
-	of_property_read_u32(node, "ti,qsgmii-main-ports", &main_ports);
+	priv->qsgmii_main_ports = 0;
+
 	/*
-	 * Ensure that main_ports is within bounds. If the property
-	 * ti,qsgmii-main-ports is not mentioned, or the value mentioned
-	 * is out of bounds, default to 1.
+	 * Based on the compatible, try to read the appropriate number of
+	 * QSGMII main ports from the "ti,qsgmii-main-ports" property from
+	 * the device-tree node.
 	 */
-	if (main_ports < 1 || main_ports > 4)
-		main_ports = 1;
-	priv->qsgmii_main_ports = PHY_GMII_PORT(main_ports);
+	for (i = 0; i < soc_data->num_qsgmii_main_ports; i++) {
+		of_property_read_u32_index(node, "ti,qsgmii-main-ports", i, &main_ports);
+		/*
+		 * Ensure that main_ports is within bounds.
+		 */
+		if (main_ports < 1 || main_ports > soc_data->num_ports) {
+			dev_err(dev, "Invalid qsgmii main port provided\n");
+			return -EINVAL;
+		}
+		priv->qsgmii_main_ports |= PHY_GMII_PORT(main_ports);
+	}
 
 	priv->regmap = syscon_node_to_regmap(node->parent);
 	if (IS_ERR(priv->regmap)) {
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
