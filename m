Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2152C4167D
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 15:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oUckIzwlGx05M1xrYDUeLZgSvTDpLy4entmfWr0Co6E=; b=Tfd9aZ64nFbeNqJJFsnunZ2clS
	641GHbdFxxPb9WfV0Wzgo/iT6GYCO9odOADMn6kJV8zuv3npDQOXVCAqy+8/jhhUD+zFV0oxsON4E
	wZuBpvli78+mn2/yOsE45WCaYu7ODNBTsm4hK/NRS8Ti53SmSmTrzIrlgvAQhKEbGm6d5Y6K5N0tP
	cBMVhH6GseVX5LFj4+9TDd6iU3pzFkY4u6UdD5rzAbGbx0Xxp5GlKXkH7ntVO7DicK3n8+8HBA9lS
	m+X2AAPlUXtqt3uvbcGDVrTpgrtIOQCzL5Db16d1w18Pono85+/xIjxWZpTJedGyLc3hf9n/+6yaa
	1DLazGwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDnt0-000hp8-1W;
	Thu, 14 Dec 2023 15:44:30 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDnsx-000hoO-1d
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 15:44:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 0D8BFCE2075;
	Thu, 14 Dec 2023 15:44:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D31BC433C8;
	Thu, 14 Dec 2023 15:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702568664;
	bh=XBqa/1I+JHuWGz1jvrpWZgqtc0G2D3jLjnviRzFB300=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o1HbXFA6KBPaAeDskIWyUusDha+Tj/GoqkRvGesnO53UHQ+ywSZaKmoYN9+Rrg7ir
	 U2KyDjP+GZRFXHKOLzXrbUN56opS7XpA8Taslo1Kui4vLx97EXO2rDWDMmcD7eCOgV
	 ZV4CnGzuaJ1BFEBrPF1o+4JPFS+RUN1kgf5FrdcB6VG/5bu+WHXGX3VyrvWRRAaN03
	 wKCGpXZejVQstBE1o7g6AmYFCOP9kNkFYzNAqzl767YS/c07KCHgKL4OklWK3q+NsE
	 7yObj2/Sutnzx5BQo5m6saXZAZLUeKtz5CMMckxCTYdzo5T6hPDnb9AfoECMBRFq2p
	 P32G5SX2JDdlA==
Date: Thu, 14 Dec 2023 15:44:19 +0000
From: Conor Dooley <conor@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
	sboyd@kernel.org, mturquette@baylibre.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 03/16] dt-bindings: clock: qcom: Add missing UFS QREF
 clocks
Message-ID: <20231214-doormat-divinity-a3075c35ad13@spud>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
 <20231214091101.45713-4-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20231214091101.45713-4-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_074427_767159_C9A496CA 
X-CRM114-Status: GOOD (  10.83  )
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
Content-Type: multipart/mixed; boundary="===============0127339621143517110=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0127339621143517110==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="YD1SRurG6FcYRAfF"
Content-Disposition: inline


--YD1SRurG6FcYRAfF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 14, 2023 at 02:40:48PM +0530, Manivannan Sadhasivam wrote:
> Add missing QREF clocks for UFS MEM and UFS CARD controllers.
>=20
> Fixes: 0fadcdfdcf57 ("dt-bindings: clock: Add SC8180x GCC binding")
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

> ---
>  include/dt-bindings/clock/qcom,gcc-sc8180x.h | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/include/dt-bindings/clock/qcom,gcc-sc8180x.h b/include/dt-bi=
ndings/clock/qcom,gcc-sc8180x.h
> index e893415ae13d..90c6e021a035 100644
> --- a/include/dt-bindings/clock/qcom,gcc-sc8180x.h
> +++ b/include/dt-bindings/clock/qcom,gcc-sc8180x.h
> @@ -246,6 +246,8 @@
>  #define GCC_PCIE_3_CLKREF_CLK					236
>  #define GCC_USB3_PRIM_CLKREF_CLK				237
>  #define GCC_USB3_SEC_CLKREF_CLK					238
> +#define GCC_UFS_MEM_CLKREF_EN					239
> +#define GCC_UFS_CARD_CLKREF_EN					240
> =20
>  #define GCC_EMAC_BCR						0
>  #define GCC_GPU_BCR						1
> --=20
> 2.25.1
>=20

--YD1SRurG6FcYRAfF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZXsi0wAKCRB4tDGHoIJi
0pBnAP4lCEUnoDhuz+rT6c8a+4OyViA4Yn29QqeYkVxQEbHBWwEAoL2PGPrEe67K
0Tqm1woma0AIcYjuS2n/3Jh6F+rFQQw=
=F89W
-----END PGP SIGNATURE-----

--YD1SRurG6FcYRAfF--


--===============0127339621143517110==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0127339621143517110==--

