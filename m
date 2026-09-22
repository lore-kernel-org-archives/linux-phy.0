Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B56DC982F1
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 05:34:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MDb2G+DZeFQLoD/AA/mP5z5r//u0H2fkRYgYmtCNCgk=; b=miSOTTWK4Amqb9
	f6KF89Z4CA8OiWTlrk23syZw5+dIZCOpuXDwfnyxCw1c/kYwRzNdu3TrpAMNTMFdv8QsF7kAEFjWq
	eATiuCffy2+LQFdgm2bmVRLCE+kZCxpn36uy2iZ7jmEW5muvstuWjhND/5g3ELSmwGfnyxlx9bS54
	ZtZJnJ2D6ZjLomd4g9C3TVBuZY7DjneHjym1AhBmgZZ0w4pLmXtJrpMXA3kBZvu9SJywnJaJqQsr0
	BqwHBBFLVyF4p0Vxtne574pNXc+Njszn6h/DJgpnQ3XEXHMlJcqRAjD9s6q8y82i2EgjQWsNsf1Pj
	9ClUbF8gXFBqy+Dlhmvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8t9J-00000004Fo4-3dj4;
	Tue, 22 Sep 2026 05:34:37 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8t9I-00000004Fno-1oux
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 05:34:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5378C6022A;
	Tue, 22 Sep 2026 05:34:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 866421F0089E;
	Tue, 22 Sep 2026 05:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxfoundation.org;
	s=korg; t=1790055275;
	bh=yDg9zB+OcRSPGsH8sMFONNQJDzYQOBah6woULOymdfU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=1ozlkmqEZ5UoZqoZaKYxSNT7yfe/ybD/o1TG/HZHaD2MqlI6cQxlhIk0ozMIlLsBS
	 r8a8UP3pGxNFCAbY5cLCgQhr3gLBo0nEqZ2qbvlVePPFSXOn+OWDG3rFI8BLx76OTv
	 sB54JkYQk6I4b1ssxsK3Sc/J+VrgRTNfRIVT/oig=
Date: Tue, 22 Sep 2026 07:34:31 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Hans de Goede <hansg@kernel.org>, Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Minas Harutyunyan <hminas@synopsys.com>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Vinod Koul <vkoul@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Damon Ding <damon.ding@rock-chips.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-ide@vger.kernel.org,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [RFC PATCH 4/5] usb: dwc3: core: Adapt the return value changed
 for disabled blob
Message-ID: <2026092202-armband-avatar-0dd7@gregkh>
References: <20260922024724.191412-1-inochiama@gmail.com>
 <20260922024724.191412-5-inochiama@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260922024724.191412-5-inochiama@gmail.com>
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

On Tue, Sep 22, 2026 at 10:47:19AM +0800, Inochi Amaoto wrote:
> Check EOPNOTSUPP for disabled helper function as the change in phy core.

That says what, but not why.  And what "as the change" specifically?  Be
verbose please.

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
