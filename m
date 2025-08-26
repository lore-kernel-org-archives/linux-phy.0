Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4E95CA0FF6
	for <linux-phy@archiver.kernel.org>; Tue, 26 Aug 2025 11:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NXLKPVhxABR2iq1nrbyxMnbByUtMkZ9uYiRsuYaGmRY=; b=FhKmZcrwS9T8bR
	GInfQWL1tANIS3k9P4t24BDDVmlfE3g/JXSQc3ZsEMxwJTKzEkGvlQJiiuoy6fbV/WpsaZlRS8oJA
	2BA67aNUhyfgoPWBQsOIglPtngq3Y2Ob5Fs+ttvFkLKj6Uig09cHYP7gr2g2LjYY7adbx64sG4QMI
	1I117TH2mq7Wb1GWdJgL7HPSTfhsusZGfdDvUV42qrUMMnPlFZPGGkKWzC78jjzPRe0IVpvsWMopO
	s070nRB8S60X59wPIJACOikgF9xw0Fx5AzmHhApkg1UiD5LmBpecU5BsfWxFXoqX+sEN3RWnsfsbn
	4PreZ+Z9RwugEwLukEfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqs78-0000000Bpvo-1roZ;
	Tue, 26 Aug 2025 11:45:22 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqrSQ-0000000Bi3Y-2OKe
	for linux-phy@lists.infradead.org;
	Tue, 26 Aug 2025 11:03:19 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57Q8kj1H000432
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 11:03:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+DPSOTrO4cYwZj0R18ru4Kcr+olXie/WQj6w6L3l2ss=; b=jahjgjn/kxh6JZTo
	n78k0lULURc8IHG/Robbj7CS9D6Ss9qepDv0yicP4w9Q1ahpv9UlZNb54wuGrtqu
	QUd0dBqXPJvHfP5MZTWZZIh6yisFRFZKXoSKQ153mLYOdPNHaM4Kfn0IMDZuOe9t
	idCvDWytRnisTRH+IhQJMG8a3IgYDmMvA9CbpCItsGw6vrtdAKsGUer210NkF/IF
	5sDZQxyL+tyN4Vu6k5OyBOeKBLER5C6KsbqO1zdA6vQeuygF9g2LZ2rfroTY/iAg
	j5SRGZIt/Q990yNdOHnxW1G+lWjEtGConyEJbv/r/WKjt0lect2qmm2rcA239SQ8
	bBFItw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5xfgg9w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 11:03:17 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-244582bc5e4so68277465ad.2
        for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 04:03:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756206196; x=1756810996;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+DPSOTrO4cYwZj0R18ru4Kcr+olXie/WQj6w6L3l2ss=;
        b=ZTWFycNKuZ/e4IiiElG0Mjr+0njRTuNsN31mawWqSgYBMasDnJSIjgfvEmYlF88Ohq
         vvKbwNY/bz1dyI7GUtSP6g4lEc9JHM6y59EseL2JbNB+IxZ3iGC3kCqkaqCYiGaGhlDn
         JBLRNQn/tPNcxSv58F6y/aljfS4tZBTrhQn76vz836BCzIxpOqIratSqmTeQJGgiWRhc
         f7+Ou7tfrQwGxcwR1PzG6yrf7By643UMC+DqmTvIvdUDZxprTj59sYJgdTSUozfHtYor
         Px4LbboXucoakg9Q9kiBN9C24tcWaeBGAgCG7ClOfviALB9gKe0DzWPBd4ZmFn1UUl09
         omRw==
X-Forwarded-Encrypted: i=1; AJvYcCWSjKFRnFXfObejAJjwQMlEviDnHheppUsvC6hGbAPZZG0dtGvTqtDZSAI7pPAUijlOJLq3SvLeY74=@lists.infradead.org
X-Gm-Message-State: AOJu0YzWxYqTlIToIMUh64sgo+9XYBZdNM29qFyk4G9I23kSKspbJUGS
	FowpL01fxhHncThZYcu9bOWSjwaQjY5bekahV7zVyDxVJ7vtcAvmDbPhOMkccS6qUOGG0D6/TUy
	rClEoA79ObbGfYHoTgZqN5IoaNexyffk7ZjjKg/HrVLJmk7mOsHQYN3yCI6C2FIU+QlS1
X-Gm-Gg: ASbGncvVfrzDkg+QdOrOoapjoCPIckZV/RLcoe086ZL+SkWtLeLCegvGljTguyvbJkC
	g2Y887TOpkoBItIxRsgrX6ENNLCqvcjQr1yjXN3tTrUX8EJKsbrd1BXbfu0xisdoMT5BsKDkPNy
	8a5/dSvlTOqAVWngwajGk7m2ZoBHvb9Zzeq63YsN5C5E/KV1igdleJqMTa8STyBnFkre4QQcOxf
	V2wqOW/UIYf2h40eSz+vdGgzsQmk7kQugOIYnP6BE9TpYhw9YNxCYyweNV/l1Er305EgPh6WgQq
	DSAEfZGat4Ll12iMwARdF/x4rnrgh4R0YcgQvgcF18sOVRb9+qsz0+4y/melRvdymFI6jUJFCXc
	=
X-Received: by 2002:a17:902:cec2:b0:246:61e:b564 with SMTP id d9443c01a7336-2462f1d82c4mr184212105ad.61.1756206196133;
        Tue, 26 Aug 2025 04:03:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFb/AZx3XW6vrNMBVNQNlwghugBEj5Jl+a3IPk5UUCn6++1jKG/5K7QzZFQ/5XN3S+gDRMYRg==
X-Received: by 2002:a17:902:cec2:b0:246:61e:b564 with SMTP id d9443c01a7336-2462f1d82c4mr184211365ad.61.1756206195528;
        Tue, 26 Aug 2025 04:03:15 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-246688a5e5esm93207955ad.161.2025.08.26.04.03.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 04:03:15 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Tue, 26 Aug 2025 16:32:55 +0530
Subject: [PATCH v3 3/3] PCI: qcom: Restrict port parsing only to pci child
 nodes
MIME-Version: 1.0
Message-Id: <20250826-pakala-v3-3-721627bd5bb0@oss.qualcomm.com>
References: <20250826-pakala-v3-0-721627bd5bb0@oss.qualcomm.com>
In-Reply-To: <20250826-pakala-v3-0-721627bd5bb0@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756206175; l=1564;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=wjx9GMHTJv+sVXCnnpOXOAGgSyeX0KAgl8FPgsVCss8=;
 b=C0xBQUzGHEvIUVnt+TDkqiJDzJlJ3dBZwRdN3YqQCt7Cp8x8kuf2+DS17yh6DcNQNE0FJYI5o
 XBtet90TSDPCSMC2G8ETJoAda/ei6+0M0XJb054TozCWTN7TI3xe++D
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfXytScoP7y+fLD
 gr7JaSkqwi8zMQ1l9LgnsPaJ8PpMrQkb8kK6KgAtd/XSvOGv0EemCCXMcZA2XBuo+A35HghJaym
 fgbCsSQe3CT4vNzVaOCcpTn230t54lHkl6ITvn0drt6PPyFiS7r9k6IpHrizE0gxVCmsQXMxu5l
 aWSGLSTfu7lC+J5TpphR8xbQ9GFu5a31VgN7VPM11/wpltuY/vy4szLusBalMeU4QQBUKaP/Vuo
 WdL9paC8hw4g54Lmf8TooFKIFbwtirf5KuYDxn6a6xSHHvaldKABVvx6rFByrthGXfUqvC1ftha
 L1XBgys/98wtTdxcDfD7HzG7c0k2lGs8/OE5XR+T69QrGIpY/ILFd4DT0QMlZVod0r2Wdp52Gw8
 WPTQd/8F
X-Proofpoint-GUID: qaWS9gAeUgIDcpzFWaJENFQ_W02wz3tE
X-Authority-Analysis: v=2.4 cv=MutS63ae c=1 sm=1 tr=0 ts=68ad9475 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=Py5lcOcq67Lbq8UMOfUA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: qaWS9gAeUgIDcpzFWaJENFQ_W02wz3tE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_02,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 adultscore=0 spamscore=0 malwarescore=0
 suspectscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_040318_738700_0048F9DD 
X-CRM114-Status: GOOD (  14.29  )
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

The qcom_pcie_parse_ports() function currently iterates over all available
child nodes of the PCIe controller's device tree node. This includes
unrelated nodes such as OPP (Operating Performance Points) nodes, which do
not contain the expected 'reset' and 'phy' properties. As a result, parsing
fails and the driver falls back to the legacy method of parsing the
controller node directly. However, this fallback also fails when properties
are shifted to the root port, leading to probe failure.

Fix this by restricting the parsing logic to only consider child nodes with
device_type = "pci", which is the expected and required property for PCIe
ports as defined in pci-bus-common.yaml.

Fixes: a2fbecdbbb9d ("PCI: qcom: Add support for parsing the new Root Port binding")
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 294babe1816e4d0c2b2343fe22d89af72afcd6cd..fbed7130d7475aafb0d8adf07427c3495921152f 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1740,6 +1740,8 @@ static int qcom_pcie_parse_ports(struct qcom_pcie *pcie)
 	int ret = -ENOENT;
 
 	for_each_available_child_of_node_scoped(dev->of_node, of_port) {
+		if (!of_node_is_type(of_port, "pci"))
+			continue;
 		ret = qcom_pcie_parse_port(pcie, of_port);
 		if (ret)
 			goto err_port_del;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
