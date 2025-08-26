Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0205DCA0EE4
	for <linux-phy@archiver.kernel.org>; Tue, 26 Aug 2025 06:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y977Ad7wmObarid74WsLbG0CtFXxcg52SwTNn7wJU50=; b=GtWmzJSJ8BAQAB
	IF4V2Jrat+W87AzZeQosufptodLHakrQb4lR96igXJQMFjksoV3TILjrd+KLRY80rjx+oJ2GGOs2z
	Yxl/8upmdOS0aJD8mxqO7LrFCH/3guuUyCqMMkMxbAGxTYvG3j3OuwkiMsfdxhLpVh6b9terIjI2Q
	xCP+5yBV70CP+ZRlLmCZelurmABNoW+GYoUIJt42j6lbucJYIT/UE7TKz1YhsjZ8GeWRwHEMKJQZL
	haOM3dBTisNWMKkJrbjzVqMchayjpnm9eXhwVRwKhB6y3z9gVXDoJWq21CVfOztoh0xGIzThcr9Q3
	EQPfCzfKrvi09IA2nQJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqmm4-0000000Adf5-2Xv3;
	Tue, 26 Aug 2025 06:03:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqmly-0000000Adbw-2NGp
	for linux-phy@lists.infradead.org;
	Tue, 26 Aug 2025 06:03:11 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57Q4k7W5009700
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 06:03:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3aPHP/ZvWkk9g17nfgyfPgB0CX4dTinxdGvwP60Nou0=; b=iYl0MsJp27Kknz6t
	hyobAzDkq4KAVMfkfhD6iCLryJM6MjakS+co+iGgfu2hDjeIaEYmV//fwJSdDrzf
	zXzk5xpCyY5EI+rP3tDAFnT3et3vPPcvJzGGyUcED5qZ7lXuzqly3afDn4yVgaIe
	Pddld/uzSAjJNPaRhTuldP1Fq0I+799qPElFbmS1H5VpIpJDXhhz+ifqLDzsQZW0
	c+5dHOce8IlzY0/xvGdWGG+s6lRkzzFLC2FYU9eWPp+dYBeMJ3dTKD9M3EEebJzU
	YikDY0Xjz3bDX6efPskkPeDBryyND3cLkPV8MLl4u4fAJV1cD8IGWP6a5U/veBN5
	NEScwQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5w2qrsn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 06:03:10 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2445803f0cfso58229105ad.1
        for <linux-phy@lists.infradead.org>; Mon, 25 Aug 2025 23:03:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756188189; x=1756792989;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3aPHP/ZvWkk9g17nfgyfPgB0CX4dTinxdGvwP60Nou0=;
        b=HWbWqxjS7mo+r0z9AViPfhIuQh3TeWcTHibS51rQiB7ivXKNeOSnSyDwb2h2bSgGLb
         5x+6aM6DnKtXSSJpTPYTaOwd2KnW61H7Fkpi6Sc63f6ar3tWMz87SrCLXAI2n26NJwJA
         BPDLvjW+aIOUgXCPvdZFP/A0MBkKVv8kbMRxLm99n7RlahqZan/VI+zdry38hR++2Gir
         pIrJBCUlSzEvMY3OVX2ujMVs3qQaXxfYHGgNS76g6Z41Pm0IGeSLOSBnhgWfe7IiYGPt
         6g2NAF9tM3VhP7F/ZS7w1ToVSmyXSB4xhzhKLj4uTArkeb+OedVMNg1wYKOcgVXV14sR
         P3Mg==
X-Forwarded-Encrypted: i=1; AJvYcCXbEbmwmzCHLogS1VnwoMHNm6MvuWUhy5CFTdo1WOcFWc4obblCOcgSxRPnm3jB1kO/lVQAEaVO/5o=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxv6ALK2A0UFAvU4V6N8/vOr7IUVDmYCKj8auiaOOBGwOuaU40k
	rGM0vu5cwq+kHoBGhrmjECPNOcgkSkpHYRBIGM/CEZs37mbmCU0QpI0SVDP+eNOCHBKLiZGde9I
	iWhUgDiGEMgFbd5KrFDZp7vR4vqtvgSxroJFwXXY31AGJi34uWcu+AflE1gLSn7V1o7+O
X-Gm-Gg: ASbGncvDMbqI7rcaVT8I8EiX46wG06Gsx4ax+kY7Bw3nb27/Wrc+rDEbOTO4MgDDquf
	Jf1cF4/vO9DO2P8IqtqRJ/n4GGvt9QKppJwXRgI38MSXjrSFYQwfRLnMlC8J9EspAgI/D37/F18
	7ebOep2AhzURW2L689xFdfipe1Zcr2G8VqiPckroNYm+NtkpVvD8O3Vo/3B6z1fQs6QwAUTHbAj
	i0zbfZIkyyzvR7k2H+tA4AwWVMwWsqv9h8B+J3deURreH217tWk2Q2+vv+o+c59isg7yMnL86ur
	Cz3S2I6zH6Gz86H/3HQdlFtK+dETEen7J8/R7i+k8LPEM5AGRB6wfNZe/AkYl/VKYck/IQ2z6O7
	a2+3nQugWt2Ev0dA=
X-Received: by 2002:a17:902:ce01:b0:234:914b:3841 with SMTP id d9443c01a7336-2462ef036c1mr206242305ad.39.1756188189271;
        Mon, 25 Aug 2025 23:03:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFPv084Dt4hnW5Zi6YWCsq9muv/c3TBUeRCKcrebtzv4eUqKfQpl97L7mhcppIGA72kG1DfDw==
X-Received: by 2002:a17:902:ce01:b0:234:914b:3841 with SMTP id d9443c01a7336-2462ef036c1mr206241815ad.39.1756188188802;
        Mon, 25 Aug 2025 23:03:08 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24668864431sm84989705ad.93.2025.08.25.23.03.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 23:03:08 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Date: Mon, 25 Aug 2025 23:01:48 -0700
Subject: [PATCH v3 2/4] dt-bindings: PCI: qcom: Document the Glymur PCIe
 Controller
MIME-Version: 1.0
Message-Id: <20250825-glymur_pcie5-v3-2-5c1d1730c16f@oss.qualcomm.com>
References: <20250825-glymur_pcie5-v3-0-5c1d1730c16f@oss.qualcomm.com>
In-Reply-To: <20250825-glymur_pcie5-v3-0-5c1d1730c16f@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756188184; l=1219;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=NNqB0T3SwC/nQPPpaZYNgmY4nF2H4V0Dr0y62les5Jc=;
 b=ZDarMZfCReeORTZs5PxdEl4S2aPFqVIxv2EnYj6iaL/AYqteR1RV6Dx6wxWy0mBpmOZZXxiff
 hcewqh4Nz6CC5EfKXz0o2ljqB7nquJPGkQqdIBMLCPirIG861GtVj+H
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Authority-Analysis: v=2.4 cv=Z/vsHGRA c=1 sm=1 tr=0 ts=68ad4e1e cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=WgZgizuZlwTqGGW0kXsA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfXxaLqeTc/p7P0
 nazG41FxSpRXu3jKNu8kfZ5bbZhmeki62CiI7sE4P0NRfNzqH4lbGwRiBYcNnOyM8YLQB6Mm6Qo
 HZqbPqi87Bpy4Hq5HOZxzru1zb+wOAS02CDE7ldBlMBRGIuDbZCH6Hd35fnVF2jsg9rbPxJPAq9
 ZBJ0TsKwevVWihEJvtwBN3i8iX1Ftl0oQqc6FAZdJhjhrdEorabb8yKeNI4EXiQsOZHfShmCpbA
 JYHhtkVeSGOA18xngMjlss94tqIFhYQF4vyBN1/qrnXxNE4PFKnAFoRVC+TeL5e1tqFTjoMg+3S
 k/C65wpcnBEAd1JKrzv78iJxaATliUCQNpP0f2Cd6qGksCo/652WItm5YDPw2QdRvrFIZoITUgX
 JCY/QnVp
X-Proofpoint-GUID: uWUaLIKlyal37JW3_MJy3Iyqk2S7gXRQ
X-Proofpoint-ORIG-GUID: uWUaLIKlyal37JW3_MJy3Iyqk2S7gXRQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_01,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 phishscore=0 clxscore=1015
 suspectscore=0 impostorscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_230310_625146_C6425129 
X-CRM114-Status: GOOD (  12.44  )
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

From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>

On the Qualcomm Glymur platform the PCIe host is compatible with the DWC
controller present on the X1E80100 platform. So document the PCIe
controllers found on Glymur and use the X1E80100 compatible string as a
fallback in the schema.

Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
index 257068a1826492a7071600d03ca0c99babb75bd9..8600f2c74cb81bcb924fa2035d992c3bd147db31 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
@@ -16,7 +16,12 @@ description:
 
 properties:
   compatible:
-    const: qcom,pcie-x1e80100
+    oneOf:
+      - const: qcom,pcie-x1e80100
+      - items:
+          - enum:
+              - qcom,glymur-pcie
+          - const: qcom,pcie-x1e80100
 
   reg:
     minItems: 6

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
