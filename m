Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 203E3C3DA5D
	for <linux-phy@archiver.kernel.org>; Mon, 22 Jul 2024 23:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B6ALasuQcp6+I4/W1nT1VmXO8ra8wXtDxa0n9jzp/gk=; b=ef/viP7l6bxg2p
	ytgFuetHcB5W0VFfy0i5QwZlu87EZ+WTL1bgDULsJmVPPj505osHk/Cf43HW0Yms7O4MWKfIQUUY0
	qfa/Bucecb785yElCtJKBuM06UmnonaUdpgP9DvuRBfvrVLaWOarENnGLsdT/ZdxLSfnBYdY5ksWy
	Q1LDGjLqyq65MeLR5Nke0ptsPt99OITN8DqUD/IjDdt8e4FrIU/gf7VZ18zl/U/dyWHaxk45BbUwx
	cxz4QJMsyfQl44wOPun6A4yveayBQS2LzXKh5M6oJwHPjVMxeldhMnby5PubEvQMa171d2WUFiUTZ
	wGMk8bDY1IOlq+xzcnzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sW2AQ-0000000ApdV-3WIX;
	Mon, 22 Jul 2024 23:10:06 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sW2A3-0000000ApYM-0dGd;
	Mon, 22 Jul 2024 23:09:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 59F4E60B33;
	Mon, 22 Jul 2024 23:09:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 339C4C116B1;
	Mon, 22 Jul 2024 23:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721689782;
	bh=NGlE/zK3V8uU4SAbTwuzZ3cIuKp+b5xQHGxqVgK0RKE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C3il9FYo6wStywXVPl8yU57lWzdCYNYl4/jUfDVPP3/tWLAESEHiwAlOtnRbvmcRm
	 nagASD7zR+VkU8RDuvFUMUkIfG2dYhkEbyuUqYbImi/Ec9B12Cp415sWUnSm95Q214
	 ol1FtEwWHwTsNXsAwzJSryPP9/pEdsva0p+H4XAdCq0rcl3dmy6IJHMHiZrN6LHj5e
	 2JelYGpV4iJwiGGsmo/KvrtkPYjym/YkVFUjzlySGeYyRekvUtg3AW+Bv945Vh/nJE
	 LHGBNnwZRxhGzH5Hg0i/tghY8hjJSm0zlKpIhXgigd8/gDZUy3s+KiwZw7UmYdt1VN
	 iB8EdYy9z6rtA==
Date: Mon, 22 Jul 2024 17:09:34 -0600
From: Rob Herring <robh@kernel.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, krzk+dt@kernel.org, conor+dt@kernel.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, tglx@linutronix.de, vkoul@kernel.org,
	kishon@kernel.org, aisheng.dong@nxp.com, agx@sigxcpu.org,
	francesco@dolcini.it, frank.li@nxp.com
Subject: Re: [DO NOT MERGE PATCH v2 11/16] dt-bindings: phy:
 mixel,mipi-dsi-phy: Allow assigned-clock* properties
Message-ID: <20240722230934.GA233475-robh@kernel.org>
References: <20240712093243.2108456-1-victor.liu@nxp.com>
 <20240712093243.2108456-12-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240712093243.2108456-12-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_160943_275906_5B994926 
X-CRM114-Status: GOOD (  13.40  )
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

On Fri, Jul 12, 2024 at 05:32:38PM +0800, Liu Ying wrote:
> assigned-clock* properties can be used by default now, so allow them.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v2:
> * New patch as needed by MIPI/LVDS subsystems device tree.

Seems like this could go on its own, but if you don't want it merged 
then I don't need to review it.
> 
>  .../devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml          | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml b/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml
> index 3c28ec50f097..286a4fcc977d 100644
> --- a/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml
> @@ -72,11 +72,6 @@ allOf:
>            contains:
>              const: fsl,imx8qxp-mipi-dphy
>      then:
> -      properties:
> -        assigned-clocks: false
> -        assigned-clock-parents: false
> -        assigned-clock-rates: false
> -
>        required:
>          - fsl,syscon
>  
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
