Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41845C7EE3A
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jun 2025 00:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mw2E6W+YKzyh54RTbJKWjwqdvU4KiGj3QJ3+coRtqgw=; b=uLBHI9oBJBgKvN
	cxXMgcJFExTPHdY2Kpdctuc57hQaH89PC0dU3DahgCuJOOBX0FQ10jPCTwuupnJofot6pTeL2xbwf
	//NvKVNqEfTC4ixhPmibsyFeUb1ctWmvtYOJ7z+gM2xiJuJdXON/rMdzU8Td8L589rfWbjyeVDSu9
	7Py68GQdlUeA0yDmf9hb1L4NWeN8RHlywbeClXnXe2SLgWfzBnBz7CZG2cvTEK2+GyfXjG6DRyXaI
	kIpf9wS8XKnyE7c32P4xm5XaCat5b3fHrjBP5MA19YnSb00zwUuw+FBYQufPyC20rOOU2GwIyDATO
	0o0wTvHX4US1SBQCWJAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUx3V-0000000DDd3-05mU;
	Fri, 27 Jun 2025 00:35:01 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUw4n-0000000D42L-3IIw
	for linux-phy@lists.infradead.org;
	Thu, 26 Jun 2025 23:32:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 258CD5C63E5;
	Thu, 26 Jun 2025 23:32:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA556C4CEEB;
	Thu, 26 Jun 2025 23:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750980736;
	bh=p9T5tKbPyQn9WU/Ctj4Au9KigTyc9WURcP91i9yJwPg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PPmlCSmoLgBO0j/SIml3aZayN9reJ2oZPPNkIycp8F5PROgpVZ2ClK6knBSuobp3C
	 /CJ6DR6IbJqEhMD+I6HFWvSeCPTB4apGNMaqdd9VzKncvWmymd6bjm8AxinS4EqWzm
	 0VHsUFCyvkaxy3JjRVkXfHGt9TdC+HMJP2ovmI5EVccNvkjBcCItOvFHXD9DYZYpp9
	 7nPf60OAqsa6KsDpnj45VAhMEj/KRQoL+iem2n02bsC2MUiPOuZO5kny23ecJyAcOb
	 la/I1Txteu/H1XFFbJUyoHixZsLZbtfWEG7o3a0oxr689bbVYUWUX7HVj1L5Qfn2iy
	 01ZEtuwJP3v2Q==
Date: Thu, 26 Jun 2025 16:32:16 -0700
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
Message-ID: <aF3YgKoaLniqs1XC@vaman>
References: <20250618-cdns-dsi-impro-v4-0-862c841dbe02@ideasonboard.com>
 <20250618-cdns-dsi-impro-v4-5-862c841dbe02@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250618-cdns-dsi-impro-v4-5-862c841dbe02@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_163217_861836_5306B58F 
X-CRM114-Status: UNSURE (   6.98  )
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

On 18-06-25, 12:59, Tomi Valkeinen wrote:
> The code in cdns-dphy has probably been part of a DSI driver in the
> past. Remove DSI defines and variables which are not used or do not
> actually do anything. Also rename cdns_dsi_get_dphy_pll_cfg() to
> cdns_dphy_get_pll_cfg(), i.e. drop the "dsi", as it's not relevant here.

Acked-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
