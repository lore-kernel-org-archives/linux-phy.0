Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C5ABC87FCE
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 18:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kCxFJxZHQ3/G87IBe0U//onDPsI12xGo1e0eakh1O70=; b=MNAeF6JZAQAjNH
	w1F2B6lITj3eZeXSn+T44CcT5O3p5TfFb1w8TzjNABcu506dDMVDvDp9slB04jZNBIWg+x/YL/STU
	tmYPfJOQN/MgcyHUpXmuTXBGmRqPsEXsqekibA8/3qA3GCBs0ev2rf2ElKIefcgkOFfb8VlIfUIa6
	qZuQvu2rsv8EQKzwHLGoD/tLeH3UEFG/2mjdNm9ykOTfB+saUWhLfv/aZdri/TVbDrT2b/bcqwlOC
	Qfr4vKX4aAJtMvjcERQbcDzaMVAEyNPkr3XvT8liWW4ArBOxJySidF7LDoxgYKOarXuqYoUQyw7zq
	RZROD8y8bT17VeRgx6JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uf0lg-00000008Crn-0g7c;
	Thu, 24 Jul 2025 18:34:12 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueyBZ-00000007vCU-3I7l
	for linux-phy@lists.infradead.org;
	Thu, 24 Jul 2025 15:48:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3B2BA46760;
	Thu, 24 Jul 2025 15:48:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4DF7C16AAE;
	Thu, 24 Jul 2025 15:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753372124;
	bh=J6IGtn8Fc/KM2mNRmZhCLjiAF/zyIMOes9oro7xnN4s=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lh8NZZbvSMUtdRFKC6IsYBTX5dWy5M6jCdw3UbJi9wBx5/toS3N1iGIHdez8P/8zL
	 bdjSQ66H2f5t1AaO8ANrCqMs40Xbm05Ca3RMdCAZYahR8fMUJ88I1YpWkpwnGetFrN
	 4bkcZ7mg/Qr9LUmQzzyVAV+wXspO+EmyH/R3dcI5fhLXq+H+F5qViR1rvYTb1eBuEo
	 I/ypmP5Gv56LUFy/msGPlCFQBfsQqR5NewdVeFjePWB71GQ4GukFQcNrezP1ik/DA0
	 MKX5qZZrYZ8UazNbWgDXlpu+lsQfKbHEcWJE27DLRomruI0Y7wlj74uza4p+A7mF1x
	 85aPoqIKAn7iA==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1ueyBU-000000004B9-36Lk;
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
Subject: [PATCH 06/11] phy: samsung: exynos5-usbdrd: drop unused module alias
Date: Thu, 24 Jul 2025 17:48:18 +0200
Message-ID: <20250724154823.15998-7-johan@kernel.org>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250724154823.15998-1-johan@kernel.org>
References: <20250724154823.15998-1-johan@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_084845_879955_4EEB0FDA 
X-CRM114-Status: UNSURE (   6.63  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

The driver has never supported anything but OF probe so drop the unused
platform module alias.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/phy/samsung/phy-exynos5-usbdrd.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index 917a76d584f0..804539d26cc7 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -2385,4 +2385,3 @@ module_platform_driver(exynos5_usb3drd_phy);
 MODULE_DESCRIPTION("Samsung Exynos5 SoCs USB 3.0 DRD controller PHY driver");
 MODULE_AUTHOR("Vivek Gautam <gautam.vivek@samsung.com>");
 MODULE_LICENSE("GPL v2");
-MODULE_ALIAS("platform:exynos5_usb3drd_phy");
-- 
2.49.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
