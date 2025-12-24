Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB51BE7544B
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 10:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ofW5IbT7qc3ULzTRNo6yBbOfUaV7bQwFlx3VQu7obxw=; b=ELJw92oULZTBAn
	ND3HPSIBE+nmOv6cpfCqXvsIOfZk4c/0jdWWKxE3RkkVMxxZR9YxNwBoj0lcsTfwnUUm6maFRT751
	TooJS8dM7cF/Stx5xUEBEDA75nh9wxIFbwc66ShKYs03Df17xo7L0bQ+V3iFJz0+COMqel2DpsBFm
	AY84et92IdF6QNTOec3Sj9Tm3U7BSmbscBVOL4R7XzK1lnTDDn436EJqG1MkHHtdSS3RnKaUVOo9k
	LXV4c2e5nElcaMPW+lE3BoxGczZEy8BgcUQGjYcjIMMgaS6OHEtwRO8X1zZFk6MjLS86e2ONmafw2
	3XtDco1Fnu/5AIn9O/bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYMV7-0000000GiB1-2tqV;
	Wed, 24 Dec 2025 10:53:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYMV4-0000000GiA0-1UrK
	for linux-phy@lists.infradead.org;
	Wed, 24 Dec 2025 10:53:51 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO2e3EU913644
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 10:53:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CUEk8+imaWpqVm7FWfHPYemNpfkMDwtBIiNTxavoxlE=; b=CgoaKCA94ePw+UKL
	myGNpF/1AJWyBIhgjY56YvHr1Lbup1cbeOprAmZ18owkeirocUlqnB+jk6qsYTGY
	mv1yQD1tUh+4maMpes0PMZNlCr2KR6eHq14Db4MCgLh2vBoaYr5OmmV2Ss+N9xln
	sv4oqBxfb6ncegvl40mphyGjFLnrTY19qlcGvsdAcnz1mGm5wXz0DFhQPaIfIgGu
	DNEcOLgYdOKJqbjyBlOb/gTghM8DEv2ZqpYQZkLY/nDz5xJSFZgxpXl1gdWwyIYA
	fqGe7ggq5z8eQ3aqPra/PQaa18P28fCzXg1P7wv42jrsFBylHpOfJO3o02nZ9xSc
	C5vozQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7vt2jyp4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 10:53:49 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed7591799eso140321681cf.0
        for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 02:53:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766573629; x=1767178429; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CUEk8+imaWpqVm7FWfHPYemNpfkMDwtBIiNTxavoxlE=;
        b=jnnq1/hthz0PQQ0s5BR8wg8bR9oR6oqbQpZcfHVdB46EVE32uj2+7gvCwDndGiGkgk
         OropKgaf75ou3vwYgLDaCKjX1GlzPAN3iSKudyghThoaI4Qw6vmUkTNUSnZc+ZTDIm0z
         EQc6fupPbrffatQRWkgMpZRpVubEp39QME0aogYmf3AVLpYQoXQgZwNOxvnPHKMRwmlK
         JmEvZ5JGZvWRtcrE8I2aNdZ2ypC+lDSZ3OAKBwvUQ9S8YKjGkmdqmaYkRDMs2N7Y5dQF
         N4H89uFkSkfP5uMXMZNlNTDhF2rtSIkbx+2jy5cbNmtACwhsAEO56CHElCDH+kxCEfVE
         RQEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766573629; x=1767178429;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CUEk8+imaWpqVm7FWfHPYemNpfkMDwtBIiNTxavoxlE=;
        b=NTxZL/h7Ek+6y4kvwJE7DEqmDO0bvtduwd+pOu80NaQg6S/xCFu400p1Ou+QhxpA1S
         ilQwqDIGklrOBgytuGUMaNNRjOdPhjn2B24Fat13/WHQ6GibUqidPsvNMj9LPgnMKPzL
         w2dvnEuhVfvv4wBJ2sjsLTvVqstM5ebj7TMPU/Nop3r2iUnkmH4eCzjujPOXNqdq4iZJ
         oaBDbUDmCanbip8Tg+JJTDXoI1954R4QFNOlxPP7CmE7JKamySDRmXQ6labPPC5felx5
         m8U+0YzqRuL6TQCoG+os4i9/Cyun5LPKCbitSAFFDHhsjfF+VSn94rI8MZvUgSBEgLCE
         1ecA==
X-Forwarded-Encrypted: i=1; AJvYcCUwMJuzJxeZpfJr0nI39nAHB1p6Q1vA7JEU6RQoGq7luFWDyHKrwM8u3HQh0Ot7ob72THF+RLaR6zE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxbshrE7Z/GjmL6qtOlN8Cnk6DZ5uChLYSCKqhWkTaWCq34BP6n
	b5TNMMa0am3cy/+ie1JU0PUBEOOgwrMo90j+pI0LGkLuUxdMt3GrSiNZNfuVmTNTBDou2sRbKsX
	NJSRGpf7qDTDVUTXEpnH/g9phjCOZp6Bh/7hD5EGsdNkr2txAsrw++7ngV0WRPXqNtTNS
X-Gm-Gg: AY/fxX4IVhGeNgzbWof03ieTNz1pUcG31pFsNFAge8NeuJZMDjuIVRQxAW2rFy125pD
	+Urtji9wgIJdyMEYgP4vTeXu0TUC/9pBFuYTgA26pHZ5CmkZv8gvB1uvdq8dNLrlfHPc3Izh0FQ
	mLcRk7VWUAea+DLKzGEjspPv3NZg5sZrsHNNSGXD5vHiyL9+MH49Uk+HhxQ9lOYlxiIBFB9fRJW
	wF7w03S4W5myvAayeDheDgcrYkAR6J2hMWqvQh/vl5Res6dlq7OYr1L1PR+4Qkf7ffho9TVgZHd
	hyClcdOcjVcqB4aBfch6Le/byThdYaZLjVv5HFSOjMTHp1+vscHsxJZEEPVq2MUOuR9FlMRVKhL
	1o5eGEg6RK71OsPY=
X-Received: by 2002:a05:622a:190a:b0:4ee:4709:4c38 with SMTP id d75a77b69052e-4f4abdef53amr258486101cf.80.1766573628727;
        Wed, 24 Dec 2025 02:53:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHOA2TrTt3Y5Yxhu2gzHGVIVp1sBaU/3OkerIWR4tWgNUNp5QoeJ798knCt9F7yBPv2aHBA7A==
X-Received: by 2002:a05:622a:190a:b0:4ee:4709:4c38 with SMTP id d75a77b69052e-4f4abdef53amr258485851cf.80.1766573628268;
        Wed, 24 Dec 2025 02:53:48 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ab86cesm1737562566b.19.2025.12.24.02.53.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 02:53:47 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 12:53:27 +0200
Subject: [PATCH RESEND v5 1/3] dt-bindings: phy: qcom-edp: Add missing
 clock for X Elite
MIME-Version: 1.0
Message-Id: <20251224-phy-qcom-edp-add-missing-refclk-v5-1-3f45d349b5ac@oss.qualcomm.com>
References: <20251224-phy-qcom-edp-add-missing-refclk-v5-0-3f45d349b5ac@oss.qualcomm.com>
In-Reply-To: <20251224-phy-qcom-edp-add-missing-refclk-v5-0-3f45d349b5ac@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        stable@vger.kernel.org
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=2068;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=QrTjRJ8nYr9W6PrQlc/hk+jiJqNSvuKkuj99rkGdvAk=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpS8Y07FYpe5du9vHER+Ym7O1WVf4E+/pH9ssJe
 C592AUFTEKJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUvGNAAKCRAbX0TJAJUV
 VvUsEACwiVci0YOxDy/aKhNSSkugMJ50g32aB3/YY75XR3PF9Ts7qM6Nox75klK/54Rblt5W/uh
 YlgZcdbn4bEk+OYaCuNtZFN4PnoJHRqWisLTp53jKDVKFQBTepE5BoU7IED/8V7QtCoYWEiSNVp
 1XfjePDDG2Z1LwanG6NN3NqVXeS1cwAveOIR/fCH3ANx4+N8LVm5WTNvCxelf4pugpzfQn/Ksd5
 EE5rkx/UNw74zMqk1xbd7T4VeWVhhV/QvnLHIYROp8cLEzX0zljRHdi2kEFSdyiLZH9FhIN9V3F
 VkHQfZeYuTVegHXZnikINHMl6dHQ9rl8qyMubsGqyYz6Ss1aOSMg1mMVA+nwYRKmpBDgVmJ4i4p
 BS/LuamWSOBlKeFsLCnG73WVwy7Ld856t7eVkLxaPYswyOrMBD6PBc0RdohtFvhn5x9l66m5ALn
 kGKyE1tz2KL8cagudV2tBvJaRg1b7NPUVGFAlcwmAza9EaSmLWCZ1aSI3sFwVBkjBndXRwwJCTM
 g3NCvPW9CEMjID4HuHHdYKSLfbougUg60iXPl2bkTon4SIAc+h9UsxOlaA0yvu5AiW0Ms7dcgGE
 c3+/H4nYN/wTVbyKOkgx7oOt4TzG5KCCKLxaLEe5eDbqe/XjPoAnEruskQmetsg6R+3FT50dXAr
 enAlRRk4ht4RhmA==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA5NCBTYWx0ZWRfX7uv5G3PESNX+
 vFi/p5tx2JrwMYj7BO2F91AtWceGuro6X/fGn8Pvg6kvCiUL37AgoIqxZNcLk6xder9wO/Qw5cY
 Wcv5F7SREjsTrIlHryTdWfXrJL8DXI7oNmazYhLMcVtcql4OzT9w80B1a7LkcsZ8FEJbHKjZxxc
 eAH9BSSdqvDl22x+ni8mXs5FBGOplsJngyFNMJ/5supK3ls428LHAWasTgfg3kdTmb+sB7w/6ia
 VpMXn0g+FjCEzk5+N2GQJshFSD55hJDLU4uVhnLslkzw++UP0dkzdSbkJbqUb/fnKrpCJUotMty
 nsXdgE9iMHJjPrR/vPx90FPyArmDg0XUfeBZKdMl1w3fBFAJCQ/AqqycaaaoXjqz+XYMPkBsxVZ
 Y1hpkDJmvyxKSC3TWLAqHJ1M0NE+1FoDtETKaCqRTK9L51EzKt/OGk4JrdGaHGUecOLsbVf0M0F
 YZGZrU3g5SQmpomBxRQ==
X-Proofpoint-GUID: j2OWxgOBc_NVAReHv5tyAd_g1rc0hKiK
X-Proofpoint-ORIG-GUID: j2OWxgOBc_NVAReHv5tyAd_g1rc0hKiK
X-Authority-Analysis: v=2.4 cv=brtBxUai c=1 sm=1 tr=0 ts=694bc63d cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8
 a=tBDzFmnqMxbdcKwNnfgA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 spamscore=0 adultscore=0 priorityscore=1501
 malwarescore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_025350_523316_9E7B18B0 
X-CRM114-Status: GOOD (  13.71  )
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

From: Abel Vesa <abel.vesa@linaro.org>

On X Elite platform, the eDP PHY uses one more clock called ref.

The current X Elite devices supported upstream work fine without this
clock, because the boot firmware leaves this clock enabled. But we should
not rely on that. Also, even though this change breaks the ABI, it is
needed in order to make the driver disables this clock along with the
other ones, for a proper bring-down of the entire PHY.

So attach the this ref clock to the PHY.

Cc: stable@vger.kernel.org # v6.10
Fixes: 5d5607861350 ("dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles")
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 28 +++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index eb97181cbb95..bfc4d75f50ff 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -37,12 +37,15 @@ properties:
       - description: PLL register block
 
   clocks:
-    maxItems: 2
+    minItems: 2
+    maxItems: 3
 
   clock-names:
+    minItems: 2
     items:
       - const: aux
       - const: cfg_ahb
+      - const: ref
 
   "#clock-cells":
     const: 1
@@ -64,6 +67,29 @@ required:
   - "#clock-cells"
   - "#phy-cells"
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,x1e80100-dp-phy
+    then:
+      properties:
+        clocks:
+          minItems: 3
+          maxItems: 3
+        clock-names:
+          minItems: 3
+          maxItems: 3
+    else:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+        clock-names:
+          minItems: 2
+          maxItems: 2
+
 additionalProperties: false
 
 examples:

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
