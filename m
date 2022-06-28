Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4679BCCA480
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jun 2022 12:23:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b9jIR1S16CHi7KadOlQaYutPv5EO6ugfAmzYn+hhO7Y=; b=L6BD5sOmAss7Tu
	PNuOm2S8cWn7weWcAn2mvaZQciCJ+xtBNEEDaD9Wb7BZWIjozRPdhJ7mWIDKK7fZ7qOn13UKO6GPj
	MtfMYNhnTBENFRIPckO3PwaDf7KtFfyoMsfeR1OdUd5jRyDKoqAJBrnuoEm7eft5BxQr43wrm61/M
	hk/4ttz29ORN+BXXDAd3xFiaqc8ndywnGy1v/ZhS3r40K+5RTeN/1+4/GG6YAqGvH/azeAHUX7+LE
	pX6UaBPEaS+M5ltYjZczZJNsl2IuP0V/hQLxeAGX/a/+v8dRwvLKAuIry0SjOtiaU71R8qn9dZRaU
	g4Av9zzHf5Fg0Jq9qy+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6AFU-0069Yy-Lz; Tue, 28 Jun 2022 12:23:20 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6AFR-0069X3-Ip
	for linux-phy@lists.infradead.org; Tue, 28 Jun 2022 12:23:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1D87C60FFD;
	Tue, 28 Jun 2022 12:23:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E02C9C341CA;
	Tue, 28 Jun 2022 12:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1656418996;
	bh=624BIf6Kfhc5tEzLjhEHS2z9HYf+RPyNRQJ7oltMkMA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=sVyNz+LD5Bzl+G6SrVV0hsBlc31CCNV7+hQ9xo+8NhYcuUaqVIAHHZseLxwNAKzMz
	 8G2+gcfGqAdvaz6BI4f60EKoSzJ1idQJRyi16zqBlR99e3/39XWBHiPdBoy1mWAHQD
	 T19hdhQnQy/Fa67QiVmbSLlQ4dDhFZbUxJgjScELv1UTUAr+DA4rYLQ94IC/tod/jy
	 bG+DYcrnz4kvcHw5Iy/iLh4ApjmvQE9gbOB+UTE8HtU86/rJkjiZrSttzgH8Sh4PtH
	 BcbcLm94HSn3I6qKf5JQUu2qNiH2VsQegYv1hFmj9V3pD9KPKYoAMhyaRRc9WwDUDG
	 ZGvF7qxteSUcw==
From: Roger Quadros <rogerq@kernel.org>
To: kishon@ti.com,
	vkoul@kernel.org
Cc: vigneshr@ti.com,
	t-patil@ti.com,
	sjakhade@cadence.com,
	s-vadapalli@ti.com,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Roger Quadros <rogerq@kernel.org>
Subject: [PATCH 2/7] dt-bindings: phy: Add PHY_TYPE_USXGMII definition
Date: Tue, 28 Jun 2022 15:22:50 +0300
Message-Id: <20220628122255.24265-3-rogerq@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220628122255.24265-1-rogerq@kernel.org>
References: <20220628122255.24265-1-rogerq@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_052317_697682_6CB0E5B4 
X-CRM114-Status: UNSURE (   9.43  )
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

From: Swapnil Jakhade <sjakhade@cadence.com>

Add definition for USXGMII phy type.

Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
Signed-off-by: Roger Quadros <rogerq@kernel.org>
---
 include/dt-bindings/phy/phy.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/phy/phy.h b/include/dt-bindings/phy/phy.h
index f48c9acf251e..6b901b342348 100644
--- a/include/dt-bindings/phy/phy.h
+++ b/include/dt-bindings/phy/phy.h
@@ -22,5 +22,6 @@
 #define PHY_TYPE_QSGMII		9
 #define PHY_TYPE_DPHY		10
 #define PHY_TYPE_CPHY		11
+#define PHY_TYPE_USXGMII	12
 
 #endif /* _DT_BINDINGS_PHY */
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
