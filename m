Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31CE7C001B0
	for <linux-phy@archiver.kernel.org>; Mon,  7 Aug 2023 12:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/V12Ggsyfyzq+bVi0FkbfK8bn+1mN0jwbrJPiLlUKq8=; b=m5IKzmzW9NPX2M
	PUp4Lq4gPQx0gHhhGXlUFIRjUenI0fm5t6eZP0TqMw+VtkCi0XeXeG7H7QaaE6/MysPxcnYI/flNk
	PjGiH1UDxmWA4pDyel85fdXVFVElb1OyR2bJBsIgMHsmrPh+FgZvprqbJvY08sJq7WJcG28vVW57D
	AJAulaefn6zdN94oRJ0Fdz2lWwTUASFroHg/KPiSLv4a39tZXzWsTCbP7iKumrR3HM2HdW1PP89nu
	YUEFp55w0zO3i/MItN2jKWew9mOqCvZ+a/xipGybNH4AJwQNj8F4YqQKkEECwTSh9TYHb2Etad3PN
	XjY/1JwlWy5Ec0q+90Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qSzMA-00HCwQ-2x;
	Mon, 07 Aug 2023 12:29:06 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qSzM8-00HCuB-0a
	for linux-phy@lists.infradead.org;
	Mon, 07 Aug 2023 12:29:06 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 377BduVe027996;
	Mon, 7 Aug 2023 12:29:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=qcppdkim1;
 bh=gItqIJAhTAd77ZUSt2tHmbzWAUrLfL72TDdLDPaW35I=;
 b=HuHOJGu3GuHSsc5Y970L5pxI8aFu3dV7vLMGLyRN7sPkYLKhV6OF4sHvD3nQ8qky8CcI
 Wzt1Hrodgmy3ndbZtZXqyDDfdS+tnJ8/UlUfEZupbKwOcGMbdQNbSZI7AOGMzuuU2HAW
 YsClO3J0EHInp4B5saoMIzpLmxmz9J/BDD2+niqLoWE2dk20nrJgxuWVuG8/VLA+WHzX
 vCPZ/3x9Dge2XGWTrpYWc5GNm8HfSktZPGpfdyBA/KKktCKtqwU0Hn4D0qME1zCiX1jQ
 kl9Z9wocv6kFQaeLldsUFJrc9iLNHFNqJVEJFuv5jKcEjAEWSN+Re5I+SDfER+uzSWjs VA== 
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3s9drrkgk8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 07 Aug 2023 12:29:00 +0000
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 377CSvda032685;
	Mon, 7 Aug 2023 12:28:57 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 3s9fgkntwh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Mon, 07 Aug 2023 12:28:57 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 377CStmx032396;
	Mon, 7 Aug 2023 12:28:56 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-rohiagar-hyd.qualcomm.com [10.213.106.138])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 377CSuhu032419;
	Mon, 07 Aug 2023 12:28:56 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3970568)
	id 0B2401B64; Mon,  7 Aug 2023 17:58:56 +0530 (+0530)
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        abel.vesa@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        quic_pkondeti@quicinc.com, Rohit Agarwal <quic_rohiagar@quicinc.com>
Subject: [PATCH v2 6/9] ARM: dts: qcom: sdx65-mtp: Update the pmic used in sdx65
Date: Mon,  7 Aug 2023 17:58:50 +0530
Message-Id: <1691411333-1556-7-git-send-email-quic_rohiagar@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1691411333-1556-1-git-send-email-quic_rohiagar@quicinc.com>
References: <1691411333-1556-1-git-send-email-quic_rohiagar@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: fIsmotcU8MwUGF1EE4T4linKeDsDw5pK
X-Proofpoint-GUID: fIsmotcU8MwUGF1EE4T4linKeDsDw5pK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-08-07_12,2023-08-03_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 phishscore=0 mlxlogscore=675 adultscore=0 spamscore=0 clxscore=1015
 bulkscore=0 lowpriorityscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2306200000 definitions=main-2308070115
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230807_052904_332492_7EF8C047 
X-CRM114-Status: GOOD (  14.88  )
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

Update the pmic used in sdx65 platform to pm7250b.

Fixes: 26380f298b2b (ARM: dts: qcom: sdx65-mtp: Add pmk8350b and pm8150b pmic)
Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
---
 arch/arm/boot/dts/qcom/qcom-sdx65-mtp.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-sdx65-mtp.dts b/arch/arm/boot/dts/qcom/qcom-sdx65-mtp.dts
index 02d8d6e..fcf1c51 100644
--- a/arch/arm/boot/dts/qcom/qcom-sdx65-mtp.dts
+++ b/arch/arm/boot/dts/qcom/qcom-sdx65-mtp.dts
@@ -7,7 +7,7 @@
 #include "qcom-sdx65.dtsi"
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 #include <arm64/qcom/pmk8350.dtsi>
-#include <arm64/qcom/pm8150b.dtsi>
+#include <arm64/qcom/pm7250b.dtsi>
 #include "qcom-pmx65.dtsi"
 
 / {
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
