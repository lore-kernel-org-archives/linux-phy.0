Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8329CC77B73
	for <linux-phy@archiver.kernel.org>; Mon, 22 May 2023 12:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:CC:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bxv4rIL20ncuxkVBTjNwYRzePuE8gNOpHBxXgEHEKHM=; b=zM4pQluJwtSzG9T5i02LA/oIEl
	U3UktTDcO3cjCT+CYP2X8qTUU9FpiyiRUcc0O2GjgeQWfb+k5mJ9k3Rp4XkqVwufurjTmwm+bs+a+
	T7hUVni61BBAHPsxBpSKZmjRaD68rATPVVqan4UQYBAJNerf0AyDKev3U72hhu8jQlSop5EP+E+fG
	DGzQIoDICSoJW/4zWeX876Bqdnbup31Cd9Fzq1wM0/t/7Bh0karRWtPU5UgI2kZWbv6u+nKHq78of
	ghEKmw1B10dxlh2qflNCBRGHR9kz6ZLhLnMemQ1Gfvs/3fB01p07tz2byh1Q/qAVTnv7/teWR+wWX
	mi/BPbLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q14V3-006RLz-0Z;
	Mon, 22 May 2023 12:18:53 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q14Uz-006RJN-3A
	for linux-phy@lists.infradead.org;
	Mon, 22 May 2023 12:18:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1684757929; x=1716293929;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=yIjhWDjFMYCl5gznTdFSFGbvICLuiF8BR7thR9CRBN0=;
  b=STNoILyW8bBnYSmCExW3jX3yBl/JvstGJeOeid3NdezAHaLF0PkMIGG/
   up5JOL1BjRuaTLnvRiI1nd78hd6EK2FhZH8bD/cjK9jz5NzhmRS2Zdmgc
   jKBfqNWaXwqlPbSRZQYdCnpXmuVAc336URXr/DIJLB/PXZx1CAF1WvrEc
   858W1g5KvDiZ+Ks3/Tm1COrpciN2IWjbHESqbp2aXmfATu9T8Gxz+eg0u
   /gL8n+IWdFlQWHxDDxT2qI7TkK34D9JDMaV9PN/XjJrdumgijGdCxB0nD
   QPl7pIgsWu839Q6qEKIRzQJgyaEb2pTNROaKHx7iywFo4TV3PXGQo/bk0
   Q==;
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; 
   d="asc'?scan'208";a="214312328"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 22 May 2023 05:18:49 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 22 May 2023 05:18:48 -0700
Received: from wendy (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Mon, 22 May 2023 05:18:46 -0700
Date: Mon, 22 May 2023 13:18:24 +0100
From: Conor Dooley <conor.dooley@microchip.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Philipp Zabel
	<p.zabel@pengutronix.de>, <linux-arm-msm@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>, Bhupesh Sharma
	<bhupesh.sharma@linaro.org>
Subject: Re: [PATCH] dt-bindings: phy: qcom,qmp-usb: fix bindings error
Message-ID: <20230522-babble-impeach-efe7ed754a08@wendy>
References: <20230521195200.11967-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20230521195200.11967-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_051850_026335_DA83EDA0 
X-CRM114-Status: UNSURE (   7.62  )
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
Content-Type: multipart/mixed; boundary="===============1653296330083892015=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============1653296330083892015==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Fr1CTYsJQoNe4MTw"
Content-Disposition: inline

--Fr1CTYsJQoNe4MTw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 21, 2023 at 10:52:00PM +0300, Dmitry Baryshkov wrote:
> Merge two allOf clauses, which sneaked in in two different patches.
>=20
> /home/lumag/Projects/Qcomm/kernel/Documentation/devicetree/bindings/phy/q=
com,sc8280xp-qmp-usb3-uni-phy.yaml:109:1: found duplicate key "allOf" with =
value "[]" (original value: "[]")
> /home/lumag/Projects/Qcomm/kernel/Documentation/devicetree/bindings/phy/q=
com,sc8280xp-qmp-usb3-uni-phy.yaml:109:1: [error] duplication of key "allOf=
" in mapping (key-duplicates)
> /home/lumag/Projects/Qcomm/kernel/Documentation/devicetree/bindings/phy/q=
com,sc8280xp-qmp-usb3-uni-phy.yaml:109:1: found duplicate key "allOf" with =
value "[]" (original value: "[]")
> /home/lumag/Projects/Qcomm/kernel/Documentation/devicetree/bindings/phy/q=
com,sc8280xp-qmp-usb3-uni-phy.yaml: ignoring, error parsing file

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
You may as well trim at least that from the file paths, if not more.
That's w/e though,
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--Fr1CTYsJQoNe4MTw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZGtdkAAKCRB4tDGHoIJi
0vy9AQCrMGAUlup6Rz/frrw36p2hRsHwRpCxU53tvu9+2mfi8gEAuC6gDr6AvqqE
ckJ+nFBCcsUhyAjrfD95zhiK26Bz5gc=
=OY8I
-----END PGP SIGNATURE-----

--Fr1CTYsJQoNe4MTw--


--===============1653296330083892015==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1653296330083892015==--

