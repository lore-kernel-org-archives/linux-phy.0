Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15C4FE7FDE0
	for <linux-phy@archiver.kernel.org>; Tue,  3 Feb 2026 00:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jb9YAOTq+VZQLAAI8n8YBVb5yvq80FiUmpAjlb7Tu+4=; b=qU8iD78cupHANe
	Pynyj2QMKVnrIciiMsFjkIUl34e2sBPzKqCMAsn+i98h0ItAbh0Ao/UPdkb2+GnqfxZwpUwc1vqfK
	gNH499VGODVHDL5AoFqUpwFS3KXxDF2FfIj314Z99pbX0o5caa8pZl3TEqyGdT8gPGe39c6P8u2co
	pOAEi/gO2cLMyC3DvuzrJsg+u1etZcUKG9UlWrS0xL8noOINxaKnudhc2ukkgr+B0xzWDidFw3yBj
	ok9f+YFClJLt43mncwfp7Hnl7egIhopebiW0JFomMoRcfJDLPs1QzCmD4lEv6aW1Gdni+dHbwTlRU
	kxjJBuiMZk/RgzQ1cEkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vn4BF-00000005n0G-37Lq;
	Tue, 03 Feb 2026 00:22:09 +0000
Received: from out-180.mta0.migadu.com ([91.218.175.180])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vn4BC-00000005mtf-2BRz
	for linux-phy@lists.infradead.org;
	Tue, 03 Feb 2026 00:22:08 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1770078123;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xEDks71jPWIaYxTqElZUBzlKtd2fk7erRCnRdd5d4ug=;
	b=BKB6Y3pIE2fBGnuvhOOin7POuW77yEcRZpaJCYRLs0TbIu8wNx6XztyKKtkdrc7HGFjgqw
	FQiYsBC8g/AhJRteLaH5mEl7Kto4SI97SbUbkdjAmq/c9Y5vjww2OojVXZuelmsk0pEGsJ
	d7fOcDAsv8dE2AB1yRMZ10Vdb/9iyR8=
From: Sean Anderson <sean.anderson@linux.dev>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org
Cc: =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>,
	linux-kernel@vger.kernel.org,
	Michal Simek <michal.simek@amd.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Thippeswamy Havalige <thippeswamy.havalige@amd.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Sean Anderson <sean.anderson@linux.dev>
Subject: [PATCH 8/8] arm64: zynqmp: Add PCIe resets
Date: Mon,  2 Feb 2026 19:21:28 -0500
Message-Id: <20260203002128.935842-9-sean.anderson@linux.dev>
In-Reply-To: <20260203002128.935842-1-sean.anderson@linux.dev>
References: <20260203002128.935842-1-sean.anderson@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_162206_716817_D63199FC 
X-CRM114-Status: UNSURE (   6.59  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add PCIe reset bindings for the ZynqMP.

Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
---

 arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index 938b014ca923..178b4c3a7ba4 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -969,6 +969,10 @@ pcie: pcie@fd0e0000 {
 					<0x0 0x0 0x0 0x4 &pcie_intc 0x4>;
 			/* iommus = <&smmu 0x4d0>; */
 			power-domains = <&zynqmp_firmware PD_PCIE>;
+			resets = <&zynqmp_reset ZYNQMP_RESET_PCIE_CFG>,
+				 <&zynqmp_reset ZYNQMP_RESET_PCIE_BRIDGE>,
+				 <&zynqmp_reset ZYNQMP_RESET_PCIE_CTRL>;
+			reset-names = "cfg", "bridge", "ctrl";
 			pcie_intc: legacy-interrupt-controller {
 				interrupt-controller;
 				#address-cells = <0>;
-- 
2.35.1.1320.gc452695387.dirty


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
