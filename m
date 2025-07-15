Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D56A6C83F17
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 04:36:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OcWH5nGR2OW9Qb2YSTHdoFkVpBxLaRnfXUFkGyX8LFU=; b=YlUJd4WItYBXIP
	Td9dXmoE97bMR/fyRAkyhjoCFZwWwh0c1lAA4zswp0rokfTqpikRF9HBf99NTKx8JjSbWbeHhxMQK
	2+S0Qx+2tzzyc4EXK4E8GvxRfl5xE2/vwuO3cbiG1q3Xd6KLYgEwykw4RhWCtN8447BcO019+LQGM
	9nEmsjYfxrHC1ov4uKub1trWQoz31RPfXEGZeHJ7ZO5H1+dHJWUG/JOS/fyyaFHinI+l49ZMaJpaN
	wJ5UajFX6d3bSSC/CG75KoQlavJNQqL15pnVNSjSwEK58ozr1W7/S9G8ix3dA6fzNlRV9T6v2roWK
	SGAL8S/wMX8fHYBBylzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubXOl-000000041Hl-18B2;
	Tue, 15 Jul 2025 04:36:11 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubWtV-00000003xpA-0HYP
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 04:03:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2530C6149D;
	Tue, 15 Jul 2025 04:03:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C21EBC19423;
	Tue, 15 Jul 2025 04:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752552231;
	bh=3vbgZyoOzJWVkFYh6VTooz49lAPSd9vdeX5UjyFPhdY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=MOzBX4BdkcEz1YZONKBIEBKm/w63+UQs7+AuRythm/Oh8nX4jKclbXU2uyYqKwNbi
	 jXlnYJXn3SFwn3XP06aAp7vt9pTpchoBGrPJw/OW2d0WS/JKznKLGbjRAlTTjC00Bm
	 yaX5eixlb3BpOuWlPqvisE5ztzJriVD8kVVS+ksFQ9A8b5AZKhsIifXTL1xJ5yqMpc
	 Vf8YK94TD1ZGwmHhn/TM6Qtm+7FRsWG+88mQfam/J2tdeWFAhwT7S6/UM3WQnzIJkx
	 2wUSJZXwKmj+alB3yltpgfW32X4kXABTrj0+tNnG0cBQn1phPRVKNpki/0LpZw32/v
	 jEn+Dgr4Ec40g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC16C83F22;
	Tue, 15 Jul 2025 04:03:51 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Mon, 14 Jul 2025 23:02:59 -0500
Subject: [PATCH 16/17] arm64: tegra: Add Tegra210B01 support
MIME-Version: 1.0
Message-Id: <20250714-t210b01-v1-16-e3f5f7de5dce@gmail.com>
References: <20250714-t210b01-v1-0-e3f5f7de5dce@gmail.com>
In-Reply-To: <20250714-t210b01-v1-0-e3f5f7de5dce@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Nagarjuna Kristam <nkristam@nvidia.com>, JC Kuo <jckuo@nvidia.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Mathias Nyman <mathias.nyman@intel.com>, 
 Peter De Schrijver <pdeschrijver@nvidia.com>, 
 Prashant Gaikwad <pgaikwad@nvidia.com>
Cc: devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-usb@vger.kernel.org, Thierry Reding <treding@nvidia.com>, 
 linux-pm@vger.kernel.org, linux-clk@vger.kernel.org, 
 Aaron Kling <webgeek1234@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752552229; l=1982;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=ttd5rUNPwZRMhsRQKkGWJfHHoJfZzc3FeVaJMr3kaiQ=;
 b=V7YYm/8SDSYxjrFYhexfVPwU4NHOHbtDeT+FeEtB/40Estcu06tC7OoY8L2RhzQQt7UBi+nCE
 Zd3vX2DCKITDJpzTW6DEKqcIEz1JpK6PE86u8kC+TU0LoKY3WEMTEnX
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
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
Reply-To: webgeek1234@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Aaron Kling <webgeek1234@gmail.com>

Also known as Tegra X1+, the Tegra210B01 has higher CPU and GPU clocks
than the original Tegra210.

Add a SoC-level device tree file that describes most of the hardware
available on the SoC. This is derived from the Tegra210 dtsi, as they
share a lot.

Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
---
 arch/arm64/boot/dts/nvidia/tegra210b01.dtsi | 64 +++++++++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra210b01.dtsi b/arch/arm64/boot/dts/nvidia/tegra210b01.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..87e55af3ed2466c5d353dbd8706230aef97b90f7
--- /dev/null
+++ b/arch/arm64/boot/dts/nvidia/tegra210b01.dtsi
@@ -0,0 +1,64 @@
+// SPDX-License-Identifier: GPL-2.0
+#include "tegra210.dtsi"
+
+/ {
+	compatible = "nvidia,tegra210b01", "nvidia,tegra210";
+
+	host1x@50000000 {
+		/delete-node/ sor@54540000;
+		/delete-node/ dpaux@545c0000;
+
+		dc@54200000 {
+			nvidia,outputs = <&dsia &dsib &sor1>;
+		};
+
+		dc@54240000 {
+			nvidia,outputs = <&dsia &dsib &sor1>;
+		};
+	};
+
+	clock@60006000 {
+		compatible = "nvidia,tegra210b01-car";
+	};
+
+	i2c@7000d100 {
+		/delete-property/ pinctrl-0;
+		/delete-property/ pinctrl-1;
+		/delete-property/ pinctrl-names;
+	};
+
+	pmc@7000e400 {
+		compatible = "nvidia,tegra210b01-pmc";
+	};
+
+	bpmp@70016000 {
+		status = "okay";
+	};
+
+	usb@70090000 {
+		compatible = "nvidia,tegra210b01-xusb";
+	};
+
+	padctl@7009f000 {
+		compatible = "nvidia,tegra210b01-xusb-padctl";
+	};
+
+	usb@700d0000 {
+		compatible = "nvidia,tegra210b01-xudc";
+	};
+
+	thermal-sensor@700e2000 {
+		compatible = "nvidia,tegra210b01-soctherm";
+
+		throttle-cfgs {
+			heavy {
+				nvidia,cpu-throt-percent = <0>;
+				nvidia,gpu-throt-level = <TEGRA_SOCTHERM_THROT_LEVEL_NONE>;
+			};
+		};
+	};
+
+	clock@70110000 {
+		compatible = "nvidia,tegra210b01-dfll";
+	};
+};

-- 
2.50.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
