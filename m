Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47201C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  2 Mar 2022 22:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CWBgJNnlFZHiolo+VWxx+16FWs6ADLzl0w2zeNFPEOc=; b=SwEvh7VqeM53Sk
	kMOphKGEK3UdZCtHj9XQebtkXssdrZ0OKudQEA/d6/+RMRsBajtj6nQT2uXpS430sVY46WUshy1Hu
	r/fJa5jJ1gUonUTid3kCy6G7ByRZjDqURKY9vOoYwifjx5LBzy6HcJd99Vru3WmWW6z/5XhZ8ANBS
	COco9uwUUxANUpJnYkKqt5EYucesAcBQn4UQkoEAr9ovGxCeK0Yg8xgQT1XVB/5Jd5fuUr6Ck3wsU
	LSqdM02PPT/sTUhgNrH19D0ZokY/guu/lu1oa/dPRnKI1flchGRbpgyOsKNp8YNEzUh1I49a9ajCZ
	h64obvX9PvZoaEZ2Wfpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPXBI-004Tfh-IG; Wed, 02 Mar 2022 22:10:48 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPX8l-004SB9-7I; Wed, 02 Mar 2022 22:08:16 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 34057E000E;
 Wed,  2 Mar 2022 22:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1646258889;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BBqPZZqPY9lU8X5Wjn7tKR9Ob2xGkc1rtG7l6mI1mps=;
 b=OnW6YeCcBytSObB4yBq52lv2w/gBp2a7JMOdxNPfW9tbRP2unuNlDhmmoCB5v7H17HfLUT
 aCFtNumO8BuAv77Ukcbhhqezs7hM0Qesmx4vCFMX6DBTZHbpor/7zk/1rsWwUowsU4gKSb
 8UKikF4fLyfc+TPcmww/jN6nMQLQy4oAFatb/I7+Z+CBdptvUCzMdvudH5qcmIQheXiy0L
 8CYtspdiiDYqgQOV9koxS6VErciAhSLlbnnryucojIPdJdpMB+st/1kkGywWI+B3khv4Kz
 dugkXx3qQARsnYLLbPb2asrvu1Rg5z4+FvTCxLruMO60GRy168BeNZ/ZKLu94A==
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: [PATCH v3 9/9] MAINTAINERS: Add entry for the Allwinner A83T MIPI
 CSI-2 bridge
Date: Wed,  2 Mar 2022 23:07:39 +0100
Message-Id: <20220302220739.144303-10-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220302220739.144303-1-paul.kocialkowski@bootlin.com>
References: <20220302220739.144303-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_140811_444544_BF97FADB 
X-CRM114-Status: UNSURE (   9.27  )
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
index de575061362e..ed1758d194a5 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -760,6 +760,14 @@ T:	git git://linuxtv.org/media_tree.git
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
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
