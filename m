Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEBDD606B735
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 08:39:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=go+IUTGp;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=ej68i5BY
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ptt9szUUUD8b43DUiMKc7e08GdA5e1ZnyXeWukZgTng=; b=go+IUTGpHfbYuAeHP4/uhy4zLA
	nPHVwC3d+QhNnMAQ6sswQeROEZCqQ6OroeRW284r90ArQKKPjwg5o4FvHQKxAjPxTOQNLUSOo+hwT
	8WQHJnBZMe9vY22yayPfVJS6e0JlNHauN1QIis2ei2THtzKk6MA7DSaGqb/Zn8UPvlEIdEOIN3HNj
	r26FIOdnXFDUQrnnOcD2z+13pIo+YrmF7kHa6Ur2jDz6aB6MEAjMo1b0K3Gr169EVmwp8gEM4iBSe
	W/e690O/jEwNGLmQaIC2qqOLyWCYpEPhVudweNKfaSzIZiiPKXAExchLSZkmIPdoe8VzC3GRsTgmj
	peHQjQOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQLP-00000009BRc-1Vmn;
	Thu, 12 Nov 2026 08:39:43 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQGk-000000099Cw-0AF5
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 08:34:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 55DFD65391;
	Thu, 12 Nov 2026 08:34:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F9131F00A08;
	Thu, 12 Nov 2026 08:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794472493;
	bh=Up5j8TzM0Yy5snipwPfxPFv5mWJlT3wquG3RxXthBZY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ej68i5BY75arsjTGasmRdWC+rEebnr8+zb6tSnR1zawq3K3rjE6cC2JMg0rROTEMw
	 TCfHAmVECuO7NZIi4gNwHXwxaDQaAFitEEeIGGhjYFteZ3vI0JhYbgJnsmraEWG45J
	 23o1qrSD9ZdNhujG66uaqYjANu0/DJ9+Mdw2AH9qbxz5gzxULF+4Rw1WWDYGOU69ar
	 Apf6lEFOKNSDA1hkN/l9O1K1txJ+8hDmwjbYRksRp6lda/Sdl1VIrozOzdXu2ZSvvx
	 1Kkqjajsw2B94RQhG/bbOrv5i61beVMaVkylBNLoxkszLalz425mEKgB4tZ7VTtJcx
	 IzYiZAZn1B7ug==
Date: Thu, 12 Nov 2026 14:04:49 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Wentao Liang <vulab@iscas.ac.cn>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	mani@kernel.org, mchehab+huawei@kernel.org,
	neil.armstrong@linaro.org, stable@vger.kernel.org
Subject: Re: [PATCH] phy: HiSilicon: Fix device node reference leak in
 hi3670_pcie_get_resources_from_pcie()
Message-ID: <avV6KSL8Q6vVHsrO@parshuram>
References: <20260917134144.2153731-1-vulab@iscas.ac.cn>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260917134144.2153731-1-vulab@iscas.ac.cn>
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 17-09-26, 13:41, Wentao Liang wrote:
> hi3670_pcie_get_resources_from_pcie() obtains the "pcie" child node
> with of_get_child_by_name(), which takes a reference on the node, but
> never releases it: both the "Didn't find pcie device" and the "Failed
> to get APB regmap" error paths, as well as the success path, return
> without calling of_node_put().
> 
> The node is only needed for the device lookup, so drop the reference
> right after bus_find_device_by_of_node().

We already have 1499f3d3407f ("phy: hisilicon: hi3670: Fix OF node and device reference leaks")

> 
> Fixes: 73075011ffff ("phy: HiSilicon: Add driver for Kirin 970 PCIe PHY")
> Cc: stable@vger.kernel.org
> Signed-off-by: Wentao Liang <vulab@iscas.ac.cn>
> ---
>  drivers/phy/hisilicon/phy-hi3670-pcie.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/phy/hisilicon/phy-hi3670-pcie.c b/drivers/phy/hisilicon/phy-hi3670-pcie.c
> index 87eac058a4bc..35e634279794 100644
> --- a/drivers/phy/hisilicon/phy-hi3670-pcie.c
> +++ b/drivers/phy/hisilicon/phy-hi3670-pcie.c
> @@ -570,6 +570,7 @@ static int hi3670_pcie_get_resources_from_pcie(struct hi3670_pcie_phy *phy)
>  	}
>  
>  	pcie_dev = bus_find_device_by_of_node(&platform_bus_type, pcie_port);
> +	of_node_put(pcie_port);
>  	if (!pcie_dev) {
>  		dev_err(dev, "Didn't find pcie device\n");
>  		return -ENODEV;
> -- 
> 2.34.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
