Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFD55D3B7CA
	for <linux-phy@archiver.kernel.org>; Tue, 26 Nov 2024 09:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AKuA3Q7/auxnVy9hZN8GemA4dPVvENQ1dHd0BSTFoYk=; b=3kzBlp1oe5CBlJ
	3e237LXxUW+OrMR1q0DtSDN/dtqQh7ai0BBfaFqT4PgyG4YsKpxmJPJIU7JmxdG6b/w2XXUua5yly
	NZlUAIS0yQjDdVT4x6RkmXS73gjA+RjNPwm7TZEUgSYG1SagW8F281k4wX+MLHTgHWdqKx1CzNjcc
	/qhb5AsX9tInUKt2KdTIQBT9GzWqlxl4h8TtnMQdRRIgV86uQT1YC+yL3rrWa67ECQ4tGvH2xtgog
	rCwzjsfWsyk49KZYtuCw71cUnAPOJmn/wEWsryscnrS9q/DW8tFjuUQ/dbmkLYQyYW3bEVOLt8uHc
	GZ21vuh6V9J4JOTtNJzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrlF-0000000A7K8-1axA;
	Tue, 26 Nov 2024 09:21:33 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrkx-0000000A768-35eU
	for linux-phy@lists.infradead.org;
	Tue, 26 Nov 2024 09:21:18 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-43162cf1eaaso67086835e9.0
        for <linux-phy@lists.infradead.org>; Tue, 26 Nov 2024 01:21:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732612874; x=1733217674; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LKW3EfLpg9xj1NAX34ulRBb1/poqN6qEBq3WFAZfenM=;
        b=Pb09nx0+9zGEwk+QjwF+6xyTy00YUDdn7oQDv9+Ohjqqj0mS/iiI2eMDrere6zqUjX
         7PwHVMyI98k7q/hNttASVltH6P9cdzhVLOxMNIaTLcKkawQxw1jR/Ie3fRwP40LCApls
         rH7ApZhiIMMYnpvvYpjIu1GTpz25SVkWp0K2bliU/9kKaQkPGCwuvs6BFEza4JPBqioP
         fSdWeqTl8rzrYS6o5OlPuTE/NWIC/YR6aFK/ArIDFh6AG8/dItwVYcpEajB1aF3W17+p
         XPmVmBI+NHRAty7eP36HDjF+koX+fBfLx4xmmqGENKx3saKB5FAfO2/JXauU6mKRGzC9
         zvsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732612874; x=1733217674;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LKW3EfLpg9xj1NAX34ulRBb1/poqN6qEBq3WFAZfenM=;
        b=GnA330RX2lOgzVca1ED1yfSFTrEpGpERyWOGMJaigeDRGjRwFhRK1PKdBTT3B7l8gS
         OcUfnTPqrUy3jKzfj65uzqmSrKoSd9PI/zsvX4IXcUh+pQpuUjA34jf5Y2x309yVfihg
         CLacC2b5hUBCLHiSGJ9fecdKWnRj/71bKtjwc6KYgmFG8j/1HuIDAQEUvnStMfFLkcHM
         h/xW4qXVdPaS0vo04SPZTfJTl7HoIE+GoNdg19eehzZgS7ZqQ07K56DJIlzIKxGN5M/o
         J5bOTJfXD65t4Tk8VCf9tBKRK9Pp4ssFrcm8ewo6VRQ3Vdaku5yF54/cVLGh1fkWkZml
         PwdQ==
X-Gm-Message-State: AOJu0YxM5G8Qs47dW7l0bLk4WXL0RvPtapqTycnLH2JZq9+yd4AxyWSF
	oTLrt77MEsgT5wlpHHWy/aazLckkNCSbYh+b7N36j50MqKR6pRYc3bH4Bz8UaI8=
X-Gm-Gg: ASbGnctfUoA7aa15seJk7lUoF81iwDpKQ+QFpBe74PYqS6fyGKjVhPFJKoQikYvZy/z
	ATvbBWHlBl+3JbCiPmQPI7ViCDhPgq0M6bXO/07P5MO+6ypqW2jVuUzPRP2qAelZ6KMQ8G1Be3w
	hCzhO0fmyh0H+EPoOHkt5a2dPwwBHF0Ebt8Qbx1dKHu42LQXWvTSNa79Oq4S6Q8C8RqQG/dnCsq
	k9siTw1ZVItPKwPuRxoJcAL5xQBUr+ZUVDRRHHUnXWkqDcsP0jLRq/mRVlQV3hYpJw5dR3xlpx8
	0bM=
X-Google-Smtp-Source: AGHT+IE7w+dBoCGCxxbUApCfNcapHwRVn5rVPYIN6Suv5fX7t/i3bspO7Ak4XFCK5NYSFpFy53f9sQ==
X-Received: by 2002:a05:600c:5122:b0:428:d31:ef25 with SMTP id 5b1f17b1804b1-433ce41ffc9mr177417025e9.12.1732612874002;
        Tue, 26 Nov 2024 01:21:14 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3a47sm13027694f8f.73.2024.11.26.01.21.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 01:21:13 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	gregkh@linuxfoundation.org,
	yoshihiro.shimoda.uh@renesas.com,
	christophe.jaillet@wanadoo.fr
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 05/15] soc: renesas: rz-sysc: Move RZ/G3S SoC detection to the SYSC driver
Date: Tue, 26 Nov 2024 11:20:40 +0200
Message-Id: <20241126092050.1825607-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_012115_800741_A4ABEF00 
X-CRM114-Status: GOOD (  12.81  )
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Now that we have SoC detection in the RZ SYSC driver, move the RZ/G3S
SoC detection to it. The SYSC provides SoC ID in its own registers.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- this was handled though patch 05/16 in v1 
- provide SoC specific init data through the SoC specific driver

 drivers/soc/renesas/r9a08g045-sysc.c | 12 ++++++++++++
 drivers/soc/renesas/renesas-soc.c    | 12 ------------
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/soc/renesas/r9a08g045-sysc.c b/drivers/soc/renesas/r9a08g045-sysc.c
index ceea738aee72..81970db300b2 100644
--- a/drivers/soc/renesas/r9a08g045-sysc.c
+++ b/drivers/soc/renesas/r9a08g045-sysc.c
@@ -11,6 +11,9 @@
 
 #include "rz-sysc.h"
 
+#define SYS_LSI_DEVID		0xa04
+#define SYS_LSI_DEVID_REV	GENMASK(31, 28)
+#define SYS_LSI_DEVID_SPECIFIC	GENMASK(27, 0)
 #define SYS_USB_PWRRDY		0xd70
 #define SYS_USB_PWRRDY_PWRRDY_N	BIT(0)
 #define SYS_MAX_REG		0xe20
@@ -24,7 +27,16 @@ static const struct rz_sysc_signal_init_data rzg3s_sysc_signals_init_data[] __in
 	}
 };
 
+static const struct rz_sysc_soc_id_init_data rzg3s_sysc_soc_id_init_data __initconst = {
+	.family = "RZ/G3S",
+	.id = 0x85e0447,
+	.offset = SYS_LSI_DEVID,
+	.revision_mask = SYS_LSI_DEVID_REV,
+	.specific_id_mask = SYS_LSI_DEVID_SPECIFIC
+};
+
 const struct rz_sysc_init_data rzg3s_sysc_init_data = {
+	.soc_id_init_data = &rzg3s_sysc_soc_id_init_data,
 	.signals_init_data = rzg3s_sysc_signals_init_data,
 	.num_signals = ARRAY_SIZE(rzg3s_sysc_signals_init_data),
 	.max_register_offset = SYS_MAX_REG,
diff --git a/drivers/soc/renesas/renesas-soc.c b/drivers/soc/renesas/renesas-soc.c
index 172d59e6fbcf..425d9037dcd0 100644
--- a/drivers/soc/renesas/renesas-soc.c
+++ b/drivers/soc/renesas/renesas-soc.c
@@ -71,10 +71,6 @@ static const struct renesas_family fam_rzg2ul __initconst __maybe_unused = {
 	.name	= "RZ/G2UL",
 };
 
-static const struct renesas_family fam_rzg3s __initconst __maybe_unused = {
-	.name	= "RZ/G3S",
-};
-
 static const struct renesas_family fam_rzv2h __initconst __maybe_unused = {
 	.name	= "RZ/V2H",
 };
@@ -176,11 +172,6 @@ static const struct renesas_soc soc_rz_g2ul __initconst __maybe_unused = {
 	.id     = 0x8450447,
 };
 
-static const struct renesas_soc soc_rz_g3s __initconst __maybe_unused = {
-	.family = &fam_rzg3s,
-	.id	= 0x85e0447,
-};
-
 static const struct renesas_soc soc_rz_v2h __initconst __maybe_unused = {
 	.family = &fam_rzv2h,
 	.id     = 0x847a447,
@@ -410,9 +401,6 @@ static const struct of_device_id renesas_socs[] __initconst __maybe_unused = {
 #ifdef CONFIG_ARCH_R9A07G054
 	{ .compatible = "renesas,r9a07g054",	.data = &soc_rz_v2l },
 #endif
-#ifdef CONFIG_ARCH_R9A08G045
-	{ .compatible = "renesas,r9a08g045",	.data = &soc_rz_g3s },
-#endif
 #ifdef CONFIG_ARCH_R9A09G011
 	{ .compatible = "renesas,r9a09g011",	.data = &soc_rz_v2m },
 #endif
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
