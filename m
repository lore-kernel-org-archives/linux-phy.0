Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87E7CCA0EE4
	for <linux-phy@archiver.kernel.org>; Tue, 26 Aug 2025 05:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yO2WjJgoKLvGZrFngsRH2pX76vpOIbyDy90iIZEbj7Y=; b=xp0fTD0Tc2YTrj
	BMNr5glrxsKfBgPGb76jKkzmgd/Abm1dqsIj496WoxvgYdoN/BpV9rUvYclX/9MNc6Ukp+jSb8ArZ
	Kev0qpkOAltzuw9x3pCzGZ/foxgMYOp+2C3mI+PwLTxu9m/G0AxY29SmlTsgOd28GOhNA8OQ6qEuy
	AHRVFOePAdq4U9oPKp5Fy8B1R8wzGSBN7ijVQBbeW5J9qPX5LS7E8AT2fpNU4xzbu6Px8dBndkgmI
	P9dIZdBY05pbqAeKyfoFKpKgAnCd8dvqgvchXvOi6861y/B4eN4Xx8dgKOc5wyxV2V+HypNgGXkJw
	XBGvt8g6falJGyrqbl2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqm4s-0000000AZlw-0zwp;
	Tue, 26 Aug 2025 05:18:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqm4o-0000000AZlY-2yaa
	for linux-phy@lists.infradead.org;
	Tue, 26 Aug 2025 05:18:36 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57PMiQG8018228
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 05:18:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=2vsPhyKBqG+IBewEtmHLJo
	hfftWb+4Dg3ZClfwqwBQM=; b=AH2uWj3AsUXqsfQ9CHE3rUMsJRLP6TjvIt5RW5
	7gJxkvCYE8uNT5h6V4K+VAen4WClM4AcRMf4qlHI4DV9FEfBji66EpcuTyNPQtKn
	yMrrKbWItE5QSrrkZm1y7GwnQz3oBDjN+0D6mh3XYTnvVE9pxPoMA/wqugwrf3IV
	vbJTNp5c3Da2VQzyXaxA9Fb8/sOwmmBCoqqd/u3ikMBfV9CMOurqWSoJN6v0VQqw
	jjnyed6mhXC2ZimLNKcTkQj4BHdgBn+P5I9oS6ERPYEUXM9V/n2/koFs6q7YGg1Y
	o3wRNklyQAxWoS3lH7Zh0U5kwn3QroqCpYJUEX9Yez66KixQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5y5fbx8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 05:18:32 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2461907278dso48975405ad.3
        for <linux-phy@lists.infradead.org>; Mon, 25 Aug 2025 22:18:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756185511; x=1756790311;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2vsPhyKBqG+IBewEtmHLJohfftWb+4Dg3ZClfwqwBQM=;
        b=GnC2wpeKAan72rGjF+g5/FvDKLyG98AgxDLz2+00qcrNxaI1u6hYwfVrP4iNNBFa96
         Aa3tnskhtdsNRkKn2gtbyAKCk2JS6godtEJwiTBjO2WD0IEkVlQkFd5567tEyFm0f3bO
         pRIatVxDBIxU4KymG/fWIyQ4AuT1Qo341QsWL1O3KepB5BWrtHn46B0svBuTcIODK//g
         u1s42EPIAEMwlYo44wW6WFwsfXyPpo17jyHTMGP0hj9fhS/ol59ZxFkNH3+b+YAsTmgn
         3CaAjJEQH/cLlDe/SNTFroD+t1KkObXdQmMny1pqvX0u50rzSe4yoLkfEuHFMe3YCKcA
         FKmA==
X-Forwarded-Encrypted: i=1; AJvYcCVmLqeUFXYjHRS4w8/fWJ7mP224GXHg+oedgyKiVF1ZO8LUJhd9lTbN28cRCLAWE9sa3hPNtOrkcnk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw19t9s0CokKed33Adw1RQKGXG048Ggv3hvCQjemItDibl4Ql/t
	Lz/lXfoXNFXLxCkKvHZ8NktKBmqC2RxLzMDN+I3tQUOHYISq53T1cob55loxLAoDaW8CbsXPJ49
	izsz2Yay9USmyp8ou7UA7prZUmlZDuRuUUy1VjEE7ITGwk7h7CHFps0Qel7q+Lvj2DzUo
X-Gm-Gg: ASbGncub3yGTH/MKDXqBccoSLvWVordL3TOwdQCzdVdT6kYBzc1HTb4IgwtMRGAElZ7
	RD02U5YCzSX7Ks/gJ6maOGjpoxEEQigQ1Z8OD8jm0S0DhW+Xd892sXjwGEYRslcJCiI32qoW9WB
	YnlLLmEMJHEirnl69HnKV2TIOPuwXWOVMA677NqbuZjrvnzZhMq8genJs9CuB4peL9FvYgiSE7F
	yXJAn833WpgIn4F/9PtOcA9/l4OIaCZHGGymuRbovMcDwNpX+Rd/XRthOgO0FjcEy4lsjD4L5iQ
	SYHvz/QfANJt3fWLhY8AFbkuadrr5LycqzKWIl+ZngmdiI0LH68KZ24nO/FfbwS26unjX2G+Nx0
	=
X-Received: by 2002:a17:902:db0c:b0:242:a0b0:3c1f with SMTP id d9443c01a7336-2462ee0b27dmr189012705ad.7.1756185511506;
        Mon, 25 Aug 2025 22:18:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGh6SmRROLIr6PMOz1PXF4cr/CmjrIyVmNC6hvrLBZh8ZNDcT48YrclMSup6MtV2RwVhMvgVw==
X-Received: by 2002:a17:902:db0c:b0:242:a0b0:3c1f with SMTP id d9443c01a7336-2462ee0b27dmr189012375ad.7.1756185511073;
        Mon, 25 Aug 2025 22:18:31 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2466889f188sm84348085ad.146.2025.08.25.22.18.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 22:18:30 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH v2 0/3] arm64: dts: qcom: Add PCIe Support for sm8750
Date: Tue, 26 Aug 2025 10:48:16 +0530
Message-Id: <20250826-pakala-v2-0-74f1f60676c6@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJhDrWgC/2XMQQ7CIBCF4as0s5YGiGh15T1MF1OgdmJbKqNE0
 3B3sVs3k/yTl28F9pE8w7laIfpETGEuoXcV2AHnmxfkSoOW2shGnsSCdxxRaINHq5zrsDFQxkv
 0Pb036NqWHoifIX42N6nf949ISkiBXa/sXh0KhJfAXD9eONowTXU50Oacv54v/WGjAAAA
X-Change-ID: 20250809-pakala-25a7c1ddba85
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756185504; l=1290;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=vlIwpMdPLzbszsLDUE4+FJfpWc1+VEt9tIvX90Lc+30=;
 b=0KL+6x8TGQEUpYJvqY3iP7+9EiYO5OHNdo3h8C2d3xI/A7u5IucNW+PqyxEKSkGSKdoxYvNTS
 VfQB9wQxqcECRS59Ps24xjDDVMDDAnOl+9daRomBfOlTaY1dUeBmR0y
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfX7evZyHAkHRBM
 YlnheNVcFhsXsyCWf3PlBZVoFFDtTr6ltVg6RJ9ElZN/XFlmsxT2v3Q3veQbVCHqV1HEAxfJxCv
 y58lPKCkj8XxO041JtSCe9YFGUrhs5//HD4qlX8q4g5jQO5BE4Egm5o9wQ67smpnXLjop5T71E3
 0JkR3BzSlnfpQFk1ltI/C+vGH38gkym7cLNkI4bMEHwW7ImLet85iDGsJg/6lhAdoJGZ7CmE/Lg
 /mLxiiy4w3BtZP64DNncdKkIuFA/hb0qSgSjhCYRI9+5nWNaxSEgSnSo0NCsmNBTFdqv6mQfc5A
 NiRg/gA4wl5xBP934AZEbqXkFUl5ck1txlw/LUGkBccEXaT/FBh/PamJTBTfhnWbqKid7v3YT7L
 Rg/1YfSN
X-Authority-Analysis: v=2.4 cv=Lco86ifi c=1 sm=1 tr=0 ts=68ad43a8 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=qIbWdXD6M1inJYch3NYA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: VCCozLhanWqZKfN5LzYCYWUBoZNh32OP
X-Proofpoint-ORIG-GUID: VCCozLhanWqZKfN5LzYCYWUBoZNh32OP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_01,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 clxscore=1015 malwarescore=0 spamscore=0
 suspectscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_221834_884598_2715C8D1 
X-CRM114-Status: GOOD (  11.98  )
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

Describe PCIe controller and PHY. Also add required system resources like
regulators, clocks, interrupts and registers configuration for PCIe.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
Changes in v2:
- Follow the x1e80100.dtsi pcie node description (Konrad).
- define phy & perst, wake in port node as per latest bindings.
- Add check in the driver to parse only pcie child nodes.
- Added acked by tag(Rob).
- Removed dtbinding and phy driver patches as they got applied.
- Link to v1: https://lore.kernel.org/r/20250809-pakala-v1-0-abf1c416dbaa@oss.qualcomm.com

---
Krishna Chaitanya Chundru (3):
      dt-bindings: PCI: qcom,pcie-sm8550: Add SM8750 compatible
      arm64: dts: qcom: sm8750: Add PCIe PHY and controller node
      PCI: qcom: Restrict port parsing only to pci child nodes

 .../devicetree/bindings/pci/qcom,pcie-sm8550.yaml  |   1 +
 arch/arm64/boot/dts/qcom/sm8750.dtsi               | 180 ++++++++++++++++++++-
 drivers/pci/controller/dwc/pcie-qcom.c             |   2 +
 3 files changed, 182 insertions(+), 1 deletion(-)
---
base-commit: b6add54ba61890450fa54fd9327d10fdfd653439
change-id: 20250809-pakala-25a7c1ddba85

Best regards,
-- 
Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
