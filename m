Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2D6FF483E1
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 18:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lr1J8cj2l5jKazo8F++RhSEee/2OpSylZCd3OhFB1YI=; b=UVd8zvpURsEdO1
	X8uC/j8wWIhkmkMwwQ3fqHBVDAy3miytKts0YoEGaJsv8Z1aBMubsb/SFdEsAcmYfewDE9Gred6Do
	gRmpbR1xJWZRJdV3wgrFn4c0GcaxPgH6A0r2P/S2O4rsuLdtefZcfqLX4scrIjqZSj5dzNlxNJX88
	6wSnbRVb+dTmFwAYPn/g0Iqk2ymCLGiGSIdHGemKb9iswZWMK33+rq2GzZOr9tx4PFKp6C+NFmJXG
	OzjQ/PUTByrI7ALb/MSt5cej9MrXwY+JwJSfIgHSlo1jlVqrjpAix++JaqbnEevfmSSlND2tawsDh
	S9xSSn9gitMu4WgWa+pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4jxh-0000000HLBA-29uL;
	Mon, 23 Mar 2026 18:25:13 +0000
Received: from mail-dl1-x1229.google.com ([2607:f8b0:4864:20::1229])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4jxf-0000000HLAm-3tzC
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 18:25:13 +0000
Received: by mail-dl1-x1229.google.com with SMTP id a92af1059eb24-12776bebe9fso705951c88.1
        for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 11:25:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774290311; x=1774895111; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0+l2i6CJ0UesVmQ48tC67wDfEsqc0p6X8zxC51ds3A4=;
        b=qiOnrOo+1PqE5/yl1tI8vTsy9QjdIh7CmdTCZi+p2ywB8FNSe4Om2DvrIWxVoVisub
         ivS/SParyplZ0aeXYEFTxcEA57r9KR59lUzSWYyA01liFB2q1VCOuoBnuf4eGUIuHyFE
         RCdL+L7JQMXDpfwcQ8iHDn0SslE5JqofhZjbYvCQJhZDmTCsjSldBQQb1MvFWg/bVKu3
         uKA9n3D/Lzg9xWjd5e7BzQZ/eFfEG7Iynpd1739HJGEtmMVaBNwYmHjOOcJpSwcWegFl
         wREoquKtZ92XnPEYBzWHesHN9yqvNPcwy7tg0kvkFDQA55TrjUkFDDF7mY86rHJzL6Vq
         oGLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774290311; x=1774895111;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0+l2i6CJ0UesVmQ48tC67wDfEsqc0p6X8zxC51ds3A4=;
        b=QtdkJuQ9LByMJzGARwStuILUS2Raoqf71CycWP1ikW1IH3z21jdbkKmd7BIambogK5
         nWdsi/Y+xtS6Fo3Spn1tnETCnxT5bo30AEEy2ldcsYsZ3TKrClXOeB7CVex9bei6kdYE
         0uz+3HVqJKLVJmL2M8aauC8dgNUipjkVrnauHLWMq1tQJOqxiiV3edBUYlqWQt5W6pfZ
         K9Sct5wh0qCikPzpIsigejo4zWIicvw5UTwesc3nETvTVcJ1UhPU0dYsVJ7Xs3ln7AGP
         0VUO94Q7/6/d8R+NZ7mBRnpVaZAR2Qyz5WA6Uz0LKR4KzpdxK878epY7pEVrwWfq2UwF
         2BMQ==
X-Forwarded-Encrypted: i=1; AJvYcCU/O0364FUYgxL1c6PJRwynu4cLzl9VD+VJ0AmOp/qeWVfKCKpTY5JvyiXSr+ri5+5edf4TYc9wY0Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YwoMjjcq1DwWqBzykm3BkN/If4K/PL8g8HSnS2qFJVyrlOz+QmK
	BOuJ7ftntax1NBKGzs6H0MeVFIWP77Sy0DWiN8yniW54TtzPpztGHURr
X-Gm-Gg: ATEYQzwU2XrQtkabjPujxYa4wrizEIvkkzjYJhwu27qzGmb+DwT96Hk8TC4ZfTiT9sD
	sPeGxkbGFxJAcrlJv2BTIl6n2Vd102I/3kpU8PWvdbCo0LM0bjrUN9rsD8QyyZAVFDaMG2L5Odl
	UBOmvuUO53AhpZ1dMd37kQe/rCw+GV7+qsEaGGo/Ob6nVldQtYVPESnIR0q0uSQLTWQtZt7Lo9I
	MVkz5rfThNFodDTdeSolW//npsSBcAHhTeDieN1QkZPz+DvLR2ErrDUq+WxKhW+sbSRRQTouKg2
	0XLGRC9B577Q37aey015vXs1XpENr0aYKVebrXYOkXd90dpZt5bk02PSG4E1tmsUYqtfPiK5WJW
	+LmaNCUYude+hSXbFVv/iCBi+s/Q4LU73XXaUcnAr7QL2kds5Ewi99mf3L1kenobHmbIL+HqLVa
	tabyp3BBC411Ikn36g3kFOdem6j0amUux+Fodni6IpyT0c1/NkbRtaCY2uq2Mqh+fj/n+gny+rl
	Io=
X-Received: by 2002:a05:7023:b14:b0:128:e2a9:d97b with SMTP id a92af1059eb24-12a726dd9b5mr6179340c88.42.1774290310889;
        Mon, 23 Mar 2026 11:25:10 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:a296:1211:5ab0:bc95])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b31bef1sm16253302eec.26.2026.03.23.11.25.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2026 11:25:10 -0700 (PDT)
Date: Mon, 23 Mar 2026 11:25:06 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Mark Brown <broonie@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, Lee Jones <lee@kernel.org>, 
	Pavel Machek <pavel@kernel.org>, Peter Rosin <peda@axentia.se>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Moritz Fischer <mdf@kernel.org>, Xu Yilun <yilun.xu@intel.com>, Tom Rix <trix@redhat.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Danilo Krummrich <dakr@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-spi@vger.kernel.org, linux-leds@vger.kernel.org, 
	linux-fpga@vger.kernel.org, driver-core@lists.linux.dev
Subject: Re: [PATCH 03/10] spi: switch to using class_find_device_by_fwnode()
Message-ID: <acGEk-63oVK_fBeh@google.com>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
 <20260322-remove-device-find-by-of-node-v1-3-b72eb22a1215@gmail.com>
 <098e1856-feee-4f4b-8059-85a53967f6b3@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <098e1856-feee-4f4b-8059-85a53967f6b3@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_112511_976510_5A973FF7 
X-CRM114-Status: GOOD (  15.60  )
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

On Mon, Mar 23, 2026 at 05:16:04PM +0000, Mark Brown wrote:
> On Sun, Mar 22, 2026 at 06:54:21PM -0700, Dmitry Torokhov wrote:
> > In preparation to class_find_device_by_of_node() going away switch to
> > using class_find_device_by_fwnode().
> 
> >  struct spi_controller *of_find_spi_controller_by_node(struct device_node *node)
> >  {
> > +	struct fwnode_handle *fwnode = of_fwnode_handle(node);
> >  	struct device *dev;
> >  
> > -	dev = class_find_device_by_of_node(&spi_controller_class, node);
> > +	dev = class_find_device_by_fwnode(&spi_controller_class, fwnode);
> >  	if (!dev && IS_ENABLED(CONFIG_SPI_SLAVE))
> > -		dev = class_find_device_by_of_node(&spi_target_class, node);
> > +		dev = class_find_device_by_fwnode(&spi_target_class, fwnode);
> >  	if (!dev)
> >  		return NULL;
> 
> Actually, no - this just looks weird.  We're in the middle of an OF
> specific function but we're having to jump up to fwnode for no apparent
> reason.  If we actually decide to get rid of the OF specific function
> then I guess but I'm really not convinced this is an improvement in
> isolation.

Yes, I want to remove OF-specific APIs from the driver core. I also have
drafts for bus_find_device_by_fwnode and others.

I can make a followup series introducing spi_find_controller_by_fwnode()
and removing this OF-specific variant.

Thanks.

-- 
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
