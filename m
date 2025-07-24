Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6AE9C87FCC
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 15:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BYXjAes/ABVUzDgTXy5v6JB+LkXi/qfJrbz2XMixjlM=; b=rW7ZjjtGIS9Mwd
	oafqW/v0QP9DlTNl08Y8YgSmGlyTXkzjhcY6XvwbWqDzBRgHvHaI3EaINudTc5WOkqDqXNMjcL39Q
	BdOGycGtJyJzI73LEd9EtRNaEthnkV3xIQMizBbTGjuUstCCV2XH2G3FOENdDZiTcJiNoWWlD9+/N
	wbVDZ/vnOjjc9stvyS08Sp3v13rNVOmc8PRZ4WddAruEKiWL9z3ERXmpwmKe76NABlwgQyXuB45CM
	UVot4ARg/o2RB3u2gHBrWJc0BL54VMTahzYtUCO7XNCKil56PzY8GupKr1f/zGIoZ91KOCI7uYwyb
	E85tCUYzZZvfZTFWvvtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uexpB-00000007qJr-2sYE;
	Thu, 24 Jul 2025 15:25:37 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uevkJ-00000007UFq-1QJ3
	for linux-phy@lists.infradead.org;
	Thu, 24 Jul 2025 13:12:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5A84946602;
	Thu, 24 Jul 2025 13:12:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E69DC4CEF6;
	Thu, 24 Jul 2025 13:12:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753362746;
	bh=EnT4paXlhJPUP8+mIB7o5aRRtP4WZADwwl9CUlZpo3E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UwGwjMgX1qyHE8qc85t9P1ww2WhT8ej49SDR8kJ8+OSfgvj1wkzBQQQROHe6iJlJP
	 hEB5pytAVYQ2LUvYPANfxGkg6H2rizGopewMdHWENxGIneAJwDMhvhGACzXl9YkSsW
	 eO6ML37EDCbMozshMwgiGo8crJNzSuL4cOPE+5tirlILnd+Xxhe1MCaxX5jQyUEl1U
	 izMkVS4f5SPBiQIETJOOFKDradG8dYbXN7UygsssANEi2Ztg5nVpmwDwJKzWN3nDox
	 Q4lt1fQwCgmXVJ9El3nzZ7IsvzlfL11G+GC+0BFC/6ptNTiNPJsR+b1tUImBkZ3pl2
	 3tytPYqCkZewQ==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1uevkD-000000000aJ-34An;
	Thu, 24 Jul 2025 15:12:21 +0200
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: JC Kuo <jckuo@nvidia.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan@kernel.org>,
	stable@vger.kernel.org,
	Roger Quadros <rogerq@kernel.org>
Subject: [PATCH 2/3] phy: ti: omap-usb2: fix device leak at unbind
Date: Thu, 24 Jul 2025 15:12:05 +0200
Message-ID: <20250724131206.2211-3-johan@kernel.org>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250724131206.2211-1-johan@kernel.org>
References: <20250724131206.2211-1-johan@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_061227_400601_2CD2B604 
X-CRM114-Status: GOOD (  11.56  )
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

Make sure to drop the reference to the control device taken by
of_find_device_by_node() during probe when the driver is unbound.

Fixes: 478b6c7436c2 ("usb: phy: omap-usb2: Don't use omap_get_control_dev()")
Cc: stable@vger.kernel.org	# 3.13
Cc: Roger Quadros <rogerq@kernel.org>
Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/phy/ti/phy-omap-usb2.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/phy/ti/phy-omap-usb2.c b/drivers/phy/ti/phy-omap-usb2.c
index c1a0ef979142..c444bb2530ca 100644
--- a/drivers/phy/ti/phy-omap-usb2.c
+++ b/drivers/phy/ti/phy-omap-usb2.c
@@ -363,6 +363,13 @@ static void omap_usb2_init_errata(struct omap_usb *phy)
 		phy->flags |= OMAP_USB2_DISABLE_CHRG_DET;
 }
 
+static void omap_usb2_put_device(void *_dev)
+{
+	struct device *dev = _dev;
+
+	put_device(dev);
+}
+
 static int omap_usb2_probe(struct platform_device *pdev)
 {
 	struct omap_usb	*phy;
@@ -373,6 +380,7 @@ static int omap_usb2_probe(struct platform_device *pdev)
 	struct device_node *control_node;
 	struct platform_device *control_pdev;
 	const struct usb_phy_data *phy_data;
+	int ret;
 
 	phy_data = device_get_match_data(&pdev->dev);
 	if (!phy_data)
@@ -423,6 +431,11 @@ static int omap_usb2_probe(struct platform_device *pdev)
 			return -EINVAL;
 		}
 		phy->control_dev = &control_pdev->dev;
+
+		ret = devm_add_action_or_reset(&pdev->dev, omap_usb2_put_device,
+					       phy->control_dev);
+		if (ret)
+			return ret;
 	} else {
 		if (of_property_read_u32_index(node,
 					       "syscon-phy-power", 1,
-- 
2.49.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
