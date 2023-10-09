Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59659CD6115
	for <linux-phy@archiver.kernel.org>; Mon,  9 Oct 2023 17:32:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=txH6ztHOhNCYWr24mT3maxXWcJjxL0x0ZkX6sNSCK3Q=; b=1SfHdGkKRTVH/T
	zbx6Hfq605jzxjCDnmkW+4kJmUHAihAG5Z0EkOxtBwWx0MzQYuDfRLGWAEN+Parg4Ac8c2ZmVTsEN
	uDOkJzmR0ryyOsmhuTGSlSbusJeK4U6JlbmDXNLhFoJBDcteFQDMAJJmDmJa2m+x9cYm/XFi8cTH7
	IsO4cnL2whxd+gZYnP/Srj0PjiI/7InvjXo/BAC9KiG+xxfvAbF6MCMrses4S/YITPcp4NnA17aWX
	4BAALr1M/xvAL3oQlHiq2i1Vso6VMTz9ohpT/nP1ri1FG2My0cuq0YpDSIzCReQ/laJlzaRQytQyd
	AstigdGqIjaujp/kUmTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpu7Z-00BIqk-0F;
	Mon, 09 Oct 2023 17:32:45 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpu7V-00BIns-1i
	for linux-phy@lists.infradead.org;
	Mon, 09 Oct 2023 17:32:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id B72CDCE1821;
	Mon,  9 Oct 2023 17:32:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F3A3C433C9;
	Mon,  9 Oct 2023 17:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696872759;
	bh=gNwIGig1RSpviawIcA3WM9ILVF/QqJCL1en6+KHTE78=;
	h=From:To:Cc:Subject:Date:From;
	b=C+aP2wa/68Yy8CjZntp0Q0tnb5pcxVGOrJrld6QUY7WarUV3b0yXih6VioBHvCHyS
	 zIzVCbqg68T+EdVee5j4po9oA4MNb0UTnZmpG4vW1BO2a4XyS90Al/ErZQg9muAUnZ
	 e2o83e7cmHzU2OKK2m1pUwRfflklRxXCQbg1ix8DnFkEbc9cD4DuHYTdOA4jY0HtxN
	 JCwJ3tYq6rVHz+HwArAV0NmVhhCGPgZuCO75DUSqrbRtihZTLRn+3+5X3ZQ+QrpFtr
	 jJWysBRc+Pxbz7pWeUoHc/NMP6oqcV5JckqEunF6lnJWP4AfxV6slPZ6Wut3xdPqWK
	 2PRZEu+gVZCJg==
Received: (nullmailer pid 2529337 invoked by uid 1000);
	Mon, 09 Oct 2023 17:32:37 -0000
From: Rob Herring <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] phy: Drop unnecessary of_match_device() calls
Date: Mon,  9 Oct 2023 12:29:11 -0500
Message-ID: <20231009172923.2457844-16-robh@kernel.org>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_103241_915131_BCDC302D 
X-CRM114-Status: GOOD (  13.41  )
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

If probe is reached, we've already matched the device and in the case of
DT matching, the struct device_node pointer will be set. Therefore, there
is no need to call of_match_device() in probe.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/phy/motorola/phy-cpcap-usb.c |  7 -------
 drivers/phy/ti/phy-dm816x-usb.c      | 11 +----------
 2 files changed, 1 insertion(+), 17 deletions(-)

diff --git a/drivers/phy/motorola/phy-cpcap-usb.c b/drivers/phy/motorola/phy-cpcap-usb.c
index 74333e814221..7bbf729a7c90 100644
--- a/drivers/phy/motorola/phy-cpcap-usb.c
+++ b/drivers/phy/motorola/phy-cpcap-usb.c
@@ -15,7 +15,6 @@
 #include <linux/io.h>
 #include <linux/module.h>
 #include <linux/of.h>
-#include <linux/of_platform.h>
 #include <linux/iio/consumer.h>
 #include <linux/pinctrl/consumer.h>
 #include <linux/platform_device.h>
@@ -612,14 +611,8 @@ static int cpcap_usb_phy_probe(struct platform_device *pdev)
 	struct phy *generic_phy;
 	struct phy_provider *phy_provider;
 	struct usb_otg *otg;
-	const struct of_device_id *of_id;
 	int error;
 
-	of_id = of_match_device(of_match_ptr(cpcap_usb_phy_id_table),
-				&pdev->dev);
-	if (!of_id)
-		return -EINVAL;
-
 	ddata = devm_kzalloc(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
 	if (!ddata)
 		return -ENOMEM;
diff --git a/drivers/phy/ti/phy-dm816x-usb.c b/drivers/phy/ti/phy-dm816x-usb.c
index db153a55f4e1..d5ae972a31fb 100644
--- a/drivers/phy/ti/phy-dm816x-usb.c
+++ b/drivers/phy/ti/phy-dm816x-usb.c
@@ -13,7 +13,6 @@
 #include <linux/pm_runtime.h>
 #include <linux/delay.h>
 #include <linux/phy/phy.h>
-#include <linux/of_platform.h>
 
 #include <linux/mfd/syscon.h>
 
@@ -161,7 +160,6 @@ static UNIVERSAL_DEV_PM_OPS(dm816x_usb_phy_pm_ops,
 			    dm816x_usb_phy_runtime_resume,
 			    NULL);
 
-#ifdef CONFIG_OF
 static const struct of_device_id dm816x_usb_phy_id_table[] = {
 	{
 		.compatible = "ti,dm8168-usb-phy",
@@ -169,7 +167,6 @@ static const struct of_device_id dm816x_usb_phy_id_table[] = {
 	{},
 };
 MODULE_DEVICE_TABLE(of, dm816x_usb_phy_id_table);
-#endif
 
 static int dm816x_usb_phy_probe(struct platform_device *pdev)
 {
@@ -178,14 +175,8 @@ static int dm816x_usb_phy_probe(struct platform_device *pdev)
 	struct phy *generic_phy;
 	struct phy_provider *phy_provider;
 	struct usb_otg *otg;
-	const struct of_device_id *of_id;
 	int error;
 
-	of_id = of_match_device(of_match_ptr(dm816x_usb_phy_id_table),
-				&pdev->dev);
-	if (!of_id)
-		return -EINVAL;
-
 	phy = devm_kzalloc(&pdev->dev, sizeof(*phy), GFP_KERNEL);
 	if (!phy)
 		return -ENOMEM;
@@ -272,7 +263,7 @@ static struct platform_driver dm816x_usb_phy_driver = {
 	.driver		= {
 		.name	= "dm816x-usb-phy",
 		.pm	= &dm816x_usb_phy_pm_ops,
-		.of_match_table = of_match_ptr(dm816x_usb_phy_id_table),
+		.of_match_table = dm816x_usb_phy_id_table,
 	},
 };
 
-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
