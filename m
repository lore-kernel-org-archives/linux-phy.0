Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A9F7C4332F
	for <linux-phy@archiver.kernel.org>; Mon,  7 Nov 2022 20:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yIZUK+D0QqXvyO4rhCzaLk6MIDZvbAnk4WtMALNkCIw=; b=tDOmjgb45+quRI
	zZIvJDHLrVM2QaiKYK8vK2SXfRnOM961tw/m2V54CbWakQuNr6MIFm7KN/CuTP/RWvyBiKd4l2BEs
	iOwPh26eNm+2e83V/OcS7nP2KoTeWvDfPs1tHZEiyaBevDVmeC0rCB4zE4btVJYaNPfWKatePMZnL
	DiTj63oRa6KW9f5O6gLDEKOuIxl9X2X8GI1iyaka31SKwX/xVqq4YItcK0+Pw8UTESqALuXL6S0xe
	zYeLJ6Ib7/s93jK1f9nIOKFLw/EyEBHvZ0KNZbVNxA8CC9daRfZ8BAH7CWX9OF+O2KvGprV+fhyMm
	QqfEwkKf+tOwVZyibP0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os8Vx-000Gxa-Un; Mon, 07 Nov 2022 20:14:37 +0000
Received: from mail-oa1-f44.google.com ([209.85.160.44])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os8Vf-000GnR-9a; Mon, 07 Nov 2022 20:14:20 +0000
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-1322d768ba7so13974031fac.5;
        Mon, 07 Nov 2022 12:14:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UTyYkKmk0ZFg6NKvx4h4V1/U52aTfp/VeufT5wgxfcc=;
        b=g0z/PSaLJqiqZibg7S6DYLNLj5g22pWdx2RhT/jwYpeFVwOKuvOXVuw5OZIoQaeDh0
         JSAFYzkOwRXVs7mLR/V517YtC6gXnYm2mZPoNbPA+i83lOcKcQVE3Yq6wVqLuJh1vYd8
         Ybxk6A2rk/aQCsm7CQjcX008eZ63RTZKk4PbsLWWTCd8Z1OeqPNQXaeRuxIMUkj6D9qL
         Z1DrjAsl29wRP1mE9Q/C8uL0YRi6ImZMnQZiWvyeWHCH2cPecPUWv0GF5GoL4eiThmGY
         3wSd9WNSd6wSNfSqHWP4ddTUU2BHwI87X++Z6vS15f9wyg8qDcLHynqRBNIWkwN1HyZM
         ttLA==
X-Gm-Message-State: ACrzQf339jyxvX/bHFlegaM5ozk6GXG7WwPiXLBiJByFzuAyz4sUm0Da
	1t2geDTbKDwXRBOoz9gtsNgpsxN0qQ==
X-Google-Smtp-Source: AMsMyM6l8LCWIiDxDxh5d5EhXJYIhBoM5GfAns5QmBWc/1EDDKO5IT5GRvoB+Q7S+gfwtSLmjmGiWA==
X-Received: by 2002:a05:6870:590:b0:13d:755e:10df with SMTP id m16-20020a056870059000b0013d755e10dfmr17202267oap.236.1667852056923;
        Mon, 07 Nov 2022 12:14:16 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id x10-20020a056830114a00b0066c45517c8fsm3296237otq.52.2022.11.07.12.14.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 12:14:16 -0800 (PST)
Received: (nullmailer pid 1570941 invoked by uid 1000);
	Mon, 07 Nov 2022 20:14:17 -0000
Date: Mon, 7 Nov 2022 14:14:17 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Sandor Yu <Sandor.yu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org, robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, kishon@ti.com, vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, linux-imx@nxp.com, tzimmermann@suse.de, lyude@redhat.com, javierm@redhat.com, ville.syrjala@linux.intel.com, sam@ravnborg.org, jani.nikula@intel.com, maxime@cerno.tech, penguin-kernel@i-love.sakura.ne.jp, p.yadav@ti.com, oliver.brown@nxp.com
Subject: Re: [v2 02/10] dts-bingings: display: bridge: Add MHDP HDMI bindings
 for i.MX8MQ
Message-ID: <20221107201417.GA1568945-robh@kernel.org>
References: <cover.1667463263.git.Sandor.yu@nxp.com>
 <0e1f631c22207c6af41ea512be85213b3953b44f.1667463263.git.Sandor.yu@nxp.com>
 <d5fb79bc-c05c-8de1-e8a4-9e19cc5c8e1a@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d5fb79bc-c05c-8de1-e8a4-9e19cc5c8e1a@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_121419_361260_A508FDA3 
X-CRM114-Status: GOOD (  10.98  )
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

On Fri, Nov 04, 2022 at 09:42:03AM -0400, Krzysztof Kozlowski wrote:
> On 04/11/2022 02:44, Sandor Yu wrote:
> > Add bindings for i.MX8MQ MHDP HDMI.
> 
> Typo in subject - bindings.

And 'dts'. It's 'dt-bindings: display: ...' Same for the rest of the 
series.

> 
> Also in the subject - drop redundant second word "bindings".
> 
> > 
> > Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> > ---
> >  .../display/bridge/cdns,mhdp-imx8mq-hdmi.yaml | 67 +++++++++++++++++++
> >  1 file changed, 67 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-hdmi.yaml

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
