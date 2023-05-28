Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 517C1C77B7E
	for <linux-phy@archiver.kernel.org>; Sun, 28 May 2023 08:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bC0SOLCTS62NjqmqsTV1XiuLNG00keKcF5l1IiPzblc=; b=Cg6FkxTjfXnzQMbZ9wBRXw586w
	lc6KX+31W4akpbLY3/4oCggC8UnVnU2L73I7ZZGa1oKacnONreu1lsCqz8Ls6/k5Xmu3JmxGkhnrx
	Z0TJc1KMCipHKr5BxzwG6WXILLENCcmTBocgstSZ4ia/wZpl/n4iqIQXpOthrwJRfuxFBUpt8gRKG
	6KNZfP2dds6Y9Pt9MjT/4Hl0aRnTSWLrghGoVtqR3oxLU6sKiEsQqpYOY701rdLPZ1Q64UXP2PGJM
	6HrXEPV/HP8OShcsX7dMdn8neHzff9FXV/pgTW1TzCqkNnGOg1lYZqWeiWc19UekX0zKMJUh496Qa
	+KxOIE0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3C3X-007DAx-2e;
	Sun, 28 May 2023 08:47:15 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3C3U-007DAX-2e;
	Sun, 28 May 2023 08:47:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 21EEF60EBD;
	Sun, 28 May 2023 08:47:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A9AAC433EF;
	Sun, 28 May 2023 08:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685263631;
	bh=mSAFYjFK3Msc+CKxPMX79YD0dd5HqbJfJuslyqAjF78=;
	h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
	b=jNy0ziajDDEz1i77YnHbB+tBCCRdhuJnwasCpzdJLoC18Op3AX344nnIsO4i0csLC
	 soHHec5AEgkSDrPUvImCWoinZ48zCcsXVDnR1WT6slOym3hVJN+ydzd9mRrlzcIZRg
	 ccxko067Ilqr9jRzdpu/SmACoFA4eU1/DD2OTCFM7LDEcsExqhZ14BH7SDwPmWRC7x
	 41TgBqpMNz+l9NqiypMfWJqad1ej/giK3EfEDwoFbeoHf4B+X0KvF/aB5tykwRSVgu
	 G1nP1t1laF8eMCHjEGWS4X7QQmsUk+CZ2FAFjNuDZ1aV8B269k0gvJPfJAk1jsomA2
	 AyqxWnko7ZFYQ==
Date: Sun, 28 May 2023 09:47:05 +0100
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
Subject: Re: [PATCH v2 2/4] dt-bindings: Add qcom,usb-hs-phy-msm8960
Message-ID: <20230528-afar-upside-39eba9813480@spud>
References: <20230527040905.stmnoshkdqgiaex6@ripper>
 <20230528001010.47868-3-guptarud@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20230528001010.47868-3-guptarud@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230528_014712_928647_1F55438F 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============4827402640630459096=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============4827402640630459096==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Emy5jck/mGLYOFyE"
Content-Disposition: inline


--Emy5jck/mGLYOFyE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 27, 2023 at 08:10:07PM -0400, Rudraksha Gupta wrote:
> Adds qcom,usb-hs-phy-msm8960 compatible
>=20
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--Emy5jck/mGLYOFyE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZHMVCQAKCRB4tDGHoIJi
0m2xAQCzqjss3CYZuldnRYb2iA4q16UMQIeEQSplcO/r+dHWHwD/R6PZoNKqVxYi
e7wSiUvjqtso4nvraqUIhYN1Uu5/WQM=
=C7T+
-----END PGP SIGNATURE-----

--Emy5jck/mGLYOFyE--


--===============4827402640630459096==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4827402640630459096==--

