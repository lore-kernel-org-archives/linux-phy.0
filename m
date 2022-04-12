Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C65D5C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 12 Apr 2022 10:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	MIME-Version:In-Reply-To:References:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qMx/hzo78QcvEpPSYOO3BvkVN7wbqiEQhU/s8tsmU7Y=; b=lVQ2pmOHvwHtZcCxRxND2pgjaL
	u7eVwC25qUKGNzKmAmMUbbDURXzb7dmP9Br6+LGp1GWLFW7r07qZ5CKFjYJI7lo4sYqXur0LXeehm
	sOH5m8oiP0Ag2hmRC9sS6DYWLx0JoXBLwIRtoAgPwmdW46pQMZpxxdvXLaJ6FdksBX88nyP9BX/pp
	uX7lebt5vbM5m5TY2Ze1ErFsNVNbhWiU2jZ5KV1IludlWtRYQGjmWjYQiKrFjcP5D9EOgjEHOTLIn
	24tuQN6cvE/qA0xoyux4/QIDtLWcU5vZ/eGDbGQlfIboUky/pNJKXw6p1JVHUF88furh7zj2zkxTZ
	KMlrE6xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neDQ2-00D9oO-70; Tue, 12 Apr 2022 10:06:42 +0000
Received: from mail-oa1-x2b.google.com ([2001:4860:4864:20::2b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neDPX-00D9aF-Fa
 for linux-phy@lists.infradead.org; Tue, 12 Apr 2022 10:06:14 +0000
Received: by mail-oa1-x2b.google.com with SMTP id
 586e51a60fabf-de3eda6b5dso20302211fac.0
 for <linux-phy@lists.infradead.org>; Tue, 12 Apr 2022 03:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:user-agent:references:in-reply-to:mime-version:date:message-id
 :subject:to:cc;
 bh=tZvbGpFjILGpekjAvGDF0y9dQ6Kd+gBt4gVMWfKJuAk=;
 b=Xo8+YSn3qT7Jhf9u4FuGYXY6Bov1PRuEhL0/Es2kDk9T156ExPENxfB+L80w1q/WN8
 AY7X2X8pBC+egX5EAP7hbmLqVYYquyMaM+9TMa0V8rrwt4eOMwpnKS1rXrmKnJYddRKl
 WXqMioKIAM/xFynvUhz/5U8QrlcdzmdQycq7DES/Sco99BT/85Gs/jV5R1n5nlmInzkN
 Xusklq+2enfKbeU1Z/uYCXgSMZElx/lRCPsCgmbehOhUkX+zIy72zJ9+1JEhZnnHiF0b
 7lrsXEthfoBv0c5BqbSXLUfcVprx8t79rP5dVaUdlBdoIR+brcAYyZc6c3+7XT7Jw7uM
 vcvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:user-agent:references:in-reply-to
 :mime-version:date:message-id:subject:to:cc;
 bh=tZvbGpFjILGpekjAvGDF0y9dQ6Kd+gBt4gVMWfKJuAk=;
 b=YEOLKM55d9s9X8L2Os3+r1kPw2fDmND2e4BANOgUu58dnXCwcBxaVp5H6xnqHGMQv+
 8cerYQb3w8wIWzIi6mYf9Sk1Q5rI6jzcbZ7E999h2s35kc+bSN/4jvQ3epIJzSHP0Iqh
 MbEkUwgyErJyKIg5vMsHkLabeEFaJFAvc0RB/nwEMbKG9zREQrUQHRR5AkOqqctlYlFj
 Bj9DWbtqDxWF0GfHxrvGGjICJApt4LRWzcLQbpPw6HSKWnjzbdGPMUDTnMLMcfjsAVOq
 9g4cYLDDZJr5F1w1eVELnCYFAUEoNZFzcrmSmTTvQ3tJ539FDaEMpA1i93bKNzSGjQpU
 XDfw==
X-Gm-Message-State: AOAM531yAIBr/qU8/1sQmqz48qQz2Ya6V+KoR+KoLynzQYWLbeeN1GfH
 W9Uan7kZ59YXwfOeZMr/ixPxp8EwyYZUGb/IzbQiTA==
X-Google-Smtp-Source: ABdhPJw3WX7NFQkxU4ADRLrRdzB/pHuRSdo1xjaZj5zggo6wW/RSRVmkJtH7xxbo7eDcNYsrg++TE2K0RicigcNQMoo=
X-Received: by 2002:a05:6870:f21a:b0:dd:9bec:caf8 with SMTP id
 t26-20020a056870f21a00b000dd9beccaf8mr1670792oao.78.1649757969594; Tue, 12
 Apr 2022 03:06:09 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 12 Apr 2022 03:06:08 -0700
From: Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20220327223927.20848-1-granquet@baylibre.com>
 <20220327223927.20848-4-granquet@baylibre.com>
 <YkOPB5W7uXkOc72/@robh.at.kernel.org>
In-Reply-To: <YkOPB5W7uXkOc72/@robh.at.kernel.org>
MIME-Version: 1.0
Date: Tue, 12 Apr 2022 03:06:08 -0700
Message-ID: <CABnWg9tvh31wibtTO2nETfJ9XtST0Ejjea0_2q1Hd5GRs9DN4Q@mail.gmail.com>
Subject: Re: [PATCH v9 03/22] dt-bindings: mediatek,dp_phy: Add Display Port
 PHY binding
To: Rob Herring <robh@kernel.org>
Cc: airlied@linux.ie, angelogioacchino.delregno@collabora.com, 
 chunfeng.yun@mediatek.com, chunkuang.hu@kernel.org, ck.hu@mediatek.com, 
 daniel@ffwll.ch, deller@gmx.de, jitao.shi@mediatek.com, kishon@ti.com, 
 krzk+dt@kernel.org, maarten.lankhorst@linux.intel.com, matthias.bgg@gmail.com, 
 mripard@kernel.org, p.zabel@pengutronix.de, tzimmermann@suse.de, 
 vkoul@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-fbdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-phy@lists.infradead.org, markyacoub@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_030611_571091_A86A6BDD 
X-CRM114-Status: GOOD (  11.28  )
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

On Wed, 30 Mar 2022 00:58, Rob Herring <robh@kernel.org> wrote:
>On Mon, Mar 28, 2022 at 12:39:08AM +0200, Guillaume Ranquet wrote:
>> This phy controller is embedded in the Display Port Controller on mt8195 SoCs.
>
>Sorry, but I think you need to go back to what you had in v8. While yes,
>the phy and controller IP often do change independently, this h/w looks
>pretty interwined.

Understood, I'll revert back to v8.

>
>You could make the controller a phy provider to itself if you wanted.

Not sure I follow, could you point me to an example?

Thx,
Guillaume.
>
>>
>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>> ---
>>  .../bindings/phy/mediatek,dp-phy.yaml         | 43 +++++++++++++++++++
>>  1 file changed, 43 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/phy/mediatek,dp-phy.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/phy/mediatek,dp-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,dp-phy.yaml
>> new file mode 100644
>> index 000000000000..1f5ffca4e140
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/mediatek,dp-phy.yaml
>> @@ -0,0 +1,43 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +# Copyright (c) 2022 MediaTek
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/mediatek,dp-phy.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: MediaTek Display Port PHY
>> +
>> +maintainers:
>> +  - CK Hu <ck.hu@mediatek.com>
>> +  - Jitao shi <jitao.shi@mediatek.com>
>> +
>> +description: |
>> +  Device tree bindings for the Mediatek (embedded) Display Port PHY
>> +  present on some Mediatek SoCs.
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - mediatek,mt8195-dp-phy
>> +
>> +  mediatek,dp-syscon:
>> +    $ref: /schemas/types.yaml#/definitions/phandle
>> +    description: Phandle to the Display Port node.
>> +
>> +  "#phy-cells":
>> +    const: 0
>> +
>> +required:
>> +  - compatible
>> +  - mediatek,dp-syscon
>> +  - "#phy-cells"
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    dp_phy: dp-phy {
>> +      compatible = "mediatek,mt8195-dp-phy";
>> +      mediatek,dp-syscon = <&dp_tx>;
>> +      #phy-cells = <0>;
>> +    };
>> --
>> 2.34.1
>>
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
