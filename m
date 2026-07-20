Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA9D5C4452C
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 11:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=759EcoHYYVdNJaf+YEmdSyo6Ylunsvwgl3kCYdJsO0g=; b=D96yDVQcHsxmok
	rTtC7OIYY6MovveTDyh1Z7519IKgvjFMr+cwjDo4lN3LYU+cOnqcO9z/IVPKuRynpmVJXzdM/G+l7
	euDA57C7qk4AoGa2+BDN6L/iI3L1q98aFVl8kK9bS/mKBYbu8We+t41y7BWhlEDQCiB/Px1yMh0Ad
	KxtihdkRb1IgZYZGNmMV+efLTpeuVZuBg3BbSfWf9DxdIpy2FREjrVbrkC0i2zIWtrBODnbOOaJEt
	Dwjc3wWa+UFNvC5OL+XLHazNJPb9hjP2GFOWC4aNmfFtZ7BwI2UX/0uQxvq/fpXToqFpKL34ccVh+
	0/4NPhm4KkFvxXFPfTrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlmPO-00000006d2H-1qUh;
	Mon, 20 Jul 2026 11:43:42 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlmPN-00000006d1d-268N
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 11:43:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4533141B3E;
	Mon, 20 Jul 2026 11:43:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 037831F00A3D;
	Mon, 20 Jul 2026 11:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784547821;
	bh=pWL/barBtInChl02bEndoQ2DFelEZZZkg+gCxWYVwpk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=UlLL+xWkGRdTFUk8ZiUPuJp+MT6KUB0KlvY8qPiQiQ0PeN0hGkf8+IAbV8jjNL+vu
	 3oHtXNt6Fjo4stwMoP1tl0G4nVnR691ovAQMC4/t2+kdyUc/a4USDTX1TMCcrtAWXA
	 Inbbtcmavu/fHSb+bfZklOeK2Y0HJbC8LJOA9Y62zFFb6VVkIi/ArkmAPr+F8DOZJo
	 1KIxafyRWb2uAihkiwsUnsepzP/QAB1iBg0C2QYgpKmemfia+xKalXa+PUHnEFHkYE
	 MXd6eiKLpmU//wPA/NSH6ygNwk6zQtZeUB+gOc7yuaILWFSt0jEImpcopORfmhvF/s
	 5Idv1tcVjuziQ==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Jingoo Han <jingoohan1@gmail.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
 Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Qiang Yu <qiang.yu@oss.qualcomm.com>
In-Reply-To: <20260709-link_retain-v3-0-81a9d187bb61@oss.qualcomm.com>
References: <20260709-link_retain-v3-0-81a9d187bb61@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v3 0/4] PCI: qcom: Add link retention support
Message-Id: <178454781557.1388616.15635571686533105234.b4-ty@kernel.org>
Date: Mon, 20 Jul 2026 17:13:35 +0530
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


On Thu, 09 Jul 2026 12:05:15 +0530, Krishna Chaitanya Chundru wrote:
> This patch series introduces support for retaining the PCIe link across
> bootloader and kernel handoff on Qualcomm platforms, specifically
> X1E80100. The goal is to reduce boot time and avoid unnecessary link
> reinitialization  when the link is already up.
> 
> We are not enabling link retantion support for all the targets, as there
> is no guarantee that the bootloader on all targets has initialized the
> PCIe link in max supported speed. So we are enabling for hamoa & glymur
> target only for now based on the config flag.
> 
> [...]

Applied, thanks!

[1/4] phy: qcom: qmp-pcie: Skip PHY reset if already up
      commit: 910b828b22b7b91054b3bd4be676a017444b0e00

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
