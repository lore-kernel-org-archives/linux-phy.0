Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AE78C54798
	for <linux-phy@archiver.kernel.org>; Thu, 22 Feb 2024 16:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8uRi5kco66zqalt3/BR9aaqD7/IyXr6dfc0CCbGQaMg=; b=R2iwrTA9GVIc4q
	uGqHICL+qOCkpsdNFstnzAdekzxZ338OqfdeMFSMF3oM7UTUcCQrCGk7enrBy5hni8aa54c+E6ObO
	IYNn8vR5RNAziD90r5AniYvh2R3L0Gu8CMfYiDoGoLG8291Cm8rbKDEvoWEk4PKRWAo+eL2obc+Xk
	n/2S+4YpaN9UKQcacRwTmRPn8mGSu4CWfgcZBhsrPt2HHrElUR+vrTMlwfnC56lWvFKmgTdkIPL9g
	/mMudTduHhIWeht49XJMmIRaiU15Yevr75pWa5QP0Dk5/1tGRcyksty6O79gL5j9N1GppPXu3CazW
	vmNAlGBfB1dcgWYyzwPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdBaQ-00000005XtV-0wkk;
	Thu, 22 Feb 2024 16:06:14 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdBaN-00000005Xso-2faB
	for linux-phy@lists.infradead.org;
	Thu, 22 Feb 2024 16:06:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6FECB618A2;
	Thu, 22 Feb 2024 16:06:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E8F2C433F1;
	Thu, 22 Feb 2024 16:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708617968;
	bh=C+TptrLEyKVQZgqziz2FhHnXNxbrMuek3GwWVcpvIo4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KWJbfB7iIrJzA5wgM//VQpK+Eg1Jl7jsjd4SEzbxStIlH2+3ip1yzmyPSHymB5rIP
	 +kuPH04cJMfNIEEuP8KlSRti8JVt9Q1OQ9+RCo5Q9bLhbBmhXKKx2VNjyDHEsPbBbK
	 txObfjquCti+EIcWW907dO1EI2N0f0pR6lZPMso9UMv/vXM84tR6cV66jS+yrMXDSc
	 8+pkoyUMMrMhNi298AylQnGdWqe7h7vQly7yRH6YyKSy2fZiubV7K+QbbHmfavTyza
	 fKszN2T/ofej2aQ5sp9beXBRSLahj63YnaDP2IIUwJMH/YOkGHj2yPLuL2IiNgV98j
	 r05Ygwua981+A==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1rdBaM-0000000087I-3fOL;
	Thu, 22 Feb 2024 17:06:10 +0100
Date: Thu, 22 Feb 2024 17:06:10 +0100
From: Johan Hovold <johan@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Vinod Koul <vkoul@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
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
Subject: Re: [PATCH 2/6] drm/bridge: aux-hpd: separate allocation and
 registration
Message-ID: <Zddw8uhFwcwILhK0@hovoldconsulting.com>
References: <20240217150228.5788-1-johan+linaro@kernel.org>
 <20240217150228.5788-3-johan+linaro@kernel.org>
 <cyzl3m67daaijpwhcwx53tk7tgrvw4kxiz7cj6bhx5xxwh6fuj@u2l674nlp4th>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cyzl3m67daaijpwhcwx53tk7tgrvw4kxiz7cj6bhx5xxwh6fuj@u2l674nlp4th>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_080611_740500_C9BC51E9 
X-CRM114-Status: GOOD (  12.42  )
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

On Wed, Feb 21, 2024 at 08:06:41PM -0600, Bjorn Andersson wrote:
> On Sat, Feb 17, 2024 at 04:02:24PM +0100, Johan Hovold wrote:
> > diff --git a/drivers/gpu/drm/bridge/aux-hpd-bridge.c b/drivers/gpu/drm/bridge/aux-hpd-bridge.c
> [..]
> > +/**
> > + * devm_drm_dp_hpd_bridge_add - register a HDP DisplayPort bridge
> 
> kernel-doc wants () after function names.

I don't think that's required for the symbol name here even if some
subsystems (drivers) use it.

> > + * @dev: struct device to tie registration lifetime to
> > + * @adev: bridge auxiliary device to be registered
> > + *
> > + * Returns: zero on success or a negative errno
> 
> and "Return:" without the 's'.

This was a mistake however. Perhaps whoever applies this can drop it, or
I can send a v2.

Side note: Looks like there are more instances with an 's' than without
under driver/gpu/drm...

> This could however be done in a separate patch, as the file is already
> wrong in this regard.
> 
> Reviewed-by: Bjorn Andersson <andersson@kernel.org>

Thanks for reviewing.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
