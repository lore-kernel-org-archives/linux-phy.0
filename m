Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A7FBD232EA
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 07:21:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HUD8xmZECO1oEAQeCqgiugJe6vUNjZC9btxfOkyRosg=; b=IxlBN+hz+kX70B
	UMKA5obwUySC0knAoGp+7gDTSAe6VzOSVUCxNn+JjW9vv3AfofyiMQpf1SrMRE/ZTI+tCoAyTkk/A
	5dHjzdoslRxmUsxcT6zjsc5wJ1+08S0ovunRMCg1AanhYNvVLoxl5K/lngdFBPq+2WtykDkyDKQHI
	+iYDv9ute0gGGq7yA1QHO4v78idV59v1zLwDVQYdHemYYIK4vvBgz2Xs30Am5wzTUVuanlGW+GZCr
	Kd0vDW/KC3iDFhCXSvtk2C1DTdI0mRHygrpcN0WKcjOVtDDYBng6ZiOndYP4URSMmk9KR/H7ENWZ4
	MLWXuGFJ7rNHfgLHFdgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve6oS-00000001hIp-0AMJ;
	Fri, 09 Jan 2026 07:21:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve6oK-00000001hGh-30iV
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 07:21:31 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6091qSdq3324801
	for <linux-phy@lists.infradead.org>; Fri, 9 Jan 2026 07:21:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	guGTs/O1+KX/IddGJcB1UdQ/HB/cP55e3A+v7+B61bg=; b=jHmMav5RCAwEPaLR
	LBWihKxXHzXtkJml0VVjuou1ek7FVDiBvLhniT00D3tkuz3Ph9/7xLPiNO8ts8dL
	Q8snvDhPnkpZvdKJ8be8+Cx6G4GFn4fCAVxtmNS/fh9CArEZ0BLxB2oWHYzFpARr
	XvR+EBwTyH/2tAUKvtgTHknu4hL5DYSFj6NX1ow3Nsnep4ii1k1jNHUXPsFQgJ1M
	VNmdDsaOuBIc2LEtjCv+mnTvDtySvNW6weIfpvm8dhqZjvTaU1GKp4TlwXdvrhGs
	SDO5uBAIBZ5/MVbKAzLfb/bVj157jobWilfc6BiZSqLL79kjVLjf9KEwJxFYE/b8
	V5vsww==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjrd6gtmb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 07:21:28 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7d5564057d0so7821965b3a.0
        for <linux-phy@lists.infradead.org>; Thu, 08 Jan 2026 23:21:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767943287; x=1768548087; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=guGTs/O1+KX/IddGJcB1UdQ/HB/cP55e3A+v7+B61bg=;
        b=IzHo0Vze9OR7D6ABTGRo5KRUKJjjMiZW+gCrBLdcyA9qohgLPDGBMqGcZLUtazSRVh
         GlSHmxE+fq1l6e3kpKkE5/PXDvAI3SvS3KMssa0Su3lSo23+5a9nadvhODiw6e35OnVs
         ItoQEKG9mvx44DndFQ9Be0eIKvvYDGnhAlQPzkLD0H5imnlg29ADaOEtqbM3L3wFtZhU
         lGbAZtMVE8dB8n66tDUetXa9skSj8WzMKx6+eB59NPnok4EVvucht96k7ZE/sSog3Nrz
         8nK7WJ1i+A0JXF47D28e6EZkEO/7vjPGzwva65q/NXhPr5N92XPcRrYokWx3/D6E0tt9
         CIVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767943287; x=1768548087;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=guGTs/O1+KX/IddGJcB1UdQ/HB/cP55e3A+v7+B61bg=;
        b=rCBIxw0qqPxX6ZWnes91Neny3oazHkPQBnWtrNZQC3CH0dwisPBllxJEydgPKAo85E
         ZekZlLcgBPBabkL1ee1MKYboV3SHoRlJVfkzzvmaQxnKumDXiNjyLD5NSIParfMoedNa
         HxY6Fm3ffWPpnLW85gSChOqUyxrS4r+3jl3YTT7Awu6pTMOW9ZUHMuWfRt6zhbV8FNkR
         0cXniE9KS5uyhZcIJ2DggdX6mMpgZYbRHtr5xk0iOdA59sl2/SdMDd/QPnzbgw9WJCgu
         ggsjQiu560YhJ/wXMV0/8Rn0kW80DZSdRYFKVIM8Mr3xWTA/ryyv89ycgEiv4bXclVUW
         I//w==
X-Forwarded-Encrypted: i=1; AJvYcCWm0RlpSFbGSeeSgxNjICZw/Hg9XZ56c/fGSELw/VNAUwU2fnZSkPbvfbeXTHg+4EmhjJUxsNHIiWc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxgMwn8cbEE7aRFSSYdzXnPGW5zZ+i/J94BC3suuT+hcYLp2GPD
	bsr9nB1/ozcTJlWSSYkHyD4W4HhVYxz/LFQpMuqjp+udrf6q+IixRoTVHeGiNsyzlpPxEgl5ram
	4nrHX27GRhDahhuz8BihySsgOlHZyD9xHKvCxnyMj5twxYoTRGwnKaIRqyrh722HRTiZH
X-Gm-Gg: AY/fxX48Ve/SnKWT89Pgi05ZYAKYn8N2QOrfo3abQ7pTaVlyupwet7/FrroPrfKOslZ
	QeUZ4GLh4e4FgRMhLvZhfcJf+4EBNF18PSwCBgLq4U7AQDK6V6CJ/T2aNxiraMMfXR+fbfmplj6
	w1qNu2pkvXgSVQYns/Woe7EsneKv61q/YXb3bluAbv56bUYfFWhXcPOXrmPPqgg9lXnHDN4A3oG
	LRu6GLD9pB0TE7XcuSlImaPuQDUt1A6qFnbyGrNfneWr4U9FRqKJPIAn+Ge+0xynP7Hps/Zvh75
	naqIiSdKYKsg3GBBnMWaopYVignQ261lZE7a9WN/ZjjHASEOIJVDGwvBO5mT64+hvVPp6T8jFv7
	1VhZ6ir4LxIZ4rwiYiTsUM367KOiVKC8HsT/n3hEU+jWa
X-Received: by 2002:a05:6a00:ad89:b0:81e:b93a:ab17 with SMTP id d2e1a72fcca58-81eb949ef05mr109793b3a.15.1767943287531;
        Thu, 08 Jan 2026 23:21:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHHHO/gTWbofCIbVPKFC0FzAlp9Te+YLm5t90cM0UJujZ0kZxgVI4P5Y2KLOWpErfRjlJU2oQ==
X-Received: by 2002:a05:6a00:ad89:b0:81e:b93a:ab17 with SMTP id d2e1a72fcca58-81eb949ef05mr109775b3a.15.1767943287110;
        Thu, 08 Jan 2026 23:21:27 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bb4c85bfsm9510369b3a.30.2026.01.08.23.21.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 23:21:26 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Fri, 09 Jan 2026 12:51:08 +0530
Subject: [PATCH 3/5] PCI: qcom: Keep PERST# GPIO state as-is during probe
MIME-Version: 1.0
Message-Id: <20260109-link_retain-v1-3-7e6782230f4b@oss.qualcomm.com>
References: <20260109-link_retain-v1-0-7e6782230f4b@oss.qualcomm.com>
In-Reply-To: <20260109-link_retain-v1-0-7e6782230f4b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767943270; l=1606;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=Q8+lBQYa1gwtIcmp/3kuabaN+M+86SlNF+xR/NMG0uk=;
 b=7YI5V7nEUujpXnOmp3l/fb1YAPFx6zBRbuPbaO3yNRw0oukGrQ0a1Ora1XFfVbDewrYHatld6
 n+neRReQcqNAII0gT6zmA6BhgsYMZkhIeu6GLIB2gaqU+psBqT8DuE6
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA1MCBTYWx0ZWRfX+IQ4OjF/86sj
 9qJaXvXVKvvyomLFzCiguxKbM5mXrR1Tpjj399xMrrYQM/XZ4QVUJVuPoL0lUa7dTlk8/roPpy5
 YI6pQZUxoSHNEjeTbsMG0YljNYRHu1ryIq5BcAHsqdTRlN68UGWU9MUulDaprGQi2B4rtR9TRIz
 tdkoNAj07k33vzc0q/cVMe5IyDdd3R8XWbT4zmHyTUAdY4ESG5mTdY1ndlwfLgyezs0R2U0kzf+
 6bQaGl65K6G7u7ymUZvcU2VoI1wU1OwZr3rw2QXCz10oKwZKmss8lZql+yunE0BFFi3fM1RJ2ca
 OL8hHlnCSTV2TBs89JOIue8HduaKhZJCM3S1zL7SJqki08ksevQI9ik7YBtINjxpecqgOCXVnsX
 7h3Sycxs7ZXmiraRp0+SnRgdklfIbdA71ypAbfmvvR104rE4SOaY9Z+9jmixIqUSgceYq9Cog8R
 j+2aPv5lQxpf+HfhqMw==
X-Proofpoint-GUID: e5uc7ak5Olwe1KUJ5rDFI1gbnQF3_Lty
X-Proofpoint-ORIG-GUID: e5uc7ak5Olwe1KUJ5rDFI1gbnQF3_Lty
X-Authority-Analysis: v=2.4 cv=Xtf3+FF9 c=1 sm=1 tr=0 ts=6960ac78 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Py5lcOcq67Lbq8UMOfUA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_02,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0
 malwarescore=0 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601090050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_232130_334413_EBFD4E40 
X-CRM114-Status: GOOD (  13.73  )
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

The PERST# signal is used to reset PCIe devices. Currently, the driver
requests the GPIO with GPIOD_OUT_HIGH, which forces the line high
during probe. This can unintentionally assert reset early, breaking
link retention or causing unexpected device behavior.

Change the request to use GPIOD_ASIS so the driver preserves the
existing state configured by the bootloader or firmware. This allows
platforms that manage PERST# externally to maintain proper reset
sequencing.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 7b92e7a1c0d9364a9cefe1450818f9cbfc7fd3ac..9342f9c75f1c3017b55614069a7aa821a6fb8da7 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1711,7 +1711,7 @@ static int qcom_pcie_parse_port(struct qcom_pcie *pcie, struct device_node *node
 	int ret;
 
 	reset = devm_fwnode_gpiod_get(dev, of_fwnode_handle(node),
-				      "reset", GPIOD_OUT_HIGH, "PERST#");
+				      "reset", GPIOD_ASIS, "PERST#");
 	if (IS_ERR(reset))
 		return PTR_ERR(reset);
 
@@ -1772,7 +1772,7 @@ static int qcom_pcie_parse_legacy_binding(struct qcom_pcie *pcie)
 	if (IS_ERR(phy))
 		return PTR_ERR(phy);
 
-	reset = devm_gpiod_get_optional(dev, "perst", GPIOD_OUT_HIGH);
+	reset = devm_gpiod_get_optional(dev, "perst", GPIOD_ASIS);
 	if (IS_ERR(reset))
 		return PTR_ERR(reset);
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
