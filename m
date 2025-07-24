Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 165F8C87FD5
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 15:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KndMZBfschL4xTU+cwuGcfhkHyuuclAY47r6b2utQGg=; b=cJi/3SCjMlHPI6
	7Njav7nj55Cwcqnvkt2hWJoVKtw0Mytg+zJk1kPBJdTtPttlrP6NIDvJpT7+BPu/hz5BJaCuOBjt0
	6attzczsxed/NHlMJ18n+Ycvx+i+3k6zRoyP0qnw6RX9I00VIs1GlSIqoGRSrtMEBxj2CiEvESu7X
	YJviZYLWybW0dNPf5PIwdwZeAq/Ex9mMHyhk0jmz5dvYPlYu0GE0JWUUd3vBdu99O0b2QyuUazUB5
	6agQshDroKAhk6q7ECn62htGrLBoVpvbZTyDx4pBMU+wMHJFecdcD3GzdMlWqvl/JCB7tMeXTdOtG
	8Y3a/2Q27G8iXoizp54g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uexpC-00000007qLq-3UAq;
	Thu, 24 Jul 2025 15:25:38 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uevod-00000007Ufm-1JGP
	for linux-phy@lists.infradead.org;
	Thu, 24 Jul 2025 13:16:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 88C97A56346
	for <linux-phy@lists.infradead.org>; Thu, 24 Jul 2025 13:16:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35BCEC4CEED;
	Thu, 24 Jul 2025 13:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753363014;
	bh=Ufb4I9b7UbOJb/LBEgBQ4eDXX/Lr+n8V8X82kt0qXmI=;
	h=From:To:Cc:Subject:Date:From;
	b=hQSIPIgy/xA0yrHq2ilpQJniwFRpmjynlGvKCgYvPL7Ijumr4oFgdF4hEfIGZQqWB
	 sFQKL+8hU7mlQ9yJTK36jLq+ZeFtr7zY/gO1appgWFUbYc3JovCklufsrA22syupeU
	 8BzbhUvdryV7IwU6KZ1GEwcUBA7/ytMU5LKzelcTAEO8JyC8hFJXq/DogZDaOdEIXG
	 w5p0x+mGPD9dkENKCQoXs9kPaXa6ILWnnc9sQCpFD3h5kiC6VQzN4sQiDT0rHwrGLQ
	 Y4vD3LEbCNmE+GzVyg31TzCpyiDRbCMKDM/rQenA5KUVBk51aiG556axy4X+OKDasj
	 9QhpOEajWkI6A==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1uevoX-000000000hf-368V;
	Thu, 24 Jul 2025 15:16:49 +0200
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH] phy: ti: omap-usb2: enable compile testing
Date: Thu, 24 Jul 2025 15:16:23 +0200
Message-ID: <20250724131623.2662-1-johan@kernel.org>
X-Mailer: git-send-email 2.49.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_061655_411995_49913910 
X-CRM114-Status: UNSURE (   9.23  )
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

Nothing seems to prevent the driver from being built on non-TI platforms
so enable compile testing for wider build coverage.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/phy/ti/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/ti/Kconfig b/drivers/phy/ti/Kconfig
index b905902d5750..b40f28019131 100644
--- a/drivers/phy/ti/Kconfig
+++ b/drivers/phy/ti/Kconfig
@@ -62,7 +62,7 @@ config OMAP_CONTROL_PHY
 
 config OMAP_USB2
 	tristate "OMAP USB2 PHY Driver"
-	depends on ARCH_OMAP2PLUS || ARCH_K3
+	depends on ARCH_OMAP2PLUS || ARCH_K3 || COMPILE_TEST
 	depends on USB_SUPPORT
 	select GENERIC_PHY
 	select USB_PHY
-- 
2.49.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
