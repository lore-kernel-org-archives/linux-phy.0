Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA11D606A332
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 10:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Wf5F6iaa;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Zc9zdBP/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=NXJF8fRExk4n2wCwlstCVCOJghAkm3I5JvgVMA53u6c=; b=Wf5F6iaaAMzp9qdPFPrWZSqxWP
	6kHXqfiM80V78kPVXUIuRRWIzj+jUpejKMjsv1nvI+JBH0Qa9EBMxLj7G+yoBFcBYXelLOfex45s1
	WERLbD4EzjGGu6XpIsKr77brhkHlEOoGxQg5dPe7Igrbi7dmRsKF+0e0QctWSGmEaO5lU2aeEaHf4
	HpGnV/QfBHNZDTG78KF91WNZIcLRa3QPfs1fl78Yf6dlSxsc/D4Z6BrF/jMY7tnMS69hTGK5zP+k+
	ldvsy0LB9rBGGYOe2dhGiQrhSTPZIsxHMpY4UFPOAwF4GWNQ5EEbVOIwacIHT6dPo7ex8xAmfn+7A
	QXWI2bfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQtP-00000002sct-2JWx;
	Mon, 23 Nov 2026 10:03:23 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQtO-00000002scZ-0pCN
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 10:03:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 86DB76021E;
	Mon, 23 Nov 2026 10:03:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFAC01F000C4;
	Mon, 23 Nov 2026 10:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795428201;
	bh=pSx5Qtk4aSrB14LJF06/C0GElQKBFoGV9uZAL0Zwiow=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Zc9zdBP/RIkgPw6iGV8EBu6kZGmiLZS7bX7Tvq0ScDNF3vRS7e5qFzorVT3iT9jAu
	 Yib32wRC4tYj+5d0GeT06qzQNmGxym666WQmiui+2/NEey1/Gg/GiYKgy3YhLVaD0q
	 UOnwA2d3m344LvWcehmblIh7tqRNcF4wTWeBXKJGpewE+YuwdImSr77FjZ+oRX4Q0D
	 zwt8OKNYx6TM8pXegVwnVBzcaMZlu89Am+QP4DGaO1zmBylu5+Wpr0gmUK2aWN7TK4
	 lbtUfggQVPNdeDk+McVb35g/PkAdfMSIbEayEb7biLokfmNF1lrZkOUgsDPHpUGN2b
	 dCg0vrhkr7Exw==
Date: Mon, 23 Nov 2026 11:03:14 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
	Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Frank Li <Frank.Li@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Abel Vesa <abelvesa@kernel.org>, mhi@lists.linux.dev,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 01/11] PCI: epf-mhi: Pass the actual number of MSI
 vectors to pci_epc_set_msi()
Message-ID: <awQPYjRQgf2fLMZk@ryzen>
References: <20261122-nord_ep-v1-0-6d8839ffa9aa@oss.qualcomm.com>
 <20261122-nord_ep-v1-1-6d8839ffa9aa@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261122-nord_ep-v1-1-6d8839ffa9aa@oss.qualcomm.com>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Sun, Nov 22, 2026 at 08:26:14AM +0530, Krishna Chaitanya Chundru wrote:
> Since commit f62da6e7270c ("PCI: endpoint: Align pci_epc_set_msi(),
> pci_epc_ops::set_msi() nr_irqs encoding"), pci_epc_set_msi() takes the
> number of MSI interrupts directly; the controller driver encodes it into
> the Multiple Message Capable field.
> 
> The MHI function driver still passes order_base_2(info->msi_count), which
> is now encoded a second time: for msi_count = 32 the controller advertises
> only 8 MSI vectors instead of 32.
> 
> Pass info->msi_count directly.
> 
> Fixes: f62da6e7270c ("PCI: endpoint: Align pci_epc_set_msi(), pci_epc_ops::set_msi() nr_irqs encoding")


As Sashiko already pointed out [1], this Fixes tag is wrong.

Please also reword the commit message, since it is based on the same
misunderstanding.

This matters for stable: commit 1bf5f25324f7 is in v6.5, but commit
f62da6e7270c is only in v6.16, so with the current tag, the stable
kernels in between would not get this fix.

The code change itself looks good to me.

[1] https://lore.kernel.org/all/sashiko-outbox-227654@kernel.org/


Kind regards,
Niklas

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
