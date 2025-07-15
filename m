Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39AB1C83F1D
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 04:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EypdpdoRnsz4mny7ayI5fP9zqD46uNUTWEjLyX4GrW4=; b=An98FWgEwTiLc6
	ZK15o4ULsQFSeV1Y6C79XEPPIfijpCicT7Xo54O5qXHJ2VP6nMdrLXPlmIi12AXT2qWFJSErcNnfA
	hLzpUCE6TZ6a7ZCpzuIbGPKmPpys8TK8asw1JKAitGkGZpXf8fKMWMQizWrz9yHw5AW9pm2oQS2OG
	PYSo7YDsuZvd+W7nN6QVeC23AbGoeMgj4LC1AgAdxr5KpCndsiPlSG45JVnt4U2suJ+pu1qZ8xO0T
	YQCVeEVayRCTExgbTyuFj21Pvio5WKMwOx/Oa/kF85PG8j2XLdp1Bjhne4Cwc6DeXxUgCPCUJD9na
	m6bhxcH3Ew+FMJPoh2Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubXOt-000000041Om-3s5q;
	Tue, 15 Jul 2025 04:36:19 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubWtV-00000003xps-0O0K
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 04:03:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 92EBD467AA;
	Tue, 15 Jul 2025 04:03:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5EA70C2BCAF;
	Tue, 15 Jul 2025 04:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752552231;
	bh=O1H8aQyQkcYZnx7DwkuOzyQf08RWSL8y/htSjyjvz0M=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=tfjXeZo4Xmw89/4wLwJyqbZ+959BK8nUXefiXQ3aUGbpv2eDtkdHLnEM90GQ8HJQz
	 LIY/62K34j5h8GgMavZNg0qRrVFHSNjoCSRcrX7FRSYsJlNSqy/daL+ETuD5VmVi2P
	 kctc0JzLDX+qmzQyPcwR0pxIHmy29ctLQLxaWCZM0abiyO8UOcxsXSQsiaTShPh25T
	 Oxx6rohI7ucljCy58cr9Bj4YC2UvAS6nM/qqHGN2KgYOXuI5+AiKCt42/vNadtSj0z
	 H1fa25Uq3qT4IVciePX8BovD3brQE7Tb1dFnT8sW9jQV8Us3DN0we7wt5T3BQ0AqRa
	 nFGIUIAJiCqqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56333C83F2F;
	Tue, 15 Jul 2025 04:03:51 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Mon, 14 Jul 2025 23:02:54 -0500
Subject: [PATCH 11/17] usb: xhci: tegra: Add Tegra210B01 support
MIME-Version: 1.0
Message-Id: <20250714-t210b01-v1-11-e3f5f7de5dce@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752552229; l=1932;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=FYMpkpyzM578fnGIvudlc1If8b1f7SqQ00jSgTIDo10=;
 b=IZGaeuYCPAcdA7HqcAhnztHUBEbuakRfcaUkoGkPrr6y5zD9XB/sAdNRtnBLyEObkWOFTY8rJ
 HpGkX93861dAVCZYBhothATAUfHwdGyH+JllEFyOyHZAbASs9eIFtb5
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_210353_383488_A5F9DE51 
X-CRM114-Status: UNSURE (   9.45  )
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
Reply-To: webgeek1234@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Aaron Kling <webgeek1234@gmail.com>

This uses a different firmware, but is otherwise compatible with
Tegra210.
---
 drivers/usb/host/xhci-tegra.c | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/usb/host/xhci-tegra.c b/drivers/usb/host/xhci-tegra.c
index 0c7af44d4dae5066e66bd29c961510892b6e1301..aef100415f453fdd95c83cf511a914cf62e3e775 100644
--- a/drivers/usb/host/xhci-tegra.c
+++ b/drivers/usb/host/xhci-tegra.c
@@ -2547,6 +2547,30 @@ static const struct tegra_xusb_soc tegra210_soc = {
 };
 MODULE_FIRMWARE("nvidia/tegra210/xusb.bin");
 
+static const struct tegra_xusb_soc tegra210b01_soc = {
+	.firmware = "nvidia/tegra210b01/xusb.bin",
+	.supply_names = tegra210_supply_names,
+	.num_supplies = ARRAY_SIZE(tegra210_supply_names),
+	.phy_types = tegra210_phy_types,
+	.num_types = ARRAY_SIZE(tegra210_phy_types),
+	.context = &tegra124_xusb_context,
+	.ports = {
+		.usb2 = { .offset = 4, .count = 4, },
+		.hsic = { .offset = 8, .count = 1, },
+		.usb3 = { .offset = 0, .count = 4, },
+	},
+	.scale_ss_clock = false,
+	.has_ipfs = true,
+	.otg_reset_sspi = true,
+	.mbox = {
+		.cmd = 0xe4,
+		.data_in = 0xe8,
+		.data_out = 0xec,
+		.owner = 0xf0,
+	},
+};
+MODULE_FIRMWARE("nvidia/tegra210b01/xusb.bin");
+
 static const char * const tegra186_supply_names[] = {
 };
 MODULE_FIRMWARE("nvidia/tegra186/xusb.bin");
@@ -2659,6 +2683,7 @@ static const struct tegra_xusb_soc tegra234_soc = {
 static const struct of_device_id tegra_xusb_of_match[] = {
 	{ .compatible = "nvidia,tegra124-xusb", .data = &tegra124_soc },
 	{ .compatible = "nvidia,tegra210-xusb", .data = &tegra210_soc },
+	{ .compatible = "nvidia,tegra210b01-xusb", .data = &tegra210b01_soc },
 	{ .compatible = "nvidia,tegra186-xusb", .data = &tegra186_soc },
 	{ .compatible = "nvidia,tegra194-xusb", .data = &tegra194_soc },
 	{ .compatible = "nvidia,tegra234-xusb", .data = &tegra234_soc },

-- 
2.50.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
