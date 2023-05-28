Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60060C77B7E
	for <linux-phy@archiver.kernel.org>; Sun, 28 May 2023 19:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nvmACVSfLWCim1oNULTJHVo+GCTZuPy/PUa55socSag=; b=KvL6kDEOUxR7XNEoV7ZhLiqAQn
	L7oW1ZHCSqKfHjbpf/rgVPxMIx9ERIB9SNqF2MbpD726zxe84CaYgZ97HIQFuhmWfGNpcOWGsR674
	193Gf+JjuSNazk2arO2UTJd/B5pUQNmSdbKfYcP55E+LgVQB2th9Toj/fA7rJIFoJLTThlgLp87Fo
	cJh9mbODSdIo90TXYP1z4c9Yf+7+WrgTIvx96PkTZlzCsWNGcw9fq1jSiu+1wUYM3QsTEOmP5Impc
	t0bCTkN6i6UVUxqUXYkyet88IjOhIF/pbr5pO/zgyRkaESqWyAPFrZZf6lyS7nZnCSMqNngQJiuLl
	xiOmbCyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3LnG-008HID-2m;
	Sun, 28 May 2023 19:11:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3LnD-008HHW-0k;
	Sun, 28 May 2023 19:11:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8300A618C8;
	Sun, 28 May 2023 19:11:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91588C433EF;
	Sun, 28 May 2023 19:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685301061;
	bh=hOz9hD+Qyhnd1vOnZysFE0qkO2g8ZUW2/VZIxzTQinU=;
	h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
	b=Bj9VHur48hn+DH9GpdTEwFanj5YVcsIuo8NBT1ajmn7/SSEQ+7a8LrVoZtck9G2eX
	 rCqUKAQisgcUYqM6cHFwQTQhb2ofgAV/oq5SSMtW4xv1bcyan39GBKNxp5RfAhy+8+
	 cMj3ZZp/vFJ6SYMClCczrKZ/h1kHH4KgFQx9nnehpvhpUixmFZWDJ++3xTZp8IrGKs
	 qvXFRU61TQirFZsyczehhy2cNy1s6vQaAWS8/Yy9tUPlqNIfxdVW4GxEoOWt9s+BJC
	 cNCTp3sAKtNooQ1orbkrA/t4DQDwvSVBnMOU0KZVsKjoxPfEDlLX7hcOMrhsngPymU
	 cQuSkIiCcMTJA==
Date: Sun, 28 May 2023 20:10:56 +0100
From: Conor Dooley <conor@kernel.org>
To: Rudraksha Gupta <guptarud@gmail.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
	soc@kernel.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/4] dt-bindings: arm: qcom: Add Samsung Galaxy Express
Message-ID: <20230528-bridged-shingle-a6b0868d19bb@spud>
References: <20230527040905.stmnoshkdqgiaex6@ripper>
 <20230528001010.47868-2-guptarud@gmail.com>
 <20230528-decode-creasing-f5b3996163e5@spud>
 <ad7a6ee3-cabb-6f92-a595-8791801cfe97@gmail.com>
MIME-Version: 1.0
In-Reply-To: <ad7a6ee3-cabb-6f92-a595-8791801cfe97@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230528_121103_335240_E8D8749C 
X-CRM114-Status: GOOD (  18.48  )
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
Content-Type: multipart/mixed; boundary="===============2375445100128572648=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2375445100128572648==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Ncz8jVJ3EUWXtc3T"
Content-Disposition: inline


--Ncz8jVJ3EUWXtc3T
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 28, 2023 at 09:36:37AM -0400, Rudraksha Gupta wrote:
> > Where did the "att" come from in the compatible. Is this some carrier
> specific model of the phone?
>=20
> This is the code name for the device. Since there are usually multiple
> variants of a device, using the code name differentiates between those
> variants. For example, if I left this as "samsung,express", it would be
> unclear if I am referring to the GT-I8730 (code name: expresslte) or the
> SGH-I437 model. This is typically done in postmarketOS:
> https://wiki.postmarketos.org/wiki/Devices and XDA developers. I believe =
it
> is a carrier specific model of the Samsung Galaxy Express.

Okay, thanks for the information. I'll not dispute the codename, was
wondering whether there were other devices or not. I'll let the qcom
folks decide whether or not that is the right codename..
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.


--Ncz8jVJ3EUWXtc3T
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZHOnQAAKCRB4tDGHoIJi
0u33AQDCJAEDCua8W9b2gTd5FV0dRkv7E2gtKrPliQlXCn6TVQD+JqzD5gyUUcRQ
Tz4bDlSBE5eg6ppwmglKOys4LeBzFAQ=
=NPpL
-----END PGP SIGNATURE-----

--Ncz8jVJ3EUWXtc3T--


--===============2375445100128572648==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2375445100128572648==--

