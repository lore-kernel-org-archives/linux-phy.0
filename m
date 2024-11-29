Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2E51D6EBE2
	for <linux-phy@archiver.kernel.org>; Fri, 29 Nov 2024 07:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGluQTdy0ebriTyyxhl6MxZ4SPd2X9Lnjcvgd8mc0SM=; b=iPlXg4tR3WE78i
	P9hUl00mC7YtmrmuWbYXa7T4sKJOellewStiQHmn1Kaj5Id/foyXF+8hUPQBLZ2pDrk2kHJop6trJ
	Gy2HCcIwldGv4UUfSZPTDzHruEa8jzaenAv3hltnTsR62Rn3CXOWFJk0WU1BQHRppBZ31RYbMADM8
	ZALUWjwhVEQszYYQggwykLbploxQaY6MhGLgQ8FYBPvbs7fn3KD7F7QDvtafmRkjZISaEFS10r8ht
	Sao0gY1Ft68RMyVoMRqfbtBXpROlcbLsGuOLEzYMxGj1GNuJ4osolbFKVUUymUZO0Ej58R+CxXDot
	us9b6h0pGowQg2zrDDhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGvu0-0000000H7F2-32Hz;
	Fri, 29 Nov 2024 07:59:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGvtx-0000000H7DX-2k3J
	for linux-phy@lists.infradead.org;
	Fri, 29 Nov 2024 07:58:58 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4ASLbHKQ020107;
	Fri, 29 Nov 2024 07:58:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iHDcSrf7IMXqPzRGIJNsXzGNg3ufK7n3UP/3AjN8dz8=; b=TKPgJwTfP0Mf0vW0
	BKZtquyOyqvT6/Vfqex3GfVN7b7FCLj9KFeBvBrykegvVLGJli+CtFpYUwV8x6ck
	rGv+N3V6j03/k+u22Fma6MG00JLqAOvoVTDK4MUmZS+ma8FM4uRtQ6If1gdXXjbX
	BNyJLgXz7jNCi9WmzVz/Ti6JdxoDscBEyemrM/YJrkug0aJ3n8k+VSIW9eI3fE2S
	MsryAINVmgjPxaPygtvFnib13hBJYxyERHX9hEu1uN9erdUDxBJli59VgsCfIOn4
	BQf8SzR0Zpb2psVk8Bezr7ZZKNNtHb9Pp8uLQa8Bg+rdIvv5I5VLLvAUUjBXWeQr
	e++Ddg==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4366xw4ugt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Nov 2024 07:58:50 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AT7wnkW001991
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Nov 2024 07:58:49 GMT
Received: from szioemm-lnxbld002.qualcomm.com (10.80.80.8) by
 nasanex01c.na.qualcomm.com (10.45.79.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Thu, 28 Nov 2024 23:58:41 -0800
From: Xiangxu Yin <quic_xiangxuy@quicinc.com>
Date: Fri, 29 Nov 2024 15:57:42 +0800
Subject: [PATCH 2/8] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: Add DP
 support for QCS615
MIME-Version: 1.0
Message-ID: <20241129-add-displayport-support-for-qcs615-platform-v1-2-09a4338d93ef@quicinc.com>
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
In-Reply-To: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
To: Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar
	<quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard
	<mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring
	<robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul
	<vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Linus Walleij
	<linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>, <quic_lliu6@quicinc.com>,
        <quic_fangez@quicinc.com>
CC: <linux-arm-msm@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
        <freedreno@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-gpio@vger.kernel.org>, Xiangxu Yin <quic_xiangxuy@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732867103; l=1923;
 i=quic_xiangxuy@quicinc.com; s=20241125; h=from:subject:message-id;
 bh=26v/MR4YbXXYBMcul2oh+5YPYvjVNeh1jkpnZvHpQKQ=;
 b=z0z7ZC7r0DaeTTqW9anfyuAEXClEattvH1nZdxTSeGn7Y+lu8EuWC1u7xS+Oh99ZnU+8wzxgI
 /khh/IoPWkmDeYe3RfdrJBnpsLB6MntI0NI/NOZ4yzcWR/BTwQwrfNi
X-Developer-Key: i=quic_xiangxuy@quicinc.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: -7dMOkuuHx3f_bJY3OAOfozjcJ8jhffl
X-Proofpoint-ORIG-GUID: -7dMOkuuHx3f_bJY3OAOfozjcJ8jhffl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 malwarescore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 clxscore=1011 mlxlogscore=999 phishscore=0 adultscore=0 spamscore=0
 mlxscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2411290064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_235857_699761_151AAD34 
X-CRM114-Status: GOOD (  11.51  )
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

Declare the DP QMP PHY present on the Qualcomm QCS615 platforms.

Signed-off-by: Xiangxu Yin <quic_xiangxuy@quicinc.com>
---
 .../bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml     | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
index 1636285fbe535c430fdf792b33a5e9c523de323b..eb21cfe734526fce670c540212a607a016cedf2c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
@@ -18,6 +18,7 @@ properties:
     enum:
       - qcom,msm8998-qmp-usb3-phy
       - qcom,qcm2290-qmp-usb3-phy
+      - qcom,qcs615-qmp-dp-phy
       - qcom,qcs615-qmp-usb3-phy
       - qcom,sdm660-qmp-usb3-phy
       - qcom,sm6115-qmp-usb3-phy
@@ -47,7 +48,7 @@ properties:
     const: 0
 
   clock-output-names:
-    maxItems: 1
+    maxItems: 2
 
   "#phy-cells":
     const: 0
@@ -62,7 +63,8 @@ properties:
     items:
       - items:
           - description: phandle to TCSR hardware block
-          - description: offset of the VLS CLAMP register
+          - description: offset of the VLS CLAMP register in USB mode
+                         and offset of the DP Phy mode register in DP mode
     description: Clamp register present in the TCSR
 
   ports:
@@ -128,6 +130,21 @@ allOf:
             - const: com_aux
             - const: pipe
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,qcs615-qmp-dp-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 2
+        clock-names:
+          items:
+            - const: cfg_ahb
+            - const: ref
+
 additionalProperties: false
 
 examples:

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
