Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A9A5C79F9F
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jan 2026 14:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6v7/iPq2DxRBspQyi/n1GOnQ3FxDrk+n2f67u+WTUM=; b=IhVL5S6ATEAR1w
	D2DKUB+qMApBmr1Wr39MBHWbPyT+Mr6zLF7eZOTTipneyE9H0UPQZHZ/VvcQYzp4CoUVn7LvszobP
	ofwHbDluKLhDTFcg121rKrJ06/IYVZjLdmW0lgRjmJ18j6PYAK/2b7C/L1fyQGBXLEBqS8zXSVK7D
	P7iDSsIcjUapCVigb1ZTckwWbYr4IzyU/zBUMdCXUNXoGA9ekkB+wUpIj4EcNgq71Ge2kH2eukqeQ
	9jo0Uf4myf2Nzf83SVJDiWEPEIhvpLvMAvZ0rQ0K4yLdd8PukJ3RrynHGDAFk6YQAnjVYKp9QdPrB
	XKq4e178Fcf+I8oRHl8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vclrd-0000000BZFG-1Gc7;
	Mon, 05 Jan 2026 14:47:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vclra-0000000BZEp-29pl
	for linux-phy@lists.infradead.org;
	Mon, 05 Jan 2026 14:47:19 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 605Bm1v74032703
	for <linux-phy@lists.infradead.org>; Mon, 5 Jan 2026 14:47:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=V1SgzhIA0n/
	lH+e8c4NhHPbIxxfyBNFnqJV0Yv3DTIc=; b=okSFiEG30LQSWOGkDuFOKMIJLZH
	ePJnXmAFozQE49DzKtVi+jOS2EJeI/UrK5SaIfP53l9e0iECp3ecMSA6KinX4Wd3
	h6i6oxBftPLI3KVqJHqcVRXDBmEmpGChiDzo5XK2tzYNRqz5ETfAID6uhhcb56iU
	5KTroax9qgQ7xfqsj5HQ2nCozNhkPQOOgtoGXtq/TOoXIDpdylR2n0Fxt+yen9l7
	GJjMeQGAdEPRAg8MKdGcFvRjkmCslovjcHH/H9d+ZUewcTOfCOFvGtkKcYFCAYwa
	lbP8pvbxfQqDJEQfs+XtTbwmuz7l6QuZNSE4cJIlvh+FqEtFlLHQ3CUxyOw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bg79nhgj5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 05 Jan 2026 14:47:17 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34c213419f5so10349a91.2
        for <linux-phy@lists.infradead.org>; Mon, 05 Jan 2026 06:47:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767624436; x=1768229236; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V1SgzhIA0n/lH+e8c4NhHPbIxxfyBNFnqJV0Yv3DTIc=;
        b=ED/bmeqmKu3R0Eyu+jgKKl2SW2fJfoy/EjXSItNSMDaV+bbY+lOXvLtEkbQCz6Q0P2
         PuTqtJjPVDH0P3Qqil7R/vzIIZ/Amcf1iQLNOZaBrTPKLBbe1lInLrKydRJ4ZAPLQXeA
         at5bYh/b5hOvX8eM0SLh9IzSVNjVCkxNs4kynx4pGlg35P8utsq+EL137U5XOnkZqe7G
         9SbAnffEZbFvjEC0KJauHGQOoJoqfd6hEo5/8Ocl+6+KysLeeptaLZSe/FW9yJmBKrC5
         0kAwjVEYUFjoNuJV+kaPOXmFXWPpxLnk7Mcw0Fdzo8yloyNmKCjK7yx0D1TMBXht+vwy
         HCew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767624436; x=1768229236;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=V1SgzhIA0n/lH+e8c4NhHPbIxxfyBNFnqJV0Yv3DTIc=;
        b=q5FeQm9Qghd9G+pcIreCya/xt85iPWpdi9iI7BoEeRD6lYu9xqhiiaFwR7ZsLjSmEk
         TvlXY6jFSJ/xZvyRURLeWmFOmNp5u1E9Ig473XCw+8SPlgRHxbK0bmJnPaFvbsWYnYkr
         bG3Rk5U88sQgD+2ajpB/j8GR7+1B3rWFGKbFtBmBMIzigU1raFLQXv0kaZnNrIhWTW+t
         lNek4EfGfkPfpA+7cledxt1NBZlqUDMEedM66rhaxV6FjpWB2bhMoivnFwcfnaEwVaGa
         5uuQiwiVQM0KkEZNoBhJSHwY5J84AeBPKo6CP0pSiH4fatk0roNTByiTUvRHj8ZEPKFY
         3KBQ==
X-Forwarded-Encrypted: i=1; AJvYcCV/sDeoq2rypKcCpRC8Lhk8MomdXWtBXx/qi4WHS28XFJaDPTjFitSLmohncR3Urp+pUnuBWhZ+xmU=@lists.infradead.org
X-Gm-Message-State: AOJu0YylWJ4qXPhRUjKxGe5iLawiVJtjCCEdCIfUXVGbhJ5XXI4TJHtk
	EL9TDYvBgiB64/C2iaJSztne+fqBXolNibw4Bch+2Nio84jdMfmVoEAx97yKn/kFgClSr2n1XaP
	jS+aYqf8+IcrY33xb/CYFufZoXoqS09tjJKwMO/SaWQjwRYmCMQmawUesPMyFzoHe2S6g
X-Gm-Gg: AY/fxX4G9BidOZiYyLlnJi6l0ZOuJ8GRpj9SbHNEQi88IQlZUhZ3NaSh+RQF5fvW0XB
	Z3oLJiQXi9iwEUSlXbazXw21md+1FT6dJzFT9aXgj82QqndSFQmyudQxARxCeR70U58QMPYPMwR
	v/leLJzgPwAeX6WoU3qCMuBV/cjSjoAy6PDXs5M3QiqxPTrOQnbuLzxpEA52dAFZObHlhrIWPs5
	34ja8+vKLnhg241HpINPi2qGFLKXA07Vrv9USsClaaUqZqBWxVaYlCNpbZyPxgEMS0YMP0r5Bdg
	cOHlCQ691QtDJjWjEWkMFk4GNG9yOZTcKoUuN83OM0qgZCxCXJUF+LPeS9c3sCh/T/u83KbHpER
	hA6SqjdXASJpZZh4kZcz1qExXVZ3O63hAgFsMDHmaPgOnyLNZSQr+
X-Received: by 2002:a17:90b:54c3:b0:34c:2f3f:d27e with SMTP id 98e67ed59e1d1-34e92113230mr40042000a91.3.1767624436220;
        Mon, 05 Jan 2026 06:47:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEC0ntpKtEblnNYcl3KPIbge9nxcKn7exCL5e75nVmgyPbQLMaOfTGf4/gEXkYBasPUBxvShA==
X-Received: by 2002:a17:90b:54c3:b0:34c:2f3f:d27e with SMTP id 98e67ed59e1d1-34e92113230mr40041974a91.3.1767624435695;
        Mon, 05 Jan 2026 06:47:15 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f476ec311sm6634868a91.4.2026.01.05.06.47.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 06:47:15 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH V3 3/4] arm64: dts: qcom: hamoa: Add UFS nodes for x1e80100 SoC
Date: Mon,  5 Jan 2026 20:16:42 +0530
Message-Id: <20260105144643.669344-4-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: qyPb0jWKdpoSpulvJ558ghkw2-6S7Ble
X-Proofpoint-ORIG-GUID: qyPb0jWKdpoSpulvJ558ghkw2-6S7Ble
X-Authority-Analysis: v=2.4 cv=Y8P1cxeN c=1 sm=1 tr=0 ts=695bcef5 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=-wAyGzpI3j0i2zLxvnIA:9 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDEyOSBTYWx0ZWRfX9TRx7x20h0Hl
 Nbas4MwKpadlPfZB54os2Ai5a9RnW1n+T9SVk6mr4MOE9N/qftmtvmox77k0k91gs8NkMwsHbmd
 6weEcgduL7PVazH7ZL7L4KipxDIFYSItt8MxT27AfjXG5bO+ZRr6WkWQA11feQ9N4ZOdKyWeFm+
 /PP49MLSSG1EipxDwJghJGtNcdMxkO/yELq9oaAeyRY92f4Zju/Hhb1f7faBmaU3pH9k6R3ZmuB
 +RmbJWL5oaPBNParzAEbxy/ox3rEjHpDtVlbsDevb13KOmuXY2H5cEsrChBqNalavv1+K+seuvc
 Y3g/QJ9Iv9omCLQy9BNy9mPPBh8LE85fLDWXjnVllCx0dVGoINXkox1W1MCKdRMNqAOjD0vuGy4
 J05MHW35kRNzSNO9xnbYoL2j6DY89dqqMdBeT0c1FIYWGCsSFAlPIsMwlzxcS0QTjRJQ2G/aNn8
 JfRmXy91EREytp0UthQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 suspectscore=0 clxscore=1015 bulkscore=0 adultscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601050129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_064718_671848_F28FB189 
X-CRM114-Status: GOOD (  11.81  )
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

Add UFS host controller and PHY nodes for x1e80100 SoC.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Taniya Das <taniya.das@oss.qualcomm.com>
Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 123 +++++++++++++++++++++++++++-
 1 file changed, 120 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index f7d71793bc77..33899fa06aa4 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -835,9 +835,9 @@ gcc: clock-controller@100000 {
 				 <0>,
 				 <0>,
 				 <0>,
-				 <0>,
-				 <0>,
-				 <0>;
+				 <&ufs_mem_phy 0>,
+				 <&ufs_mem_phy 1>,
+				 <&ufs_mem_phy 2>;
 
 			power-domains = <&rpmhpd RPMHPD_CX>;
 			#clock-cells = <1>;
@@ -3848,6 +3848,123 @@ pcie4_phy: phy@1c0e000 {
 			status = "disabled";
 		};
 
+		ufs_mem_phy: phy@1d80000 {
+			compatible = "qcom,x1e80100-qmp-ufs-phy",
+				     "qcom,sm8550-qmp-ufs-phy";
+			reg = <0x0 0x01d80000 0x0 0x2000>;
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&tcsr TCSR_UFS_PHY_CLKREF_EN>;
+
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
+			resets = <&ufs_mem_hc 0>;
+			reset-names = "ufsphy";
+
+			power-domains = <&gcc GCC_UFS_MEM_PHY_GDSC>;
+
+			#clock-cells = <1>;
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
+		ufs_mem_hc: ufs@1d84000 {
+			compatible = "qcom,x1e80100-ufshc",
+				     "qcom,sm8550-ufshc",
+				     "qcom,ufshc",
+				     "jedec,ufs-2.0";
+			reg = <0x0 0x01d84000 0x0 0x3000>;
+
+			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
+				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
+				 <&gcc GCC_UFS_PHY_AHB_CLK>,
+				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
+				 <&rpmhcc RPMH_LN_BB_CLK3>,
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
+			operating-points-v2 = <&ufs_opp_table>;
+
+			resets = <&gcc GCC_UFS_PHY_BCR>;
+			reset-names = "rst";
+
+			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "ufs-ddr",
+					     "cpu-ufs";
+
+			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
+			required-opps = <&rpmhpd_opp_nom>;
+
+			iommus = <&apps_smmu 0x1a0 0>;
+			dma-coherent;
+
+			lanes-per-direction = <2>;
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
 		cryptobam: dma-controller@1dc4000 {
 			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
 			reg = <0x0 0x01dc4000 0x0 0x28000>;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
