Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6AE7CAC5A5
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 02:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tIcwQuBRswUab4hlsbRKyn42CY/KV5ryiQY1FoIc4DE=; b=2SShWK/BfLHfI7
	tvCHNqlOrL8NlUitfBdpytK47bYOdFy4uU4X7+64IxXsW+e0EMpidK2E2lgHoow5IG8ZTV4u9b0fs
	Tkp5NUmy9lGsBeKMwm+2ilrW87TAmahbF+RP3lh0QVn0DqaEboWuujxbATDxfnUBN0srf1bKO95qT
	wbfdMSBZsw0knYh2XZ5uSmbKpNYEtQGUBleBmHVcUhHMw56Dzf7Gw8cd/NhfGYVv8HYhEARZsLqah
	lazEw9XeeBSBdh14aEOjB13U4h+uqOsS0hyD5+Ol6y/Vxi+8ipv3cOUXDhxj9x4CxRa2Y72jt58Gx
	/A4lEJBt2QSuePY5dy/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1bjJ-00000005Ire-2sNl;
	Thu, 25 Sep 2025 02:29:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1bj9-00000005Ika-0ysH
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 02:29:00 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0Gk9t021655
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:28:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=NkSIvXe2PoZ
	kc0A70JhcEzpgbRLO6/8AmGazVnh8Tx0=; b=J1wDHdzWsDKpAy1PIx5WXXmAS5l
	4Y0MZfOTMAW/u23Ac2cX6SBTPZtKF6dEFNSo5/UzFw0jNDmNce8SdXUyBrDEBSJS
	Xpn8rrAoyStypUmA6i3vfWrphgI84b8QR04b6T4HwTwUcTU+xtdUstAjnDkzziuw
	Q3REK25run5gZ0vvVpC+LgUsarJth8J+UPeuoLQrwU/zBXdqJMoOdkIo50Ii8yJQ
	IBPE580NzBnclsiLED4mjk2qVKMpm5W5PMrzz5hdxWX8L3Y68SVq6nVpjrlJWX+Y
	OGcqqWgiUHWFu0uUJ2500C8RYAfCgkpZHCa74xrpVpL14+d17sX68SKupXw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49budae0cf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:28:58 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3307af9b55eso418122a91.2
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 19:28:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758767337; x=1759372137;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NkSIvXe2PoZkc0A70JhcEzpgbRLO6/8AmGazVnh8Tx0=;
        b=vpnjPMCVVyFN5bCjLOV65sstvaXlZoMxIy7esB5vWYicb2A9SrLXbTBx3Me8ur/mpy
         AVpjzJ/1McXFXljf9y2shAQetdKoenHD9Vt3DHKYkBvNMkK6w6d8tiMs6gO3maKdguFc
         uuJZafqPhM5hVVP7ehontyWKcl58N/QqejvAhduxui1+UPpLcZLXszR3kINdYbrxkhi9
         4k7Iu8c58u6E08NeHDUvq0mgAqyg8TF7HkCG2DdGYhZqpP5aVvTDRKmnF6xQYFRl2cme
         Yq/bjYZ5unkYhokXmpw/l5cCPln1Z0DiSnpcPuHU+fMWOR++TyuWPLEBGde2QrD8h11T
         fk2g==
X-Forwarded-Encrypted: i=1; AJvYcCXbLRZgOB0EAzki7F37UyEbEPxbTHtdMXmgLX0YQQLDxp55LNlqiw+UaOJaVonSZOZd12wI9HBYrgg=@lists.infradead.org
X-Gm-Message-State: AOJu0YzKOHz4c0Z0NE1dcAUvVxcz1E5ZXXaWxsfi2lRMXxR17zjNWwzy
	/Mmei9IojLx+E87bchyc+5WAEFg1QWQ7vcEqBacWqii7sTGVKNcq+40V3m36X8ohsKMB9NK1LbL
	zHq4J9VZKPbYqqBCVaiBnkxVcP0iotrb9RwRjFNwqTXlZwOUcbB1yWPVkpTtkAMocNuCJ
X-Gm-Gg: ASbGncs4NuVa9cyXZE01HlL2c+GjOh3jbwH746prDdEG8neOGbyYCzwnueKDI7KwbIv
	d0GuFqCWzFkxMtE7NJxBPqRRN3KywapWocXIfcHoY8ijxgnjXSHFd6dFnCAvLSW8rv1EDNp+Qdi
	vuJnts4ldp5oLyvrE95IaBWIo5XgEbnT33TODzy+4Mlglamh3XCyvZOiy20jJd8h2kzvvH36o6+
	KV30WJ3ZPulLCFyx54SzOpMvAWwGbkyTYPuExvi6tlxHiw8vgNz8XhKhQzLHdXlwoqh/AAkYuUi
	2qFmdTelyIEY5pNOdXkujnWzoHUc1XMUrPx3qnFp6IUtxd+ajI7G+nwWgL4QB0Kvo6p61KC/k7c
	sQLhXmgJKabVSuIX3
X-Received: by 2002:a17:90a:e705:b0:32e:7270:94a1 with SMTP id 98e67ed59e1d1-3342a2b94aamr2128077a91.17.1758767336941;
        Wed, 24 Sep 2025 19:28:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEU67qmxExDZGHwTuZe0bg+hJ3mFuAKodDprKDYzQgHWUaEECh5/A/FMklWCasb9xyD1Ojlog==
X-Received: by 2002:a17:90a:e705:b0:32e:7270:94a1 with SMTP id 98e67ed59e1d1-3342a2b94aamr2128050a91.17.1758767336533;
        Wed, 24 Sep 2025 19:28:56 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33471d711ecsm499881a91.4.2025.09.24.19.28.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:28:55 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v3 02/10] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI PHY compatible
Date: Wed, 24 Sep 2025 19:28:42 -0700
Message-Id: <20250925022850.4133013-3-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: gvfynyXHtVCFgzxCziYswJQLlTfDCdt0
X-Proofpoint-ORIG-GUID: gvfynyXHtVCFgzxCziYswJQLlTfDCdt0
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68d4a8ea cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=e4LYGitkWRZSOGXTHbEA:9
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDExMyBTYWx0ZWRfX7PJ5xlyI9L9o
 WkF+cWMeSKwmhCNrJOHv50iJhbwds64dNrp4FFJqhm9zwG/XTVL0UGvRRXhF902OloDqMrfFKWB
 OLp+l7lSOIqH7KFHG3PC6q7jt22C2kLXN2IZEZTrkYEqaslRvy+Q8RIgM0biHRPZH67Y6aL+7X8
 NONzJA7mACOqUSF26LoeS6VS44kKaeZHzwB6g5Uji19Nb28O8t0Xt2uPGXPNLCrm7FaMsdvur99
 9sfl+O3tZb4eQ3E7Yov+WN2qSrCOzypgmhDPF27nYbw2TUnuLOE4jN0osdRcZG2W7ArLycgO3dA
 X+vb45KRPyOFiABPp9pC+ikqVid2Y3awDbw8yKPceeEVTcMEK9rd74lU065ZaaDp+mQExbd4IDA
 nuFaUjla
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_192859_394788_90BA3CE5 
X-CRM114-Status: GOOD (  10.89  )
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
two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC.

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
