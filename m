Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF7A7C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 17 Nov 2022 16:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qL5eMSsoItb7awW4fMzWLliHD+Fow8UQn8COb3fHg5w=; b=VESHVsHFjR3VxO
	TGBi9cRpHeU5QdXVBUDc/1Y7aM9kw8TiAe5aGNyg1PGamltdl9/APByK7acSO5BAYH/SXgAnGaGSz
	4cMvE5b/DLc1UIsHj8huEK44duPXMdcOEx9YgqQpplKXgj7nK7v/OQETNZETIMOMNXI41WSJ8rr3T
	FY15SwIj90wJpb5Lg5P7cJIG76VARsT6DjSK5bzI1URbkgg7olxO4K1EJDb17h24/CcJdAgBYBGms
	Jifsc7dTjdpoWsR4v1yivli8WgZjErNbARbAvSnsXKlHvGZ0RvwOL8HJCciQvTV7v+Rlrbghmv/BA
	v4+qfC+1IaZTdfmdCDGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovhst-00G0MK-3c; Thu, 17 Nov 2022 16:37:03 +0000
Received: from mout.gmx.net ([212.227.15.18])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovhq7-00FyXI-03; Thu, 17 Nov 2022 16:34:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=public-files.de;
	s=s31663417; t=1668702825;
	bh=685HAFrCQ1H/XhJLiR5NAOp9W9THBYFHsQy1Qc41aVo=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
	b=OyDvoHxHU1L95Wa0KYOonqnvFfKZivlRzj1X8/opR4cRCXR7U/1PflHFkG5OFHWkr
	 FglAHvOZanlbUtxAJZO1nlWdDVL+DVCJN9OvlyHqO6euqzCqxEvEwNr8DiXbadiayd
	 bMAgt4ucMDNBteOoZ3g7b++IiiMdqAa8aG5ywKnm3B1SjKystmiYLOMmoF68tiEn4K
	 C3W87tKYViz16d6oxhKZC7OFTHQLth/HPnjjJ3+5/tYJBIqKRO/PS6VpXqLpjJwQRx
	 4YYJGhAkkXJH92Ojy5puFhJypGffqac+qtlG9rKaUCYYHFL6dBDnoLUV56/kk/akpq
	 j/hywstOfH2yw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from frank-G5 ([80.245.75.65]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M72oH-1os9zy3DOp-008ZPP; Thu, 17
 Nov 2022 17:33:45 +0100
From: Frank Wunderlich <frank-w@public-files.de>
To: linux-mediatek@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Paolo Abeni <pabeni@redhat.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Bo Jiao <Bo.Jiao@mediatek.com>,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org
Subject: [PATCH v5 11/11] arm64: dts: mt7986: add BPI-R3 nand/nor overlays
Date: Thu, 17 Nov 2022 17:33:40 +0100
Message-Id: <20221117163340.21069-1-frank-w@public-files.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:0zZwEQSc2GM6vXeRI+bIlFokQn6BiimSebefS/q5FvkdTAUriwf
 EZUjeBe8VS0cpVmGPqbd7om/VGkKaOWVsRrAJSGrnj1FDk6vmzKPrv0xmj2m5gt/edGraoT
 Vgu0D1yDgAp20KGj2l0bp8pDIMk0tjM/6LLtxxl27rhPFN5/AqjbH+BT0MuyeuD0v+Pip58
 a9Mm8BcTnAzuHu5oKBo3g==
UI-OutboundReport: notjunk:1;M01:P0:3IeX2Ck7v2c=;ogtxe/hQAW/5OgpgaE149rA6Ojd
 yE4FnS9/79cwkcr38IDTkRvVzQNBd67qQ2svqNS8HsKRYqahDnwWzuLGm+EYsK/mDXbWyHQJP
 39Su45nSSX2oPr1U88osomWn53OuukBeDR/x8p+hTTD57jMxehypkYbZP2e8CumRoedlGaMDZ
 BGDIk28EXLRi2megpflU9obww7Az+/DAgdAja4F7Ys09fjF8eKJsATrnfwM6vxX/kz1mKMANr
 p6DeQvZuSqI4vJrqEuFT+4/CzSVjfgkeWfFJKZbPE8PcMl0T9I8Ml/sBJCegR7lZI+gtgSfLY
 EyiGg7cnF7qJwt/4O0ksBvqhw61BUOcgRCcp1b1s3pXYi/feY+GOb6AWE0JpCW8jhl/sjItJ2
 VthgWcSQ8RZmf0LtsleiJscjzEULGa7uK0sJ8V8R+WkZyR5HKPKe+EG4bh9b/pPPEjt1N/mFy
 TEp03WR1Y8Rp9318QkflSdaoa2xrsFx5YzAPtAKQnZ7puLMD+VjTy4IhqZvW3bnmE8sxGEiqB
 uFZcBlDGW42hS3nXOPQffhp1/Odj8EZp+casHkhU326tz2VEo5Y5oj9m6nTmMCgDaYJQvq7w1
 oJ7s5F5gbvJxwbH7B8fVtMRfk5oFFJImxCLKxZ4yacmqUvcKYGxI3d+cEeTE1y+itwsPw+Gg+
 A6Q2Kb7YX429xjC9mkt1TOgwvBZFvSmkJ/CQiC2hlIwP0/SgQ5TuMIKOYTz3+K6W6OAnhkmu3
 LoedwBpEBL0CSITG0+De7YKf7nL9fykn+HVkvrNU2Vuar9Pt+Whxi+Yjm6C8IuyXVJv5AZINd
 kiOeByn/cTiF1EtI1mKh+CiM6Ylh2TYa5PRzT+6mmkgeHeV8TtmTOxYcvfKTKxNhC7EaT4uj8
 GpyIUjbkPCZFi+QF5oCJd01dH1901zSHMYOzu0WOX0XdLONsCucyLiyXyrQc5Qy04X+TsMp9e
 1VsjKQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221117_083411_490084_7C9CB2E2 
X-CRM114-Status: GOOD (  11.83  )
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

Add devicetree overlays for using nand and nor on BPI-R3.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
maybe rename to dtso?

"kbuild: Allow DTB overlays to built from .dtso named source files"
https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/commit/?h=dt/next&id=363547d2191cbc32ca954ba75d72908712398ff2

more comments about the dt overlay-support:

https://patchwork.kernel.org/comment/25092116/
https://patchwork.kernel.org/comment/25085681/
---
v4:
- drop compile-comment from overlays
- add author-information to dt-overlays
---
 arch/arm64/boot/dts/mediatek/Makefile         |  2 +
 .../mediatek/mt7986a-bananapi-bpi-r3-nand.dts | 55 +++++++++++++++
 .../mediatek/mt7986a-bananapi-bpi-r3-nor.dts  | 69 +++++++++++++++++++
 3 files changed, 126 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-nand.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-nor.dts

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index e8902f2cc58f..d42208c4090d 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -8,6 +8,8 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt6797-x20-dev.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-rfb1.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-bananapi-bpi-r64.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-emmc.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-nand.dtbo
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-nor.dtbo
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-sd.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-rfb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986b-rfb.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-nand.dts b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-nand.dts
new file mode 100644
index 000000000000..15ee8c568f3c
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-nand.dts
@@ -0,0 +1,55 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR MIT) */
+/*
+ * Authors: Daniel Golle <daniel@makrotopia.org>
+ *          Frank Wunderlich <frank-w@public-files.de>
+ */
+
+/dts-v1/;
+/plugin/;
+
+/ {
+	compatible = "bananapi,bpi-r3", "mediatek,mt7986a";
+
+	fragment@0 {
+		target-path = "/soc/spi@1100a000";
+		__overlay__ {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			spi_nand: spi_nand@0 {
+				compatible = "spi-nand";
+				reg = <0>;
+				spi-max-frequency = <10000000>;
+				spi-tx-buswidth = <4>;
+				spi-rx-buswidth = <4>;
+
+				partitions {
+					compatible = "fixed-partitions";
+					#address-cells = <1>;
+					#size-cells = <1>;
+
+					partition@0 {
+						label = "bl2";
+						reg = <0x0 0x80000>;
+						read-only;
+					};
+
+					partition@80000 {
+						label = "reserved";
+						reg = <0x80000 0x300000>;
+					};
+
+					partition@380000 {
+						label = "fip";
+						reg = <0x380000 0x200000>;
+						read-only;
+					};
+
+					partition@580000 {
+						label = "ubi";
+						reg = <0x580000 0x7a80000>;
+					};
+				};
+			};
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-nor.dts b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-nor.dts
new file mode 100644
index 000000000000..f18643a9089c
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-nor.dts
@@ -0,0 +1,69 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR MIT) */
+/*
+ * Authors: Daniel Golle <daniel@makrotopia.org>
+ *          Frank Wunderlich <frank-w@public-files.de>
+ */
+
+/dts-v1/;
+/plugin/;
+
+/ {
+	compatible = "bananapi,bpi-r3", "mediatek,mt7986a";
+
+	fragment@0 {
+		target-path = "/soc/spi@1100a000";
+		__overlay__ {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			flash@0 {
+				compatible = "jedec,spi-nor";
+				reg = <0>;
+				spi-max-frequency = <10000000>;
+
+				partitions {
+					compatible = "fixed-partitions";
+					#address-cells = <1>;
+					#size-cells = <1>;
+
+					partition@0 {
+						label = "bl2";
+						reg = <0x0 0x20000>;
+						read-only;
+					};
+
+					partition@20000 {
+						label = "reserved";
+						reg = <0x20000 0x20000>;
+					};
+
+					partition@40000 {
+						label = "u-boot-env";
+						reg = <0x40000 0x40000>;
+					};
+
+					partition@80000 {
+						label = "reserved2";
+						reg = <0x80000 0x80000>;
+					};
+
+					partition@100000 {
+						label = "fip";
+						reg = <0x100000 0x80000>;
+						read-only;
+					};
+
+					partition@180000 {
+						label = "recovery";
+						reg = <0x180000 0xa80000>;
+					};
+
+					partition@c00000 {
+						label = "fit";
+						reg = <0xc00000 0x1400000>;
+						compatible = "denx,fit";
+					};
+				};
+			};
+		};
+	};
+};
--
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
