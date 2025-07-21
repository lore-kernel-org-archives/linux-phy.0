Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88439C83F17
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 02:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7peBnuuA41OqJcVTX5SItqqZr1dYlyMgNgxKq+7EBp4=; b=aa9pxt+ujAGzrE
	UpBeX0PztojuJ97c9+2o60H+o5Bfsmigm5H4Sh7SmUiGrwj4snLpkj36AXS2N3QoYpQGeCo+ZKFMG
	CcJpzwDP7tU4CuFnXFfjSozcvPlKB0QGwMKoj+vsvzq8Ci/Fr+kZA9Dv85UUPF29fabEUTXp+qdYV
	L+eQdrL+zdlUixoeoyc/ZXvrWF76zVHSMN7aSIW6Ci33CyI1EZdnP3awfpKz/XIc0XnyE3r6xDQv0
	vN6/sOOPaikNmnsEYE+eT9SiCcJhWuJe4Sep8Ldk0ZhqvGiQnCtr1/t6lUNDH5+ucdJjcpReMXvkU
	EdPsFkGLT9r2OsnC47TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udg5p-0000000FxUK-1LBR;
	Mon, 21 Jul 2025 02:17:29 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udg5i-0000000FxL6-0jL5
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 02:17:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 8070CA527B9;
	Mon, 21 Jul 2025 02:17:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4C4DFC4CEEB;
	Mon, 21 Jul 2025 02:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753064241;
	bh=HKncAPxSIMFbw/2kZa81BXmIQwYXT5pSJU8eZyb16Cw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=sDF8p2SVWKxAW8J8sVNoycp3TMCvNEy5tH33ogmoNDZGN4d0EPFFba4hOSIc5pKYA
	 PvRMaAac86/chcGIv6ZLiPvUZojhVXBetuzUjjWJbrnegEVtVm0QU9z340HRuqepo5
	 W9Rso2yyrnDBaM/oyuqmJWrkoflU+nTgSt63zvjVmgqB5VhqYGOy6Hp/QCC/66LJgn
	 uMrywjTTh6IwMgg06aKRsuwSyUXCWozEuJuaTz2CrDMMyvyTR1QLdg8x0Mxm05aI5J
	 ZrfBFjrOAMvEyEwTcPU6P3LzYHQP8B8c7M+qM0nyf1/DwRwbBqnwTOxmPrrXkvq0v2
	 VoyTRw9K4A/4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4443EC83F17;
	Mon, 21 Jul 2025 02:17:21 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Sun, 20 Jul 2025 21:15:09 -0500
Subject: [PATCH v2 15/17] arm64: tegra: Add BPMP node for Tegra210
MIME-Version: 1.0
Message-Id: <20250720-t210b01-v2-15-9cb209f1edfc@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753064238; l=1355;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=Hy6C9irOt/10mikaBceHy3GtlZHG/JQi0cSRGeXarHY=;
 b=EfHg7uCuTKPxSk0yEqtg1tdc8FokfNrH8aTGAsexCfz0kAHF4YypdOpv+MuIC8f81hsYMrDlp
 IZ/nwyRzRXeDveBxKSISA5ao0hXZ9iMk5PH60qtWJwALZHzNE1O/kwh
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_191722_351200_46A4913E 
X-CRM114-Status: GOOD (  10.06  )
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
2.50.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
