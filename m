Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0935C4345F
	for <linux-phy@archiver.kernel.org>; Mon, 29 Apr 2024 15:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:From:Subject:Cc:To:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lfA3GeNqny+4aj41tWAQeeeWXDc6onA5D9+lWDSSaIc=; b=dxlZu7I78jHeTrBJM9ZR9QStB0
	iAxKx8O3JS5TN3o+x5qgjzFhY1CFKrNKcFRV1TndeTO/XCfJA5IOfKEQqppr4DoTUXz+dg/rnFP1r
	UrZ8y9c+xgYfnRKbdemBsZ5N3Cn8QWBK+EN1bdDbtBD9puWXgGIrpzG0JkYsB3CWBk26uMVBdag+X
	KAHCFRcYsE0AZGBsrbp6JYNh1yTXyqFrkqbzaBLUXTxhV1VrkhH7BGVJrkTXxQWEFMiLNQMYwdE9g
	p29Q+hgnhSuh5L+E3qldz/4rJS3Cpu+o83eNc+nV8a3iaeO7U0IVkbcJzxH7RUOqZXjPH6jtOY34f
	4OI+vnWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1Scm-00000003Hqc-1ecf;
	Mon, 29 Apr 2024 15:09:00 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1SZ8-00000003FfK-1sxg;
	Mon, 29 Apr 2024 15:05:16 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-a58e787130fso338738266b.0;
        Mon, 29 Apr 2024 08:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714403111; x=1715007911; darn=lists.infradead.org;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jRLnMQt74RAYZqrOQceAPqjFBeZeSYFo8RlZsGguPTo=;
        b=mRdIISHznLh5DA/AZ3FzIr5RaBmbkiIDy/b4cHyR29e/mra4rXNb1l56tREFcKpL3g
         oz3UyApQJAmIoa8dVsucqSfCh9A+BvnCAAVKL1jn21LZdlDjhgnakuJfIuzFk5MSRnqo
         YGu3/rUATJX4K0s2iSoYKpTpfoMB50TqEKAufcyJCMRcGoWivIc1UHmvpgxJlvbakinK
         6glxnWxaNyTDhRjBc8HhiWFNtAuX697NhW4VNBOgFyXV6NiGNCeNx6H4LdKtEARtcyRv
         9Oz/YGDewk1Z9y4mUw7gP6gOsAZkUN8wSCi4BhvutufiYxLBnAk7VLOxbP0EatqAqVks
         RedA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714403111; x=1715007911;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jRLnMQt74RAYZqrOQceAPqjFBeZeSYFo8RlZsGguPTo=;
        b=MQFwiIVrycVl0RCmP8BWx8hcop3G3SUuLrEgUsCHlsv2DrRsURixPtbf8864wTk3fv
         roS2rOXrvdVEVHDCtWCBiE3LbZPGZ7TxBly8s6SB4XizSPyWu3N+hiMGCBc8u96IihbE
         THB20gvyODtUqjhi6afaNkupQnQW+zs0dKtxWB1X91Z8LwY+ElS92wVTXTxFvNKFiSca
         NkI4IIbMEHDylF/rjQFqi+krUynu8K1BvizMoEQDM/6d6ucamAIPJHW43HATgBRw/CGF
         2uYNxvzzM5+ETF2PXYzExAAuNkd3LslcSCPq0auyc78WV5qoQZ9Z5xtfHrCPCMtJyktJ
         lZmA==
X-Forwarded-Encrypted: i=1; AJvYcCUHaHMy0HdbB8FH6pfghywpKcsLqwm0xWEMd7LspkfcPHmxhDqKNNaF1imESZ4nmdIy0+wnFPGES3DIo5jJ821h9nOYDheNrUog2KYbW78QNTDfsrX4ShrLnukB2jzjFs+3vDAoD2IfFE32sVdo6OKSreTC
X-Gm-Message-State: AOJu0YxzJ/0BS/Ow50LJbXIxrtmrPHgM6z4nWK2mQqQNaCr+c+fiXXIV
	9VNti297GF6RusvxRBcAEJ9uwQLnehQGZb6V/FLzxZSayXW7VMjz
X-Google-Smtp-Source: AGHT+IEhcxyiDkn4etHYTk4Ajtaz+3EvULJi9TZG7CDYngTG1q+F7q123kJC9XMpFvy8FUWZaxjBUg==
X-Received: by 2002:a17:906:c111:b0:a58:eb9a:420d with SMTP id do17-20020a170906c11100b00a58eb9a420dmr6898891ejc.17.1714403111239;
        Mon, 29 Apr 2024 08:05:11 -0700 (PDT)
Received: from localhost (p200300e41f162000f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f16:2000:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id v5-20020a170906380500b00a58f36e5fecsm2350418ejc.67.2024.04.29.08.05.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Apr 2024 08:05:10 -0700 (PDT)
Mime-Version: 1.0
Date: Mon, 29 Apr 2024 17:05:10 +0200
Message-Id: <D0WP6K0OPG1U.3B8RHWV50GB9W@gmail.com>
To: "Rob Herring (Arm)" <robh@kernel.org>, "Russell King"
 <linux@armlinux.org.uk>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, "Jakub Kicinski" <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Bharat Kumar Gogada" <bharat.kumar.gogada@amd.com>, "Michal Simek"
 <michal.simek@amd.com>, "Bjorn Helgaas" <bhelgaas@google.com>, "Lorenzo
 Pieralisi" <lpieralisi@kernel.org>, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>, "Vinod Koul" <vkoul@kernel.org>, "Kishon Vijay Abraham I"
 <kishon@kernel.org>, "Liam Girdwood" <lgirdwood@gmail.com>, "Mark Brown"
 <broonie@kernel.org>, "Jonathan Hunter" <jonathanh@nvidia.com>
Cc: <netdev@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-pci@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-phy@lists.infradead.org>,
 <linux-tegra@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: Drop unnecessary quotes on keys
From: "Thierry Reding" <thierry.reding@gmail.com>
X-Mailer: aerc 0.16.0-1-0-g560d6168f0ed-dirty
References: <20240426202239.2837516-1-robh@kernel.org>
In-Reply-To: <20240426202239.2837516-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240429_080514_698484_2E85DF6F 
X-CRM114-Status: GOOD (  10.92  )
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
Content-Type: multipart/mixed; boundary="===============6706811059664273290=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============6706811059664273290==
Content-Type: multipart/signed;
 boundary=64d8f73e5566f44c66d078f5487c89221898d7d8af4e7f37e5a21c35e662;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--64d8f73e5566f44c66d078f5487c89221898d7d8af4e7f37e5a21c35e662
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Fri Apr 26, 2024 at 10:22 PM CEST, Rob Herring (Arm) wrote:
> The yamllint quoted-strings check wasn't checking keys for quotes, but
> support for checking keys was added in 1.34 release. Fix all the errors
> found when enabling the check.
>
> Clean-up the xilinx-versal-cpm formatting while we're here.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/net/sff,sfp.yaml   | 12 ++++++------
>  .../devicetree/bindings/pci/xilinx-versal-cpm.yaml   |  7 +++++--
>  .../devicetree/bindings/pci/xlnx,nwl-pcie.yaml       |  2 +-
>  .../devicetree/bindings/phy/brcm,sata-phy.yaml       |  8 ++++----
>  .../devicetree/bindings/regulator/ti,tps62864.yaml   |  2 +-
>  .../bindings/soc/tegra/nvidia,tegra20-pmc.yaml       |  6 +++---
>  Documentation/devicetree/bindings/tpm/ibm,vtpm.yaml  |  4 ++--
>  7 files changed, 22 insertions(+), 19 deletions(-)

Acked-by: Thierry Reding <treding@nvidia.com>

--64d8f73e5566f44c66d078f5487c89221898d7d8af4e7f37e5a21c35e662
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmYvtyYACgkQ3SOs138+
s6Fo9g//fBFtmm6Kzzagoso58OU0++dfARWpxNf/HxdA/8KmVTIBMzo0T+ZfHo26
56OwCliAQnav38XNkTce1vi3t/ZSC7ZVfH3Ox8Xd/ezD5joI0LtRmHVp73EOn65W
eTRYiezydhG+skWTEWxAzwV/FWZyePwhlnNDdYPc4GBWgYmw0cYRV/GsSLqVfly8
EoD0PlswlKZ3xaBhyhhLjBpdXYkCS+c3P1R5tG85ZaF1SFxr7Z8qyf6zIas1l/ze
QTxdOEQGrlhF0kWhxwJh3Ad0DDHGpdbNVf7UEISNId8ubvZxwQwvFAMPhvOUh9wi
ViVoIHaRv1fD+nJDPf+I27RYyjjMRpoXadGAOH/nB8Pk+/4oDv0VTLacCtKngpJS
xGsVf9l50NQNp4Qp/WvsMSEj4JKodIMoD2Gp51TsrD+7rLd9rLKynq2+Spjs0BFX
gz3Fwt74Qth8w647xL31X+MBD2Ay8N2DjxyTp93JFbDwmqF2qpqTLKbJPDXoVuGJ
PrT3kUvEsEueguFPZM6IqzqvZWjS/ziu8OIbwMrMOWhQKPtqnRkFpgkxoFSHyX7n
PZrPL4DLPDeNL6ZPClkt21EvpoHXzdzIYQDbMslhMBVrngKmoMUPopLHiJYqn+X9
+E/4DDlE5rskMoc416HYi5iIHERtrDSeVoWzqDGWaGYY4UbkpH4=
=AP3j
-----END PGP SIGNATURE-----

--64d8f73e5566f44c66d078f5487c89221898d7d8af4e7f37e5a21c35e662--


--===============6706811059664273290==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6706811059664273290==--

