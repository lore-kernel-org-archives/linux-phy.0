Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1428BC83F1A
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 09:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nwilWGWKe/v/JzVoC8+D/awNiycvHOcer8u0l0BRiio=; b=wjKQHlC85j1Y/J
	jctyqlI5hKhiNVQHBhaDicSx0PhA6jVuvJ12ARU6vzEmFJY/ePFcN2jHZ+Ioxk4k5m13Y2lHtVhaG
	ZquLRgR+d1uxo/NihWAUV2j2vQOh0z2kp65tIAtqy1GX12N1hUS0Ag5jVqLY/74kOeBcL/e3adBa5
	6QOnJvIreTKn5/mwGw0W0Q/czqDOa0JClDScaOLAAV5Wzh5BYr1+I8RNThqKr/ojF0omEwocUINJX
	xj/YJOf+8dMTHrxC848rHlTc9OfdGgvPlm+BWqcIrNAwGrjydM2bhzsdXqmkX7SMU5oHFaD/Pu8FH
	ggcLu3uISKHKNaeSbg0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uesa5-000000076z2-3VrO;
	Thu, 24 Jul 2025 09:49:41 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uerV5-00000006tqP-33tm;
	Thu, 24 Jul 2025 08:40:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1753346426;
	bh=tywNfUc5hMA17GgyzX00W7JAF7OL9B5T8aE+/2RSWWE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gNyq6E8Vj3fgcYuIbvQjaLEmve4N2FgVaLzaQLVxQ0jEhimWKlbdGQGD3/fZW877l
	 DkOSQEKUzNEaojXUjC7l3yHFTV0F6x54lD1ft0DjYgnYWf1FwRSkF7d9Al1Ri02+lB
	 GZNNT3USU9B9aKflscPMqTgymt6TbFOAo8vwe/+u8CfI99tJKibx61ZM0UdzV72q88
	 9/a/1Jifv3ZAJy9bjQkfopIPxbbEorurjD7EldiS7NptQBmIbTrjFxSX+CgzymFtpg
	 fmNpJnlnFdSLaOmeHEeYYjQd4NYZe6Ov0YKi/E/oVRak2Pgm3513SVt+NePLtBOlbL
	 8SLXVQKs3WRSQ==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E495217E0FC2;
	Thu, 24 Jul 2025 10:40:23 +0200 (CEST)
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
Subject: [PATCH 23/38] arm64: dts: mediatek: mt7986a: Fix PCI-Express T-PHY node address
Date: Thu, 24 Jul 2025 10:38:59 +0200
Message-ID: <20250724083914.61351-24-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_014027_912469_ADD9B443 
X-CRM114-Status: UNSURE (   9.26  )
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

The PCIe TPHY is under the soc bus, which provides MMIO, and all
nodes under that must use the bus, otherwise those would clearly
be out of place.

Add ranges to the PCIe tphy and assign the address to the main
node to silence a dtbs_check warning, and fix the children to
use the MMIO range of t-phy.

Fixes: 963c3b0c47ec ("arm64: dts: mediatek: fix t-phy unit name")
Fixes: 918aed7abd2d ("arm64: dts: mt7986: add pcie related device nodes")
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt7986a.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7986a.dtsi b/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
index 559990dcd1d1..3211905b6f86 100644
--- a/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
@@ -428,16 +428,16 @@ pcie_intc: interrupt-controller {
 			};
 		};
 
-		pcie_phy: t-phy {
+		pcie_phy: t-phy@11c00000 {
 			compatible = "mediatek,mt7986-tphy",
 				     "mediatek,generic-tphy-v2";
-			ranges;
-			#address-cells = <2>;
-			#size-cells = <2>;
+			ranges = <0 0 0x11c00000 0x20000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
 			status = "disabled";
 
-			pcie_port: pcie-phy@11c00000 {
-				reg = <0 0x11c00000 0 0x20000>;
+			pcie_port: pcie-phy@0 {
+				reg = <0 0x20000>;
 				clocks = <&clk40m>;
 				clock-names = "ref";
 				#phy-cells = <1>;
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
