Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CC93C88E5C
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 06:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MhNoYQtXngMrA7Uw6Ze2mcVReOOqVVONLaiFpzdVnBU=; b=olNXv0lc4B2vnD
	cI46tFH+v0HN7Ke/cWpnHWtR4fVTvnVg006mmysd1qV1M21CM9IGZutydDQBWTGf4ME2ezXdLmwhc
	BbfxKEAXmnMBH7ceHRiS2dJCt7eXNbbW28bgcl+wq3xcQT+MXEh+1/unJoXAc++AnbHejODDVo4CY
	o4kBCUUejxKYUOPQzu1qAe+vWvWLeilPVC9Gz2J127yST/HXBEqf8yThubdii+4mzEBJXFG+bY1Ww
	soXvXsz/g7lSTeTr6vi5AFY/7f4uq7dWsZGodmxQgyjIqqYc2vTyJcLTItaHL/GaNYeD3ichsEkTz
	VWYzqDwMlrIuncxWtnmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6ikz-00000008RkQ-2R91;
	Wed, 16 Sep 2026 06:04:33 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6ikv-00000008RiM-2Q8p
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 06:04:32 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68G61wfu225030
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 06:04:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	n0r6Emu7FRLhYCASNs/iFipri1GH8rilRHLo7RAxtZ8=; b=DrPI/RNFoz8blFdr
	n+qVvkqsS1VYEh86yIzRsJZN7puOVoylwY4abKOPUmLPKa9CU6MbVFp5ahT7yHZ0
	lhQoGgixHkqImskYdGE/boQbKB55ptXnX/YOlAjl+LIaY+HvdVBm35M7Q1Lel3OS
	GQweCfxlvt1JXobZKX21VO8bYceanAx4VuJVkwqtYiA3mtk5LqoMOfU6HRkSeO00
	rhR659cNQ4hZHaFvjfnt0j1e3BcRApaECoGDlY9C/YS/9M9jaPZYW6SnhI5Unx9O
	MCduoo3xrgpWs60zN7Hhfa2F3/ByPaSAm/neVHrXnn1KAmmKf2kBo4UShrWxrehq
	GBRR3A==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gqbmnj8j2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 06:04:29 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2cfa4e4684bso119289725ad.2
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 23:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789538668; x=1790143468; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=n0r6Emu7FRLhYCASNs/iFipri1GH8rilRHLo7RAxtZ8=;
        b=EO919/iJxrJrY8keMFkwAhMgTdSHsgLxF8mEek9jRKaSWvsOrTttWKtCTPBvdKCfEi
         xLbiAcS2nKzFeiXg9lSPKXGU7Vtjs4C9SkmO4QmyjUCEhClw2xR2CiFCbijvNAOxCIsz
         PSCNEP/4jXEst3/kvty1phEbErK2MbmVTKSioGHQSUmtdQa81FPork13mZesLUOIEPFy
         uK4fGjx7sOR13rCu/4RwtZvqpz0yQaO2D7k9zIx3ERf0z3BfnxUiMwhWgl80KTCJfK5A
         ODRNSJKbebwfDulnMVxrL7/tecwZA20iVI83x9QcFSO+JBfRsNo1llnTOT1BQhLXwxtS
         9b/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789538668; x=1790143468;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=n0r6Emu7FRLhYCASNs/iFipri1GH8rilRHLo7RAxtZ8=;
        b=gx/jyxT628ulwiyKFMqr+lwpK9AJzfdoRYdYE1B9jT7z95yOoYz2M85B+aI4cO3U6N
         Sgj/eU7NFQGoT5dC+ckBsKo/Ds5wTX04Wa34Uio4QLytLHyiBd2MxFgeNp9pwCKZOtfS
         URKgKvmp2H6GUP5KJVpoLBtru9gn8+LaSJfZsMtQjA8x4GbfKX3CUtJ71isevgrqii70
         O8NTc2YtYEAuJLojmRrxqvkGZAvTTmdMi9W+kJmRlk/bwb6z3yBWXa8tfVeYiuZ9ojVu
         Lmlu0RIKhy/MByqKPJhidRRJGdL+01JGnsC5Dua2sVeyik/ee9Zdnlja5SxUBuq7mdNl
         P3og==
X-Forwarded-Encrypted: i=1; AKwUvBwAC+JvCkaq7pkwK5KGZHQ+ahhvd5wL5KPik0N+O5QtwHcw8yWjrwNWFkW9dkeS7GabLj4v08qi7bs=@lists.infradead.org
X-Gm-Message-State: AFuF++mil44J/wNviAYtzuB2UkcqCGOJFHc7nCZCJKyAYTjydH9BbNO2
	D+7T0B0iJ6lwnUIe+/VMu+iWtIj9w+gJ5p8OOg48wLQhewughb3omHfb1RCEPWP89q5BX3jSKRC
	iED70oqLXBrCBnwdx2Be9kplMrGnUDSQabVBdM5oLDec7Oq8F/zeJPeQFXXs8KcwjZjbP
X-Gm-Gg: AYBFou0CUhVTS30Iag+VZ3LTq5d/Pn9cmUPs2tjg6BqY1ad2JtP3VYWrWPpSPHQ+ZeB
	DsdLrP00CuaHksVUnhUKb2N8KDYsnl9MTEMGHS8jjXIUkbTYe/+areWbB8ZZyGn3g1g+D/yxD4l
	bevWUqclfsyffDANNtp2+i+xI8BMts9s8JoHcrt18OuXSFgTwxAqkMNAA5eHA109AnRdI7Lukx0
	V+bKJUPY4WvbiGoO1q/ogjzR1dTLq+fwjL2e09lXb15ZMt1+XdZAZtXUNB6a3N8NenzzK5yq3gA
	CcElY/w6qrzRmwQGr7JDzAq7C8014OFUE+J2PbX74omLC50+YnFt6fLxxKJW3LIIFRC5euGrfCa
	5D0eTrxnXACLoZugz0T6jO0PYEle0+y8wuvLJqL1wlrV+3Ec=
X-Received: by 2002:a17:903:2452:b0:2da:f7ad:cfea with SMTP id d9443c01a7336-2dd8df0a71emr27125025ad.8.1789538668395;
        Tue, 15 Sep 2026 23:04:28 -0700 (PDT)
X-Received: by 2002:a17:903:2452:b0:2da:f7ad:cfea with SMTP id d9443c01a7336-2dd8df0a71emr27124325ad.8.1789538667935;
        Tue, 15 Sep 2026 23:04:27 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33bfb19f8cesm4740083eec.2.2026.09.15.23.04.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 23:04:27 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Tue, 15 Sep 2026 23:04:22 -0700
Subject: [PATCH 2/4] PCI: qcom-ep: Move PHY init and drive PHY reset to
 align with HPG
MIME-Version: 1.0
Message-Id: <20260915-align_pcie_init_sequence_0916-v1-2-0b2195836f30@oss.qualcomm.com>
References: <20260915-align_pcie_init_sequence_0916-v1-0-0b2195836f30@oss.qualcomm.com>
In-Reply-To: <20260915-align_pcie_init_sequence_0916-v1-0-0b2195836f30@oss.qualcomm.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789538665; l=3449;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=h3fngNlkhZEZKpBHI/IT3xTrpcNvbLpoMF3Il2nEqag=;
 b=eTZfXLMDSIpr2rD0kW+QmRWdp9HNs5rYFTSCCvbAdhqFxpkC15bmD+pT/64Xq3BBABZm7nE6r
 kif1GcsJYCKBDLi+hJrEpTvhL5VVFDqdA8qCq0ZLA5sRh1Fa7EGYA62
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=POyaavqC c=1 sm=1 tr=0 ts=6aaa316d cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=PV8ZVrNDrE42_2bsUUYA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE2MDA3NiBTYWx0ZWRfX5OgsFYmDLjPM
 kOLduVXEAV2bdsflB8EsryBGFAaSvxrbtt5mD9NZTh1ZOW+8l1DqDqgfbd9Ol5c1LUOxgZJDLXY
 DRkgJZsxvO2mtHL5s1Qu5ELP/x/KETTqHB9NpxqWD+ard3kBnO/R7r9laNs7LCPrc/4ZimPnkO/
 GIFmAJn9enViLAAgBsnTWs+37Q/7tH5KlNigAUkSkvlVKDC1fVXSrOY+erxefypAZsZVzsVCWj2
 H/6zlKFK8NpHJtLnkybtN3+ISTArPIe6wdVEMzLzhlh4NAFHpwUN4YJ7jjVVO3zxfIx4y9aHrSF
 gOm5pqWmuDodSMOAyzBweQIHWZoVOxPaZ4oKiJsg2qNFmXGs2dZILEDPkHxdY/cOihHTzQMnLEr
 2FGYeMsImKIxvqbR248mApky7QlnjObO+0xJ3DI+RNQKWQQM4de9r6bf9EmIBtoOBWcdNr3b11z
 ERjU/9SW1/730R5PVtQ==
X-Proofpoint-GUID: bDmzBgcPXrh9WN8-PbVHDEk6bMGrf6Ea
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE2MDA3NiBTYWx0ZWRfXxlCJJ4D9Ns6s
 5vCTTzRDk2ULWCS7hBL3aLzJ0tuVUG1k9RWux+x1Sb32KmHxdGNZ1XuLL5Tqh+tiu3fK2fvC++n
 r+SLiOGTHCNNOmOODBtqk+loStN9HBc=
X-Proofpoint-ORIG-GUID: bDmzBgcPXrh9WN8-PbVHDEk6bMGrf6Ea
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-15_05,2026-09-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 bulkscore=0 clxscore=1015 phishscore=0
 suspectscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609160076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_230430_480866_B5B5D214 
X-CRM114-Status: GOOD (  16.31  )
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

HPG requires the GDSC to be powered up and all PHY/controller clocks
enabled before the controller's core reset and the PHY's reset are toggled
together as one atomic group, with PARF_DEVICE_TYPE set right after that
reset group, same as the RC-mode change.

Move phy_init() ahead of the controller's own clock enable, and fold
phy_reset() into the core reset assert/deassert. phy_power_on() keeps
running afterwards. Also move the PARF_DEVICE_TYPE write out of
qcom_pcie_perst_deassert() to right after the reset group, in
qcom_pcie_enable_resources().

phy_reset() and phy_init are currently a no-op against the PHY this driver
uses, so the init sequence doesn't change yet; it actually changes once
the PHY driver later implements .reset.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom-ep.c | 26 ++++++++++++++++----------
 1 file changed, 16 insertions(+), 10 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
index 8364696a1b98..cd7725d277c5 100644
--- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
+++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
@@ -228,7 +228,7 @@ struct qcom_pcie_ep {
 	int perst_irq;
 };
 
-static int qcom_pcie_ep_core_reset(struct qcom_pcie_ep *pcie_ep)
+static int qcom_pcie_ep_phy_core_reset(struct qcom_pcie_ep *pcie_ep)
 {
 	struct dw_pcie *pci = &pcie_ep->pci;
 	struct device *dev = pci->dev;
@@ -242,6 +242,12 @@ static int qcom_pcie_ep_core_reset(struct qcom_pcie_ep *pcie_ep)
 
 	usleep_range(CORE_RESET_TIME_US_MIN, CORE_RESET_TIME_US_MAX);
 
+	ret = phy_reset(pcie_ep->phy);
+	if (ret) {
+		dev_err(dev, "Cannot reset phy\n");
+		return ret;
+	}
+
 	ret = reset_control_deassert(pcie_ep->core_reset);
 	if (ret) {
 		dev_err(dev, "Cannot de-assert core reset\n");
@@ -332,25 +338,25 @@ static int qcom_pcie_enable_resources(struct qcom_pcie_ep *pcie_ep)
 	struct dw_pcie *pci = &pcie_ep->pci;
 	int ret;
 
-	ret = clk_bulk_prepare_enable(pcie_ep->num_clks, pcie_ep->clks);
+	ret = phy_init(pcie_ep->phy);
 	if (ret)
 		return ret;
 
-	ret = qcom_pcie_ep_core_reset(pcie_ep);
+	ret = clk_bulk_prepare_enable(pcie_ep->num_clks, pcie_ep->clks);
 	if (ret)
-		goto err_disable_clk;
+		goto err_phy_exit;
 
-	ret = phy_init(pcie_ep->phy);
+	ret = qcom_pcie_ep_phy_core_reset(pcie_ep);
 	if (ret)
 		goto err_disable_clk;
 
 	ret = phy_set_mode_ext(pcie_ep->phy, PHY_MODE_PCIE, PHY_MODE_PCIE_EP);
 	if (ret)
-		goto err_phy_exit;
+		goto err_disable_clk;
 
 	ret = phy_power_on(pcie_ep->phy);
 	if (ret)
-		goto err_phy_exit;
+		goto err_disable_clk;
 
 	/*
 	 * Some Qualcomm platforms require interconnect bandwidth constraints
@@ -370,10 +376,10 @@ static int qcom_pcie_enable_resources(struct qcom_pcie_ep *pcie_ep)
 
 err_phy_off:
 	phy_power_off(pcie_ep->phy);
-err_phy_exit:
-	phy_exit(pcie_ep->phy);
 err_disable_clk:
 	clk_bulk_disable_unprepare(pcie_ep->num_clks, pcie_ep->clks);
+err_phy_exit:
+	phy_exit(pcie_ep->phy);
 
 	return ret;
 }
@@ -390,8 +396,8 @@ static void qcom_pcie_disable_resources(struct qcom_pcie_ep *pcie_ep)
 
 	icc_set_bw(pcie_ep->icc_mem, 0, 0);
 	phy_power_off(pcie_ep->phy);
-	phy_exit(pcie_ep->phy);
 	clk_bulk_disable_unprepare(pcie_ep->num_clks, pcie_ep->clks);
+	phy_exit(pcie_ep->phy);
 }
 
 static int qcom_pcie_perst_deassert(struct dw_pcie *pci)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
