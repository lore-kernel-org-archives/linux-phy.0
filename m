Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AA41CCD1BF
	for <linux-phy@archiver.kernel.org>; Sat, 25 Oct 2025 00:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/98NQtdNoXVRx8ALXAM3MngP/XMJdWPZ40Wb20yoXTM=; b=yWRJLK8hRvOfkb
	MBx0u13Mhxv4h+UX5xjzwIgT9i7yfZ7jGAgKrOZyirlHbjInae/BJ7Bt5YXz5gIeosuUFpE+nRxCM
	LaxgyuiZ00boUouGV4W2vxx1KzIq2c1uBHlr8qwVyfXRtdMevoM1vxCH1Ao4l+LGFSmsTwu1ve2wT
	Br8t2JgERVBNjZRl7Jtyk//+5sPO8uJgm+Z24tpGzdM52pZcw28Sg8Rm0EZXjmnI1CgTgbcCb1DJV
	ZOFKAfYDjXKNAwhD343w3CL/c79h9FfRVIN4RqDQE8sQoKbILeAslaedS35l7/2m5xQRfWmxIEk+G
	y476fPoEfdVKG7B3S+iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCSRu-0000000Al9h-3bgg;
	Sat, 25 Oct 2025 00:48:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCSRq-0000000Al77-20wP
	for linux-phy@lists.infradead.org;
	Sat, 25 Oct 2025 00:47:59 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59P0lCGN014104
	for <linux-phy@lists.infradead.org>; Sat, 25 Oct 2025 00:47:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OiyCrMPdV7eNoEt1MqrMVwtFtL3LASmksliQC+JXb54=; b=mKp/9JhZhZZ1TD7W
	PyTs+CK1Oinl6Ufl8v93qCKzz7bu0yEgtKx6LvhltTCQzViqTp2kiK21HYRXrNak
	4QFZOXKdIL3UdQKau7G00TJP1zNk8W3aZvNB8fqaaonXuWx1dtzY+s1WCwln78Zu
	MZZXl3Zf30YXGIA3Ao2Ycy76LZpft5xmPz33aK/rh9wGXggN7ZLPYMGG+argMi7+
	xlWHHMGmpp8hd3EhlJEap7jVsC8pcS0oqUbxpdFCEWt3ELDEnexjkP82da/kOy3X
	Y7a5VCKSLNuyX8GzTEuICmTG+EQV7GmrVzyip1wCnHr5KZ5tYQot72IR8teaRhKe
	8UJCJQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v1w8dj92-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 25 Oct 2025 00:47:57 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-33826e101ecso4216556a91.1
        for <linux-phy@lists.infradead.org>; Fri, 24 Oct 2025 17:47:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761353276; x=1761958076;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OiyCrMPdV7eNoEt1MqrMVwtFtL3LASmksliQC+JXb54=;
        b=agy42behwedFSw7XaK8oalgxP3BJHJxkOpGrMwu364AZEcrjmaW+J/DEDLg7qvIKQ6
         59sGMRerSbFF53nySaPgy+T8PeYDidbboSmz60mnjAX2FKorEeDGlUUHqrt8Z/fNPIk6
         eXEiL4s6ulu6VpK/uHp1qNEU1UgbozUzz+KOx3pVhh8g3FzngednyFC8A0YiWCc1E9ng
         15CHP7c9uuaBfgoOdVT1b0Q0o9wYXGQmIfFaFa4L1PViaSJiKYiT5c3UAW6jNzvxDPXY
         USbkDmp1ozUGJqsiqnrtQfB0O3K48hR0tLE/1enF/XM+9HUlsxTCClJ4jolDr3bw7jVd
         dorg==
X-Forwarded-Encrypted: i=1; AJvYcCVRXS7om5xCLNjennK+NPXwsk7aLBfZUIrjYdUSNqZ1BECuqm+A6t52hkDDU68ytsX8ZMRv3f4T5TI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy76l22Q+LZSirNThs08RS5dXqe10S4OOKIv5+e10W4vlgCmF9g
	UHsMifiS9FV8rMrFxGWN+n28vKcmdVbioNWQJGvVV3TBEqlB0BEqTSDWSIRoJ4dbOLIAPfV5SNi
	+Xd5BcWEBM3ACjBR3aoTytcDua6QAFtNmBQK9swtmayLhfdOT/gximE99Zr5V6wDmjka5
X-Gm-Gg: ASbGncvYOs3HacHdCEF2OsfjGl3//efe6R33p1WpmSTS2uC2cPOLTo6BAishK3FX7nI
	8x4BjJRFV+N8e9nkGG+1bh5nn2LnDeEl8LZ2RYMnmKhpgEn2HLVffZ7+AaR2v80u7r6+sdvxlEh
	ed0gN+6nUdgbyMsGpiFwfbcRyRCLZNh7i5dRv4WWD71bV7NW/sMZu3mpKp2vN6tma9KcLCBB67Q
	MdnerHBg6CxqXmrrY3lHyGENM/P5zEMWqw7/0BtfnRKmb9MjgkvTFO6/kO0EdDp5leLufpkWbGf
	fSbBHbb97pF6UMCDzpG70ANXa1KO+J3+7sruogtW2bI87A1ang2dH199wQei7x6FKpMkA/xS9fM
	eKu2hL5679A0LMKBeNWmj30GJL1I14ZZzcWMbF7+3L2muE+LMOqs=
X-Received: by 2002:a17:90b:3a81:b0:335:2d25:7a7a with SMTP id 98e67ed59e1d1-33fd3d2f95fmr5490251a91.10.1761353276302;
        Fri, 24 Oct 2025 17:47:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHMxipVLSbzaSHbq2CMVQ8XouhSVyv3oe+2+wmcnIacWAZFWHjqUBUerrKYH+e1VF1BVwR2NA==
X-Received: by 2002:a17:90b:3a81:b0:335:2d25:7a7a with SMTP id 98e67ed59e1d1-33fd3d2f95fmr5490230a91.10.1761353275807;
        Fri, 24 Oct 2025 17:47:55 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fed3eca8dsm167352a91.0.2025.10.24.17.47.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 17:47:55 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Date: Fri, 24 Oct 2025 17:47:40 -0700
Subject: [PATCH v6 2/8] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI
 PHY compatible
MIME-Version: 1.0
Message-Id: <20251024-glymur_usb-v6-2-471fa39ff857@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxNSBTYWx0ZWRfXzj1pdmby1vb3
 vzfLYl8He+FtmDzuaJ8r0QvexR8EKPlU6UTOp6QTR9gARnu2GGoQHrE6zSVePLmOhRGz++q5UMU
 sIwREsg9SE3phwT+MmXnE12VQXK9zLh9/BWCd6m0DFpi53ShvRf7FUNoRXfVIOYejhCFdDFT4iJ
 hK+5QFj/Slivp+hnOtLjamlmiPR4xHduVWg1dIYrljL+JV+j5GD1iDvOOoVQ/V8lE7doLWRnF6D
 r4+99GVgS+eMR0rdX3fp+YD7noYY26ZozxGz1FlSgnw3ShAOXF65FNpFQ5JQKXkfda7GHNmjYZn
 +7fleAddPCURyjkru6HMFz47FuvNX3YsOHJ2ihI5ocpuEeshWBnVvTvA98hZmFQF9hs7TK45vMH
 D6OwgutHv7ZwI/woU0TkjEmI7kZdYQ==
X-Authority-Analysis: v=2.4 cv=bNUb4f+Z c=1 sm=1 tr=0 ts=68fc1e3d cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=hwycSGIRGvt53hta3DgA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: RiuBmBmw2Iwasy3CAjiKD4-FeMWV6xV6
X-Proofpoint-ORIG-GUID: RiuBmBmw2Iwasy3CAjiKD4-FeMWV6xV6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-24_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 adultscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_174758_644886_6D2E0AB2 
X-CRM114-Status: UNSURE (   9.28  )
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

The Glymur USB subsystem contains a multiport controller, which utilizes
two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC, and
the required clkref clock name.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml  | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index a1b55168e050..f277fd547746 100644
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
 
@@ -114,6 +117,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-usb3-uni-phy
               - qcom,qcs8300-qmp-usb3-uni-phy
               - qcom,qdu1000-qmp-usb3-uni-phy
               - qcom,sa8775p-qmp-usb3-uni-phy
@@ -126,6 +130,7 @@ allOf:
     then:
       properties:
         clocks:
+          minItems: 4
           maxItems: 4
         clock-names:
           items:
@@ -157,6 +162,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-usb3-uni-phy
               - qcom,sa8775p-qmp-usb3-uni-phy
               - qcom,sc8180x-qmp-usb3-uni-phy
               - qcom,sc8280xp-qmp-usb3-uni-phy
@@ -165,6 +171,19 @@ allOf:
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
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
