Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5A2CEE49AA
	for <linux-phy@archiver.kernel.org>; Tue, 22 Aug 2023 13:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hf1+N/kDwAyC5loWY/EkAOYWixrDJ38BYC3TpKFwfUk=; b=Seoq7f/qskeTSd
	qgI1N9iVSPw0LV+xVLJmj/3rbk3Ma6yODgGIIDRUFT225ouPLHl921g3/JikRO6cA0JK8AUy7T4i2
	hmt4VcTldeRgBKNFRb4+OgcR6hZKHlCx8Ve5Ks+yzCYqaSth81g42DamilYl9Hpo575KpgPaLUIOd
	fAgYHdEac7fdFvalVb1CEqtZUPrraNE+TCwmDu8KskIpC3Mt8gweGSd4fbWQSTVK0uHvy6iaX1Rpa
	75OYotkWh0QRIkbgC5Lcx7KlfNokmPPSpFged/cT9FV054CQa0GgltBh1RVU1K7FvQMQqFrroKWEy
	JwJuwsRxtdYY0Y1HMb6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYRqL-00G5Js-1D;
	Tue, 22 Aug 2023 13:54:49 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYRqI-00G5JG-3A;
	Tue, 22 Aug 2023 13:54:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4971B65730;
	Tue, 22 Aug 2023 13:54:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BDAA7C433C7;
	Tue, 22 Aug 2023 13:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692712485;
	bh=OZdk+L9lV/tUVafdBKQSUhvJ0WoEpL/rmRTFTm+vvng=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=apzzx2iRS7drX7IIQCP8qIt0eKye5QX1aSRRzQcePIv9xVzvqs0WcQVMUjCvHxcND
	 Bkf+pVYdoPedujn1TuOq9bPh4wXU1isdkuJ7pzUGkETPkuVYczq7H/AziHyepJqdjc
	 hSCk5pyNAjtlYOjXb/7x4JGzKGOzO/SpBXpj7E2ECKMwsti0cznxhzFu8AzBRbrzfa
	 A7Eb2/76/0PKEyHMv7zwjTCzE3V0pCKAt4/vorhCud8vK9Zj2fZeCzXtKpJwmuvQmp
	 bCRD1lmD3bHv788Ed/MG9prmcrKKcJciJWrASB8vXisoxyOnQ6lpgcwuN8vxghkzGp
	 WpnyrEm6irNPw==
Date: Tue, 22 Aug 2023 19:24:41 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Sandor Yu <Sandor.yu@nxp.com>, andrzej.hajda@intel.com,
	neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com,
	daniel@ffwll.ch, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, festevam@gmail.com,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, kernel@pengutronix.de,
	linux-imx@nxp.com, oliver.brown@nxp.com,
	alexander.stein@ew.tq-group.com, sam@ravnborg.org
Subject: Re: [PATCH v8 2/7] phy: Add HDMI configuration options
Message-ID: <ZOS+IQgFZYxN503B@matsya>
References: <20230808083243.3113192-1-Sandor.yu@nxp.com>
 <20230808083243.3113192-3-Sandor.yu@nxp.com>
 <c485b64e-3c83-4616-b8d8-76c2c7d56b0e@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c485b64e-3c83-4616-b8d8-76c2c7d56b0e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_065447_079596_B1C4AAC0 
X-CRM114-Status: GOOD (  15.49  )
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

On 17-08-23, 13:05, Dmitry Baryshkov wrote:
> On 08/08/2023 11:32, Sandor Yu wrote:
> > Allow HDMI PHYs to be configured through the generic
> > functions through a custom structure added to the generic union.
> > 
> > The parameters added here are based on HDMI PHY
> > implementation practices.  The current set of parameters
> > should cover the potential users.
> > 
> > Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> > ---
> >   include/linux/phy/phy-hdmi.h | 24 ++++++++++++++++++++++++
> >   include/linux/phy/phy.h      |  7 ++++++-
> >   2 files changed, 30 insertions(+), 1 deletion(-)
> >   create mode 100644 include/linux/phy/phy-hdmi.h
> 
> I think this looks good now, thank you!
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Should this go thru drm or phy...?

> 
> -- 
> With best wishes
> Dmitry

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
