Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E82CCF8549
	for <linux-phy@archiver.kernel.org>; Thu, 20 Nov 2025 17:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H5aHtTCfi7hvYap95fn5390fobuLb2u/bWUmZXDBeLc=; b=laDesSP7kgAnCG
	c9hpdE4htojJEWpO4zwXxd3Q/DkLQrTo4IxbtWJMIjgACvviYsFG1d2VFjPFMc0ZQx3LMp56Y9IVV
	uXPhbsvfvkZmxRSlovNbd7m1X45kbPb2Oj/Lw9cEMhlDrZXwQ1MkNjaKxqIAFdaYaFeGLwSfAkDy8
	Y3djRE1cpyLT1u5DlEYy/Nai2TbvigI3DUEpsAYcBxjqb3g4JScY8sWSenJqwo2gLP2gG5HzzoOFj
	73OwcvKtEokfOcJYwN5kOaq9UJZXH/XraiickglppTlzlWq2VfOGmiReSC+tixkLR4hsqrePo/WON
	1CQ9DL2HG+i1zMjYBsfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8BW-000000073qJ-30iX;
	Thu, 20 Nov 2025 17:11:06 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8BU-000000073pe-1ieJ
	for linux-phy@lists.infradead.org;
	Thu, 20 Nov 2025 17:11:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7F8DE601A2;
	Thu, 20 Nov 2025 17:11:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D931C4CEF1;
	Thu, 20 Nov 2025 17:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763658663;
	bh=srEXc3YV3Z9k+S6EjyCYz4pndYvvbKnp0h6Ftjs+8L8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ihxve8DzixV2TWEoB5pzQv6zF5lJiNc9O+zNIBHJ+p1O3P+EAxeIFgpualrrnUUcK
	 GM9o+qbJ2jonDThsdrpXOHcvSBF3NPB2DEXZTlI9SnMcA0ZJkteKHb9BZmnzHZVlcR
	 aXBB1/lBhMUQHnSdmT9iw1OgJwUmWltt947pg2VwCMFOYj06hRaJcacgw/FNo3OxnQ
	 fQoUtYZD0LyDmP43hC9um8bp28PrYl8JdiERR6dpb1QdN5L8lTx4YIx8rsNqY49+WH
	 NVWvifn/N6DKmykahiO1ikXpWCZf8syhAlNUkBNCQAtt6DcxlX39/3MigYeKioRQdv
	 XemZHmeMa1v4Q==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pci@vger.kernel.org, konrad.dybcio@oss.qualcomm.com, 
 qiang.yu@oss.qualcomm.com, Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20250825-glymur_pcie5-v3-0-5c1d1730c16f@oss.qualcomm.com>
References: <20250825-glymur_pcie5-v3-0-5c1d1730c16f@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v3 0/4] PCI: qcom: Add support for Glymur PCIe
 Gen5x4
Message-Id: <176365865805.207696.3284794076492688749.b4-ty@kernel.org>
Date: Thu, 20 Nov 2025 22:40:58 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Mon, 25 Aug 2025 23:01:46 -0700, Wenbin Yao wrote:
> Glymur is the next generation compute SoC of Qualcomm. This patch series
> aims to add support for the fifth PCIe instance on it. The fifth PCIe
> instance on Glymur has a Gen5 4-lane PHY. Patch [1/4] documents PHY as a
> separate compatible and Patch [2/4] documents controller as a separate
> compatible. Patch [3/4] describles the new PCS offsets in a dedicated
> header file. Patch [4/4] adds configuration and compatible for PHY.
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the Glymur QMP PCIe PHY
      commit: d877f881cec508a46f76dbed7c46ab78bc1c0d87
[3/4] phy: qcom-qmp: pcs: Add v8.50 register offsets
      commit: bc2ba6e3fb8a35cd83813be1bd4c5f066a401d8b
[4/4] phy: qcom: qmp-pcie: Add support for Glymur PCIe Gen5x4 PHY
      commit: 1797c6677ad6298ca463b6ee42245e19e9cc1206

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
