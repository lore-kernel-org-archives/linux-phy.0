Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7E78C83F26
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 09:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SpojoMzejQdemnxy1C1Nw7fjZTSAzlFRAcXgAatqxGk=; b=uSmVSdd1a1STwN
	Yh8nPGuH1rJEwIpyw9T3MN6BHTCuI4YPVOUkOAE5IU5LvfdOfefMA4jVc4HfO5xhRQwYA+n2ed0bf
	Op/8SssEyUxrAshdGz4i7IAUjgCM8xlzdlpkjalgrY1k3yI5ljHlg+TRIO47LHX7fd534EnAEye5e
	W3hcaE03+F8kM8z4R9aEmvRd9R5FzsEs/mgDgSeaChe1rQuqZEW5kJseOvSfCuSNo8FXdyLPeQXu+
	vlJ7PawHHjHOlzL7LPSehamsDJ5BY0OY82j1SDidf1N6ij8EVBCVUuxEbfQeJG6+tUqL83+Q1F+0D
	BOoltxXJocyl11azSB3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uesZ2-000000076ic-2Qv0;
	Thu, 24 Jul 2025 09:48:36 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uerUq-00000006thH-0YzT;
	Thu, 24 Jul 2025 08:40:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1753346410;
	bh=D1HOyy4TBDGnhrbxI7GeEpBZEP1av0kTGOf7VJ9HZcg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=G8O3iaX5kWyIyxaCS94ng/7FIdaQ0ri+SUmHWoOUXGc3aw8AfWLLiRXZNuBZ/ZUS/
	 qvl0Kvr2WHROs6zC3K0s0BOoK+u8uiuukfvNviYQmePPwD64MAMHy1Bzao6jDVCLBA
	 BOpU5QMvlLKUyuMWiyptaOTSIyTS8cWp8fnkaG++LPLz1eQBP1KotY35w760t5x3re
	 UZQ2Pbc4kDjGljeIZOkKeVovPfchtJbXbqj/4mvYHs5Fd5hiFbYIUw9x9MC8ca22CX
	 +S34W/IzthZxgXdQsThsVZ/cpXNxA6zcRytz95N10eJcy5kO9WNG3XzNIG5Rck6tk2
	 BqaBf/RD6QENQ==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0EAF417E1110;
	Thu, 24 Jul 2025 10:40:08 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: linux-mediatek@lists.infradead.org,
	robh@kernel.org
Cc: herbert@gondor.apana.org.au,
	davem@davemloft.net,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	chunkuang.hu@kernel.org,
	p.zabel@pengutronix.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	jassisinghbrar@gmail.com,
	mchehab@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	chunfeng.yun@mediatek.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	sean.wang@kernel.org,
	linus.walleij@linaro.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	andersson@kernel.org,
	mathieu.poirier@linaro.org,
	daniel.lezcano@linaro.org,
	tglx@linutronix.de,
	atenart@kernel.org,
	jitao.shi@mediatek.com,
	ck.hu@mediatek.com,
	houlong.wei@mediatek.com,
	kyrie.wu@mediatek.corp-partner.google.com,
	andy.teng@mediatek.com,
	tinghan.shen@mediatek.com,
	jiaxin.yu@mediatek.com,
	shane.chien@mediatek.com,
	olivia.wen@mediatek.com,
	granquet@baylibre.com,
	eugen.hristev@linaro.org,
	arnd@arndb.de,
	sam.shih@mediatek.com,
	jieyy.yang@mediatek.com,
	frank-w@public-files.de,
	mwalle@kernel.org,
	fparent@baylibre.com,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-gpio@vger.kernel.org,
	linux-remoteproc@vger.kernel.org,
	linux-sound@vger.kernel.org
Subject: [PATCH 17/38] arm64: dts: mediatek: mt6797: Fix pinctrl node names
Date: Thu, 24 Jul 2025 10:38:53 +0200
Message-ID: <20250724083914.61351-18-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_014012_362187_AD411F67 
X-CRM114-Status: UNSURE (   7.13  )
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

Change the pinctrl node names to adhere to the binding: the main
nodes are now named like "uart0-pins" and the children "pins-bus".

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt6797.dtsi | 40 ++++++++++++------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt6797.dtsi b/arch/arm64/boot/dts/mediatek/mt6797.dtsi
index 0e9d11b4585b..be401617dfd8 100644
--- a/arch/arm64/boot/dts/mediatek/mt6797.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt6797.dtsi
@@ -135,71 +135,71 @@ pio: pinctrl@10005000 {
 		gpio-controller;
 		#gpio-cells = <2>;
 
-		uart0_pins_a: uart0 {
-			pins0 {
+		uart0_pins_a: uart0-pins {
+			pins-bus {
 				pinmux = <MT6797_GPIO234__FUNC_UTXD0>,
 					 <MT6797_GPIO235__FUNC_URXD0>;
 			};
 		};
 
-		uart1_pins_a: uart1 {
-			pins1 {
+		uart1_pins_a: uart1-pins {
+			pins-bus {
 				pinmux = <MT6797_GPIO232__FUNC_URXD1>,
 					 <MT6797_GPIO233__FUNC_UTXD1>;
 			};
 		};
 
-		i2c0_pins_a: i2c0 {
-			pins0 {
+		i2c0_pins_a: i2c0-pins {
+			pins-bus {
 				pinmux = <MT6797_GPIO37__FUNC_SCL0_0>,
 					 <MT6797_GPIO38__FUNC_SDA0_0>;
 			};
 		};
 
-		i2c1_pins_a: i2c1 {
-			pins1 {
+		i2c1_pins_a: i2c1-pins {
+			pins-bus {
 				pinmux = <MT6797_GPIO55__FUNC_SCL1_0>,
 					 <MT6797_GPIO56__FUNC_SDA1_0>;
 			};
 		};
 
-		i2c2_pins_a: i2c2 {
-			pins2 {
+		i2c2_pins_a: i2c2-pins {
+			pins-bus {
 				pinmux = <MT6797_GPIO96__FUNC_SCL2_0>,
 					 <MT6797_GPIO95__FUNC_SDA2_0>;
 			};
 		};
 
-		i2c3_pins_a: i2c3 {
-			pins3 {
+		i2c3_pins_a: i2c3-pins {
+			pins-bus {
 				pinmux = <MT6797_GPIO75__FUNC_SDA3_0>,
 					 <MT6797_GPIO74__FUNC_SCL3_0>;
 			};
 		};
 
-		i2c4_pins_a: i2c4 {
-			pins4 {
+		i2c4_pins_a: i2c4-pins {
+			pins-bus {
 				pinmux = <MT6797_GPIO238__FUNC_SDA4_0>,
 					 <MT6797_GPIO239__FUNC_SCL4_0>;
 			};
 		};
 
-		i2c5_pins_a: i2c5 {
-			pins5 {
+		i2c5_pins_a: i2c5-pins {
+			pins-bus {
 				pinmux = <MT6797_GPIO240__FUNC_SDA5_0>,
 					 <MT6797_GPIO241__FUNC_SCL5_0>;
 			};
 		};
 
-		i2c6_pins_a: i2c6 {
-			pins6 {
+		i2c6_pins_a: i2c6-pins {
+			pins-bus {
 				pinmux = <MT6797_GPIO152__FUNC_SDA6_0>,
 					 <MT6797_GPIO151__FUNC_SCL6_0>;
 			};
 		};
 
-		i2c7_pins_a: i2c7 {
-			pins7 {
+		i2c7_pins_a: i2c7-pins {
+			pins-bus {
 				pinmux = <MT6797_GPIO154__FUNC_SDA7_0>,
 					 <MT6797_GPIO153__FUNC_SCL7_0>;
 			};
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
