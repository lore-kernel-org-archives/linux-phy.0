Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7CF2C87FC5
	for <linux-phy@archiver.kernel.org>; Fri, 18 Jul 2025 08:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RNxyT50YGuxNjByOGgwM4TNUZE6Y5a84fvj/4PDOKF8=; b=dfoDjB/0Hcxvyj
	h4zSsTMH2Z58PWsXTdiWIj/Jud8t0AoyMM9MlOKR7CuNnH/H8BIeH331WWoBdXfvA5t6TMDzA+qtk
	7WLzq6xDzLiUaPSl1wxG+0Cmls3pXbg37ir3QB507F6CnC2FJOgJQcmyRcLTsnTPGI2U1nKSK/hiJ
	6wJmH0KSdrbGqyInQw1A2/DGfrydvzFudogdcw0dnBAK/6uCbb5T3yD2ukCYOFbx8ViWTY3tRJjpr
	yQYhf/dtuClxuwvBGcHczZO6RkKRm8yzT7pFxQm6kcFJatfn7NeEcndNngIhofB/B3FOm7XRp58Kd
	m01ebIvF9RW2VaHjdozw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucgT3-0000000C2B5-1pt1;
	Fri, 18 Jul 2025 08:29:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucgHe-0000000C0Ch-1uCQ
	for linux-phy@lists.infradead.org;
	Fri, 18 Jul 2025 08:17:35 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HN4O4M021705;
	Fri, 18 Jul 2025 08:17:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ajwnk/jiqqe
	0d2HgETAKxMHqULPXzx1StKsHyqZZyJE=; b=Yt31NDXpkFKFOb2pbQKENZrKuAF
	tmS/FfVFKByGjXIn7LaBl0YHEprC21wy4bYdfL/cPdnkD3UDYfOMpWzEpougSFlq
	iy3odjVlf/+rSBmGqQbiVMp0t/mimkRdBMOLTN4jii4XFz459iIrepG86wMwdSt0
	hTDKMVeOsrLNfnMAYov20NUzQTcygbqbs/+6u7Kn8YxyrcUotiMjUabMyRdDIIsQ
	BIfQ8Zn+cMejtLVuaHrmrW0kfB/gsjWyRlhmzMsdI4Mugla81GY74ZmLwiRlxCsB
	2/93HAXvaXS/NvFZzmdoORWt4NQwpyxcI8+g0iVOkb0QQ7MWBof0FgDO6+A==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufu8jhv1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 18 Jul 2025 08:17:25 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 56I8HMdI009041;
	Fri, 18 Jul 2025 08:17:22 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 47ugsn1e3k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 18 Jul 2025 08:17:22 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 56I8HL8g009024;
	Fri, 18 Jul 2025 08:17:21 GMT
Received: from cse-cd01-lnx.ap.qualcomm.com (cse-cd01-lnx.qualcomm.com [10.64.75.209])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 56I8HLsD009018
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 18 Jul 2025 08:17:21 +0000
Received: by cse-cd01-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id C5A2620C43; Fri, 18 Jul 2025 16:17:19 +0800 (CST)
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
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
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Subject: [PATCH v5 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings
Date: Fri, 18 Jul 2025 16:17:15 +0800
Message-Id: <20250718081718.390790-2-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250718081718.390790-1-ziyue.zhang@oss.qualcomm.com>
References: <20250718081718.390790-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDA2NCBTYWx0ZWRfX91U38oRrz12g
 dk8yZ8rwxV4J12hFQeux0iVOfQ9dTW6dw8OiWGOL93c6NAuoPqF3+ZMLKhXGy9dbXu29EeZYzLW
 hi9j4CilqiZ4U/AIJOWrRZhdkWIQ9i3SQ3SijLMCBNb23veR2e9+8QfBwxTByG2hspL5ujNo/rS
 zlVVA+tlS4FDgbRPXOrwGxWus/K9BknZpXPlu1qIufALF0XCwMOCB/2cWa0RlB6fS4dQQMxFBjQ
 f8e/ln6ZlJnebWoyhf55qXWNR1Va/UjWwgVEfCJIxtlkgFwVSBgsbH0gEiQ/fFUZlQOA1tOmrRF
 cviP+sTtlOO2vt5KHxG9x6B6VDCKQheJsYMe8TLC18b3K5pk7/1NHn6dfWnPSlvYOBzfCY8kRYj
 Zmay/LNTaKAW/of/K/U90Y3gAA1JXbABFEKONpUoIVRIgzdRH7nbGr7kZVZ0KfGUaaP2s9R5
X-Proofpoint-ORIG-GUID: CjqxTTwPgpL03U75Ef2-ys0Ftsh_WU5g
X-Proofpoint-GUID: CjqxTTwPgpL03U75Ef2-ys0Ftsh_WU5g
X-Authority-Analysis: v=2.4 cv=f59IBPyM c=1 sm=1 tr=0 ts=687a0315 cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=tAWiX01tdBucjzfsbJgA:9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_01,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 spamscore=0 mlxscore=0
 bulkscore=0 suspectscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=981 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507180064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_011734_631288_AA989B10 
X-CRM114-Status: GOOD (  11.40  )
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

The gcc_aux_clk is required by the PCIe controller but not by the PCIe
PHY. In PCIe PHY, the source of aux_clk used in low-power mode should
be gcc_phy_aux_clk. Hence, remove gcc_aux_clk and replace it with
gcc_phy_aux_clk.

Removed the phy_aux clock from the PCIe PHY binding as it is no longer
used by any instance.

Fixes: fd2d4e4c1986 ("dt-bindings: phy: qcom,qmp: Add sa8775p QMP PCIe PHY")
Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 2c6c9296e4c0..17fd6547d3b4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -176,6 +176,8 @@ allOf:
           contains:
             enum:
               - qcom,qcs615-qmp-gen3x1-pcie-phy
+              - qcom,sa8775p-qmp-gen4x2-pcie-phy
+              - qcom,sa8775p-qmp-gen4x4-pcie-phy
               - qcom,sc8280xp-qmp-gen3x1-pcie-phy
               - qcom,sc8280xp-qmp-gen3x2-pcie-phy
               - qcom,sc8280xp-qmp-gen3x4-pcie-phy
@@ -197,8 +199,6 @@ allOf:
           contains:
             enum:
               - qcom,qcs8300-qmp-gen4x2-pcie-phy
-              - qcom,sa8775p-qmp-gen4x2-pcie-phy
-              - qcom,sa8775p-qmp-gen4x4-pcie-phy
     then:
       properties:
         clocks:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
