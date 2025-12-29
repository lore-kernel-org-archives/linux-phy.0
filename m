Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDDBDE8FDB1
	for <linux-phy@archiver.kernel.org>; Mon, 29 Dec 2025 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v4/JtVygozemDdk7y4dvPyeifVw+TEIi2dtDJ6WhiqI=; b=iLHpNaHY6+GfKx
	xbWHVR1m5sDneS72ZmLhuZ09grP7+t2ypwObwTceP8Qgq67ztlhUMx2UnJAkFUV8JH2/EMHFOv7MZ
	wOxHLv07UmCGLXPbhQA0f+zcb1Sqhc7qn5MaP3ur6G5BMpZwFINCvsZfOEvydHp946hpz8//F3QZz
	LDxfMuT0PswJ+6TBm++mAOE1adtyU3Ivl6e5zFmU1zvbebVPtkFG3edZpIGvJs5lsHx8H3zpD7T78
	u8rFCfC6Hzngg0bR26etc0XvgujNXUE6fGgKOjo4ATXCb/ABr9v2cW973CClQPqSeQ58+fr+wnQ3W
	fiFiH0oASLbrqkIHGIfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1va6Pl-00000003N2t-23AI;
	Mon, 29 Dec 2025 06:07:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1va6Pi-00000003N20-1H2r
	for linux-phy@lists.infradead.org;
	Mon, 29 Dec 2025 06:07:31 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BSNdJlB322822
	for <linux-phy@lists.infradead.org>; Mon, 29 Dec 2025 06:07:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=l5AlLFE34Fm
	eV+ruRlv4pOkD3IhGXuAXKbbBjlDFXPg=; b=ovDjmbWwjIBeOBbeGY+AhBNv42T
	Me/Jwbl5FspCQm+L+/7DLSXbgUD2cn27mQ0B/BmqufzCUG95xL/8JWH13GMjX0CI
	xej4WcRHQBw+8qJQW93shgxQgr+EtDQ1kh0rGlobwSuNQvJCftgvJMGQADR/11N3
	4+N+iJUi3bXbM3TcRbmjUspOQxjNzVKpuVexpcFQ91bUlnQ3khH5gVW6b2/q2a9k
	dOuTjkMWS7tkwG+dg0GVNhlkO42+pYIkXbnmSOjWaB6V82m9TAn4SqUk7BJn6z18
	82dw6anb2cs2rCMrDeTM5ZUr2kJPRtPwwYcZ7ilWucqCW6ENsJps5n5CRVw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bbc9v0rxv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 29 Dec 2025 06:07:29 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7d5564057d0so20882018b3a.0
        for <linux-phy@lists.infradead.org>; Sun, 28 Dec 2025 22:07:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766988448; x=1767593248; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l5AlLFE34FmeV+ruRlv4pOkD3IhGXuAXKbbBjlDFXPg=;
        b=TMSrZZ8gCVv/3WZFFb9otnXdPlDV3nCsTaCSFiS05WrNn7cdM14mkvKYAbnBj1hqet
         XCQYvn8JXiUHh7oMmBgs+nxWn/GcYnZvLsCrKAj59fERHrUVk4LE+09XM6/+znYEXNMc
         bcbkpvZePSpPE8+0XX5KjfIY6E5ULAAXx3f9aK2CecjifU3ba17Qf70wt5TKcSGlGTCS
         qZo4gj2OpzO8NvskQGKa+msMFP6s3Bj0ykilHjuR3ZB7iAEAM/RMe2r3OZz71y5swL8q
         BNud+6csyOyXyoiVGObkThuLgKDY9x+VJ/8VRjXKvj0cWp9PaanIROnHorLKfyXBo+3e
         gN4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766988448; x=1767593248;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=l5AlLFE34FmeV+ruRlv4pOkD3IhGXuAXKbbBjlDFXPg=;
        b=uDPOXhy1Fi9T/aDknu1P2YwsdkRKn2L5Lr6gg/dFBUXWoYZoPh1sVz40WjGzK5Xm2N
         Lv+mcnH6XtYk8SdjiTD+wEtk24+lxrE3K/dXikH/NzupGtR8GFag+972KQGT/I1urOyX
         y+13Dx43f7M8EC+4fSiQ789VLDaBaJmaP7jm+rrlSARu/xAUnqhcjiJ3hNhLcJYkSfJP
         1hst9/fjYnPOa1Xe6i+ogn5KJALTx5OIMFsii7C970sdi/rvkdsbSxiINrQtr40cf4z3
         le0oEjC/FLdtgY8DWTvjDdLHtUwidjqE3QEXldfe3s+RjDOzxNoavSuWf6DmUuWV4jzC
         j3bA==
X-Forwarded-Encrypted: i=1; AJvYcCUxb1eIwDwKMSqAOF4tRYISdemiO+fUirToTsqP1c0FUXqoodH3EVLDOKUM8LcYshrRBvDDkJ4Gy10=@lists.infradead.org
X-Gm-Message-State: AOJu0YwIyHTc+5lL7/mZR/n79ltTL7GPLhwpIgaQj+qYSXANek+q0D1Z
	BPwGGJ/OwKqR8I6iBCHe0Frx1W4GYKtU7VX208z8E+zKDgFcmLwhDleN94PmwiZfgvY2OIknEvk
	JcFM0mSgnCPOQi5W50HCGQAm1jRLYbS13JpLMG0trAWmCfMfkMDbm6AQtKWjqNfXv6V+x
X-Gm-Gg: AY/fxX7sFgtAPiLokIYd6cQM4DNI3BE/2oSNppPL+idZPvYxWqHCsBJP5rqakxiP/mu
	xRYylYD46NL+YOfp6cge5R2X2IbvGhDq66qcmWiT4/q/DXGjPXg7xnCoQ/4javZrHI+3dTbCb09
	m+P7ZpwKiWXwLwbZPJF+xHh2XQgfJL3saeb1nmD40oyBOeNmzpXQ90aSdP/l1gYdcf4xD0SAng5
	sTZjG60uB4hS5i5mWNZaTUOFb43SUsdewP1dV4WpZi7FCMwOtaoxH9LjXM6CwBUwMavAz2u8/t4
	9VSuR3eEaNuvv5oRFBMgkzDXx9HRST0xShCOZaK27PH9Vakg7pMjr89o1m6XpGS7ad5b+CVHuYm
	pEzDnA08N8+GJUqpwxM777LUWs4fxPyShgHVEZyPPbcaovqavabrq
X-Received: by 2002:a05:6a00:414e:b0:7e8:450c:61a0 with SMTP id d2e1a72fcca58-7ff66a6ded0mr23813239b3a.55.1766988448089;
        Sun, 28 Dec 2025 22:07:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFbToU29sSeln6IBU3gpubsp2YRrK0fCKY+pEKgI319gR8j0RPiSLM10K92Wv5lHcLvo38cXA==
X-Received: by 2002:a05:6a00:414e:b0:7e8:450c:61a0 with SMTP id d2e1a72fcca58-7ff66a6ded0mr23813207b3a.55.1766988447570;
        Sun, 28 Dec 2025 22:07:27 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e8947a1sm27917763b3a.67.2025.12.28.22.07.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Dec 2025 22:07:26 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH V1 3/4] arm64: dts: qcom: hamoa: Add UFS nodes for hamoa SoC
Date: Mon, 29 Dec 2025 11:36:41 +0530
Message-Id: <20251229060642.2807165-4-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: smp7pLxk11dvfUGrSvqHp3S3UpqIVQ8L
X-Authority-Analysis: v=2.4 cv=R/sO2NRX c=1 sm=1 tr=0 ts=69521aa1 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=t4k6GlNMiQNeD8J6t2QA:9 a=HbcSV5I89lm56-yt:21
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDA1NCBTYWx0ZWRfX5uC+bMFbaI8z
 AtSbld066YhwD1tAJPgO48K5rQpyQvkOQgf0jhcZCfq0UqlUZFJQsQ+XZJKFedyKv1TffggnZSm
 d9L12/xCzKkVhsftauOaypdd3Piuk9OLS6rR0hVNVk2R6RFhd46bR7ZsHslUb55lDZ2IBky3UfF
 mifSTd/QoqJc43l5ZOmUYJYGRcFSZWzn0NWEYqKGgU5pp2zj4dFRTrWkL8JmB2+AL89krav3ksA
 6aoOouJkUPJ4EHwoV2duMtJIMV86UvHFj/WFINMI7lh5Ov8ujdoZ1wBurTvZpYlf8wu+BhxznPV
 mKdxYi2Pp6n9aQhb/qc1GBgeSQQF4fiq95/Btqwp+YHzk+KIXCRLpoQlEC2qdeJd2Ez2hO2Zb0W
 U48tgBhoRsNp56KHTzKd0TNjMqAon3arxs98Hn/WiHKUftO8+YBHMjJsir2vpm49sUCWhmMkd3M
 zxFOGEmkHG3SddKsekQ==
X-Proofpoint-ORIG-GUID: smp7pLxk11dvfUGrSvqHp3S3UpqIVQ8L
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_01,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 suspectscore=0 phishscore=0
 spamscore=0 adultscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290054
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251228_220730_485052_B64B0537 
X-CRM114-Status: GOOD (  11.75  )
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

Add UFS host controller and PHY nodes for hamoa SoC.

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 119 +++++++++++++++++++++++++++-
 1 file changed, 118 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index bb7c14d473c9..340b907657be 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -834,7 +834,10 @@ gcc: clock-controller@100000 {
 				 <0>,
 				 <0>,
 				 <0>,
-				 <0>;
+				 <0>,
+				 <&ufs_mem_phy 0>,
+				 <&ufs_mem_phy 1>,
+				 <&ufs_mem_phy 2>;
 
 			power-domains = <&rpmhpd RPMHPD_CX>;
 			#clock-cells = <1>;
@@ -3845,6 +3848,120 @@ pcie4_phy: phy@1c0e000 {
 			status = "disabled";
 		};
 
+		ufs_mem_phy: phy@1d80000 {
+			compatible = "qcom,hamoa-qmp-ufs-phy", "qcom,sm8550-qmp-ufs-phy";
+			reg = <0x0 0x1d80000 0x0 0x2000>;
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
+			compatible = "qcom,hamoa-ufshc", "qcom,sm8550-ufshc", "qcom,ufshc",
+				     "jedec,ufs-2.0";
+			reg = <0x0 0x1d84000 0x0 0x3000>;
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
+					&mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					&config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
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
