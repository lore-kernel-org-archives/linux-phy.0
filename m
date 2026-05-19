Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EBAFCD4F52
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 08:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rkHREjoeW3I0A21JazcJmStoMm2FNjb9BC6lE9O337g=; b=SFx3iDBE4XN9UA
	mwhsmC2aft6ataYuoMo6hp0c/iLbPGoqU8l4tR8BIKqLpY8CbAtihir2mFXYGAeFXOUx8mG5yB1mL
	0LKH/aIuASuLGr+utsx5YaF4z9Vw1Gh90Rami+k5DzJq/7BkYkzPnkF4VxSW46XMHMCvrZJ0RBrky
	n9MWQ2wYH7rmsZaNL4FZp6jtWZ8jjeSyyI82OrxSgvROgNpPNYZ80B5kgNwpDB0BwexT0RjR45j5J
	Y/MTI/KkiDL8I8oKxOX4NsyILsuUNoqM0LCoZaWwSWlVgVLT9tcg/m5BVrfoPS0uzZorDU/Xg+psd
	K4asBfnTyKDpSm/Bk83g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPFjA-00000000egG-0xoW;
	Tue, 19 May 2026 08:23:00 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPFj7-00000000eex-0Umt
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 08:22:58 +0000
Received: from killaraus.ideasonboard.com (unknown [IPv6:2a01:cb1d:8f2:800:42d6:38fa:3bdf:70df])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id BED287CA;
	Tue, 19 May 2026 10:22:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1779178961;
	bh=hYlZyEpQKlvaRYOn/vvEd2xIlb5/gJLlCfc+0W0tFWQ=;
	h=From:To:Cc:Subject:Date:From;
	b=GoSrrN0IJbEciDZNlC/96TZaeW0hrG/BvkH7Mn1gkF0D5j5sE6HE1v4nncs6Eu4mN
	 gv4YfA7NJMBJXfLmAmYEAa2tPC4PGDVGtWWVi8Cg3y9Lm5u3QtWyHrh81zaE1j4WDM
	 kLe7J4aJeXxgBh9W75bAZAcYPbnppt2RlRszShUQ=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	vkoul@kernel.org,
	neil.armstrong@linaro.org,
	michal.simek@amd.com,
	Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
Subject: [PATCH] MAINTAINERS: Hand over phy-zynqmp to Tomi Valkeinen
Date: Tue, 19 May 2026 10:22:53 +0200
Message-ID: <20260519082253.40142-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_012257_586611_6EDACE8B 
X-CRM114-Status: UNSURE (   9.55  )
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

I volunteered to maintain the phy-zynqmp driver as part of my work on
the ZynqMP DPSUB driver. Now that Tomi has taken over the DPSUB, it
makes sense for him to handle the phy-zynqmp driver as well.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
I would also be happy if someone from AMD would like to take over
maitainership of the driver.
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 63389fea5d15..458f2b77d4ce 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -29293,7 +29293,7 @@ F:	Documentation/devicetree/bindings/memory-controllers/xlnx,zynqmp-ocmc-1.0.yam
 F:	drivers/edac/zynqmp_edac.c
 
 XILINX ZYNQMP PSGTR PHY DRIVER
-M:	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
+M:	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
 L:	linux-kernel@vger.kernel.org
 S:	Supported
 T:	git https://github.com/Xilinx/linux-xlnx.git
-- 
Regards,

Laurent Pinchart


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
