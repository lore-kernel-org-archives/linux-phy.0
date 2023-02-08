Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2D42C05027
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 23:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pmPBG7DWAYnHw9XJeOorCb+0Z7JsiZ+P+I3xuncWUCc=; b=3d4/d+ndB79ZaY
	59208JdqoOzhX2xl2AjdBx69IPzI5SVOX/agsKArTV1FiaCIsn3aoX47dRMBpNU2vf9hwNawbAHKG
	5n8Zajb2n3fPN2d1ogMK7rHQDqqbXMsGmwwf4TFgWz+5mukrfv36/3CpBCC6r9RiL3oeis6wYd242
	oB/fV031Kcy6195K9vpq+HmG9PkRBAsvrXJaMGzeQbZKn0e209Rp/80TwXaB4yX8Jq7r1bO41m9tB
	7Etad0+WW3KJO1QGXZm2G/kMncGh95LxGvDpnvrCspnnWFV0IVLJOJQqONeskCOdQtAM/JcKvUQBA
	g2lSrfxoQYTVOAEUDg5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPu9R-00HEDw-0A; Wed, 08 Feb 2023 23:46:57 +0000
Received: from mail-oi1-f169.google.com ([209.85.167.169])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPu9O-00HEBE-CW
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 23:46:55 +0000
Received: by mail-oi1-f169.google.com with SMTP id n132so263560oih.7
        for <linux-phy@lists.infradead.org>; Wed, 08 Feb 2023 15:46:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C+icIdKslGvMFTYoNpZsRusMzcE34hYdnJpALIQzixk=;
        b=xoCx+y3nd76w2SnYflat2kfROS8RfS2BgpDYIGB8USceNOJ+OV/uD+i1gGsgvpU1b5
         wWYzjqVL2qme1ACAXGO8Kb1+u1/n/sDUNFcFFJjyXnBvnjON534Wr6dykEIc8LsEY36J
         YpV6D0C0kFLJUYuddmasuu0U9iwiJ605zCGiECpi4+rYR66G+OaRJ01FmdNuY+MHN7FT
         yRgV88gGTsqyOCuZ4RkWalUi0sr9RBVcoTwpF1DuRyR8AinGHGyolmbG4uDA4dMx3nVV
         AtdJ8uI5ne13dbn3wMokIwMMGV3szXRkaeODeUzRmRexCh0fNB32RlDcIU3ohM7wJ5UL
         m87A==
X-Gm-Message-State: AO0yUKW3fvOvoCHAX3TaHCCuG6d0Zfr5yO8M0mOpp9x3N1FUIgc8QJA9
	o6U2ymO1OGQsiaugBnC9MQ==
X-Google-Smtp-Source: AK7set+t4lw5gVcug+Sb9ZM+igBFEHDv4+leQDcKVRz+QrmI0qjbrl7Y7T8tHpaaJA9Cfjk7F+5V3w==
X-Received: by 2002:aca:1015:0:b0:36d:ea30:7bdf with SMTP id 21-20020aca1015000000b0036dea307bdfmr3728234oiq.49.1675900012280;
        Wed, 08 Feb 2023 15:46:52 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id s83-20020acac256000000b003785a948b27sm47788oif.16.2023.02.08.15.46.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 15:46:51 -0800 (PST)
Received: (nullmailer pid 2935262 invoked by uid 1000);
	Wed, 08 Feb 2023 23:46:51 -0000
Date: Wed, 8 Feb 2023 17:46:51 -0600
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Vinod Koul <vkoul@kernel.org>, linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: phy: amlogic,g12a-usb3-pcie-phy: add
 missing optional phy-supply property
Message-ID: <167590001058.2935209.9991726555575605805.robh@kernel.org>
References: <20230207-b4-amlogic-amlogic-g12a-usb3-pcie-phy-fix-v1-1-3e437b759549@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230207-b4-amlogic-amlogic-g12a-usb3-pcie-phy-fix-v1-1-3e437b759549@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_154654_470132_0145E42A 
X-CRM114-Status: UNSURE (   8.45  )
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


On Tue, 07 Feb 2023 16:03:53 +0100, Neil Armstrong wrote:
> Add missing optional phy-supply property used to power up PHY regulators.
> 
> Fixes: 87a55485f2fc ("dt-bindings: phy: meson-g12a-usb3-pcie-phy: convert to yaml")
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../devicetree/bindings/phy/amlogic,g12a-usb3-pcie-phy.yaml          | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
