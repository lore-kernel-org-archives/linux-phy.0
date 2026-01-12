Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF6E2C9EC90
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jan 2026 13:53:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZ/E9w+gjsLDaM0pk9mcO5aeBY10uwdb5qGnQJwfAOI=; b=I5njjgGb8fFiMA
	oZXUN5fgY8eem8KABvD5qvrey16AOYqf35gEj/e/Si5ORy8ztZhimlwQbjZWgCZG4ZBeQbJjtV5sY
	cV0ucgaLlDVysdZS9+WXcvoH74nY/OFYVnyfsLPip/CfrmyQ16B468syhHMbaON1aWtbyYn9hrzvp
	XqJmXWuwj5hx7NJCFkP4pYhbMjxcXHGTNsFHcrg/a5+wNe2sRNS9haNgYYWqWlrtHegXQmtINHBkw
	fEcc5mW2IB8HFEWAmgUA7yiYz62H7HVnWuVo/UqEuvG7t0Hg1sAn4sAgg16OYvwtYcHlZtI/Pvmt6
	xuH1EOTh4cxNG3WDKIcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIMK-00000005Siu-1yl4;
	Mon, 12 Jan 2026 13:53:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIMH-00000005ShT-3Ehj
	for linux-phy@bombadil.infradead.org;
	Mon, 12 Jan 2026 13:53:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=WWPfLmZoRs9e9HhXu15SJ7NQdaAV3N8zf0i6m2MJpE0=; b=OGJ3O6DIsrQfijtTQBzOmX6SYH
	Qrl5owa2FTf1er/LF5z5OAntdDb6tWJkT1cfWW5wTUB2EXxmb++WoYEtUC2gYxsTMy36KYd7je918
	6mAORxeSzXIaziy1kHRw2LZAksQLDsEdgRTV/jg1g4i1wWXF1bjGHyOfGD6dzrRxhoHKoyi3aejmi
	q4dojjiUFbk5QHXyzgfURsKJsuXFfb/MBVWjqwpeU+Gthdu27ZAE1x8bjrwPrnJTusyJmK371Vmm3
	jbziPE3Vpj0QZ67NoI805SjOnkG7W7dOs/VTQAmbMILllW27G8Q3JKOZG1K3wjQqakJIkZ/dq5His
	vMRA/Pvw==;
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIME-00000000pAE-44py
	for linux-phy@lists.infradead.org;
	Mon, 12 Jan 2026 13:53:24 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-b802d5e9f06so934126266b.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Jan 2026 05:53:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1768226001; x=1768830801; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WWPfLmZoRs9e9HhXu15SJ7NQdaAV3N8zf0i6m2MJpE0=;
        b=19+cBRNCg4heCmXBwNrnKP6jGs9/m8wYbywGx/CY9hCFIVOwCayTrujNcnIWXILhg6
         KoRZNiEUERIhL0FTYuOkO4d7cdJYexEXxOJMxcqsx6Z5V4TL5NCyFqr3NUVr4N1Opl/C
         ki4i1MRgUebG27TpGh3LbGAcF5fJlvEKlO/nEKkjf0k3Ip3eNsViPFVwZEG4mDPZpou+
         e1hgYK9HK6+iD3rmVLfCObQ1bZ0/WIfH7UQ2QdDg1MIl2UwAu85mD3QUE7nFUWpo+Fyd
         oLwpehL67Rl5b6o25HhyMlVvT7wg+meAMrcUdtbshicXlMTx8W0zoRDhYHMuLEprmOyo
         B/ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768226001; x=1768830801;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WWPfLmZoRs9e9HhXu15SJ7NQdaAV3N8zf0i6m2MJpE0=;
        b=opSNxrRL8QT7WxYiyW1JyKNd9nDG9Vsffb6lg5xQRWc9hzlUJQlRLOnQ2TcuTWnZLk
         f0E2ZmXMrsqPK/Uc14grg7XTPCS/g+VZR0W6FHv8SNi5Sht4rvDk5pltU634bfSi4Vdr
         GKnSN8fMfimrEv17hG2Oy0u95zv9gjoJ+yXSArQ6FdPNRLL9B9KvFWds9vgOz5u8GrHy
         bgtseh9n1dqj1oNJXu4XPeGsKmjpSNUyh1zvXIrsub9BorU5wJB5Somy462g1QIxCaso
         JBmgVNKIEJCW1Z32gTauqDBbdyt+/rQkTZg+xJQI/KtDsp/ux5mK7TCmiJiItDY+faya
         5twQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQlr3WgxErwLwkJM1kUkBpdZjXmvkfJnWJBTRVROTsvOulsOKxhmB1xfXZYVKPUBh8OFNf+NhsS58=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7t4JFHDyTgNQULYETeyBVMLgVnmzAzQ5xv/X5eEpN/hFLhMw9
	84CzeZ1ijhAYsagSLk5coVYyXooLcw2j/yxkgGM08gKeuQWP9SXEBOYdCj7WBRZK/yw=
X-Gm-Gg: AY/fxX4eBiGjDgTpTPbX0B0Ot/p/H9PtMwm9uSf/H6VBTuKPELO+wFqjo4E0BSObJx5
	PMbZgaBMm73EiOlM49V/ZfrmepACZWFYovk14zniUQP1yC3KcGtf5p76y8zNSBcQ4IhM4/V8PbV
	sFkgHqa/4+5+oVMBafCOrwUP+NxjlGCHFPczE2616fwCYQmejRahglIp9GVRzBRp+1loibX/tyR
	Yi0PqNZkjWYm7uJQque4kyCyog3gpCkfcWhinIw3/vi1xHI6qmuPqIQ/EYZrT0YEd/6DPW2O+e3
	MmG+oo5r28VTjlrq4HTacrTBw7XbnWaXuA6IeZHkO52L4sT0+UQeu2v/ckONTbAYC4gORY1ko9H
	TbSKcCvPm+UIl3Dq6vekd5TQv6AwHAntOBDhrkCwe1NyF+qVDTy0YdmvPQ5dvqXyEQxv3NnsVus
	vA/4n8I8GWMjw1HWXPtG+WNK6KA78cT2zYoYo4twm4p4IOXV2Z10aUCmAaMY3BrwJf
X-Google-Smtp-Source: AGHT+IHo/SgZTpXi092MWQdzw3Mh3q7aWX3FCIQ5HQG66gZ3V+BycBgpDyYQd2eNtV28CNmM83lI4g==
X-Received: by 2002:a17:907:96aa:b0:b87:2f29:2062 with SMTP id a640c23a62f3a-b872f2938fcmr90697166b.19.1768226001088;
        Mon, 12 Jan 2026 05:53:21 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8731f071e4sm25700466b.66.2026.01.12.05.53.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 05:53:20 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 12 Jan 2026 14:53:18 +0100
Subject: [PATCH v2 5/6] arm64: dts: qcom: milos: Add UFS nodes
MIME-Version: 1.0
Message-Id: <20260112-milos-ufs-v2-5-d3ce4f61f030@fairphone.com>
References: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
In-Reply-To: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
To: Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768225995; l=4488;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=CUg9RtlgmTKAudwK4F/5CcUGQgOlVJhlba1HTU9ItqQ=;
 b=RQ6deTnI/3+rRHNUFcgGtLLU70SWfA3Fva/Z/K6kIe2KRwZzfV7I7f+oKi4y6aUHbF+0iGjQt
 1ESFhFt+hz7CwwvzsLsu5vweg2wkRqD6PkYnTLcNYGAyK7sMIPomtAx
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_135323_116384_E633D83A 
X-CRM114-Status: GOOD (  10.57  )
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

Add the nodes for the UFS PHY and UFS host controller, along with the
ICE used for UFS.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/milos.dtsi | 129 +++++++++++++++++++++++++++++++++++-
 1 file changed, 126 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/milos.dtsi b/arch/arm64/boot/dts/qcom/milos.dtsi
index e1a51d43943f..7c8a84bfaee1 100644
--- a/arch/arm64/boot/dts/qcom/milos.dtsi
+++ b/arch/arm64/boot/dts/qcom/milos.dtsi
@@ -797,9 +797,9 @@ gcc: clock-controller@100000 {
 				 <&sleep_clk>,
 				 <0>, /* pcie_0_pipe_clk */
 				 <0>, /* pcie_1_pipe_clk */
-				 <0>, /* ufs_phy_rx_symbol_0_clk */
-				 <0>, /* ufs_phy_rx_symbol_1_clk */
-				 <0>, /* ufs_phy_tx_symbol_0_clk */
+				 <&ufs_mem_phy 0>,
+				 <&ufs_mem_phy 1>,
+				 <&ufs_mem_phy 2>,
 				 <0>; /* usb3_phy_wrapper_gcc_usb30_pipe_clk */
 
 			#clock-cells = <1>;
@@ -1151,6 +1151,129 @@ aggre2_noc: interconnect@1700000 {
 			qcom,bcm-voters = <&apps_bcm_voter>;
 		};
 
+		ufs_mem_phy: phy@1d80000 {
+			compatible = "qcom,milos-qmp-ufs-phy";
+			reg = <0x0 0x01d80000 0x0 0x2000>;
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&tcsr TCSR_UFS_CLKREF_EN>;
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
+
+			resets = <&ufs_mem_hc 0>;
+			reset-names = "ufsphy";
+
+			power-domains = <&gcc UFS_MEM_PHY_GDSC>;
+
+			#clock-cells = <1>;
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
+		ufs_mem_hc: ufshc@1d84000 {
+			compatible = "qcom,milos-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
+			reg = <0x0 0x01d84000 0x0 0x3000>;
+
+			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH 0>;
+
+			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
+				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
+				 <&gcc GCC_UFS_PHY_AHB_CLK>,
+				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
+				 <&tcsr TCSR_UFS_PAD_CLKREF_EN>,
+				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
+				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
+				 <&gcc GCC_UFS_PHY_RX_SYMBOL_1_CLK>;
+			clock-names = "core_clk",
+				      "bus_aggr_clk",
+				      "iface_clk",
+				      "core_clk_unipro",
+				      "ref_clk",
+				      "tx_lane0_sync_clk",
+				      "rx_lane0_sync_clk",
+				      "rx_lane1_sync_clk";
+
+			resets = <&gcc GCC_UFS_PHY_BCR>;
+			reset-names = "rst";
+
+			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &cnoc_cfg SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "ufs-ddr",
+					     "cpu-ufs";
+
+			power-domains = <&gcc UFS_PHY_GDSC>;
+			required-opps = <&rpmhpd_opp_nom>;
+
+			operating-points-v2 = <&ufs_opp_table>;
+
+			iommus = <&apps_smmu 0x60 0>;
+
+			dma-coherent;
+
+			lanes-per-direction = <2>;
+			qcom,ice = <&ice>;
+
+			phys = <&ufs_mem_phy>;
+			phy-names = "ufsphy";
+
+			#reset-cells = <1>;
+
+			status = "disabled";
+
+			ufs_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-75000000 {
+					opp-hz = /bits/ 64 <75000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <75000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+				};
+
+				opp-150000000 {
+					opp-hz = /bits/ 64 <150000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <150000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>;
+					required-opps = <&rpmhpd_opp_svs>;
+				};
+
+				opp-300000000 {
+					opp-hz = /bits/ 64 <300000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <300000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>;
+					required-opps = <&rpmhpd_opp_nom>;
+				};
+			};
+		};
+
+		ice: crypto@1d88000 {
+			compatible = "qcom,milos-inline-crypto-engine",
+				     "qcom,inline-crypto-engine";
+			reg = <0x0 0x01d88000 0x0 0x18000>;
+
+			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
+		};
+
 		tcsr_mutex: hwlock@1f40000 {
 			compatible = "qcom,tcsr-mutex";
 			reg = <0x0 0x01f40000 0x0 0x20000>;

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
