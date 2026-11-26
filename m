Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2436D606A321
	for <linux-phy@archiver.kernel.org>; Thu, 26 Nov 2026 18:09:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=OPhMRco4;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=gIxRAVig
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=OHIYYhisMsdrm3wWBv+3cTFMgbU/t/wxutDylA8iwyc=; b=OPhMRco4CH//QSmzHyWeOxIuST
	sXVQ3J9h1OmvqCcGqvGWWnCD7lNRCyUMEdhtWqx6jVUpgcWOP1DcUZ5dlXh/7vixuEtaZVjSIvKkQ
	3NQBPYbh5ECvq6JWdCrqdK4M+rHbmt1C9a0kzRa1Yc1Sz6TTutihNryLMHdaj6RCbVzJp9ZzHoEwX
	uGQ7TuKL9uY8H2IfW8yadbFq0GPuqESx/GBxdwd+Acuxl7SDvzQWGAbhZUEOebCJKOk9niuY6Oe1K
	9CMpiTKlOZcqm4JtErMxTd+KrIohXyVsBr4rUzYzTtwrrM9Uahs5mMG5I8c7Dyo79mTu8elqtb1ed
	M0RJHdrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWduJ-0000000E8Sc-3dYE;
	Thu, 26 Nov 2026 18:09:19 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWduG-0000000E8Rm-2SiL
	for linux-phy@lists.infradead.org;
	Thu, 26 Nov 2026 18:09:17 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-49465892f7bso5345904f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 10:09:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795716554; x=1796321354; darn=lists.infradead.org;
        h=content-type:mime-version:references:in-reply-to:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5Ua8eli/eeePNuHrLso0Ijy+DWauR2C0WdOXLlgWKW4=;
        b=gIxRAVig7DO/BwVDP/T6r2VWZXutV2viSxreyIailnTIZKAFl0YOF1VpmbFb4l5VKA
         S4QZ8IL1VAulT4WhSJ8ybwvalCc81557EOhQ7FV1f60x5XVqNa7g7i4GUb5oXrLvNKLO
         cxuDewZqA4JDvoRLI9PdaW95slQ6y4KvXfStPzTaQqcmUldleK+FV5bYXdtYxtCZt4Wi
         OJtGTns4ofKVZvRmNd+FZmjq5m6L6b7gZIbl1ZTFAaVQMzOZK6+L4q++cZqLFO1Zy3MC
         3R67S1Lj4onD2WSF7S1I9RJkLNtKIg9T5PvGWH+NdMTdl63/3tE1p4vz9FWXMUVyG0Zt
         Z53A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795716554; x=1796321354;
        h=content-type:mime-version:references:in-reply-to:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=5Ua8eli/eeePNuHrLso0Ijy+DWauR2C0WdOXLlgWKW4=;
        b=v9MImsrSykXpyCRP6iNX8Btq5dLDK4Ynmn3mVLOKN3rd0aouJEmMUIWWhzluebKji4
         rqg0jziOjLyGFidfch+Z8kelPdza29xKLlBnoMY2JSXTCYOxKDb2IVhi5K1nL21QVkcj
         Ws5zsdJa+3ag2ztEKMeE4v2ZZ8m/XD8cAjkeTOp4BhONywf77VOJqiBp9WXiRJE8EgGh
         7grppeFwqZCIxbz5F0qIN4/gjuTI/BgYJujMG/xgGqCDnC3QYK/DwOTAtZBNTv4lVL98
         1cInVBu6cC3HgGfJPwXG4Z7ZH7EBKBVlGgPYde+YlN/4npe1oqnWISDxzOVT/lL/vLJQ
         OtWg==
X-Forwarded-Encrypted: i=1; AL+hErH4Sq6NshZUz55P84ygYbnm1Byru+W0b7B81L1kUQ/gRygx5/RZ/BFrY0KAmYz/7g8gvXm6RXxwVrk=@lists.infradead.org
X-Gm-Message-State: APuU4Z+slhMlT2vSIBgM98yQhGCrmW89W9IVq2bEz85JHzsaDnwsMfZz
	gGlVOpgiVI+8CIHjfcYyjF4tNRHZlenf3yIJj/3s2yFO2wqc3tkOli0X
X-Gm-Gg: AZFdTZdT8vRyrJAPgCydHavbpVFLeijfWoRnxFWJMPcGSQCldZ4fqffkoPBel3F/jyE
	vXMkck4bE3z+pNPtm4BZO8KdOAg5VjYx6Ue4moMOS2nMbxdbMw12Hcqe2t2qvDDgkkMGHgao0xn
	GeFA5co6KF7KOeJ0zyPLUdoPOQR7nWYxlJDOUB5/nP/kIAbqEW+Okv684ssXNdqW2Bel3XS39tL
	OA4Fx/xzB0M12FGnrcIOHBav5jPOzVlNvvDc5o6OObXmbbNC1yAeO5z9pIPJ2EUWzV9JGKUYkC3
	cp1E3NO4IX4Tcu+q0ShV7QaIdhRQ39QD5RoSIJ+/Lsrq+qrqyFep30yH6TXafu+CPnTxsuxXe98
	+Pu0TzIXjF0lPtJ7j+sZs0UOujLazzdPsj9mEEMh4stOzhOUqix8pA5wX9wmLGh54FkgJUJrymj
	jhADm/JyzBEFPi54t0OktCsqSP6Di0jWt5avXmu8jraevQTZd8BUGI70ZDZ1kI2RQmnPHgCp61L
	sUd4cpFi9GXH4aBOZA8Zsf3M3dcZGM0qqrYmXoLlMjWsYndUKJEav3iQ2cv/4cIWog1SoJS8/3h
	Oiro92Lb8bHmOu+gTT4d5aIRy6oGWIR2hWaoH0WvcA==
X-Received: by 2002:a05:6000:2506:b0:48d:ba3b:af36 with SMTP id ffacd0b85a97d-4abb47b0f64mr52009407f8f.37.1795716553993;
        Thu, 26 Nov 2026 10:09:13 -0800 (PST)
Received: from strix.localnet ([197.250.160.193])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4ab6a67f204sm50447904f8f.21.2026.11.26.10.09.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2026 10:09:13 -0800 (PST)
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Lee Jones <lee@kernel.org>, Ulf Hansson <ulfh@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Agustin Santiago Isasmendi <isasmendi.agus@gmail.com>,
 Navid Ghahremani <ghahramani.navid@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 mfd@lists.linux.dev, linux-pm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 3/6] pmdomain: zte: Add a zx297520v3 power domain driver
Date: Thu, 26 Nov 2026 20:26:25 +0300
Message-ID: <qBBdBMwWSaK2Eq9RGMmPfg@gmail.com>
In-Reply-To: <CAPx+jO_zuvcNnBWqUKJHJ246xEDb=FbN6FYKcrN+p6ERmjg2tQ@mail.gmail.com>
References: <20261120-zx29usb-v1-0-b0433258e51b@gmail.com>
 <20261120-zx29usb-v1-3-b0433258e51b@gmail.com>
 <CAPx+jO_zuvcNnBWqUKJHJ246xEDb=FbN6FYKcrN+p6ERmjg2tQ@mail.gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_100916_648258_37A55E84 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4353143312951849085=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============4353143312951849085==
Content-Type: multipart/signed; boundary="nextPartfY-J0jcIRweO3vnQrxe_bQ";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPartfY-J0jcIRweO3vnQrxe_bQ
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Subject: Re: [PATCH 3/6] pmdomain: zte: Add a zx297520v3 power domain driver
Date: Thu, 26 Nov 2026 20:26:25 +0300
Message-ID: <qBBdBMwWSaK2Eq9RGMmPfg@gmail.com>
In-Reply-To:  <CAPx+jO_zuvcNnBWqUKJHJ246xEDb=FbN6FYKcrN+p6ERmjg2tQ@mail.gmail.com>
MIME-Version: 1.0

Hi Ulf,

Thanks for the review!

Am Donnerstag, 26. November 2026, 15:26:20 Ostafrikanische Zeit schrieb Ulf 
Hansson:
> This doesn't belong in this particular driver, but rather in the genpd
> core. In fact, we have a proposed patch [1] that is being discussed;
> but the bigger question is if we need genpd provider drivers to be
> removable at all.
> 
> What is your use case for this?

It's extrapolated from the clock system maintainer's request to keep clk 
drivers buildable as modules. The pmdomain is even less critical than clk and 
can easily be unloaded and reloaded, even though I don't see much practical 
application.

I see the following options, in order of preference:

1) Simply remove the device_link_add() call from the driver and add a line to 
the patch description that this is deliberate to maybe shut up Sashiko.

2) Set .suppress_bind_attrs = true and make the option bool.

Note that the MFD parent is tristate and unbindable, but that should be ok as 
the pmdomain consumers target its own node.

.suppress_bind_attrs = true combined with tristate isn't going to help. Unlike 
the phy subsystem, pmdomain doesn't hold a reference to the driver, so you can 
rmmod the pmdomain driver while there are active consumers.

--nextPartfY-J0jcIRweO3vnQrxe_bQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQJPBAABCAA5FiEEQxb0tqoFWyeVMl1sPRO8yFRPGiIFAmsIa8EbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyAAoJED0TvMhUTxoiBIUP/05AbhnlM2LcacFX58EL
N7rFiT+lhfKkTk2WyMVEI10KwIOop+Y/Am5zrnL5YXQPyLWu8N+pfkUki9SvJSBH
iKKDQAncXwJ7lWkBISVb2/BxeqJxIHWfDJ0GYhYsaHxLyYo4PWMjT+tq9s+Naqvv
gu5WXpYb3F5sqS0qshsJicHYiU4z1vU9hg4Qazrs61AjDU46L6XpevR5L8mONzHZ
piLakQdu+Hp1LFMtu7mMqniIc/RnlRoL76NDcjP7BZ5iS9l+INN5R4bIYGP5uCJR
84bozcygfkiO6tlkIIcumE/Z5DtZfUlC+u4vvpy1X3jbtMokGZ9K+hpKLCVOQkqq
nklQEfe5EwJVW55bPLRj8LD3npSlBNsAWI5BdgyEqvBf4RuLdbVmodDK5dT8p4YM
/u/o0m891tAX9tp9dMrkPPJyyhHe5rmRoV9mSBNDzqLuOUfQcvhsHdyPgi/xFLY2
FHugaTeVu2QhrRUvurddqz6liNm5+sfy7uzYUtjVjQWxAQZ0GBnDKaVkIaYYUHnv
i1VRm13aavhPdH3WgQh//hh7gZZxc3zO4ioU9gRtxWGwOoCZOYhM43WrTmImaRMG
EMld6KpU6bCcuWmK9sC7u6W7PXOrExL+8Z6bO09no49EU90SimbONtaWrHM9i/jI
0jucOU5MLX8n7BJ4G4cwpoor
=3XcY
-----END PGP SIGNATURE-----

--nextPartfY-J0jcIRweO3vnQrxe_bQ--





--===============4353143312951849085==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4353143312951849085==--




