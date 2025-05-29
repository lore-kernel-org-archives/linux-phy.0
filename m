Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1484C54FB3
	for <linux-phy@archiver.kernel.org>; Thu, 29 May 2025 03:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eNdsGuaCVu7aUiOfyiTJaQ/3Aeqk6ptGm+jXYg6Z7ag=; b=p+bOVbNwzpFhbt
	mTtdFSMSmHqkGpNDJp1M+fU3yImORemf+WeATjgQNqjMArBbT4tZ28FOmB7yxjCZVzfiYdWEKV5zr
	rQbYMAiUmhKwqS+c0Q3OPvN2Vpcwlf6FpJanjsaAY38rCjxQXze2g+BCy9TejjOOPl3WAa4+T/u+M
	ZDahTkHkpPRa53nJUuIXIBcjYj+wPsiHqf+iv2KBJaCtRv+/ypLdQfANOhs9YbfM0b12VBmKlVOR7
	anCL9cVT/KvI2bXIbz+2nqmboluANOwg5ZCa9Pa8rlCfZYgi+4X/+pBcfsO/BQwoygzxEYMmYlEKg
	za39AXmC4XwWYbFbAcLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKULh-0000000ErNG-1NRO;
	Thu, 29 May 2025 03:54:33 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKULf-0000000ErLt-0W9u
	for linux-phy@lists.infradead.org;
	Thu, 29 May 2025 03:54:32 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54SHTUMb022087;
	Thu, 29 May 2025 03:54:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=/1vS8/JqNxG
	VLp00mgEn6g+HuGaGexP6qrS1Tms27X0=; b=FcW9fnmx9cBl1lv2NVmQ287SrlA
	BfJYjI8oE1QCsM4qeVuWPviU42Vpase5+kH28MX9p6918kOiwE39SmRQJ5kC1ZVI
	C3IRrYHG4mEWFvo9q/3AA7mG2wU3dET5Wa276/hS8t1sHs4LzumAPuBXxr5IDewy
	455aHBd/TmorF2pJ71aXHOFW1ScEuFVOljxM+Wk9cP9JS60U46c4XTyG4fVNvkgP
	CnMcjxLoa47xaNI6SE6D54LlYKiJ4QrpEOxJNwjideHUivajCxr1B/wW0AvIdhrD
	oM3GM9CSfPTapB/xYLeAmPj1aV9lKjgg46GiHks7fH7tSEuejMdqJcP+wmQ==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46x6xc9aa0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 May 2025 03:54:23 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 54T3sKde030087;
	Thu, 29 May 2025 03:54:20 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 46u76mdnmt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 May 2025 03:54:20 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 54T3sKBf030074;
	Thu, 29 May 2025 03:54:20 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 54T3sJHp030070
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 May 2025 03:54:20 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 6BF87315B; Thu, 29 May 2025 11:54:18 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: lpieralisi@kernel.org, kwilczynski@kernel.org,
        manivannan.sadhasivam@linaro.org, robh@kernel.org, bhelgaas@google.com,
        krzk+dt@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_qianyu@quicinc.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: [PATCH v1 3/4] arm64: dts: qcom: sa8775p: remove aux clock from pcie phy
Date: Thu, 29 May 2025 11:54:15 +0800
Message-Id: <20250529035416.4159963-4-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250529035416.4159963-1-quic_ziyuzhan@quicinc.com>
References: <20250529035416.4159963-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI5MDAzMyBTYWx0ZWRfX4MzR2WMF/+i0
 u237biKwuMf/oQXeEKId1B3wHLJIxIrePoT2gwNVE8Pon3oKo0eGEctS41/1L83HzEEsiIxFPqe
 BQz9i5fHV9Vhngu0iQghNrXdKTwjyx0QijU34Ir9b+osO/PX4a7lBDyqUPUl2rWHLQwlXHiUp2D
 GRvA2Pj/PLDFw2Im9VR2gof8GsvHCvoRkj+Jo/+FxL6xKQv0t87O9xDQAgBuQ87NLQBXwbBmidi
 qP5XjEWkZpca6lTZlYLC7Tc+M5s7B56BDbM33273NQ+t+KRIwrTr8/1RDSi/wXH/bW/U4dznsnL
 Oo4JRi5mqRLeil7llzzhwdB4S9ww/00VvtbXTZj5Fvaf1awsmHGWYlXtubjN7oU0QlXhFuS3/L/
 fCUX3eLnQztK4KBrHPotVUhmPZl6BakZOO726FFfc/lSBh007UEcJpSiscasoJYuZiIzgZ9W
X-Proofpoint-GUID: DQTFzGjQEXtkhXT-MOFSpBWcJvSZ9Okn
X-Proofpoint-ORIG-GUID: DQTFzGjQEXtkhXT-MOFSpBWcJvSZ9Okn
X-Authority-Analysis: v=2.4 cv=bupMBFai c=1 sm=1 tr=0 ts=6837da6f cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=9zbhvFfKP0O2o0OFYOYA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-29_01,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 clxscore=1015 spamscore=0
 suspectscore=0 mlxlogscore=999 phishscore=0 mlxscore=0 adultscore=0
 malwarescore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505290033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_205431_176750_8941A1EC 
X-CRM114-Status: UNSURE (   9.00  )
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
