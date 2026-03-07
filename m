Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0ABE1FC9EE7
	for <linux-phy@archiver.kernel.org>; Sat,  7 Mar 2026 10:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LG1Jnl+Syid/SeLSV4HjYnPKrAaohp4kYno98NrLQ7E=; b=pR0P3Yd7tX/80+
	wd+IjOTaB8H5piMRnu872kYvAfl018CY5E9cL1aLrScjn/sL+eA1MRnBNVK8hsUDDzhyfREVuqnMU
	yXmXMeV2hfKg8VRpAa1EhaOR128TC1Pnv/g4Jxbpu+A/Q12IY1E8RLjHmK2/ggYd9Req85chiumVO
	2QUCOzGn8uYPK0gvtNOn9+Bst6QsujHw2wEddv7kW5Xc3mQ6KCPLf4noG7L/LULl9T4sequRIO3mb
	a+/DZXvExtxaXxGoB4wGp08nAhYOkHNHvxGeBU4afNOsu8H6g82ATOw/cAFyRbhaP22iZMQL0WpvN
	FEnKgywvGLnf/BwQcnGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyozQ-000000056Px-3HEG;
	Sat, 07 Mar 2026 10:34:32 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyozN-000000056PB-3dVw
	for linux-phy@lists.infradead.org;
	Sat, 07 Mar 2026 10:34:31 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4852f8ac7e9so4670185e9.1
        for <linux-phy@lists.infradead.org>; Sat, 07 Mar 2026 02:34:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772879668; x=1773484468; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=kxAFLIo2duFLvyleCapVzvrjVC+/uI+OGdjb9IusDqg=;
        b=URghxLCb3Tuz9Gxrknk08Z9i3SsEttr83y9WvsTXSrMi4Dajbs5GmSZ4wJohzv98QB
         leUyojN/klnrK0X+QVoCRCim9IWj+TMBEXZQ+rWrUPypjrGFknHXJgGK4tXjU8KixYQg
         Rug44ziIvzCdbjYbZNROgPOBqY2Ks1URI1z05TklvlukXlL5fP12ZP2bYExgGi8JHqtW
         3vCcxBb1iZJK+0fnWXkj+68B3xWGNqRmqfx4EI5Crbp2/W2vFFaaik8osCbe3lQ2DOSS
         aPmDTiINBe6T8SIQ0Nbw4JuB4xhKhCoobreJAaFW8zG2yrLGeZ2fKD7yoF4QsxC5xUE/
         kxFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772879668; x=1773484468;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kxAFLIo2duFLvyleCapVzvrjVC+/uI+OGdjb9IusDqg=;
        b=vrVn67J12BMrjDDRSn+3eO1pfvw9D3I2CN42/ILMTr1tON8PXhOq4suLxDktWSbIlB
         D1bn9gVRTtx83qywDaxkQc9LSQ/b1MNF8wFokITxTqK9PPvpo54Fzd9ppw/NKQX1gxFK
         xcy56ij96JexCj3oI+nfjy3CU9TcVOaU9RwrK2k6YKAbQlp9oZna/iCR6DZ0ZP69vp7A
         qiskju7BOG3fw1JUAvFOxfcTKr4gZGCRA+W4vnQSv/CmlZ1oUkroitpznyQCfMtAsVss
         MiK15fUkmyijy1HyvaiOyPzyx40vtdC2tmECaKYnB918UO28YWfAjERZvYox1WNUOPKW
         ty3g==
X-Forwarded-Encrypted: i=1; AJvYcCVtBZqAb724qs0m3JWnfzVSfSB56yqfZUvb1Rw85q46Yjyy9qTqVA6ZXHJYtCe8/gJ+agzlgqf5Drc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxsY+s7t8QOSHhXWCf0L8vLb4BHDq+aYV83M75i5KPhDN8xWu+y
	ye3qRu8OGryRJRlLYXmYt4Rz4AUHcpRwC9bbTOwB8TmVaQ5PfO1JazJE
X-Gm-Gg: ATEYQzyNZuo2HLWPBXlGppNnbCt5Jqm3g1U9k1p8j2WQr1lL4KMqOV7kWM4ZNxhaB60
	q07UT85GprjlZKbBCSFSYKNjpi3ZKCSiYI4fBcHHjTC6XkKLxwVto0fOE8UVrSUiPYtb4f4A/gd
	pRftzmH25AW7/JOsMBa2mc2uNmNqjmtAN5nWThPkj5Tf6w7uoER3XEPfIyF58DJ5yZzsWjhA+GV
	0eE6hOs5PSZHoqsnNCBkaUeExmt3IrzY07XyJILMK9FM0dR1bLJ/m9M7MYVfWHm6+UdGvOQmkXc
	6DC6fM9+c+T6WsW1BANgLBgSireaNeNoukWhoXnp5UUQADTgXHSPxrwDzBec1ZCZPm+sz/QSw/d
	Yc+MjHFhgJ87asG66tXlIv8xY3DQE4W2/EGwFEnRxvnfJbyRf8FJj8XaJsO+E41SXxaCKDksJF2
	fNtPIzWug08OnLw+wvW+GotJPpiUvaUgkoykbVPXUVPARH7KNuxh8WeQ==
X-Received: by 2002:a05:600c:46c3:b0:483:47ae:7c00 with SMTP id 5b1f17b1804b1-4852695aeaemr87092055e9.20.1772879667658;
        Sat, 07 Mar 2026 02:34:27 -0800 (PST)
Received: from Ansuel-XPS. (93-34-88-122.ip49.fastwebnet.it. [93.34.88.122])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485245dbcffsm38878465e9.18.2026.03.07.02.34.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2026 02:34:26 -0800 (PST)
Message-ID: <69abff32.050a0220.5ba1d.41cf@mx.google.com>
X-Google-Original-Message-ID: <aav_L8PiXANOR4cV@Ansuel-XPS.>
Date: Sat, 7 Mar 2026 11:34:23 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v6 2/4] dt-bindings: phy: Add documentation for Airoha
 AN7581 USB PHY
References: <20260306190156.22297-1-ansuelsmth@gmail.com>
 <20260306190156.22297-3-ansuelsmth@gmail.com>
 <20260307-strange-dinosaur-of-joviality-e6bc72@quoll>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260307-strange-dinosaur-of-joviality-e6bc72@quoll>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260307_023429_925503_0DE04574 
X-CRM114-Status: GOOD (  19.15  )
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

On Sat, Mar 07, 2026 at 11:31:05AM +0100, Krzysztof Kozlowski wrote:
> On Fri, Mar 06, 2026 at 08:01:51PM +0100, Christian Marangi wrote:
> > Add documentation for Airoha AN7581 USB PHY that describe the USB PHY
> > for the USB controller.
> 
> 
> A nit, subject: drop second/last, redundant "documentation for". The
> "dt-bindings" prefix is already stating that these are docs.
> See also:
> https://elixir.bootlin.com/linux/v6.17-rc3/source/Documentation/devicetree/bindings/submitting-patches.rst#L18
> 
> > 
> > Airoha AN7581 SoC support a maximum of 2 USB port. The USB 2.0 mode is
> > always supported. The USB 3.0 mode is optional and depends on the Serdes
> > mode currently configured on the system for the relevant USB port.
> > 
> > To correctly calibrate, the USB 2.0 port require correct value in
> > "airoha,usb2-monitor-clk-sel" property. Both the 2 USB 2.0 port permit
> > selecting one of the 4 monitor clock for calibration (internal clock not
> > exposed to the system) but each port have only one of the 4 actually
> > connected in HW hence the correct value needs to be specified in DT
> > based on board and the physical port. Normally it's monitor clock 1 for
> > USB1 and monitor clock 2 for USB2.
> 
> ...
> 
> This must contain the header you are also adding/referencing here.
>

Thanks ok will squash the 2.
 
> 
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 364f0bec8748..d75f59118a9a 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -779,6 +779,12 @@ S:	Maintained
> >  F:	Documentation/devicetree/bindings/spi/airoha,en7581-snand.yaml
> >  F:	drivers/spi/spi-airoha-snfi.c
> >  
> > +AIROHA USB PHY DRIVER
> > +M:	Christian Marangi <ansuelsmth@gmail.com>
> > +L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> > +S:	Maintained
> > +F:	Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
> 
> No maintainers for the header?
> 
> > +
> >  AIRSPY MEDIA DRIVER
> >  L:	linux-media@vger.kernel.org
> >  S:	Orphan
> > -- 
> > 2.51.0
> > 

-- 
	Ansuel

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
