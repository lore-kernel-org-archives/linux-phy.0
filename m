Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8EB8C83F22
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 04:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LpbWN4FnvNVmKJ2YVK1exUEPMSTkhLcjqzRRZONS+v0=; b=F49Cv0UdwI5Ebz
	v3qyuIAXj0elTqVtNX6o0znh+NklzQ73Wf9CfSTyfSFCGLK784HAVD4d0ojcc8ASgcOz+WdNO15Xa
	EzG7m574SbdRpodlQcU6T1ful2ft3q8yYFGJSY1m+RNnGX5zleDRt63/UcVAtuQ8J1iBqNCdYr08A
	v4L8P9L350l+3V/P05Oqt5aJib4JhjqhtMis/x/sMCjKudi/y2aMOKWY+5qx8q2xGXi3e1Heb/iam
	ufXygbcNHB7JinCHvghFeXBmzelHA0I8B4POcOKntKL567doClVzJiuyLV2N54/bzZy8Gm46I9Xx3
	2jqPZ52YyUJJSpOJjEiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubXOi-000000041F1-3UW5;
	Tue, 15 Jul 2025 04:36:09 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubWtU-00000003xoz-1qeM
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 04:03:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id BDE2E61492;
	Tue, 15 Jul 2025 04:03:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EC91C4CEF1;
	Tue, 15 Jul 2025 04:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752552231;
	bh=8XHtSfC2ebH34+htWvEVWam88ECVhbOPEjKTBosP36M=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=g/l2XBgvd8t+W6vEh/KOnsx4FBK4zAHQi5sEFcvjPZ4vc9KMsd/uJUUBWkg07WDnb
	 Kkmf2IUfqfJo0As0P4IgRq+GwXK7YphNXQLzSNHF1KKBfOMZf7XwSAiMOHrJ25uOs5
	 fzuSqgM9Ly3nQe+37FcBFmHzLAaLPeCBtdWuCkjRVPtaV7+SMRQ2wVgZLHWlkXNelb
	 RdM84H4cYS/S/J4L2EaQ5sAqNWRe4OQg/RMmjcnwnDcbxiEaZW/kT87Ff10Z+iXKXt
	 ZkzdZuQ3xqcrJHJfYFGVFPi6sPte4GiAgDHya8qDYUAruuh3O4VHc/B0FYHaacl/eD
	 FfyYlP74vLY3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 747D7C83F2E;
	Tue, 15 Jul 2025 04:03:51 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Mon, 14 Jul 2025 23:02:56 -0500
Subject: [PATCH 13/17] thermal: tegra: Add Tegra210B01 Support
MIME-Version: 1.0
Message-Id: <20250714-t210b01-v1-13-e3f5f7de5dce@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752552229; l=4724;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=ZTHZksfHlIxysbAaJHHhbZR9I6Z/OnRkEYYXQcE8KVM=;
 b=8bwnEv+juqDwOC653qmsqpRvdzpkcOy+aV1SQ5AXOhYjO+I7luZqUcUhrFn/V12PUyySpevTJ
 rschJRrtETMCPrFH4PwCgkuKQ4zsJb+1XHs5LFtfJ2zabx2dj9ychbW
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

Add Tegra210B01 SOC_THERM configuration

Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
---
 drivers/thermal/tegra/soctherm.c          |  4 ++
 drivers/thermal/tegra/soctherm.h          |  1 +
 drivers/thermal/tegra/tegra210-soctherm.c | 78 +++++++++++++++++++++++++++++++
 3 files changed, 83 insertions(+)

diff --git a/drivers/thermal/tegra/soctherm.c b/drivers/thermal/tegra/soctherm.c
index 926f1052e6de04fc4d5ff78334b52ffe98cdf4ca..e07ae0e5553f38b78f30bb88a0e02aca995d7b5a 100644
--- a/drivers/thermal/tegra/soctherm.c
+++ b/drivers/thermal/tegra/soctherm.c
@@ -2065,6 +2065,10 @@ static const struct of_device_id tegra_soctherm_of_match[] = {
 		.compatible = "nvidia,tegra210-soctherm",
 		.data = &tegra210_soctherm,
 	},
+	{
+		.compatible = "nvidia,tegra210b01-soctherm",
+		.data = &tegra210b01_soctherm,
+	},
 #endif
 	{ },
 };
diff --git a/drivers/thermal/tegra/soctherm.h b/drivers/thermal/tegra/soctherm.h
index 70501e73d586230d3caca8dea0966afd7f23142a..0d80e739b67da23571137db0cc3140c8967fa071 100644
--- a/drivers/thermal/tegra/soctherm.h
+++ b/drivers/thermal/tegra/soctherm.h
@@ -147,6 +147,7 @@ extern const struct tegra_soctherm_soc tegra132_soctherm;
 
 #ifdef CONFIG_ARCH_TEGRA_210_SOC
 extern const struct tegra_soctherm_soc tegra210_soctherm;
+extern const struct tegra_soctherm_soc tegra210b01_soctherm;
 #endif
 
 #endif
diff --git a/drivers/thermal/tegra/tegra210-soctherm.c b/drivers/thermal/tegra/tegra210-soctherm.c
index d0ff793f18c561230497b57b325ae87f12a7b83a..80f67c1fd496d613147ecc6618c4934d03b1e67e 100644
--- a/drivers/thermal/tegra/tegra210-soctherm.c
+++ b/drivers/thermal/tegra/tegra210-soctherm.c
@@ -44,6 +44,14 @@ static const struct tegra_tsensor_configuration tegra210_tsensor_config = {
 	.tsample_ate = 480,
 };
 
+static const struct tegra_tsensor_configuration tegra210b01_tsensor_config = {
+	.tall = 16300,
+	.tiddq_en = 1,
+	.ten_count = 1,
+	.tsample = 240,
+	.tsample_ate = 480,
+};
+
 static const struct tegra_tsensor_group tegra210_tsensor_group_cpu = {
 	.id = TEGRA124_SOCTHERM_SENSOR_CPU,
 	.name = "cpu",
@@ -125,6 +133,12 @@ static const struct tegra_tsensor_group *tegra210_tsensor_groups[] = {
 	&tegra210_tsensor_group_mem,
 };
 
+static const struct tegra_tsensor_group *tegra210b01_tsensor_groups[] = {
+	&tegra210_tsensor_group_cpu,
+	&tegra210_tsensor_group_gpu,
+	&tegra210_tsensor_group_pll,
+};
+
 static const struct tegra_tsensor tegra210_tsensors[] = {
 	{
 		.name = "cpu0",
@@ -193,6 +207,58 @@ static const struct tegra_tsensor tegra210_tsensors[] = {
 	},
 };
 
+static const struct tegra_tsensor tegra210b01_tsensors[] = {
+	{
+		.name = "cpu0",
+		.base = 0xc0,
+		.config = &tegra210_tsensor_config,
+		.calib_fuse_offset = 0x098,
+		.fuse_corr_alpha = 1085000,
+		.fuse_corr_beta = 3244200,
+		.group = &tegra210_tsensor_group_cpu,
+	}, {
+		.name = "cpu1",
+		.base = 0xe0,
+		.config = &tegra210_tsensor_config,
+		.calib_fuse_offset = 0x084,
+		.fuse_corr_alpha = 1126200,
+		.fuse_corr_beta = -67500,
+		.group = &tegra210_tsensor_group_cpu,
+	}, {
+		.name = "cpu2",
+		.base = 0x100,
+		.config = &tegra210_tsensor_config,
+		.calib_fuse_offset = 0x088,
+		.fuse_corr_alpha = 1098400,
+		.fuse_corr_beta = 2251100,
+		.group = &tegra210_tsensor_group_cpu,
+	}, {
+		.name = "cpu3",
+		.base = 0x120,
+		.config = &tegra210_tsensor_config,
+		.calib_fuse_offset = 0x12c,
+		.fuse_corr_alpha = 1108000,
+		.fuse_corr_beta = 602700,
+		.group = &tegra210_tsensor_group_cpu,
+	}, {
+		.name = "gpu",
+		.base = 0x180,
+		.config = &tegra210_tsensor_config,
+		.calib_fuse_offset = 0x154,
+		.fuse_corr_alpha = 1074300,
+		.fuse_corr_beta = 2734900,
+		.group = &tegra210_tsensor_group_gpu,
+	}, {
+		.name = "pllx",
+		.base = 0x1a0,
+		.config = &tegra210_tsensor_config,
+		.calib_fuse_offset = 0x160,
+		.fuse_corr_alpha = 1039700,
+		.fuse_corr_beta = 6829100,
+		.group = &tegra210_tsensor_group_pll,
+	},
+};
+
 /*
  * Mask/shift bits in FUSE_TSENSOR_COMMON and
  * FUSE_TSENSOR_COMMON, which are described in
@@ -226,3 +292,15 @@ const struct tegra_soctherm_soc tegra210_soctherm = {
 	.use_ccroc = false,
 	.thermtrips = tegra210_tsensor_thermtrips,
 };
+
+const struct tegra_soctherm_soc tegra210b01_soctherm = {
+	.tsensors = tegra210b01_tsensors,
+	.num_tsensors = ARRAY_SIZE(tegra210b01_tsensors),
+	.ttgs = tegra210b01_tsensor_groups,
+	.num_ttgs = ARRAY_SIZE(tegra210b01_tsensor_groups),
+	.tfuse = &tegra210_soctherm_fuse,
+	.thresh_grain = TEGRA210_THRESH_GRAIN,
+	.bptt = TEGRA210_BPTT,
+	.use_ccroc = false,
+	.thermtrips = tegra210_tsensor_thermtrips,
+};

-- 
2.50.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
