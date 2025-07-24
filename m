Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E13EFC87FCC
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 18:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=igpyA3Qt6SvdJG5+oibv4CowHigqeq6gvXthWLkUPig=; b=dMh+x7wmxjIKT1
	OqooQUqqcRRgB/EsGlJiLirGwmzgtWFMaak4R37mSOo+3DPOj/lNd/TZJJPtv5Zng1rLVmM1B60eV
	MyRGiRzrtUSluMEIXV7VJr8mlHUyAHpx6B6MfotdCR5eUT87iy6Ts40+keSzuCoanHA3602RO/UHU
	QjSYClOZ0ZNlYLUfe1WCPTxG5dbmi1elimACtGyzwNGpQKj8HcyZZofF8AcjolrRUjhn12vXxWH4a
	Cw9oVcyjln27Db9g3yM+F/GVeZ8NtE3eNDJXB3oGIGXxmY2ONeN2QLcTVy2qQ+YleDN53QkqvO8/R
	9sgR/v2JIVf079t+Oi9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uf0lf-00000008CrC-2WOa;
	Thu, 24 Jul 2025 18:34:11 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueyBa-00000007vCg-1R5Z
	for linux-phy@lists.infradead.org;
	Thu, 24 Jul 2025 15:48:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7A50C6141E;
	Thu, 24 Jul 2025 15:48:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13F92C4CEF6;
	Thu, 24 Jul 2025 15:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753372125;
	bh=xAB1FNxF2XyT59XNGYq9PeZA6YZnFTj1VUlXmpbMHqg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=VXQx+e0t6GjXvWcd/njVTfj6hJ1vIYWdjMsX0J5cyx6GwAHSwwDB7LTuH8r/T4vw0
	 ETjXy0zqtPqqIUz6+zXRMb15pnVYoBkMjn4iFQvYEoHwkoXFp1I+xwiGI721vBurnK
	 1ooVjaK11oN/l/dQWvLJ+uWbeenRnGaKOmhsivifxXsuc6tKybd7x6sR/C1kd81vqD
	 IsMjnX3NimeYhploi/bSWL3q2I4TKvsn3Th+mMRvJlJFmfLGgKdsz50ZiFQRJbeuMf
	 kRZOJ7wqv/Hf3Q1GMH7o+IgchrlFIrUpu/XPl073co8dKzbLUTaUXQshjRhOPujgiB
	 w/Zu8pYsPHsRg==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1ueyBU-000000004BC-3WFb;
	Thu, 24 Jul 2025 17:48:40 +0200
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Justin Chen <justin.chen@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH 07/11] phy: samsung: usb2: drop unused module alias
Date: Thu, 24 Jul 2025 17:48:19 +0200
Message-ID: <20250724154823.15998-8-johan@kernel.org>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250724154823.15998-1-johan@kernel.org>
References: <20250724154823.15998-1-johan@kernel.org>
MIME-Version: 1.0
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

The driver has never supported anything but OF probe so drop the unused
platform module alias.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/phy/samsung/phy-samsung-usb2.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/samsung/phy-samsung-usb2.c b/drivers/phy/samsung/phy-samsung-usb2.c
index 9de744cd6f39..d2749b67cf8f 100644
--- a/drivers/phy/samsung/phy-samsung-usb2.c
+++ b/drivers/phy/samsung/phy-samsung-usb2.c
@@ -258,4 +258,3 @@ module_platform_driver(samsung_usb2_phy_driver);
 MODULE_DESCRIPTION("Samsung S5P/Exynos SoC USB PHY driver");
 MODULE_AUTHOR("Kamil Debski <k.debski@samsung.com>");
 MODULE_LICENSE("GPL v2");
-MODULE_ALIAS("platform:samsung-usb2-phy");
-- 
2.49.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
