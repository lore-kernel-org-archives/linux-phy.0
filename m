Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85B40CAC5A5
	for <linux-phy@archiver.kernel.org>; Sat, 20 Sep 2025 03:21:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H0izWDf9hUoJIUXLpfhWd9yLeStQzrmposhKAUfnunY=; b=DvEHF4m1HaS31R
	O3om/1rErx0r57WOrMGhBh/2NKjDTUDYiv5qIcvGqFRx3kYv7ZkeJu+NETguiyuW16DtWsRA2Zuwj
	TKW2KkLFluiuCBjCnxPgDZ7ERopk7aAUMZCD8wUKEs2E3xZTnLxJlEE6Ods1VKwW6pevyJx+B7h3L
	j3So18H4LOYmyXQOoNZWC4TkC3+pBqNG8PaGYZ7m44Q8Dr/FfpJUBNqcY8YwlLiZ6VyXXWWJT4RA8
	fU2Oa/Xlv8FSVcOISa40PkefE5kbzCJCGUMjI3qHI1ETy2Sgd3H/U7Le0Ur7hgp75YYUbZEoHT8yx
	JLNO0OK8LpZectETygeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzoA7-00000004eAm-1242;
	Sat, 20 Sep 2025 03:21:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzoA4-00000004e8Z-1ESv
	for linux-phy@lists.infradead.org;
	Sat, 20 Sep 2025 03:21:21 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K3KMWZ006534
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 03:21:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=GML8ureMAch
	wx8vpYthv/JvdPI2pl69vuBTqtCyVutE=; b=JppcwkTGoOok13dBZ2ghU/+mHIo
	XOxwUeiHHUSOJf2DQrdj9ftC1MzZzQ6pI9PiasPTlS9psFn9GZbmfKxYfbFp4Bi0
	ZABnsGHn6IGYtEQoImjBW2dpSAWNRO07nyYJPwUy26znHVunu2pWYb/4euPQHVmx
	dip5WkJ4gIwVzDpYYtITei76v+3nvZhC7TUAM1Y5WfXgOFT6ygjCAKyuUeALP1OO
	cjpPVl9FozRpSqNKujWlTSX/WprxkdcvsTwJoa6W9exQg9zQjNoLsNq9nd9aEbIt
	D+83Jgbp4d7A2Z5eZ9oYU5NxDeYXSoO1ZchIq6SxJKVeZJ7w8CjEf22xCPw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98836u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 03:21:19 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b52435ee30cso1798822a12.3
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 20:21:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758338478; x=1758943278;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GML8ureMAchwx8vpYthv/JvdPI2pl69vuBTqtCyVutE=;
        b=ZbZM1TisxuLjwE2xJMk+eMSo+DF5ORh4LAve3Sr4eaDcUF2w06BqXciO6yRi2YM1X0
         12KJv4MIMXgTFJPfNZ5XhvqbI1ASTThSFd1eaWG6zu9qtLHm7Px63EH87rSuhoO8tsVq
         IH8GePhya1YQ5b7pf+Uq7tvwiyP4k7xK+bQsX8yvW9mEJLb+3fw0M683D9M2Npu5w2V4
         babB7NnFFIf4i3QXSlmu51K+kGLeOCynHzAiq2+HEP5bg7HAqY7JHkYPurt6BS7xyQk7
         v7g04q3apzunqct9rS5JBCkRmz+ATQMi+iTkmSavhJCR2lo+zL/ZwZbdpRUBaBudNBgw
         Em1w==
X-Forwarded-Encrypted: i=1; AJvYcCVdOgsqpmUzHZ2xAYkFf9pRZwttvatDhVm+6hpzmmHfxYiPzycp2GgUOOM3VXEgsQUioxqJwzH3PT0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwKauDwxOLxulThM+5hWcsKdSJOm7uJaK8fl5D9nF+srtwoTRge
	Pt80aMZ3p1HdyBx8BoDrkqfKmk45ZWowgZiRWrLnaAn4zAq0vqeR/tkCcVBfUhPLMyt4/N+oluT
	3hQroJpN7wMTKUNJWTFTUR3XSwZLjJ1Kej3CLpigWOX6rrR4gSBV1wndD8OXAbKp77ZyM
X-Gm-Gg: ASbGncuQxuA5NXKsYaVrSsp+u0hiYr5Z2ZmTsHvDDTrumhIWxeDIVLbkD7m8+pukIkC
	toPS1QaQkpQ2x3UEIDiO63GdayK90O9Oi6aPHwiS15I5fmUw0NqoDeEpiWsIK4ECl/nwxs5R3PR
	6RJCuFA45y1VwAzXfn2LXf0RfF+iukC7alfEB9v1X7c7d0qZzuO2OVW4qNUrEVTN6ta+YR+yGOT
	5saH/G8oxcgKVThUbThIdEsbgA6hxkhvrbk2jKD4/atISOqvW0g9Ggxz0log8I1QHems55DGqbE
	MrB8m4/Ax3jeYqtBgQChUkJdV+z/EKGZlhsH3M7tsxG+l/HfXf8unb1RaCKTwLkMV5ffTwyAQCT
	aAx9kyXE4j2I4GjEB
X-Received: by 2002:a05:6a20:5491:b0:243:78a:828c with SMTP id adf61e73a8af0-2927723466fmr8460154637.51.1758338478092;
        Fri, 19 Sep 2025 20:21:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGo3UQ3Zyf00PaJ6fvkX8fIq4kwna0eBd+Z2NMvErSf3djLCGdVAB0D7+Mb7C6OXe9h8e7FoA==
X-Received: by 2002:a05:6a20:5491:b0:243:78a:828c with SMTP id adf61e73a8af0-2927723466fmr8460121637.51.1758338477668;
        Fri, 19 Sep 2025 20:21:17 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54ff448058sm6178807a12.54.2025.09.19.20.21.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:21:16 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH 3/9] dt-bindings: phy: qcom-m31-eusb2: Add Glymur compatible
Date: Fri, 19 Sep 2025 20:21:02 -0700
Message-Id: <20250920032108.242643-4-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: 62LPvkTUw4LG6C7lES2mqurfBn5HTh-J
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfXwijVh9XqK5r/
 rmekwwVY9knVa+/CPZUhNH74431AA6tkywWy5VJR9LAY3VzI/Uy+ijOqxnhYVMTGVAjL4w0/T8h
 Fad3AicrtypAESVRyTRR0c8UQHw4mrZRA/KPpN795Eyg6YvNJ4y7lfokvIstmJLlyIO/UwAN3Kh
 btp3vsqrzgL9WCg+kA8yFScUBq3SXITZGTnN7vuv6fivQdzTYfJHsEtQ1afqgN+3VQjsXaaIiwl
 H/VWybJMno3ODlQElqu8/3hb3mGr+LXXSAzp764B2QwlNWoLbEuChWuCyJWo+/SnWP6wQSRNZW9
 +v/TK269NIdEuRhZW71aaOT7kVkTtRGpI4KoaDS6AVnqDzxO21m2LAczk/XjQPqE2AN69okgcWY
 3eVDf0mg
X-Proofpoint-ORIG-GUID: 62LPvkTUw4LG6C7lES2mqurfBn5HTh-J
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68ce1daf cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=4j6cOweM1wKm_1e2C94A:9
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_202120_449692_076A841B 
X-CRM114-Status: GOOD (  11.31  )
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

Add the Glymur compatible to the M31 eUSB2 PHY, and use the SM8750 as
the fallback.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml   | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
index c84c62d0e8cb..b96b1ee80257 100644
--- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
@@ -15,9 +15,12 @@ description:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - qcom,sm8750-m31-eusb2-phy
+    oneOf:
+      - items:
+          - enum:
+              - qcom,glymur-m31-eusb2-phy
+          - const: qcom,sm8750-m31-eusb2-phy
+      - const: qcom,sm8750-m31-eusb2-phy
 
   reg:
     maxItems: 1
@@ -53,8 +56,6 @@ required:
   - compatible
   - reg
   - "#phy-cells"
-  - clocks
-  - clock-names
   - resets
   - vdd-supply
   - vdda12-supply

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
