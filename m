Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C780EC54798
	for <linux-phy@archiver.kernel.org>; Fri, 23 Feb 2024 12:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ygjE+Cyw5sfY6YuYzl3I87TqGOUmAyu10sco4oZUCWs=; b=oPbUnlodU7tiNY
	aScw2ELUn92DQeofdOE2lPB3O0BBHmKce+w52Jr39AMsyV8RBjZvJfc+az0qorSi7khsvfPi+03/M
	o4epkWrwQjVOwGShTp5RIPZmxpYIksJnYbspS/D+FqDmbPo5lrh74KJbpNGDmR0uoWWP5vV0hdng0
	mCEtVwLnQp9Mww1WqYFEoaKTxPyQSqpVGAWpu72ubDYjc7pU+smijkpEn+LiBlv/eK6KTcUkWl/cN
	lMyjCnnk/CUhYfLtkL1+TMi1I/cbSUeppZMCiF4/3dP9TvlYqlIssf9e6zx81Oxpkb9Ye2L/IGzg6
	2q7EiR9AuhNO0GMYgT5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdUNq-00000009HCx-1J5E;
	Fri, 23 Feb 2024 12:10:30 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdUNk-00000009H6V-3WJi
	for linux-phy@lists.infradead.org;
	Fri, 23 Feb 2024 12:10:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BADC76176E;
	Fri, 23 Feb 2024 12:10:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B80DC433C7;
	Fri, 23 Feb 2024 12:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708690214;
	bh=4mfjeqsrT5LLWTfnZOi1uQqHARRbPNHPlL7bWNXA1qs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h72n9H/Ey6btg2YG3+/Lndvz6UL99KJBWHTd2DmoRO2yWH1/pu+jFKJsTzELXXwr9
	 vIacBhyEGk57aSoaG5rkePrkzJ8HlT6EbaoKn6IKXgGhBTEgUAgBUGhr9loLlZHJEp
	 ZxTqExOuYNu/bJOFEen2Or5AE7hQ+yCu4H+zmNUAz3uefWv18K3hrjLl1ZuN00s8p5
	 K19x+3oTMDVW0ePSzIr3+a0r8iefy3Qh+FtcnlzmVqSWWznSrVA1Rw9nTICEOD/aBV
	 JUuZlze6Xt3nUJzJdpMhuuzG1116zfi+uW9Z1vpbBqUi83BdreXLKp7K//DhXTLL1e
	 UnGBCgRv5PJDQ==
Date: Fri, 23 Feb 2024 17:40:10 +0530
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
Subject: Re: [PATCH 6/6] phy: qcom-qmp-combo: fix type-c switch registration
Message-ID: <ZdiLIjGIn8e5tnJc@matsya>
References: <20240217150228.5788-1-johan+linaro@kernel.org>
 <20240217150228.5788-7-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240217150228.5788-7-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_041024_982821_ED36F076 
X-CRM114-Status: UNSURE (   9.02  )
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

On 17-02-24, 16:02, Johan Hovold wrote:
> Due to a long-standing issue in driver core, drivers may not probe defer
> after having registered child devices to avoid triggering a probe
> deferral loop (see fbc35b45f9f6 ("Add documentation on meaning of
> -EPROBE_DEFER")).
> 
> Move registration of the typec switch to after looking up clocks and
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
