Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45F2BC76188
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 11:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GwyVBeD7/KwTj9tz2cgQO1k5C5HAMl7oMJOBp9uyrfk=; b=hOL6v+hqdS2CzN
	9zslnUMwAnbCnSN3Er+dhcq9fgcUNAjPihlAPSDigymI2AEieW9PfBQOKGpQIdLKY7/rbzMUcTZbO
	V/sog4+C5q9IU78g0V5pfIRDhxRzO+w5iNM0CWr08Hrd/vEq8T8n46z8Mk+mDxLYlvUXBfTCRfbNW
	FN4z9vdTikP5/y4agrQMsBA5edzB4baI9rEl0EcdvVGcmBxw0TNhx4tOyGi0dyObthDOmuiHwJt/O
	hUCoXzBj3ySJLwRk42NvYGsscbWLCuQ5nSXrzzpIWt1IdR+FiNHZM+/5gAz+Rnrhs/VtVOcEhzLoy
	EsTcXzWfK5Ex1dhy5YhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk1Wa-004ISa-2y;
	Wed, 05 Apr 2023 11:42:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk1WX-004IR8-2y
	for linux-phy@lists.infradead.org;
	Wed, 05 Apr 2023 11:41:59 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3359calN018954;
	Wed, 5 Apr 2023 11:41:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=Dgg+OESJLWskkpR8sqfieVAvWfxCQ2M4CDXzU2Hn/Ys=;
 b=ZiTSzJyRxL77u6okXXf/Q/umXunUMyB6hyQ4oKXpcmqLG86NbFomkkS+1pMaT8+7F+fO
 +bdHptozw1JF6ykc2QkB6MZCohv0zdtcGxlxpwo0BOYV6czPSEJaweW8GMu7UoNmE38G
 zVyXEbDzxcxYAIeLCvBvxvl+IPNr3kPdXiiuXKjhxMyGUSHlVmnfif81RGffxT3YeWYu
 CeRIkwoURGerGzt/jfAeAmuCkf89jpfFx65Roges9q2ABreEZGPpeSORAXsskfBqcEui
 v4XnVcI/IL3z12K047KtCe48uSws+dnRd1YPTIcchJvjwg/dleJtF3tYDCbLS2OfnJwt cA== 
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3prnusjnxs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 05 Apr 2023 11:41:48 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 335BflnY027156
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 5 Apr 2023 11:41:47 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Wed, 5 Apr 2023 04:41:41 -0700
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <gregkh@linuxfoundation.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-clk@vger.kernel.org>
CC: Varadarajan Narayanan <quic_varada@quicinc.com>
Subject: [PATCH v8 1/8] dt-bindings: phy: qcom,qusb2: Document IPQ9574 compatible
Date: Wed, 5 Apr 2023 17:11:20 +0530
Message-ID: <8a21cddd0fa65efd854a631fabee900f84a5a30a.1680693149.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1680693149.git.quic_varada@quicinc.com>
References: <cover.1680693149.git.quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: XggzpGJTAwZsgaPi9wrLe7u-KVoQ94mu
X-Proofpoint-ORIG-GUID: XggzpGJTAwZsgaPi9wrLe7u-KVoQ94mu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-05_07,2023-04-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 impostorscore=0 suspectscore=0 bulkscore=0 mlxscore=0
 clxscore=1015 malwarescore=0 mlxlogscore=859 adultscore=0 phishscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304050106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_044158_082128_BFAF158F 
X-CRM114-Status: GOOD (  15.09  )
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

Document the compatible string used for the qusb2 phy in IPQ9574.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>

---
 Changes in v5:
	- Undo v4 changes

 Changes in v4:
	- Remove constraints not applicable to IPQ9574

 Changes in v3:
	- Maintain the proper sorted order

 Changes in v2:
	- Moved ipq6018 to the proper place and placed ipq9574
	  next to it as suggested by Dmitry
---
 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index 543c1a2..95eecba 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -18,13 +18,14 @@ properties:
     oneOf:
       - items:
           - enum:
+              - qcom,ipq6018-qusb2-phy
               - qcom,ipq8074-qusb2-phy
+              - qcom,ipq9574-qusb2-phy
               - qcom,msm8953-qusb2-phy
               - qcom,msm8996-qusb2-phy
               - qcom,msm8998-qusb2-phy
               - qcom,qcm2290-qusb2-phy
               - qcom,sdm660-qusb2-phy
-              - qcom,ipq6018-qusb2-phy
               - qcom,sm4250-qusb2-phy
               - qcom,sm6115-qusb2-phy
       - items:
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
