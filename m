Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65CD5C531C9
	for <linux-phy@archiver.kernel.org>; Sat, 25 Jul 2026 03:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UvXx3XGmxkKoXxG7IrcDmeNk4Ipv29RxvEMt45WjA7A=; b=qIQAaCBRlV+h1R
	fSmt6NQ6dmn4RUHrJgsVxd1oF1CNrVoAlHB4f94OfzTTtB1JiauOvyOcPy2pLuPGdptLtzpQYz+iy
	OfBL8LUta8LrV778CgNR0RuRL2lCzGEnB6qlOc6fLM02Ui4lp/my9xdOBuW0N2xacoSPZejEkKDj/
	vSxf/hMUim0wx6ctz3RUOLy8G0stp7SjTB3mz0iGK1HNLDfuBMjb2IsX6B97t4qVRYXa+E3USlC4V
	OSJWfaGe1sPaXbmoe1HfsBAl7oWiNuERv5QvHZRXqTpkKWKmR9bTHwpf4DlsY9tlJmVPfuOG9LZQz
	nsxY8p+XQ4Z6X+S623jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnSv1-0000000HXsX-0J89;
	Sat, 25 Jul 2026 03:19:19 +0000
Received: from mail-pz2-x01.google.com ([2607:f8b0:4864:3b::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnSuy-0000000HXqZ-1go0
	for linux-phy@lists.infradead.org;
	Sat, 25 Jul 2026 03:19:17 +0000
Received: by mail-pz2-x01.google.com with SMTP id 41be03b00d2f7-ca7a25cd87dso1015994a12.1
        for <linux-phy@lists.infradead.org>; Fri, 24 Jul 2026 20:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784949556; x=1785554356; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=e4C2qDdMDmFuAaCYr0SQwKrHQit4QrHO7xfMnvBhehM=;
        b=DhUrFQsFR1MINQ4v1LLHYSOlQk6brc/FJl8j0Sh0bu+fMweuQ0RVAC4J/5I6qX0EPy
         GGn9ZkLZFFajuAUjboYpDV3VFZSkMwgd7y7rlBwDFwUPJl0BIiY3FKXD84zQiVNOoOKA
         UR17od2VQUYCXHIMmtBtc+NPC/ZlWrYrInkBnrRJZT9stfU2/HpL9Q1OdD+iqPIuJJgX
         fuhj6oskmzi7hdEMaKOI6hVAKr4Dy/7+jrOU88ftgzCbJh3EmhjyF7yd/JLpQ9MOsK58
         fMkqT+QeJ7002/CUMoCW6RFjGWuLEIAjwkayLUwAev6gtoksuVXd1iuQ44XUjTTWdPhA
         xLYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784949556; x=1785554356;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=e4C2qDdMDmFuAaCYr0SQwKrHQit4QrHO7xfMnvBhehM=;
        b=DHKxquQ1y44hXUDSuR0GyVu80vrIz9iqJlvHsFfAibLYBeclw461TvG/M0tFSDWHhj
         ywAPRAhBTkcXGrLKjyGSENrTJuzkRu00ZhytaAYW53QUTsrNxmiIn678eED1Fbmoq1Pu
         nbqTPgLD0idbBPrREuwXAFeER38Q1LJ7tA+Tfz5VTyQsDTZt6zj2BL+oUtNA/HpoNgzi
         5OdVkwsCvt/N7mp+vs3GNYj2QlBt4A4mBTd6DuyVWFMTUtM61METyFdoUYQMhddu6V8I
         SRfyrrec//AyuZVoHLPH6Msd4SYb4RWUYBQaCfr4K+rHj5XBqIKtb0CjDkrUe0wuZMRt
         Zl/g==
X-Forwarded-Encrypted: i=1; AHgh+RrDS6HTHwuawhepXpSpb3JD59yIhwEj8xSnHLJsLk0egkjLZSFjUSaV/5nAmD+mdL+XkQi91LAsQAo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzVo0i9Hpu5FnfBXgfkkd/jkdUw2e9bv/A4Bg62wXqBVSNwSWMB
	wbFtHOBbO4lRWqRr+xHfTslkO9bXkm326wyccPj5CTC5GH0sv5ougk8J
X-Gm-Gg: AR+sD12Rs/u2Rict2KkxZRnFcjvZWf7mFIeDPmK6Gf7rYUIyqXcGLTWkX409OmN5oXN
	8j2ELoy7iAhPBOLaQHVRT6lgQgIeMePT6UvnIfdhcUAuEkFgf+7IYpSECB4hv6UfCSutjreLJ3W
	jxvW6rrnwTMiHrTPEz3ynfBts8Bbm8AF5DGAzsMdq5w+rBbvmBtuAEgsg2xD4K00qhTnb13jjXR
	r5AdQQQBhvRX6LcEQKqMrpAc5Cu0jvbg0mDp1gj/N0bWENimzwob8x4AGIinWAw0bzyzOG3dws3
	PZ3ZNvDSYYpTDT0rEXJ9Z2awdGoCzXJIEc7w+ibsJemLnhLixBZCCZ1Q/v7/Cxeb5fbBlXgNsPX
	MLf9L75krqyasSb/R5dYBKKYrj56IzzaETLzG4m4/FLQ+unzIOa2uRDeUd/KqNNC7Rg==
X-Received: by 2002:a05:6a00:180c:b0:84e:2d5d:5e4d with SMTP id d2e1a72fcca58-84e595d6eccmr712341b3a.68.1784949555818;
        Fri, 24 Jul 2026 20:19:15 -0700 (PDT)
Received: from [127.0.1.1] ([2a12:a305:4::403c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84e53432834sm640542b3a.50.2026.07.24.20.19.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2026 20:19:15 -0700 (PDT)
From: Cody Kang <codykang.hk@gmail.com>
Date: Fri, 24 Jul 2026 23:16:46 -0400
Subject: [PATCH 14/17] riscv: dts: spacemit: k3: add display nodes
MIME-Version: 1.0
Message-Id: <20260724-k3-display-v1-14-f22a10a52867@gmail.com>
References: <20260724-k3-display-v1-0-f22a10a52867@gmail.com>
In-Reply-To: <20260724-k3-display-v1-0-f22a10a52867@gmail.com>
To: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Haylen Chu <heylenay@4d2.org>, Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: dri-devel@lists.freedesktop.org, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-clk@vger.kernel.org, Cody Kang <codykang.hk@gmail.com>
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260724_201916_624756_36AC87C4 
X-CRM114-Status: GOOD (  10.82  )
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

Add the SoC-level display nodes: the two Saturn DPUs, the two DP/eDP
controllers with their PHY children.

The PHY PLLs are fed back into the APMU as pixel-clock mux parents, so
updated the &syscon_apmu node in the display dtsi.

Signed-off-by: Cody Kang <codykang.hk@gmail.com>
---
 arch/riscv/boot/dts/spacemit/k3-display.dtsi | 156 +++++++++++++++++++++++++++
 1 file changed, 156 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k3-display.dtsi b/arch/riscv/boot/dts/spacemit/k3-display.dtsi
new file mode 100644
index 000000000000..4892ee6acda2
--- /dev/null
+++ b/arch/riscv/boot/dts/spacemit/k3-display.dtsi
@@ -0,0 +1,156 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * SpacemiT K3 display subsystem (DPU0/eDP0 + DPU1/DP1) shared
+ * device-tree definitions for inclusion alongside k3.dtsi.
+ *
+ * Copyright (C) 2026 SpacemiT Co., Ltd.
+ */
+
+#include <dt-bindings/clock/spacemit,k3-clocks.h>
+#include <dt-bindings/reset/spacemit,k3-resets.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+
+&soc {
+	dpu0_crtc0: dpu@c0340000 {
+		compatible = "spacemit,k3-saturn-dpu";
+		reg = <0x0 0xc0340000 0x0 0x54000>;
+		interrupts = <90 IRQ_TYPE_LEVEL_HIGH>,
+			     <89 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "online", "offline";
+		clocks = <&syscon_apmu CLK_APMU_LCD_PXCLK>,
+			 <&syscon_apmu CLK_APMU_LCD_MCLK>,
+			 <&syscon_apmu CLK_APMU_DPU_ACLK>,
+			 <&syscon_apmu CLK_APMU_DSI_ESC>,
+			 <&syscon_apmu CLK_APMU_LCD_DSC>;
+		clock-names = "pxclk", "mclk", "aclk", "escclk", "dscclk";
+		resets = <&syscon_apmu RESET_APMU_LCD_MCLK>,
+			 <&syscon_apmu RESET_APMU_LCD>,
+			 <&syscon_apmu RESET_APMU_DSI_ESC>,
+			 <&syscon_apmu RESET_APMU_DPU_ACLK>,
+			 <&syscon_apmu RESET_APMU_LCD_DSCCLK>;
+		reset-names = "mclk", "lcd", "esc",
+			      "aclk", "dsc";
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				dpu0_out: endpoint {
+					remote-endpoint = <&edp0_in>;
+				};
+			};
+		};
+	};
+
+	edp0: edp@cac84000 {
+		compatible = "spacemit,k3-inno-dp";
+		reg = <0x0 0xcac84000 0x0 0x4000>;
+		interrupts = <132 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&syscon_apmu CLK_APMU_EDP0_PXCLK>, <&edp0_phy>;
+		clock-names = "pxclk", "pll";
+		resets = <&syscon_apmu RESET_APMU_EDP0>;
+		phys = <&edp0_phy>;
+		phy-names = "dp";
+		status = "disabled";
+
+		edp0_phy: phy {
+			compatible = "spacemit,k3-inno-dp-phy";
+			#phy-cells = <0>;
+			#clock-cells = <0>;
+			clock-output-names = "edp0_pll_pxclk";
+		};
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				edp0_in: endpoint {
+					remote-endpoint = <&dpu0_out>;
+				};
+			};
+			/* port@1 (panel output) is added by boards fitting an eDP panel */
+		};
+	};
+
+	dpu1_crtc0: dpu@c0440000 {
+		compatible = "spacemit,k3-saturn-dpu";
+		reg = <0x0 0xc0440000 0x0 0x54000>;
+		interrupts = <139 IRQ_TYPE_LEVEL_HIGH>,
+			     <138 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "online", "offline";
+		clocks = <&syscon_apmu CLK_APMU_DSI4LN2_LCD_PXCLK>,
+			 <&syscon_apmu CLK_APMU_DSI4LN2_LCD_MCLK>,
+			 <&syscon_apmu CLK_APMU_DSI4LN2_DPU_ACLK>,
+			 <&syscon_apmu CLK_APMU_DSI4LN2_DSI_ESC>,
+			 <&syscon_apmu CLK_APMU_DSI4LN2_LCD_DSC>;
+		clock-names = "pxclk", "mclk", "aclk", "escclk", "dscclk";
+		resets = <&syscon_apmu RESET_APMU_DSI4LN2_LCD_MCLK>,
+			 <&syscon_apmu RESET_APMU_DSI4LN2_LCD_SW>,
+			 <&syscon_apmu RESET_APMU_DSI4LN2_ESCCLK>,
+			 <&syscon_apmu RESET_APMU_DSI4LN2_DPU_ACLK>,
+			 <&syscon_apmu RESET_APMU_DSI4LN2_LCD_DSCCLK>;
+		reset-names = "mclk", "lcd", "esc",
+			      "aclk", "dsc";
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				dpu1_out: endpoint {
+					remote-endpoint = <&dp1_in>;
+				};
+			};
+		};
+	};
+
+	dp1: dp@cac88000 {
+		compatible = "spacemit,k3-inno-dp";
+		reg = <0x0 0xcac88000 0x0 0x4000>;
+		interrupts = <140 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&syscon_apmu CLK_APMU_EDP1_PXCLK>, <&dp1_phy>;
+		clock-names = "pxclk", "pll";
+		resets = <&syscon_apmu RESET_APMU_EDP1>;
+		phys = <&dp1_phy>;
+		phy-names = "dp";
+		status = "disabled";
+
+		dp1_phy: phy {
+			compatible = "spacemit,k3-inno-dp-phy";
+			#phy-cells = <0>;
+			#clock-cells = <0>;
+			clock-output-names = "edp1_pll_pxclk";
+		};
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				dp1_in: endpoint {
+					remote-endpoint = <&dpu1_out>;
+				};
+			};
+			/* no port@1: the DP TX drives the external connector directly */
+		};
+	};
+};
+
+/*
+ * Feed the PHY PLL pixel clocks back in as the APMU mux parents. This lives
+ * here, not in k3.dtsi: the PHYs only exist where this file is included.
+ */
+&syscon_apmu {
+	clocks = <&osc_32k>, <&vctcxo_1m>, <&vctcxo_3m>, <&vctcxo_24m>,
+		 <&edp0_phy>, <&dp1_phy>;
+	clock-names = "osc", "vctcxo_1m", "vctcxo_3m", "vctcxo_24m",
+		      "edp0_pll_pxclk", "edp1_pll_pxclk";
+};

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
