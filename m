Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32C70C87FC5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 02:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K+NycSrpOsJfeOmMBUFMbvgIZg+s+WocBmt7fihL9ys=; b=WpueUErw48SIc/
	z3vPWVpRa1zX6ixzVraUS85wJU5nr5FXrL7kGVhZY7rv5R6Zm9yB2hzfv6zPBqQCloJwRGmnebJrJ
	we9BelPhPWTrH4p7mjDrzIlv+dIZlhTHDQ43vmG2++ULXQ5S999dfLt9hSKf/sxKqkCstKPOjZRIH
	Cd3vLbp3L2uBEG5QaHOtW2bWeJ3vtYVtWq/LrHLjSjLULbE2dkRcTzbzht/lvQbOiZZSJLdq5YSTX
	YmrsoBbbFkDBcyhZ/f8+VGWgbU3HTfdguwkBZBfWDESjTgzxQff32h7VjjMj3bpdt9vpG3flVcoWi
	hWT8DPyI04Pj+mUtDlqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udg5p-0000000FxUu-3ogg;
	Mon, 21 Jul 2025 02:17:29 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udg5j-0000000FxND-06vk
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 02:17:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 328B645D34;
	Mon, 21 Jul 2025 02:17:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11D3DC4CEFB;
	Mon, 21 Jul 2025 02:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753064241;
	bh=qp9tUPFQuumYksisjGHPVxkd5k0ASmphuZsAeWWISew=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=tMgDu/p/Klfmd52jEZH9nxTP+aC83HmY+nR6oQeGSVg5uBa3kCxAoZaEVIUnw+jYb
	 SZsBa++RzKfCwaNZ+j3WcBs+6UP+yHXz1gypztaN4yBgMC/A2xhh+NDB2K9myD41xQ
	 ATjxvH+Zx73gKiHfp0Tlw/OdJxnLzFWX0zggRHVhMk7c5lntS3WGR+Gcobvf4ie68a
	 isNlSXODLgJuON6zBA16+vvN5MOHjnnwIXr3zrVP/HRUqKUkuPez7vybLRyGSmxXNT
	 NZfA+tO4a7xqDdtIuR7KLWrqkvsbLdJk5ynaMH7Q0BvZ9SvPErjAChgRcFafxMJGVm
	 rHdv3j5BFVD3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05EF1C87FC6;
	Mon, 21 Jul 2025 02:17:21 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Sun, 20 Jul 2025 21:15:06 -0500
Subject: [PATCH v2 12/17] usb: gadget: tegra-xudc: Add Tegra210B01 Support
MIME-Version: 1.0
Message-Id: <20250720-t210b01-v2-12-9cb209f1edfc@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753064238; l=1624;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=If0Hje67iTpggX4b+9TtDr2gpSLnQeDIgSv7GE82lsA=;
 b=+NLKfcfz9GwPFjmm4POLuf7fNqzdg2v20Awvp09SyxlKT8iidTCJEY6/kbi1s15fho1B7xgFC
 79xu7pkkJNkA9jyXejvfcidxdaNTNNDuZ7gpJFFUGc8Xq4NrtgP5Gr9
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_191723_144654_826D0053 
X-CRM114-Status: GOOD (  10.12  )
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

It doesn't need some of the workarounds that the original Tegra210 does.

Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
---
 drivers/usb/gadget/udc/tegra-xudc.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/usb/gadget/udc/tegra-xudc.c b/drivers/usb/gadget/udc/tegra-xudc.c
index 2957316fd3d003e8444a825a72d228b7db06febe..1d2fb9bd51c7369dc5d056e49ae184659a40406c 100644
--- a/drivers/usb/gadget/udc/tegra-xudc.c
+++ b/drivers/usb/gadget/udc/tegra-xudc.c
@@ -3652,6 +3652,22 @@ static struct tegra_xudc_soc tegra210_xudc_soc_data = {
 	.has_ipfs = true,
 };
 
+static struct tegra_xudc_soc tegra210b01_xudc_soc_data = {
+	.supply_names = tegra210_xudc_supply_names,
+	.num_supplies = ARRAY_SIZE(tegra210_xudc_supply_names),
+	.clock_names = tegra210_xudc_clock_names,
+	.num_clks = ARRAY_SIZE(tegra210_xudc_clock_names),
+	.num_phys = 4,
+	.u1_enable = false,
+	.u2_enable = true,
+	.lpm_enable = false,
+	.invalid_seq_num = false,
+	.pls_quirk = false,
+	.port_reset_quirk = true,
+	.port_speed_quirk = false,
+	.has_ipfs = true,
+};
+
 static struct tegra_xudc_soc tegra186_xudc_soc_data = {
 	.clock_names = tegra186_xudc_clock_names,
 	.num_clks = ARRAY_SIZE(tegra186_xudc_clock_names),
@@ -3698,6 +3714,10 @@ static const struct of_device_id tegra_xudc_of_match[] = {
 		.compatible = "nvidia,tegra210-xudc",
 		.data = &tegra210_xudc_soc_data
 	},
+	{
+		.compatible = "nvidia,tegra210b01-xudc",
+		.data = &tegra210b01_xudc_soc_data
+	},
 	{
 		.compatible = "nvidia,tegra186-xudc",
 		.data = &tegra186_xudc_soc_data

-- 
2.50.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
