Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E96D7C001DF
	for <linux-phy@archiver.kernel.org>; Mon,  7 Aug 2023 12:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6gGjn4rc8C6YwxEJU07OeZdDepFU2sgQ9dNflCpi+yU=; b=CL9VNuHM242Bzz
	LdT7LwhxK/xiTHefAacz6MJJy/4Fispk+39UkC5uajVFxvQwDgLe6rse7ptdzFYxgs2nZ6Tn0GDTb
	UYtScbzsWBco44NXl2jLWQgfFp6idA2Eb9oSQgIpq7JW815y/Wke9HCJPNLhqt1j3L5jiKNFaQRCt
	YowoAox3eqRa+Vde+/54U/T1hosKb/2VAQt5nFt+7bq2CqaKEK8UDq1pZixpK7PwvHovQO50rOGAr
	m2yaVcHL8dHmGQ/+RqfD5B5CiNNpaj8kQAqJYHZSi5Y6nL0fDlvlXDz4gH0T658CPbGyiGaWhNBZY
	QK4usX8uMawCYedhz/3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qSzC5-00HB5t-1o;
	Mon, 07 Aug 2023 12:18:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qSzC2-00HB2r-1E
	for linux-phy@lists.infradead.org;
	Mon, 07 Aug 2023 12:18:39 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 377CDXfp028121;
	Mon, 7 Aug 2023 12:18:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=qcppdkim1;
 bh=eFxUCvH8EU21Zz7uktuMmRveUg+ZKrw/iykE8bEffxE=;
 b=WKHEwkclHSEApcIOUp/Cg/Y47oQcpPh/I0iTF6ZEoPd17TsDlY2MTlX4yNd0TX8oDmZs
 u/uBvajDyLqzFjb7keMjEe9kzeGVzGBcIJmC+mpw1hTAqyYFrKjcaOgqU0YZzwOzmvIs
 LAIaNUKiIk1Ki8lQRHzBjGrdQz0ocgd2FGq9eX3l4FHahFpqgSv/e70RNrWAFLM2cHis
 z0pHQr8xLtYkdHJBDIPK48LjVI8GQoZV6GNwOCxYqCGpLV7RVoCa87qb21QP1hsh37Ln
 8sAHOZrHKqtDq5oLx12MqkQ1l2L9APxxw1luI5g8DDOxE/XanikRv9en7GXKGsEkqCgO Tw== 
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3s9drrkg55-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 07 Aug 2023 12:18:30 +0000
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 377CIRsx027949;
	Mon, 7 Aug 2023 12:18:27 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 3s9fgk7kk1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Mon, 07 Aug 2023 12:18:27 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 377CIQsk027932;
	Mon, 7 Aug 2023 12:18:26 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-rohiagar-hyd.qualcomm.com [10.213.106.138])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 377CIQxw027926;
	Mon, 07 Aug 2023 12:18:26 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3970568)
	id 258631B64; Mon,  7 Aug 2023 17:48:26 +0530 (+0530)
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        abel.vesa@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        quic_pkondeti@quicinc.com, Rohit Agarwal <quic_rohiagar@quicinc.com>
Subject: [PATCH v2 1/9] dt-bindings: phy: qcom,snps-eusb2-repeater: Add compatible for PM7550BA
Date: Mon,  7 Aug 2023 17:48:10 +0530
Message-Id: <1691410698-25180-2-git-send-email-quic_rohiagar@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1691410698-25180-1-git-send-email-quic_rohiagar@quicinc.com>
References: <1691410698-25180-1-git-send-email-quic_rohiagar@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: iGOi9sY-nOKc1Ac1Vw8ZXzVwWbzsZ3zz
X-Proofpoint-GUID: iGOi9sY-nOKc1Ac1Vw8ZXzVwWbzsZ3zz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-08-07_12,2023-08-03_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 phishscore=0 mlxlogscore=885 adultscore=0 spamscore=0 clxscore=1011
 bulkscore=0 lowpriorityscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2306200000 definitions=main-2308070112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230807_051838_558672_275C90A8 
X-CRM114-Status: GOOD (  13.12  )
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

Add a dt-bindings compatible string for the Qualcomm's PM7550BA PMIC.

Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
---
 .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml          | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 083fda5..029569d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -15,7 +15,12 @@ description:
 
 properties:
   compatible:
-    const: qcom,pm8550b-eusb2-repeater
+    oneOf:
+      - items:
+          - enum:
+              - qcom,pm7550ba-eusb2-repeater
+          - const: qcom,pm8550b-eusb2-repeater
+      - const: qcom,pm8550b-eusb2-repeater
 
   reg:
     maxItems: 1
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
