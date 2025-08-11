Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF4D5CA0EC0
	for <linux-phy@archiver.kernel.org>; Mon, 11 Aug 2025 07:12:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yqn8uK4uKJHewVy+KHbUQqAdZ8S6JSMehXhQ17pjf8Y=; b=s9ZiLhx7ERtIlg
	B5JGMSGt2r+T/dNc5n88CuxozoKcpCVsVCVZrIAI4nV6H8CREI8u1ypv3N0K4zaRTh8okDBEyNkbW
	UCjWqIXuxphEgDokz3ar2/4xNK/h/JMAKZcw65wnl+PKCAXmztvhq+aCn621ZNL9EIdURb/ZZC6fi
	Y8vrBKxeMD9fo6FTGEf203IS4/B5uuxCxB5nUxro485aBv0oM4nM9Hfub+IOv5VopyPy+C8M9n7TG
	LJmXRDHBSnTMPNMcn0hAiAURyFS+0kVEgMkFpuWzCocIyRStutwKUXixLILnLZLssD9R9JqCScKnP
	XKv1kS72e3knBy7P1HIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulMhq-00000006gfo-2BqV;
	Mon, 11 Aug 2025 07:12:30 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulMh9-00000006gXR-2Xsq
	for linux-phy@lists.infradead.org;
	Mon, 11 Aug 2025 07:11:49 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57ANSLPQ031212;
	Mon, 11 Aug 2025 07:11:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=P7cycLzFxBb
	cEOFGQtoTvLrSRhApMC/9IHl57YKVPMU=; b=cUhlBX6F0cXYMS/WtDbaaLb2cwX
	ti1BCVoJ0MWaT1THSVE9iPK2bO+q6rkFPqBxw6KV6NXadpEj2jaihPAW2DXQa3F3
	MeY1fmk6+SCsT68u+51kTM38hZX9K7Tl2wvKr9xEHZmDeQjuTXEn3dUFnxckBMYF
	mkYOd2tKTPdA3On59DHNNZUcJN2SV3Hvt+/VzezVIHUbLa+S0Qs8N4pXFZ01Nl3I
	xF0P1nrRhyWZCc1Bpg0RXO8R85hJHLHktjG4L1xkk7hufFmBKvN0HnoWFSlwu9fP
	cXfJUhvyFsoVs5tN8mAkJwXSr78PrczvRyhQOHQMIWBwMsrFE7KGbMzahYQ==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dupmkjca-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 11 Aug 2025 07:11:40 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 57B7Bbf9031611;
	Mon, 11 Aug 2025 07:11:37 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 48dydkwb8s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 11 Aug 2025 07:11:37 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 57B7BZpY031560;
	Mon, 11 Aug 2025 07:11:37 GMT
Received: from ziyuzhan-gv.ap.qualcomm.com (ziyuzhan-gv.qualcomm.com [10.64.66.102])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 57B7BaMC031599
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 11 Aug 2025 07:11:37 +0000
Received: by ziyuzhan-gv.ap.qualcomm.com (Postfix, from userid 4438065)
	id B1E9BA60; Mon, 11 Aug 2025 15:11:33 +0800 (CST)
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v10 5/5] arm64: dts: qcom: qcs8300-ride: enable pcie1 interface
Date: Mon, 11 Aug 2025 15:11:31 +0800
Message-ID: <20250811071131.982983-6-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250811071131.982983-1-ziyue.zhang@oss.qualcomm.com>
References: <20250811071131.982983-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=bY5rUPPB c=1 sm=1 tr=0 ts=689997ac cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=0LYZJ8Fh9g_wO_RM1qMA:9
X-Proofpoint-GUID: _5_jJdDZ7smiwPnrDPiBPvK9rZ8gaDkW
X-Proofpoint-ORIG-GUID: _5_jJdDZ7smiwPnrDPiBPvK9rZ8gaDkW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAwMCBTYWx0ZWRfX8vBAGfs+xDHJ
 hQjxYztbmtUllShkDc4IZAygwPS0TP35ak33Oe8NINse02yV1cZe/7nURbcN5Ym/4+CR9+/4PJc
 B4GY0fBHvu70KxeXXzQeRNAUdYqd8YsLDALdRkI+YgTHoisQtxCgVKppbJa0QE68KEtT08n+113
 /v88lF7qD5lZcP9f7rgzfx7oghLqdt58xkYS6m2Jx7zCB9kMewzmtkd0LNm6620PsVWo4q+av4g
 EYvmmEhR7FN0Avmpo3FDxhoq2Sb08KtCDfYuXZvRFO8lklAWwokHjRDxu415U5u8bW3SPuXLtZN
 1dFfU8y291b42hmGQzkaKYGc2mSbc+plPYV/Pgp6FF4UqdyS0CxO5HEgLhd/DjIQjCmM+qB/ci1
 B0Ok+kxg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_01,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 spamscore=0 clxscore=1015 phishscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_001147_798969_A763E7B3 
X-CRM114-Status: UNSURE (   9.66  )
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
Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 40 +++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
index e8e382db2b99..bec2905c5d8f 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
@@ -325,6 +325,23 @@ &pcie0_phy {
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
@@ -388,6 +405,29 @@ perst-pins {
 			bias-pull-down;
 		};
 	};
+
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
 };
 
 &uart7 {
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
