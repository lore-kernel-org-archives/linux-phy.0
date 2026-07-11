Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FC33C43458
	for <linux-phy@archiver.kernel.org>; Sat, 11 Jul 2026 17:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QD8OBcW12sXge+HnF+88+z0AG8FJTdqglujEz/PtVVU=; b=hl+4rcYytcTRS2
	rKmieOSyQm3fyprGM5kcbnqDbCJhYE3hwZm0KG6hadjRLfHkDlyoOu19z8DyGsyBQ/VQsd2jrX0+e
	gDytyc9IfJc0lUj7EpsWh+Wp8ocNmFLkVKSEf+oBU/t62NaeHcr0lfECSp3G28PD5CV3C1T99LjJv
	a1H5XKCISluWYqTb+aGFRRq1T+y349GOFNhIqWIopdS/7q6MxC+r/Nlp2vULbptMWN2zchybLFmqZ
	Eg24fOaBvpkFsPxLo66S0bgK3CJKTHbqMxeNoHV6Y8Qi1PpppVIQbZVNtowOdAj0eApWPtTegJdVN
	qT9BNCZdTXzLfp1+ACAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wibDQ-00000006iSO-1C6S;
	Sat, 11 Jul 2026 17:10:12 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wibDN-00000006iRG-296l
	for linux-phy@lists.infradead.org;
	Sat, 11 Jul 2026 17:10:10 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66BEP1ro4053578
	for <linux-phy@lists.infradead.org>; Sat, 11 Jul 2026 17:10:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	J92HCrkNQWDeiJATR+uKaGVLbk3Fakz4sww9g3DnQyY=; b=BuM8S0FjBz/er5aW
	BgGl3nzdootNhU4ESd+1yiLFfngtyblalz0HcVK7QXroZTczRKYvxZaJopZxoeNA
	8eRUSqxcZ5XBJxY6SRThjLX041492AEra+1Zaj65JfeSx1I/OIvMQaaI1ASbDQ7d
	MCdlpffAM0hIsmn7p/A7mEdAK4Fz/bbkeqXQlnNai0GL0CJuVzcQSjI+pfVMwSBk
	hQGW8bWWp6K3BJ+zRBwT6o2WE/B+fU+o76opx6Xy8gfCzHxLCLpeMXJRBZfEYaj8
	Ecy0S+okY0povkZPALnHHWG+ZSzFWnkvVYwqoIV8x7iE2lj8nn4/kData4ZCnr2A
	ROFvbw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fbeams974-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 11 Jul 2026 17:10:08 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3823dcc1647so2329157a91.3
        for <linux-phy@lists.infradead.org>; Sat, 11 Jul 2026 10:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783789808; x=1784394608; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=J92HCrkNQWDeiJATR+uKaGVLbk3Fakz4sww9g3DnQyY=;
        b=fJHA/mRu6bYxKk4kJ0zPOQr/1IAjznQFzhxR1d8u5+VVfcInjWSzg5tEC+KVfNbjvv
         ol5lDCuf2M33RYRHHjWEEtRA5J9W/4JpQifMI3h7zwuPlU9hK7h+LjKHMvXCSKXTy+0e
         lotMUvCaFDPm1Yd7Rn+SHtxs+t//t31WYnZtu2ypDeLY/B6zHOWcc1IlLOGUtPM19av2
         u23uEhQpdGVaxg2XqOe5ggH0gYCW3kmtuzudeCEYSka6/ziFm+zGTSXJuOpLTXxswXpR
         3ukPR1Wj50EZyVvHpYOgMq0mqfXhU8DRidgH5QZYEddf42ZYQW8SZmeh8AWxUSsv6xiF
         OLEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783789808; x=1784394608;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=J92HCrkNQWDeiJATR+uKaGVLbk3Fakz4sww9g3DnQyY=;
        b=nIkmEqIMEakjLJ42BxjX6UiaLWVBEJq8zViPGslpAedWYWw1cY+eMPgG0AGYlK3dGp
         AxGkK4OGxE+rcAWxt1LtKoiXK4dQzSV4k7Sj38QMATBzOqgs3LxQQLAlFbsdg56NPo+m
         N/vQfP02TXAiI2s/snnl31sncOF4hMBfPsa5JuzXc3vNzpP2OjMpTaSYry+6ouP14qII
         TAlFVANUNhvNVu4yr+agLV0J1Ks30HNXFb8FRkuiHL4Dz5DHhanjNMjVeGY9vi06dv4S
         jYzaKlNv3UouTljLU1EsAiSITximhMflqpaEHYDXpBSb4oG0GZVOntRcshkurCWPWEvZ
         PCDg==
X-Forwarded-Encrypted: i=1; AHgh+RoXJL9bTnlTsWFHINrCySr+burCJv5+aPX0Pi1tS1XHsYneHPQE60Qpkdpozdva3Ru9AxnkTzVgJvQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxL5WeBbR6JNMi7Jx8EovWtmIRxVLSp37oB7rN55aoBPs4l3vdP
	+xfFbz4Zo1ce/Y/06+afv3WeR6Ifkq3Pg+DIFcfpqUM2sy4y3xcwdsKn7zlbkOOEA3j0JeYNbs5
	hpzcWh6VymuZWcc7lJCjghLnF7pd+W64cs2I4yauleX8rx0+Cr8fb7PVnlyYRRe+Tg1pH
X-Gm-Gg: AfdE7ckigHb7Hv3++jgxaJcfk8ApkVdnRlybPwiDoKqPz5pcGng95MzGRd/QkM1DaYn
	8KeWOfxxMBXCHj8yX7i0Ry/gTuDvNDNAMyvPhGagDzMu26inbj9AlA3vhGLbjiN60Nf/6SyByr4
	ujbG2xFy9rhd1Kw3BoFRBxo6fW6hKc8QB9CBR9KHAOPwUHi29QDdh+6s4iJ2FEtPIW4zozc5yAO
	VvVGcHKTbqaKM1B4veFMCUaC3M+crv4omndw/9bTak1en/fxw2NXjXkIz3YM+B5GiuycwGZoPfC
	0hbd6RCzZueOIdMflUql0B/ccpoKLBknHjpRE788L8jC/f4QLYq42MF8VisX9Ekmuz1TMg2/Wum
	yujSTtdFnI+GJhVSQImMqlqNRzZr9Rn1G/d+ixT8D3sTABf8c/qgADpnxont8fSNe1kMqtLoi9u
	NgZaJE
X-Received: by 2002:a17:90b:4b83:b0:387:e0db:3d8b with SMTP id 98e67ed59e1d1-38dc77c6073mr3311374a91.38.1783789807621;
        Sat, 11 Jul 2026 10:10:07 -0700 (PDT)
X-Received: by 2002:a17:90b:4b83:b0:387:e0db:3d8b with SMTP id 98e67ed59e1d1-38dc77c6073mr3311342a91.38.1783789807089;
        Sat, 11 Jul 2026 10:10:07 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-313b9ca880fsm12943635eec.23.2026.07.11.10.10.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jul 2026 10:10:06 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Sat, 11 Jul 2026 22:39:51 +0530
Subject: [PATCH v5 2/4] dt-bindings: phy: qcs615-qmp-usb3dp: Add support
 for Shikra SoC
MIME-Version: 1.0
Message-Id: <20260711-shikra-usbphy-v5-v5-2-229ba3602737@oss.qualcomm.com>
References: <20260711-shikra-usbphy-v5-v5-0-229ba3602737@oss.qualcomm.com>
In-Reply-To: <20260711-shikra-usbphy-v5-v5-0-229ba3602737@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783789793; l=2846;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=8lGlCWqfdYi7aiY1rxiuhydlcqTNR1Zj5JRjcwDR5mg=;
 b=Fd/W894Lcl3jrwJbSLo58sU+4+bu9bQmx6S6YbXilQIaXGLD/ndZnTh/OZjzQNHb+kiEg0PaQ
 f8heR2iGcRbCcb515j2v4c7ZWJxEz8ex0o9UkOdIdZfh3Tq4cqTusnM
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzExMDE3MyBTYWx0ZWRfX/OR+zGfb3uvm
 LrKTWC5+5gAbk6HKvIWps7lhw7V78c2zZ1ecp6Y/f/uFUR4PI3gGQUom0YzFVHa/FkF7qR8Duu7
 TS0W8eWZFKoc/yj2TsfDBUyWnwRJVr4=
X-Proofpoint-GUID: f1ky3K0tkBx-g0weJ9Lvf9Son6oMYpA9
X-Proofpoint-ORIG-GUID: f1ky3K0tkBx-g0weJ9Lvf9Son6oMYpA9
X-Authority-Analysis: v=2.4 cv=dJSWXuZb c=1 sm=1 tr=0 ts=6a5278f0 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=ufZ60yBX7R2ALNXMlhoA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzExMDE3MyBTYWx0ZWRfXzuh/km1BSvng
 b2UnnDHWjlTZLnABsTe9dzHpTwzrG5XNmIRchCdfU+BsO5frx7ej2bef6uJoY04B6SHMd24Yx0J
 fqTL/A23zqm8N8zFDM2NdC+L/pV0cakxq8TfcRYJ6CFS7sHCViuSskqvRmvHBiFrHMdDWFgkt2a
 QwxdpsVnzPmAe7Hh/vGzgLSAXFk/5n+JCO39q0Lr6RqSAAKd2aPw3Ht9x2I1Mtkwrr+Zrv6YMR3
 sMJCGeV6N5Nrh7HmEN5gVQVuc6Jv3jAXhk3nWX+ZqwH5hY61iWz1jjtDdFV2y7Amhmwx5IfrmCy
 8oc3+UNczNxzn8GO/JP/TeJ6IsomJIvwhE1xzMuuTtbXcCfDEU2wV/AErd6Cb1d7vuoNMnxMJ0r
 Ib6tEf+Yr/XZ0K8sgmWMBTg5IpBwPLSgIPi89E/dog7V3zLCURGoM74jVVROb5ENnyXJqRMt1pm
 hd0X+kNY561/c2Znt2w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-11_04,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607110173
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260711_101009_675812_CE176F81 
X-CRM114-Status: GOOD (  11.79  )
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

Declare the USB-C QMP PHY present on the Qualcomm Shikra SoC. Shikra uses
3 resets to be programmed before initialising the phy. As per the hardware
documentation, the third reset is PHY_PRIM_SP0_BCR, hence naming it "phy".

Also, add remote endpoints and orientation switch support for getting
Type-C orientation information.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 .../bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml   | 54 +++++++++++++++++++++-
 1 file changed, 53 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
index efb465c71c1b..908c0f199c01 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
@@ -18,6 +18,7 @@ properties:
   compatible:
     enum:
       - qcom,qcs615-qmp-usb3-dp-phy
+      - qcom,shikra-qmp-usb3-dp-phy
 
   reg:
     maxItems: 1
@@ -33,12 +34,15 @@ properties:
       - const: pipe
 
   resets:
-    maxItems: 2
+    minItems: 2
+    maxItems: 3
 
   reset-names:
+    minItems: 2
     items:
       - const: phy_phy
       - const: dp_phy
+      - const: phy
 
   vdda-phy-supply: true
 
@@ -63,6 +67,22 @@ properties:
           - description: offset of the PHY mode register
     description: Clamp and PHY mode register present in the TCSR
 
+  orientation-switch:
+    description:
+      Flag the PHY as possible handler of USB Type-C orientation switching
+    type: boolean
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Output endpoint of the PHY
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Incoming endpoint from the USB controller
+
 required:
   - compatible
   - reg
@@ -78,6 +98,38 @@ required:
 
 additionalProperties: false
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,shikra-qmp-usb3-dp-phy
+    then:
+      properties:
+        resets:
+          minItems: 3
+        reset-names:
+          items:
+            - const: phy_phy
+            - const: dp_phy
+            - const: phy
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,qcs615-qmp-usb3-dp-phy
+    then:
+      properties:
+        resets:
+          maxItems: 2
+        reset-names:
+          items:
+            - const: phy_phy
+            - const: dp_phy
+
 examples:
   - |
     #include <dt-bindings/clock/qcom,qcs615-gcc.h>

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
