Return-Path: <SRS0=0RCf=OK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EAB4BC433FE
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 09:51:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B0CBB60F6C
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 09:51:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B0CBB60F6C
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A8z5QWEvdKO52rdi1RTdNiruvjD0g8GPrZizqM37Kww=; b=1m3gaNpNUH3cyj
	lK82F5ieKc6Ool6dLBz19Cv3y2Lvv8Eew5QoZoGPSZjuLPr0bMlMsTHWo/eP5dduOOnUthJh5ULKl
	9Xyjy1GxUph2hPdOvAsNX9MvhhhYKxbJVc1SAYQAoVsf+mZh93e63r5YICRVfTwNVPAfuoW4mExEk
	9aHgxljZbwy9Z+tzP+aTX6peGcbtnYuP3dFt7N6CUjhbZkI/RQxrFd7G71yC/EwrZ6+13vIaBp1g3
	rEyIT+E2NB+sIp6oi6SQxXyZ/o8kQKdhDGBDvhjMQZoycXFUpP/u53ji/rqgm1pAtkCiWtS4KkSMV
	noPkq5MF3jSigCkNCLhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSFxI-001BQC-7Q; Mon, 20 Sep 2021 09:51:20 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSFxF-001BLF-1t
 for linux-phy@lists.infradead.org; Mon, 20 Sep 2021 09:51:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1632131476; x=1663667476;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vLPXuzc49sx/gA5stoXpDQug7nsLIUub/azXcaJOa7U=;
 b=nltSmOZUK5PR5y+DIceZeI8Mhv+t0rGFQztJ82/4GMMTfVtJCadau6n4
 QAH/iKTawCkVSKqmhTL5u9MnJW94gHpsj1rBXje+xtXgeuKFPzxF10Lmn
 UKiAZQZSiu+w3A6/6iLt7H1gdzXM7ADV6oStdq+qkQipy99NdQJmJeze/
 XRkNGdIBWWjax452RkUki+wY9W57hKSCWktvYRDjZjh1/p9qFBbNHFEZS
 Qkg74vqUEpek32MUkECK2Sf7rZ407lSxTQjat1hTrHhcTvhqcQEl6EA1N
 iyHeH7S4u6Uu8lQIMf8Y92wQX1KSFZsXOBXDQc5DG4T++GHmtaFYfTtjk A==;
IronPort-SDR: RvL5tJO8cV5cETkjkdzfqC52IULYir7rkvJzZ+H6vH6OyeGtb2uILxjgKqf+/0gPaO6dUMKFA0
 gNNSP5grgRl9P9rWOPPtaNg2dWqKUqZWmnCJEwE2fp/sfTrPYg1HfVLRIOLc2NYBYdPTCHJq8g
 P0npY5r3jVmEHqwDzHMufbehbtD97yK+mYLtsmlGPrhYyQR3dDxSWOcww/rYVoVvN7jNko3epy
 OUEwak+78/X5IkH5bW3QbKDAS5HFAi/YgrrehIPGoK5wF0D4pVZMaY4J5U+XOOeWzNY37QCP+n
 MKBKgc4R7QFBmgSfzWHCXppQ
X-IronPort-AV: E=Sophos;i="5.85,308,1624345200"; d="scan'208";a="69899282"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Sep 2021 02:51:16 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Mon, 20 Sep 2021 02:51:15 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2176.14 via Frontend Transport; Mon, 20 Sep 2021 02:51:12 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <robh+dt@kernel.org>,
 <andrew@lunn.ch>, <linux@armlinux.org.uk>, <f.fainelli@gmail.com>,
 <alexandre.belloni@bootlin.com>, <vladimir.oltean@nxp.com>,
 <UNGLinuxDriver@microchip.com>, <netdev@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-pm@vger.kernel.org>
CC: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [RFC PATCH net-next 01/12] net: mdio: mscc-miim: Fix the mdio
 controller
Date: Mon, 20 Sep 2021 11:52:07 +0200
Message-ID: <20210920095218.1108151-2-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
References: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_025117_209174_8B177EF3 
X-CRM114-Status: GOOD (  13.62  )
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

According to the documentation the second resource is optional. But the
blamed commit ignores that and if the resource is not there it just
fails.

This patch reverts that to still allow the second resource to be
optional because other SoC have the some MDIO controller and doesn't
need to second resource.

Fixes: 672a1c394950 ("net: mdio: mscc-miim: Make use of the helper function devm_platform_ioremap_resource()")
Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 drivers/net/mdio/mdio-mscc-miim.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/net/mdio/mdio-mscc-miim.c b/drivers/net/mdio/mdio-mscc-miim.c
index 1ee592d3eae4..bef026a80074 100644
--- a/drivers/net/mdio/mdio-mscc-miim.c
+++ b/drivers/net/mdio/mdio-mscc-miim.c
@@ -134,8 +134,9 @@ static int mscc_miim_reset(struct mii_bus *bus)
 
 static int mscc_miim_probe(struct platform_device *pdev)
 {
-	struct mii_bus *bus;
 	struct mscc_miim_dev *dev;
+	struct resource *res;
+	struct mii_bus *bus;
 	int ret;
 
 	bus = devm_mdiobus_alloc_size(&pdev->dev, sizeof(*dev));
@@ -156,10 +157,13 @@ static int mscc_miim_probe(struct platform_device *pdev)
 		return PTR_ERR(dev->regs);
 	}
 
-	dev->phy_regs = devm_platform_ioremap_resource(pdev, 1);
-	if (IS_ERR(dev->phy_regs)) {
-		dev_err(&pdev->dev, "Unable to map internal phy registers\n");
-		return PTR_ERR(dev->phy_regs);
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
+	if (res) {
+		dev->phy_regs = devm_ioremap_resource(&pdev->dev, res);
+		if (IS_ERR(dev->phy_regs)) {
+			dev_err(&pdev->dev, "Unable to map internal phy registers\n");
+			return PTR_ERR(dev->phy_regs);
+		}
 	}
 
 	ret = of_mdiobus_register(bus, pdev->dev.of_node);
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
