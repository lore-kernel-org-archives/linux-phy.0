Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A3BDCAC5A5
	for <linux-phy@archiver.kernel.org>; Sat, 20 Sep 2025 03:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tR6qQDNWTrLbd78kOlibVI84PprPD6bAibbHryxwDaY=; b=so6aUNrvzH9ac2
	taHlPMJgukVwpBOxQiakTMWDxFYIOQddOiwLxSMdRAEYNIsjMNtInZfk+Bmw6UYFUIzj11WJ5hfsT
	vIqU8hL0LuDNRD6yQblsxTYg/iwlnXQBUUxQcnSEYFQAAUj2YR4CIGnCJxCJlsiMUcnD4jREdiZhx
	hz7IJTz9MA95OAovbI9QT9U+QMVjMW5/sBsJOCK3kLWiLGDewYBi3Q3jfCZwtzuPekMXF+6kVxcku
	mYQc31oqehhETve1sNE0K3Knnpjs034jw1WrFZLQejn5VF5US0hlCiPfKQdrRpLoZ/9iYoolfYxBs
	Xtnrm5GoJXmQ4b5tUw8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzoA4-00000004e95-35R3;
	Sat, 20 Sep 2025 03:21:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzoA1-00000004e6v-39td
	for linux-phy@lists.infradead.org;
	Sat, 20 Sep 2025 03:21:18 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K3FZjX019538
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 03:21:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=P4afTs2BZob
	5xp1NXhLP4wPYTnI4iHBaCCe4NNMHtss=; b=RD62JpHUQDrLOassI4J3yoVNtA4
	Xpfd5zUsF/IkTIdzVGulZKCQZvpHKcXFoep/5QXSItxcCXg3CcNvLlk918glR11l
	31hneOnrWcaeS5nnlz9zw5OPM/N1we7G/muPyXtDwOKp1Q0kkD4SfrgHNLHpGQ7C
	GxL37cVPtNsVoyQh5nILm6qJCAx4zV+TUh3xK0uVl/jJyoJir5tsTMCZh/op2QPD
	yMEP93rS/TRF8skqZ7NUkYKvE56XtXE43MysOF/PZk63L1dvSmxmn3B1tqzvAgoQ
	AQnbMd4PsPGu3T70HG+53huNp6C0EpDzragSEGsm+8J2gMdfiLi7pmihWeQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyeg7fq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 03:21:16 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-77d19ec75bcso2489406b3a.3
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 20:21:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758338475; x=1758943275;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P4afTs2BZob5xp1NXhLP4wPYTnI4iHBaCCe4NNMHtss=;
        b=tqwUZq+evj6MExTyWKsovNHRvL232S6VZ7WxQcm+DbZiF0biBI94GJd/3fChnOyEKd
         uXg+hSmYz3LJSD6u5DPTWPqQnV7E7VyvRNiAINgfR8GZEst7Ju7DW41kqAIbqXYVALSa
         YDlIuNPWW94nk2lbOGTA50pXK4LSf4QytKWPfLoZ2xH/+qU78byXdKliUCFEQkQw3vTW
         lTFbmMNT/sqJQug/0dURT+R2e5C71RQfGaA57l/+Dn/S3Kwq6s1ADV6gilOXi6retXBV
         r/btmKzw4Bh32wbK7XpU60y8nxReqaxM7IMLgR+kxivlcnTMx+v8531+kzc+IiQMJY/j
         cf8Q==
X-Forwarded-Encrypted: i=1; AJvYcCUz/PY1LmTtdgMX/ijIxbrn5VObAMvobTNJR5c1SUEgjMYCgdMzIWYjg43WDX/xMhU0UOYYvSO5q3Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YxyY6RdwP2qx2GaaU/FalEnlqDpL0G3L9WZFL/0ur4bUN5VvOSQ
	X+Mo7svanOV2vxIfPv+OSn0OU1M4leMD3xA/x/gV25N8ijqK839Cq2x778PwCGLnnd/LwYMIG2x
	gpoap15k2CtxTCTf7rzLiHLLAcrbuWcoE/LOG/Tp5Y2Clr9a0sUsyxDg6CM8nEuI3vovV
X-Gm-Gg: ASbGncuQ1qJ1XrQZGYfcOjevsCrZdRKQeSfQThN8gusl3yZDyyooEVJAn2T3IP7xhP8
	T7ETFKOEBJP2M0omts0zfNnIfqPq/qeZ66DyFrR7FGaArwv55rw3DCPeL6vY3v5uGmXCfHd5rVM
	jlYUfymLMfoq2P+Y0vNyqZ0PWWL2Z2HNE/1MEOJnfhc64pzfDtoIcl2koo/b1+4nyhBu4JGRqIT
	iyUgiX+ED6MVTij7WpZ4pMsXppIfHklIn1gjG002GTa+xFwMP3Ozk60TVl5Cz3/0g5Y8qnB6LoO
	ZHLi3MvF9rl8UeC9RISVs7cCZUjtIYJxKHLNsYRXhfw5Kp2obd8YRUGibZNs2eRuF21stmQDi7Y
	YZmDeMIp2LrcqyIJk
X-Received: by 2002:a05:6a20:12c5:b0:250:e770:bcbc with SMTP id adf61e73a8af0-2927480f320mr7972240637.50.1758338475168;
        Fri, 19 Sep 2025 20:21:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFjG+ljXA2NFGb12pwEQzj9q71gZ/HW4nxBM/YVfEycE18N8jKbIJHZotVnXmuXiSTZeajTQA==
X-Received: by 2002:a05:6a20:12c5:b0:250:e770:bcbc with SMTP id adf61e73a8af0-2927480f320mr7972210637.50.1758338474766;
        Fri, 19 Sep 2025 20:21:14 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54ff448058sm6178807a12.54.2025.09.19.20.21.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:21:13 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH 1/9] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Glymur compatible
Date: Fri, 19 Sep 2025 20:21:00 -0700
Message-Id: <20250920032108.242643-2-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: YxN9oOZC37lBufipD9ZF4DQ1L1ATD-Fv
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68ce1dac cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=gJ-VRbHUVreD3CQON-0A:9
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfX4+5jv3IjcAZR
 DfoZPaQNxExSz4DIUo0TGjT+OydeVehdytBzQZipHR09Z76gvXZ07E6mRFzYq1lW1Ud8cwozT6y
 YfAApnxv32KHn7Zznc4X9/v2rQ8FCTMsEZejb/qyhWEU8d6IvVZ90pOgzOr2XM8O/Z0IFGPLGuw
 MMu6iyxfWBZlaKmNt+r1o4T9DMIgEe5yJmt8jHV0Q3a5ji/NK824rxocHyu3gd4sPrIsWet5rsR
 dZgxo7w8sdjXJH5Ll0ScRqTsJ//rRMxjv9ZPaGh6N1KGR16kUUooB6ilnpSYBLOFCbIPH7wEdeM
 SIPdXLe4HofMFrMw/FINldnLlDqsI0SmcosghJ056TxSdpykcVbdR4UdSI1litdNhM5BoWsjKtT
 8TxUQRma
X-Proofpoint-ORIG-GUID: YxN9oOZC37lBufipD9ZF4DQ1L1ATD-Fv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1011 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_202117_794015_47F4E965 
X-CRM114-Status: GOOD (  10.64  )
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
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 45 ++++++++++++-------
 1 file changed, 28 insertions(+), 17 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 38ce04c35d94..e0b10725a1c5 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -15,22 +15,28 @@ description:
 
 properties:
   compatible:
-    enum:
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
+              - qcom,glymur-qmp-usb3-prim-dp-phy
+          - const: qcom,glymur-qmp-usb3-dp-phy
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
@@ -46,7 +52,7 @@ properties:
       - const: ref
       - const: com_aux
       - const: usb3_pipe
-      - const: cfg_ahb
+      - enum: [cfg_ahb, clkref]
 
   power-domains:
     maxItems: 1
@@ -63,6 +69,8 @@ properties:
 
   vdda-pll-supply: true
 
+  refgen-supply: true
+
   "#clock-cells":
     const: 1
     description:
@@ -110,6 +118,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,glymur-qmp-usb3-dp-phy
             - qcom,sc7180-qmp-usb3-dp-phy
             - qcom,sdm845-qmp-usb3-dp-phy
     then:
@@ -129,6 +138,8 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,glymur-qmp-usb3-dp-phy
+            - qcom,glymur-qmp-usb3-prim-dp-phy
             - qcom,sar2130p-qmp-usb3-dp-phy
             - qcom,sc8280xp-qmp-usb43dp-phy
             - qcom,sm6350-qmp-usb3-dp-phy

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
