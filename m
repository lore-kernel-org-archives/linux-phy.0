Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0970DEE49AA
	for <linux-phy@archiver.kernel.org>; Tue, 22 Aug 2023 12:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0QPhn7Gbh1CXINmTBCNieAv17yZvbfCmAmTMOSnFk34=; b=nWADyA0RgWi97C
	ABjsyzBONwVdCNG+Uz+HunGf6v7nJ2uPGS0jWgDyT1C1sbDd5Z02mIYl8dEV00eridt/O617qqGj7
	pwNpviOpO+zepduzIR5p2fcl/Z0zqjqnQU4Nw+x9a9vF96ERS68OklXVD0ec9NGR+aHX+VZ9eWdHj
	0SB/1DYLGGw4wgHF493nOkeeOABwiUPUMm4+tDOmwy8Dc1cWFppOKs5WCPjuBMShpbJwAriUZMWB7
	zXvDIktsDYChglYtmI8cSgrolVWLnrQU2vFaChAAcSy6YwWSkaNugN8Yw5xLslzsI9ggbwHj32A5d
	sV6vs3yr5kV87yhw9SyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYQcY-00Fugg-2I;
	Tue, 22 Aug 2023 12:36:30 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYQcW-00FugF-01
	for linux-phy@lists.infradead.org;
	Tue, 22 Aug 2023 12:36:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E86AB61047;
	Tue, 22 Aug 2023 12:36:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACC8CC433C8;
	Tue, 22 Aug 2023 12:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1692707786;
	bh=fVkVptFFwKny9qQLoNX+rni3VwORsf2OzsmrJPMQR8s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nHQURDprwfXLrElFhPraTkx7IlZHghXQFkoTmRGn+R39Hi6Fm5aA7j5J+LeVRpizU
	 KSohzQrTi5p1aQ+KDoiwox9nWGm9RTSvdLwvPBsqKBjSqgTsJvgXVusUBCjnbl6yLP
	 kl74zLu09r1Gc0Q4mftleY9r1+g48FLZvkXBJwMw=
Date: Tue, 22 Aug 2023 14:36:23 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
	freedreno@lists.freedesktop.org
Subject: Re: [PATCH v4 3/3] usb: typec: nb7vpq904m: switch to DRM_AUX_BRIDGE
Message-ID: <2023082209-vitamins-unharmed-53ab@gregkh>
References: <20230817145516.5924-1-dmitry.baryshkov@linaro.org>
 <20230817145516.5924-4-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230817145516.5924-4-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_053628_087606_740327DB 
X-CRM114-Status: GOOD (  11.40  )
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

On Thu, Aug 17, 2023 at 05:55:16PM +0300, Dmitry Baryshkov wrote:
> Switch to using the new DRM_AUX_BRIDGE helper to create the
> transparent DRM bridge device instead of handcoding corresponding
> functionality.
> 
> Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/usb/typec/mux/Kconfig      |  2 +-
>  drivers/usb/typec/mux/nb7vpq904m.c | 44 ++----------------------------
>  2 files changed, 3 insertions(+), 43 deletions(-)

Just take this through the drm tree:

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
