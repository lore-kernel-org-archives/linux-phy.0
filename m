Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E5E1E9A777
	for <linux-phy@archiver.kernel.org>; Tue, 24 Mar 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f5qovlN2G37e6PQCFbru4g7D6Xn8L0IokF1C5SI4L6M=; b=rBRHJmefvoBwv6vW/wR6jmgILK
	xs2bIVgm8doJqL+Al3FWDM6r3ZL3ttYdPegaYGl6VMjN7OEncnkc1D4V1/WCob10ejWLjO8tb2eLQ
	sRajj0e+uSZFeRTcfAbGWUAkwEdW+4Oh83L8bH10RBhvoJB7ByTnu9XwufnPZouaWHyUdQzpgyLt0
	+MsK9f/R4gnpJUpLXJXmgFa1B7S4Uh3ErkM9i7dXmV8b+LD0obvZiqZX2kLbghTGUB2tT6K5JWBLr
	1t56MgQhK6sKyOXpVYc2RnAScFGBXoUoyrgxymECWOpk9+AYZG1RLabgApcv+b/LTSvRo1vgJCjkG
	5g01bkeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w50FN-00000001J8j-07rL;
	Tue, 24 Mar 2026 11:48:33 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w50FL-00000001J7B-0yoL
	for linux-phy@lists.infradead.org;
	Tue, 24 Mar 2026 11:48:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 66F0C6013F;
	Tue, 24 Mar 2026 11:48:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8EBFC19424;
	Tue, 24 Mar 2026 11:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774352910;
	bh=6CXTjNHX0J4uF5Ojb5ZTtc7BYWwcUfE/5znpHFlnD7w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gsaRuY6eViu8X3g7+P8vdzfxU4G+qz03aiKEZuxnGTNsLVxiKXMSAswe4uAP4Voff
	 9Ya58a36gSb4qTTV2ALgFbdUiig5NcEiPClqZfMMpWh47cbVgEFlfyQE7SR/lhNk4d
	 jXzk2INfqyjbAPNNKbbjeeKw144hv7CcDnL7MbSF2wt5ImoiprqnaXr+p9eEJhMVbi
	 a1Fznmx7J3yfrSTOVsNjX+TwRExiB67lrRqxzPeABK3epFD8N4N4dMLlH/kC2Xc0hC
	 zWfjNxa/AqFXRF0eCkSus1j1bgH5+Aq6qAHRrRo1IliJcDMUYbKBG5kgQ3HLQn4g0s
	 f7Wv2zWveKrWw==
Date: Tue, 24 Mar 2026 12:48:27 +0100
From: Thierry Reding <thierry.reding@kernel.org>
To: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
Cc: Mathias Nyman <mathias.nyman@intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-usb@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/6] usb: xhci: tegra: Remove redundant mutex when
 setting phy mode
Message-ID: <acJ50sQraVmy4zXs@orome>
References: <20260127-diogo-tegra_phy-v2-0-787b9eed3ed5@tecnico.ulisboa.pt>
 <20260127-diogo-tegra_phy-v2-2-787b9eed3ed5@tecnico.ulisboa.pt>
MIME-Version: 1.0
In-Reply-To: <20260127-diogo-tegra_phy-v2-2-787b9eed3ed5@tecnico.ulisboa.pt>
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
Content-Type: multipart/mixed; boundary="===============1376381629144745558=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============1376381629144745558==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="geubzoieqitgmbmw"
Content-Disposition: inline


--geubzoieqitgmbmw
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 2/6] usb: xhci: tegra: Remove redundant mutex when
 setting phy mode
MIME-Version: 1.0

On Tue, Jan 27, 2026 at 03:11:48PM +0000, Diogo Ivo wrote:
> As the PHY subsystem already synchronizes concurrent accesses to a PHY
> instance with a core-internal mutex remove the driver specific mutex
> synchronization.
>=20
> Signed-off-by: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
> ---
> v1->v2:
> - New patch
> ---
>  drivers/usb/host/xhci-tegra.c | 4 ----
>  1 file changed, 4 deletions(-)
>=20
> diff --git a/drivers/usb/host/xhci-tegra.c b/drivers/usb/host/xhci-tegra.c
> index 8b492871d21d..927861ca14f2 100644
> --- a/drivers/usb/host/xhci-tegra.c
> +++ b/drivers/usb/host/xhci-tegra.c
> @@ -1357,15 +1357,11 @@ static void tegra_xhci_id_work(struct work_struct=
 *work)
> =20
>  	dev_dbg(tegra->dev, "host mode %s\n", str_on_off(tegra->host_mode));
> =20
> -	mutex_lock(&tegra->lock);
> -
>  	if (tegra->host_mode)
>  		phy_set_mode_ext(phy, PHY_MODE_USB_OTG, USB_ROLE_HOST);
>  	else
>  		phy_set_mode_ext(phy, PHY_MODE_USB_OTG, USB_ROLE_NONE);
> =20
> -	mutex_unlock(&tegra->lock);
> -

It looks to me like the mutex here is trying to protect against
tegra->host_mode changing while we're setting a different mode. That
doesn't seem to be taken care of by the PHY internal mutex.

Thierry

--geubzoieqitgmbmw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmnCegsACgkQ3SOs138+
s6ESAQ/9EMcAUytgVdqWsJtOBxpPlq0tVZ2c5MSbDjInQhkZMWHEEqh4CS0S7gwO
524kejcplYr2DTbmr/wI0zjfWP7Aomr7HGRWiUUCVCYru/V9YLwXak5A0+OtKusq
i4aCxyzdzUcXYdXCxglPOBPW0nr3v/NGkG/fqvBEKAMiSfgWhXL3Y7BPsPw/g0o5
ro+f10rx1QlLR9V+2Zkie2CufCkpqChsutAgGM0o0b6FpT1H3ICTBFW0AJ6a8sv7
fMB4cba7XWBLC38BEfjKsRum62s5ImJklbTYahVZbkLp0cFIBaMQPZhAbkH937i4
ouJXF/2oew+Z9d3aN4eLhOMvoml0a9Ttthhx8S1QgJ+tF4uII9wrSlVnNsOU3wRc
ft3RaKEffEJJ8/796FF0x+kLPeqeIhE0GC8/O2LavsZLQJo6T55g1sG1hytkixM1
DsEaCG1qqe4yAthaW1Gge28uq5yd6k36cxOORwIhrP9usHKV1X6Z5IPbkziJ8XeJ
a+tSM/AD6m1oKMxPRJke7PkM04oc+cZzSPcmZ2abBocV2t/CLmd5TCgGPZ+er8aT
wOW0l0ERdomQMAGhMo8rJHN225YRE7fG3Hy5lhTux1mcAQsb4Y61QW8qxA1nCIqJ
d0tqu1GKLIwTGZEGG+fydMq7BAy+F3+duGopgY5IJ4bU1YGjsaU=
=eWzY
-----END PGP SIGNATURE-----

--geubzoieqitgmbmw--


--===============1376381629144745558==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1376381629144745558==--

