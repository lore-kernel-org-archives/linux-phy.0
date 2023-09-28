Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7919CE7B1F
	for <linux-phy@archiver.kernel.org>; Thu, 28 Sep 2023 19:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8aTA6rLzcsMjZYcwXn9ExMpN43EZZg0wWR3tyZ7jZjw=; b=w27dYQUhwGWSnU
	tPZIhpNZrTQnQBiSZXi3FpKFWEtGlmDxVYfA5KMbMcasZcIHZUQeUNCHYwvFLVQUJ4OFDs1yOPohO
	8pIvOpR/wPsl3Qh4A0L8D4qzWDtiyxqGrhog7cmIr3fRvNqQASmfQB/9tIFRgJocWYcs7WFvhY4ag
	+FwL1XzjNfK9gjleixM/N6kv6QtPiimE0OAzHVt+mdz02NVxY7RN+sspI65IEQPBEuweCngSVw8g0
	udKMLnRuKPr5GFTAvpCASWuglsVPj2NmAYzJ3XRMMBcYUUJj8JViItSyBwdUMFc+Vp+Zc7zRvEGj+
	TnGicvBBsrl9ZVCaTSIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlwKg-006YYf-0v;
	Thu, 28 Sep 2023 19:05:54 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlwKa-006YXY-1D
	for linux-phy@lists.infradead.org;
	Thu, 28 Sep 2023 19:05:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 78D81CE19F9;
	Thu, 28 Sep 2023 19:05:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3BEAC433C7;
	Thu, 28 Sep 2023 19:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695927945;
	bh=hL+1NK7FhszHgz8oD0fZO4rkoqzQEsWg3x3hhHFUDiE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D5RF0CV+X6PZ2UnKfF1cHF0YRVn39sT/fWwmRXYooWHxcmtRfB3Pzkh3H2SXVWzDK
	 hOxEwwX8zPxXSRo+nXVuHXZF9uCGZwEZ6m3OTiBlR69wgxpSgERc0v+wlxEAEr59KS
	 BdQHOnTrmj1EGypvPQozajvkpiL4Q9I14qQvIwl3tcuL2tvZD1jvxxuOgLi5Jrcsuo
	 xDw5ORw6S9vV08RvCLEGmVSepCLo+YMUoaqOssAzZfxjd7/Xh9YAsYf9AsKo3Zv/vv
	 WAGeKLgkgQzr6RuMmGMoxP9uHdb1dZzLt7RnDAxU8f+O5yW+zUd8r5Zs5MCyNqw9O1
	 slQ1GCspCCBPw==
Date: Thu, 28 Sep 2023 21:05:36 +0200
From: Simon Horman <horms@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Madalin Bucur <madalin.bucur@nxp.com>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Camelia Groza <camelia.groza@nxp.com>, Li Yang <leoyang.li@nxp.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor@kernel.org>,
	Sean Anderson <sean.anderson@seco.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Subject: Re: [RFC PATCH v2 net-next 03/15] phy: ethernet: add configuration
 interface for copper backplane Ethernet PHYs
Message-ID: <20230928190536.GO24230@kernel.org>
References: <20230923134904.3627402-1-vladimir.oltean@nxp.com>
 <20230923134904.3627402-4-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230923134904.3627402-4-vladimir.oltean@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_120549_097491_6B37FDA1 
X-CRM114-Status: GOOD (  12.18  )
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

On Sat, Sep 23, 2023 at 04:48:52PM +0300, Vladimir Oltean wrote:

...

> +/**
> + * coef_update_opposite - return the opposite of one C72 coefficient update
> + *			  request
> + *
> + * @update:	original coefficient update
> + *
> + * Helper to transform the update request of one equalization tap into a
> + * request of the same tap in the opposite direction. May be used by C72
> + * phy remote TX link training algorithms.
> + */
> +static inline enum coef_update coef_update_opposite(enum coef_update update)

Hi Vladimir,

another nit from me.

Please put the inline keyword first.
Likewise elsewhere in this patch.

Tooling, including gcc-13 with W=1, complains about this.

> +{
> +	switch (update) {
> +	case COEF_UPD_INC:
> +		return COEF_UPD_DEC;
> +	case COEF_UPD_DEC:
> +		return COEF_UPD_INC;
> +	default:
> +		return COEF_UPD_HOLD;
> +	}
> +}

...

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
