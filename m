Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E450ECD5BB3
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 18:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iVvVqTCy0R43T2zAzVi28Tjhgi3rRTLZTAhar1woXCY=; b=TgQ9JStBxuSYo2
	MMYHdyXzzn1oGTc8xXkgwCQq/x2HGOlZjogtDRagjb+nLF2gbTE2gqMm8/cafw6MK1LhStfjNb3+2
	grke4Qxw8IgxQSa9E98yfT8imUWg9touPAGSGjqvX9WMGvhUR93PNiwJ0E+6sk5gJ345zgMtj67go
	XRDQN1aOJagCccA3ZuGOdvlysTNpV8+aCq914+iW1wZjP0twkzcTP1WF/gRxQj4wkuio2zAcK8L4A
	KsM/ofK+iZno25ITmOPJ9lzdEyPL2txR8JAVWBkefL+FrYwS3VlabYkGFovYB5J5F+24A20p4BIO9
	PilnVo6ED1gkluTQuGBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQUCr-0000000BdS8-2syJ;
	Fri, 22 May 2026 18:02:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQUCo-0000000BdR5-21ea
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 18:02:44 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64MAUHpN312910
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 18:02:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	64LpLRRJIlxMY+JNBOraanlo/l9X9GJFOflyXf+N9/E=; b=L/vzTRd/DLlC2VXj
	pp+P5XTwaLPjttc+nI5EG0GgjUHRWO2xtpXUjdFq4i4YfO3HwN/keSWwPZyiEhTi
	6HFtrMqi1DqF62BozVGzayX+2iXqemx4UbDvCKBr0m/JW2HNVxJXOhnc7ftYjO76
	BiAEmHeiTUeuZA1itw3pgKnDDqIWaBTQCuzJ8/fHitHT8+yx6HTeGO+lN9c295LM
	4ueaSmMAI9mv1pxK9rAEydcCRqCwCWw84DYSlrypeohLMP+nHXdOaRTqRdjKQmL9
	GtKyqlVRpNDmgwsOpVKWYUhfl79RVjxnGWXpc4MD77eirA8k8Sl/rH3Pzg6W43iG
	PBSsDA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ea88353tn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 18:02:41 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2bdaf8567f3so54021255ad.1
        for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 11:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779472961; x=1780077761; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=64LpLRRJIlxMY+JNBOraanlo/l9X9GJFOflyXf+N9/E=;
        b=A9Dt/tcqzE0d0JW1Vusih7dQbiYv1l5pPBj98ZDLGwIkDfIoM2wnu7kruYVp5q5nl/
         f81q1ThqeGbTwoP2N1HMXYsr/emI5U9HFRguNrIaQ1w5o+toKGje9NDc4EPciUfTYyUu
         +ZgABy+mQ6DNRyJkgVJkhTwcoRA8jtwkgGdr3xRwvb2zn24R2OmVMKvlf/lL33UjsVxD
         HGLngfIzYa8JhWNb/kiOYpjB39gvxR3AyF5j2FHroUxXCR6W9syK6BZSLBaJpxvd3+Y4
         mCHpbtn9Un1NUoyeLHH1c4lKJjHrvF9SleGDvuuBcl32GD6Os0m4oMNbgM/NMGcEicwk
         GE7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779472961; x=1780077761;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=64LpLRRJIlxMY+JNBOraanlo/l9X9GJFOflyXf+N9/E=;
        b=sH6xQk3EFIp188xP5PfkzxRFip7/ta+ir0pqdMJloOzGD+rAXid4b2DGiK7sVwKv4L
         d9Y5wKTrWra4pAMc1/VAMxeUolAQCTfW47S7OkcX3Kl5vveBatVC8IfDT8eJhYGm8v7y
         qNj9rt4mW7LW1aDjjJfpAC3OernQ5ffWDYnM7koN6lW/tDU5wBff/HTvYcz0VtzL8wsd
         +pnwGbyzslzT5oVWBPjBVJeATlm0dSmvWWme4yP8EGDBFRxb9OELsapT/zMwduJUalM8
         sRr7I9yUiDD+GN/m1e+SjyjcbPCUtVEFjPh1mDv/uONJcurpS2vImuk2uKXrTOryiQtQ
         u0Ww==
X-Forwarded-Encrypted: i=1; AFNElJ84L81iXjY4EsFzq9vVPgrkqJUx/KV+mzSOV0jH+/scmh//dCYooiw63ZX33PsAPX2QAWvTcX9bD58=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxl2T6nS6RQVuee2X8j8Gj/qSxHR0N8OYkk+9YnQyqMbO7dIYBi
	PZPyF+Aitpqh7MKU7b60z3m4JBm2XG5/BT+x2eURj7pXnoBJNrl9R5z7eHpej4LVgfNUqLMH/Zx
	jp/HMR/AbB3tNFIuSTQ5LHpHuKZoV5Y0ZxS+Zvj3U+uAPHbYFush8wswLL2W6R2j7TQJN
X-Gm-Gg: Acq92OFqG6rI+Dy0i+1ufXMGd0XJi1iMRKwlHS3xa+Ze5Pv0wQSJ64rVDkOtpssY1he
	ztKhN54Q7lm0xHJk5SdouZTClxotcSgyES2r41JhoeWGyWPy2YDtjd/142vhAnCUNzCdGFOIZtt
	XDmmVuUn/f/0dJdk58R0kkPKDsiSsEqoMSEEoNChR7OA5WNR3yFWL7EVyJ8HkYdms023C99I2b2
	wFD4Q1Y+o/kPGW3a/YWl4OUSCu4PBAxAoMKKnZOH6RAdXmz/rG7cWNyVxpYff8SeQjz9rm2hr3r
	JLljyMJ2i3fr1dqp0DB8aNXGftx38O65X99DstAZHlBLkquNn+kMW4sg7b078CVFFgynE+Q6aGm
	3ZIb0Z2to1Jxsl7TBaeeGZ59j++VHiaLmfNxS
X-Received: by 2002:a17:902:e78e:b0:2bc:977b:846d with SMTP id d9443c01a7336-2beb07b5161mr33830405ad.5.1779472960534;
        Fri, 22 May 2026 11:02:40 -0700 (PDT)
X-Received: by 2002:a17:902:e78e:b0:2bc:977b:846d with SMTP id d9443c01a7336-2beb07b5161mr33830045ad.5.1779472959931;
        Fri, 22 May 2026 11:02:39 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2beb58ff106sm21193645ad.74.2026.05.22.11.02.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 11:02:39 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Fri, 22 May 2026 23:32:24 +0530
Subject: [PATCH v3 1/5] dt-bindings: arm: qcom: Document Shikra and its EVK
 boards
MIME-Version: 1.0
Message-Id: <20260522-shikra-dt-v3-1-80ffde8a3dc4@oss.qualcomm.com>
References: <20260522-shikra-dt-v3-0-80ffde8a3dc4@oss.qualcomm.com>
In-Reply-To: <20260522-shikra-dt-v3-0-80ffde8a3dc4@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779472947; l=1681;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=TnKOE7unCT/HQOtvafKdSU3ITE0Jp3sab/TyCby1k78=;
 b=lipHYk4WInft7+V0GCh+adx+B5S1zW0zaOQCUNgDx1cFqTwFKxvaTvPyDS1IpBJ4n2RGHCZUq
 DbSRO0zd0KqASjomeFsYUocpU55FNf6eUK8ZW6IDjIFp/wuCNEdpOU/
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIyMDE4MCBTYWx0ZWRfX8Eb8edHWf46H
 BOrxezS+DfLA8czQVi6X26Q/7PxvwNYvlOaBqohuVQVmuGHl4zTH7BH1h0okGrDFJrktrjSTJKv
 HgFiIU68Aj/wgUdcPsDtJvA4FHJKa7FdyP2wRLMHiBWbQl9FQM3oEKCWo+rrKSE37PCrHsaJQ7u
 Q7o5IposVwv3HKD8TGqETQH3wmwuV47Oee4D8/bYV7P9AgTXlfpxcH5wc57KQ0Ut6RsjLO+YVhT
 2DzmZSKyF0iGEdq+kmnq8G6Evd08HS8LU0pnF/NUiWvS5hRGndTRAetzFWbigmjLHi/+0tqI8FK
 7Nluymu8MkpdHq4vUBgRDtBC5ckHMMNaip6AYIpZq7vrUFpNqwRAte0NrNf4+9plyY9XFIjc+Ca
 +jgOXVacd7GjX3ssx6NtafyL742Ujs/L3Tz8NmPa9AoiuEjKtFjqgL61JoZN2qVOeoOqT4DEGRU
 OL0ZTUO6IbOMAB9XIqg==
X-Proofpoint-GUID: t7eYzDQgyRGL8yEIn1vCGbC8QZrQ-1SC
X-Proofpoint-ORIG-GUID: t7eYzDQgyRGL8yEIn1vCGbC8QZrQ-1SC
X-Authority-Analysis: v=2.4 cv=LsSiDHdc c=1 sm=1 tr=0 ts=6a109a41 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=nhUW8Zqzme2qF2hNOrkA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-22_04,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 suspectscore=0 priorityscore=1501 impostorscore=0
 bulkscore=0 spamscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605220180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_110242_676862_2566FEC1 
X-CRM114-Status: GOOD (  11.56  )
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

Shikra is a Qualcomm IoT SoC available in a System-on-Module (SoM)
form factor. The SoM integrates the Shikra SoC, PMICs, and essential
passives, and is designed to be mounted on carrier boards.

Three eSoM variant are introduced:
  - CQM: retail variant with integrated modem
  - CQS: retail variant without modem
  - IQS: industrial-grade variant without modem

Each SoM variant pairs with a common EVK carrier board provides debug
UART, USB, and other peripheral interfaces.

Add compatible strings for the CQ2390M, CQ2390S, IQ2390S SoM variant and its
corresponding EVK boards.

Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 50cc18a6ec5e..cf7d241f8107 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -989,6 +989,24 @@ properties:
               - xiaomi,polaris
           - const: qcom,sdm845
 
+      - items:
+          - enum:
+              - qcom,shikra-cqm-evk
+          - const: qcom,shikra-cqm-som
+          - const: qcom,shikra
+
+      - items:
+          - enum:
+              - qcom,shikra-cqs-evk
+          - const: qcom,shikra-cqs-som
+          - const: qcom,shikra
+
+      - items:
+          - enum:
+              - qcom,shikra-iqs-evk
+          - const: qcom,shikra-iqs-som
+          - const: qcom,shikra
+
       - items:
           - enum:
               - oneplus,billie2

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
