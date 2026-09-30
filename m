Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B988DCA5FC4
	for <linux-phy@archiver.kernel.org>; Wed, 30 Sep 2026 18:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jvvEME5DNqJ6RwAGObSsCGhKomBJgL+D5p5QFN6Nw3g=; b=tdY
	got9UbTX46Y2Toeei9lurs6Tc1Ye8TCWz3lPOJ5LD6bCfokPr6boWsB+6JQ1pdOkyU8VXFLafYW1I
	gl6jUzzNRuVjcLOXxT3u0TdVouba6IjrOlaUc2LLhBvXyh0gSMgLpZak4RHdIzT3ytzj/sE7xu5r0
	1HbWaKLbeWOriW3TllKLYsCLUoP6bvTznW+1BJoAVQhGM5HhXWGjV9LRXz9iGhFuHVlcgW5Uz9GZ+
	sF4wcel3lKI+lobRHKPJ9f3IpYqxTBhijz57q/cIGci+5sTfd06DaUAMnvQAxzHEdMYFPxpfKk+tq
	5ZH5qvUm1qZhQV9xImWhuy6sRdiiQ4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBzED-00000006zkq-0rE6;
	Wed, 30 Sep 2026 18:40:29 +0000
Received: from mail-wr2-x0e.google.com ([2a00:1450:4864:30::e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBzEB-00000006zjv-0QDl
	for linux-phy@lists.infradead.org;
	Wed, 30 Sep 2026 18:40:28 +0000
Received: by mail-wr2-x0e.google.com with SMTP id ffacd0b85a97d-48aff58e6abso699988f8f.3
        for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 11:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790793625; x=1791398425; darn=lists.infradead.org;
        h=content-type:mime-version:message-id:date:subject:cc:to:from:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Sudsrgh6olVvguill/NXjWeyuYPJdT70+yOGXWlPI0g=;
        b=EMkfO5zb3xJcgX98bWilRkV1RB5ekLd7oZ88XkjDXkiL21HxzJYDPUCGNRxl9ztUrk
         tFApiVeokdaY07pyjQ4c4ijjP3smYxdGEiI/C1eEqSd7/0fqoRfK80Cx99h8nvjkSX06
         RmSyEzf/mBedMr4J4K70UmWkcrhcM8khU21SQ341FlI+tQ6HO0olJAv7AUH+q5HHGXqL
         lc75+jDkfo7IR4CFARN8x1DoB5isz8UonxVd/YXJJKGcrANgeTpoC7ugP12KnjvMfp/q
         gejgPxyCOR00ZnafO/21XFSLo/4hTgElGhe0iEITWF3cwWFLPfPWk3IK5hQAGp4oks+D
         rPYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790793625; x=1791398425;
        h=content-type:mime-version:message-id:date:subject:cc:to:from
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=Sudsrgh6olVvguill/NXjWeyuYPJdT70+yOGXWlPI0g=;
        b=wDu4k8JLJ0kDu6ISKlQheD8dvFyq8dLrNtmiXs4+G87RtcsHR/YxDQJsRlL8+Pyqgq
         YbdrCVltrezi0V2JkSFXjHZ5FahMJLWZfMCQ0xl98QHVTBacy5GukGAR/INOeqNpwULL
         o8whshkoNYddhjxbMLiCB/PSfwSNNGb+lSc6DMFuLAKA8lu6wKzoUtTlBn2ye0Myie/D
         s+fF2HxuVEMBfn4dRJipDtDP/h5F1X1M9qTc3PRKtRMSq2BpOgvqAr5RQEVfUxHy6S0X
         tlzXl8fpR34t3CMaEthEQ0/D6xEDnXDyqeVHMr8P+j8CJdZU5M6dP0d193OXaHdIhz9Z
         52PQ==
X-Forwarded-Encrypted: i=1; AKwUvBzM/j5t+uj05Tfgvc6CA0i57yXUjmcOEW9EV6jjkh7nwUTItujD/taopDkS08ho9bGE40L3JMi9VYs=@lists.infradead.org
X-Gm-Message-State: AFq9FYLuPdAbKOxqKSgL2AlbQDFuOYZ3lAcuo3ZoryFcjNK8HGfu/wuB
	Iawjthj2UEpUrRVQivwVkKCAkqUDFxYhoKxqEG+5RT5tLoA/QUA4KDg6
X-Gm-Gg: AYBFou0QC6fQGu6VvNtSRiAtrYcehOYVSqgRpa4n8TZPWi2YeePC9Y5PUTseXuBaPWR
	/ybu4uQfMgDWlZSikIqaD+QpBG2PMjiZWlZ7K9E/AsXI5vZOCix1B/S4p2SlKLcbgtlKlGXaUvw
	B7AaJ+W97eVB6oTe13WZthOqWE5kN5bVp16J9rNzXff4u5ZHpLuqPIDV0ggzAdWqED8gmJ+jQhS
	FdNOmDfPI3BG9W261owk7L3d89UAnv00PnO/AHYgmkVOW4sQWAZxFOxhwcvCR466tDnc80tb+9I
	W87HYL4Bz6Ds/hCYJsUg9axmcxEgNMXMcU8oXpx3yJqPOmC/deV63GduSUnhgXmMO/Z39y5JY2G
	ohkCJWWzsxb76LVVmNc5NkSRM6EAXJtQwVG1koFBeXOsfw4bNDL+nxHuxyUD1D5lGn4T5SAvZx8
	qhPusrUn9cLwdNvYDTGk0dsUH5p/PdvxFTJnH8/aUIa9k+K5b9GE/FpON3Fj6gJlndBy/PaqOxR
	rEd39Xtn1U=
X-Received: by 2002:a5d:5d0c:0:b0:488:8132:143d with SMTP id ffacd0b85a97d-48b024df747mr4886436f8f.19.1790793624363;
        Wed, 30 Sep 2026 11:40:24 -0700 (PDT)
Received: from strix.localnet ([197.250.96.176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48b068ff6c1sm1063999f8f.13.2026.09.30.11.40.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2026 11:40:23 -0700 (PDT)
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
Subject: [GIT PULL] clk: zte: zx297520v3 clock bindings and driver
Date: Wed, 30 Sep 2026 21:40:12 +0300
Message-ID: <LTD3_tELRsyCnoeF8FU_TQ@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_114027_191089_9EC01E23 
X-CRM114-Status: GOOD (  13.22  )
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
Content-Type: multipart/mixed; boundary="===============5704559888163630990=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============5704559888163630990==
Content-Type: multipart/signed; boundary="nextPartulVVFYPFRfOzbNRxaXxRQA";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPartulVVFYPFRfOzbNRxaXxRQA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: linux-clk@vger.kernel.org
Subject: [GIT PULL] clk: zte: zx297520v3 clock bindings and driver
Date: Wed, 30 Sep 2026 21:40:12 +0300
Message-ID: <LTD3_tELRsyCnoeF8FU_TQ@gmail.com>
MIME-Version: 1.0

Hi,

This pull request contains the device tree bindings and clock driver for ZTE
zx297520v3 boards. It contains the next step in adding support for
zx297520v3 boards: Documenting clock and reset manager hardware and
adding drivers for its PLLs and clock tree.

The patches have been reviewed and carry appropriate R-B tags by Krzysztof =
Kozlowski (bindings) and Conor Dooley (clk driver).

The PR does not contain the MFD, reset and device tree patches. They
will be submitted to the MFD, reset and soc trees respectively. The
clock driver compiles without them, but won't be instantiated without
the MFD parent.

The following changes since commit b1470947e92aeedd522ddb7363369c956e55d6b6:

  Merge branch 'clk-pile' into clk-next (2026-09-29 14:14:32 -0400)

are available in the Git repository at:

  https://gitlab.com/stefandoesinger/zx297520-kernel.git tags/zx29-clk-for-=
7.4

for you to fetch changes up to 89e2c0fa481f6a0da23ad5c4dc98bcd940f09fd2:

  clk: zte: Introduce a driver for zx297520v3 LSP clocks (2026-09-30 20:03:=
29 +0300)

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

 Documentation/devicetree/bindings/clock/zte,zx297520v3-lspcrm.yaml    |  1=
01 ++
 Documentation/devicetree/bindings/clock/zte,zx297520v3-matrixcrm.yaml |   =
98 ++
 Documentation/devicetree/bindings/clock/zte,zx297520v3-topcrm.yaml    |  1=
22 +++
 MAINTAINERS                                                           |   =
 7 +
 drivers/clk/Kconfig                                                   |   =
 1 +
 drivers/clk/Makefile                                                  |   =
 1 +
 drivers/clk/zte/Kconfig                                               |   =
28 +
 drivers/clk/zte/Makefile                                              |   =
 6 +
 drivers/clk/zte/clk-regmap.c                                          |  2=
37 +++++
 drivers/clk/zte/clk-zx.c                                              |  1=
92 ++++
 drivers/clk/zte/clk-zx.h                                              |  1=
37 +++
 drivers/clk/zte/clk-zx297520v3.c                                      | 16=
57 +++++++++++++++++++++++++++++++++
 drivers/clk/zte/pll-zx.c                                              |  5=
76 ++++++++++++
 include/dt-bindings/clock/zte,zx297520v3-clk.h                        |  1=
54 +++
 include/dt-bindings/phy/zte,zx297520v3-topcrm.h                       |   =
12 +
 include/dt-bindings/reset/zte,zx297520v3-reset.h                      |   =
62 ++
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

--nextPartulVVFYPFRfOzbNRxaXxRQA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQJPBAABCAA5FiEEQxb0tqoFWyeVMl1sPRO8yFRPGiIFAmq9V4wbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyAAoJED0TvMhUTxois3cQAKOqW1nSvwLMITtTcza2
Vdp9CeR6iivrtbKOMsiIk4809MI5SPaDrZFTRhGptF1lkghAVFzE4/C142dNneqi
WS1IWjBaka+M4nOj8ytObhnAw4aDfykrhsTbf728cm5NREgu40tbKntocyBAVZ/9
lhmCkEYxNdFf9XmkdccrWzFzz0frS76WMl49qqGtKx4wMHLyy5if01smKb/s7++d
N64P2US67mjeHpEARXF59w57dsyBJeBOO52m/WvN2SnBE6RDdczhOSyhxVHj/TMQ
UdhoCB/8qBLeHgiMXlc0E6Z8/JepjhF0COQ2N47RQ68hwl3u1jFQdOxuGVvhUKOG
WYqKt43r4MLjBv9IInWAhT+C0hUrNeJ+sM1nnVQcnLW4liwjl4x2FOxGRjqnvKdq
b5tIcljluruQuR59Zm0v0EjPxEAcWCZdC635QIkSpkTaLdQAS2jJ5vkmghy6v8Bx
Hjn8zxLFFeqoyhUOtK3d8JXvAWh/OkA+TgC7l5pbPqe8utUYyoT157nsTu8cVMHj
hZbZpr9dUpG5SH8kg10o9QPqIXPAhaqJtPSNFKEu04mhtaCcrbMOlo0c9gJBjefW
UN/hh2zY88uedgd0O+QAdSe+DAJQ5iZ7ZRGcP6Yx9i88QNepx5BZFGueC9v1aWls
MmfTH79WEXLfNxj7sch8COSO
=tmC8
-----END PGP SIGNATURE-----

--nextPartulVVFYPFRfOzbNRxaXxRQA--





--===============5704559888163630990==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5704559888163630990==--




