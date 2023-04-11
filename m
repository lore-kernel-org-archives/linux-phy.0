Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF328C77B75
	for <linux-phy@archiver.kernel.org>; Tue, 11 Apr 2023 10:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=idN8vmdhTo6ixaCDLYKapqvgkmguCqrocDTP67OKOAo=; b=x198mTT8iRpYE9
	eYF+llY4aM3gYB/oq8gXN6PdKHOsuFMoh0HpkTwanYGkfMoLiJY4PlZCo9FEnYtmTG+t9NGwNmbBk
	6yYbynZk0n59DJ2YVONxaaz0RysFSbfyonisZxP03kMMZlz/jhBEBLh6YcS5IPpRiD61ztMSGlPk3
	Yy4eap3U48SOqgPp6CV9khftZ8G/J1bN66RlRs/aDtnO4q+CuzPkXS5saB/NIhc76k5ZgdE0ZGuIX
	lmOz62cic42mXzkQbcWEL2G1PWJgWrTzS1DJkoG8tDd9SaUtOqa45WxK8u0f1JcHv+45nNHO2BD9W
	45JTQU9P0h70F5XojgKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmBEZ-00HH5O-0k;
	Tue, 11 Apr 2023 10:28:19 +0000
Received: from mail-oa1-f43.google.com ([209.85.160.43])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmBET-00HH13-3C;
	Tue, 11 Apr 2023 10:28:15 +0000
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-1841c57c221so11458680fac.3;
        Tue, 11 Apr 2023 03:28:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681208892;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9k4ZTujQ4vL3rn+nuolFAvnH5smJoZ+VnOtxKctHstQ=;
        b=toyI9fRwOVmk9yi4NQDIgHaO/c2X1wBPBtPbxTkRu3mNqKklbGc/Qi/kxl5z/uh6uJ
         uGs4SxG7yuoCV8am2DG3BXJSen+Qvig7IIMYbHBKjXVTlucDul/C4LdnPqgo4V2/KYYo
         rm8FB4mhraIAqWzzv/0KM6hGbUTUakx4t3lJm/Xpdz5t/S3rpqomwBHfahIVNwkSJLXd
         MD0iOVOI/MPQLwAtRwB4HDTcfMgub8oaV0vwdGbjHVmZciKJZtwYCJKd+I3Y/t9M+xap
         KJhMvvzPlylbMY5BfEfNRzvb7pCjkpDtQJQfA6i6BjQlKPQGiawyHsctGueHx79HVeG4
         pt2w==
X-Gm-Message-State: AAQBX9cTPv7/dvHDtQZkoY/x4MeDi8vk91/5XZaySe0QROxubxil1X9o
	mKsjqoJRCQc0kp7fwgXUkuKyExPzsfwPE7m2
X-Google-Smtp-Source: AKy350Zmy4UoJNspcHhjn1wn7BBkEJfaMSb0TEWGqiyjTvZz7nfiZNQiubr+mnpuelpE9051ZK9URQ==
X-Received: by 2002:a05:6870:5251:b0:184:50d4:9a96 with SMTP id o17-20020a056870525100b0018450d49a96mr3445586oai.46.1681208891909;
        Tue, 11 Apr 2023 03:28:11 -0700 (PDT)
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com. [209.85.167.180])
        by smtp.gmail.com with ESMTPSA id s5-20020a05683004c500b006a2f4a754e8sm5190464otd.60.2023.04.11.03.28.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Apr 2023 03:28:11 -0700 (PDT)
Received: by mail-oi1-f180.google.com with SMTP id bb20so189683oib.12;
        Tue, 11 Apr 2023 03:28:11 -0700 (PDT)
X-Received: by 2002:a25:d74c:0:b0:b46:c5aa:86ef with SMTP id
 o73-20020a25d74c000000b00b46c5aa86efmr5126210ybg.12.1681208871324; Tue, 11
 Apr 2023 03:27:51 -0700 (PDT)
MIME-Version: 1.0
References: <20221018-clk-range-checks-fixes-v3-0-9a1358472d52@cerno.tech> <20221018-clk-range-checks-fixes-v3-28-9a1358472d52@cerno.tech>
In-Reply-To: <20221018-clk-range-checks-fixes-v3-28-9a1358472d52@cerno.tech>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 11 Apr 2023 12:27:38 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXUEOP_3zjf8nwDyHvZVG-D0AsBjnr=esKzejMMcEiLSQ@mail.gmail.com>
Message-ID: <CAMuHMdXUEOP_3zjf8nwDyHvZVG-D0AsBjnr=esKzejMMcEiLSQ@mail.gmail.com>
Subject: Re: [PATCH v3 28/65] clk: renesas: r9a06g032: Add a determine_rate hook
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
	Ulf Hansson <ulf.hansson@linaro.org>, Linus Walleij <linus.walleij@linaro.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Vinod Koul <vkoul@kernel.org>, 
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
	linux-mips@vger.kernel.org, Gareth Williams <gareth.williams.jx@renesas.com>, 
	Herve Codina <herve.codina@bootlin.com>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	Ralph Siemsen <ralph.siemsen@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_032814_036507_AA78942D 
X-CRM114-Status: GOOD (  32.09  )
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

Q0MgR2FyZXRoLCBIZXJ2w6ksIE1pcXVlbCwgUmFscGgKCk9uIFR1ZSwgQXByIDQsIDIwMjMgYXQg
Mjo0NOKAr1BNIE1heGltZSBSaXBhcmQgPG1heGltZUBjZXJuby50ZWNoPiB3cm90ZToKPiBUaGUg
UmVuZXNhcyByOWEwNmcwMzIgYml0c2VsZWN0IGNsb2NrIGltcGxlbWVudHMgYSBtdXggd2l0aCBh
IHNldF9wYXJlbnQKPiBob29rLCBidXQgZG9lc24ndCBwcm92aWRlIGEgZGV0ZXJtaW5lX3JhdGUg
aW1wbGVtZW50YXRpb24uCj4KPiBUaGlzIGlzIGEgYml0IG9kZCwgc2luY2Ugc2V0X3BhcmVudCgp
IGlzIHRoZXJlIHRvLCBhcyBpdHMgbmFtZSBpbXBsaWVzLAo+IGNoYW5nZSB0aGUgcGFyZW50IG9m
IGEgY2xvY2suIEhvd2V2ZXIsIHRoZSBtb3N0IGxpa2VseSBjYW5kaWRhdGUgdG8KPiB0cmlnZ2Vy
IHRoYXQgcGFyZW50IGNoYW5nZSBpcyBhIGNhbGwgdG8gY2xrX3NldF9yYXRlKCksIHdpdGgKPiBk
ZXRlcm1pbmVfcmF0ZSgpIGZpZ3VyaW5nIG91dCB3aGljaCBwYXJlbnQgaXMgdGhlIGJlc3Qgc3Vp
dGVkIGZvciBhCj4gZ2l2ZW4gcmF0ZS4KPgo+IFRoZSBvdGhlciB0cmlnZ2VyIHdvdWxkIGJlIGEg
Y2FsbCB0byBjbGtfc2V0X3BhcmVudCgpLCBidXQgaXQncyBmYXIgbGVzcwo+IHVzZWQsIGFuZCBp
dCBkb2Vzbid0IGxvb2sgbGlrZSB0aGVyZSdzIGFueSBvYnZpb3VzIHVzZXIgZm9yIHRoYXQgY2xv
Y2suCj4KPiBTbywgdGhlIHNldF9wYXJlbnQgaG9vayBpcyBlZmZlY3RpdmVseSB1bnVzZWQsIHBv
c3NpYmx5IGJlY2F1c2Ugb2YgYW4KPiBvdmVyc2lnaHQuIEhvd2V2ZXIsIGl0IGNvdWxkIGFsc28g
YmUgYW4gZXhwbGljaXQgZGVjaXNpb24gYnkgdGhlCj4gb3JpZ2luYWwgYXV0aG9yIHRvIGF2b2lk
IGFueSByZXBhcmVudGluZyBidXQgdGhyb3VnaCBhbiBleHBsaWNpdCBjYWxsIHRvCj4gY2xrX3Nl
dF9wYXJlbnQoKS4KPgo+IFRoZSBsYXR0ZXIgY2FzZSB3b3VsZCBiZSBlcXVpdmFsZW50IHRvIHNl
dHRpbmcgdGhlIGZsYWcKPiBDTEtfU0VUX1JBVEVfTk9fUkVQQVJFTlQsIHRvZ2V0aGVyIHdpdGgg
c2V0dGluZyBvdXIgZGV0ZXJtaW5lX3JhdGUgaG9vawo+IHRvIF9fY2xrX211eF9kZXRlcm1pbmVf
cmF0ZSgpLiBJbmRlZWQsIGlmIG5vIGRldGVybWluZV9yYXRlCj4gaW1wbGVtZW50YXRpb24gaXMg
cHJvdmlkZWQsIGNsa19yb3VuZF9yYXRlKCkgKHRocm91Z2gKPiBjbGtfY29yZV9yb3VuZF9yYXRl
X25vbG9jaygpKSB3aWxsIGNhbGwgaXRzZWxmIG9uIHRoZSBwYXJlbnQgaWYKPiBDTEtfU0VUX1JB
VEVfUEFSRU5UIGlzIHNldCwgYW5kIHdpbGwgbm90IGNoYW5nZSB0aGUgY2xvY2sgcmF0ZQo+IG90
aGVyd2lzZS4gX19jbGtfbXV4X2RldGVybWluZV9yYXRlKCkgaGFzIHRoZSBleGFjdCBzYW1lIGJl
aGF2aW9yIHdoZW4KPiBDTEtfU0VUX1JBVEVfTk9fUkVQQVJFTlQgaXMgc2V0Lgo+Cj4gQW5kIGlm
IGl0IHdhcyBhbiBvdmVyc2lnaHQsIHRoZW4gd2UgYXJlIGF0IGxlYXN0IGV4cGxpY2l0IGFib3V0
IG91cgo+IGJlaGF2aW9yIG5vdyBhbmQgaXQgY2FuIGJlIGZ1cnRoZXIgcmVmaW5lZCBkb3duIHRo
ZSBsaW5lLgo+Cj4gU2lnbmVkLW9mZi1ieTogTWF4aW1lIFJpcGFyZCA8bWF4aW1lQGNlcm5vLnRl
Y2g+CgpMR1RNLCBzbwpSZXZpZXdlZC1ieTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5l
c2FzQGdsaWRlci5iZT4KQnV0IEkgZG8gbm90IGhhdmUgdGhlIGhhcmR3YXJlLgoKPiAtLS0gYS9k
cml2ZXJzL2Nsay9yZW5lc2FzL3I5YTA2ZzAzMi1jbG9ja3MuYwo+ICsrKyBiL2RyaXZlcnMvY2xr
L3JlbmVzYXMvcjlhMDZnMDMyLWNsb2Nrcy5jCj4gQEAgLTExMjEsNiArMTEyMSw3IEBAIHN0YXRp
YyBpbnQgcjlhMDZnMDMyX2Nsa19tdXhfc2V0X3BhcmVudChzdHJ1Y3QgY2xrX2h3ICpodywgdTgg
aW5kZXgpCj4gIH0KPgo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGNsa19vcHMgY2xrX2JpdHNlbGVj
dF9vcHMgPSB7Cj4gKyAgICAgICAuZGV0ZXJtaW5lX3JhdGUgPSBfX2Nsa19tdXhfZGV0ZXJtaW5l
X3JhdGUsCj4gICAgICAgICAuZ2V0X3BhcmVudCA9IHI5YTA2ZzAzMl9jbGtfbXV4X2dldF9wYXJl
bnQsCj4gICAgICAgICAuc2V0X3BhcmVudCA9IHI5YTA2ZzAzMl9jbGtfbXV4X3NldF9wYXJlbnQs
Cj4gIH07Cj4gQEAgLTExNDUsNyArMTE0Niw3IEBAIHI5YTA2ZzAzMl9yZWdpc3Rlcl9iaXRzZWwo
c3RydWN0IHI5YTA2ZzAzMl9wcml2ICpjbG9ja3MsCj4KPiAgICAgICAgIGluaXQubmFtZSA9IGRl
c2MtPm5hbWU7Cj4gICAgICAgICBpbml0Lm9wcyA9ICZjbGtfYml0c2VsZWN0X29wczsKPiAtICAg
ICAgIGluaXQuZmxhZ3MgPSBDTEtfU0VUX1JBVEVfUEFSRU5UOwo+ICsgICAgICAgaW5pdC5mbGFn
cyA9IENMS19TRVRfUkFURV9QQVJFTlQgfCBDTEtfU0VUX1JBVEVfTk9fUkVQQVJFTlQ7Cj4gICAg
ICAgICBpbml0LnBhcmVudF9uYW1lcyA9IG5hbWVzOwo+ICAgICAgICAgaW5pdC5udW1fcGFyZW50
cyA9IDI7Cj4KCkdye29ldGplLGVldGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2Vl
cnQKCi0tIApHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9u
ZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25z
IHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4g
SSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29t
ZXRoaW5nIGxpa2UgdGhhdC4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51
cyBUb3J2YWxkcwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
