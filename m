Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C037C07E8F
	for <linux-phy@archiver.kernel.org>; Mon,  7 Aug 2023 12:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0YjOFihFRsKmgq9WOp2CkEcgnG87pW1QvHUPOlBAg1s=; b=kgcK0uTDw3BxwD
	GVVehwg7fIZvuBWRkYIsiauuRTk9wCa6FFofV19z/v3sV8pU/YsuZH2Zo+W73KkJk4LS9tXSlbaYB
	FcFHItIFXru/PgWTIEz+Kc3WcDSZIIiqIIrejiLYC1ZUK8quiihUWFZtHETrVQP4eSmie959IXpB2
	Dveu283B3Vjygne5pvgdX2WkO+WpGrFkt0DXm3U2at2yoVxfeo9tTmV6nqb1qEWA7R17icP0bWiLw
	y84/cImcUPfw8GNavCEKOKFoTnb8SC2iJsHGzb+OTTb3SurHR2n18sZ+XqaIUbWMPJMcsW8fdz/XF
	sIC44DEDpJjjtohC08aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qSzC9-00HB8s-0v;
	Mon, 07 Aug 2023 12:18:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qSzC5-00HB6B-2m
	for linux-phy@lists.infradead.org;
	Mon, 07 Aug 2023 12:18:43 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 377BrXQS013554;
	Mon, 7 Aug 2023 12:18:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=qcppdkim1;
 bh=N8sk33h9uR6qI+yjQIDCtOfQcv+5TrsMvhUv6KgRxHI=;
 b=Ugxb8GbnWgaHKTHDEsgdVVXFfpD8hdIvndgpj4JjtpHmHd8H5qkKZukIjyO+VfzixNmu
 +NUnG6IxlW1+9KtsGKFfAiuBnysA0wKYkPfzmenXNLTxDIHiVn+qlaY2D+4h9NUZqzXX
 Svgxv5rq1aD5/RMTfELmwVdHRB4wmlCCc+5b4nzcnDk73sMvCGCoI/Zhe2obL8G/gRqs
 EetEkEl71S8VsUbQeMLMUqIKU9WXsiDT8K26q5EJGdkipBL21lmKL8KOv/ugDUcz9Mnk
 vz4jlWXUZt1976dAGF9MKljGTnPqwajReoicuFrly0T6I96pstx+7tOKCXQgxB0qZdbG gg== 
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3s9f6pkbj6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 07 Aug 2023 12:18:32 +0000
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 377CIRJ9027954;
	Mon, 7 Aug 2023 12:18:28 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 3s9fgk7kkt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Mon, 07 Aug 2023 12:18:28 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 377CIRPn027968;
	Mon, 7 Aug 2023 12:18:28 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-rohiagar-hyd.qualcomm.com [10.213.106.138])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 377CIRB1027948;
	Mon, 07 Aug 2023 12:18:28 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3970568)
	id C35A31B5B; Mon,  7 Aug 2023 17:48:27 +0530 (+0530)
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        abel.vesa@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        quic_pkondeti@quicinc.com, Rohit Agarwal <quic_rohiagar@quicinc.com>
Subject: [PATCH v2 7/9] arm64: dts: qcom: sdx75-idp: Add pmics supported in SDX75
Date: Mon,  7 Aug 2023 17:48:16 +0530
Message-Id: <1691410698-25180-8-git-send-email-quic_rohiagar@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1691410698-25180-1-git-send-email-quic_rohiagar@quicinc.com>
References: <1691410698-25180-1-git-send-email-quic_rohiagar@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: xQvolDmAHVnHLCzdW-hulxqLqhkY4jEQ
X-Proofpoint-GUID: xQvolDmAHVnHLCzdW-hulxqLqhkY4jEQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-08-07_12,2023-08-03_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 bulkscore=0
 mlxscore=0 impostorscore=0 suspectscore=0 phishscore=0 adultscore=0
 clxscore=1015 lowpriorityscore=0 mlxlogscore=573 priorityscore=1501
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2306200000 definitions=main-2308070112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230807_051841_910514_95B2C261 
X-CRM114-Status: GOOD (  11.63  )
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

SDX75-idp features pmk8550, pmx75 and pm7550ba pmic, so include them.

Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
---
 arch/arm64/boot/dts/qcom/sdx75-idp.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdx75-idp.dts b/arch/arm64/boot/dts/qcom/sdx75-idp.dts
index cbe5cdf..0da8c98 100644
--- a/arch/arm64/boot/dts/qcom/sdx75-idp.dts
+++ b/arch/arm64/boot/dts/qcom/sdx75-idp.dts
@@ -6,6 +6,9 @@
 /dts-v1/;
 
 #include "sdx75.dtsi"
+#include "pm7550ba.dtsi"
+#include "pmk8550.dtsi"
+#include "pmx75.dtsi"
 
 / {
 	model = "Qualcomm Technologies, Inc. SDX75 IDP";
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
