Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CB69CA5FC5
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 00:27:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OtJNB/B9B1jriw0EQyyhPdYWFPq6pOP+65RQ312J5A4=; b=FpFg4mMHpLlBJs
	7xUeZ8KD5RaLmkRVwRTpr3gsdQlz2nSLpcitZ38j3WgB/fFmk6pdr+Tulxn8zoS0d9B5/K2vIeq18
	vGraU6sJOGDL18+b2M6rUVDXzUwMOp8bBrOExamFvdDATdGhrpqzQWZrVS+GCRKVXaZNJO7s6nq17
	TXrIL/VC21ZSex4fMxtBuS+HYf/8pnog8gw9C3RHQ/bvLIgKdxBl/tFwCCd7Jn+8mMQDSJn7bfeb4
	QFNxkTEKvB0KPiRJChl31jCGMF//NsMJ1krlfz4UW4SZdt0c5dbo7i03ByQ0qp99CYXYAJZ+BxLrO
	c8CHIVsuFtn9kTPiuvKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xC4e6-00000007Vjt-2pEJ;
	Thu, 01 Oct 2026 00:27:34 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xC4e4-00000007Vj2-08KW
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 00:27:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1790814449;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9Nk4sGQfUZPJr906VGnTLrhpfwNs9+S7HqUA3QKJmnY=;
	b=J4TSmKTHWiyiGi4BxmklrzEDbZGRK5cQV0wjFBuEE+qseaqntyxWE1Ahm65qcHx78rPVql
	ibjg/rsuUVMOgwHOGtqcqP7pVrC/ZQpdz6Bv26vErzwsUv8vIKm2ilwzzAm/i8txesdPIp
	bxKB69lcbwKz+0tvS+fKJdhLQvc8iPI=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-66-iJQlSXihMPiXMFY9tLm5Rw-1; Wed, 30 Sep 2026 20:27:27 -0400
X-MC-Unique: iJQlSXihMPiXMFY9tLm5Rw-1
X-Mimecast-MFC-AGG-ID: iJQlSXihMPiXMFY9tLm5Rw_1790814447
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-530d028f779so74446241cf.2
        for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 17:27:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790814447; x=1791419247;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:content-type:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=9Nk4sGQfUZPJr906VGnTLrhpfwNs9+S7HqUA3QKJmnY=;
        b=P2S+NXrEh7jqer++pkbqg/jxwUCWh9UXo8Pih76OjfOP8mVwQeF7sRAaLEm/3+1KCg
         qChmE0FkiyMXOfcKsgSiWqbPg5jVjtlrH8BTXET7wYCRBqdYagL50f4qJeIvLPwHXb2I
         LKjj9cayUmztHjLlSa2QQKR638gbgt4IkP1YJNY7Q7iYu7S4TaoOe1tuE+oGVGeuELQz
         EPIDO7vVBXPV18+qO0WPYtTOWOdd1YrpvyfXbbM1uz9TNXG2echmDM4FsskTGUZkpgz8
         VtoX0ALayt6N48lkTApnvPJ3x0kmpy7ioCRiXonn7TXGaiR85KG0cDUG287C2//T0+iP
         HhCQ==
X-Forwarded-Encrypted: i=1; AKwUvBx7jbhaOP7n7VNfwgjW4dpvx9k97tbs9JdV9rivqOlYyeNa1LP9kQK+LmoexLDU8yjch9fnUkedamI=@lists.infradead.org
X-Gm-Message-State: AFuF++nYMkPOvkjkUTJZhlOsM+9KpFLLzZACaVAZw253H7veTRh5FoZU
	i6HCQTVH40pVrCY2HN13tpddzGjN9mgPZrUFP9sRHj+XEj1qvkk+VW9eC1JsX3anfHsrZysWyPR
	UuiPUOB54HTEHt23jJiNwub0/wTI0MWNyxaocLMLMq1exKP9J3reRCQLKPtIdygu6AbM=
X-Gm-Gg: AYBFou04ox3/PszERQKO5DjuiRCoVff3drYB0Z8Rfn1OAhAGzxdNQ/6GD5s5KM8lfOH
	In0YQDo9dE3DNUyLBfqqct32gQePcU2Z2JqvMQ+SNSEeMtuLJsdIwwyQC7ysllHOGZsAJlo1E5J
	IUdivhgudSvCk7GuXs2GtjU0+x29AI3tpaILSvVzFaE7mN5OxaJ9GPVvimMEjSDJjCFCxE/F5CW
	K3zx4z9XcWFKs9BrBSv3rAwB4zcBTc9hjQcwVoYOyC78Xefgpqhjx9AV5v3jFsV3X75PDONVPl5
	bWVwf3/PjddihETzkrAPiZlAz9hkamSlvWpd2T7+KW+1Jp1r6UoV9RJbX8mbWxTFQX51t44LKyB
	PSX9jWn+GPSGPMF8XJErCeSkas+ZJtToET+s=
X-Received: by 2002:a05:622a:4d9a:b0:533:3868:1f78 with SMTP id d75a77b69052e-53374328747mr61077701cf.51.1790814446779;
        Wed, 30 Sep 2026 17:27:26 -0700 (PDT)
X-Received: by 2002:a05:622a:4d9a:b0:533:3868:1f78 with SMTP id d75a77b69052e-53374328747mr61077101cf.51.1790814446078;
        Wed, 30 Sep 2026 17:27:26 -0700 (PDT)
Received: from redhat.com (c-73-183-53-213.hsd1.pa.comcast.net. [73.183.53.213])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-53385f87469sm6552381cf.3.2026.09.30.17.27.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2026 17:27:24 -0700 (PDT)
Date: Wed, 30 Sep 2026 20:27:23 -0400
From: Brian Masney <bmasney@redhat.com>
To: Stefan =?iso-8859-1?Q?D=F6singer?= <stefandoesinger@gmail.com>
Cc: linux-clk@vger.kernel.org, Brian Masney <bmasney+clk@redhat.com>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Manivannan Sadhasivam <mani@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, mturquette@baylibre.com
Subject: Re: [GIT PULL] clk: zte: zx297520v3 clock bindings and driver
Message-ID: <ar2o6yUzJP0H1YJv@redhat.com>
References: <LTD3_tELRsyCnoeF8FU_TQ@gmail.com>
MIME-Version: 1.0
In-Reply-To: <LTD3_tELRsyCnoeF8FU_TQ@gmail.com>
User-Agent: Mutt/2.4.2 (2026-08-30)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: vf0DnUbUHJ_cyHtUvdgKHOOW3ZULlgc3_z1NcQyTTuM_1790814447
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_172732_157915_B5FC1AF6 
X-CRM114-Status: GOOD (  21.45  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Stefan,

On Wed, Sep 30, 2026 at 09:40:12PM +0300, Stefan D=F6singer wrote:
> Hi,
> =

> This pull request contains the device tree bindings and clock driver for =
ZTE
> zx297520v3 boards. It contains the next step in adding support for
> zx297520v3 boards: Documenting clock and reset manager hardware and
> adding drivers for its PLLs and clock tree.
> =

> The patches have been reviewed and carry appropriate R-B tags by Krzyszto=
f Kozlowski (bindings) and Conor Dooley (clk driver).
> =

> The PR does not contain the MFD, reset and device tree patches. They
> will be submitted to the MFD, reset and soc trees respectively. The
> clock driver compiles without them, but won't be instantiated without
> the MFD parent.
> =

> The following changes since commit b1470947e92aeedd522ddb7363369c956e55d6=
b6:
> =

>   Merge branch 'clk-pile' into clk-next (2026-09-29 14:14:32 -0400)

Please send a new pull that's based on v7.3-rc1. Or if it's easier you
can post a new version of the patch series with just these clk patches.

Brian


> =

> are available in the Git repository at:
> =

>   https://gitlab.com/stefandoesinger/zx297520-kernel.git tags/zx29-clk-fo=
r-7.4
> =

> for you to fetch changes up to 89e2c0fa481f6a0da23ad5c4dc98bcd940f09fd2:
> =

>   clk: zte: Introduce a driver for zx297520v3 LSP clocks (2026-09-30 20:0=
3:29 +0300)
> =

> ----------------------------------------------------------------
> clk: zte: Add clock drivers for zx297520v3 SoC
> =

> This tag contains the device tree bindings and clock driver for ZTE
> zx297520v3 boards. It contains the next step in adding support for
> zx297520v3 boards: Documenting clock and reset manager hardware and
> adding drivers for its PLLs and clock tree.
> =

> The PR does not contain the MFD, reset and device tree patches. They
> will be submitted to the MFD, reset and soc trees respectively. The
> clock driver compiles without them, but won't be instantiated without
> the MFD parent.
> =

> ----------------------------------------------------------------
> Stefan D=F6singer (9):
>       dt-bindings: clk: zte: Add zx297520v3 top clock and reset controller
>       dt-bindings: clk: zte: Add zx297520v3 matrix clock and reset contro=
ller
>       dt-bindings: clk: zte: Add zx297520v3 LSP clock and reset controller
>       clk: zte: Add Clock registration infrastructure
>       clk: zte: Add regmap-based clocks
>       clk: zte: Add zx PLL support infrastructure
>       clk: zte: Introduce a driver for zx297520v3 top clocks
>       clk: zte: Introduce a driver for zx297520v3 matrix clocks
>       clk: zte: Introduce a driver for zx297520v3 LSP clocks
> =

>  Documentation/devicetree/bindings/clock/zte,zx297520v3-lspcrm.yaml    | =
 101 ++
>  Documentation/devicetree/bindings/clock/zte,zx297520v3-matrixcrm.yaml | =
  98 ++
>  Documentation/devicetree/bindings/clock/zte,zx297520v3-topcrm.yaml    | =
 122 +++
>  MAINTAINERS                                                           | =
   7 +
>  drivers/clk/Kconfig                                                   | =
   1 +
>  drivers/clk/Makefile                                                  | =
   1 +
>  drivers/clk/zte/Kconfig                                               | =
  28 +
>  drivers/clk/zte/Makefile                                              | =
   6 +
>  drivers/clk/zte/clk-regmap.c                                          | =
 237 +++++
>  drivers/clk/zte/clk-zx.c                                              | =
 192 ++++
>  drivers/clk/zte/clk-zx.h                                              | =
 137 +++
>  drivers/clk/zte/clk-zx297520v3.c                                      | =
1657 +++++++++++++++++++++++++++++++++
>  drivers/clk/zte/pll-zx.c                                              | =
 576 ++++++++++++
>  include/dt-bindings/clock/zte,zx297520v3-clk.h                        | =
 154 +++
>  include/dt-bindings/phy/zte,zx297520v3-topcrm.h                       | =
  12 +
>  include/dt-bindings/reset/zte,zx297520v3-reset.h                      | =
  62 ++
>  16 files changed, 3391 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/zte,zx297520v=
3-lspcrm.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/zte,zx297520v=
3-matrixcrm.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/zte,zx297520v=
3-topcrm.yaml
>  create mode 100644 drivers/clk/zte/Kconfig
>  create mode 100644 drivers/clk/zte/Makefile
>  create mode 100644 drivers/clk/zte/clk-regmap.c
>  create mode 100644 drivers/clk/zte/clk-zx.c
>  create mode 100644 drivers/clk/zte/clk-zx.h
>  create mode 100644 drivers/clk/zte/clk-zx297520v3.c
>  create mode 100644 drivers/clk/zte/pll-zx.c
>  create mode 100644 include/dt-bindings/clock/zte,zx297520v3-clk.h
>  create mode 100644 include/dt-bindings/phy/zte,zx297520v3-topcrm.h
>  create mode 100644 include/dt-bindings/reset/zte,zx297520v3-reset.h



-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
