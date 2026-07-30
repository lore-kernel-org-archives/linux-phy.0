Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B707BC5516D
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 17:38:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gPquxRNrlBmwGtFkd6XSVro4/sF9P0OH8AKdgehhf7Q=; b=p5MhmZbfi1hQzn
	jZFM4W0RAhQrGcPMrXTbKyupOOcfaofpl134ghZn3fQBrkI+Do67SOvhP2arXShj3CeSrFiHVk9zB
	bHlhql5zJ+j5igAei4ownh+sfPk21579QVhlYD6NBHydc1lPiX4KuvVl7ZJ85LzsAXZJdiVyOQKcN
	B7wx3T4uzs7rjeWv/NaPPE20dtfajPbgxkqiaR6ZGiZGhnjcHuYisBoWOOTFkV+rGJ3QPJF+LEgVH
	Q0rZ3gYfmXy8uNJiTy41DdSoJuoaieMy/AeVfFECgRTRX3vohTxvqlPgLtGczCbLy3tA2Ql3zBYcN
	oKOi9bx/2/jX6G67mEDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpUi3-0000000B6M1-0954;
	Thu, 30 Jul 2026 17:38:19 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpUhz-0000000B6L3-39GF
	for linux-phy@lists.infradead.org;
	Thu, 30 Jul 2026 17:38:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1785433094;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PRVLUAMqt9btSYcKLPYN+Dg017FHNaeUxumso8uAL/U=;
	b=MAx9AqKikPvn6iGcLjQRe1I8PVTczFfauGZlO2+upx1zr2ppAySmazVzPigFDSfY7T5nl8
	6/iUNA0G9BU2d4Q3xe7U0koYmw9RLYl7N+M7B/cx+ikbKu+w/V5+DAFC0vy9YydWDCsu3v
	6S5wInLcL4L0gYfsQ+4EAGl58wuWrpM=
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com
 [209.85.128.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-443-5Hs3DFG6M-CDn2Du9n4Lsw-1; Thu, 30 Jul 2026 13:38:12 -0400
X-MC-Unique: 5Hs3DFG6M-CDn2Du9n4Lsw-1
X-Mimecast-MFC-AGG-ID: 5Hs3DFG6M-CDn2Du9n4Lsw_1785433092
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-81aea53d559so1976107b3.0
        for <linux-phy@lists.infradead.org>; Thu, 30 Jul 2026 10:38:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785433092; x=1786037892;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:content-type:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=PRVLUAMqt9btSYcKLPYN+Dg017FHNaeUxumso8uAL/U=;
        b=S+PEX/sM1GSBspxk4A572O6WH5+DUWXNlxwlxblzDUDI8V/BfzrEp6dOutXRwiNgP1
         SHft7PAOUbTSKtJ/cUQqlg1UMFP5NCD2RWOuC8hjgsh591BMVug3mI1hq6Ke6hLGtJ6e
         Kp2OP7YMo/roD5OCkv7rH5IzZlmQPLrPCqJdfX9p3SR9dIwkTyoV1bzbJOkIVhYKDxGs
         /sp2Paz7Rb16U98yjjrWQTWE52QPIF6Ye2ATEAm5uDP133de5374Npwe9USZbaOyDKzj
         5NwWxrlABUwJLX3U9u2xSn59swK4jud17DRm+sjsAmSKc2qzcbmhR8QGJwV5mQ7PpY4N
         1PbQ==
X-Forwarded-Encrypted: i=1; AHgh+RpOwerNYuhmEHBNO+DoxAHjcKZ2IIoREl1xfI1Ie9CaWofsZeI85pNmQghxHRcDm5WF0ndnlICaXzE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxZk0WMPtJA3qk9rvf/wjBJE4yNsEMeTDvsugcwPV7yEgG9H4IS
	0okbOK/vmb5Sg9l2zqaucEDa0/e3TfKUhl6uxNxpCMWgYH/EPOtRnxOBA1ZNAa9yHnyFvWbFeIN
	q9Umscr23rm0J+ZqyTf2ZvFEoOVLwUbe9b6CdWXLyByTE5VnAqS+9QBEEs9G7skNALNo=
X-Gm-Gg: AR+sD10DbICCnYiBInQ820ia2O/Qi08UjydsettSqulp3TQswQ08G9DFzkRWOCCeBJD
	oskOFKJZ+hmXORRE84xYMeJReDmCE2Xq7a2Rs/yEaofQahuU/89lb+OdoLrUiEQXzPYyTIC0Qqf
	U39HlRXuabQn4kT+3rnODYD3q4c768aLfhVbo1I5p7/B5cz4Lf8dxsccTemGRaGl1C8ioutwh6T
	2j5GAaX5xY7idouvabLL5bi15Sq1SYCn+SFl+QlsPFHnEdxGLp8I5qXE+Qly5k3+gXc1fCv0Qle
	oeUG1nFep5S0dzpNPe5qbIMULj8cDjlGDCAos6l5X1QR2viwxDeRTkCFn90dtL6/ubpi4G77Uf9
	Pik/CE/fulOZU68vOQMA4z8YmGYzHt84m5H8=
X-Received: by 2002:a05:690c:698f:b0:81e:fd36:ff73 with SMTP id 00721157ae682-81fb891d54cmr25018607b3.5.1785433091926;
        Thu, 30 Jul 2026 10:38:11 -0700 (PDT)
X-Received: by 2002:a05:690c:698f:b0:81e:fd36:ff73 with SMTP id 00721157ae682-81fb891d54cmr25018367b3.5.1785433091480;
        Thu, 30 Jul 2026 10:38:11 -0700 (PDT)
Received: from redhat.com (c-73-183-53-213.hsd1.pa.comcast.net. [73.183.53.213])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-81fb87315cdsm14274757b3.0.2026.07.30.10.38.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2026 10:38:10 -0700 (PDT)
Date: Thu, 30 Jul 2026 13:38:08 -0400
From: Brian Masney <bmasney@redhat.com>
To: Stefan =?iso-8859-1?Q?D=F6singer?= <stefandoesinger@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>, Lee Jones <lee@kernel.org>,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org, mfd@lists.linux.dev
Subject: Re: [PATCH v8 05/12] clk: zte: Add Clock registration infrastructure
Message-ID: <amuMADxexEuJJG44@redhat.com>
References: <20260727-zx29clk-v8-0-7a107b00f1dd@gmail.com>
 <amiw7mfPfSPjLHLH@redhat.com>
 <ami0TaY84IslWZyo@redhat.com>
 <MwDLqBgXR7G6dGkTtCaRrQ@gmail.com>
MIME-Version: 1.0
In-Reply-To: <MwDLqBgXR7G6dGkTtCaRrQ@gmail.com>
User-Agent: Mutt/2.4.0 (2026-06-19)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: rDRhtyzCPFBetc16n3jystBk0XjD6mqPMVpUaW2OB4c_1785433092
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_103815_866196_79085B96 
X-CRM114-Status: GOOD (  21.60  )
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

On Wed, Jul 29, 2026 at 12:25:34AM +0300, Stefan D=F6singer wrote:
> Thanks for the review!
> =

> Am Dienstag, 28. Juli 2026, 16:53:17 Ostafrikanische Zeit schrieben Sie:
> > Looking into the other patches. There's more mixing of the clk provider
> > calling the clk consumer APIs here. It looks like this just takes a
> > reference and holds them. Would moving to parent_data address this?
> =

> I think so. parent_data::fw_name is indeed something I have been looking =
for =

> and didn't stumble across myself. And I suspect when you say "use =

> parent_data", you don't mean "use parent_data.name everywhere".
> =

> But it raises the question of how to handle internal clocks, e.g. foo_gat=
e-
> >foo_div->foo_mux->clock-26m. Only "clock-26m" is passed through the DT a=
nd =

> found via fw_name, and only foo_gate is exported.
> =

> For the other clocks I currently rely on the string matching to resolve t=
he =

> parent named in the static init data to an actual registered clk_hw. The =

> alternative I see is storing the struct clk_hw * in a table by index and =
pass =

> it in parent_data.hw, but that'd require managing the extra indices. Or b=
uild =

> a clock-local name->clk_hw lookup, but then I am just reinventing the old=
 name =

> matching.
> =

> Am I missing something obvious? Is there a canonical implementation somew=
here =

> that implements modern best practices? I learned that looking at existing =

> drivers isn't always a reliable guide.

You'll want to register all of the clocks with the subsystem. Take a
look at drivers/clk/qcom/gcc-sa8775p.c and here's an example I picked
at random that shows how you can reference the parents with the
parent_data:

static const struct clk_parent_data gcc_parent_data_8[] =3D {
        { .index =3D DT_BI_TCXO },
        { .hw =3D &gcc_gpll7.clkr.hw },
        { .index =3D DT_RXC1_REF_CLK },
        { .hw =3D &gcc_gpll0_out_even.clkr.hw },
};

static struct clk_rcg2 gcc_emac1_rgmii_clk_src =3D {
	...
        .clkr.hw.init =3D &(const struct clk_init_data){
                .name =3D "gcc_emac1_rgmii_clk_src",
                .parent_data =3D gcc_parent_data_8,
                .num_parents =3D ARRAY_SIZE(gcc_parent_data_8),
                .ops =3D &clk_rcg2_shared_ops,
        },
};      =


Brian


-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
