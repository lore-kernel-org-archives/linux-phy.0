Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41FFFC4332F
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 09:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iyNPElt21XyGhAv6koAgKnm2u/DaWpWG2bpVVhfHmnY=; b=ZZTZrg/w4R4XxB
	CiizK5go+F0HE8YckU8BL/ePZCfHrP9ddzpm4O7NagqgSFYQUv1fqcrRjzgM33JPnWMFph6y+qM1f
	7OPF2ml51s2j04am3tvhwd37MrSebLBz9aINCnouPavY49pMim4BzCqJVRaMNFCiRGjwymPvEwG03
	b3vgAQ7/rcplS1TA0z2YM0E0X1XwaS0id806CglTgvTuOxqL6UeOOeGH8dnKL2WhrnQL6bSj8yiQV
	I8H3Pr5CiKXGrK6UM0+2NlYhKlcN+uXud6LXZAAi+tS14UksFgUEwn7yVHXqCiHhmhSxEnjPMCGAF
	w6cEerBpo32bK9BViWSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otmgv-004bSi-EO; Sat, 12 Nov 2022 09:20:45 +0000
Received: from mout.gmx.net ([212.227.15.15])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otmg9-004avg-9Z; Sat, 12 Nov 2022 09:20:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=public-files.de;
	s=s31663417; t=1668244777;
	bh=tuqut74UZqWZODN1QpAhPVRlE49i8ImsqmOIOqF0/qo=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Lt3QdQ3tyYgD9SudXw0ZjqHbx9PKGycyoiiLILga9dNvnWpy6W9wV7+eJs5q3D1IH
	 eirSZCw50+2O1NCqyMNJuFybHxznr56S1eAKQMqJcGSpsJ5TrF/ZHSa5e+09XeVs2g
	 JC20Loz1sQayusdOdTgtoFj29+BRLVoakEjrkVhQOa4/2fkXW5D7qQCFosESPUiUnJ
	 50oOyFzPaQIxW/LOMdHp3evxWWilqkT7pfeZd36dWZS2/PuzCs09pFlDboazIFhrT1
	 narnI4/mqQe8KN65NoHZ/btyZMamA0wzpOTAfiwHhPDMYjGlW4zYxPR4swGZYOYeB1
	 yUuIFFuGxyykA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from frank-G5 ([157.180.227.41]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MNKm0-1odnKE3Y7u-00OrcK; Sat, 12
 Nov 2022 10:19:36 +0100
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
Subject: [PATCH v4 11/11] arm64: dts: mt7986: add BPI-R3 nand/nor overlays
Date: Sat, 12 Nov 2022 10:19:23 +0100
Message-Id: <20221112091923.9562-2-frank-w@public-files.de>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221112091923.9562-1-frank-w@public-files.de>
References: <20221112091923.9562-1-frank-w@public-files.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:kKjaW9aI7wAg0CdKWw9t+9h2N0yWI8C1ic20qYJbFdx1SXsJukP
 uPR44ZUAe6EWerEtW0dXW5xmg1XUkpe6B1L5fA2n02283EId0pWWnwzL23CEwzx4ps2gFt0
 P0J7XfxpftQfZVSUxyCieVNqNLgs8raCEFVFYV6YR41GDvWOuvQR7FQWC+CIONmjUZ7ONXK
 KsLi4v3N1mpziL3jyXgng==
UI-OutboundReport: notjunk:1;M01:P0:ard/iJETmyI=;KPC3jaRpk4xcD3byMkdfvKRcTIv
 xWie5/oLRUaj8Zjk7ca2wpGRmzITD+Q6pBjXB99CTvr+enrJ50vZyLltQ9tK2ViNBYQDgCsYY
 6vlhtB3ZYemsLwazxPp8HxkT3EMbUO40BKZqGjvIkdLMkpZevM6KT9vIyPIw5wo2Aw9I2TgpJ
 aL7DBl/t9UQxqRYcm8vdhX3g5OPiEKZBYW270MjM5YLzfe9pSJFgNhvCj3zwPWC9r8N4QP0sc
 IMY3HKsx5+AAz9ZGo70INMz6glEQEJjKHrBd/zPz6xAEGdlaY3LvELPz15B916ELH3+GL3Y5C
 db0RdLWG9ALfAVjsjD+RTvPqjqjB7LGZOym6xetErXbuks2758is0UYmWBpgg5b2MyvLGby9p
 HDoPrPHAksy1j5XnGaKxKTFw99HXP2SK87Am3HzFUSlYUtwJhVDuruHDAG0nmMqGa03MMPPwj
 B5Uz5k6f+/Xklbgj9pWSjbpvWeSNs7z6ly37bdm2SQnjnY6CnT0fcpRoqKD5U8BWuesF1OHHr
 5rq0KjUC23Js8qTxRo1vjrgowNto1QDh5jAH6b7qGatYUGqcvpUTCTIuVUVZOffv29DORqQj3
 iqd6FQl9Jhi/KFc/dV/Jhe0eiuudpj//a0nHeEe3c42hSzqdFd8cVSN4iP26raGjGm1m4zRDj
 NmWCZ2iEvKbaZwUwwGQgaDYjb1Qj166ogyhECwwRzacP+EWel4BkiBcCHidKYTyfYRh9l9nvH
 1jTPJmBaVJSHYg3P9xYV4EpdY5uHtMO9NMzL2QmQu7IpEbzIIHehxJREdVsxJcmJ0P3U1/6AD
 dmP82ZZsnV7BZ5Uro0LGSNDc4JsSIlmwG465Suo2Z+jijq+KUm4gQ3JWuDHVZbHbRAeQQnyqQ
 Oq3Uw3SkfnQqEC2HFApmltc7K3pveVYdo6tf3LkUlfQmGVtNRGu3v04DMfChbmqV2/vL0v3Me
 bgXFl0P6TlFQwPqvqeZIwm9zGx0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_011957_827996_695009FC 
X-CRM114-Status: GOOD (  11.88  )
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
