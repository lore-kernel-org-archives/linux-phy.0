Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F55606A31A
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 08:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=LkOlKIuG;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Mkj5aPXg
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=0933Kn/MXxO0mRBdMTEImyrR1vErQn8HCSwyIf0cmjg=; b=LkOlKIuGicAkGGeSyRoFPaMz5n
	qSyRTOdAaeHHdT2F2WkZStAU+SADL6XplQFtqpmPr/fxAuHwI1FneqVZSmlZtlBvzA2isDB4uRPDO
	xFUVdVzBBpJu0CqMalbtLUFcvcb3BFNUcGyDZQddkA5yxUp0DEotsYgn9RRl6xx6w7fDURGyygCeY
	/9PHxpMMen0em73+ybbWIeWFUNW6NBD7tsPP8lzU4TJk5TbQBLHVysyXYgPXBrcJdtWgzxd/g5Me3
	MKYRWqF54etkAruDIS3jbkyk5mm869EuVytW7XReuMaODSVXJtuTIFBvFzKctSFMMK7z7WFd+SB9S
	5f+qOskQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLzSL-00000006bFu-3Vcw;
	Wed, 28 Oct 2026 08:56:25 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLzSH-00000006bDf-3mfd
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 08:56:24 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-6ae14ee2d0bso154547a12.2
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 01:56:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793177779; cv=none;
        d=google.com; s=arc-20260327;
        b=bfaYKG2n7OqJtCrDr2nEbtGK8z+jnXDacL5D3rJqwc4F7ZLM568zLduHY/OsImZ0Fw
         lnBLPHFVzhNwvmZOMBYPn0N6E/qwZCeVQPl1UEMGqgcs+C7G67X2m3hdd2m94EahN8xF
         bts9fLpz1cWkGDGgWwcDTu4eWWrVI1w9AO+c4k3f6S2REavkatn4lY3i2kSN1s5bn9No
         e1Aq8Yi3ONOxTKmceleZTt4rKxAFKyS4FQdZ4LfG4sun4wQ+MfA4PvhImwZhCblq1AME
         2h6irHYLmCE2wDJnG5/f49OSNIi1LEgW3FkR4he8rh/kpWSKxgnQUeUuSZqR2pWBlmRS
         va3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZZQo695rVLd/9P8OSYiw403iPH4b0i2xMXdXOpikEz8=;
        fh=LCj/wX2aVEP/VePRi03JtqLEYs5yd4viav4VZ3Wo6ws=;
        b=cSDU6G/PCBBjp+BTVKdCQ0trU+54WTgy6MtNcH/5bRYeIL+LHZoZbPlWASRmV/SD68
         epWjTXAKa00ldIcE3GhQtXDAXDP9krOkeXaOEM1wWoT1WF7/3F+jAxs5grY8ABTuo23p
         J6nnt5cm8Vs1863Z+NOJwyrjAWK6rrUfQzC/TbadF7QtOEXROBbQN0I27DNw0xd5NWOA
         peoKGYBlr139MAttGHRCBllwwujI20gJq3wKkDYLedGaIdVBqTRA/G9r4sSLLkVhASwC
         d9pk4gEPxAJYpxIRghSs7pyMc9IBmWaTIrPZ95xC6FdBml7GxNumPmEcijOyp7tg+yGU
         xymw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793177779; x=1793782579; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ZZQo695rVLd/9P8OSYiw403iPH4b0i2xMXdXOpikEz8=;
        b=Mkj5aPXgzjw66OqCSVTFkzsH+Z7+iqcoCMrsK13OQwWQCydmGjEJw3QNFRIgY8VzgC
         661+aFL5ucoZ296X/Wqs7+vJKCLqxMtcwiP6hpTgSYaeycA+cgOweD7ZVD1K47Le7Z80
         /6sFXWRsy6HnR4BCn3w5WhNP2OowEBSJMUK9JBYBuvwJEJd/iFQTA/Y2DvLKJgutMpxM
         oSppXy9Aa/ZqyoPDPpnBeLTjy3yDDhj3pffNY9vBi/X5PRTzx0x7sChCvvHf6gLS14KZ
         624qWVSjhS8EMxgjVSn81Dmr5MVdoDDQuu2BEQO6/UQwge81jW+DkF79XM64VEU9iXKm
         4+JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793177779; x=1793782579;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=ZZQo695rVLd/9P8OSYiw403iPH4b0i2xMXdXOpikEz8=;
        b=L5bRG8LOrroXWwqchZxGRVmBbkz4uyHyiM/URErjh53GkS/QRIEPdaqm1OSOPaGmAP
         0JCeYaudkDTzsDveAO6cAB1UxDuomRzPXz6HeZ290gcpdyHQwGWM+WiKk16OvwgxjZ9c
         mfVvAprRDQDby1MWUFS1R6ieTickgJMvk245+OrTDkYny7kZQ1LudEvK4zeJ7zghMfuU
         itgYBwyDZMAgW5BrNoG/DCaqMRKEgZEb8zkfgqYenOCyw8VGZaIf5iQavvei0mjEzGnY
         QDk6Vvs2G6Pf4C1g/rlQ5s3xmzYvdPHES0ulTrvXZorzhwqLEXBGIZifstTaltJYJCPg
         zp9w==
X-Forwarded-Encrypted: i=1; AKwUvBxF+8So+neGBAlsVh72/zmgZsOyMIVngs2AowHPspMBloOr45TQ0+5zKGy0Cm7mCKzXrOEOF4E/jYo=@lists.infradead.org
X-Gm-Message-State: AFq9FYIrM8zUJfOtkHZO7AKOK9stcHNkocfbJhaUGpkeeXEBkPGcnjoj
	Ta7IkwvV+PEcE00QZs32NSv7z143qCSyTWWGzbH/kK4PMa/ckRLUDQLJZQSZ7AkLHyLvdQ8D0rM
	q//T6wtd2YZnMGF7hRJOhL8hLWswvIeo=
X-Gm-Gg: AYBFou1o2HmqTJfbWEXWqEffKintxahXwE9qyG2lcZBWsRNJ+STVK5KITgAnvSWNa8/
	OZkLZYSWiqllokmxAbuOZpLJkAq9CsluGSupp4TV713EtmizoOm1T2MG77mQ/Wre/vMnf2DfGrb
	WbABfFnAbpP/7R78tHmhgwr7I6Nc575zbsBgjQM4MAQ3Sg2jYHY6s8T8qj88Vla8chIc8tuBlHi
	OkPfIAAvs4Td/OLbEccQwlQKGI3E6eR8jIbpt6CRCP5wr4oH6IWo+D9xCdyGjbPk++R2YORnE9M
	jRZD+HjeSayKFxIxEhMHrHevXv4TVgFOPF1in0Gs8Y9GSLgWHLPpYoHQvoHBIW6sfcVZ/630+5f
	M4XCq5s/UmraZP4GgGuqq+YfjX2vWxuo9oEqRRuzAplbrcGZklcXi4G7clA==
X-Received: by 2002:a05:6402:a6d2:10b0:6b1:da27:34cb with SMTP id
 4fb4d7f45d1cf-6b49cbce701mr976968a12.2.1793177778791; Wed, 28 Oct 2026
 01:56:18 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
 <25254818.ouqheUzb2q@diego> <20261021024239.GA3667411-robh@kernel.org>
 <3435698.oiGErgHkdL@diego> <850be915-d42b-427e-a036-907b9364f9d2@collabora.com>
In-Reply-To: <850be915-d42b-427e-a036-907b9364f9d2@collabora.com>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Wed, 28 Oct 2026 16:56:06 +0800
X-Gm-Features: AclHuK9Sjf7k3U-KBE-ExwCBQXl-_hQw7npOFvb6IJVRf4k6WS3oRrSiOtSkTyI
Message-ID: <CAPwA33J1nud++bYV1JnPJqvA+ocz5H1=DnyJy3HGX4np6JxaEw@mail.gmail.com>
Subject: Re: [PATCH v5 2/8] dt-bindings: phy: rockchip,rk3588-mipi-dcphy: Add
 a cell to select TX or RX
To: Michael Riesch <michael.riesch@collabora.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Guochun Huang <hero.huang@rock-chips.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_015621_957818_9386AFC3 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
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

I have just started drafting the code changes and comments following
the discussion above
(including your comments on patches 3 and 5 in v6), so it will
probably take one to two weeks.

Best regards,

Jason

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
