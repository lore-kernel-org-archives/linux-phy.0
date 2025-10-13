Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C46EBCCD190
	for <linux-phy@archiver.kernel.org>; Mon, 13 Oct 2025 15:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lA+baM3BZJ/a0A8npCT13g7oCWMqcD/eAIHzVrkOs/M=; b=OktBXSZIzQqmBg
	Hht96I2s53uXwaJlMdFWPFNnRPoXt+dmRz5kLFci2tQZbTzvV3wSqoc0gM9SHO6q+Q8cL5uI7u2aG
	W6/sdJTXbG27urKqPMZbJEDcfGgwR9cTOa8MSlm85H6b6d7pRvysMXlgquf1mfJFnIq8Lbro6q95a
	MJTkSoaJjM+HgOQgPUXBnZLu5fHlEBvNMkcUiaD5xiJdDw5kVmo791tIpP8zwVG4CvarWn5VgJ3de
	KbinZvh4u6wvjOLj95tvDoI9+UcUe9tQY2YGF6bt3faBrD3jdRj26HYWWm9gZKoAAdJXWhvgtBSlw
	WVQq0PTBpihCzWWuSaag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8KaT-0000000DiMV-1xTm;
	Mon, 13 Oct 2025 15:35:49 +0000
Received: from mail-il1-x132.google.com ([2607:f8b0:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8KaQ-0000000DiHC-1A4P
	for linux-phy@lists.infradead.org;
	Mon, 13 Oct 2025 15:35:47 +0000
Received: by mail-il1-x132.google.com with SMTP id e9e14a558f8ab-42e726431bdso23304605ab.1
        for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 08:35:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1760369745; x=1760974545; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IC7TMG3lk59s+A7a4ImbP9PPZe+ugMZHmrnVEzsSLBc=;
        b=RmXBcRuYBt99mHbI/OaV2ym3ECN7Y+eofdLLESdglUW9FswAzenqbeQZJ2K5s8P4ys
         Z+37dlP5IRe/T6p6KMHv1p8BMtimAxkampIZfOW2RzC31jY5oDM68bz3eoZGtx9rSIjK
         vN9UoEwE+G1I96pU+kAppyVckWbQxWhkgriUi5ArdsqhOP+3cz1ebBG/kDPiv37orT8O
         osthR9a0R5WcOzDET9JlN4fmzGI7OUZjh0teyN6k4XRd4Q2Qy5zGMXY+1d7NQ53qWbZ9
         6L+vmfa6CnqwxqnDf8nzdLdB2SUM1OHsD15rXPAWS3ZgopwFLxZfbLlMJ8tzGOZsE8E8
         0Psg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760369745; x=1760974545;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IC7TMG3lk59s+A7a4ImbP9PPZe+ugMZHmrnVEzsSLBc=;
        b=c+dv3+48RABKQQpuRcUDXsYiGHT3YbeO0cvpHDLbKgBcv7UwyxDVtx5fZPm2U8xCiw
         JrfVmoKZVpgwwUJdcJCzgHqomDwB+DTPzZ4yM3krTIQJ/htvTnpdL3C0JGwC1Z51IJMT
         StDUmmeykdAz2BB7s+YDTld3EY/ni7WI25FyjbYPDNo95AcnsVQl1+L2DgwYC6e6cOTn
         gLhc3pkjz60xAeAP43kqax/m98/0x0qBnM88voD2UNqqDklcoPrwWZoHCyZkrKh4McoB
         zawcPU9v8M8Bi7tTCBwXt2hTtMUHJu67YBF5MSbVkL5Us6+Fkd8bW54JTh30tkWLJwCm
         A0Zg==
X-Forwarded-Encrypted: i=1; AJvYcCUfYLlJy1KTIBvPB6igtU1wv+FUq6IjPNUjfZX2G0fmruDrNIXKHgwA2krK/Jppc+AsuBOEbok7ddc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzeCSBX2bQZMheS8SXP54PYMefqDgwm+rjiCHz2iQPwvdf6C90L
	1SWGm6w5WRhCSp5Hqv1+/NcEK0xAQCbvgqTlxABoIATGcemAU8r9588S9KjN+gahstY=
X-Gm-Gg: ASbGncseKJsPDstpBLpLDU9OdDCbZRf2PhtT+CJmAJxjaoa0cnWPEE4S8TwNSFuu6Gs
	4bg/kPM2HNwsGEBL2f0rAc6UQhsrLmj3X4dDyWBzODmUqKRpD6gdJlI7ikLpVvJ9bFn3xx6RKAP
	bzx9y9LBzz42TRZf7bodtVuKu7k7Zxc8W1KdktYG1kY/vQmX1YNNuTH1BUsa7iqWvTfxjtiF4Yo
	wpESQ6JffhaeMWGVAM2zRiH+xx1bBu+DJPB9mBA5Eb+8Y18UF1RIHeXeAidY4xl33HDSayGEMDd
	iVK6NLNfWfvlSu7BI92Tu970Opv12FsxVWWz2k8+nxuhIXRjmWI0tRkPwJcSMa8X0WoQqkiCtLk
	oz0fW/srtJYlsG1Y07vp4n3vch89U3bNSSNx+BUzZQvxwlg43+HUOW7cRtXrOTe9KWwQAUln18G
	GwD3QMVG8BoDpQjZQ4Qrg=
X-Google-Smtp-Source: AGHT+IHjDpApPK7L1lugdyMLdu/ALrQ3dDMp82iS7o9Xm0eHdrN9XhJaFVaUZhe9AQe+NVGfsh4gKw==
X-Received: by 2002:a05:6e02:1545:b0:42f:8d6c:f502 with SMTP id e9e14a558f8ab-42f8d6cf905mr216933655ab.0.1760369745223;
        Mon, 13 Oct 2025 08:35:45 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-58f6c49b522sm3910266173.1.2025.10.13.08.35.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 08:35:44 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	bhelgaas@google.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org
Cc: dlan@gentoo.org,
	guodong@riscstar.com,
	pjw@kernel.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	p.zabel@pengutronix.de,
	christian.bruel@foss.st.com,
	shradha.t@samsung.com,
	krishna.chundru@oss.qualcomm.com,
	qiang.yu@oss.qualcomm.com,
	namcao@linutronix.de,
	thippeswamy.havalige@amd.com,
	inochiama@gmail.com,
	devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 7/7] riscv: dts: spacemit: PCIe and PHY-related updates
Date: Mon, 13 Oct 2025 10:35:24 -0500
Message-ID: <20251013153526.2276556-8-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251013153526.2276556-1-elder@riscstar.com>
References: <20251013153526.2276556-1-elder@riscstar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_083546_325698_A298453F 
X-CRM114-Status: GOOD (  12.26  )
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

Define PCIe and PHY-related Device Tree nodes for the SpacemiT K1 SoC.

Enable the combo PHY and the two PCIe-only PHYs on the Banana Pi BPI-F3
board.  The combo PHY is used for USB on this board, and that will be
enabled when USB 3 support is accepted.

The combo PHY must perform a calibration step to determine configuration
values used by the PCIe-only PHYs.  As a result, it must be enabled if
either of the other two PHYs is enabled.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
v2: - Added vpcie3v3-supply nodes to PCIe ports
    - Combo PHY node is now defined earlier in the file (alphabetized)

 .../boot/dts/spacemit/k1-bananapi-f3.dts      |  30 ++++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  |  33 ++++
 arch/riscv/boot/dts/spacemit/k1.dtsi          | 151 ++++++++++++++++++
 3 files changed, 214 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index 046ad441b7b4e..6d566780aed9d 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -40,6 +40,12 @@ pcie_vcc_3v3: pcie-vcc3v3 {
 	};
 };
 
+&combo_phy {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie0_3_cfg>;
+	status = "okay";
+};
+
 &emmc {
 	bus-width = <8>;
 	mmc-hs400-1_8v;
@@ -100,6 +106,30 @@ &pdma {
 	status = "okay";
 };
 
+&pcie1_phy {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie1_3_cfg>;
+	status = "okay";
+};
+
+&pcie2_phy {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie2_4_cfg>;
+	status = "okay";
+};
+
+&pcie1 {
+	phys = <&pcie1_phy>;
+	vpcie3v3-supply = <&pcie_vcc_3v3>;
+	status = "okay";
+};
+
+&pcie2 {
+	phys = <&pcie2_phy>;
+	vpcie3v3-supply = <&pcie_vcc_3v3>;
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_2_cfg>;
diff --git a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
index aff19c86d5ff3..5bacb6aff23f8 100644
--- a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
@@ -69,6 +69,39 @@ uart0-2-pins {
 		};
 	};
 
+	pcie0_3_cfg: pcie0-3-cfg {
+		pcie0-3-pins {
+			pinmux = <K1_PADCONF(54, 3)>,	/* PERST# */
+				 <K1_PADCONF(55, 3)>,	/* WAKE# */
+				 <K1_PADCONF(53, 3)>;	/* CLKREQ# */
+
+			bias-pull-up = <0>;
+			drive-strength = <21>;
+		};
+	};
+
+	pcie1_3_cfg: pcie1-3-cfg {
+		pcie1-3-pins {
+			pinmux = <K1_PADCONF(59, 4)>,	/* PERST# */
+				 <K1_PADCONF(60, 4)>,	/* WAKE# */
+				 <K1_PADCONF(61, 4)>;	/* CLKREQ# */
+
+			bias-pull-up = <0>;
+			drive-strength = <21>;
+		};
+	};
+
+	pcie2_4_cfg: pcie2-4-cfg {
+		pcie2-4-pins {
+			pinmux = <K1_PADCONF(62, 4)>,	/* PERST# */
+				 <K1_PADCONF(112, 3)>,	/* WAKE# */
+				 <K1_PADCONF(117, 4)>;	/* CLKREQ# */
+
+			bias-pull-up = <0>;
+			drive-strength = <21>;
+		};
+	};
+
 	pwm14_1_cfg: pwm14-1-cfg {
 		pwm14-1-pins {
 			pinmux = <K1_PADCONF(44, 4)>;
diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
index 6cdcd80a7c83b..a38c578f24004 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/clock/spacemit,k1-syscon.h>
+#include <dt-bindings/phy/phy.h>
 
 /dts-v1/;
 / {
@@ -358,6 +359,48 @@ syscon_rcpu2: system-controller@c0888000 {
 			#reset-cells = <1>;
 		};
 
+		combo_phy: phy@c0b10000 {
+			compatible = "spacemit,k1-combo-phy";
+			reg = <0x0 0xc0b10000 0x0 0x1000>;
+			clocks = <&vctcxo_24m>,
+				 <&syscon_apmu CLK_PCIE0_DBI>,
+				 <&syscon_apmu CLK_PCIE0_MASTER>,
+				 <&syscon_apmu CLK_PCIE0_SLAVE>;
+			clock-names = "refclk",
+				      "dbi",
+				      "mstr",
+				      "slv";
+			resets = <&syscon_apmu RESET_PCIE0_DBI>,
+				 <&syscon_apmu RESET_PCIE0_MASTER>,
+				 <&syscon_apmu RESET_PCIE0_SLAVE>,
+				 <&syscon_apmu RESET_PCIE0_GLOBAL>;
+			reset-names = "dbi",
+				      "mstr",
+				      "slv",
+				      "phy";
+			#phy-cells = <1>;
+			spacemit,apmu = <&syscon_apmu>;
+			status = "disabled";
+		};
+
+		pcie1_phy: phy@c0c10000 {
+			compatible = "spacemit,k1-pcie-phy";
+			reg = <0x0 0xc0c10000 0x0 0x1000>;
+			clocks = <&vctcxo_24m>;
+			clock-names = "refclk";
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
+		pcie2_phy: phy@c0d10000 {
+			compatible = "spacemit,k1-pcie-phy";
+			clocks = <&vctcxo_24m>;
+			clock-names = "refclk";
+			reg = <0x0 0xc0d10000 0x0 0x1000>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
 		syscon_apbc: system-controller@d4015000 {
 			compatible = "spacemit,k1-syscon-apbc";
 			reg = <0x0 0xd4015000 0x0 0x1000>;
@@ -847,6 +890,114 @@ pcie-bus {
 			#size-cells = <2>;
 			dma-ranges = <0x0 0x00000000 0x0 0x00000000 0x0 0x80000000>,
 				     <0x0 0xb8000000 0x1 0x38000000 0x3 0x48000000>;
+			pcie0: pcie@ca000000 {
+				compatible = "spacemit,k1-pcie";
+				reg = <0x0 0xca000000 0x0 0x00001000>,
+				      <0x0 0xca300000 0x0 0x0001ff24>,
+				      <0x0 0x8f000000 0x0 0x00002000>,
+				      <0x0 0xc0b20000 0x0 0x00001000>;
+				reg-names = "dbi",
+					    "atu",
+					    "config",
+					    "link";
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges = <0x01000000 0x0 0x00000000 0x0 0x8f002000 0x0 0x00100000>,
+					 <0x02000000 0x0 0x80000000 0x0 0x80000000 0x0 0x0f000000>;
+				interrupts = <141>;
+				interrupt-names = "msi";
+				clocks = <&syscon_apmu CLK_PCIE0_DBI>,
+					 <&syscon_apmu CLK_PCIE0_MASTER>,
+					 <&syscon_apmu CLK_PCIE0_SLAVE>;
+				clock-names = "dbi",
+					      "mstr",
+					      "slv";
+				resets = <&syscon_apmu RESET_PCIE0_DBI>,
+					 <&syscon_apmu RESET_PCIE0_MASTER>,
+					 <&syscon_apmu RESET_PCIE0_SLAVE>,
+					 <&syscon_apmu RESET_PCIE0_GLOBAL>;
+				reset-names = "dbi",
+					      "mstr",
+					      "slv",
+					      "phy";
+				device_type = "pci";
+				num-viewport = <8>;
+				spacemit,apmu = <&syscon_apmu 0x03cc>;
+				status = "disabled";
+			};
+
+			pcie1: pcie@ca400000 {
+				compatible = "spacemit,k1-pcie";
+				reg = <0x0 0xca400000 0x0 0x00001000>,
+				      <0x0 0xca700000 0x0 0x0001ff24>,
+				      <0x0 0x9f000000 0x0 0x00002000>,
+				      <0x0 0xc0c20000 0x0 0x00001000>;
+				reg-names = "dbi",
+					    "atu",
+					    "config",
+					    "link";
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges = <0x01000000 0x0 0x00000000 0x0 0x9f002000 0x0 0x00100000>,
+					 <0x02000000 0x0 0x90000000 0x0 0x90000000 0x0 0x0f000000>;
+				interrupts = <142>;
+				interrupt-names = "msi";
+				clocks = <&syscon_apmu CLK_PCIE1_DBI>,
+					 <&syscon_apmu CLK_PCIE1_MASTER>,
+					 <&syscon_apmu CLK_PCIE1_SLAVE>;
+				clock-names = "dbi",
+					      "mstr",
+					      "slv";
+				resets = <&syscon_apmu RESET_PCIE1_DBI>,
+					 <&syscon_apmu RESET_PCIE1_MASTER>,
+					 <&syscon_apmu RESET_PCIE1_SLAVE>,
+					 <&syscon_apmu RESET_PCIE1_GLOBAL>;
+				reset-names = "dbi",
+					      "mstr",
+					      "slv",
+					      "phy";
+				device_type = "pci";
+				num-viewport = <8>;
+				spacemit,apmu = <&syscon_apmu 0x3d4>;
+				status = "disabled";
+			};
+
+			pcie2: pcie@ca800000 {
+				compatible = "spacemit,k1-pcie";
+				reg = <0x0 0xca800000 0x0 0x00001000>,
+				      <0x0 0xcab00000 0x0 0x0001ff24>,
+				      <0x0 0xb7000000 0x0 0x00002000>,
+				      <0x0 0xc0d20000 0x0 0x00001000>;
+				reg-names = "dbi",
+					    "atu",
+					    "config",
+					    "link";
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges = <0x01000000 0x0 0x00000000 0x0 0xb7002000 0x0 0x00100000>,
+					 <0x42000000 0x0 0xa0000000 0x0 0xa0000000 0x0 0x10000000>,
+					 <0x02000000 0x0 0xb0000000 0x0 0xb0000000 0x0 0x07000000>;
+				interrupts = <143>;
+				interrupt-names = "msi";
+				clocks = <&syscon_apmu CLK_PCIE2_DBI>,
+					 <&syscon_apmu CLK_PCIE2_MASTER>,
+					 <&syscon_apmu CLK_PCIE2_SLAVE>;
+				clock-names = "dbi",
+					      "mstr",
+					      "slv";
+				resets = <&syscon_apmu RESET_PCIE2_DBI>,
+					 <&syscon_apmu RESET_PCIE2_MASTER>,
+					 <&syscon_apmu RESET_PCIE2_SLAVE>,
+					 <&syscon_apmu RESET_PCIE2_GLOBAL>;
+				reset-names = "dbi",
+					      "mstr",
+					      "slv",
+					      "phy";
+				device_type = "pci";
+				num-viewport = <8>;
+				spacemit,apmu = <&syscon_apmu 0x3dc>;
+				status = "disabled";
+			};
 		};
 
 		storage-bus {
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
