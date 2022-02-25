Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E676C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 25 Feb 2022 10:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I85rmPaKS5rL4F2pMZhxAZKhhDeiIKL5FPx0VuaS9Po=; b=WmpJtaB+yuCPGO
	BDsqeo/u+xTA1Aw0y3UGf9C6uIuHEGb1AM/2GrYJZ1UXI5YmONYHx6ZN+xBM3oNiMwFraFBSyBU46
	Awf+nOeTy1YcgBIDph9vISk3JMx7cAB456ErrW2nw34Zh5dQmpVSOcwHHn0Cxp1USXu1PdoPJJ+S6
	RdmMr5DlMkPb9MZDiJG5vjOdZ4FLbNUq+oc2vRy5xD9NI+zOXQBU58T5QTl3rRACW7/MkOlmhVxni
	G2OENcR+lhayEan9NxxzaDJZcWcagUP6FKHFBDaFoqROs3Lhxtua+wAC9RItwAOripZps1TFmcn2w
	kuI+ZQILFedjaqT7STrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNY0O-004SjO-EY; Fri, 25 Feb 2022 10:39:20 +0000
Received: from mail-oo1-xc31.google.com ([2607:f8b0:4864:20::c31])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNXzs-004SVn-MN
 for linux-phy@lists.infradead.org; Fri, 25 Feb 2022 10:38:52 +0000
Received: by mail-oo1-xc31.google.com with SMTP id
 189-20020a4a03c6000000b003179d7b30d8so5712671ooi.2
 for <linux-phy@lists.infradead.org>; Fri, 25 Feb 2022 02:38:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:in-reply-to:references:from:user-agent:date:message-id
 :subject:to:cc;
 bh=xZ4zjaBnvBmfIipJXsuhj1ZP+RFg/unPs4PTp2Z5ieY=;
 b=yiQZqYII3sc13NjjIWXB18MkoyJYXTOkBrGG9g6xtnwDMS+IKf0QJGwiFsDu2eILzf
 A6d3TFy72zl8E0B1RHUJoZTybOXn+AHRBlxvmwGl9FGpQgY6l17dqhGl9AQQViadNTbj
 0wKUtFNrho/JVAk0b0XTP5tmAQJoi5bhzC3X7Wr0IPGzrHeXZ2bPnPjzfjqBYmjoaySx
 0qREFcmejieCPGBJoQWWfUauQ4BDYDTPR818CHpBDFajp1aELdNmmolIzDVDDOXO9v4O
 DFag+yzvCf3OpGKQPkeQXZTRILxB2h1015709bpGG9S9B1dUydKW3dRlQwGPhmATDDoN
 DWgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:in-reply-to:references:from
 :user-agent:date:message-id:subject:to:cc;
 bh=xZ4zjaBnvBmfIipJXsuhj1ZP+RFg/unPs4PTp2Z5ieY=;
 b=aZ3gnsQ0NbtIf+CU+BPWjkAk1mR1wYa0ePrQ3LKYesDBK4r5XONgWXRnCPFopfAQ3z
 Fsi5keINEVr9A39U0bkHeQZW3ZyF4uLrvgINyp001Bu7c3RQdOmsad3RWLS2VOjS70Di
 EqNmyQTk1GlKmF0lb+v8rlWLuYX8ddicCri8sz7xgOgcsdeMh1dlHRO3b1YVOLj6S+S1
 psEKXUHLdLG7vn04co8l1emMRSrFwztIivrExhbkCXdabJ/ZPCSQXbI518uHaI+Zet4i
 EH6x47fNGvSWBOkBYdYiM+Vis3L67IJMIv+K8bfyjUn0wFona265MJ3vtCOftBTOrMzD
 7c0Q==
X-Gm-Message-State: AOAM532PkFIqmMJS6wo7/vO0f8ESbf3WeuJOlm61w3Mwd+Soislpv1Dk
 kHGe1et8iPRGHYs7vXOmoEa4hjLlDhMUvzvcOh0tqA==
X-Google-Smtp-Source: ABdhPJzKoOVyeE+Q0+YDcG+MhLAzrtOSeZ4qRlKcY1izzMw0S8O6ExkCYq91DUvdulYydl69odknNpE/qzy8Fdq6FIY=
X-Received: by 2002:a05:6870:b486:b0:d6:f01f:41cc with SMTP id
 y6-20020a056870b48600b000d6f01f41ccmr196276oap.41.1645785527660; Fri, 25 Feb
 2022 02:38:47 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 25 Feb 2022 02:38:47 -0800
MIME-Version: 1.0
In-Reply-To: <a7605c9f-55f9-c7cc-f2b9-89ddbffb4927@collabora.com>
References: <20220218145437.18563-1-granquet@baylibre.com>
 <20220218145437.18563-5-granquet@baylibre.com>
 <a7605c9f-55f9-c7cc-f2b9-89ddbffb4927@collabora.com>
From: Guillaume Ranquet <granquet@baylibre.com>
User-Agent: alot/0.10
Date: Fri, 25 Feb 2022 02:38:47 -0800
Message-ID: <CABnWg9v-gamMoex-CSLY9uOPKbcm3dBDvYLSRX9LHuhYua=wDQ@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20220225_023848_758576_22708C04 
X-CRM114-Status: GOOD (  29.11  )
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

Quoting AngeloGioacchino Del Regno (2022-02-21 15:30:07)
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
> > ---
> >   drivers/video/hdmi.c        | 83 ++++++++++++++++++++++++++++---------
> >   include/drm/drm_dp_helper.h |  2 +
> >   include/linux/hdmi.h        |  7 +++-
> >   3 files changed, 72 insertions(+), 20 deletions(-)
> >
> > diff --git a/drivers/video/hdmi.c b/drivers/video/hdmi.c
> > index 947be761dfa40..63e74d9fd210e 100644
> > --- a/drivers/video/hdmi.c
> > +++ b/drivers/video/hdmi.c
> > @@ -21,6 +21,7 @@
> >    * DEALINGS IN THE SOFTWARE.
> >    */
> >
> > +#include <drm/drm_dp_helper.h>
> >   #include <linux/bitops.h>
> >   #include <linux/bug.h>
> >   #include <linux/errno.h>
> > @@ -381,12 +382,34 @@ static int hdmi_audio_infoframe_check_only(const struct hdmi_audio_infoframe *fr
> >    *
> >    * Returns 0 on success or a negative error code on failure.
> >    */
> > -int hdmi_audio_infoframe_check(struct hdmi_audio_infoframe *frame)
> > +int hdmi_audio_infoframe_check(const struct hdmi_audio_infoframe *frame)
> >   {
> >       return hdmi_audio_infoframe_check_only(frame);
> >   }
> >   EXPORT_SYMBOL(hdmi_audio_infoframe_check);
> >
> > +static void
> > +hdmi_audio_infoframe_pack_payload(const struct hdmi_audio_infoframe *frame,
> > +                               u8 *buffer)
> > +{
> > +     u8 channels;
> > +
> > +     if (frame->channels >= 2)
> > +             channels = frame->channels - 1;
> > +     else
> > +             channels = 0;
> > +
> > +     buffer[0] = ((frame->coding_type & 0xf) << 4) | (channels & 0x7);
> > +     buffer[1] = ((frame->sample_frequency & 0x7) << 2) |
> > +              (frame->sample_size & 0x3);
> > +     buffer[2] = frame->coding_type_ext & 0x1f;
> > +     buffer[3] = frame->channel_allocation;
> > +     buffer[4] = (frame->level_shift_value & 0xf) << 3;
> > +
> > +     if (frame->downmix_inhibit)
> > +             buffer[4] |= BIT(7);
> > +}
> > +
> >   /**
> >    * hdmi_audio_infoframe_pack_only() - write HDMI audio infoframe to binary buffer
> >    * @frame: HDMI audio infoframe
> > @@ -404,7 +427,6 @@ EXPORT_SYMBOL(hdmi_audio_infoframe_check);
> >   ssize_t hdmi_audio_infoframe_pack_only(const struct hdmi_audio_infoframe *frame,
> >                                      void *buffer, size_t size)
> >   {
> > -     unsigned char channels;
> >       u8 *ptr = buffer;
> >       size_t length;
> >       int ret;
> > @@ -420,28 +442,13 @@ ssize_t hdmi_audio_infoframe_pack_only(const struct hdmi_audio_infoframe *frame,
> >
> >       memset(buffer, 0, size);
> >
> > -     if (frame->channels >= 2)
> > -             channels = frame->channels - 1;
> > -     else
> > -             channels = 0;
> > -
> >       ptr[0] = frame->type;
> >       ptr[1] = frame->version;
> >       ptr[2] = frame->length;
> >       ptr[3] = 0; /* checksum */
> >
> > -     /* start infoframe payload */
> > -     ptr += HDMI_INFOFRAME_HEADER_SIZE;
> > -
> > -     ptr[0] = ((frame->coding_type & 0xf) << 4) | (channels & 0x7);
> > -     ptr[1] = ((frame->sample_frequency & 0x7) << 2) |
> > -              (frame->sample_size & 0x3);
> > -     ptr[2] = frame->coding_type_ext & 0x1f;
> > -     ptr[3] = frame->channel_allocation;
> > -     ptr[4] = (frame->level_shift_value & 0xf) << 3;
> > -
> > -     if (frame->downmix_inhibit)
> > -             ptr[4] |= BIT(7);
> > +     hdmi_audio_infoframe_pack_payload(frame,
> > +                                       ptr + HDMI_INFOFRAME_HEADER_SIZE);
> >
> >       hdmi_infoframe_set_checksum(buffer, length);
> >
> > @@ -479,6 +486,44 @@ ssize_t hdmi_audio_infoframe_pack(struct hdmi_audio_infoframe *frame,
> >   }
> >   EXPORT_SYMBOL(hdmi_audio_infoframe_pack);
> >
> > +/**
> > + * hdmi_audio_infoframe_pack_for_dp - Pack a HDMI Audio infoframe for
> > + *                                    displayport
>
> This fits in one line (82 cols is ok)... but, anyway, please capitalize D and P
> in the DisplayPort word.
>

Yeah, I ran clang-format and didn't want to contradict the tool :)
I'll fix that for v9

> > + *
> > + * @frame HDMI Audio infoframe
>
> You're almost there! You missed a colon after each description.
> Also, I personally like seeing indented descriptions as, in my opinion, this
> enhances human readability, as it's a bit more pleasing to the eye... but
> it's not a requirement, so you be the judge.
>
> * @frame:      HDMI Audio infoframe
> * @sdp:        Secondary data packet......
> * @dp_version: DisplayPort version......
>
> Please fix.
>

I completly forgot to generate and check the kerneldoc.
Sorry.

> > + * @sdp secondary data packet for display port. This is filled with the
> > + * appropriate data
> > + * @dp_version Display Port version to be encoded in the header
> > + *
> > + * Packs a HDMI Audio Infoframe to be sent over Display Port. This function
> > + * fills the secondary data packet to be used for Display Port.
> > + *
> > + * Return: Number of total written bytes or a negative errno on failure.
> > + */
> > +ssize_t
> > +hdmi_audio_infoframe_pack_for_dp(const struct hdmi_audio_infoframe *frame,
> > +                              struct dp_sdp *sdp, u8 dp_version)
> > +{
> > +     int ret;
> > +
> > +     ret = hdmi_audio_infoframe_check(frame);
> > +     if (ret)
> > +             return ret;
> > +
> > +     memset(sdp->db, 0, sizeof(sdp->db));
> > +
> > +     // Secondary-data packet header
>
> Please, C-style comments:
>
>         /* Secondary-data packet header */
>
> Thanks,
> Angelo

I think this is not the only case of C++ comment that slipped past me...
I'll revise the whole series.

Thx,
Guillaume.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
