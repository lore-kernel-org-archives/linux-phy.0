Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F00FC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 11:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qNEldQG64G4+NjullOECb6X2HFwo0cERquCXafUZob8=; b=s7s+E0Wc43xpnD
	9dz0FcGPLRsyLFIRLm2iB80XaOSL2y/tI299uh6GUdlo8lM7NKL+SzKQr+jn/9aditVkQKIiwIKdL
	wDc/7zhXEPbuMkukSXfDvlZSCIkPGH1acsyy6GPgRdznDeBtyrb5/MmUZ8v0gpx0DltctAa8Q4kZI
	x+3gRRHswt3liCVRmonhukIOQUUARvOqWE5dk1SJ4qYXkpmFKKLyeelbtldsV86xKCMoJaMZZgu2O
	uLOEzK3pWN5XwItYNhwjt9Fy+YP2VkUVq8njpd3i/Bo/OluCOxmQIMVnYk7jZC1C9Gjkdmt1b7dy5
	Ww6IlisgOyVxvq2eyRKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvzoP-00ALbz-I0; Tue, 31 May 2022 11:13:21 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvzoM-00ALbQ-IC
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 11:13:20 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 24VBDEkj082186;
	Tue, 31 May 2022 06:13:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1653995594;
	bh=nOVEDIQrMHBAYQxk4E+Qzrw1IjfySejMOABM1vIc9Xo=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=pKSEfvU4Z0Bctop2Ls0dgZJ630UaG5v8+SnXuZX3tLNeLT2oMwXHvU7Rv2LNyZ/1K
	 LTzXYwANU8m8JZ0nYJAOZ4kgjkGJE2aQufp8/0PShmDBdZ9YqK03nLmaUqQDyajaGm
	 vMzj0wPRj2QkebesZ/EsK6Rsb25LEa7SlUfsDV5k=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 24VBDEFK019768
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 31 May 2022 06:13:14 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Tue, 31
 May 2022 06:13:13 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Tue, 31 May 2022 06:13:13 -0500
Received: from ula0492258.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 24VBCka9045977;
	Tue, 31 May 2022 06:13:09 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <robh+dt@kernel.org>, <lee.jones@linaro.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <kishon@ti.com>,
        <vkoul@kernel.org>, <dan.carpenter@oracle.com>,
        <grygorii.strashko@ti.com>, <rogerq@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>,
        Siddharth Vadapalli <s-vadapalli@ti.com>
Subject: [PATCH 2/2] phy: ti: gmii-sel: Add support for CPSW5G GMII SEL in J7200
Date: Tue, 31 May 2022 16:42:21 +0530
Message-ID: <20220531111221.22963-3-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220531111221.22963-1-s-vadapalli@ti.com>
References: <20220531111221.22963-1-s-vadapalli@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_041318_719407_A06CF908 
X-CRM114-Status: GOOD (  18.22  )
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

Each of the CPSW5G ports in J7200 support additional modes like QSGMII.
Add a new compatible for J7200 to support the additional modes.

In TI's J7200, each of the CPSW5G ethernet interfaces can act as a
QSGMII or QSGMII-SUB port. The QSGMII interface is responsible for
performing auto-negotiation between the MAC and the PHY while the rest of
the interfaces are designated as QSGMII-SUB interfaces, indicating that
they will not be taking part in the auto-negotiation process.

To indicate the interface which will serve as the main QSGMII interface,
add a property "ti,enet-ctrl-qsgmii", whose value indicates the
port number of the interface which shall serve as the main QSGMII
interface. The rest of the interfaces are then assigned QSGMII-SUB mode by
default.

Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
---
 drivers/phy/ti/phy-gmii-sel.c | 39 ++++++++++++++++++++++++++++++++---
 1 file changed, 36 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
index d0ab69750c6b..3def0909ba69 100644
--- a/drivers/phy/ti/phy-gmii-sel.c
+++ b/drivers/phy/ti/phy-gmii-sel.c
@@ -22,6 +22,12 @@
 #define AM33XX_GMII_SEL_MODE_RMII	1
 #define AM33XX_GMII_SEL_MODE_RGMII	2
 
+/* J72xx SoC specific definitions for the CONTROL port */
+#define J72XX_GMII_SEL_MODE_QSGMII	4
+#define J72XX_GMII_SEL_MODE_QSGMII_SUB	6
+
+#define PHY_GMII_PORT(n)	BIT((n) - 1)
+
 enum {
 	PHY_GMII_SEL_PORT_MODE = 0,
 	PHY_GMII_SEL_RGMII_ID_MODE,
@@ -43,6 +49,7 @@ struct phy_gmii_sel_soc_data {
 	u32 features;
 	const struct reg_field (*regfields)[PHY_GMII_SEL_LAST];
 	bool use_of_data;
+	u64 extra_modes;
 };
 
 struct phy_gmii_sel_priv {
@@ -53,6 +60,7 @@ struct phy_gmii_sel_priv {
 	struct phy_gmii_sel_phy_priv *if_phys;
 	u32 num_ports;
 	u32 reg_offset;
+	u32 qsgmii_main_port;
 };
 
 static int phy_gmii_sel_mode(struct phy *phy, enum phy_mode mode, int submode)
@@ -88,10 +96,17 @@ static int phy_gmii_sel_mode(struct phy *phy, enum phy_mode mode, int submode)
 		gmii_sel_mode = AM33XX_GMII_SEL_MODE_MII;
 		break;
 
+	case PHY_INTERFACE_MODE_QSGMII:
+		if (!(soc_data->extra_modes & BIT(PHY_INTERFACE_MODE_QSGMII)))
+			goto unsupported;
+		if (if_phy->priv->qsgmii_main_port & BIT(if_phy->id - 1))
+			gmii_sel_mode = J72XX_GMII_SEL_MODE_QSGMII;
+		else
+			gmii_sel_mode = J72XX_GMII_SEL_MODE_QSGMII_SUB;
+		break;
+
 	default:
-		dev_warn(dev, "port%u: unsupported mode: \"%s\"\n",
-			 if_phy->id, phy_modes(submode));
-		return -EINVAL;
+		goto unsupported;
 	}
 
 	if_phy->phy_if_mode = submode;
@@ -123,6 +138,11 @@ static int phy_gmii_sel_mode(struct phy *phy, enum phy_mode mode, int submode)
 	}
 
 	return 0;
+
+unsupported:
+	dev_warn(dev, "port%u: unsupported mode: \"%s\"\n",
+		 if_phy->id, phy_modes(submode));
+	return -EINVAL;
 }
 
 static const
@@ -188,6 +208,13 @@ struct phy_gmii_sel_soc_data phy_gmii_sel_soc_am654 = {
 	.regfields = phy_gmii_sel_fields_am654,
 };
 
+static const
+struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw5g_soc_j7200 = {
+	.use_of_data = true,
+	.regfields = phy_gmii_sel_fields_am654,
+	.extra_modes = BIT(PHY_INTERFACE_MODE_QSGMII),
+};
+
 static const struct of_device_id phy_gmii_sel_id_table[] = {
 	{
 		.compatible	= "ti,am3352-phy-gmii-sel",
@@ -209,6 +236,10 @@ static const struct of_device_id phy_gmii_sel_id_table[] = {
 		.compatible	= "ti,am654-phy-gmii-sel",
 		.data		= &phy_gmii_sel_soc_am654,
 	},
+	{
+		.compatible	= "ti,j7200-cpsw5g-phy-gmii-sel",
+		.data		= &phy_gmii_sel_cpsw5g_soc_j7200,
+	},
 	{}
 };
 MODULE_DEVICE_TABLE(of, phy_gmii_sel_id_table);
@@ -363,6 +394,8 @@ static int phy_gmii_sel_probe(struct platform_device *pdev)
 	priv->dev = &pdev->dev;
 	priv->soc_data = of_id->data;
 	priv->num_ports = priv->soc_data->num_ports;
+	priv->qsgmii_main_port = PHY_GMII_PORT(1);
+	of_property_read_u32(node, "ti,enet-ctrl-qsgmii", &priv->qsgmii_main_port);
 
 	priv->regmap = syscon_node_to_regmap(node->parent);
 	if (IS_ERR(priv->regmap)) {
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
