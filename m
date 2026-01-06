Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58D9ECE9D63
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jan 2026 15:42:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zjYUvCHPIRbkNCfRigXkPTJaxWeqAnidyhi7+64sfRM=; b=YDVzCC0+zjKhsj
	b6BLwv72+ZRZkavheBEXqy2vrtJEujIDqUAo80gxUTsMZpvFibs9XVbQDZpbFPfq3uLagdvEyZ6r4
	emj9dUOK/ipgzWG2swYfwvlN16g/E1AKETHpsOZvRCrhqs5tUPAV8C6ZvxD+ZCx6dTAaOakUOtAsY
	OIEnqoE8D57cRQeMw/RCD+rOQx+/G4vbEvYXh5JYgcy/6b/VNeXCYZNZz8169X3Nw6tc2TB+JvZ/Q
	M/zgKU/xIXz/IXYIZbwud5lpCVMJxsYXa4zlY99VqKvr1jdK6KPqWq0eka3jVB/Gn378Trp4Ie3uP
	bi/OanDdm589vxPMblXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd9Ch-0000000DQC2-0RWu;
	Tue, 06 Jan 2026 15:42:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd9Ce-0000000DQBM-3tuj
	for linux-phy@lists.infradead.org;
	Tue, 06 Jan 2026 15:42:38 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6069WkEg4091593
	for <linux-phy@lists.infradead.org>; Tue, 6 Jan 2026 15:42:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=MLIJ2bjx/wd
	klJkhrSWUlgRRBVAS9xQIXwyJjqZ7yCo=; b=eyytB+uVPnyJa9vFr/B8gLZaHT+
	T2qtPt5JgWioJOE0XxNRhDo4py8MOIifY0zujjXIZPo2va/iG9lZN5bH9lWgZJBV
	3/00mULF3N28foRaYxPUSrioP6UWDRG+QmrMcrcJC57JQCdfdfwfdtMRuSCH6Cyk
	1kqKAoRLnQRPGjQeBf35f+WgswbK0bgKN3Dx45u7cFSumANDFCpnYYTDxGdXFj7H
	NLKdsNn5H572jjyjPN1f3EnXOaXEzd09p/Qu7//Rbabchrtp0ze1m2B6FlUfzao9
	zUGKYIkZcMOnIjItolyrmmFicjvf4PgbQDdPs638atr/8x+rIt0XTpG9ztA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgyun906r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 15:42:35 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-29f177f4d02so24136005ad.2
        for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 07:42:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767714155; x=1768318955; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MLIJ2bjx/wdklJkhrSWUlgRRBVAS9xQIXwyJjqZ7yCo=;
        b=GAQ6uiwajEb5jcJfP+J6gv7M0NvvFXqkF3UPMpunlt2HMzedviz8M3cRFDuNz26F1D
         RhSqsyOsr3JquYrSIxX6wzPicTIrSc8K795dkqYiA6WwujvvJhY5uOV4ANBtWgvMrmZa
         IbGlclc31asCCUHLgcdpNdoVg8ToIzD9GLJ1Z5tmgElWimLrRLmbE+761Y39myCuxZiV
         jbBrxT3w3slHBAgwp6ihzfGL4rlAPghhuxqV3ywn34fw6N/qbSSt/q6UMal96Yt0HwsJ
         s+dsJoqYaHSlFII1v90hUV1FaVpiuna5i1GlvYCBFgYHvMMozeeBZsOzSQD349wprMi4
         LENg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767714155; x=1768318955;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MLIJ2bjx/wdklJkhrSWUlgRRBVAS9xQIXwyJjqZ7yCo=;
        b=qdeTKSJoYF02//SDrgbx4t2ItHoTMJkPBjCOh64I+YQcEs3zoTVYk9tz9oIg9V/jZh
         pv6gVvUFXE8UlMSutGhtsesyGPvXM8osUxFScEOVld+EObzJrssfbqPiwuznXW2yjeI9
         UQ4XtrF+M3a816Of95xr6YL5Sxop74y/xcm16IaI78/8zhZ3aYazkcXBZgsdu3Lh59IA
         F2fS/B45YrJKnxkwsjgdW5T3fnIBaiaosQMvdXouiASdfpWfK+Ej6ZenvSThYafD597Q
         YruIvdamzm/mtIbfbwXJ3PwslS1ZE1L+AatXkUG9ohdkSuIoxXk9eT2laeVMMrvUtlAG
         d1Aw==
X-Forwarded-Encrypted: i=1; AJvYcCUenZapxsnxlMB89rBrJsR6FBkDlifSqR96gNPXnuzoc+PcLnKSVBUnTK51LyifDd1Eoqxi6lP2tvc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy8QJKk52fREviyw4oroXFgQVUl0PVvra9jpK3lgT0LyFX2TDer
	U83gQG6d1LeKEAjeF6sTMGtTMzw+kea3L96NZ+91XQRj0z+5qXP7MwsQpI/56wvhBRdV5AuouIw
	E4NvcRGYWNWTkvuD8iLV2KvlXIzM9hhaWXSZFbA99PfP5fmNtjq09bzxiDpIHZUI2y28uEMAOdA
	Rp
X-Gm-Gg: AY/fxX6rLu3HDXZpVaysQ3nUJhsFX1GR0ZonzG8VVe79jrztmzlfj0LYpdkoSUumpDS
	N0G0lqVh6DmeV43EntTMDOCHIvMH1QyHZUJiqIE4vtHg3FHthri3vYwgU/1rCW29b9Zmp+A0TBz
	JFz3AbZCJ9CIed3/V+w7q+lpTBqtR/WdlDaKSP7Ug7qWdDVeW7u4NzGj08kJLvDq4Tc7LrDC9Fu
	JSIK3Z25+ZxsCsTbphup7l0h+opyKSEKmaQ6XoYvW1nq291KZzSeN963eHaljCEHSxgik2cSI+i
	0x47HgAJRToqB+cuGAHYvsH8BS3pp0wvEp8nKGsxe1SkWwGL5oy7622qXW8SW7vbQLQ7aqKYVRA
	pkny6NI03ELrH327+gv0Mu2QnacTlGsy69PvxDxaGkAZq/gm2Dm6+
X-Received: by 2002:a17:903:28d:b0:2a0:e94e:5df6 with SMTP id d9443c01a7336-2a3e2d50ee6mr31549045ad.50.1767714154452;
        Tue, 06 Jan 2026 07:42:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG8z5h8zFxPhnIGTIfe++GibD1jOODn/FGkyxORNyREEj+xu/75UvgF1cMqHKzdEKJIebZ7MA==
X-Received: by 2002:a17:903:28d:b0:2a0:e94e:5df6 with SMTP id d9443c01a7336-2a3e2d50ee6mr31548735ad.50.1767714153970;
        Tue, 06 Jan 2026 07:42:33 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cd492esm26606395ad.98.2026.01.06.07.42.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 07:42:33 -0800 (PST)
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
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>
Subject: [PATCH V4 3/4] arm64: dts: qcom: hamoa: Add UFS nodes for x1e80100 SoC
Date: Tue,  6 Jan 2026 21:12:06 +0530
Message-Id: <20260106154207.1871487-4-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260106154207.1871487-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20260106154207.1871487-1-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDEzNiBTYWx0ZWRfXyGjZ9ia/b0Wm
 3i0Rzfi2euayiMPWpNipy3IoZh59OIX1kEVPqZ65z7aEWrl815N/qzqXuI8nijVtpcsBv/mraRD
 /APzrlZZ7H6KuGFIHAVXKX8Bab8AMB2J1i1jKBX8OReexZ9YMKxxUTNWcT148QUD6yKER4OB0EB
 7SUtPU1+pRkPEfjTwWdd/m4HuY0AoOlnRxtdz+4BH3Fb1hbpuIwZCsB4ms56OKidCKLU2Flr/tg
 aXuSYLEtCK3rrsuoedUP6SjOyQ7qx++phu7KUOaPXEpQdWUJUtwGmwhJ1HHTbRinI+U/XE+zv+Z
 mKaLAuYUckNELeuzt3tC9yrm6Eoytvu4/WbYCm4GY83ZxAHxSk/gO2mwTF0TwHC8BHTYuzsVT2B
 Qx1S+jWkoK903QKrC8ID8oAEx1T+ph7vKCSk4begwJt/W4II0qm1Ew33ez8fPAVdxwQAvVkFskB
 m5iv+3hCk70wR0OUkqQ==
X-Authority-Analysis: v=2.4 cv=YqIChoYX c=1 sm=1 tr=0 ts=695d2d6b cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=-wAyGzpI3j0i2zLxvnIA:9
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: utUGpHt5j1YfOYVGS8RSSlx88FU5a0B3
X-Proofpoint-ORIG-GUID: utUGpHt5j1YfOYVGS8RSSlx88FU5a0B3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 impostorscore=0 bulkscore=0 malwarescore=0
 phishscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_074237_082258_F1346183 
X-CRM114-Status: GOOD (  12.29  )
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
Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 122 +++++++++++++++++++++++++++-
 1 file changed, 119 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index f7d71793bc77..25c838102280 100644
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
@@ -3848,6 +3848,122 @@ pcie4_phy: phy@1c0e000 {
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
+		ufs_mem_hc: ufshc@1d84000 {
+			compatible = "qcom,x1e80100-ufshc",
+				     "qcom,sm8550-ufshc",
+				     "qcom,ufshc";
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
