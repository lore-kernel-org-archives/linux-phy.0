Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7180DCCF9F0
	for <linux-phy@archiver.kernel.org>; Thu, 30 Oct 2025 08:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FkHAJWSS9MM38JKkB8V5VAwxtNkSz1zd6vDI2EjIWXc=; b=ywDzRkbmTOOQ1J
	2OUyLj/stsX7XkABXmrphfEio66Y5nw7Xg6OCT1iDKzh3A7QA8mAk6ZI07xqz2MooQxVhBaepFpiK
	7QkalkIa56ZOIIHTzFSzbJWANAHjWdHTh0NNm7j+UEdIWHrxicV+uqrRSTpskT8vUuQvF5JR/XG+s
	SdvbvuI6Z0CCnrGebpC/1IAMKNezFCjI/obUzyS4UGXYW/vtESVdl36MN23BOJtbPUHDm6Y0J+Uru
	6SJSjMs0sltt3K12UygFROfok/457TFzJW+2ZHiNc41MPShEpiZGDQJ0MqF64H1HUdlUNJkFExfvt
	TYBrNR+ZuJKeKCCHMNug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEOKa-00000003nBI-0qXr
	for linux-phy@archiver.kernel.org;
	Thu, 30 Oct 2025 08:48:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEOKU-00000003n6t-1Bxx
	for linux-phy@lists.infradead.org;
	Thu, 30 Oct 2025 08:48:25 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U29QCY4135490;
	Thu, 30 Oct 2025 08:48:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=P+XjCXKKKLg
	pGomBTUP5F4SXNZ5CN88GBrJ8GXDoVmQ=; b=O8mlLJcBsSJFTARamHDl8iFQlEw
	wzzye1MZgI4yqx7x+UJ1K/P72Hczkl2ypptF7lCesNgbMM9vWgqeM/wmUu6H+cYF
	XC8gKI0JVmLZHqDSmWzDmiFR9iAqnPTJHyk3025kzKxelt/iaHH1bRTp2z8oDf8J
	8aa7T7NFE2y1PFqapJuD/53emAfEEw/z+bWP8VbWv9esd5x59x87Kl2I1AVpG2yJ
	Diq2Wl4mPOx8DuPcp8R8kYaS6kkoKbA+x0F7SfntMXh41zlnh6hOKd+izyRUuJye
	kamhAtMVspsj27O2bCygHMK931/zMttbzwF0cpM0eF90SGKQumBP6qOmahw==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3ff9uyc1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Oct 2025 08:48:10 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 59U8m8Q5003590;
	Thu, 30 Oct 2025 08:48:08 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 4a0qmmf1y5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Oct 2025 08:48:08 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 59U8m8GY003580;
	Thu, 30 Oct 2025 08:48:08 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 59U8m7EA003572
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Oct 2025 08:48:08 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 17B2D746; Thu, 30 Oct 2025 16:48:06 +0800 (CST)
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
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH v2 1/4] arm64: dts: qcom: Add PCIe 5 support for HAMOA-IOT-SOM platform
Date: Thu, 30 Oct 2025 16:48:01 +0800
Message-Id: <20251030084804.1682744-2-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251030084804.1682744-1-ziyue.zhang@oss.qualcomm.com>
References: <20251030084804.1682744-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: _1TxJNh9U8A55kAcw8ed2gIm3QlgVGki
X-Proofpoint-GUID: _1TxJNh9U8A55kAcw8ed2gIm3QlgVGki
X-Authority-Analysis: v=2.4 cv=Cf4FJbrl c=1 sm=1 tr=0 ts=6903264a cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=_k9ig2nQFDp-gxZIyLcA:9 a=nl4s5V0KI7Kw-pW0DWrs:22 a=pHzHmUro8NiASowvMSCR:22
 a=xoEH_sTeL_Rfw54TyV31:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA3MSBTYWx0ZWRfXwoPsw8zOiMwm
 WWKhEssvSRI/aNqtX1hGalsUFLpGYeATbbeZqmWFZEs6fxlqR6V+wAUJF5nqmR/5QqHvHq0nkgM
 u/NRbbkpvpUPMzSzBdZw4KFeNrg2Yhha8zZwDqdks4cLx2KJMaRLtEQgk9PNZuECY31s3poPRoo
 xainvs2+veTKMFHTCVCEOKuGDm/Mre8HATjAo7AKskMrvHLIQqLd8MFIy7vTOW9mdktYxuaQPXA
 RRh5xOTWADFNqZ+unHmRYtREYJ2hrmheIswLxdy5astTqIEam9l+mW1/EaToz2hDCZ91aab3TrA
 xxA8ScW2J4MfJz+i7AOnrImE+XDiqxnzY479sH1LR7sL+zYYm/vuu7HA6u1PJElRbZqAqVzIQhd
 UfjFyXYUMO18HJEP39bK4Ep6DZRg8g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 phishscore=0 malwarescore=0 impostorscore=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510300071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251030_014823_642414_FD536081 
X-CRM114-Status: GOOD (  10.72  )
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

This update enables PCIe5 support by adding necessary sideband signals
(PERST#, WAKE#, CLKREQ#) and required regulators to the PCIe3 controller
and PHY device tree nodes.

These changes ensure correct link initialization and power sequencing for
devices connected via PCIe5.

Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Reviewed-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi | 40 +++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
index 4de7c0abb25a..8ea5d0cebe6e 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
@@ -407,6 +407,23 @@ &pcie4_phy {
 	status = "okay";
 };
 
+&pcie5 {
+	perst-gpios = <&tlmm 149 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 151 GPIO_ACTIVE_LOW>;
+
+	pinctrl-0 = <&pcie5_default>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
+&pcie5_phy {
+	vdda-phy-supply = <&vreg_l3i_0p8>;
+	vdda-pll-supply = <&vreg_l3e_1p2>;
+
+	status = "okay";
+};
+
 &pcie6a {
 	perst-gpios = <&tlmm 152 GPIO_ACTIVE_LOW>;
 	wake-gpios = <&tlmm 154 GPIO_ACTIVE_LOW>;
@@ -477,6 +494,29 @@ wake-n-pins {
 		};
 	};
 
+	pcie5_default: pcie5-default-state {
+		clkreq-n-pins {
+			pins = "gpio150";
+			function = "pcie5_clk";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		perst-n-pins {
+			pins = "gpio149";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-disable;
+		};
+
+		wake-n-pins {
+			pins = "gpio151";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+
 	pcie6a_default: pcie6a-default-state {
 		clkreq-n-pins {
 			pins = "gpio153";
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
