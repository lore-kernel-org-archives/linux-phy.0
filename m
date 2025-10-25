Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3B72CCD1BF
	for <linux-phy@archiver.kernel.org>; Sat, 25 Oct 2025 00:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QuUxEe1qRKNKSEBznRf+6AjkjmD/7GFlvBvcrsde9Sk=; b=sv0HdtmIyv1L1i
	R82qXMUxDVvYexy3xbfwdUAlhjEi9esgYaMSbA/xl8PDwP5uSxvRHoVxru8RXmk1z75RdYyX4QbAQ
	2v2aOlKtP5zxEkwJLLe2IOzeya3C3HatsYYANMuwMK1s3FDxnymTJsJzZsMaMw8WqgpY/MBNZX2zz
	El4Xum13unytXHxeNKUlGM+7tYPk2NvZtI/VV4crKgGJrWVSkJErFR9YFh5ZFiakhm+jZTLeCbhOo
	MQaUBElexf8SJCAi3zpuWeJGan2T9w4QBpblQ8hUjWvTV3HBNTWu6D3xbg9WuF2BysgB6Tn8uhCpJ
	H4I8z/D0l8cooKDvfKQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCSRr-0000000Al7j-2Yx6;
	Sat, 25 Oct 2025 00:47:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCSRp-0000000Al6p-0RBP
	for linux-phy@lists.infradead.org;
	Sat, 25 Oct 2025 00:47:58 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59P0lE7K014216
	for <linux-phy@lists.infradead.org>; Sat, 25 Oct 2025 00:47:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	F/a1kob5ZcmeRBTwqpB3Ugws3u5wdaGjY6oAzB1/mpc=; b=kkE5zmELkqhqNl71
	yqLxN9Msfga82XSsXF3aU8T7ff1XDbEeM+1gwcfCFQFj0iVurFJvvdwxOlpmArFe
	chMsXHXrcAlq+Dxkhm+PkCtLjAiTlafamNDb6xhTwb9DbGsuG7jBx9XK3X/OwE3z
	TiXOgw/jomfLlB3Z90HFPW6AaqLyjzRINdYeyEd07P8oFiIWnxc91vAWYAN5924N
	MMvsEo2Gnij/VoRc4xkklI3qmEIp+lkZZbdSyear8bQnrRfNkwUbRlgutPlyThAq
	khb4N4MNPxKpvcrctggsge+ZRndW4gqeQmeKUEBKiU3M0/yUPKQ3xiMZvOIvX+1s
	yQuL2g==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v1w8dj8v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 25 Oct 2025 00:47:56 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-33be01bcda8so2632898a91.2
        for <linux-phy@lists.infradead.org>; Fri, 24 Oct 2025 17:47:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761353275; x=1761958075;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F/a1kob5ZcmeRBTwqpB3Ugws3u5wdaGjY6oAzB1/mpc=;
        b=meMO3xF+VNqMoOihRUkhMGwBzXOWGZtUF7iheFAuM3r/fp+CfOtc+OdqE8mkMMnthH
         E8lispCC96uCAV0r0N2B5f7T/KEYxycMLWiFDRzkJ2cKjVWXFBRVVRT8sb9qWWxyTYRe
         ZIx/KpNdWUDfiyWAbeVQxp/1jhsPYf2fB+n8CsdOpfSyv1z3qlaOayQ6gU7ssFcQmm4T
         KZIsqk2DxIgahg6meVUq91tRUhst+SIeNhpgv4rkrFeKx3UNq6crP0fnMFF3dI5XCdAb
         nwZL2nWs2D9hfM2SiHTBpxm9iwgvhUL0rK4Q9xM+Y5HsGgAJ0ZigVGW7Br/oiv8xMEa1
         sSxw==
X-Forwarded-Encrypted: i=1; AJvYcCUM9FlOtnHU7fIHtKAjtxKpnEJpuuUn330ytLGiyUADVSVgeiwc4aYYKiETd5Zpi9karPOLDFEUwbE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyr5yC5I3j6dUtlUx+IOLbulnmXpfRpxXqLSWA4J+e0bS9+NJPc
	8debZALk3jurtHsBzO6DSwzUi2axNzYaqmj0fHFVVizReFzVGZTvrwbnuQzfhMxk7JEyLaNuLEu
	g0F+SRpwvsZ0+VtBhrQgmOEbQ6iOKSihOl/ZikD/lpKG+YNrZjmPtxlFtL/0tNasP2PDs
X-Gm-Gg: ASbGnctIfBK3hdSsMsXM96OTl2p2nILKskNiYW+/jqYQRX06bzAXRo0ZE79Ka6fd7b1
	zkVl9MpVemXq1wJB8sXnCrHyQK1zXDdxNNzLotD0Dj7yKlg6tdyX+CeRDbOvLbeq4sq+IyKFPG6
	XYRiudZOgmIpcWbm4xyARMju/iPZGnGYhMHxJmag1MIRPzxCQp+MMHoLQkczTjatz5/AXy6dvSs
	ysJLLdekoH0iYFgGrZUKvUBAQi5D52l34Zc03dmXbxE/GHOJoUxZIfLg+EA1DJ0FHIm+wSwx4dj
	18dnpKJkv/NervclvjqqIzKoH9+aR5hQe53GfUqzyq5pBLOZ6lnLGEpTeHFOMrWj2y85dBNlASl
	Uiibr3FetIXPdEWMNwkogG6TsPzui8R4SFeP/tQCURByLiRj2VEM=
X-Received: by 2002:a17:90b:28c4:b0:327:c0c6:8829 with SMTP id 98e67ed59e1d1-33bcf8e4f50mr38230861a91.24.1761353274891;
        Fri, 24 Oct 2025 17:47:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHsWduzpj9A0+6O0Mb4Y5n3tBIAhWy4IVRZU2n2C8/tYxem2hrCBYq4qjS6B1Ab7R1Pf4uGJA==
X-Received: by 2002:a17:90b:28c4:b0:327:c0c6:8829 with SMTP id 98e67ed59e1d1-33bcf8e4f50mr38230842a91.24.1761353274331;
        Fri, 24 Oct 2025 17:47:54 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fed3eca8dsm167352a91.0.2025.10.24.17.47.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 17:47:53 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Date: Fri, 24 Oct 2025 17:47:39 -0700
Subject: [PATCH v6 1/8] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Add Glymur compatible
MIME-Version: 1.0
Message-Id: <20251024-glymur_usb-v6-1-471fa39ff857@oss.qualcomm.com>
References: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
In-Reply-To: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxNSBTYWx0ZWRfX62O1Lw1Kn0YO
 aPRWsR+SwdDTyYHo26LlnCy6J7hhHQZVfAdRmGZ+Xg+SZGeHPdVYd7ktKNa2rrerOpcD3gRZoql
 T+XBzY7NrS4KCq/NL8c0l9ypPTPKgJHjLJs96zyLi4/2UY3lY/SBUGDnubMVeFmwlZDenrO9HB0
 zvitqLb41wExBUzm7X/Gvo3y/IA6iL/F1hNLaVeFVEb64MDOVR3zXWrzwd44HmgbqZEYNzxkwdH
 X7eq2AxiURVP9vUev0eFDzHTdlWZJhVXw9hN+BNWTW01CB60gnz/fQXHoLY28mqyUMtRHBSRBYl
 SF2wYYjrUdnYY9wUL4HGC8NzwKrXQsAeZLc4unda2zMVrGYsfAF4C77s0k4TDljAaMR78D5VvCX
 k5wXIVkZcxlY1+4ired5IrLTsovtLw==
X-Authority-Analysis: v=2.4 cv=bNUb4f+Z c=1 sm=1 tr=0 ts=68fc1e3c cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=10t125jH_Dd_vgTH4ywA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: E-c8KXBaiMzQIbeROGlIxxArxuDTQRDJ
X-Proofpoint-ORIG-GUID: E-c8KXBaiMzQIbeROGlIxxArxuDTQRDJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-24_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 adultscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_174757_263363_30004D5A 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
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

Define a Glymur compatible string for the QMP PHY combo driver, along with
resource requirements.  Add a different identifier for the primary QMP PHY
instance as it does not require a clkref entry.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml      | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index c8bc512df08b..915e6024d3e4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,glymur-qmp-usb3-dp-phy
       - qcom,sar2130p-qmp-usb3-dp-phy
       - qcom,sc7180-qmp-usb3-dp-phy
       - qcom,sc7280-qmp-usb3-dp-phy
@@ -63,6 +64,8 @@ properties:
 
   vdda-pll-supply: true
 
+  refgen-supply: true
+
   "#clock-cells":
     const: 1
     description:
@@ -128,6 +131,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,glymur-qmp-usb3-dp-phy
             - qcom,sar2130p-qmp-usb3-dp-phy
             - qcom,sc8280xp-qmp-usb43dp-phy
             - qcom,sm6350-qmp-usb3-dp-phy
@@ -142,6 +146,18 @@ allOf:
       properties:
         power-domains: false
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,glymur-qmp-usb3-dp-phy
+    then:
+      required:
+        - refgen-supply
+    else:
+      properties:
+        refgen-supply: false
+
 additionalProperties: false
 
 examples:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
