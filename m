Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ABBF606A31C
	for <linux-phy@archiver.kernel.org>; Sat, 28 Nov 2026 08:02:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ITxP8J5X;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=W1NGAgHz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=1d6Ddkzx7PQXBvG94ZMYeh8AGlmkkrC9eHcpxH6PopY=; b=ITxP8J5XXQX2gnm5+OPBkcj0eg
	OF/U34PmZaxk3b9Vw0cDlxZ5qqYYII84+xDVK8G1EU1RG9C53J9FVN2doHm9r6gtKa+aFMj5+3H7Q
	eGzTOiSnFUMwKvFeHB4esQ0cbpeMjQ6hcb9yDlKOOlQtL5UBg1Ahj/e1CuF1mS9XRv5A6aQmJhDbN
	VeLlktE5XZ1FSLIy63mpkV4dxayjyu2kfc+zFSxY7ucHPLxU7u1i2ooz5Ife5bhSsv2Rjfz93lW2i
	jDHwr2q/NRe82xtcPe+a/E1YiS7b8YATNs0G3m+33zzUDEOLZtoLrdTf387e2h1nTYYCfcpAhDuz0
	uvQiFujw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xXDO4-00000000Vxh-3Jyo;
	Sat, 28 Nov 2026 08:02:24 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xXDO0-00000000Vx4-3zpA
	for linux-phy@lists.infradead.org;
	Sat, 28 Nov 2026 08:02:23 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4bb77a462c6so70008625e9.1
        for <linux-phy@lists.infradead.org>; Sat, 28 Nov 2026 00:02:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1795852939; x=1796457739; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=uvYCv8hY4UfHhfetpozuse+xYZWS5m8FKY73N24xD70=;
        b=W1NGAgHzwd127jM/hJ020ZSM5fIf3xsz8KmeEoUe635/vcc2uEkG+TTUHpx4cJYYjx
         tiT2kero3B02lOAraIQN7TBdyHGYLJGOudwT53FdUEWSCu6tDU0AexuwGEYtaWeNNDb/
         ayUmucI7sOT4oQKKeZpwO+Kj2uasBPUC4lucu32xD9ZmHZCawroZ6b0nrRKnL/hgYIey
         vN6DObnmisOs9YXS66T1mKyp5QtwTjnz7CE57Ymx3+3yWusH7z+GBrTsWhijWAB3E7ER
         LvHPe313Nh8uamJDvF9LhYykqh9vHcoM7A4WH5vPZb//QyxdloQZmb8f6qXJCcMxo79p
         uppA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795852939; x=1796457739;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=uvYCv8hY4UfHhfetpozuse+xYZWS5m8FKY73N24xD70=;
        b=hg7/HHqbjuv/EX4oz/1bXjXtIslezTBQ/jybY3BXtc6BnLd1DxN8IsIQt2nVlK4sqT
         DOZcDtvkncHlkzUVusHdthLvn0MFi3BVwXg6trZlgsIWmDFRr3en/WK/U4fKQ/vtb0zY
         FJ3M34DvhLo0Ht/LFgBygy8U4guQxDBC65FxtsUzsR/sRkbfazWqHZPk1F4Ni8OgziW3
         4KwlNxcaffnkWr5kN5e0PRzUfymeqQflsSFQL1wEpT9sG4kDfNrbx+pVCCYFihPujwTv
         IgiPybM3DpG28ccYpezSJcX+/supl2oHyLv8udlXjT1JN/fudwbdmqxGq9+qmvb60RdJ
         JkqQ==
X-Forwarded-Encrypted: i=1; AL+hErEg8sYT//wgmExT9CZHsGiOMNCFT0xJYHEKeAU5f3gOCp+ioqNIr1DbOxlS/0WFgdL22bhw6swXFi8=@lists.infradead.org
X-Gm-Message-State: APuU4Z83x8D81R+BcwRNt12ZtHk1GAZ4VoDnbOQ3Iy4Rs4rd0LaEPKTW
	QpJELmZdNunrvhYlIwgXn9hYmFiyzxxPBQPgtumIWawdknmwqWap0BgfUZWONEPrSpE=
X-Gm-Gg: AZFdTZcEJPk3VRM2Cmu0XuPuTAAgkZPpLVDmZqX44qZIJpubcmbcMfKxjRt+MzBFVCE
	ofWJZbfqnJrydA+7eAwtqyQcTTMyE7fi+aouh+nahuY30pDJUUHsJLDzEafdIcH7fZBRgo6Xh/4
	RNKVeABoIX7wHFQRhSmZ4EdTfQ1BBGQOAneUfNBDyieNlAkgI4Gx4xXBUejnpr3AHbK6nrUJV+i
	YnFLTvYgl3HvYbFRfghA4pnG9S2+n1aGu9jGwaY/G8a4OinDsEw3GoD3L7xPfSndvoiJ6Y+0JAE
	97khIrmmSBXqDgPbFYwSviIsg4HorU/5GPlgccMXZSc//Etv/2cg6pGCuxBFa1hH5dlcYFDQIPU
	jaEBvJgf7uNMqQvQ46DnrbQzzfJWEbncPoFl/Y412Fp+MVGTGX8A1vogLOGkOSSzHZ1XLO2AqKY
	RbMS4GcUkllGH6V8jti0iI7Obou5phC/AR/zwuZpaMQ55AffkcgZd0eCNhYPo9s98tkPFIxkiNG
	90PdPKgDXDFiGEjMiOzAd5n902S2obEDCwHXum24uOnoXPi8MvrDp2xwptmpayVSEJLeyBHZBtM
	68I5QJSIgLDEKFAzBR6dBYJickGkGrMnNVJQ3e1NVOImtdImSkO+ValyDejtwlOCJeflNqlWpvc
	=
X-Received: by 2002:a05:600c:5303:b0:4ba:4928:8aec with SMTP id 5b1f17b1804b1-4bb88807d7cmr505581765e9.9.1795852938637;
        Sat, 28 Nov 2026 00:02:18 -0800 (PST)
Received: from localhost (ip-005-146-085-079.um05.pools.vodafone-ip.de. [5.146.85.79])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-4ab69bf680fsm59330195f8f.14.2026.11.28.00.02.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Nov 2026 00:02:17 -0800 (PST)
Date: Sat, 28 Nov 2026 09:02:17 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Alastair D'Silva <alastair@d-silva.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>, 
	Jerome Brunet <jbrunet+clk@baylibre.com>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Mathias Nyman <mathias.nyman@intel.com>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-usb@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 06/11] phy: allwinner: Add Allwinner A733 USB 2.0 PHY
 driver
Message-ID: <awqKD6EufgpjsjP8@monoceros>
References: <20261127073231.1776847-1-alastair@d-silva.org>
 <20261127073231.1776847-7-alastair@d-silva.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20261127073231.1776847-7-alastair@d-silva.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261128_000221_011374_B9F8EC9B 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7352678703216440656=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


--===============7352678703216440656==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6xgu3d2pgo3fouvi"
Content-Disposition: inline


--6xgu3d2pgo3fouvi
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH 06/11] phy: allwinner: Add Allwinner A733 USB 2.0 PHY
 driver
MIME-Version: 1.0

On Fri, Nov 27, 2026 at 06:32:26PM +1100, Alastair D'Silva wrote:
> +#include <linux/mod_devicetable.h>
> [...]
> +#include <linux/platform_device.h>

<linux/platform_device.h> provides of_device_id already without the
unneeded build dependencies that <linux/mod_devicetable.h> comes with.
So please drop <linux/mod_devicetable.h>.

There is no need to Cc: me for the next revisions of your series.

Best regards
Uwe

--6xgu3d2pgo3fouvi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmsKioUACgkQj4D7WH0S
/k7jYAf/QI/UwQ7qh2BbAqLJFatOOEv5i4Gi+vBVMqy7v16wMvrk3u7U4/ECqS/O
C2/R+NZfyAK6CTe/5t37K/v9LeyvsEN4IbMSK3b5rwXFErl5KgfUZIBdgbD/1BJJ
UP2X0g6ABsQZ5fNkNJXk8nerljU4Pxf7OUuWsz42+HHHKiq9AcZwAZgrS/TttgCN
xeKamMt2XFYPMdjOhAhO57r/l3qPChmlWbT2bDdzM4i9nTyLBXrDRghnJWItoaN4
puwi4x03yymrmDrp7IH2TYfNTOy/Lcc0OcjvpqxxhIG18CeOOMBMdMXQofE0HdQ6
Htyr2kbi6xiqECUEVFTnuPE7uy+hvw==
=iKhd
-----END PGP SIGNATURE-----

--6xgu3d2pgo3fouvi--


--===============7352678703216440656==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7352678703216440656==--

