Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F006CCD184
	for <linux-phy@archiver.kernel.org>; Sun, 19 Oct 2025 07:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=So1ECz/IFAXWNQdt6Ky7sOEAmHhQzbe++2R5wu4CP8A=; b=FdBO/eP0i7WhcL
	aZIY+GBMcS5+z96TYVTTJDnt0nxBx6Z0mLnrNzmD6iDNEuHzj0nrkzH8TWDwishr/lpHjCPwtNqKJ
	amwwmEYPBurgZ1BZxLjmDH/Ry1gGcQeLqnpTjIVN2n9HERgVLLAx7SCc8oTPmN1Gbz7x5TAZkMYDG
	ou9upCNraod/MTlWzQ/0lHXV31F2rDOxHmTtBhlL+YJfq3fUZ7hzNknwHFP5+ObLV95vvVErQliEq
	YMnivGg+DWy/Xn1cqQz/+D/Ivh8SkCEZyOnZRoLf67mItwsOwVcIDFpWBw1Yo7uSE0qk54PXAOUsL
	FzoU10kZIGLqfALRc+wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vANcf-0000000Am3t-1w3z;
	Sun, 19 Oct 2025 07:14:33 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vANcd-0000000Am3S-3U0G
	for linux-phy@lists.infradead.org;
	Sun, 19 Oct 2025 07:14:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id EF9F9602C6;
	Sun, 19 Oct 2025 07:14:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC2ACC4CEF1;
	Sun, 19 Oct 2025 07:14:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760858056;
	bh=2nGgPtY4Ugv6e9sF68izBoIQBy4az/v5XFZMXzm2HB4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=SXbvxIEXPKRI613TniiG2RcR+Fh76LrNUArBK/vENB2XXSPc7B97Omhkx4+ynMvTR
	 Y7divWxy5GLASYtT13CduBFYovVVGw4SsJuK7lADx7Hcc1O9y/SBj16NIoHvU6rzmy
	 Pe9K7EqAwgsjkh3+O3Q7iNu3rotNcNckDL3xH9W4ZiPZhdtAEM0OWz2vFQQh8ReTZP
	 r/DvY8iWSDGDPWMhCGeb5pqpYc8Mka8tPzmYls61wpim7VaYX+ekiceW8Sk+GswMRi
	 dstjSCDu6Zjc41WkjpxWEePuYix0KDdyjlKWUZaUDZHQRNjCRfOIyjEWNzVcg4K9am
	 TZQVQLRJDLYLQ==
From: Manivannan Sadhasivam <mani@kernel.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com>
References: <20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v2 0/6] Add PCIe support for Kaanapali
Message-Id: <176085804731.13415.14186283722551024103.b4-ty@kernel.org>
Date: Sun, 19 Oct 2025 12:44:07 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
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


On Wed, 15 Oct 2025 03:27:30 -0700, Qiang Yu wrote:
> Describe PCIe controller and PHY. Also add required system resources like
> regulators, clocks, interrupts and registers configuration for PCIe.
> 
> Changes in v2:
> - Rewrite commit msg for PATCH[3/6]
> - Keep keep pcs-pcie reigster definitions sorted.
> - Add Reviewed-by tag.
> - Keep qmp_pcie_of_match_table sorted.
> - Link to v1: https://lore.kernel.org/all/20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com/
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: PCI: qcom,pcie-sm8550: Add Kaanapali compatible
      commit: bc427cd81b2a42be41be87c976cdc847f44353bf

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
