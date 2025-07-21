Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0427FC83F1A
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 02:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OaxXjuZwlxxEqWa/z2LoYF29dvMqS5bs5CTPA8g8QXM=; b=w1I8O7JMkGHt+z
	pBt8xzigyarMMFFEwgMKu91YDp4csUy2uG/+mh7CbzHcGTFY3MwDOVTywGHNfYZe3HxHcGrLe8Pa9
	7jBkQIeFbmSsL73NiSY4YNgfr1t133W6kFvdvJV7QlTZNFaBB+bQXBUnlbYU3KJSnxXFjQOynqkzP
	py+1/A6b5CnidRnFCUVZLMJ5cV1kv5kV031uPHGVZbHWrCHmYOv6dQ/TAJ+LrIwBuYSLSldEXKyap
	AXrUOKBBRFjvWHNtqOCyoI+wQp7tT/P3FvYVapp3qWQq80Hd0x5FAE3Tlt98i8L6Zwwxs5iNavpZY
	bdwO7G8wGabG85+uJgqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udg5j-0000000FxOQ-1ndQ;
	Mon, 21 Jul 2025 02:17:23 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udg5i-0000000FxLm-21SW
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 02:17:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 94B4D6111C;
	Mon, 21 Jul 2025 02:17:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5D3B2C4CEF9;
	Mon, 21 Jul 2025 02:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753064241;
	bh=3ydShq20mxxCIN54bhrZPW1GL4izZ/sL45OAM2AudYs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=nnixVS72iOnqo/kicb14gXMzfO77Y4HUYG2mx1Yq0bIfXfW35S8rFiANdqqYv7sCW
	 OwQ+O3f7t/l4n22qVpG3ict2MjiwrgWee1OEJHcUAL1RxdzipkpZWRyg7zNHjAt/fs
	 0W0cH/tzyaaTz3ojPe1dywjg9QSE/3K0zzCp9QFD1BwxZGeGRTuNZwAb/pMn3twdyJ
	 nJn3Tmq8M86VXFQB7Xff5dHOd4CguB455bgfi+crQzZrm97qX+3b38Ls+y9XB00Dz6
	 +VgvJrYBUwx1/dWXlBO0n3rco89bc7YWPdVJ7/Z+2H82MzyQEDFTm8ari+XRi9YVy0
	 trGh470NFgDJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5419EC83F1A;
	Mon, 21 Jul 2025 02:17:21 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Sun, 20 Jul 2025 21:15:10 -0500
Subject: [PATCH v2 16/17] arm64: tegra: Add Tegra210B01 support
MIME-Version: 1.0
Message-Id: <20250720-t210b01-v2-16-9cb209f1edfc@gmail.com>
References: <20250720-t210b01-v2-0-9cb209f1edfc@gmail.com>
In-Reply-To: <20250720-t210b01-v2-0-9cb209f1edfc@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753064238; l=1982;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=49OX805LYoy4B3LF8skuT6ywroy9Cv9R181cjDO5IEQ=;
 b=oMVw8JtuhnOyL5sYPqAD8v+W7FmFHchQmwUYJ7IgbcGTDm7t/8Wop5PETkYVy1RjMNHclfNxh
 u0XFXiUhd/2CUs0Ipn+o0vaXkzLHwjiABqWIKxODj92Ph3IVLOzfPl/
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
2.50.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
