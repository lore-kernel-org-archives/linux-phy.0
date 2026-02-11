Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 497B8E9E305
	for <linux-phy@archiver.kernel.org>; Wed, 11 Feb 2026 13:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/x4sNA2fGGKQdq2Pzm2QxihM33iBIVUnHKmoiEWAo0=; b=u0JzsuD0JULhWJ
	XXXFu1WKkaaChvccc4yHPYkgrPs+ErCo63IG/7eABu28hpiBB6B41K+WaFeZjB2zdUhdRar1gjJYV
	c2vYpPXwQE71Ge2gKXHqsDh1noBxIerlgdzMQIxzz/6r1AcgBvtcQRueWXBN3+to5J5FBwwpT+vMv
	GF7wXhiZ4u9wIW5uWRDUGnXPEWckrp6g4KVxCLtm0ocpZ7qabaETXnslxl9TgT9csjQCHf3dTQhiM
	Rhc8dCO6ADubKg4u1xO5NtzQT94H/A0XcrVxh2SdFvExmNRXf58iTQFIAxLqHiiSbJ/YYXYDdaLrT
	7KcwSR1GsY/NP7W4p82A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqAI6-00000000gfu-3I9K;
	Wed, 11 Feb 2026 13:30:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqAI3-00000000gf9-41M1
	for linux-phy@lists.infradead.org;
	Wed, 11 Feb 2026 13:30:01 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61BA9GmN4127437
	for <linux-phy@lists.infradead.org>; Wed, 11 Feb 2026 13:29:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Mg7jJNgLIUo
	B6hOXMTj2nXOzrwCGa394XSFokHpCUZI=; b=MqdGGIQDf40YjM7//P703kk6m4N
	MCX8+fyyA4ksYP4UJOrHespO1x6N26tRa6mlW3Wu4PCYpmDvFOgAZObv6yTBTw/Z
	PxLny9f4cplxyWe0SjbS4jxoO8Vm0qKkdGyTWdJW5NYK9ZfWsBwudfs7Pt4xZArt
	lwKkAel38gVUcFlR9fFW95JqU9z7kGYL/eWUhGzL8KZn8TPIFncOuVdMrezGiLH3
	RVcDhNDJCNOQG1+1znAHnwYyWqTvsZhcB7tZ2Gk9hlvP+9Rd1S7rPoa64+wOjDHk
	dO2MVVvejmuEZNp4IfoCmABFDQtA3HHL0A2f9HqQIqo1mFjwymNbu9VQNyw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8gvm1w88-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 11 Feb 2026 13:29:59 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c5539b9adbcso4070016a12.3
        for <linux-phy@lists.infradead.org>; Wed, 11 Feb 2026 05:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770816599; x=1771421399; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mg7jJNgLIUoB6hOXMTj2nXOzrwCGa394XSFokHpCUZI=;
        b=PfiQ+UwxNolfx7sC1q4epv2z6UHWXibGR/B3tWmASIL77slmFqxj8TxqC3ENNISNpR
         RZnPPVQFaQGzvXL3M+t0KlSHmQo9qxYs6jxchW6Ljbt5YaNthu01+B1dBAXYjYZ9zDhd
         lgC4anZuWRL2oJxujYrg1AFW2uaXasUXJXLQLqEmIkheNlclEeetjjz2lJ2Jcq1EoEO0
         t/g7B6lX8A+/BxSygYulx3/yKsdfai4ePF7oG7AWKau09Qx9N6k7fDoHp/SMr33Gz8bX
         PQpAHE3Q/zde/AKYIwoMJwvGAfdDYwaq5is2a2EMY0JExW99HtDgibWux6xAaIT8Cn1e
         VIwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770816599; x=1771421399;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Mg7jJNgLIUoB6hOXMTj2nXOzrwCGa394XSFokHpCUZI=;
        b=MY8SPU3AueNbBeHytX9LCnyLECsr+amzYZBbYu+36rpD1PA0Opcom+TgsdcnyAaeUg
         zrU43Orsie76sGkB7P0Bv51jUeXqzlEy1Ca7nGHJ6dvbnGAOLEGBBpmXaXlKqJjaP0k7
         sVtdVLvoJkd+fO+8cbG5haEz5uncLSx03ttbio5wezdnJGlGTCr/ajR3Ak0jtoFOxa5V
         aPxQUDLlkhLNrnhx79KUrRMd8aS4ZZKEphEdHXWQj5KgGeP146/3+fNz4K54eTvA5CEG
         mRfxsTDsCGlmGUk8tHYf6q/d4BYdFiwelSUtCAbBdX2ehSKCokkqmhtCfVImHm8kVP0G
         XkpA==
X-Forwarded-Encrypted: i=1; AJvYcCWoS76nQE2xoWWkg0Ec5B5CdPIKynWwubfbCtYb7ibjsWHpgbOw3y1++gf3osUObr0PE9u4L8lyhqU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxU63HN4nPzAoSwv9mBaX+6UKSwigYBsKtDkDrGji7Mzc2KuCc6
	R+tD6Yn/tPGNQJHDBMavd4o6FDDWBL8eBmUqmqUdYYR+grHXzuzPHuyOzb0CjGT7122cb4aPfqA
	izBcSgxjllaM/BPhR//b3aWuu8+vroc774L86yjcIHsmRw8iIHJA19HpWLPuQzxscI3Uv
X-Gm-Gg: AZuq6aLU3+wEY1SWHjyjyly9tElFoiaoN9A38pvG5MYRWF8LNzlpIRQXOo9R7+7urE1
	8ONl1sre/qPC5bMk6rn7tIoxQdG7g14bYXGFL2IF8CvyuhzG5209YSe2tf6T1DxWFa5UB6xMP2/
	1fDALNNvpyZNsI/nvSfH+uyzsIIPCaI3T68b0MrFxZRo4HgP2Vp9IuQdBfT2BZT3sQ5MgEFjEGd
	h+1Wi6al3N36RWZkGUtzo4yKySxUFfSv4OG970HFKSJzNuT570sqxvFL0AXmTOOSwnSaiBthQJD
	QpnK5eX2AtJWLbHHx/NW7Qo2NEq1YKwJUvgBxYioG8vMl8KFjeRzLFadP88jbwJFFaLbChDl9ij
	owTQHY/VaW1KEOkOkyQks9o48Q3/ch6+TXXVffK07uCMaIip94rJ8pFAkf5UcOwq0
X-Received: by 2002:a05:6a00:7493:b0:823:9c6:1985 with SMTP id d2e1a72fcca58-82441634f48mr12870441b3a.16.1770816598809;
        Wed, 11 Feb 2026 05:29:58 -0800 (PST)
X-Received: by 2002:a05:6a00:7493:b0:823:9c6:1985 with SMTP id d2e1a72fcca58-82441634f48mr12870409b3a.16.1770816598164;
        Wed, 11 Feb 2026 05:29:58 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8249e84bc1asm2143655b3a.58.2026.02.11.05.29.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 05:29:57 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V5 1/3] dt-bindings: ufs: qcom,sc7180-ufshc: Add UFSHC compatible for x1e80100
Date: Wed, 11 Feb 2026 18:59:24 +0530
Message-Id: <20260211132926.3716716-2-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260211132926.3716716-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20260211132926.3716716-1-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=ctiWUl4i c=1 sm=1 tr=0 ts=698c8457 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=uoUYCPJ4ct4VCx-fAfYA:9 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDEwNCBTYWx0ZWRfXyawVLLMLMmZl
 AP/CUaCI278bM0914nptFshH86R/4oU5gdotF5GcBCkHgWl4R64yXFyGLNN2Wr5fOFpE6a1LNu7
 WnmO8q4C5A71ekMkpsDzpnNalScxyBKeONxpn0fhTyLRX+tNUdMU9lhuU7z11le1Kpd6H+zewe+
 yR4PY4mFaNV/IoUicWpVXvubEmvbnBhIrvcAVl/NtbTxTi3TWbmM1Ov3ds9DN1m/po4GhSP0pAq
 IU/lFW1LVVl60Z+Fch9OfnRiJ86PtyyxhYLm3Vl3clczTbpwyEfo3VGmwYO/o9qgdRL7l8tVbbt
 P24WExRkSAcPAVEdhR30YFXZUFsAHGVi0WtNRoWEL5sjnsvEnXUno+JZFrmuualjn9hLi6RUMMk
 UrfjM1ZVoF5xE4o8pZucDzjfuIKI5Rmasb1411jeARuI6Ecm30l6S+9Q4MR8C+0eRWXxgjaCvUh
 Qd71WVHpd9AYrHjy2nw==
X-Proofpoint-GUID: Ts_6nMnBnksQj1DOo53Hbe4PblDFlolF
X-Proofpoint-ORIG-GUID: Ts_6nMnBnksQj1DOo53Hbe4PblDFlolF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-11_01,2026-02-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0
 malwarescore=0 phishscore=0 suspectscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_053000_001433_6B9E8FED 
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

Add UFS Host Controller (UFSHC) compatible for x1e80100 SoC. Use
SM8550 as a fallback since x1e80100 is fully compatible with it.

Qualcomm UFSHC is no longer compatible with JEDEC UFS-2.0 binding.
Avoid using the "jedec,ufs-2.0" string in the compatible property.

Acked-by: Manivannan Sadhasivam <mani@kernel.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 .../bindings/ufs/qcom,sc7180-ufshc.yaml       | 36 +++++++++++--------
 1 file changed, 21 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
index d94ef4e6b85a..fe18e41ebac7 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
@@ -31,21 +31,27 @@ select:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - qcom,msm8998-ufshc
-          - qcom,qcs8300-ufshc
-          - qcom,sa8775p-ufshc
-          - qcom,sc7180-ufshc
-          - qcom,sc7280-ufshc
-          - qcom,sc8180x-ufshc
-          - qcom,sc8280xp-ufshc
-          - qcom,sm8250-ufshc
-          - qcom,sm8350-ufshc
-          - qcom,sm8450-ufshc
-          - qcom,sm8550-ufshc
-      - const: qcom,ufshc
-      - const: jedec,ufs-2.0
+    oneOf:
+      - items:
+          - enum:
+              - qcom,x1e80100-ufshc
+          - const: qcom,sm8550-ufshc
+          - const: qcom,ufshc
+      - items:
+          - enum:
+              - qcom,msm8998-ufshc
+              - qcom,qcs8300-ufshc
+              - qcom,sa8775p-ufshc
+              - qcom,sc7180-ufshc
+              - qcom,sc7280-ufshc
+              - qcom,sc8180x-ufshc
+              - qcom,sc8280xp-ufshc
+              - qcom,sm8250-ufshc
+              - qcom,sm8350-ufshc
+              - qcom,sm8450-ufshc
+              - qcom,sm8550-ufshc
+          - const: qcom,ufshc
+          - const: jedec,ufs-2.0
 
   reg:
     maxItems: 1
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
