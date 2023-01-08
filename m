Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCC89C54EBC
	for <linux-phy@archiver.kernel.org>; Sun,  8 Jan 2023 19:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H7R3J1i0TZ7m1mzc98jPDc1Kyw1KkBQaMz0p5uyLp5w=; b=EFRdf/soo6DRXF
	23sscii4jonKpMY8SvXqSxvzAmCDR9jwnFGWEK2ayVS20IObZdTyU7TKG63wGrPt7Jaqdcj2UrB8g
	Sgv6i35Li4pdXEVD014vf2k36Jnl/Rc0riNsrilbGFw6TAO4TdPGJX0dLngTV/YWg8RDmm8hPwwAj
	Y0eWmnKFgO+aLecY2TGiCGdkIZ9VT0ZACcEGXK5J1lPcSMfQQ/uvEF6X3VKaP+InyhKEEZuDMUBSx
	tACspgVgHzbcy0yNXzjz/Wpgt3xga+CB0G/cBWdqDrHjZHIAjEtJbmuwHlcl0PZlkpEC3GD4Akz3P
	eo2SSfA+MEhLnlvcE5Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEbkU-00FXME-8m; Sun, 08 Jan 2023 19:54:30 +0000
Received: from vmi888983.contaboserver.net ([149.102.157.145] helo=amity.mint.lgbt)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEbkR-00FXLG-SH
	for linux-phy@lists.infradead.org; Sun, 08 Jan 2023 19:54:29 +0000
Received: from amity.mint.lgbt (mx.mint.lgbt [127.0.0.1])
	by amity.mint.lgbt (Postfix) with ESMTP id 4NqnpV4jBFz1S5FM
	for <linux-phy@lists.infradead.org>; Sun,  8 Jan 2023 14:54:26 -0500 (EST)
Authentication-Results: amity.mint.lgbt (amavisd-new);
	dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
	header.d=mint.lgbt
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mint.lgbt; h=
	content-transfer-encoding:mime-version:references:in-reply-to
	:x-mailer:message-id:date:subject:to:from; s=dkim; t=1673207666;
	 x=1674071667; bh=7SGUnv8/9GXAMnrXipF1Gnrfa8E+qEW51nU9dPwZc7E=; b=
	JFHRwCJ9BlEk12kR3A0jr042Pq97+HuWUT6enkGI18ibTgy+1jCIbr7SEJpAKu3H
	a2KwGUxn9u6c6phOJcR1cQJyhsqILNxMAJ9+hcYaDTsTzgl+6s0d4jCNTHVZtclk
	kQ8tHoqGu7Hf/0RH0RYuvLfE5Ah4gbFdQqYJkYmJg1ioygEX5x9wgIgVAQsRBwYz
	eeAUDANLSNCoxRkjOLr35lIFlW/gnyBqzRzQpCFnygwJHMwMhASlih+WrmEGKIjX
	QuDMXcFqQ7z2j1PNkq7X9F579bDaDqlACxPzaN6H8DYKo0Bk5S1pYt4rsesucduo
	Fww5dAmIjhUA6tCm4iJjtw==
X-Virus-Scanned: amavisd-new at amity.mint.lgbt
Received: from amity.mint.lgbt ([127.0.0.1])
	by amity.mint.lgbt (amity.mint.lgbt [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id PVNai9B6OEN4 for <linux-phy@lists.infradead.org>;
	Sun,  8 Jan 2023 14:54:26 -0500 (EST)
Received: from dorothy.. (unknown [186.105.5.197])
	by amity.mint.lgbt (Postfix) with ESMTPSA id 4NqnpK3xc8z1S59n;
	Sun,  8 Jan 2023 14:54:17 -0500 (EST)
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
Subject: [PATCH v6 4/6] arm64: dts: qcom: sm6125: Add UFS nodes
Date: Sun,  8 Jan 2023 16:53:34 -0300
Message-Id: <20230108195336.388349-5-they@mint.lgbt>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230108195336.388349-1-they@mint.lgbt>
References: <20230108195336.388349-1-they@mint.lgbt>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230108_115428_067761_B92EBE9A 
X-CRM114-Status: UNSURE (   7.08  )
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
 arch/arm64/boot/dts/qcom/sm6125.dtsi | 57 ++++++++++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6125.dtsi b/arch/arm64/boot/dts/qcom/sm6125.dtsi
index df5453fcf2b9..cec7071d5279 100644
--- a/arch/arm64/boot/dts/qcom/sm6125.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6125.dtsi
@@ -511,6 +511,63 @@ sdhc_2: mmc@4784000 {
 			status = "disabled";
 		};
 
+		ufs_mem_hc: ufs@4804000 {
+			compatible = "qcom,sm6125-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
+			reg = <0x04804000 0x3000>, <0x04810000 0x8000>;
+			interrupts = <GIC_SPI 356 IRQ_TYPE_LEVEL_HIGH>;
+			phys = <&ufs_mem_phy>;
+			phy-names = "ufsphy";
+			lanes-per-direction = <1>;
+			#reset-cells = <1>;
+			resets = <&gcc GCC_UFS_PHY_BCR>;
+			reset-names = "rst";
+			iommus = <&apps_smmu 0x200 0x0>;
+
+			clock-names = "core_clk",
+				      "bus_aggr_clk",
+				      "iface_clk",
+				      "core_clk_unipro",
+				      "ref_clk",
+				      "tx_lane0_sync_clk",
+				      "rx_lane0_sync_clk",
+				      "ice_core_clk";
+			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
+				 <&gcc GCC_SYS_NOC_UFS_PHY_AXI_CLK>,
+				 <&gcc GCC_UFS_PHY_AHB_CLK>,
+				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
+				 <&rpmcc RPM_SMD_XO_CLK_SRC>,
+				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
+				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
+				 <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
+			freq-table-hz = <50000000 240000000>,
+					<0 0>,
+					<0 0>,
+					<37500000 150000000>,
+					<0 0>,
+					<0 0>,
+					<0 0>,
+					<75000000 300000000>;
+
+			status = "disabled";
+		};
+
+		ufs_mem_phy: phy@4807000 {
+			compatible = "qcom,sm6125-qmp-ufs-phy";
+			reg = <0x04807000 0x1c4>;
+
+			clock-names = "ref", "ref_aux";
+			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>, <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+
+			power-domains = <&gcc UFS_PHY_GDSC>;
+
+			resets = <&ufs_mem_hc 0>;
+			reset-names = "ufsphy";
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
2.39.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
