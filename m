Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 030BFD232EB
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 07:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k+8ruXhpfaatUEgqFSjLM7IocRw58GapmEcyDtK6BGM=; b=LKyOYSwbiFIj49
	3JL1M2YGFeAJ9LibYDtnwvlJMUvyM6V6QG5/9Jy67e/J5ArNc3KJY2bOEvOU3egamPF8FbpmDn6U6
	W78IsqOdkvgoE4OwugxpJJpBQX4MBnvLNwmgFT9sW0RpZa5UzgOqi9goaLNvQ0p/cbiiOCRaN5kAx
	TTLkyy6rWddaXmjlMaaLr/+HP4sq+wakD4C5xQzsZ2vVCzQlhnWjii2h1XX/xmEoveEQh4EPZInXf
	ARhGo45Or/Djr7QSBsTqAL3S4A/jStyslWwF+8sc35AfFXPzNeU7K6te9oOQ70PMmyX/akVU+C1mD
	kKIjHzMbRRWoVjwgrjSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve6oJ-00000001hFa-30xC;
	Fri, 09 Jan 2026 07:21:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve6oG-00000001hDW-39cQ
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 07:21:26 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6095HHRU408333
	for <linux-phy@lists.infradead.org>; Fri, 9 Jan 2026 07:21:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bATFQdgkSJQNtrjTPNUlAQXLkiJbzJjL5+F3AAAsVSE=; b=oSqF8QgMtNDLGz4+
	XwJrZs+Kv4Kg79Qp9FJMAvFRCHRvU6o8kDFAs3e9TuZAEzaArrSFZXzRVyfSOrOq
	7hYRlhcLNxHO4QZx5EH7zxrKBRxw/zn+GJuhvdCqwuYvrLn71GvnPcGyModHd8VI
	PtVRvg3LWAbBiR3uSUKVEWmIRKy9OMxYnLCkN9Wqi8ieunynauGtpyi4FV/Zw7kC
	WrQ5MeT4F+fsEt6rdxmJYP6lqBuppgYjdlgsR+m6YnkLZOoFW3+8OhWgwtxHz9BY
	yh1pg54w4rKINHc02bMl27pMu/0QznERgFiJFwkzAekMh3spnE4vNBzQqND9XF98
	09B7+g==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjb39uaqf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 07:21:24 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7b895b520a2so3804197b3a.0
        for <linux-phy@lists.infradead.org>; Thu, 08 Jan 2026 23:21:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767943283; x=1768548083; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bATFQdgkSJQNtrjTPNUlAQXLkiJbzJjL5+F3AAAsVSE=;
        b=fCUvVkPR2fxUS6dLWpiiI8hLBYDgzn2jJuH//YG43oN8tgdcPnEGuZe31CdFlg11Zy
         MxDcpzY/nUYcBovohKQi5PDi5cLO7hhenmx7F+Mxvh1VrLajSKIcqHxrqyYaqi/RdsvI
         tE8QVD06t9HwjCu6+upuwFcO4QaqqouULQ4ZdHY7ArG475mTrPnxEFSoKzYeT1dNSv+H
         mfHkXUNpKcBvycK1MLDlWlAEswEgD1WWFMgR3iqsBVebF63mMAiSR3FVqMADTSpxkDyW
         O8kuSXE+WjWw/i5fuFAi9JSNCmmAvY4+pSA9y/EZ3cvtLmX3LBdXSZKr8L5V6zbEbpW1
         7FZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767943283; x=1768548083;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bATFQdgkSJQNtrjTPNUlAQXLkiJbzJjL5+F3AAAsVSE=;
        b=KtBuNvOO4AZqhsMt0a9maHI1n5+wjObaPNTNf/5iveNooViCRqSNLSQZ2NGi27Rr/F
         +XlaPBzbmCKqTSfWa6LVYTlP8ppwqbjvi1ocPn42sO3UqnW4uxXR+tfGQ2ntIo20io67
         BZ5YZDi/22Ioe7jv4q81TB2FRjKci9Xpe/+ifeK+2D6yb6EZrJSsTYtIKSuDD/DhvNt7
         mySi6utrqkSIKyv6G5OU8WC+M7HApeoJ3v0QaRUWWeRwU/AsTgp872izEbEqnZXJvoTp
         4vn9IeCaj3lbZ6L2HLjyV0bW15bpzI/NQjWB2TupdIYZTljxmzmHFPENk0bmC3aIgxaV
         hvnw==
X-Forwarded-Encrypted: i=1; AJvYcCV196khQng24UI1VcJGwm1l71LLBFMh6zH0cCwG2DgJQ2ZP2wbiQ5tufH0/zvzNngdMT6GMEu7OXuQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyrwgbPpeAToTC45W8kuzy5KpUVLNo6IyaFCsngBYgrQb+EEnt9
	gx6uiwTSXnx6qEWF84Db35HGdSwTylOmC3U/679mPqJ8twTMvKChzHkBTG/pDeBm9En1RByC0EM
	YQg7AOEClqUAi1yki/7BGSbmSd72Br5ZKPGpax79dZbjJgUxkt9n+Q6NesjshSuyj9RpOosJywD
	PB
X-Gm-Gg: AY/fxX4yQePmOE72Ng49BGqNxxJYr2e7CCH3bxaeHdMRLqBLv42j/ZJ4FST7+XmEMfJ
	O9nbvUBSAzAKcJRDdVbkLBPheDdJeczowlTm4F7JswRWg44Za5xJM/LKIyH5S5r44lY52X+Y9qq
	fanGMn8hfosV6gdja9t5mn56q3FteCWzECHOpHYg5iBAFkuA7HFG0qSkqB8rzRfzVq/f7ipp48B
	3nUNlB1b5GsMu3Bo4lbpLSSFDiOEvh38T2VVHQcZq705ntEUcVbE38fTs/ayleABhoZnpqk4B3x
	D8w70KA0pn528lIiaJw+E9emULqVvUyR8xnIz8iPEc5XDQwJU7Fzkop9m6mu1MHUPk7r9yuv8Zp
	EAC1vdYht/gAsOoMBseEFeZ3V+lMh2vC7zOSr5XOHnRUK
X-Received: by 2002:a05:6a00:32cf:b0:7fb:e662:5c8 with SMTP id d2e1a72fcca58-81b7f6e3a8cmr8329184b3a.30.1767943283376;
        Thu, 08 Jan 2026 23:21:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFnlV0I7WmCaNsCQSf5sgFNBK7QoW3YQzRGNWGVyGJy0Kc/9qDvIlm+MyH3UrATitJaDgV/Lg==
X-Received: by 2002:a05:6a00:32cf:b0:7fb:e662:5c8 with SMTP id d2e1a72fcca58-81b7f6e3a8cmr8329155b3a.30.1767943282856;
        Thu, 08 Jan 2026 23:21:22 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bb4c85bfsm9510369b3a.30.2026.01.08.23.21.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 23:21:22 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Fri, 09 Jan 2026 12:51:07 +0530
Subject: [PATCH 2/5] PCI: dwc: Add support for retaining link during host
 init
MIME-Version: 1.0
Message-Id: <20260109-link_retain-v1-2-7e6782230f4b@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767943270; l=1912;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=vinmZfaj1r+n5Dx0UgKPAqqqJqXxuE6TZN5VPmabgjo=;
 b=31EkDX2BCydzu3cUHMOBpwb+Vozz0SRCXZY35FhypsrEw2cStV6ElJ16tG5VtEjEcfOtRSzhF
 doiP34NClqoBN8WcG5MNDF8pK50+/PopXJJ4iwhUG+DWtH9V8MgRTna
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: 0PNmHcIStW8hpx7lISXiGJ_ypUz520Be
X-Authority-Analysis: v=2.4 cv=X7Jf6WTe c=1 sm=1 tr=0 ts=6960ac74 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Py5lcOcq67Lbq8UMOfUA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA1MCBTYWx0ZWRfX0otPFFfx6FLA
 4M1WBXE3aIMvDCrEqljQO15DOo+IoDB9qm7/MWSr0pw7GXL0/sZacrl7YpnUEGk7qqtP8jfdzbu
 3UJaUQsxBI7aYdtzlTT1uP9Zhs0M3SR6qG5tRaT6w7WgyyeBKiDuZsW6Y/+7m2ASRkL+/1LY9sO
 povyENroRg9OZoUIWJpxINEeH38uC45ysm3/ugSKOBLkkvssvlAsA3wD6eRkNp9/wsU8VralByu
 JS6ZnrD1ONJ5mHqqVEmpRbnyAZCYa2wC9F6Gk5XigWeBmk1nF/X33fh9IGTiJtYG/8jXihAgNuz
 isUaw4eqoiDvxe/wnqsVYBUOULNwj5MLVTXCXKgrYzc00+u9tZocP2+w3E16P3VrRQmZdCaACl3
 ASqwz7+TFXHhCWVdC+PPT6II5AM/6nGG+i7YKUsxX+qprPd2+oT+0lYFyYGiZefGFs1vyicuqlA
 8nhINVDWazJgI9ONHxQ==
X-Proofpoint-ORIG-GUID: 0PNmHcIStW8hpx7lISXiGJ_ypUz520Be
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_02,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 bulkscore=0 suspectscore=0 phishscore=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601090050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_232124_800275_507DDF84 
X-CRM114-Status: GOOD (  14.80  )
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

Some platforms keep the PCIe link up across bootloader and kernel
handoff. In such cases, reinitializing the root complex is unnecessary
if the DWC glue drivers wants to retain the PCIe link.

Introduce a link_retain flag in struct dw_pcie_rp to indicate that
the link should be preserved. When this flag is set by DWC glue drivers,
skip dw_pcie_setup_rc() and only initialize MSI, avoiding redundant
configuration steps.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-designware-host.c | 11 ++++++++---
 drivers/pci/controller/dwc/pcie-designware.h      |  1 +
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index 372207c33a857b4c98572bb1e9b61fa0080bc871..d050df3f22e9507749a8f2fedd4c24fca43fb410 100644
--- a/drivers/pci/controller/dwc/pcie-designware-host.c
+++ b/drivers/pci/controller/dwc/pcie-designware-host.c
@@ -655,9 +655,14 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
 	if (ret)
 		goto err_free_msi;
 
-	ret = dw_pcie_setup_rc(pp);
-	if (ret)
-		goto err_remove_edma;
+	if (!pp->link_retain) {
+		ret = dw_pcie_setup_rc(pp);
+		if (ret)
+			goto err_remove_edma;
+	} else {
+		dw_pcie_msi_init(pp);
+	}
+
 
 	if (!dw_pcie_link_up(pci)) {
 		ret = dw_pcie_start_link(pci);
diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index 31685951a080456b8834aab2bf79a36c78f46639..8acab751b66a06e8322e027ab55dc0ecfdcf634c 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -439,6 +439,7 @@ struct dw_pcie_rp {
 	struct pci_config_window *cfg;
 	bool			ecam_enabled;
 	bool			native_ecam;
+	bool			link_retain;
 };
 
 struct dw_pcie_ep_ops {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
