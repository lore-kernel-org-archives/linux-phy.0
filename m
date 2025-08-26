Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5D0ACA0EFA
	for <linux-phy@archiver.kernel.org>; Tue, 26 Aug 2025 05:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=asfR/hlhtBvywyEhb4hfAGxJgglDF/xVWfpIrCIQ/eE=; b=D1MF3jMjtKh5XM
	TOh8c3SmI2Ky1VF7avGGZnD2hjYeO0GvG4U7pf4hKszptHTszmkOgfeG0Wh6KQXsefY7HdytZlUI6
	Vc3gVZlFOP6eq2NvdpNGqK6/zwDGbVgiiE7cmD2L8LJ90f94ZuuccEGktyy6sNzouxWiS4DhJEaOt
	rq7ZVWB+Tngsob6QReV1Cig/hNghcrBh8ndgPrNvJmK/9Lcwz/6oOxJhfpuNDWYOZPhWU0zbmhKaL
	/KI/A24viOqbdZT3xVh5nQlXWMNUPBrFHSkcXgn9Vca3PIY2P7DgDjtF0E4c5J03TIvJzkptOhzwZ
	ALDHYl+apmBnG5H4ZduA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqm4w-0000000AZnF-27LQ;
	Tue, 26 Aug 2025 05:18:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqm4u-0000000AZmC-0AhF
	for linux-phy@lists.infradead.org;
	Tue, 26 Aug 2025 05:18:41 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57Q3xVZW005706
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 05:18:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Kofxhc8N7wzIQRIEJ2kzWHMlZjkxlt2XuX/b69ntAxg=; b=FMQ8bmrpH0Fb9uiJ
	W05bJiRqeYmofneSgc7YqnPmNUBXq7ONs72v07tgYj6LHYSuPkkleWGFAyH40+1e
	GjCCMg24nRNlhhw2mKtY9IxXpxRI3etSIonz0s4u5v+oUw5cSUrk9+l1N2h5lJG5
	C1Ucj90fXZv86+4HqwPUvY1CXxx+ro3TAASxP5irLWFnqM4jdYoh5Sv8LB97KTnA
	eruF0ssK0AeWkNEZ+xTnQaEjnvoeqnMgmfroWrmjJdPkBpK1yNkhvytiN888MwpB
	jiOYYXFkKsBEF+Bgn0HLQ6d8YzPkGc/WNhWbRnoYI1alFuL6XqyRmso106+3a9K6
	rGS5RA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48rtpesuyp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 05:18:39 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-24636484391so41020885ad.3
        for <linux-phy@lists.infradead.org>; Mon, 25 Aug 2025 22:18:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756185518; x=1756790318;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kofxhc8N7wzIQRIEJ2kzWHMlZjkxlt2XuX/b69ntAxg=;
        b=Eq5aVvMmv0eHpUQNPuhtuJHfEZdpz2m+EG+V7dcW7PCPp7H4bJc4jDrb1CPTCss/6X
         tpLTTn28504C9yTlW9gNbXJezRx+ySRk7TTGNWhsAsNxd5rXweGJek5LNwZ5UnZu8YFP
         LXSEbQmL31/fOC0uLB2p3mbRB8H8fa2sfJDJGnlSRnegAa3Ofn10+1bERlSi09H90j7n
         46uLZUn0feng1gyNiTUVx9JvQZoVh0fwXHpmALDWFOPCRcfss1I57NIlb0wQO22uIi+C
         PmiqpKoFV9GFfvnj+pMwkoCOVeshIQ8W5gi8sNlheNJmLT5YPYR+dLyDomxUCZQh6dyH
         FVDg==
X-Forwarded-Encrypted: i=1; AJvYcCW11nBySIt+hmxYT0VMeGrBlL3bHcqB3dNtpeO3JcRdiQlcsjETc2BkDkCkJZEO83EnimsfcWbBHhY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz3BdfbGgPRG6QDripersVEpa27qzbOMxj2629YHjIDiRT1wy/K
	LwmBSw/c2+/AkutHJVvmv98dKrzEhmxT1zEP3/KRnqdpRGNwlYMpfBvPfaoUg+eA7F+0m89Ql3M
	KsEtIgJXOYYYC5oAzUS4sZVxyF3bDDl9kODWpDLSpu2e3w1R7K3N5+XrYXYbSjmNnbogu
X-Gm-Gg: ASbGncvRAZZx6jths8hw8EJIrLVx6qeFClgueXYHJLTni+pLvqXBscWisCT7Zv5CJel
	noFTTwh4NzhG7vCrTReDqfmPvBHbrlOCjBgJojrDxayOi0p6VpUbwrn7V3zBodwXThmtXobZLT4
	i+20uQ3OH7/xkoPCvSnqdVP6V+nJ6bdFX+0swNNCjPgAEIArfDL8jfdjksOolOGKbyvx0EzVjBR
	sTj1+IfrRlOKeDP+IYz4jUVebBsNJYHQbBZJNrz7lbtp4DhiJJZx6dWFHOZj9UTX5T1h3Klxy9i
	+REKOeYM66tY/qnIAkptkGUUj/He8xN50oSbir3wPsaHzDcVN/YzeQyYTxfp0nKyMNRjLFdkxw8
	=
X-Received: by 2002:a17:902:ce01:b0:246:620:a0b7 with SMTP id d9443c01a7336-2462efca36fmr198911565ad.59.1756185517806;
        Mon, 25 Aug 2025 22:18:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF6jaIv7DtGJPobKQ+27XcXwD3MZpcVOJ/10YwK1S+M2DJVkeRw1bb4S2/CrZ/WaSRWL2lVxg==
X-Received: by 2002:a17:902:ce01:b0:246:620:a0b7 with SMTP id d9443c01a7336-2462efca36fmr198911185ad.59.1756185517321;
        Mon, 25 Aug 2025 22:18:37 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2466889f188sm84348085ad.146.2025.08.25.22.18.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 22:18:36 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Tue, 26 Aug 2025 10:48:17 +0530
Subject: [PATCH v2 1/3] dt-bindings: PCI: qcom,pcie-sm8550: Add SM8750
 compatible
MIME-Version: 1.0
Message-Id: <20250826-pakala-v2-1-74f1f60676c6@oss.qualcomm.com>
References: <20250826-pakala-v2-0-74f1f60676c6@oss.qualcomm.com>
In-Reply-To: <20250826-pakala-v2-0-74f1f60676c6@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756185504; l=941;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=jBBl6A3Sxsg2d6MaEgBHO65kZTpSDglRvHQ0xA/RmfI=;
 b=NFH0HQvjBdon/4JFbP282Z0YCzHarUAwH2ON+nxifoqe6QlU5ydUhTiLI6wIU+BXaxC1p6m0s
 tKeTnzhnnbqDC3D8RmJ+jPdXWdfmKH5G1e+8nFD6BczmP2nIBmyk2O2
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: wzTmGBlS4qjbDJQik99F9KN99pMal3YM
X-Proofpoint-ORIG-GUID: wzTmGBlS4qjbDJQik99F9KN99pMal3YM
X-Authority-Analysis: v=2.4 cv=Hd8UTjE8 c=1 sm=1 tr=0 ts=68ad43af cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=ly1VyIkaSgMpB_u5KqwA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI1MDE0MiBTYWx0ZWRfXwIlsyglfrMgT
 zzgd52iEebAGUlEGRg7cdKoFRTyzNBlJaC6RmWPNxbg3xJkCCNd2jGv9XLxqkbKvPZJUUa3A/m9
 5+qZ3MaAtizEFIgGKIj//sx9xBfLsh9XmgPuWSNp46/g+DhJxjYcfxs+0w5NQDG9I4FCG8V7vFH
 5E5pew9CrPAwCS//ydQcTjkFRdeeLA9mv0cYOci1T4SjTVJ1Yy/V+hmga0lFzGnaAwvxXxppx7w
 OWotlNgZZbRP+K2iTcS7111N+JorD8Ts5WOPZNMAmXs+GAxD6Q8j7v5Ye7H4G5jcwe+JGtPXn5k
 B2a3roQbVZWAuIo7raR8ZQZNSGPR21R284qBH13GuD3682sHijTL46AG9YmND7CSKRrrz89/7Bs
 xtQnPA4f
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_01,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508250142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_221840_206548_F9F3570F 
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

On the Qualcomm SM8750 platform the PCIe host is compatible with the
DWC controller present on the SM8550 platorm.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
index dbce671ba011c8991842af6d6c761ec081be24cb..38b561e23c1fda677ce2d4257e1084a384648835 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
@@ -22,6 +22,7 @@ properties:
           - enum:
               - qcom,sar2130p-pcie
               - qcom,pcie-sm8650
+              - qcom,pcie-sm8750
           - const: qcom,pcie-sm8550
 
   reg:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
