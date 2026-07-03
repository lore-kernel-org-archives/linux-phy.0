Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FBE1C43458
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jul 2026 12:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cRD1Elx09pJwq0dUN6Pa8AE7g4MpJ435fqln6HzT1a0=; b=Kk1OUG6IXEDhbP
	twWRgXXktjSCka+b3kutHKCPag2LiKxOgi4ZIHlzAaWbxrbKE1MizGTRMivLl5N/hD9LUeC0+cfYY
	1rVUwm9u8ajfYujdHI1Kmx6Xm53Vol/1tmynwcBaAZiNl448alQj5P2KdD20pOxER4u0bYNsC+xfd
	EbqD4CFS4hT7XeCCUhwoE3QBO7xnArtiV9YJkOqM8BOjci56VidV+dAhhIFOWCtvowunP7D9OYDb+
	a7VW3xr9UiDFu6rYTKr+fsVd3aWVAFjNw2FdIHBThdeenYL6WRmQSe5G1L8lHTJRJBfTlmqJQZx93
	G4kZeBNdGm4VgrMZM/nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfchX-00000006u9L-2zdG;
	Fri, 03 Jul 2026 12:08:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfchU-00000006u88-46fE
	for linux-phy@lists.infradead.org;
	Fri, 03 Jul 2026 12:08:58 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 663BO8TD2994889
	for <linux-phy@lists.infradead.org>; Fri, 3 Jul 2026 12:08:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	u8d2V1J0QbYdhiQA9M9vo6lfgb+kQCAkNzZdrKE10Kg=; b=okwbLleIILn08seE
	iseaDqo9uGQ14EEp5eg63/lUn6m9EzBaz0Upd7SuVI84STt/xCR+tE/MJU/ZE4i5
	CvQUTa0iuSxmeGlBnFLP4k6emqLDeDFEgLCjYsbN07njEzLceIEYrSavppzW0317
	XT43Yc7rVqnIqFPnvRYL/B/UnIKhtfquSAaK1/U/rVBwNkYzgkxWfjyqjLWtomV7
	ImMiSTKpHzYGwgnYDIPUuEuQh3+tsQmurUXpN+PdCyYwHesrtTsrhVIAquey3Uqe
	j9xcV+Fld1RI5UltHW0QP4oQ3pQAtC4xYIYzxK1yunmJh30TVw5m9rn8o6b6/4eg
	mQ4tVg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f648n29xu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 03 Jul 2026 12:08:55 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c88ab059052so585282a12.1
        for <linux-phy@lists.infradead.org>; Fri, 03 Jul 2026 05:08:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783080535; x=1783685335; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u8d2V1J0QbYdhiQA9M9vo6lfgb+kQCAkNzZdrKE10Kg=;
        b=d1QHpVg3QJfJx9wErD7/WcaParWu4JJs3dHBmtbLnQ2e0KZhjqd+UqoAPrYHl0Hnkv
         OoVTn4TWZOM0LIuiPvUaYvg4/T4eptuXr1y8k337yV8G9goHqNFtVDsgejiJ2ThdHnL3
         A2Eb+p+V+bqEixWPCFFaOaesT0r0TMZgn//CA/cDsLhn1GKZKv8ox+Mn4bR7W7/9NiwQ
         iLlCKvbBQLqY1pHW33X5LZ8dqsPz7zaameZYsFXEOijBW0xwSb1nh91oF9SmDgqwQ03i
         UoQ+G5NmVNWpC4rnw12E0klkLbYw738NmkqSOTHP4tEiSuz/QauXWfc4U5ACfD/aD+M1
         uKlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783080535; x=1783685335;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=u8d2V1J0QbYdhiQA9M9vo6lfgb+kQCAkNzZdrKE10Kg=;
        b=DttYO8E/wBK6VAwjNtNbDAFWxea9bE7/UOpDOCUaCazGTrfl+2OmuDCuHxecA+O3j6
         BUXPLDo38Sn1pX6CYiY7MPj9RUbTVgQXaNRkRSmOjIjhsZDSlbzqvt9ocVHHsRAH8lK4
         KNbVsSWG0Wo50INMGAqt9cWwOSQQ98LdClldagS+KDomrfdwfOBeB9AcGIVlNvMPOOzu
         oAbUHodG8nBb4tKSP8nqQHxsnpse3uGIyAP9btH8RFjp5ienmhtQw4Tsa/ae6WBrtH8b
         C/7PXufXvywAa5+FjjGllEK+8E8xPW4AwzgtK3oNdsQKrRzzyVbI6ahJTyL34J8cfzSj
         5QTQ==
X-Forwarded-Encrypted: i=1; AFNElJ8LGE2FZ9HE0lCFaaA0WI41lBepsjXri+ErkKv6UILNUYIJNjKKpuAbux6qB11WNipEjMB9lAWznmE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxO8uylay001ahMoPiA/SL6OOFfKd0vpKe6VaFJPw9hAptPp1nV
	LGrx2RolKupB4SjuM7DvAif7a+VYReZO+CzDw3uw+J+n10qBDdHOHWzib/2ROuUgg2sh1gvKuBL
	YRNHmm28m0soOpyLoxqDHpkTmv+5GTlqR2OxceCRlp34fJ3P/EDgZf6gNi5RN1DltIuDG
X-Gm-Gg: AfdE7ckVFo9pGs+eJuaCUsEVfQTRGXPFak9tyBavhFHt1lceHQOB+g42D4labPZuGvp
	k5+rDFWfLZQkVMU0WsHQCkwXnUmjQzQTyNacTIArSwl6jHFtmV+3E3SjnamKUUlyS/nImODWkfX
	4Oxyc2keHTZ/uKEQHZlfFW+KIgr1/dWknA5ClH/r2lou0VKSWPYyB0F33nB9ArP3fakta/q40Ha
	gJ79Chf3TMQH50DiBFpqt6rAC8nJrYgsOaGCO2xFSGTRamkx9PGCGOomcdY4QBrXTsIPAKaxc0/
	f9HD6ZHqgS+V1xvbF9M3Ol23Cs6sWpcHB4S5ZpSK8jdS4elxwzxnHf4M6y9czHROIFcne9IhpdD
	Da0X5eSFv70tt/MgYWwEXGqE0J1JTgOJLq39393Vgv3K4cI9n
X-Received: by 2002:a05:6a20:7489:b0:3a2:ed4a:5d7e with SMTP id adf61e73a8af0-3c01caaccf8mr4338115637.22.1783080534565;
        Fri, 03 Jul 2026 05:08:54 -0700 (PDT)
X-Received: by 2002:a05:6a20:7489:b0:3a2:ed4a:5d7e with SMTP id adf61e73a8af0-3c01caaccf8mr4338059637.22.1783080533846;
        Fri, 03 Jul 2026 05:08:53 -0700 (PDT)
Received: from hu-vpernami-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c9e8eb10638sm2530779a12.2.2026.07.03.05.08.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2026 05:08:53 -0700 (PDT)
From: Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>
Date: Fri, 03 Jul 2026 17:38:40 +0530
Subject: [PATCH 1/2] dt-bindings: pci: qcom,hawi-pcie: Add Maili PCIe
 compatible
MIME-Version: 1.0
Message-Id: <20260703-vdev_maili_dt_bindings-v1-1-c9df0916cd5e@oss.qualcomm.com>
References: <20260703-vdev_maili_dt_bindings-v1-0-c9df0916cd5e@oss.qualcomm.com>
In-Reply-To: <20260703-vdev_maili_dt_bindings-v1-0-c9df0916cd5e@oss.qualcomm.com>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783080523; l=1283;
 i=vivek.pernamitta@oss.qualcomm.com; s=20241114; h=from:subject:message-id;
 bh=5V7HWccyjDE1PHzPXsSESrD0TYABSrEnhJQ1xPdGWYU=;
 b=J4GGGQ7hcYdgtXJBassBT6Xw5rLDeYRwM7rV0JCtvJzey5nqajrHDYeUihNHUapO7wgdAt5e+
 Lq3SS+5iq//AWGUj8V/QkT/kRdmF+LWBJVxg/h6qhD3F6X7gH6bK8VX
X-Developer-Key: i=vivek.pernamitta@oss.qualcomm.com; a=ed25519;
 pk=HDwn8xReb8K52LA6/CJc6S9Zik8gDCZ5LO4Cypff71Y=
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAzMDExOCBTYWx0ZWRfXyleXsFrwampe
 UtyPNvzD0oov0IPCpOWMPrHz1y7tl1SN4XBcQHVP2zkS1PRnY2M+Wmpw2p3t8AuUhlHbq6XQjCD
 kT3cywcsgc8hV/mGB/Htg1ETsk4TXfs=
X-Proofpoint-ORIG-GUID: 61YWv1ZE4fNjgDpP8Kk-5tQdai9hMnzO
X-Authority-Analysis: v=2.4 cv=O4wJeh9W c=1 sm=1 tr=0 ts=6a47a657 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=ELRmBhIVfrytVPIx1VcA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: 61YWv1ZE4fNjgDpP8Kk-5tQdai9hMnzO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAzMDExOCBTYWx0ZWRfX1FhBbw3xHV/D
 nO8hcJWynVTYUThUOLec182D1Y8y4R0xPTpLQv3NAP3TKK5A711lVPtkeFPzPQCvag1vGPuI/eg
 bUUiC1NmMC7cNKiWeGnra0lZQwwvMN8Op9eTHLZ5AhBVOKxy4hvUi/Us51ecjDfcsvLJP9ZM5XO
 N6ZnK9YXf3o0QQvmRG6dZD3hhEREu+WOSzCwwMeIjYLtzA7G5tK6I1b4Cau8omfcZ0Zltt65tD4
 107qGksCm81THiFUxU70DgJc6lcaxaD46Z5Cvi5Oh5Vf2YyZb+dnqVrvV2CGBof73d3kghuCxMS
 jFwRBGXmHSQN5lA1hCaMReZeRBqt/GlvRM3d2uQNEd8cTMSpWlYcIu0wWK1PXE+Gu1cVUzQqWMB
 eocCD36Zij7ARYqxCK+qjH9y2dxZwff3f5yhNhfb+vJrjXpxKX6305Hv954aoi2mx+i9zPz0jBF
 QpG386JkpnnpZJ//28g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-03_02,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 bulkscore=0 clxscore=1011 phishscore=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607030118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_050857_136318_844FEBD9 
X-CRM114-Status: GOOD (  10.86  )
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

Add qcom,maili-pcie as a compatible string that falls back to
qcom,hawi-pcie, as the Maili SoC reuses the Hawi PCIe controller IP.

The Maili SoC is a derivative of Hawi and shares the same PCIe
controller architecture, allowing reuse of the existing Hawi PCIe
DT bindings.

Signed-off-by: Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>
---
Dependencies:
- PCI: qcom: Add PCIe support for upcoming Hawi SoC
  https://lore.kernel.org/all/20260625-hawi-pcie-v4-0-1a578603cd86@oss.qualcomm.com/
---
 Documentation/devicetree/bindings/pci/qcom,hawi-pcie.yaml | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,hawi-pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,hawi-pcie.yaml
index 2c999ca6b2052760a192e9c464d86b73e86d3a88..aba89b59915528ef112e74982bfffc79ad6f93e0 100644
--- a/Documentation/devicetree/bindings/pci/qcom,hawi-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,hawi-pcie.yaml
@@ -16,7 +16,12 @@ description:
 
 properties:
   compatible:
-    const: qcom,hawi-pcie
+    oneOf:
+      - const: qcom,hawi-pcie
+      - items:
+          - enum:
+              - qcom,maili-pcie
+          - const: qcom,hawi-pcie
 
   reg:
     items:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
