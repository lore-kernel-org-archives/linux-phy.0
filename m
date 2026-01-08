Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5C86D1489D
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jan 2026 05:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mC1HXYP6mCsz9Bpr95rrkJnGCQegfyosbmz2vzX8Xbo=; b=Mxrh4D0gw+rxR+
	Gi4EoZv63rCpx5kJP9GI7dIHwxFkVWRJKZa4tMyKinq1KRGfy5Chk2HApCcBikhg5oOxUxVcai45P
	g2RoPoNuNxnJc4RTBtRLytyj2LTjpI5RK4WjNotWIscqrwa34FEPsljDk/0Y6CssJdP5djIIliup6
	CT0WDk99mlkeqDiYDKckFIG3sWLMF8ekyfQSvuR8dxnE8iHXACn3RDnskPeMcK/HIW/fVhI+3+9Uf
	yEKUXDYY0EED26Wk8OKhMnrzDNmeQv1H+xcYBCQ7hqt7x+29MxGxygcYbSPvQSdNngOnP/XOKLQhJ
	BsAsoc3ofZdioY0tnrDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdiWL-0000000FwlZ-1v5m;
	Thu, 08 Jan 2026 05:25:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdiWI-0000000Fwkj-1cj9
	for linux-phy@lists.infradead.org;
	Thu, 08 Jan 2026 05:25:15 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 607No2Zu472972
	for <linux-phy@lists.infradead.org>; Thu, 8 Jan 2026 05:25:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=QiKK49SklwY
	0WsWCb06XGTvckoM6EZlMeHafpb8hvoo=; b=d592vm40mu4/0DACTDUa4lEI6VO
	AjD8LoscyxcC+ucmuTlZlyWzI8i2JcwlryW6jWgizcyZvDKx/PWnkVXXBGeMHZzq
	tte+AOfSMrdKL76uXRe9lStD/YQX9x9L9DyJfZRfLLHyFizzDyD7lIWitFGMr3YY
	YAO/OAEEUpk5kRrgXp9DK8Q1PmWl0642J0+nhp1yHI7fmzrIaDbZvDok+jXWw8Hm
	P9vDO2FygZvZ1Eg0CWY8joK/AVqVmBImpTyRjB0DgmMt2/hGKqjB+ek7OMzGemJj
	6PKPEuXto1dmdMZn2RX3PZ5CmK0RDjdYXZkhmR/QzNtx5QKM0cEOxEVqCTA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhuy71tq6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 08 Jan 2026 05:25:12 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7ba92341f38so2957794b3a.0
        for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 21:25:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767849912; x=1768454712; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QiKK49SklwY0WsWCb06XGTvckoM6EZlMeHafpb8hvoo=;
        b=W5vBFoeh952Bk0syNAqdvBQPIuHEMa+4MA9b3dvaQLmGDrxC678EiONN7feFOy46n/
         y4M602xu1B14JqcUtguICwozlYtLHEIAv/gsIlOrlNOLIFRgCcQN0yriiaCzbGv0oX3e
         fYdYNgF3G1GokcinFgKsKy03pQgKn1ly4dOlH/YaCSN3pFbNtU5pIkQxeQxo2UFc6UNJ
         0wUwnJ20rCliaWNu9Vy4PAyXM9FM7+q0Y9YYN3v0i0w2DglxH+jLBjErwhCSaLWWc0Wc
         POuKJQe9ph2+Bng0Zzipkq328jBJ9zUA6XdyivRrdVbM1PrtfDR3CxRkznQHG/MYup8L
         nzgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767849912; x=1768454712;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QiKK49SklwY0WsWCb06XGTvckoM6EZlMeHafpb8hvoo=;
        b=sVFkd/QhQ6dO+NTgZ68+AcS+cnZtSDmHcbtTE28A7U2IY2uUCzVliHJIjMisbOLT9K
         XzGbd5StBO9D0Uggvp6MPJVhW2aW7v1K+L5BnB7ggolcWh2hTYkonALMdHQLIc61SqW6
         cOP8E9usXJSOVBfjB/Qzslymhn/H+yoSbfPol5Sn4P9NACCIxtIu3btGBaKnas4SXl8A
         qblFTq/RawtVLpbLeWEELfSkCAuUcFcnSOEEnzD7NH28zPpHyFn79JDc1j/lQnciuuXX
         g1q24T9A16Q7vjyqURFNKEC2fxqmx3fifiS4Y7ehvQ3+IahMdoO/JnLd9k5GIuRn1gTy
         uZrw==
X-Forwarded-Encrypted: i=1; AJvYcCU6XDJzOvHvY0zErEDai1BzSdMI86BwquOE5XOzYt+QYE51+zsJ3zSuGYhQmWli7FBbCfnHPnSGB1I=@lists.infradead.org
X-Gm-Message-State: AOJu0YwpVZ4hcQDf8pm0xs2+kLaMTJau7qdyjik/x8+jBddwlFcQQ3QB
	w7r0WvDu8N8j/mxwV6UcBjc5YrpHe/bRhP5NJUSZ2iOu+8I/SENsk3FCHlCH0qzxk1xEkfVvEhG
	kSJnFz7bveYNGaEf//jpAeHVChVv6LG6u0AGvDzho/K83RpPTrrPACM7FaA1FMB+MIV+z
X-Gm-Gg: AY/fxX6Y6J5t4ZiJbCKMIaZje2xdNPQptZSL4pD/Xe7UQ7g3EYTZ95f2Z9RGkAVymWw
	Tcof9Pma3Lhl3Amdky6Sf7Q8mO+yGxERCW+iFZCKV3GS3qzYq+SiJq6elyjsx4xNfskE79fIBxS
	Ak9MjRmnf/cINt+JUyK/eAOQ3A/q4JUaAOvyME8AN2ACy1s/XgaRL3XiOz4ey7HnvLRlr6LKS5K
	KT8nylBGuVKXQGUD9Jhxb2RrWrl5Ja6kcJ302jTTF4Y4p42X77y3Hvszi3XwJWbRJaHbDzrzBOg
	Jg9EBZF+lYS1P75dVHirkPaX7XpjUk6/aj0aP9OO36pumIo2y3Unlwzqk1W60fxsSPUInlgAkRF
	Yv4CzlYjmaHCXLEZkKnMpK9VhKgJmvLW5QxZ+BUV/IW4A6fE=
X-Received: by 2002:a05:6a00:408e:b0:7e8:43f5:bd56 with SMTP id d2e1a72fcca58-81b7ffc240amr4257812b3a.66.1767849911874;
        Wed, 07 Jan 2026 21:25:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGMMICqXZmh5lDhdph4jSvCPF93/oOPQz1jvkoxDvv+bv35kxRIrQZx1Te7T+E+L2liK0qy6w==
X-Received: by 2002:a05:6a00:408e:b0:7e8:43f5:bd56 with SMTP id d2e1a72fcca58-81b7ffc240amr4257783b3a.66.1767849911380;
        Wed, 07 Jan 2026 21:25:11 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bb0de2d2sm6415534b3a.27.2026.01.07.21.25.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 21:25:11 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v3 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Kaanapali QMP PHY
Date: Thu,  8 Jan 2026 10:54:58 +0530
Message-Id: <20260108052459.1819970-2-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260108052459.1819970-1-krishna.kurapati@oss.qualcomm.com>
References: <20260108052459.1819970-1-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: UGTQMjJlmkqRNIqaRL5CK8x660Kj74hP
X-Proofpoint-GUID: UGTQMjJlmkqRNIqaRL5CK8x660Kj74hP
X-Authority-Analysis: v=2.4 cv=DZEaa/tW c=1 sm=1 tr=0 ts=695f3fb9 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=2IkYd7TCTIqYiAcLhPQA:9
 a=OpyuDcXvxspvyRM73sMx:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDAzMyBTYWx0ZWRfX7Lj7nr7ceLDe
 VBEkA2KOPisxt73EB6Xp9ndM0KvBtcC+l1TgLPBJRBiY1mGvvI4vKYDWypvbgIJJG7TkHIOrRN3
 YqRzj634ygc4VMa9JcNZdvNfZVzRwsvJItEkcagDRaCnr38ae4u2b6tSp1PBHn7op1lJMnfbQFx
 Uc67ZG7jokqcZHqUufolpXqEnuVUXmJRgcd44gysAJOlEbYwXvAdLlDb4iTOwjSq58RLGzbfOt/
 ibhNUcaYFox58pvxk5tEvTkxUmRB3dX+OBuWTob8XjtC7bI4GXzTLQfdNn0qZeJ/t8Qa34GqUKc
 k/X5AjGcNnOKJu0z2oLv7q9XVO7jU/sC4h1KqqkI075sBBUuNvS7vk14sLFIYNkkHosZvAoIXiV
 I7nl6wXqno/o1kz3tu5A9d87suPPd9d7+VYCwoSwowTXEEQ2tF2HgduTcPkNcv1ilOJCDepyZ9N
 VlewkBPSgutC3U7NYLQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_05,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 phishscore=0 bulkscore=0 adultscore=0
 spamscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_212514_549146_9FDAEF45 
X-CRM114-Status: GOOD (  10.96  )
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

From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>

Document QMP combo PHY for Kaanapali. Use fallback to indicate the
compatibility of the QMP PHY on the Kaanapali with that on the SM8750.

Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Co-developed-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 58 ++++++++++---------
 1 file changed, 32 insertions(+), 26 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 0568f0a1f356..3d537b7f9985 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -15,23 +15,28 @@ description:
 
 properties:
   compatible:
-    enum:
-      - qcom,glymur-qmp-usb3-dp-phy
-      - qcom,sar2130p-qmp-usb3-dp-phy
-      - qcom,sc7180-qmp-usb3-dp-phy
-      - qcom,sc7280-qmp-usb3-dp-phy
-      - qcom,sc8180x-qmp-usb3-dp-phy
-      - qcom,sc8280xp-qmp-usb43dp-phy
-      - qcom,sdm845-qmp-usb3-dp-phy
-      - qcom,sm6350-qmp-usb3-dp-phy
-      - qcom,sm8150-qmp-usb3-dp-phy
-      - qcom,sm8250-qmp-usb3-dp-phy
-      - qcom,sm8350-qmp-usb3-dp-phy
-      - qcom,sm8450-qmp-usb3-dp-phy
-      - qcom,sm8550-qmp-usb3-dp-phy
-      - qcom,sm8650-qmp-usb3-dp-phy
-      - qcom,sm8750-qmp-usb3-dp-phy
-      - qcom,x1e80100-qmp-usb3-dp-phy
+    oneOf:
+      - items:
+          - enum:
+              - qcom,kaanapali-qmp-usb3-dp-phy
+          - const: qcom,sm8750-qmp-usb3-dp-phy
+      - enum:
+          - qcom,glymur-qmp-usb3-dp-phy
+          - qcom,sar2130p-qmp-usb3-dp-phy
+          - qcom,sc7180-qmp-usb3-dp-phy
+          - qcom,sc7280-qmp-usb3-dp-phy
+          - qcom,sc8180x-qmp-usb3-dp-phy
+          - qcom,sc8280xp-qmp-usb43dp-phy
+          - qcom,sdm845-qmp-usb3-dp-phy
+          - qcom,sm6350-qmp-usb3-dp-phy
+          - qcom,sm8150-qmp-usb3-dp-phy
+          - qcom,sm8250-qmp-usb3-dp-phy
+          - qcom,sm8350-qmp-usb3-dp-phy
+          - qcom,sm8450-qmp-usb3-dp-phy
+          - qcom,sm8550-qmp-usb3-dp-phy
+          - qcom,sm8650-qmp-usb3-dp-phy
+          - qcom,sm8750-qmp-usb3-dp-phy
+          - qcom,x1e80100-qmp-usb3-dp-phy
 
   reg:
     maxItems: 1
@@ -197,15 +202,16 @@ allOf:
   - if:
       properties:
         compatible:
-          enum:
-            - qcom,glymur-qmp-usb3-dp-phy
-            - qcom,sar2130p-qmp-usb3-dp-phy
-            - qcom,sc8280xp-qmp-usb43dp-phy
-            - qcom,sm6350-qmp-usb3-dp-phy
-            - qcom,sm8550-qmp-usb3-dp-phy
-            - qcom,sm8650-qmp-usb3-dp-phy
-            - qcom,sm8750-qmp-usb3-dp-phy
-            - qcom,x1e80100-qmp-usb3-dp-phy
+          contains:
+            enum:
+              - qcom,glymur-qmp-usb3-dp-phy
+              - qcom,sar2130p-qmp-usb3-dp-phy
+              - qcom,sc8280xp-qmp-usb43dp-phy
+              - qcom,sm6350-qmp-usb3-dp-phy
+              - qcom,sm8550-qmp-usb3-dp-phy
+              - qcom,sm8650-qmp-usb3-dp-phy
+              - qcom,sm8750-qmp-usb3-dp-phy
+              - qcom,x1e80100-qmp-usb3-dp-phy
     then:
       required:
         - power-domains
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
