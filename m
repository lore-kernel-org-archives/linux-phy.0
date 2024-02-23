Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6A6EC5478C
	for <linux-phy@archiver.kernel.org>; Fri, 23 Feb 2024 12:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EmxXE6f21ncoaPej6NJkAgWVz9f/H3yda2nf8dFhso0=; b=vzwtwjTMrl0sIk
	DSrsU58lOWZMigWZCrBJLncv4CMwSY2G3w2BWml1hMH8G49JZ5CWyZOoPA8lIU32ozTCGUTUPR7Bh
	WIfgEJVftn8bxSfFNl4Zv2ZnJXFyRtNI+D+ymWYzowUN8LTfrMbBo6tVWRMMvvTKzE5CHUdFrWjCt
	Sch35P6+frZHWQzOTC+s2XPakTRNVWlMJ6YTuaehK9mI/gl+EL6AdLIKiYp+zHlHRZioK+4+DCT15
	dh5JZek88kuGdPUvr+wllmTage4cAjSoKudGVdJkS56DpJk8l7+y3rsPKDSCPSYB7Oazk8iwvXQus
	dn5b3DAoONoJ2lS0CHAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdUNl-00000009H7b-05z0;
	Fri, 23 Feb 2024 12:10:25 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdUNL-00000009H3T-1Tnn
	for linux-phy@bombadil.infradead.org;
	Fri, 23 Feb 2024 12:10:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=aO1l3OkWTkgil4r4f5PJnyYdBiVFuDDHkXghIXPpHCE=; b=NWz5qvQD7Asq3uQBK3zYB8tZyc
	bEblfcUjLRv2jBfj7Is/G0DZYh4XHjUDxZPpkV4eJ7kVojXHUvTNmumnMvm5SYUsFnvIqBS1D8hm/
	6FWPej6tEeUcjefQZYOAhYEQOnk2Rv9/TRiVMkXlex5ubG3Qz8L1W2XIqvEdd6Yr50iNtGqrFV5jc
	wnJsbZOUzqElwFUDt3k71nqkQy/wByUY1jL8XGJiMcHyw5nwfUI42SYEfx94UcNcmsRO2t4kWsuPu
	2QPW8cc2Otd+Ed8usICRnVcGVllY1ZdbPf8eon73T8+WXHuak/ohSlJMG11ll2vrmrNYCWbNq+MDQ
	Ptr/iLJQ==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdUNI-00000006xOo-1NVI
	for linux-phy@lists.infradead.org;
	Fri, 23 Feb 2024 12:09:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 50F6860E8E;
	Fri, 23 Feb 2024 12:09:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CA89C433F1;
	Fri, 23 Feb 2024 12:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708690189;
	bh=DAU55Q2sfD8L3ZH3fwKz/mmSeLuRFjA+iaKnPasZfYI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cWE+qH8Zq+UtXRLfYmyuV3u+IKp/btik1e/z0NcFAKsg2JFdaO+l5UWXmWONEYLds
	 uLpa08T9BkqJUn2j4hpCvA+SIS573tWcOmBKJqjuQwgDE/E6Q47UjoNbXT2rpw20qo
	 7fUqXMddP2LVweCKCfIgSXQk1Ka671n7VX8tk8thBXNe74TFl5p1/4AVMz8lg9HD6p
	 lBIYZVzJkwWQxX5lovIMJ+xSadmHDq1uIdelyPrGCCl7fid1vWrktyF86toFZTIOYw
	 X5OMymD0SIeOPhIaqSbiiFEAEKdvwmnu24v0ozwuZm9AnXcHsOkKPa5nltacZN7V5L
	 exhG1FobcrI5w==
Date: Fri, 23 Feb 2024 17:39:45 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
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
	linux-phy@lists.infradead.org, stable@vger.kernel.org,
	Bjorn Andersson <quic_bjorande@quicinc.com>
Subject: Re: [PATCH 5/6] phy: qcom-qmp-combo: fix drm bridge registration
Message-ID: <ZdiLCYKCujs4DgKV@matsya>
References: <20240217150228.5788-1-johan+linaro@kernel.org>
 <20240217150228.5788-6-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240217150228.5788-6-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_120956_516993_EBA03BFD 
X-CRM114-Status: GOOD (  10.29  )
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

On 17-02-24, 16:02, Johan Hovold wrote:
> Due to a long-standing issue in driver core, drivers may not probe defer
> after having registered child devices to avoid triggering a probe
> deferral loop (see fbc35b45f9f6 ("Add documentation on meaning of
> -EPROBE_DEFER")).
> 
> This could potentially also trigger a bug in the DRM bridge
> implementation which does not expect bridges to go away even if device
> links may avoid triggering this (when enabled).
> 
> Move registration of the DRM aux bridge to after looking up clocks and
> other resources.
> 
> Note that PHY creation can in theory also trigger a probe deferral when
> a 'phy' supply is used. This does not seem to affect the QMP PHY driver
> but the PHY subsystem should be reworked to address this (i.e. by
> separating initialisation and registration of the PHY).

Acked-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
