Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A9F4C54E4C
	for <linux-phy@archiver.kernel.org>; Fri, 23 Feb 2024 12:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8vaO7V0xnTie3CCS2dyiBXWX9G2mca8m7wDbaS3P8HE=; b=qgpfpQXyVGZVlb
	H+OeULJJAi94H8Fu6MNpDHQ28UI4fAWbnbn7+yZWgck0eq3WgCnQaqVMd2t0uSJYzDuycYhlmWJWa
	6Ku+nX9QqgVLOUgafRg2lg4cvZ1fY14ECHHpN0HP13Eq7xIBBczzc6yu0LfpTzrTUtdtfDU4dfnp/
	ebF2ZzTLfdeIyBlEA8CKtLU6ILcaFytKJiCX7E1OSlAXegxJNdDWuNzvCYbKQ9N32qz/8O51Xvt8v
	/vSdhHv2s1hkKJiA49u8bvae0apvYl82gUCKfq70zit7UnXhaVk5WZP0H3BYL4X+ls0D5e9H2a6PO
	j8xKxZNAYWaTHs4Pepxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdV1g-00000009Pz8-3RJC;
	Fri, 23 Feb 2024 12:51:40 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdV1e-00000009Pyh-1c5Z
	for linux-phy@lists.infradead.org;
	Fri, 23 Feb 2024 12:51:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id AEEBECE2BCF;
	Fri, 23 Feb 2024 12:51:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDC6DC433F1;
	Fri, 23 Feb 2024 12:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708692696;
	bh=1lJXy4uKYL7pJq5F8Vo9jDbbuH8lfKzhYgyljzDs/n0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=evV+Boqp9I4YqNzKSjDSoquLBTJkguhMnylBUp+eSde9n7BkMk3q9Lg60i9e8XMX6
	 KnVD7vHyg/cySaCtEXVuP/bnIKdedXSHu565Z9tnXNSUs8YPe1xFIzRKuV5Lg0ZXQV
	 l5kazV2J2jYV5p1S+u6WGNhBVb5rBFr+fQm9xY0lkYDytbFklcGTP7cg/mrT3n3tmj
	 s3PjVAYReKFME7zw5SaGqKfCDkAiLyIE41BxO+3TiTxQhRYcsaiqUTsS88rk0XN1+O
	 AHCRTL2asQ7U5XUr+EIzkSF1syZ/XvtniJ/7iKjkLOcduxCRcGwgDdWDqckgm/Fjq3
	 7vD74+f1h5vkw==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1rdV1f-000000002l8-1Rm4;
	Fri, 23 Feb 2024 13:51:40 +0100
Date: Fri, 23 Feb 2024 13:51:39 +0100
From: Johan Hovold <johan@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Robert Foss <rfoss@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Vinod Koul <vkoul@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Kuogee Hsieh <quic_khsieh@quicinc.com>,
	freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 0/6] soc: qcom: pmic_glink_altmode: fix drm bridge
 use-after-free
Message-ID: <ZdiU2z8rzo542_Ih@hovoldconsulting.com>
References: <20240217150228.5788-1-johan+linaro@kernel.org>
 <170868613914.4029284.5549880672870201262.b4-ty@linaro.org>
 <3c4246b6-431a-442e-8ace-3b0d0e67743f@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3c4246b6-431a-442e-8ace-3b0d0e67743f@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_045138_804228_352A4CEA 
X-CRM114-Status: GOOD (  17.18  )
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

On Fri, Feb 23, 2024 at 12:03:10PM +0100, Neil Armstrong wrote:
> On 23/02/2024 12:02, Neil Armstrong wrote:
> > Hi,
> > 
> > On Sat, 17 Feb 2024 16:02:22 +0100, Johan Hovold wrote:
> >> Starting with 6.8-rc1 the internal display sometimes fails to come up on
> >> machines like the Lenovo ThinkPad X13s and the logs indicate that this
> >> is due to a regression in the DRM subsystem [1].
> >>
> >> This series fixes a race in the pmic_glink_altmode driver which was
> >> exposed / triggered by the transparent DRM bridges rework that went into
> >> 6.8-rc1 and that manifested itself as a bridge failing to attach and
> >> sometimes triggering a NULL-pointer dereference.
> >>
> >> [...]
> > 
> > Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-fixes)
> > 
> > [1/6] drm/bridge: aux-hpd: fix OF node leaks
> >        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=9ee485bdda68d6d3f5728cbe3150eb9013d7d22b
> > [2/6] drm/bridge: aux-hpd: separate allocation and registration
> >        (no commit info)
> > [3/6] soc: qcom: pmic_glink_altmode: fix drm bridge use-after-free
> >        (no commit info)
> > [4/6] soc: qcom: pmic_glink: Fix boot when QRTR=m
> >        (no commit info)
> > [5/6] phy: qcom-qmp-combo: fix drm bridge registration
> >        (no commit info)
> > [6/6] phy: qcom-qmp-combo: fix type-c switch registration
> >        (no commit info)
> > 
> 
> To clarify, I only applied patch 1 to drm-misc-fixes

Ok, but can you please not do that? :)

These patches should go in through the same tree to avoid conflicts.

I discussed this with Bjorn and Dmitry the other day and the conclusion
was that it was easiest to take all of these through DRM.

With Vinod acking the PHY patches, I believe you have what you need to
merge the whole series now?

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
