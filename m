Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCF29C4332F
	for <linux-phy@archiver.kernel.org>; Fri,  4 Nov 2022 18:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-reply-to:
	Date:Subject:Cc:To:From:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rGTgQRTvJ7+wpwlkKMLLuJ2D2RJ5LLC2QiImyoc9qek=; b=ONvdfgXxCS0SfZ
	5OW4CT3icuDm7ue4SPZxvzgj/b1ba0eY/9yQTcwcq0ETHL7+wlht6I4gXSei+n9RxRXdfLd8YGwZu
	ei6aLVNNee7tTiD9l4Cr8VvuKaOzjMOi+nNc7zz7synUJMLaIr46NQa/zO2EecrYVJSQgy+IFaKoo
	Lt5rsM0VzrOcl0cxGipypek91D+GAB2wvq/aK5aAiF3DT6gRDxz5d0VW77uCSS++2o/jSvdeaVey1
	NN+PU5LuGWWBA+rQb1TBTt+beHB23hpER1AKI6DiB3cxb2d0hTPJmx1JglplWwQcK88lJD3YUYs7Q
	+n8IF0X+E8+eDZODfXOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1or1AC-004kUE-Vx; Fri, 04 Nov 2022 18:11:33 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1or1A7-004kT1-L4; Fri, 04 Nov 2022 18:11:30 +0000
Received: by mail-wm1-x32c.google.com with SMTP id p16so3476211wmc.3;
        Fri, 04 Nov 2022 11:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:references:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CgAHyV5MssUU8DmgqTLqByPHjrUlZTpRzsXy7QZTV1w=;
        b=m1k1aGhFcGwAzy8+jR8i8dgnxBKgmbv+HEcBN9clOnBC8JDxQ1WLH/jaC98+SUuhn1
         ojpUIvzLvAjOEtONQNG3fEjMYr6YmyE21HCNBu13dHQQCKT1MZYzip/HLcRMuJacgFsk
         D55A4srqhE9k1graGmYJvC73InZQsK8+3y7hORWhx8V9sPZvLSdaAKZue8yFET0sqAK6
         QCfmTlWLBXdiCGceVK43T3rcfW1aWRAA7EsaVybuem8YgF0fY+TkmF3j/WgfSTXHeBZr
         9yfwVW6BUgHERrFBi1RgnqxfwanJH3Intmfl0rdZ0bNVoL/stqFGyIUMqw38czj+U/IY
         +ZRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:references:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=CgAHyV5MssUU8DmgqTLqByPHjrUlZTpRzsXy7QZTV1w=;
        b=79GoWja4NB2dgfrQiAwynwE22mT+oibb+4zxV7xF03ivMjhXrCBxpX9oQOqNPCSWrU
         bDNEMSYw580FwwaHKGpmSYXfD27SGdislTqEQYXyrIiijAHafK/cS63IGZpxTHo7+rPL
         Xvz5QCP4LUOymau38gBcW7NE/C7PgvydjBWHSQv/XJf9Id0EiMZUVlHUbjkoJv9njDV7
         XjGuqeFt0BFxdFE19nVCm4P1DyJw71iGTsXMci2XPwIZmjGokZLT48r+9l4agohUwQUD
         NE6Pw8rQjTvu01OtbblF+vaSkWwdG0YumF1x3PWtxfgwfwffnZCLUzq0Kua1eXtohfFi
         CS6Q==
X-Gm-Message-State: ACrzQf2Hl1wZK1lXLchraPvovl8Nxmg9GLekvZBkGhBNjPh3cCLoN27m
	wooxv3KYl2V3CMkXomldgZ4=
X-Google-Smtp-Source: AMsMyM5+00Cvx4Zit5cSiVEHfTNn4dr0i6mIADmjwE6QFA7y0/yyBqq7C4ech+m2YPARidv5n/8G+w==
X-Received: by 2002:a05:600c:21c9:b0:3cf:68f8:7901 with SMTP id x9-20020a05600c21c900b003cf68f87901mr283147wmj.69.1667585484372;
        Fri, 04 Nov 2022 11:11:24 -0700 (PDT)
Received: from localhost (94.197.10.32.threembb.co.uk. [94.197.10.32])
        by smtp.gmail.com with ESMTPSA id az2-20020adfe182000000b00226dba960b4sm36409wrb.3.2022.11.04.11.11.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Nov 2022 11:11:23 -0700 (PDT)
References: <20221018-clk-range-checks-fixes-v2-0-f6736dec138e@cerno.tech>
 <20221018-clk-range-checks-fixes-v2-56-f6736dec138e@cerno.tech>
 <80VTKR.CE8RVN8M3ZYK3@crapouillou.net>
 <20221104145946.orsyrhiqvypisl5j@houat>
From: Aidan MacDonald <aidanmacdonald.0x0@gmail.com>
To: Maxime Ripard <maxime@cerno.tech>
Cc: Paul Cercueil <paul@crapouillou.net>, Stephen Boyd <sboyd@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>, Nicolas Ferre
 <nicolas.ferre@microchip.com>, Thierry Reding <thierry.reding@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>, Shawn Guo <shawnguo@kernel.org>, Fabio
 Estevam <festevam@gmail.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Claudiu Beznea <claudiu.beznea@microchip.com>, Michael Turquette
 <mturquette@baylibre.com>, Dinh Nguyen <dinguyen@kernel.org>, Chunyan
 Zhang <zhang.lyra@gmail.com>, Manivannan Sadhasivam <mani@kernel.org>,
 Andreas =?utf-8?Q?F=C3=A4rber?= <afaerber@suse.de>, Jonathan Hunter
 <jonathanh@nvidia.com>,
 Abel Vesa <abelvesa@kernel.org>, Charles Keepax
 <ckeepax@opensource.cirrus.com>, Alessandro Zummo <a.zummo@towertech.it>,
 Peter De Schrijver <pdeschrijver@nvidia.com>, Orson Zhai
 <orsonzhai@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Prashant Gaikwad <pgaikwad@nvidia.com>, Liam Girdwood
 <lgirdwood@gmail.com>, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Samuel Holland <samuel@sholland.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Richard Fitzgerald <rf@opensource.cirrus.com>,
 Vinod Koul <vkoul@kernel.org>, NXP Linux Team <linux-imx@nxp.com>, Sekhar
 Nori <nsekhar@ti.com>, Kishon Vijay Abraham I <kishon@kernel.org>, Linus
 Walleij <linus.walleij@linaro.org>, Takashi Iwai <tiwai@suse.com>, David
 Airlie <airlied@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Baolin Wang <baolin.wang@linux.alibaba.com>,
 David Lechner <david@lechnology.com>, Sascha Hauer
 <s.hauer@pengutronix.de>, Mark Brown <broonie@kernel.org>, Max Filippov
 <jcmvbkbc@gmail.com>, Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-stm32@st-md-mailman.stormreply.com, alsa-devel@alsa-project.org,
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-actions@lists.infradead.org, linux-clk@vger.kernel.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 patches@opensource.cirrus.com, linux-tegra@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 56/65] clk: ingenic: cgu: Switch to determine_rate
Date: Fri, 04 Nov 2022 17:35:29 +0000
In-reply-to: <20221104145946.orsyrhiqvypisl5j@houat>
Message-ID: <cp7Yh29ndlOOi1yW8KwCcpzoLPLxm1vR@localhost>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_111127_716627_FFFB4CF4 
X-CRM114-Status: GOOD (  43.50  )
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

Ck1heGltZSBSaXBhcmQgPG1heGltZUBjZXJuby50ZWNoPiB3cml0ZXM6Cgo+IEhpIFBhdWwsCj4K
PiBPbiBGcmksIE5vdiAwNCwgMjAyMiBhdCAwMjozMToyMFBNICswMDAwLCBQYXVsIENlcmN1ZWls
IHdyb3RlOgo+PiBMZSB2ZW4uIDQgbm92LiAyMDIyIMOgIDE0OjE4OjEzICswMTAwLCBNYXhpbWUg
UmlwYXJkIDxtYXhpbWVAY2Vybm8udGVjaD4gYQo+PiDDqWNyaXQgOgo+PiA+IFRoZSBJbmdlbmlj
IENHVSBjbG9ja3MgaW1wbGVtZW50cyBhIG11eCB3aXRoIGEgc2V0X3BhcmVudCBob29rLCBidXQK
Pj4gPiBkb2Vzbid0IHByb3ZpZGUgYSBkZXRlcm1pbmVfcmF0ZSBpbXBsZW1lbnRhdGlvbi4KPj4g
Pgo+PiA+IFRoaXMgaXMgYSBiaXQgb2RkLCBzaW5jZSBzZXRfcGFyZW50KCkgaXMgdGhlcmUgdG8s
IGFzIGl0cyBuYW1lIGltcGxpZXMsCj4+ID4gY2hhbmdlIHRoZSBwYXJlbnQgb2YgYSBjbG9jay4g
SG93ZXZlciwgdGhlIG1vc3QgbGlrZWx5IGNhbmRpZGF0ZSB0bwo+PiA+IHRyaWdnZXIgdGhhdCBw
YXJlbnQgY2hhbmdlIGlzIGEgY2FsbCB0byBjbGtfc2V0X3JhdGUoKSwgd2l0aAo+PiA+IGRldGVy
bWluZV9yYXRlKCkgZmlndXJpbmcgb3V0IHdoaWNoIHBhcmVudCBpcyB0aGUgYmVzdCBzdWl0ZWQg
Zm9yIGEKPj4gPiBnaXZlbiByYXRlLgo+PiA+Cj4+ID4gVGhlIG90aGVyIHRyaWdnZXIgd291bGQg
YmUgYSBjYWxsIHRvIGNsa19zZXRfcGFyZW50KCksIGJ1dCBpdCdzIGZhciBsZXNzCj4+ID4gdXNl
ZCwgYW5kIGl0IGRvZXNuJ3QgbG9vayBsaWtlIHRoZXJlJ3MgYW55IG9idmlvdXMgdXNlciBmb3Ig
dGhhdCBjbG9jay4KPj4gPgo+PiA+IFNvLCB0aGUgc2V0X3BhcmVudCBob29rIGlzIGVmZmVjdGl2
ZWx5IHVudXNlZCwgcG9zc2libHkgYmVjYXVzZSBvZiBhbgo+PiA+IG92ZXJzaWdodC4gSG93ZXZl
ciwgaXQgY291bGQgYWxzbyBiZSBhbiBleHBsaWNpdCBkZWNpc2lvbiBieSB0aGUKPj4gPiBvcmln
aW5hbCBhdXRob3IgdG8gYXZvaWQgYW55IHJlcGFyZW50aW5nIGJ1dCB0aHJvdWdoIGFuIGV4cGxp
Y2l0IGNhbGwgdG8KPj4gPiBjbGtfc2V0X3BhcmVudCgpLgo+PiA+Cj4+ID4gVGhlIGRyaXZlciBk
b2VzIGltcGxlbWVudCByb3VuZF9yYXRlKCkgdGhvdWdoLCB3aGljaCBtZWFucyB0aGF0IHdlIGNh
bgo+PiA+IGNoYW5nZSB0aGUgcmF0ZSBvZiB0aGUgY2xvY2ssIGJ1dCB3ZSB3aWxsIG5ldmVyIGdl
dCB0byBjaGFuZ2UgdGhlCj4+ID4gcGFyZW50Lgo+PiA+Cj4+ID4gSG93ZXZlciwgSXQncyBoYXJk
IHRvIHRlbGwgd2hldGhlciBpdCdzIGJlZW4gZG9uZSBvbiBwdXJwb3NlIG9yIG5vdC4KPj4gPgo+
PiA+IFNpbmNlIHdlJ2xsIHN0YXJ0IG1hbmRhdGluZyBhIGRldGVybWluZV9yYXRlKCkgaW1wbGVt
ZW50YXRpb24sIGxldCdzCj4+ID4gY29udmVydCB0aGUgcm91bmRfcmF0ZSgpIGltcGxlbWVudGF0
aW9uIHRvIGEgZGV0ZXJtaW5lX3JhdGUoKSwgd2hpY2gKPj4gPiB3aWxsIGFsc28gbWFrZSB0aGUg
Y3VycmVudCBiZWhhdmlvciBleHBsaWNpdC4gQW5kIGlmIGl0IHdhcyBhbgo+PiA+IG92ZXJzaWdo
dCwgdGhlIGNsb2NrIGJlaGF2aW91ciBjYW4gYmUgYWRqdXN0ZWQgbGF0ZXIgb24uCj4+Cj4+IFNv
IGl0J3MgcGFydGx5IG9uIHB1cnBvc2UsIHBhcnRseSBiZWNhdXNlIEkgZGlkbid0IGtub3cgYWJv
dXQKPj4gLmRldGVybWluZV9yYXRlLgo+Pgo+PiBUaGVyZSdzIG5vdGhpbmcgb2RkIGFib3V0IGhh
dmluZyBhIGxvbmVseSAuc2V0X3BhcmVudCBjYWxsYmFjazsgaW4gbXkgY2FzZQo+PiB0aGUgY2xv
Y2tzIGFyZSBwYXJlbnRlZCBmcm9tIHRoZSBkZXZpY2UgdHJlZS4KPj4KPj4gSGF2aW5nIHRoZSBj
bG9ja3MgZHJpdmVyIHRyaWdnZXIgYSBwYXJlbnQgY2hhbmdlIHdoZW4gcmVxdWVzdGluZyBhIHJh
dGUKPj4gY2hhbmdlIHNvdW5kcyB2ZXJ5IGRhbmdlcm91cywgSU1ITy4gTXkgTU1DIGNvbnRyb2xs
ZXIgY2FuIGJlIHBhcmVudGVkIHRvIHRoZQo+PiBleHRlcm5hbCA0OCBNSHogb3NjaWxsYXRvciwg
YW5kIGlmIHRoZSBjYXJkIHJlcXVlc3RzIDUwIE1IeiwgaXQgY291bGQgc3dpdGNoCj4+IHRvIG9u
ZSBvZiB0aGUgUExMcy4gVGhhdCB3b3JrcyBhcyBsb25nIGFzIHRoZSBQTExzIGRvbid0IGNoYW5n
ZSByYXRlLCBidXQgaWYKPj4gb25lIGlzIGNvbmZpZ3VyZWQgYXMgZHJpdmluZyB0aGUgQ1BVIGNs
b2NrLCBpdCBiZWNvbWVzIG1lc3N5Lgo+PiBUaGUgdGhpbmcgaXMsIHRoZSBjbG9ja3MgZHJpdmVy
IGhhcyBubyB3YXkgdG8ga25vdyB3aGV0aGVyIG9yIG5vdCBpdCBpcwo+PiAic2FmZSIgdG8gdXNl
IGEgZGVzaWduYXRlZCBwYXJlbnQuCj4+Cj4+IEZvciB0aGF0IHJlYXNvbiwgaW4gcHJhY3RpY2Us
IEkgbmV2ZXIgYWN0dWFsbHkgd2FudCB0byBoYXZlIGEgY2xvY2sKPj4gcmUtcGFyZW50ZWQgLSBp
dCdzIGFsbW9zdCBhbHdheXMgYSBiYWQgaWRlYSB2cy4gc3RpY2tpbmcgdG8gdGhlIHBhcmVudCBj
bG9jawo+PiBjb25maWd1cmVkIGluIHRoZSBEVFMuCj4KPiBZZWFoLCBhbmQgdGhpcyBpcyB0b3Rh
bGx5IGZpbmUuIEJ1dCB3ZSBuZWVkIHRvIGJlIGV4cGxpY2l0IGFib3V0IGl0LiBUaGUKPiBkZXRl
cm1pbmVfcmF0ZSBpbXBsZW1lbnRhdGlvbiBJIGRpZCBpbiBhbGwgdGhlIHBhdGNoZXMgaXMgYW4g
ZXhhY3QKPiBlcXVpdmFsZW50IHRvIHRoZSByb3VuZF9yYXRlIG9uZSBpZiB0aGVyZSB3YXMgb25l
LiBXZSB3aWxsIG5ldmVyIGFzayB0bwo+IGNoYW5nZSB0aGUgcGFyZW50Lgo+Cj4gR2l2ZW4gd2hh
dCB5b3UganVzdCBzYWlkLCBJIHdvdWxkIHN1Z2dlc3QgdG8gc2V0IHRoZQo+IENMS19TRVRfUkFU
RV9OT19SRVBBUkVOVCBmbGFnIGFzIHdlbGwuCj4KCklkZWFsbHkgdGhlcmUgc2hvdWxkIGJlIGEg
d2F5IGZvciBkcml2ZXJzIGFuZCB0aGUgZGV2aWNlIHRyZWUgdG8Kc2F5LCAiY2xvY2sgWCBtdXN0
IGJlIGRyaXZlbiBieSBjbG9jayBZIiwgYnV0IHRoZSBjbG9jayBmcmFtZXdvcmsKd291bGQgYmUg
YWxsb3dlZCB0byByZS1wYXJlbnQgY2xvY2tzIGZyZWVseSBhcyBsb25nIGFzIGl0IGRvZXNuJ3QK
dmlvbGF0ZSBhbnkgRFQgb3IgZHJpdmVyIGNvbnN0cmFpbnRzLgoKVGhhdCB3YXkgYWxsb3dpbmcg
cmVwYXJlbnRpbmcgZG9lc24ndCBuZWVkIHRvIGJlIGFuIGFsbC1vci1ub3RoaW5nCnRoaW5nLCBh
bmQgaXQgZG9lc24ndCBuZWVkIHRvIGJlIGRlY2lkZWQgYXQgdGhlIGNsb2NrIGRyaXZlciBsZXZl
bAp3aXRoIHNwZWNpYWwgZmxhZ3MuCgpSZWdhcmRzLApBaWRhbgoKPj4gPiBTaWduZWQtb2ZmLWJ5
OiBNYXhpbWUgUmlwYXJkIDxtYXhpbWVAY2Vybm8udGVjaD4KPj4gPiAtLS0KPj4gPiAgZHJpdmVy
cy9jbGsvaW5nZW5pYy9jZ3UuYyB8IDE1ICsrKysrKysrLS0tLS0tLQo+PiA+ICAxIGZpbGUgY2hh
bmdlZCwgOCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+PiA+Cj4+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvY2xrL2luZ2VuaWMvY2d1LmMgYi9kcml2ZXJzL2Nsay9pbmdlbmljL2NndS5j
Cj4+ID4gaW5kZXggMWY3YmEzMGY1YTFiLi4wYzljODM0NGFkMTEgMTAwNjQ0Cj4+ID4gLS0tIGEv
ZHJpdmVycy9jbGsvaW5nZW5pYy9jZ3UuYwo+PiA+ICsrKyBiL2RyaXZlcnMvY2xrL2luZ2VuaWMv
Y2d1LmMKPj4gPiBAQCAtNDkxLDIyICs0OTEsMjMgQEAgaW5nZW5pY19jbGtfY2FsY19kaXYoc3Ry
dWN0IGNsa19odyAqaHcsCj4+ID4gIAlyZXR1cm4gZGl2Owo+PiA+ICB9Cj4+ID4KPj4gPiAtc3Rh
dGljIGxvbmcKPj4gPiAtaW5nZW5pY19jbGtfcm91bmRfcmF0ZShzdHJ1Y3QgY2xrX2h3ICpodywg
dW5zaWduZWQgbG9uZyByZXFfcmF0ZSwKPj4gPiAtCQkgICAgICAgdW5zaWduZWQgbG9uZyAqcGFy
ZW50X3JhdGUpCj4+ID4gK3N0YXRpYyBpbnQgaW5nZW5pY19jbGtfZGV0ZXJtaW5lX3JhdGUoc3Ry
dWN0IGNsa19odyAqaHcsCj4+ID4gKwkJCQkgICAgICBzdHJ1Y3QgY2xrX3JhdGVfcmVxdWVzdCAq
cmVxKQo+PiA+ICB7Cj4+ID4gIAlzdHJ1Y3QgaW5nZW5pY19jbGsgKmluZ2VuaWNfY2xrID0gdG9f
aW5nZW5pY19jbGsoaHcpOwo+PiA+ICAJY29uc3Qgc3RydWN0IGluZ2VuaWNfY2d1X2Nsa19pbmZv
ICpjbGtfaW5mbyA9Cj4+ID4gdG9fY2xrX2luZm8oaW5nZW5pY19jbGspOwo+PiA+ICAJdW5zaWdu
ZWQgaW50IGRpdiA9IDE7Cj4+ID4KPj4gPiAgCWlmIChjbGtfaW5mby0+dHlwZSAmIENHVV9DTEtf
RElWKQo+PiA+IC0JCWRpdiA9IGluZ2VuaWNfY2xrX2NhbGNfZGl2KGh3LCBjbGtfaW5mbywgKnBh
cmVudF9yYXRlLCByZXFfcmF0ZSk7Cj4+ID4gKwkJZGl2ID0gaW5nZW5pY19jbGtfY2FsY19kaXYo
aHcsIGNsa19pbmZvLCByZXEtPmJlc3RfcGFyZW50X3JhdGUsCj4+ID4gKwkJCQkJICAgcmVxLT5y
YXRlKTsKPj4KPj4gU29ycnkgYnV0IEknbSBub3Qgc3VyZSB0aGF0IHRoaXMgd29ya3MuCj4+Cj4+
IFlvdSByZXBsYWNlIHRoZSAicGFyZW50X3JhdGUiIHdpdGggdGhlICJiZXN0X3BhcmVudF9yYXRl
IiwgYW5kIHRoYXQgbWVhbnMKPj4geW91IG9ubHkgY2hlY2sgdGhlIHJlcXVlc3RlZCByYXRlIHZz
LiB0aGUgcGFyZW50IHdpdGggdGhlIGhpZ2hlc3QgZnJlcXVlbmN5LAo+PiBhbmQgbm90IHZzLiB0
aGUgYWN0dWFsIHBhcmVudCB0aGF0IHdpbGwgYmUgdXNlZC4KPgo+IGJlc3RfcGFyZW50X3JhdGUg
aXMgaW5pdGlhbGl6ZWQgdG8gdGhlIGN1cnJlbnQgcGFyZW50IHJhdGUsIG5vdCB0aGUKPiBwYXJl
bnQgd2l0aCB0aGUgaGlnaGVzdCBmcmVxdWVuY3k6Cj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5j
b20vbGludXgvdjYuMS1yYzMvc291cmNlL2RyaXZlcnMvY2xrL2Nsay5jI0wxNDcxCj4KPiBNYXhp
bWUKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
