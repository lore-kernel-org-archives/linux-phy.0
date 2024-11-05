Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8929ED3176C
	for <linux-phy@archiver.kernel.org>; Tue,  5 Nov 2024 17:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3eFMK0+Fot0Xf7DMORy8cR9W3itYu9SrIKlxznebj0=; b=vUHDtjCIW4fwlM
	rjf4mwe5ywoUN/tFOD0z9YOk4JSQ+7eZBPnlM2TdrMjQGMjzuQtcFz51AESwrUUNqvcmyj7tapGKM
	AbSrrKVDVj+2+rMb8ElHspRlsGD6DZefSQWnQGsSRnUUc9rOMJXFUsex8o0QngA0dqUGhyJdPRXca
	18HAolLGGHppAxir9h5W+uTUHJeH8Nc5uBT1anqi+tTpqk+9b5mSh7zBsDsMnOOqB4+wCSIVgewUl
	0NfLZBE4SVLpxhcpbGvg2TkOL7mVad+A/WOTJQ11rpUbkIAiadc/LlRU/dzCiMX+wqrL2swoep4RP
	TCJI/d/mg4ot8RMkjxRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8NOJ-00000000DPB-1af6;
	Tue, 05 Nov 2024 17:30:55 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8NE8-00000000Bpd-0zwL
	for linux-phy@lists.infradead.org;
	Tue, 05 Nov 2024 17:20:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 020205C48DC;
	Tue,  5 Nov 2024 17:19:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AAE2C4CED3;
	Tue,  5 Nov 2024 17:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730827223;
	bh=4EphDwlB93fryLV684UsXTDR+tsiWXh3MZULEaeECgc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hVId1WOnPB4KLt2b8bD7Y0AfWtQ9cPwhKdeiN8Bnz6aVBuCCR9dM++u1pB/+F87FU
	 DQrHMeVX5Z9jrqqcz/RB5jPUoY5OPI5dysenSfSrZjfSYYesb7Zz1Z2aRwXgz6Z2b6
	 JFXCXVPLzLZ3y3ciRPDQvDu2c0H/h06j99w/tfBQPOqRB2N7wLNfF2BGD1pB26zdYG
	 Nlo+L0v0oOIOUS6wZ/Kyr1TeiBcV9WptVRuRgmhl0tH/kLGeQVgdPUwkQFu8IWbXUj
	 v7wppB+BtgW9kyHDvpbzgemLqcyhKBow8ckXLFjG8FxWRkbKih69uIcaYJYhO3UWA3
	 5txkaDCh2PVbg==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1t8NE7-000000000E4-1s3b;
	Tue, 05 Nov 2024 18:20:23 +0100
Date: Tue, 5 Nov 2024 18:20:23 +0100
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
Subject: Re: [PATCH v4 4/6] phy: core: Fix an OF node refcount leakage in
 _of_phy_get()
Message-ID: <ZypT18RpHSd_Vb-o@hovoldconsulting.com>
References: <20241102-phy_core_fix-v4-0-4f06439f61b1@quicinc.com>
 <20241102-phy_core_fix-v4-4-4f06439f61b1@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241102-phy_core_fix-v4-4-4f06439f61b1@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241105_092024_383762_05B7C657 
X-CRM114-Status: GOOD (  21.42  )
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

On Sat, Nov 02, 2024 at 11:53:46AM +0800, Zijun Hu wrote:
> From: Zijun Hu <quic_zijuhu@quicinc.com>
> 
> _of_phy_get() will directly return when suffers of_device_is_compatible()
> error, but it forgets to decrease refcount of OF node @args.np before error
> return, the refcount was increased by previous of_parse_phandle_with_args()
> so causes the OF node's refcount leakage.
> 
> Fix by decreasing the refcount via of_node_put() before the error return.
> 
> Fixes: b7563e2796f8 ("phy: work around 'phys' references to usb-nop-xceiv devices")
> Cc: stable@vger.kernel.org
> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
> ---
>  drivers/phy/phy-core.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index 52ca590a58b9..3127c5d9c637 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -624,13 +624,15 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
>  	struct of_phandle_args args;
>  
>  	ret = of_parse_phandle_with_args(np, "phys", "#phy-cells",
> -		index, &args);
> +					 index, &args);

This is an unrelated change which do not belong in this patch (and even
more so as it is a fix that is marked for backporting).

>  	if (ret)
>  		return ERR_PTR(-ENODEV);
>  
>  	/* This phy type handled by the usb-phy subsystem for now */
> -	if (of_device_is_compatible(args.np, "usb-nop-xceiv"))
> -		return ERR_PTR(-ENODEV);
> +	if (of_device_is_compatible(args.np, "usb-nop-xceiv")) {
> +		phy = ERR_PTR(-ENODEV);
> +		goto out_put_node;
> +	}
>  
>  	mutex_lock(&phy_provider_mutex);
>  	phy_provider = of_phy_provider_lookup(args.np);
> @@ -652,6 +654,7 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
>  
>  out_unlock:
>  	mutex_unlock(&phy_provider_mutex);
> +out_put_node:
>  	of_node_put(args.np);
>  
>  	return phy;A

With the above fixed:

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
