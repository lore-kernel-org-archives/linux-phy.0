Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDC2DCAC59A
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 16:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2MKGL2kygm19C/WMRIO+i2MotTGoAGY7F9B1k7QqtRs=; b=vkapulOoXhfZ4gmtnXB4d+tA6r
	emhvnlpVyd4WBanxfvdfXZRuxeTTbXz5rlD9QtYtOyFf3SKar106O07qf1zH8GhlzikJS5Qcpg9ek
	ghbcnngSY5l8CpukcVkBJx2L5/QDV2/Ou4x1f89GMDjq4e0S11sWtPH/jPYzNxy7LEXJWCkxjaSW0
	sl/CPsnGthF/lJsecsWIgM5z11oyrRN+8p7utCKfT1LL3lryjrBPG2qCGYl7eXUa+hbipbGBKiXsX
	RKYl496OupIhKQgyVYvRI6DLRSaJvRp5qRd8gFwzgTrnD8E7+amyxaf55CcK4B84aIoC8dgtceaWK
	70036Xvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzdoT-00000003Vfl-2Dau;
	Fri, 19 Sep 2025 16:18:21 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzdoQ-00000003VfM-1Pkn
	for linux-phy@lists.infradead.org;
	Fri, 19 Sep 2025 16:18:20 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-3ecdf2b1751so1359538f8f.0
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 09:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1758298696; x=1758903496; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rCMQiFsm4hsxlP+tNTYkhaVGT0aEA2D4RKsC3Gwmrs0=;
        b=0fxl72hhv4f1PDHurstPXPJ/bZBzX29+3B38BSMO/pMcWC34vrD4NaqeM5tPj6x5ka
         64Q3Ct8EnF0CWTKmeK+lr58qOsSvK7S5QBJpBkU8eB2qRWnoa/lFJUnocCagTsqQBxgD
         UO6/2Tnw5/gzobXX6NFRVQvRbFdD48a00uX/o2r8z7MM0t7sN8z2JvB8I91PR8/S7+5E
         SjUvQNEGzyDmhO+ZNsdRmFJbEE8MXxGenxnPXQPh2zFwMFfxUfq/8tb98YMnlRQnj1Jf
         NCzN7PeAPZ8PPDplLbhNI7yzwd1grJlDxgXeXOFmwJQq2s4jm804Lc7xYGD7pP9scFZY
         uYzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758298696; x=1758903496;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rCMQiFsm4hsxlP+tNTYkhaVGT0aEA2D4RKsC3Gwmrs0=;
        b=I9zgVF+GyL5YS6TEOWJDNOmqaDZjxAoqh2v6j94Ho0BUo6ie15j7sh4fe26gQGQH6U
         FVNHpOJvLeaSmk11i3o7NuuRRRXQMEZW7W3c5m+2zAegUtuvawJZN4kRI6YGLw8OaPLH
         ej2vOKzZMsqaD7FlOzpRiAStbKWUbZkI7U+whK6NvVwPstCQJ4OccwhRhBsov14IPZpa
         y7RUAJ0Bk9eFIkAqWtBGrrbUJGvB1JxBwCAbVGI1dAsNihyfterK4/4SwyYcHXfkeLFO
         bv0dBEXstULU0NeJ7nb8A0pqFEc5uSOHsai4AbtR05f4W7R3lv0Zwgw+X2gIBJ+tymk6
         l/Dg==
X-Forwarded-Encrypted: i=1; AJvYcCUflv0LkfyravcN4Ovydb8od2iM08mTNrXubFcJ0fJGyP5pNLe7NrdCVcA+toI7JjONI/TUtrm1ufQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyKLambTuA4Y4u0EEzGvr1fHYQNWqeFs0a+12ggCe/bUtgHFazh
	Xx8YI3+nJiLijA0/7imfkLCKOb8D7ZGy+xS3+KIjx60kLrANvKmFMfKUp3kd05/W3QU=
X-Gm-Gg: ASbGncuiLtAEE6DnIHNkISnQ+Jb80cXBPbJDryBey9cNkSV8Ihf7aya/96OQMFgoEpo
	DcE3Aw1p0VQq8i0ngN7Ii0l86ZzqrROc1jamKXG6O/yJd+pSwdi/SfNBjIDazUokgXNL7QhQATl
	Nyz1x/5V0eDckcsz76+Baq71zlurvFibV/u1we5sE68n0nrCTJEvMkh3xTH0zvyfsdpl9VZjNxz
	Zc74M/VQ0ekw3uaZePVdrcl3qG4eRgCtTiQONaSuooC+oLLvvpA7JvdY4OnTOkAbyWVbhta6H+v
	66eaIG/xazGBoC2eQ0EsODjMOKd6QqEs9moOXX6GWHNeSjf4T1ieyMjs54D5zmvq5XkOM0bu4gY
	Zy6F2lWEQfQjpFaus4dAW7yHl5YDdHl9/s6+PHboGGruueDdaSkl9nNlx/dB3NFVp
X-Google-Smtp-Source: AGHT+IHeDyqCwZEwmBRMLgDcVcjTaBDuQhje8qnjQHoNKHQszsQBAbYzFqO5E0qmktZp1YKSObnQbQ==
X-Received: by 2002:a05:6000:248a:b0:3ec:b384:322b with SMTP id ffacd0b85a97d-3ee8585f513mr3310968f8f.46.1758298696034;
        Fri, 19 Sep 2025 09:18:16 -0700 (PDT)
Received: from localhost (p200300f65f06ab0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f06:ab04::1b9])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3ee07412111sm8325227f8f.28.2025.09.19.09.18.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 09:18:15 -0700 (PDT)
Date: Fri, 19 Sep 2025 18:18:14 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: David Lechner <dlechner@baylibre.com>, 
	Andy Shevchenko <andriy.shevchenko@intel.com>, Andy Shevchenko <andy.shevchenko@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, sboyd@kernel.org, jic23@kernel.org, nuno.sa@analog.com, 
	andy@kernel.org, arnd@arndb.de, srini@kernel.org, vkoul@kernel.org, 
	kishon@kernel.org, sre@kernel.org, krzysztof.kozlowski@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, kernel@collabora.com, 
	wenst@chromium.org, casey.connolly@linaro.org, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 2/7] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
Message-ID: <lq4rgzue6uah67nc7lob7eexsquk7qhr22wr4xwymzrvvopgc4@mkzyvadgd3qs>
References: <20250916084445.96621-3-angelogioacchino.delregno@collabora.com>
 <t3uk3k4h3l53yajoe3xog2njmdn3jhkmdphv3c4wnpvcqniz4n@opgigzazycot>
 <aMlnp4x-1MUoModr@smile.fi.intel.com>
 <mknxgesog6aghc6cjzm63g63zqbqvysxf6ktmnbrbtafervveg@uoiohk3yclso>
 <CAHp75Vf7KrsN7Ec9zOvJoRuKvkbrJ5sMv7pVv6+88tPX-j_9ZA@mail.gmail.com>
 <er7dkmzutsu3ooegeihjzngi6l3hol5iaohecr3n5bolfse3tj@xeedlx2utwym>
 <aMxWzTxvMLsVWbDB@smile.fi.intel.com>
 <2025091925-thirsting-underuse-14ab@gregkh>
 <f16ea5eb-cbda-4788-956b-d41c2af51745@baylibre.com>
 <2025091918-glancing-uptown-7d63@gregkh>
MIME-Version: 1.0
In-Reply-To: <2025091918-glancing-uptown-7d63@gregkh>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_091818_648899_16C8EF6A 
X-CRM114-Status: GOOD (  38.90  )
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
Content-Type: multipart/mixed; boundary="===============0086976381389218755=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0086976381389218755==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="enuyknrtw4cq5eeq"
Content-Disposition: inline


--enuyknrtw4cq5eeq
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 2/7] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
MIME-Version: 1.0

Hello Greg,

On Fri, Sep 19, 2025 at 05:13:35PM +0200, Greg KH wrote:
> On Fri, Sep 19, 2025 at 10:05:28AM -0500, David Lechner wrote:
> > On 9/19/25 8:59 AM, Greg KH wrote:
> > > On Thu, Sep 18, 2025 at 10:00:29PM +0300, Andy Shevchenko wrote:
> > >> I,o.w. I principally disagree on putting MODULE_IMPORT_NS() into the=
 header
> > >> file.
> > >=20
> > > Yes, please never do that, it defeats the purpose of module namespaces
> > > completly.  If you don't want to have module namespaces, don't use th=
em
> > > for your subsytem.  Don't use them and then make them moot by putting
> > > MODULE_IMPORT_NS() in the .h file for the symbols as that's pointless.
> > >=20
> > > thanks,
> > >=20
> > > greg k-h
> >=20
> >=20
> > Could someone suggest some additional explanation to add to
> > Documentation/core-api/symbol-namespaces.rst to explain the
> > reasoning behind this?
> >=20
> > Right now, the only part of that document that say _why_ we have
> > module namespces says:
> >=20
> > 	That is useful for documentation purposes (think of the
> > 	SUBSYSTEM_DEBUG namespace) as well as for limiting the
> > 	availability of a set of symbols for use in other parts
> > 	of the kernel.
> >=20
> > So I don't see the connection between this explanation and and:
> >=20
> > 	[Putting MODULE_IMPORT_NS() into the header] defeats
> > 	the purpose of module namespaces completely.
> >=20
> > I am guilty of putting it in a header, so if I need to fix that
> > I would like to actually understand why first. Andy has mentioned
> > something about potential abuses, but without any example, I haven't
> > been able to understand what this would actually actually look like.
> > Or maybe there is some other reason that Greg is thinking of that
> > hasn't been mentioned yet?
>=20
> Let me turn it around, _why_ would you want your exports in a namespace
> at all if you just are putting a MODULE_IMPORT_NS() in the .h file at
> the same time?  What is this giving you at all compared to just a normal
> MODULE_EXPORT() marking for your exports?
>=20
> I know what it gives me when I don't put it in a .h file, but I think
> that might be different from what you are thinking here :)

For me (who still today thinks it's elegant to put the MODULE_IMPORT_NS
in a header next to the declarations of the symbols in that namespace)
it's the documentation thing quoted above (e.g. modinfo lists the used
namespaces) and to unclutter the global namespace.

The latter was essentially the motivation to introduce symbol
namespaces, see the cover letter from back then[1].

Personally I don't see the relevance of making it harder for abusers.

A non-GPL module should be stopped by the symbol being exported using
EXPORT_SYMBOL_GPL() with or without namespaces. And for a binary
distribution of a module the need to add the MODULE_IMPORT_NS statement
in the source code is a quite low barrier for the evil binary module
distributor that IMHO doesn't justify to burden all regular users of a
namespace to have to do two things (#include + MODULE_IMPORT_NS) instead
of only one (include which implies the MODULE_IMPORT_NS) to make use of
said namespace.

And for GPL code: Who is actually an abuser of say devm_pwm_get()?
In my eyes any module should be free to use that function. And if it's
not sensible to do so, I would expect this to be discovered even without
the needed MODULE_IMPORT_NS("PWM") in the code. And if it's not
discovered that's fine for me, too. For me that's the spirit of Open
Source: If someone finds devm_pwm_get() useful, let them use it. Please
even tell me if you use it in a way I didn't expect, I'm glad to hear
about it.

I'm probably missing something.

Best regards
Uwe

--enuyknrtw4cq5eeq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmjNgkMACgkQj4D7WH0S
/k50wggAm2DTHJtv28WePL2zBaXONs/0AtzDza8lXQgPQoUVHUJXsRVsYbdK+5Te
R8MYd6+n8hqXv/pnvnZRwd81Wv0yFwJOJtUzAlqiXYr2tfvSfe785liM73qS3JNs
MI5i+z0WoWyRTqGTmPxJjJ1r/SgcvGFl+CHm9j1vDehiPVRnPalOS+y1JzYBezf3
CTfbDpMOfi4y6a9u/6GX+UrUMxe7arfGlBB7Sy3dOoxlXSWqoQ1hzjlTo4YrsYwU
ulHe6jKB+OI6xyUPqM0xXCphVFUZFacH+RitcWEFsTWH6Dt2vv8muCeB8jzPFkYc
QRkS8BwIA/n7bOdJgYaEtTcUyCIa4g==
=568Y
-----END PGP SIGNATURE-----

--enuyknrtw4cq5eeq--


--===============0086976381389218755==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0086976381389218755==--

