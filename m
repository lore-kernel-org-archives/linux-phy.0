Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DD8BC7EE32
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 10:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lzbSQCz5d3wNM4qtBN8tPxjMkNaIaV7S/OcSn/v3FxA=; b=LZldygN9F1h3qZ
	h7CKMfGy9zG5dazC9x78LCMe15Swzg4NUQJvtfSWNh2jQqfM/h+z5awMOGRrzqdp8QfsAlc378srE
	QZNnT8aXDVakiRZFIt2hOlzE8X50tOaMRXq6FalgVHllDaS+yjPaU1Ftendv73nuxxys5X3stYd4p
	Zr8TCV5ypDLq3iVzU34T/YUxizXfAW8Uxg8L+vDQFUbbMylBWEP8u0vAnCB5iRJiuzNQnBigaAcix
	LGCN8m/wdf0vHubERrf7QE/tay3O/2i0hDAbwA0oC+77ABZzEAml/UhW1jP1L7djqug0QHWlU0CYG
	pOVYh5LqAIVYZNRhN1+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUNl3-00000008NM5-3bjK;
	Wed, 25 Jun 2025 10:53:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUMOH-000000087l5-1AV9
	for linux-phy@bombadil.infradead.org;
	Wed, 25 Jun 2025 09:26:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=tcdcCjhN1kQqkrSRaE028Kk2TL8h/mHB4la3MB9/22o=; b=OwB2CfHFyD6oR+gOUgkpwAZSce
	rVXj1p0kGST9ZLwBtX3qmjcqGuL5EyWirPxX1Mf9LWfskoE3VuncbXEx/KC+G0jw6Ce4sVOaAfgvx
	8aJNK7sUU1YD0YO/Mx+umoZ3tqRtaiPjuRKrzzy10Ip3UIqCnayYT+uRUFcEDG2f7LIni8AmFbxVj
	+t6p+VhjLHLLA0BUGGq7d7kcI/8ppYOBd9Z8TOQWcMbnY6wRQeUCLIEfdPWdKtYTBxbuHB38NlLXg
	pZ1FLlV/B/7xClxXeAHxqpF6PWQzEGPKb0sc2yHr4lYHoKy0spkunooa3JXdH43EDJtzwBiRLtWzh
	9r269PUg==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUMOD-00000005jVe-48X1
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 09:26:00 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55P20Som032291;
	Wed, 25 Jun 2025 09:25:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=tcdcCjhN1kQ
	qkrSRaE028Kk2TL8h/mHB4la3MB9/22o=; b=QG3FDG6/CFSon8Vvx4UzaQWqmzS
	/wtWeMDYgnMl+NfsvjhaDjzaGUR5C62QT2Zspy8pEqUu5gXH+R/nxYP5ZFDO9fmb
	st2qZFZHiUamifmZs+5aiedZBxlldkI1AQQohnEbl2wPOoEFjobmwHJuqYgD4Mjr
	IP5reR19w6b5QrRMbco0Wo0t5W9Bo+2SKeFFRGI5zShmoT6RukhZC/6V5m2qf0K8
	nHP2z+VWZpuwrit8s02LySiu3xWbxFeg6kHURBl/AOysq74EIlUURytBFuWbyQVQ
	ZNjDNO+M0z6aeVuR4rc94QpS6cmVgaxxE60xtBXYuthQ8LlZmwZjNqF4fbQ==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fbm1ww5k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 09:25:49 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 55P9PkK4024667;
	Wed, 25 Jun 2025 09:25:46 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 47dntmauy9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 09:25:46 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 55P9PkjD024662;
	Wed, 25 Jun 2025 09:25:46 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 55P9PjBN024659
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 09:25:46 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id D5D2F3866; Wed, 25 Jun 2025 17:25:42 +0800 (CST)
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
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v7 5/5] arm64: dts: qcom: qcs8300-ride: enable pcie1 interface
Date: Wed, 25 Jun 2025 17:25:39 +0800
Message-Id: <20250625092539.762075-6-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250625092539.762075-1-quic_ziyuzhan@quicinc.com>
References: <20250625092539.762075-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=YYu95xRf c=1 sm=1 tr=0 ts=685bc09d cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=0LYZJ8Fh9g_wO_RM1qMA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: R6irlamBveMzrA2DZ2ui-7HJ_0Pxoalx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDA3MCBTYWx0ZWRfX1u02zJ8MPPFc
 si/KOM+3CdnnDHBLmY8r4MUwsrKLz0JK9zy6o+OWRZFGCO5jvE2X4WEgZu/OFCWWST9oaW720Dk
 V7ffkOIEYnijLcTqTBgHZySflvyu1qOT3DUuqqk0PJKtIE93xcy9pyxrsjDlIxxglHTN/jBaiTL
 5qWcOgepIp4QEM5S7HJkbGixm5GeiBEqh4wCeW0Lt3yQSHSHTIZQgvx0lFLP8va93CDabUy9xB1
 /+BgJPCyfNCT9o2SKMjxQF3KNTcjPg/oxQxRRVsr0Bqa5G/BdOoQeDBtyXZTMYEECusSSOKncBp
 xbrAr4W9mANPd4+DuH6KJe0U6+PCNDGjYeH4dtXivByRSrIspe9j+bmC2qhnuiGJ+Ynzo7HSTm/
 jDaLlFgzOZeR6VjGGOqqFeJzvQZ82kIy6a3RzrZBahVraC0HRDSc2KwiOq7yOE64dbJ/a1Y2
X-Proofpoint-ORIG-GUID: R6irlamBveMzrA2DZ2ui-7HJ_0Pxoalx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_02,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 mlxlogscore=999
 clxscore=1015 mlxscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506250070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_102558_359162_5D0024FF 
X-CRM114-Status: UNSURE (   8.66  )
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
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
