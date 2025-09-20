Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 675EECAC5A0
	for <linux-phy@archiver.kernel.org>; Sat, 20 Sep 2025 03:21:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PR+qGi9+NNDryskcYSXbBxoMIlTQOqOi+j1RIAdDB4g=; b=olOHPBV40IyvbV
	9X/u//QyLAkxiFDtfuELo+TPQTZudZXsox7sze8Coo3S69/M/2MNaX3A2WTuVlv1ad+S91y24RBm/
	HcayeA0BkJfxnCjctcpkFPnjBKE25S81+/CzrPFXr9LNly+lwIDlCIyE7QRSKSjcSAYC7P60D1XI4
	siOi3+/M3JKqLTEAPoVyylrsXvE19d/4J4nMwtWeaGdEOfRto7ybdO18sLzlpGl21ibT40qQ9H1hZ
	LB4jryj6NkzSHU9wWdE5ADrTkgy6GpBUS1GoQ7m0vFDY9oZMG5730H2mxpUGy/7F7LAWfsvecEStV
	xEIiMu7wzwzIbLCldKAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzoA7-00000004eAW-01av;
	Sat, 20 Sep 2025 03:21:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzoA2-00000004e7p-3gfD
	for linux-phy@lists.infradead.org;
	Sat, 20 Sep 2025 03:21:20 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K3FYsn006147
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 03:21:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=v5tmMdZXUOm
	Jw/ggIyYVsmTSYyBwUp+iA2AluiqlOBQ=; b=R/Zf1bqJRVVYzeOtR0sjwOUS/v3
	IGwo1v+5nWeo5+Lb7GTgNTJNAHDVDGVdfhI0xllGRsk6CDB03tQWalWi+0IKlGAf
	2SPbTEofHdOigiA3PSqwPzdBFtIH33Q24q7Ibrnhc5bYMQ1mCca6FA1lzdhOyRwB
	l2drZvOYXJI8BhGJI4H590RH+ckv2lkm/gqbw4soyrlr9aeGT7Tj14I52DS5AdZ3
	bQ2HPh3+MiPuxn9oEYdmlfFQ/zFeYkww0VZl0PnzSVuhC1Af7105vXss2m1hqzHI
	ZTzhuTyZ4O6SwlMSkQBXeCoPT9GLgGs2orf2DzGB95XjlDI82xKW/Jk2giA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kkhg225-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 03:21:17 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b5531279991so552105a12.3
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 20:21:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758338476; x=1758943276;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v5tmMdZXUOmJw/ggIyYVsmTSYyBwUp+iA2AluiqlOBQ=;
        b=eMCL8P63cFDCgDAaiIcouSo0pTgYBSo+39UkOtdTk1jU0HSNAaOdHPHgYAiLeetpf8
         HSbYweXAAgjlDN3OfjxSCPLhokiXNOLCYF7FD1knNt8cCVpmQt4Lztat/sBbtuMw6j/f
         n2FkadNjl63FH5JgDYm1/6Z5Z0uBg8mLA5PxwhicC6sOq0D6UJOKh2q05QiicqqbrE+T
         rQH3u7eyaLx4cud2eMkr0nkAeHeSzXdy+4CzuV8VAYHG3ypeqSM2jsmkjepbzaCtE86F
         J5NErmk79LXS18aH2asWP7jPjLFO/jVtwVoKhmM9t2KyNF1gAV7ll7EhHkNTSBXsb8pz
         9B2A==
X-Forwarded-Encrypted: i=1; AJvYcCXaKv6M4sw82pe6pPdUHBL1fS3o9wL1xtZk8M013/PumMRknMxwLij61Yf5LL+0MywVCKePeKR+Yoc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwY0FsHThmJVm1vFC9qoTKtKGVsvmotCeshQ+RXUX3IJ07FziqB
	VbwY6r8sxXRRypDVKVOMTrqBRB6IkQskHJb8opxxkIaYGfml+GH3QH0oP97HyhtmgjpyVcxrts6
	zPrDLMpxQZ6tzWyhnlVlMEYCfKaqLnA24mghV9m2Sarha9lFAoitAUOYN6MAs6YKS99b4
X-Gm-Gg: ASbGncucTXZ0FIRA3GotovJGxITsTwi02JIOVruZ0PVSvXADGczzjkoV3B8x2ifvxez
	KDeX01CeGitI+kXQzX5RM+j181XpuYGqHefVkVjBNMgPizHesQfG9XqGE9CbcvKvktKk6tnmxrV
	Swm6n5/xQR4ehJnd5V1KqHzudmDLBOwl1BbvpxLAJPXOVZiuVgPVow9tSSUAZBGElClHULTGjtW
	YkLk75NTvp21/p6wvy1fcCT0RVmpVAhlXVParDEztZ9oSLpELxBbg9HrNXkT5SZGo/d++zTVxAA
	9Qk5cilSLYewQf4IbqCM4jwOybQX/S+R9sIe9pGu6MbZas5aQRqJdmK5HrP0GxbmGAv9OI2NZkU
	x7vjACVYEGfzuUpRY
X-Received: by 2002:a05:6a20:2444:b0:24e:2cee:9585 with SMTP id adf61e73a8af0-29274fb33c5mr8251252637.54.1758338476469;
        Fri, 19 Sep 2025 20:21:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEOqZ5VhtjKbilxthQa6bXSwR4zCDyXQKASkb4d3QLk2LNVbpxHxAtIPLoxjj1rAPuc1i5rzQ==
X-Received: by 2002:a05:6a20:2444:b0:24e:2cee:9585 with SMTP id adf61e73a8af0-29274fb33c5mr8251223637.54.1758338476056;
        Fri, 19 Sep 2025 20:21:16 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54ff448058sm6178807a12.54.2025.09.19.20.21.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:21:15 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH 2/9] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI PHY compatible
Date: Fri, 19 Sep 2025 20:21:01 -0700
Message-Id: <20250920032108.242643-3-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: UgIric-e-WBPTbggIg1OVEfZN91eUT6N
X-Proofpoint-GUID: UgIric-e-WBPTbggIg1OVEfZN91eUT6N
X-Authority-Analysis: v=2.4 cv=JMo7s9Kb c=1 sm=1 tr=0 ts=68ce1dad cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=6ooe3h3ZW61ma_5lk_AA:9
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyMiBTYWx0ZWRfX8BtIRnR3Ipbz
 SVVAjHkbdKwGMZ7NVBe3iFTXfCemPdBfiFj4Co6r/MyFgTPIsjn6BMyL8kPsVbyH/OhbRRhl5To
 Ze0flIsA06meineM13gUh6dG1zJ/UCbgOCiEqHP87pPRQ+ormMd3hulKdd3oRW2QRe8mQJV/JgX
 9x8nelR4fkaAwsNOqhrTV8gsl4ZS1FPtvfQfuIBcpRf31QzGi3UFhA0awXRguJ85eRYQp6apbuB
 hfK09CH1L3XocSo1DO+PzXooGE9XqvWNjnVP/Bbv+XNSiNkeJQe7EoBjfrHYu4kxYW+c2UcmI9q
 86lQN5WX8lma7aAVz2dEcTBGQe8bmCNcuuX9m23IvG+ghbu4zsuMpxif4UetXi3WJZ/zptqMGoZ
 sx/WardT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 clxscore=1011 adultscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509200022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_202119_040344_D4939906 
X-CRM114-Status: GOOD (  11.04  )
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
 .../bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml       | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index a1b55168e050..772a727a5462 100644
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
 
@@ -139,6 +142,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-usb3-uni-phy
               - qcom,sdm845-qmp-usb3-uni-phy
     then:
       properties:
@@ -147,7 +151,7 @@ allOf:
         clock-names:
           items:
             - const: aux
-            - const: cfg_ahb
+            - enum: [cfg_ahb, clkref]
             - const: ref
             - const: com_aux
             - const: pipe
@@ -157,6 +161,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-usb3-uni-phy
               - qcom,sa8775p-qmp-usb3-uni-phy
               - qcom,sc8180x-qmp-usb3-uni-phy
               - qcom,sc8280xp-qmp-usb3-uni-phy

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
