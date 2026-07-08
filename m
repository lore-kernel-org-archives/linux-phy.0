Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17BB8C43458
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 12:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hiDDOxqXGKaRAYouxkxllxNgr9ov8CqXXGOje7hm10A=; b=tsa7WXLgD6pRJ8
	IRWqLAqdwqWhPARV8ywxpnQQ2v3ctTiT3ZDC0lyxFoWETPSC8WnE5fT9xtKS3m3gKLf7NKr6XQzBT
	7em+PPMxL/i4HwjDRU2zCT4AzBy1H+oALLQ4zDf+dCBj0/ayziXtHwpZ97kWoHemruHH8d/VI6ZD1
	HN6b1vG87GKS6YdQjOmJbRFzxbREhqwnQd5pJmk/W9tqAUyCFrCu7hhqhPmLdzrMwVD3Iptb2vLkG
	S0y1ddJbkDy9sCN0fugfCaGGnlAIS5MO5j7jFRx4sIxgKPY2jQYo7yyOg5Gswb0JG/gniCwvDe05W
	+HF/cS7H6pkIPvSwkWFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whRDy-0000000H6Cw-3WuC;
	Wed, 08 Jul 2026 12:17:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whRDs-0000000H69w-28fD
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 12:17:56 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 668C3d852537980
	for <linux-phy@lists.infradead.org>; Wed, 8 Jul 2026 12:17:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TwHspNqOIQ2ut6o0aX2sCzUdxZPsOJPL71oa2C3iLow=; b=i4I64sioWZOCeMal
	et6+no9jQvaQcNXS9yQNIheX6TR9D6kGiwANF2fgbKmJstJdUA0Kne2f4t0wQ6Ig
	URL2uKbXlUgycjY6PwcLOSSNyq+inlHAYKoApcH9pnGTwZg/EfgtoBijWndfbdgJ
	CCrem6FbaSWWpQG/LNrpuFeYpbHd0HWNJe/2aR8RpkKrA4Nx67FJYlM5YG8GsvGz
	MJsjH0NKE5jw+KzmMYLz6YunCZYp9qIFflFhXRFE758U3digXyundAP7vnjIyLtr
	/u97UMDxBLL3AtGomRf9CrupJPg5hVotu0B9I9NLGOsmTUZXs0QwhhMPM4QFDM0o
	EZVy2A==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f97u13ayf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 12:17:51 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-848452dd146so1628292b3a.2
        for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 05:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783513071; x=1784117871; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=TwHspNqOIQ2ut6o0aX2sCzUdxZPsOJPL71oa2C3iLow=;
        b=Lv0/XzQd7AHGj8KDaN2ie9f5BOEmTDfHSmy8rrnx8e58ApurLFvgF4Pz28JTqvOEF+
         SsaOd+BVqeVi3E+5Txq8+sapoVg7eH02DKhJK428NBgvqAZ0IMSioO/27zXQUu8aJg7s
         QQFlVASYqKLNl1b1+rCM8+7EgK/avk5Vlb/Rx36otmcPiVqGTv/ec2KwYW7+arrnrhx6
         5480VBEs3MsH9GvoUaEuzhNEYjuUqj5802eonZsH7pBOSH8NJoROg+fW/LVvIB31vp/8
         lKiBJj5kV+7cZRD5wNj/lgm6tBJBhbYmssVR5eDZRBXfqzjN6wQcFbXsBHZZT7XRERCr
         Ielw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783513071; x=1784117871;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=TwHspNqOIQ2ut6o0aX2sCzUdxZPsOJPL71oa2C3iLow=;
        b=b8brE465lhHvZ+ZiDChUJtrD6rdik1rhTQKqn3YwGtRzQ7gZMg6kLpUpYXMaRDvUY7
         /w0IFfRudhvUarSvfCLy/TjGaSMKnRei33x5rOIe6b0vVZnrBFXEd1JbmCt3RNv7SALV
         y/dzY77Uwb0BIEvnFJtQXb5CtFX0vzHLgQhcZXNgus93a1/kK8wIKFW0EZ8ffQKObfLX
         yd50eqq00l2BXbJskeKUttpce+hvurm0YaRdfsq4BfGOfILnDecRct9CVje7VFCVo2ix
         8DKD6H3gaF5a9sFMv5rsjaHhWC4ZVM19k6UT+WWfZy0L9r+W4G6wgulyfIRXbyTxv5O/
         3ErA==
X-Forwarded-Encrypted: i=1; AHgh+RrZl66jRVidtvjSaMFAldg3nZNpPt2fVZ8bv1ehArxjcJYAG2bBK3OT/nXeKmVPa/82B9gXHm9um/g=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywy9MnOYlx83fgNEX5SbZgO110zus/zLX3z1INFMqnPZxlwkFCh
	/dXzhAg6bPqXMsIFABNC7AjO93hYCIMCAiGuY3XueC1ddFAuo3/Sf65SCut1UVgZeP5eB/dqhcD
	+mueJ2pxAEMS1C8gJiQF0oWSWeWHt+LgHK81QyrXYwNZP+Ukq4uRi6SUu20iVC58K0u9+
X-Gm-Gg: AfdE7cn/CP1hjIIRJ0pRZcU2bVffpp2rCsciLmwS4U61niKnIUjfXlth4owcI9Ih9h0
	v13nYY+hs4NcPcYlYI9uXTG4OQ8ZkVWM2giDRbmelusajoZ2X4m0Yf2mx2t17QALUF+dwIknqX4
	Nrfx1USt5BGRrfmV8roqayM5BCwmcsbLhPUGaHAdnLba1rw4USIH6RIrFcDEpqInx2CZbtEbCgg
	BAGeZ2DLQCdvdCXPp9Y92BQt9JwsPKpCsZ3JZS0/inZbQtPdwBEB45bZPrW/o5i+MMc4jnkFHYC
	zwn7K9uL+59lRqlVrGUVuLzc5InUxfRoeyr+EuCB6RVRE72ksDiW73l4PRPeSJVPJ6B35kgWxP3
	FtupnrPEED8eF7Ew1OCs5e3IhEA==
X-Received: by 2002:a05:6a00:a1b:b0:847:9656:4f6b with SMTP id d2e1a72fcca58-8484323d2c9mr2566200b3a.4.1783513071352;
        Wed, 08 Jul 2026 05:17:51 -0700 (PDT)
X-Received: by 2002:a05:6a00:a1b:b0:847:9656:4f6b with SMTP id d2e1a72fcca58-8484323d2c9mr2566160b3a.4.1783513070836;
        Wed, 08 Jul 2026 05:17:50 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-848337d12ccsm2367474b3a.48.2026.07.08.05.17.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 05:17:50 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Wed, 08 Jul 2026 17:47:30 +0530
Subject: [PATCH v7 1/5] dt-bindings: arm: qcom: Document Shikra and its EVK
 boards
MIME-Version: 1.0
Message-Id: <20260708-shikra-dt-v7-1-977b65a300c1@oss.qualcomm.com>
References: <20260708-shikra-dt-v7-0-977b65a300c1@oss.qualcomm.com>
In-Reply-To: <20260708-shikra-dt-v7-0-977b65a300c1@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783513058; l=1817;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=j9LrC7SvwrGJ5R59Zyt5T1ZwERBRq1xpSs/MEllIWkY=;
 b=L91IVVTTuBYVFSxkhdCViQAlausBGaigd1YeYtRCdEVL0Qlvkzr0oSZhr3a0/rR32ZEiJ0IC3
 cPjcr1Om0yLCDq7vHAqa+hj/7o6O1EaCtstqPKhTmz5zoFuL06+nPbn
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-ORIG-GUID: YNOtMVWYMwtQRyD9tbqdU-YowIXVrTwX
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA4MDExOSBTYWx0ZWRfX+6XiTfVAI0HW
 ykPEy87SbpElu+Hi+zt5lKQXdFsW3TTvZ8W3vlyAZdpEUzQFThHi1t8ToznC8GtQxZtjCFfU7Y6
 puLVMiihL7IcUcyrM4+zO3SlcVtf3pk=
X-Authority-Analysis: v=2.4 cv=F9JnsKhN c=1 sm=1 tr=0 ts=6a4e3fef cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=nhUW8Zqzme2qF2hNOrkA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: YNOtMVWYMwtQRyD9tbqdU-YowIXVrTwX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA4MDExOSBTYWx0ZWRfXxnC6lJxNG0pP
 7y6cfeDkzOVcm2Zt550nq31PLaAqcrNLZ5H6hJ00e/ETH99KUgZPYASGm1bjAMSg9qeFC3kc9z5
 dxo7/PGJ6EFtK4PrbU2sC/OAFVG0JEXSl/ttbk24ADdNCVXl41ockPPB7S/bqkLPwtq/Gy+b6nJ
 tQa2YWdb1BppSwLPwm0EEGQ6XMlY0jskmm9zLlI4nh5mZKDtUMsWWvRfrdwRSQbH2fX0pXh0lln
 fUDmoqk1TkjVmVkuF5zyTAv6drzZ1CZN7UIhJU6HF0/ozeVk7XEqH6uPlDhVDZdyaKkVndPAVOL
 IT7FZi2O8QgTF0XhYxtMAw5eq3Bsfhd9ibH2lSh9DuDq5tFKVOIk2cvD6F/J9uwv3+X/KFxlBxG
 vbCLfnHS6nfD1fptuwO89UGs0ZEmmKbDj8gTfKkxmJXiUl1tit41r3zSQh11085jTkwPXFx3SCq
 ObW6M9u+33nYQWLaURw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-08_02,2026-07-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 priorityscore=1501 bulkscore=0 malwarescore=0
 phishscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607080119
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_051752_599110_7488E5C3 
X-CRM114-Status: GOOD (  11.47  )
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
  - CQM: retail variant with integrated modem (PM4125 and PM8005 PMIC)
  - CQS: retail variant without modem (PM4125 and PM8005 PMIC)
  - IQS: industrial-grade variant without modem (PM8150 PMIC)

Each SoM variant pairs with a common EVK carrier board provides debug
UART, USB, and other peripheral interfaces.

Add compatible strings for the CQ2390M, CQ2390S, IQ2390S SoM variant and
its corresponding EVK boards.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 9df4074bb582..b91eea5a0f91 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -982,6 +982,24 @@ properties:
               - qcom,sdx75-idp
           - const: qcom,sdx75
 
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
