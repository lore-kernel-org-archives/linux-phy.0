Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA8D3C3DA4A
	for <linux-phy@archiver.kernel.org>; Fri, 16 Aug 2024 22:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3iGrX6voix/2Et4wUkrlpGqyLQXMTu68PR/imNu1OvA=; b=ONYRZ9mPuW83vx
	zwDQGzgUNVa3d5J6SPTSlKr8mxo610qmgX5D0zfbf0JgUL6a9iVy8BU8DdVRKNapADF0k6MPowyAm
	BNp8gWrj5UnUN2dY7rWw5Danoo2OTPH97qdlmMCpqQCMyqXsQvNi6WRV1YfIPRZuOc0iiE6hOf3RC
	jaL2D/7xtaPiA7vf7/myes7emN7+LZJSCvj2vUlSCYNE05duajQjwD/gzz1YJgV4Og4iodBl+QdfQ
	sfyOEm6XFlkc+6ylMrDbD3twy9gj0bcbFK5Ynf6nolAxSvPq4/rq3OF4BBUL23Y9zLE4TgflPISS6
	eVMtdUH49vM0p2KrpYeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sf5dZ-0000000EDwP-1xyT;
	Fri, 16 Aug 2024 22:41:37 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sf5ct-0000000EDpl-2iju;
	Fri, 16 Aug 2024 22:40:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 1A270CE20AF;
	Fri, 16 Aug 2024 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25373C32782;
	Fri, 16 Aug 2024 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723848053;
	bh=35Gggnneu4ZsX1jEkgo7SKcrzozXMNAhO7CG53M/PLM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ObvEDYP4s28qGNh8+dScvtQ3Ge9sCUNL4/VV3ncRwmwDXEIFPv6kzzb90iIrspzSW
	 EejbsO1BKu1KaoXBZbgEtyGcoCJ1T4LRBhsygoJNItdS/T+MbrCPDxJA7JclCOFY1B
	 L16OOTLiroTpWEg/JscLQnGcHTwMy5XaJHqzJZCw7FP3qRdSDh7tysllljZybASaxb
	 3QLOA6dIrUbiWsz4Gi+TPm4S8JXNv/AYFc7Uh8zZBxN5alUkdG06aX5tJdW9BGq7rf
	 LGVXI6/pW3Bn5W7hVb12D2VK712CXwf1HqZ9X1hsgyiFpm9ivGRPMk4Sc/BzEx6Nrb
	 E7Ku3h0izOk7Q==
Date: Fri, 16 Aug 2024 16:40:52 -0600
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
Subject: Re: [PATCH v3 03/19] dt-bindings: display: imx: Add i.MX8qxp Display
 Controller display engine
Message-ID: <20240816224052.GD2394350-robh@kernel.org>
References: <20240724092950.752536-1-victor.liu@nxp.com>
 <20240724092950.752536-4-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240724092950.752536-4-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_154055_880866_401D9850 
X-CRM114-Status: UNSURE (   9.11  )
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

On Wed, Jul 24, 2024 at 05:29:34PM +0800, Liu Ying wrote:
> i.MX8qxp Display Controller display engine consists of all processing units
> that operate in a display clock domain.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v3:
> * No change.
> 
> v2:
> * Drop fsl,dc-*-id DT properties. (Krzysztof)
> * Drop port property. (Krzysztof)
> * Fix register range sizes in example.
> 
>  .../imx/fsl,imx8qxp-dc-display-engine.yaml    | 152 ++++++++++++++++++
>  1 file changed, 152 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-display-engine.yaml

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
