Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C56BC00A5A
	for <linux-phy@archiver.kernel.org>; Thu, 19 Jan 2023 03:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IAeputsoe/1jQqjbAgNw/u2PJwNyCzQZzKdVqY6lWQo=; b=I/CgwrDZTQ7wBL
	znIH1UHSuHx3Gy9lxyQmCzAOsz2ssTMzjqTrCzmGOZs4Yx+TQzAH9Wu9jzQxh9RX/nm0U3huvyqnn
	W0DP57rsr3jIQ7hWSV07WvceuxKAkcnGe6i0xAimONFmMwX+ecTRwojqXCpJMjR2xp42sWcxvPhti
	eyxfZNLspr3puyZ53RNsA3TWdqyUMVf6GxzROMv2WJmh9nkx5D6iG29hBiyb7lFrKxAI9Qwp6iWjA
	YT3GjiWPDv57HzZQVbu8uabu0SxSQJ9N9DTChmtb3khNqpYr0ALs3igv0sikvxCH0YXRbIqHQs8mF
	2+E/UcWZUd7jQw/mOXeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pILbH-003IUo-Nc; Thu, 19 Jan 2023 03:28:27 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pILb7-003ITb-3g; Thu, 19 Jan 2023 03:28:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 05414B81FBE;
	Thu, 19 Jan 2023 03:28:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76FB9C433EF;
	Thu, 19 Jan 2023 03:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674098891;
	bh=lMuzsyB7e8AniltYWOXFa5R+/TsIeKzMyHeHn3aCSvc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=BnesivjNNEIR2PY0nE3+W390zdBF6/au9JB81quCZtyShxZsHAeBuBAu/ptA5hH6S
	 IUHJ+uLn8uawCyHagWpmdroT3ziU3cbw8YxPDBq2qDTqQihNAlWGSLNcELJPNXDFVk
	 xH09UGtb59Hr6Obuz162qaXttSXItvT0kkPhAFs42f9nTkarFf4IjITLMgDKrvXRd+
	 IQc3XrKY3B5ia7UB6SF3xnkhHZ7+RiWVMkr4X8Qbyzacyv3sXsev+Dmc3iVvq2otNA
	 HhwhflUmcYJdnPmyz/24HuA0hs6tDvpcDqIpV38bnsLcb0omLi/5ZajAwzkjUiA3OI
	 Nf9cu9ffhE1Hg==
Date: Wed, 18 Jan 2023 19:28:09 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Madalin Bucur <madalin.bucur@nxp.com>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni
 <pabeni@redhat.com>, Horatiu Vultur <horatiu.vultur@microchip.com>,
 UNGLinuxDriver@microchip.com, Thierry Reding <thierry.reding@gmail.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof =?UTF-8?B?V2lsY3p5xYRza2k=?= <kw@linux.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Jonathan Hunter <jonathanh@nvidia.com>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Alan Stern
 <stern@rowland.harvard.edu>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Siddharth Vadapalli <s-vadapalli@ti.com>, Russell King
 <linux@armlinux.org.uk>, netdev@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 1/7] phy: Add devm_of_phy_optional_get() helper
Message-ID: <20230118192809.2082b004@kernel.org>
In-Reply-To: <f53a1bcca637ceeafb04ce3540a605532d3bc34a.1674036164.git.geert+renesas@glider.be>
References: <cover.1674036164.git.geert+renesas@glider.be>
	<f53a1bcca637ceeafb04ce3540a605532d3bc34a.1674036164.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_192817_334389_E1F5D0D4 
X-CRM114-Status: UNSURE (   9.44  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Wed, 18 Jan 2023 11:15:14 +0100 Geert Uytterhoeven wrote:
> Add an optional variant of devm_of_phy_get(), so drivers no longer have
> to open-code this operation.

For merging could you put this one on an immutable branch and then
everyone can pull + apply patches for callers from their section?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
