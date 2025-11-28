Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC871D116E2
	for <linux-phy@archiver.kernel.org>; Fri, 28 Nov 2025 10:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JvjpAxE6f1567pEqlS99UJixAMA5rnh++6odc744u2E=; b=3rdDSG9SO6GOSr
	3e/5BX/sFpAdTqEzWY604/K/BwoZBbuTnSrWmReu38fuRo0QWefDLkNd8vyLu0TUYjONL0HzDIE+K
	eVnOkM2CyL2qvwZCv7LU6aQyLJS6OYmoR+F83asy/1w92ME52S1vKAwsT8brVL1XELnOADRfyUOaL
	YJhvSw4Q4aE/t2v1w60pjv2q9AF4P6SJrNb2itw/c+khjpfFfI7PhLK8+G8mWINLoX4cemfV1yzjT
	5ygMyNvrjCrtEmLu8XNQQ+an4rASRJsak3cnaM79REMByQ1Xp9x99mFTHH2rqViL/EWU1atLGCHHS
	x94osr5PfBXKdaGui4hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOw2w-00000000JtM-2nPO;
	Fri, 28 Nov 2025 10:49:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOw2t-00000000Jq9-3yMi
	for linux-phy@lists.infradead.org;
	Fri, 28 Nov 2025 10:49:49 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AS8OMwC3967410;
	Fri, 28 Nov 2025 10:49:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=k2PC5AvZhSg
	2MrP4IojbU0FPX1YcPczi++A/JuFqnqA=; b=QIDcSfrD3Ku4u/O0o+9ds/oLS/o
	+0KAsdfFBhj5aoNBLI4BFZs0BA66zZ3C0vPu0chUvVa52w8Pdl2fQJ4Gk8MZ0cKX
	D284EIaXfb/QZh8YVtRRPYFWnQ54bqGSyRwxZYLZjXovzIR1jB7p2bkYYWIVqMu6
	S5ExO8CzzTxVqihYthb55Fxr/BGVq6LbMYa7hZB2QX3FlXStsTYKwvW2VrfiufQi
	Xc4fIjrrk0qpCVlGjuZAfikg33u+HlNEkgbaPqdJek72ybOxHTNb9/++2iF9133m
	5LXte5Pp/19+ETavX5yy+X/rOSUum+6Ibw+8WHugNuqBQeQbtVuHrcwNEfA==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4apkv5k96w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Nov 2025 10:49:38 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 5ASAnZEO000915;
	Fri, 28 Nov 2025 10:49:36 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 4ak68mvqhy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Nov 2025 10:49:36 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5ASAnZ2i000909;
	Fri, 28 Nov 2025 10:49:35 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 5ASAnYaV000895
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Nov 2025 10:49:35 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 30BBDB7E; Fri, 28 Nov 2025 18:49:32 +0800 (CST)
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v15 5/6] arm64: dts: qcom: qcs8300-ride: enable pcie1 interface
Date: Fri, 28 Nov 2025 18:49:27 +0800
Message-Id: <20251128104928.4070050-6-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251128104928.4070050-1-ziyue.zhang@oss.qualcomm.com>
References: <20251128104928.4070050-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: mXAlOzcgM5OZyreaAeqUXAK0XwH3LhJ3
X-Authority-Analysis: v=2.4 cv=O8k0fR9W c=1 sm=1 tr=0 ts=69297e42 cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=CCkWi1j4WBDgQDAq5WIA:9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI4MDA3OCBTYWx0ZWRfX3Yx67yR0lSbR
 WDttdCDyr++aoVM1t2otGQqbE2aOAWYMCwc/BRwTu3gxBWW+WeQ8ON+M3/XBnvYa2ean+hVhKRz
 udoWnbkQmsfsjR22/IqdeygY8s/9vFboSSm6W3DSYib1TQEUUCTaM+ctvEXsPZxA0mPIp8xbAFn
 oNcaWsG1AYr+oKhXjxKE0J3Qy/2lN1Q6fYe1rO5P57wcgweM4n8QGUuGnDWx6MUJRqFtY4OxyPG
 Bck/QN8wAZtqjAfcDNhQfY0asNLcUJ7PNR2S7oh+EN+DWbGvGjBR/mS8q2/qx4eL5B3M6ASieNS
 IDHmLmqK1G9ba9sqz/NJL8ukCC+0VEHTVGeZGt5dna9GbV/KVfqnnCOr2C1ARTAum/QmS5t9umy
 Q5ZRMadHb4oTvM4NN4V1+bbpAVj/WQ==
X-Proofpoint-GUID: mXAlOzcgM5OZyreaAeqUXAK0XwH3LhJ3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_03,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 adultscore=0 clxscore=1015 impostorscore=0
 spamscore=0 bulkscore=0 priorityscore=1501 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511280078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_024948_121959_47B17610 
X-CRM114-Status: UNSURE (   8.34  )
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
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 42 +++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
index 7ab01dc3bbc9..68691f7b5f94 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
@@ -336,6 +336,25 @@ &pcie0_phy {
 	status = "okay";
 };
 
+&pcie1 {
+	pinctrl-0 = <&pcie1_default_state>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
+&pcieport1 {
+	reset-gpios = <&tlmm 23 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 21 GPIO_ACTIVE_HIGH>;
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
@@ -419,6 +438,29 @@ perst-pins {
 			bias-pull-down;
 		};
 	};
+
+	pcie1_default_state: pcie1-default-state {
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
 };
 
 &uart7 {
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
