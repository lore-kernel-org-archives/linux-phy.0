Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 767D7C433F5
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 19:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oNrQynby/DYR1Z12HgvCqICM5owKYLUZYYhbzLlfBvc=; b=HcCDuEYwR6NihD
	KOIpCBwWURDF41SyOWcxviHCG/hiIsjcgyp6a69YqOQbfGCcVWIhaP85iehKXV2bMaMBcCuvhf77x
	vZuJCUcQ6Q5G0zCJ7Z8ORpGrqmdFmyGmkZBqAEDkIMaeAcqzKpRQCcmWg5RHZCtrsqbF6Q7FxKYbv
	LeQV39+NjDLVhfttjQmWoQCHWHugLvYBPq0tuPnpZu+AeRzlEjzMQ4RmfQo9IdQ7cZZsIOsmJLjLd
	yFuyC4MXOiOlHjgjCf5XDCPUGj7BSfDXDTW5AH0u7qhrTkJyIqMrZhQtBH+dapPsXqvgqWtAmXlx3
	hulAUZOmHLwLi8yk7unQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGQwe-007Iv3-FT; Sat, 05 Feb 2022 19:42:04 +0000
Received: from relay10.mail.gandi.net ([2001:4b98:dc4:8::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGQER-0070JK-QU; Sat, 05 Feb 2022 18:56:28 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 4002024001F;
 Sat,  5 Feb 2022 18:56:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644087381;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lzYEV15xzku+y6IihxRZLFkuLWL8R00vJmdalNUtBmc=;
 b=MYkS4EhaaywVXqr2wgBxKHdx/kQZ2HQdCmK8qLCCc5LTYKSEh0/eFFI/ysJUseIUnkVU8f
 9QEW6k2AqIzh4VqsMb4T9IPfIhukNT1DZm5Y2i1XglNeQCmEZUBOx6WgTzl1vCfaa7bCWU
 KwQZJvX0hRHYMpo3RFSmE2cb3/i0RMqQo/qvJm6s/MiRNgqw6fATmOJw31ZH4LvA05ookT
 AWoTsqWmqEz1/v3thLFYemWGg6Q+eFIboDpJ38BYdL0D2A4Ay1seVg5k5aiGUdlJV7kR8m
 Lb16LI9oLqpuMx8LIVY1pP8kYgVBI6BeB2KQgRCj/c/Tw/JP7Rl/dNZhzkeSNg==
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev
Cc: Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: [PATCH v2 60/66] MAINTAINERS: Add myself as sun6i-csi maintainer and
 rename/move entry
Date: Sat,  5 Feb 2022 19:54:23 +0100
Message-Id: <20220205185429.2278860-61-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_105624_085250_D463C9D4 
X-CRM114-Status: GOOD (  11.52  )
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

Given the substantial rework of the driver that I carried out and the
knowledge acquired about the hardware along the way, make myself a
maintainer of the sun6i-csi driver.

Also rename and move the entry while at it since the driver is not
specific to the V3s.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 MAINTAINERS | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 46582119e767..0e65b9e5123f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -751,6 +751,15 @@ T:	git git://linuxtv.org/media_tree.git
 F:	Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
 F:	drivers/media/platform/sunxi/sun4i-csi/
 
+ALLWINNER A31 CSI DRIVER
+M:	Yong Deng <yong.deng@magewell.com>
+M:	Paul Kocialkowski <paul.kocialkowski@bootlin.com>
+L:	linux-media@vger.kernel.org
+S:	Maintained
+T:	git git://linuxtv.org/media_tree.git
+F:	Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
+F:	drivers/media/platform/sunxi/sun6i-csi/
+
 ALLWINNER A31 MIPI CSI-2 BRIDGE DRIVER
 M:	Paul Kocialkowski <paul.kocialkowski@bootlin.com>
 L:	linux-media@vger.kernel.org
@@ -5064,14 +5073,6 @@ M:	Jaya Kumar <jayakumar.alsa@gmail.com>
 S:	Maintained
 F:	sound/pci/cs5535audio/
 
-CSI DRIVERS FOR ALLWINNER V3s
-M:	Yong Deng <yong.deng@magewell.com>
-L:	linux-media@vger.kernel.org
-S:	Maintained
-T:	git git://linuxtv.org/media_tree.git
-F:	Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
-F:	drivers/media/platform/sunxi/sun6i-csi/
-
 CW1200 WLAN driver
 M:	Solomon Peachy <pizza@shaftnet.org>
 S:	Maintained
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
