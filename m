Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BBF9EB64DA
	for <linux-phy@archiver.kernel.org>; Wed,  5 Jul 2023 08:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hr0HFQ5A4yrGsTT3QTAajGHu4cHPMUNf9XcThHuVEdg=; b=Gp4hqCGC5JnMcG
	jyafwBYQZM8O8OzyKkSPFt5OWmjy2tOqNb+BLJaO4ooXyWG7RJyMzFrQjF3wRgzG7rY4kHNKr+E1w
	OmxGYBt0x9O0UlVK0f7lbffkaNBvT9d21qMMUqK6jhit0XwOfTmhWmszLmM+/Mw4SEEMx/Q9lUe1T
	AE2H/hCoKjwoWJlB5X5/etDRGdJrjlFDYy7WUqd8hHSuPWMg1BI+12WQr5RrlmVOgiXgNuTbYbiWF
	OK6addXJVPDSCMPGawcbl6F3iVfN6sVm+vaxKCDc4NcpDVfcunXs9zmrPP6g/PLoB3Fu5smLX09CM
	EjxlZJ7tRY3zkRi+l3/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGxhy-00FBFY-38;
	Wed, 05 Jul 2023 08:17:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGxhw-00FBF6-12
	for linux-phy@lists.infradead.org;
	Wed, 05 Jul 2023 08:17:53 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3657MV94009382;
	Wed, 5 Jul 2023 08:17:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=qcppdkim1;
 bh=QB86YWIQlVgdpx4m7e0OY/4arBVOqsGJgjDbhwlJvjQ=;
 b=oDJuhlnq+LmzgVnW97R2ISRdxPXi1inrRKWZLos6Tf0sPxO5J3fSvChuZYROufGD1zrF
 JBy37rRlKwVCr1eRtlTEQcSOUdyAvoUrxOiNRZsi2GPQWgQOyykFsyc0TaHoStOnVRyB
 RXvqvK91w3OoNe+umhX0AkKdRJDKzxmNtYw27tIbxY8iZoqropkjOrqRU2fMYvQzxMDe
 s6//iaEzJ1xOs9YN3Knrkqv9sOBsK4YhmnfFJN2jzV65YOlz3QVJ0oGqi9b3K94pC89M
 h/+c556WSZbeBpG0YZgaNSDdpm5F4I1loHFcyu1RZ4lsKzYM8UP1h/FbOBEVkh+N2bmX 8Q== 
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3rn2cp88v2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 05 Jul 2023 08:17:45 +0000
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 3658Hgab022081;
	Wed, 5 Jul 2023 08:17:42 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 3rjd7krn9p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Wed, 05 Jul 2023 08:17:42 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 3658Hg37022074;
	Wed, 5 Jul 2023 08:17:42 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-msarkar-hyd.qualcomm.com [10.213.111.194])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 3658Hg43022073;
	Wed, 05 Jul 2023 08:17:42 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3891782)
	id 4C9C8244; Wed,  5 Jul 2023 13:47:41 +0530 (+0530)
From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
        quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
        Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
Subject: [PATCH v1 6/6] arm64: dts: qcom: sa8775p-ride: enable pcie nodes
Date: Wed,  5 Jul 2023 13:47:11 +0530
Message-Id: <1688545032-17748-7-git-send-email-quic_msarkar@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1688545032-17748-1-git-send-email-quic_msarkar@quicinc.com>
References: <1688545032-17748-1-git-send-email-quic_msarkar@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 1PhqsQFXzCVK_Oh9m-WkliqmE8MnOJ7N
X-Proofpoint-ORIG-GUID: 1PhqsQFXzCVK_Oh9m-WkliqmE8MnOJ7N
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-04_16,2023-07-04_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 priorityscore=1501 spamscore=0 clxscore=1015 bulkscore=0 mlxlogscore=786
 lowpriorityscore=0 suspectscore=0 impostorscore=0 mlxscore=0 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2307050075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_011752_365369_30E058B8 
X-CRM114-Status: GOOD (  12.24  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Enable pcie0, pcie1 nodes and their respective phy's.

Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
---
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 68 +++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
index ab767cfa51ff..4a39294259fe 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
@@ -443,6 +443,74 @@ qup_uart17_rx: qup0-uart17-rx-pins {
 			bias-pull-down;
 		};
 	};
+
+	pcie0_default_state: pcie0-default {
+		perst {
+			pins = "gpio2";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-down;
+		};
+
+		clkreq {
+			pins = "gpio1";
+			function = "pcie0_clkreq";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		wake {
+			pins = "gpio0";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+
+	pcie1_default_state: pcie1-default {
+		perst {
+			pins = "gpio4";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-down;
+		};
+
+		clkreq {
+			pins = "gpio3";
+			function = "pcie1_clkreq";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		wake {
+			pins = "gpio5";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+};
+
+&pcie0{
+	status = "okay";
+};
+
+&pcie1{
+	status = "okay";
+};
+
+&pcie0_phy{
+	vdda-phy-supply = <&vreg_l5a>;
+	vdda-pll-supply = <&vreg_l1c>;
+
+	status = "okay";
+};
+
+&pcie1_phy{
+	vdda-phy-supply = <&vreg_l5a>;
+	vdda-pll-supply = <&vreg_l1c>;
+
+	status = "okay";
 };
 
 &uart10 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
