Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94E2FCF58C9
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 19:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BEQDcOTeswDLsmBjlG5SKYyIgt4ChJykn5cKcqnyJKY=; b=so+nu4vfqB6zMa
	wo8gO+kXefvlY/hpByudUSz1Abzx8xR6Z8mlnh4pC/2D6/XA3kWYMib/MNyfy3dhDXvcpE55BT/Wu
	066FGIJrCOld8QRR/jUFOV6dp4dsi5gF5DQT4/o9n6s7LmClMbZ7c+gx8klyeACRh6v5K+r+S9C6D
	TjY3aS7aIK/pIz6I3kKxq55Gb9xjoryow51Vrof9j7wNq8DqgiLZxONTB4qyiozbjYIED86XFIfKw
	3jGnWCIT+8OX36NtVlIHXAZjtv6BPl2ScfkqlOyFmJ9ymgP4d6m6RaBnNwItaEtNeD1QQVd8gr+Ss
	WTHZ3xi7UZaAsXquohLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLnmB-00000004zmm-0M3f;
	Wed, 19 Nov 2025 19:23:35 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLnm8-00000004zks-3LW3
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 19:23:33 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4779c672e9cso122345e9.1
        for <linux-phy@lists.infradead.org>; Wed, 19 Nov 2025 11:23:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763580210; x=1764185010; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MLogAxNGjiigadE1rwrA8a4RXHrpBoSC3+TrVQwZY7I=;
        b=iKZsv2jGpkgZ6tyF4ZRMPIR47T0OOsI2IWoUslzeL7dso3PCjKf68qCms2qJ1UWIq+
         qf4MKaEZLhp3NoO3dKgJlgDFCZwAvzOhbvs6LqLWjF5rgRTAsqE64jWMt3GQXHT0I2FL
         HXI6xBVVgDcOYQHGLkxrt83AHG0wFmXCCXqqkvi9pjW0INBPWsgQ8XHpRcjD94qfWnhZ
         mGSY+VY42ZiwMwMtyZGIn0hBxU5AIWO6qkMtwQ9JDucW+zQOzIiCuotZKApHyORgD3vG
         Vxx/AzIHCClZ9HFNSlr4WWKiLa5khpYp40Uv2OjczbLzlHPbp9vZ2w7+20F7BEl1VRT8
         ILEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763580210; x=1764185010;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MLogAxNGjiigadE1rwrA8a4RXHrpBoSC3+TrVQwZY7I=;
        b=t/cGQ8a3iQ7TxF0jiXegXUIi2ITS0FTHLo8PDBeGlK8YTsgoWqmZmJiYiBjsgZvNTk
         kaj8BMR8FJDALxG8HUdT/SMLChM2OGLAL9KPhLI95HYdY25b7o9672bniyK0t0ayRWmq
         OxTK2AzngL4Xg4iBv6aAV8F7tndbb6NGPpihBQ5IeispLu0kpdQPWc64PveJ3VLZlTfq
         Yzk7ciqZM1V8791L+c/T9ueWRfEnp3iL+eIRXbWh8BJxWTfyHEUweDTwQh16pRs5MxD6
         aSEFzdVTsR8CKxfldFZ4BGw1jh4MRFTWFnL1z2SkkG79rcmphhAZNY793uuu+hdZWdFv
         0D8g==
X-Forwarded-Encrypted: i=1; AJvYcCW3+DUifTOebr9jZMM8yTHXU13+bwCb4z0OgykkKPIa/d3f1SdqdH1uHVMxyd5WWdI43Jq1K7JAI2g=@lists.infradead.org
X-Gm-Message-State: AOJu0YzLGQtkdN6pHJlJbVhUA7cTXC6ASP3GKCQe5bBFlEReCT+mP1gv
	QNDN+vGrjSABq+uyIzh1J3mC36kUfKBNDYUM4g/qHjf6x+/xrolVMrfP
X-Gm-Gg: ASbGncukNEpjHw/2HtjAWaK+HBUmvFW6iXPz2xCmrd3tngxheKlHDugPG9ivUax2ClO
	LMHIi1ONzuIxW5Gr0ATX6kID/Z1NldrCJicGHSAAutZR9sM7OXQfMXv05kAUpNe1KSpzmSoOob5
	ZFj8W45TgJF/gKvY39FBnYnWjUCTU6EyBW3d3lEEjq/VCkSoB9/4zvMg8eY3OX0rDFtwcucSNlk
	NhxBblfhem0QCmlfdvu/bbwA/ZdBC3B8W/hkn2BYqQLoefBO6VIzuo31oQe8TIGR2++zQSm34FA
	Q8itjMN93DIzdNjx2UtPDwoZwK1qsrYXy9rOEN306Yj40yl2aiGgJbI0RlI4Ehu+K/imalkIB8M
	9uZqfDKU4tettJSnKXTUTlbmDgNwrDOPPFCy3l9OKm7C8rJfBjIioSFREe6pv1blu7Rw8msYp+Z
	cUCg==
X-Google-Smtp-Source: AGHT+IHc0rQkUlODH4e8Ox9CfugcMtuw2oByT3bP5OSjkiKT9z5TjLYVlgVIgUfYDFNn+RnRunywAw==
X-Received: by 2002:a05:600c:46cf:b0:46e:43f0:6181 with SMTP id 5b1f17b1804b1-477b8c93834mr1695005e9.7.1763580210359;
        Wed, 19 Nov 2025 11:23:30 -0800 (PST)
Received: from skbuf ([2a02:2f04:d106:d600:2e45:b79d:e48e:e6b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477b10142d3sm72561855e9.5.2025.11.19.11.23.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 11:23:29 -0800 (PST)
Date: Wed, 19 Nov 2025 21:23:26 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: Vladimir Oltean <vladimir.oltean@nxp.com>, vkoul@kernel.org,
	kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Daniel Golle <daniel@makrotopia.org>
Subject: Re: [PATCH 0/2] phy: microchip: lan966x: Allow to invert N and P
 signals
Message-ID: <20251119192326.4bflaqkh4zvz2rib@skbuf>
References: <20251110110536.2596490-1-horatiu.vultur@microchip.com>
 <20251110114216.r6zdgg4iky7kasut@skbuf>
 <20251111095016.42byrgj33lp4bouo@DEN-DL-M31836.microchip.com>
 <20251113163023.syl6nxq2mqkxpz4z@skbuf>
 <20251114103411.rzigaoictyinmx66@DEN-DL-M31836.microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251114103411.rzigaoictyinmx66@DEN-DL-M31836.microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_112332_859933_A6CB9DB3 
X-CRM114-Status: GOOD (  24.28  )
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

Sorry for the delay. This time I got it but I forgot to answer.

On Fri, Nov 14, 2025 at 11:34:11AM +0100, Horatiu Vultur wrote:
> > Would it be possible to leave the SerDes muxing alone (with its
> > #phy-cells = <2>) and just add the lane OF nodes as an extra? You can
> > add new support for phys = <&phandle_directly_to_lane>, but that
> > wouldn't remove the existing support.
> 
> So you were thinking something like this
> ---
> 	serdes: serdes@e202c000 {
> 		compatible = "microchip,lan966x-serdes";
> 		reg = <0xe202c000 0x9c>,
> 		      <0xe2004010 0x4>;
> 		#phy-cells = <2>;
> 
> 		serdes_lane_0 {
> 		    reg = <0>;
> 		};
> 	};
> 
> 	port0 {
> 		phys = <&serdes_lane_0>;
> 	};
> ---
> 
> Maybe it is just a silly idea but what about doing like this:
> ---
> 	serdes: serdes@e202c000 {
> 		compatible = "microchip,lan966x-serdes";
> 		reg = <0xe202c000 0x9c>,
> 		      <0xe2004010 0x4>;
> 		#phy-cells = <2>;
> 		status = "disabled";
> 
> 		serdes_lane_0 {
> 		    serdes-properties
> 		};
> 	};
> ---
> Then there is no change to the ports and then in the lan966x-serdes I
> will iterate over all the child nodes and read the properties for each
> lane.

Well, if you re-read my message I think we are saying the same thing,
but in reverse order.

"Would it be possible to leave the SerDes muxing alone ... and just add
the lane OF nodes as an extra?" <- this would be your "silly" idea where
serdes_lane_0 just holds reg = <0> and the polarity properties.

"You can add new support for phys = <&phandle_directly_to_lane>, but
that wouldn't remove the existing support." <- this would correspond
to the first example you gave, presented as "So you were thinking
something like this".

Actually, I wasn't saying you have to implement the first way, just that
you can optionally do that as well.

To expand on your example. The base SerDes device tree node would look
like this:

	serdes: serdes@e202c000 {
		compatible = "microchip,lan966x-serdes";
		reg = <0xe202c000 0x9c>,
		      <0xe2004010 0x4>;
		#phy-cells = <2>;

		serdes_lane_0: phy@0 {
			reg = <0>;
			#phy-cells = <1>;
			tx-polarity = <PHY_POL_INV>;
		};
	};

and you could reference it like this (i.e. keep everything the same in
the consumer as until now, to avoid breaking compatibility):

	port0 {
		phys = <&serdes 0 CU(0)>;
	};

or like this (following the principle - if you have an OF node for the
lane, why not allow it be the PHY provider):

	port0 {
		phys = <&serdes_lane_0 CU(0)>;
	};

Just be careful that transitioning existing boards from one phandle
format to the other is a breaking change (old kernels won't understand
the "phys" with just 1 #phy-cell).

> Anyway I can wait with this patch series until you get your changes in.

I will keep you copied to the patch set which I hope to send later today.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
