Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A373FCD4F57
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 11:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FM63xgW30z5xIeqw2CWgqMs5m2DHHMHYVy7g0CB3WUs=; b=RTN8apchH3NByR
	XlZfa70+kmHRVkVA8JyWWbB7MHnv11SMWQzx/SdKW0MWGqfUDokX7wMywHEFGHGYAZFwmbARJTgxs
	E9bFajSqw07LOd+kNyRuapB+EJi76+pQjQW/loimBbf40YXliKUwtEq39rDjCLyFHSfPI15V/Vfgv
	9yVYEjhQWTEJLokGfO1mzuDzl8SAKH83aq2KepDs14w0supNloLCTPJ0dnlbtbTKSWEWYkVwQqlL6
	aOS2+fiFStfCdTuNtOOkB2Xh1Q+m99FxqENyrsMOIQ6yDpsHR4e/o97HerD5FeR7qEIxs4BgIgsOF
	3zD7yYiTvyIwcXiT+iJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPIWO-00000001J4y-1m5y;
	Tue, 19 May 2026 11:22:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPIWM-00000001J3W-2vUS
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 11:22:00 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64J5aIcn867230
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 11:21:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5rZhel/ZfqNBkxZ73MGg6Xy1kCPJPWKFenIAB/a5RyI=; b=HMvil/hN1BBRUAR8
	oqc+IZxzY3iqmsWqxZBRrDVcknoA8poa1f0jhWVnaGAxlxkJBdFEsVJqaVAB1fDF
	klE80MHM7rCWV+GK2H3dGAOuDB58XnjcXiowPKxqLDy/gahuMj49IfWILauTOY8x
	uiLgZvZTG+EWU0YxOZcVbV3OHYeEGYY/5FTR8tOAqHJDhDpXclOX4eGkHvzFs8Ds
	bs9L0M4TaPM5mF3VWva+c2CQC3pECmrdXv84rhxv3Y7A5FGqzT7K0/CY0NLOjchv
	sr9CdjY0b6UHlSh3hzk03JOy6g73ZJwp90UTa/Vd1PCfzAuudDuRxcQxlXmZX6Ap
	a/fz/g==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e8hv1hexu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 11:21:57 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2b2e8bba2e6so50147325ad.1
        for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 04:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779189717; x=1779794517; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5rZhel/ZfqNBkxZ73MGg6Xy1kCPJPWKFenIAB/a5RyI=;
        b=XiViu+hojmoL0z9BpqoYsQQne2kqcMPLmiCWFFbA4qsTB8glNXdXRMgmJRr4nmOB/w
         EHf7f4HUgDooERvA+CsltCw2JLqdscxKPgfrd/FMMGnTAKkucJ0CErwXqQZBvvtw+ASw
         5LhB+u2ndvOaZ4d+62hcaNlx1zZm6pqb6DWLYstFf2SKRCPmQikJwyNpgm87dufqkXvj
         tMHNLGgKp/DyTRHX8V48InzhXkEWegjRzVZauHjYCoz6wBaj7si82M1ix/sbw3T5U0cR
         rcNcIyktGxEPf63R4N7qZoJL8+bzeoWBcEwFw8+q+E+X1/W/yS5nJY8IjHSuXnOLgDtQ
         o3AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779189717; x=1779794517;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5rZhel/ZfqNBkxZ73MGg6Xy1kCPJPWKFenIAB/a5RyI=;
        b=JXSwO17TiYAVCF19r3cwQo/OHQnqSno69d3Y5/t3V8+Kuvz22AgGnTpCA0b9D9UOe+
         CO+Os5rvY6SzCvJu4BNWcRaPbzjUjkjvN8X5+MYA3nGx8ADb1k0uAwH2eC8+LD4KFNgB
         J96fFld8yZcAOaHpiRv6osfgy3q1vjsUv97zbcTruLL3gesKRaEsYtTBkIXp8aN6naIH
         fmkWLVhOEmaiKB2rv+fpWzhdN4hbtzx/JjHqAKLHBO8xYdaWeFM7tqg57/IxVj0Kn4R2
         nInF4nc/SINxYVGLflQQ/GCUuMXd9PH2EKBS4vENiEN4treAZQEMMBRDj2M3J9/Jvu22
         wmFg==
X-Forwarded-Encrypted: i=1; AFNElJ8BM0S7ebMmXLUzstCiEGfHZ2/b93WIrBI3sUlkN5YH0Dcp7GY75dWLKByAJeiMo3tKj4/JRtxn3HI=@lists.infradead.org
X-Gm-Message-State: AOJu0YyEZIh0yKSeL8HhZW9vdD7K93OkZnvLKerqtRyxYLAlazKcwubF
	miAH77Xi7lBkUu6xyYhoecYnRlLAn3mPKd/2MzLfWH63M7fJ0fYa9fkOXcUfPotrmOu03QJbXjP
	1YZaW1DmMnWEC4NFT7PPhkRcqcSLioCxei4IzPGsPaO2Krls4wyasAOIz/ZaW5DHQVDBf
X-Gm-Gg: Acq92OHrVwhJ+LZGLR8sGNgsWzxkZz+dAwG0pr/sN3OcHSnpLbcpcG0p+2n21aTaxzT
	ccNSrtL31atYFXuZJZSdBmPPakluycs7iSHyPb4W8BRiZx4MlgHnbCGVFwnL1bUNTN/XvQKRdU/
	Ik/E/GTcdmvj9XQt303V6nt4CoPrbmGwH8y1RrV2H6Z9IltJyAnBffR98yC/1Es/0gSmFvlQiaQ
	0I/Zz2KKfh0BIHE9/4HGFUJxvb3ebuVE4+5udUGTrZ6rv/pBUmgC+xJK2HajMrF/72nC4Mmythp
	Sy3eyVc5Zx/bbuaxZ+7UJERUIRRqUV/LvFHMM2BngFvFVtEZj3dKiFgVhFxwmrCBn/uAFOqiSop
	inD9vLB8dwj0PCQhhmuPS+f2zwKkp3/qqGwvj3HqL9DeYtcE=
X-Received: by 2002:a17:903:f8c:b0:2b9:ff02:a14d with SMTP id d9443c01a7336-2bd7e8057ccmr209580735ad.18.1779189716766;
        Tue, 19 May 2026 04:21:56 -0700 (PDT)
X-Received: by 2002:a17:903:f8c:b0:2b9:ff02:a14d with SMTP id d9443c01a7336-2bd7e8057ccmr209580425ad.18.1779189716295;
        Tue, 19 May 2026 04:21:56 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bd5cfe78b9sm192743605ad.43.2026.05.19.04.21.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 May 2026 04:21:55 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Tue, 19 May 2026 16:51:21 +0530
Subject: [PATCH v2 1/5] dt-bindings: arm: qcom: Document Shikra and its EVK
 boards
MIME-Version: 1.0
Message-Id: <20260519-shikra-dt-v2-1-c01b90fb4395@oss.qualcomm.com>
References: <20260519-shikra-dt-v2-0-c01b90fb4395@oss.qualcomm.com>
In-Reply-To: <20260519-shikra-dt-v2-0-c01b90fb4395@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779189702; l=1683;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=/0gH2RBKVFdECZHy2OYb/vQdn0W3A3ypRR06Nb2Te8U=;
 b=PeZo0W2eoXZTAKaQ7d3CH96/n9YjlCZSu4624vjdkgZ/G37ljAl03mfE6/LXplfr83jlvOKKM
 nx25Y4zpbIPDL64JQ3xSTflLvSFIXhnySbIgsVgRVUC8kQV7HnIv99X
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE5MDExMiBTYWx0ZWRfX0QHoI3BMFqxi
 P9MgTm9Fg9Vl14BxLl696Mm2tUY25VELAbg/H5NwWNkXvJGDQgK7B6fS+6/RSutj0nsJQjtg4cA
 xhD2i64DbscOAsRV2uPWKIaizd/jv+CxNAnyeDaT9m9K1EAibamy58Dyqzu3C+Im5OMkQtPuhht
 Q1ojGXYTBjFrXhOewBwwlkm/a81xiIpy2rYyjs2NDEOIYjh3gQVdvR6LJsb+hKf/fXOF2RKJxcs
 kV593P70xX1TH+NgP+Gy+dXG4scBnT7+Sz7Xfh3ByNzZ4XxHBRZsbg4A4NwnqUF4UCeW5W2aRqL
 KgIyWo02BXZGeS3m9gjnpY343+WA0eLR72VGXs5B98NVo50AXnzLOOCOIbTiMu3P0qsLnVRYL9M
 CNH+cfJ1nXlYyV3InS4KBB9X+JS9D8J3D95jxfhu5KtCNUA1cEZhwOPXFvRqyvH3q4k2CxwqXqk
 gIQD3nBxJfxgX7/zz+w==
X-Proofpoint-GUID: g3YpDkInflJVhubAm6vCKmko1M5CFe7b
X-Proofpoint-ORIG-GUID: g3YpDkInflJVhubAm6vCKmko1M5CFe7b
X-Authority-Analysis: v=2.4 cv=WZM8rUhX c=1 sm=1 tr=0 ts=6a0c47d5 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=nhUW8Zqzme2qF2hNOrkA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-19_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 priorityscore=1501
 phishscore=0 spamscore=0 impostorscore=0 adultscore=0 bulkscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605130000
 definitions=main-2605190112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_042158_862801_96027179 
X-CRM114-Status: GOOD (  11.67  )
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
index af266d584fae..7c5c5f4fc30f 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -968,6 +968,24 @@ properties:
           - const: qcom,qcs9100
           - const: qcom,sa8775p
 
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
               - google,blueline

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
