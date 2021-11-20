Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC0E3C433F5
	for <linux-phy@archiver.kernel.org>; Sat, 20 Nov 2021 06:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UvBMq+3Sg8u6wbyTRXWOjzwM/Y0DHKIo8Me9hbmMfuM=; b=N1kfwsawxfe7WS
	sBouQ0M800t6lze+u7sx5zU+3SzbTAz7//nIcxtCWbm1bAP5rJrxxeBjfirQS+Kpd80NkmRhBeytK
	/EotBhX6RzN0iS/IkCKGfa71znBjU0zCumRf3btn5QHdeS0KXPo2RNS6uTyRaozs+h7u8+TMm4cyv
	I2WQCoAGlZpNuIUsBD20WMVj05UQne3VML+EXEdiS1RnGsAMQq2u6AZXnIMWda7e+I4U9SgN3a0lt
	bbkCQW0toD3zVegOP6GLUHTmpzB7+TEwPwf8l3vSAgoyQv59fWPW3xVIuBKKcAO4Uquq2dAH+SHAo
	2A6FmHcux20HdvBz0njA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1moJf9-00C6i6-AG; Sat, 20 Nov 2021 06:15:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1moJf6-00C6hL-2S
 for linux-phy@lists.infradead.org; Sat, 20 Nov 2021 06:15:45 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 631D360E9C;
 Sat, 20 Nov 2021 06:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637388943;
 bh=BlDTN/fYlJgH1aIXEB5pPtTmQOvs8AurQM7U/adzSb8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DSjWLGjOpcuTRyI/E/SMlkyA9a5G5FqpidFQ++GLEn/RyeaFa29Ri561m4pIRkvMb
 4sGMD5jJ5wgkjxtip31RBavsB217c/RQpxGrVi+GtPrOLYlUu/LgDcceTegKIqCQ8Z
 joB9vwIEGDlJJRLEIXMkZNgvuFNogmJ5/IXXiyb1Jil2qiJwB+zGn8Xj+I/GEqOAQi
 kFPfK495BX4HJN/JHKWO4WUXqY5rFxRo3x0Ba4jl6UPAQidGZnMXoBRIloawfBn+Dh
 U2hr3V5tnAY+tQPyeVYS7QPHT3yH/d18UQVLJpKRzRSiuqpRNrgyyGcjgsI9wMzqv6
 G4LCj2MENaIxg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Roger Quadros <rogerq@ti.com>, Liam Beguin <lvb@xiphos.com>,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] phy: ti: omap-usb2: Fix the kernel-doc style
Date: Sat, 20 Nov 2021 11:45:31 +0530
Message-Id: <20211120061531.410771-2-vkoul@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211120061531.410771-1-vkoul@kernel.org>
References: <20211120061531.410771-1-vkoul@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211119_221544_147230_423E316F 
X-CRM114-Status: UNSURE (   8.01  )
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

The documentation uses incorrect style, so fix that.

drivers/phy/ti/phy-omap-usb2.c:102: warning: Function parameter or member 'comparator' not described in 'omap_usb2_set_comparator'

While at it, use a single line for function description

Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
Changes in v2: use () for function names

 drivers/phy/ti/phy-omap-usb2.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/ti/phy-omap-usb2.c b/drivers/phy/ti/phy-omap-usb2.c
index ebceb1520ce8..3a505fe5715a 100644
--- a/drivers/phy/ti/phy-omap-usb2.c
+++ b/drivers/phy/ti/phy-omap-usb2.c
@@ -89,9 +89,9 @@ static inline void omap_usb_writel(void __iomem *addr, unsigned int offset,
 }
 
 /**
- * omap_usb2_set_comparator - links the comparator present in the system with
- *	this phy
- * @comparator - the companion phy(comparator) for this phy
+ * omap_usb2_set_comparator() - links the comparator present in the system with this phy
+ *
+ * @comparator:  the companion phy(comparator) for this phy
  *
  * The phy companion driver should call this API passing the phy_companion
  * filled with set_vbus and start_srp to be used by usb phy.
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
