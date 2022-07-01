Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 814BBC43334
	for <linux-phy@archiver.kernel.org>; Fri,  1 Jul 2022 16:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nTFIzXEsALyvJRSgGToIq+sD+YeTSknEHVwrJlO26t4=; b=awwHta4Uls4gHn
	QPjDIqMpf8PDl+A7tNS1yiWCT1zZu9TsVBmyRXoh927ndjFQnjhSl8LHhG+zrJzo9fwhQOa3yyxpD
	od6a5FJMyx8TZwzGaJh1cLW6fJFqZOQCAu+rXIrSgbKAhuL6EYsV5soWXiUEwsvUzrto8C8Y0KgQ4
	gFSiuT71RGm78nEVeSE1SUrQR/FhoSuQLaSiSu4KUgYd5CSJlQMZb3/nQDR3c6Ca3xDbkjddadiAZ
	tYcUb+n6yebOg3n2qItoE/dCYavvLwGlXA1TIaQEgC6WN1SXMvIuikc/9LFXawdBvExWG5DcC41vP
	jp9cZHX7CI9cJ6T+BFQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7JTM-005xqJ-QB; Fri, 01 Jul 2022 16:26:24 +0000
Received: from mail-il1-f179.google.com ([209.85.166.179])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7JTK-005xoc-6P
	for linux-phy@lists.infradead.org; Fri, 01 Jul 2022 16:26:23 +0000
Received: by mail-il1-f179.google.com with SMTP id p9so1717886ilj.7
        for <linux-phy@lists.infradead.org>; Fri, 01 Jul 2022 09:26:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=MNjwLM4nY3RlnA3G1YrPKfMdACXR293N5X+lQYEKiLg=;
        b=z7P45LboYSLMigjNccAISiE8JKokLVf9z1Pti28VTx6EAqVFbKWex8s3GLjtnObBp8
         0tRayg1nSB2c/29FdhQ5ZQJpzDMmNGCDAaUN0St5+AKyMwtrw+ZljNg7GHPtbJ0oCpJF
         FOogsMvtARFJwQ2lO3PWjhOF8EUudVm+Q+MrXDu06AgVYRngZyor9NGpvPByHqWm4zl9
         8jD2ycPgzQatbQa7jybA/oh35prhCfiW1TA3QjxTevwC9Krv5esxLVEAxCJVfJf1Q2ba
         GwOCZ3tKn3jumQyBMWxgjIk/lEvcU53UNqus+Gfam45E8Z0SMEGaspFj6RxsLpyE0Zwm
         eTjw==
X-Gm-Message-State: AJIora/rU20BjuQXzPt0xyRgBceUD5eNc5/NCB7n8cqQkFW+zu1P7nEc
	kPXdAcRZvw6dSOIsWnTxgiR9BWmkvA==
X-Google-Smtp-Source: AGRyM1vX11SyB3WVVPrsXxu0jFZuKEwzpOVgT10BsXJj708I4V1PoZPQFKLuPVicYWaAdX2s9KDcPw==
X-Received: by 2002:a05:6e02:18c6:b0:2da:e186:d51c with SMTP id s6-20020a056e0218c600b002dae186d51cmr3900671ilu.188.1656692778702;
        Fri, 01 Jul 2022 09:26:18 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id f17-20020a02a111000000b00339bae1dab9sm9919628jag.40.2022.07.01.09.26.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Jul 2022 09:26:18 -0700 (PDT)
Received: (nullmailer pid 1078180 invoked by uid 1000);
	Fri, 01 Jul 2022 16:26:17 -0000
Date: Fri, 1 Jul 2022 10:26:17 -0600
From: Rob Herring <robh@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: rtanwar@maxlinear.com, vkoul@kernel.org, p.zabel@pengutronix.de, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, linux-phy@lists.infradead.org, kishon@ti.com
Subject: Re: [PATCH v1 2/9] dt-bindings: reset: intel,rcu-gw: Allow up to
 three global reset items
Message-ID: <20220701162617.GA1078123-robh@kernel.org>
References: <20220628124441.2385023-1-martin.blumenstingl@googlemail.com>
 <20220628124441.2385023-3-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220628124441.2385023-3-martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220701_092622_277636_D2D529F9 
X-CRM114-Status: GOOD (  10.90  )
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

On Tue, 28 Jun 2022 14:44:34 +0200, Martin Blumenstingl wrote:
> Legacy SoCs use three elements for the global reset:
> - offset
> - reset bit
> - status bit
> 
> Allow this in the dt-bindings as well.
> 
> Fixes: b7ab0cb00d086b ("dt-bindings: reset: Add YAML schemas for the Intel Reset controller")
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  Documentation/devicetree/bindings/reset/intel,rcu-gw.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
