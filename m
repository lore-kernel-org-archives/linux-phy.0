Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7254C4451C
	for <linux-phy@archiver.kernel.org>; Sat, 18 Jul 2026 07:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hZHdkvlhDyYVi3yA6SP6/Uv7PMnv/9CbCjwTWOvuJ/E=; b=k5mXsWNIWfIRwgDSxynqZguQmj
	jn7a87Hxr1Ip4x/IzN8IIFB1reevWD/VyjeOuXDarZVgJWKUt11Rv/Zl2CpfTpK4nmkUh3x8dymcl
	oV4Mbw5PuufrYpJLE0QDGA6flkhnA88PbPbC1f6wlAhQrZ/qe0upxd3+k5h+G6/+sfe2GZGQQHBE1
	cqDpWiaRuUl3cLgKEGHtHqYEbZbU8dMmZ0Yn5L6JlZEQPg4T3aP3Wmk9sg9sYdBNLiDp4jPMhL03F
	AUzcKCAOWwVf7TMBRC5G1uZM2eb1GgHUWymjTwoJ2vJnuuLNIUIhQ9zuhmjWeH51zpwwqtf+qM+xU
	LqVG897Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkzpd-00000003rtS-2LlZ;
	Sat, 18 Jul 2026 07:51:33 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkzpa-00000003rsH-0Vhl
	for linux-phy@lists.infradead.org;
	Sat, 18 Jul 2026 07:51:32 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-472326ca506so6729144f8f.2
        for <linux-phy@lists.infradead.org>; Sat, 18 Jul 2026 00:51:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784361088; x=1784965888; darn=lists.infradead.org;
        h=content-type:mime-version:references:in-reply-to:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=XHuS2uW8Bo2nkF3eNBf80lun7nQgThoolW/PgIH06Nc=;
        b=ToBhUohg505qjl4NrBSOCF0SxLSqYpVhIMIluQ4teIGr4O3GQWQo3XUnWp9bByMCBG
         4wbCSmuz0Oj3GAStosZi+3Xt/38yw04pYCvYCxy5pq2REzSCULgLPnHIJUamtrZHehXr
         ySNYknT1Tk0/WAJ13nXW5f2fdwvs7RQ1uXjWdnMh8AeUwM3jxTmLVH1PwUupJjk2Si5h
         SwotPjwRydTwHrK+KCXY/Cwq/B6keErWxiyV1G2lQl4LRHodWsXHZYQugFGesXJXa827
         Ua1dAr/KeHbYXPFxZg7AgD27KnvPyRvFiiHuBIw1y5Dx1u7v0+J7H3c8n3/jt5AJWi7X
         KWqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784361088; x=1784965888;
        h=content-type:mime-version:references:in-reply-to:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=XHuS2uW8Bo2nkF3eNBf80lun7nQgThoolW/PgIH06Nc=;
        b=bA/JO1hiYW7SQEtrM8zoj+25KRe9N0QNXv7CussmqHtm5l7Dh8RbganCjXpBrXsncj
         x25jx9bUwjoUsxhFeI5qtrDI0u7aJ+mxhQ1oZucRJkDnn+Mes3YCwNuEmWGm6BjQHjE5
         FPHck3qcCm5SqjEZFN311OW8uDc6pSJd4CNSdm3QQgj/mk4vBsmlB/B64rc+Qy580pfN
         wgK5Fg4Hjh9KTpAeSLYr2/RvYy6W296K1dFINhAqJpF0Cs90/HPaa4Z+2FMc4qn5SihX
         DpFKESMb6ekOVvdsExZF74+JZmzHG5eFRFhyDPf4FRROWXWgW2XqVyqQpkYMDwjS1g79
         s9+w==
X-Forwarded-Encrypted: i=1; AHgh+RraM/FDw+dZzXLapwpa7OJTlKnODU1RgCTWSWZKB06VC349dnsyjDt8thaBRAmtW+XKJc6bXewzx4w=@lists.infradead.org
X-Gm-Message-State: AOJu0YzAtA7Q2SYP0ac2yVXt+4Jy0yS80TJji6BtWs2+6tjelyzNKxdV
	bezJGsTV3Kzg3ct2CGHEbMGY4yLRp1CjYcNEMGu3klBr24zlFzVQZItS
X-Gm-Gg: AfdE7cmrgclgAQeaRjtaUAjVmDaxRKowjbWaue5fgeEYI2BKe70Sd6i7gqEOR5a1opR
	ORq7dznlTAPGZ1PUPmrSb7hv5rQV9SxtGwRpdbWjZy30YyxR19kDDzUFsNibNBa8CraifmncCeJ
	vr/84MsolKmNh4TLC7u3XAM8otpnHFGlXW2KJlSaZx9A8iUCphvZw1xNUbXUDKTVZu7DkqgSoXz
	whoCBAHZVRmJFkEU24ySNeQUaQvYkolLxK6LQZI1OGe035K5MeLWrSjjzO8w+7pXL4/cGekygwf
	knjbiiqLDNyyyS4WmMIUFfW0/fFu+4qTAl4V1BtgKfLcZuVs1guRxEf/tHDnCDym7HeP9wxSUrW
	5LktonSYbhBPOQhwcj2lFokLG/uGL7UejqqkFw+/bvReRL9MlUU8CdQCFOiyKjiaxkbrW5/+LrV
	uvn5UPDBgkTmKN7PBLaNROgQ==
X-Received: by 2002:a05:600c:4585:b0:492:45a0:dcef with SMTP id 5b1f17b1804b1-4954a3eeb63mr65163955e9.5.1784361087691;
        Sat, 18 Jul 2026 00:51:27 -0700 (PDT)
Received: from strix.localnet ([197.250.51.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4954aa1a231sm61024895e9.1.2026.07.18.00.51.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jul 2026 00:51:26 -0700 (PDT)
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Brian Masney <bmasney@redhat.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Russell King <linux@armlinux.org.uk>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v7 01/13] dt-bindings: phy: Add zx297520v3 USB phy documentation
Date: Sat, 18 Jul 2026 10:50:46 +0300
Message-ID: <Jn1AVBXlRkmJ2q2cQbPFhA@gmail.com>
In-Reply-To: <20260717-uncovered-feathered-groundhog-eab16e@quoll>
References: <20260717-zx29clk-v7-0-408411cfcf36@gmail.com>
 <20260717-zx29clk-v7-1-408411cfcf36@gmail.com>
 <20260717-uncovered-feathered-groundhog-eab16e@quoll>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260718_005130_180801_7C1FA13B 
X-CRM114-Status: GOOD (  12.96  )
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
Content-Type: multipart/mixed; boundary="===============8642886792784709805=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============8642886792784709805==
Content-Type: multipart/signed; boundary="nextPartTPGCLSSKQRu-pTqQQZ3W5g";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPartTPGCLSSKQRu-pTqQQZ3W5g
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Date: Sat, 18 Jul 2026 10:50:46 +0300
Message-ID: <Jn1AVBXlRkmJ2q2cQbPFhA@gmail.com>
In-Reply-To: <20260717-uncovered-feathered-groundhog-eab16e@quoll>
MIME-Version: 1.0

Am Freitag, 17. Juli 2026, 09:32:18 Ostafrikanische Zeit schrieb Krzysztof=
=20
Kozlowski:
> On Fri, Jul 17, 2026 at 12:35:37AM +0300, Stefan D=C3=B6singer wrote:

> > +  resets:
> > +    items:
> > +      - description: USB phy reset
> > +      - description: HSIC phy reset
>=20
> Why do you reference here resets from the parent? That's a clear signal
> you have one device, so one device node regardless of Linux phy core
> behavior.

This is a follow-up question for the PHY maintainers, if they notice the E-
Mail thread: I'm trying to resolve an apparent conflict between DT=20
expectations and a check in the PHY core:

device_set_of_node_from_dev(dev, dev->parent);
=2E..
devm_of_phy_provider_register(dev, xlate);

Passes the letter of the check in __of_phy_provider_register(), but I am no=
t=20
sure about the spirit.

"dev" here is a MFD child node without a DT node in accordance to DT's=20
writing-bindings instructions ("DON=E2=80=99T create nodes just for the sak=
e of=20
instantiating drivers"). The PHY core prohibits a child to register a phy=20
provider to its parent node. Why?

--nextPartTPGCLSSKQRu-pTqQQZ3W5g
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQJPBAABCAA5FiEEQxb0tqoFWyeVMl1sPRO8yFRPGiIFAmpbMFYbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyAAoJED0TvMhUTxoi14UQALMgF2vE7gNXf/lwdBLJ
nrd5dP9Opm9ywvrBTVh/X7JslAvqmfG7p99UPAkVxM3fHwX3i6Ep1UwKoClaM3jR
lQWQhMJ9ceYI3ZtxDqV04raEtEYdD6iKTzqXVVLVySqFLFTy1M0SHAqN8I0hWY3X
98H0UePyNZEVEQmuUTb8uxsdAMFZ1BPEatKENp2fNrge+kF60oIqjTfDYImBYPIK
uZETnPzN7W0A6GvBjL4eMVYDRPyKSw3Yn58/hkkJCYuGGANNDy4D2mf5dvUbXhvu
sqdnkAe8ABEwd7pXowiebQUmNbB+tKPpvqTRmXlr9pElhmknV7SOGYUnQt/7PeQa
pIG+ksMvRKzFsmnoinzE04Gi4EqHf8XD8mDNEa5T6Nt/KvqpbpVufXu4t04zpJkN
NXnCC66jNUQxkMmrIjncjpBtD8yvUA0Wy3C3MYYHPP+V04YRZXOrY1cJia94+zeL
iqFQL6qHoeWjICo48CFvb++qor9eaQYHk7F4goql9o9XaroH+jXZsKkIV6hyFXZ3
rZfjVgEl1Y7QQdAMihLz8zCrgM1xWHCWdSWwNEmcq2A1eCKg7F1sfG9armUWwrjE
AR5fGoqdZ4x5KV/EgQOLNxsBEPnlUVA0Qz50jlNjlFRMlBFSNDJyHJft2qOXfeDd
1fgWAHDkZiT9th1kma3dY/PQ
=0ktk
-----END PGP SIGNATURE-----

--nextPartTPGCLSSKQRu-pTqQQZ3W5g--





--===============8642886792784709805==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8642886792784709805==--




