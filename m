Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2D0EC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 12 Apr 2022 08:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	MIME-Version:In-Reply-To:References:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8IzBNUbzNijdyAsQtME/63WSjf7LbO4q+GlQ+bTijOA=; b=UGZRnMCEMbIW24AYjCEAVhooOI
	ocuzTgZXIi/nTERcu2zXDppY9kxMRHRQy6IMbt/fD7nFd6fIhzucgcBXt/aAtiSOoFJqgifbDEmpY
	jKjFKKMMMhLKodP7ttxJDFS+wv6zZ35szyCn76J+CAGdfN1OZKONL57P058rxZwgE0KGoqI0enN67
	FPi7MK5GRFdi9iuLdFbdcKn0JF7Jd7vlQcK7lEZ4ZjyQaXFKTwdy/5TVvQymyPMlpEkY5Wqa0apQY
	dBCK163yMXh31qVdTmA7D5JQblPLHOWSslAbGu2h2UCzxpgE+TyjAjE8ygxtr2aDFgICW5wpbBpdU
	QtfRDiDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neCLn-00CjV9-5j; Tue, 12 Apr 2022 08:58:15 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neCLV-00CjKK-5E
 for linux-phy@lists.infradead.org; Tue, 12 Apr 2022 08:57:59 +0000
Received: by mail-oi1-x233.google.com with SMTP id z8so18369372oix.3
 for <linux-phy@lists.infradead.org>; Tue, 12 Apr 2022 01:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:user-agent:references:in-reply-to:mime-version:date:message-id
 :subject:to:cc;
 bh=4FpzyyLj/OdDU3ZmpUpstG+y8CAFSWZd/AR4b2PM65Y=;
 b=O4uumP51JcV7qBCLnK0EA1pkMY6sGD/pTvzvNjou2PgcdwHOFuibGIptBgZ3zJNPCO
 HNcpOraxajhSfH6FKpX+oohFsR9+cAmNzr3raUAIRjIXsDz70WJRGRPe0sBzCtIorZSn
 jwU9hlWq8nhRQgCL+0BDauOseU08SQ6kHBE39slH9gyCacBPIRunwbgJFwT4MEAkgB4u
 XOLgBEcCs1r6ODorwmX7IF0ZhAGaeOSeAxRCXAcIUN8mXCyKnW+FU3R/7MlScEWkf0VY
 ZvjB33mZDqS56xB5bdfVu9Bjy/qdU0l0vvxbk6G4z6AorUZE6E2dkUcfig1wxL70aOEU
 PS7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:user-agent:references:in-reply-to
 :mime-version:date:message-id:subject:to:cc;
 bh=4FpzyyLj/OdDU3ZmpUpstG+y8CAFSWZd/AR4b2PM65Y=;
 b=tpZHoGT9tpR0jRkgO44IuLUT5qg4phT28FxKCAbFSWXFuN7+H0nFgIZX/B/KNl+Fel
 Aktqx9+88cNfqsdp1q7HW0nKS3hbnkizAkOsBh2/QFHAfQfKuReUu9525jBbiRX/yuPG
 D5PVE9O/MPCHQbGGQ8fuhQcYeZPRizfe5fjNMjtL84v3nLQH9sYhjLoUt580o01oeMNd
 w6YDQXYsST2DKPfy/TkvIms4QvY5bAIp+xEYfunBFosc4iufFrndg6rEy53gyWNX99oa
 owIcUf15KrHhXVbCG/rqxgnadzL3eObIhwy3ibTqyd/I8O9cwdrlTaV8Q2xdTQ+8kkkG
 qzjA==
X-Gm-Message-State: AOAM533RPa5bNgSAUX27GyOLNmcNJV5kMc5quHpHlTEVdJa2apVfXEeD
 L6O+FWiqf9bEuAu02JD0i4oejcFr5TyKbvisF1fQEw==
X-Google-Smtp-Source: ABdhPJyGsXSnBb0OrYJzuxK+lplYEUvtBMZUA3XN/6JoCjC1Dfht5xOEuqQ6v8izMrWtfTdYVEwhffLY26AWeFbXjVU=
X-Received: by 2002:a05:6808:159d:b0:2da:3946:ab3d with SMTP id
 t29-20020a056808159d00b002da3946ab3dmr1258843oiw.248.1649753874382; Tue, 12
 Apr 2022 01:57:54 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 12 Apr 2022 01:57:53 -0700
From: Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20220327223927.20848-1-granquet@baylibre.com>
 <20220327223927.20848-5-granquet@baylibre.com>
 <0c523ad5-6a71-5c71-17b8-1f15c1860d89@collabora.com>
In-Reply-To: <0c523ad5-6a71-5c71-17b8-1f15c1860d89@collabora.com>
MIME-Version: 1.0
Date: Tue, 12 Apr 2022 01:57:53 -0700
Message-ID: <CABnWg9vxnLqAsoLOSHekwa9q3v=atLJEXpXADMc-bj+z1mkQHA@mail.gmail.com>
Subject: Re: [PATCH v9 04/22] drm/edid: Convert cea_sad helper struct to
 kernelDoc
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 vkoul@kernel.org, 
 airlied@linux.ie, chunfeng.yun@mediatek.com, chunkuang.hu@kernel.org, 
 ck.hu@mediatek.com, daniel@ffwll.ch, deller@gmx.de, jitao.shi@mediatek.com, 
 kishon@ti.com, krzk+dt@kernel.org, maarten.lankhorst@linux.intel.com, 
 matthias.bgg@gmail.com, mripard@kernel.org, p.zabel@pengutronix.de, 
 robh+dt@kernel.org, tzimmermann@suse.de
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-fbdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-phy@lists.infradead.org, markyacoub@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_015757_225645_724DC557 
X-CRM114-Status: UNSURE (   9.59  )
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

On Mon, 28 Mar 2022 10:04, AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>Il 28/03/22 00:39, Guillaume Ranquet ha scritto:
>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>> ---
>>   include/drm/drm_edid.h | 11 ++++++++---
>>   1 file changed, 8 insertions(+), 3 deletions(-)
>>
>> diff --git a/include/drm/drm_edid.h b/include/drm/drm_edid.h
>> index 144c495b99c4..5d4d840b9904 100644
>> --- a/include/drm/drm_edid.h
>> +++ b/include/drm/drm_edid.h
>> @@ -359,12 +359,17 @@ struct edid {
>>
>>   #define EDID_PRODUCT_ID(e) ((e)->prod_code[0] | ((e)->prod_code[1] << 8))
>>
>> -/* Short Audio Descriptor */
>
>Hello Guillaume,
>
>> +/* struct cea_sad - Short Audio Descriptor.
>> +	@format: See HDMI_AUDIO_CODING_TYPE_*.
>> +	@channels: max number of channels - 1.
>> +	@freq: See CEA_SAD_FREQ_*.
>> +	@byte2: meaning depends on format.
>> +*/
>
>I appreciate the effort, but this is not valid kerneldoc.
>
>Please refer to https://docs.kernel.org/doc-guide/kernel-doc.html
>
>Regards,
>Angelo

Hello Angelo,

Thx for your review.
I'm sorry I posted this v9 in a bit of a rush...
but I promise we will get there... eventually :D

Thx,
Guillaume.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
