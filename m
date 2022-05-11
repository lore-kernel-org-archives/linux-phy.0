Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFA30C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 11 May 2022 12:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	MIME-Version:In-Reply-To:References:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SOyz7GZORNWlQg02pZJx2wqTsQdg9Yq9gcYDeD5Fsms=; b=kq3H546Fkgjj0wV++JKs1maH9a
	waJC0hkTcPZagS73pxp/XYdqROi9b2K88olq3CmEa4CLIBri+Y8lm2Ym3codtDQZvzOClAO12Q98k
	QVR8YgCOctOly2t7VbeKGKQhhHObt4MOR6nffpsDahM5TZvWoIKmQYbt8UOjjOPdFDWAgYh6A/CgC
	Ln8/uDfTZK+r00KH8FUGLod11mIu7TT4ZBD5CgM3l/7b8s/7K9MmyWjlIddmaXhNKbj99+n8C/Tb2
	mscSU+SzXnQPK076W0eqLBWsbxyMgKC930QqjvFzFasUNPpSF1vHhIoOgPU/4B5+bNslSd/2Wg7et
	c+tEnWlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nolat-006na2-Ve; Wed, 11 May 2022 12:37:31 +0000
Received: from mail-vk1-xa36.google.com ([2607:f8b0:4864:20::a36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nolaf-006nVb-OQ
 for linux-phy@lists.infradead.org; Wed, 11 May 2022 12:37:22 +0000
Received: by mail-vk1-xa36.google.com with SMTP id q136so1071133vke.10
 for <linux-phy@lists.infradead.org>; Wed, 11 May 2022 05:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:user-agent:references:in-reply-to:mime-version:date:message-id
 :subject:to:cc;
 bh=v9Th8rxPiWf3ZnzxeLk5F4SGsw0EdAo79OtQwsPtPNc=;
 b=qZGqNwBdtTPSsXJ4TudOdVSft1cn0crk+rUA+BXcaAtlIIcDlbrBzGZl1G6ZvqtL0/
 52aPzGjkDjxenmbtmqIx6HbPYriuF0amTOjLWM4rtPHVTv/9qzizlClERaRHxX71D0ie
 /JuDIGifRPC2mJZsXUpCyTfdP6nLePIyl87T0VN3BU/AWzRxgidSFlfa9LPoAfc+5GxY
 LpL/W8t6FtVAAJclUgCOS+NJAgUpE/918VqAruLfHfgduNmM7bpqSwYcGW0lFDx6KmLh
 z/P+C9mYP3Rw8n+JWR2eJ+XXz039AdpnO9kvyDW1SbdY7w98B+1jppF+iMFrluk/aUcT
 y8Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:user-agent:references:in-reply-to
 :mime-version:date:message-id:subject:to:cc;
 bh=v9Th8rxPiWf3ZnzxeLk5F4SGsw0EdAo79OtQwsPtPNc=;
 b=xmLESw8zLdwvLDvpE9wQBevgeLpMmidUIYJDTUnD9WLW8cEdwoaNN3IvOBd59yPDWj
 AxPxe1NC/TKKn2Evp+lBYc1wbV40eTk/9Dt9BEsi2tcqY+jK0b3u9tWxwwcdzzN1bpYn
 IRB2219cfIobmFzTltWumpHKvRSxtQzZowdfL0o7l7uPy1QxCITHXCkiebOhs8SKcxYD
 NF9OQLfG/tiknN9b3k6DgqkphVbKZuUV1N5OUO5cRO9hTQhhF1FjK3Mxji/CXw7MPjAU
 HCGxgu10gCIi0rby/NbI1faAOHGqNBHv/0qfgAKUzvnD/0f+G+/1fTpgECQ8v26eayrd
 WZZQ==
X-Gm-Message-State: AOAM532wpYBva41WhDC6UQ5yiQ6FGFYxJNjxSuavwA/fsZh+H5P1FnL5
 u6zwQCJ0A/DLEY7cBHm4tWlV76hC4qBYEdsw+LDIsQ==
X-Google-Smtp-Source: ABdhPJxBn9ixvONga67IFvsidm0urKpQCjlwF7V0itqftu5rkpNVWoXNuJCCn1qTxzlSqdUM84jEJ4VrTbu4KEramCk=
X-Received: by 2002:a05:6122:511:b0:34e:e406:a66d with SMTP id
 x17-20020a056122051100b0034ee406a66dmr14033939vko.6.1652272634992; Wed, 11
 May 2022 05:37:14 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 11 May 2022 05:37:13 -0700
From: Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20220327223927.20848-1-granquet@baylibre.com>
 <20220327223927.20848-2-granquet@baylibre.com>
 <20220422105712.bdpbwliificvon4j@houat>
In-Reply-To: <20220422105712.bdpbwliificvon4j@houat>
MIME-Version: 1.0
Date: Wed, 11 May 2022 05:37:13 -0700
Message-ID: <CABnWg9uwMN6yK-xfCPtRsLif5yC7AU5b+OKc0xaHjLKzQ__gJA@mail.gmail.com>
Subject: Re: [PATCH v9 01/22] dt-bindings: mediatek,
 dpi: Add DP_INTF compatible
To: Maxime Ripard <maxime@cerno.tech>
Cc: airlied@linux.ie, angelogioacchino.delregno@collabora.com, 
 chunfeng.yun@mediatek.com, chunkuang.hu@kernel.org, ck.hu@mediatek.com, 
 daniel@ffwll.ch, deller@gmx.de, jitao.shi@mediatek.com, kishon@ti.com, 
 krzk+dt@kernel.org, maarten.lankhorst@linux.intel.com, matthias.bgg@gmail.com, 
 p.zabel@pengutronix.de, robh+dt@kernel.org, tzimmermann@suse.de, 
 vkoul@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-fbdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-phy@lists.infradead.org, markyacoub@google.com, 
 Markus Schneider-Pargmann <msp@baylibre.com>, Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_053718_037242_390BB9B2 
X-CRM114-Status: GOOD (  14.69  )
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

On Fri, 22 Apr 2022 12:57, Maxime Ripard <maxime@cerno.tech> wrote:
>Hi,
>
>On Mon, Mar 28, 2022 at 12:39:06AM +0200, Guillaume Ranquet wrote:
>> From: Markus Schneider-Pargmann <msp@baylibre.com>
>>
>> DP_INTF is similar to DPI but does not have the exact same feature set
>> or register layouts.
>>
>> DP_INTF is the sink of the display pipeline that is connected to the
>> DisplayPort controller and encoder unit. It takes the same clocks as
>> DPI.
>>
>> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>> Reviewed-by: Rob Herring <robh@kernel.org>
>> ---
>>  .../bindings/display/mediatek/mediatek,dpi.yaml       | 11 ++++++-----
>>  1 file changed, 6 insertions(+), 5 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
>> index dd2896a40ff0..2dba80ad3b18 100644
>> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
>> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
>> @@ -4,16 +4,16 @@
>>  $id: http://devicetree.org/schemas/display/mediatek/mediatek,dpi.yaml#
>>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>>
>> -title: mediatek DPI Controller Device Tree Bindings
>> +title: mediatek DPI/DP_INTF Controller
>>
>>  maintainers:
>>    - CK Hu <ck.hu@mediatek.com>
>>    - Jitao shi <jitao.shi@mediatek.com>
>>
>>  description: |
>> -  The Mediatek DPI function block is a sink of the display subsystem and
>> -  provides 8-bit RGB/YUV444 or 8/10/10-bit YUV422 pixel data on a parallel
>> -  output bus.
>> +  The Mediatek DPI and DP_INTF function blocks are a sink of the display
>> +  subsystem and provides 8-bit RGB/YUV444 or 8/10/10-bit YUV422 pixel data on a
>> +  parallel output bus.
>>
>>  properties:
>>    compatible:
>> @@ -23,6 +23,7 @@ properties:
>>        - mediatek,mt8173-dpi
>>        - mediatek,mt8183-dpi
>>        - mediatek,mt8192-dpi
>> +      - mediatek,mt8195-dpintf
>
>It seems a bit weird to have all instances of DP_INTF with a separator
>but the compatible doesn't have one?
>
>Is there a reason to not use dp-intf?

None that I know of, It was taken as is from the vendor tree.
I'll use dp-intf in v10 for the sake of consistency.

Thx,
Guillaume.

>
>Maxime

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
