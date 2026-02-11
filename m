Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 525C0E9E308
	for <linux-phy@archiver.kernel.org>; Wed, 11 Feb 2026 13:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H6stTo11ZbJBXgSAaMt+wVtWE//ZY9aUmtgX1zRAMCQ=; b=sXs5AZYCmIgvzI
	RpIb7L39oE7HU26e5mKLesh4bthpYsEkQmRofbWDBixIq0U5FWQDsYz89pjnDFIbPwRKoQ7VtdxVR
	y+dHK5xEC58DKrwPtHkctFMOXTe0ZimYDe5c9u9aI4CjB/ZMOMKd4Zs1G1wDESmjiMDnd7ix/6XrR
	5zAycMhK2DRUrU2V8ccFp84M1KcNkDMutd7w8z6AsGm4zwwWIKs4oe7fSrkuCjgtp/BRy78RSAlrt
	qSAvfrLp6fQm6eI5u3xJHCkROanfNvjRwe3ezsNpo6gkJpSR8a4+7xps5IkIWnoOv9RDZSJUJiktp
	Gd6EJHPraYQDdh9HhHBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqAIF-00000000ghf-0DZZ;
	Wed, 11 Feb 2026 13:30:11 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqAIC-00000000gh2-2tma
	for linux-phy@lists.infradead.org;
	Wed, 11 Feb 2026 13:30:09 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61BA9GmV4127437
	for <linux-phy@lists.infradead.org>; Wed, 11 Feb 2026 13:30:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=+mSXJFmfYY0
	VhwXxSE2lAFNVkKKZxxlSmeb8NLwsIws=; b=BV15DCeZlv/N89lMGoS9k4HTBy2
	dHnMz78geIaPRjZ0gKTbPJxWk+iAB/PyoxPee5HT+36zWfU7G7KFVqYJ6zpnro3q
	Idbj5Fwz3y5I/hRUW8DEd5EJS4C3KfHxGy4yqOp0l6F4LuzXOk8rPK3p0fWuaTY3
	YhzlZeU/B1RKL1oj9j2RTp+gVjhctWb1APQ01ViqBuoKb+C9jTnwz+t3cICGMLAL
	UXr/FFFPnj8s7ZyCFfy1N6211ChuHP7jhPR+7wZ4F917CWgidBDhv33C0iv+wAms
	Sjbuf5WysHI4nPbH+A0vPJQ3ScEfES8UDw2/ywMptMl04Rky+ZV4q4HqLPQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8gvm1w97-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 11 Feb 2026 13:30:08 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c6187bdadcdso4126944a12.0
        for <linux-phy@lists.infradead.org>; Wed, 11 Feb 2026 05:30:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770816607; x=1771421407; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+mSXJFmfYY0VhwXxSE2lAFNVkKKZxxlSmeb8NLwsIws=;
        b=MUBH1/3KUoarBSKhtKEdcxIonQwsllFuC3LXdbKx0GNpUBsU8cA6TIuW7vb1KZCg/u
         DTfI3g90gAMW+5pvesmXhpJKsAPmj6oFlMm40o2RJ7DwZ+ljpupugQdhf655xly8s1On
         wUA1zSEGXkz1zBeda0tm5oJuzMCL7LStqcMXmgw4ESopeLKcBR13QaDGzMrVCPquzAMo
         Iu3zgKjzObYJMiZcoWWjDFCsvb2e2Fj1H62/P7QuchaR/jF6X3JPrih3OA9twRHQCH+A
         HImGiOM/R3cJm0/uLGnnzeCg73LQmJZgj7D56HBlCYa9pKB2ui0s3vIoxIskz+QU3+44
         2Mzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770816607; x=1771421407;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+mSXJFmfYY0VhwXxSE2lAFNVkKKZxxlSmeb8NLwsIws=;
        b=gYTmmnG2S6ZuGQoc/Ctw5dYZnhtQa7POv81ovFVuxFpTbNPJA0f4M8KY2czP3YNvVn
         q20UdmwRfge+scYBTGW7jEvELLMHwcSoL2qmkFBt1s2nNjHEtgf67Yc60ajAn5NNJ25d
         NUWhBddoq391Zhcf5sMn6GnG0muYPwdJyuYAbzE1ePmbCK4F1L3uChk6iFMsK4A/cnXX
         Lku9EaZz0sbH8h+gVfice4s2XJwONe4+/so7nTVNK9YDgyBvhhq7Wj6HjCcGaeK2N0Ta
         gncD+DPcjhWRrZ7Cyy2B7b8iHlEEu+twyxyKaQjAafE7QY3J1t1t8iB6FWQLVet/DNq7
         hpRw==
X-Forwarded-Encrypted: i=1; AJvYcCWMqa6Y/pmUfqeOVGKQQZxnESV1zYkfRxyDQE5NAVAUo//3ZY2ZdWRK5xVIG54POokHl59TQrxY2Iw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/HI0KFbbX9chTuROf23wZV8aUeQtFKgyiv9VbjgY/AQty7iPG
	AwCKMH6Mq+zHfHsSpmB21RNYCQy2CMtvU0ZgZfxyjoBcOla8aJQTIimiP6CNQyTwGALYTN/hEhy
	Bq1vsL/ODsZmAKzp1nPHxFC96gDnRXXNcfxoJsZ899JhNiBxoz0AtAoF+4vK7XHa3Jae+
X-Gm-Gg: AZuq6aJ6HpoVCQxfMuFGqhL5vGKG9fiUD2/ban/Cklckt4eu14JAVmcsD/tVxb5J4WE
	Vo/MG6xugYb5Gg/541AT2Pf+xDJm05MtPzfHt7o6IFrj6nEUChsz60CvXgBP5EZ2lUlKYA7/6QD
	JwhNzkDIcH9Sl+1hxJjrfF4eY91xvD2G5LZxKMIIj7inxDfkD47/oZ6/6U7TZi2eDL19t9yWXXh
	c1oDFm6bCvv3Le1P1oIQG3h535eJcjwrR6jHLgE6S2I6M61sBkqf6Rz1Cl12lVccTWd8on+B+Pi
	23/2yvsShSPVlerU9/liwc5QwNy11m9NpC1QvDB9ZpLK5PM2WMMrNA4PWogfY5kak8q6ohkvZK8
	+8+U7E/Coe+8wx99rB9QvIYMK/OmzSscnhuOmJE7sIlfh679TO3FjRvXTNEknYNuI
X-Received: by 2002:a05:6a00:390c:b0:7e8:4398:b36c with SMTP id d2e1a72fcca58-82487b039e5mr4959158b3a.63.1770816606493;
        Wed, 11 Feb 2026 05:30:06 -0800 (PST)
X-Received: by 2002:a05:6a00:390c:b0:7e8:4398:b36c with SMTP id d2e1a72fcca58-82487b039e5mr4959128b3a.63.1770816605832;
        Wed, 11 Feb 2026 05:30:05 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8249e84bc1asm2143655b3a.58.2026.02.11.05.29.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 05:30:04 -0800 (PST)
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
Subject: [PATCH V5 2/3] arm64: dts: qcom: hamoa: Add UFS nodes for x1e80100 SoC
Date: Wed, 11 Feb 2026 18:59:25 +0530
Message-Id: <20260211132926.3716716-3-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260211132926.3716716-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20260211132926.3716716-1-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=ctiWUl4i c=1 sm=1 tr=0 ts=698c8460 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=-wAyGzpI3j0i2zLxvnIA:9 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDEwNCBTYWx0ZWRfXxKjrB95voO5u
 tn/x92+cfRuIoOBcwxOtw8xHyHvni+KnSrvzfvDmwMa/IoEWuHGLK+mzkBJjlUzjcRcVv/FY3bL
 7+rP4/g/+Za282laaaYIQ8kvyA+lyNqBn3yo75EoOd+5UXkTHFX/VHyCAaqmxppHJeOQGg76PsB
 bTF+mgJnfm9+0Gua8huKerXqRfSM+TC9chOGGNy9wW33WO6WmOyJ03YHvwdFBSKRKqnp74vI4pv
 OcLUo+FlCcuvmZNP/21/qUPFq5hz1dyWlWA1kM+fpAhsP20xZkErzO+46F+dQppcIZbxdRSnwFy
 5BC4GCS06sNF1+OLLi1El7D9vPZG9C/lYkgXhojdeBdpKEqzG4oxvwAzIs4ywVJfmhVoaqdRR7l
 47D4DC2Pu0KF+peh2Kibq43naPnYdvl/pBPB3bJBgFt77loJ/wawZTcEVhM+nr3qk4AD8oSDLth
 cqKBVEAYZtM99oMJQqw==
X-Proofpoint-GUID: CZWWHelVXcpOnaut0oBpARrJBXQMomBR
X-Proofpoint-ORIG-GUID: CZWWHelVXcpOnaut0oBpARrJBXQMomBR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-11_01,2026-02-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0
 malwarescore=0 phishscore=0 suspectscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_053008_752315_5C7AA88A 
X-CRM114-Status: GOOD (  11.25  )
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
index db65c392e618..5bffff1046e2 100644
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
@@ -3869,6 +3869,122 @@ pcie4_phy: phy@1c0e000 {
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
