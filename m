Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A9A3EE6427
	for <linux-phy@archiver.kernel.org>; Wed, 31 Dec 2025 10:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PCb59YpXv97AUZmMy7RsHxvxE58a5kYAUmmLPozLq78=; b=lWe3GOLeP22Gay
	WnRi/hG+6h4XRSMg8lam2cFmIUJSoAwuNtu/nbNHCpBbVB52Amtunb5EWkeP4qg4TZs3Uju5TX9Kb
	F33s6XcJl0UaFZBOAHyyZAVlraHTftQYOoirG57/TbN1bXUJdlgfNqfA9ofK8SDe1SvW16Jiij4a8
	RjLjz/DsyjJknuu8Bgb8vjA+0j0Bef5PtbKTFP6wtY9MYiiBCwLsMPRUs7kC2xcC9tcuZ0MUhXa3G
	HnptHlqHbRk7YtRz/QbmjxNrArXRVsCDrbm3y40zhvUw/QtK08RTO/OuaKlISckWkBd2dKq/o9BYb
	iky+0OxMnaCHVtAM+GXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vatKH-00000005sjz-0jvz;
	Wed, 31 Dec 2025 10:21:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vatKE-00000005sjO-1pv0
	for linux-phy@lists.infradead.org;
	Wed, 31 Dec 2025 10:21:07 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BULnLTd1800857
	for <linux-phy@lists.infradead.org>; Wed, 31 Dec 2025 10:21:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=CjJ/9Ca8Asz
	CWwY+bHi0v9FGw9X5NdekDNCSIdTJLpg=; b=PljmhoSi68Y/c1ES+jx15Z5QgRW
	JjluJY69qP5jjKZdbbLXa4NTi0EC0YS5k26HyUlq6AwFMkT8NGlNGjaCS9HTE8lD
	vXnpez478bmsaZTvHpeWnFiFgM53tzA4NXSN1l4x4/AegiPYDtdVpDf3Dxx8ikLA
	0OqzArsgQKGLF693ZcvKj3sJArq3gcyzMLavfz3lAgoZ7N+Gw43aZ1kjI74VJ15Y
	IUX6uEtFWfIqLG3UnE0ZpxgyE4sUJ0Sn46oyTkXG4bLtiuxMOMO2ahEf4NAlJ8rA
	KnS9m8c10JuYedZhk25xkijJfubsVPFlW8kL5gHAg2mzYcebYipE2X+dOtA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcf5yt85c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 31 Dec 2025 10:21:05 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34c5d6193daso21068095a91.1
        for <linux-phy@lists.infradead.org>; Wed, 31 Dec 2025 02:21:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767176464; x=1767781264; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CjJ/9Ca8AszCWwY+bHi0v9FGw9X5NdekDNCSIdTJLpg=;
        b=GNMCUk7gYSAhdICwygxFFcjp8EHygacdMJ8v1/TKiI1Yf8xfSXJfX4/5wgzYZMlC5F
         YEQNxW/0gJ5tEnBhPKG44bLZA11xv39HNny9WhA2hDNWBsbnde01maEODE8CNXcabYpl
         ETSNznprNxAh67daWfCW5ThubmuODvnTXUTKoamv4rHwGxK40Emfq5yNytP0dTy9bqg5
         VardjFX8Qqb4nZ1IDHoMjXEAFU4x4sjs8INcr171ByxVQWiB+uVIWJaG453gfLGXaOnm
         Bde+Xd4NJ5uYIOAxQ/OQfMg5Yyt4BSzjuksd5MabpdenO6Hx0NY30Er0zQpeaKQXGF3U
         DtQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767176464; x=1767781264;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CjJ/9Ca8AszCWwY+bHi0v9FGw9X5NdekDNCSIdTJLpg=;
        b=ClIViQri2g+J2zdJHeZqH1qLfNww+Auz2Fm0gwtn3RYajovP3CgNlcKXhQZCWfvZav
         ahdihWROXIHBYr6GNgPP5BEMgJ5d+iGLwEdPcqfVaj3hBs15lBMFwUrfrNtrZt6mKE9P
         nNbuQMo3vbKLzlkwzJWqklO4CvyUwS5FZBtupN1iYzIz3ejQcGBtJwu1aOSUxu+vj7Ld
         GCwyPOV/thOuJOeN17kS07pc5DBwp/iqSMz2tmx9JY1CVh/yZGBPtmZd58Rz9xNJxnCL
         X0oa/7u0Zlc0BLBiBeHdf8Fc3oyj02c1nKIfu1qJlW88uhpTVCDGZhMEmQcFIOLOBViL
         iWIQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8Si1UnYkX+G+cxh1dzLG8mLE+9ZpHJ5Y7YqF83qisCgedwQm7Jjtx3tMpDLktsQmwOVI2VJ3VitI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz+lSaE0TXPhp/pvEuM28uK2C0VO2zj2vbbixqkLR6pcq6HlmZo
	suns3kfE9LsLS17wIF45+taECcOOBBC/AaKYgyKlA6oV7NHdfxxnP/w4wuVBX5O0BrZrFO4yUO4
	F/TSOr4EqMCd9VlbW1bGBfHzZRQB+JZ90aJ6g2lZyoRvAn/62MUvOUCsFt8PZI1/IZQ1x
X-Gm-Gg: AY/fxX7lnOunP7HmHG4TFNYSDtUur3J441r90XHrGxwjdw/9CgUEHPUxmQZQ+R8gVbl
	iVxvFOwUv9iNO911qoWjUPXhK9VA1S7Pr40ZfiM2W8Vy11fEKygCOZcaBduK6XwukYfCBF8XL5Y
	WFrWf+ufIt9XNYdY1mtkjAzs3QNCcDA5OCGXMM+np1lH4bOGIAwJfhHS5jMdDIpDt4If/uSdgLs
	8cB1EiKXMN/DWZS4BmUSQkQbGdSn4HuluJtZCdFnxBRqHCUGDY00Ts60lIhxFVFaRnwT1IoBxMg
	XB25s+KNTh8SeYsrzA1j76rEOuRWn2dT7q4JN4VFqVKESjWxZzB1JSItDIGMaFbFj4Kr4O46q2H
	J80WkK8JmiEwa4AS4dbKJkeiYR4nXslnNTnPtyXrAp3iTsQC3HFXX
X-Received: by 2002:a17:90b:37c3:b0:338:3d07:5174 with SMTP id 98e67ed59e1d1-34e9211e556mr26888370a91.5.1767176464304;
        Wed, 31 Dec 2025 02:21:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFZJ/hDlYxya0cqVXGmcQC02sSHhRiMrAWcToJnpayDLGrTdoVYDAVXVJ800qL+pvzDhowI8g==
X-Received: by 2002:a17:90b:37c3:b0:338:3d07:5174 with SMTP id 98e67ed59e1d1-34e9211e556mr26888361a91.5.1767176463835;
        Wed, 31 Dec 2025 02:21:03 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e9223ae29sm32163920a91.16.2025.12.31.02.20.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 02:21:03 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH V2 3/4] arm64: dts: qcom: hamoa: Add UFS nodes for x1e80100 SoC
Date: Wed, 31 Dec 2025 15:49:50 +0530
Message-Id: <20251231101951.1026163-4-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDA5MCBTYWx0ZWRfX6TAKbqd0D486
 vfbaf4mGWeQEIJOquV9iN6GcngLv35uEegSTyCRW+gRGNYjVdBOCywhjyBxHpnn6ts1fHN/mX2n
 w2IeQftjFurO4/bVZAIonJsNhu8RdZcTEBNb8GHxq7r+xPpnGn+YsJIkLnwnFOcwtikiKirm/nl
 LDeBi9zKTm5okMZ0VM1g2HikoeKrSl2IOK8nOG9D26EQB802OustGM3CeCvhTObX35vsxGuc5Hu
 y2Ez1hqbOYjrJVVA2QX5egQPMYFf3btLW/HI79fNedfdeB4/l42/MGHW3Da+QO+LB+jmR5/oxFl
 D74Snz1RKEgeQuWUL2b1Hqz5KxsvU5j8pvz0/+crcXqye0Scyf+klBMD3ZdJVlKIE8YXy/UvNgT
 ixz9oaq9ImRjzdisknOvGMW5ieKQMNcrlNV9rpUfwigYxgZRo8CY/xW78K1P0+OhGWzS8V9LyS5
 JHp07eib2wp4XlzCJxA==
X-Proofpoint-ORIG-GUID: dN5_iid7adfap365OPfVHGcqzcJMTs7Y
X-Authority-Analysis: v=2.4 cv=KvNAGGWN c=1 sm=1 tr=0 ts=6954f911 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=t4k6GlNMiQNeD8J6t2QA:9 a=RCcOOarnl-q3lznF:21
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: dN5_iid7adfap365OPfVHGcqzcJMTs7Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 adultscore=0 priorityscore=1501 suspectscore=0
 bulkscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251231_022106_597654_EF3DA4AE 
X-CRM114-Status: GOOD (  11.68  )
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

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 123 +++++++++++++++++++++++++++-
 1 file changed, 120 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index 21ab6ef61520..cd7e2f130fe2 100644
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
