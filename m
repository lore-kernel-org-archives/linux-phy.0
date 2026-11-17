Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B95D606A323
	for <linux-phy@archiver.kernel.org>; Tue, 17 Nov 2026 06:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=eBtv2WzE;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Ao76Wad1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=1/LUPr6LU2xudpCisZkhdPlzUFQXTGjqaEiiu2z02aY=; b=eBtv2WzE4CMK79NwsQV7uB/QZR
	oFasSTo4MzRizQgS3rR8JsKOAdTiN/e6mYyo9z4LKiQ3UnMYN+MhY7R7QKeGYYsHPwr9sYpteNjGJ
	DyTMODwtVT+OrHZPEtU95YhLUrfdi6INRgqp2XShtK0DHQSX5szPiYn3YVRaTGsnYS3DRTTfvE2kg
	GnpRsyRrZIYQRysOXqxkvKmp4g+DoCMcu8LaZ7T9h0z8v5pl74qJzbdgkgMCoICPfLzGEfi2Dsrsr
	+jH1YA20KN0rnuEgGD4pYMarHwzTbOS+oNv+xoAhM4GcbcArtmHbcokeRLnhn4xOJK88Gu6xE1gAq
	GH548gbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTCsr-00000004gSF-3JC7;
	Tue, 17 Nov 2026 06:41:37 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTCso-00000004gR7-1hQX
	for linux-phy@lists.infradead.org;
	Tue, 17 Nov 2026 06:41:36 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-6b75c0f5fe8so635295a12.2
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 22:41:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794897692; cv=none;
        d=google.com; s=arc-20260327;
        b=SFHiBc240b8uk/HmyNjszZLhzsUZ5uXpi3E/6vXSqUEzRYpL/uHUZhc6UMWklFNYaC
         ZOdaZdoTELKYDcbOzoKnBPKdgmHfaKuHyO9vksbgGLvbGrjuK3Qvittu5B8gudZRQwyX
         EDyMy+iAYA/+xBQfxbcpt+yTwQgAPGYJgJbPhc4aimga/N5PwZe1PdBSH11nN3rCyWoe
         dA8hCCeodxe2YbXl1Uw+01nHvqbPLca9qbPWgDt55wMNRQyKnhVe+BxBsdLSYj3tmuMf
         j+S3Z35g323jgKP0q0riVw1NYhpmH2C0qdBJvKA7A1zL9+o/dG7yp8JXfjZeVCg/sEyF
         moTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JPZhpWtYo4NPJA/y8/DpauPYh9eE6q0SsStIMNvIRZg=;
        fh=qBn5AMJo09uYGS3UrKP4WX970TLknqyAKbrRCCVRz4A=;
        b=At3ss3qHqi6vLVSSoLayoJ+/N/ErHQe91o9dv53SToPAutOmlNnP+1YBb8JsjZehQ/
         SpAPAwpkB2UB3kKN2LcTtj/Qq2V1Ej6S3Dm5U+bz7+ttg0QATmQVuiEM2MfuoWVj8yrV
         cjsvBxxjlKQDjtWUXkVXKiviR1qQOBf0fHBNK68UXMvOu2BWnFR2Ivo/Mwav/qAZq8Cl
         t693S1jsO/zoxE4Lm7FbRuniWeewVTzWhhuvFaF2PrwGOZWX62SdFNOMURH8v10zqK+z
         aNKu6Eq3O85MBMM4AzeDvjCwh9qYIlVYfaLalIjkyX46y8xJu4FYzEebsYRkhJfl5lZk
         z4uw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794897692; x=1795502492; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=JPZhpWtYo4NPJA/y8/DpauPYh9eE6q0SsStIMNvIRZg=;
        b=Ao76Wad1Qs3p6CgfeB3oNiAfkid2hREWRqWifeF56+tBVORnq9636AMD8tAoL3tKvt
         A+XJtw1E4NWM72amwzDx5Gvm/QOEdpTzH+mVJG/4QeFB+od2ABTc0PyWttl0bBn8pORC
         nJrc6cxxZCbn4BE/gtain4WngBrIa1vdG4qiFlul9LWN9rB7NNsKDRGZuzp0hCGWKjqA
         Xoac/XlTlejBJQHe3s/VHC2gcG1ee6+Q4zyLht7aT6oAT8RMlOsfS1gOAVHF9vLzAIHY
         f/W2wX7NTllhKJk8bEYiHt6wbYzjhLkdAxBY88lca9otoOxMUXoiAMcFGiqP1VEN6PD4
         qSnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794897692; x=1795502492;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=JPZhpWtYo4NPJA/y8/DpauPYh9eE6q0SsStIMNvIRZg=;
        b=e4SfdYTkQeJy9b86LaLJCs47+ogxhYQPM4ov0J3ul1XjYlOCs2iEcgB8vwAseqj1A0
         Neuns1p2La2JO9VdfOgmmvoy25xJvtv9O7+raUC1DyyhhL5kwYOcuzFzVR5YNoIoJIzu
         bv6DI8MC71vrjZpr6y6ESHRGL9YO5+7J1EvSGpPk77+uD7Q5ElQFwcCaF16G+FQvV9E8
         K380jFWrhDMAZ9AgS/9FNcX8e2gwsbGt4h+eFxNZLz8iQPMYnhzJDaoNdtbnvWmdKndQ
         YCYNmOz01sAKv1QXaJGq1CycW7PC+uyXZRkPaZE53Nl1UjH+eZQ1lCKS0ZN3lHa2tUNI
         8wAA==
X-Forwarded-Encrypted: i=1; AL+hErETvCyjR1M7rVgTZ9enMX+G8vgAbLC43f6Ekn+PIghjlBIAMw+GBSZn41dgtqpGtUNn5druD0m6y5E=@lists.infradead.org
X-Gm-Message-State: APuU4Z9W+1/JBXrU7ZA+GSsjLan15A65x4psh4Ht18gpmMp1UIdFTHAv
	PUQuXH0ARcoaMBLED0zh/MDIehSsIZMl+WAMwxM2jLU9m4wVLf40R53jFUZKSqvd9+KmEU0gVAC
	nK/Mh3D4le8hQJEIIs/X3FDCM9RjH0xk=
X-Gm-Gg: AYBFou0TmS+dPtkNVKkXmoR9sghZ+3m6Gw19nd8uQ76Pc9ufLN6bAKDprS90edC8MVb
	CwPhLkeOFZzqDhN+zOWSdvLI5/wtUbGmBaZccK7Dyc767IWlOlkIpH7AYNbcGidzOcz878QPUlx
	TKAooCvlv3HO3C5ypgo/IXWWAgKNhpwzNXJY3l4Ryi7if8250+qq4IshNRYrRnKErZzqFGdmJKO
	HrUAgS9mp+5HOGtBei7fyskKYr13hT2cgs/GdFyqe61Uv9sVqfRW+/+BxUJSnNH+liwI70cY1Jj
	aW6TsVRVOAyEeahOs2kQrYijDPoCV4dyX652/9NIJdsUaBSPxMjfr3K8hGYIunI1JGsL4GaBHbQ
	EPjcDHkRIbT9crdcqEEV44t6EwFEA4eYl93KsxusrjYNe43GGHyRyRpDVLttBa0oUJrGHRHU=
X-Received: by 2002:aa7:dcc8:0:b0:6b1:b5b8:b695 with SMTP id
 4fb4d7f45d1cf-6b7c05c2ab6mr10001732a12.0.1794897691319; Mon, 16 Nov 2026
 22:41:31 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261110-dcphy-rx-v1-v6-0-d681ba20b36a@gmail.com>
 <20261110-dcphy-rx-v1-v6-3-d681ba20b36a@gmail.com> <3ab93996-7e37-4143-aa4c-b4b4b0e025d8@collabora.com>
 <CAPwA33JHxsd=nr9F9_KFKWPx+HGaR8P3ee7hxMc8XCS6QY46gw@mail.gmail.com> <0d837fe2-e192-4fc6-a2e5-c23df40684ab@collabora.com>
In-Reply-To: <0d837fe2-e192-4fc6-a2e5-c23df40684ab@collabora.com>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Tue, 17 Nov 2026 14:41:19 +0800
X-Gm-Features: AclHuK9K0tynceSVuGQK7zRApbKLpPj305E_NQui8VbqIokOScWH3FFiT-Y5p9Q
Message-ID: <CAPwA33LgQqQSnn3vUOQF2wTUiqP2QROKfUpsASJZqjJP6WDi7A@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20261116_224135_468303_9C717201 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.8 (/)
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
X-Spam-Status: No, score=0.2 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FORGED_GMAIL_RCVD,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Michael,

On 11/16/26 11:00, Michael Riesch wrote:
> Still what we discussed makes sense, so let us do some refactoring in a
> later series.

As discussed, I plan to add the tx_ prefix to the PLL helpers in 6/9.

I also noticed that struct samsung_mipi_phy holds phy and lanes, which
TX and RX both use, but also the RX-only hs* fields added in 8/9, while
the TX-only PLL state stays in struct samsung_mipi_dcphy.

I am thinking about the following:

1) One struct per direction:

struct samsung_mipi_phy_tx {
  struct phy *phy;
  unsigned int lanes;
  struct reset_control *m_phy_rst;
  bool legacy_mismatch;
  struct { ... } pll;
};

struct samsung_mipi_phy_rx {
  struct phy *phy;
  unsigned int lanes;
  struct reset_control *s_phy_rst;
  unsigned long long hs_clk_rate;
  u16 hsfreq_cfg;
};

2) Keep only phy and lanes in struct samsung_mipi_phy, and move the hs*
fields to struct samsung_mipi_dcphy, next to the PLL state:

struct samsung_mipi_dcphy {
  ...
  struct samsung_mipi_phy tx;
  struct samsung_mipi_phy rx;
  ...
  struct { ... } pll;
  unsigned long long rx_hs_clk_rate;
  u16 rx_hsfreq_cfg;
};

Option 1 changes 6/9 to 8/9, option 2 only 8/9. Which one would be more
convenient for your future work?

Thanks,
Jason

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
