Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08E49CD5BAC
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 14:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5rl6uqWjPkhk9Qfw9813Z9RsPCZxFzIaA+3qloVxfzI=; b=38T//DYp/DY2zM
	+Mj9SH6km5VdooqibATfA+I2Z7NtjJXMxYJezujpdshujauCCqCBkI7H1yK8Y0/IYLIBN1y3MQuIg
	kG4++ZxJl+2k8kzGVvjFNEewxXaVIJ6ishdb6n6ayZXB9eVL+cM805jE/8TFgxxtEuOVQuhdibACC
	N2P6xqc4/2SGWOkgYU6x/YIWwGYJaMbJBRpXnEkOMLmkThtk3++II0HPWoZ71TFOXoL8UILlNJSf8
	kN7hXoJhGfsnh/OzH2HXScCVDRsnmNwrJC9m5CBx0c//LKPSQ18PHB86Yoj+MCUFcD8HAKxMlwo7F
	F9UnfpvHZBjQikcKBAZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ429-00000007zNo-1lqk;
	Thu, 21 May 2026 14:05:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ426-00000007zMs-2qT4
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 14:05:55 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64LAXrcF818829
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 14:05:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iCoeHjjloUdX9dKsGMDAd4b+0Fil4rvCP2G2OTCb8a8=; b=LDh0IMi4lk7LWaSo
	/weudAX4lJnOKHPz/8o0qR3qlioo6g4MJN7xrNQMo2lTs0RoZrlSHF+9vaQYA9Ko
	oauuPHl1WqIqKzghurBLZAMtcPis8wzXsf6rZfS6MvkSjwBYSRqbXiJcUuRU+t5p
	+QTkvNQ5IQ3EXntbPVkJiwe5G9fDIj+j1TyUo3rwan24Je0cYiuYe7emJ9dnv3YU
	/IRwqVWLEmuM4QVYUPOeu6Tv2aYU837len/zn6ZigrONb3RldLVoBxx82PyCUHn/
	5FeRhOL3JcSdQSvOVS5ZgsZ20VQ9H2bvgWsBQPWfR009FB9qXZ+nX+mUCJ6GsxHX
	VUVX6w==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ea0dkgsgs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 14:05:54 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2b7aba0af02so58462525ad.2
        for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 07:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779372354; x=1779977154; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iCoeHjjloUdX9dKsGMDAd4b+0Fil4rvCP2G2OTCb8a8=;
        b=EtnMINjxGcIz2ULMQE1MQxTUgxYzZV8DmMYkeDZM1yEO3rSwhPVG4t/KEwj91SBaD+
         EUcyAl+WArmEzl0SfTI0jQs/bpQBpKiItVgxlJVCg0pmhsquKdShQLGFMgzx/EXPIcSR
         wSCzkuvnwSK3isjxVoxGrA43nZ8+rxgYRYdzrwG7TG7TS+ms7yAezeANhXbBdLY8hx+9
         swRPd8TN6NC4VGjMMpobJ+rgEUcpTzRSa9DfPaJPv2H9VnWU9k92JUOCMgzTUjbmIyQZ
         Eyif5pvKNLKjcD41p52gKs7MPY1wxSJ4RPz/PaZYeln4eHQOIukUL9WXjct3/0LVTdjX
         7Ggw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779372354; x=1779977154;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iCoeHjjloUdX9dKsGMDAd4b+0Fil4rvCP2G2OTCb8a8=;
        b=MOCQq4Go6R5I84v7TFd0eoHvO+3IsA2hCLcywvGVOCgTJyTnuF7lHn0+NH6jUGayBZ
         wOuvGjXU/vP0XZ8tiH2ewZ2u82W8glbzL/WThU7uTVMP5450VXFgt0zmvu+lEc4tV4OW
         RYmWBaEJQqxT1+fOgixm/LdnGK/YI53tRow/H7KOXbJLBXRDJdKCjIfNmrW8feOVYKoi
         rbLX2UiMihTsOzI92x/4UI3UpckLAAb3cCMGoADIu0PuYr0WdHgI6EJHS1wUW+bTbUpt
         dxYde7OAxyTg4aoswU7e+RKYxNZbJnRd95WLcxsa4zsKrheP4Tbsfocc/uqsNhr/SUcL
         g/YA==
X-Forwarded-Encrypted: i=1; AFNElJ8Qe1XTXrP9cAuFzfh6AjukyCIPXt43cBcwmiMZA/tX5krqHPKpbkRLfT9TBDCCF3DtxwX5/zvI+1I=@lists.infradead.org
X-Gm-Message-State: AOJu0YyitAAWUhjxdEtw6KjYYPq3EaOf5vsJGirBqR6vUbJufLpzNK78
	/DUCUlazX3Gct8H9Axal9jrDk552n2eBGEGXfnDC2GrqPNTKjJXD8QV2x1Z8u5d/I2hdaezTxLi
	LU/43PSSk8D0iSaH8rLyV0+o+otesgJu1aFFtCJ6TkYO8CY+Z+w43W96QwVMPiQIcxL7/
X-Gm-Gg: Acq92OGg/dxechFJN25/J8pyb06nvFpUCpioxSDwgkJXZYAV9fqPBSy4nq/by8jmPFr
	7g8Mirydty9WkeStqR5PEF+YaudsS2I4WTj1A2fgVRyoUphm17xtoAmYMuCa4D/MmRV9z1pmTGE
	w3VtWa+LzKtpY+daoM7TiMdZZEfIWOVoLBgE+1ce7+bthL9klFIsd6jIazP6H56w6dTjGKbaWPH
	KmCVEOs+FZLML3I/hyz/JAOHFIwbFnPG/I7o+YsAMnX/B4xHBILSWh4m1Tjh14JuD8I+o8Hra0K
	eg95eGL8B7n0XjLpAfEYqr4jH7zHLvDE3QDA1TxFD+24oKuOX3qfKfcIJyhEekY6xRleWgSk1ak
	oB6lExm4ajVDZu9k7Nq81QskDasuGvMxV7oiqWAX5dSuOn4fH6IA2IigX
X-Received: by 2002:a17:902:c94f:b0:2b0:608d:d8a8 with SMTP id d9443c01a7336-2bea2fd00b5mr31297275ad.1.1779372353174;
        Thu, 21 May 2026 07:05:53 -0700 (PDT)
X-Received: by 2002:a17:902:c94f:b0:2b0:608d:d8a8 with SMTP id d9443c01a7336-2bea2fd00b5mr31296625ad.1.1779372352669;
        Thu, 21 May 2026 07:05:52 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bea9287997sm13189765ad.24.2026.05.21.07.05.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2026 07:05:52 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Thu, 21 May 2026 19:35:31 +0530
Subject: [PATCH 3/4] PCI: qcom: Add Support for Eliza
MIME-Version: 1.0
Message-Id: <20260521-eliza-v1-3-97cdbe88389d@oss.qualcomm.com>
References: <20260521-eliza-v1-0-97cdbe88389d@oss.qualcomm.com>
In-Reply-To: <20260521-eliza-v1-0-97cdbe88389d@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779372332; l=1041;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=sRGh7S6MyKVrh0BInxsk81hA/AV0Bj4E4laY11Hu75c=;
 b=oOQiaTe3ZLkTlXdBjVUDD7f9dAV3Tv1of9VZx8/bw9AkHjzEgDPHhutpwKZncdvD99BH+M7QO
 7rLOozMHs9ODH50YlvOuz0y+k6tF4w1cwb0nlnacdWf9kTJsLW5QfMR
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIxMDE0MSBTYWx0ZWRfXxo/VovUg4WYS
 +l0P/TwJmxFULWwo/CGUGvRSJXZUMMK2WYxfwuk29PW7hrqb72QslrftVMkH0CTZMVjBfPvbU7t
 zudNwG8JJ9u++L5VF5Z4qcDuxCwZUojXv97np86jhUXbDN+ywBZ7bS/QhXGXhFmJ50rmlt7gQhJ
 6h9tJZo90hRwoyH4w/Xay36u4US1RSxsW8KvaW3jo3lx48pDMlOPFFB7gfyxkePvqewCP6DrF2q
 jGJ4JU1BH7aW+348mvOtW6X0JFGf4z7kV/Qf9IiLQ5wqEYOhf8H3cLvrY0pwJloM23g2ISMiX6n
 dfM2XGJ9MfCImIkJ0DrE+6+ICw3DQlB//IRQEjN1UlE9GOwvzu8zsPpW9rbnoMLlc7fzucA3v40
 cmfxZVzFWD6p9OhDDclNmWuR8q4H+vZ3EAX9bUEfULv0PC3c0c/fOPtHg8OgLxKoakKjrcbig/3
 Jc3MY6WU67itA1lnC9w==
X-Authority-Analysis: v=2.4 cv=aueCzyZV c=1 sm=1 tr=0 ts=6a0f1142 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=Py5lcOcq67Lbq8UMOfUA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: lu08GqmNRhfBXQGiqmHEQN_qJzfjLnQQ
X-Proofpoint-ORIG-GUID: lu08GqmNRhfBXQGiqmHEQN_qJzfjLnQQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-21_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0 malwarescore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605130000
 definitions=main-2605210141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_070554_724201_7BACFD38 
X-CRM114-Status: GOOD (  11.80  )
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

Add support for Eliza soc, which has two PCIe controllers capable
of 8GT/s X1 and 8GT/s X2, using the cfg_1_9_0 configuration.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index af6bf5cce65b..40f0a5f247eb 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -2123,6 +2123,7 @@ static int qcom_pcie_resume_noirq(struct device *dev)
 static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-apq8064", .data = &cfg_2_1_0 },
 	{ .compatible = "qcom,pcie-apq8084", .data = &cfg_1_0_0 },
+	{ .compatible = "qcom,pcie-eliza", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-ipq4019", .data = &cfg_2_4_0 },
 	{ .compatible = "qcom,pcie-ipq5018", .data = &cfg_2_9_0 },
 	{ .compatible = "qcom,pcie-ipq6018", .data = &cfg_2_9_0 },

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
