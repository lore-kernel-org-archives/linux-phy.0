Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80BF3ECAAD5
	for <linux-phy@archiver.kernel.org>; Fri,  2 Sep 2022 09:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V9duhINkMRUEXSo+rmbs7FfuJQuyuAz9C6mjGIbFHQc=; b=PRaWBcL4Z45GvF
	JQxGId9ScVqiA7FcJH7reyaMKwK8yp6vH8XmXsb+bSnAgDc3b5Qq5VvlI9HNNO7yrNA9jTX946JMe
	wYgu1yVwvMtcIIeFHv1WFFBjXcr8as+7lmz8nNnntOe8v60EeUY+HozwK5vk86KfZpoKjFuh3Mv+F
	VZKsiMmBg+P4REXaSCaYTJsNKweA/lRo5Vii784NOibhL61jBMNQAHbvEpvRz8AGSF+q/DXdMPEvu
	KF13Zmh41Dr8Oc9MgOMheEzKU+DEYPRPTQn4chWXAWXbdyEzsSuhT9S/F5z3RNvt60pIIP7k5YSY6
	NbZTfkAh3tBQfoyQ/RBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU2sA-002WzN-Rw; Fri, 02 Sep 2022 09:21:58 +0000
Received: from inva020.nxp.com ([92.121.34.13])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU2mR-002Q82-8s; Fri, 02 Sep 2022 09:16:04 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 065ED1A2AEE;
	Fri,  2 Sep 2022 11:16:02 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id BFA031A2AEC;
	Fri,  2 Sep 2022 11:16:01 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id B7C721820F5C;
	Fri,  2 Sep 2022 17:15:59 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: p.zabel@pengutronix.de,
	l.stach@pengutronix.de,
	bhelgaas@google.com,
	lorenzo.pieralisi@arm.com,
	robh@kernel.org,
	shawnguo@kernel.org,
	vkoul@kernel.org,
	alexander.stein@ew.tq-group.com,
	marex@denx.de,
	richard.leitner@linux.dev
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@pengutronix.de,
	linux-imx@nxp.com,
	Richard Zhu <hongxing.zhu@nxp.com>
Subject: [PATCH v7 5/7] soc: imx: imx8mp-blk-ctrl: handle PCIe PHY resets
Date: Fri,  2 Sep 2022 16:58:04 +0800
Message-Id: <1662109086-15881-6-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1662109086-15881-1-git-send-email-hongxing.zhu@nxp.com>
References: <1662109086-15881-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_021603_457335_0BA102D0 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Lucas Stach <l.stach@pengutronix.de>

Dessert the PHY reset when powering up the domain and put it back
into reset when the domain is powered down.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
---
 drivers/soc/imx/imx8mp-blk-ctrl.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/soc/imx/imx8mp-blk-ctrl.c b/drivers/soc/imx/imx8mp-blk-ctrl.c
index 4ca2ede6871b..6c939d68ba9a 100644
--- a/drivers/soc/imx/imx8mp-blk-ctrl.c
+++ b/drivers/soc/imx/imx8mp-blk-ctrl.c
@@ -18,6 +18,8 @@
 #define GPR_REG0		0x0
 #define  PCIE_CLOCK_MODULE_EN	BIT(0)
 #define  USB_CLOCK_MODULE_EN	BIT(1)
+#define  PCIE_PHY_APB_RST	BIT(4)
+#define  PCIE_PHY_INIT_RST	BIT(5)
 
 struct imx8mp_blk_ctrl_domain;
 
@@ -75,6 +77,10 @@ static void imx8mp_hsio_blk_ctrl_power_on(struct imx8mp_blk_ctrl *bc,
 	case IMX8MP_HSIOBLK_PD_PCIE:
 		regmap_set_bits(bc->regmap, GPR_REG0, PCIE_CLOCK_MODULE_EN);
 		break;
+	case IMX8MP_HSIOBLK_PD_PCIE_PHY:
+		regmap_set_bits(bc->regmap, GPR_REG0,
+				PCIE_PHY_APB_RST | PCIE_PHY_INIT_RST);
+		break;
 	default:
 		break;
 	}
@@ -90,6 +96,10 @@ static void imx8mp_hsio_blk_ctrl_power_off(struct imx8mp_blk_ctrl *bc,
 	case IMX8MP_HSIOBLK_PD_PCIE:
 		regmap_clear_bits(bc->regmap, GPR_REG0, PCIE_CLOCK_MODULE_EN);
 		break;
+	case IMX8MP_HSIOBLK_PD_PCIE_PHY:
+		regmap_clear_bits(bc->regmap, GPR_REG0,
+				  PCIE_PHY_APB_RST | PCIE_PHY_INIT_RST);
+		break;
 	default:
 		break;
 	}
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
