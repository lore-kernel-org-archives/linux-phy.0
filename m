Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED2F4F55102
	for <linux-phy@archiver.kernel.org>; Sat,  7 Mar 2026 18:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o+kZJ+nJK4Jl1V2oeBO01T40ybzfoZNDePzKiiREERk=; b=YmyvBULcsreJbq
	5au9rTmlH8MI7GzocngpmrKXi27pP7tcVRQxe/2BgR64VkGSbufvhJH5xsjbw8+KSo1uL7GCWy+hg
	8jvEMOjcYDpRTEtPuuaQNXUBah5sK9FA7ObysVVA0ZMZf0VJd+QePPyP4xUnmmg5hcyfhCBLDfuhF
	Foz7AfO+L9v+hoH9ErO02+9NSBN9RxkqIR5bKCSAr/09928+16m5gHBqcBBl17b6TTGn8XNH/tYuM
	SlWCoGzc9aKMox/Um5rBn/mpulkZinwplm27dxn5joyDACl+Y8W5PlDEA3EWtK23ImtgBvIpc2fEd
	B2NZDf3wwx+jTOWETMsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vywh0-00000005R6u-2DbR;
	Sat, 07 Mar 2026 18:48:02 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vywgx-00000005R6A-3zgN
	for linux-phy@lists.infradead.org;
	Sat, 07 Mar 2026 18:48:01 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-439c9eb5d36so3643517f8f.2
        for <linux-phy@lists.infradead.org>; Sat, 07 Mar 2026 10:47:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772909278; x=1773514078; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=fePtVH1XrSdcxkm/f3Lu86HTCbPhsyR6IapTe3JHplY=;
        b=J57077D7n5pIETQRzwE1rHg+R/bpwicJrwlTYTxOmBZrioATAR7LqL74WthG+baTqa
         s0n+VhyIY6y5yVjQDHL8pDAE/CvtPX7zJYy2uwPJMMnGaeCppQCAgiZgnYPk7aW0u7Ud
         AFs/g/l5k7qPCneqMLMydZ0cHmJ+McwmU0KR2ituJnbBc+ifWAaOELmi8hY0sruZNnS+
         l4EX40iT5iF8ceM9aQohseO3JtWOBia9UVu566zxHsbdvS93kEeNmld54JJCk8YBnUIh
         75dfh5vZ+it10Ne3ZUZr91KxpX9ZK9hyZp7escajVTieL9qDKn/3VZNpY/awomXdpAHd
         d0Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772909278; x=1773514078;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fePtVH1XrSdcxkm/f3Lu86HTCbPhsyR6IapTe3JHplY=;
        b=p5PDG7Ca0FvggiDNL6MV6CWFitsAN+deAIAi84h+LcSp0lQOkpZeSu7d1Krp1XfBFm
         1tRYIxFHMRsscSez1cQMcqvlwhW+8q2DauuLO0jHwmCFftXJmxavW+dszMwKSGH4g13j
         ajhoQhu7qYN5TVTp+sZTifZhfch2dol+2O32+wXA+1dOCZ7hXc6vYaM3JdifoWf/AEk+
         CIhUhCNORfaBgz2TApHa5UHgARb5GOR9Tt5xvkLV6UoBHdXimU1/vVMFx/PHuwlvBzwn
         N70kpbv9l0Ah5dWdVlkhMSD0dFeCombY8XH1Sn/M6upO9CE5EyKx2PQyY4MqYM7uMhGU
         yeMg==
X-Forwarded-Encrypted: i=1; AJvYcCVPRxvu+s7qPAARQWZc3sjwuboBIHoHLVDS9Pn5QRwv5KoP6RpRMubpFZk2x8uBfM9SFe1yDtJG2tI=@lists.infradead.org
X-Gm-Message-State: AOJu0YyuqOpRZ4LA8RZC0Bi2Gdv1rexdHqKhcC3UejZns4yZ8wfKyUZG
	yk2lwGuN/kZ4rnM2eqv/3pFdJMtPKVzZCRTWlrp0XxfKTGo8Ujabf3Cd
X-Gm-Gg: ATEYQzyuVhZWh+5lfe9kdJuUyXq82KBOeVrJMQL8cJiYO691ZrClP1L/DHni0zhkcrp
	dTrgnfXyhoWNhrB/xdR+MDDpuBq11mXwHYuzbMkVV9hbw6/fMzxdWEKlBBmXrBa9/OIt4bWxwjp
	gEShPgjvW98cjIItmifS9otWmzsGZkHtJLJlzxw/ZZex5m7gNNyByRpJY/i1gseRevgKfit528s
	EdhbjWzHCIJnDB6ucSGHhiP73ZTa2HserHVOl05+g3DBDWHCGnaZSEV9FJRM1XK+wuTiND6xfnF
	QLtEym9+s44ZQdgqGuX/TsVwPUzMHxJiDellNpt/GytXyMe4x7FNS32qNcVLDwKPJzueGtpR+qF
	lNjM/+yMpbSrdlmxWInSR26Pp2R31GrL8LlS/DIyuw3yjj+uUJigdDJgblMtM66OhxOJH8kmeNM
	cuBEPUD2b0K81RecWqRPT+OAgg2z+X0LBu7Yx5DduKtdpjAtx1jM14TQ==
X-Received: by 2002:a05:6000:401e:b0:439:b3f1:8011 with SMTP id ffacd0b85a97d-439da35f838mr11120861f8f.29.1772909277570;
        Sat, 07 Mar 2026 10:47:57 -0800 (PST)
Received: from Ansuel-XPS. (93-34-88-122.ip49.fastwebnet.it. [93.34.88.122])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae3c80esm11455641f8f.29.2026.03.07.10.47.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2026 10:47:57 -0800 (PST)
Message-ID: <69ac72dd.df0a0220.a3fa6.8d4f@mx.google.com>
X-Google-Original-Message-ID: <aaxy2m9QxsbU0hRM@Ansuel-XPS.>
Date: Sat, 7 Mar 2026 19:47:54 +0100
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
 <69ac04a6.5d0a0220.2969f9.9d81@mx.google.com>
 <abbf81f7-556b-4fb0-9fb7-41f4c730f1d6@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <abbf81f7-556b-4fb0-9fb7-41f4c730f1d6@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260307_104800_036658_1A1D0168 
X-CRM114-Status: GOOD (  29.91  )
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

On Sat, Mar 07, 2026 at 05:38:25PM +0100, Krzysztof Kozlowski wrote:
> On 07/03/2026 11:57, Christian Marangi wrote:
> > On Sat, Mar 07, 2026 at 11:40:48AM +0100, Krzysztof Kozlowski wrote:
> >> On 07/03/2026 11:37, Christian Marangi wrote:
> >>>>> +
> >>>>> +		if (phy_type == PHY_TYPE_USB3) {
> >>>>> +			ret = of_property_read_u32(dev->of_node, "airoha,usb3-serdes",
> >>>>> +						   &priv->serdes_port);
> >>>>> +			if (ret)
> >>>>> +				return dev_err_probe(dev, ret, "missing serdes line for USB 3.0\n");
> >>>>> +
> >>>>> +			priv->scu = syscon_regmap_lookup_by_compatible("airoha,en7581-scu");
> >>>>
> >>>> Nope, you need phandle to express proper device links.
> >>>>
> >>>> Don't sprinkle compatible lookups for new code which does not need to
> >>>> keep things backwards compatible. How do you manage device links
> >>>> without phandle? How do you manage device probe ordering?
> >>>>
> >>>
> >>> Hi,
> >>>
> >>> the phandle to SCU was present in old implementation but later dropped as it was
> >>> said that it wouldn't describe the HW.
> >>
> >>
> >> I went through v3 review and I did not find such said arguments. Can you
> >> point me to it?
> >>
> >>
> > 
> > Here was v2 [0] that was clock + USB PHY. (there were clock stuff as the SCU
> > implementation was different) The link wasn't added in the changelog as it's
> > quite different than this current series.
> > 
> > In patch 7 Rob pointed out that serdes-port + scu was a bit unusual.
> > 
> > Then the implementation changed in favor of a more simple one where it's the PHY
> > that configure everything and in this new version the usage of the SCU phandle
> > is really to just get the regmap and modify the single bit to select the PHY
> > path/mode for USB 3.0. (it's mainly the reason the SCU is referenced directly
> > with a compatible instead of a phandle, in the previous implementation we used a
> > function exposed by the SCU SSR, while in this it's just a regmap that can
> > PROBE_DEFER)
> > 
> > Rob suggested an additional layer (a PHY) to handle this but I don't feel it
> > would actually describe the HW this way as that bit doesn't modify another PHY
> > but it just toggle the mode to the related USB 3.0 PHY.
> > 
> > This is really another case of not-so-organized register mapping on the SoC.
> > 
> > [0] https://lore.kernel.org/all/20250320130054.4804-1-ansuelsmth@gmail.com/
> 
> 
> That's the cover letter. I guess you did not implement Rob's feedback,
> either. This is either phy (for phy) as Rob asked or scu phandle.
> Removing scu phandle and not implementing phy is not what Rob proposed.
> 

It was to give the full series. The specific comment from Rob was [0].

SCU phandle is going back to the old dual binding that Rob was against but PHY
for PHY would not be descriptive of the HW.

I can do that but would it be correct?

[0] https://lore.kernel.org/all/20250324154919.GA101272-robh@kernel.org/

-- 
	Ansuel

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
