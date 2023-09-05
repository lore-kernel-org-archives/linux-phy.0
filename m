Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4252CA0FFA
	for <linux-phy@archiver.kernel.org>; Tue,  5 Sep 2023 04:44:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RVPOKorA3UBM5CMkAVhQDRxvDBIlbtZlr/WtE9MiPnM=; b=ZIRhgU5STvpIRn
	e9VpN9wxM8UVbplJdH6ZO+4kav9ChZWFg+wZvhbvB6mDSXCpJO0skKTYFBq3x46CHDLKPa2MQJ1Zz
	RcCqZ+qnbRvkHWwvbANp+0MD04jIQswjvfbG1e8k6n+VGFxB67WkQu2rnskhfVIC8aY1MZE8MB1Zr
	Ym4T2MvaGRMz0mTZRiN/TkRMYTcIEoXU43/J7tPiM0gKSf63YRKCcJdDSNSHlJBufJdNhG+3AyL8s
	kjv+0t/lCe81oAvjKS5b8j8ETeNDDdqPK/ptSCrFoOd5A7u7dXnsO0c5vrVlFVwAXz/9Su9j6orwO
	YMrk/iKN7Imzgq6rTQCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdNv8-005GNt-1z;
	Tue, 05 Sep 2023 04:44:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdNv5-005GLk-1x
	for linux-phy@lists.infradead.org;
	Tue, 05 Sep 2023 04:44:09 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3854P2Yg030219;
	Tue, 5 Sep 2023 04:43:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=qcppdkim1;
 bh=FMbRPrDf59qmugisH2Imhj/oST47qaA/zUfNV7t6V8o=;
 b=Xf5cEAVbDtc7/9RZRPFZHcnUf4ngdB8IIE8K9saTOUhrUB8BFQe1kl632hGkKv/262Lq
 EiYH14iAxZvh5mmJLm9AhgHKBReVgLJUs/G4Tn3PlvNpabM8dBqnl9IjC7xAwCAX7hts
 kQSBKk67SaUecnyWEHdtKIlgeCMgbux9ZpIe6WW1XLYfJz9/Zt2IAjkHz9fn9Jd9fVli
 MHnZYkboaH65KLqNRws9ESd5ema3xhnGeCsVU3vFXEyRTo9g3jl0Hg0gxa+YF12hYeRS
 L/SzcSN6OxjCDrhXp7hxrYXfN/yaJzydJjeIZKnrgk431QFpJ+iLLY/kBOs9ttIJ9sM9 kw== 
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3swsp58a7j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 05 Sep 2023 04:43:55 +0000
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 3854hp6F013097;
	Tue, 5 Sep 2023 04:43:51 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 3sux4kav1a-1;
	Tue, 05 Sep 2023 04:43:51 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 3854hpBA013090;
	Tue, 5 Sep 2023 04:43:51 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-rohiagar-hyd.qualcomm.com [10.213.106.138])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 3854hpp9013086;
	Tue, 05 Sep 2023 04:43:51 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3970568)
	id E3CE41D0C; Tue,  5 Sep 2023 10:13:50 +0530 (+0530)
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        gregkh@linuxfoundation.org, abel.vesa@linaro.org,
        quic_wcheng@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, kernel@quicinc.com,
        Rohit Agarwal <quic_rohiagar@quicinc.com>
Subject: [PATCH 1/5] dt-bindings: phy: qcom,snps-eusb2-phy: Add compatible for SDX75
Date: Tue,  5 Sep 2023 10:13:44 +0530
Message-Id: <1693889028-6485-2-git-send-email-quic_rohiagar@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1693889028-6485-1-git-send-email-quic_rohiagar@quicinc.com>
References: <1693889028-6485-1-git-send-email-quic_rohiagar@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Nn8MwlWSUSCYu99Uapcwf94xCrR_OgiI
X-Proofpoint-GUID: Nn8MwlWSUSCYu99Uapcwf94xCrR_OgiI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-05_02,2023-08-31_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 adultscore=0 phishscore=0 impostorscore=0 spamscore=0 malwarescore=0
 mlxlogscore=747 clxscore=1015 mlxscore=0 priorityscore=1501 suspectscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2309050039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230904_214407_757183_497D131D 
X-CRM114-Status: GOOD (  13.48  )
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

Add a dt-bindings compatible string for the SDX75 SoC that
uses Synopsis eUSB2 PHY.

Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
index c53bab1..c958286 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -14,7 +14,12 @@ description:
 
 properties:
   compatible:
-    const: qcom,sm8550-snps-eusb2-phy
+    oneOf:
+      - items:
+          - enum:
+              - qcom,sdx75-snps-eusb2-phy
+          - const: qcom,sm8550-snps-eusb2-phy
+      - const: qcom,sm8550-snps-eusb2-phy
 
   reg:
     maxItems: 1
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
