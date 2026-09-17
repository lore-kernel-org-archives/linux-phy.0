Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB268C982D2
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 18:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MFYeoeiDEUm0SdeJp3g8fQQWVUJy/878WXPRG10hRug=; b=BfiuSid2Q0+IzdgxdjV09I6ZIk
	DVrNLKQNvMRUt6BbnRakcchfWTY/9KY4iZoMVdcSfbaXWrg6BN3F94hJqqU77XJZJ0qQTaJp45yVF
	QozXeyf+/S7MnH41FF47mDAP+N7AElE1TyTsyVNRi2XgxTPCVfdE+AqucsMWKOD4qz8bjPEEWqbnp
	XqDwTUFYY90l9SOZ8YSE0LHbXGAS9NbYw4FUJ724/zTj03e/zC1dYBmj2ueSWpUhlEorvuqNz88nN
	puVxlSQAPrv7pTjAwjfk2lv87D/XSzoXBoiYe1lpsA7MNoR0i8Yu6ZpAgnMKeADnV9n/wxVosIODI
	ij3UyJGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Gqw-0000000CEEV-1oZC;
	Thu, 17 Sep 2026 18:28:58 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Gqt-0000000CEDZ-2PZp
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 18:28:56 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-485b1d2874fso435340f8f.0
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 11:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789669733; x=1790274533; darn=lists.infradead.org;
        h=content-type:mime-version:references:in-reply-to:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Z8WFLPr3Z4Vj59hqf3BiQcKfbTnQOlSm6y7UQuAGxu8=;
        b=QMm0SaA6oTzYz/Z4MxnhUNuPtCoYwYfHfQSp5OVu6t3LHyBPAutnINopy4ZeBYXFVM
         gh4Uky231IxC7aut3vyWRj8RGJMhHQSa7mlrB1pWe9D7zXMcRDlPV0uUVXT9uw19vHVf
         DhPkX5o/TTqexJ9smqr749BgY5DHZkNi809UnIDYPXbL/f07W8hPTqGJFDv/vN2iBpEr
         eOPDx/WIsMcMNXmFllws8MyRtbOjZ46XWZR7ewiu3lpPaF6kq5A9qgoNc9Cshi4b2xFa
         R0hIbmFZt6WjxTIcNMNRycUG8XIqokIVWITlMGVfed+fOi/VG9w/moT0dFxVPxWaULVS
         APNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789669733; x=1790274533;
        h=content-type:mime-version:references:in-reply-to:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Z8WFLPr3Z4Vj59hqf3BiQcKfbTnQOlSm6y7UQuAGxu8=;
        b=ePim3fth8izXj+uhi21Q/JCTWwRHdGk/ykY3zVTVmc2pbFEG/uiLpKA/4cu1aVbLbU
         fxTnbdvDjoUJChIvrYfa6fX0n7P+XWfpmHE17ZkOzkXHCPETQAXN/dgXDQsnahhQMKRP
         8frqmcESR7HAhr3X5U9IhX/F4p9wfftpqbfpjjlBVBihihWFNiWagLFZ3uOLqLhxYOk2
         ani+5zqKVVy8HpdUcQxOiRRH4uXPMA5kn+aNbD+fYQFCu311bXT9l6tt/V8797/MPgnF
         NazoLytRFGBqgVCQHL+UimmvgwcVnJ93Gd0kf7P8pn2VOk35vfZgHZzgCq0zncS05OaZ
         U+TA==
X-Forwarded-Encrypted: i=1; AKwUvBy93nh8edYp3OMJg+4OBLY66NpuHjK4ZIB8WkJfeGDilNKMm88uBhc4y6gnzV/ip1UydO9dfqMtqWk=@lists.infradead.org
X-Gm-Message-State: AFuF++mLLd593EK0d97hcovNDc06e52zDM6Nk1vuULfEbWmUZk9yc0p+
	QVolLrWJp4xRYJYWxdI406uduu7g9GWoWamHfAVW+nP/BLRhV1eMP0hv
X-Gm-Gg: AYBFou0VVh59mnYYaaFN/xvCg7/gGWDvJPmHkcafI6LzanUzgR0NbIwFWLoM/Qcokai
	cHC0J0pdkcCKtJP19iKFvQa9ArO6m/HxVNa8w7A5/CgzaCUPtjrRNTWL70Jcypu6e++WnxgSjak
	i95wfAP+lv0mRgcn8KQz+b+vdf0knfLBuvggqPhnYmJuTVFni5j28yoByZ8GxILp7FDEjRbipOd
	s/icX782RAUNA5bIiodzBqF7Lom0WXORNiFdTuqHLLA63Kw6rT8AeyU6V0g19QzA+nJPxZ8RitE
	dLBUGn3pGV37wra8eDhlpjQ7BUFmH1fXNbH+uvJw4CYVCHyv8XsrGtfSiEgGux2zNfAnQro3fE+
	uc8sC4DUuiDESs4iRLBzPKlUyefx2qWklaVmdBt5NYugGDLMTV7oEFQZc779yVQ/1olmAPCxFqI
	jj2HCCgr5tTPsSysb5uoQfiM9W1WP0UX4EgVTn7PsGk1BVRhhb+2Y2YG6N5I0zamcXA6kaTwWQ4
	D/2+g==
X-Received: by 2002:a05:6000:708:b0:487:11:d053 with SMTP id ffacd0b85a97d-4871d915c41mr24943f8f.0.1789669733272;
        Thu, 17 Sep 2026 11:28:53 -0700 (PDT)
Received: from strix.localnet ([197.250.51.38])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4870bf26c8dsm17422129f8f.14.2026.09.17.11.28.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 11:28:52 -0700 (PDT)
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: Lee Jones <lee@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Brian Masney <bmasney@redhat.com>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Brian Masney <bmasney+clk@redhat.com>,
 Jerome Brunet <jbrunet+clk@baylibre.com>,
 Manivannan Sadhasivam <mani@kernel.org>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 mfd@lists.linux.dev
Subject: Re: [PATCH v11 05/12] mfd: zx297520v3: Add a clock and reset MFD driver
Date: Thu, 17 Sep 2026 21:28:36 +0300
Message-ID: <lIjduhk6Sb-yyUCQAY-CKQ@gmail.com>
In-Reply-To: <x9tzyTnKRAOyrdtSGnka0g@gmail.com>
References: <20260826-zx29clk-v11-0-f8ad59c6426c@gmail.com>
 <20260910161711.GK1051768@google.com> <x9tzyTnKRAOyrdtSGnka0g@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_112855_637794_2B5198F8 
X-CRM114-Status: GOOD (  10.62  )
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
Content-Type: multipart/mixed; boundary="===============3653903552366051789=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============3653903552366051789==
Content-Type: multipart/signed; boundary="nextPartElaGoEJaRnaci40IYCPnGA";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPartElaGoEJaRnaci40IYCPnGA
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: Lee Jones <lee@kernel.org>
Date: Thu, 17 Sep 2026 21:28:36 +0300
Message-ID: <lIjduhk6Sb-yyUCQAY-CKQ@gmail.com>
In-Reply-To: <x9tzyTnKRAOyrdtSGnka0g@gmail.com>
MIME-Version: 1.0

Hi Lee,

Am Donnerstag, 10. September 2026, 22:14:54 Ostafrikanische Zeit schrieben 
Sie:
> Hi Lee,
> 
> Thanks again for your review!

This is a ping regarding my reply[0] to your review from last week. Do you 
have any comments on my responses?

Thanks,
Stefan

0: https://lore.kernel.org/linux-arm-kernel/x9tzyTnKRAOyrdtSGnka0g@gmail.com/

--nextPartElaGoEJaRnaci40IYCPnGA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQJPBAABCAA5FiEEQxb0tqoFWyeVMl1sPRO8yFRPGiIFAmqsMVQbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyAAoJED0TvMhUTxoiw48P/3we1ILZFxaaGd9dUpM9
EPNR5ZVYal8qGKGBQRRFG5L5iI9qCAETVZTl5UuYFjjcs3U9+f2t8HbH5pd6hZSt
C2F3WDGrsGddEGAPArMF7962KRKHHPUDoEOokUhrdp0/J7XFAZRDjCPJJdZxTHZD
cpnqNPNwoTUAWYs4kLINKy7fY7PW+sJqUmAqvnB47RLoFURA9/DYcNxa/1esTScd
Vyzm0NEsRFuZVSYTSjbBffTn266IrxNRSBnCJOxRAEv4edO2dkkqy9OZBDQLkcYn
LJDrdJY/bAPJFapkXGuowmd5kVtYjG60V8+0suU1m+2HLlSipyfl4XeYHAS8gT5x
UbXlsxgwtxCnMHWed3RbtXUGsYuBCsuO2HRz0Rv6Cduc2qY4XeEtgFxShiQbtq4w
bxxE8DTlxoYjflISxEYYp/fD79irBB3hsp7oeSzP8PUyHsuFfCKpb2kfwnUtwRIQ
Ov2oPm29JViaAFvrF1h5FQEU2zLsdNBquOIlsqamK07yjEPcELwlAByNv9e65/Zn
3HUXepbTgovCaAofjQsggxDdSLLb4O5FjNn26DgHxz9d6ONWOjyqOIalTG2SbujQ
ZDmnp3aIX6ETZBue8mBr5Df9zQTmCwYmmAh4PtqvOfy8R72pr+i3SSUdTXIj8h4X
3h6c3+ubcO2oiEqVFEPbus5o
=NhYp
-----END PGP SIGNATURE-----

--nextPartElaGoEJaRnaci40IYCPnGA--





--===============3653903552366051789==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3653903552366051789==--




