Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E542CD6E57
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jun 2026 09:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ZAqNjXiEfxCCn7f9uTdRVT3RpU9rco/eOJVjWZRZRs=; b=cxVTy974AlomZ8
	Q89w/NkGAhZrNv3fIfxqUwtJH+QuBF6et77zESwjTFSsmDhYvPKMjfK90Sr6+XG72maZUH0cAH2y2
	MKj3cemKT6d2hhqDyUIgXydGOoM/2GcvHP99oqmyAk4ImGLVpx6ZDmv1oxT5UmWMNMgH1Pin3po2Z
	9p6N/eJtsxLIZKEKZ3ZVsUveaE/GyQSfJeuSgK+6vuGekeRAPpwiLKxT5GJK6YPbqNOYban2JqBhs
	BvHGAqRV4EYL8lv9kxjGXBBmOmkpQWPygSCCEXamVu3nFOKpxqOqfVXpSig6lz0D4Av+QDmerXx4w
	InzcXNXhhxiPTeiudrag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUL8r-0000000CdCQ-49V4;
	Tue, 02 Jun 2026 09:10:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUL8p-0000000CdC0-2buz
	for linux-phy@lists.infradead.org;
	Tue, 02 Jun 2026 09:10:32 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6526Mr8Z2767792
	for <linux-phy@lists.infradead.org>; Tue, 2 Jun 2026 09:10:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	euyWMbjcoM091o/6mEbzxe+zmJHFTJERj9ARUAp9lDc=; b=dCjuozEbeRXzlhDv
	vDPaTXFtWdxWGFkUggSSAoNEfRrvyomIddOk6JBtSDjLI+RykI3vNFt6iPfKBOmL
	P/ps+K+dFNin7rO48asQPUNovLq7sfKpIp5TDrsHv6l6lIBf3UOtnP3J0lFjLk79
	EnBiwBKzeYa/zVQPycKSFobLDMV/qtOFS6yfJsTj/uzQr/DlsFvoVCvNdS42mUYH
	Jppb0pVR5hyHAmkXfkslXzBVQ1suDcILWH9h2CK3zGhDKYUh0p2SDsHAiD90/Hg+
	qT8l+vDm+Sksc/pMcfM/W23fum1jpcnBX5aMKdSbKyjUEmNdvdz21SeAKstsLUp7
	NJUtYA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ehsus0pff-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 02 Jun 2026 09:10:31 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2c0c1e112dfso31324715ad.0
        for <linux-phy@lists.infradead.org>; Tue, 02 Jun 2026 02:10:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780391430; x=1780996230; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=euyWMbjcoM091o/6mEbzxe+zmJHFTJERj9ARUAp9lDc=;
        b=NUm6/BFGrPb8B7ZKox/h4HI0I7Ix5I4OmyIB0NVodjFuP5jdQI7t0xSZWJ21zT5PT1
         TyXvlR6kwyBqtSt/+MijF2QfHzPm9RGHN4CIZik3fN22ZbwnGC6E2jSdzq7YGB62S1Mg
         RsqaifKx1dinwwNBzdWEL1I+thCh9zNr5V01Y74XpBfKF768DYew2JUk/+UugFJuDfjM
         vGnwo252QDjiFHP1+yl+L8GsgdM+/nwWXjI8u4LCC89L32UuoOoO+R648qyb1+/KHNHg
         ZOK9lP/hx8Yclj6sivB2KtT04LfmCdnsDOD84TyAHKBGj2YijPLFO0HtIUgYucvVHXsL
         VxDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780391430; x=1780996230;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=euyWMbjcoM091o/6mEbzxe+zmJHFTJERj9ARUAp9lDc=;
        b=Mvqyo+vznzHcII4JeXA/xVsMFAQINVKSUhFVhmasxHclcI4dTIVfn+g9XN2l7h0opd
         tPiXK0cAsk9zyD6RRvkJlMYs5LBMw3bLSMpNhEjvvlEfihdg0K4n0ph9JYbCrYVzqVpO
         FDZTecpJpeF2qLh71yHxdFhdMpn1TCL+mZj7Y0UaLWhljgM+fHfJ9ak6BkVqfb5O/xn7
         2I1dKf/8SLCNAQHCd7ML5MphJdGAcs7U0vFCsW3YbHx45gHDEugsD6a899Bl+FzemQhZ
         FYz97+dzN92dd70VxWLTGssRa1SUzVWSYPHcrIVZKoKZM3JEnAg3G2iQZaQ9wXp3gcYI
         Ufqg==
X-Forwarded-Encrypted: i=1; AFNElJ/oHDnnODbHyuV2qtb5rCEWfjlHWRJwUud2Pq72ghc/e9R9hfAgXl6sAZ4fA3KLNzxQg25D/rsqwjY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+ZPCyolWIlfOmN3TjmYW9yH2uzeOvlCWsfqyFT9uarddNpJrl
	dbIxiThcm659Nvj3KNBOZNdEQpAG+sHoPPrSuFldJv6vJW8PVOH9pPQLqLA8cOiEuYL5cXrvW5E
	PdaG0X858tOubuopxl4/AcpHfOTbK1G0XKtQ1n78sTu7L+LgoGRsKKmOqNDtiTuCOvjmq
X-Gm-Gg: Acq92OHJ262Jlflv8Ymq4GXCP5LYImhIAJ5OAWVr5mjdR77pCojBQnE7ZV8Tqyr8BIr
	H6/I6dbV1coxreHUupTHd5iWfftof308lMk//Darn/vIBtzhXy68Vvs68CG0nFGhlYmhJSCNZDD
	v6BL5x1Hli1QGA3W201SqL6kG6uVK0xoy8aFhfRDr/dSQFNdLDZpMh7taTgRT/iYLOuLPu7yqq9
	2XjAcHCX8foLsb+a3kAdsr9xLPhnnPrXY8KtMLICP898UiAUcrUJuVnoE/FjvrsybLiWzA7LJmV
	9zb8tUjWUP5Ri+hic6ewHCBwdKEyv18Pn9UT8wY0LSYMLOnPjPevuJHTJnhZXs/bQ6m6TmFssZR
	JfN6fTbcM603105gc6M6Tegp22+5UxVSKvAR7XB1h1W+hKPnwDf1Qu+E6RtmcgXg1DhIl1iuG08
	dfmXwRqZ/KnGwQQ9BlcHIxIEtioPUnCXJH+5ILBnzT5VfKBeqmhopnN9Pt0tfUqyo7AEk=
X-Received: by 2002:a17:902:e5d0:b0:2c0:ccdb:e029 with SMTP id d9443c01a7336-2c0ccdbe566mr106706985ad.18.1780391428936;
        Tue, 02 Jun 2026 02:10:28 -0700 (PDT)
X-Received: by 2002:a17:902:e5d0:b0:2c0:ccdb:e029 with SMTP id d9443c01a7336-2c0ccdbe566mr106706425ad.18.1780391428195;
        Tue, 02 Jun 2026 02:10:28 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bf239e6ff5sm173007765ad.7.2026.06.02.02.10.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 02:10:26 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Tue, 02 Jun 2026 14:40:17 +0530
Subject: [PATCH 1/2] dt-bindings: phy: qcom,ipq8074-qmp-pcie: document
 IPQ9650 QMP PCIe PHYs
MIME-Version: 1.0
Message-Id: <20260602-ipq9650_pcie_phy-v1-1-d8c32a36dbd9@oss.qualcomm.com>
References: <20260602-ipq9650_pcie_phy-v1-0-d8c32a36dbd9@oss.qualcomm.com>
In-Reply-To: <20260602-ipq9650_pcie_phy-v1-0-d8c32a36dbd9@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Proofpoint-ORIG-GUID: fenIuRQDyDfIljqjBxu7c6DdojN4lWER
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAyMDA4NSBTYWx0ZWRfX6Ciwu8L2p94X
 opdYr567x3gudTsDj5FmBTDAbWWWYYnKEykGoS5idGtqn76oyWyFg5pRq70g3rPNxh8I3Bu7Hen
 fGg9kohxJe7y/RifkzDlTROxu7usfhyuihyrRzKIJgAMvUTN92+FtKsquPb9RZVtozFjCLkllh8
 abWZln7IVeJxvf1GI5cSgR8Zz3OgQ2zItGj6IZFgl16OeHpbjk7RwL7CVg2szzm8B/AETUZoZ0A
 F90q55GAX0+/RYOTdprzQtRwJO/OVGSJExRHGJw/2ZDXCVvr0PCWwigrP9FESxitAjHvGL96X27
 /exmXUZ49LSpSRoFVp1lg3w9kVOQoLk1IVKSKN8rkue2z22BQ96/N3sO9Fs0X8MPQ2XTEoFi9oX
 PN/9wRIEo29g/QioRlz7NQ5oKkFOEYt1mbLkS1bLit1M20mMuIivyYOCQiYG1Z1WGoK9JHJXbow
 vqpvzqKfO7gQYaSrqAw==
X-Authority-Analysis: v=2.4 cv=ZYAt8MVA c=1 sm=1 tr=0 ts=6a1e9e07 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=pO3CVo40WvI9-LPkYfMA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: fenIuRQDyDfIljqjBxu7c6DdojN4lWER
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-01_07,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 clxscore=1011 adultscore=0 impostorscore=0
 spamscore=0 phishscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606020085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_021031_676545_DF182EF7 
X-CRM114-Status: GOOD (  10.52  )
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

Document the single-lane and dual-lane QMP PCIe PHYs found on the
IPQ9650 SoC.

Unlike the PHYs in the other supported IPQ SoCs, the IPQ9650 PHYs require
the on-chip refgen supply to power up. Add the refgen-supply property
and require it only for the IPQ9650 compatibles.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 .../bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml       | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
index f60804687412..048b2e3ff0ef 100644
--- a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
@@ -22,6 +22,8 @@ properties:
           - qcom,ipq8074-qmp-pcie-phy
           - qcom,ipq9574-qmp-gen3x1-pcie-phy
           - qcom,ipq9574-qmp-gen3x2-pcie-phy
+          - qcom,ipq9650-qmp-gen3x1-pcie-phy
+          - qcom,ipq9650-qmp-gen3x2-pcie-phy
       - items:
           - enum:
               - qcom,ipq5424-qmp-gen3x1-pcie-phy
@@ -61,6 +63,8 @@ properties:
   "#phy-cells":
     const: 0
 
+  refgen-supply: true
+
 required:
   - compatible
   - reg
@@ -72,6 +76,21 @@ required:
   - clock-output-names
   - "#phy-cells"
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,ipq9650-qmp-gen3x1-pcie-phy
+              - qcom,ipq9650-qmp-gen3x2-pcie-phy
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
