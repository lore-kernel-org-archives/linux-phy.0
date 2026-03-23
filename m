Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DC2DD58CBF
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 22:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=80JjrjHlMeqx91X0M0FiceYtnXRAf0F29mo0ynabG9c=; b=3sSEWOm33Tm/21
	V2wjd4chWGk11iSyJ4QLPyzhuq2djT9fuVnLDWfID/s2hgwdZ2Cq7TRNOUyCNtFJExNnTI4kL9GJB
	lmgDARM5Gxk3oUrSnlh/1heRLvTDhCwI7t82mXt3nLot6pCwSmTiylaWW1PQMYiMjmrKVXuv1g+Ms
	cDvuqZgp1z2YvjM3+XLhhI0kdm0WkxRnfN7gTnfga07BMrlp/w3fBf0H7hcQNGM+lONFROnDUSsPN
	bKSAIpT02FOoYAy+E9ZzMlsaydtqVAxODmXhlBw3GlskFgCRLii6cu6DIcqDjScbRM7OXy/nH+1OF
	qkfo3UzcfTxQztoQYWbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4nkc-000000004op-2OVN;
	Mon, 23 Mar 2026 22:27:58 +0000
Received: from mail-dy1-x1332.google.com ([2607:f8b0:4864:20::1332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4nka-000000004oT-1d5a
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 22:27:57 +0000
Received: by mail-dy1-x1332.google.com with SMTP id 5a478bee46e88-2bd9a485bd6so894754eec.1
        for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 15:27:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774304875; x=1774909675; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OEJ8II5Mq/xurnYxGbenRnl9vYWDBkm+Mx+1ug12uRY=;
        b=ZUZtoNaXlC22HdeUh+A1FvO8cpbYlLQmhn321Q5BKcQEDWgGizcLeDygbvTVpqYF3G
         UhF6YiZo9u8DszjKWXO8DnMY0+KzThJoBx3zGmP2Blsos9emnvCTejnxYg0+V2JU39Sk
         JyWwxBFqDymwOF0luHuUCxv1HTtOnVNVDUhJs/Nr4IIq7Gwn2SmaCwI4vr7LIYY72hmv
         eqv8WerKahnO0SuXglfCcSG6cjA8aODChwlzsPaRzKd8isL+XHpivw1DToQBx3bS064y
         7rz1jS6SmBlxGbr/i9B4elu4fdlai5KrMdcEVD3+jaWAP8ElOPPh3mfOddbKjD6Mhe74
         3bZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774304875; x=1774909675;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OEJ8II5Mq/xurnYxGbenRnl9vYWDBkm+Mx+1ug12uRY=;
        b=XLJw90le2Bv6QCO3IdPQZpOFXcf7psrGOpv/wy4crQWFwwDUUCobQJUKwoWQmGATua
         Ymum+BkGjnniPnztjI0ev275DeMSqkXIjhr00hdd96CKfrKPp/sxhPgAK8j0CB7IGezD
         9XgYU2kwuxrYkRlM6O38iBc/kD98vmDrx6f9+R7VsblBiF2wzu7IucSkPJemslWtiEe4
         SIg4uLXNt0F5t04Ms8bB2wyZbSfmXtRmZBfW/HKEiRTLVcHwsyEacm1dvrF4Voci2nfd
         9L8T3b5oOhUTIcfDlqr697WNaqieRr6DBEZ4gHPibnmZImhbr37sTI0GmfQrNO+lQp0P
         OwEw==
X-Forwarded-Encrypted: i=1; AJvYcCXC0T0DeJ9MBkRX0diwer0uUNgQbqAtCCS3JKGoGxcrcQCSG8s7Q9cWswcwQ8qnPgl6ADv4LK3rj5M=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz1Ka0fepgFDKLT89/cAk1J0Wp84Oj86Gkg3oqAbQmzhnMBxZGm
	aO8RW6WJxPp+ym89gnxOi5RWTJsVw43v3qcn5VNeIDjxynS7BZ3xhCig
X-Gm-Gg: ATEYQzzopuDQ/xg9+xZ2QVxyPsuQymGq5qi8KP+e7sMlBv9EyNVGQ/FUy4J35ljkXLX
	Xt5AoLQrfQZ79VvVoGIizsu+aK/5taCehvGStB2fQ1er5m00QvWne6tunmg8Vtys2+3OGGhtjdq
	NSDuaxX6d3cnhAlOKjgNkl2WGObcvmIojrHdD2U23O3nLJCMm+RxAbGTPffcrEEMyBSQw5ySEUq
	avix73FbPGyv1yBvqyJNZPh6/l3lucZ621ib3KCgjzzoe4gvvv0gYe4Rk35jyhnJKlsgIEZxqJB
	gL9lJ2XI/DeO6frMMcF5xO0TeWpX2/VvkB5k7CUZZAfjQMQbc+u48amxxCQfh4/iMyObZ35cJkN
	RIDDSVfqonFvUqRZazTf6CAqMgAWwZQmUjAWDm3uRnUHrsIEje//D6tnyM1m7kkUzWmefUXFlPb
	kvk84Hs26T+M/yfrtsje2bZGTZihH13meErDOOP6/3z12vEfZOcXwriUWjsf42Elpi
X-Received: by 2002:a05:7301:4198:b0:2c0:c775:a46b with SMTP id 5a478bee46e88-2c10961ef1bmr7002696eec.8.1774304874980;
        Mon, 23 Mar 2026 15:27:54 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:a296:1211:5ab0:bc95])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b2cf068sm13226951eec.22.2026.03.23.15.27.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2026 15:27:53 -0700 (PDT)
Date: Mon, 23 Mar 2026 15:27:50 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Mark Brown <broonie@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, Lee Jones <lee@kernel.org>, 
	Pavel Machek <pavel@kernel.org>, Peter Rosin <peda@axentia.se>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Moritz Fischer <mdf@kernel.org>, Xu Yilun <yilun.xu@intel.com>, Tom Rix <trix@redhat.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Danilo Krummrich <dakr@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-spi@vger.kernel.org, linux-leds@vger.kernel.org, 
	linux-fpga@vger.kernel.org, driver-core@lists.linux.dev
Subject: Re: [PATCH 04/10] regulator: of: switch to using
 class_find_device_by_fwnode()
Message-ID: <acG9BPkFr_De-ulu@google.com>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
 <20260322-remove-device-find-by-of-node-v1-4-b72eb22a1215@gmail.com>
 <360a8b4a-6507-417a-9fc1-c53b14868657@sirena.org.uk>
 <acGFksyx3SA0kJ5b@google.com>
 <7d46803e-b285-4e9c-8856-10100fa0ea85@sirena.org.uk>
 <cf92122d-6b15-458a-bf89-189a0a6874f7@lunn.ch>
 <193e194a-498f-464f-b22c-c283c16db6c1@sirena.org.uk>
 <acGzJV3vKhuty3nd@google.com>
 <09072374-65e7-4792-af7e-97d7df93f9bd@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <09072374-65e7-4792-af7e-97d7df93f9bd@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_152756_434073_6E439584 
X-CRM114-Status: GOOD (  21.07  )
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

On Mon, Mar 23, 2026 at 11:11:58PM +0100, Andrew Lunn wrote:
> On Mon, Mar 23, 2026 at 02:41:03PM -0700, Dmitry Torokhov wrote:
> > On Mon, Mar 23, 2026 at 09:36:07PM +0000, Mark Brown wrote:
> > > On Mon, Mar 23, 2026 at 09:01:47PM +0100, Andrew Lunn wrote:
> > > 
> > > > How do you handle deprecated OF properties? This is a problem i've run
> > > > into before. A developer needs an ACPI binding, so they blindly
> > > > convert from of_ to device_ without engaging brain. As a result, they
> > > > bring all the deprecated OF properties we want to die into the brand
> > > > new ACPI bindings.
> > > 
> > > Honestly that one hasn't really come up much for me - not too many
> > > deprecated properties.
> > 
> > Given that we position properties as an ABI even if they are deprecated
> > we supposed to handle them forever. Newer properties usually offer
> > benefits over old ones and that is how users get moved over.
> 
> ~/linux/Documentation/devicetree/bindings/net$ grep -r deprecated * | wc
>      75     361    4195
> 
> So networking has ~ 75 of them.
> 
> Within the OF world, they are ABI and we need to keep them. But we
> don't want them in ACPI or any other firmware. Any code looking for
> properties needs to know what is underneath so it can decide if it
> should look for the deprecated, OF only property, or not.

If there is a deprecated property you can do:

	error = device_property_read_u32(dev, "prop", &val);
	if (error == -ENOENT)
		error = device_property_read_u32(dev, "deprecated-prop", &val);

You do not need much more than that... Checking node type only
complicates the code, especially when a device can be used on both ACPI
and DT systems.

Thanks.

-- 
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
