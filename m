Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D130BC64EC4
	for <linux-phy@archiver.kernel.org>; Mon,  6 Mar 2023 16:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gYb9t4O/GVMRh87b0IiAG/rawEqGIKzL9tIlGZ5cNas=; b=mhvm3ZbYIpvpoM
	2T9aGudmfgMheJW+7KygWqvrAHRl6XtoDR+fg7zo/gxAItWzAe+bi+I0a/DytoW22vjo7FnyR5Qxj
	0DURD8byVpqzO8FMzMyS5bbpWPgI4wy9/dwO8lPJd/S7iBynT2LWR4hySDhtdwNjpWl/GDEXpbTTt
	+F9J9cTN4zLbyiQza0wKLv2z6wM8JBk1aOUSPnqQRhL5Kmbn1P3Khxrr391FnpBQddK73QWpdeMTA
	eLLXQdJlZVFBZUr2jbhX798XBCcOa7GAH6frDXukpGefIEhAMPC28ryy4zkGYmfs4N8NUQRoYtwV7
	qx4Odw17NL+/y8ck3ojw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZE61-00E0vB-6i; Mon, 06 Mar 2023 16:53:57 +0000
Received: from vmi888983.contaboserver.net ([149.102.157.145] helo=amity.mint.lgbt)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZE5y-00E0uF-P9
	for linux-phy@lists.infradead.org; Mon, 06 Mar 2023 16:53:56 +0000
Received: from amity.mint.lgbt (mx.mint.lgbt [127.0.0.1])
	by amity.mint.lgbt (Postfix) with ESMTP id 4PVl5s1yPJz1S5Jn
	for <linux-phy@lists.infradead.org>; Mon,  6 Mar 2023 11:53:53 -0500 (EST)
Authentication-Results: amity.mint.lgbt (amavisd-new);
	dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
	header.d=mint.lgbt
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mint.lgbt; h=
	content-transfer-encoding:mime-version:references:in-reply-to
	:x-mailer:message-id:date:subject:to:from; s=dkim; t=1678121632;
	 x=1678985633; bh=7xRNWZDL/30mtu3WxKxjUXO6ZS/+UYamjJhFWwATyYA=; b=
	lPfFY5pXnLHpXBhxCVGxkgHUfN5z5doLiyiZ7zwinj5+ldD4ag0i18FQIxxY0qnm
	HbcDuUGTrzEvHHDaAy93hyLT3brBM4m028hanVEFfpHPYhqLsf76aMsukJ1N8FS6
	oAzJ1hLR8lwJ8lRIgWbQpcTs5SbHqauBnajn86CWWx/LHHnn6IigDc7MVF5DQKmV
	fiOPflcn4+VinwhNgi3L5GhBHzjOR8wPuTtKPfw1ODVU0Rhm53CHOAsuVpZ041t3
	4/Qzlrwaa2sTW6ZQKlyxRaF1G5n7M4WBfF2OARNxsUfWqOMJrUgMemdQqYVBNYG2
	nQm6frKjjBslUWQJd+uypA==
X-Virus-Scanned: amavisd-new at amity.mint.lgbt
Received: from amity.mint.lgbt ([127.0.0.1])
	by amity.mint.lgbt (amity.mint.lgbt [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 7QvE673c82Iu for <linux-phy@lists.infradead.org>;
	Mon,  6 Mar 2023 11:53:52 -0500 (EST)
Received: from dorothy.. (unknown [186.105.8.42])
	by amity.mint.lgbt (Postfix) with ESMTPSA id 4PVl5d05V6z1S5JW;
	Mon,  6 Mar 2023 11:53:40 -0500 (EST)
From: Lux Aliaga <they@mint.lgbt>
To: agross@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	keescook@chromium.org,
	tony.luck@intel.com,
	gpiccoli@igalia.com
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	phone-devel@vger.kernel.org,
	martin.botka@somainline.org,
	marijn.suijten@somainline.org,
	Lux Aliaga <they@mint.lgbt>
Subject: [PATCH v7 4/6] arm64: dts: qcom: sm6125: Add UFS nodes
Date: Mon,  6 Mar 2023 13:52:43 -0300
Message-Id: <20230306165246.14782-5-they@mint.lgbt>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230306165246.14782-1-they@mint.lgbt>
References: <20230306165246.14782-1-they@mint.lgbt>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230306_085355_001611_A7D4B653 
X-CRM114-Status: UNSURE (   6.76  )
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

Adds a UFS host controller node and its corresponding PHY to
the sm6125 platform.

Signed-off-by: Lux Aliaga <they@mint.lgbt>
---
 arch/arm64/boot/dts/qcom/sm6125.dtsi | 62 ++++++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6125.dtsi b/arch/arm64/boot/dts/qcom/sm6125.dtsi
index df5453fcf2b9..7384d88f44cc 100644
--- a/arch/arm64/boot/dts/qcom/sm6125.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6125.dtsi
@@ -511,6 +511,68 @@ sdhc_2: mmc@4784000 {
 			status = "disabled";
 		};
 
+		ufs_mem_hc: ufs@4804000 {
+			compatible = "qcom,sm6125-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
+			reg = <0x04804000 0x3000>, <0x04810000 0x8000>;
+			reg-names = "std", "ice";
+			interrupts = <GIC_SPI 356 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
+				 <&gcc GCC_SYS_NOC_UFS_PHY_AXI_CLK>,
+				 <&gcc GCC_UFS_PHY_AHB_CLK>,
+				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
+				 <&rpmcc RPM_SMD_XO_CLK_SRC>,
+				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
+				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
+				 <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
+			clock-names = "core_clk",
+				      "bus_aggr_clk",
+				      "iface_clk",
+				      "core_clk_unipro",
+				      "ref_clk",
+				      "tx_lane0_sync_clk",
+				      "rx_lane0_sync_clk",
+				      "ice_core_clk";
+			freq-table-hz = <50000000 240000000>,
+					<0 0>,
+					<0 0>,
+					<37500000 150000000>,
+					<0 0>,
+					<0 0>,
+					<0 0>,
+					<75000000 300000000>;
+
+			resets = <&gcc GCC_UFS_PHY_BCR>;
+			reset-names = "rst";
+			#reset-cells = <1>;
+
+			phys = <&ufs_mem_phy>;
+			phy-names = "ufsphy";
+
+			lanes-per-direction = <1>;
+
+			iommus = <&apps_smmu 0x200 0x0>;
+
+			status = "disabled";
+		};
+
+		ufs_mem_phy: phy@4807000 {
+			compatible = "qcom,sm6125-qmp-ufs-phy";
+			reg = <0x04807000 0xdb8>;
+
+			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>, <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+			clock-names = "ref", "ref_aux";
+
+			resets = <&ufs_mem_hc 0>;
+			reset-names = "ufsphy";
+
+			power-domains = <&gcc UFS_PHY_GDSC>;
+
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
 		gpi_dma0: dma-controller@4a00000 {
 			compatible = "qcom,sm6125-gpi-dma", "qcom,sdm845-gpi-dma";
 			reg = <0x04a00000 0x60000>;
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
