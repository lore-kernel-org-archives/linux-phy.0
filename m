Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B071CC83F1A
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jul 2025 12:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o9KPNfcXtzBkgIT0WwD7PfKFP/h1QSjV1JS2A5+m2rM=; b=leek55v6NH/ET5
	0wzkyXd9UrqusW1ksCcu7B31iAK/rGrHoUf5hD/3+X4MClgbzgppYgkfdIyUXL27+kb3IKHD2HCWp
	FJMTLXI2l+b165J/hWrpWrhJ5HtHGcRaPYW8g4hxKPeBy/NIakuDvNUNXenbqrUdzUpZVjAcXxezQ
	sTuWW1NAG71Kv+5kbuz3WwZeA70UBMLG0eOMzqZvPcuH8dnwFSQ0GZl51O9MhwyT76RlTnFkT1Cmt
	3w4pkHhXAuyGnstdNnQ8s3w8PexSIS5jHo6xpi3bqEBRt4c4dW5EeT8gf/g2w2Y1gygv5m1SUJItH
	A1R1d4NJHlViUMv8dCMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueYzC-00000004x8c-1VDp;
	Wed, 23 Jul 2025 12:54:18 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueYZu-00000004uTI-1YYm
	for linux-phy@lists.infradead.org;
	Wed, 23 Jul 2025 12:28:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1A3045C5D06;
	Wed, 23 Jul 2025 12:28:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01C9FC4CEE7;
	Wed, 23 Jul 2025 12:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753273688;
	bh=AU+ZIa1G6D9rjfQjIunyEIntuf2L1dafuWtnlP0A0Pc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=n0oRYKzXdwPTrCEm2QRJLSnz9cuRDx/l0eBkDKDbxwoZNNrDW4AluzB+hvEtQBUNL
	 ak3lp+UelHKS+uCQ9HN6NpPvaIb/nMVT8LHrw4HHejvu9A4ncAYEaBeIUML6zvDxJs
	 +o5/FbTVAZMiaL3zoeTufZhN4EjozDAD9sVEcMHEWhk7/p8rw7WOvuwnm7hD829n3x
	 xxmgwjVsfExCyBCdAsR7GzjesrLC98Iqt/EXKORQTxSvk9ouIhtHl1jimjYrc3gtlq
	 gXYNf30B6pRllQQqJkD5rqDX3LWZj5rWP5Vr0Y6sMaWmUJck3gvXnzhTGXhW692twC
	 hMO91kswwrrAQ==
Date: Wed, 23 Jul 2025 17:58:05 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Cc: Jyri Sarha <jyri.sarha@iki.fi>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jayesh Choudhary <j-choudhary@ti.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Francesco Dolcini <francesco@dolcini.it>,
	Aradhya Bhatia <aradhya.bhatia@linux.dev>,
	Devarsh Thakkar <devarsht@ti.com>,
	Parth Pancholi <parth.pancholi@toradex.com>
Subject: Re: [PATCH v4 05/17] phy: cdns-dphy: Remove leftover code
Message-ID: <aIDVVRS0bcdjs5q_@vaman>
References: <20250618-cdns-dsi-impro-v4-0-862c841dbe02@ideasonboard.com>
 <20250618-cdns-dsi-impro-v4-5-862c841dbe02@ideasonboard.com>
 <aF3YgKoaLniqs1XC@vaman>
 <cd59d7b0-6b31-4cbd-93e8-df713a9210f6@ideasonboard.com>
 <b3af4b52-03e0-4e41-9666-a9af267f57b0@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b3af4b52-03e0-4e41-9666-a9af267f57b0@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_052810_454182_846F3D33 
X-CRM114-Status: GOOD (  18.49  )
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

On 23-07-25, 11:49, Tomi Valkeinen wrote:
> Hi Vinod,
> 
> (I accidentally sent my mail only to you. List added here).
> 
> On 23/07/2025 10:36, Tomi Valkeinen wrote:
> > Hi Vinod,
> > 
> > On 27/06/2025 02:32, Vinod Koul wrote:
> >> On 18-06-25, 12:59, Tomi Valkeinen wrote:
> >>> The code in cdns-dphy has probably been part of a DSI driver in the
> >>> past. Remove DSI defines and variables which are not used or do not
> >>> actually do anything. Also rename cdns_dsi_get_dphy_pll_cfg() to
> >>> cdns_dphy_get_pll_cfg(), i.e. drop the "dsi", as it's not relevant here.
> >>
> >> Acked-by: Vinod Koul <vkoul@kernel.org>
> >>
> > 
> > Are you fine merging the two cdns-dphy patches (this and 4/17) via drm
> > tree? I think that's the easiest way to merge this.
> > 
> > I could also drop the 5/17 patch from the series, as it's just a
> > cleanup, and it could be merged at some later point via phy tree.
> 
> Actually, I take that back. Devarsh also has some cdns-dphy patches,
> which depend on my patches. It could get messy.
> 
> There's no compile-time dependency, and my DRM series doesn't depend on
> the dphy changes even at runtime. I think it's best if I drop the dphy
> changes from my series and send them separately.

Okay sounds good to me.. Easier to handle that way

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
