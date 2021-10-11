Return-Path: <SRS0=o6wI=O7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74442C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 11 Oct 2021 13:48:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 228A360EB4
	for <linux-phy@archiver.kernel.org>; Mon, 11 Oct 2021 13:48:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 228A360EB4
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lkBy40ZklI8cBz22yb63Q7A2mmfZVATVr4hfnDgyr7w=; b=FygZozSkCLMlRO
	rZWVN3fBdFz3Onrw9yu/UZgminJBhKQRaGimEst+qjik4cuqANwV22m3cUdvtGHxPNAJqhXSsBB/M
	wIPG4rZJLdqLPjyzehWQ+B9QFzeeVs+vdhMRxAxmcRc4fSNm8iDJ116+MoIfBYUcSlyzoWVyPee3h
	fS1J5wGY1AOZLqVZ9Vy0CLfbU/ZEPRrSl4+7NOGuY/C1isdI/g9JW0TEq2g0kTDSGkFIZZzhx+ld5
	Lwo6rwbAyLolQGELYnIqIwHFZwNtDf9YJBrqTXOHFLZPUrvDusrK0tRVlkaCxG3HcGmE9gTa73Peh
	kz0HVWpId6d8BVSjdh/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZvfF-009cq8-Ub; Mon, 11 Oct 2021 13:48:25 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZvbB-009b5L-EM
 for linux-phy@lists.infradead.org; Mon, 11 Oct 2021 13:44:15 +0000
Received: by mail-wr1-x433.google.com with SMTP id o20so56283012wro.3
 for <linux-phy@lists.infradead.org>; Mon, 11 Oct 2021 06:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=A7TD3sEyqxQ0X3DP82vXK523PsJpNS15uJqkN1lKgwU=;
 b=3zqPHeCtiwGU0NHoNjgSWw1LEyR7aqUxglAy8cIU+b094JEYM0sP3n7hHVL8CHf8nf
 HXC7RzLd5409ZeHqe4WfAkl8+ylkyCktx0NxqRi9D1QWKjuKmpQLm4NvCB/rTmW6VTww
 fZVqtW4tUfmosRfRn1aKa6Zwhdrejx1Kss9q66Z0cy861o1qtj3cxjjChvdPe6xt39D2
 ifqCf68cXpW8HZCB439PpsWeH1v6vjNauAHUACGGo2NF4fC00VStBvLj0M3BjEsyqOmN
 cWHAPcE3qAbe5n2yj9eESC8xYQfxjfNpFkUAEdC6Bco+cQ7XIhA5bqV9BpMDf4iTjsiX
 JkZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=A7TD3sEyqxQ0X3DP82vXK523PsJpNS15uJqkN1lKgwU=;
 b=Yc2diUZsrVfPGkEpu8ORMKnNwEFXCqtW86h1NU5R1jBAcnWNVnllqpeBbCLShz5ZXy
 KCK6MBZgz7IWvvOaIvmjv3dXyYaG6mBIUMJdQh1UQhwva/ls+poF3aQiEAggTUtwpgzi
 BMLB1snR5Tq8aQKwsuSY9Q6KQUeVDE2n6yLs8wFaTadf827hCqeZ3y7OSDIsE8NIY3PG
 cbqFAjGDtT/yVfJ3isdVNlURl40sT22pS8Mcpdj4/bbfgKbsE02a0LmbBmaDdPDnrl5X
 f7YEmwq9uINBo01UCaIOwGFJWQbcwr7dGjohKklPP9wdTDrdQP4JXETT8VoLRsDU8drW
 kIhQ==
X-Gm-Message-State: AOAM5301FcJ56J5xKPdH0aQHsgsM+xw3/wsjEApV3K+pk8EpGag0hLjS
 KrMo6b8QaSdrqwMrWqg6Km62tg==
X-Google-Smtp-Source: ABdhPJydwj7M4z6iZA4YhZBGnqu/rkJnC9o3iN/3pp6K1plBVfMpdwPh8RRzmYY7BkzkRRwnEu23eA==
X-Received: by 2002:adf:e292:: with SMTP id v18mr759164wri.369.1633959848748; 
 Mon, 11 Oct 2021 06:44:08 -0700 (PDT)
Received: from blmsp ([2a02:2454:3e6:c900::97e])
 by smtp.gmail.com with ESMTPSA id v23sm7653201wmj.4.2021.10.11.06.44.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Oct 2021 06:44:08 -0700 (PDT)
Date: Mon, 11 Oct 2021 15:44:07 +0200
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Rob Herring <robh@kernel.org>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 linux-mediatek@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, dri-devel@lists.freedesktop.org,
 Philipp Zabel <p.zabel@pengutronix.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v4 2/7] dt-bindings: mediatek, dp: Add Display Port binding
Message-ID: <20211011134407.t57ajlzrcequ2ln4@blmsp>
References: <20211011094624.3416029-1-msp@baylibre.com>
 <20211011094624.3416029-3-msp@baylibre.com>
 <1633959378.253312.504945.nullmailer@robh.at.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1633959378.253312.504945.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_064413_531271_FE5DC47D 
X-CRM114-Status: GOOD (  19.94  )
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

Hi,

On Mon, Oct 11, 2021 at 08:36:18AM -0500, Rob Herring wrote:
> On Mon, 11 Oct 2021 11:46:19 +0200, Markus Schneider-Pargmann wrote:
> > This controller is present on several mediatek hardware. Currently
> > mt8195 and mt8395 have this controller without a functional difference,
> > so only one compatible field is added.
> > 
> > The controller can have two forms, as a normal display port and as an
> > embedded display port.
> > 
> > Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> > ---
> >  .../display/mediatek/mediatek,dp.yaml         | 89 +++++++++++++++++++
> >  1 file changed, 89 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
> > 
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> Documentation/devicetree/bindings/display/mediatek/mediatek,dp.example.dts:20:18: fatal error: dt-bindings/power/mt8195-power.h: No such file or directory
>    20 |         #include <dt-bindings/power/mt8195-power.h>
>       |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> compilation terminated.
> make[1]: *** [scripts/Makefile.lib:385: Documentation/devicetree/bindings/display/mediatek/mediatek,dp.example.dt.yaml] Error 1
> make[1]: *** Waiting for unfinished jobs....
> make: *** [Makefile:1441: dt_binding_check] Error 2

Yes, mt8195-power.h is unfortunately not merged yet.

Thanks,
Markus

> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/patch/1539195
> 
> This check can fail if there are any dependencies. The base for a patch
> series is generally the most recent rc1.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit.
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
