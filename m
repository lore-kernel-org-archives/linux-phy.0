Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE1D1C4321E
	for <linux-phy@archiver.kernel.org>; Mon,  5 Dec 2022 16:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hcKhcOtmPiQNyjT+SwOr4PgGgycRAmRj/rnO5oHl8TE=; b=YeTzUJKhBIdBOV
	EyczT5nw3mGuuput4B8sgqlA+qrV0wbXoWn396om8ojozxFZxw/577rO2b2ARVLP/LfaB1LZWLQiF
	q3yQQwAu0Voc8p8lUnsgAVpNNbyngFUOb/o7Etf0KC+gd6lKO3GcxhTwTDOj5bOP4MD9or35yBw3H
	L0pSzygS+4gsePSZdzjRxusjSBQCSfXAN6YvpCr0At9FF30ugE7NFkWcQ9Ld8By2jDXf5NjXCunTD
	x6ABqGg8mxxRcXPzqMZJ02o3A5haElfpZhj2R0W74z1/jttjDXdRgWZQVxO6G/RxeDxFwE6i7EREl
	929ulSUE8EPGqT1FmvYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2EIE-006Seb-6j; Mon, 05 Dec 2022 16:26:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2EIB-006SdG-Va
	for linux-phy@lists.infradead.org; Mon, 05 Dec 2022 16:26:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id F0553611C8;
	Mon,  5 Dec 2022 16:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9690BC433D6;
	Mon,  5 Dec 2022 16:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670257566;
	bh=IXjbw3od9RX52LgJlY0q/QMMPB1bl3URr+bdkX9l9ow=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ABcF1w6j4l/W2nE40FUo6h9qxYW5EDKXgluAYok40DSQsdXi8xaBnr1imFdy7ZG6x
	 1Lu4aT39+UBc6krnJv3sC7WLYewF66c5sz+wdVkF4Xbf9uTgtNqZoYVW52U864zwXr
	 tTRpbqUMZITFNlCkfCI7l+qztQfbhGZdQgU+K2nMYChHUnlTrQ0GyEV4HCnxUL3t8g
	 9bkyOVFkvrvAzEsSLEwm//ICLlWBtO2QMH/ABI0faCHHGkj5QrkXpyl8q7JeS/i2Mh
	 bdabqDHQ6IwfKOZAxqmY4jaZqWHNHJ5fBbX2K9EhVWPLzOkj1XNTQc86BGEHAATWEx
	 9n+ANSlx+PACQ==
Date: Mon, 5 Dec 2022 17:26:00 +0100
From: Lorenzo Pieralisi <lpieralisi@kernel.org>
To: John Thomson <git@johnthomson.fastmail.com.au>
Cc: Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	=?utf-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] PCI: mt7621: add sentinel to quirks table
Message-ID: <Y44bmGfgEJNd8VhK@lpieralisi>
References: <20221104205242.3440388-1-git@johnthomson.fastmail.com.au>
 <20221104205242.3440388-3-git@johnthomson.fastmail.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221104205242.3440388-3-git@johnthomson.fastmail.com.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_082608_087041_9FFE07B3 
X-CRM114-Status: GOOD (  23.16  )
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

Always capitalize the sentence in the subject.

"PCI: mt7621: Add sentinel to quirks table"

On Sat, Nov 05, 2022 at 06:52:42AM +1000, John Thomson wrote:
> With mt7621 soc_dev_attr fixed to register the soc as a device,
> kernel will experience an oops in soc_device_match_attr

Can we reword this please ? What you are describing *exposes* the
bug but it is not describing the bug per-se.

The bug is related to a missing sentinel in the struct
soc_device_attribute array and that's true regardless of whether it is
actually triggered or not.

Please update the commit log promptly and I shall send it upstream.

Thanks,
Lorenzo

> This quirk test was introduced in the staging driver in
> commit b483b4e4d3f6 ("staging: mt7621-pci: add quirks for 'E2' revision
> using 'soc_device_attribute'"), and the staging driver was moved in
> commit 2bdd5238e756 ("PCI: mt7621: Add MediaTek MT7621 PCIe host
> controller driver") for the 5.16 kernel
> 
> Link: https://lore.kernel.org/lkml/26ebbed1-0fe9-4af9-8466-65f841d0b382@app.fastmail.com
> Fixes: b483b4e4d3f6 ("staging: mt7621-pci: add quirks for 'E2' revision
> using 'soc_device_attribute'")
> Signed-off-by: John Thomson <git@johnthomson.fastmail.com.au>
> ---
>  drivers/pci/controller/pcie-mt7621.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/pcie-mt7621.c b/drivers/pci/controller/pcie-mt7621.c
> index 4bd1abf26008..ee7aad09d627 100644
> --- a/drivers/pci/controller/pcie-mt7621.c
> +++ b/drivers/pci/controller/pcie-mt7621.c
> @@ -466,7 +466,8 @@ static int mt7621_pcie_register_host(struct pci_host_bridge *host)
>  }
>  
>  static const struct soc_device_attribute mt7621_pcie_quirks_match[] = {
> -	{ .soc_id = "mt7621", .revision = "E2" }
> +	{ .soc_id = "mt7621", .revision = "E2" },
> +	{ /* sentinel */ }
>  };
>  
>  static int mt7621_pcie_probe(struct platform_device *pdev)
> -- 
> 2.37.2
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
