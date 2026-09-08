Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1687DC79F82
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 07:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jhcHk4KxbOYaNF2rLESud8Fr9qdTtKc4ZvfnHlYIVrE=; b=XhlA80Wm/6m25X
	P5BPdLHQ6k2SaLtlUMXI84e6ofpg+dUQVeKjyf+ue+RCzIo+oqBMizzJCUWx12ZzOachgQpcdVjSX
	iassiAXfKXO6MAsVc/eM0o0IQhn027VvQkP8LjqtKQlN71cQyk4NRGxKt+vuGolw1FMyGmZ/gXrV2
	2prxshvIERMHtnX7HF9bpHCx8skVgWHq5OCO4wi4R/beGSDFRnn9y1JrfHW8hd1MCntyF7Rywlxrw
	hRJNeAmFzvWM4ha9AmqmbEuOtyNjEaBpYIJAXMx3jdGYlpq56Bu5j9952c0Qt0xCKC0p4VkYvmkr0
	4cmfdvdXia5ceGtsWqaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3qS8-00000008ImK-2KcO;
	Tue, 08 Sep 2026 07:41:12 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3qS7-00000008ImB-2fPF
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 07:41:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 68CB560A97;
	Tue,  8 Sep 2026 07:41:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B4E61F00A3A;
	Tue,  8 Sep 2026 07:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788853269;
	bh=vmQrWS5hLAks8PCrVwczAHtggIpr+4bF8y0hX2HdQ3Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=YSHlpVkF+p9pKv2cMlGGeLC99pScBBkeNIrRnMllT6ED+GMpjkHWxQjqmyohTIRBs
	 oQ2ntC2zeHslmnV398yWF3ZsixXsIb49RjEb8LWptWBS87iQB+FMWE3Nvwe/hRRlv7
	 SZR2BdKxaOReCfai9ROKVS4oN5nhIr/a/m3bF3ZweDM9mDFjh1NBdYeUQkrrhADbfj
	 zRI1OKeNRY5CgddbFA3+OJ9mZpu0OKYAUZiq1i38UrCBwW9zl8JD4lkZADptHTHJYS
	 qwonHce61aJ5D7sDRuCf7Ul6LxGDPup/xzRBa04sjfmDC4DcPKoZ6V+ffhbTSdogRa
	 KVTOaLgTT1BMQ==
Date: Tue, 8 Sep 2026 09:41:00 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Claudiu Beznea <claudiu.beznea+renesas@tuxon.dev>
Cc: yoshihiro.shimoda.uh@renesas.com, vkoul@kernel.org, 
	neil.armstrong@linaro.org, geert+renesas@glider.be, magnus.damm@gmail.com, 
	prabhakar.mahadev-lad.rj@bp.renesas.com, claudiu.beznea@tuxon.dev, linux-renesas-soc@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, stable@vger.kernel.org, Pavel Machek <pavel@nabladev.com>, 
	Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Subject: Re: [PATCH v5] phy: renesas: rcar-gen3-usb2: Avoid long delay in
 atomic context
Message-ID: <hwv6geqxbph5xfcqeu3r6pz6dvb5cteuxg3bh3dzsosl2viuxj@rma3ox42igkv>
References: <20260716183246.3183877-1-claudiu.beznea+renesas@tuxon.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260716183246.3183877-1-claudiu.beznea+renesas@tuxon.dev>
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

T24gVGh1LCBKdWwgMTYsIDIwMjYgYXQgMDk6MzI6NDZQTSArMDMwMCwgQ2xhdWRpdSBCZXpuZWEg
d3JvdGU6Cj4gRnJvbTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6bmVhLnVqQGJwLnJlbmVz
YXMuY29tPgo+IAo+IFRoZSBPVEcgUEhZIGluaXRpYWxpemF0aW9uIHNlcXVlbmNlIG5lZWRzIHRv
IHdhaXQgZm9yIDIwIG1zIGF0IGEgc3BlY2lmaWMKPiBzdGVwLCBhcyBkZXNjcmliZWQgaW4gY29t
bWl0IDcyYzAzMzljMTE1YiAoInBoeTogcmVuZXNhczoKPiByY2FyLWdlbjMtdXNiMjogZm9sbG93
IHRoZSBoYXJkd2FyZSBtYW51YWwgcHJvY2VkdXJlIikuCj4gCj4gQ29tbWl0IDU1YTM4N2ViYjky
MSAoInBoeTogcmVuZXNhczogcmNhci1nZW4zLXVzYjI6IExvY2sgYXJvdW5kIGhhcmR3YXJlCj4g
cmVnaXN0ZXJzIGFuZCBkcml2ZXIgZGF0YSIpIHRyaWVkIHRvIGFkZHJlc3MgdmFyaW91cyBwcm9i
bGVtcyBpbiB0aGUKPiByY2FyLWdlbjMtdXNiMiBkcml2ZXIgYW5kIGNvbnZlcnRlZCB0aGUgbXV0
ZXggcHJvdGVjdGluZyBIVyByZWdpc3Rlcgo+IGFjY2Vzc2VzIHRvIGEgc3BpbiBsb2NrLCBsZWF2
aW5nLCBob3dldmVyLCBhIGxvbmcgZGVsYXkgaW4gdGhlIGNyaXRpY2FsCj4gc2VjdGlvbiBwcm90
ZWN0ZWQgYnkgdGhlIHNwaW4gbG9jay4gVGhpcyBtYXkgYmVjb21lIGEgcHJvYmxlbSwKPiBlc3Bl
Y2lhbGx5IG9uIFJUIGtlcm5lbHMuCj4gCj4gVG8gYWRkcmVzcyB0aGlzLCByZWxlYXNlIHRoZSBz
cGluIGxvY2sgYmVmb3JlIHNsZWVwaW5nIGZvciAyMCBtcyBhcwo+IHJlcXVpcmVkIGJ5IHRoZSBI
VyBtYW51YWwgYW5kIHJlYWNxdWlyZSBpdCBhZnRlcndhcmRzLiBUbyBhdm9pZCBvdGhlcgo+IHRo
cmVhZHMgZW50ZXJpbmcgdGhlIGNyaXRpY2FsIHNlY3Rpb24gYW5kIGNvbmZpZ3VyaW5nIHRoZSBI
VyB3aGlsZSB0aGUKPiBzb2Z0d2FyZSBpcyB3YWl0aW5nIGZvciB0aGUgT1RHIGluaXRpYWxpemF0
aW9uIHRvIGNvbXBsZXRlLCBpbnRyb2R1Y2UgdGhlCj4gb3RnX2luaXRpYWxpemluZyB2YXJpYWJs
ZSBhbG9uZ3NpZGUgdGhlIG90Z19pbml0X2RvbmUgd2FpdCBxdWV1ZS4gQW55Cj4gb3RoZXIgdGhy
ZWFkIHRyeWluZyB0byBjb25maWd1cmUgdGhlIEhXIHdoaWxlIHRoZSBPVEcgUEhZIGluaXRpYWxp
emF0aW9uCj4gaXMgaW4gcHJvZ3Jlc3Mgd2FpdHMgZm9yIHRoZSB3YWl0IHF1ZXVlIGluc3RlYWQg
b2YgaW1tZWRpYXRlbHkgcmV0dXJuaW5nCj4gZXJyb3JzIHRvIFBIWSB1c2Vycy4gVGhlIElSUXMg
d2VyZSBhbHNvIGRpc2FibGVkIHdoaWxlIHdhaXRpbmcgZm9yIHRoZSBPVEcKPiBQSFkgaW5pdGlh
bGl6YXRpb24gdG8gY29tcGxldGUsIGFzIHRoZSBpbnRlcnJ1cHQgaGFuZGxlciBtYXkgYWxzbyBh
cHBseSBIVwo+IHNldHRpbmdzLgo+IAo+IFRoZSBPVEcgY2FuIG9ubHkgYmUgaW5pdGlhbGl6ZWQg
b25jZS4gSXQgaXMgaW5pdGlhbGl6ZWQgYnkgdGhlIGZpcnN0IFBIWQo+IHRoYXQgY2FsbHMgc3Ry
dWN0IHBoeV9vcHM6OnJjYXJfZ2VuM19waHlfdXNiMl9pbml0KCkuCj4gCj4gVG8gYXZvaWQgZmFp
bHVyZXMgd2hlbiBtdWx0aXBsZSBQSFlzIGNhbGwgc3RydWN0Cj4gcGh5X29wczo6cmNhcl9nZW4z
X3BoeV91c2IyX2luaXQoKSBzaW11bHRhbmVvdXNseSwgYW5kIHRoZSBQSFkgcmVzcG9uc2libGUK
PiBmb3IgaW5pdGlhbGl6aW5nIHRoZSBPVEcgZWl0aGVyIGZhaWxzIG9yIGRlaW5pdCBxdWlxbHkg
YW5kIGFub3RoZXIgUEhZCj4gdGFrZXMgb3ZlciB0aGUgUEhZIGluaXQgcm9sZSksIHRoZSBjb2Rl
IHdhaXRpbmcgZm9yIHRoZQo+IGNoYW5uZWwtPm90Z19pbml0X2RvbmUgd2FpdCBxdWV1ZSByZXRy
aWVzIHVwIHRvIE5VTV9PRl9QSFlTIHRpbWVzLgo+IAo+IEZpeGVzOiA1NWEzODdlYmI5MjEgKCJw
aHk6IHJlbmVzYXM6IHJjYXItZ2VuMy11c2IyOiBMb2NrIGFyb3VuZCBoYXJkd2FyZSByZWdpc3Rl
cnMgYW5kIGRyaXZlciBkYXRhIikKPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+IFJlcG9y
dGVkLWJ5OiBQYXZlbCBNYWNoZWsgPHBhdmVsQG5hYmxhZGV2LmNvbT4KPiBDbG9zZXM6IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2FsbC9hZmhrWDJZczJCRzFnbnF5QGR1by51Y3cuY3oKPiBSZXBv
cnRlZC1ieTogTm9idWhpcm8gSXdhbWF0c3UgPGl3YW1hdHN1QG5pZ2F1cmkub3JnPgo+IENsb3Nl
czogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL2FmaGtYMllzMkJHMWducXlAZHVvLnVjdy5j
ego+IFNpZ25lZC1vZmYtYnk6IENsYXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5lYS51akBicC5y
ZW5lc2FzLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5u
YW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K61
4K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
