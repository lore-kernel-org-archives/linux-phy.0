Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2727DE77170
	for <linux-phy@archiver.kernel.org>; Wed,  4 Dec 2024 16:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kqN/hoF3yY+nRMQYoQPWa5uXg3aeLLfYaApNh6HClW4=; b=MMw5EbHsUg959XFykPKl7P6D0L
	TSpXohm023eZSHO+Eb9qtGggWXxKgGzygHsGAQle+bzBaY+kbLbQ/Ee7Pq7wGjQHCmdyK8v8gDa0e
	azd3PmfIrbrIiNgxg1EYgPkKDn91GNjevbiBj5masM2u6o8cJiQiLGPNB6MSM7+RBEGJKrIcwJOwK
	gUfew4bId5v6zql7DOODxpzlqUxK27PB8tp/LuSxkNU3g9hsRZ22QPejVr8Tneyvox9H4GvKYoJqd
	zRvsnzXFv7Va7Tei6/Rthl3nXIBIl2Jj0uX/FAXQWWdIZIJHD9txFI/sziJQymLJaRKVwjRFCeUc1
	RfTNKf3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIs6x-0000000DA6G-0u1a;
	Wed, 04 Dec 2024 16:20:23 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIrvg-0000000D7Km-2zUC
	for linux-phy@lists.infradead.org;
	Wed, 04 Dec 2024 16:08:45 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-385e1721716so2776334f8f.3
        for <linux-phy@lists.infradead.org>; Wed, 04 Dec 2024 08:08:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733328523; x=1733933323; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hPAT/TRFjBB8HyWgTua/k1CEZ9xaszsekzTaHu0li2A=;
        b=eMaLUzwPie/R3UnkBVNdBsmn9dXpl7AEQ8NRbFQc7TG5Zg/2c1ZtKGgLdpsh4Ic9wG
         b+1G2hHjb8SUrqd4eWS0tRLWU2tm5T91MuaFpxavAeHTcmmff9XCjZmEObUGu9xGr4t0
         kusuYeExPXUp8+U2m3iWIj6DuR9X/gu28MkO42ZWfRfwJ0DalUGIcusfYn6j4Z2U2i48
         bTXVDCZ6dmnMhRnwr/LhItmVnXpKcEUrwDT19XhYxamJ+MCIe3A/YQbHaedS/O7hKUCy
         9jQMRlrjjlFC/24e3HTtfGoUZ8lxhhSv8NIAuK9AoFEUSv85uHexbeHdbQQ/TTUc35UY
         EPVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733328523; x=1733933323;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hPAT/TRFjBB8HyWgTua/k1CEZ9xaszsekzTaHu0li2A=;
        b=WIgB01xHw6uNYwNXcJudTsgIpcqG61trSmCytI0x9wGdmIELOMrLkKO0l/pHTVagAg
         ehfo9hyR6BlugMDSaAuFCkRG3kShVxzk2WrhxZQue4Noo4RMIUZgMG16Pnpx2rvWINjV
         2z9sFtkj/zSO0TB2yBi16/IG5cOaHSvjyvT9W/swMsx9ykV3mlO4vgwxfn+At35hUjCg
         rFiOoiEU9fFpf5oUW95PnAGrZCAQfyr5wuzX/dEGUcTiYtzHm4gFZm7slDJGaMJPzFF8
         LQER7uKpLPm/023wL/MH+Uj6wMWDDOOrJYEXo8ycxb1cekMctiu1NvMRMNmZpSLq1Qpp
         pAjA==
X-Forwarded-Encrypted: i=1; AJvYcCWvUqrMM3I/TU2Z53ezeUF/4wDhDhTWULSB3M6jpnj8tKHHfH5eZALpVpy5wqIfIbL+LOKkewc2Hww=@lists.infradead.org
X-Gm-Message-State: AOJu0YxeM0njvELnTgMU+mSdZ8Z55CexhX8Xe9xN8uLHE1fFnpz7uheO
	fzymI8AuZLGtLJfj73cRsDG7kcMCXL4KN530N+pcYCCC3Rg2UoIPhsnl+Q==
X-Gm-Gg: ASbGncuMg+YHpcR6oAPEwVJaRtedb7tRziZMtEj7JHkUVjGC8ymyHiGWW/thYM5pU36
	+KUaQuS2IwReZM0OtqS1Rs+/CNLV3aKNqCy3o5RsEzoQ1z2l96fpRUfjPce4xp2BnaM4ZBrN6ZC
	Fka5rm3j2MtjMiM8+922EXmh+8IQsReBXfZgVAetwBCSZeFWlsKaTNrgLe/hjPKmBm7oW++hYwI
	MZjckA8ZtlW/8ekiAAeMciMUHFDi5z4GFPNYV9G1ug0sY7NzdP6XJExEKknKtE+P7rSpuu30IAe
	246CPqmiW23NQ0mZrwdDH79urhazTl8HzkxZ
X-Google-Smtp-Source: AGHT+IGeyxif1bNXgCtRbLMVJShhmRozA3MwedVVN9gh/m866F+SNXEaqN+dd1NRnYdztBfC9bOtLg==
X-Received: by 2002:a05:6000:1f8c:b0:382:4926:98fa with SMTP id ffacd0b85a97d-385fd419f39mr6416846f8f.40.1733328522599;
        Wed, 04 Dec 2024 08:08:42 -0800 (PST)
Received: from orome (p200300e41f281900f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f28:1900:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385e1f3f2desm14327449f8f.87.2024.12.04.08.08.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 08:08:41 -0800 (PST)
Date: Wed, 4 Dec 2024 17:08:39 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Vidya Sagar <vidyas@nvidia.com>, linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH] phy: tegra194: p2u: Allow to enable driver on Tegra234
Message-ID: <uya72ol5phxspynrs7iurusapaucypyiqwmrlotsaasz2vzabf@ptrfi2ljgw3k>
References: <20241201002519.3468-1-lars@metafoo.de>
MIME-Version: 1.0
In-Reply-To: <20241201002519.3468-1-lars@metafoo.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_080844_750737_A62E92AE 
X-CRM114-Status: GOOD (  10.18  )
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
Content-Type: multipart/mixed; boundary="===============0754402098899352853=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0754402098899352853==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fmkpfmpnx7buzb4s"
Content-Disposition: inline


--fmkpfmpnx7buzb4s
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH] phy: tegra194: p2u: Allow to enable driver on Tegra234
MIME-Version: 1.0

On Sat, Nov 30, 2024 at 04:25:19PM -0800, Lars-Peter Clausen wrote:
> Commit de6026682569 ("phy: tegra: Add PCIe PIPE2UPHY support for Tegra234")
> add support for Tegra234 to the tegra194-p2u PHY driver. But the driver is
> currently not selectable when Tegra234 SoC support is enabled.

So it's not selectable when *only* Tegra234 SoC support is enabled. I
know that's quite pedantic, so either way:

Acked-by: Thierry Reding <treding@nvidia.com>

Thanks for the fix,
Thierry

--fmkpfmpnx7buzb4s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmdQfoQACgkQ3SOs138+
s6H55g//cYre8QUcrtX+3oYPLhOYpkqzobtfVznfUp2az4g8cgu9qwCb14rV1X14
uDKR9UYGUMS8m+DrvvvAVO+JMdIA8y9JA33tSKC8m+KKb0oydJP2Q5pq93gkq/VY
K/BSUQXXCKN/tVuZktvB6xWEuRQPWvpLxKboSJsOnCfuQjhrceXCnjHlEpcMibwL
3DcXKA73/JYaKJZeUcQilHmPvnxdvmW8F916rfpECofd2GjBMaovrqMz7j9Hy4tz
+2BNcvGrG/Txf/1tS7krfY3O7rEtzp0szbQeSTnLXQxVzhcjmVmUGxFJx2qhjNQ/
0NRr9QSCKCLc+PC7TaQ6Al7MF3qwUhQJn0wcb9FWVTAUSfqD9uYKhU52jVVcRvIZ
D9fSIMVxbmsykDBYORRiKoBmR4jMrtVFzAd6lzkpZ0At/RgHD7H6KosMyyowzLFk
4djEB0oc2CPB7PQGjjZrMw8kHoxbSxrV7hrmJbTdOtzoIZGw6nQhJ9VDU80yXaLb
CKdTfci2nclPmXfAwuC9pR+Vp8sJYkPdnja9ENvzTK/f4zQ+g5/SJN7YaMlQpvYQ
QzDhdfvmuSScQv0N9FevoC6fz2HwXAXLfVFNzBPgmVF+823ii4HOn9veLJdaKat4
5UyxGzPKho9/D7MOscMTzsFTmqCFoTsRVKu3KDFao73D9nRc/Ss=
=1L63
-----END PGP SIGNATURE-----

--fmkpfmpnx7buzb4s--


--===============0754402098899352853==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0754402098899352853==--

