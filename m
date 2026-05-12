Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE79ECD484E
	for <linux-phy@archiver.kernel.org>; Tue, 12 May 2026 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tO8Mc3/iZVBxjL2KysGM+5BAUmZ1w+v3ORvO2jI2aYs=; b=Wv7C6Q1HATc97J
	EP0zSIpUipc9FWQOSQ4fztdfM3YSGOjGfvoIj/58amRIGi7xQF2ZzfjZ9Yl4ZpkmmINwjTXdyATsr
	Cv1a6Oq6SzSWPv3tQLrXnyjJGJCQgurN4aU/3vKm8iDmN6pvDKvxO25W2eBiSVhLlG0pl2f4hHzO1
	MlpPcBBghxmfztPDW0lxfPVsQDgECCU7jSmfx3Gpg89gAUwJxiTczT4NM8IslyesrGVuxHWVCAWNW
	e22ElshdYhpKdw/dZaUOkEp5DTpB9s5Ut1PUFQSQOLmVXy2mC4pdbR58dc1FB849xWh3zRX9X4ETA
	ySfOPw73B7ab38aEPpkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMadF-0000000F3zs-1YI6;
	Tue, 12 May 2026 00:05:53 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMadD-0000000F3zi-3dpN
	for linux-phy@lists.infradead.org;
	Tue, 12 May 2026 00:05:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E13A56001A;
	Tue, 12 May 2026 00:05:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C095CC2BCB0;
	Tue, 12 May 2026 00:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778544350;
	bh=kkCpz9U5igBoWHQPg2g2DTIcrL6yoXTvmxVfC6APpmQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=E762EdsEUP7EeUzhirRq9i5MITTEaFNtN7TQO8/AG2hzT4JhP0YlYf5zWPMRW+vm9
	 vy8RE1eimM9ovu43s4LDcEBgeIJ1H1IJNYdY0SlvPlx94hODYdpj6g3MX6TrkSJhpB
	 eW3lcIEhn5mqC330gC482o9tc6f+sd0aqYEbXCPrFoGI5JwcoIbc3L69Y3areJiZsj
	 EAct2WD0Ehrl+YRpE3S7/PAl6v2sDGike04NBj1UZILhh5ScgIGsy8FExF4dVEiHaO
	 ccgLYIZX03UXYVZv8cLZwVaU4WYoRsLBn75inbCOBkjJ+NnQhvoY7g0hk8accfA67q
	 93jAypajenh7A==
Date: Mon, 11 May 2026 17:05:48 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni
 <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul
 <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Thierry
 Reding <thierry.reding@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Peter Chen
 <peter.chen@kernel.org>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-usb@vger.kernel.org
Subject: Re: [PATCH v1 0/6] Add support for Infineon/Intel XMM6260 modem
Message-ID: <20260511170548.0065fd07@kernel.org>
In-Reply-To: <20260511135703.62470-1-clamor95@gmail.com>
References: <20260511135703.62470-1-clamor95@gmail.com>
MIME-Version: 1.0
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

On Mon, 11 May 2026 16:56:55 +0300 Svyatoslav Ryhel wrote:
>   dt-bindings: usb: ci-hdrc-usb2: Document nvidia,external-control
>     property
>   usb: chipidea: tegra: Avoid controller/PHY init if bus is externally
>     controlled
>   dt-bindings: net: Document Infineon/Intel XMM6260 modem
>   net: usb: Add Infineon XMM6260 Baseband modem support
>   dt-bindings: phy: tegra: Document Nvidia Tegra XMM6260 PHY
>   phy: tegra: Add support for Nvidia Tegra XMM6260 PHY

You need to split this more on subsystem boundaries.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
