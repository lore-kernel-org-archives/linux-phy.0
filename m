Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFA7DC48BC4
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 11:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	References:Message-ID:In-Reply-To:Subject:cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gkPH8XvPreefUS+ZcKsXBAnluOhtxRUPDLSfvF2DUGo=; b=gaUpU8V8FzxXOBHZnMkaHyp//x
	0gw785DTQR+pgRioPo0IYbQvxk/tDJt2MEF539p5nvMx9kt1+vjaIyXdb44lUjdS3/GqG5eeuCmUa
	DlGts33BKxgKUw++MRS152y8DXoYECjY73f1tgFkevCBLK0q3+COvMZX85ohlP/vJjRniC/XblYfs
	NXOAgG16nENcJUwB4d8kbrKkO4BZ0OVQVfSydgbnYNY9wi0/v6hZEbPyOOO0qdlpfC3dpMNdRsYNy
	FDlGhMhlpuhUcI9fPb9IpHzXoVwbrjazBNaEkNWv77XGWE+UpywJ4Q95Cic+5s1RAjTGMaocwzfsh
	WjsohkCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcOft-0000000EXUf-2LJ4;
	Tue, 20 Feb 2024 11:52:37 +0000
Received: from mail3-relais-sop.national.inria.fr ([192.134.164.104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcOfq-0000000EXRq-1dkt
	for linux-phy@lists.infradead.org;
	Tue, 20 Feb 2024 11:52:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=1M4BVBMt80+EpGUdBvcdqZq7UMSH5rmWkvh/86/IyP0=;
  b=Pql6VQnC508MlZQr0ue7CCu89plVt/X6lTdZnJ+Of3+4gTP5Ip6joogh
   27bbqBwHYV2sV2qL7VhZJLKnUzpN89pRC+l90k8ldZjsXwMvkYZhacpsn
   c/QtgZ0mSU1Gfgg+8IRt5GbdySMyiWwcPKq7o5D3v1szRxKr1MizjemHy
   0=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.06,172,1705359600"; 
   d="scan'208";a="80129118"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Feb 2024 12:52:25 +0100
Date: Tue, 20 Feb 2024 12:52:25 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Johan Hovold <johan@kernel.org>
cc: Markus Elfring <Markus.Elfring@web.de>, 
    Johan Hovold <johan+linaro@kernel.org>, freedreno@lists.freedesktop.org, 
    dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, 
    linux-arm-msm@vger.kernel.org, kernel-janitors@vger.kernel.org, 
    Andrzej Hajda <andrzej.hajda@intel.com>, 
    Bjorn Andersson <andersson@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, 
    David Airlie <airlied@gmail.com>, 
    Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
    Maxime Ripard <mripard@kernel.org>, 
    Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
    Thomas Zimmermann <tzimmermann@suse.de>, Vinod Koul <vkoul@kernel.org>, 
    LKML <linux-kernel@vger.kernel.org>, 
    Abhinav Kumar <quic_abhinavk@quicinc.com>, 
    Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
    Jernej Skrabec <jernej.skrabec@gmail.com>, Jonas Karlman <jonas@kwiboo.se>, 
    Kishon Vijay Abraham I <kishon@kernel.org>, 
    Konrad Dybcio <konrad.dybcio@linaro.org>, 
    Kuogee Hsieh <quic_khsieh@quicinc.com>, 
    Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
    Rob Clark <robdclark@gmail.com>
Subject: Re: [PATCH 1/6] drm/bridge: aux-hpd: fix OF node leaks
In-Reply-To: <ZdRTx2lmHBVlcLub@hovoldconsulting.com>
Message-ID: <1afc87c-2c1f-df10-a0c8-2a267d44122@inria.fr>
References: <20240217150228.5788-2-johan+linaro@kernel.org> <c95f5ff3-8dad-4302-9384-92a9b83f7bdc@web.de> <ZdRTx2lmHBVlcLub@hovoldconsulting.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1071210912-1708429945=:3417"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_035234_928089_AE630264 
X-CRM114-Status: GOOD (  18.70  )
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
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1071210912-1708429945=:3417
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT



On Tue, 20 Feb 2024, Johan Hovold wrote:

> On Mon, Feb 19, 2024 at 06:48:30PM +0100, Markus Elfring wrote:
> > > The two device node references taken during allocation need to be
> > > dropped when the auxiliary device is freed.
> > …
> > > +++ b/drivers/gpu/drm/bridge/aux-hpd-bridge.c
> > …
> > > @@ -74,6 +75,8 @@ struct device *drm_dp_hpd_bridge_register(struct device *parent,
> > >
> > >  	ret = auxiliary_device_init(adev);
> > >  	if (ret) {
> > > +		of_node_put(adev->dev.platform_data);
> > > +		of_node_put(adev->dev.of_node);
> > >  		ida_free(&drm_aux_hpd_bridge_ida, adev->id);
> > >  		kfree(adev);
> > >  		return ERR_PTR(ret);
> >
> > The last two statements are also used in a previous if branch.
> > https://elixir.bootlin.com/linux/v6.8-rc5/source/drivers/gpu/drm/bridge/aux-hpd-bridge.c#L63
> >
> > How do you think about to avoid such a bit of duplicate source code
> > by adding a label here?
>
> No, the current code is fine and what you are suggesting is in any case
> unrelated to this fix.
>
> If this function ever grows a third error path like that, I too would
> consider it however.

I guess these of_node_puts can all go away shortly with cleanup anyway?

julia
--8323329-1071210912-1708429945=:3417
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--8323329-1071210912-1708429945=:3417--

