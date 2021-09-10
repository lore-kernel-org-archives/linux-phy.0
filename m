Return-Path: <SRS0=5sx/=OA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E472C41535
	for <linux-phy@archiver.kernel.org>; Fri, 10 Sep 2021 18:42:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 07FEA61263
	for <linux-phy@archiver.kernel.org>; Fri, 10 Sep 2021 18:42:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 07FEA61263
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FSz6Y39jrtQMKwbSNseWlgKK05przI1cqJKJZN2RhU4=; b=thLcX4bOobNPBL
	2bqKXhCJPsEcYvfR68UKTd/H60Z10zF8k5P5oLkPNmgA2DcdwfoI9PpI3YiFf/C1ulaMZxAtGQcl0
	6AQUzHesbtcKRuSAqUlsZxTFzVGzNdmpztVMhMSCgh4CEyvgQo4IoijzKAoFKXW6ZdUD9QJlaqtlZ
	PuOKGvAd0GIioVwoF25TC3G35XwzheGOpzSQY8QfCCYcjQBSAwg5EMc5HQLKpo4xWGiEpVgeUjwmm
	jQt0XUlETmNgJqCGZ3K/XuDoJrjAAlQYj97xreR9GthWACLp2/y3YPVs0lH7nOUnvp2h4wOyxVNfy
	XxLrGbaX1GhEf/EIJzow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOlUH-00DMF1-AL; Fri, 10 Sep 2021 18:42:57 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOlTh-00DLqZ-NW; Fri, 10 Sep 2021 18:42:23 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 24D2D240004;
 Fri, 10 Sep 2021 18:42:14 +0000 (UTC)
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
Subject: [PATCH 01/22] clk: sunxi-ng: v3s: Make the ISP PLL clock public
Date: Fri, 10 Sep 2021 20:41:26 +0200
Message-Id: <20210910184147.336618-2-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210910184147.336618-1-paul.kocialkowski@bootlin.com>
References: <20210910184147.336618-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210910_114221_906743_767A0309 
X-CRM114-Status: GOOD (  12.34  )
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

In order to reparent the CSI module clock to the ISP PLL via
device-tree, export the ISP PLL clock declaration in the public
device-tree header.

Details regarding why the CSI module clock is best parented to the ISP
PLL are provided in the related commit.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 drivers/clk/sunxi-ng/ccu-sun8i-v3s.h      | 1 -
 include/dt-bindings/clock/sun8i-v3s-ccu.h | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-v3s.h b/drivers/clk/sunxi-ng/ccu-sun8i-v3s.h
index 108eeeedcbf7..48e7e2b9fcf8 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-v3s.h
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-v3s.h
@@ -23,7 +23,6 @@
 #define CLK_PLL_DDR0		8
 #define CLK_PLL_PERIPH0		9
 #define CLK_PLL_PERIPH0_2X	10
-#define CLK_PLL_ISP		11
 #define CLK_PLL_PERIPH1		12
 /* Reserve one number for not implemented and not used PLL_DDR1 */
 
diff --git a/include/dt-bindings/clock/sun8i-v3s-ccu.h b/include/dt-bindings/clock/sun8i-v3s-ccu.h
index 014ac6123d17..75f15e2d5404 100644
--- a/include/dt-bindings/clock/sun8i-v3s-ccu.h
+++ b/include/dt-bindings/clock/sun8i-v3s-ccu.h
@@ -46,6 +46,7 @@
 #ifndef _DT_BINDINGS_CLK_SUN8I_V3S_H_
 #define _DT_BINDINGS_CLK_SUN8I_V3S_H_
 
+#define CLK_PLL_ISP		11
 #define CLK_CPU			14
 
 #define CLK_BUS_CE		20
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
