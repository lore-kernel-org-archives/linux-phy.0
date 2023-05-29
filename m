Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B64FDC7EE2C
	for <linux-phy@archiver.kernel.org>; Mon, 29 May 2023 18:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CSgSTSOFwSc75qfFKR6O+P7vnEW051xGDvxW/bIIumk=; b=tFMVw7Yyhglu6TFiQRU9ALblnx
	LsR4RA6oQNH301tdaUt5ZcbnLanMEaOsiLpugbNUVgXjBoqkVuOyY2mA7+h/TBCY4QV8jmfjSJQJ+
	GDrhusl30ok9KVb+Cs6LCb7UXYHkwTtgMCpYwnSAx3ZMaArchOOB7/HWu4xsG4KuDJuBOxN0+XTkj
	eMOVEUSPzYiBH0XAK4p/wGtNIurARJQ/ZsY943fN2pqoKeIlO6hmhbAeesOn3wFlTt6qcW+5TNgft
	vUhqs3LpzmqO0Y10kiOc3vb+zZ2K5CbTltI4/o/Ymvyl0uxfZSHqMU2LR9ZImgZTWohhqbu3PF1Gd
	tKQHPXYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3i5c-00BSiK-1E;
	Mon, 29 May 2023 18:59:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3i5a-00BShW-0a
	for linux-phy@lists.infradead.org;
	Mon, 29 May 2023 18:59:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B1256626FC;
	Mon, 29 May 2023 18:59:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A39D0C433EF;
	Mon, 29 May 2023 18:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685386768;
	bh=cOBX90LIhdLFlW6Qc37gvlklxIg9W2VvOQ8RCUAUMDM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O3b2hDWpZKWMhLICAYUoLPh1IOEcfZuIAK8f/7ev8LGIlRcOWs6h/ACTSDcQk79Ei
	 Iw/4yE4V5h6Kxu0izia6VS0Ta+FRQqhTXoJ6YEnScoSyQRbXA9BEH9RNmUAXaC+pJq
	 iIYhoeD+GbKJ7Lsc/+czOrBw6+0s5hIjp+2GYMV8KV/Kyt86Tp108BbLoz567lfl/Z
	 v7KCat9rb6KkzQOUCUY3tpc3qqgELD2jGDIO29uFFVKW+vGsKyJbMtmDMFZjBQUrrR
	 fd9/Z0q9QzkvFrq3Wd6nqT9eDNyljy3OmUC8fFL9wcld5+GnV3t4xxUqdz95O7R9zt
	 dizV7rxMNTicg==
Date: Mon, 29 May 2023 19:59:22 +0100
From: Conor Dooley <conor@kernel.org>
To: Stanley Chang <stanley_chang@realtek.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Flavio Suligoi <f.suligoi@asem.it>,
	Mathias Nyman <mathias.nyman@linux.intel.com>,
	Douglas Anderson <dianders@chromium.org>,
	Matthias Kaehlcke <mka@chromium.org>, Ray Chi <raychi@google.com>,
	Michael Grzeschik <m.grzeschik@pengutronix.de>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 3/3] dt-bindings: phy: realtek: Add the doc about the
 Realtek SoC USB 2.0/3.0 PHY
Message-ID: <20230529-impurity-dismount-bca5c9100c9b@spud>
References: <20230525022617.30537-1-stanley_chang@realtek.com>
 <20230525022617.30537-3-stanley_chang@realtek.com>
MIME-Version: 1.0
In-Reply-To: <20230525022617.30537-3-stanley_chang@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230529_115930_309572_C731E8F3 
X-CRM114-Status: GOOD (  15.96  )
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
Content-Type: multipart/mixed; boundary="===============8638592028126356174=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8638592028126356174==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HHmJgoVIYBW21XHy"
Content-Disposition: inline


--HHmJgoVIYBW21XHy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hey,

On Thu, May 25, 2023 at 10:26:04AM +0800, Stanley Chang wrote:

> +properties:
> +  compatible:
> +    enum:
> +      - realtek,usb2phy
> +      - realtek,rtd-usb2phy
> +      - realtek,rtd1295-usb2phy
> +      - realtek,rtd1395-usb2phy
> +      - realtek,rtd1619-usb2phy
> +      - realtek,rtd1319-usb2phy
> +      - realtek,rtd1619b-usb2phy
> +      - realtek,rtd1312c-usb2phy
> +      - realtek,rtd1319d-usb2phy
> +      - realtek,rtd1315e-usb2phy

> +properties:
> +  compatible:
> +    enum:
> +      - realtek,usb3phy
> +      - realtek,rtd-usb3phy
> +      - realtek,rtd1295-usb3phy
> +      - realtek,rtd1619-usb3phy
> +      - realtek,rtd1319-usb3phy
> +      - realtek,rtd1619b-usb3phy
> +      - realtek,rtd1319d-usb3phy

Ignoring everything else, because I really want Krzysztof or Rob to
review this rather than me, but what's going on here with the
compatibles?
What hardware do "usbNphy" and "rtd-usbNphy" represent?

You have device-specific compatibles, which is great, but you also allow
only those two generic ones. I had a _brief_ look at the driver, and it
seems like there is no decision making done based on the compatibles,
only on the properties. Is that correct?
If it is, I would understand having "realtek,usb3phy" as a fallback
compatible for "realtek,rtd1619-usb3phy", but I do not get the current
setup.

Also, I really think this should be broken down into two patches, one
for each of USB 2 & 3.

Cheers,
Conor.

--HHmJgoVIYBW21XHy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZHT2CQAKCRB4tDGHoIJi
0ovHAQDkhDIch3SwXe+rMQdjVLgc+s6AqnID50krnsMtciEdQQEAg7dNimHkAw60
IR4OjmEIza4FcNsH7BTZIvyOpLHxNg8=
=BbCE
-----END PGP SIGNATURE-----

--HHmJgoVIYBW21XHy--


--===============8638592028126356174==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8638592028126356174==--

