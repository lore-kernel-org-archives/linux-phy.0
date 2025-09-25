Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30036CAC5AE
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 00:52:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tIcwQuBRswUab4hlsbRKyn42CY/KV5ryiQY1FoIc4DE=; b=Gx6XaxqUNbLcwG
	VLpF3i6T+/Tz1cSwsvI9b4x0dGOxZKK9FfHPoYlZBc9wYXQnx/0UJKzCnF2eRKG0e1eTfafIgExvt
	X7V80yLiRIafqUpFMk5OScLhAQlC50DYA3lIAlotY4PWmO6jeDAq9DD3c5FsaBgNeqs8yMfd//XDA
	vgoQJtQcLxtOQMRd3st40oXwhEVIaWOutF/zBrGtYVf9J6/jEtYDqIPkYLJ40TYSBBN9hbbBv8XUy
	R0TTeLvxCZW0uj4bX0V5TD1EDQU0gU/yzo3h5hN4//X8bW6DlIGZ98oO8zZiY0br2k4LsXoeoWZfM
	IBbNqeH2Uxazhsp/nThg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1aDv-000000058CQ-3wuu;
	Thu, 25 Sep 2025 00:52:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1aDt-000000058B4-3Ave
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 00:52:38 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0XFnt025105
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 00:52:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=NkSIvXe2PoZ
	kc0A70JhcEzpgbRLO6/8AmGazVnh8Tx0=; b=fxNcja/fF5TShCb/P5DbtfyILXs
	03XEYEGvzjC6BpBdXmWb6MPyBEkx2yTfbWNRZjypJ39s7Qiz72R579j80w+FjnhK
	atUKHcw7fxURRVB3lJYM2CClhJsDeWUhaSU0vPg2v1SKgVj/JOWB/RE5L9dHQpSQ
	eclIUBhytoH6a7OBIqWRuJNoxanSBgz3FjMD/lcbPwIGO9Uhhf1DeqSlqRMnbNpw
	4c6A7kAkCiSCzC2X6oKi5SfLUoOTuOaK1dzNj4BespaRQjVO8B5DDWhAdHQOL3rM
	dbJMwobrL9MfWo8N0S4XHwmtSHLS/95qfB4nvWKf0F96TCr7nDWc3Ccrr+g==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kv1683m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 00:52:36 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-267fa90a2fbso14676935ad.1
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 17:52:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758761555; x=1759366355;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NkSIvXe2PoZkc0A70JhcEzpgbRLO6/8AmGazVnh8Tx0=;
        b=k+acptAsZKtqwd9vXP3C6WpBJXXBRJg/aGpd6EtM0UwIMwy1cg0X+9hQLue4r2FaGg
         W2qoM8wXo6cGYq4CsthfJVY6JexWeu2QGbY2231cSuXBm/kRZhpL36aGkFG+Hmx/rWFV
         ei4H4v4PeJ58QpKFsXjYBATv1VBnh3emgmnFzkHQ78R2BZBzRH1jq8ipB1gehwCsBid6
         j3PbgOJDhufcZn3p6iBinZaezYRiZykRuBLPqYekzxAT3rm2zxizUkjrC5inBJPJIkRm
         nRLfKG9inwj3YF/8e+qoSH3doqFj70qkbpQ2bJ/xdgGr3lym16Rxk0h67RZfCD4qNsH8
         ZNKA==
X-Forwarded-Encrypted: i=1; AJvYcCXqT1KIIkv3QZowiM87vWMvdgvrTlzP9e1Db56gM9LLWilo+XEBouiOJZzT/zDTPjGB0QuxVHb7kcU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyr9U2xP4SBsJlqBSdrGzKwZiVnBGbPfg7hLMQQYC93ZXJIk6z9
	WffI9Y1F1tV9E83HplHjGvxh/5BIWh1AAF8UXa9QTmSaDRfv7/dJRHg7pYSOMCIxdQL66JD3jg2
	3IQIYg5D0132uDKkVBEoG6D/OJVOHcTXW2E4qMDaLlVfjZ80GfH5sO/FkNp33oE5wqpMu
X-Gm-Gg: ASbGncssLU5Lwaudp5OhMkPgXZpVEtEc97Q9/AUpbDCRyKtheODORErNSPXLPky4uX7
	xa4tWtGPKkX7E8TzX+vrDLANcwYfaghR+EWyU5qGUWzPxyrE+NXSozxxSk5ry3t4A0Y4zhK/eY5
	cZXF3lu+vFX/BpDdWgzNPFHAHRdukYkJ903MBbSzGlCKo1PBDMIHn/1/zeE/f6WbmZ+UPbXd2Z1
	qB9jaA+LsI1nXdODYPKQgN7FPxoucAzcP5TTqI1IAkml6zzx0+X2EvrL0QkKWeQExYope++3qfb
	eON7DEBQdcuxzcxt4QZTs6YgHHTSfORrJFINdmW23dHUxsudPP+lwLzZfFPGrVNgPRJitLlGn9/
	AgIHoTcgqU3JdDkqZ
X-Received: by 2002:a17:902:db11:b0:27c:3690:2c5d with SMTP id d9443c01a7336-27ed6780b92mr10331145ad.0.1758761555441;
        Wed, 24 Sep 2025 17:52:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGD71bqcxeydKwo12qj/CeiC45HSksvyE7WjcM/YRZ+SXEC1DBAWRjoO9AkKTUboK+ohtAoJQ==
X-Received: by 2002:a17:902:db11:b0:27c:3690:2c5d with SMTP id d9443c01a7336-27ed6780b92mr10330885ad.0.1758761555019;
        Wed, 24 Sep 2025 17:52:35 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6ac27d4sm5238105ad.135.2025.09.24.17.52.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:52:34 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v2 02/10] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI PHY compatible
Date: Wed, 24 Sep 2025 17:52:20 -0700
Message-Id: <20250925005228.4035927-3-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
References: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: ONxJrBl3nzc4G5Vej8OG2481fJ9sQVfH
X-Authority-Analysis: v=2.4 cv=RO2zH5i+ c=1 sm=1 tr=0 ts=68d49254 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=e4LYGitkWRZSOGXTHbEA:9
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyNSBTYWx0ZWRfX3yQ6/Kxx1CEX
 cj/KNwt6ikYWpk1Q1SnLm/nRTUMMmWSZcdYs9PKx7wPm1gj8PKfcrEnS6rbaLdNI1jNuTOq5MkE
 xv8nNKcMgphdZKrP9nkygydRnBKptVNCIbycn2cvS+Mvq0H6t/W0xsj7nFmUmPt+pGOOcuT0cTZ
 k8dKLuGVmNPEVsZXFhpmXV8CxoiJ+pL+XJsHzncDuIPUWVpmyaWkjGXcZWj98sGCCSQHWowBlgF
 vrCnDJBZgw65jH4ztApEHrltJZ5k6LG7kVGru9uNdMWXrF8lmFimR+8t7hIlpJMXFyJSv2DhZ3j
 uIscXQ2GBl6W3RnWY39L5/Hx0kdD54Rbp/Zh7xbwLzAQDWSBU/5YZbXAOuMZvCXAIuZG/jhH+Du
 6NkM4l8w
X-Proofpoint-ORIG-GUID: ONxJrBl3nzc4G5Vej8OG2481fJ9sQVfH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_175237_914227_BEBBBAFA 
X-CRM114-Status: GOOD (  10.58  )
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
