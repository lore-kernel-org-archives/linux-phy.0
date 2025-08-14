Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1D65CA0EE0
	for <linux-phy@archiver.kernel.org>; Thu, 14 Aug 2025 01:00:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zZlcoX4xiguHSK33Uj2pbX9dVp9I3poezrdeIynGc/E=; b=LMhJNPipEkMY7J
	Ugc2pgbp7JHlZIc95lO4VcDQnxyggGZlBRKseM44g0mJZQtGMml+Q9w3BCP7w6uWhUBRtx6he/6GC
	XD/uNACWQbPQd0eDsa8Gl40xE8iewIFwWvCI+SpITKGykmQBRPHGLPFNSzfHnJND3i+FKUtpUfjKG
	OU/Yr6zGGlDHwMGrp0VcPEPWBWbW9gWPsPv3h1lBj06iJ5rqgkz4U7RN/yArmiF9hNfaDdkdlAtZ/
	f5cAECqui7gcMc1zoiq28vPPIUwbQB6mZCgHZ9pvEDyb0g18e5Cmy5Ckqy0ePDCxaMiJmCVwA075k
	LMO1MN5kaKBsLFGF9UXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umMKH-0000000FRrP-3AJe;
	Thu, 14 Aug 2025 01:00:17 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umMKF-0000000FRqo-31Yt
	for linux-phy@lists.infradead.org;
	Thu, 14 Aug 2025 01:00:16 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-76e2ea6ccb7so346708b3a.2
        for <linux-phy@lists.infradead.org>; Wed, 13 Aug 2025 18:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755133215; x=1755738015; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9VkS0f72EnaqiMcIZjME5kwPlMnOQ+cNlZJhtfFnKns=;
        b=iG54CrCTYdOKVz5yvpQZF9+Y50+L3fsrbSHnLZcpYU9Npd3Aroram61hTxOl+LYvkE
         9akC5VmEwg267Zqmvv+CANki9JvUzn8PMh3g/72qKs7MDtbgwRgdUWqei7WDB0zd2uvV
         v1dzqm2EklGh2dwIOyGD7TBy8nzniLnOjqmhamLEBL82TlFLCPEd1W+Rq51Ru4/+8zD9
         Lz/4kJvKFoco5Z3jnKeLqptnw9PJwFr5FsLt5Y4PiTjgfZMLhYV9rdZllj/4l/FLg9uR
         ntVXPZCv1VNHg4ECUk9KvzfhUoJ8RsMHWd75bAGacKgJtDMykkE/PfcnWjYpCdCqFYMO
         Fv9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755133215; x=1755738015;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9VkS0f72EnaqiMcIZjME5kwPlMnOQ+cNlZJhtfFnKns=;
        b=jWJvOkx00iJbiaO1yzUgGjfmvkhJ0o9E5zT7tiOkQOnDytXBAgM+/04jeuH+JfZ7E0
         GPoBQN25e1iZgP10PW4xpb8C07Bvj4/SNN9pK7dW+IBQ3DuNbwUOK4ovjA4wwypYlgB3
         CaeYOlKy2oJgLH6bGBUTIm9FOxb8rUQ38xANdnemBrTVmuqzDccEHQpWwf1BdT7fMVBY
         WnzbD93VPvKVhlFgOMQnJVOeQnPiByiNmpnUt9ipZiGaIFquxbHnDRaMWOcfyvYnhs4Z
         HzyaGsS2+fz/fQLQTcJYsMUGkYOEGHjMCYeLwRyy+5O1wbLSI/caXXvSJK3++NbFaXHI
         GKmQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4Fi1XJAimvEFns2YA3zvCLhHWkgDVeyciOT74zB1zPve9bOFCFdHZH0yLc+FjKEj1CNgeWap8pLA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwncnrFtvFxp79vnNzlUKsedHQGnkwTqsZ5g/GqnIb/d2KEEjm8
	CINm//fYQmJIdoCJS1As0LG4dxqwmZ/2HquvFEZmhR+LEwRZNuzeR7/f
X-Gm-Gg: ASbGncs/Squ1AGBfIOUXpgx+oOISnGGyOJ+MRORLaxM9ZQnggG2dbJYXXpKX6BAPAPy
	iI6hxiwJ8sF5Y2ArJKRnYIoDTuU4K1y/AQNJFiGEM0UxDR/7KRMd5B8NlCxsHRZh5VhYi+EOVRY
	u1UCnV60paJAcB6+kKlhP8X8BMI52c6jQVNn7DP697aHgni2S+ilcFGMe3Qtm5pCjuiq5uflkOs
	q3k48TKgDb/asrP+XHF2tepd5DosdQCQlFIOKLe9XvdiHyC40UFR52CjUF/33v957NvDS5MwpKR
	NOlpM8avnPLuQ6d8ej1py9eBHwGNJhGAJgkcX51J/KKehDj5pc4CW3Hyyo9dqedmuEbwU6CUamc
	zPk6ZTVyMpThxuGhJAkUQSKf4QjNAQSZHT5bN7Dv1YjgKaAwuXFhgC84sqjQ2TFR9GTpJz3LrHa
	LLCwPBrcdfLvZAsxHtddNkevnM14xv958z
X-Google-Smtp-Source: AGHT+IEodCVdxdACkatFb9yR9vBUxSKBbYFsKdRI8HyvoJW/occz78XqVQVb7+h+2Ld7qrl4V57YzQ==
X-Received: by 2002:a05:6a00:3d4d:b0:76b:e16f:ca91 with SMTP id d2e1a72fcca58-76e31eb967emr1104856b3a.1.1755133214668;
        Wed, 13 Aug 2025 18:00:14 -0700 (PDT)
Received: from harrison-Surface-Pro-12in-1st-Ed-with-Snapdragon.lan ([101.178.35.31])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76be9143983sm28875783b3a.1.2025.08.13.18.00.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 18:00:13 -0700 (PDT)
From: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>
To: marcus@nazgul.ch,
	kirill@korins.ky,
	vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mani@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	andersson@kernel.org,
	agross@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org
Cc: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>
Subject: [PATCH 3/3] dts: describe x1e80100 ufs
Date: Thu, 14 Aug 2025 10:59:04 +1000
Message-ID: <20250814005904.39173-4-harrison.vanderbyl@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250814005904.39173-1-harrison.vanderbyl@gmail.com>
References: <20250814005904.39173-1-harrison.vanderbyl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_180015_761248_5444637F 
X-CRM114-Status: UNSURE (   7.94  )
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

Describe device tree entry for x1e80100 ufs device
Signed-off-by: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 91 ++++++++++++++++++++++++++
 1 file changed, 91 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index a9a7bb676c6f..effa776e3dd0 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -2819,6 +2819,97 @@ tsens3: thermal-sensor@c274000 {
 			#thermal-sensor-cells = <1>;
 		};
 
+
+		ufs_mem_hc: ufs@1d84000 {
+			compatible = "qcom,x1e80100-ufshc",
+			"qcom,ufshc", "jedec,ufs-2.0";
+			reg = <0 0x01d84000 0 0x3000>;     
+			
+			
+			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
+
+			phys = <&ufs_mem_phy>;
+			phy-names = "ufsphy";
+
+			lanes-per-direction = <2>;
+
+			#reset-cells = <1>;
+			resets = <&gcc GCC_UFS_PHY_BCR>;
+
+			reset-gpios = <&tlmm 238 GPIO_ACTIVE_LOW>;
+			reset-names = "rst";
+
+			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
+
+			iommus = <&apps_smmu 0x1a0 0x0>;
+
+			clock-names = "core_clk",
+				      "bus_aggr_clk",
+				      "iface_clk",
+				      "core_clk_unipro",
+				      "ref_clk",
+				      "tx_lane0_sync_clk",
+				      "rx_lane0_sync_clk",
+				      "rx_lane1_sync_clk";
+
+			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
+				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
+				 <&gcc GCC_UFS_PHY_AHB_CLK>,
+				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
+				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
+				 <&gcc GCC_UFS_PHY_RX_SYMBOL_1_CLK>;
+
+			freq-table-hz = <100000000 403000000>,
+					<0 0>,
+					<0 0>,
+					<100000000 403000000>,
+					<100000000 403000000>,
+					<0 0>,
+					<0 0>,
+					<0 0>;
+
+			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
+					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "ufs-ddr", "cpu-ufs";
+
+			qcom,ice = <&ice>;
+
+			status = "disabled";
+		};
+
+		ufs_mem_phy: phy@1d80000 {
+			compatible = "qcom,x1e80100-qmp-ufs-phy";
+			reg = <0 0x01d80000 0 0x2000>;
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
+
+			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
+
+			resets = <&ufs_mem_hc 0>;
+			reset-names = "ufsphy";
+
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
+		ice: crypto@1d90000 {
+			compatible = "qcom,x1e80100-inline-crypto-engine",
+				     "qcom,inline-crypto-engine";
+			reg = <0 0x1d88000 0 0x8000>;
+
+			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
+		};
+
 		usb_1_ss0_hsphy: phy@fd3000 {
 			compatible = "qcom,x1e80100-snps-eusb2-phy",
 				     "qcom,sm8550-snps-eusb2-phy";
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
