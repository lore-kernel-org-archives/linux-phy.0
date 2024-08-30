Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1133CA0EEC
	for <linux-phy@archiver.kernel.org>; Fri, 30 Aug 2024 07:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tBUOWLnitRYF8PDGxIhQfhOiZwPvJcOATXg9KuKicc0=; b=By2HqtzgGS9GRC
	C3MtCIBrb0qyeOcWG35uU+6eTXbZf/k2C///UE7uetrYRQzRdzy5dygc2j+oomb1oi+ieaL1rlgPl
	RoqG/MVz4P8W0w9k9uQW8FqNK0JhRgoL0+MLojEvja9rZrk7eIApA++jJLiTZQxXaZaypuT7t4dSz
	SiolUt0AcagQu8Q5N5laFowFGdTiSUhpwW3UZ5wi2C9II0b1JOT6DINXn1mrAoJm/qF3iOUB2PumH
	8GaJU38nvGJvJLqFLX9fVQFiFBrHsJvaoumfOn+MqSXILBWo84uXAzy/+dl5oZstwQ10vAcSg3o/6
	inuOiewlMK/UUxFOqq+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjwUj-00000005D60-291l;
	Fri, 30 Aug 2024 07:56:33 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjwTp-00000005Cov-1MJM
	for linux-phy@lists.infradead.org;
	Fri, 30 Aug 2024 07:55:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 6693EA406AB;
	Fri, 30 Aug 2024 07:55:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8AFE3C4CEC2;
	Fri, 30 Aug 2024 07:55:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725004536;
	bh=a6GgthwpQdP+3MyNf7hJ+X0yUzvhEYWRQZqJ5m0AGNg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jsaF7WdG755TNKq/3PWm9sS0/Bd+hFVVXie4y2g6fUjg1JbbGBwcnjpTzvPWLPXGe
	 f2YSn5lJ7AOZ4TsZfkiaLyQ6ECWP/62lfyHmIujIbH9GcGIH9rG902kTYHNRUgtj5U
	 9kBbqkZHXedvl3+9hdTqz5ml/0kXrLn+ar3TgiO2eA5620kdXplSABOn6t9gvyfVsf
	 2ksOaIdzQ0h2E7jpM/1anpXTZ275HnwBaYFEzNyE7PZQmq1R9ntAXV8l0QuIeWqKYj
	 53FbgzbXv0mdWjuVlYro2QTSz7cX2GeNZgd9bvoovfauj/RVUFy8WtpZgw8j0wYNE4
	 J6CH+qla9AHaQ==
Date: Fri, 30 Aug 2024 13:25:32 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: linux-phy@lists.infradead.org, dominique.martinet@atmark-techno.com,
	linux-imx@nxp.com, festevam@gmail.com, frieder.schrempf@kontron.de,
	aford@beaconembedded.com,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Lucas Stach <l.stach@pengutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: Re: [RFC V2 2/2] phy: freescale: fsl-samsung-hdmi: Support dynamic
 integer divider
Message-ID: <ZtF69NSHFtAwDupq@vaman>
References: <20240829021256.787615-1-aford173@gmail.com>
 <20240829021256.787615-2-aford173@gmail.com>
 <ZtC2LhYAAdPdSRpz@vaman>
 <CAHCN7xKW=zxips+J73913eEfS+p_e3dN9BWU08=poj599JbUxA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7xKW=zxips+J73913eEfS+p_e3dN9BWU08=poj599JbUxA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_005537_541538_1F27BEBD 
X-CRM114-Status: GOOD (  23.80  )
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

T24gMjktMDgtMjQsIDEzOjMwLCBBZGFtIEZvcmQgd3JvdGU6Cj4gT24gVGh1LCBBdWcgMjksIDIw
MjQgYXQgMTI6NTbigK9QTSBWaW5vZCBLb3VsIDx2a291bEBrZXJuZWwub3JnPiB3cm90ZToKPiA+
Cj4gPiBPbiAyOC0wOC0yNCwgMjE6MTIsIEFkYW0gRm9yZCB3cm90ZToKPiA+ID4gVGhlcmUgaXMg
Y3VycmVudGx5IGEgbG9vay11cCB0YWJsZSBmb3IgYSB2YXJpZXR5IG9mIHJlc29sdXRpb25zLgo+
ID4gPiBTaW5jZSB0aGUgcGh5IGhhcyB0aGUgYWJpbGl0eSB0byBkeW5hbWljYWxseSBjYWxjdWxh
dGUgdGhlIHZhbHVlcwo+ID4gPiBuZWNlc3NhcnkgdG8gdXNlIHRoZSBpbnRnZXIgZGl2aWRlciB3
aGljaCBzaG91bGQgYWxsb3cgbW9yZQo+ID4gPiByZXNvbHV0aW9ucyB3aXRob3V0IGhhdmluZyB0
byB1cGRhdGUgdGhlIGxvb2stdXAtdGFibGUuICBJZiB0aGUKPiA+ID4gaW50ZWdlciBjYWxjdWxh
dG9yIGNhbm5vdCBnZXQgYW4gZXhhY3QgZnJlcXVlbmN5LCBpdCBmYWxscyBiYWNrCj4gPiA+IHRv
IHRoZSBsb29rLXVwLXRhYmxlLiAgQmVjYXVzZSB0aGUgTFVUIGFsZ29yaXRobSBkb2VzIHNvbWUK
PiA+ID4gcm91bmRpbmcsIEkgZGlkIG5vdCByZW1vdmUgaW50ZWdlciBlbnRyaWVzIGZyb20gdGhl
IExVVC4KPiA+Cj4gPiBBbnkgcmVhc29uIHdoeSB0aGlzIGlzIFJGQz8KPiAKPiBTb21lb25lIHdh
cyBhc2tpbmcgZm9yIGZ1bmN0aW9uYWxpdHksIGJ1dCBJJ20gbm90IDEwMCUgc3VyZSB0aGlzIGlz
Cj4gdGhlIHJpZ2h0IGFwcHJvYWNoIG9yIGl0IHdvdWxkIGV2ZW4gd29yay4gIEkgYW0gd2FpdGlu
ZyBmb3IgZmVlZGJhY2sKPiBmcm9tIERvbWluaXF1ZSB0byBkZXRlcm1pbmUgaWYgdGhpcyBoZWxw
cyBzb2x2ZSB0aGUgZGlzcGxheSBmb3IgdGhhdAo+IHBhcnRpY3VsYXIgZGlzcGxheS4KPiAKPiA+
Cj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21haWwuY29t
Pgo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wt
c2Ftc3VuZy1oZG1pLmMgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhk
bWkuYwo+ID4gPiBpbmRleCBiYzVkMzYyNWVjZTYuLjc2ZTA4OTljNjAwNiAxMDA2NDQKPiA+ID4g
LS0tIGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMKPiA+ID4g
KysrIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMKPiA+ID4g
QEAgLTE2LDYgKzE2LDggQEAKPiA+ID4KPiA+ID4gICNkZWZpbmUgUEhZX1JFRyhyZWcpICAgICAg
ICAgKHJlZyAqIDQpCj4gPiA+Cj4gPiA+ICsjZGVmaW5lIFJFRzAxX1BNU19QX01BU0sgICAgIEdF
Tk1BU0soMywgMCkKPiA+ID4gKyNkZWZpbmUgUkVHMDNfUE1TX1NfTUFTSyAgICAgR0VOTUFTSyg3
LCA0KQo+ID4gPiAgI2RlZmluZSBSRUcxMl9DS19ESVZfTUFTSyAgICBHRU5NQVNLKDUsIDQpCj4g
PiA+ICAjZGVmaW5lIFJFRzEzX1RHX0NPREVfTE9XX01BU0sgICAgICAgR0VOTUFTSyg3LCAwKQo+
ID4gPiAgI2RlZmluZSBSRUcxNF9UT0xfTUFTSyAgICAgICAgICAgICAgIEdFTk1BU0soNywgNCkK
PiA+ID4gQEAgLTMxLDExICszMywxNyBAQAo+ID4gPgo+ID4gPiAgI2RlZmluZSBQSFlfUExMX0RJ
Vl9SRUdTX05VTSA2Cj4gPiA+Cj4gPiA+ICsjaWZuZGVmIE1IWgo+ID4gPiArI2RlZmluZSBNSFog
ICgxMDAwVUwgKiAxMDAwVUwpCj4gPiA+ICsjZW5kaWYKPiA+ID4gKwo+ID4gPiAgc3RydWN0IHBo
eV9jb25maWcgewo+ID4gPiAgICAgICB1MzIgICAgIHBpeGNsazsKPiA+ID4gICAgICAgdTggICAg
ICBwbGxfZGl2X3JlZ3NbUEhZX1BMTF9ESVZfUkVHU19OVU1dOwo+ID4gPiAgfTsKPiA+ID4KPiA+
ID4gK3N0YXRpYyBzdHJ1Y3QgcGh5X2NvbmZpZyBjdXN0b21fcGh5X3BsbF9jZmc7Cj4gPiA+ICsK
PiA+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGh5X2NvbmZpZyBwaHlfcGxsX2NmZ1tdID0gewo+
ID4gPiAgICAgICB7Cj4gPiA+ICAgICAgICAgICAgICAgLnBpeGNsayA9IDIyMjUwMDAwLAo+ID4g
PiBAQCAtNDQwLDEwICs0NDgsODMgQEAgZnNsX3NhbXN1bmdfaGRtaV9waHlfY29uZmlndXJlX3Bs
bF9sb2NrX2RldChzdHJ1Y3QgZnNsX3NhbXN1bmdfaGRtaV9waHkgKnBoeSwKPiA+ID4gICAgICAg
ICAgICAgIHBoeS0+cmVncyArIFBIWV9SRUcoMTQpKTsKPiA+ID4gIH0KPiA+ID4KPiA+ID4gK3N0
YXRpYyB1bnNpZ25lZCBsb25nIGZzbF9zYW1zdW5nX2hkbWlfcGh5X2ZpbmRfcG1zKHVuc2lnbmVk
IGxvbmcgZm91dCwgdTggKnAsIHUxNiAqbSwgdTggKnMpCj4gPiA+ICt7Cj4gPiA+ICsgICAgIHVu
c2lnbmVkIGxvbmcgYmVzdF9mcmVxID0gMDsKPiA+ID4gKyAgICAgdTMyIG1pbl9kZWx0YSA9IDB4
ZmZmZmZmZmY7Cj4gPgo+ID4gPiArICAgICB1OCBfcCwgYmVzdF9wOwo+ID4gPiArICAgICB1MTYg
X20sIGJlc3RfbTsKPiA+ID4gKyAgICAgdTggX3MsIGJlc3RfczsKPiA+ID4gKwo+ID4gPiArICAg
ICBmb3IgKF9wID0gMTsgX3AgPD0gMTE7ICsrX3ApIHsKPiA+Cj4gPiBzdGFydHMgd2l0aCAxIHRv
IDExLi4gd2h5Pwo+IAo+IEFjY29yZGluZyB0byBSZXYgMiBvZiB0aGUgOE1QIFJlZmVyZW5jZSBN
YW51YWwsIHRoZSBQcmV2aWRlciByYW5nZSBpcwo+IGJldHdlZW4gMSBhbmQgMTEuCgpXb3VsZCBi
ZSBiZXR0ZXIgdG8gZG9jdW1lbnQgdGhlc2UgYXNzdW1wdGlvbnMsIGFtIHN1cmUgaWYgc29tZW9u
ZSBhc2tzCnlvdSB0aGlzIG5leHQgeWVhciwgaXQgd291bGQgYmUgaGFyZCB0byByZWNhbGwgOi0p
CgotLSAKflZpbm9kCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
