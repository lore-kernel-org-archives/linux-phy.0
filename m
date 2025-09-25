Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06DF6CAC5A5
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 00:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rnLqtx0Y+TC148WEJKm3nWccBg5AqB3uLuPB9f7+pwI=; b=o2BkJll9WXcxI9
	Bz9rq+673xsnlNk0C4ZFuh1RiJD5EUKgvGZIXLF/up1eo+UMPy5lzYJ47qAg6gxhA0Was5t+KVYeK
	Y8qVRPa1k89Tb8IUNMpb1MMHUx55X+rEj6nshnQ07v3AUDUmInv2gemte06L0eMam0aFIY69BUj44
	AoUy3OI6vEaJ8w18bqv4W9cE0GB3/sD4tjMjXjqCecJaiFogKHF8p4vfM/AuB329geUOjqmTVBjjS
	c9sCUlseQMaIpp+lc3OkqlBXV9ifoj5y3acBAsqN87GRBSm653hwaBqgpb7I6MvO59VwtRqrJWA8J
	srBepL6byl0D1P69t0XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1aDv-000000058CB-2r5t;
	Thu, 25 Sep 2025 00:52:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1aDs-000000058Af-108p
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 00:52:37 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ONwXot001842
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 00:52:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Xn4sEHzNAa+
	rFACXl1zYTLnQ9MM2kFlvsIN0wm59uEQ=; b=YknGhvU2ad4B5JZ51NAbfxbq5CP
	B+J0ADTRSvaUnyAE2Gcf5XEivQcaFbrm6sd8D3am9X2WkrHM1cHcqILtRCigmr0p
	6h7PjnUNdR104FzHy3g6quV9LhDHEwXcAMr/DTy6o1K5CM3JYkwp2SQc/eFb3slP
	HB1IMrWHSO1XLBdQubqvW1C1iHUiehrLFGvyjlqtw6oEsTyizlIg94E1Z4EhWIHk
	aREXCHASackBMHLWFU8Ij7o+QAFxNLqMH58RP7UScN4TN5BfGb4fCbegMZJe6cjf
	zJuegYMpa429dvlImEKhZBkbzhcX11w4n+2Yv2PjE5y6YzeeHdTi+SIceNw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98p7qk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 00:52:35 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-27eca7298d9so7903175ad.0
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 17:52:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758761554; x=1759366354;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xn4sEHzNAa+rFACXl1zYTLnQ9MM2kFlvsIN0wm59uEQ=;
        b=HTpfI0FJa0DqsdhOM0J6FWcTbfOryEen6F2zWFky9fcpL8fBiqNls318niJb5/g+48
         GzUSd92CxfeTNKodSffRzv01PJLDr7aI46Jw6DbuHS9yGwsbqJKoQCedDV+oHWLgMjq0
         +g8yBTXOPWnpuDtDxvYbrhviueHcTDIsLWmlQPuvxEtQIkJScgrwrhwTREX6vtRh+jB3
         xQFIdb12jUST4K8baaeHasic+QnijQHdIgggw9Ip4E+utvgnXxvkgmNgaLfAgzNd1VJQ
         gJwuK0Qvgc6INr6Ut1Yw0S0RppKou0vcZAgFnWhb7aIG+JGon0fPiRn0yQlvoiGFUWVE
         ZEyw==
X-Forwarded-Encrypted: i=1; AJvYcCW3Zf94geKISMjKMmvMbSensJr6LCUC47WtXQKVfTDZJ4rzzi/yVm7cd9ut0UZUR9QuuJw/QsZ/Ua0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyN8nxq4tXb8bzfnbhSv71BZ9ikvRYPlP3WgvEjSeEVqIDZWtfa
	Y6wuvUwQXyClrjCkXwukvU+tfrM6ZKJ1o4gjcYMOHgXaOgnYyI1oiDU4iW89Wl3ZQXSMztk+aZ+
	D7VMmLsv+U9N83LfDdHDWuVFUYGRy17RYro3Z73ztO7sfgurxXv5QS4uzTKUVmVVTAod2
X-Gm-Gg: ASbGnct8MULKT7jCbg2xL7dnLUKNmC0KD9ClABYsYqWTqENLCBIcQKcOJ7EnyZ27NMn
	k8a7LR8bqGUruTvGD46jmIs3KGaM17WpzpqtR1uzE0S7N7lfSpj+Qh527pjt0G1er1cRxhUCAbM
	dNzUnpdKx3ihaaUC3SJKWXTNQpkmOKyKlwNWzr70R9DxYY3hZ/0cKOIP8FK0b/rbY9H0SxCw7fs
	/uurVjzfBNer3nhVNBWzgzSwGdxQVEq6pQdRu9VcgYFFvJVKEbItaVovuhibuPiUlqVgnda2YT8
	U8WJgryGhrqz6i+CFY8cFz2Y8g3i4tgMO+9pwGC0UKW2Yo8WWtUllfwoL6QqLBa+zFKYqYVz/ow
	ZnV5F1ALPwfZQsHVx
X-Received: by 2002:a17:903:946:b0:271:49f:eaf5 with SMTP id d9443c01a7336-27ed4a30d16mr18646375ad.30.1758761554078;
        Wed, 24 Sep 2025 17:52:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF0BLBhfqoLRlN6qFMkJxr7vlacqg8A7EpkzWtOHvCyZqAcmJHOiOE6WNsUjzSArIKZUFj+xQ==
X-Received: by 2002:a17:903:946:b0:271:49f:eaf5 with SMTP id d9443c01a7336-27ed4a30d16mr18646155ad.30.1758761553655;
        Wed, 24 Sep 2025 17:52:33 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6ac27d4sm5238105ad.135.2025.09.24.17.52.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:52:33 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v2 01/10] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Glymur compatible
Date: Wed, 24 Sep 2025 17:52:19 -0700
Message-Id: <20250925005228.4035927-2-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
References: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: 0jX1NI8D5_-lhyeDaMBYqJGxlIDZ0jYb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfX1c/WAN4JuzAs
 SucoTDWrz867Eya6t9H1A/qfmUiXkCy4xdR/OMJ4kkEZYj8hjgDcpzBcKFrF2nNdsmagFVS5pHQ
 91jub+IL1ol6r+8swVcnrJGrOXZGVsXLXm8miokRTzxKWGVKsghkEtokzPAnNmpqSB0jUYoFrw7
 V22S2GWO+MAi59Cm3WmNFATJg6nIOATJrsJyi1b3uT8j3dKjmvj1lA5yEPkOMPNZagKK1yUsPop
 XwYf24rjv2rrDpLQhlZ38xl5/v3k31Wr9shvogDpVgA9h35uPLIoZHAMwaUSyWbdbpNSD0qMqy4
 hSCJlT/yeNXuF72Km29g6m/ERwT3/Wso9gmcivZAq37i922z1imAjIhCmrVaVbXtV1urf7+tunj
 lzhH33Sl
X-Proofpoint-ORIG-GUID: 0jX1NI8D5_-lhyeDaMBYqJGxlIDZ0jYb
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d49253 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=tYbxrAoMRz_Rh0uxvwoA:9
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_175236_392614_688D145B 
X-CRM114-Status: GOOD (  12.00  )
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
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index c8bc512df08b..2f1f41b64bbd 100644
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
@@ -46,7 +47,7 @@ properties:
       - const: ref
       - const: com_aux
       - const: usb3_pipe
-      - const: cfg_ahb
+      - enum: [cfg_ahb, clkref]
 
   power-domains:
     maxItems: 1
@@ -63,6 +64,8 @@ properties:
 
   vdda-pll-supply: true
 
+  refgen-supply: true
+
   "#clock-cells":
     const: 1
     description:
@@ -109,6 +112,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,glymur-qmp-usb3-dp-phy
             - qcom,sc7180-qmp-usb3-dp-phy
             - qcom,sdm845-qmp-usb3-dp-phy
     then:
@@ -128,6 +132,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,glymur-qmp-usb3-dp-phy
             - qcom,sar2130p-qmp-usb3-dp-phy
             - qcom,sc8280xp-qmp-usb43dp-phy
             - qcom,sm6350-qmp-usb3-dp-phy
@@ -142,6 +147,18 @@ allOf:
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
