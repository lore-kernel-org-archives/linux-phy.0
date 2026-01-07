Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1B36CF6BF4
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jan 2026 08:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=889prwa0c03aq/AyxnZlg2qU6PnMOsCCsMNw4KxrmLk=; b=gjsjZeKvZ3Xfvu
	ArAH/VSEoLEJ7EVk01+fuFWPoz+w+i2j8mkX0vBY2Jde8xAlemjg6JsCsxj2IVcaRDuavYAkf1FaQ
	QnGo2KE7XQJaSpw3jQNzGJsUtAQeY62eWu4VUuqnyBg4Er3zNRpveGAsdjN0eMxTheN/EHUayUlSy
	E0C9XX0jxN3ARriX6WH3CeuW6XEQmdLwsGL2/jRmH2qgLJWzpAZk0V2XGW4x4ZVEdJSrB4iAtxFyt
	LRr1lCdiLSTR9y2ePt7oLKme2drY65f+UkRijkA1d2u0Eb3OvHvhbFA9hopoWnmv9nKhwiq2io5Jv
	GxQ1+HCaGeTlgif15tBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOYl-0000000EMGh-2iMY;
	Wed, 07 Jan 2026 08:06:27 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOYj-0000000EMFs-1Kkz
	for linux-phy@lists.infradead.org;
	Wed, 07 Jan 2026 08:06:26 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-64b560e425eso2392904a12.1
        for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 00:06:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1767773183; x=1768377983; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O4RvfqlwGsUfw8nkyrkO8zG6AiaNNt3piIyxZCLBKwM=;
        b=ZzYYa9wTUvr1Lf7cYoA1/Ut1grgpgCWsJs6qJC1dduLBo+hg24kmqOvkW9aamSIqyz
         o4/Fy+6bYx4FL3txEpIkKGe2xZVT6qLxEqBj7FkdIiHNrcnv4fJVYgpv3iDvl41JdWNK
         sxcCgMQqQcXsg+uamgP+xfNlpXpLQh8+g/9JfDR1Dil+i5FDKNNmMMomuiIfcpsvsTD3
         ir63W2tNJZhrub38qPDC3WCtEgjzIiUyyWbDqeGBlb/Q1VBKrBMpwN2w+bqrSF+SWjR1
         tKNCpC7hI6oHXZCwTCOJoFOmROhZa0b6CXPupqrtIcZSR5hWyCwGEUNchcQqAGAkramD
         ZnmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767773183; x=1768377983;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=O4RvfqlwGsUfw8nkyrkO8zG6AiaNNt3piIyxZCLBKwM=;
        b=caCnolzIgF5QNfJUS6VF+7iXlYqmIT09vEZucU86NMc5VbawJq9YyJCYnhg6lwraXx
         yjGAyLw94vJ0K5L8sKS4WcuN5bhDYMFfxEDpQS/NNt+0k3evRlf2ecKWJY20DVUEB7yP
         5s716Y+msGQvfiiYtg5Upox27sKoSFzOHs7zds5blROBNr/MDYs1tMn2WiNfhjZbYjlO
         4X1nULTRGB/Rpe0QBBGx5pM4xdJfYzKdooEsOzAAkvW0PwKVQ+t9xSN8//7/bB4Kss2p
         mnvHPjuQRsnV6Ly5H1WyhEVTjtLLupFgKzyCkSMX7TWkXwW8Li78LAKxsMSKwU6j3wLM
         nt1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUdRmZFVBrrSGt05iBb/AzucJNAIPa3aGCE8fx8ZVmQOEOgpCgEtH5ua56bLJ0aJ03I3/urzjhguWk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzz/BXCtdfqmt/fufspEumj+EvoJO0qMPSyj+WIXZwMZ8k2UPey
	xPiWkfwME6kkBxYyGdz2GMmzzS6xURWS2b62Lav2bSNYmPixbJNq9T6xXnhSFTie0S8=
X-Gm-Gg: AY/fxX6tST+TxezArqBCDOBDj3QfC2zVaUOOQibFBV4A4aBoBA955bzjalQPRQsTnUA
	XN2BFUOY1EJyxQ9BKN7KhfSUQKLH4/jhLeTANByP8DwbmueSzucfrJ++sG2bBuHT8xS/AXdnane
	aWUt15mGeuy36VqRLJlCw3nD5G+s72Vw2YjKDWuhYcbZGVc8yYxNKu/NfzND7kSbWQHOjEGErsl
	8IosKLF8SySeC3zxc2WvSeD3oxXChCYv2jr1YeaiI/OmH1NKDM1pEz7y0JRSIVLZc0Ub7apX9JK
	+HiGL4QcEphdaqvQ6z2lRZzENoVSAPaa4A5XMrxHYKOSIq5v7cV2o/r+uPSgJXoN8L//1/MUcmx
	gQnS0jks20bYJga9B5+ZhgvnTcnhLOT1So9rcOjIprwEyIZstdLskbAxc9cJHxhURjBdgZSoWeB
	roMf4tnMPrUFUzlLv2GpekhH0gXA==
X-Google-Smtp-Source: AGHT+IFco/AIFD5fqL2upehjsvFAsI3pjosHbxzjhLr008+cfjzyFgmWnzpdlEcgUXZJ8GeoC7fn5g==
X-Received: by 2002:a05:6402:270a:b0:647:54ba:6c42 with SMTP id 4fb4d7f45d1cf-65097dcd9fdmr1486656a12.4.1767773183403;
        Wed, 07 Jan 2026 00:06:23 -0800 (PST)
Received: from [192.168.224.78] ([213.208.157.247])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf6d5absm3941299a12.33.2026.01.07.00.06.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 00:06:23 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 07 Jan 2026 09:05:55 +0100
Subject: [PATCH 5/6] arm64: dts: qcom: milos: Add UFS nodes
MIME-Version: 1.0
Message-Id: <20260107-milos-ufs-v1-5-6982ab20d0ac@fairphone.com>
References: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
In-Reply-To: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
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
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767773155; l=4338;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=ZqBIugg5K7/ysfpKey8yK6cRDkhGfiVM24dyT/kjpXc=;
 b=4+q92hc4E5FncGMKXsvkFnr2XdU5Xsgch8jTz/DF/1zlb/Wzyqfx0gA19Q1ogrwRzX+vA/MOD
 Yvr2gqnsc1bBsIUyHwoTXp+p5tIBk9+GgMO7OqsLvlXU+7p6sJBpG5N
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_000625_410519_3C67B657 
X-CRM114-Status: GOOD (  11.00  )
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

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/milos.dtsi | 127 +++++++++++++++++++++++++++++++++++-
 1 file changed, 124 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/milos.dtsi b/arch/arm64/boot/dts/qcom/milos.dtsi
index e1a51d43943f..0f69deabb60c 100644
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
@@ -1151,6 +1151,127 @@ aggre2_noc: interconnect@1700000 {
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
