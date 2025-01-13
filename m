Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33041C02183
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jan 2025 08:06:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=99U0hZbzo1UdAzNIoNscUSowVyKSwjA7mL/VRYvIGf4=; b=WP3O5R9dhmJz2G
	RCVVoCEqQKmCzD5uMSJQzgxzeabkmsCIyoKbwLi6BXJ6/70TyChDiuRaVId2W95xk+bnt5jHDFaq7
	LHoE3EDQJkwEts3EBxIEQnJe1OGfkmDGvmydLKgjZ/doYUqjmvFEabe10lMnCKCNrhGwo4eoirJwQ
	eMBjo9EdgvSYqJeT3bLc3Mpo+m+VbujZXu7nWu2VGuz9XiO78oshwHwQy1mVzjN3+g1iPpVJqL7xI
	YnBYBWbuhlBHvr731EEOaoBXMVznrnR5i0cfVyhpk0AMQ14ehKll92Ic6PXvYw++PUGTAY8AI2npN
	igc6lnill1tD39GQF0fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXFSU-00000004Jda-45Gl;
	Mon, 13 Jan 2025 08:06:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXFST-00000004Jc7-0FEa
	for linux-phy@lists.infradead.org;
	Mon, 13 Jan 2025 08:06:02 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50D4WWNI007710;
	Mon, 13 Jan 2025 08:05:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	444nZ169tZ+Tedf8qd/ScLfsd4haVXiFaAKNEXWkQHg=; b=oLsWgOq5K1sntkDv
	MN27o6pWjcv6oSC+PbRXHOnWBKdUO1CEZq6iffYmfHIXgzHI5lHJEN/Dfd9FHS/p
	rjF6OXTqdBzkIeyyn4uRpdpbusZvAdXaGONLT5hfRFVoce6nHXb+p5Zl9ugRZKfF
	DlP+ooxZUaX1zfkF5yYAgJaG/dHV37dQmfAqOobXKKJulU+CY1JAcbelCYEqzOaQ
	zDk/BH3QSbPiyPNejUBQBYb7MSvZd5VfmWrOdXldVaGqpptnWW1YHoNGO2hkT+J6
	i9aoctqBHEsDRBImqsQAoRlMN6Y/bQpAAjg7xU2zOMLoyE5eKCM7jOWvnj1FaJYH
	whNeXg==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 444uw6gdv3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 13 Jan 2025 08:05:56 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 50D85tPj007776
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 13 Jan 2025 08:05:55 GMT
Received: from cse-cd01-lnx.ap.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 13 Jan 2025 00:05:48 -0800
From: Yongxing Mou <quic_yongmou@quicinc.com>
Date: Mon, 13 Jan 2025 16:03:09 +0800
Subject: [PATCH v3 2/4] dt-bindings: display: msm: dp-controller: document
 QCS8300 compatible
MIME-Version: 1.0
Message-ID: <20250113-mdssdt_qcs8300-v3-2-6c8e93459600@quicinc.com>
References: <20250113-mdssdt_qcs8300-v3-0-6c8e93459600@quicinc.com>
In-Reply-To: <20250113-mdssdt_qcs8300-v3-0-6c8e93459600@quicinc.com>
To: Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar
	<quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard
	<mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Rob Herring
	<robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        "Kuogee
 Hsieh" <quic_khsieh@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>,
        "Kishon
 Vijay Abraham I" <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
CC: Yongxing Mou <quic_yongmou@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>, <freedreno@lists.freedesktop.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736755530; l=1145;
 i=quic_yongmou@quicinc.com; s=20241121; h=from:subject:message-id;
 bh=WMZvY5lJhEJd/KRjqE5MHTAkIV+gcfxlVveIF0j+GGI=;
 b=SsJsZggmYWvXh6y012ygM54qdyw75gBex3dHPqyqAOmwJvibfuxzxZDV0ZeRjorQj8c3Ce6VS
 Rb6Q0ab2wYkBxRxMbQ0FI8BEM7G2EY8tGwNSpLA0pi1ojc0gagMoM6R
X-Developer-Key: i=quic_yongmou@quicinc.com; a=ed25519;
 pk=zeCnFRUqtOQMeFvdwex2M5o0Yf67UHYfwCyBRQ3kFbU=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 6ztsWXmQkNb-zYjcUWeGYBnNFz4-YwGw
X-Proofpoint-ORIG-GUID: 6ztsWXmQkNb-zYjcUWeGYBnNFz4-YwGw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 mlxlogscore=999
 mlxscore=0 suspectscore=0 bulkscore=0 adultscore=0 malwarescore=0
 phishscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501130068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_000601_116744_C1E66B4E 
X-CRM114-Status: GOOD (  10.01  )
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

Add compatible string for the DisplayPort controller found on the
Qualcomm QCS8300 platform.QCS8300 only support one DisplayPort
controller and have the same base offset with sm8650, so we reuse
the sm8650 DisplayPort driver.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
---
 Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index e00b88332f2fed2fc33f6d72c5cc3d827cd7594e..3df6f9e278275d8e19fafb4a397d776e0c606c7c 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -37,6 +37,10 @@ properties:
               - qcom,sm8450-dp
               - qcom,sm8550-dp
           - const: qcom,sm8350-dp
+      - items:
+          - enum:
+              - qcom,qcs8300-dp
+          - const: qcom,sm8650-dp
 
   reg:
     minItems: 4

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
