Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B188BC6FD1D
	for <linux-phy@archiver.kernel.org>; Tue,  4 Apr 2023 13:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c+PCVuAm6zqHuql0VUUj2wLXBZhr6y9BEhcvSdpj994=; b=W4FNoDpCvzAD2G
	DAtFvNKuKtZHVVLLOaxfUFhL5N/OmVGtNLzKfTNAXJdnKJ7PZ85mBJpfGm7cXRL6T8Kkk3wKyx0a/
	t3MRS1YCkmacl6dPRUxqzVjZmW/XhPWhe5iAzmJo+MOGfBfx5nzBERDxS7RDQrh1G9D5A3QJzOE1f
	O/cXgYBZY3DsLqWCaI0yXCq6A/eAAgFaeyaLLKjOa3/CzPFMPEKFYupK2m2G5+IEDaptgp3U8k1J+
	E70zwsNTsEJ2U2rnZdZY48VX60BeUk4vJ3cj/XCXhq6qrK6lI+Mx3cU4BYENtai8DGH3DK0q9p61y
	r8dH74fZDnhVNMlOVuYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjgxl-001Wkh-38;
	Tue, 04 Apr 2023 13:44:41 +0000
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjgxi-001WhC-38
	for linux-phy@lists.infradead.org;
	Tue, 04 Apr 2023 13:44:40 +0000
Received: by mail-yb1-xb31.google.com with SMTP id p203so38671625ybb.13
        for <linux-phy@lists.infradead.org>; Tue, 04 Apr 2023 06:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680615877;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hXtgBK14KPM4e26uH259a5f8IZMJzPMN2I/MMharuS0=;
        b=YoKEFBnF4R/KLVFNoyxiZPhJmsqA79Ywp7c5w9VoTLbxOHPkU2UC3C6r9llU7auOt2
         itjfCCAlEVj9pzFONUJdlZR26DS+6eTnTItG8/BdsRaJG+jnGN8Mar9S9nT8YJ6YbIvt
         PczIEgFKHpzSiJdwEFeV5bQ6D7RX1kxyHOzWUeUHZxaA2y7tu1cxjyIo01gmk0ySlvUZ
         2ItBXfsRfASPgjZS7NTX/6Gf1VUStSpHFkFEFZGlN6IDFrz+MYZjApX3UW6qF8oUnIFx
         zKX/hy1RXkULjEErSDvMl/vL0BBq9FAoK0R7e10J9U08+BUnKq4oXitONkTYlPsXrglz
         sC3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680615877;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hXtgBK14KPM4e26uH259a5f8IZMJzPMN2I/MMharuS0=;
        b=rLTcrqiB5fKbYHyYvIPVchHSIrI0Whyab7UJsh6t85d3o19hV2C7+VMdwzCkDIBxza
         UJClJRcb6Rr6UbL/4+TgvAmqq0NoV5fOfvVQ9nIVK6cz6tV1YomOiua7Rxw87BxWie4l
         eIr2LONcbXgaL8u8alEOfVbXnFSCJGS1WzZMl/2Ibnkw7nKf814fO3fBLZDcDzj01IF/
         2Ra6uLPEXA0w3AFtkW+ATvIVS0NJeoO5/mKjQTrp13Xk5mF3EnHlHUgyeXwaL3N3DR/i
         dlN24Bgu4dbpDALXYT7Udta1JDtQfnAV55nJ6ITe8yleG9q8iE9oLJKfz1jGKHaP/M30
         LBdg==
X-Gm-Message-State: AAQBX9ea9gy2ZGrF394wJyYlDEvrynpqPqRc6sfIXBiC7ZUWyV0zNETm
	B3/BffHnTJmgf3DlL4WwUireaDR2DwjRONycdUUDRQ==
X-Google-Smtp-Source: AKy350ZS+8XVi9C6uhFr1kyc6XrkkRM+FluRwKkVz9PMLEz3Sm01NQlNpsxUuoJH/tcqHDQrLl5d34Nf5Z8uV0fle0E=
X-Received: by 2002:a25:df10:0:b0:b75:8ac3:d5d2 with SMTP id
 w16-20020a25df10000000b00b758ac3d5d2mr1901844ybg.4.1680615876928; Tue, 04 Apr
 2023 06:44:36 -0700 (PDT)
MIME-Version: 1.0
References: <20221018-clk-range-checks-fixes-v3-0-9a1358472d52@cerno.tech> <20221018-clk-range-checks-fixes-v3-34-9a1358472d52@cerno.tech>
In-Reply-To: <20221018-clk-range-checks-fixes-v3-34-9a1358472d52@cerno.tech>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 4 Apr 2023 15:44:25 +0200
Message-ID: <CACRpkdYcHaUBG1qFVb=mi40SyEp=VyYzPmxNn-Zrmpqs1QH+kQ@mail.gmail.com>
Subject: Re: [PATCH v3 34/65] clk: ux500: prcmu: Add a determine_rate hook
To: Maxime Ripard <maxime@cerno.tech>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	=?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, 
	Manivannan Sadhasivam <mani@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, 
	Claudiu Beznea <claudiu.beznea@microchip.com>, Max Filippov <jcmvbkbc@gmail.com>, 
	Charles Keepax <ckeepax@opensource.cirrus.com>, 
	Richard Fitzgerald <rf@opensource.cirrus.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	David Lechner <david@lechnology.com>, Sekhar Nori <nsekhar@ti.com>, Abel Vesa <abelvesa@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	NXP Linux Team <linux-imx@nxp.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Dinh Nguyen <dinguyen@kernel.org>, 
	Peter De Schrijver <pdeschrijver@nvidia.com>, Prashant Gaikwad <pgaikwad@nvidia.com>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Ulf Hansson <ulf.hansson@linaro.org>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Alessandro Zummo <a.zummo@towertech.it>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Paul Cercueil <paul@crapouillou.net>, 
	Orson Zhai <orsonzhai@gmail.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Chunyan Zhang <zhang.lyra@gmail.com>, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	linux-arm-kernel@lists.infradead.org, linux-actions@lists.infradead.org, 
	patches@opensource.cirrus.com, linux-stm32@st-md-mailman.stormreply.com, 
	linux-mediatek@lists.infradead.org, linux-renesas-soc@vger.kernel.org, 
	linux-tegra@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-phy@lists.infradead.org, linux-rtc@vger.kernel.org, 
	linux-sunxi@lists.linux.dev, alsa-devel@alsa-project.org, 
	linux-mips@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_064439_017548_EBA2B8EA 
X-CRM114-Status: GOOD (  13.66  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBBcHIgNCwgMjAyMyBhdCAyOjQ14oCvUE0gTWF4aW1lIFJpcGFyZCA8bWF4aW1lQGNl
cm5vLnRlY2g+IHdyb3RlOgoKPiBUaGUgVVg1MDAgUFJDTVUgImNsa291dCIgY2xvY2sgaW1wbGVt
ZW50cyBhIG11eCB3aXRoIGEgc2V0X3BhcmVudCBob29rLAo+IGJ1dCBkb2Vzbid0IHByb3ZpZGUg
YSBkZXRlcm1pbmVfcmF0ZSBpbXBsZW1lbnRhdGlvbi4KPgo+IFRoaXMgaXMgYSBiaXQgb2RkLCBz
aW5jZSBzZXRfcGFyZW50KCkgaXMgdGhlcmUgdG8sIGFzIGl0cyBuYW1lIGltcGxpZXMsCj4gY2hh
bmdlIHRoZSBwYXJlbnQgb2YgYSBjbG9jay4gSG93ZXZlciwgdGhlIG1vc3QgbGlrZWx5IGNhbmRp
ZGF0ZSB0bwo+IHRyaWdnZXIgdGhhdCBwYXJlbnQgY2hhbmdlIGlzIGEgY2FsbCB0byBjbGtfc2V0
X3JhdGUoKSwgd2l0aAo+IGRldGVybWluZV9yYXRlKCkgZmlndXJpbmcgb3V0IHdoaWNoIHBhcmVu
dCBpcyB0aGUgYmVzdCBzdWl0ZWQgZm9yIGEKPiBnaXZlbiByYXRlLgoKTm90IGV2ZW4gdGhhdC4K
ClRoZSBwYXJlbnQgaXMgc2VsZWN0ZWQgZnJvbSB0aGUgc2Vjb25kIGNlbGwgb2YgdGhlIGRldmlj
ZSB0cmVlCnNwZWNpZmllciwgYW5kIHRoZSBkaXZpc29yIGZyb20gdGhlIHRoaXJkIGNlbGwuIFNl
ZToKRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL3N0ZXJpY3Nzb24sdTg1
MDAtY2xrcy55YW1sCgpTbyB0aGlzIGRlZmluaXRlbHkgZG9lcyBub3QgcmVwYXJlbnQuCgpZb3Vy
cywKTGludXMgV2FsbGVpagoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
