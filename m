Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E3A9C02194
	for <linux-phy@archiver.kernel.org>; Thu,  6 Feb 2025 16:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1KW+vq8QTy62ecooKEBs/J71/bCJ9g8zxZ29soYHY0Q=; b=vcM2JKHYS7Husn
	mCWP+pm1M6dBhH0xe85rFiboe8FrWHNp8sEEV2S+lKhWX89Aa50vuHir+WEsIKjIfzGfCM69LHQpg
	DaeKhV0t35riju46pY993rtrzESfm1+2tYGrXsVNJGNMJuVUt3muGme7b2nTZ3/TiufcL1c8pypPE
	H/08x6BaL5n0mH7mOVAeWPyj2CfSPpuhY7qAf1bzmNZjPpzldkK+NaRzjooal1Kv3FfKgNka+HVFw
	m9SUlVoHoFjCE26IpMh9mYehFrQswwJxltpBvIztGJ8bD+J9xwpW4PLl7Td3Jw1YzLDP8Np9LjFed
	iHbx2db/H/xfA6H2tcug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tg4rW-00000006sbT-0Swf;
	Thu, 06 Feb 2025 16:36:22 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tg4q8-00000006sPj-02p4;
	Thu, 06 Feb 2025 16:34:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BD5485C6568;
	Thu,  6 Feb 2025 16:34:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD1F8C4CEDD;
	Thu,  6 Feb 2025 16:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738859695;
	bh=+ivOAUv3shutbdSTgc0/oz/8/mZOlkgY1F9fFkCvfs0=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=gu7zYGA5Ha68MTmNlxhrXGN574w4P+3IrB6nJY6x6RCRin7jR2+BUffeyQCVyQg67
	 oW8ak31pVFpVSGXhsDClOI6YtrD9/qezzRzEzmcd8/D3NYzad4cZ4fi0eOvJ/494Cw
	 wPBO3uhkBDiaiU86eCnw57sqaxpHrVavnOJSTKLEadIx3e+n66hfBaexQQsJhQVzUV
	 JhnaBJF471QlXMkwrEvInOngEHEi+lb6wG+HhT+sPwpw2njYwbp2aNjLOVvl+MoRzE
	 4gdu9o8kDKwg4EJknCp+ftTdP9XhRKP+3WkWfJ7HAudTs0YHUXTb1wirn7KFRcHVKM
	 eBG+69YkGgOZw==
Message-ID: <895aa2097cb7e57560c70ca53aba4abb@kernel.org>
Date: Thu, 06 Feb 2025 16:34:52 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Liu Ying" <victor.liu@nxp.com>
Subject: Re: Re: [PATCH v8 13/19] MAINTAINERS: Add maintainer for i.MX8qxp
 Display Controller
In-Reply-To: <7a03ebbf-5ee3-45d3-a58c-8832bd0f8960@nxp.com>
References: <7a03ebbf-5ee3-45d3-a58c-8832bd0f8960@nxp.com>
Cc: agx@sigxcpu.org, airlied@gmail.com, aisheng.dong@nxp.com, conor+dt@kernel.org, devicetree@vger.kernel.org, dmitry.baryshkov@linaro.org, dri-devel@lists.freedesktop.org, festevam@gmail.com, francesco@dolcini.it, frank.li@nxp.com, imx@lists.linux.dev, kernel@pengutronix.de, kishon@kernel.org, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, maarten.lankhorst@linux.intel.com, mripard@kernel.org, p.zabel@pengutronix.de, robh@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org, simona@ffwll.ch, tglx@linutronix.de, tzimmermann@suse.de, u.kleine-koenig@baylibre.com, vkoul@kernel.org, "Maxime
 Ripard" <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250206_083456_098382_E33E7891 
X-CRM114-Status: UNSURE (   5.08  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Wed, 5 Feb 2025 10:39:10 +0800, Liu Ying wrote:
> Hi Dmitry, Maxime,
> 
> On 12/30/2024, Liu Ying wrote:
> > Add myself as the maintainer of i.MX8qxp Display Controller.
> > 
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
