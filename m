Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6E30C4450B
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 19:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=emUg2DCOfxrT15qkBzVVbjJEZE4jS6MBQndjX/En8Pg=; b=1Dukt7f66oKZZe
	/QjcQpuiq9s3BJgA9XgtF24fxwL2LGgB+EaU8Q1eiDO46R4+hn/TWYDOzWy2V67OCauSLJpy/QcLO
	Bt9hnROZrIiZMJVciwOLF+hCmhO93OymCaQggBnD8hqGtINt0Lrr4efYT1HrGhou+2RBmp9Q+BNtF
	dNFfPvk4ctslbvUlByXzH+0c4FavZpTH/yUI+tafsjObGptl20sSkHBntMiFltY2nbjn93h7a2blC
	l8tUZVuAbux1spgbeRIR01qIXV6+cXY4M/fA4uA3ityMIPXa2vYj0v5p1k4pVp9KZ2aeOIg0M5dCZ
	+wftCpQH2/AKD1Dad6wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjiad-0000000D0fg-242A;
	Tue, 14 Jul 2026 19:14:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjiab-0000000D0cH-0DeG
	for linux-phy@bombadil.infradead.org;
	Tue, 14 Jul 2026 19:14:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=90YVBhfMIaP8zND+DZv16Kjus0az0KSmnbZxqz5Zjos=; b=iN7yxcKzmGe2JJU8cuAcpKJf+0
	bMESOhKnFxSEo2PdIzEUwNSudOokNyjpaGT+TvqHachRC7HwbIK+3J9k6kBZsrBpyF0QVWHObJjL3
	uHb8BBtN7LpSYuVced0yiC5auDpMXOxAN2tnsQEAIrUbhuy2X3t4oFEhW8iEMqKcVrlxUV2yt3370
	60ijlgUynn2d8zLMhNR8cZwqnE6SwlhIYby/4q1Up4C+tsI2yen1fSul7m/NdN/+WSF322cQuaHZo
	APp7FIw//2NFPHb0bOX4fjEXKD/8uaKHzXSQjmBhj8Um3JXzmAIOe186Kkk1zhfgpoKxUJtLFmwN3
	iXefSN0Q==;
Received: from mail-pj2-x02.google.com ([2607:f8b0:4864:39::2])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wjiaY-0000000Cne5-056r
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 19:14:43 +0000
Received: by mail-pj2-x02.google.com with SMTP id d9443c01a7336-2ccbff2e6a7so31006175ad.1
        for <linux-phy@lists.infradead.org>; Tue, 14 Jul 2026 12:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784056479; x=1784661279; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=90YVBhfMIaP8zND+DZv16Kjus0az0KSmnbZxqz5Zjos=;
        b=RAhCLgkpsIFvJd6rDw5wy00IMZZgv46aCQ7Bop40UQqIFroGfHPNFgy6pcD9vjtSRi
         rspip9XXo5dso7l83GO7NmJF26hJD0rM8men1sVqu2hXJIt+Glq/VDqJP8EEg2g/VXmd
         89BKKdSGQZPN1qzCQ5ye5pPZe3F9+AK4QeSsIdTNkQyELum5VPOdH+lSpDDl7cYXVLye
         HS4MrJiR4gh2HWY6BLlrnS/NmQ8sD63KbP1Rw5b/uq9sBpE7NzcUEwDbJzd6bNuuZt81
         rCuUqmcnBl2Ar4nbnQ92jVC7PR32IHQko7qHLBRzgV2Oop6s9nmav0+TrZEHpoJ7ZriP
         nemw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784056479; x=1784661279;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=90YVBhfMIaP8zND+DZv16Kjus0az0KSmnbZxqz5Zjos=;
        b=ebccgvj70uVbLvDGPK18+vEHbtDhlt/FBono67GR8OtYdz29NAuORGG53G48b6Hzg4
         UHEb1kNkv+9SnS/C8xb3Dzfxlz9FtFAgFkqdpD47FLyJ4OLidqcpq4OK5WjkQ9xEFmJv
         8ptg1yAPIXzcjp+zxoysY8omMeVmrnWHq32HjIzlDcGrvF3m8AVpgo8nr/uOad3iITJP
         Ty+RzU795diJfx3Fc4rsLGJsrocaPj8hmBt375ra9MRvVUlVyiK4564IFhMq+LsGycKo
         113kQ98VL3lcq6lWC9lD+UtVoDK0Mz0uir1czHza/HpQaXuBhNPeDf/i6EsElVCo/6Lg
         OIkw==
X-Forwarded-Encrypted: i=1; AHgh+Rr5PF5Geq8Vft+44TbWKWLM/esn71t5TRpycyqdlByMAHJaCDiEM8xuWBbmTvY1lTxybkpZgvb8P8c=@lists.infradead.org
X-Gm-Message-State: AOJu0YxIOhVfGvgdDrrDAOquFNyWIdvx7X3eKneo71yuMR4lxsNtrnXB
	on0qlV1rEKUrBA70EnjD3xog7s0hFZ9nuloM5O+EI4DbSaQa11XmTKmB
X-Gm-Gg: AfdE7cloBQJmNlsCq1nY4qwwG0B3Y0FuwK12uOOFy+EqRSK2QG+cAqKdw8sy5M3rSLf
	c8th0kXXP6v36YDpxyOslx3xbP6CozZgNZuyhNtFZSH4amb7r+SxslDde1S5zHKQJ/hzTv5aIrs
	udRzy1hArVaRrIjRSQDZOnHTevIrIZ4YZQblEeA8VUuIxmhRH1ClyKmBu5USc71ZsE2of2IDpku
	yWxWKuJ+qgqih6hd+2qj55oOgtn7HETTRiaFOL2mfPMlYXIZ2RxgAfV9L+/CXFvh+shQhJezr8Q
	3e0c+thIAdC+U6uMPJ5PJI/eyWJbgxJ5wWQaNDsn7QPqzs1bDrEfE92orDuTi7/wsyytdObh7/U
	33Bg3BNk9B4WFK7FkSH0wa9nbM1/57EqvBbBpbaz5osrlqb6yD9La+/+AwjO9+Am+IjGIZm721O
	Zxjaj3H2kE8tPtDiWYhdY7pQ==
X-Received: by 2002:a17:903:2351:b0:2ca:de3:15e1 with SMTP id d9443c01a7336-2cef12fe3b6mr36367455ad.31.1784056479101;
        Tue, 14 Jul 2026 12:14:39 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ccc9d3d451sm120763245ad.65.2026.07.14.12.14.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 12:14:38 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: kuba@kernel.org,
	davem@davemloft.net,
	edumazet@google.com,
	pabeni@redhat.com,
	andrew+netdev@lunn.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	heiko@sntech.de
Cc: netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [RFC PATCH 09/10] arm64: dts: rockchip: rk3568-photonicat: enable SGMII LAN port
Date: Wed, 15 Jul 2026 03:08:37 +0800
Message-ID: <20260714191341.690906-10-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260714191341.690906-1-coiaprant@gmail.com>
References: <20260714191341.690906-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_201442_242554_5BBA5873 
X-CRM114-Status: GOOD (  11.42  )
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

The Ariaboard Photonicat has a Motorcomm YT8521SC Gigabit Ethernet PHY
connected to GMAC0 via XPCS SGMII.  Enable the necessary nodes to make
this port functional.

Enable combphy2 with rockchip,sgmii-mac-sel = <0> to route the SGMII
interface to GMAC0.  Enable the xpcs node and its port 0 sub-node,
referencing combphy2 as the SerDes PHY.

Add the mdio0 node with the YT8521SC PHY at address 3, including its
reset GPIO and LED configuration.  Also add LED configuration for the
existing RGMII PHY on mdio1 for consistency.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../boot/dts/rockchip/rk3568-photonicat.dts   | 77 ++++++++++++++++++-
 1 file changed, 75 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
index 58c1052ba8ef3..91c17b624fd17 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
@@ -3,6 +3,7 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/soc/rockchip,vop2.h>
 #include "rk3568.dtsi"
@@ -242,6 +243,7 @@ &combphy1 {
 
 &combphy2 {
 	status = "okay";
+	rockchip,sgmii-mac-sel = <0>;
 };
 
 &cpu0 {
@@ -260,9 +262,18 @@ &cpu3 {
 	cpu-supply = <&vdd_cpu>;
 };
 
-/* Motorcomm YT8521SC LAN port (require SGMII) */
+/* Motorcomm YT8521SC LAN port */
 &gmac0 {
-	status = "disabled";
+	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>;
+	assigned-clock-parents = <&xpcs_gmac0_clk>;
+	pcs-handle = <&xpcs_mii0>;
+	managed = "in-band-status";
+	phy-handle = <&sgmii_phy>;
+	phy-mode = "sgmii";
+	phy-supply = <&vcc_3v3>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac0_miim>;
+	status = "okay";
 };
 
 /* Motorcomm YT8521SC WAN port */
@@ -341,6 +352,39 @@ &i2s0_8ch {
 	status = "okay";
 };
 
+&mdio0 {
+	sgmii_phy: ethernet-phy@3 {
+		compatible = "ethernet-phy-id0000.011a";
+		reg = <0x3>;
+		max-speed = <1000>;
+		eee-broken-10gt;
+		eee-broken-10gkx4;
+		eee-broken-10gkr;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio3 RK_PC6 GPIO_ACTIVE_LOW>;
+
+		leds {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			led@1 {
+				reg = <1>;
+				color = <LED_COLOR_ID_AMBER>;
+				function = LED_FUNCTION_LAN;
+				default-state = "keep";
+			};
+
+			led@2 {
+				reg = <2>;
+				color = <LED_COLOR_ID_GREEN>;
+				function = LED_FUNCTION_LAN;
+				default-state = "keep";
+			};
+		};
+	};
+};
+
 &mdio1 {
 	rgmii_phy: ethernet-phy@3 {
 		compatible = "ethernet-phy-ieee802.3-c22";
@@ -350,6 +394,25 @@ rgmii_phy: ethernet-phy@3 {
 		reset-gpios = <&gpio4 RK_PC0 GPIO_ACTIVE_LOW>;
 		rx-internal-delay-ps = <1500>;
 		tx-internal-delay-ps = <1500>;
+
+		leds {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			led@1 {
+				reg = <1>;
+				color = <LED_COLOR_ID_AMBER>;
+				function = LED_FUNCTION_WAN;
+				default-state = "keep";
+			};
+
+			led@2 {
+				reg = <2>;
+				color = <LED_COLOR_ID_GREEN>;
+				function = LED_FUNCTION_WAN;
+				default-state = "keep";
+			};
+		};
 	};
 };
 
@@ -586,3 +649,13 @@ &xin32k {
 	pinctrl-names = "default";
 	pinctrl-0 = <&clk32k_out1>;
 };
+
+&xpcs {
+	status = "okay";
+	phys = <&combphy2 PHY_TYPE_SGMII>;
+	phy-names = "serdes";
+};
+
+&xpcs_mii0 {
+	status = "okay";
+};
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
