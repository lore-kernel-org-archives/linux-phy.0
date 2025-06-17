Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F074C71159
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 02:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eNdsGuaCVu7aUiOfyiTJaQ/3Aeqk6ptGm+jXYg6Z7ag=; b=MNwJ4iAX8bVkWN
	rD+uLNzCxamOZZ8AImG/GtRlDwl/560G5BiQxryi6QC7jXalvZ4MRrRS92hinkacbSXYsI7bLIh4e
	FN4J0soYBz0ptbMjWjSwLHUkN/9sNnimgSORF3k4cDwzqT1Ww1Grtfh3XPj4q5imfcLUbKLMrpmLR
	YOuJAdD8/ZkpP/ytk/d+tCwFYL8UxqJ2ylOyi4Pj7ydgkIli1dT8Fdk4I0LsCHRLEsnaR4Vt6VRVD
	L3wcX9DBBhz+yKx6ZtA66e6y4xkmCBI+aAnFxktjruYQVRMoAq/ltfSwHQV/1tWprz+QqwZ4jDmUV
	IZIjQkeeujUIOPUKiIzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRLuV-000000060nZ-3bS4;
	Tue, 17 Jun 2025 02:18:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRLsN-000000060SA-1rGR
	for linux-phy@lists.infradead.org;
	Tue, 17 Jun 2025 02:16:40 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55GGsfKM003266;
	Tue, 17 Jun 2025 02:16:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=/1vS8/JqNxG
	VLp00mgEn6g+HuGaGexP6qrS1Tms27X0=; b=Lpqr3VgG9WHkrC+jYNcMaeES6aY
	qcevs4PiKL6sgwa3Vjf4YyDPXneJTMiqXwh0OwAUka+1PFCGrxwjWJU2uiyKkSD2
	L8iy8qZzX+6oOtBZOMV44q7cxNtdSDqG5O//N1J0oiCEDg0gt8Zff11F6mDL+vT5
	QzJ3F68p6VPp2BK41qO8fUCBq2nTjf0NHhBFFPun6JHhBoy9oA2gOYINeAfigC7S
	lu1qb1dBH4jh59ylk8K84uBUm6DRTaVkavb/zlnJc5uT+YZHo4L1PJ2RNuWGWDes
	9T30kVSqfPqnF5S2W7wF0XQzyWQbT6I574u9ujr8oL47ja/mk4lfG/iNwcw==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 479qp5n2y1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 17 Jun 2025 02:16:31 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 55H2GT9Q014431;
	Tue, 17 Jun 2025 02:16:29 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 479jt4gb0p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 17 Jun 2025 02:16:29 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 55H2GSh2014405;
	Tue, 17 Jun 2025 02:16:29 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 55H2GS0k014400
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 17 Jun 2025 02:16:29 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id D2D913659; Tue, 17 Jun 2025 10:16:26 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: [PATCH v2 3/4] arm64: dts: qcom: sa8775p: remove aux clock from pcie phy
Date: Tue, 17 Jun 2025 10:16:16 +0800
Message-Id: <20250617021617.2793902-4-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250617021617.2793902-1-quic_ziyuzhan@quicinc.com>
References: <20250617021617.2793902-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: epbQ4azd4ekgf-_c-Dn9gB5zmU_rkyHg
X-Proofpoint-ORIG-GUID: epbQ4azd4ekgf-_c-Dn9gB5zmU_rkyHg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE3MDAxOSBTYWx0ZWRfX8By/HVTnSWgf
 oJDgKLbBltRFfiqTclsirebKo5x8OmDOHxLzrNPHtkcIU4P7XiZRoyVlbI/z0uLbyxASmASucT6
 o5DWZGajdOKwxxuSAinOgJngv0RRgfnUxG7Gadrgj89JdboUPl3IWrYQQ/5J4X7gZe8Wo6lmGjj
 HeUM4PTxl4soP68wtcYjvmCUz4MOmltL0H0TjApu6ISf8HYrWqXmpOitROsBLviYo7q3NhJxDNY
 eIITWD1o1qtJZQEsH47XVJLp1zwBfLxu9B1LLlfYOY1dYsz6t/ilBxVsabTX/v8CvwGL5vzFxM9
 cx+490L1v+MU/eWkz7JX6E4eJnz1hpfjkrF6gGs8hTudgyZbyFViYaCrzHyRyy6im8ljxrWOAxA
 1mXpm6iI1QRg5j1B8cb4G8AiIfnEt+MDwrB95+lJWVWSRstnharm/r22sASuxxMG7e4+Djv0
X-Authority-Analysis: v=2.4 cv=fMc53Yae c=1 sm=1 tr=0 ts=6850cfff cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=9zbhvFfKP0O2o0OFYOYA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-17_01,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 bulkscore=0 clxscore=1015 malwarescore=0
 mlxlogscore=999 spamscore=0 lowpriorityscore=0 impostorscore=0 mlxscore=0
 priorityscore=1501 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506170019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_191639_489206_BC443675 
X-CRM114-Status: UNSURE (   9.88  )
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

gcc_aux_clk is used in PCIe RC and it is not required in pcie phy, in
pcie phy it should be gcc_phy_aux_clk, so remove gcc_aux_clk and
replace it with gcc_phy_aux_clk.

Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 28 +++++++++++++++------------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 45f536633f64..d7248014368b 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -7224,16 +7224,18 @@ pcie0_phy: phy@1c04000 {
 		compatible = "qcom,sa8775p-qmp-gen4x2-pcie-phy";
 		reg = <0x0 0x1c04000 0x0 0x2000>;
 
-		clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+		clocks = <&gcc GCC_PCIE_0_PHY_AUX_CLK>,
 			 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
 			 <&gcc GCC_PCIE_CLKREF_EN>,
 			 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>,
 			 <&gcc GCC_PCIE_0_PIPE_CLK>,
-			 <&gcc GCC_PCIE_0_PIPEDIV2_CLK>,
-			 <&gcc GCC_PCIE_0_PHY_AUX_CLK>;
-
-		clock-names = "aux", "cfg_ahb", "ref", "rchng", "pipe",
-			      "pipediv2", "phy_aux";
+			 <&gcc GCC_PCIE_0_PIPEDIV2_CLK>;
+		clock-names = "aux",
+			      "cfg_ahb",
+			      "ref",
+			      "rchng",
+			      "pipe",
+			      "pipediv2";
 
 		assigned-clocks = <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>;
 		assigned-clock-rates = <100000000>;
@@ -7382,16 +7384,18 @@ pcie1_phy: phy@1c14000 {
 		compatible = "qcom,sa8775p-qmp-gen4x4-pcie-phy";
 		reg = <0x0 0x1c14000 0x0 0x4000>;
 
-		clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
+		clocks = <&gcc GCC_PCIE_1_PHY_AUX_CLK>,
 			 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
 			 <&gcc GCC_PCIE_CLKREF_EN>,
 			 <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>,
 			 <&gcc GCC_PCIE_1_PIPE_CLK>,
-			 <&gcc GCC_PCIE_1_PIPEDIV2_CLK>,
-			 <&gcc GCC_PCIE_1_PHY_AUX_CLK>;
-
-		clock-names = "aux", "cfg_ahb", "ref", "rchng", "pipe",
-			      "pipediv2", "phy_aux";
+			 <&gcc GCC_PCIE_1_PIPEDIV2_CLK>;
+		clock-names = "aux",
+			      "cfg_ahb",
+			      "ref",
+			      "rchng",
+			      "pipe",
+			      "pipediv2";
 
 		assigned-clocks = <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>;
 		assigned-clock-rates = <100000000>;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
