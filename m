Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6A0AC433EF
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 19:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WXorxMafiuRRw+jEiIEwqNr4y95i7ZXrg5FullHl2ss=; b=xeb/aTdLpAGfqf
	rcVhqPKJ1LH6hyIqeQ6a2gK1Xee68tfVpcOzUFgXo7b7qq2kVpS42OwB5rzI1SAbrh1IZb3ywHg25
	X1P/CsUybnPWRK+1/E9uuyN2jN4UsCG5P5EKtZ0C+Fd7tw0WXeWQ66/lQVHc8ENqniVWhuODdPVll
	UOQ+fVVdt1r8a5mjPJutCDairiALnzwQSVSb9vcTCBlR8GX8JBD6c4X+xmg913csPap9YdryxrwQA
	B1FXUijZfQn6eV6FgAYv3fCq86Wam/7BroYShwM7s9rS7QcLJhlGzgw8n8mzxfW1SiUVvfGDcdYTv
	CF1+zX9FCAcrcB4sb3HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGQLP-0074MJ-TB; Sat, 05 Feb 2022 19:03:35 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGQDB-006zSJ-SQ; Sat, 05 Feb 2022 18:55:10 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id B1A4924000A;
 Sat,  5 Feb 2022 18:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644087304;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uIMPCjtl/VFJr235X/YOqPgWGa/FOuNtQeET3E0lg1s=;
 b=hpuGgN7NRouDqr2x8yPimsw48LzDcqB53a7KwBHegH7IzA2HPHY0uC6ZI5ClRJt4bMKpFD
 QItxvOaUOLpFCNBurSZ+yJDuobyRoWgpZLS5q7GUM6yPtq91eVg5Lqj9f4+H+a8YwFVIyO
 eMlgEuZp1oQhBUsxiyy0MIz1W0MWiKVeB5EX6YuPx3jItsC2fPN9ZS67ChQPAiPAF0Dey7
 Ko/9EiR338iDLAo09qsV3VO+UchDNRNwgsXHoxt0J6Czmb1J7iy6dSYcg1zRHoTu0laZ+s
 oieN2cZay41Si2+l7VpoV9seZYRHk527bHngOblBRH9nXEBRIDwwdKLhepj14Q==
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
Subject: [PATCH v2 14/66] MAINTAINERS: Add entry for the Allwinner A83T MIPI
 CSI-2 bridge
Date: Sat,  5 Feb 2022 19:53:37 +0100
Message-Id: <20220205185429.2278860-15-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_105506_090134_046B7956 
X-CRM114-Status: UNSURE (   8.42  )
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

Add myself as maintainer of the Allwinner A83T MIPI CSI-2 bridge media
driver.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 040c54b2d767..46582119e767 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -759,6 +759,14 @@ T:	git git://linuxtv.org/media_tree.git
 F:	Documentation/devicetree/bindings/media/allwinner,sun6i-a31-mipi-csi2.yaml
 F:	drivers/media/platform/sunxi/sun6i-mipi-csi2/
 
+ALLWINNER A83T MIPI CSI-2 BRIDGE DRIVER
+M:	Paul Kocialkowski <paul.kocialkowski@bootlin.com>
+L:	linux-media@vger.kernel.org
+S:	Maintained
+T:	git git://linuxtv.org/media_tree.git
+F:	Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi-csi2.yaml
+F:	drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/
+
 ALLWINNER CPUFREQ DRIVER
 M:	Yangtao Li <tiny.windzz@gmail.com>
 L:	linux-pm@vger.kernel.org
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
