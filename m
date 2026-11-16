Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A69BD606A888
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 03:01:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=RiWatzEW;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=ypZUOlzW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=fSUuTSWwPNpJ4ND3/nBbm0QKeqvY/AEoXXHwXozbPsE=; b=RiWatzEWpROf5getYIDYfYLWec
	Ww8d13EkWFV/v92YVJWRPdXfVxGhekjMJ65NRSpTwXlRdobKtSwhl1nq/sr8jBh0/Di2IwBrbyAph
	gg4RR/NHurcVqLOETu7aaQdUE/6oBFCheNlCijGdmQVK4XrarbS1EY05Gdl9j5tJPRIbqHzftR+as
	+z6/RRSOY/JUt+nIMFIPPwZKTsLlbu9U3gm61uXq+lRd202ivb8yStwZd8LmbXcLPslHyrQw2n6ZH
	FuDnefgsomfHKrdNqPIM59+F0L3WkYbGgX+kBSb6svMgeQMWs/RwDLQsaTDzvN193vKdFVKVkjeuJ
	rcBMdA1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSmyJ-00000000zRA-0bNT;
	Mon, 16 Nov 2026 03:01:31 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSmyC-00000000zKH-3sXx
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 03:01:27 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-c506187deb9so46404566b.2
        for <linux-phy@lists.infradead.org>; Sun, 15 Nov 2026 19:01:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794798081; cv=none;
        d=google.com; s=arc-20260327;
        b=Lgm79OceW9cCCt3qqXB+NjsvGWXs/GQsitk2xn6Wyvc8uEWaFdnwhlm8FVgLTfjKne
         33psslc/R4/U/dxUoSlcidySgtsl7ql6blxsW+pTs0nDfoIFl4ROrEFYwJqwJDWoG5V5
         WccbESGLrKVRfbhCburuWauh5paUWKCUQkGiD5AA3HXaGBLWOuOW4rcWNb3e1W9nLGXI
         ISN9qVGjZAnEkc6XA+BbkvjzjM4qaO8Lc1ZQvT66dy5p7Ka41NYyy1h9N+To3n2WrfoO
         wyZQn2n++yuJmM2XYxLN3gcbJjTWahU4RAohkrERFATxkNrf13IFQFZgjD3NAg6mXHQ3
         zABw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4qUheKg2Lay7rkyQAuqzWzkTXaIYOEjjSVeDSogdieo=;
        fh=Rq27yGT51iv5qy/x2TdYkcNob2PzWfyxRShpWY+CkbE=;
        b=DqP9YhR9UPuyfUhwPmw7Ybfc21jU4aCg7nCXLGbMdBbMJy8GUQ/WQG7UhIX7mPlofW
         j+yhY7YJ/LcFpbzMm+JGWqePZIRVMg1cUDiAsJnlQIKsxQnJEmf/UYQLYTubLaaG3P+x
         /5n8smbkOsfvdci3kj/bUSKXneTVd0tYuidqPBLdSu31CS6YtAi6KKVm+gJ6mORiKD54
         X4JMTFVyuXF12AfbxG2CNuplwKJ0kpnWQxhD4YHml6yemmi7g6IbCjjkAuHLER0W+iId
         vsO71cGFe0cpH0wrcPMn1iMNk5BrpqLhK4Gw9gTBkHeCJD6+QjR+NRrDLw4zYwfvLil/
         mgqQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794798081; x=1795402881; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4qUheKg2Lay7rkyQAuqzWzkTXaIYOEjjSVeDSogdieo=;
        b=ypZUOlzW0zfxiQOwmiTLgU4qngWZuHY9XO+Aes+aYyaOfXsP2aye96YbozwVFG3Zdz
         7xfkQNgysPOy0aAFrWl4jHZuQvLf8CqjeJThUfEpLA0dVmatlXqNl1S+lR3aKuOCGMYR
         Ex3qYAE4urmIwqLj7dPJeLFIaBl34KYsFQycjMnIyhxhh2Lydlxub2q+rh2HfrltOXHH
         WXZ7OLoNG54sUTs1ww/ikqjcmigExi/o0KdXLBAmQ9vgntnKc0dre4lXsv1b7X6iHPOR
         tnBTOLUxnlczGCsEd8obVqEiZ0kEWC1yJ6tvQCOKW9fb/93wp9vIfRS+/Mu2M6c+6kLQ
         T0FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794798081; x=1795402881;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=4qUheKg2Lay7rkyQAuqzWzkTXaIYOEjjSVeDSogdieo=;
        b=a8pOLm7h6kHPZxh6rrJuxdvUaITWszPfPCvYYLFoVL/gF19R/8f5IjnchHaLjKC/1T
         CLj6uwFab6l7ZqG5nGyrcuZfyfCv4APHy4uSHAgYKv7oaxkdllcsetFXvg+r43eM+KyR
         LdOAj7B/sscpIeTYrP9rzQBHfcfeQz5mwgBpIJAQYG1yUD894KBUvHUTYCyFIVSMVyWE
         z6pot22q54EjslOAaVGngs/q1UXeh5tHtyD47N2VYFAHJlSe1KRqNOQYqBzM/BwgqKCA
         UEEp4d/YIAEOhqnYDKfHJKNcALMbktcdQZJx9jF4tepYa0Z7+whH34HbUprLQKQS20Ge
         7lEA==
X-Forwarded-Encrypted: i=1; AL+hErHyxWwzuMbh870agqdwzPBuaJbDqgU2y9LGweRNagISVeNuoSp/jzANyqxiXa9DCl7q4KE4cI7R9Xw=@lists.infradead.org
X-Gm-Message-State: APuU4Z8DJt8p+vVspBQcKpFn5ufl5nMBhDxpT7WG+x2xzR1aiCm/TBMw
	lSHDGfz6mlI+Tr2ZvnbGs/dsCgwScRRWDDhJtjnaxcXpP5BRtmpCYKxEGBz7G77SEsc51lZFFsU
	uJkNAGu+vjpA0YKV9wOGFIKEBc/1U4mc=
X-Gm-Gg: AYBFou0mymxZ7RxAnZtfu39hE+Wy8xewneuht6TrDyPZuLiJZHdm5E2lHvtya30Nlcc
	Dk45b3y5eux8m9TeRhsvxWUtfxZuyHICYH4RInb3iLwe7MiEQ3juSUkuVO/a97TVms6roVm3qfz
	SfK3kxLhlASWOKq/NO+TOkR1G1wl08377qca+6ODcaBMs3+4KrZ9gA2+gPrcFvW636T6MrDfyCR
	3ETYFwi3h6f2LsgwKdBrG4rRgyqNr3/oVXnLpmUf2c15C4VQF6WiHs30Sbmgk6iBaLdt1yDdfyH
	sRDBC+sKSxealIRX058l0l6ODqhPhOCmbM7Ph+isYxzH148G/qNqq5sv9dW/SyylPjrLBKgcx7h
	39Sp6IT0tigJY+ka3ehIlOpAPZEhazGofr02959afoPbzTW5rG+ny794lReJ/9c0EY7DgcdXjFH
	MN3fJlnWC2q0KQPdbY
X-Received: by 2002:a17:907:6eaa:b0:c4d:1768:48eb with SMTP id
 a640c23a62f3a-c50962f0b77mr1233752266b.2.1794798080923; Sun, 15 Nov 2026
 19:01:20 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261110-dcphy-rx-v1-v6-0-d681ba20b36a@gmail.com>
 <20261110-dcphy-rx-v1-v6-3-d681ba20b36a@gmail.com> <3ab93996-7e37-4143-aa4c-b4b4b0e025d8@collabora.com>
In-Reply-To: <3ab93996-7e37-4143-aa4c-b4b4b0e025d8@collabora.com>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Mon, 16 Nov 2026 11:01:08 +0800
X-Gm-Features: AclHuK_2CCL-6w7SS-4GVGwc0x2u2Iaps879pDspYuxXhI4Edd6EqNeYrnLX7uA
Message-ID: <CAPwA33JHxsd=nr9F9_KFKWPx+HGaR8P3ee7hxMc8XCS6QY46gw@mail.gmail.com>
Subject: Re: [PATCH v6 3/9] phy: rockchip-samsung-dcphy: Unwind power-on on
 PLL lock failure
To: Michael Riesch <michael.riesch@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Guochun Huang <hero.huang@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Sashiko <sashiko-bot@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261115_190125_009522_750EC3E4 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Michael,

On 11/11/26 14:02, Michael Riesch wrote:
> I wonder whether this should be here in the first place. Only judging by
> the name, samsung_mipi_dcphy_pll_enable is something that affects the
> complete logic block and probably should be kept in runtime resume to
> begin with.
>
> However, since _dphy_rx_power_on does not call this funcion, it seems to
> be something related only to the TX side of the logic block, but for
> D-PHY and C-PHY. In this case, it probably should go into
> samsung_mipi_dcphy_tx_power_on.
>
> On the off chance that this is actually for the D-PHY TX operation, the
> function should be renamed "*_dcphy_pll_*" -> "*_dphy_pll_*" or
> "*_dphy_tx_pll_*".
>
> What do you think?

The settings in this function are indeed only for TX, for both D-PHY
and C-PHY, so I will rename the PLL helpers to
samsung_mipi_dcphy_tx_pll_* in the renaming patch (6/9).

samsung_mipi_dcphy_tx_power_on does look like a more suitable place.
However, I do not have a C-PHY board, and I only have one panel with
mainline support, so I may not be able to test the DC-PHY TX side
thoroughly. For now I am trying to leave the TX code unchanged unless
my series affects that code.

Should I move the PLL enable to samsung_mipi_dcphy_tx_power_on, or keep
this error cleanup path and the renaming change for now?

Thanks,
Jason

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
