Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB8BFCAC5A7
	for <linux-phy@archiver.kernel.org>; Sat, 20 Sep 2025 16:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hmwimNgCFMpqc/CQAywN6Cdao0017sjoCnAq1DS6rDs=; b=Tc79qYvF/T8C4aNZjbJMDSaMHX
	jV2ArU39l1QpS5uepLeDLI0+brgwThu7/r2XvM5TJRxLMEvAGncUkHPBS/bk18TveD7mVOx5wbPPI
	gfCFSg1hHgzbqcgIs4p+MMxLeSO0f+dEhGJlbdZNnpo1B+anPjG3KyObptPmA/b22UGUS0WL28tu/
	FwxMiYTe+YpquYuZxfZsNu26KoZBypwF2ehi9uP0WnAgBwFq6byQuHgUj17P2mCLkIaMCWUcD/G21
	XRxqOofJAIHmr7s5WpZJTsd/dGVXFK0mbzZTpxPua5Lm29OH1bX2aJfvLcW16k/Pvmh+lOX77Ezeh
	QuBVOfnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v00f1-00000005eBx-1THV;
	Sat, 20 Sep 2025 16:42:07 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v00ew-00000005eBV-2jrI
	for linux-phy@lists.infradead.org;
	Sat, 20 Sep 2025 16:42:05 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-62fc686dc41so1461198a12.1
        for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 09:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1758386520; x=1758991320; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7uzS/vyKL78XLGJYkf20HiEkzzRuN4BWxhwOr5TgLy8=;
        b=oij583Fwd1BtzvlE3rVrfmB3I6I9H+Lz5NwpwFgx7XG8kh0DSS8DJWR2Zwf+cUmqTY
         GBQxQfbWbXEmM2cp1MNO+UvN4cB8OXbu3CHfvgEdCzJ9ohQc9jKj3Fu8EQD5DMPJw1OE
         bmTvB1+Ax0UI73Mr2vcS6cTs/KQeQ4DPv7X43zlgBzqeGVqRC21hulZ12a3513DR1KAz
         mg6InJnLM7IRSREmr5E7MUGJlZ9jespV6K87+2mrdzdYbrHRCdnzXOAth3FPFQ1e4M6A
         /rs5RT45/vkooABrPO87ftMYnFaMIvwB2bQemY+sVdP4BhsFcSPSP67pxbucEiJgDsLj
         C6dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758386520; x=1758991320;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7uzS/vyKL78XLGJYkf20HiEkzzRuN4BWxhwOr5TgLy8=;
        b=I6h/uuOQ10wgDlOfEC4IV/srxDZHQoRNgnmI0ZwBDkt6xwdIBbNbggkQ6pOEZb51sP
         DMZs6yWRE7HZa99c89TkFn5M5pBUx25+O7hEpGX+Lp31SvU5uuG+fE845lECy0h3dvG1
         ZYR6eH1QBoXIT7ayiswyQSXaEVHT4kTWgqhGB/h03hoBylgiHsr30S4sZV9CPHpqEoQI
         gv6k03w2b48d8mPmhEoMsvd3KRIOJ54Fz+gUI0WaxM7twi2R41Z6ZFLrYQT5ZlaXCShl
         ISF1b9bymzKrCQqbFtiFoYDB00mBghIwXg+28oiGba/W63EXzvpOkfEQuXFqIH4EsGCD
         uHTg==
X-Forwarded-Encrypted: i=1; AJvYcCXP/R9z7IgOTeFBMFeQcP7OCF6QJuUW3e/dzUPxKHs4fToBlMwDHTGwG3cb6Ijrc+JEOIIISd7Yqr0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxMs28uqkoP4edsecUwJ+GyXEtJPFE7BU23PKCEVC/BtFjawRG5
	JDT9Jc6kZlkabig9LYgKQGLi6/PjJKGPhbGBK38I5P4bUALCBKS0BlQwSY9XRdLZvuE=
X-Gm-Gg: ASbGnct3i4qYcHQInafx6KO2bfAmQVbbHdCWuP3Q8FIxu2apbphcCkgPYb/zToU7vHl
	XbqmGR5txJ/ptLpqYS2+lINHsY4LTYlaXgRm6v+S4tBbW36zMp4jLN1s0kZERuriFAHHMS5BmpK
	p3f75fxZlJJlLnrvEWIONHqF8GVTh1x6CahB2woLMR5uHIgnO2kktcDYc0BQPVSuvLwseb6B3vB
	wEKlKSR369k+UIWAApsewjT/PtRPLkqSfaYDZH8/ISOusMMa1yq/rTkuyY6052GSXTAzGXfA0G/
	uA2wlADZrfH3pdDOXn/sBoDLIpmhlYFoN81DJwCBijILRqs5uXH0pU5lDpn7cPiepBpRYWye57g
	EuIZu41Q2m197PoAJvuooCW63xsI=
X-Google-Smtp-Source: AGHT+IGKt39UQn5jzBEhjnHbjhGMHaeA/VyK514j5LVq6YZ3WWPLFkMfByunXzny8uptDg8fNtpVnA==
X-Received: by 2002:a05:6402:3202:b0:61c:bfa7:5d0 with SMTP id 4fb4d7f45d1cf-62fc0a78f7fmr7798031a12.30.1758386520260;
        Sat, 20 Sep 2025 09:42:00 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with UTF8SMTPSA id 4fb4d7f45d1cf-62fa5f28672sm5489248a12.43.2025.09.20.09.41.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 09:41:59 -0700 (PDT)
Date: Sat, 20 Sep 2025 18:41:57 +0200
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
Message-ID: <x5ot622jqzz67imvswtdacqeeclqaw7my3pj6ne7tureec6ufg@fuzltifrkcae>
References: <aMlnp4x-1MUoModr@smile.fi.intel.com>
 <mknxgesog6aghc6cjzm63g63zqbqvysxf6ktmnbrbtafervveg@uoiohk3yclso>
 <CAHp75Vf7KrsN7Ec9zOvJoRuKvkbrJ5sMv7pVv6+88tPX-j_9ZA@mail.gmail.com>
 <er7dkmzutsu3ooegeihjzngi6l3hol5iaohecr3n5bolfse3tj@xeedlx2utwym>
 <aMxWzTxvMLsVWbDB@smile.fi.intel.com>
 <2025091925-thirsting-underuse-14ab@gregkh>
 <f16ea5eb-cbda-4788-956b-d41c2af51745@baylibre.com>
 <2025091918-glancing-uptown-7d63@gregkh>
 <8702fd35-945a-4d20-bc37-410c74c70da6@baylibre.com>
 <2025091902-dwelled-calculate-c755@gregkh>
MIME-Version: 1.0
In-Reply-To: <2025091902-dwelled-calculate-c755@gregkh>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250920_094202_959046_8BE56431 
X-CRM114-Status: GOOD (  27.50  )
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
Content-Type: multipart/mixed; boundary="===============5818660467025580148=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5818660467025580148==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7d2frku4wfk7wjvb"
Content-Disposition: inline


--7d2frku4wfk7wjvb
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 2/7] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
MIME-Version: 1.0

Hello Greg,

it seems we agree on the advantage of module namespaces that the pool of
global symbols is reduced, right? That is given with and without the
module import in a header.

On Fri, Sep 19, 2025 at 05:37:03PM +0200, Greg KH wrote:
> On Fri, Sep 19, 2025 at 10:20:29AM -0500, David Lechner wrote:
> > Up to now, my (naive) understanding was that the point module namespaces
> > is to reduce the number of symbols in the global namespace because havi=
ng
> > too many symbols there was starting to cause problems. So moving symbols
> > to another namespace was a "good thing".
>=20
> Yes, it is a "good thing" overall, but by just making all of your
> symbols in a namespace, and then including it in the .h file, that does
> the same exact thing as before (i.e. anyone that includes that .h file
> puts the symbols into the global namespace with that prefix.)

I fail to parse the part in parenthesis. The symbols of the pwm
subsystem are defined in the "PWM" namespace (using `#define
DEFAULT_SYMBOL_NAMESPACE "PWM"` in drivers/pwm/core.c). In <linux/pwm.h>
there is a `MODULE_IMPORT_NS("PWM");`, so a consumer (say
`drivers/regulator/pwm-regulator.c`) only needs

	#include <linux/pwm.h>

to import the "PWM" namespace. So pwm-regulator.c puts the symbols
into the global namespace with that prefix. What symbols? What prefix?

The thing that is different is that the pwm functions are in the "PWM"
namespace, so a module without an import for "PWM" has a smaller pool of
global symbols and so loading that module is a tad more effective,
right?

I agree that for the consumer source it doesn't make a difference if pwm
is using a namespace or not. I'd count that as an advantage of the
"import in a header" approach.

> Ideally, the goal was to be able to easily see in a module, what symbol
> namespaces they depend on, which requires them to put MODULE_IMPORT_NS()
> in the module to get access to those symbols.  dmabuf has done this very
> well, making it obvious to the maintainers of that subsystem that they
> should be paying attention to those users.

For me as pwm maintainer it doesn't matter much if I pay attention to
`MODULE_IMPORT_NS("PWM");` or `#include <linux/pwm.h>`.
=20
> For other "tiny" subsystems, it just slots away their symbols so that no
> one else should ever be using them, and it makes it blindingly obvious
> if they do.  For example, the usb-storage symbols, anyone that does:
> 	MODULE_IMPORT_NS("USB_STORAGE");
> had better be living in drivers/usb/storage/ otherwise I need to have a
> word with those offenders :)

All symbols in the "USB_STORAGE" namespace (apart from
`fill_inquiry_response`) start with `usb_stor_`. If you grep for that
string you find all the (probably illegitimate) users of the usb-storage
symbols, but also those that define their own symbols with that prefix.

Do you actually look out for such offenders, i.e. have a lei mailbox
with `MODULE_IMPORT_NS("USB_STORAGE")` as search string or a cron job
grepping your tree for that?

> So it's a way of "tidying" up things, and to make things more explicit
> than just having to rely on searching a tree and looking for .h include
> usage.=20

For some reason in your eyes grepping for MODULE_IMPORT_NS is superior
to grepping for an #include. Can you explain that?

Best regards
Uwe

--7d2frku4wfk7wjvb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmjO2S4ACgkQj4D7WH0S
/k4IhQf/UtPUTnhbxWROvnPeLQVLBT7LYDoSGOyTSyXtAb7AtAQeUqfa7EOc+mbs
9mnVB/2Tv8YaD+bCuGpjvR2UPbbitvNteBfOKlyq/VoLROElZ9C/muciDIkTDqzt
a3u+lJJaxf9nhWtJHj35qZ3OUc5Uq3kLBBW4TGxz021/qFWdfa2FzPXuWkaPN43I
PR7RIvLA7Wn1xzEUYoWCTrHA1oc+iHIwgn1Gisr3dzxVl3ouIEssExI2fULWb/8U
6MjMbiAXkqKXJF9GP7ugR1oyf9Ia+EV+XwWy0h263ozE+LdoqcBRtobGEjMsW/lG
VhUonqtHTK4KWOq7bew5fEBs52y4KA==
=AIm3
-----END PGP SIGNATURE-----

--7d2frku4wfk7wjvb--


--===============5818660467025580148==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5818660467025580148==--

