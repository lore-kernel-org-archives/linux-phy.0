Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C7C9E7D0CB
	for <linux-phy@archiver.kernel.org>; Fri, 22 Sep 2023 05:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jmBpZgWIMk/HXeYranzLsr38FFoQGcFNlUrPpdTelNg=; b=yQ7sbdXVBgf+Bt
	Vk5Tr9Q1VRlcGweZNu3T+Hsz81iAKv/FHj0JK15OfOalZ4EQkWlMyFGVv3TPFTv5iV5Rv3ZCZFzJV
	mrhqi7nqZk20q95Pe9UGEXoolTrYDfqsEJGTNMOHX+VzXT8d0wWv2HsfWwF2D60Sn8n222eVQ5y3a
	DaKqrpoaCacdILbSEj7j6iaqcAVGxe3/RwCEno3nbvyXnC2aDR4k54hg1oXoRGbedzRqiEAEZc1pa
	ZBVB1Rk+sWZg/W6ioNcGy6yXpbhs5C9iIb6ScwVriSbq3jQt9lVhxnJetZ8c9yYg8DorRqEYYROMa
	IMkkpa4gfY5v8OctGCMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjYSm-007tK3-0l;
	Fri, 22 Sep 2023 05:12:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjYSi-007tH8-1R
	for linux-phy@lists.infradead.org;
	Fri, 22 Sep 2023 05:12:22 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38M51ngV008240;
	Fri, 22 Sep 2023 05:12:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=qcppdkim1;
 bh=kIXT93jtSG7Dcf7+1ZpE4PRl3rCSTipTWKODSpQmGGY=;
 b=Wv3jiOocOfDn/tog4rDUS5Sr2m0EAQQ7cjtBb+i4Vblb1sMz2OXP5dVO7aEDGyBg1pon
 PKz88sL4KbHY5TJSElbpDrpHbDrZ/G3XdEpIiGWnSfS73pZK/Nn8DZkvjOpVpVweXbMp
 m+Zm/o6adwynAps81k/DAbD6cOwPHW0mhak0dp+SGwh8mro5p/T6N3hfbJhvlqKGk/TV
 +ue/HkBT8vXb+Q73h6K0AyfTTwdqnou63e6WTaAkC5JK3qi0YAWopNUYmywKAZlVNQAV
 ZReCs8MsOQUsbVmodI/JhHGh2Hzp/A/vjLtpYJQ3yP+x4RoNJqZqixlMo65rODdF3dZy ig== 
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3t8uknrxd7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Sep 2023 05:12:12 +0000
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 38M57QYg012560;
	Fri, 22 Sep 2023 05:12:08 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 3t55em90v1-1;
	Fri, 22 Sep 2023 05:12:08 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 38M5C7BY018616;
	Fri, 22 Sep 2023 05:12:08 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-rohiagar-hyd.qualcomm.com [10.213.106.138])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 38M5C8v7018637;
	Fri, 22 Sep 2023 05:12:08 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3970568)
	id 9A5C11E49; Fri, 22 Sep 2023 10:42:07 +0530 (+0530)
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
Subject: [PATCH v4 3/5] dt-bindings: usb: qcom,dwc3: Fix SDX65 clocks
Date: Fri, 22 Sep 2023 10:42:03 +0530
Message-Id: <1695359525-4548-4-git-send-email-quic_rohiagar@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1695359525-4548-1-git-send-email-quic_rohiagar@quicinc.com>
References: <1695359525-4548-1-git-send-email-quic_rohiagar@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 9pWl3IZNXiWpKqBfP8xmOu-ahIIs359u
X-Proofpoint-ORIG-GUID: 9pWl3IZNXiWpKqBfP8xmOu-ahIIs359u
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-22_03,2023-09-21_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 suspectscore=0
 bulkscore=0 adultscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0
 mlxlogscore=731 priorityscore=1501 phishscore=0 mlxscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2309220045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_221220_488013_D7CB09D1 
X-CRM114-Status: GOOD (  12.54  )
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

SDX65 has 5 clocks so mention in the bindings.

Fixes: 16946a60715c ("dt-bindings: usb: qcom,dwc3: fix clock matching")
Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index 6759105..018117b 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -180,6 +180,7 @@ allOf:
               - qcom,sdm670-dwc3
               - qcom,sdm845-dwc3
               - qcom,sdx55-dwc3
+              - qcom,sdx65-dwc3
               - qcom,sm6350-dwc3
     then:
       properties:
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
