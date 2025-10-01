Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31A37CCA470
	for <linux-phy@archiver.kernel.org>; Wed,  1 Oct 2025 22:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ei50KKu89C1TSlhOPKy8FrN1qgCNfsbtbMfKx6p3/vE=; b=rXli1kG+1Ub2QX
	8djQr/VSdyNMUWMI1fU4QwbY3BDD8cioKn/zW83vAa1d3fBJZDoBmQWmfXhqTwe/M6+8TEH7+hmbE
	rWd+vH8et89p4BMpBrKATW+7guASu4RqQzumZXlgujOhj1Mzf+4T1/DnXAp2mLbW8EZpRNC1fs8XM
	5KI6tEUirw+uORW1GbnCb8RgnrvrtACUbaIjjAZva4FvApkR4TMd+GQnWB4rfcPtc0aOF5NQqAwun
	C7BTNfQWBHJwXsNNUrv5j7AVSqkOYxBvIIH9GIW5nTCytNpuuU9zY8ADoE6IkM8slwUip1/597cEK
	k10qIMyzNBPzgGXYnMJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v44xD-000000096sT-447F;
	Wed, 01 Oct 2025 22:05:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v44xA-000000096qy-48v1
	for linux-phy@lists.infradead.org;
	Wed, 01 Oct 2025 22:05:42 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591IbsnX018668
	for <linux-phy@lists.infradead.org>; Wed, 1 Oct 2025 22:05:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=AmSkEJDa8qK
	4eI1/7mGS5TmnjFBscoeycTZ9zBe5108=; b=dKwbLIsfNPcO+ULRRhRe8w2TZNd
	u0L3Z45LLgosIMKpaS2NImZTRpqIK6FbG1ReVPFsh01J39vhuXQixvDGODvTcw8+
	ch54TADP3v3w+SdQaAgftGS9jpjHQCNcAM3Ljr31+no+3EEd/TVqZFviw6kGtxhd
	gNIdFAl01QH7NT3/qHFliVIBz4EkEl08G0LjgZQsvGhy4RB9h/YfaTkRnexXseOA
	GGcpRMxSgEVyj7CQ7kZYv1GHRR7AkmWsta887au533dP75ZZBppTu/TFaHS8Y3r0
	2EVtTA/94Rl8ZW58aCGEmfsSP7JskCRX+5azKAdbTvQqzGGEPz9AiXoJptA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49gyu1a9w8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 01 Oct 2025 22:05:40 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-27ee41e062cso2945265ad.1
        for <linux-phy@lists.infradead.org>; Wed, 01 Oct 2025 15:05:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759356339; x=1759961139;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AmSkEJDa8qK4eI1/7mGS5TmnjFBscoeycTZ9zBe5108=;
        b=Z+m90NTlsZD6c6I5KgZi8uG+6yNfHUZTRJjh+4jaAYutrmRWmLDGnJzTFdSwyTleHu
         O6qdVc9cDTXSCOsC2SUQUPVyBcV3QECRpC77h7wOglgcXX9lclIzwbM/JbOFSreQWr90
         dY9rMctW7hazEszTrVloOjpO5IM4JxXn2kohxeAYxS7Q37PcrakWke65ZlrjSS0+oWjR
         MdwyEfZqnf2UEhgjlrqpL1gC8j9AoGIkhEu4xV+8Iirv6mlSihINSYA/Iv+V3fihufvs
         RoV7Dam/QIAPC1OaoN4gakEa6o8aIarqVIe1MchbNZ+WYFVGjXLmNliZmKXKthooeLqT
         k6DQ==
X-Forwarded-Encrypted: i=1; AJvYcCWe5rH+TzicpSBtVHjRU8nz1zZAlR3G6yG8/7G3N6kVD+7Cys+rESeNrD5LqYzf4nlz3DbuAD8bros=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz89ob2Sqs6a67q//o2I0Y15bfh9uX/fSmhygUwGlp9JSOETPf4
	0OfY1EV23LzvHtcDTDyCj6QYLSba/7K+SghwBppLLOuGK7Mi7p77L5wpy0Wl1agzDaC7x+hR24Q
	8lEG0oIhiv0Pbgp6+VF/CNdeCtUbJ448mqIWGCpLFA+N1L1BcX8Z7EKSSlUaSBqHAe7Ph
X-Gm-Gg: ASbGncsmy2kpTOyWYknnMfWNDYz2c4N1hAZToJ1KzRNnnWr7bv52vzySpBXzPYfHchJ
	hvP6n1+GkO4Aw0Bg0Inz2jBEEURPZK7kJo4OwCAPlqSqi4rj6WgzGnZP4TJR2LmsttxPK7wF7Tz
	591cZioFuUygoNSsFHUnmXjpOR47q1MsG03OTKuSlvWofn+VrCRSR1UvcoJuryHB2gYsbFeRpEl
	r7lbqVnGPgdpNcyNw2H4Vh8HsEgCvdqvMNUTThXAmCrldsEAwJB4ZtUhSF0/Of/XFHZbbuhv+FS
	a1CZDkGgLtdTLXHsafGnEIpUAb3iSR9Jc00EhGPRVQXAbrsL71MR51o1UVsmyJorKV7stJNDtFu
	dPNhuNUwvlerW2SuNoDyMIA==
X-Received: by 2002:a17:902:d2ca:b0:26c:4085:e3f5 with SMTP id d9443c01a7336-28e7f328c06mr62014585ad.50.1759356339079;
        Wed, 01 Oct 2025 15:05:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFhj3DfDVsTx4QSOHS/bgok/IQ+EqC9h4ebMhcNTaCNyglT/+UWr5/pqQ8NnXHTWARe0GdZ6A==
X-Received: by 2002:a17:902:d2ca:b0:26c:4085:e3f5 with SMTP id d9443c01a7336-28e7f328c06mr62014215ad.50.1759356338559;
        Wed, 01 Oct 2025 15:05:38 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339b4ea3c3dsm702085a91.5.2025.10.01.15.05.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 15:05:37 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v4 01/10] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Glymur compatible
Date: Wed,  1 Oct 2025 15:05:25 -0700
Message-Id: <20251001220534.3166401-2-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
References: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=RfGdyltv c=1 sm=1 tr=0 ts=68dda5b4 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=eoTMOhb7NpBO2Q1ca4UA:9
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: mGMsniut2-gFyRH8w6bNhdK8RbzaK5aJ
X-Proofpoint-GUID: mGMsniut2-gFyRH8w6bNhdK8RbzaK5aJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDAxMDA1OCBTYWx0ZWRfXx2SA03DELwOb
 52dzSxRffu+s1IWWYAMsnwoZTGBMf0ddbN2hn7bEp0Ief2Pr7xuh4tsTuOA2y9VneTK8W5oOCBg
 BvVhy6o3ogBchdrnrNzmL4I8EaSMCourpoe1KdAZPEkoQjgyYAzkvxassMfiK2vxlPZlT6Q79zr
 t4kES0MTvXzIyLu7kcCC8u+Q+z/ndZA8gSHEjXJ74VmQGL2V+oinw2DETBHy410U0tBtchquM4k
 q9ZJ8m7fY0TLBP/DnH2YnkYVzWy2sGdAAbpKso8BM9E4klcfnjOcFhkZLG8cMahjEhRaltmZ5SI
 c5XXGYxkZnUWK74ij5gpE/H7mdGiBLpzkJJGQZsxpeGI93AqUzN/fzWowQHQ85Qzo0yUNxnyOeJ
 q4nCCjAUMRhzSwrhS0dYezQgzzZIzA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_06,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 suspectscore=0 phishscore=0 bulkscore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510010058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_150541_027612_4A0406EC 
X-CRM114-Status: GOOD (  11.09  )
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
resource requirements.  This adds a new requirement for a clkref clock-name
for each QMP PHY.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 76 +++++++++++++++----
 1 file changed, 63 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index c8bc512df08b..377d830f0855 100644
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
@@ -41,12 +42,7 @@ properties:
 
   clock-names:
     minItems: 4
-    items:
-      - const: aux
-      - const: ref
-      - const: com_aux
-      - const: usb3_pipe
-      - const: cfg_ahb
+    maxItems: 5
 
   power-domains:
     maxItems: 1
@@ -63,6 +59,8 @@ properties:
 
   vdda-pll-supply: true
 
+  refgen-supply: true
+
   "#clock-cells":
     const: 1
     description:
@@ -105,6 +103,22 @@ required:
 
 allOf:
   - $ref: /schemas/usb/usb-switch.yaml#
+
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,glymur-qmp-usb3-dp-phy
+    then:
+      properties:
+        clock-names:
+          items:
+            - const: aux
+            - const: ref
+            - const: com_aux
+            - const: usb3_pipe
+            - const: clkref
+
   - if:
       properties:
         compatible:
@@ -113,21 +127,45 @@ allOf:
             - qcom,sdm845-qmp-usb3-dp-phy
     then:
       properties:
-        clocks:
-          maxItems: 5
         clock-names:
-          maxItems: 5
-    else:
+          items:
+            - const: aux
+            - const: ref
+            - const: com_aux
+            - const: usb3_pipe
+            - const: cfg_ahb
+
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sar2130p-qmp-usb3-dp-phy
+            - qcom,sc7280-qmp-usb3-dp-phy
+            - qcom,sc8180x-qmp-usb3-dp-phy
+            - qcom,sc8280xp-qmp-usb43dp-phy
+            - qcom,sm6350-qmp-usb3-dp-phy
+            - qcom,sm8150-qmp-usb3-dp-phy
+            - qcom,sm8250-qmp-usb3-dp-phy
+            - qcom,sm8350-qmp-usb3-dp-phy
+            - qcom,sm8450-qmp-usb3-dp-phy
+            - qcom,sm8550-qmp-usb3-dp-phy
+            - qcom,sm8650-qmp-usb3-dp-phy
+            - qcom,sm8750-qmp-usb3-dp-phy
+            - qcom,x1e80100-qmp-usb3-dp-phy
+    then:
       properties:
-        clocks:
-          maxItems: 4
         clock-names:
-          maxItems: 4
+          items:
+            - const: aux
+            - const: ref
+            - const: com_aux
+            - const: usb3_pipe
 
   - if:
       properties:
         compatible:
           enum:
+            - qcom,glymur-qmp-usb3-dp-phy
             - qcom,sar2130p-qmp-usb3-dp-phy
             - qcom,sc8280xp-qmp-usb43dp-phy
             - qcom,sm6350-qmp-usb3-dp-phy
@@ -142,6 +180,18 @@ allOf:
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
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
