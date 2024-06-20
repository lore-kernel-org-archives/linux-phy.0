Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4B05C27C79
	for <linux-phy@archiver.kernel.org>; Thu, 20 Jun 2024 16:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kO9NfzTJ8IzrLHxjvO935lp5c841LOnC/TCiCpw+9nw=; b=KQzb4jxNoIgAih
	JpemVIEtKDOkMyHMHlc4REfrSw0julbexygWj2OjnVHC3eBGWk1HPCgE4FceQzkdSKmLs3wk4CL8e
	mL4qfnA4iUcOJLg+XflAlu0v4S9WwFYTkUBvEKwLH4rOQqrRME6Vj3a2VwZYx3qysQkli9hun71E0
	YyXdXrMDH6f/NSx13ZEWsT1i4ca4aOK0DKE14UWKptDZCeuuOE6vUgf2Yu0+M9rvlR5Hj8NgIfW/D
	Q2eP/7APa+/12zfoaK1qZy4DMGQRiiYonXISbWZe6M2Xhp/44W7lsreqNwmY0PnIb9bW+8oyrXA3x
	RtKJtmP7iqBB9RCEm7ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKKm5-00000005taU-2K3d;
	Thu, 20 Jun 2024 16:36:37 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKKm1-00000005tYj-2lsD;
	Thu, 20 Jun 2024 16:36:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8F71E621F3;
	Thu, 20 Jun 2024 16:36:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DCBDC2BD10;
	Thu, 20 Jun 2024 16:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718901391;
	bh=n/wJMdVVW764EMyC9g1orsXzaXY8/n571R9I+PD3W3I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lfTvYjMIL5ljrgcqoGOQtmrldMne0zWfSmrp3OAAQdE2DjqUwSnn6XNdMaL/SHW4u
	 rlZWCjsf5PUlDzvO+7td+8+GageNcyvMKkhV4xMuov+Oj18ytAWXotafT+RKDiiusH
	 H+FYLsbLH1bPbpNOAMoox2GaT53eujW8PUO9wLF4g04/HuiR71MsqurE53Pf2Zt0qF
	 HewvG7DLabtX9ul8DhHAy7/sNjmlRXFp3pFSzGxR5dUoekzAY6z6aPfquacjBwmqUZ
	 hYUpGsSnfmb/apiM3lV3Es15yOH//gAy4oVr8sWaT/oRlr7yKwweRbbDzmNzoRBplf
	 zRg+dxs7TR0lw==
Date: Thu, 20 Jun 2024 22:06:26 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Cc: Richard Zhu <hongxing.zhu@nxp.com>, conor@kernel.org, kishon@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	frank.li@nxp.com, conor+dt@kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de, imx@lists.linux.dev
Subject: Re: [PATCH v7 2/2] phy: freescale: imx8qm-hsio: Add i.MX8QM HSIO PHY
 driver support
Message-ID: <ZnRailvwM1hMtyFD@matsya>
References: <1716962565-2084-1-git-send-email-hongxing.zhu@nxp.com>
 <1716962565-2084-3-git-send-email-hongxing.zhu@nxp.com>
 <2f15baba-68b5-4e99-bdb5-6d2e05b7688b@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2f15baba-68b5-4e99-bdb5-6d2e05b7688b@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_093633_789310_5FF3B972 
X-CRM114-Status: GOOD (  12.71  )
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

On 20-06-24, 09:30, Guenter Roeck wrote:
> On Wed, May 29, 2024 at 02:02:45PM +0800, Richard Zhu wrote:
> > Add i.MX8QM HSIO PHY driver support.
> > 
> > i.MX8QM HSIO has three lane PHY instances, and can be bound to the
> > following controllers in the different use cases listed in below table.
> > - two lanes capable PCIEA controller.
> > - one lane PCIEB controller.
> > - AHCI SATA controller.
> > 
> > i.MX8QM HSIO PHYs support the following use cases.
> > +----------------------------------------------------+
> > |                               | Lane0| Lane1| Lane2|
> > |-------------------------------|------|------|------|
> > | use case 1: PCIEAX2SATA       | PCIEA| PCIEA| SATA |
> > |-------------------------------|------|------|------|
> > | use case 2: PCIEAX2PCIEB      | PCIEA| PCIEA| PCIEB|
> > |-------------------------------|------|------|------|
> > | use case 3: PCIEAPCIEBSATA    | PCIEA| PCIEB| SATA |
> > +----------------------------------------------------+
> > 
> > Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> > Reviewed-by: Frank Li <Frank.Li@nxp.com>
> 
> Building alpha:allmodconfig ... failed
> --------------
> Error log:
> drivers/phy/freescale/phy-fsl-imx8qm-hsio.c: In function 'imx_hsio_set_mode':
> drivers/phy/freescale/phy-fsl-imx8qm-hsio.c:459:15: error: implicit declaration of function 'FIELD_PREP'

It should be fixed in -next tomorrow. I have applied a patch for that

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
