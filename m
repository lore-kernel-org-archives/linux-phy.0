Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47704C36008
	for <linux-phy@archiver.kernel.org>; Wed, 26 Mar 2025 08:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9OrTaTVSKW3TewVSaxQtmOJ+AyBi9u0ovPJp/U9GkTA=; b=xn+woom42AdzyA
	7ZgwHRM4P812jGi/AXsH8f5MvKMGjLmN9gsiwMN80IYhFqzGFfRc1vfB9jPGzrndnHWt0hGJTL+LW
	ebEoM8Q9K/Yy/Z1AcDkMd4ZfOkvDrG1mVQAO9qAwDkHUD2K4Ejc1MF+BMhPIVgejECWhkrKlZUhvo
	wPi8xFfTAUXsbnmhZ3Umw570rOAVj1I0Ag0gChewqtg6zLPP9GTRxGd76lhpStH9X0itBndbefCVZ
	4W1lBBxNOjy+gTLagpVSnuISxvDp5pQ5DtUmSU01wo0KXCg2yHfrhRhIiPkIJV4hdp/Se2KYEzV/F
	RWUyPLYm1OPC1UgSPnnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txLxj-00000007u6Z-3Sjl;
	Wed, 26 Mar 2025 08:18:11 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txLqr-00000007soF-0Cm8
	for linux-phy@lists.infradead.org;
	Wed, 26 Mar 2025 08:11:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 156814402B;
	Wed, 26 Mar 2025 08:11:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E44F4C4CEFA;
	Wed, 26 Mar 2025 08:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742976663;
	bh=EdwmW2qM72zprO32J7oN9gsX7eRHVgABO9JcM6BsASE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=r8XsTaJAk5X9kS+219oygnAzpwGGY+LTmLSB2V5hqXPgvOzHnzYCANvsQo9zPgWew
	 YgFuUsbJZYrvsLN8XupiMgaodwP9pHkn4eSWzLLdAE/Y4UzuqY6a/ooAVqtOHar9vj
	 uTH85Acrny//1bH3BmfM6evYpqbmBJpJlhQMO/FnqUUvMwqEdxhzurzA1gMV5txt9C
	 ex5GW3yrIsG62UNvj4gU5DSHXux2uYFYeeHfzsX+ezat8VZ/fbPjexTSETKeQ1dydl
	 qOv6oHZbjD5/VE599RouLiw9MKcaLqIAum5Z1/6A8LvPPckWQufpslc8l2Dktbzm2a
	 gbPmE7yS+oCkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2A5DC36012;
	Wed, 26 Mar 2025 08:11:03 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Wed, 26 Mar 2025 12:10:58 +0400
Subject: [PATCH v7 4/6] PCI: qcom: Add support for IPQ5018
MIME-Version: 1.0
Message-Id: <20250326-ipq5018-pcie-v7-4-e1828fef06c9@outlook.com>
References: <20250326-ipq5018-pcie-v7-0-e1828fef06c9@outlook.com>
In-Reply-To: <20250326-ipq5018-pcie-v7-0-e1828fef06c9@outlook.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nitheesh Sekar <quic_nsekar@quicinc.com>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Praveenkumar I <quic_ipkumar@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pci@vger.kernel.org, George Moussalem <george.moussalem@outlook.com>, 
 20250317100029.881286-1-quic_varada@quicinc.com, 
 20250317100029.881286-2-quic_varada@quicinc.com, 
 Sricharan R <quic_srichara@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742976660; l=1385;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=FsXklbRpyC0apFWHqB5KrikZCLRTZbjSPVIiKdW78OE=;
 b=Zp1bIqvTXpB9oF8bNmqLmdvwXdOl5iP/n6rAOWaDSvKsmtJXozhPEk6tGVRs/PcfquGPGhiKA
 2XhKJN2NQf8DpGMww8KYvyFKnxY76JvKzPt/r7Qq01svykybuwpaLXe
X-Developer-Key: i=george.moussalem@outlook.com; a=ed25519;
 pk=/PuRTSI9iYiHwcc6Nrde8qF4ZDhJBlUgpHdhsIjnqIk=
X-Endpoint-Received: by B4 Relay for george.moussalem@outlook.com/20250321
 with auth_id=364
X-Original-From: George Moussalem <george.moussalem@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_011105_143488_9EFBA8FD 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
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
Reply-To: george.moussalem@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Nitheesh Sekar <quic_nsekar@quicinc.com>

Add IPQ5018 platform with is based on Qcom IP rev. 2.9.0
and Synopsys IP rev. 5.00a.

The platform itself has two PCIe Gen2 controllers: one single-lane and
one dual-lane. So let's add the IPQ5018 compatible and re-use 2_9_0 ops.

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
Signed-off-by: Sricharan R <quic_srichara@quicinc.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index dc98ae63362db0422384b1879a2b9a7dc564d091..e91bbe2185692871d1727274aea50f0f0c52a94b 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1840,6 +1840,7 @@ static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-apq8064", .data = &cfg_2_1_0 },
 	{ .compatible = "qcom,pcie-apq8084", .data = &cfg_1_0_0 },
 	{ .compatible = "qcom,pcie-ipq4019", .data = &cfg_2_4_0 },
+	{ .compatible = "qcom,pcie-ipq5018", .data = &cfg_2_9_0 },
 	{ .compatible = "qcom,pcie-ipq6018", .data = &cfg_2_9_0 },
 	{ .compatible = "qcom,pcie-ipq8064", .data = &cfg_2_1_0 },
 	{ .compatible = "qcom,pcie-ipq8064-v2", .data = &cfg_2_1_0 },

-- 
2.49.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
