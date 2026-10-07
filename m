Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38E13CA5FF1
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 06:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=846ZAqD9UFXDGRQbhZTrXMnC9hUdRyLmNxBNq87pmOg=; b=b+pXsj7IkcuvW8
	ZkDhFxwSHa0SGIAJ3L/Prc15+cHTcI/t1j/eF2eyDpXa3cab3RCRfi/JMnKeMdUe2EkZBcOe7d7r6
	vQSoFrwkIKSMLha4wEmnmmMeEVvHekqlwhgEq16Cz2Qaywbj3ch/mapzAT7qSD8/GwNQWEngTYDVI
	eGvyWUjDPqiZbpBIlereAjWgCLveFxqXnSCjLI1h7EeW7i+JxDh+iFdZelpTeyuScKwjAWr/r9FWF
	e7yReMSiypl4J/uoa3XdMRKqut/PFqNtFLCAyy6pjcsXwtLCxTyt6MntjshkrPOkud91LTCYsDs5m
	9+wO5eyLrWdNmkYaoC5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xELAW-00000001mQf-3W92;
	Wed, 07 Oct 2026 06:30:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xELAT-00000001mQB-3k71
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 06:30:23 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6974U8w72879130
	for <linux-phy@lists.infradead.org>; Wed, 7 Oct 2026 06:30:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AtE/d8mRsSzaG79+2m8aJWMacLBckY8idc15SCnRGq0=; b=nUQAjtFEhukq1u0t
	99/equNAUu62g8UPBCCk9tAY9Eh+YEcpsPswlGIRrA33C9SvjYFab80dHw3KFQe8
	iW+/kwG/34VSa0rm9XFfvcIj5XJv4oBcrTzDYBhlULAwjJdvYF0C8zkKqQJjkG6u
	cWafnYS/VARzftwhKROsdhidHgvu8qB9C2tT2jYBEo0eJ06Q0kD/r/4VLz3Nm9IW
	dsNXiuR4rgIrRo5sEzWwcFUqqzpk6tVJ8wlAzBcDVkDJJht7cvbUs4wmpEn5LVDn
	cyKC7cxR9w6hJE5eZFOD399FmhG3+kJ6s66fkRGY0OPJyXHKkU0xj5k1d3Mzb1Wi
	GM5Zvg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h4xc9vdh4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 06:30:20 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3a6d30f66c9so2104974a91.0
        for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 23:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791354620; x=1791959420; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AtE/d8mRsSzaG79+2m8aJWMacLBckY8idc15SCnRGq0=;
        b=PFQnXiOqNXaz4IGJuKTNjahR5hzpzoD1oaiCCnlg1/AC8PXUhOVjwn0BiXvciqxauq
         lR8gcjD6pBYUJ51U0vtqEEJ5Gyk8ANOXIDb/uqsqSiuQsOB+OUohHx+wrrfnae0H3KE2
         Ys+kXzsP6bges4QcpzA6GMkXx1L7z7wqCLI289Olv8u8QR1KRZTn9vF1uUvZmRW4nN5L
         GmcWkBXE0H8ngDSqYNxiJzY+cEKJ6y23TC4Hxlt86TxRyzREeaBNtARZo2bn3iKUfb/f
         3oxH+70v0yB+ePACqrqu8Cpq/ZRO97NyZ7gTET43hmgi61hp+GSKE5wAqZGkV5HuohiT
         rLYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791354620; x=1791959420;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AtE/d8mRsSzaG79+2m8aJWMacLBckY8idc15SCnRGq0=;
        b=Ysg8YEMwXFbjQ4zP6t8trIzQDOH5R2kS7RrjfRDwxQ8BuS0nqVQ7g60j4AzJtFxDP1
         afhOZhKDHXhC1Q2TfNDgjcCcOlS/XaSvRCmCTZuFFOPirRQACnENlYB9f6orZceGKnlw
         SwIcA4GtAPw6XUHbqxvLCSJDqnjQtqhBRn54jMITr3IsqfDEU9YhuAYpUBzIbKgEj8Vo
         c7zQNZs7X9G4ExPhAB7HiXWLPtVa0li45y6JHRSsFSwBKsaAZPnQyLlnRvhvuFsdFlD6
         c3dhQ/SYU3TxpyEf2j44GB+7Izb/eUt3+pRq+70tChPao9CH6DuxEQp4jQ+53T2e5ipm
         OaQg==
X-Forwarded-Encrypted: i=1; AKwUvByds+qYrYod95HQPSYFe3DYUDF0CbIVXFTIp00ZZgRH1iSLAAhj3f/oiXb3Oa+djzQPeGkBqMddwnY=@lists.infradead.org
X-Gm-Message-State: AFq9FYJgzY9HMXDrCKNAmcCYBwJPNcrCePI5164GaMYEVCjqtKolFtvj
	OzIT/9SRLQZG7x1nuwww42icVn+9k9+2c8pwjN47Q8AqltCmmmopDW7HcQprPSHmYCDlzkEc4GS
	Kfs4wySSCnd+f4DGcyY7CCG+bWrjRU42nfxufLNtyfipuSHpAAQ2HS2cF2sAkqEEUEgXL
X-Gm-Gg: AYBFou3A8wXnt9z4NEhTX06bqtvq9B0Dfng9HOC6y2JXXsOihVXP3FtIJdDdkx7+gGy
	C7MPn76Qhm9fQ9AWhERD+hzas0OaADDKI4Tx/Xl236yaiH+QhlEGPF8IYFZZJFc9mci2VbbH+Q1
	/NjicCcv6cUqEiaXDkvlGRtHLq3gDEHxR6/XWyMyzaeXb1J1k9AV0Z0zoHMFBe4UHTlEyVp3a/N
	ULgHIEWGdGwgSxXjAOCeRaoKpTzXNvo6aTUYqNnUcefi+ZTEqWZbWvCUjXUMHqOr+etp7nG8c79
	fTsucTLCKJ+wZoFG2ZHdy2T1sjWiTK4530KTkXKDVpFul1py1b075AvNpekgIhGFNcYqxkG0+VX
	rwp4RCKp2XLWnUFJcER8ctsL/dA==
X-Received: by 2002:a17:90b:2ec3:b0:3a4:cf85:aef with SMTP id 98e67ed59e1d1-3a8545cea12mr2865686a91.25.1791354618702;
        Tue, 06 Oct 2026 23:30:18 -0700 (PDT)
X-Received: by 2002:a17:90b:2ec3:b0:3a4:cf85:aef with SMTP id 98e67ed59e1d1-3a8545cea12mr2865664a91.25.1791354618091;
        Tue, 06 Oct 2026 23:30:18 -0700 (PDT)
Received: from [10.213.101.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a89ab81bb0sm2972690a91.5.2026.10.06.23.30.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2026 23:30:17 -0700 (PDT)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Date: Wed, 07 Oct 2026 11:59:36 +0530
Subject: [PATCH v3 3/5] arm64: dts: qcom: glymur: Add UFS nodes
MIME-Version: 1.0
Message-Id: <20261007-glymur_ufs_qcb_enablement-v3-3-84cf4f861415@oss.qualcomm.com>
References: <20261007-glymur_ufs_qcb_enablement-v3-0-84cf4f861415@oss.qualcomm.com>
In-Reply-To: <20261007-glymur_ufs_qcb_enablement-v3-0-84cf4f861415@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791354585; l=4407;
 i=pradeep.pragallapati@oss.qualcomm.com; s=20260911;
 h=from:subject:message-id; bh=9kyv/RmQosGyDp9VxTpU4lmroLa4HPs6mFTgIA1kMzM=;
 b=IXIzx1cg2vfC+nAk1sKZYrJYkD15D+Vb5+X45/bjUiTNNO3jLCxAgOI1jrQmPewwKk3BOsYSZ
 a7wp5Nu9JOLDkQYSHkBqrUhvEZ0fegU/a/WAMZWD5z25NEqSE/c3tdt
X-Developer-Key: i=pradeep.pragallapati@oss.qualcomm.com; a=ed25519;
 pk=uyRUsge8nQMwf3iW/e/o0U8z9nWLCMm1MGKxEftztic=
X-Authority-Analysis: v=2.4 cv=ctMOAF4i c=1 sm=1 tr=0 ts=6ac5e6fc cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=7sHo3vQ6stv6frjssEUA:9 a=JqOrBNmfTE-P4NNt:21
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA3MDAyNSBTYWx0ZWRfX6Fsv3LJBYftu
 7qdlUEl0DgRqiBEtphTzlY1LqU+AJ/NKZ3n5am6CWyh1vETSqJ87JSRrUcS/GGJbM9/KzTvLmYL
 BzliCl9+yI/g/LoZMANyabVXOBWjSwc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA3MDAyNSBTYWx0ZWRfX7jcCCHg2OqvN
 V9rsPG/h2CcBSiPuN9lsK7NNzRG+9yfHcLRobrvfLSGhOt2ehqcd+ne0wj08ctQTaABMAjq1VMM
 gIYNimVeUw/gKSev6fPC13yNRKwZsM+4YGXTwP0zSSpfooHIDUYYVOjk5/BmAHjkm70sEtyIphD
 eZiyxpDxUn4f40fon+ix64Cf5YI7KLIf/h07IYRlLMvmejl2vqTK/JfMO9A5tzEGuTflcI5cTwn
 GssvH0ZQFNeep2fEOFu3cOTAgjlbhQoETtIK9P7sMXFIbd6daIh7I3QJyvlblb6sawkiArkR7eL
 0CIX6hZpXveSPVz3vC724aRVDP4uL+0gJ71q0i5Hh9XXZJxQ0DQC1vpyrcP435pfPhtELi4S/SB
 91q6FUMAMp4tpT0umZwse2UDtoJy17hM/3r4pnPanNDMbweIBW4rMJfRi17bmYtEi3AVZIim7Rn
 lJuOkwDUejl6h3QGHew==
X-Proofpoint-ORIG-GUID: 3WcHr4QOQndOFivPXq3cI-NAKCtnmjx6
X-Proofpoint-GUID: 3WcHr4QOQndOFivPXq3cI-NAKCtnmjx6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-07_02,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 lowpriorityscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 spamscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610070025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_233022_056585_8EED6359 
X-CRM114-Status: GOOD (  12.35  )
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

Add UFS PHY and UFS host controller nodes for Glymur SoC.

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur.dtsi | 125 ++++++++++++++++++++++++++++++++++-
 1 file changed, 122 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index 65a398c0a992..49ef89b41aad 100644
--- a/arch/arm64/boot/dts/qcom/glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
@@ -811,9 +811,9 @@ gcc: clock-controller@100000 {
 				 <0>,				/* QUSB4 1 PHY RX 1 */
 				 <0>,				/* QUSB4 2 PHY RX 0 */
 				 <0>,				/* QUSB4 2 PHY RX 1 */
-				 <0>,				/* UFS PHY RX Symbol 0 */
-				 <0>,				/* UFS PHY RX Symbol 1 */
-				 <0>,				/* UFS PHY TX Symbol 0 */
+				 <&ufs_mem_phy 0>,
+				 <&ufs_mem_phy 1>,
+				 <&ufs_mem_phy 2>,
 				 <&usb_0_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
 				 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
 				 <&usb_2_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
@@ -4102,6 +4102,125 @@ rng: rng@10c3000 {
 			reg = <0x0 0x010c3000 0x0 0x1000>;
 		};
 
+		ufs_mem_phy: phy@1d80000 {
+			compatible = "qcom,glymur-qmp-ufs-phy";
+			reg = <0x0 0x01d80000 0x0 0x2000>;
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 /* UFS and PCIE4 share the same clkref */
+				 <&tcsr TCSR_PCIE_4_CLKREF_EN>;
+
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
+
+			resets = <&ufs_mem_hc 0>;
+			reset-names = "ufsphy";
+
+			#clock-cells = <1>;
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
+		ufs_mem_hc: ufshc@1d84000 {
+			compatible = "qcom,glymur-ufshc",
+				     "qcom,ufshc",
+				     "jedec,ufs-2.0";
+			reg = <0x0 0x01d84000 0x0 0x3000>,
+			      <0x0 0x01da0000 0x0 0x15000>;
+			reg-names = "std",
+				    "mcq";
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
+			interconnects = <&aggre2_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&hsc_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "ufs-ddr",
+					     "cpu-ufs";
+
+			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
+			required-opps = <&rpmhpd_opp_nom>;
+
+			iommus = <&apps_smmu 0x460 0>;
+			dma-coherent;
+
+			msi-parent = <&gic_its 0x460>;
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
+				opp-100000000 {
+					opp-hz = /bits/ 64 <100000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <100000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+				};
+
+				opp-201500000 {
+					opp-hz = /bits/ 64 <201500000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <201500000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>;
+					required-opps = <&rpmhpd_opp_svs_l1>;
+				};
+
+				opp-403000000 {
+					opp-hz = /bits/ 64 <403000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <403000000>,
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
