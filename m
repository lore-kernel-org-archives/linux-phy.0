Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B02F8C7EE29
	for <linux-phy@archiver.kernel.org>; Mon, 29 May 2023 14:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:CC:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mBR0mhGU0GlgFUIHBvzEFErEn/H22CFQBx/UppGsrHg=; b=dxC0dQVVtth9EiTNHxY7dUSQwC
	0LqncaiqRhA7X82z2UCbD3Tlv/sWnHoD5ip7Fvg8FwQHOVKoioqhHpN4TkO6FMSuM3CpARXdnUzfZ
	ZgHAWfWYG3hFzsDQeukup0J4jPb5Puy0vYfXllubHAX5iGCSVVMnoPRDDH8Q9bfnOrHj6i9IwDBPK
	hwov/WX+j6SZSxTIGqN3g3LpYrBPDrlOqXOYjt15OFy6hmIeUJfAOilvuXnNiPhs7lYaQTSlTMIIJ
	IYKhfSr1MBUe36AM29pgVwdjC10ko832Mq0GV4zQiCyKBSTA0I/KRIfMdpjLN/a0OQBMkDla/iWcw
	WW0E57jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3dXz-00Aita-11;
	Mon, 29 May 2023 14:08:31 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3dXx-00Aish-0Q;
	Mon, 29 May 2023 14:08:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1685369309; x=1716905309;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=LAVqjlT5utdt7DMAuhjbEVwZtJU7/LMN9PRrAurEyvg=;
  b=Nu+D0+DUN+shs+GHji5eR7z+j6O9cf/aLbLpdbNHyEv6DzYknzhud9Bk
   QuvxMoLabYH/IgEByxSp3HJK92VnxtezvcNHR+jU8GfKwswyTcE4iTJ+G
   TSNnUl3ksCYx53vd2AtE54saADEO5C0xOz3KsqFF9QT4gSikuQ6FITN/1
   FW8DvnAsyvsrBfVPt/jbTm0/Ri9De/qDWczAlYGG6rUXm807xD2bfHukb
   ELh6wwwZIAa8zfKJzzaG3gOFIshq0EViTwdiekhLlth7FHmu1xDEDxpEG
   TkL/KzOBJWY16ngReh46VIU7GCaLQRZbypXj4p04GcRE6WrcQ/6vZYwss
   Q==;
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; 
   d="asc'?scan'208";a="215915290"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 29 May 2023 07:08:29 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 29 May 2023 07:08:27 -0700
Received: from wendy (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Mon, 29 May 2023 07:08:25 -0700
Date: Mon, 29 May 2023 15:08:02 +0100
From: Conor Dooley <conor.dooley@microchip.com>
To: Changhuang Liang <changhuang.liang@starfivetech.com>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Emil Renner Berthing <kernel@esmil.dk>,
	Conor Dooley <conor@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
	Philipp Zabel <p.zabel@pengutronix.de>, Jack Zhu <jack.zhu@starfivetech.com>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-riscv@lists.infradead.org>
Subject: Re: [PATCH v5 0/3] Add JH7110 MIPI DPHY RX support
Message-ID: <20230529-unsocial-activity-9607a9bd3989@wendy>
References: <20230529121503.3544-1-changhuang.liang@starfivetech.com>
MIME-Version: 1.0
In-Reply-To: <20230529121503.3544-1-changhuang.liang@starfivetech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230529_070829_172392_03376D4F 
X-CRM114-Status: GOOD (  11.35  )
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
Content-Type: multipart/mixed; boundary="===============6396055970101908771=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============6396055970101908771==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4H1iVI5dF5NIHXlZ"
Content-Disposition: inline

--4H1iVI5dF5NIHXlZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 29, 2023 at 05:15:00AM -0700, Changhuang Liang wrote:
> This patchset adds mipi dphy rx driver for the StarFive JH7110 SoC.
> It is used to transfer CSI camera data. The series has been tested on
> the VisionFive 2 board.
>=20
> This patchset should be applied after the patchset [1] [2]:
> [1] https://lore.kernel.org/all/20230518101234.143748-1-xingyu.wu@starfiv=
etech.com/
> [2] https://lore.kernel.org/all/20230519060202.15296-1-changhuang.liang@s=
tarfivetech.com/

Are these are only relevant for the dts patch, or for the whole series?

Cheers,
Conor.

--4H1iVI5dF5NIHXlZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZHSxwgAKCRB4tDGHoIJi
0igiAQDlI6QDJUu3TjNTah9m7r7vTP0f6tbn/FptSpaZv8dd8gD/aEP+zW8afHh4
LJAt5Ixm+bsLZIzvHRqxm4SBRxVnEQk=
=GyfD
-----END PGP SIGNATURE-----

--4H1iVI5dF5NIHXlZ--


--===============6396055970101908771==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6396055970101908771==--

