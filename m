Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7916BCD98F2
	for <linux-phy@archiver.kernel.org>; Mon, 22 Jun 2026 10:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ke1LWpgiBW/KbLp5MgZzrNsNl3YZoVx1uB6FwlRxcLI=; b=tp7IKqCZSxXf/tXGkWyOzqUm7q
	7vvbtVhFzFr3e8JXvlZ54qCJZvwhNKem+cN503tO8tjKGR5tPZs4Uz01KsIJhYPwK9UfP1CAt7MwF
	vdRHvNlcmptsQZ4rCI31YK5VUnUKCzadtpzQOk8hOojixxHEY25vWUof49AMjw7Nw+3rF63uz0HbX
	1qZjpHSUkCdx+gT5Q8fVZBXl+cQE14dx4FHgpD05UAUBVLlR/CqxQFs/7HBoFH7B6qDoZxa4+PBQD
	xEiHUjNxGcWgqPXenqmQ7fnMIw4EWoJpKV8nHzifJEEQ5hzLabNAkOCHME5IDAGbP8dPDejS+vcvD
	2wzxmTLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbcCZ-00000004rBy-0cnc;
	Mon, 22 Jun 2026 10:48:27 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbcCX-00000004rBl-1a4i;
	Mon, 22 Jun 2026 10:48:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id F3EE142DAE;
	Mon, 22 Jun 2026 10:48:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BC131F000E9;
	Mon, 22 Jun 2026 10:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782125304;
	bh=p5o4wCL19SgZAJdahyUBE2YojNuLVqQsq/iL26YQhl8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=EJSg4XS8+Ip5ViIYLpINFix30Jh2Lg+T0wZ1JeVTU+Ci5w5qX5eg7GLCkuYvR10/0
	 PXb7LoChkyHztfqXzyWDTWBpNc/3mK3OwSUvLZXURSPg5RAgs6Zh3VYkwmFyLMUXky
	 mlLwAhEdanGwHAdmMvjolMmSVUDpppuVIto1aUlyFmiEbfoiyDDvrmmkuonE2s2YcE
	 4oR5L09+nzr+J9whrjZUn6CNFen0rMpNXuCnmZJVtrpLfhzlIasECd3UXpry8g5Xhy
	 n7YOr3GAeiToyxbzJbFFnKYDdKR2O4dRg7W2Ud7I8oe4G+NvbmKFPLCoHGheNm2slK
	 aMY+ok/fv4Ntg==
Date: Mon, 22 Jun 2026 11:48:05 +0100
From: Mark Brown <broonie@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Rob Clark <robin.clark@oss.qualcomm.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Abhinav Kumar <abhinav.kumar@linux.dev>,
	Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Inki Dae <inki.dae@samsung.com>,
	Seung-Woo Kim <sw0312.kim@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Andi Shyti <andi.shyti@kernel.org>,
	Georgi Djakov <djakov@kernel.org>, Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>, Hans Verkuil <hverkuil@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Ulf Hansson <ulfh@kernel.org>, Peter Rosin <peda@lysator.liu.se>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Linus Walleij <linusw@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Sebastian Reichel <sre@kernel.org>,
	Javier Martinez Canillas <javier@dowhile0.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Srinivas Kandagatla <srini@kernel.org>,
	Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Jonathan Marek <jonathan@marek.ca>,
	Taniya Das <quic_tdas@quicinc.com>,
	Robert Marko <robimarko@gmail.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Stephan Gerhold <stephan@gerhold.net>,
	Adam Skladowski <a_skl39@protonmail.com>,
	Sireesh Kodali <sireeshkodali@protonmail.com>,
	Barnabas Czeman <barnabas.czeman@mainlining.org>,
	Imran Shaik <quic_imrashai@quicinc.com>,
	Sricharan Ramabadhran <quic_srichara@quicinc.com>,
	Anusha Rao <quic_anusha@quicinc.com>,
	Luo Jie <quic_luoj@quicinc.com>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	Chanho Park <chanho61.park@samsung.com>,
	Sunyeal Hong <sunyeal.hong@samsung.com>,
	Shin Son <shin.son@samsung.com>,
	Krishna Manikandan <quic_mkrishn@quicinc.com>,
	Jacek Anaszewski <jacek.anaszewski@gmail.com>,
	Jaehoon Chung <jh80.chung@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Alina Yu <alina_yu@richtek.com>, Andy Gross <agross@kernel.org>,
	Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
	linux-i2c@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-leds@vger.kernel.org, linux-media@vger.kernel.org,
	linux-mmc@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-gpio@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-serial@vger.kernel.org, linux-sound@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: Drop incorrect usage of double '::'
Message-ID: <15b1fc6f-0bee-4d3b-a694-0b076566e3bc@sirena.org.uk>
References: <20260622101606.485961-3-krzysztof.kozlowski@oss.qualcomm.com>
 <20260622101606.485961-4-krzysztof.kozlowski@oss.qualcomm.com>
MIME-Version: 1.0
In-Reply-To: <20260622101606.485961-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Cookie: Now I am depressed ...
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
Content-Type: multipart/mixed; boundary="===============8120471966286507273=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8120471966286507273==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WS/yioW3EKfTwezB"
Content-Disposition: inline


--WS/yioW3EKfTwezB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 22, 2026 at 12:16:08PM +0200, Krzysztof Kozlowski wrote:
> There is no use of double colon '::' in YAML. OTOH, the literal style
> block, e.g. using '|' treats all characters as content [1] therefore
> single use of ':' in descriptions is perfectly fine, whenever '|' is
> used.

Acked-by: Mark Brown <broonie@kernel.org>

--WS/yioW3EKfTwezB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmo5EuQACgkQJNaLcl1U
h9DdpAf9GJ2uDy3rgqNiOlKlstOlFjMqiN8oPWouLl8gDA1j1uulyqx1qYeFRe27
7fBwR08BkQbAvA5tr6ZGCawSCJBGn0heinD9Cs+f+6n5kx4bqWyaIjcKPwVvR4yA
Sbcw60tpnIxiaHkPNE0/6+c3Lt+3QAq7fJNWV81eMlnf5qpRt6S57epvBH5EXHn/
jbSw2rJ+d72s6xJHKyWzF0ZOlh4rdU8cyAO9dq1ws+6whq4RtgBCveCHVGktp/OY
yS+AG/1388ooc8EnTIKAz7vvlWq/BUgi+eqkN/wrhKf478kO4kCYtINPFInaOhud
RrbkzoT8TIb+1TCiBYn9KDHKMXEaFw==
=rXVB
-----END PGP SIGNATURE-----

--WS/yioW3EKfTwezB--


--===============8120471966286507273==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8120471966286507273==--

