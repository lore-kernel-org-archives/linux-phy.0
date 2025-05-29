Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B0DBC5B554
	for <linux-phy@archiver.kernel.org>; Thu, 29 May 2025 03:57:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YepCZs9tGWSy8tF2wWulqRdz0eA5sw7pFU2QfGWcqIE=; b=CsORX/Nx2gQQyk
	wd/mRmZ/m79YyWwTObi2C9JURMpCue1CF2PycB8+qXZQFudp8H10dM00rU5iZpULv2S7ychU68yFz
	MdrOKqw9ginh+zUmV4rcmjOrstM3032XWuNwETqH+mj1VMkhrCbKqKureFnB+wP1Ka2a+FHUPNqOJ
	0yCZKvNpvX6FpJ6clsPmL/1nzN2Anxss8/WICLaO+UNYUUfDbS/wbrel2eViRDi4gvazl3g5cxdst
	2YWHA7FZ5482vkgqVsIpl8OgpBOe8ayvXrorSLS8zTuj29ek4XDPsGjwBmV0g0huLeXpgM/Nqgqod
	CvNAC7t3B4iHs2XAKb0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKUOE-0000000Eroi-3aar;
	Thu, 29 May 2025 03:57:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKUNu-0000000ErjP-2bEE
	for linux-phy@lists.infradead.org;
	Thu, 29 May 2025 03:56:51 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54SMbGeM019422;
	Thu, 29 May 2025 03:56:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=xvoCyDbGw34
	B660gAA0SqF82bVjpavSVxQxThIP+JHE=; b=p10y3Y2emgc0buL0azjUECyRN3D
	VOWTejxta0Oa9X+DLcQN8wR/eAQ+z5rhMFmiY1+CekFEBTm5sGtI8KsPPx7Ksdeq
	ccIft1ypv7KalzmvDQC7Weq5NDLnQaLOgHGUVpBXwNr+h19ge83UCYervQDjOqb7
	p4UacJVHN5rDnzxUPAPuovLvK9nSVUnXqOrl/AT/4g2bJ0a9zQ99MvYzHn8dT9yZ
	EXsD0n1RPp+65AYW/C3SOQCPoPVTgFGh267mmdj+/kRHbEZKs0oL3ok7lJeyOjNN
	7EwfPx7Crurj26I6pJE2y0cUC30ohlwcs8dcg7tx9sk8X7+b1YtfH6w+bxw==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46w992pfbw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 May 2025 03:56:43 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 54T3ufv9013295;
	Thu, 29 May 2025 03:56:41 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 46u76mdpec-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 May 2025 03:56:41 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 54T3uelK013290;
	Thu, 29 May 2025 03:56:40 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 54T3uepm013284
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 May 2025 03:56:40 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 930A43163; Thu, 29 May 2025 11:56:37 +0800 (CST)
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
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v6 6/6] arm64: dts: qcom: qcs8300-ride: enable pcie1 interface
Date: Thu, 29 May 2025 11:56:35 +0800
Message-Id: <20250529035635.4162149-7-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250529035635.4162149-1-quic_ziyuzhan@quicinc.com>
References: <20250529035635.4162149-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI5MDAzNCBTYWx0ZWRfX52pXkFFxo5eT
 MVYgBa4k/CJeS+QCCvNnGl4sJlwpbenxXth6muZJHdLQWUiMcHPWddB21gluTBSPx/ZWWjQmKRm
 b3PNrYuSYSltP3T64AQbarI/IwGDICfFEhO+AK4lXXHQFHba36EsIFDkurXgF8OD4TJN6ytdd1f
 GuZJfaD5/uYUoZL4rU7xt9TPalMXtlHV7TREx7z2flAXoPxp2Tto4QICMECZ9+VGFLXO6vNLcdF
 duTwh7xG7vGoMAzJPK7GWxKHw4dl7nRL7EIq2rruL7O2IJx2ygzEHAyf+BYJkG1c5LMs1UcWqF3
 lu0SZzesBLx1ByZtBRg/1gohw+7tMIwfkwaxVwH0pQqpDwJjm9j9jzFAReE15FoLbsLhL35aay7
 hqV9eXEQ57UYNXkUFUdxOF/3WbLN3Q7sOs9PmI7ppJoFQjMVFhnawbaIRH8WJqV2CdPlK1Jb
X-Authority-Analysis: v=2.4 cv=Fes3xI+6 c=1 sm=1 tr=0 ts=6837dafb cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=7eNM2EdRHZFxniqUpJIA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: oyjdhu9PqR5VDXIRWMb4knIA9CUhGiFr
X-Proofpoint-ORIG-GUID: oyjdhu9PqR5VDXIRWMb4knIA9CUhGiFr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-29_01,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 impostorscore=0 phishscore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 mlxlogscore=999 spamscore=0
 adultscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505290034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_205650_675028_5F076ED7 
X-CRM114-Status: UNSURE (   8.61  )
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

Add configurations in devicetree for PCIe1, board related gpios,
PMIC regulators, etc for qcs8300-ride platform.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 40 +++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
index 6384d1873415..a1279ecfce85 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
@@ -321,6 +321,23 @@ &pcie0_phy {
 	status = "okay";
 };
 
+&pcie1 {
+	perst-gpios = <&tlmm 23 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 21 GPIO_ACTIVE_HIGH>;
+
+	pinctrl-0 = <&pcie1_default_state>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
+&pcie1_phy {
+	vdda-phy-supply = <&vreg_l6a>;
+	vdda-pll-supply = <&vreg_l5a>;
+
+	status = "okay";
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
@@ -369,6 +386,29 @@ perst-pins {
 		};
 	};
 
+   pcie1_default_state: pcie1-default-state {
+		wake-pins {
+			pins = "gpio21";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		clkreq-pins {
+			pins = "gpio22";
+			function = "pcie1_clkreq";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		perst-pins {
+			pins = "gpio23";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-down;
+		};
+	};
+
 	ethernet0_default: ethernet0-default-state {
 		ethernet0_mdc: ethernet0-mdc-pins {
 			pins = "gpio5";
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
