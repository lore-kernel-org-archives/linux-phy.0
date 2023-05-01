Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BCB4C7EE24
	for <linux-phy@archiver.kernel.org>; Mon,  1 May 2023 21:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CseAIn55RYN1o0nsLRxR9UCgKNVtDbIS78JLEB5IC7I=; b=EcX8QqYXAt1aPK
	hM88jgJDdj8xIRv+GdEurUXLoBEOWmPoGyBco5fudSMkZLPDddCsw4gFkQPjwcz31+mK5FdwSNNWt
	JG3D6JTGJMZTk6heZNey87OHRBfW4oytwnlts4YNGLHNtNjFbyVL85DL895aLPnGwFX629s0Ge7fa
	aCl8XXN8eW/nauPOqucfBDz97O3jTp5wfFYIStqzEgK2Eum8PVSh3+lXxyXtEpcTlbqzZiE1Fm+f9
	wwaUj3CCrnBptnUpAAuew0Cx0AKWokq9Ep7IfQMrdclOYenJ8I2OuRYEOQch4zQvu4XPVq2PuBGLP
	giiE5Sm5PQ02xn9f7IHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptadE-00Gxcl-2h;
	Mon, 01 May 2023 21:00:24 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptZcn-00GoRo-2L;
	Mon, 01 May 2023 19:55:57 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-94ef8b88a5bso444337866b.2;
        Mon, 01 May 2023 12:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682970951; x=1685562951;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q/mzZOPvu+0g5dtG+3t1NcIW7l4SOcqP9ndtgFLiRrY=;
        b=fhM32ja7+zyZKnGsbP4+JOd2IXd3AwuFvzRuyQXelMJmBRkXQzWagYZL84Y/7RJ3p4
         GOuZ9BqQvmZz71XwpHp6OMopdlMEaPj4hdGvPoiZn/qoXrxq1kZSxUzhWqGFdViTGQSf
         fK39sfBMdxuPWANebN1Y+PAwwLKD1wR7O/iG2E6NI0KjPS+KkNpzJUPVXqBfkc3S/1GW
         Kzmbyflp+eD4DzJPpr1UcEU60OgyCvpjMzB7XaWZY61gu6AKvnS1Cyi77k1Pwd6ljf1T
         0e6jo3hI52jXO75aLAocm3fM8AYxBCq24FACXqCSswCyZIIKtRAkGdwEhoOIwncTQ9nx
         o1Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682970951; x=1685562951;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q/mzZOPvu+0g5dtG+3t1NcIW7l4SOcqP9ndtgFLiRrY=;
        b=Bo0vLS/6O1HGAzAht4Vq1UZ+CCpYh29R7ANzjSV9S6svGlOGjCfmMRDfFiKjoaEdnM
         cg6Rin+ttjQLjfnjDleZ0Ymzg3WdI9CWYHzNO6Mba1JAPw32tNks1dV5Onu8+bumd6SL
         ci8FcHG1ClmAGovnB7vomzAT2VK6SlGgeMULkrQDZQuZ0aqUt+eH91SRQ+w561tc2xp4
         CvNWtzLpEazP4pN9dB+qKeCGq4gDENfhEDd7TWuXbB9/MCKyZGavOwEKPf6Q4TaBJQ58
         F1a4ze9cZ1ckyLQQyx5YfIluwvWDhKuue1CBNGUTecmxGzInvvKn1A6tzk9ltTg8vzeC
         mvOw==
X-Gm-Message-State: AC+VfDyY+IhakXvickjuhgFpx2a3jJZRQbm2cgZvHuD05/PDjnSpf4fp
	bCxYi11YBCrBmPR117wggh3sjF6wrro=
X-Google-Smtp-Source: ACHHUZ5p/sBe42g2BRa1vVh6tY3b+YaAGoOwbxvSbAuuSLUF5TEg+o0GE7MqVEATd/6N0/s/PVAt7w==
X-Received: by 2002:a17:907:60cb:b0:94e:cf72:8147 with SMTP id hv11-20020a17090760cb00b0094ecf728147mr15198072ejc.48.1682970951750;
        Mon, 01 May 2023 12:55:51 -0700 (PDT)
Received: from localhost.my.domain (83.8.115.30.ipv4.supernova.orange.pl. [83.8.115.30])
        by smtp.gmail.com with ESMTPSA id og36-20020a1709071de400b009600ce4fb53sm6333650ejc.37.2023.05.01.12.55.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 May 2023 12:55:51 -0700 (PDT)
From: Artur Weber <aweber.kernel@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
	Rob Herring <robh+dt@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	soc@kernel.org,
	Russell King <linux@armlinux.org.uk>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Kukjin Kim <kgene@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-phy@lists.infradead.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Artur Weber <aweber.kernel@gmail.com>
Subject: [PATCH v3 10/13] ARM: dts: Re-introduce Exynos4212 DTSI
Date: Mon,  1 May 2023 21:55:22 +0200
Message-Id: <20230501195525.6268-11-aweber.kernel@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230501195525.6268-1-aweber.kernel@gmail.com>
References: <20230501195525.6268-1-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_125553_850545_081BC91F 
X-CRM114-Status: GOOD (  17.39  )
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

Support for the Exynos4212 SoC was originally dropped as there were
no boards using it. We will be adding a device that uses it, so add
it back.

This reverts commit bca9085e0ae93253bc93ce218c85ac7d7e7f1831.

Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
---
Changed in v3:
 - Rebased on next/dt
---
 arch/arm/boot/dts/exynos4212.dtsi | 157 ++++++++++++++++++++++++++++++
 1 file changed, 157 insertions(+)
 create mode 100644 arch/arm/boot/dts/exynos4212.dtsi

diff --git a/arch/arm/boot/dts/exynos4212.dtsi b/arch/arm/boot/dts/exynos4212.dtsi
new file mode 100644
index 000000000000..0ac3245788fc
--- /dev/null
+++ b/arch/arm/boot/dts/exynos4212.dtsi
@@ -0,0 +1,157 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Samsung's Exynos4212 SoC device tree source
+ *
+ * Copyright (c) 2012 Samsung Electronics Co., Ltd.
+ *		http://www.samsung.com
+ *
+ * Samsung's Exynos4212 SoC device nodes are listed in this file. Exynos4212
+ * based board files can include this file and provide values for board specfic
+ * bindings.
+ *
+ * Note: This file does not include device nodes for all the controllers in
+ * Exynos4212 SoC. As device tree coverage for Exynos4212 increases, additional
+ * nodes can be added to this file.
+ */
+
+#include "exynos4x12.dtsi"
+
+/ {
+	compatible = "samsung,exynos4212", "samsung,exynos4";
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu-map {
+			cluster0 {
+				core0 {
+					cpu = <&cpu0>;
+				};
+				core1 {
+					cpu = <&cpu1>;
+				};
+			};
+		};
+
+		cpu0: cpu@a00 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a9";
+			reg = <0xa00>;
+			clocks = <&clock CLK_ARM_CLK>;
+			clock-names = "cpu";
+			operating-points-v2 = <&cpu0_opp_table>;
+			#cooling-cells = <2>; /* min followed by max */
+		};
+
+		cpu1: cpu@a01 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a9";
+			reg = <0xa01>;
+			clocks = <&clock CLK_ARM_CLK>;
+			clock-names = "cpu";
+			operating-points-v2 = <&cpu0_opp_table>;
+			#cooling-cells = <2>; /* min followed by max */
+		};
+	};
+
+	cpu0_opp_table: opp-table-0 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-200000000 {
+			opp-hz = /bits/ 64 <200000000>;
+			opp-microvolt = <900000>;
+			clock-latency-ns = <200000>;
+		};
+		opp-300000000 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-microvolt = <900000>;
+			clock-latency-ns = <200000>;
+		};
+		opp-400000000 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <925000>;
+			clock-latency-ns = <200000>;
+		};
+		opp-500000000 {
+			opp-hz = /bits/ 64 <500000000>;
+			opp-microvolt = <950000>;
+			clock-latency-ns = <200000>;
+		};
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <975000>;
+			clock-latency-ns = <200000>;
+		};
+		opp-700000000 {
+			opp-hz = /bits/ 64 <700000000>;
+			opp-microvolt = <987500>;
+			clock-latency-ns = <200000>;
+		};
+		opp-800000000 {
+			opp-hz = /bits/ 64 <800000000>;
+			opp-microvolt = <1000000>;
+			clock-latency-ns = <200000>;
+			opp-suspend;
+		};
+		opp-900000000 {
+			opp-hz = /bits/ 64 <900000000>;
+			opp-microvolt = <1037500>;
+			clock-latency-ns = <200000>;
+		};
+		opp-1000000000 {
+			opp-hz = /bits/ 64 <1000000000>;
+			opp-microvolt = <1087500>;
+			clock-latency-ns = <200000>;
+		};
+		opp-1100000000 {
+			opp-hz = /bits/ 64 <1100000000>;
+			opp-microvolt = <1137500>;
+			clock-latency-ns = <200000>;
+		};
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <1187500>;
+			clock-latency-ns = <200000>;
+		};
+		opp-1300000000 {
+			opp-hz = /bits/ 64 <1300000000>;
+			opp-microvolt = <1250000>;
+			clock-latency-ns = <200000>;
+		};
+		opp-1400000000 {
+			opp-hz = /bits/ 64 <1400000000>;
+			opp-microvolt = <1287500>;
+			clock-latency-ns = <200000>;
+		};
+		cpu0_opp_1500: opp-1500000000 {
+			opp-hz = /bits/ 64 <1500000000>;
+			opp-microvolt = <1350000>;
+			clock-latency-ns = <200000>;
+			turbo-mode;
+		};
+	};
+};
+
+&clock {
+	compatible = "samsung,exynos4212-clock";
+};
+
+&combiner {
+	samsung,combiner-nr = <18>;
+};
+
+&gic {
+	cpu-offset = <0x8000>;
+};
+
+&pmu {
+	interrupts = <2 2>, <3 2>;
+	interrupt-affinity = <&cpu0>, <&cpu1>;
+	status = "okay";
+};
+
+&pmu_system_controller {
+	compatible = "samsung,exynos4212-pmu", "simple-mfd", "syscon";
+};
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
