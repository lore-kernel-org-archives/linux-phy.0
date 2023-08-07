Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B44AC04FE0
	for <linux-phy@archiver.kernel.org>; Mon,  7 Aug 2023 12:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uV0fFZ9ncRdY6I9PsDr6Xaw/4fXBxG+8g9LWcfNUkrk=; b=lo6v2NmjJ/OcOb
	w0Wsn1WUPf0TNuZSzh/lXBJ7QlvaAEtwNIEGNOzXKVrWmgtZIzZFMRy6u6u57vrRSV6w317qf7iS1
	K9UQQd66HgccADBzpKLUDsYZuog5Fiwgu0cMJxo81AZbk2joliiwzMbuMygPAwBvxGrreVi5xngUL
	Wj1faXFVnLsExpUt8B+vFJzhd8X/HXIo0I9hqrR2jAVeGMZj3s2B65PJh+Qe3aQCjeHto5x5WIDVn
	RrSsE1PgNe9vwXSBLSrxkEC/4EAwhFoFjWMf235l2hOGjcHrr/r42Wm5nbNxSK1If9MiTW/jbdv2w
	C8Xg9GlwlbJ6RWAlAYaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qSzC6-00HB7C-2U;
	Mon, 07 Aug 2023 12:18:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qSzC2-00HB31-1M
	for linux-phy@lists.infradead.org;
	Mon, 07 Aug 2023 12:18:41 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 377Bv6jf014381;
	Mon, 7 Aug 2023 12:18:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=qcppdkim1;
 bh=BqvX8/51PTMn3qNUof4nZRTqfxtDmgC7peZ436DV1fs=;
 b=CLuJhaHKNSWHzqmkuo7LUfRTmuEZbUGJYKx2vRzC2d4Soymmn3VjUyOVnyMmzq6dyQHJ
 o8LcQu9lD8hzwEuKH4F9Y5tonescbhALxkpikY8QsWwLUbSpBcZb0Mpkv5YxAp6IsYQ6
 6N2Wc9TdkZXcIkyi/a8qvZ6Yw+3GJiyQN4qW9zBtMz7gN8ZQg3D42kartX3a2TzGM4cN
 Zmg/q30zfU+Vmn1/hMO7BbROU6rYf/6v/N4wHScNAljXmgdWj+hAbfuqgBedD6qeVgl7
 co3WDghIkRkGwugpgq0ruhTfZXxHVI0MKQae9mX8G5dQoV2pxXGjYx+upR6+IgOPsrnm xg== 
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3sawbg8gy6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 07 Aug 2023 12:18:33 +0000
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 377CISfW028016;
	Mon, 7 Aug 2023 12:18:30 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 3s9fgk7km2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Mon, 07 Aug 2023 12:18:30 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 377CIRPp027968;
	Mon, 7 Aug 2023 12:18:29 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-rohiagar-hyd.qualcomm.com [10.213.106.138])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 377CIRB3027948;
	Mon, 07 Aug 2023 12:18:29 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3970568)
	id 1F5C61B5B; Mon,  7 Aug 2023 17:48:29 +0530 (+0530)
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        abel.vesa@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        quic_pkondeti@quicinc.com, Rohit Agarwal <quic_rohiagar@quicinc.com>
Subject: [PATCH v2 9/9] arm64: dts: qcom: sdx75-idp: Add regulator nodes
Date: Mon,  7 Aug 2023 17:48:18 +0530
Message-Id: <1691410698-25180-10-git-send-email-quic_rohiagar@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1691410698-25180-1-git-send-email-quic_rohiagar@quicinc.com>
References: <1691410698-25180-1-git-send-email-quic_rohiagar@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: hZSC078NXGdEg3ovGp3XphKpdUWYIME9
X-Proofpoint-GUID: hZSC078NXGdEg3ovGp3XphKpdUWYIME9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-08-07_11,2023-08-03_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxlogscore=814
 impostorscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0 phishscore=0
 mlxscore=0 priorityscore=1501 malwarescore=0 adultscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2306200000
 definitions=main-2308070112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230807_051838_581524_9911DEFE 
X-CRM114-Status: GOOD (  13.16  )
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

Add all the regulators along with labels found on SDX75 IDP.

Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
---
 arch/arm64/boot/dts/qcom/sdx75-idp.dts | 227 +++++++++++++++++++++++++++++++++
 1 file changed, 227 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdx75-idp.dts b/arch/arm64/boot/dts/qcom/sdx75-idp.dts
index 0da8c98..10d1587 100644
--- a/arch/arm64/boot/dts/qcom/sdx75-idp.dts
+++ b/arch/arm64/boot/dts/qcom/sdx75-idp.dts
@@ -5,6 +5,7 @@
 
 /dts-v1/;
 
+#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 #include "sdx75.dtsi"
 #include "pm7550ba.dtsi"
 #include "pmk8550.dtsi"
@@ -17,6 +18,232 @@
 	aliases {
 		serial0 = &uart1;
 	};
+
+	vph_pwr: vph-pwr-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vph_pwr";
+		regulator-min-microvolt = <3700000>;
+		regulator-max-microvolt = <3700000>;
+	};
+
+	vph_ext: vph-ext-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vph_ext";
+		regulator-min-microvolt = <3700000>;
+		regulator-max-microvolt = <3700000>;
+	};
+
+	vreg_bob_3p3: pmx75-bob {
+		compatible = "regulator-fixed";
+		regulator-name = "vreg_bob_3p3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+
+		vin-supply = <&vph_ext>;
+	};
+};
+
+&apps_rsc {
+	pmx75-rpmh-regulators {
+		compatible = "qcom,pmx75-rpmh-regulators";
+		qcom,pmic-id = "b";
+
+		vdd-s1-supply = <&vph_pwr>;
+		vdd-s2-supply = <&vph_pwr>;
+		vdd-s3-supply = <&vph_pwr>;
+		vdd-s4-supply = <&vph_pwr>;
+		vdd-s5-supply = <&vph_pwr>;
+		vdd-s6-supply = <&vph_pwr>;
+		vdd-s7-supply = <&vph_pwr>;
+		vdd-s8-supply = <&vph_pwr>;
+		vdd-s9-supply = <&vph_pwr>;
+		vdd-s10-supply = <&vph_pwr>;
+		vdd-l1-supply = <&vreg_s2b_1p224>;
+		vdd-l2-l18-supply = <&vreg_s2b_1p224>;
+		vdd-l3-supply = <&vreg_s7b_0p936>;
+		vdd-l4-l16-supply = <&vreg_s7b_0p936>;
+		vdd-l5-l6-supply = <&vreg_s4b_1p824>;
+		vdd-l7-supply = <&vreg_s7b_0p936>;
+		vdd-l8-l9-supply = <&vreg_s8b_0p824>;
+		vdd-l10-supply = <&vreg_bob_3p3>;
+		vdd-l11-l13-supply = <&vreg_bob_3p3>;
+		vdd-l12-supply = <&vreg_s2b_1p224>;
+		vdd-l14-supply = <&vreg_s3b_0p752>;
+		vdd-l15-supply = <&vreg_s2b_1p224>;
+		vdd-l17-supply = <&vreg_s8b_0p824>;
+		vdd-l19-supply = <&vreg_s7b_0p936>;
+		vdd-l20-l21-supply = <&vreg_s7b_0p936>;
+
+		vreg_s2b_1p224: smps2 {
+			regulator-name = "vreg_s2b_1p224";
+			regulator-min-microvolt = <1224000>;
+			regulator-max-microvolt = <1350000>;
+		};
+
+		vreg_s3b_0p752: smps3 {
+			regulator-name = "vreg_s3b_0p752";
+			regulator-min-microvolt = <684000>;
+			regulator-max-microvolt = <904000>;
+		};
+
+		vreg_s4b_1p824: smps4 {
+			regulator-name = "vreg_s4b_1p824";
+			regulator-min-microvolt = <1824000>;
+			regulator-max-microvolt = <1904000>;
+		};
+
+		vreg_s7b_0p936: smps7 {
+			regulator-name = "vreg_s7b_0p936";
+			regulator-min-microvolt = <352000>;
+			regulator-max-microvolt = <1060000>;
+		};
+
+		vreg_s8b_0p824: smps8 {
+			regulator-name = "vreg_s8b_0p824";
+			regulator-min-microvolt = <500000>;
+			regulator-max-microvolt = <1100000>;
+		};
+
+		vreg_l1b_1p2: ldo1 {
+			regulator-name = "vreg_l1b_1p2";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l2b_1p128: ldo2 {
+			regulator-name = "vreg_l2b_1p128";
+			regulator-min-microvolt = <1000000>;
+			regulator-max-microvolt = <1160000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l3b_0p896: ldo3 {
+			regulator-name = "vreg_l3b_0p896";
+			regulator-min-microvolt = <300000>;
+			regulator-max-microvolt = <1040000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l4b_0p88: ldo4 {
+			regulator-name = "vreg_l4b_0p88";
+			regulator-min-microvolt = <864000>;
+			regulator-max-microvolt = <912000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l5b_1p776: ldo5 {
+			regulator-name = "vreg_l5b_1p776";
+			regulator-min-microvolt = <1770000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l6b_1p8: ldo6 {
+			regulator-name = "vreg_l6b_1p8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l7b_0p904: ldo7 {
+			regulator-name = "vreg_l7b_0p904";
+			regulator-min-microvolt = <300000>;
+			regulator-max-microvolt = <960000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l8b_0p8: ldo8 {
+			regulator-name = "vreg_l8b_0p8";
+			regulator-min-microvolt = <800000>;
+			regulator-max-microvolt = <800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l9b_0p752: ldo9 {
+			regulator-name = "vreg_l9b_0p752";
+			regulator-min-microvolt = <752000>;
+			regulator-max-microvolt = <800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l10b_3p08: ldo10 {
+			regulator-name = "vreg_l10b_3p08";
+			regulator-min-microvolt = <3008000>;
+			regulator-max-microvolt = <3088000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l11b_1p8: ldo11 {
+			regulator-name = "vreg_l11b_1p8";
+			regulator-min-microvolt = <1704000>;
+			regulator-max-microvolt = <2928000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l12b_1p2: ldo12 {
+			regulator-name = "vreg_l12b_1p2";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l13b_1p8: ldo13 {
+			regulator-name = "vreg_l13b_1p8";
+			regulator-min-microvolt = <1704000>;
+			regulator-max-microvolt = <2928000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l14b_0p624: ldo14 {
+			regulator-name = "vreg_l14b_0p624";
+			regulator-min-microvolt = <300000>;
+			regulator-max-microvolt = <800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l15b_1p2: ldo15 {
+			regulator-name = "vreg_l15b_1p2";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l16b_0p912: ldo16 {
+			regulator-name = "vreg_l16b_0p912";
+			regulator-min-microvolt = <880000>;
+			regulator-max-microvolt = <920000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l17b_0p752: ldo17 {
+			regulator-name = "vreg_l17b_0p752";
+			regulator-min-microvolt = <684000>;
+			regulator-max-microvolt = <957600>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l19b_0p952: ldo19 {
+			regulator-name = "vreg_l19b_0p952";
+			regulator-min-microvolt = <900000>;
+			regulator-max-microvolt = <960000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l20b_0p912: ldo20 {
+			regulator-name = "vreg_l20b_0p912";
+			regulator-min-microvolt = <912000>;
+			regulator-max-microvolt = <952000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l21b_0p856: ldo21 {
+			regulator-name = "vreg_l21b_0p856";
+			regulator-min-microvolt = <300000>;
+			regulator-max-microvolt = <1000000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
 };
 
 &chosen {
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
