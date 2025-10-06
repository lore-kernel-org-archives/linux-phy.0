Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9917ACCA472
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 22:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rhghnEGppqb0LSioAz7OqglKKeC2ultqZJKD32Qccyc=; b=YPZ5XmQwcM6WOg
	MNdJP4eC/TKvjoIpw9TejGEzA7ksCkgAGYiY98ZEq0mEYQ2roV2YSiiim/T/ZNFSbzNwVrnzQttUT
	QgrATcD4xvRDFhVPzZYnXJt16pOdgPIFSsY4ITmWPNDzgJh6mpS9cDgSgVJUKaL6r3EwhVxlQ+QHG
	t0xRi7KW8Y56zQqyqrsAZ3rv9/+Sq/Y8U6jRK3woFQoi1W1QXiEQf4R50PBkx44o/0UPY7d8AN8l0
	3gF/gnbE2IeaK0G6+TWPYw4poV4bilu6wSOc4sjNTGsPdvM5PewMp8fGI9FnPuYCiiy5F9NozmG+6
	1zZ0IdkKIaEaO+w+AShQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5tZA-00000000uX3-1WJG;
	Mon, 06 Oct 2025 22:20:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5tZ7-00000000uPT-2xUR
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 22:20:23 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 596LKpF0018035
	for <linux-phy@lists.infradead.org>; Mon, 6 Oct 2025 22:20:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=kwVAXCKZYFJ
	vmBevVk49WwQx9cQq3YCpTTCCiPQjazY=; b=BPSHGI4nNgZYIza6e2xmMVNUpKh
	AgFkqW9hMAneI4jZIFgIcS7cEooZYKTK637AE/muzQkBEC84tZ6pe11M07C5HWTI
	2xrMwQWOP+FQ9mxK1fQdpzuwOaB+frF84SHXDxZQvi2evIVsqYhuXWAPZ3kUNp7w
	HX2likY0LEshp2HRmJMklrty+/QQBw+sntnrTwYG/ZJQFRufrPEgoD4FXj9oavO0
	2lkV/nYw3vrwvzntqXTwOUuMGh9IWBk0U5wJJ5H3vXplWuTjgy36rcfm+DpSrkEV
	ZNFULx97kOltnHz19G97iv/XhZD+SFaLrk1jfA/BvtkSmkMA0SrJ2IrEBcQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49mnkpr5gv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 22:20:09 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-781253de15aso9242378b3a.2
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 15:20:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759789208; x=1760394008;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kwVAXCKZYFJvmBevVk49WwQx9cQq3YCpTTCCiPQjazY=;
        b=xQUD54F4RNlf9jyzZYkHDbr2ecWi5EtsWzam72M5O108MFpXa1o2KRy78sNUuSnoVz
         RMRcdwC3rE1m/7DPuBJffBJfRt7CLw/hZ5B5DwCxSquvAmZ3vXXWPoz2MSiU3N7+clsV
         ziXUYacyHNxbXF0Sb/myBTRDgpxLOUdvr9ryyLKGdxO4Oozya/qvkRDJJBtbz8sr3+Gr
         aHv7jMFlncknbqBZGgVHZho9zdGz9g/mwJkN54nHyBzs3exUcDQ7Hp6LdIbavmjdr28X
         U93+ZrQxrOHKBwD7QVXcn9HVNBY7a7LoFbYAx3jTaNrzAJhLlCNpJ5kNPn0PBl1urlwN
         oMcA==
X-Forwarded-Encrypted: i=1; AJvYcCXncm4EFRkAgd1Qq41CGJQbepdS6rezZRGthQ1IKyG6zKWYBKjEKmv0PlvwD8Z2kzwZyEP9ffrHFwk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/easRAnfWZ4/VGnL98FHqzT/BGhFNTX1c6Yt1PciYmvslLea0
	WlFmK2A4LE09L7Q7Cm4J7vB4i9QZwmq4F2D5X3WW1bEDHnuZPUgeO9hYjbUWuOMvXfxWqS7rVHe
	FyIwan0qOeN33r6ZTtotZ+1HOVtSAcSReGGh9ez/T2oPLNJPah/aR3XwH7hztFXXJZUi8
X-Gm-Gg: ASbGncs0y62WcV/K3lou5FzfG0MJpK6TS7oWC0V9Fz9S8riX+ash2U99twNiLYQh7ab
	JowyJLOuXvVZ1ntmQrjgoMMNAwhqvR5ks0y7CWTNjVLlLTnLuh0K/rxjDMnugcDT3dVk0tlXZIn
	ZRGAAwxB/lA2PJdH4psxzk1krYmfCg0z22Sg8V5W3qbgfbUnnWpmNe5y+/ojGegHE7OxAzRhOfm
	X1EZSxV5WlD8deoJc4qRjCCuSdviZPoSrlKCrVsL+oa13yb+OsNWG/tGMuotPG7VOY+0qw5Jj8A
	awQhkBeD/zCi7CGnJY/jb31gLTaZlhAGFwRYhu/cFxuIF5a94HAwv3NY0lp9gRCEoYK8kyBZq/4
	KC9uA/0S4AWgUyHejecB64A==
X-Received: by 2002:a05:6a00:2305:b0:781:1bf7:8c5a with SMTP id d2e1a72fcca58-78c98a40a3bmr18785124b3a.1.1759789208240;
        Mon, 06 Oct 2025 15:20:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH5R1SLObP0kiPoqDNLoC1YWFmO7iQQWvlu+1UAlluy50qQoqzliZ7CViBxbPnbk0mDKuzpGg==
X-Received: by 2002:a05:6a00:2305:b0:781:1bf7:8c5a with SMTP id d2e1a72fcca58-78c98a40a3bmr18785097b3a.1.1759789207808;
        Mon, 06 Oct 2025 15:20:07 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b01fb281bsm13734968b3a.37.2025.10.06.15.20.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 15:20:07 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v5 01/10] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Glymur compatible
Date: Mon,  6 Oct 2025 15:19:53 -0700
Message-Id: <20251006222002.2182777-2-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: BGcCJPdblR_eA6wPNO9_cnkFdtezuWb9
X-Proofpoint-ORIG-GUID: BGcCJPdblR_eA6wPNO9_cnkFdtezuWb9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA2MDE2OCBTYWx0ZWRfX/A7WgZAdhPBb
 moqOAVhi5DETgNl22xiAP0+JWtNZfDjY2wmdvgVvXOtvkjvFh3tL12JBzfw/RljomG3i7Hwli1W
 FVcl2FgVozTsQ373HchKuRAaVeQNxg3j715DeA5oyWpsXxaVzvyMnRZQ/6wGgfwd3cgUnjWz6xd
 cCwZiLoo/MP3axsHlvn6NYaU00S8+Omer6YrxiyvQVBcFmsitEqPeUN5R1ipSimkWmCSVYWv2uw
 4w7k7VTZrzvPp3h9+QGykI41nRE4VlJ/ELoz2oECgb0cjkRyPBfkbOJXVa3GTdTzjmd5sw5AT2O
 /WUqvfGuX80RoQlGcRYzL6Ge9dIYjRQClYsjvpNSqm1tttSf/dG9Qhhwc9fkdaeFFLs15l1IMnq
 NWyMh6nCqEUMLtbxjQDtWhf2qI1rWg==
X-Authority-Analysis: v=2.4 cv=BuCQAIX5 c=1 sm=1 tr=0 ts=68e44099 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=7IGZojk4TMugEFbIs7wA:9
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_06,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 phishscore=0
 lowpriorityscore=0 clxscore=1015 spamscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510060168
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_152021_772016_CE75250F 
X-CRM114-Status: GOOD (  10.70  )
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
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 72 +++++++++++++++++--
 1 file changed, 65 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index c8bc512df08b..315723a87f4e 100644
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
@@ -105,6 +103,24 @@ required:
 
 allOf:
   - $ref: /schemas/usb/usb-switch.yaml#
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,glymur-qmp-usb3-dp-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 5
+        clock-names:
+          maxItems: 5
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
@@ -117,17 +133,47 @@ allOf:
           maxItems: 5
         clock-names:
           maxItems: 5
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
         clocks:
           maxItems: 4
         clock-names:
           maxItems: 4
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
@@ -142,6 +188,18 @@ allOf:
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
