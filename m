Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EACAC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 25 Mar 2022 18:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fhImYzwVF8zY7dr99mFN4w6UBbQ6qnNzRDy33ZawoZ4=; b=nuDn5Bl1rQrWOH
	t0Sj7Gr6/zxopNwi2BGa82lgiwe0AK7pw2Dzg5k39YI7txl7mHJXXHMaOefdUUHVMaiduI/6Ck6HX
	YXUurMFJjE9KTpmfAA0p9s45Ce2ZHEZKSUjLbVmGBO2keNtxG73WcvUQmw/9EvAg9fk+Q+NWaqVNL
	M+QQQ0WbtyjRg8QgfhImUVSlrSCHITnNZaDBFSEeX3P3JOdyDDhas1ypMvy6W6UTXghmmqKB8IJes
	X5jSOo8JusTdlqojj0a3P3++9v9HMGARnUI4G+SnvEk+9K8mggm8aZYbIGrbVly0rhGf8cdxV902P
	yRgR5tSnky17ESlAm7sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXouP-00312i-07; Fri, 25 Mar 2022 18:43:37 +0000
Received: from mail-oi1-f175.google.com ([209.85.167.175])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXouD-003102-34; Fri, 25 Mar 2022 18:43:26 +0000
Received: by mail-oi1-f175.google.com with SMTP id q189so9074297oia.9;
 Fri, 25 Mar 2022 11:43:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=TD21QR0lMMXUO0nMDIjOEtGgypHb96HYAdoM26wDIGs=;
 b=0QfRwgaGxztLY/Z3V26OxZKg2/Tp+st/nsopfVdsQ9XbqI3XpGuFXSV05JSFk3Prov
 kNNdlusCvyYBOgR6Sy+3Nyx8lBf5h0dpJauCSK3cE+XgForqaBxe8diPX9+dPycIXFDD
 HEzS0kRUBDtzv/wtMUKX4RxmoM1aH7mcJTDkRZzeZrmk3n0/AoWyAPUAkpclhbXwMIQt
 alEqYMf7D9tuLVGxcLNtjsSt49byK0D7ZmnDiYQHuN2CsFoS6ZnvLBCTPcuZyI6AnKFY
 W3vFzLzQWdRLAVu4X0fDsEcsECy+mLHn2lWZMaLIBRnUK+QiRt122XdReE3TTZk+zmhj
 VsGA==
X-Gm-Message-State: AOAM531dyLETIlrhg0PA2R5Qv/3WIthOvtrnSz1lwtPalQUUS31vLmRo
 j4ovRWM0d5uvXUwq0GpJlw==
X-Google-Smtp-Source: ABdhPJxRhOXEGGu66qd3lltmMOUhaUE/Q4GESm8rEHbUQJkl8rylAaxB9T48w92FhlgVax8cPtc3MA==
X-Received: by 2002:a54:480b:0:b0:2ef:8e00:155b with SMTP id
 j11-20020a54480b000000b002ef8e00155bmr7912769oij.164.1648233804356; 
 Fri, 25 Mar 2022 11:43:24 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 k4-20020a9d4b84000000b005b2310ebdffsm3052644otf.54.2022.03.25.11.43.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Mar 2022 11:43:23 -0700 (PDT)
Received: (nullmailer pid 210218 invoked by uid 1000);
 Fri, 25 Mar 2022 18:43:22 -0000
From: Rob Herring <robh@kernel.org>
To: Guillaume Ranquet <granquet@baylibre.com>
Cc: deller@gmx.de, linux-fbdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 vkoul@kernel.org, jitao.shi@mediatek.com, mripard@kernel.org,
 matthias.bgg@gmail.com, kishon@ti.com, linux-phy@lists.infradead.org,
 airlied@linux.ie, markyacoub@google.com, chunfeng.yun@mediatek.com,
 robh+dt@kernel.org, Markus Schneider-Pargmann <msp@baylibre.com>,
 dri-devel@lists.freedesktop.org, ck.hu@mediatek.com,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 angelogioacchino.delregno@collabora.com, chunkuang.hu@kernel.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
 tzimmermann@suse.de, p.zabel@pengutronix.de, maarten.lankhorst@linux.intel.com,
 daniel@ffwll.ch
In-Reply-To: <20220325171511.23493-3-granquet@baylibre.com>
References: <20220325171511.23493-1-granquet@baylibre.com>
 <20220325171511.23493-3-granquet@baylibre.com>
Subject: Re: [PATCH 02/22] dt-bindings: mediatek,dp: Add Display Port binding
Date: Fri, 25 Mar 2022 13:43:22 -0500
Message-Id: <1648233802.138910.210217.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220325_114325_176144_D36A8ADD 
X-CRM114-Status: GOOD (  15.15  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Fri, 25 Mar 2022 18:14:51 +0100, Guillaume Ranquet wrote:
> From: Markus Schneider-Pargmann <msp@baylibre.com>
> 
> This controller is present on several mediatek hardware. Currently
> mt8195 and mt8395 have this controller without a functional difference,
> so only one compatible field is added.
> 
> The controller can have two forms, as a normal display port and as an
> embedded display port.
> 
> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../display/mediatek/mediatek,dp.yaml         | 97 +++++++++++++++++++
>  1 file changed, 97 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/display/mediatek/mediatek,dp.example.dts:24:18: fatal error: dt-bindings/power/mt8195-power.h: No such file or directory
   24 |         #include <dt-bindings/power/mt8195-power.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[1]: *** [scripts/Makefile.lib:378: Documentation/devicetree/bindings/display/mediatek/mediatek,dp.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1398: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1609494

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
