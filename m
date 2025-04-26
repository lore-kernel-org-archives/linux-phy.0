Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09077C369CB
	for <linux-phy@archiver.kernel.org>; Sat, 26 Apr 2025 07:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4KVrZmAMyUQfjFjUN/d5prduONioTARglkdVMqtIFdE=; b=TNC7xrYIDqYtUvggvUQZ5bHfRZ
	I+ncVY/lV1Ruq1FCysrBHBqIV5qWlpLIZjl8bLtBGYbyeRVGWKKCiyhUxq+8N5q8W69la7J+Ut8QQ
	4uCxpnBj85T2hJPK7edJCpdJcAm8I3bt3FwCbYe6KMvLR7NSQ+1VtWYE5jrSy1/bautk5H3HrSG2o
	EwJHwOhKsrMuGNQVjBxn1RHPDseIqzfLyM21R6rWmej5DXkHH2vlmz/n2WFxz1ucwDVUugPwimg2h
	rtIQptjZfY7aOVlpNznk1AOxnrDogMU2FJbHG7MpcoF936yktfgnNxTWeOufIegKMF5MwsLPa3AJU
	PBGK3nrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8a0v-00000001ftF-2VhK;
	Sat, 26 Apr 2025 07:31:53 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8a0r-00000001fsV-07rO;
	Sat, 26 Apr 2025 07:31:51 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
	id 2F1521C00B2; Sat, 26 Apr 2025 09:31:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ucw.cz; s=gen1;
	t=1745652703;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=5exbCp8CDaKtwnGNmQNuQzYNnvlYj2r8BcoFxqyUHf8=;
	b=mfgQZGtZWV3YKRvc11Fy2WjXUhClzecJUpk8uWFAvgSynbJ4YLRl0zJKFI2+KRYmEv/vIS
	nEGu1k4V7qVSC93t6IBB0MyDqO93+03canDSdfmPtS49p32DXiQ8kU9ZO1dLYEU+Xf6umH
	NN3bTS8FxIdGst1L8YhkuJUoLzvidEA=
Date: Sat, 26 Apr 2025 09:31:42 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Amit Kucheria <amitk@kernel.org>,
	Thara Gopinath <thara.gopinath@gmail.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Souradeep Chowdhury <quic_schowdhu@quicinc.com>,
	Lee Jones <lee@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Alex Elder <elder@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Andy Gross <agross@kernel.org>,
	Srinivas Kandagatla <srini@kernel.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Georgi Djakov <djakov@kernel.org>,
	Loic Poulain <loic.poulain@oss.qualcomm.com>,
	Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
	Sibi Sankar <quic_sibis@quicinc.com>, Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
	Imran Shaik <quic_imrashai@quicinc.com>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Kees Cook <kees@kernel.org>, Tony Luck <tony.luck@intel.com>,
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>,
	David Wronek <david@mainlining.org>,
	Jens Reidel <adrian@mainlining.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-mmc@vger.kernel.org, netdev@vger.kernel.org,
	linux-scsi@vger.kernel.org, dmaengine@vger.kernel.org,
	linux-crypto@vger.kernel.org, linux-i2c@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev, linux-remoteproc@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-hardening@vger.kernel.org,
	linux@mainlining.org, ~postmarketos/upstreaming@lists.sr.ht,
	Connor Mitchell <c.dog29@hotmail.com>
Subject: Re: [PATCH 00/33] Add support for Qualcomm Snapdragon SM7150 SoC and
 Google Pixel 4a
Message-ID: <aAyL3vl9yKlJ+JOi@duo.ucw.cz>
References: <20250422-sm7150-upstream-v1-0-bf9a9081631d@jiaxyga.com>
MIME-Version: 1.0
In-Reply-To: <20250422-sm7150-upstream-v1-0-bf9a9081631d@jiaxyga.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250426_003149_506311_6044AC6D 
X-CRM114-Status: GOOD (  13.19  )
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
Content-Type: multipart/mixed; boundary="===============2475618681471447776=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2475618681471447776==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="jXuQpBURuH9Sxi9Z"
Content-Disposition: inline


--jXuQpBURuH9Sxi9Z
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> This patch series adds support for the Qualcomm Snapdragon 730/730G/732G
> (SM7150) platform along with the Google Pixel=C2=A04a (sunfish) device. S=
ince
> the most critical drivers were submitted and applied in separate patch
> series, this series is largely composed of DT bindings and device=E2=80=
=91trees.
>=20
> To date, we=E2=80=99ve tested SM7150 support on the following eleven devi=
ces:
> - Google Pixel=C2=A04a (sunfish)
> - Samsung Galaxy=C2=A0A71 (a715f)
> - Lenovo Tab=C2=A0P11=C2=A0Pro (j706f)
> - Xiaomi POCO=C2=A0X2 (phoenix)
> - Xiaomi POCO=C2=A0X3 (karna) / POCO=C2=A0X3=C2=A0NFC (surya)
> - Xiaomi Redmi Note=C2=A010=C2=A0Pro (sweet)
> - Xiaomi Redmi Note=C2=A012=C2=A0Pro (sweet_k6a)
> - Xiaomi Mi=C2=A09T / Redmi K20 (davinci)
> - Xiaomi Mi=C2=A0Note=C2=A010=C2=A0Lite (toco)
> - Xiaomi Mi=C2=A0Note=C2=A010 (CC9=C2=A0Pro) & Mi=C2=A0Note=C2=A010=C2=A0=
Pro (CC9=C2=A0Pro Premium) (tucana)
> - Xiaomi Mi=C2=A011=C2=A0Lite=C2=A04G (courbet)
>=20
> A huge thank=E2=80=91you to the SM7150 community for all the devices-port=
ing
> work, testing efforts, and bug reports.

Thank you, looking forward for well supported phones.

Please cc phone-devel@vger.kernel.org with phone patches.

Best regards,
								Pavel
--=20
I don't work for Nazis and criminals, and neither should you.
Boycott Putin, Trump, and Musk!

--jXuQpBURuH9Sxi9Z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCaAyL3gAKCRAw5/Bqldv6
8t6+AKCezW+X8tCRtch2mRMPqCnbTeMpmACgo7PqyT2Vhb5yFE9mqg8LMrPK+y8=
=hK/X
-----END PGP SIGNATURE-----

--jXuQpBURuH9Sxi9Z--


--===============2475618681471447776==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2475618681471447776==--

