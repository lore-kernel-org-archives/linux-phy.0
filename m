Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D527C54788
	for <linux-phy@archiver.kernel.org>; Thu, 22 Feb 2024 02:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pSLZibkNzTmSdQkJtTxyyxpzJ/4A4VjmFT/Pj5IHn1k=; b=eWhjrCuy64awOD
	100bRLviWZSEyLO9FPSBdYutO1d0DBIEu/adzwp3vP2L5IC+1x2lLeW5zqfjdOcMfVnSiTSCDm4CX
	3MZZaoUZGRjnUX7sXNqh75IJ15kMaGJ6fxq75NWdq0o///TTO4Kffz1V0Q361qK+NDQV4TEt9jCBW
	bUSA7VVouNhSTbgyxV/f9xhNY6PDwLYSubVzfLA3JCpt1DCmRa2x4vm9Y5hb1XBHsqIt7SXI+hE52
	0BveI4vcH6+4yeeahrQP/bnqP17/dTMNUkGcYU2ca6Y8CcfQuo8/4xhuwr+ZkRvdj1gAlr+bzpO0Y
	Kpjl358FdEZJvj1jGdwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcyU5-00000003Cyj-0inQ;
	Thu, 22 Feb 2024 02:06:49 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcyU2-00000003Cy3-2k5u
	for linux-phy@lists.infradead.org;
	Thu, 22 Feb 2024 02:06:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 79E16616EA;
	Thu, 22 Feb 2024 02:06:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A01CC433F1;
	Thu, 22 Feb 2024 02:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708567605;
	bh=Ybci3+TcYCfWUtyyK9oMeVMAce0zLcjOP2WOB1QozRI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OYfgohSQYfx5MuNjkVKbPMcSliwWc4XdYPqIUBvIvU4KT/boyIp106nCyVqD021Sd
	 njg8Y4SdVFb5APDaQCYE2FZLojpASoRlm7m+focW1sr1wY5c1CzFAEp1Ag2fBVoJrT
	 nzkinUd0UTlLcpG28vbMYlglF6egqdoraXipCtlKZ9oB0pbQR+DiuK2gfCFqa/iMVe
	 oKBs87RNBKE5mMumkZsCJzbM3ew6tSls7bY5/3Yt59MZZEj1Q2ukrajX2bvO7RUFH5
	 Vbx0/AuXX/AKEjWdBndtBOwymR7Hqck94bPygq4Jjs+1eidMFEX2QfAoI1iSTeXNyY
	 mxbTcAqfLSiKg==
Date: Wed, 21 Feb 2024 20:06:41 -0600
From: Bjorn Andersson <andersson@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Vinod Koul <vkoul@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 2/6] drm/bridge: aux-hpd: separate allocation and
 registration
Message-ID: <cyzl3m67daaijpwhcwx53tk7tgrvw4kxiz7cj6bhx5xxwh6fuj@u2l674nlp4th>
References: <20240217150228.5788-1-johan+linaro@kernel.org>
 <20240217150228.5788-3-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240217150228.5788-3-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_180646_766747_451C39F8 
X-CRM114-Status: UNSURE (   8.21  )
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

On Sat, Feb 17, 2024 at 04:02:24PM +0100, Johan Hovold wrote:
> diff --git a/drivers/gpu/drm/bridge/aux-hpd-bridge.c b/drivers/gpu/drm/bridge/aux-hpd-bridge.c
[..]
> +/**
> + * devm_drm_dp_hpd_bridge_add - register a HDP DisplayPort bridge

kernel-doc wants () after function names.

> + * @dev: struct device to tie registration lifetime to
> + * @adev: bridge auxiliary device to be registered
> + *
> + * Returns: zero on success or a negative errno

and "Return:" without the 's'.

This could however be done in a separate patch, as the file is already
wrong in this regard.

Reviewed-by: Bjorn Andersson <andersson@kernel.org>

Regards,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
