Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6BEAC87FCC
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 02:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SjnOhNGUaXpR5KnR/8G+T2XiyGaFaenuSzGOK+YjwFo=; b=bY0mgrxZKpJMg1
	yCKY25ygptcVQwPSvtgVGkb8NCZLmGm4a0uWxNSwYZbFnvWHJDrlqDui6Sc9WG6l59LRTH2f+casV
	aqohXAvBb22KbLaDJAsWgLkJn/86bWJdumpZNnCQ5AxPFtGhx5oWbv+5nJ/y2NInROvPJ6jtb6WXu
	XAFGo6BysmOkDRp4dSnnRmabG9yoIgED6U3FW8M9A0YxI3V6wZea7lqoLn9mhs87MqwIkxxA9uEg9
	muLb0SmR87X/Gcu1ma3JxESUgFpGZvGCjZXgExgWAGke7SuB/KRaw7hArnl8DE5P56wEjolHGD32m
	GGX2I0sxHdg6ZgTSwtQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udg5p-0000000FxUd-2cyV;
	Mon, 21 Jul 2025 02:17:29 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udg5j-0000000FxN8-00yA
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 02:17:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 14E5E45D2B;
	Mon, 21 Jul 2025 02:17:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E452DC4CEF6;
	Mon, 21 Jul 2025 02:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753064241;
	bh=ON0v9G9aD+DQBoxown/r7aOQOp8k+PV5Jlf1haFJoFY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=uFfUBpHKTg7hVsVZGXUZmWcMo3uuRDXryn9KcPqvv+OR0JWMp74V5Wl0oGaVLSEN5
	 X0nX42FOyVObH2rRqRrYTYV23q5FOeNYRNEvG1DlH8zbeSFPQ77fwCEyTzQlfcTwPV
	 2ke9zn615zkBbVnFb1z0OaagSz7rFATrVoV7n56s/EFSDn7wzsoUkKYVjztimR5fJu
	 AzmClx9vtEAN0yHuVJvDC2VKVEHXjsKdxFTZ1IRM6T6KUUc609bjBoTradPBmxHhk/
	 MUyClW4AQv2maG9THiWtssaOvnK5XjK0tKpz0f2Ho5lgdBKfynRuyS7byAoDoFhgaF
	 mDwhxJJPGvuSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8B94C83F1A;
	Mon, 21 Jul 2025 02:17:20 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Sun, 20 Jul 2025 21:15:04 -0500
Subject: [PATCH v2 10/17] phy: tegra: xusb: Add Tegra201B01 Support
MIME-Version: 1.0
Message-Id: <20250720-t210b01-v2-10-9cb209f1edfc@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753064238; l=4435;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=DyjvlYeFWjuF8INqah0YPKPBr520ThqIor4dBP2TbD8=;
 b=n/W32LZg64avh0iv4/SI5gHqvkoR3TYgbJPm4iyJuxFUc7bJjMw1fyIEu7XBWnyZpy1ZlfPrr
 Bb430hLd5usBkFeTjOWXYpFZkZoRzRa2zzVJh1EWmy4DFjTYywY0GTZ
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_191723_133979_DC02465D 
X-CRM114-Status: GOOD (  11.29  )
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

It has slightly different lanes compared to the original Tegra210.

Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
---
 drivers/phy/tegra/xusb-tegra210.c | 41 +++++++++++++++++++++++++++++++++++++++
 drivers/phy/tegra/xusb.c          |  4 ++++
 drivers/phy/tegra/xusb.h          |  1 +
 3 files changed, 46 insertions(+)

diff --git a/drivers/phy/tegra/xusb-tegra210.c b/drivers/phy/tegra/xusb-tegra210.c
index ebc8a7e21a318160b162113eea8a6c97b7ed7966..06b587f84270cdea2ea397e55e1e326e270d4caa 100644
--- a/drivers/phy/tegra/xusb-tegra210.c
+++ b/drivers/phy/tegra/xusb-tegra210.c
@@ -2559,6 +2559,15 @@ static const struct tegra_xusb_lane_soc tegra210_pcie_lanes[] = {
 	TEGRA210_UPHY_LANE("pcie-6", 0x028, 24, 0x3, pcie, XUSB_PADCTL_UPHY_MISC_PAD_PX_CTL2(6)),
 };
 
+static const struct tegra_xusb_lane_soc tegra210b01_pcie_lanes[] = {
+	TEGRA210_UPHY_LANE("pcie-0", 0x028, 12, 0x3, pcie, XUSB_PADCTL_UPHY_MISC_PAD_PX_CTL2(0)),
+	TEGRA210_UPHY_LANE("pcie-1", 0x028, 14, 0x3, pcie, XUSB_PADCTL_UPHY_MISC_PAD_PX_CTL2(1)),
+	TEGRA210_UPHY_LANE("pcie-2", 0x028, 16, 0x3, pcie, XUSB_PADCTL_UPHY_MISC_PAD_PX_CTL2(2)),
+	TEGRA210_UPHY_LANE("pcie-3", 0x028, 18, 0x3, pcie, XUSB_PADCTL_UPHY_MISC_PAD_PX_CTL2(3)),
+	TEGRA210_UPHY_LANE("pcie-4", 0x028, 20, 0x3, pcie, XUSB_PADCTL_UPHY_MISC_PAD_PX_CTL2(4)),
+	TEGRA210_UPHY_LANE("pcie-5", 0x028, 22, 0x3, pcie, XUSB_PADCTL_UPHY_MISC_PAD_PX_CTL2(5)),
+};
+
 static struct tegra_xusb_usb3_port *
 tegra210_lane_to_usb3_port(struct tegra_xusb_lane *lane)
 {
@@ -2847,6 +2856,13 @@ static const struct tegra_xusb_pad_soc tegra210_pcie_pad = {
 	.ops = &tegra210_pcie_ops,
 };
 
+static const struct tegra_xusb_pad_soc tegra210b01_pcie_pad = {
+	.name = "pcie",
+	.num_lanes = ARRAY_SIZE(tegra210b01_pcie_lanes),
+	.lanes = tegra210b01_pcie_lanes,
+	.ops = &tegra210_pcie_ops,
+};
+
 static const struct tegra_xusb_lane_soc tegra210_sata_lanes[] = {
 	TEGRA210_UPHY_LANE("sata-0", 0x028, 30, 0x3, pcie, XUSB_PADCTL_UPHY_MISC_PAD_S0_CTL2),
 };
@@ -3016,6 +3032,11 @@ static const struct tegra_xusb_pad_soc * const tegra210_pads[] = {
 	&tegra210_sata_pad,
 };
 
+static const struct tegra_xusb_pad_soc * const tegra210b01_pads[] = {
+	&tegra210_usb2_pad,
+	&tegra210b01_pcie_pad,
+};
+
 static int tegra210_usb2_port_enable(struct tegra_xusb_port *port)
 {
 	return 0;
@@ -3290,6 +3311,26 @@ const struct tegra_xusb_padctl_soc tegra210_xusb_padctl_soc = {
 };
 EXPORT_SYMBOL_GPL(tegra210_xusb_padctl_soc);
 
+const struct tegra_xusb_padctl_soc tegra210b01_xusb_padctl_soc = {
+	.num_pads = ARRAY_SIZE(tegra210b01_pads),
+	.pads = tegra210b01_pads,
+	.ports = {
+		.usb2 = {
+			.ops = &tegra210_usb2_port_ops,
+			.count = 4,
+		},
+		.usb3 = {
+			.ops = &tegra210_usb3_port_ops,
+			.count = 4,
+		},
+	},
+	.ops = &tegra210_xusb_padctl_ops,
+	.supply_names = tegra210_xusb_padctl_supply_names,
+	.num_supplies = ARRAY_SIZE(tegra210_xusb_padctl_supply_names),
+	.need_fake_usb3_port = true,
+};
+EXPORT_SYMBOL_GPL(tegra210b01_xusb_padctl_soc);
+
 MODULE_AUTHOR("Andrew Bresticker <abrestic@chromium.org>");
 MODULE_DESCRIPTION("NVIDIA Tegra 210 XUSB Pad Controller driver");
 MODULE_LICENSE("GPL v2");
diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
index c89df95aa6ca988ea02df6220061be5c7f2c9a46..4a55f1dde660a502d3ff1ab4a275a3f97f19632d 100644
--- a/drivers/phy/tegra/xusb.c
+++ b/drivers/phy/tegra/xusb.c
@@ -59,6 +59,10 @@ static const struct of_device_id tegra_xusb_padctl_of_match[] = {
 		.compatible = "nvidia,tegra210-xusb-padctl",
 		.data = &tegra210_xusb_padctl_soc,
 	},
+	{
+		.compatible = "nvidia,tegra210b01-xusb-padctl",
+		.data = &tegra210b01_xusb_padctl_soc,
+	},
 #endif
 #if defined(CONFIG_ARCH_TEGRA_186_SOC)
 	{
diff --git a/drivers/phy/tegra/xusb.h b/drivers/phy/tegra/xusb.h
index 6e45d194c68947618778dc132720ae757f5fd656..a2074dd3770449c64157e60ef230cefc27238ceb 100644
--- a/drivers/phy/tegra/xusb.h
+++ b/drivers/phy/tegra/xusb.h
@@ -503,6 +503,7 @@ extern const struct tegra_xusb_padctl_soc tegra124_xusb_padctl_soc;
 #endif
 #if defined(CONFIG_ARCH_TEGRA_210_SOC)
 extern const struct tegra_xusb_padctl_soc tegra210_xusb_padctl_soc;
+extern const struct tegra_xusb_padctl_soc tegra210b01_xusb_padctl_soc;
 #endif
 #if defined(CONFIG_ARCH_TEGRA_186_SOC)
 extern const struct tegra_xusb_padctl_soc tegra186_xusb_padctl_soc;

-- 
2.50.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
