Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2361C3600A
	for <linux-phy@archiver.kernel.org>; Fri, 21 Mar 2025 12:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ziWFM+ipbCiiu7ze1NawIELdJdv254Ud8y3OytSASac=; b=hJVV2INOckooZ7
	EUxA1r4l34ivliZCZjU2m8RHhF16ecHIym3I735LyS7LjZ0KNpXTGUrLNaQbcXcRDwzS4raYojYDJ
	eHpaeTbFCRR1uYzR85ZlG2FsZROaXau51PihEspUljfHYFg8QVF/Ztis+ns3OOcUkDweYXSDZSe5h
	e9+Rrk1wjeIa3Vcn+UFTuVQJNxge+Ubh0h1mwVYUcmFDCGmopOYhsShAAxy6V0HxMn43HHEz1ofEp
	82obO37aILk8gCLetPQpX5gfQUAlIuGetsqRp0L/qtizlurMFWL5ageRmzC8fFAG/SwlIEZtK9joa
	C7sq23ZcqwgreutLrWHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvbH0-0000000EjjT-2aWz;
	Fri, 21 Mar 2025 12:14:50 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvbGx-0000000Ejgi-0Md7
	for linux-phy@lists.infradead.org;
	Fri, 21 Mar 2025 12:14:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2ED8743D09;
	Fri, 21 Mar 2025 12:14:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3066CC4AF0E;
	Fri, 21 Mar 2025 12:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742559286;
	bh=tlVg37QeIwq/BVXEmQZGCinc72LFFyHRz41tzUQAGsk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=ugqSrHxwo/6a1tVHleGY3nC+etdXs973UCba8ZVuTVRWa3Kv7hRP43XkQR5CxYgkV
	 xwmkv8Z0sPhlTbvM8TLWoBFarjQhD1ksTRAfsa0yqPXlCfucn7PCLnY4WSmFHRu9lW
	 XaO6Tqe49eZYxfwh/P2WaBkSR5S9Jov9qnGWQzqIw3YlZLSy4rGd8qAvFDukjtb21A
	 XRsBbBWu5bDcLC39RnBmTQ5OEZ4+wKZZ8aA2TJbpAhOaBEe3uT6QBc+lRHCE3iIPGy
	 of93qi6WN538qYaMPezctlWD0P6iHe7BjScbw/IYdjsuQKabGNZE8wnMqpEKFDRvC6
	 j79e0R5O74rtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26E00C36000;
	Fri, 21 Mar 2025 12:14:46 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Fri, 21 Mar 2025 16:14:42 +0400
Subject: [PATCH v6 4/6] PCI: qcom: Add support for IPQ5018
MIME-Version: 1.0
Message-Id: <20250321-ipq5018-pcie-v6-4-b7d659a76205@outlook.com>
References: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
In-Reply-To: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
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
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pci@vger.kernel.org, George Moussalem <george.moussalem@outlook.com>, 
 20250317100029.881286-2-quic_varada@quicinc.com, 
 Sricharan R <quic_srichara@quicinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742559282; l=1329;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=hdHPuZTrjBVTUJ6XMbo2uB5TbhhbWj1SbVqmNl1k/ZI=;
 b=dloC34ddXrnoi0F8aDwk0mIJUdN94t02LuAxYGJ234hUjg9zq8BOlPIv2wRTksRnqwNtSno1p
 o00oz5MFbryBAtC8LfHJYwkdFqDTVm5y1/WK6Q+IZ6JE3DH59nh+GGY
X-Developer-Key: i=george.moussalem@outlook.com; a=ed25519;
 pk=/PuRTSI9iYiHwcc6Nrde8qF4ZDhJBlUgpHdhsIjnqIk=
X-Endpoint-Received: by B4 Relay for george.moussalem@outlook.com/20250321
 with auth_id=364
X-Original-From: George Moussalem <george.moussalem@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250321_051447_156322_AFC90F4E 
X-CRM114-Status: UNSURE (   7.66  )
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
index dc98ae63362d..e91bbe218569 100644
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
2.48.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
