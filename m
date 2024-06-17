Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8474DC27C79
	for <linux-phy@archiver.kernel.org>; Mon, 17 Jun 2024 13:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IX2m5hrUh+KSH5tkaQfLMRsuE3YfMSc3+Rp/wmK2ou8=; b=UFAV+9bUC137ZA
	+9/RnZoZW91qHZLaHjMi2cSjFFaGw7LADNsO02i7kyBPLOZGIoeHRgiaGGqKPZMFCErLkUFxdUZEO
	CfvOcMbi67fplPWtg2iZaK2/4eOEcQG2SNGx/x4U8fDis6UODdakuF/prTG2u9hQhMjPFwY+ZB4VH
	EcfgpKiMJgESuqiRYEzHyV5IiJfAyejIJlVfKOmDSyYkwffAYf5jnzk51XAfvTiUzAYylfg0doXfc
	4Bt53BZBgD4xUDuA0WsJMaKkVy1/T0p8tb2cg/B+wBEcz0wPDkGPRVsWblGbEAxWbXsKfwf8I/+7H
	5txuE+sh7GFdawp+UzdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJCQ9-0000000Ar5T-0hsI;
	Mon, 17 Jun 2024 13:29:17 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJCQ4-0000000Ar3K-425E;
	Mon, 17 Jun 2024 13:29:14 +0000
Received: by mail-pg1-x52e.google.com with SMTP id 41be03b00d2f7-652fd0bb5e6so3454842a12.0;
        Mon, 17 Jun 2024 06:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718630950; x=1719235750; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u9q+Z4GD9MpvcYkpXfGOgXbR7/P8MYbKwiRSUUKubKM=;
        b=IR8oThhh/YA+NRGdvLJyXXyCLVwz2AE9FcBikzSmXHPZSkcQgVhQh6uXDMDx/Odi0C
         DDBmmSnHfwSViDEL2bBQOj66X8Ah1OSZmTZQsDVTPJwv2zzwbe4RX1UaUlD3McYlg2+a
         VIifUZJtj6x4hm2dh/AanRPwCJjt0cfekVExfRh4d16v09Q5WQX8f2ZOUn5WUr/axolz
         PQAOZOM0ZiBhRJ9LOpymZ12TT7WXPbDR8aJZAvFhKL1eRjH4HYgFNgn8z5PXEvvQN2ws
         y4BixsNBCuRGb2pB+JrV1Y6qJVqty12zRob0emJbb2o8tvuunqT4eQmePtRNZ0s5dtyJ
         3Wfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718630950; x=1719235750;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u9q+Z4GD9MpvcYkpXfGOgXbR7/P8MYbKwiRSUUKubKM=;
        b=Jsl4R556JE9hmyZf7YIZDBvKHQyurrf3U/J1xmr7FOr6Qjzr4MWEC42JnbWkdo7EEX
         3Mrrc1OExo2WacxV+1QulE6ZFZyXkDZ0fdBRQUOKwug3wqWBdYn8bw/gxJQwMTtziNxz
         9w+8gOQeape37U2EuaAMd0jrg7fomrnVaHqCZ3tSm+q7PY2WKKzO/YRezv1wApNFKXzf
         WxdweoKd4nXlc5zepSOltAThTAnNjuK2EXaDmQNrmPASjfAK6qbJSz+BmAnPTE86yIzT
         cmG7DOFL4DBq9oR+JSrO1c0MTmkL14USnAF+xCQCItVbjyGfQ5niNb+AIaVC+46+ot5S
         Qw4A==
X-Forwarded-Encrypted: i=1; AJvYcCWI9Fvw5rg0DwWwJY95SuhBHFpdd/tESFQlLDfQ2weJeCIAqzvi/+a3sm1uSr8wOm/ztMu3Ac20lexFkqUW51XJAM7J/hcRlUkoIv/g2g4FGw/IIXMvmi2qj1NIDXklYoz+VrZsTvIG6Oz6LGx0ElvTu5pX
X-Gm-Message-State: AOJu0YxGGqgrI79KjXo2pjkD0tL7lAzrsukmnz1AfbQoBx/TTyh+b7n/
	lF59wxSSbD4WxjrHet2qmgCidBkheAbgIyc9/2yS0lls8DM/a+/rUORGXfxV38Le4kH4aYmw6u2
	NzBqp+a7ZyvN9hZZvUQ9Kcu+fXPA=
X-Google-Smtp-Source: AGHT+IFHNQnVqTbXey7rmOHY9zC5Gl6630C23KaIy8xKqNcUDOtRiu3TC30yfGx+t6zBKRWmGgrhzjL5YAGs06H5CPg=
X-Received: by 2002:a17:90a:2dc6:b0:2bd:f4cb:bd87 with SMTP id
 98e67ed59e1d1-2c4db24e973mr9926240a91.14.1718630949878; Mon, 17 Jun 2024
 06:29:09 -0700 (PDT)
MIME-Version: 1.0
References: <20240203165307.7806-1-aford173@gmail.com> <20240203165307.7806-11-aford173@gmail.com>
 <Zm_UzO4Jmm7Aykcm@atmark-techno.com>
In-Reply-To: <Zm_UzO4Jmm7Aykcm@atmark-techno.com>
From: Adam Ford <aford173@gmail.com>
Date: Mon, 17 Jun 2024 08:28:58 -0500
Message-ID: <CAHCN7xJt+1WGFYeBii1jUDEg9OU176f0AA+rMkXCqNQrfq=XWg@mail.gmail.com>
Subject: Re: drm/bridge/imx8mp-hdmi-tx: Allow inexact pixel clock frequencies
 (Was: [PATCH V8 10/12] drm/bridge: imx: add bridge wrapper driver for i.MX8MP
 DWC HDMI)
To: Dominique MARTINET <dominique.martinet@atmark-techno.com>
Cc: Lucas Stach <l.stach@pengutronix.de>, linux-arm-kernel@lists.infradead.org, 
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
X-CRM114-CacheID: sfid-20240617_062913_104726_581D3778 
X-CRM114-Status: GOOD (  35.79  )
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

T24gTW9uLCBKdW4gMTcsIDIwMjQgYXQgMToxN+KAr0FNIERvbWluaXF1ZSBNQVJUSU5FVAo8ZG9t
aW5pcXVlLm1hcnRpbmV0QGF0bWFyay10ZWNobm8uY29tPiB3cm90ZToKPgo+IEFkYW0gRm9yZCB3
cm90ZSBvbiBTYXQsIEZlYiAwMywgMjAyNCBhdCAxMDo1Mjo1MEFNIC0wNjAwOgo+ID4gRnJvbTog
THVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+Cj4gPgo+ID4gQWRkIGEgc2ltcGxl
IHdyYXBwZXIgZHJpdmVyIGZvciB0aGUgRFdDIEhETUkgYnJpZGdlIGRyaXZlciB0aGF0Cj4gPiBp
bXBsZW1lbnRzIHRoZSBmZXcgYml0cyB0aGF0IGFyZSBuZWNlc3NhcnkgdG8gYWJzdHJhY3QgdGhl
IGkuTVg4TVAKPiA+IFNvQyBpbnRlZ3JhdGlvbi4KPgo+IEhpIEx1Y2FzLCBBZGFtLAo+ICh0cmlt
bWVkIGNjcyBhIGJpdCkKPgo+IEZpcnN0LCB0aGFuayB5b3UgZm9yIHRoZSBlZmZvcnQgb2YgdXBz
dHJlYW1pbmcgYWxsIG9mIHRoaXMhISBJdCdzIHJlYWxseQo+IGFwcHJlY2lhdGVkLCBhbmQgd2l0
aCBkaXNwbGF5IHdvcmtpbmcgSSdsbCByZWFsbHkgYmUgd2FudGluZyB0byB1cHN0cmVhbQo+IG91
ciBEVFMgYXMgd2VsbCBhcyBzb29uIGFzIEkgaGF2ZSB0aW1lICh3aGljaCBpcyBnb2luZyB0byBi
ZSBhIHdoaWxlLAo+IGJ1dCBiZXR0ZXIgbGF0ZSB0aGFuIG5ldmVyID8pCj4KPiBVbnRpbCB0aGVu
LCBpdCdzIGJlZW4gYSBmZXcgbW9udGhzIGJ1dCBJJ3ZlIGdvdCBhIHF1ZXN0aW9uIG9uIHRoaXMg
Yml0Ogo+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9pbXgvaW14OG1w
LWhkbWktdHguYyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvaW14L2lteDhtcC1oZG1pLXR4LmMK
PiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLjg5ZmM0MzJh
YzYxMQo+ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9p
bXgvaW14OG1wLWhkbWktdHguYwo+ID4gK3N0YXRpYyBlbnVtIGRybV9tb2RlX3N0YXR1cwo+ID4g
K2lteDhtcF9oZG1pX21vZGVfdmFsaWQoc3RydWN0IGR3X2hkbWkgKmR3X2hkbWksIHZvaWQgKmRh
dGEsCj4gPiArICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfaW5m
byAqaW5mbywKPiA+ICsgICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBkcm1fZGlzcGxh
eV9tb2RlICptb2RlKQo+ID4gK3sKPiA+ICsgICAgIHN0cnVjdCBpbXg4bXBfaGRtaSAqaGRtaSA9
IChzdHJ1Y3QgaW14OG1wX2hkbWkgKilkYXRhOwo+ID4gKwo+ID4gKyAgICAgaWYgKG1vZGUtPmNs
b2NrIDwgMTM1MDApCj4gPiArICAgICAgICAgICAgIHJldHVybiBNT0RFX0NMT0NLX0xPVzsKPiA+
ICsKPiA+ICsgICAgIGlmIChtb2RlLT5jbG9jayA+IDI5NzAwMCkKPiA+ICsgICAgICAgICAgICAg
cmV0dXJuIE1PREVfQ0xPQ0tfSElHSDsKPiA+ICsKPiA+ICsgICAgIGlmIChjbGtfcm91bmRfcmF0
ZShoZG1pLT5waXhjbGssIG1vZGUtPmNsb2NrICogMTAwMCkgIT0KPiA+ICsgICAgICAgICBtb2Rl
LT5jbG9jayAqIDEwMDApCj4gPiArICAgICAgICAgICAgIHJldHVybiBNT0RFX0NMT0NLX1JBTkdF
Owo+Cj4gRG8geW91IGtub3cgd2h5IHN1Y2ggYSBjaGVjayBpcyBoZXJlPwoKSSBkaWRuJ3Qgd3Jp
dGUgdGhlIG9yaWdpbmFsIGNvZGUsIHNvIEknbGwgZGVmZXIgdG8gTHVjYXMgaGVyZS4gIEkganVz
dAp0cmllZCB0byBlZGl0L2ZpeCBpc3N1ZXMgYXMgdGhleSB3ZXJlIGlkZW50aWZpZWQgdG8gZ2V0
IGl0IHB1c2hlZAp1cHN0cmVhbS4KCj4KPiBXaGVuIHBsdWdnaW5nIGluIGEgc2NyZWVuIHdpdGgg
bm8gZnJlcXVlbmN5IGlkZW50aWNhbGx5IHN1cHBvcnRlZCBpbiBpdHMKPiBFRElEIHRoaXMgY2hl
Y2sgY2F1c2VzIHRoZSBzY3JlZW4gdG8gc3RheSBibGFjaywgYW5kIHdlJ3ZlIGJlZW4gdGVsbGlu
Zwo+IGN1c3RvbWVycyB0byBvdmVycmlkZSB0aGUgRURJRCBidXQgaXQncyBhIGh1Z2UgcGFpbi4K
Pgo+IENvbW1pdCA2YWQwODJiZWU5MDIgKCJwaHk6IGZyZWVzY2FsZTogYWRkIFNhbXN1bmcgSERN
SSBQSFkiKSBhbHJlYWR5Cj4gImZpeGVkIiB0aGUgc2Ftc3VuZyBoZG1pIHBoeSBkcml2ZXIgdG8g
cmV0dXJuIHRoZSBuZXh0IGZyZXF1ZW5jeSBpZiBhbgo+IGV4YWN0IG1hdGNoIGhhc24ndCBiZWVu
IGZvdW5kIChOWFAgdHJlZSdzIG1hdGNoIGZyZXF1ZW5jaWVzIGV4YWN0bHksIGJ1dAo+IHRoaXMg
Z2V0cyB0aGUgZmlyc3QgY2xvY2sgd2l0aCBwaXhjbGsgPD0gcmF0ZSksIHNvIGlmIHRoaXMgY2hl
Y2sgaXMgYWxzbwo+IHJlbGF4ZWQgb3VyIGRpc3BsYXlzIHdvdWxkIHdvcmsgb3V0IG9mIHRoZSBi
b3guCgpBcmUgeW91IHByb3Bvc2luZyB0byByZXBsYWNlICdyZXR1cm4gTU9ERV9DTE9DS19SQU5H
RScgd2l0aCBhIHByaW50ZWQgd2FybmluZz8KCj4KPiBJIGFsc28gZG9uJ3Qgc2VlIGFueSBvdGhl
ciBicmlkZ2UgZG9pbmcgdGhpcyBraW5kIG9mIGNoZWNrLgo+IGRyaXZlcnMvZ3B1L2RybS9icmlk
Z2UvaW14L2lteDkzLW1pcGktZHNpLmMgaGFzIGEgc2ltaWxhciBjaGVjayB3aXRoIGEKPiAwLjUl
IGxlZXdheSwgYW5kIGFsbCB0aGUgb3RoZXIgZHJpdmVycyBkb24ndCBjaGVjayBhbnl0aGluZy4K
PiBJZiB5b3Ugd2FudCB0byBhZGQgc29tZSBsZXZlbCBvZiBzYWZldHksIEkgdGhpbmsgd2UgY291
bGQgbWFrZSB0aGlzIHdvcmsKPiB3aXRoIGEgNSUgbWFyZ2luIGVhc2lseS4uLiBQcmludGluZyBh
IHdhcm5pbmcgaW4gZG1lc2cgY291bGQgd29yayBpZgo+IHlvdSdyZSB3b3JyaWVkIGFib3V0IGFy
dGlmYWN0cywgYnV0IGxpdHRlcmFseSBhbnl0aGluZyBpcyBiZXR0ZXIgdGhhbiBhCj4gYmxhY2sg
c2NyZWVuIHdpdGggbm8gZXJyb3IgbWVzc2FnZSBpbiBteSBvcGluaW9uLgo+Cj4KPiBJbiBwcmFj
dGljZSB0aGUgc2NyZWVuIEknbSBsb29raW5nIGF0IGhhcyBhbiBFRElEIHdoaWNoIG9ubHkgc3Vw
cG9ydHMKPiA1MS4yTUh6IGFuZCB0aGUgY2xvc2VzdCBmcmVxdWVuY3kgc3VwcG9ydGVkIGJ5IHRo
ZSBTYW1zdW5nIEhETUkgcGh5IGlzCj4gNTAuNE1Ieiwgc28gdGhhdCdzIGEgfjEuNSUgZGlmZmVy
ZW5jZSBhbmQgaXQnZCBiZSBncmVhdCBpZiBpdCBjb3VsZCB3b3JrCj4gb3V0IG9mIHRoZSBib3gu
CgpJIHdvbmRlciBpZiB0aGUgSERNSSBQSFkgY291bGQgYmUgaW1wcm92ZWQgdG8gYmV0dGVyIGR5
bmFtaWNhbGx5CmNhbGN1bGF0ZSB2YWx1ZXMgaW5zdGVhZCBvZiB0aGUgbG9vayB0YWJsZXMuCgph
ZGFtCj4KPiBGb3IgcmVmZXJlbmNlLCB0aGUgb3V0cHV0IG9mIGVkaWQtZGVjb2RlIGlzIGFzIGZv
bGxvdzoKPiAtLS0KPiBlZGlkLWRlY29kZSAvc3lzL2RldmljZXMvcGxhdGZvcm0vZGlzcGxheS1z
dWJzeXN0ZW0vZHJtL2Nhcgo+IGQxL2NhcmQxLUhETUktQS0xL2VkaWQKPiBlZGlkLWRlY29kZSAo
aGV4KToKPgo+IDAwIGZmIGZmIGZmIGZmIGZmIGZmIDAwIDNhIDQ5IDAzIDAwIDAxIDAwIDAwIDAw
Cj4gMjAgMWUgMDEgMDMgODAgMTAgMDkgMDAgMGEgMDAgMDAgMDAgMDAgMDAgMDAgMDAKPiAwMCAw
MCAwMCAwMCAwMCAwMCAwMSAwMSAwMSAwMSAwMSAwMSAwMSAwMSAwMSAwMQo+IDAxIDAxIDAxIDAx
IDAxIDAxIDAwIDE0IDAwIDQwIDQxIDU4IDIzIDIwIGEwIDIwCj4gYzggMDAgOWEgNTYgMDAgMDAg
MDAgMTggMDAgMDAgMDAgMTAgMDAgMDAgMDAgMDAKPiAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAw
MCAwMCAwMCAwMCAwMCAxMCAwMCAwMAo+IDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAw
IDAwIDAwIDAwIDAwIDEwCj4gMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAg
MDAgMDAgOWEKPgo+IC0tLS0tLS0tLS0tLS0tLS0KPgo+IEJsb2NrIDAsIEJhc2UgRURJRDoKPiAg
IEVESUQgU3RydWN0dXJlIFZlcnNpb24gJiBSZXZpc2lvbjogMS4zCj4gICBWZW5kb3IgJiBQcm9k
dWN0IElkZW50aWZpY2F0aW9uOgo+ICAgICBNYW51ZmFjdHVyZXI6IE5SSQo+ICAgICBNb2RlbDog
Mwo+ICAgICBTZXJpYWwgTnVtYmVyOiAxCj4gICAgIE1hZGUgaW46IHdlZWsgMzIgb2YgMjAyMAo+
ICAgQmFzaWMgRGlzcGxheSBQYXJhbWV0ZXJzICYgRmVhdHVyZXM6Cj4gICAgIERpZ2l0YWwgZGlz
cGxheQo+ICAgICBNYXhpbXVtIGltYWdlIHNpemU6IDE2IGNtIHggOSBjbQo+ICAgICBHYW1tYTog
MS4wMAo+ICAgICBSR0IgY29sb3IgZGlzcGxheQo+ICAgICBGaXJzdCBkZXRhaWxlZCB0aW1pbmcg
aXMgdGhlIHByZWZlcnJlZCB0aW1pbmcKPiAgIENvbG9yIENoYXJhY3RlcmlzdGljczoKPiAgICAg
UmVkICA6IDAuMDAwMCwgMC4wMDAwCj4gICAgIEdyZWVuOiAwLjAwMDAsIDAuMDAwMAo+ICAgICBC
bHVlIDogMC4wMDAwLCAwLjAwMDAKPiAgICAgV2hpdGU6IDAuMDAwMCwgMC4wMDAwCj4gICBFc3Rh
Ymxpc2hlZCBUaW1pbmdzIEkgJiBJSTogbm9uZQo+ICAgU3RhbmRhcmQgVGltaW5nczogbm9uZQo+
ICAgRGV0YWlsZWQgVGltaW5nIERlc2NyaXB0b3JzOgo+ICAgICBEVEQgMTogIDEwMjR4NjAwICAg
IDU5Ljk5MyBIeiAxMjg6NzUgICAzOC4wOTUga0h6ICA1MS4yMDAgTUh6ICgxNTQgbW0geCA4NiBt
Cj4gbSkKPiAgICAgICAgICAgICAgICAgIEhmcm9udCAgMTYwIEhzeW5jICAzMiBIYmFjayAxMjgg
SHBvbCBOCj4gICAgICAgICAgICAgICAgICBWZnJvbnQgICAxMiBWc3luYyAgIDggVmJhY2sgIDE1
IFZwb2wgTgo+ICAgICBEdW1teSBEZXNjcmlwdG9yOgo+ICAgICBEdW1teSBEZXNjcmlwdG9yOgo+
ICAgICBEdW1teSBEZXNjcmlwdG9yOgo+IENoZWNrc3VtOiAweDlhCj4gLS0tCj4KPgo+IFRoYW5r
cywKPiAtLQo+IERvbWluaXF1ZSBNYXJ0aW5ldAo+Cj4KPgo+IC0tCj4gbGludXgtcGh5IG1haWxp
bmcgbGlzdAo+IGxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5CgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
