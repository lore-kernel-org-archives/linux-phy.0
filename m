Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F900C83030
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j5G/nuoOO+IjjdNvRugTTF9g4VLUBN/HyrEh+muKDOE=; b=PO5w5P4HHnSJhK
	gDWqqr1CmgyhGxSnCcPTj4yi77sGNl5Bo7a11YRVYXtVYX2x1Tx5tlmLkUfSXipR8CmukV8zpiKU3
	B9oGaIOUmRSH02ttWOzLfGs4urQnHICN/j3F3zQk7KrNGYIR8S8K+yTHHXs/GFzYFx9ae3CVh6U7Q
	hkLsW/DdDUn0Ozqkiohzgpy15tbRXdSayKWEGkr8dRO+37BUmq+iotHBL2pK5UvCMJMOKz0bLfeKu
	pDQncQyAywpfQUVQGhL21yPAM8KOwjyEHkFIWIkqKAMvXfcRDKYeLSzgK9zj0ijhr5jOUIwov+8KX
	CEn1lyd1Bf93pP93J4ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXGjQ-0000000AuyK-3rPc;
	Thu, 03 Jul 2025 09:59:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXGgP-0000000AuQL-1aaB
	for linux-phy@lists.infradead.org;
	Thu, 03 Jul 2025 09:56:46 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5636XxaE022911;
	Thu, 3 Jul 2025 09:56:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=sq85Q/vJxoA
	eidtGD92wyNYWRLccThyg6rGim2z8SQw=; b=m6uaYoDElUbSkLwgqCDbOQ4uH+n
	qyuDKN/mMwOJfFMaHdnyM/z+MnEx+g+AsHVYvtiqT33vsT2FSqYSVkkA93qNNYx9
	ckafopZCtxVXqG7qW8LhAC55kyAocRCrcCTcm9FR1FHvTYAyRkDAs3Z0tOv6qjOc
	YSOgwwYNL7LWyxyjYRpclQ3CiuGjhYO43ERmo8j5lVlRYG3Mc6zCrrGGnYoxx8qp
	T7UD3Ko1naW/hz/aeJ5YmDE8NgeTIRYz7sRKxbS5GputD+pl7hVeZuRdC+ac3TRs
	8aR+WpZ9j+Q2RWDPYE208430I0ThYeq6PhG/yND9JM2DC/PBtjSF4cAP/dw==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47mhxn6kak-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 03 Jul 2025 09:56:37 +0000 (GMT)
Received: from pps.filterd (NALASPPMTA02.qualcomm.com [127.0.0.1])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 5639tBho016579;
	Thu, 3 Jul 2025 09:56:36 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by NALASPPMTA02.qualcomm.com (PPS) with ESMTPS id 47nesbvtkn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 03 Jul 2025 09:56:36 +0000
Received: from NALASPPMTA02.qualcomm.com (NALASPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5639r4Ht013611;
	Thu, 3 Jul 2025 09:56:35 GMT
Received: from hu-devc-lv-u22-a.qualcomm.com (hu-ziyuzhan-lv.qualcomm.com [10.81.25.41])
	by NALASPPMTA02.qualcomm.com (PPS) with ESMTPS id 5639uZQ1018799
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 03 Jul 2025 09:56:35 +0000
Received: by hu-devc-lv-u22-a.qualcomm.com (Postfix, from userid 4438065)
	id 8D43C5AA; Thu,  3 Jul 2025 02:56:35 -0700 (PDT)
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Subject: [PATCH v8 3/3] arm64: dts: qcom: qcs615-ride: Enable PCIe interface
Date: Thu,  3 Jul 2025 02:56:30 -0700
Message-Id: <20250703095630.669044-4-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250703095630.669044-1-ziyue.zhang@oss.qualcomm.com>
References: <20250703095630.669044-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAzMDA4MSBTYWx0ZWRfX9a9IBzlRrgY0
 sFHNek2HyHhivGDERDdrMwO79nwjcmmEevPPSmyxZ6DOc7/pRZZLS+GgBX3xHcRLZPQ4TdayqNn
 vi7IqoBtKkFAIjvL6YaFjJR7SohAnz1q4ac7y/sNUBP53aNuBEPFlLCOY2M1mlb1NRHQN/Mtk85
 rHYIAlfRuI5sQS/ypZhWEHtdrrTC+7Dcd+EaQnvfrY2TLsE/c9g3MeS+0oTna6GyDKhAuXv45hI
 d464RsMsEJEyVTxXkbEamlwkYlkFje/q10g0QKAyOgcPQkW7YIeamE6B5j4vJATl8LvKASpJrzy
 eFObVCr/dyfUc3m4fbcWnqkNDEcCwQelGbyYExIo5etNqdJ5V4Cg3W7THDuAgpvXKb+tXR1kDvC
 ksi8hvMoJCV3YoveFDXbiXU2dM1+kn80KM3ZrKlTQwEI229nYmS0usaiomLisz+qKbGxUkxP
X-Authority-Analysis: v=2.4 cv=EbvIQOmC c=1 sm=1 tr=0 ts=686653d5 cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=3zbVK_edIv7hY8gRkFcA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: EA_R8Qrk8PB_dNvKX-a0pOaE6HKl8kP2
X-Proofpoint-GUID: EA_R8Qrk8PB_dNvKX-a0pOaE6HKl8kP2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-03_03,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 mlxscore=0 priorityscore=1501 mlxlogscore=999 lowpriorityscore=0
 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0 impostorscore=0
 spamscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507030081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250703_025645_535740_F27CB675 
X-CRM114-Status: UNSURE (   9.82  )
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

From: Krishna chaitanya chundru <quic_krichai@quicinc.com>

Add platform configurations in devicetree for PCIe, board related
gpios, PMIC regulators, etc.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 42 ++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
index a6652e4817d1..011f8ae077c2 100644
--- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
@@ -217,6 +217,23 @@ &gcc {
 		 <&sleep_clk>;
 };
 
+&pcie {
+	perst-gpios = <&tlmm 101 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 100 GPIO_ACTIVE_HIGH>;
+
+	pinctrl-0 = <&pcie_default_state>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
+&pcie_phy {
+	vdda-phy-supply = <&vreg_l5a>;
+	vdda-pll-supply = <&vreg_l12a>;
+
+	status = "okay";
+};
+
 &pm8150_gpios {
 	usb2_en: usb2-en-state {
 		pins = "gpio10";
@@ -256,6 +273,31 @@ &rpmhcc {
 	clocks = <&xo_board_clk>;
 };
 
+&tlmm {
+	pcie_default_state: pcie-default-state {
+		clkreq-pins {
+			pins = "gpio90";
+			function = "pcie_clk_req";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		perst-pins {
+			pins = "gpio101";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-down;
+		};
+
+		wake-pins {
+			pins = "gpio100";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+};
+
 &sdhc_1 {
 	pinctrl-0 = <&sdc1_state_on>;
 	pinctrl-1 = <&sdc1_state_off>;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
