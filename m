Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC562C02180
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jan 2025 11:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gjao1LEAprO1dQwgpiZDLawMKWC3RfBlcG1X3CyyuY4=; b=mxU3RL8OKx16fe
	i3b64jLwP3id4xLUrvZyysYSxjUVrjiNvFjWc7n5gUKHCM604BN/P67b4vr6/UqLx2nX0A7iMLrr8
	OkbFsvf9fYKIi1oLou8qRrb1nP/Cc2SVwaw3gSZFmOSyfpUqQCun8afHHIQ7615XeU/nZIvVorXRV
	AG7SAWIp6R/R8F0yvEDDOa2p6VEYX+EqwbZb2uHBlIOYxySH1K9KJZEwk1LPjOGGPDgFnp5Vq+GbI
	OKwjuoNkiXyG3+W3mgj3osK25FYXAqRVqbJy8U/nX+9srDM2ZPIVoDa0nFQ09UdvoGTYdWRU2uq4t
	sUff/E+51vKIe8qbcBDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tY1V4-0000000BfJa-2Bwf;
	Wed, 15 Jan 2025 11:23:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tY1TZ-0000000Beyf-2lEy
	for linux-phy@bombadil.infradead.org;
	Wed, 15 Jan 2025 11:22:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=4mhub1WX6NRFjMXtQbcreIaC8K21PQR5uxWQxNvn/uQ=; b=WdHVBON5gpGZjnxJBayOhbC22b
	1V8uRK0JUQ3DWBNRYd0h+TbhadiTWHgJ3UJAjftHZTmQiAIfmGSsa4pDnJStDHgh4uInQES8gNpAE
	878/lEktHPix1AFv158IECt1mBdLyR2dPCtnN6tbC7oRijXlVh44za8rFY3YtFKFBChW7qDdHrei1
	jQwggtit3/zdNYIFPSpVnW73X8K04iV8dkzE6rGGhp5WqJ3tdzw5VoD9OXrZUXIUonbbgaZyCzumB
	KgEGSb65MVFBuSwXiatjfJAFbKWgeWOUufVI54k/JG2kR9YZkSMik48NFauJoWLO5GS6PFhjrw6E1
	aBPmutRg==;
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tY1TW-0000000Ar8W-2eSL
	for linux-phy@lists.infradead.org;
	Wed, 15 Jan 2025 11:22:20 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-3061513d353so37716381fa.2
        for <linux-phy@lists.infradead.org>; Wed, 15 Jan 2025 03:22:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736940135; x=1737544935; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4mhub1WX6NRFjMXtQbcreIaC8K21PQR5uxWQxNvn/uQ=;
        b=trH8aVuRT38BeVO7vv8r90WL3tW47Tt79Sg3RdmGawzz5JcHQQ6hLiBugzSsFCqcJa
         8bOr5BQuGo7YiGBKVA3qDfMm3wvsdXvV5CjSfoDqgz64/d+2QDuHbSLqLby8F8I41wfk
         KjHD7C9icBiRmUCa93XcvCWlof92Sj74FlhaeQKbrXfhGc5lTOX4Sk9B72DHJwM9+o/X
         XJCzWEtQLjaR1vxk+uJW/F4QI/mSkY2sWGqAc5+1py67jXa6WY0ocn99PutNMoriGvFF
         f7RBKvrx45AdUCYQpCSSK7kJfUJ8cwJ0lRo7ccnXke5yPgZQRfqzmzboXjxREYyeChAZ
         oR9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736940135; x=1737544935;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4mhub1WX6NRFjMXtQbcreIaC8K21PQR5uxWQxNvn/uQ=;
        b=sENoNHJNbzQYnjkC5T7eINl8KoEEITrzUU/VJVX8wNtcyET/d2eCq4xqJbxQqR8cp3
         BJQQYDeEacT0IaJA8H13HyYpxHLWOw13n+ThVwud+Nk+RrpjBNj8V+xTl7s4Rry1DHCY
         ISjYfq6/vGFMNeoKjYSYSLPMjO4KM2uS5bN+du+FsVlzMtZh6/JKKq86r/ppziWRKjL/
         OhEGhIxsMwc0VTbXEazfRoOCO9fk8l8dmbUs59J1Uw/Qqz/v4jTx9PkpeSGiqgQdUCnK
         nQ8yblNk0Rvba28PK4EwQumod9tz/tlxyp8IMEcX5h7VRP5ZAFfX8sj3stTbrWZGASGf
         5glw==
X-Forwarded-Encrypted: i=1; AJvYcCXEo4X/Z2Y8umw3aN7QaPPJqZNj4+WAunpJa4bwumdbPacnOa5/vNyEGzMUwkAgtm3U2JwvJbr09bg=@lists.infradead.org
X-Gm-Message-State: AOJu0YxzWTYTgEY5u4KdnLAdXhxSwFvsQggtFhfz9raBO01W7t80wd9H
	JnrJ9tBQesM6+qjH6W58mY/2fGx2SPXm5LO+lZnQerL9M7y4EIuSgdYGhvunI/VVTeaSEvBnYM0
	lmI8MFTdpfYtoeqIvs+vfplHhtZhLZFw92Qs1yA==
X-Gm-Gg: ASbGnctyQR7wnoJBR4ql7ofDfcfNYeuC2fQPdtIHsH/k+2V75EF4uqEx3ZZdtLWq2Gp
	fDJRMx7WFiJQd1OBP+TYD7EF0TDu8QJg6c2wHsw==
X-Google-Smtp-Source: AGHT+IFi9OUFsDG/HwAOWZDy5wxB1IFMes6uWrSDrSs8fqZfUq6g94ydbqgtsgXawPRPPFqiHwnnVYJjpekX/j3mPrc=
X-Received: by 2002:a05:651c:2124:b0:300:15f1:cd5c with SMTP id
 38308e7fff4ca-305f45cccbfmr89843831fa.17.1736940135230; Wed, 15 Jan 2025
 03:22:15 -0800 (PST)
MIME-Version: 1.0
References: <20241227-a133-display-support-v1-0-abad35b3579c@linumiz.com>
 <20241227-a133-display-support-v1-10-abad35b3579c@linumiz.com> <20250114160045.2baacdaa@donnerap.manchester.arm.com>
In-Reply-To: <20250114160045.2baacdaa@donnerap.manchester.arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 15 Jan 2025 12:22:03 +0100
X-Gm-Features: AbW1kvZR9tBuaRtZ7bNclb8qOifwSWdiMNHG0XPYW6GVaemjAImZEkZB8O3eBOg
Message-ID: <CACRpkdbZYFaTHoOAy7DYpaV77Tf31H4bF179OrperU6UGys2ew@mail.gmail.com>
Subject: Re: [PATCH RESEND 10/22] pinctrl: sunxi: add missed lvds pins for a100/a133
To: Andre Przywara <andre.przywara@arm.com>
Cc: Parthiban Nallathambi <parthiban@linumiz.com>, Joerg Roedel <joro@8bytes.org>, 
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, iommu@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250115_112218_751948_DF080908 
X-CRM114-Status: UNSURE (   8.42  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBKYW4gMTQsIDIwMjUgYXQgNTowMOKAr1BNIEFuZHJlIFByenl3YXJhIDxhbmRyZS5w
cnp5d2FyYUBhcm0uY29tPiB3cm90ZToKCj4gTGludXMsIGluIGNvbnRyYXN0IHRvIHdoYXQgSSBv
cmlnaW5hbGx5IHRob3VnaHQsIHRoaXMgcGF0Y2ggKmlzKiBmaW5lLCBzbwo+IGZlZWwgZnJlZSB0
byBrZWVwIGl0IGluIHlvdXIgdHJlZS4KPiBTb3JyeSBmb3IgdGhlIG5vaXNlIQoKUGhldyB0aGFu
a3MgQW5kcmUsIEkgd291bGQgaGF2ZSBwdWxsZWQgaXQgb3V0IG90aGVyd2lzZSBzbyBpdCdzIG5v
CmJpZyBkZWFsLCBJJ20ganVzdCBoYXBweSBhYm91dCBhY3RpdmUgbWFpbnRhaW5lcnMhCgpZb3Vy
cywKTGludXMgV2FsbGVpagoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
