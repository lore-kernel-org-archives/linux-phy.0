Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFEBA606A31F
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 07:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=A+6imYZC;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=YXAvsKFi
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=h+UIviM1K+02trPPNOWFB3TzQm2Bk/+10ZmlEicqluM=; b=A+6imYZCV7y+Eg3SVazz3sMyNM
	xbNOqSBRxtsRXR+kVbHTBfmtGcIC2QRCVYRKeuWyEGfacfmuP7P6mRmI+iphDd+UfTNcBo6qKXyJm
	SE271SJpp70j3xyj5961drE54C0JGNWtvJxwCBVARVyfYcXkxjT36JnCHtpXCVp775iNC6r9DaZ7W
	Whev8vSVAT8iBnk7F0B9otirK7kYgFO2gZoa7X0foLqqnbjANPIVbTXhLUevxHsEBPmu2CVc/5X34
	L5tWUmIL5m4TckyjSX5vW1YPh+RzXFcxFg2cBg9HmLN6hvfhV7ra3Odm6US/Jc6QcaNo4Qnq8CxIk
	WtwECbZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVOuN-00000002VpZ-2iid;
	Mon, 23 Nov 2026 07:56:16 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVOts-00000002VfE-3fp7;
	Mon, 23 Nov 2026 07:55:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B4E9461D5B;
	Mon, 23 Nov 2026 07:55:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6AA821F000C6;
	Mon, 23 Nov 2026 07:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795420543;
	bh=nYLwjkPeDoYKPQ9fpj7sj29JLi9BGT+W9npk3A58FDA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=YXAvsKFiWSvpBAh0r/bLzhP/mDijS6wWiRAI/eNzzlW42pXDN4k8BL54YfASB4YyZ
	 KDaG4gPrLUiNxP8Y53xiVgpDqyQYPNbffcEa5ycmQNLiBTR+5HEYIMJYvdAThv6YH9
	 HpUjHRD3AKwKVwH6wIB1q+2q2wI63zezLOdt1UVU2EDTOuJDj6XbRN9XB1c4M1qRwJ
	 nNsYrkMkn/h6oyq0H7wZPcnDLbwg1Mo1uDNj1WKorr/U67FRXRdTJ2zYV89UO4yI1c
	 A8yJwwgZo6rSUPiINE2/hvWe4cJZZZanigQdCdzOb55tcn4lLBhSTUMLTCFRqbJA6u
	 SjNDfuq17V90Q==
Date: Mon, 23 Nov 2026 08:55:40 +0100
From: Maxime Ripard <mripard@kernel.org>
To: codykang.hk@gmail.com
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>, 
	Troy Mitchell <troy.mitchell@linux.spacemit.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Haylen Chu <heylenay@4d2.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Yao Zi <me@ziyao.cc>, 
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>, Guodong Xu <docular.xu@gmail.com>, 
	Icenowy Zheng <uwu@icenowy.me>, Jerome Brunet <jbrunet+clk@baylibre.com>, 
	Sarah Emery <sarah.emery@canonical.com>, Ze Huang <ze.huang@oss.qualcomm.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Cody Kang <codykang@vsit.ai>, dri-devel@lists.freedesktop.org, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, spacemit@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v3 10/17] drm/spacemit: add Saturn DPU KMS pipeline
Message-ID: <awPxPHpr4NYxqdmf@houat>
References: <20261121-k3-display-v3-0-ec419e8e96b8@gmail.com>
 <20261121-k3-display-v3-10-ec419e8e96b8@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20261121-k3-display-v3-10-ec419e8e96b8@gmail.com>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2937441098934440761=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


--===============2937441098934440761==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="psp6wiqhchja3kyl"
Content-Disposition: inline


--psp6wiqhchja3kyl
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH v3 10/17] drm/spacemit: add Saturn DPU KMS pipeline
MIME-Version: 1.0

Hi,

On Sat, Nov 21, 2026 at 03:40:49PM +0800, Cody Kang via B4 Relay wrote:
> +static int spacemit_drm_master_bind(struct device *dev)
> +{
> +	struct spacemit_drm_private *priv = dev_get_drvdata(dev);
> +	struct spacemit_crtc *a_crtc;
> +	struct drm_device *drm;
> +	int ret;
> +
> +	ret = aperture_remove_all_conflicting_devices(spacemit_drm_drv.name);
> +	if (ret)
> +		return dev_err_probe(dev, ret,
> +				     "failed to remove existing framebuffers\n");
> +
> +	/*
> +	 * Bind-scoped, not devm: the aggregate can rebind without this
> +	 * device being re-probed, and each bind must release its own
> +	 * drm_device.
> +	 */
> +	drm = drm_dev_alloc(&spacemit_drm_drv, dev);
> +	if (IS_ERR(drm))
> +		return PTR_ERR(drm);
> +	priv->ddev = drm;
> +	drm->dev_private = priv;
> +
> +	ret = spacemit_drm_mode_config_init(drm);
> +	if (ret)
> +		goto err_dc;
> +
> +	a_crtc = spacemit_drm_pipeline_init(drm);
> +	if (IS_ERR(a_crtc)) {
> +		ret = PTR_ERR(a_crtc);
> +		goto err_dc;
> +	}
> +	priv->a_crtc = a_crtc;
> +
> +	/*
> +	 * component_bind_all() unbinds what it bound before returning an error.
> +	 */
> +	ret = component_bind_all(dev, drm);
> +	if (ret) {
> +		dev_err_probe(dev, ret, "failed to bind all components\n");
> +		goto err_dc;
> +	}
> +
> +	drm_mode_config_reset(drm);

You need to use drm_mode_config_create_initial_state().

Maxime

--psp6wiqhchja3kyl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCawPxewAKCRAnX84Zoj2+
dnHQAX9iDOtufQbymoduwPA/eIzFT4DPhesCne28+rDvff2JXlYtbNrRxUrTcGWq
XGPo3ywBgIkbYttgELJJr4UywnFDhIGMTRi83oG6Mg+R1tb0t9izOxptosxvIQK+
fEnXpcLERQ==
=seld
-----END PGP SIGNATURE-----

--psp6wiqhchja3kyl--


--===============2937441098934440761==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2937441098934440761==--

