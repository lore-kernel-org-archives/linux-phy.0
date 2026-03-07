Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16FCFFC9EF8
	for <linux-phy@archiver.kernel.org>; Sat,  7 Mar 2026 10:57:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IC5MrteNeNHJzsITO63eDwdWMUolloANJLUCOyrs7cI=; b=o6yCv0Kb390p+5
	6D/4RuQX3M/XAYXE8WLEBWiChlxwpax5F5AECLkmru8vlLhY32HCTrJCSy4CZP4/He1T6FlRo24vO
	4I19CRoyScmnFRxz6QLBbtIJF413xaALFZ5gl/Yvy5Fi1/XLhTncu5lLlwGhQEDltfe28j0X9OXUT
	H/v7f37g5QpbwAdhSiaSjOvScvwSgwLZGZaEPZa9ciVbHllc0zu/awz9amKGvmb/Bq5MOFWFKnDDP
	i3AgLIiWTarMZGCViI4kzf0z9r9xt9BmZe6g6MWD9A0rXJlf7CoEmN11cXC+MZo3E0WuWzNPv8aVX
	wgoT5h62wmfv6IUrzrxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vypLv-000000057ov-2qZ6;
	Sat, 07 Mar 2026 10:57:47 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vypLt-000000057ng-1lvq
	for linux-phy@lists.infradead.org;
	Sat, 07 Mar 2026 10:57:46 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-439ac15f35fso6645455f8f.0
        for <linux-phy@lists.infradead.org>; Sat, 07 Mar 2026 02:57:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772881063; x=1773485863; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=V94QkQoEyTd6cBgukGsABnXYIA0vAI5uUZxButFAf2M=;
        b=ejrrNjoxbUUbiX55GH4gZ3XUnSkwu2YmjRBwoweo/0lmcrp1G9kGNIeiXVrQyk+7h/
         xb5vtspU/sMyO0V1qaf7lZ8CqBcfEWMHwDqzQi2HVes614xWhNtiMOi1YkP0ElvD7o+y
         iPIpeAGlUMUslV4TYKveYu5/E0RHw9G81BVU8r0IbnB31Sj/QDNn+REXSeqEfHAKONul
         pbDlQbSuURNnMpjYnCAHAdTva8mIpyl066+XhLYXoPPJBhymqIesc3g/ugQ/qM5xsFc0
         49dYm2Nbxsb288zkiipR7uUlmtUJcR9VKXmRIeKl/MT1CGc8fMAXRzOwfSjoWi+29e8s
         OP4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772881063; x=1773485863;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V94QkQoEyTd6cBgukGsABnXYIA0vAI5uUZxButFAf2M=;
        b=rCeYI7iahVrmXkD3vCqa3+WzMxBVIiVjuPCbkjpWI2Y9Pk1cVlJKUmwKXhc3L93uDC
         LyBN0by0E4ef4+8TOvBIDhZGswZ+xF2isF8Fv6Nn6LPWBmtKQra/ma5ak5sSMR7qwKLq
         yTSqvQ+PKhkUg23tkV6FFQ9B1K7pa8D5qvyHAvFxRoKdDP5Sk0gXmpr0De3KnhzB2Zax
         6yN5+FG3fAm+TotLK232AsTgkmv7ISbpPka9K0/Q6Ip/8ao0Ysu0XHzETl3fbLGCZ4US
         jSIFWjAT74ynAPr7q1tHQZn70jtSZHzLAL0YRBZMD2zoOI9LcoV9LLcPce3Gf3RTWyY2
         By+w==
X-Forwarded-Encrypted: i=1; AJvYcCVobD4+193VhSzS8a+WXyVii6wsr4YTRogMbKOpZlNcecvUOzDtXvYJPLQQOLCRneBMO3blvJoYOI0=@lists.infradead.org
X-Gm-Message-State: AOJu0YySkZs/C7xNGzk6cExs8mCE344EYcKa+MjRZagcUSUra8ATsP5Z
	ST6sMRB86QLIqDyKQbnPmDP4swke4ehjsUV0mtl/4NKD7qf9ZjYRk01U
X-Gm-Gg: ATEYQzzw5b0kAhMBTaOapjccKtwYgjhgwyFqdEJzwxIgtI/rGInVdZPvpokEOfYc9Vq
	eq1TUSmSiaXXHPibKZSU6CUA618gOYIVvj5Jh0huKPg5UZ3c+cTd+FcsglgHUdY62ufWkBpFksk
	QMaY1KsEFxkqn0juOz1zvNkOAxLOwF0aJuTVYaI0IGwaY9n7EO8eYj0+tpTziD5UcNlxbrXhY6q
	Ood1IMt0U8dNQhDOJ5etvUqQfVUuzxYTTrkUUifa9nsq8tL96uWx1C/UM3FgmDvfASdvI1IvITL
	aGXdP5Xa3uiYFKR7yf7I68ofH0+yS+cYxvzMzpV8sQ+VJy9rLLCwxRv6Ao7myGNxjH+mmhUPV/B
	M/5V4vBpyBXYQR6yYZA51F6H0AHuBT/p9ghuqXJA0HjIEbd36MS60MHz6sltShfjv43yL8VXWrW
	zNQRXpREtz0sZoWDwJgNFmLOQkeExhFFPVM71EBWsHwXuzHvImitWv24go2bZ2whOH
X-Received: by 2002:a05:6000:1447:b0:439:beba:300 with SMTP id ffacd0b85a97d-439da31e274mr9511165f8f.1.1772881063378;
        Sat, 07 Mar 2026 02:57:43 -0800 (PST)
Received: from Ansuel-XPS. (93-34-88-122.ip49.fastwebnet.it. [93.34.88.122])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad8ec97sm11439826f8f.5.2026.03.07.02.57.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2026 02:57:42 -0800 (PST)
Message-ID: <69ac04a6.5d0a0220.2969f9.9d81@mx.google.com>
X-Google-Original-Message-ID: <aawEpAhvHEz_ocj3@Ansuel-XPS.>
Date: Sat, 7 Mar 2026 11:57:40 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 4/4] phy: airoha: Add support for Airoha AN7581 USB PHY
References: <20260306190156.22297-1-ansuelsmth@gmail.com>
 <20260306190156.22297-5-ansuelsmth@gmail.com>
 <20260307-otter-of-imminent-merriment-d3475d@quoll>
 <69abffe6.050a0220.18164c.58d6@mx.google.com>
 <52123051-0d2d-42b2-b677-99a5de0f2c4e@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52123051-0d2d-42b2-b677-99a5de0f2c4e@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260307_025745_479512_35734713 
X-CRM114-Status: GOOD (  24.48  )
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

On Sat, Mar 07, 2026 at 11:40:48AM +0100, Krzysztof Kozlowski wrote:
> On 07/03/2026 11:37, Christian Marangi wrote:
> >>> +
> >>> +		if (phy_type == PHY_TYPE_USB3) {
> >>> +			ret = of_property_read_u32(dev->of_node, "airoha,usb3-serdes",
> >>> +						   &priv->serdes_port);
> >>> +			if (ret)
> >>> +				return dev_err_probe(dev, ret, "missing serdes line for USB 3.0\n");
> >>> +
> >>> +			priv->scu = syscon_regmap_lookup_by_compatible("airoha,en7581-scu");
> >>
> >> Nope, you need phandle to express proper device links.
> >>
> >> Don't sprinkle compatible lookups for new code which does not need to
> >> keep things backwards compatible. How do you manage device links
> >> without phandle? How do you manage device probe ordering?
> >>
> > 
> > Hi,
> > 
> > the phandle to SCU was present in old implementation but later dropped as it was
> > said that it wouldn't describe the HW.
> 
> 
> I went through v3 review and I did not find such said arguments. Can you
> point me to it?
> 
>

Here was v2 [0] that was clock + USB PHY. (there were clock stuff as the SCU
implementation was different) The link wasn't added in the changelog as it's
quite different than this current series.

In patch 7 Rob pointed out that serdes-port + scu was a bit unusual.

Then the implementation changed in favor of a more simple one where it's the PHY
that configure everything and in this new version the usage of the SCU phandle
is really to just get the regmap and modify the single bit to select the PHY
path/mode for USB 3.0. (it's mainly the reason the SCU is referenced directly
with a compatible instead of a phandle, in the previous implementation we used a
function exposed by the SCU SSR, while in this it's just a regmap that can
PROBE_DEFER)

Rob suggested an additional layer (a PHY) to handle this but I don't feel it
would actually describe the HW this way as that bit doesn't modify another PHY
but it just toggle the mode to the related USB 3.0 PHY.

This is really another case of not-so-organized register mapping on the SoC.

[0] https://lore.kernel.org/all/20250320130054.4804-1-ansuelsmth@gmail.com/
 
> > 
> > I will readd as airoha,scu. Is it ok for you?
> > 
> > (I actually prefer phandle than hardcoding compatible as it makes things more
> > descriptive and prevent all kind of problem in the future, so I'm more than
> > happy than using that)
> > 
> 
> 
> Best regards,
> Krzysztof

-- 
	Ansuel

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
