Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0449ACAC5B6
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 02:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aBh39l7z4L9tqK0a6aeXbq1Alssq7mqIHe+TO6Ur8dw=; b=br0jBArs7aOZwV
	5kLTZ0yUtMJUwY/f5VHHMpKhzE6P8HkMkrXg08J6X44gjZiUAORxzrHzjH581Kz9M3j3yYHIy9K7v
	TcQY2DWt3g8+qie/SyDGUUws1NjlP0l59mS4mUS8mKYE2lRacuweWDK/SdMKSAaQs7nUCu3Zwcbcd
	IGPQ7aPW12Dkr3sUT5QCa9uogRhzwYoFFnXojSbAB+tiUk0QOxeHuFYcmC3jcjppXGCphn/FHZxIw
	Cn1KqfdNmgreIc/7M7ku1bWeEzsqzhI03JYgLQYB04/Cq30WWtE2osBi6EYrOfHYQisHuBXI7jYXx
	W/6XkjLHMfB839oHWqXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1bjK-00000005ItC-2Rl7;
	Thu, 25 Sep 2025 02:29:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1bjB-00000005Im5-28oy
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 02:29:02 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P29oDE029717
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:29:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=g6hGIMMv3wb
	uPomMpx8H8k/GiKEKmx7JPEl9gfJaIng=; b=TgTyJgEz5m3fgPKD4Sl7yF9a9ZV
	TAVlyJzb+FBraXJmeOMvYMgh4Nvixsx2BSJgtQ1dLDCIFdrhvmEqreb9wJaE6sKK
	0P8WF0Ip2xQVyGz4TeT60GwAEivy9JynXu4eFlYiE92HuVxCb8rIQVigRa6IgdlW
	Oy2criHyD8gRzubKKH/iLjWfnfcs4j5VdLix/eJ4qtX6aUlEU992zwPrEURjHe5F
	5YqkvCC+i+mnDOP0WphR6eoRxeUNsZTTW7Q3Yf1CdiaY+fO069rHNj7U0gHP3eUj
	v2vzpbv3daSFvq2E5DYNTv6MeCpHuoqrK//6pqI4NIH6BipcEDZEMR5Bf2A==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fpass-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:29:01 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-32ecab3865dso666428a91.1
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 19:29:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758767340; x=1759372140;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g6hGIMMv3wbuPomMpx8H8k/GiKEKmx7JPEl9gfJaIng=;
        b=v5UeFCHE/hi2susW7mOD2ayNHRi3LYCIUcqwe7euQ46I1nj2InGzBdcJsS0A+djgwY
         1F2L5JU8WGjbqq8DUVNTno4kialCG81lbQEoIyB3wOgKKdEhfVyEwknwrlos/MZx96Ml
         Nx8djeeLyjAIBJ4IzXGzogby8HZSwcDaph/RcUKn7N9m1WUApxuY9hYP9QQKxKCRapk2
         qQ6v1OxlaKdcNVz3e8+jflsI3W5YPuPqv5Zd67cjEDcrKkpwmbYi/zP9KaLtKiSpSeMl
         OVe7WJJMOEy4Jsivi4dg6NAj+5235LIBeQLBVJaMSx6wBX+zgnPdk2HFuKw8YAxmc4xo
         +93g==
X-Forwarded-Encrypted: i=1; AJvYcCXb1m76CPnT5w7IgsBhxjLIaIa1ljZ5W6VBvAa1w0THmabuAzvGiubcApize+SfpuaqHKcVU6Yuw1c=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz8N/219zvFmgfIqoqWdmKXtCyhugc8cEG+cQOg0H+OhZWjS6oc
	eobI/a/iGfx3C85fA0MnEUsi0/g2c3Q/XFtxytYf3WwAFelHxvqsPwrvaNHXI2z35kWWPQvyLbB
	reyDJvVKmuvWdNpp2hJh27Td58silA0BVzxlVKjsLtfWCZdgY/M2rF+41hPUx9h1nIlMD
X-Gm-Gg: ASbGnctyFi1S5RUQGfgktJxK2aqkNauWFHd7EeJfvC8o+ykwcI1OvVe3Y0v1+B1W9Yc
	/fqzjelERPtg/Pu+poYBviBQuZsfRTyeUMjkdDMEAH9NPrWZNrSaBX/SYFr7fh9Y3CLnEUykbVE
	pUy41B3HQwqRJ6HXyF6SW3jcxHDqmV6CHTIoE+Ew81ek0ZryeoQbECKpuj0kxItW6EokbwhCo4g
	lljD4srBGIAJJZZmqytEHVtx2lOUIh6/IVkTc6mVbfEAXt8mMKuT3ISNSTBJhlb+xOdmeJhn455
	rT39IN0r9S01IwE518ERNKW9np9BVdHn/TMsMVr18/TdZkjuYHq/NBmzNbWomMVqcZ8xWvprCCF
	auDv5KPDKjUDmlg3U
X-Received: by 2002:a17:90b:4b43:b0:32e:e150:8937 with SMTP id 98e67ed59e1d1-3342a98796amr1499465a91.6.1758767340231;
        Wed, 24 Sep 2025 19:29:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGgS7ZXVL1SYRcZLxlWvLQ8xVEim5+C7vl+IPW388/ukbhvZuVXDcTXahI9NwjzjZtEvK8rZw==
X-Received: by 2002:a17:90b:4b43:b0:32e:e150:8937 with SMTP id 98e67ed59e1d1-3342a98796amr1499441a91.6.1758767339749;
        Wed, 24 Sep 2025 19:28:59 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33471d711ecsm499881a91.4.2025.09.24.19.28.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:28:58 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v3 04/10] dt-bindings: usb: qcom,snps-dwc3: Add Glymur compatible
Date: Wed, 24 Sep 2025 19:28:44 -0700
Message-Id: <20250925022850.4133013-5-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: -1D3PSmCxyP-lHBha233HVTpBCTau5EY
X-Proofpoint-GUID: -1D3PSmCxyP-lHBha233HVTpBCTau5EY
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d4a8ed cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=JYTQWVwI1XGucIoeipMA:9
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfX53VjMC0hdTuw
 XpveiP5SP9IwOLoJXjavac4kyD6y0j5IZNAC9MOo/KcdBNo+l6rZ7LGu+9ixPiOjjBQuEulM5jj
 z78p0l65MFjBWeSWXz2zLSBrqfNKhy35/P5IkYUUQqNd/Jbmp/Y69O9/CSG2kQtabiraHZ3tqP6
 VvYWtey6yR3OSTYrh0MANUUlo6KutxEcHBXWcO90YsuE6jN2d951f4a22tzZ2C0pSfO+kRUL88b
 4HSYVEeuvrJ2KnJ503TwDLuPuEUbSMEhDfxxRs14XczRmDCgCr80JXwH75buau5oHeUKQRGhqey
 cVM3R2h4MMAj1dLNMd1Mzd+LnOyYH82G2cGmnrAvXO9AIsYHdy3ZHBFomC8yNuALR624ElGzLVp
 rr7oJInD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_192901_548872_851E23FE 
X-CRM114-Status: GOOD (  10.53  )
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

Introduce the compatible definition for Glymur QCOM SNPS DWC3.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../bindings/usb/qcom,snps-dwc3.yaml          | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index dfd084ed9024..eaa0067ee313 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -24,6 +24,8 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,glymur-dwc3
+          - qcom,glymur-dwc3-mp
           - qcom,ipq4019-dwc3
           - qcom,ipq5018-dwc3
           - qcom,ipq5332-dwc3
@@ -386,6 +388,28 @@ allOf:
             - const: mock_utmi
             - const: xo
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-dwc3
+              - qcom,glymur-dwc3-mp
+
+    then:
+      properties:
+        clocks:
+          maxItems: 7
+        clock-names:
+          items:
+            - const: cfg_noc
+            - const: core
+            - const: iface
+            - const: sleep
+            - const: mock_utmi
+            - const: noc_aggr_north
+            - const: noc_aggr_south
+
   - if:
       properties:
         compatible:
@@ -455,6 +479,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-dwc3
               - qcom,milos-dwc3
               - qcom,x1e80100-dwc3
     then:
@@ -518,6 +543,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-dwc3-mp
               - qcom,sc8180x-dwc3-mp
               - qcom,x1e80100-dwc3-mp
     then:

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
