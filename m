Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E316BCD98F2
	for <linux-phy@archiver.kernel.org>; Mon, 22 Jun 2026 20:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9y8/6LsPKrWEaaFoRzi4g5kSQAeTtZvb1qy8RGrNbjA=; b=z37tT743bOT5RALOry7rkMhz5K
	g9N19Gp68hLeZFo2KT5f9wJ84zhSnxjaZw6DkxXk3h/79zLxnr+2Poxbu5PpnmT9qpM5x/vQSdwhH
	VTIEsYY5nl//4NEYoWzyyHURpkfWajdS0OxzvpAo/QpssktnSKUtfSM8MI+ap0J4QNK8vc/7lck94
	DhPx+vWIBPKAoqNf3BfkZNYxb29Cmopu1WVPsp5ENgpmkAzGlwezeyEpcCrt5DrvNAEVALHshRqi9
	cC5m35fRd4A0fqZm6/SW0kYPPSDvKI/yebcCcSBUMDLWu8mZozBSfyz6EYOkELoNnF2t5JmGkedwq
	9FCx0dPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wblP2-00000005N0K-0lUD;
	Mon, 22 Jun 2026 20:37:56 +0000
Received: from sender4-op-o11.zoho.com ([136.143.188.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wblOy-00000005Mzk-0yAh;
	Mon, 22 Jun 2026 20:37:54 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1782160644; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=NbZ03RwDUpsPUGMBrvUdLdu9YwvBtwbJnzp1KGgnOw8bmxFm308mN3AT9TQxGf0hTvg6NQG4C2vMqEG28Kk9TYtSAwUBIsPuLMENiboDJ821z6UtEvkeDwz5+Jcm+re9M7ZFaWtEkR9uOKdar4YVHKXBp3rQHmkoCuJ+yoWpc4o=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1782160644; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=mN91JuTXlP9yH/fF2WAYmfPvIPkIj7NLhNIGrphtGFQ=; 
	b=cdn/QOUYXHEVxnnOG0Xz+v5hgIFdWmFnUWGGBrXE0BkN+/Y/SSTnkF8DIdXeHmsun1N1bTnfVSATEUntE3qlia7Tu2OXutygr1K/pScuMkRUqb8jzru748kl9eSG9NgAF6EAKY/Eq7kqq5AHGgy4zYxnRNwUhOnHfiaIKQmZ7Ec=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1782160644;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=mN91JuTXlP9yH/fF2WAYmfPvIPkIj7NLhNIGrphtGFQ=;
	b=ftenAF2pLAzRlyNVRan8mKVLwnie2DhUAR+YqxoXAcc93rbXBpyH//u6VQz6uvu5
	NVnB16FfAhcMzP72FH86ULWAFvMa3rYocIFntWDDFHxLa7uuG26U7HA2MLbmUYNgfOb
	uJogOLlRuf0JNK3ahPODVSRWU84ISRiZWge9esxY=
Received: by mx.zohomail.com with SMTPS id 1782160642993247.28556327964736;
	Mon, 22 Jun 2026 13:37:22 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id 6EF1E1824A2; Mon, 22 Jun 2026 22:37:11 +0200 (CEST)
Date: Mon, 22 Jun 2026 22:37:11 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Brian Masney <bmasney@redhat.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Chanwoo Choi <cw00.choi@samsung.com>, Sam Protsenko <semen.protsenko@linaro.org>, 
	Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, 
	Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Inki Dae <inki.dae@samsung.com>, 
	Seung-Woo Kim <sw0312.kim@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Georgi Djakov <djakov@kernel.org>, Lee Jones <lee@kernel.org>, 
	Pavel Machek <pavel@kernel.org>, Hans Verkuil <hverkuil@kernel.org>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Ulf Hansson <ulfh@kernel.org>, Peter Rosin <peda@lysator.liu.se>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Linus Walleij <linusw@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Javier Martinez Canillas <javier@dowhile0.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Srinivas Kandagatla <srini@kernel.org>, Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@kernel.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, 
	Jonathan Marek <jonathan@marek.ca>, Taniya Das <quic_tdas@quicinc.com>, 
	Robert Marko <robimarko@gmail.com>, Christian Marangi <ansuelsmth@gmail.com>, 
	Stephan Gerhold <stephan@gerhold.net>, Adam Skladowski <a_skl39@protonmail.com>, 
	Sireesh Kodali <sireeshkodali@protonmail.com>, Barnabas Czeman <barnabas.czeman@mainlining.org>, 
	Imran Shaik <quic_imrashai@quicinc.com>, Sricharan Ramabadhran <quic_srichara@quicinc.com>, 
	Anusha Rao <quic_anusha@quicinc.com>, Luo Jie <quic_luoj@quicinc.com>, 
	Tomasz Figa <tomasz.figa@gmail.com>, Chanho Park <chanho61.park@samsung.com>, 
	Sunyeal Hong <sunyeal.hong@samsung.com>, Shin Son <shin.son@samsung.com>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, Jacek Anaszewski <jacek.anaszewski@gmail.com>, 
	Jaehoon Chung <jh80.chung@samsung.com>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	Alina Yu <alina_yu@richtek.com>, Andy Gross <agross@kernel.org>, 
	Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, linux-i2c@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-leds@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-mmc@vger.kernel.org, linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-serial@vger.kernel.org, linux-sound@vger.kernel.org, 
	linux-usb@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: Drop incorrect usage of double '::'
Message-ID: <ajmcsfEXiTfFh-XH@venus>
References: <20260622101606.485961-3-krzysztof.kozlowski@oss.qualcomm.com>
 <20260622101606.485961-4-krzysztof.kozlowski@oss.qualcomm.com>
MIME-Version: 1.0
In-Reply-To: <20260622101606.485961-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.10.1.5.2/282.152.77
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260622_133752_341489_28C5C765 
X-CRM114-Status: GOOD (  15.89  )
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
Content-Type: multipart/mixed; boundary="===============3891932572170490694=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3891932572170490694==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="he6mgtsui5z5w5dr"
Content-Disposition: inline


--he6mgtsui5z5w5dr
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 2/2] dt-bindings: Drop incorrect usage of double '::'
MIME-Version: 1.0

Hi,

On Mon, Jun 22, 2026 at 12:16:08PM +0200, Krzysztof Kozlowski wrote:
> There is no use of double colon '::' in YAML. OTOH, the literal style
> block, e.g. using '|' treats all characters as content [1] therefore
> single use of ':' in descriptions is perfectly fine, whenever '|' is
> used.
>=20
> Cleanup existing code, so the confusing style won't be re-used in new
> contributions.
>=20
> Link: https://yaml.org/spec/1.2.2/#literal-style [1]
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>=20
> ---
>=20
> Intention for this patch is to go via Rob's tree.
> ---

[...]

>  .../bindings/power/reset/restart-handler.yaml |  8 ++++----

Acked-by: Sebastian Reichel <sebastian.reichel@collabora.com>

[...]

Greetings,

-- Sebastian

--he6mgtsui5z5w5dr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmo5nPIACgkQ2O7X88g7
+pqv2Q/+LMhPKKkmgsVnMejKBphG4p2N/zVrnMgxmg8lVO8rwgA7Kxo2wlLqu2H5
iapTV4a2dMXB0SUw8UGbt9Lt6JjHaORZnybu95mZEZMS+G7HRl5M8DE+LWMJXLX0
S+G43Cv1O/d5dV/rM2nJqOItOK+KIbHQI4+oY/O8P7ENnU2h3X2HxOtWxtg6+9gz
UNPZgoZdEE38SJVzhHrCO1+NfGikbo7vUZC0BmyxiNuVTK9eFjie/eIS3ST4W5T9
3v2n+F2fD7+xsfSzUyjRc3p+zLyweImjiS6J5GAmTf4qxL9hQ3nXEW2gtRQQvB2l
W62s4eZt9jFlQjhXVjUeIkEPkORE4RrDInyktgSc6BKm/D5SylQgwytebDtJC2s4
QceoYrV7CHNsQ0vr9oITDlBN4Ik2TTsqhK2Sw0/2P0W7VU7y8uoHsm2xHPkf17l+
svy9/UvPf4f5kyBIPwySRFS4IUXcdP8MhscNstvyw1GJqxtCNNRfDX6z0isLIU6Q
yfIbxBsgCdHQMyM3HekxaofPcGx9LRJtbbNt2YA4SbqEKnzci/ToUY+z8a2svvDM
Ko5OrYJ/yAjPYjcoQ7ajynJC+BxvFRMTtfCEQmDLiaxN9+ueXJJMXe26hLYClF9g
ADHM+PuYvQrF2GfU9DgvPXkJHh3yEtyPk1rE6O1f4Q9xvKZMblg=
=cVKh
-----END PGP SIGNATURE-----

--he6mgtsui5z5w5dr--


--===============3891932572170490694==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3891932572170490694==--

