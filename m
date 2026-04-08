Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34487FD5F75
	for <linux-phy@archiver.kernel.org>; Wed,  8 Apr 2026 06:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=twSqtn1QF/B8isqMWii3YO7Nsunem7IuZug11sd9W8g=; b=L/6j9Km+SqNIoR
	1dBTR16mvvlhkJGVhHhBWGt72IYylw5gkj3/xQVf5Mp1A7uFhn/L0Vp5ta1CsOryGfwRSOAl+gLc1
	1s9fs1ha/W6uvfmL+WMauffpiefwHj50WTcBEP/kbYbMRevYUrn5dJONJNnToDZt+/DcaGBgFnhtU
	1dxGdARKzjxlaJzRoYmfNuHYIz/03lol7kLYidX9Uf6yIdLLrmDM1ppOivz4KeEj4aoi5JIg/eKz3
	gUSTtonHxd2K4Ww1PMIFp2qpZw02pL2oByjRwUpI8CYRPBc92w55WzfaDY8i02B54ivADi6lbqg7t
	hf9YO5vB90SnHJfY7olw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAMYp-00000008M18-2xj1;
	Wed, 08 Apr 2026 06:38:47 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAMYm-00000008M0h-23qq;
	Wed, 08 Apr 2026 06:38:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id AE51760123;
	Wed,  8 Apr 2026 06:38:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7327C19424;
	Wed,  8 Apr 2026 06:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775630322;
	bh=F5C8Khj7DpMvOKVUF26GhkolmJLJIPfPjUu2n/qWpsI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UQSdJzm4eO6CsxuDaJG33sr7UfkT9iUvvWpf5Pbvg9CGfy8vVw3x9tlrJDlrgK0Dl
	 HKlVeiCR5xhpBmJUR/Eg3j0SBFGSZlSKV2opkYwt0++zEdFCTAN+AvnSrp5IwW0tzH
	 zTHkhyYSGzPsSwVY+YnL9jKU5hm/dlBHmjrVCXWHRaQO6RdZ93h6emeRC96jfzMRgp
	 40r9gqQJWeiV5BMe6G1BP2200rSg6syrYybZjCbc1p2mC0XGOAq0rYxrKHkpBxwi7R
	 x4h8zopuXVJO85aASLARrjit/bkzoOy5q8lmTK+BC7ZfhBAjNXYIOLRtH98v5e7WV3
	 g3GOxgk0B24og==
Date: Wed, 8 Apr 2026 08:38:40 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
Cc: imx@lists.linux.dev, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, dri-devel@lists.freedesktop.org, 
	Alexander Stein <alexander.stein@ew.tq-group.com>, Dmitry Baryshkov <lumag@kernel.org>, 
	Ying Liu <victor.liu@nxp.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux@ew.tq-group.com
Subject: Re: [PATCH v21 0/8] Initial support Cadence MHDP8501(HDMI/DP) for
 i.MX8MQ
Message-ID: <20260408-accelerated-sturdy-skink-caaa3b@quoll>
References: <20260407-dcss-hdmi-upstreaming-v21-0-4681070ab82f@oss.nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260407-dcss-hdmi-upstreaming-v21-0-4681070ab82f@oss.nxp.com>
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

On Tue, Apr 07, 2026 at 02:31:24PM +0000, Laurentiu Palcu wrote:
> From: Sandor Yu <Sandor.yu@nxp.com>
> 
> Hi,
> 
> Since Sandor left NXP some time back, I'll be taking over this patchset
> and continue the upstreaming process from where he left off.
> 
> The patchset adds initial support for Cadence MHDP8501(HDMI/DP) DRM bridge
> and Cadence HDP-TX PHY(HDMI/DP) for Freescale i.MX8MQ.
> 
> I addressed all remaining reviewers' comments from v20 but I'm not sure
> whether Alexander's issue is still present. Alexander, let me know if
> you're still experiencing a black screen with this patch-set and I'll
> try to address it in the next revision.
> 
> --
> Changes in v21:
>  - Dropped "phy: Add HDMI configuration options" patch because it was
>    already merged separately;
>  - Rebased to latest linux-next (7.0-rc6) and fixed all issues
>    introduced by API changes in DRM;
>  - Addressed Maxime's comment on patch #5 and used debugfs file instead
>    of sysfs for printing firmware version;
>  - Addressed all Dmitry's comments: handled the
>    cdns_mhdp_mailbox_send_recv_multi() error, removed the RGB 10bit
>    unused code, added a dts property in order to get the bridge type (I
>    couldn't find another way to do it...);
>  - Dropped Krzysztof's r-b tag for patch #4 (which is now patch #3)
>    since I added a new property;

Whych property? You really are not supposed to add new properties at
v21. This means your binding was incomplete while being discussed for
~20 revisions.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
