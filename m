Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAD35C02185
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jan 2025 03:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=99U0hZbzo1UdAzNIoNscUSowVyKSwjA7mL/VRYvIGf4=; b=b8fqhojeB1I5Ik
	9NIAM3gnjb2zlWOBbel6JSMfRPI6gAorXpZtWbSvvu4bfhiqBHPutWOzFj7d5hctU2/cBtKhE4dSg
	xLeprFnZqFxzc3FAhj6bCWjIoovbZAXZ/IeOXueif4gjpL/sW9sEbZNdJULeGWhwXZ8w3z2KzgppC
	rA1xLDrpTS3XOvx+n8v7vtV70ACz0MAUXIiVIhfd5IiQSEht5XBgWHwnCG6j4f/dgxymksnqN7VcF
	UyLl0iZUCN0mIQR0tO9Nsc8M11m329ka88qWpsqI7O0D5ZjSGiYtqk9vWvq3O2OJ+q30st2Qdpaal
	A/SYCM4HbxsE29LFw0HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZip9-00000004fit-1LM9;
	Mon, 20 Jan 2025 03:51:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZip6-00000004fht-21gq
	for linux-phy@lists.infradead.org;
	Mon, 20 Jan 2025 03:51:37 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50K152Gb032273;
	Mon, 20 Jan 2025 03:51:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	444nZ169tZ+Tedf8qd/ScLfsd4haVXiFaAKNEXWkQHg=; b=LSCvY7908cDGT/m5
	OAmMRGvT7mGw0r5uLSHUBX8ipYO1MwKL+/pgTlg1tts6455tUM069b/BkyaCsVVA
	PJEzehA9ziVNz4ckBaEMX8iWg8d05FCeImYVN1/U2UqfMQbGzE0OLFlJVmyGtnt3
	I1IdfppKNbAOdQlSiiuk+zFzo/hVW6brp9+qOcLHGG3KKjBZ5+G7eE7La9G0Gucz
	f+VepNgekHrRlUm7S19Ze8aS200NEzC2ZspgipVi2t317YiYPELWT8S+ew5cKVxf
	r2IEfl20BHc2k/FYpt0LskR+WGUcYANwT/cdK8szp6wcRahcSxtVEAx76TWEMxIc
	tsm1/A==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 449cgr090v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 20 Jan 2025 03:51:28 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 50K3pRCi010319
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 20 Jan 2025 03:51:27 GMT
Received: from cse-cd01-lnx.ap.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Sun, 19 Jan 2025 19:51:20 -0800
From: Yongxing Mou <quic_yongmou@quicinc.com>
Date: Mon, 20 Jan 2025 11:49:19 +0800
Subject: [PATCH v4 2/4] dt-bindings: display/msm: Document the
 dp-controller for QCS8300
MIME-Version: 1.0
Message-ID: <20250120-mdssdt_qcs8300-v4-2-1687e7842125@quicinc.com>
References: <20250120-mdssdt_qcs8300-v4-0-1687e7842125@quicinc.com>
In-Reply-To: <20250120-mdssdt_qcs8300-v4-0-1687e7842125@quicinc.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1737345064; l=1145;
 i=quic_yongmou@quicinc.com; s=20241121; h=from:subject:message-id;
 bh=WMZvY5lJhEJd/KRjqE5MHTAkIV+gcfxlVveIF0j+GGI=;
 b=0+L+8fEeRClGszSvhIVsThOFBsV9eyJmASsgzN9ke5gQdu1KbUB26HuPe+L0OyFFSTE0PnIOO
 LndBy19/toQAikjA0N5ljcjUWAqmV/d1mGLVllfAafpHP/tPT+vA30h
X-Developer-Key: i=quic_yongmou@quicinc.com; a=ed25519;
 pk=zeCnFRUqtOQMeFvdwex2M5o0Yf67UHYfwCyBRQ3kFbU=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: K5y9p-IokYUanIHqwfGtarnM5n9mo7Mh
X-Proofpoint-GUID: K5y9p-IokYUanIHqwfGtarnM5n9mo7Mh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-20_01,2025-01-16_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 malwarescore=0
 impostorscore=0 phishscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0
 mlxlogscore=999 adultscore=0 mlxscore=0 clxscore=1015 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501200028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250119_195136_636603_58CB374F 
X-CRM114-Status: GOOD (  10.49  )
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
