Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A24BC88E56
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 10:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iIJJIfOvcz9uw7qC426GRku5XR1hFhqgVr9paUb5FG0=; b=d0IAUCStDrrk7J
	/8HzMKnMyJB5YqDvmcIkGEIfjnoWw4HHEGFlw9lJZ825klmcDuc0lxJ6eZU4sFuXaAYvDIfU/BPD1
	3qh8CpxMKS88hjApTGYPaft1EcUc6IhXBjXalh7faOUBP5kwf1NxF3dBRVcI/eQwtSIvrSFzbBC/+
	iB4/1+3MYFACdwM98k+G2YSfeTRgypLAgEszbRNOjurmvzIBOFXKtAdPLUXIL1Y+Mji+6de1tOc8C
	MPoFY1kpPMCLi/xrVp1nZhWZUiBs7ii9xOYCchkUR3pKmEMy3sRjXw9/N8HUafRPvx32n9t24DrIx
	kf/HIuzGZFtp7PG3pHig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5hsq-00000001bTW-2gRP;
	Sun, 13 Sep 2026 10:56:28 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5hsp-00000001bT2-38X6
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 10:56:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 35F0760DF2;
	Sun, 13 Sep 2026 10:56:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A7D61F000FF;
	Sun, 13 Sep 2026 10:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789296986;
	bh=LR2A0Swu9+UzeDAUKc/L2DdjU8RKz9nn4+AWjlmEqkA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=fjMB8AUdSITAF7nA00nrqb7Ty6ZtwllLb6boF66Hj5HGG/ChDxWlFrf+KNz04LBVS
	 r3BKs+CUTY8kO4ZwSPTARfJghGQ/zGwI3jaPLlc+RachUlBF7YxirxP47uEBElTJMN
	 cvMJR5uIFfZmOFDv7a8rN1Av/GaD/KHYO32q7KrVA2sZC7rFBpYGAjnzCqmCSzhbnJ
	 Q3CGLYaa+F4vBrYVK6mMEaUk2wXap6yWeBnP4tqreF1JkmOemj5q2AwtenePglyCyE
	 tWQwVbvGeEYPlJ4fMBob8vmnYnmqK6fNfxa/4eq67P4Io43xE0QxAxUjuGNNetLASE
	 nXnJBU8JAepyQ==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, 
 Bartosz Golaszewski <brgl@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pci@vger.kernel.org
In-Reply-To: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com>
References: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v2 0/5] PCI: qcom: Add PCIe support for Shikra
 SoC
Message-Id: <178929698100.215437.3521119233132524977.b4-ty@kernel.org>
Date: Sun, 13 Sep 2026 16:26:21 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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


On Mon, 31 Aug 2026 12:56:00 +0530, Sushrut Shree Trivedi wrote:
> Add PCIe support for Shikra target, by adding dt-bindings for phy,
> controller and corresponding phy & controller drivers/device-tree
> changes.
> 
> Shikra RC is connected to TC9563 PCIe switch on all three
> EVK variants: CQS, CQM and IQS. The individual downstream ports
> of TC9563 connect like below:
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: phy: sc8280xp-qmp-pcie: Document Shikra PCIe phy
      commit: 0f654af456b5e347dd69d58c2fc6d7e17c36a6d1
[4/5] phy: qcom: qmp-pcie: Add QMP PCIe PHY support for Shikra
      commit: 3518d967d8b64485f9dbf90bfeba1f341ef4c131

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
