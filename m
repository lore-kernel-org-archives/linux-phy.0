Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92D47C433EF
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 18:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bV9cKZBy4OXSfYq4jkdg6JomFOrMOmp+NcSuYYalTdo=; b=Xw6l3b/ozXNYyG
	C1udh892IZLzaX0qc/GrclUjb6lYikGEe2uhOU5DBilvF1MyNrlHGcWy5yMhNMoy6F1eQarOQavo4
	AhYCRih/7sAQrmBW8vlXde3rW8niRNAUC0UP3HCoGdn/R89u7e5iKiz+hcBIkOTB06o/7iebo1nCu
	lxyf/ctuwIJDO6jIagjM/hhH9cJ4Odesyu4bQP9REKQk5rEo5pQbBkde6dQGt0Rbf8UsOqJ675eW7
	yF8UIRGBFa8oR2+NTAgOtVIlRaujmKUFvSkkY1W+uD7KyXPDIoOjFdKd5nzVl8LXDm2uNloem/UV9
	UzrkTOyMHjHSo2Zbpf4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGQDp-006ztx-KI; Sat, 05 Feb 2022 18:55:45 +0000
Received: from relay10.mail.gandi.net ([2001:4b98:dc4:8::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGQCt-006zFm-67; Sat, 05 Feb 2022 18:54:48 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id E8D0F240007;
 Sat,  5 Feb 2022 18:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644087285;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rrHhQG98XjZGaFVSafcd5TS6lrLI7/LjgMEMco8ughE=;
 b=VyKk4OhmysKmQckNz1/RaX4q49SQLj0nMp5B52oNIoAFAYBOd5GrFL0dp/FCh7EkvqHSJH
 CU3qWKCK0SH5OH4jcn9pzQqrl8/XW4p2Ns6EndDH0pSLqPs3axmFic9jWrS/q0by4cwBNR
 ZPym4GV36bZouyoDHF3Lqd4O3WI6jGbQC4RNJTqmYBoUDlpALBtU4gB2M4w0pkoWajBACX
 xP5GITANtPwuifCu0FpBa4svfz9Kr0BX0aFLwnyiADNF5VvRWpwV4rxGAXHQwoK3V7Szss
 SYDVLSBmaA5p+zkKjd41aZrHIWPSRy2PDYa9vHlZaWN0geXgjWtlNmkWZOdtLQ==
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
Subject: [PATCH v2 03/66] clk: sunxi-ng: v3s: Export the MBUS clock to the
 public header
Date: Sat,  5 Feb 2022 19:53:26 +0100
Message-Id: <20220205185429.2278860-4-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_105447_396198_0FE39B6C 
X-CRM114-Status: GOOD (  11.71  )
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

In order to declare a mbus node for the v3s, expose its dedicated
clock to the public header.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 drivers/clk/sunxi-ng/ccu-sun8i-v3s.h      | 2 --
 include/dt-bindings/clock/sun8i-v3s-ccu.h | 2 +-
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-v3s.h b/drivers/clk/sunxi-ng/ccu-sun8i-v3s.h
index 108eeeedcbf7..e99c4a8431c9 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-v3s.h
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-v3s.h
@@ -45,8 +45,6 @@
 
 /* Some more module clocks are exported */
 
-#define CLK_MBUS		72
-
 /* And the GPU module clock is exported */
 
 #define CLK_PLL_DDR1		74
diff --git a/include/dt-bindings/clock/sun8i-v3s-ccu.h b/include/dt-bindings/clock/sun8i-v3s-ccu.h
index 014ac6123d17..ff4d49d6a740 100644
--- a/include/dt-bindings/clock/sun8i-v3s-ccu.h
+++ b/include/dt-bindings/clock/sun8i-v3s-ccu.h
@@ -101,7 +101,7 @@
 #define CLK_VE			69
 #define CLK_AC_DIG		70
 #define CLK_AVS			71
-
+#define CLK_MBUS		72
 #define CLK_MIPI_CSI		73
 
 /* Clocks not available on V3s */
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
