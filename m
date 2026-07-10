Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67B1FC44501
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jul 2026 17:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4RoWZVH+u14oB79NMZK3rQNm56D0BsoeQU17I5hSyUE=; b=49tGcFHfKYH+tP
	gA4PE7w7Xo/Z8SH0WZtMUypVlOSRNcSC70J8pY3YuwpMhZWbEGXQUi8KBIlQwz17Tbh02WLR/mCdE
	0Y96IUfEtpKLCw1fTdKLZSLtUJ1ZkSM6DPqcyQc/DOt0TVobJn+fU2r+tnP62/oovGIs9Mj4/wDCO
	k+Quo4VMifAkf4fAGId8wyWQC93rGFyOv0SIHYvMGKdBgwSL5clbberilpaMMkeo6Bn5WwF61o7LF
	yFf+Q1khUor+gJ6fhOCxcI6a/9HM5Y/jtTePd8uT8LnU5Oe/u4g6yJ6t5mXOBimuYkNOqKE7g7Fn5
	KS8maXGwK25zYdkVX1vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiFJW-00000005Sph-0Ybm;
	Fri, 10 Jul 2026 17:47:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiFJT-00000005Sov-3Bjg
	for linux-phy@lists.infradead.org;
	Fri, 10 Jul 2026 17:47:01 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66AH4ELa1234457
	for <linux-phy@lists.infradead.org>; Fri, 10 Jul 2026 17:46:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gCv2zKv+N9qth4QiOXkrhC4viQDxXUkZm3urZ5/gsF0=; b=nXCdjvBkCnreod3L
	xsmwjIznMZdIdz93s9Wa9ZzIDRY5PPK8bFZEK0+6Y8zn5b3mrn++406HiFgw0pID
	+6faqeAh+VORhF5Ve587U0CQtCdZxZW+0qXchNdcIC7QwtKKVFg+sBx8R0d1rf+i
	eN15O9T3ZfbTnDMMO2GVz5iHImIB4CaVj4yDLVLHrYR6Kyn+LDfbeO1usQjy7UcB
	vmDKil4mzcwXTbolAYp6R7jRa8p31crxb7CTt53ISj5rkYDZcHD8NpEeArYEB/qO
	aM1HFXWLXUbWmg8VlfxzX6M9R57Tp6RfzkNyQeaQWP+ZAllcompeJ8kW2cjXahAW
	xcWL6A==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fb4rm85rv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 10 Jul 2026 17:46:59 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-381ed6616f7so1859140a91.1
        for <linux-phy@lists.infradead.org>; Fri, 10 Jul 2026 10:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783705619; x=1784310419; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gCv2zKv+N9qth4QiOXkrhC4viQDxXUkZm3urZ5/gsF0=;
        b=BRySiDyxyyW5ga6KxJrAztz1FZ6DUZOqHYuRoHgsI5MeZ/Sp1XNxv6ETCa8nZ5gjHC
         Jd4ydbad0QmPEBgv13rlVNb+fXxKEjMK7cgRxWUdizPppJxRKtqYqz2uQ1IsvvFYY54k
         sN9u+rDXfVP/JODzjqDA7wOaZ9Z7B/LDU6jLOi2dhx4+UwVZd4NHxkST0SZERFjtiah0
         DakC4aaTM+Vt0VWTnb/E5fyxC+g2RvBj939rxMBLRiPunXhC9i+tPPWbj134jSQLR31D
         xxxROxfzo8RSWjZWn2yv14j7p7R2j7Kn3kc5rS4bRY6SH+cMUMIPKOhJ10xrp5lnOOm+
         AXPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783705619; x=1784310419;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gCv2zKv+N9qth4QiOXkrhC4viQDxXUkZm3urZ5/gsF0=;
        b=sy9mNKKvdef0dLrFn0c6PaadJlCFBknX3+J3BiZlZjtNdfYqvfrdTlspEH8aWY3MgM
         XYLfAbMuOIDcl48qG+5VNFJGLQgCAO3FI3pU/yLs/zK/3KEOj33dxxzZuSbQo1DvVAaw
         Dp6aiCxlr3o6dtU/efFYe666nBjwXJ1Kt4yRXlfPdkTZ3EZ7d2DhINwC2+0MIQ7lPNAN
         A+iCpZY0STidQUlducgJBu3MeiZAZ8f8EW/3/0tjTJedR9AfHT0+IAORmj4QzfQ8zqv9
         hH/9nt6RODOdJ2W9sijUejX2LDG+6pGC13WE9CvgoGNgDFWNtblnLa/849FJ9D1ydO4t
         ge3w==
X-Forwarded-Encrypted: i=1; AHgh+Rph4/Xsae5cm7QiUclx6nrcxzZGPMKBgtbB3zEZ6xJMAGX8NnWd5DiXB32xGJK9X3rYW+sjspJT1/0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyeQxr4mzNvTiIBWmiahWs9tfTjjJw1+nHVbqUK+8uL4uSkAHx9
	AtjA1+e53gSLo33U4BG3aCAGEPTcNr/21lq+69bFIOg/NYWaDlyuyyuVqBFM5eaja5C4fMyCGkc
	+eAq8HOhrt/d9+L8EKYl55r2tIxazc00DNOs0bMjlXyCOxPV1vnwACojHwxh3PsYpakmW
X-Gm-Gg: AfdE7cnmwv6QCjoDLJ1+bvmDYDvwiDSQLUjZhmUqPUgEIm2z9Ov4K4tHeb7pR0Zt0GM
	mO1UKPWEZ4wPzmnRARvh3WIIyfpSLF+XWLKIMyNjiI3P1jzUEqbfRXfMSSRhPAgbPKegnyzmlmG
	pRra8vMEUe7pthErHU2fZDryoCep1WWWBb406xvPKymsM0rs7qNiNg/67T1GcmcYoWHZ0kxySbG
	vlhUuOCmp6TwCtCOlw4In04hGrtt8J6DNlk5vBDrFLCeXJJCJTmxG0wlOimKoWlgnKYOQqTwmxm
	8sG51MA870HbFg5L/PuSNnlGpXxP+wjikNhPy6XMN3UY0doiYF6QMgQR6ah1m7V21pgnNNI6sDS
	VO1MhebE/MkZY3LeoL0T4VZlOdQFzYjSn5pMU8nwTnlZhRO7fPf97fjC8bO7XH8wxEP/XpVGZTz
	vSuZVJuz9EYO4w72EhiWJDpZak3+HoU25xZXxLqPejYsiI5g==
X-Received: by 2002:a17:90b:3c09:b0:37f:133a:3e01 with SMTP id 98e67ed59e1d1-38dc75d234emr23131a91.4.1783705618686;
        Fri, 10 Jul 2026 10:46:58 -0700 (PDT)
X-Received: by 2002:a17:90b:3c09:b0:37f:133a:3e01 with SMTP id 98e67ed59e1d1-38dc75d234emr23107a91.4.1783705618275;
        Fri, 10 Jul 2026 10:46:58 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31189cd8234sm33008273eec.9.2026.07.10.10.46.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2026 10:46:57 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Fri, 10 Jul 2026 23:16:40 +0530
Subject: [PATCH v3 1/2] dt-bindings: phy: qcom,ipq8074-qmp-pcie: document
 IPQ9650 QMP PCIe PHYs
MIME-Version: 1.0
Message-Id: <20260710-ipq9650_pcie_phy-v3-1-ef6018818d33@oss.qualcomm.com>
References: <20260710-ipq9650_pcie_phy-v3-0-ef6018818d33@oss.qualcomm.com>
In-Reply-To: <20260710-ipq9650_pcie_phy-v3-0-ef6018818d33@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Proofpoint-ORIG-GUID: 3fglMg0lGKTm6wBebX2P8FRRW4OiKgpy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEwMDE3NyBTYWx0ZWRfXzS9+zJkYvwx/
 VAet6SSK7zL4nycYGybU0r6Zgrxd/z5QAGvWs0LXm5keNUFr5ctopPgb58fQVhlm0RkXIvBo/FR
 1cExw1HoMWITnfGHr9qz3LDfFBxwAXLqrLUYXklpvQznQAIQfq5v6WtIsSY9CvyI1jdNrEg0am8
 YWqeQHJJS5fISrUeaw7CKlQT78BESRbbc0+qfXdcptqf2qr0MS3dXc2S2GK2myk4+aUGPRUClcx
 eAjP+qMtTt6y1yY4prQu7Cl9t3JBP3Cig7t7gAdRBWXNBnZakiZf4S+9O6XTXz4ATSyQcUhdF9t
 ElNux80x8pvfz+rHR+jXrWRXfeHGMXBehYjs/JJT+827670ad2tmbZZZi5SKjNtwnKhGwLQ1v1L
 EKAHHnEs8h3Yt9xOL0VdAzXLQawBS24xGOydEeGIMSZ9ZhkOxUtwiF+AHgjErOTLaDvWKhDbxme
 +vG0NrYnjrH0OTzhQpg==
X-Authority-Analysis: v=2.4 cv=JIYLdcKb c=1 sm=1 tr=0 ts=6a513013 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=pO3CVo40WvI9-LPkYfMA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: 3fglMg0lGKTm6wBebX2P8FRRW4OiKgpy
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEwMDE3NyBTYWx0ZWRfX7wvQL4ea9NTx
 X8vyMH52cQsYmnAE5ER8bX3P11XynQLZq69+OSLBnRMOGtRzridTImlZ6n3Bi3GOVoKbEUs4K7i
 r4sPM/5AKyfh0HLTRiuowABwWu5Vv4U=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-10_05,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 impostorscore=0 lowpriorityscore=0
 bulkscore=0 malwarescore=0 spamscore=0 suspectscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607100177
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_104700_081334_6123F9DE 
X-CRM114-Status: GOOD (  10.26  )
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

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
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
