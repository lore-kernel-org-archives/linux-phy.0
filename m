Return-Path: <SRS0=azk1=QD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB49C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 10:40:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6A20960F44
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 10:40:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6A20960F44
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hw8rR8OkaK/ikGKbTztPUzh8Jr4TXJcrAq3Ic5H5i/c=; b=axKUVdvjzl1kdW
	/ftxT+76g5buV4qWixeTEbAdhDJ+XkAeW0utGwvPz+QsnnUl1QkYO5GG9uJJXKyDJBklfMJiAy2+9
	MALJFRuVFF/znjxLWkbYBIbVrXm9gQ5v/s0edX8zOJ3GRV1DygW8OBUFzgx27GizmCPaaA2Piy6Uq
	IfRBPJZJgZywlTPTtnSuz+BCGASR18ptHm54L/vtV704hsx2GOvTc2sKDol0Ggc+axjWg1GvfnbBh
	PaAXrX4BeV4DDJMDbrjS6GuwQ0rvlu1wtFtEd6sNgGxq4t3zWvO5YU6ZyYHI4WFpKaGjJlSG0PFet
	m50KWnRptTuOrel4XglA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmvtH-001F9Z-Ju; Tue, 16 Nov 2021 10:40:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmvsp-001F2G-NO
 for linux-phy@lists.infradead.org; Tue, 16 Nov 2021 10:40:13 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 02A606321A;
 Tue, 16 Nov 2021 10:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637059211;
 bh=iJwYXvXaD2Nx4JOgAG9JX3K+yBIfm4s3ShpHVYk75Ng=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FJSLVVXMro/VYVZx+Q/HlBDJdgK99TC8JMjD1/eEe4i/jWeJyEANge4hI36tY0ECn
 o8ZfnUqBxjUXUNAdG/X9GAKHF4DSFARnj8t4IsVVCIX3vtQ0++9YjMKbFjIxJEZ71m
 E/SS3R7mruo8BqjXiuth1BvK4Sfz1F9bN02i3bRxiWQk/2T27dGK4QjJ4IYmmhCqTA
 M1R/VJdOptNgWv5L3QCY66ijqVgCLBxV5ciOmcenIH4zBKDrtkjcvzWA14Ki846VEA
 ie2ygtF8TwJAwf1IU8iETqOe73SudZtAfGkfMGhYpMsYuYc2b7vjC+oMzCFnpfwIvP
 5ZVwNntyf4QTQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Roger Quadros <rogerq@ti.com>, Liam Beguin <lvb@xiphos.com>,
 linux-kernel@vger.kernel.org
Subject: [PATCH 5/6] phy: ti: omap-usb2: Fix the kernel-doc style
Date: Tue, 16 Nov 2021 16:09:50 +0530
Message-Id: <20211116103951.34482-5-vkoul@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211116103951.34482-1-vkoul@kernel.org>
References: <20211116103951.34482-1-vkoul@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_024011_824533_CE7D9FF3 
X-CRM114-Status: UNSURE (   8.09  )
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
 drivers/phy/ti/phy-omap-usb2.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/ti/phy-omap-usb2.c b/drivers/phy/ti/phy-omap-usb2.c
index ebceb1520ce8..2102b7f73ffa 100644
--- a/drivers/phy/ti/phy-omap-usb2.c
+++ b/drivers/phy/ti/phy-omap-usb2.c
@@ -89,9 +89,9 @@ static inline void omap_usb_writel(void __iomem *addr, unsigned int offset,
 }
 
 /**
- * omap_usb2_set_comparator - links the comparator present in the system with
- *	this phy
- * @comparator - the companion phy(comparator) for this phy
+ * omap_usb2_set_comparator - links the comparator present in the system with this phy
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
