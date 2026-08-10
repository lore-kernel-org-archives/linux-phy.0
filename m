Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 810E2C5AE5D
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 11:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Opu+aHT1SLO1KL/0/WkvypnjA/ba17WWiFRmVrLubHE=; b=OYD2B8CtIoU03p
	pG/s+SBDCi8fqEgc/UPiUDjww2vrv8581PTuIU9oOIZ8cpuxeuFVPIjTrKpZ6sJ5zOX0bf6lY4Zln
	1XPuwvu06AOFR3kgIJA9/+4jPojIkWN9RCulvAEm1N7JTWdLdzFxR3qDSyhdoMQH9bYN8xXrEZCTf
	2ZAqIxpe8p5jM/okqGvcJN+IvP824OfDAH+8hOCMX8ChvoNdvjqLiMx13cOAGa5dDi27HwzEoS9JX
	vHe1r0fj5r8xmKAu79UWs1wnEvzvtr5jTf7O6FDY/8+vU2/aaKOeghGr7GzwkUmp4C2pirfqz+1TW
	qpbPppwE+qeL1tYpoJsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOOv-0000000BeLC-0sSk;
	Mon, 10 Aug 2026 11:42:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOOt-0000000BeKL-2mkE
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 11:42:40 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67A9SHRg1167456
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:42:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GBHgqITPjiMrZjSXDcK+2HIpofFndc5Z0v0BPQOXm48=; b=PX4IhYaZKAaU2JJs
	HhCLezqVQ6Nx9eZzMEx+idZ4G2sHefm284a3EW8dBKDHwcLxhtnsW3tcnxjGdLxL
	ziORSXoeuDwvuEgroch1RRC8jnewWYwua3ojB3TYhva+jEJBuS22+t418s5Ru6qs
	xUXjfemf/kLRHl5z6UlTZY35Q34pz4AfYPDkDFCYboOl7ioupz9ap9Y834UG/LAl
	N/M2FLHGfjRgBU0IRs8xKE5TIWih1I2LXkDiAmSjkp+RLVvCOAGVR8E+ExJXr2Rd
	qjvzwQR0gTrW1OtT6p3VZuH/jwXh/iO3fYKw7oN7i0/dB8rPRKV45oXdFU8U26ay
	xBfXRA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fy8vhhb1c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:42:38 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-52769fc3f2eso24635521cf.0
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 04:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786362158; x=1786966958; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GBHgqITPjiMrZjSXDcK+2HIpofFndc5Z0v0BPQOXm48=;
        b=RYsXzg0xxiQLu93QC9upNxG/6G5vC2evi6YrvfpTqcXUm/s3H6pKTN1rRdTWMpXVBS
         o4PGJ2tJ47A4SG+iB8Rbq0ta5hVJwGysFNR2uk4yuN9T75mIEOqxJoSV8wpN/gAAL9Wh
         fCbyJv5hvVSPom2Hp/ADO+r3OVXCgBDXAAJgbol3+fKLpzODzzNudUm4EUr1TqusvgT+
         ULJ7jxjADtxURDccYlrsP3CO5k6urGDNPJfJXRFF1yCKUr+GSwcWsmk3BXAfdYpKe9HY
         O4UcY7McJ/h3fYk2GTmq4CYJ/uqMZq2HheK3ZzbC67MC+ixNLyuwW3gMi0kpOvuCR5Xy
         Sv7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786362158; x=1786966958;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GBHgqITPjiMrZjSXDcK+2HIpofFndc5Z0v0BPQOXm48=;
        b=MAFSfNuT+Yi5IerCLKORNDUsuN7GVchfX4wSqkmQk4HJAtkQXWEpfKGbxaP38LU5Lt
         gH2uQ/O4Syus3X3gVLueLtZ/yVgLIq0FAPxHP638fAwnKeJ9I475hlssfuZ46zylQdNo
         MUALEtwrviX4dBpwVsqefgI8rQRiBLKKFT+i+J0oG+ZjSL9SwSW9GkTkpDN1v6CD4Pm5
         ro9UhBHpkgEJwiaI2itqM0KpMHHXvLZJlv+3D6V5AhmUHpz6iwLUBf4mpg3K1YUC872Q
         CHJID+FE1tdZHMFC1eEwjSGx/SFDoVZiaTdwkfjPvyGVKIMOW8cJlU9q43iEBjD/WZsh
         CXTg==
X-Forwarded-Encrypted: i=1; AHgh+RqKR0x7TE3Bxbvr8lCaLgCuc1ClOTzcYc3ahRhgBkAyqXjmu1YprQWn1EnKJntL7vYvUhilLHHeFZ4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyhZKtXsxRuRNJ6CcuiM3CXliGjc+WkWyMYFPLE+D9nXnZu1thI
	kFuzlooaeibn/hZBDHVMqXWClWxCBz+v9AQzvigO9ystDVwf05g4ivLLak6tqM+QaiuL8nu+HzN
	QFqtAQqE35iJLE0+vf2pVZQMpioGBY+9z82YAGAaSrW73TvJrp2DI+yXklfXdrn57KIJa
X-Gm-Gg: AR+sD12Q0S2pjH/9wVlAHMcHfRQs3mg+099Gos+gpxk1QMrSFSUoJJ1/ihvgeCSODfC
	LiAyxAXgjXfQzFtnHK/JqLikHWw1H7rfAD6+QSM4in/QmQQd8E4TMPx/SbH4/m6vaP/WXqXBDFh
	73FjqLhminSvnDu4tP+0yzN+BfGfN+5RgWVf54uUd7a4qRSdRkOgPrdzwFCI5xrJDOUYpa7D3l9
	Hx2S1VvfxpXY/UX/h/pBSvAxxgW1JriTvQyELbcn7HQq8aiQcPHb0SwRx/QszUECkJnAjpPiQSB
	wc/coqxzsRtSixVJpFJ0Oe4bXx5ezIWtod6gAX99AKFc6y2dQu/Gx+Tcm6jOCHZ+zvsTR+xA2Zl
	hFaAX0F518AjMjq2WdwK7U1EmsIyuuChLmPJJccslkb7pXNjQs0cnqqBxIOQ5etJr/BScNBOjI5
	5Y5IfKmjS9/bdjaQ==
X-Received: by 2002:a05:622a:587:b0:51c:167d:b346 with SMTP id d75a77b69052e-52ce6100d78mr441968781cf.23.1786362157683;
        Mon, 10 Aug 2026 04:42:37 -0700 (PDT)
X-Received: by 2002:a05:622a:587:b0:51c:167d:b346 with SMTP id d75a77b69052e-52ce6100d78mr441968331cf.23.1786362157230;
        Mon, 10 Aug 2026 04:42:37 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39fddd67ea8sm21201671fa.28.2026.08.10.04.42.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 04:42:36 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 14:42:31 +0300
Subject: [PATCH 01/10] dt-bindings: usb: qcom,snps-dwc3: document the
 MSM8974 controller
MIME-Version: 1.0
Message-Id: <20260810-msm8974-usb3-v1-1-1a47e1185524@oss.qualcomm.com>
References: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Andy Gross <agross@codeaurora.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1717;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=qhRCylRHTRaGD5YJ/0I53n0rejgVTgZ4tzsI5TfFies=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqebkoAdyxjLuhPkbluIjiVxsxgMpnlxghHtcQU
 vZW/mxZwn+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCanm5KAAKCRCLPIo+Aiko
 1TR1B/4+J4GSbVP4vTiAOU6zugN8JT9A/BvENs3t8WPdfjuQAWRV1eQQTvGQlBhWyINK8JFLCSJ
 p6bWLIQKP2FkILVw8C/omiE0QqndUMLHBkwGQkIbohEBSH4gN9BC8n/qjgeEj6WvoL8kABit9hK
 ySCaC4pibJKE9Tfkw9RTCXy0kbxMym0eoHRbJ1TpK/8fKQdiHrqOqK3jAte0A3AOMI6fbtNp3JA
 ORNKwajHTTJY5tAW3yJJeT6cNzeNIQpI6nXQ6Ic87hPmRXVykE/EyFCaqUiekfg0EjVbR5pa4zh
 U6kEjfrUm62kZLUW7ZMrjvXafAaed17u2aXsz7VoDId/Cj6q
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=MMtQXsZl c=1 sm=1 tr=0 ts=6a79b92e cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=lQX3LMpwEkNltmwnNXMA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: 7C2fJorrjY5gocGzVbAg2YB4RY1ur2h7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEwMDEwMiBTYWx0ZWRfX/qBWobIS5MLD
 erxYk7S+NG5+/VqWrlaMcYX8uqnKaQvuua7wT3gfoQutKn/8uEhMsr05Nk1jdw5AoKl5G4fgnqS
 9oRZz6x7smoClIukBBNom3RVw0RWpYHAE+nyTd5L94zhu+dKDWe5E0orIpdzGWCelhmJSnCoTYK
 o8YlJ0xwLlbVBTGMLVTq6li7B2mjih6Hq8NiqR5+3VKyWTRLLrzwGR6wIejElOMnRfPzRE77JtA
 N6WnQNYrXdu5ji63DTQC6lbgKCtJ5/KY5M6KepJhArmZqzdJhmFKQggVNS/1juTjJd1zyezx3g8
 n1HT5CGuib+A+EW4UcmD9hX1UCFgI55yH4cO5ijVPHIKJKlWPbTULvl19GK8JCh6bibNyKx5wwO
 p2QJ+Clv3kKNPdIigGihuahIOPY9EUboitO4uDWAiqsARhXgHukrjYwVmMiEJPF397FwEJP6b3e
 7/s6yxrqXdVDiVeg8Rw==
X-Proofpoint-GUID: 7C2fJorrjY5gocGzVbAg2YB4RY1ur2h7
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEwMDEwMiBTYWx0ZWRfXxqZHb0Yibfdh
 I+I7qNdqs5NzTVJMMkNS7C2TrD7ofWyfXgqhWtvjQ+zxcak0iXmpGZ9a7L++/vbgccYb8FZiq4G
 7/5jetW+SGuoQfZYmzLDWmc6ZXnVsXI=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-10_02,2026-08-07_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 spamscore=0 impostorscore=0 bulkscore=0
 priorityscore=1501 clxscore=1015 lowpriorityscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608100102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_044239_826131_25BFF200 
X-CRM114-Status: GOOD (  10.01  )
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

Add the qcom,msm8974-dwc3 compatible. The controller uses the same four
clocks as IPQ8074. Unlike other controllers, it has only 3 IRQs routed:
core, power event and HS PHY.

Assisted-by: Claude:claude-fable-5
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../devicetree/bindings/usb/qcom,snps-dwc3.yaml       | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index ea60f7220afe..9f91c8711e02 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -40,6 +40,7 @@ properties:
           - qcom,maili-dwc3
           - qcom,milos-dwc3
           - qcom,msm8953-dwc3
+          - qcom,msm8974-dwc3
           - qcom,msm8994-dwc3
           - qcom,msm8996-dwc3
           - qcom,msm8998-dwc3
@@ -268,6 +269,7 @@ allOf:
           contains:
             enum:
               - qcom,ipq8074-dwc3
+              - qcom,msm8974-dwc3
               - qcom,qdu1000-dwc3
     then:
       properties:
@@ -453,6 +455,23 @@ allOf:
             - const: qusb2_phy
             - const: ss_phy_irq
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,msm8974-dwc3
+    then:
+      properties:
+        interrupts:
+          minItems: 3
+          maxItems: 3
+        interrupt-names:
+          items:
+            - const: dwc_usb3
+            - const: pwr_event
+            - const: hs_phy_irq
+
   - if:
       properties:
         compatible:

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
