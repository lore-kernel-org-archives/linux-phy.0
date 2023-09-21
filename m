Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87E6BE7070A
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 10:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wBPY7mSm6/1INyM1WWRPqGy/kr4aO8horiqgwaulWAM=; b=oQOqgUZY2YrULr
	f//9sobNnQu2AzDEjcYEH2w7k9sAK2KRqPC13QvH3zS7xE5KAE9k8RvNUFk1IOo792d/YUcVvvesK
	+Y2HutIXJu3KZcW2WpWGWQLRmySFqhMmKMv4nlROUR88lobcmbo06xIxLiH653VgpxcAVvtN1dGrf
	lqcXDKwncpCLLx1tkvEL6nUOHM0y+mgezELO1MKna1DuOqTsUkLYNR0X0JMQ+H0YT0xeFfiRPAXOA
	IVuCvjBmxCXHCssNof+4pt+ND6VK509ecXpi2WtqQuKj/3daAD3nbGyMGP/IjhWFzNnu/BWUg/o11
	IfVVJfLNz/642Rwa0QJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGox-005hRp-0q;
	Thu, 21 Sep 2023 10:22:07 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGou-005hMX-0V
	for linux-phy@lists.infradead.org;
	Thu, 21 Sep 2023 10:22:05 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38LA0op8018599;
	Thu, 21 Sep 2023 10:21:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=qcppdkim1;
 bh=T0zvtAbAPebOnsvprf62IRLD4kapb6CxEu2qq4E60Ls=;
 b=JlgiKF4XZPvMOUSNl2QGekxnp3jeoZepr2jHVEBb8boK+WYU/ANCPR8C0Ur2O2V9ph/4
 kzp3ZnrwJ6aCixQ3MZ+uZ4jxqovYkpW1onD/rfQ9SNffbcazCvIHlgxoGu8q86nKjTNb
 Hu8azLwyZ6/3vnCi/Arg0d+X+Phoyv08di+XjdJp/42oGHU6ZJR6GMdBgx6YuLt4b4Rg
 lY8CqwGhVvS4CnUyBAxpe/fRyK0sVDezBnSRJWMc5hZrIRiUfV/1EnXfJbbOiyUyRSCO
 v0q8G9NnAZe+PynNb2zEgZg0+VA/2uc1Hu6w+x3Ybpjyp88S94ZMFPagdita/22x+7sF 5w== 
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3t8hb8gc7d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Sep 2023 10:21:40 +0000
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 38LALbjV023130;
	Thu, 21 Sep 2023 10:21:37 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 3t55ekq7nu-1;
	Thu, 21 Sep 2023 10:21:37 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 38LALbc1023117;
	Thu, 21 Sep 2023 10:21:37 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-rohiagar-hyd.qualcomm.com [10.213.106.138])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 38LALbgG023107;
	Thu, 21 Sep 2023 10:21:37 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3970568)
	id 8D1471E45; Thu, 21 Sep 2023 15:51:36 +0530 (+0530)
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        gregkh@linuxfoundation.org, abel.vesa@linaro.org,
        quic_wcheng@quicinc.com, dmitry.baryshkov@linaro.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, kernel@quicinc.com,
        Rohit Agarwal <quic_rohiagar@quicinc.com>
Subject: [PATCH v3 2/5] dt-bindings: phy: qcom,qmp-usb: Add SDX75 USB3 PHY
Date: Thu, 21 Sep 2023 15:51:29 +0530
Message-Id: <1695291692-18850-3-git-send-email-quic_rohiagar@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1695291692-18850-1-git-send-email-quic_rohiagar@quicinc.com>
References: <1695291692-18850-1-git-send-email-quic_rohiagar@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: MDHs_XGrg-urHVPLut4tMZThdEQB6t0q
X-Proofpoint-GUID: MDHs_XGrg-urHVPLut4tMZThdEQB6t0q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-21_07,2023-09-20_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 mlxscore=0
 bulkscore=0 lowpriorityscore=0 mlxlogscore=585 impostorscore=0
 phishscore=0 priorityscore=1501 clxscore=1015 adultscore=0 malwarescore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2309210090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_032204_196707_506903FC 
X-CRM114-Status: GOOD (  12.28  )
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

Add dt-bindings for USB3 PHY found on Qualcomm SDX75.

Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index f99fbbc..d58dd74 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -20,6 +20,7 @@ properties:
       - qcom,qcm2290-qmp-usb3-phy
       - qcom,sa8775p-qmp-usb3-uni-phy
       - qcom,sc8280xp-qmp-usb3-uni-phy
+      - qcom,sdx75-qmp-usb3-uni-phy
       - qcom,sm6115-qmp-usb3-phy
 
   reg:
@@ -75,6 +76,7 @@ allOf:
           contains:
             enum:
               - qcom,ipq9574-qmp-usb3-phy
+              - qcom,sdx75-qmp-usb3-uni-phy
     then:
       properties:
         clock-names:
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
