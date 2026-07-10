Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3286C43458
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jul 2026 21:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ie1qOOpoF/Fp0Y6IxGMS7+SjWDImbH0RJSIitzXKONE=; b=fXrL2Mooqe+5yH
	oG2sT0dtSRzZ3bqTEsJaQUxrH336jRop6GafL6+8w9vH9ctxFNhjgCbn1//sH87cfwT9FPvs41FZk
	ZGzhsYSAshqvyQOGz7L9Rf/jmtRlNFPaq+b6uFliUHUui5kk1NXREUHFatcJkCIFNnu0FwU3AT1WY
	mSm7JNiZqxZX5fGbj6EzUVfdbhqnxxVfqV7qK9o9MuK5pozhn16iRDtN/GbqMKbTP2vAOZ+pYSLVo
	HGetJK5lqEt3KPaQT/cLsXMLbFGiUahZXaFHZeHDxyKr+IHYcnfvbqcWE+7hf2l29YnWNHCzb9dZQ
	pnEH8D8nvc+Qaez/zBSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIbt-00000005n3M-1Stx;
	Fri, 10 Jul 2026 21:18:13 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIbr-00000005n3D-35fr
	for linux-phy@lists.infradead.org;
	Fri, 10 Jul 2026 21:18:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 31E5960052;
	Fri, 10 Jul 2026 21:18:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F52E1F000E9;
	Fri, 10 Jul 2026 21:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783718290;
	bh=KU/h5+v031E5lMrCi2/2Pe1XScdyKJyroAIgt9YDWiY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ipCMgIh+JDxGYZgdYjeGirKJTH9D1fGS9GaNvPdDOC+o23uYIoa5MK9cmiuW8yIo4
	 oKdgKbJVS8b44gGHvDiOuguslaGhrK5TjdslDLfNJXxwrvOOHWUpeg+c3lSU0wJlbM
	 Iwfd45IElZ8gQWygfSfHV0cWT8/HPrdfzRkOAGgX23XERSD9df5L90DsKNFQ02+oak
	 UcN7M+5PwxIrKXj3jr1cxv3sClCZy+v30Ld9bCkO3IdJ9ZTfhYppzmrnqanilB+ctu
	 30/Aytc3PoLyd/h+9iZaLVToFpey6AlDFWkNqHA6dmaL7Nr0tlDiaYW31DkJmoytWB
	 IEvD8RrBgEZmw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 21/36] phy: rockchip: usbdp: Properly handle
 TYPEC_STATE_SAFE and TYPEC_STATE_USB
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-21-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
 <20260710-rockchip-usbdp-cleanup-v12-21-8b41a9a9bef0@collabora.com>
Date: Fri, 10 Jul 2026 21:18:08 +0000
Message-Id: <20260710211809.4F52E1F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBJbmNvbXBsZXRlIGhhbmRsaW5nIG9mIFRZUEVDX1NUQVRFX1VTQiBhbmQgVFlQRUNf
U1RBVEVfU0FGRSBsZWF2ZXMgdGhlIFBIWSBzdHVjayBpbiBEUCBtb2RlLCBicmVha2luZyBVU0Iz
IHJlY292ZXJ5LgotLQoKLS0tIFBhdGNoIFsyMV06IFtQQVRDSCB2MTIgMjEvMzZdIHBoeTogcm9j
a2NoaXA6IHVzYmRwOiBQcm9wZXJseSBoYW5kbGUgVFlQRUNfU1RBVEVfU0FGRSBhbmQgVFlQRUNf
U1RBVEVfVVNCIC0tLQpjb21taXQgOTJmZjZmOTBkYmJjMWY2YTJlYjlhMDVmMjFkZGQwYjgzNWIw
MTE2ZApBdXRob3I6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJv
cmEuY29tPgpTdWJqZWN0OiBwaHk6IHJvY2tjaGlwOiB1c2JkcDogUHJvcGVybHkgaGFuZGxlIFRZ
UEVDX1NUQVRFX1NBRkUgYW5kIFRZUEVDX1NUQVRFX1VTQgoKVGhpcyBjb21taXQgbW9kaWZpZXMg
dGhlIHR5cGVjIG11eCBoYW5kbGVyIHRvIHByb2Nlc3MgVFlQRUNfU1RBVEVfU0FGRQphbmQgVFlQ
RUNfU1RBVEVfVVNCIG1vZGVzLiBJdCByZW1vdmVzIHRoZSBjb25kaXRpb24gdGhhdCBpZ25vcmVk
IG11eApldmVudHMgbm90IGludm9sdmluZyBEUCBBbHRNb2RlIHRvIGFsbG93IG11eGluZyB0byBi
ZSB1cGRhdGVkIHdoZW4KZXhpdGluZyBEUCBBbHRNb2RlLgoKQ2xvc2VzOiBodHRwczovL3Nhc2hp
a28uZGV2LyMvbWVzc2FnZS8yMDI2MDYxOTE1NTAyMC5DQzczNjFGMDAwRTklNDBzbXRwLmtlcm5l
bC5vcmcKCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11
c2JkcC5jIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiBpbmRl
eCA0ZTU0MDIwZDE3NTUxLi4wMzk5Y2JmOTZlMTk1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5
L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9ja2No
aXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiBAQCAtMTI5MywxNyArMTI5MywyNiBAQCBzdGF0aWMg
Y29uc3Qgc3RydWN0IHBoeV9vcHMgcmtfdWRwaHlfdXNiM19waHlfb3BzID0gewo+ICAJLm93bmVy
CQk9IFRISVNfTU9EVUxFLAo+ICB9Owo+ICAKPiArc3RhdGljIGJvb2wgcmtfdWRwaHlfaXNfc3Vw
cG9ydGVkX21vZGUoc3RydWN0IHR5cGVjX211eF9zdGF0ZSAqc3RhdGUpCj4gK3sKPiArCS8qIEhh
bmRsZSBTYWZlIFN0YXRlIGFuZCBVU0IgU3RhdGUgKi8KPiArCWlmIChzdGF0ZS0+bW9kZSA8IFRZ
UEVDX1NUQVRFX01PREFMKQo+ICsJCXJldHVybiB0cnVlOwo+ICsKPiArCS8qIEhhbmRsZSBEUCBB
bHRNb2RlICovCj4gKwlpZiAoc3RhdGUtPmFsdCAmJiBzdGF0ZS0+YWx0LT5zdmlkID09IFVTQl9U
WVBFQ19EUF9TSUQpCj4gKwkJcmV0dXJuIHRydWU7Cj4gKwo+ICsJcmV0dXJuIGZhbHNlOwo+ICt9
Cj4gKwo+ICBzdGF0aWMgaW50IHJrX3VkcGh5X3R5cGVjX211eF9zZXQoc3RydWN0IHR5cGVjX211
eF9kZXYgKm11eCwKPiAgCQkJCSAgc3RydWN0IHR5cGVjX211eF9zdGF0ZSAqc3RhdGUpCj4gIHsK
PiAgCXN0cnVjdCBya191ZHBoeSAqdWRwaHkgPSB0eXBlY19tdXhfZ2V0X2RydmRhdGEobXV4KTsK
PiAgCj4gLQkvKgo+IC0JICogSWdub3JlIG11eCBldmVudHMgbm90IGludm9sdmluZyBEUCBBbHRN
b2RlLCBiZWNhdXNlCj4gLQkgKiB0aGUgbW9kZSBmaWVsZCBpcyBiZWluZyByZXVzZWQsIGUuZy4g
c3RhdGUtPm1vZGUgPT0gNAo+IC0JICogY291bGQgYmUgZWl0aGVyIFRZUEVDX01PREVfVVNCNCBv
ciBUWVBFQ19EUF9TVEFURV9DLgo+IC0JICovCj4gLQlpZiAoIXN0YXRlLT5hbHQgfHwgc3RhdGUt
PmFsdC0+c3ZpZCAhPSBVU0JfVFlQRUNfRFBfU0lEKQo+ICsJLyogSWdub3JlIG11eCBldmVudHMg
bm90IGludm9sdmluZyBVU0Igb3IgRFAgKi8KPiArCWlmICghcmtfdWRwaHlfaXNfc3VwcG9ydGVk
X21vZGUoc3RhdGUpKQo+ICAJCXJldHVybiAwOwo+ICAKPiAgCW11dGV4X2xvY2soJnVkcGh5LT5t
dXRleCk7CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1
dCBzaW5jZSB0aGlzIHBhdGNoIGV4cGxpY2l0bHkgYWltcyB0bwpmaXggbXV4aW5nIHdoZW4gZXhp
dGluZyBEUCBBbHRNb2RlLCBpcyBhIGhhcmR3YXJlIHVwZGF0ZSBtaXNzaW5nIGhlcmU/CgpXaGVu
IGV4aXRpbmcgRFAgQWx0TW9kZSwgVENQTSBzZW5kcyBhIFRZUEVDX1NUQVRFX1VTQiBvciBUWVBF
Q19TVEFURV9TQUZFCm11eCBldmVudC4gcmtfdWRwaHlfdHlwZWNfbXV4X3NldCgpIHVwZGF0ZXMg
dGhlIHNvZnR3YXJlIHN0YXRlIGJ5IGNhbGxpbmcKcmtfdWRwaHlfc2V0X3R5cGVjX3N0YXRlKCkg
d2hpY2ggc2V0cyB1ZHBoeS0+cGh5X25lZWRzX3JlaW5pdCA9IHRydWUuCgpIb3dldmVyLCBiZWNh
dXNlIHRoZSBVU0IgY29udHJvbGxlciAoRFdDMykgaXMgYWxyZWFkeSBwb3dlcmVkIG9uLCBpdApk
b2Vzbid0IGNhbGwgcGh5X3Bvd2VyX29uKCkgYWdhaW4uIFRoZSBEUCBjb250cm9sbGVyIGNhbGxz
IHBoeV9wb3dlcl9vZmYoKQp3aGVuIGRpc2FibGVkLCBidXQgcmtfdWRwaHlfZHBfcGh5X3Bvd2Vy
X29mZigpIG9ubHkgY2xlYXJzIHRoZSBEUCBzdGF0dXMKYml0IGFuZCBkb2Vzbid0IHJlLWV2YWx1
YXRlIHBoeV9uZWVkc19yZWluaXQuCgpCZWNhdXNlIG9mIHRoaXMsIHJrX3VkcGh5X2luaXQoKSBp
cyBuZXZlciBjYWxsZWQgYW5kIHRoZSBoYXJkd2FyZQpDTU5fTEFORV9NVVhfQU5EX0VOX09GRlNF
VCBpcyBuZXZlciByZXByb2dyYW1tZWQuIERvZXMgdGhpcyBsZWF2ZSB0aGUgUEhZCnN0dWNrIGlu
IDQtbGFuZSBEUCBtb2RlIGFuZCBicmVhayBVU0IzIHJlY292ZXJ5PwoKLS0gClNhc2hpa28gQUkg
cmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcxMC1yb2NrY2hp
cC11c2JkcC1jbGVhbnVwLXYxMi0wLThiNDFhOWE5YmVmMEBjb2xsYWJvcmEuY29tP3BhcnQ9MjEK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
