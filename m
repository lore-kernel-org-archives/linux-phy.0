Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5F46C76196
	for <linux-phy@archiver.kernel.org>; Thu,  6 Apr 2023 16:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HrdOka8KVy0eCeXDd0OvyucvhS5N3zdgBozG82g3e4Q=; b=uR2cyC2ffMUdOK
	ltDlg90IYD9thQ4Yr5rWC0lDyOx4ZsffURa+PGTvDNzYunfayqqQwWu94kvS6OzgRtpHNN6Z3WXIm
	eRbNEig8Fo5xM2OpnmlKFmfG+4j336aCpVD+BeLnWOTlQLpG5Nmcz5SRaujADQwAyODK1/zPEU6BQ
	8tgLbX6e7A+sXvVeXssj6cQyZo788ytchUrltGPTHzpW+sMl9c2rAVz28xiJCcc6qfjBMO6/SjOto
	7SjxNhBUPTjYKOdfqX5NAaRFdSHdSizZQsKkGWUeZS25m2yyV7hzM74j2gQdD53zgmVerh5ZxqCGC
	bnDDgdwEAx+AJdvUq74g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkSmp-0083IU-1B;
	Thu, 06 Apr 2023 16:48:35 +0000
Received: from mail-oo1-f50.google.com ([209.85.161.50])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkSmn-0083HI-0B
	for linux-phy@lists.infradead.org;
	Thu, 06 Apr 2023 16:48:34 +0000
Received: by mail-oo1-f50.google.com with SMTP id m6-20020a4ae846000000b0053b9059edd5so6242997oom.3
        for <linux-phy@lists.infradead.org>; Thu, 06 Apr 2023 09:48:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680799711; x=1683391711;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZoIKZZqHzGJyVdkCs91+pdHog4YytlT4U9+saTPsm+g=;
        b=FWpCFoTNWmsuyIhtGB632kEwhX7s5kaVE5zL9ky4WTkmK0Ik77JT8FyZDCnX/Qa+Ab
         J/2ZDMda/6MuIap+mbH/lG+ZG8tfK8gIQDtswbxo9XILQLkn/cGg2GqTYMjGF9Y1hCZw
         fxlCHKWeBU1Oo2QHrBbw4QZN1mjRPwjZ/4Wv1Kkm+7VsruhtXAkUCzznwDTuvTw8DAij
         uS+8ufj8Aqw8Blya5y4CB3BjBo6XaLH6t7H4I7sQqRS9iyn8wqlAMqZ13JuhQKiHw3aT
         CnjrE8FGj14rHCB9ayumgp/6uoCmdi6s5KRxb25KdebHNM1pLtGhcwEnLRnDceZIf3oO
         tNUA==
X-Gm-Message-State: AAQBX9cB994BHsO2fFNu9xM8vmBd/ERm0yW4KBgFDWg2HGBe6rL0QYAr
	v+VO/XONAPhKNzPpVKZTVA==
X-Google-Smtp-Source: AKy350bLaW+BX3c2Xv1k762fNr+o+vedJksgFUYP/cJObhkX4zHsPA7YruOqiMaeTFLd/cH01dIJqA==
X-Received: by 2002:a4a:58c1:0:b0:525:36b1:86dd with SMTP id f184-20020a4a58c1000000b0052536b186ddmr68684oob.7.1680799711017;
        Thu, 06 Apr 2023 09:48:31 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id i128-20020acaea86000000b00386eff32f58sm858979oih.13.2023.04.06.09.48.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 09:48:30 -0700 (PDT)
Received: (nullmailer pid 3283911 invoked by uid 1000);
	Thu, 06 Apr 2023 16:48:30 -0000
Date: Thu, 6 Apr 2023 11:48:30 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Yuti Amonkar <yamonkar@cadence.com>, Abraham I <kishon@ti.com>, devicetree@vger.kernel.org, Swapnil Jakhade <sjakhade@cadence.com>, linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org
Subject: Re: [PATCH 5/5] dt-bindings: phy: ti,phy-j721e-wiz: document
 clock-output-names
Message-ID: <168079970960.3283855.16770288555764334439.robh@kernel.org>
References: <20230404190115.546973-1-krzysztof.kozlowski@linaro.org>
 <20230404190115.546973-5-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230404190115.546973-5-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230406_094833_090224_31511307 
X-CRM114-Status: UNSURE (   8.65  )
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


On Tue, 04 Apr 2023 21:01:15 +0200, Krzysztof Kozlowski wrote:
> Document the clock-output-names property of clock children, even though
> the nodes are actually deprecated, to fix dtbs_check warnings like:
> 
>   k3-j7200-common-proc-board.dtb: wiz@5060000: refclk-dig: 'clock-output-names' does not match any of the regexes: 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../devicetree/bindings/phy/ti,phy-j721e-wiz.yaml        | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
