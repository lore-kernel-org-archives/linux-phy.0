Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDE5BCAC5B0
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 00:52:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aBh39l7z4L9tqK0a6aeXbq1Alssq7mqIHe+TO6Ur8dw=; b=jNnGsDYl5D4tKi
	WPmlNhOe0jk6Q8vf/02HX/YJkpGQQyacRCfIFUY8nAVx6/Wj7Kq0KXxXeg4JrDac9aQsCtx3Pu0fS
	0OKiq204DzwBmJGT8FijRjJzJgAP5f+U+JAmlqYKq/e+J86xmBu2p5YPAjTfefy2kzYQRXhwQvVvQ
	xlgIcSvmCSepZi/L+01165fQuUcqqbPvg2F727sdK/KlLpGtG99Cpl8tGgVPBh+XseASY4KWvLMQc
	YGHvbRhcUQdWeA3rJ3hBAW2CJgragvPHuJ10+KmBW1rL/BbXx5k56d4rxoy1FMjRITE249FnWCzIY
	ZvSlzTlQD/nM25eMLtRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1aDy-000000058EX-2lzz;
	Thu, 25 Sep 2025 00:52:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1aDw-000000058CP-1QBS
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 00:52:41 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ODDJkr002135
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 00:52:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=g6hGIMMv3wb
	uPomMpx8H8k/GiKEKmx7JPEl9gfJaIng=; b=QkMLuuqsFM29KbrDAK/a+azVlvh
	YnT80zPogffOPos/f7UhMCxbu8q8dg6fw2va0FA4lDlJNTygR1GmoLIiI/gNjYAU
	RRyFkrHEm8JmqfN7RBUHDFT/R2c26xLpD1lGNmAsdM5gQZ+LTCSGl4ZbrktblIAl
	hlbaNy2aPmXqx0lf3jd22IyFnuSzga2dTFEn8vxDFp5SrllI6T/IMrSAAGRr7d0L
	wgFo9Ynh0Yyd6zU6jBtGT5qLUFawM9jb7Tm5RA957Io1oPcRulDaxeKdj+O3iKHu
	iqzoBu69UWqPxV/xIRGnyEjVTQNpW+RAFi/AsEbSnS1Nsv+o/DCXkvThaPw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98p7qv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 00:52:39 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-33428befd39so799131a91.0
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 17:52:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758761558; x=1759366358;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g6hGIMMv3wbuPomMpx8H8k/GiKEKmx7JPEl9gfJaIng=;
        b=Q7kFon24UNVR76pbtaAv+qE+v3qFufjRb9LRibHsWtnL9IyWfwsbRTFN0sevFcM7G5
         ZiLkiS5eMM4Hdddpqomn4YOyb8iEOL3evYub549C3f5lDYbKFln4/KzmxpmqPwsXPH73
         ojInpDOx4svxYlo/znlgj/VlABIm8ONP6sBc+KdWbqBFu4tfCtzIcvSnSooiO4+2vhPc
         4ZfstB/NUfd4FDAbhBaajdmfJsxP0xS9C0AUdnlYm/0t4FI8F2Li4ls1UuG0KRWgBaij
         U8NIeqp1dyf82/7g8KZcIBew6Q5oPXRAZCJl4vre8mzy+4E5mK1DvuJSGgDUFcnpS9xX
         dZzQ==
X-Forwarded-Encrypted: i=1; AJvYcCVc/6SCRNhUOkMQjIF0XblS0EB2OoupYJaZxr7jv7ltdjkyQI/DrVtYAUq9K/K8a6rg91N4NlMftqQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxmajnuXwv1t42xdL6V+wx5OD5HAqo5RPmnw7oTvQ4Vn+6O7zvZ
	OwsHZ7Tj46kGMPhRgWZYQLQjkXnMciyZGhQjeqXZTGocm8tE7HlDmZrF+0gDhys0KYnoWOlegnn
	MLny7cDsHuIE85jSanl0Cb9f6L+iki4yIWvTf279QRvsFrgKA9oYKdmig3yFD1K5Hf6bW
X-Gm-Gg: ASbGncvBZFySuDnm/185FZv6PLiqeek3pAqj4DIXukGLL0BymDAaMkhY3ZJ1WcNOcKB
	inf/wpEu2OehRGHWnsV7NIie4U+Gz+DdeBTApJXi4tvRvNgP1n4dk6GXrL5JfbVDmgfOxEYgESI
	dwIGQSLp2HKKrwxci4pzTaaW+LxAvEGOh+mBtTgIQ8Tlur4Rl2ku2R76Tm0NHEV0JeST64hjntZ
	iP9fW2FBy67Mpbr86Vp25n0sIVHjejyNMntirDjkUeEjcYi+C1lWWDwHkACAopfO1BOqiacXlQc
	XLy9csY+7N5khl7MQcWjHvL3S7uWiXmJU8ynR5rCoZBRPN1TeGRR6tqacW8LEHhl2ic4Tlxet1a
	ItnfAfEMqb0Bd0Fw6
X-Received: by 2002:a17:902:e84f:b0:26a:8171:dafa with SMTP id d9443c01a7336-27ed49df04amr17503555ad.21.1758761558240;
        Wed, 24 Sep 2025 17:52:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFhvOp7wNsS51SpI6EOA2HUs8VBQEy/ZyUwfDL4ym4Id0/ZhPRPzk6mTrQR2czfWa7itiQZ0Q==
X-Received: by 2002:a17:902:e84f:b0:26a:8171:dafa with SMTP id d9443c01a7336-27ed49df04amr17503285ad.21.1758761557758;
        Wed, 24 Sep 2025 17:52:37 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6ac27d4sm5238105ad.135.2025.09.24.17.52.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:52:37 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v2 04/10] dt-bindings: usb: qcom,snps-dwc3: Add Glymur compatible
Date: Wed, 24 Sep 2025 17:52:22 -0700
Message-Id: <20250925005228.4035927-5-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
References: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: _Vd4DjwSS5IEe13BvDAMPf7KnA90VYNj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfXz8nqLkChLSQY
 YWT5LqHjzfdl/97QkiQ8h2lO/oTcSfveHWbp8L8798KkuS4lQ1Bxek5BBEQGfr4pvuLiR+GuICK
 6FF7N1WXVZtlXhcjYoMsGZvr3qytSFi293Gu6ajxK6KJf13Zl0fy0qhH5pJ3ie8bEG9CD2Mwb/d
 4n/AOTzC4p/Dw66GWS1C1qsIie1pJjvM89SzFwTQtMylflXK8zrooxuYriuPv6xRmmaOXFKSgs1
 yzCo6DvWTdmwqpd6A2Sr028E2xoTJaJzoHbmzqEfKOXkkfLh+bIweFLYhJpPsjgKCMoyvq/1tud
 EnvkwPWfl/9NbNkZj+Eg17eBWCjk7bFe4vtT7DQgu1TjAXXBc+2gOomQSZag3Iwe0x7kmOULrXZ
 YzKOspLz
X-Proofpoint-ORIG-GUID: _Vd4DjwSS5IEe13BvDAMPf7KnA90VYNj
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d49257 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=JYTQWVwI1XGucIoeipMA:9
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_175240_504368_5CF9FFD3 
X-CRM114-Status: GOOD (  10.24  )
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

Introduce the compatible definition for Glymur QCOM SNPS DWC3.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../bindings/usb/qcom,snps-dwc3.yaml          | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index dfd084ed9024..eaa0067ee313 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -24,6 +24,8 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,glymur-dwc3
+          - qcom,glymur-dwc3-mp
           - qcom,ipq4019-dwc3
           - qcom,ipq5018-dwc3
           - qcom,ipq5332-dwc3
@@ -386,6 +388,28 @@ allOf:
             - const: mock_utmi
             - const: xo
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-dwc3
+              - qcom,glymur-dwc3-mp
+
+    then:
+      properties:
+        clocks:
+          maxItems: 7
+        clock-names:
+          items:
+            - const: cfg_noc
+            - const: core
+            - const: iface
+            - const: sleep
+            - const: mock_utmi
+            - const: noc_aggr_north
+            - const: noc_aggr_south
+
   - if:
       properties:
         compatible:
@@ -455,6 +479,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-dwc3
               - qcom,milos-dwc3
               - qcom,x1e80100-dwc3
     then:
@@ -518,6 +543,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-dwc3-mp
               - qcom,sc8180x-dwc3-mp
               - qcom,x1e80100-dwc3-mp
     then:

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
