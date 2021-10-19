Return-Path: <SRS0=T9my=PI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E78C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 00:00:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 626FE61004
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 00:00:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 626FE61004
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=socionext.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=185r410P2m4sGLGLuiH8DO7hk+ux0snuYfGbuTBbsIM=; b=KqSjwR3hxZ+b0h
	vHuZJE8u65mv0nkiVybCkPLBq0qgDmWWcvvdM8o5Zy6PWEho2Yh0m8dVmonDy/7TBi+PsK3GWkFYR
	c8iXHWUa/j3v0uUY7T6wR2iKhJ8YmgZ/u43vWyb+OVSA+v203z5Ngh4Tnd2L/cNzlFzqVf99E9ST4
	ej8hRyr92DfiBgN+zEFuKGx34i3ZddD6Dhvfr9FFBpke8YpM/uRJFWnPD++FNbDrGIvtIXzHpDXan
	djTmp5o8nVGRDnzj9MrzKqAStgLOHq88+mpyNm3XSlcIbx8fFseGnFxY7f9nD7r9zMHsbj+scu7ba
	sxswwcCEB35rX/zaqwoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcz20-0030mt-Hz; Wed, 20 Oct 2021 00:00:32 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcz09-002zqB-JP; Tue, 19 Oct 2021 23:58:39 +0000
Received: from unknown (HELO kinkan2-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 20 Oct 2021 08:58:32 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan2-ex.css.socionext.com (Postfix) with ESMTP id 7A8C2206E704;
 Wed, 20 Oct 2021 08:58:32 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Wed, 20 Oct 2021 08:58:32 +0900
Received: from plum.e01.socionext.com (unknown [10.212.243.119])
 by kinkan2.css.socionext.com (Postfix) with ESMTP id B5C49B62AC;
 Wed, 20 Oct 2021 08:58:31 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH v2 4/8] phy: uniphier-pcie: Add compatible string and
 SoC-dependent data for NX1 SoC
Date: Wed, 20 Oct 2021 08:58:04 +0900
Message-Id: <1634687888-23900-5-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1634687888-23900-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1634687888-23900-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211019_165837_796675_EE3288F9 
X-CRM114-Status: GOOD (  15.79  )
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

Add basic support for UniPhier NX1 SoC. This includes a compatible string,
SoC-dependent data, and a function that set to 2-lane mode.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 drivers/phy/socionext/phy-uniphier-pcie.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/phy/socionext/phy-uniphier-pcie.c b/drivers/phy/socionext/phy-uniphier-pcie.c
index 6bdbd1f214dd..fde8aac5f4b6 100644
--- a/drivers/phy/socionext/phy-uniphier-pcie.c
+++ b/drivers/phy/socionext/phy-uniphier-pcie.c
@@ -39,6 +39,10 @@
 #define SG_USBPCIESEL		0x590
 #define SG_USBPCIESEL_PCIE	BIT(0)
 
+/* SC */
+#define SC_US3SRCSEL		0x2244
+#define SC_US3SRCSEL_2LANE	GENMASK(9, 8)
+
 #define PCL_PHY_R00		0
 #define   RX_EQ_ADJ_EN		BIT(3)		/* enable for EQ adjustment */
 #define PCL_PHY_R06		6
@@ -261,6 +265,12 @@ static void uniphier_pciephy_ld20_setmode(struct regmap *regmap)
 			   SG_USBPCIESEL_PCIE, SG_USBPCIESEL_PCIE);
 }
 
+static void uniphier_pciephy_nx1_setmode(struct regmap *regmap)
+{
+	regmap_update_bits(regmap, SC_US3SRCSEL,
+			   SC_US3SRCSEL_2LANE, SC_US3SRCSEL_2LANE);
+}
+
 static const struct uniphier_pciephy_soc_data uniphier_pro5_data = {
 	.is_legacy = true,
 };
@@ -274,6 +284,11 @@ static const struct uniphier_pciephy_soc_data uniphier_pxs3_data = {
 	.is_legacy = false,
 };
 
+static const struct uniphier_pciephy_soc_data uniphier_nx1_data = {
+	.is_legacy = false,
+	.set_phymode = uniphier_pciephy_nx1_setmode,
+};
+
 static const struct of_device_id uniphier_pciephy_match[] = {
 	{
 		.compatible = "socionext,uniphier-pro5-pcie-phy",
@@ -287,6 +302,10 @@ static const struct of_device_id uniphier_pciephy_match[] = {
 		.compatible = "socionext,uniphier-pxs3-pcie-phy",
 		.data = &uniphier_pxs3_data,
 	},
+	{
+		.compatible = "socionext,uniphier-nx1-pcie-phy",
+		.data = &uniphier_nx1_data,
+	},
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, uniphier_pciephy_match);
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
