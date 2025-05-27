Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECA1BC5B54C
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 07:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wN5M7wV+2NFPC51qE7Gw+w937Eaz+QAg0u1MZOlv7m0=; b=f3+9/jhxgJPjsr
	ItXEK8gIHTBxDMkUWPeT89PZ1+Mo60M+bsojSU/i+kmYqagAk3jgL8rjVo2rXI5R/+osMkWtSLDtU
	XjSkKZk8zyTKZkiDYO9jIQUyraMKcgyqvVkcthhTQMklTCALhZkGyHASUoloVpsCmVMWg282F6Kv2
	L8KflQiYIDinjcxPlpv0EyJAwjEruRTFgnkqe1F8e8RqGzFqemNNfA660JROei0eCOln8I2UWRy/Y
	VUdzl/a0doBOEs06vPTcBg7y1NJLDTMnIWyLAIYLBX17GrPwUXGgASNgft3TRurvDn0AUYENiqy3+
	qwL7+274g3zrE1pIZb/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJokL-0000000A9l7-31cc;
	Tue, 27 May 2025 07:29:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJocQ-0000000A935-3OB5
	for linux-phy@bombadil.infradead.org;
	Tue, 27 May 2025 07:21:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=DOXfUaLGj/gS+Zr8UFXyHwLt/ZH1hnsvAGyeGBCsfj0=; b=c3hYx1Oh2b5sQHtlehl4NrGWkf
	Ua19AbEVI3/COoBcDvjd+gt5eEJ2BOym/b9IJ15jGq/OVQdGH1OQInfsQIVxeDAWwlKYnppnUpqTs
	X0JHvg9bFdLMP7ckUm5EKyZdIMGsTlWAlaOBuPHlIkJOIl/dfMXShEok+O6m5shQPtz2cr0MB/dgS
	LGhlD8ygjjp2j1gsOPyKIu9VLnPMAijZqgIiTaogpLYoBiIuNFQ0oCrwETqKxmgZVnduBaTXvthW0
	6dduKpmAVLwCxuqTE92hGQRI7N8kp3hrHn+lws14vZV7XbZsWM8nTceAsXJWp7KSMRe15JlQMeBTN
	y/pjOSDQ==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJocL-000000021JZ-2A9J
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 07:21:01 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54R3m3Xi022931;
	Tue, 27 May 2025 07:20:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=DOXfUaLGj/g
	S+Zr8UFXyHwLt/ZH1hnsvAGyeGBCsfj0=; b=Sg/zIrXUO/LZyOPeyyaOtlQe/TS
	iOtPqsfjXxIGSFLsWvgAPvPUZOM933p5fxcvAxvkx2toU8LM0kqvRg7LQBhJC8dx
	BFj5QKYOVAJtVj1qIDm0fBT6WFxx94vdY0KoH8O8tZsxzuUQvdqm8bOhTrKLqha1
	rO12ZN7dvaAuOwJQ7fY8sqG5yxjOdDVMRNO+2+N/LBPX68Brgx2v9NQvzhU6mAD5
	rTD56q6+W5cV7IXvzdeyeshnHkhjHjkpe4/n1fmlh9nJG4uzkYsIjq6HTn8IiwzL
	4SJJ2XM4IJntq41n/Inuv4RsXjpFCtpsBguZllWUYDDdcM6mynV9lzJF/Eg==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u3fq65x1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 May 2025 07:20:44 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 54R7HYCj006548;
	Tue, 27 May 2025 07:20:41 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 46u76kypej-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 May 2025 07:20:41 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 54R7KfF4009573;
	Tue, 27 May 2025 07:20:41 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 54R7KeYA009564
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 May 2025 07:20:41 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 7DBC53504; Tue, 27 May 2025 15:20:39 +0800 (CST)
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: [PATCH v5 4/4] arm64: dts: qcom: qcs615-ride: Enable PCIe interface
Date: Tue, 27 May 2025 15:20:36 +0800
Message-Id: <20250527072036.3599076-5-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250527072036.3599076-1-quic_ziyuzhan@quicinc.com>
References: <20250527072036.3599076-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: OVnjQVHlcmkPB_CervXwcnv5B6Zq7etl
X-Proofpoint-ORIG-GUID: OVnjQVHlcmkPB_CervXwcnv5B6Zq7etl
X-Authority-Analysis: v=2.4 cv=X8FSKHTe c=1 sm=1 tr=0 ts=683567cd cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=3zbVK_edIv7hY8gRkFcA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDA1OCBTYWx0ZWRfX/q7qZyXk1KM8
 169iDeVgVQL3qIuEA0v5xi+ty9cBA4DGzSD84m7aYm4oYgniaxbn8JZ7cERgx1X5PzIMf/wdHKe
 ANLZtOHne9SP31mhMcuPbv9qIO2vkLD4f4ktEVWZ5BNOC6OrjNqKuZBXXoZqYAV+3WvJslneTI4
 8rC82T5gKNa1augjU5+ExUG5EWO43ltUdEWgwTxOp/gPtPtk2ZVG5xZLbRu5XBJu8AdSENGMlvS
 stAcQnZSgGI8mzGA2K4jGdkkFsp5KJ3Zr/aic9voaCB+P7CXxYmcH1BDAfUY+cE8s0Kml/L30iM
 WrhK3f3bgDI4iGfm85b8a5mvtaJdYEHuvHVv+QL8iReVq4ofoZRT4BzDZ+yeQZ1bLPlzYUidhYl
 K3r6I7ZYNOIn13swJhHIbIK2JT3Ngp3keJo4AiU+hEenykEcbMIzdBY+S0Y+VeOdKUnNT9K6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_03,2025-05-26_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 bulkscore=0 mlxlogscore=999
 mlxscore=0 clxscore=1011 priorityscore=1501 spamscore=0 adultscore=0
 malwarescore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505270058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_082058_331876_94F7BDF2 
X-CRM114-Status: UNSURE (   8.58  )
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
Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 42 ++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
index 2b5aa3c66867..c59647e5f2d6 100644
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
@@ -244,6 +261,31 @@ &rpmhcc {
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
