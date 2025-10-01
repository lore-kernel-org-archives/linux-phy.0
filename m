Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE7FACCD182
	for <linux-phy@archiver.kernel.org>; Wed,  1 Oct 2025 22:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dDE9hP8QsL2VuwrFu+6NG+/yKllWIDb0OUXe71iMIIU=; b=4qedpW+6EmEqhV
	wp4US7vRB1ygs+hK3a5OoRUdMq2MUL60YQxFkk1z+zQ1Kypw8yDoHvIl6JbvREB/5vnubj9rqUg+9
	KcChW9NzXSPvQH2CHSjq1PIri6nc20Hb+8UchrPTSHalSwA1xNZJNyppqvvPnq65jeqJ0v9FEaahZ
	3ZTKNdGqE0YvxqmkqLZI76AF+S9aAPpHm3Lh0GebVgYbBng+KtYy6rTeppv4hY573Nxg0Z0KwJuoe
	nJTm+eOOldzUtDHkBI5Uroa5xkLnexgFgAPSLZ5chXKKTbzlTfFnI2f6epEj8QymOn6OWsuvlclHW
	XP7BBOcqjUDxv7daXF8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v44xE-000000096sl-1n1P;
	Wed, 01 Oct 2025 22:05:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v44xB-000000096rW-3pw6
	for linux-phy@lists.infradead.org;
	Wed, 01 Oct 2025 22:05:42 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591Ic2Nq005570
	for <linux-phy@lists.infradead.org>; Wed, 1 Oct 2025 22:05:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=YYQJM1FZM3o
	3DDgyVmJ5oX4Xtvn4+xxewRNc42qivew=; b=hj4ciPudSQPTU+U1pI5THoE1fAN
	0Fc3bwT1gTOt3MkyH6+BVYF+ABdncobayX/s5qw6WDfRtpJx76XsqkVgZOxP/PB/
	3pZRr6YfOiy2Xtn/Q5jkGEmL1jfE1uryTv7JUMJ3Byc+S6DUZu6gpiZzzFpakjFS
	3YITEzDydigo3lz9IpMeexwko8f7p5jMBfIfIAN0GQ6SYMQW6oKjTdIIlipG3/ze
	jtz8mWQqYIeAiOJyAaGLWwzZQjC4zZHOjOQXx29uSOfEaySQsD7O/l5+mrZ+orh4
	AZ+GQX9NWSusmaWdV2rC3Mx9YbaW+ZQlMd1TVD8XZS09dKJOmLeNT+KODWg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e851p0pf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 01 Oct 2025 22:05:41 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-33428befd39so767340a91.0
        for <linux-phy@lists.infradead.org>; Wed, 01 Oct 2025 15:05:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759356340; x=1759961140;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YYQJM1FZM3o3DDgyVmJ5oX4Xtvn4+xxewRNc42qivew=;
        b=IczHuQ7RupiPce2xI4jX76HgpXAEWdzB3BtVxi+AkDNpTeXxfrJ0+CY7TxIencYy6u
         /KV/yRMAnqF731UzmGdJG3Gu9tsFNb3vlgKLTX0PdZKSqZyWGg6i+XR/70FN11FFSEFp
         Oy9IveDZQZMBVrocSLtvWizW3KK5zsy5NcnDw6FaNV+ZNtIzWGYIv/HVBK1Q8BYGrFbp
         7csLkQU2LPJlGNXk/ZmpSf2b92AssQvameXDNMJEGcO7mY0g+u7/I/6IO/yFwCJI+feS
         mBFW+KZS70HHuj1PEany88cVbLdUcXZqbRdY6M/N9D/jcitqI8s8Jbu5UNzuDgwqto/R
         t5nQ==
X-Forwarded-Encrypted: i=1; AJvYcCVihEnPJM0LiAR1ihpTYfUAA2lq6GSVZsV9HgLbFyVsWLOxJJbLL86FI3Fnq4F/uTtPaA+ItdMAYEM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx6aR9hWiem0wLP4rpL2DKamx8ZHhpxa0gx/JaadWR/Xcskyquz
	rGFZXoFtMjznnc1udHjielTL5AUXYu7GgHTom3m6F2MtreKzXGz0DoP0oWaAJg4V8tqrDDRP6nv
	+qJXkXGo2MXsvs/Ya4dSYu6iUHdm5ywa2SJhxCG+oma6OP+snMkaHiBII9TwW0nl2MHyi
X-Gm-Gg: ASbGncuZ4Xib9c+IoyeG1LhDAAFni2qHthNjOexv7oCLaHCpAX7Z267SMdnM+Rn1kOx
	qfBV5GMvBdmKwj0sw3v4Pe1J+Nuw85xqzYfyDhXnwMJDRT/9P9RETmnhr+8kO4WbCtQQTu1/sdl
	O+x2wyOELyToKAwvovGDV6u3JUIh7+7n5Kefu1oBdlQAjWQEdJ/cpBqa9S9lHvvvpQKUZltKCmT
	br6p8yFkpwBNBqAL009xlHPmeaOCW8sjXn4DNYItgvbaZ6zxqhSLGv2ITECBQLoUwZLi8a5CX4i
	oUEvJzWyhDCjmNbssTXLwtWKp1LHaFASCN94yHifSV+9m9P1ZBWnbtS+XQaGg29cmkm24nGl+Oc
	j7TIHKOFOM9l06Svl7Blgmw==
X-Received: by 2002:a17:90b:1b0d:b0:335:28ee:eeaf with SMTP id 98e67ed59e1d1-339a6f6b08dmr6125786a91.29.1759356340444;
        Wed, 01 Oct 2025 15:05:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFnpFbmIm/22XzKrvgj3DpJIIWDvuNtoI8e9ISV9nBUIC51KNVUubMK51OjfPXVbhfl8vYXjw==
X-Received: by 2002:a17:90b:1b0d:b0:335:28ee:eeaf with SMTP id 98e67ed59e1d1-339a6f6b08dmr6125752a91.29.1759356340029;
        Wed, 01 Oct 2025 15:05:40 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339b4ea3c3dsm702085a91.5.2025.10.01.15.05.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 15:05:39 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v4 02/10] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI PHY compatible
Date: Wed,  1 Oct 2025 15:05:26 -0700
Message-Id: <20251001220534.3166401-3-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
References: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=OJoqHCaB c=1 sm=1 tr=0 ts=68dda5b5 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=e4LYGitkWRZSOGXTHbEA:9
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMiBTYWx0ZWRfXzJLY9KGx2YGN
 2x9irJlIJ3BzdXMT7LoSSmRjPJgGqxNXcSAA7oQ20qSi0Vgt9pKAnRFSKeA3VCE2YDNy/q1OwUB
 dHZfkcC+Bin2zFSXCJ33zv9F96RZBdnQJd6uLTlPQqPbxGyF6SIbr9pZO/x7aut575Na9+5ZcG9
 By1p8Wgd6a26UJ+7I1PvtF8QxHkd1mzq/zCGWJs9zLm7TcQ/Kz+wQv82/JDg8bI7c3TQ6Xh4Kfm
 fbi3aKrRBdHtMPWV7OwtLue7+SIwEJcM42TcIdeQ2sYAZO8SrouiM5wuvzHuhzFxV3qj9bh7T5A
 nPOAIKkU/JgB70krc2rhfGLagRlg+K0EVy1uT1HkiUm7+WRIbNis+hLoEpXWedZmMK4wPsr3XcE
 4pK8u2hk5HPT26HvUeb93i++XSZyww==
X-Proofpoint-ORIG-GUID: i5wwcPYkPFFV-Ea1AFr3kb7U2MeY_0BZ
X-Proofpoint-GUID: i5wwcPYkPFFV-Ea1AFr3kb7U2MeY_0BZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_06,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_150541_953212_8D31162F 
X-CRM114-Status: GOOD (  10.84  )
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

The Glymur USB subsystem contains a multiport controller, which utilizes
two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC, and
the required clkref clock name.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index a1b55168e050..b0ce803d2b49 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,glymur-qmp-usb3-uni-phy
       - qcom,ipq5424-qmp-usb3-phy
       - qcom,ipq6018-qmp-usb3-phy
       - qcom,ipq8074-qmp-usb3-phy
@@ -62,6 +63,8 @@ properties:
 
   vdda-pll-supply: true
 
+  refgen-supply: true
+
   "#clock-cells":
     const: 0
 
@@ -157,6 +160,25 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-usb3-uni-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 5
+        clock-names:
+          items:
+            - const: aux
+            - const: clkref
+            - const: ref
+            - const: com_aux
+            - const: pipe
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-qmp-usb3-uni-phy
               - qcom,sa8775p-qmp-usb3-uni-phy
               - qcom,sc8180x-qmp-usb3-uni-phy
               - qcom,sc8280xp-qmp-usb3-uni-phy
@@ -165,6 +187,19 @@ allOf:
       required:
         - power-domains
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-qmp-usb3-uni-phy
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
