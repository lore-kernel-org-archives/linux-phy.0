Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2546C54F54
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 18:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	References:Message-Id:Cc:Date:In-Reply-To:From:Subject:Mime-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g5RLG1zLF3FDt4R9OkAjdiO2NlzRi1/unb4JnqBhnnI=; b=uHddbA9Xfb+TviXfU8u4kEaf7U
	JL23yrT9jBHr+rp7462FKA3DItFxtHosWaEuXroqDx9EvKB7+3YWNpcwjUaEZyZqheUeDyEzxq0DN
	U7/SQ+AaVOUdkxLpt1WD5AVgoIdA/qWqBHI67rtnKkn0eM0QGqI5JNQy+LWv5FWNMUvB2XKznJU1/
	w63Wqf2gLtBM3V7Z46s5sdlOfQsMv7vpTd1H/+r3pggSSaKWqTLKVts6qRseljX5E/pC9ubcti+qf
	7gQoPCzsXyUzDOrC/ExE9tWtJB6yC5G74EfUbaJzAjU3dZ99+8BOxCDaf9diAgFHOwrtt/iV3ToRX
	M7VUmyHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1womG7-000000063J4-0yNu;
	Tue, 28 Jul 2026 18:10:31 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1womG4-000000063Ho-35Bw
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 18:10:30 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-47f92e3c14bso173780f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 11:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785262227; x=1785867027; darn=lists.infradead.org;
        h=to:references:message-id:cc:date:in-reply-to:from:subject
         :mime-version:content-type:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=zRqEh40r0PnAAxBC6Ehpg1QR1kIM64rXG8fPCVXya6U=;
        b=Nq0UUy3GXa0cyznxKIqgKhKt2K56qKYS3hyXyNp9yT9B+YYChpBzyI3f+7ZndXj1fg
         J3x5ryAZx07X7OlPMKRb5kOEwMw+6Z7JCY1YwoKiRLPURbarhD1ZZMxpgd/bcq/t9bSy
         Pyy60hxoYVjwYQR+9FlcNX3Pc13q/iwJfNfGJ2ltKZzzvnoaC9EFxhfqJ5Kl2bp3dOVh
         0guZoU+ACwtNKYK79uHDFuX3GzGWWF3QJWT2Qd/AeMrk8pUVqfZHhc3QvDJEp52GKWsi
         LDI7ztgdd+7A45Ce8jCfdO7u8bguoYzZTPJo83P/dUh7iiveC2hGg8M8G12ymJhUhMi0
         m37Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785262227; x=1785867027;
        h=to:references:message-id:cc:date:in-reply-to:from:subject
         :mime-version:content-type:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=zRqEh40r0PnAAxBC6Ehpg1QR1kIM64rXG8fPCVXya6U=;
        b=Mms5UufLR1vVwe31BVCfZmHZWTOxhCNNW56TomWhhtmxwBp1NtyOOBpbh5eAUl0RXj
         a9pCt1PT7BvzIK4lk3h/gFiphld9MSBXjnVs0DKverr3u9rgsTkafsDXO1OIgzyi1XpD
         KKiIfiDCBjNM5XtvA8YpY1ggSKgABMhloaDUcK594HcRfKHrRfHpDO8/nEkyPktekxkk
         ia2bjM2AXImDyzhq7cM1U3KXJ/sd/18cAgbdyQyjSFRVYU+qMut/qZw7tn66Grcy8qkf
         JPMCWiy4KTeuIIxOeLr3rgSJYGkQkdBK3zimngF/olFQaEmLhduEApyrT1G8bMWuDiLt
         OfGg==
X-Forwarded-Encrypted: i=1; AHgh+RrLNEB+sJwqxTtu7KD9KSmO79M2INCsxopGz2gfXTHRl4TB76Qcob2JUICkogQEx1Jb/akhKgNtuII=@lists.infradead.org
X-Gm-Message-State: AOJu0YxR1DrpwEdpPNYP4PaTJ872aMWhP/T1FoEsoa0nsLPfz9pfkQOt
	vx99bom27UVjP6yjqChPjhuRqYML95K3h5o/QJAh8vuRJU9xBvUdtIqu
X-Gm-Gg: AR+sD10+0WZhBwYWQdZpkLjHAgKs9MdvUKHkb2HZrev5SfbnU6sMuHkFlNX/MgRprEy
	UhrBcS9oub3/ZjGcqd333Im/1KgYRbvIwDUMGetZ7assOaVIUM1QEwFumwkzQqN670DQSoK9m44
	d9EDPCpV2k9DFulYCcVEuNexr5Ic2kKlSGSBr8Ah6nUvYqziwdUKmRwL+VucuYXRlSgRXLz6YP5
	gRrdV36vX0cO/Ziqla452coPFyzbtze20jiLb4K8t0cn7xaM2L68JnHzcXpuMz4l93TMpJ4yCfn
	KMOLZigRcDxAzdcisTlm0ZLn1YDlju7wqNioqfMFFexo+zqcLrFmdbmYH1tb07oG4v2gkOZT14U
	NDAp+DDh3LtmYgp+qkETGYOxrsxmTBDAigeQsDkipvMCU2J3vRrR5uCnpiSurZB9KD4QBRrcAU0
	sEvHiVQVn4KZXqJcuXVGa9CyXx4cwAEpE=
X-Received: by 2002:a05:6000:230e:b0:47f:9720:4740 with SMTP id ffacd0b85a97d-47fb1e9f82amr4362694f8f.37.1785262226606;
        Tue, 28 Jul 2026 11:10:26 -0700 (PDT)
Received: from smtpclient.apple ([197.250.51.166])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47fb6abd0a6sm800035f8f.10.2026.07.28.11.10.19
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Jul 2026 11:10:25 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.600.51.1.1\))
Subject: Re: [PATCH v8 01/12] dt-bindings: clk: zte: Add zx297520v3 top clock
 and reset controller
From: =?utf-8?Q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>
In-Reply-To: <20260728-proficient-boobook-of-will-2cc94a@quoll>
Date: Tue, 28 Jul 2026 21:10:03 +0300
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Brian Masney <bmasney@redhat.com>,
 Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Russell King <linux@armlinux.org.uk>,
 Lee Jones <lee@kernel.org>,
 linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org,
 mfd@lists.linux.dev
Message-Id: <3A3A0D17-7A80-40FE-AB89-DDE8E9A7F72B@gmail.com>
References: <20260727-zx29clk-v8-0-7a107b00f1dd@gmail.com>
 <20260727-zx29clk-v8-1-7a107b00f1dd@gmail.com>
 <20260728-proficient-boobook-of-will-2cc94a@quoll>
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: Apple Mail (2.3864.600.51.1.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_111028_789797_916AF651 
X-CRM114-Status: GOOD (  14.60  )
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
Content-Type: multipart/mixed; boundary="===============4256692720824105185=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============4256692720824105185==
Content-Type: multipart/signed;
	boundary="Apple-Mail=_74B8EE53-C8E5-442D-8CD5-A08FCBF83C61";
	protocol="application/pgp-signature";
	micalg=pgp-sha256


--Apple-Mail=_74B8EE53-C8E5-442D-8CD5-A08FCBF83C61
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Krzysztof,

Thanks for the prompt review!

> Am 28.07.2026 um 09:27 schrieb Krzysztof Kozlowski <krzk@kernel.org>:
>=20
>>=20
>> +  resets:
>> +    items:
>> +      - description: USB phy reset
>> +      - description: HSIC phy reset
>> +
>> +  reset-names:
>> +    items:
>> +      - const: usb
>> +      - const: hsic
>=20
> You do not need these two. It's one device and DT does not represent
> internal device wirings because they are redundant (deducible from the
> compatible).

Just to make sure I understand the implications: Remove the PHY resets =
from the reset header (and driver) and have the PHY driver control them =
directly via regmap instead of going through its reset sibling? That way =
no self-consumption is necessary. At least that's the idea Sashiko put =
into my head with "Could the driver interact with its own registers =
directly?".

The PHY driver would take exclusive ownership of the resets anyhow, so I =
don't see anything in the way of just making it own the respective bits =
in the 0x80 register through the shared regmap.

>> +required:
>> +  - compatible
>> +  - reg
>> +  - clocks
>> +  - clock-names
>> +  - interrupts
>> +  - interrupt-names
>> +  - resets
>> +  - reset-names
>> +  - syscon-reboot
>> +  - "#clock-cells"
>> +  - "#phy-cells"
>> +  - "#reset-cells"
>> +
>> +unevaluatedProperties: false
>=20
> This was different last time and previous code was correct.

Ok, I'll keep #phy-cells and ints optional and also make it possible to =
provide only USB or HSIC ints.


--Apple-Mail=_74B8EE53-C8E5-442D-8CD5-A08FCBF83C61
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEQxb0tqoFWyeVMl1sPRO8yFRPGiIFAmpo8HsACgkQPRO8yFRP
GiLPTA//VT+BJ+4K6QWEatqxIi67Rfy+A3mhALsMoPStAPoN8KELPVr+JoqLoFD8
lz9s0uj1PXWN1CmBArx6Hzm1N35owUoP46VLnwqrIAR0gaor+PQPHJ9In5L6E6Lm
SdUs0QfxWMV75E2IM1tTRf8MKa6SnCvEp72OAYdMgRzEd7f0vp9fV9716yb0Ej7q
ZXG85U4f/1++S5XHoPxqFxrxunsJoX4GgVEmKyeB9N3spWjS7KykKo2UYFZEctFg
RUiai7lO1I2X9DuFGkuVZcouCIcpB1eJHx7r3UOTwIG6kbTKHBjWoq32L2tjUY4B
nSkU7vMfwUA387n/zdeisN6smcf0C8uH3g8PSozuzaojYQzAr5MjbmgDue2R1LQi
wVfHBdREUJL1WHt25UgiE5EcBcrQhwxccqDuWbkXH9toxP0HUEpTn9gdB8yNdGQx
HSLsQCaqOew5/9nPEnwn0X7q7FnnBSOYv6AQ5g96xPeuNDNQ2n8f80X8iBmy3qup
tWM+cCViEhEkoLl0x+/XTO6vfljHztZCpv2Xey9PGs7HDtyJbBMTkcHdcCTFV9yo
RKzQMdJgqmIfycOlUGL+eHCI1X9SGEZc7hcENPBn666TnnWf3XrsCKZNHFBCU85e
HUylGFuzN2pdc1MzYxgwFIJhKLtsVV8pLrnR3WfCD/2F6XYb36g=
=Oh+I
-----END PGP SIGNATURE-----

--Apple-Mail=_74B8EE53-C8E5-442D-8CD5-A08FCBF83C61--


--===============4256692720824105185==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4256692720824105185==--

