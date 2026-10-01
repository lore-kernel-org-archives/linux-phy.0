Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 087F2CA5FCF
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 17:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=O8hm+0JCTHfWwaZt8JigEViHq4t3LjjOCC5V5PJr5WI=; b=H/5
	6OCrgkfvfKw1Whqs9slU4cG7PR8kRSx8NOa0dPpYVlzVGumDBjhAMoVSl2T/j7iy0ieOVjSLT8KF7
	X3Wv+WBpncJs/ARWwXg94ZEPocJEMxVOvaWTfj/iK4vCF69Wio3GmaOA/KNvLgyNhFUFU/sYu0NZZ
	11DqU6rWa2vtU4ozlCpr5hRZkoy6/yRMqnaHEte7Rz7yb2Bx6ohkTPNLCurA0Fuwj0/wcmWrbwDMk
	mV5AJ7H3Wxd1avHyJ1iPQKnhlKMKm1/4qEXZ3HzbEimST0GQhjAl2FbU3+keH89jwlbUs1mGkcxEK
	ThZ94m1X/jAttPbMM7fajgR5C7sBXdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCKlR-00000009tGR-2VTP;
	Thu, 01 Oct 2026 17:40:13 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCKlO-00000009tEm-3eZ2
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 17:40:12 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-48b02b1b4cfso349981f8f.0
        for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 10:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790876409; x=1791481209; darn=lists.infradead.org;
        h=content-type:mime-version:message-id:date:subject:cc:to:from:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=AIcovKn9vKJekcvLwo/O2wEmH8Zef+9GdrR6OoMLQaA=;
        b=g/cXmJUHT6HUySv7t3zEaIzHHHzdabli4ZTvuNg3pAxhm8ypSltCJImTzIlVHwICE0
         2xl1OwWo+qgxAZqcda38zq7l3ES/xbp3SYPRpnWfCDkFFgYelTufotstPRH3hUf6QRDy
         fhLI3boY/Qb0k2LipvNmfZcV8/NFoJGOwn3UfCl7hFf0221/soS+oUNK0gdhxrJUiJH2
         KhFQ+uXTYhNxmZdvgRHV141YRODmkcM//TdER6kVjnDbLU5NvYYVeFzDboUhB3QFrZay
         l6UY/xtGTFvjNvb6zVdL28dPdRskhm3RvAH8kbkvGoflBUiky/hjhd2GiYI1i4eNUDaH
         7Ntg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790876409; x=1791481209;
        h=content-type:mime-version:message-id:date:subject:cc:to:from
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=AIcovKn9vKJekcvLwo/O2wEmH8Zef+9GdrR6OoMLQaA=;
        b=PrVdl4ATYvO2dpH5/NzmgOY0ZP7tKC+bQNIoeL29ZadvFd/j66rIS0ZEop6iQVYajd
         grl5sjEb+Y1MsZ1nbGEPzlqHSo2TqYhswlw5oLQNbmjN/guEjqozvF901yc8aXBgQkJE
         GRMP0BynyMFhJgaeustJRjOtLhUqkQ4AimWGcoTWxUQxPfMxQPDekASQVZoVG+pEyW4f
         /5wyvh1SvQFoCNUQb2nPSgWIBLWYuZXR1ns6mFsjJDecBljumSfHuMxPRaUxR6oxeO2y
         uTY4v8blKlKimgf3EFtbI4EjAIb4jHAksWmlcxqtvOvHcIkD6VaHkizVoL1HPfuEI/MG
         6/HA==
X-Forwarded-Encrypted: i=1; AKwUvBw4qfvCswO50mWq56y6RSPiU6sDimY4Y1lbZZEF/cVLd16121h4+XAyjPQJex+6KStxZ8IalNsfl20=@lists.infradead.org
X-Gm-Message-State: AFq9FYKIwt6H+UgAjfxmEavYJLWjTnM7o8XVgNazxL0SnZjW+6wRMM9W
	lyRCKlWu1jri1i6g4SR9vPeCN4AxmNVpmTIZw8k79wTEgbwH1YNrQu2txBkn6aAS5z0=
X-Gm-Gg: AYBFou2MzpDzEyP3iyM0I72I+t2qXr6lO9Mk2NyfcFIf4CEavmeiob8BJo0CIow1VEO
	6KT/DuS68HZ5oInxHhFzVB3G3OTqfScKIb9y8F0NrZAlubmluHOKbG0E08bb3b/JQ6EhtUdBYpH
	fG5DWHQcmKFP2yd4ZHJM4TeggltQT6+jlXpJUUcD2h6P6Od04fv/2+nYyBuTzFOd0NCG5ArUvWm
	WCaWBOCVWMsa0clqya5/QdR172aPGtWQXNltjxp7chSVCcmZVGZSCfjExleSggkwvzdNeAeUZfk
	Utq0ALmiCGihv8+AibSebjTvjKyErmfk7N5tbGHoIttb2wtGkv/WUxkD4/pb8Pb/a0iMuVqiZrd
	6Fy9buwXIBmNe52hrX4W1scuU6JAKznPLs+UmA49gBDpCxhPxAZrQyrdvzmhmt5D7p4Pa/l9ker
	DFblTNLIJx+C7/M4wwLnrxSXBAAkKyCkPZqpqu//O3SVoCJMUF+/9wM7j9YScPI8iaUw==
X-Received: by 2002:a05:6000:491b:b0:488:8913:e64c with SMTP id ffacd0b85a97d-48b067bc3b3mr7204758f8f.18.1790876408779;
        Thu, 01 Oct 2026 10:40:08 -0700 (PDT)
Received: from strix.localnet ([197.250.96.176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48b0690d284sm7098316f8f.17.2026.10.01.10.40.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2026 10:40:07 -0700 (PDT)
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: linux-clk@vger.kernel.org
Cc: Brian Masney <bmasney+clk@redhat.com>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, Jerome Brunet <jbrunet+clk@baylibre.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Manivannan Sadhasivam <mani@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 mturquette@baylibre.com
Subject: [GIT PULL] clk: zte: zx297520v3 clock bindings and driver (v2)
Date: Thu, 01 Oct 2026 20:39:27 +0300
Message-ID: <hUBEMGo3TGyVsIj5LaphmQ@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_104011_020872_10A1062A 
X-CRM114-Status: GOOD (  13.56  )
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
Content-Type: multipart/mixed; boundary="===============4185650771328732059=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============4185650771328732059==
Content-Type: multipart/signed; boundary="nextPartts1z5F9iR2ap04uw5rhYqQ";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPartts1z5F9iR2ap04uw5rhYqQ
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: linux-clk@vger.kernel.org
Subject: [GIT PULL] clk: zte: zx297520v3 clock bindings and driver (v2)
Date: Thu, 01 Oct 2026 20:39:27 +0300
Message-ID: <hUBEMGo3TGyVsIj5LaphmQ@gmail.com>
MIME-Version: 1.0

Hi,

This pull request contains the device tree bindings and clock driver for
ZTE zx297520v3 boards. It contains the next step in adding support for
zx297520v3 boards: Documenting clock and reset manager hardware and
adding drivers for its PLLs and clock tree. This is v2 of the pull
request, based on v7.3-rc1 rather than clk-next.

The patches have been reviewed and carry appropriate R-B tags by
Krzysztof Kozlowski (bindings) and Brian Masney (clk driver).

The PR does not contain the MFD, reset and device tree patches. They
will be submitted to the MFD, reset and soc trees respectively. The
clock driver compiles without them, but won't be instantiated without
the MFD parent.

The following changes since commit cee9395acd8043be0644b25c34bfa86623f2b935:

  Linux 7.3-rc1 (2026-08-30 13:34:40 -0700)

are available in the Git repository at:

  https://gitlab.com/stefandoesinger/zx297520-kernel.git tags/v2-zx29-clk-f=
or-7.4

for you to fetch changes up to 75e4151c9e157d84c8c6c365893ecf33d221bca5:

  clk: zte: Introduce a driver for zx297520v3 LSP clocks (2026-10-01 20:20:=
43 +0300)

=2D---------------------------------------------------------------
clk: zte: Add clock drivers for zx297520v3 SoC

This tag contains the device tree bindings and clock driver for ZTE
zx297520v3 boards. It contains the next step in adding support for
zx297520v3 boards: Documenting clock and reset manager hardware and
adding drivers for its PLLs and clock tree.

The PR does not contain the MFD, reset and device tree patches. They
will be submitted to the MFD, reset and soc trees respectively. The
clock driver compiles without them, but won't be instantiated without
the MFD parent.

=2D---------------------------------------------------------------
Stefan D=C3=B6singer (9):
      dt-bindings: clk: zte: Add zx297520v3 top clock and reset controller
      dt-bindings: clk: zte: Add zx297520v3 matrix clock and reset controll=
er
      dt-bindings: clk: zte: Add zx297520v3 LSP clock and reset controller
      clk: zte: Add Clock registration infrastructure
      clk: zte: Add regmap-based clocks
      clk: zte: Add zx PLL support infrastructure
      clk: zte: Introduce a driver for zx297520v3 top clocks
      clk: zte: Introduce a driver for zx297520v3 matrix clocks
      clk: zte: Introduce a driver for zx297520v3 LSP clocks

 .../bindings/clock/zte,zx297520v3-lspcrm.yaml      |  101 ++
 .../bindings/clock/zte,zx297520v3-matrixcrm.yaml   |   98 ++
 .../bindings/clock/zte,zx297520v3-topcrm.yaml      |  122 ++
 MAINTAINERS                                        |    7 +
 drivers/clk/Kconfig                                |    1 +
 drivers/clk/Makefile                               |    1 +
 drivers/clk/zte/Kconfig                            |   28 +
 drivers/clk/zte/Makefile                           |    6 +
 drivers/clk/zte/clk-regmap.c                       |  237 +++
 drivers/clk/zte/clk-zx.c                           |  192 +++
 drivers/clk/zte/clk-zx.h                           |  137 ++
 drivers/clk/zte/clk-zx297520v3.c                   | 1657 ++++++++++++++++=
++++
 drivers/clk/zte/pll-zx.c                           |  576 +++++++
 include/dt-bindings/clock/zte,zx297520v3-clk.h     |  154 ++
 include/dt-bindings/phy/zte,zx297520v3-topcrm.h    |   12 +
 include/dt-bindings/reset/zte,zx297520v3-reset.h   |   62 +
 16 files changed, 3391 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/zte,zx297520v3-=
lspcrm.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/zte,zx297520v3-=
matrixcrm.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/zte,zx297520v3-=
topcrm.yaml
 create mode 100644 drivers/clk/zte/Kconfig
 create mode 100644 drivers/clk/zte/Makefile
 create mode 100644 drivers/clk/zte/clk-regmap.c
 create mode 100644 drivers/clk/zte/clk-zx.c
 create mode 100644 drivers/clk/zte/clk-zx.h
 create mode 100644 drivers/clk/zte/clk-zx297520v3.c
 create mode 100644 drivers/clk/zte/pll-zx.c
 create mode 100644 include/dt-bindings/clock/zte,zx297520v3-clk.h
 create mode 100644 include/dt-bindings/phy/zte,zx297520v3-topcrm.h
 create mode 100644 include/dt-bindings/reset/zte,zx297520v3-reset.h

--nextPartts1z5F9iR2ap04uw5rhYqQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQJPBAABCAA5FiEEQxb0tqoFWyeVMl1sPRO8yFRPGiIFAmq+ms8bFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyAAoJED0TvMhUTxoimP4P/AlDoLf0Z0G4fKmz8YN+
uuz5P2zDF96YqNAGoSBR8m3DW+j+BYbR0VFUtMk88UCqrWC1zFxKqkVNBVTZlxfe
n6zBcPQ6ROY9kcVAbgjDL1e2nQgqdBQlaIJgZl0X/pxICu4sm922MQHygNWTSsNI
TrtpvC1BSx1PWIAZXlXV4cUxfRBNv/MUER7Qjfh5qHfVlyA8PuRe4FeOHsHSbBre
x56NucU+9IJfFRA5NLml97GYkxoSSR3WSvtB+O/g2oL70ASgBBH8LjBn/HZlUg8s
AEAr9ptju+ZizC7GqZpkKe09RMqlBX8dD7o/k4frkodXlhBQdohAoW0Lky13k/ge
W6y2JKNpFS9nthDRpXcrdDju9VGoHyzLIzuCKnZRkt6XhUbERc08wkMpaYpnn6md
t3fhbVOorMFlUC8IXE609RBE308Wzlx/EX17EBwmhVNVMV34OGQNIecVk4esrE2s
M5oKJuTQgVGdQ6sM/ZCR/e95B1rmaHU2Y3eC0+e0+kS98Enj5ykk3R4wVrhGwl6Y
9ckevWzJnPLmYWoP2lRlstOa4T9UFk/0jPOT4PkXCgMluG8vRVczcEez45n3uiZc
fe+re0gfkc7/zRJ8QI4JPQR884aY4tIQu/Ma8L11UjyWxer5qMR8PCVEGLqy9PTy
8YV8gwDXL+x/vbleLCfi/JAr
=86gf
-----END PGP SIGNATURE-----

--nextPartts1z5F9iR2ap04uw5rhYqQ--





--===============4185650771328732059==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4185650771328732059==--




