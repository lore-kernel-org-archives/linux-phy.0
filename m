Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9753CA5FA1
	for <linux-phy@archiver.kernel.org>; Tue, 29 Sep 2026 13:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KTzqTG0q8Vkd43rqX5SxlfvkX5vBVHPcFrwDRHNB9Rk=; b=A1rQl3M6Wsupic
	+/Zj4QDiLBbkug2rBB2z6Zwc8S32L/FtQYAJAmG1K2LqtoUYTdYVmXs9B+rHaqae/eN6WrtuXxCa/
	7UzKlbkXpAvu6OG4JL0sN+DHD33MULXEshyhPnyzvWYyiGyyKIuaSJjB/9cDtUvj8UncPi7JLQLX7
	CJKdw8slpb3S21DyZMBn5dm38VwaN43PdvkR8d36//lDOAxHAchGWjy8nLZdF1WORv8hJbxvqOc4i
	BKUdodLRKaGSTi0HJ+Wtn20p1R/3uJ6mu6swuHAPDxOMqmHieUg4dG4ewaDS5haLwMs7th7DAYUM+
	lvSdyTj5JvLeMEcgSPbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBXud-00000003fxB-14Ab;
	Tue, 29 Sep 2026 13:30:27 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBXub-00000003fwl-1fmb
	for linux-phy@lists.infradead.org;
	Tue, 29 Sep 2026 13:30:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A8AF3412E7;
	Tue, 29 Sep 2026 13:30:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67FB61F00893;
	Tue, 29 Sep 2026 13:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790688624;
	bh=YddyNBlBeMGDVbqSqWAWeupeImPN1+vt/HIPaYWlt0Y=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=RIuUtXQ7pN1ntHH5E9SHtFiVxk4VlC3Lx05nbDdqWgnrCoGrr5Kaw9EB3EurZOqnd
	 ver7PIljjQDwRadvVv/c0J+hSkjXNlJWDffpZQLU4o93+0nCvAAl0Ux4SYrhGz087x
	 /Em+ZWodHWV8OvgVNkTQErGD8adcsGYl1RKaedB7Hpt6DTY+b0QeVKsaMmFWtR0wIy
	 1brTzz3b1fmLHV899/10+jQutIesNgOTsfOa5laHgSWmjnUC6CSWuXFwsRIMHGnLYv
	 HGMSS19MSaUoKNmt7xqQq6t+vM1Gswc7Xht5EjiEDmf4hpi5r6Q6EcIVHkhsOwMVNz
	 JNZ4Kdafpc/Lw==
Message-ID: <45963e29-f896-4e67-87ee-ac90131773e2@kernel.org>
Date: Tue, 29 Sep 2026 15:30:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: core: Use EOPNOTSUPP for disabled blob return value
To: Inochi Amaoto <inochiama@gmail.com>, Hans de Goede <hansg@kernel.org>,
 Niklas Cassel <cassel@kernel.org>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Minas Harutyunyan <hminas@synopsys.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Vinod Koul <vkoul@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Damon Ding <damon.ding@rock-chips.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-usb@vger.kernel.org,
 linux-phy@lists.infradead.org, Yixun Lan <dlan@gentoo.org>,
 Longbin Li <looong.bin@gmail.com>
References: <20260929084739.467082-1-inochiama@gmail.com>
From: Damien Le Moal <dlemoal@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20260929084739.467082-1-inochiama@gmail.com>
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

On 2026/09/29 10:47, Inochi Amaoto wrote:
> Currently, the phy subsystem uses ENOSYS for dummy blob functions,
> it does not reflect the function state correctly. As kernel already

s/function state/hardware capability ?

s/As kernel/As the kernel

> has EOPNOTSUPP for disabled blob function, replace ENOSYS with

What is "blob function" ? Are you talking about all the phy_xxx() functions?

> EOPNOTSUPP for a clear return value. Also adapt the return value
> changed in the following affect file:

s/affect/affected

> - ata/libahci_platform.c
> - drm/bridge/analogix/analogix_dp_core.c
> - usb/dwc2/platform.c
> - usb/dwc3/core.c
> 
> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>

The ata bits looks OK, but this still feels like a lot of churn for no
functional change since the error is an internal one that is not exposed to the
user, as far as I can tell. The code in many places also uses -ENODEV, so the
error returned does not seem to be consistent anyway.

-- 
Damien Le Moal
Western Digital Research

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
