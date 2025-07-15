Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 218EEC83F27
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 04:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XU+eQn7FHwyHD6z+/22Y7NRkj/HLCP534fDqjk/cSNE=; b=q1otJin4p8+cpu
	MFR1cYVEoEdxKrGxLaz8TF2VXBCLMFzzKDjQzjW1WkxkbMhsmJKj7bP8XU2uZQNlIMFZflHjWItjF
	G/4QmbFPch6KmlkaeOBm6lrbvMzbIYIjl9A5UR+8hShUOE/6pClqfmTUmU0akwcWqQcqtVGSPfdab
	42LzIuPN0jUXDbDghIN8eORhDVHbmAPKFNpPqICdV39opfBkVA/w2bxKPuYTfHXYFT1A31nE8kxhq
	prM0k0D3K2P96ed7ZgA4UCRmweJJ0kAAb8UfMiRRRrB/EQZSw4FOB/EXaDNBxN16Phc8OPJfLdmAd
	EQm2HsGrbLOOxqmFyNkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubXOu-000000041PU-2rvG;
	Tue, 15 Jul 2025 04:36:20 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubWtV-00000003xq1-1LJa
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 04:03:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E14F14629B;
	Tue, 15 Jul 2025 04:03:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE67C19425;
	Tue, 15 Jul 2025 04:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752552231;
	bh=69mT4j9gGXbCwC6IkkO5kcgglBEd5iCH6O4+hlHZFSk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=nigDLP18VaNEzjJMeF8RvKkLgdk43JpoKP68NQdV+5+Sz/JAALgGnS755n3xsgYr8
	 HxllM9g7d3B2Pm3BakbZLd4h0wpSSYDCgAOse2N7HOQ3vT8GjvTuMnJydC19ZEHyvZ
	 JFR4DOL8f8b4PbtpcwK7xG0l5B+2WXZBnQU0vOB65Hzbs7+jYvBxI/WmBhhzjFelo6
	 04lKCrAHVzSiKoTAkAkM7L6VV2ik8gCOv1AK6S7nepwrzV9S+3EodGdoKqIviLgyZh
	 I1C/3tnh1oERR1Ge6f0lp8Uyu0S8VuP9OCYvx4+TMzYO7UN4JKzpcnODsOicIT+yGN
	 6oCNvtf2eFehQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F875C83F2E;
	Tue, 15 Jul 2025 04:03:51 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Mon, 14 Jul 2025 23:02:58 -0500
Subject: [PATCH 15/17] arm64: tegra: Add BPMP node for Tegra210
MIME-Version: 1.0
Message-Id: <20250714-t210b01-v1-15-e3f5f7de5dce@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752552229; l=1355;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=EGqGpsmvVUcZ9BC/fErJCUcbZka+SWE7U9kl0UCL2e0=;
 b=mdM9cDjp2UVQwDqZNIt4haw/jqF7QKWVAk+1bKi6m2zSE+O3aSw0x9JGVxpwNHm7atlknU0w/
 CazoxeUkeIQAXH/SGE+z9O1gO9SzReVSRTf5oDW6/2gMtHB7hJriSrp
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_210353_563085_4D7975F6 
X-CRM114-Status: GOOD (  10.07  )
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

The Tegra210 soc supports bpmp offload for power management among other
things. This was considered insecure partway through the soc's lifecycle
and support was removed in the bootloader. However, Tegra210B01 returned
to using the bpmp. Plus old bootloaders on the original Tegra210 still
work with the existing driver. So add the node to the common Tegra210
soc dtsi, but disabled by default.

Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
---
 arch/arm64/boot/dts/nvidia/tegra210.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra210.dtsi b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
index 402b0ede1472af625d9d9e811f5af306d436cc98..3361de1ab41b37e430d399df2bf77d64226f33e8 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
@@ -968,6 +968,17 @@ cec@70015000 {
 		status = "disabled";
 	};
 
+	bpmp: bpmp@70016000 {
+		compatible = "nvidia,tegra210-bpmp";
+		reg = <0x0 0x70016000 0x0 0x2000
+		       0x0 0x60001000 0x0 0x1000>;
+		status = "disabled";
+
+		interrupts = <GIC_SPI 6 IRQ_TYPE_EDGE_RISING>,
+			     <GIC_SPI 4 IRQ_TYPE_EDGE_RISING>;
+		interrupt-names = "tx", "rx";
+	};
+
 	mc: memory-controller@70019000 {
 		compatible = "nvidia,tegra210-mc";
 		reg = <0x0 0x70019000 0x0 0x1000>;

-- 
2.50.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
