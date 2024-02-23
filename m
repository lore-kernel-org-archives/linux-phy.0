Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFC9FC54798
	for <linux-phy@archiver.kernel.org>; Fri, 23 Feb 2024 14:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4a1T+JkTeYPjwRG0lMgq+5lTaOoRdALm0EKv9Hhc+Q8=; b=qKb/r4IKn/ay5C
	LM3LmBPymtpCc0xRAYmwhd2R8G7WLJ4XoQp21o6PznjFxj2mW/en+OaFiufjMmKoEaWFMuNHfhJ9i
	NtTzo6gWjZJTF4XZM6agjUXrHDSnkwSCY/V1dOQXWSm8sO2gRGDI4AQpYxTgpbg0nK/W1KHrTi4nD
	eDWJX+0G7Agn+S5b1F0gdjw94ZTV/oZ1tKSs/J1Rd/J5bIq/yI3mT8E1VMR3793SSZj6cCkAKqKu9
	LyFH83rUWmRY4MBb0ohXdRt9IOvT9XbEpOs8CBpsK6pg2A54LbDwvSmYlRz9fMU2wBKgIjG2OsaDk
	JddxtPu1ApZkLj1bUGkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdWuJ-00000009rav-0fAF;
	Fri, 23 Feb 2024 14:52:11 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdWuB-00000009rYN-34oi
	for linux-phy@lists.infradead.org;
	Fri, 23 Feb 2024 14:52:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 12DC063491;
	Fri, 23 Feb 2024 14:52:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9ACBC43390;
	Fri, 23 Feb 2024 14:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708699922;
	bh=tYi8l4Xs/hwU1yCY4ER0X47Mn9CHqguZeigHgYw6zvM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YsEpmCTqNjGuxlQ7d3WcRLlq7Ce/IYs6j3gtSffIyfwtrQq3MLBpLT8ueUTQDSBBE
	 e1+bN72SlDQdvZS3y9j5us/+43BkLacd7m/L4bJ2ygs06K3uKZg/zYyAr2ZosXH0Lr
	 qw9JAJYhV49kckh8u5AYBnxLPjPoEFlwNGmYMVk9s1bdyY3+maGXV6hnCHuhZVRGBc
	 NYfFyMLA4fBdgxbe9t6Y1paJmPlodVLvk/rWGLGLPiU6gbT3z7G08DKKK2riBhDKCI
	 zZ1rNClAhjjGSTQYbjnTS897sKSFPxJyyfRbpryUAZATD9G0tsc7ibJkyyIlZ43MSH
	 b4RE/xGlTvCCg==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1rdWuE-0000000053d-25Az;
	Fri, 23 Feb 2024 15:52:07 +0100
Date: Fri, 23 Feb 2024 15:52:06 +0100
From: Johan Hovold <johan@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maxime Ripard <mripard@kernel.org>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Robert Foss <rfoss@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
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
Message-ID: <ZdixFo2EjUQDgeFh@hovoldconsulting.com>
References: <20240217150228.5788-1-johan+linaro@kernel.org>
 <170868613914.4029284.5549880672870201262.b4-ty@linaro.org>
 <3c4246b6-431a-442e-8ace-3b0d0e67743f@linaro.org>
 <ZdiU2z8rzo542_Ih@hovoldconsulting.com>
 <d4049823-ad24-4426-887b-9c66cdd96318@linaro.org>
 <ZdiqAPPTn9SvsjL8@hovoldconsulting.com>
 <77715ecd-ddb9-450c-98bf-4fcade0e81c0@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <77715ecd-ddb9-450c-98bf-4fcade0e81c0@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_065208_185303_E7D23444 
X-CRM114-Status: GOOD (  19.09  )
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

On Fri, Feb 23, 2024 at 03:38:13PM +0100, Neil Armstrong wrote:
> On 23/02/2024 15:21, Johan Hovold wrote:

> > But it is *not* standalone as I tried to explain above.
> > 
> > So you have to drop it again as the later patches depend on it and
> > cannot be merged (through a different tree) without it.
> 
> drm-misc branches cannot be rebased, it must be reverted, but it can still be applied
> on drm-misc-next and I'll send a revert patch for drm-misc-fixes if needed, not a big deal.
> 
> > I thought you had all the acks you needed to take this through drm-misc,
> > but we can wait a bit more if necessary (and there's no rush to get the
> > first one in).
> 
> If you want it to be in v6.9, it's too late since the last drm-misc-next PR has been sent
> yesterday (https://cgit.freedesktop.org/drm/drm-misc/tag/?h=drm-misc-next-2024-02-22)
> 
> Please ping Thomas or Maxime, perhaps it's not too late since the drm-misc-next tree
> really closes on sunday.

I don't want this in 6.9, this is needed for *6.8* as this fixes a DRM
regression in 6.8-rc1 that breaks the display on machines like the X13s.

If you guys can't sort this out in time, then perhaps Bjorn can take
this through the Qualcomm tree instead (with DRM acks).

But again, this is fixing a severe *regression* in 6.8-rc1. It can not
wait for 6.9.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
