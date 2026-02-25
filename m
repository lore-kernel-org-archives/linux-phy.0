Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84CC0EFD20B
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 09:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:Cc
	:To:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0gaj21sl2d7O4PkPD/gLbVi8KPrcnJbf4dBEsgY7t+g=; b=IVbGO6eiDIW2Ub
	ijllxcG2aihkI/ZYW+aCBqNnh+bR0WEZKEfp7FwBxu72dhWH6VNbFe/a/pj6/DtCAuP0xLNsrRvtt
	jWFo6ahnp/owZubUBqQgNc97PxG2rbXkqEBUtOtCZPvxkFBTuYswFLbWccenAaFBV9Yua9KRtOpes
	l672v9qQAozz+gGLspIBzShaU7RV0Sn5su4YaqeOf8A4ucUlCI4DphRae9d456e/6eDFYJFzrbNOF
	5y/qblETHT1Qh9rkNnYDl8IHpvof8vvh+0jUoBJ/zWf+h3shCiR1VAhlQ6DxLrAwZ0LeTt2K3ug2M
	vzk+OvulGMWxxB8Ty7ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvAmx-00000003cV2-19WS;
	Wed, 25 Feb 2026 09:02:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvAmw-00000003cUG-0IcA
	for linux-phy@bombadil.infradead.org;
	Wed, 25 Feb 2026 09:02:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Date:Sender:Message-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
	In-Reply-To:Reply-To:Content-ID:Content-Description;
	bh=htvj62EzmrJgiWmmgeO4BMvKDLm4STF+WzVVUyzOJaU=; b=iX3a3alR8EAv2bT1ElT99JpA5m
	aVRLkCzaLuFQXnN52JFKM+2k9O4nbNWKUeZOKp/mfM9zZvThnLO91HotlkULmOuPPPNkCcT13OTN2
	EzinxkS6hzw5ToJ7VpHl/k7qs2MVOGX2rlOIGd64Ll9hdmUGdfW3GselV5rxz/ynrS9PQESALZU+I
	7/kEqATA3Hcafe9Vdk9RCsNrq3+pck80hM/41h8C1ZrxwxwQ4RxFolYFZmV6XQJMHb28G+XHzQ0qM
	AXL7Tzm9sFlpgVEIyYeKRByWB+6Q40LiiredpJc+yo49i/SVMOOcV8Q0p5rl/zxpKtcs1KdUM+AG1
	hIbzK/2g==;
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvAmt-00000008cmE-0DB3
	for linux-phy@lists.infradead.org;
	Wed, 25 Feb 2026 09:02:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
	In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=htvj62EzmrJgiWmmgeO4BMvKDLm4STF+WzVVUyzOJaU=; b=jElVujVJIupJVKdMysRPjRcDn5
	33cBAcESMX82pqVyW300fQEulBJ/aqsaDTWYztoXAojJYWKhU1EwPNrm9vq7ehnJATrommcFOjwqz
	A6ucJlc6lIjExLtP427qssmcYKfaE/GQUegi0r0FvI8vVskmi0L4KdyO8JZ+NCbodatoUSDJisHzF
	t3JCV0WVmmlCofMTee5G8bsN0HBArr/5Ij6phTsHUE/UCG1pmhUVWuJv6UutJrS8L2TvHDZjlvMkq
	27LB475NsT6B+eUQRzYkS7JoEaxSEc3daPVaB1Eez8azymP5w+WzhVuS20nTN3FNxScfVULAnPbnD
	U/vofggw==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:59622 helo=rmk-PC.armlinux.org.uk)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rmk@armlinux.org.uk>)
	id 1vvAmp-000000006GZ-2Kwm;
	Wed, 25 Feb 2026 09:02:27 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <rmk@rmk-PC.armlinux.org.uk>)
	id 1vvAmo-0000000Aqox-2RuD;
	Wed, 25 Feb 2026 09:02:26 +0000
In-Reply-To: <aZ66OT9scKipRRu2@shell.armlinux.org.uk>
References: <aZ66OT9scKipRRu2@shell.armlinux.org.uk>
From: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Vinod Koul <vkoul@kernel.org>
Subject: [PATCH net-next 6/8] phy: qcom-sgmii-eth: remove
 qcom_dwmac_sgmii_phy_interface()
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1vvAmo-0000000Aqox-2RuD@rmk-PC.armlinux.org.uk>
Date: Wed, 25 Feb 2026 09:02:26 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_090231_463877_92AB32AB 
X-CRM114-Status: GOOD (  10.37  )
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

Now that qcom_dwmac_sgmii_phy_interface() only serves to validate the
passed interface mode, combine it with qcom_dwmac_sgmii_phy_validate(),
and use qcom_dwmac_sgmii_phy_validate() to validate the mode in
qcom_dwmac_sgmii_phy_set_mode().

Tested-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
---
 drivers/phy/qualcomm/phy-qcom-sgmii-eth.c | 27 +++++++++--------------
 1 file changed, 10 insertions(+), 17 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
index 58ff15601206..6332ff291fdf 100644
--- a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
+++ b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
@@ -290,7 +290,9 @@ static int qcom_dwmac_sgmii_phy_power_off(struct phy *phy)
 	return 0;
 }
 
-static int qcom_dwmac_sgmii_phy_interface(enum phy_mode mode, int submode)
+static int qcom_dwmac_sgmii_phy_validate(struct phy *phy, enum phy_mode mode,
+					 int submode,
+					 union phy_configure_opts *opts)
 {
 	if (mode != PHY_MODE_ETHERNET)
 		return -EINVAL;
@@ -298,7 +300,7 @@ static int qcom_dwmac_sgmii_phy_interface(enum phy_mode mode, int submode)
 	if (submode == PHY_INTERFACE_MODE_SGMII ||
 	    submode == PHY_INTERFACE_MODE_1000BASEX ||
 	    submode == PHY_INTERFACE_MODE_2500BASEX)
-		return submode;
+		return 0;
 
 	return -EINVAL;
 }
@@ -307,27 +309,18 @@ static int qcom_dwmac_sgmii_phy_set_mode(struct phy *phy, enum phy_mode mode,
 					 int submode)
 {
 	struct qcom_dwmac_sgmii_phy_data *data = phy_get_drvdata(phy);
-	int interface;
+	int ret;
 
-	interface = qcom_dwmac_sgmii_phy_interface(mode, submode);
-	if (interface < 0)
-		return interface;
+	ret = qcom_dwmac_sgmii_phy_validate(phy, mode, submode, NULL);
+	if (ret)
+		return ret;
 
-	if (interface != data->interface)
-		data->interface = interface;
+	if (submode != data->interface)
+		data->interface = submode;
 
 	return qcom_dwmac_sgmii_phy_calibrate(phy);
 }
 
-static int qcom_dwmac_sgmii_phy_validate(struct phy *phy, enum phy_mode mode,
-					 int submode,
-					 union phy_configure_opts *opts)
-{
-	int ret = qcom_dwmac_sgmii_phy_interface(mode, submode);
-
-	return ret < 0 ? ret : 0;
-}
-
 static const struct phy_ops qcom_dwmac_sgmii_phy_ops = {
 	.power_on	= qcom_dwmac_sgmii_phy_power_on,
 	.power_off	= qcom_dwmac_sgmii_phy_power_off,
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
