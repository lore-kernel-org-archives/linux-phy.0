Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88B72CD37AC
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 22:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7rvMtlfo8MeH03F4u2VGJi5vJbZf3/JJt4db/LeHBOk=; b=3bZ9y+VlWsOUyo
	s9rv0D138Ybuwyi1o6LmZtuXo0lW/T9OTjAsy8hiOhr145Q/VYmrHVez1aDMpAmYpa9eX4sHCC/VX
	em2UQ2Eyn879NEdRV64etVTp9wFwdB+VYIxBttJ8u2p5kcgqZBUB+s5TZ6Y5fGaylBoZ8Md2r9mda
	iTF612XlaIpXNmtUsNmX28bUymyakT9LZ9SFhehviLXAl2VckKK7djQIv1Xbw3XEt7wSEbhaOtzv0
	iqa4cdZOp4JPO/fL/wppXIwZG9813+LE7FKSNVxpWiU7X8/jxqoh4/zv6qGr++AB5IR4+C/8oKZ8E
	/5XOQiiTeUrhHeAZp67w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNHgD-00000003t0E-0v3I;
	Wed, 13 May 2026 22:03:49 +0000
Received: from mgamail.intel.com ([198.175.65.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNHgA-00000003swZ-1akz
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 22:03:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1778709827; x=1810245827;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=DaSEWkcGChJRbPa/Kx7Iym2uzGhsNUktEg9iDbhkjbA=;
  b=HNlbh1hQJ/hWhW6EuuzgAaI/vgcMVLPrGuAeSAcQAxLYxv9IzeI49/GQ
   LcA8sRL9hHsPPasB371tve6w4QFsnCsurc9wcojej/UZFvXcPiKB7Pm98
   Fgbh3c7Y9gNi6aS6jSDmh7OE0JfhF7p403j3bOHy9x0OxM0YSGrbZHrGs
   foXX4jbVbOKnFUxtrLicX82OLr+CjBe9G81aS7pLZwa64dXIi+QsAdsYD
   /5BjWZTKEgk4UYivT5klteoJWQMFdCOSBUaswCorPEingrkWMxBS//c2N
   Pa9ZvmEnPQKxGqcfDqIbpOku+ejuJduCbT7BD09m2QFi+EgRqXW+p10sx
   Q==;
X-CSE-ConnectionGUID: RispkRgDTKaJlZRYJSqO/Q==
X-CSE-MsgGUID: 96pWbQmWQE2NEvBYPiiCWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="90749941"
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; 
   d="scan'208";a="90749941"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 May 2026 15:03:46 -0700
X-CSE-ConnectionGUID: tLdInD+aSRSBc/tIw5b1wA==
X-CSE-MsgGUID: AcF7mBz3S9GpOE2PnWCriQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; 
   d="scan'208";a="237224944"
Received: from black.igk.intel.com ([10.91.253.5])
  by orviesa006.jf.intel.com with ESMTP; 13 May 2026 15:03:43 -0700
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id A4B759E; Thu, 14 May 2026 00:03:38 +0200 (CEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Peng Fan <peng.fan@nxp.com>,
	linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	Ulf Hansson <ulfh@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: [PATCH v5 5/6] phy: phy-can-transceiver: Decouple assignment and definition in probe
Date: Thu, 14 May 2026 00:01:30 +0200
Message-ID: <20260513220336.369628-6-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260513220336.369628-1-andriy.shevchenko@linux.intel.com>
References: <20260513220336.369628-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_150346_502213_AFB826A4 
X-CRM114-Status: GOOD (  12.16  )
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

The code like

	int foo = X;
	...
	if (bar)
		foo = Y;

is prone to subtle mistakes and hence harder to maintain as the foo value
may be changed inadvertently while code in '...' grown in lines. On top
it's harder to navigate to understand the possible values of foo when branch
is not taken (requires to look somewhere else in the code, far from the piece
at hand).

Besides that in case of taken branch the foo will be rewritten, which is
not a problem per se, just an unneeded operation.

Decouple assignment and definition to use if-else to address the inconveniences
described above.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/phy/phy-can-transceiver.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
index 3cebaa54f7db..30330499585b 100644
--- a/drivers/phy/phy-can-transceiver.c
+++ b/drivers/phy/phy-can-transceiver.c
@@ -128,8 +128,8 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
 	struct gpio_desc *standby_gpio;
 	struct gpio_desc *enable_gpio;
 	struct mux_state *mux_state;
-	int err, i, num_ch = 1;
 	const char *propname;
+	int err, i, num_ch;
 	u32 max_bitrate;
 
 	drvdata = device_get_match_data(dev);
@@ -138,6 +138,8 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
 
 	if (drvdata->flags & CAN_TRANSCEIVER_DUAL_CH)
 		num_ch = 2;
+	else
+		num_ch = 1;
 
 	priv = devm_kzalloc(dev, struct_size(priv, can_transceiver_phy, num_ch), GFP_KERNEL);
 	if (!priv)
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
