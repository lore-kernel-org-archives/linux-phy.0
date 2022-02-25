Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CC0CC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 25 Feb 2022 10:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qSCo1Roq9zZU+Uflrbbhcz8lBu8iLRYL46a80s8Hnn8=; b=JDzvXfhm0e7CWe
	hBSD69VAhidSOMsD4L6h3g7BOvISfNXThKfMShp6gxJnLkV8AqNkYDqx3r8H5AFdnSgXfymdlS+7/
	ObB2eR8oMlFrUHicpMimo5vf4+PKakakAOrTAs1KANzHARzOXDtfotFWQN0EII8WEMRZEKlkldDuQ
	VKutmuzAg+3RN1jfWOmEufOPREKaCvDqlPQzfyaYVuoIhrnafwuBgx+gqqGWAOrF+uSkUB15WlJbN
	7pvOVmnZXQ9MHmDXNoVhuZIoRV5FsysVPjKVqAEPqS3kor1PtXDPc/e3pFLbqVn6QZyys+S72j1zd
	43JyN0KM5sTVfpKRTbNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNY1h-004TRy-JU; Fri, 25 Feb 2022 10:40:41 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNY1e-004TP3-11
 for linux-phy@lists.infradead.org; Fri, 25 Feb 2022 10:40:40 +0000
Received: by mail-oi1-x22c.google.com with SMTP id i5so6914778oih.1
 for <linux-phy@lists.infradead.org>; Fri, 25 Feb 2022 02:40:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:in-reply-to:references:from:user-agent:date:message-id
 :subject:to:cc;
 bh=XmHgx7i/9vNrhvW/myAVOgnrCLxN2TVncbf1coqXilo=;
 b=JShMinXGneeNUXr6MBtvLnsdFzLyYYPtsUCiR1SgKcXep3GIi8/lspMh7qpTsNS+4P
 IQU+sI8epCbEo+wm4GebX17uOpKZdhmwAdbT807V0RgLDlEvibQSQWM7XdjGnZCNmPIa
 6hKDByDP3wolEPSOkSdLIyX3nQsPCK5Vfy5L+waT20TTaKawHhkeTmNSPEte2FmrceFe
 v+6xcrbAgcBLra+7OTyLfY9V1z4JRO1vrdf5TwzAdbXW5ZbXl+1QiUYQJ4nnqrmbgfhV
 rKN3RIc45tWwJoHgB8Zony4h91g7IoWebGN/osaLBTHRi4zLm2FgRV7TzjbfNPcVFxB6
 LA2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:in-reply-to:references:from
 :user-agent:date:message-id:subject:to:cc;
 bh=XmHgx7i/9vNrhvW/myAVOgnrCLxN2TVncbf1coqXilo=;
 b=ozWhZTmLY+K0RXYqi1HPq50UgF/mFovew6jUAujGRJ2DYOzc9S3VtmxUespbPg0VGI
 Z1vlnms/Nj7jhO4MGhauIcccORpV/HQpatT/7Zmqo5W9OVqJirp5PR46oHZB8eDTvyYy
 ODxkcAkz4ZsjmkReEwlO39DFvhBGQ1OZrwMPqi0j3wDlZ0cXDzhVlJM+xSb+GaHUA8GB
 Icx56oBYpSd2mqsngMQmHgkA1PQaDmTvWPjZcBjQFQEE7HOdVPp3BE5TAbVEE0DDmGeR
 /LqFMmn9c5Ar/xMhCLmFbFdtYOoshbXhZl9KXUE12TaBDm1CUJ+0fmJn+amfqaS+MUh2
 UHJQ==
X-Gm-Message-State: AOAM5320u4DmNV+k8+rb7xDHMFvRgDWe0S3zLYXlDGHMmwmHwYfAirBC
 cG22s35XBne9sl+mtZkzWWIy/9lyICKFCrHm08uijg==
X-Google-Smtp-Source: ABdhPJx9aAd/x8lOBAlC3AOKrKYl71PZj1ZJrbUXQn++GPnT4jD/17UUadhTANVxEvJPL5JqOpZ6gLbTAqxp4YOXaXo=
X-Received: by 2002:a05:6808:114e:b0:2d5:4101:844e with SMTP id
 u14-20020a056808114e00b002d54101844emr1162908oiu.169.1645785637242; Fri, 25
 Feb 2022 02:40:37 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 25 Feb 2022 02:40:36 -0800
MIME-Version: 1.0
In-Reply-To: <1c791b60-935c-1e8e-dd1b-4b18fc273c1b@collabora.com>
References: <20220218145437.18563-1-granquet@baylibre.com>
 <20220218145437.18563-5-granquet@baylibre.com>
 <1c791b60-935c-1e8e-dd1b-4b18fc273c1b@collabora.com>
From: Guillaume Ranquet <granquet@baylibre.com>
User-Agent: alot/0.10
Date: Fri, 25 Feb 2022 02:40:36 -0800
Message-ID: <CABnWg9uoDNbA6ZYGdEgkyySBW0pfY1+3Zrnh51XjadNU8_+U9A@mail.gmail.com>
Subject: Re: [PATCH v8 04/19] video/hdmi: Add audio_infoframe packing for DP
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 airlied@linux.ie, 
 chunfeng.yun@mediatek.com, chunkuang.hu@kernel.org, ck.hu@mediatek.com, 
 daniel@ffwll.ch, deller@gmx.de, jitao.shi@mediatek.com, kishon@ti.com, 
 maarten.lankhorst@linux.intel.com, matthias.bgg@gmail.com, mripard@kernel.org, 
 p.zabel@pengutronix.de, robh+dt@kernel.org, tzimmermann@suse.de, 
 vkoul@kernel.org
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
 linux-fbdev@vger.kernel.org, Markus Schneider-Pargmann <msp@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_024038_135572_E51E8E56 
X-CRM114-Status: GOOD (  14.80  )
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

Quoting AngeloGioacchino Del Regno (2022-02-22 16:16:48)
> Il 18/02/22 15:54, Guillaume Ranquet ha scritto:
> > From: Markus Schneider-Pargmann <msp@baylibre.com>
> >
> > Similar to HDMI, DP uses audio infoframes as well which are structured
> > very similar to the HDMI ones.
> >
> > This patch adds a helper function to pack the HDMI audio infoframe for
> > DP, called hdmi_audio_infoframe_pack_for_dp().
> > hdmi_audio_infoframe_pack_only() is split into two parts. One of them
> > packs the payload only and can be used for HDMI and DP.
> >
> > Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> > Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>
> Hello Guillaume,
>
> I've just noticed that this patch will not apply against the latest linux-next,
> as the include/drm/drm_dp_helper.h header was moved to
> include/drm/dp/drm_dp_helper.h
>
> Can you please rebase for v9?
>
> Thanks,
> Angelo
>

I'm sorry, I'm a bit of a noob, I rebased this series against 5.17-rc4 ...
I'll rebase v9 against linux-next.

Thx,
Guillaume.

> > ---
> >   drivers/video/hdmi.c        | 83 ++++++++++++++++++++++++++++---------
> >   include/drm/drm_dp_helper.h |  2 +
> >   include/linux/hdmi.h        |  7 +++-
> >   3 files changed, 72 insertions(+), 20 deletions(-)
> >

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
