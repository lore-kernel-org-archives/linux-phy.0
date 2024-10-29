Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98BD5D5B17B
	for <linux-phy@archiver.kernel.org>; Tue, 29 Oct 2024 14:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7OkVHIuAezmegQpe0AF5Y3tm0QcoyHj7wK97/nVgAhM=; b=kEs7AsU0JXxt1z
	OeEqePuL0RcDpXDRcAes8N0HyqUsVFqTLofaFZroKTQ5TAzCW4Hn7r5HTp5eUQn8z51250VbyT26U
	bcy531Q2oY2jsrjTbwvGTophhsCBDZCoiFEJUpVSskDNHnjX+fxQHfIPWj/2yrxxI582a/iqigqJT
	PdzELbiucvCT3wuHcWWwm/G7cN6xUKILf1+WWcvb4z8tzxNQ3q7QWsgh1Rn7xuy1ik2cO4RrDyCVD
	+QwOs7inDfNA0POfkRd0l3D/4YQ4stZWLUy5BAEabUr2sm3AMlFiV3MmMQydJJzerACLggu9uP7DU
	4GVgHB1ZogfBQEKHB7/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5mua-0000000EgSb-1Qqn;
	Tue, 29 Oct 2024 14:09:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5mYy-0000000EcYz-4A3B
	for linux-phy@lists.infradead.org;
	Tue, 29 Oct 2024 13:47:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5CB135C5E66;
	Tue, 29 Oct 2024 13:46:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11E1EC4CECD;
	Tue, 29 Oct 2024 13:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730209632;
	bh=KEQem3GuAcK/dyUVeI9paTDkYNzz2c637THBwlYhUd8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bJkp2CJYS4BqKoZSVbPb8U9xdsDI5BZ0ocj+JkurZSYlkp9bbpzg0xL02GrK/3QuP
	 1jatkq9w62FKp/NAECrxdp1olj8GcYLaQqincZ86b/wDa3/kbqqFTsCJo90e4Mmab3
	 SYsQf7apzYVGzIW8TtkXjYI8gIsHbGZcf7pKW/OkHSLwyLjlyibQ0yPoB8ZcM9ubdc
	 GU5KkUKxKqXR7VOpkuHCD/7xrDKLwwwqusMrTKqXVgC9SLiDQXpMSVtcKRphycLAr7
	 T6HijRH5UfsLYVq0UKuWKFSntaxmxZ+uxnn251AW222Dutzrh+QQSGX4BMCkZtL3Bz
	 pkdGEmjRamRIg==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1t5mZH-0000000034N-2ieg;
	Tue, 29 Oct 2024 14:47:31 +0100
Date: Tue, 29 Oct 2024 14:47:31 +0100
From: Johan Hovold <johan@kernel.org>
To: Zijun Hu <zijun_hu@icloud.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Felipe Balbi <balbi@ti.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Lee Jones <lee@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	stable@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>
Subject: Re: [PATCH v2 4/6] phy: core: Fix an OF node refcount leakage in
 _of_phy_get()
Message-ID: <ZyDnc7HpMTnwEs-2@hovoldconsulting.com>
References: <20241024-phy_core_fix-v2-0-fc0c63dbfcf3@quicinc.com>
 <20241024-phy_core_fix-v2-4-fc0c63dbfcf3@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241024-phy_core_fix-v2-4-fc0c63dbfcf3@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_064713_104262_94627569 
X-CRM114-Status: GOOD (  19.74  )
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

On Thu, Oct 24, 2024 at 10:39:29PM +0800, Zijun Hu wrote:
> From: Zijun Hu <quic_zijuhu@quicinc.com>
> 
> It will leak refcount of OF node @args.np for _of_phy_get() not to
> decrease refcount increased by previous of_parse_phandle_with_args()
> when returns due to of_device_is_compatible() error.
> 
> Fix by adding of_node_put() before the error return.
> 
> Fixes: b7563e2796f8 ("phy: work around 'phys' references to usb-nop-xceiv devices")
> Cc: stable@vger.kernel.org
> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
> ---
>  drivers/phy/phy-core.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index 52ca590a58b9..967878b78797 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -629,8 +629,11 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
>  		return ERR_PTR(-ENODEV);
>  
>  	/* This phy type handled by the usb-phy subsystem for now */
> -	if (of_device_is_compatible(args.np, "usb-nop-xceiv"))
> +	if (of_device_is_compatible(args.np, "usb-nop-xceiv")) {
> +		/* Put refcount above of_parse_phandle_with_args() got */

No need for a comment as this is already handled in the later paths.

> +		of_node_put(args.np);

For that reason you should probably initialise ret and add a new label
out_put_node that you jump to here instead.

>  		return ERR_PTR(-ENODEV);
> +	}
>  
>  	mutex_lock(&phy_provider_mutex);
>  	phy_provider = of_phy_provider_lookup(args.np);

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
