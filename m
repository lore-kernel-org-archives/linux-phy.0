Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45958EFD20B
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 09:02:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:Cc
	:To:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BMVb+QlIE7oEVKqRxXp+odZxjTJE0UXCszrtGwbPfKo=; b=EFpMNB+hBl2/BI
	8DOpWoEMl0IyWvwmgItZYwQYk/yi3/0iuUh7VM3zDE7NdFbL0KE1eVTeH6h5FZrg+nVgqQIKI0U0I
	ciomBO9WX1mpMJWUz8o0Zo5xo3MND93mVX/Y9D79uCC8Or1LtLkg0t46xCeMCl6oLyUrJk2Nqck+e
	3Ln/KEkIj2kDOusL12BNfMGvjHinglI829nR5pdnFRTPTp184UHmRp3hk8zFQ8sAtl7mgInQgfgh+
	F0vHtiqzbC2hNjOYzokSri3NW+XK5yoWE4tGnBdzeKCzQTxAzMnoDVFYnfnuzC/g+j0AR23bEcNt4
	O+InItFu57LlMzeH7kPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvAmp-00000003cT2-3xWU;
	Wed, 25 Feb 2026 09:02:30 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvAmn-00000003cRy-1ZcY
	for linux-phy@lists.infradead.org;
	Wed, 25 Feb 2026 09:02:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
	In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=N00DrG/8Wkhoc2JsXgUgGdCKtmOp43QPxZbl+PdaFhM=; b=YNx1QP6QYWgaw02f4yytaFjcSm
	gJtBHZv4Mgmiyh5seZ5+zTH60Qrj+WPWuHyQ2wD5ySio4smC04/8qLdwDh1UcqyftvjSZ+Rlk+acZ
	TqvPT/lU0PLLv71rgwrYtAy55atv8jNrXq19bM9v4fJ3xEt+GtKj0SD1owS2WCmhAWcB96lYln03N
	SLSODVUCj4JLMXK7Wn2qDNxynpJivHy/k8RYIp4HfJICJrg/3K6oLVO/MBTrC/kJHF0SUwK2S9S2Y
	jQgMQp/Ovr6Ccbrt0zYg8cBtpPqe0RCjnYgLHNh2zNkcczI5820gdYImRh2w6hPMX3exH9lpJxSH8
	UOJ+OsQg==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:59610 helo=rmk-PC.armlinux.org.uk)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rmk@armlinux.org.uk>)
	id 1vvAmk-000000006GL-3LW8;
	Wed, 25 Feb 2026 09:02:22 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <rmk@rmk-PC.armlinux.org.uk>)
	id 1vvAmj-0000000Aqor-1xzO;
	Wed, 25 Feb 2026 09:02:21 +0000
In-Reply-To: <aZ66OT9scKipRRu2@shell.armlinux.org.uk>
References: <aZ66OT9scKipRRu2@shell.armlinux.org.uk>
From: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Vinod Koul <vkoul@kernel.org>
Subject: [PATCH net-next 5/8] phy: qcom-sgmii-eth: use PHY interface mode for
 SerDes settings
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1vvAmj-0000000Aqor-1xzO@rmk-PC.armlinux.org.uk>
Date: Wed, 25 Feb 2026 09:02:21 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_010225_411432_0CBF6CD4 
X-CRM114-Status: GOOD (  17.10  )
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

As established in the previous commit, using SPEED_1000 and SPEED_2500
does not make sense for a SerDes due to the PCS encoding that is used
over the SerDes link, which inflates the data rate at the SerDes. Thus,
the use of these constants in a SerDes driver is incorrect.

Since qcom-sgmii-eth no longer implements phy_set_speed(), but instead
uses the PHY interface mode passed via the .set_mode() method, convert
the driver to use the PHY interface mode internally to decide whether
to configure the SerDes for 1.25Gbps or 3.125Gbps mode.

Tested-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
---
 drivers/phy/qualcomm/phy-qcom-sgmii-eth.c | 41 ++++++++++++-----------
 1 file changed, 21 insertions(+), 20 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
index dcfdb7d0e8ea..58ff15601206 100644
--- a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
+++ b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
@@ -29,7 +29,7 @@
 struct qcom_dwmac_sgmii_phy_data {
 	struct regmap *regmap;
 	struct clk *refclk;
-	int speed;
+	phy_interface_t interface;
 };
 
 static void qcom_dwmac_sgmii_phy_init_1g(struct regmap *regmap)
@@ -223,15 +223,18 @@ static int qcom_dwmac_sgmii_phy_calibrate(struct phy *phy)
 	struct qcom_dwmac_sgmii_phy_data *data = phy_get_drvdata(phy);
 	struct device *dev = phy->dev.parent;
 
-	switch (data->speed) {
-	case SPEED_10:
-	case SPEED_100:
-	case SPEED_1000:
+	switch (data->interface) {
+	case PHY_INTERFACE_MODE_SGMII:
+	case PHY_INTERFACE_MODE_1000BASEX:
+		/* 1.25Gbps mode */
 		qcom_dwmac_sgmii_phy_init_1g(data->regmap);
 		break;
-	case SPEED_2500:
+	case PHY_INTERFACE_MODE_2500BASEX:
+		/* 3.125Gbps mode */
 		qcom_dwmac_sgmii_phy_init_2p5g(data->regmap);
 		break;
+	default:
+		return -EINVAL;
 	}
 
 	if (qcom_dwmac_sgmii_phy_poll_status(data->regmap,
@@ -287,17 +290,15 @@ static int qcom_dwmac_sgmii_phy_power_off(struct phy *phy)
 	return 0;
 }
 
-static int qcom_dwmac_sgmii_phy_speed(enum phy_mode mode, int submode)
+static int qcom_dwmac_sgmii_phy_interface(enum phy_mode mode, int submode)
 {
 	if (mode != PHY_MODE_ETHERNET)
 		return -EINVAL;
 
 	if (submode == PHY_INTERFACE_MODE_SGMII ||
-	    submode == PHY_INTERFACE_MODE_1000BASEX)
-		return SPEED_1000;
-
-	if (submode == PHY_INTERFACE_MODE_2500BASEX)
-		return SPEED_2500;
+	    submode == PHY_INTERFACE_MODE_1000BASEX ||
+	    submode == PHY_INTERFACE_MODE_2500BASEX)
+		return submode;
 
 	return -EINVAL;
 }
@@ -306,14 +307,14 @@ static int qcom_dwmac_sgmii_phy_set_mode(struct phy *phy, enum phy_mode mode,
 					 int submode)
 {
 	struct qcom_dwmac_sgmii_phy_data *data = phy_get_drvdata(phy);
-	int speed;
+	int interface;
 
-	speed = qcom_dwmac_sgmii_phy_speed(mode, submode);
-	if (speed < 0)
-		return speed;
+	interface = qcom_dwmac_sgmii_phy_interface(mode, submode);
+	if (interface < 0)
+		return interface;
 
-	if (speed != data->speed)
-		data->speed = speed;
+	if (interface != data->interface)
+		data->interface = interface;
 
 	return qcom_dwmac_sgmii_phy_calibrate(phy);
 }
@@ -322,7 +323,7 @@ static int qcom_dwmac_sgmii_phy_validate(struct phy *phy, enum phy_mode mode,
 					 int submode,
 					 union phy_configure_opts *opts)
 {
-	int ret = qcom_dwmac_sgmii_phy_speed(mode, submode);
+	int ret = qcom_dwmac_sgmii_phy_interface(mode, submode);
 
 	return ret < 0 ? ret : 0;
 }
@@ -356,7 +357,7 @@ static int qcom_dwmac_sgmii_phy_probe(struct platform_device *pdev)
 	if (!data)
 		return -ENOMEM;
 
-	data->speed = SPEED_10;
+	data->interface = PHY_INTERFACE_MODE_SGMII;
 
 	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base))
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
