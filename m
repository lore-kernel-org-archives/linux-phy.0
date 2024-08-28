Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19B36C636EE
	for <linux-phy@archiver.kernel.org>; Wed, 28 Aug 2024 19:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K3/niQWxtswrux6pEXGBeKQk0qEELc8d7YXIYZD9a7I=; b=fn2ja9lcYBy8N/
	5geakeMOrp80rkHCs6Zh3H5F1ERGf8QqIgzWbwhjRxpcYwCFARL9YFhFaP5/mcyfSdf3Kk+XaWFQ9
	6B1fctQi/nargys4wr9PdydnvCtHGzphFrtQzu0V/pLa/oxvxyIVAmgYCx+ckP4foAxVm9kGoa4XR
	wN6OAUUFpmFuJRZKvIsOPOxq9crXyWyWpproFF8kwRUMvgqTEGCv0V4YjeZ885eSgFkSXI83eWraQ
	d6/ghHONHS95Az6fQv7VFyXtIk6T4Biwwa6Gy6AyooeNnODGVf8Fc35g7DrZCrUfSrmoNPWry977I
	5Iw26R3tyG6nPUhM5hVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjOLF-0000000GjWN-328o;
	Wed, 28 Aug 2024 19:28:29 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjOL0-0000000GjMh-1Tef
	for linux-phy@lists.infradead.org;
	Wed, 28 Aug 2024 19:28:15 +0000
Received: by mail-pg1-x530.google.com with SMTP id 41be03b00d2f7-7c3ebba7fbbso5081685a12.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Aug 2024 12:28:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724873292; x=1725478092; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=41vNKmWV0Fmo4MXQhPV0ZKp536FxHqIvBGLbGjrcGLI=;
        b=gXn6c7/XtGV4ItbM+YV146TpvAzFhZyTa9WBCdlgxv2xTytUyHvJDE4Abb3iV8Iwni
         fBHZ+KaaxbtxuJP/8WAa2YuYsmtpy+xZtseX0G+/ojkpT1UDgACE/q4VkmjSjdW3s7ji
         STT4mpjVuPjGZ6js3fCllQeAduhjCIbsGM1KghOAptQkKoypbvw/AeSg9AqcO/pIiwH6
         3OErJ3vks4l+SOiM0Vu9GKFVU32jXq7ZwNJS5spDx45c6/MSfCoPO1KsIulD/p4aAJnr
         /jyWKkdSFC0wBNwIKP0eGqkdGKwCZYXplMKAVQtrnjTiDxHNg6cjGVGylsspJlzd2wXv
         CNpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724873292; x=1725478092;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=41vNKmWV0Fmo4MXQhPV0ZKp536FxHqIvBGLbGjrcGLI=;
        b=pBCATbD+ImFWny8ym/YWsflHZeleVmSan47HBm3uHC2Q2PmS7T6y2n1LPtJxu6+1OB
         mT27OLPDwceoIwzYA2Ovf/q85t/cDr5r1wwPE8jU7QNnbhEngBFyfyGIzbs/9nGDnQEJ
         n0J3bxTMCbH/llrJG2NemwfkqwuwGQatp09cyQpJQSiI7Y4HAxcp7cxO01THUQtybnut
         RLLxRug5mx4GUsKl4ZpObrmD6yGP7AGYc2AhkTBxW4BJZta4YLow0nUYm/wHtql4mOSx
         iO9RXbNyUxkjxn5oWM6HqCGXx5mfXJJoQlTcZnTsmwqGPw+EV5Er6rTgVZTzB127pBIY
         w0hg==
X-Gm-Message-State: AOJu0YwW3/fD9tv/MuA8puJbGFQrknQdu5VbswUvq4V2nf7ppfMiJjRm
	slf77EK58FYtyP1bSCt0BGUXiBw2HNbK3R3pPW57Gwz1A71DiMk0jUVz/f63LdIjJZKGmCrHcBZ
	1QYmD09tc232m8l456VHUTwTC1cY=
X-Google-Smtp-Source: AGHT+IHGKQRrrJKAWjVfpmgtEEps4m/S1EaPYltuzkTd89UmilZ0DIs4APB42zq9VQmfA4Lnvo50dt6R8J5UrG5K0ow=
X-Received: by 2002:a17:90b:46d8:b0:2d3:b55e:5f2 with SMTP id
 98e67ed59e1d1-2d8561a24f8mr404633a91.14.1724873292293; Wed, 28 Aug 2024
 12:28:12 -0700 (PDT)
MIME-Version: 1.0
References: <20240828024813.1353572-1-aford173@gmail.com> <20240828024813.1353572-2-aford173@gmail.com>
 <Zs7kJ6vCDbxVvxU1@atmark-techno.com> <CAHCN7xLX1FPQFFBsgfd4Msa+y=KNay9M9q1fu=P1uuKZLacS4g@mail.gmail.com>
In-Reply-To: <CAHCN7xLX1FPQFFBsgfd4Msa+y=KNay9M9q1fu=P1uuKZLacS4g@mail.gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 28 Aug 2024 14:28:00 -0500
Message-ID: <CAHCN7xJtw2JakEtvD31dCKvpanzu6Pxbc0S81rDurYbVp5g_aA@mail.gmail.com>
Subject: Re: [RFC 2/2] phy: freescale: fsl-samsung-hdmi: Support dynamic
 integer divider
To: Dominique Martinet <dominique.martinet@atmark-techno.com>
Cc: linux-phy@lists.infradead.org, linux-imx@nxp.com, festevam@gmail.com, 
	frieder.schrempf@kontron.de, aford@beaconembedded.com, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	Marco Felsch <m.felsch@pengutronix.de>, Lucas Stach <l.stach@pengutronix.de>, 
	linux-kernel@vger.kernel.org, Makoto Sato <makoto.sato@atmark-techno.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_122814_418595_0E03EF88 
X-CRM114-Status: GOOD (  38.92  )
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

T24gV2VkLCBBdWcgMjgsIDIwMjQgYXQgOToxMeKAr0FNIEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21h
aWwuY29tPiB3cm90ZToKPgo+IE9uIFdlZCwgQXVnIDI4LCAyMDI0IGF0IDM6NDfigK9BTSBEb21p
bmlxdWUgTWFydGluZXQKPiA8ZG9taW5pcXVlLm1hcnRpbmV0QGF0bWFyay10ZWNobm8uY29tPiB3
cm90ZToKPiA+Cj4gPiBBZGFtIEZvcmQgd3JvdGUgb24gVHVlLCBBdWcgMjcsIDIwMjQgYXQgMDk6
NDg6MDJQTSAtMDUwMDoKPiA+ID4gVGhlcmUgaXMgY3VycmVudGx5IGEgbG9vay11cCB0YWJsZSBm
b3IgYSB2YXJpZXR5IG9mIHJlc29sdXRpb25zLgo+ID4gPiBTaW5jZSB0aGUgcGh5IGhhcyB0aGUg
YWJpbGl0eSB0byBkeW5hbWljYWxseSBjYWxjdWxhdGUgdGhlIHZhbHVlcwo+ID4gPiBuZWNlc3Nh
cnkgdG8gdXNlIHRoZSBpbnRnZXIgZGl2aWRlciB3aGljaCBzaG91bGQgYWxsb3cgbW9yZQo+ID4g
PiByZXNvbHV0aW9ucyB3aXRob3V0IGhhdmluZyB0byB1cGRhdGUgdGhlIGxvb2stdXAtdGFibGUu
ICBJZiB0aGUKPiA+ID4gaW50ZWdlciBjYWxjdWxhdG9yIGNhbm5vdCBnZXQgYW4gZXhhY3QgZnJl
cXVlbmN5LCBpdCBmYWxscyBiYWNrCj4gPiA+IHRvIHRoZSBsb29rLXVwLXRhYmxlLiAgQmVjYXVz
ZSB0aGUgTFVUIGFsZ29yaXRobSBkb2VzIHNvbWUKPiA+ID4gcm91bmRpbmcsIEkgZGlkIG5vdCBy
ZW1vdmUgaW50ZWdlciBlbnRyaWVzIGZyb20gdGhlIExVVC4KPiA+Cj4gPiBUaGFuayB5b3UhCj4g
Pgo+ID4gV2UncmUgc3RpbGwgcnVubmluZyA1LjEwIHNvIEkgYmFja3BvcnRlZCB0aGUgZHJpdmVy
IGFzIG9mIGl0J3MgY3VycmVudAo+ID4gc3RhdGUgZmlyc3QgKHRoYXQgcGFydCB3b3JrcyksIHVu
Zm9ydHVuYXRlbHkgb3VyIDUxLjJNSHogZGlzcGxheSBkb2VzCj4gPiBub3Qgd29yayB3aXRoIHRo
aXMuCj4gPgo+ID4gQWZ0ZXIgcGh5X2Nsa19yb3VuZF9yYXRlKCkgbm90IHJvdW5kIHRoZSBwaXhl
bCBjbG9jayB0byB0aGUgdGFibGUgdmFsdWVzCj4gPiAob3RoZXJ3aXNlIHdlJ2Qgb25seSBnZXQg
cm91bmRlZCB2YWx1ZXMpLCBhbmQgbWFraW5nIHBoeV9jbGtfc2V0X3JhdGUoKQo+ID4gcGFzcyB0
aGUgcmVxdWVzdGVkIGByYXRlYCBpbnN0ZWFkIG9mIHVzaW5nIHRoZSBuZXh0IHNtYWxsZXIgY2Zn
LT5waXhjbGssCj4gPiB0aGUgZGlzcGxheSBubyBsb25nZXIgY29tZXMgdXAuCgpJdCBsb29rcyBs
aWtlIEkgbmVlZCB0byB1cGRhdGUgcGh5X2Nsa19yb3VuZF9yYXRlIHRvIGNhbGN1bGF0ZSB0aGUK
aW50ZWdlciBjbG9jayB2YWx1ZSB0aGVyZSBhcyB3ZWxsIGFuZCBpZiBpdCdzIG5vdCBwb3NzaWJs
ZSB0byByZWFjaAp0aGUgZGVzaXJlZCB2YWx1ZSwgZmFsbCBiYWNrIHRvIHRoZSBMVVQuCgpJIGxp
a2VseSB3b24ndCBnZXQgdGhhdCBkb25lIHRvZGF5LCBidXQgSSdsbCB0cnkuCgphZGFtCj4KPiBE
byB5b3Ugd2FudCBtZSB0byBjcmVhdGUgYSB0YWJsZSBlbnRyeSBmb3IgNTEuMk1Iej8gIEkgYW0g
cHJldHR5IHN1cmUKPiB0aGUgaW50ZWdlciBlbmdpbmUgY2FuIGhhbmRsZSBpdC4gIEknbGwgaW52
ZXN0aWdhdGUgd2hhdCdzIGNhbGxpbmcKPiBwaHlfY2xrX3JvdW5kX3JhdGUgdG8gc2VlIGlmIHdl
IGNhbiB1c2UgdGhlIFBNUyBjYWxjdWFsdG9yIHRvIGF2b2lkCj4gdGhlIGxvb2stdXAgdGFibGUu
Cj4KPgo+ID4KPiA+IEl0IGNvbWVzIHVwIHdpdGggdGhlIHZhbHVlcyBvYnRhaW5lZCBmb3IgNTAu
NE1IeiAobmV4dCBjbG9zZXN0IHZhbHVlKSwKPiA+IHdoaWNoIGFsc28gaGFzIGFuIGV4YWN0IG1h
dGNoIHNvIHVzZXMgdGhlIGludGVnZXIgZGl2aWRlciB0aGlzIHBhdGNoCj4gPiBjb21wdXRlcyBp
bnN0ZWFkIG9mIHRoZSB0YWJsZSB2YWx1ZXMsIGJ1dCBub3Qgd2l0aCB0aGUgNTEuMk1IeiBpdAo+
ID4gcmVxdWVzdHMuLi4KPiA+IEknbSBhZnJhaWQgYXQgdGhpcyBwb2ludCBJIGRvbid0IGtub3cg
aG93IHRvIGRlYnVnIHRoYXQgZnVydGhlciB3aXRob3V0Cj4gPiBnZXR0aW5nIGEgc2NvcGUgb3V0
IChJIGRvbid0IGtub3cgaWYgdGhlIHNvYyBpc24ndCBnZW5lcmF0aW5nIHNvbWV0aGluZwo+ID4g
Y29ycmVjdCBvciBpZiB0aGUgZGlzcGxheSBhY3R1YWxseSBkb2Vzbid0IGxpa2UgdGhlIGZyZXF1
ZW5jeSBpdAo+ID4gcmVxdWVzdHM/ISB0aGUgbGF0ZXIgY291bGQgYmUgY2hlY2tlZCBieSBwbHVn
Z2luZyBpdCBpbiB0byBhbm90aGVyIFBDCj4gPiB0aGF0IG1pZ2h0IHN1cHBvcnQgdGhhdCBmcmVx
dWVuY3kuLi4pLCBhbmQgdGhhdCBpcyBnb2luZyB0byB0YWtlIHF1aXRlIGEKPiA+IHdoaWxlLi4u
Cj4gPgo+ID4gSG9wZWZ1bGx5IEZyaWVkZXIgd2lsbCBoYXZlIG1vcmUgc3VjY2VzcyB3aXRoIGhp
cyBkaXNwbGF5cz8KPiA+IEl0IGNvdWxkIGFsc28gYmUgdmVyeSB3ZWxsIGR1ZSB0byBzb21lIG9m
IHRoZSBkaWZmZXJlbmNlcyB3aXRoIG91ciA1LjEwCj4gPiB0cmVlLCBzb3JyeSBhYm91dCB0aGF0
Lgo+ID4KPiA+ID4gIHN0YXRpYyBpbnQgZnNsX3NhbXN1bmdfaGRtaV9waHlfY29uZmlndXJlKHN0
cnVjdCBmc2xfc2Ftc3VuZ19oZG1pX3BoeSAqcGh5LAo+ID4gPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0IHBoeV9jb25maWcgKmNmZykKPiA+ID4g
IHsKPiA+ID4gKyAgICAgdTMyIGRlc2lyZWRfY2xvY2sgPSBjZmctPnBpeGNsayAqIDU7Cj4gPgo+
ID4gKEkgZG9uJ3QgcmVhbGx5IHVuZGVyc3RhbmQgd2hlcmUgdGhhdCBgKiA1YCBjb21lcyBmcm9t
LCBidXQgSSBndWVzcyBpdCdzCj4gPiBleHBlY3RlZD8gd29ya3MgZm9yIG90aGVyIGRpc3BsYXkg
YW5kIG5laWdoYm9yIGZyZXF1ZW5jeSBhbnl3YXkuLi4pCj4KPiBXaGVuIEkgbG9va2VkIGF0IHRo
ZSBMVVQgZW50cmllcyBmb3IgdGhlIGNsb2NrIHJhdGVzIHRoYXQgZG9uJ3QgbmVlZAo+IHRoZSBm
cmFjdGlvbmFsIGRpdmlkZXIsIEkgbm90ZWQgdGhlIGNsb2NrIHJhdGUgd2FzIDV4IHRoZSBwaXgg
Y2xvY2suCj4gVGhpcyB3YXMgY29uc2lzdGVudCBmb3IgZWFjaCBlbnRyeS4gIEV2ZW4gd2hlbiB0
aGUgZnJhY3Rpb25hbCBkaXZpZGVyCj4gd2FzIHVzZWQsIGl0IGFwcGVhcmVkIHRoYXQgdGhlIGNs
b2NrIHJhdGUgd2FzIDV4IHRoZSBwaXggY2xrLiAgQmVjYXVzZQo+IHRoZSBQTVMgY2FsY3VsYXRv
ciBJIHdyb3RlIGlzIGV4cGVjdGluZyBhIGNsb2NrIHJhdGUsIEkganVzdAo+IG11bHRpcGxpZWQg
YnkgNSBoZXJlIGluc3RlYWQgb2YgaW5zaWRlIHRoZSBQTVMgY2FsY3VsYXRvci4KPgo+IGFkYW0K
PiA+Cj4gPiBUaGFua3MsCj4gPiAtLQo+ID4gRG9taW5pcXVlCj4gPgo+ID4KCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
