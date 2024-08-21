Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82F29C3DA4A
	for <linux-phy@archiver.kernel.org>; Wed, 21 Aug 2024 02:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N5jkvWLv1/vrdCwaGuozQqP2NCp3FlNz9DxvziqR2Vw=; b=u1AWUdX8ng6HOo
	kjipHXTEZ2p6zctCWArpXOS7CpgQQ6FkCs8sikdXwd96mW3TD1ANrBvCbWEf/U0rmTDHT1Q+biJJH
	OxKFkxxTuuvCdjv2HEBxR4zSoto90/lo3YHkH5u9onEQatEoIRjiLerrgLF1VpILh3iXfujSwrxQq
	7Oji48KrrRNXQnRth4plb4msuq0kNhQVHDKXv1gNdHXpGmb7LZ63vMw7JZCg00ZdbhpEhPYIlxO/D
	kqXGgDmtN6B7+itlcCiCDKixe85OsDd9Y0Yv7TllCdwL50R/vV0zaoaPWGsRosObDT31DjC3PF5Yc
	1rXosDBZeAxDI0zDVblA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgbQ9-00000007Jzo-11yy;
	Wed, 21 Aug 2024 02:50:01 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgbPQ-00000007JnT-14Nz;
	Wed, 21 Aug 2024 02:49:17 +0000
Received: by mail-pg1-x530.google.com with SMTP id 41be03b00d2f7-7b0c9bbddb4so4148149a12.3;
        Tue, 20 Aug 2024 19:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724208555; x=1724813355; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RE92xTzpyc1kzcm5lmkLo7kV0Lo7mv/gXSiJrqevpAQ=;
        b=Mq3nTLvDW+fZZ5WiwWeJjLklQagc2GaXvAF1ZvANmLi1BO7FMLFigtV4vWcHEPujnt
         D9DKPr/TtCssH1EKdvtmoI1mlNzWr9LG9rH6AM/DD5O/EHGRANk0ZvPdyO0JM8/GTR9D
         KjGnIJ+QEEcPwgJjRjIsNSgwKmZXks30aBT8ilvyb0wgn5M5Ly1uj6ZH0Osr3Za9+vsu
         mCN470vEThDoidGROOkGoOmOM9A1trct8SZaInShMClNgjeXsnbDXFV1SHmudABmDL8p
         tS7iY4KUanIMT3wbgtrp4zT8Fp6aGZ4dNaeZ+TDa1K4Exe9YaWJ6aNUYDzO7e/BECS4f
         i+BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724208555; x=1724813355;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RE92xTzpyc1kzcm5lmkLo7kV0Lo7mv/gXSiJrqevpAQ=;
        b=ikSvZ/1xq+VDorY6gt4UpzIzGwJd0e39L37KgqdEJtER46HfpwrtuPHBqOYl/+9+ed
         QmJLnoQlMY+MoPyaCQsF8GxVz8cqlwZwNqbe+2/2DPhkL+07RC+ktgwt4niw3UQjKaXQ
         hpc+2nPi6KKkGHmq95Du2yp5S1yc9vpRl8IC6eAtyFDmrfCq0by3KppLDhlfsdXHTgsh
         BNB1AzW+g3inCgwmedZM4943kXZtsKeWxfq6ofnl9b3sX2sDr444ZbO7unqf3fzU31lX
         +MvnRtVK1x140sl7b8I5qDEvL+evpN8wIAECqwEovLhOterOSlpVkeBCpbcd6jN7TTxd
         02aw==
X-Forwarded-Encrypted: i=1; AJvYcCVlzY7nJdKlU99OaF/jGguTjod8rsWxlGvJQRFHk/esCHzvTNB5RvPMeb7a3wW3ze0MP52FpCcbVKM5@lists.infradead.org, AJvYcCWPtnGHbzPsfbRwGBDmWwSGwxvlVh1J4Njhgg/RvBtA9Iz9htx9bt4EKYLpSMklC5/4Qqi/ZzTuREuZDDIfBkJ2@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9fWOn8ft/gUqwa63AjndpfunirBfq5kvTTke+tAOVCX9bm96Z
	iMgxDrIkcu4PAGWufyPXjZiVNyLSSolK/aywFz2sOHE81vQvnPQQcVIhALV1Y5Fvhv/E4QGrZlQ
	mRYU8eJeThTv2Ka4JONyIES10tcc=
X-Google-Smtp-Source: AGHT+IHPIeU+XeIHnRDwOc8ghN5MtcSzCEjHZtvnpI0kCMC3xi6zc1BgiVyooCk3wuq0/oAVIZyRNBgW98ToLF19jq4=
X-Received: by 2002:a17:90b:3889:b0:2cd:2992:e8dc with SMTP id
 98e67ed59e1d1-2d5e99fb6demr1065257a91.5.1724208554836; Tue, 20 Aug 2024
 19:49:14 -0700 (PDT)
MIME-Version: 1.0
References: <20240203165307.7806-1-aford173@gmail.com> <20240203165307.7806-11-aford173@gmail.com>
 <Zm_UzO4Jmm7Aykcm@atmark-techno.com> <22a3f5266260dd3915269ae3eec7724f7537eb55.camel@pengutronix.de>
 <cd03ecb1-100e-4699-95ed-d837a2802dc7@kontron.de>
In-Reply-To: <cd03ecb1-100e-4699-95ed-d837a2802dc7@kontron.de>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 20 Aug 2024 21:49:03 -0500
Message-ID: <CAHCN7x+bh_ka250hOCenO3Et6re4EJ=5TG8=kpG1hs-PV0dQxQ@mail.gmail.com>
Subject: Re: drm/bridge/imx8mp-hdmi-tx: Allow inexact pixel clock frequencies
 (Was: [PATCH V8 10/12] drm/bridge: imx: add bridge wrapper driver for i.MX8MP
 DWC HDMI)
To: Frieder Schrempf <frieder.schrempf@kontron.de>
Cc: Lucas Stach <l.stach@pengutronix.de>, 
	Dominique MARTINET <dominique.martinet@atmark-techno.com>, linux-arm-kernel@lists.infradead.org, 
	marex@denx.de, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	NXP Linux Team <linux-imx@nxp.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Liu Ying <victor.liu@nxp.com>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	Makoto Sato <makoto.sato@atmark-techno.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240820_194916_321880_D389ACCD 
X-CRM114-Status: GOOD (  61.50  )
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

T24gVGh1LCBBdWcgMTUsIDIwMjQgYXQgMzoxOeKAr0FNIEZyaWVkZXIgU2NocmVtcGYKPGZyaWVk
ZXIuc2NocmVtcGZAa29udHJvbi5kZT4gd3JvdGU6Cj4KPiBIaSBEb21pbmlxdWUsIGhpIEx1Y2Fz
LAo+Cj4gT24gMTcuMDYuMjQgNjozMiBQTSwgTHVjYXMgU3RhY2ggd3JvdGU6Cj4gPiBIaSBEb21p
bmlxdWUsCj4gPgo+ID4gQW0gTW9udGFnLCBkZW0gMTcuMDYuMjAyNCB1bSAxNToxNiArMDkwMCBz
Y2hyaWViIERvbWluaXF1ZSBNQVJUSU5FVDoKPiA+PiBBZGFtIEZvcmQgd3JvdGUgb24gU2F0LCBG
ZWIgMDMsIDIwMjQgYXQgMTA6NTI6NTBBTSAtMDYwMDoKPiA+Pj4gRnJvbTogTHVjYXMgU3RhY2gg
PGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+Cj4gPj4+Cj4gPj4+IEFkZCBhIHNpbXBsZSB3cmFwcGVy
IGRyaXZlciBmb3IgdGhlIERXQyBIRE1JIGJyaWRnZSBkcml2ZXIgdGhhdAo+ID4+PiBpbXBsZW1l
bnRzIHRoZSBmZXcgYml0cyB0aGF0IGFyZSBuZWNlc3NhcnkgdG8gYWJzdHJhY3QgdGhlIGkuTVg4
TVAKPiA+Pj4gU29DIGludGVncmF0aW9uLgo+ID4+Cj4gPj4gSGkgTHVjYXMsIEFkYW0sCj4gPj4g
KHRyaW1tZWQgY2NzIGEgYml0KQo+ID4+Cj4gPj4gRmlyc3QsIHRoYW5rIHlvdSBmb3IgdGhlIGVm
Zm9ydCBvZiB1cHN0cmVhbWluZyBhbGwgb2YgdGhpcyEhIEl0J3MgcmVhbGx5Cj4gPj4gYXBwcmVj
aWF0ZWQsIGFuZCB3aXRoIGRpc3BsYXkgd29ya2luZyBJJ2xsIHJlYWxseSBiZSB3YW50aW5nIHRv
IHVwc3RyZWFtCj4gPj4gb3VyIERUUyBhcyB3ZWxsIGFzIHNvb24gYXMgSSBoYXZlIHRpbWUgKHdo
aWNoIGlzIGdvaW5nIHRvIGJlIGEgd2hpbGUsCj4gPj4gYnV0IGJldHRlciBsYXRlIHRoYW4gbmV2
ZXIgPykKPiA+Pgo+ID4+IFVudGlsIHRoZW4sIGl0J3MgYmVlbiBhIGZldyBtb250aHMgYnV0IEkn
dmUgZ290IGEgcXVlc3Rpb24gb24gdGhpcyBiaXQ6Cj4gPj4KPiA+Pj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9icmlkZ2UvaW14L2lteDhtcC1oZG1pLXR4LmMgYi9kcml2ZXJzL2dwdS9k
cm0vYnJpZGdlL2lteC9pbXg4bXAtaGRtaS10eC5jCj4gPj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0
Cj4gPj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uODlmYzQzMmFjNjExCj4gPj4+IC0tLSAvZGV2L251
bGwKPiA+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9pbXgvaW14OG1wLWhkbWktdHgu
Ywo+ID4+PiArc3RhdGljIGVudW0gZHJtX21vZGVfc3RhdHVzCj4gPj4+ICtpbXg4bXBfaGRtaV9t
b2RlX3ZhbGlkKHN0cnVjdCBkd19oZG1pICpkd19oZG1pLCB2b2lkICpkYXRhLAo+ID4+PiArICAg
ICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X2luZm8gKmluZm8sCj4gPj4+
ICsgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSkK
PiA+Pj4gK3sKPiA+Pj4gKyAgIHN0cnVjdCBpbXg4bXBfaGRtaSAqaGRtaSA9IChzdHJ1Y3QgaW14
OG1wX2hkbWkgKilkYXRhOwo+ID4+PiArCj4gPj4+ICsgICBpZiAobW9kZS0+Y2xvY2sgPCAxMzUw
MCkKPiA+Pj4gKyAgICAgICAgICAgcmV0dXJuIE1PREVfQ0xPQ0tfTE9XOwo+ID4+PiArCj4gPj4+
ICsgICBpZiAobW9kZS0+Y2xvY2sgPiAyOTcwMDApCj4gPj4+ICsgICAgICAgICAgIHJldHVybiBN
T0RFX0NMT0NLX0hJR0g7Cj4gPj4+ICsKPiA+Pj4gKyAgIGlmIChjbGtfcm91bmRfcmF0ZShoZG1p
LT5waXhjbGssIG1vZGUtPmNsb2NrICogMTAwMCkgIT0KPiA+Pj4gKyAgICAgICBtb2RlLT5jbG9j
ayAqIDEwMDApCj4gPj4+ICsgICAgICAgICAgIHJldHVybiBNT0RFX0NMT0NLX1JBTkdFOwo+ID4+
Cj4gPj4gRG8geW91IGtub3cgd2h5IHN1Y2ggYSBjaGVjayBpcyBoZXJlPwo+ID4KPiA+IFNlbmRp
bmcgYSBIRE1JIHNpZ25hbCB3aXRoIGEgZGlmZmVyZW50IHJhdGUgdGhhbiB3aGF0IHRoZSBkaXNw
bGF5Cj4gPiBleHBlY3RzIHJhcmVseSBlbmRzIHdlbGwsIHNvIHRoaXMgY2hlY2sgYXZvaWRzIHRo
YXQuCj4gPgo+ID4gSG93ZXZlciwgdGhpcyBjaGVjayBpcyBhIGJpdCBvdmVyY2F1dGlvdXMgaW4g
dGhhdCBpdCBvbmx5IGFsbG93cyBleGFjdAo+ID4gcmF0ZSBtYXRjaGVzLiBJSVJDIEhETUkgYWxs
b3dzIGEgcmF0ZSBtaXNtYXRjaCBvZiArLSAwLjUlLCBzbyB0aGlzCj4gPiBjaGVjayBjb3VsZCBi
ZSByZWxheGVkIHF1aXRlIGEgYml0IHRvIGFsbG93IGZvciB0aGF0Lgo+Cj4gSSBjaGVja2VkIHdp
dGggYSAxMDgwcCBkaXNwbGF5IHRoYXQgcmVwb3J0cyAyMyBwb3NzaWJsZSBtb2RlcyB2aWEgRURJ
RC4KPiBPdXQgb2YgdGhlc2UgMTUgYXJlIGFjY2VwdGVkIGJ5IHRoZSBkcml2ZXIgd2l0aCB0aGUg
c3RyaWN0IGNoZWNrLgo+Cj4gVHdvIG1vcmUgd291bGQgYmUgYWNjZXB0ZWQgd2l0aCBhIHJlbGF4
ZWQgY2hlY2sgdGhhdCBhbGxvd3MgYSAwLjUlIG1hcmdpbi4KPgo+IEZvciB0aGUgcmVtYWluaW5n
IHNpeCBtb2RlcywgdGhlIHBpeGVsIGNsb2NrIHdvdWxkIGRldmlhdGUgdXAgdG8gfjUlCj4gZnJv
bSB3aGF0IHRoZSBkaXNwbGF5IGV4cGVjdHMuIFN0aWxsLCBpZiBJIHJlbW92ZSB0aGUgY2hlY2sg
YWx0b2dldGhlciwKPiBhbGwgMjMgbW9kZXMgc2VlbSB0byB3b3JrIGp1c3QgZmluZS4KPgo+ID4+
Cj4gPj4gV2hlbiBwbHVnZ2luZyBpbiBhIHNjcmVlbiB3aXRoIG5vIGZyZXF1ZW5jeSBpZGVudGlj
YWxseSBzdXBwb3J0ZWQgaW4gaXRzCj4gPj4gRURJRCB0aGlzIGNoZWNrIGNhdXNlcyB0aGUgc2Ny
ZWVuIHRvIHN0YXkgYmxhY2ssIGFuZCB3ZSd2ZSBiZWVuIHRlbGxpbmcKPiA+PiBjdXN0b21lcnMg
dG8gb3ZlcnJpZGUgdGhlIEVESUQgYnV0IGl0J3MgYSBodWdlIHBhaW4uCj4gPj4KPiA+PiBDb21t
aXQgNmFkMDgyYmVlOTAyICgicGh5OiBmcmVlc2NhbGU6IGFkZCBTYW1zdW5nIEhETUkgUEhZIikg
YWxyZWFkeQo+ID4+ICJmaXhlZCIgdGhlIHNhbXN1bmcgaGRtaSBwaHkgZHJpdmVyIHRvIHJldHVy
biB0aGUgbmV4dCBmcmVxdWVuY3kgaWYgYW4KPiA+PiBleGFjdCBtYXRjaCBoYXNuJ3QgYmVlbiBm
b3VuZCAoTlhQIHRyZWUncyBtYXRjaCBmcmVxdWVuY2llcyBleGFjdGx5LCBidXQKPiA+PiB0aGlz
IGdldHMgdGhlIGZpcnN0IGNsb2NrIHdpdGggcGl4Y2xrIDw9IHJhdGUpLCBzbyBpZiB0aGlzIGNo
ZWNrIGlzIGFsc28KPiA+PiByZWxheGVkIG91ciBkaXNwbGF5cyB3b3VsZCB3b3JrIG91dCBvZiB0
aGUgYm94Lgo+ID4+Cj4gPj4gSSBhbHNvIGRvbid0IHNlZSBhbnkgb3RoZXIgYnJpZGdlIGRvaW5n
IHRoaXMga2luZCBvZiBjaGVjay4KPiA+PiBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2lteC9pbXg5
My1taXBpLWRzaS5jIGhhcyBhIHNpbWlsYXIgY2hlY2sgd2l0aCBhCj4gPj4gMC41JSBsZWV3YXks
IGFuZCBhbGwgdGhlIG90aGVyIGRyaXZlcnMgZG9uJ3QgY2hlY2sgYW55dGhpbmcuCj4gPj4gSWYg
eW91IHdhbnQgdG8gYWRkIHNvbWUgbGV2ZWwgb2Ygc2FmZXR5LCBJIHRoaW5rIHdlIGNvdWxkIG1h
a2UgdGhpcyB3b3JrCj4gPj4gd2l0aCBhIDUlIG1hcmdpbiBlYXNpbHkuLi4gUHJpbnRpbmcgYSB3
YXJuaW5nIGluIGRtZXNnIGNvdWxkIHdvcmsgaWYKPiA+PiB5b3UncmUgd29ycmllZCBhYm91dCBh
cnRpZmFjdHMsIGJ1dCBsaXR0ZXJhbHkgYW55dGhpbmcgaXMgYmV0dGVyIHRoYW4gYQo+ID4+IGJs
YWNrIHNjcmVlbiB3aXRoIG5vIGVycm9yIG1lc3NhZ2UgaW4gbXkgb3Bpbmlvbi4KPiA+Pgo+ID4+
Cj4gPj4gSW4gcHJhY3RpY2UgdGhlIHNjcmVlbiBJJ20gbG9va2luZyBhdCBoYXMgYW4gRURJRCB3
aGljaCBvbmx5IHN1cHBvcnRzCj4gPj4gNTEuMk1IeiBhbmQgdGhlIGNsb3Nlc3QgZnJlcXVlbmN5
IHN1cHBvcnRlZCBieSB0aGUgU2Ftc3VuZyBIRE1JIHBoeSBpcwo+ID4+IDUwLjRNSHosIHNvIHRo
YXQncyBhIH4xLjUlIGRpZmZlcmVuY2UgYW5kIGl0J2QgYmUgZ3JlYXQgaWYgaXQgY291bGQgd29y
awo+ID4+IG91dCBvZiB0aGUgYm94Lgo+ID4KPiA+IEZvciByYXRlIG1pc21hdGNoZXMgbGFyZ2Vy
IHRoYW4gdGhlIDAuNSUgYWxsb3dlZCBieSB0aGUgSERNSSBzcGVjIGl0Cj4gPiB3b3VsZCBiZSBi
ZXR0ZXIgdG8gYWN0dWFsbHkgYWRkIFBIWSBQTEwgcGFyYW1ldGVycyBtYXRjaGluZyB0aG9zZQo+
ID4gcmF0ZXMuCj4KPiBJJ2QgcmVhbGx5IGxpa2UgdG8gYmUgYWJsZSB0byBhZGQgbW9yZSBQSFkg
UExMIHNldHBvaW50cyBmb3IgZGlzcGxheXMKPiB0aGF0IHVzZSBub24tQ0VBLTg2MSBtb2Rlcy4g
VW5mb3J0dW5hdGVseSBJIGRpZG4ndCBtYW5hZ2UgdG8gZmlndXJlIG91dAo+IHRoZSBmcmFjdGlv
bmFsLW4gUExMIHBhcmFtZXRlciBjYWxjdWxhdGlvbiBzbyBmYXIuCj4KPiBUaGUgaS5NWDhNUCBS
ZWZlcmVuY2UgTWFudWFsIHByb3ZpZGVzIGZvcm11bGFzIHRvIGNhbGN1bGF0ZSB0aGUKPiBwYXJh
bWV0ZXJzIGJhc2VkIG9uIHRoZSByZWdpc3RlciB2YWx1ZXMgYW5kIEkgdHJpZWQgdG8gbWFrZSBz
ZW5zZSBvZiBpdAo+IHVzaW5nIHRoZSBleGlzdGluZyByZWdpc3RlciB2YWx1ZXMgaW4gdGhlIGRy
aXZlci4gQnV0IHNvbWVob3cgaXQgZG9lc24ndAo+IGFkZCB1cCBmb3IgbWUuCj4KPiBMdWNhcywg
ZGlkIHlvdSBhbHJlYWR5IHdvcmsgd2l0aCB0aGUgUExMIHBhcmFtZXRlcnM/IEJ5IGFueSBjaGFu
Y2UsIGRvCj4geW91IG5vdyBob3cgdGhlIG1hdGggYmVoaW5kIHRoZW0gd29ya3M/CgpJIHNwZW50
IGEgbGl0dGxlIHRpbWUgdHJ5aW5nIHRvIHVuZGVyc3RhbmQgaXQgYSBiaXQuICBJIGNyZWF0ZWQg
YSBQTVMKY2FsY3VsYXRvciBzaW1pbGFyIHRvIHRoZSBvbmUgdXNlZCBvbiB0aGUgRFNJIGNvbnRy
b2xsZXIsIGV4Y2VwdCB0aGF0CnRoZSBNIHNlZW1zIHRvIGJlIGZpeGVkIGF0IGEgdmFsdWUgb2Yg
NjIgcGVyIHRoZSBkYXRhIHNoZWV0LCBzbyBpdCdzCm1vcmUgb2YgYSBQUyBjYWxjdWxhdG9yLgoK
QW55d2F5LCBXaGVuIEkgcnVuIG15IFAtUyBjYWxjdWxhdG9yIHRvIGdlbmVyYXRlIHRoZSAnYmVz
dCByYXRlJyBJIGdldAphIHZhbHVlIHRoYXQncyB1c3VhbGx5IDAuMiUgdmFyaWFuY2UgZnJvbSBu
b21pbmFsLCBidXQgSSBvbmx5IHZlcmlmaWVkCmEgaGFuZGZ1bCBvZiB2YWx1ZXM6CgpTZXZlcmFs
IHdoaWNoIHdlcmUgKzAuMiUKMjk3NjAwMDAwIHZzIDI5NzAwMDAwMCAoNGtAMzApCjE0ODgwMDAw
MCB2cyAxNDg1MDAwMDAgKDEwODBwNjApCjc0NDAwIHZzIDc0MjAwCgpPbmUgdmFsdWUgd2FzIC0w
LjE2JQoyNDgwMDAwMCB2cyAyNTIwMDAwMAoKSWYgdGhlIE0gdmFsdWUgd2FzIGEgYml0IG1vcmUg
ZmxleGlibGUsIHdlIG1pZ2h0IGJlIGFibGUgdG8gcmVkdWNlCnRoYXQgdmFyaWFuY2UgbW9yZS4K
CklmIC8gd2hlbiBJIGdldCBzb21lIHRpbWUsIEkgbWlnaHQgcGxheSB3aXRoIHRyeWluZyB0byBk
aXNhYmxlIHRoZQpmcmFjdGlvbmFsIG1vZGUgYW5kIGp1c3QgdXNlIHRoZSBQTVMgY2FsY3VsYXRv
ciBmb3Igc2ltcGxpY2l0eSBkZXNwaXRlCnRoZSBpbmFjY3VyYWN5LiAgTWF5YmUgd2UgY291bGQg
ZmFsbCBiYWNrIHRvIHVzaW5nIHRoZSBQTVMgY2FsY3VsYXRvcgppZiB0aGUgZGVzaXJlZCBmcmVx
dWVuY3kgaXNuJ3QgaW4gdGhlIGxvb2stdXAtdGFibGUuCgphZGFtCgo+Cj4gPgo+ID4gV2UgY291
bGQgcG90ZW50aWFsbHkgYWRkIHNvbWUgbW9yZSBsZWV3YXkgZm9yIGRpc3BsYXlzIGxpa2UgeW91
cnMgdGhhdAo+ID4gYXJlbid0IGFjdHVhbGx5IEhETUkgKGFzIGl0IGRvZXNuJ3Qgc2VlbSB0byBo
YXZlIGEgc3RhbmRhcmQgSERNSQo+ID4gcmVzb2x1dGlvbikuIEJ1dCB0aGF0J3MgbW9yZSBvZiBh
IGxhc3QgcmVzb3J0IG9wdGlvbiwgYXMgaXQgbWF5Cj4gPiBpbnRyb2R1Y2Ugb3RoZXIgcHJvYmxl
bXMgZm9yIGRpc3BsYXlzIHRoYXQgYXJlbid0IGFzIHRvbGVyYW50IHdpdGgKPiA+IHRoZWlyIGlu
cHV0IHJhdGVzLiBSZW1lbWJlciB0aGUgbW9kZV92YWxpZCBjYWxsIGlzIHVzZWQgdG8gZmlsdGVy
IG1vZGVzCj4gPiB0aGF0IGFyZW4ndCBjb21wYXRpYmxlIHdpdGggdGhlIHNvdXJjZSwgc28gZm9y
IGEgZGlzcGxheSB3aXRoIG11bHRpcGxlCj4gPiBtb2RlcyBhbGxvd2luZyB0b28gbXVjaCBsZWV3
YXkgbWF5IGxlYWQgdG8gaW5jb21wYXRpYmxlIG1vZGVzIG5vdAo+ID4gZ2V0dGluZyB0b3NzZWQs
IGluIHR1cm4gYWxsb3dpbmcgdXNlcnNwYWNlIHRvIHNldCBhIG1vZGUgdGhhdCB0aGUKPiA+IGRp
c3BsYXkgbWF5IG5vdCBsaWtlIGR1ZSB0byB0b28gbXVjaCByYXRlIGRldmlhdGlvbiwgaW5zdGVh
ZCBvZiBvbmx5Cj4gPiBwcmVzZW50aW5nIGEgbGlzdCBvZiB2YWxpZCBtb2Rlcy4gVGhpcyBhZ2Fp
biB3b3VsZCBwcmVzZW50IHRoZSB1c2VyCj4gPiB3aXRoIGEgYmxhY2stc2NyZWVuIHdpdGhvdXQg
d2FybmluZyBzaXR1YXRpb24uCj4KPiBXaGF0IGFib3V0IGFkZGluZyBzb21lIG9wdGlvbiB0byBy
ZWxheCBvciByZW1vdmUgdGhlIGNoZWNrIGZvciBkZWJ1Z2dpbmcKPiBwdXJwb3Nlcz8gTWF5YmUg
Y29tYmluZWQgd2l0aCBwcmludGluZyBhIHdhcm5pbmcgbWVzc2FnZT8KPgo+IEkgYWdyZWUgdGhh
dCB3ZSBzaG91bGQgcHJldmVudCBpbmNvbXBhdGlibGUgbW9kZXMgZnJvbSBwYXNzaW5nIHRoZQo+
IGZpbHRlciwgYnV0IGl0IHdvdWxkIGJlIHJlYWxseSBoZWxwZnVsIGlmIHBlb3BsZSBoYWQgYW4g
ZWFzeSB3YXkgdG8KPiByZWxheC9yZW1vdmUgdGhlIGNoZWNrIHRvIHNlZSB3aGV0aGVyIHRoZWly
IGRpc3BsYXkgY291bGQgcG90ZW50aWFsbHkKPiB3b3JrIHdpdGhvdXQgdGhlbSBuZWVkaW5nIHRv
IG1vZGlmeSBhbmQgcmVjb21waWxlIHRoZSBrZXJuZWwuCj4KPiBUaGFua3MKPiBGcmllZGVyCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
