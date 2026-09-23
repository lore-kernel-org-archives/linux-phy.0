Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CE4CC9830E
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 18:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hg055ySHiXMRduL7xKia4rjjQHOmSLNwmgk0gpQ5GnI=; b=q+f0YVWwVhLWes
	KkZoZRuF3Kb7mAMDN3bJa8MnatrdtavkWN/3R9+/XAHd14UlWfDa1SqLD9AaxsscbmnxBBQK//CzX
	NJuTUONmC3NcJtGD+A1pjXIEcm3aSt0RDkTAUW9tX9AFQ2ZO6dIAst09M8tC0MTlnD6/+3kezTOJm
	yMh15IBmM5PS550XjGNgTyQ1YsayjWPAemWSojpqFk/vCkzwuTaKZdHilRM/6PVKm1oBHeNDDXnkH
	N23pDgnYgXrb98YHXpf5GFAlR9H8j13MvNYQL0K98bkkVsbYOHNbIZcGylMKzkDYiLR3jC2sFT4tr
	GWOFEvrDavGBobuWzXXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Rv6-00000009FYK-31oH;
	Wed, 23 Sep 2026 18:42:16 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Ruw-00000009FWM-0X6Z
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 18:42:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 780B760235;
	Wed, 23 Sep 2026 18:42:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82F1C1F000FF;
	Wed, 23 Sep 2026 18:42:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790188925;
	bh=CLXnsVVcSPkhF7h8dHKlhuo4Ss7UfHsEXXx8kfXdW60=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mO+b/PQ9oPMQT4wsPcASUhT4kB8nXrtcIXzwH/3H44bGB8Zvo4xK4CeXV/TGM/lyO
	 xhDxN7b1gJ6tcOtA6PqSIsVgPl32/o1sePi4ckUaFuIsR5Vtvs8qqS3jIHC3NVIqKx
	 faw0ZkPZkmdQc+rQQim0p2K7WRVVH80jyv47gsPFgCXDKesDEgQJs89khUht2hdneN
	 CSoEw5Kj4QPrwWgRgAjEH+h4RklNFvm6Wzx0DRkS4PmMtv1GuhQmNJd4/eD9AeoiHJ
	 hamzIBscKJbnmPKJXC6gjAIZV3JQ7HSXAKUSYwDnL3aIuHCWJ3Lb7iXSCBXuUPcP4e
	 onbgysd0Mcpfw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 07/12] clk: zte: Add zx PLL support infrastructure
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, lee@kernel.org, linux-clk@vger.kernel.org, mfd@lists.linux.dev, conor+dt@kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org
In-Reply-To: <20260923-zx29clk-v12-7-9c243796b6d2@gmail.com>
References: <20260923-zx29clk-v12-0-9c243796b6d2@gmail.com>
 <20260923-zx29clk-v12-7-9c243796b6d2@gmail.com>
Date: Wed, 23 Sep 2026 18:42:04 +0000
Message-Id: <20260923184204.82F1C1F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gY2xrOiB6dGU6IHNl
dF9yYXRlIHJlamVjdHMgdmFsaWQgcmF0ZXMgZHVlIHRvIHN0cmljdCBWQ08gYm91bmRzIGNoZWNr
Ci0tCgpjb21taXQgMDNkMjdmMTRiM2QyZGJiYTljMzRlNjI0NjI4ZGY0NTQ5NTAyMDk0NwpBdXRo
b3I6IFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5jb20+CgpjbGs6IHp0
ZTogQWRkIHp4IFBMTCBzdXBwb3J0IGluZnJhc3RydWN0dXJlCgpUaGlzIHBhdGNoIGFkZHMgY29k
ZSB0byBkZWNvZGUgYW5kIHByb2dyYW0gUExMIHNldHRpbmdzIG9uIFpURSdzCnp4Mjk3NTIwdjMg
U29DLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvenRlL3BsbC16eC5jIGIvZHJpdmVycy9j
bGsvenRlL3BsbC16eC5jCj4gaW5kZXggZmM3NmM2NTI0YTE2My4uZDM2ODc0OTVkMDZjZSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2Nsay96dGUvcGxsLXp4LmMKPiArKysgYi9kcml2ZXJzL2Nsay96
dGUvcGxsLXp4LmMKWyAuLi4gXQo+ICtzdGF0aWMgdTMyIHp4MjlfcGxsX2NhbGNfdmFsdWVzKGNv
bnN0IHN0cnVjdCB6eDI5X2Nsa19wbGwgKnBsbCwgdW5zaWduZWQgbG9uZyBwYXJlbnRfcmF0ZSwK
PiArCQkJCXVuc2lnbmVkIGxvbmcgcmF0ZSwgdW5zaWduZWQgbG9uZyBtaW5fcmF0ZSwgdW5zaWdu
ZWQgbG9uZyBtYXhfcmF0ZSkKPiArewpbIC4uLiBdCj4gKwlmb3IgKGogPSAxOyBqIDw9IHBvc3Rk
aXYyX21heDsgaisrKSB7Cj4gKwkJZm9yIChpID0gMTsgaSA8PSBwb3N0ZGl2MV9tYXg7IGkrKykg
ewo+ICsJCQl1NjQgdmNvID0gKHU2NClyYXRlICogaSAqIGo7Cj4gKwkJCXVuc2lnbmVkIGxvbmcg
b3V0Owo+ICsKPiArCQkJaWYgKHZjbyA+IFpYMjlfUExMX1ZDT19NQVhfRlJFUSB8fCB2Y28gPCBa
WDI5X1BMTF9WQ09fTUlOX0ZSRVEpCj4gKwkJCQljb250aW51ZTsKCltTZXZlcml0eTogTWVkaXVt
XQpXaWxsIHRoaXMgc3RyaWN0IGJvdW5kcyBjaGVjayByZWplY3QgdmFsaWQgcmF0ZXMgZHVyaW5n
IHp4MjlfcGxsX3NldF9yYXRlKCk/CgpJZiB0aGUgcmVxdWVzdGVkIHRhcmdldCByYXRlIG1hcHMg
dG8gYSBWQ08gZnJlcXVlbmN5IGF0IHRoZSB2ZXJ5IGJvdHRvbSBlZGdlIG9mCnRoZSB2YWxpZCBi
b3VuZHMgKGUuZy4gZXhhY3RseSA5MDAgTUh6KSwgdGhlIHJhdGlvbmFsIGFwcHJveGltYXRpb24g
Zm9yIHRoZQpkaXZpZGVycyBjb3VsZCBwcm9kdWNlIGFuIGFjdHVhbCBWQ08gZnJlcXVlbmN5IGp1
c3QgYmVsb3cgOTAwIE1Iei4KCldoZW4gengyOV9wbGxfZGV0ZXJtaW5lX3JhdGUoKSByZXR1cm5z
IHRoaXMgc2xpZ2h0bHkgdHJ1bmNhdGVkIG91dHB1dCByYXRlLCBpdAppcyB0aGVuIHBhc3NlZCB0
byB6eDI5X3BsbF9zZXRfcmF0ZSgpIHdoaWNoIHBhc3NlcyBpdCBiYWNrIHRvIHRoaXMgZnVuY3Rp
b24uCgpBdCB0aGF0IHBvaW50LCB0aGUgcmVjYWxjdWxhdGVkIFZDTyB3aWxsIGZhbGwgc2xpZ2h0
bHkgYmVsb3cKWlgyOV9QTExfVkNPX01JTl9GUkVRIGFuZCBiZSBzdHJpY3RseSByZWplY3RlZC4K
ClsgLi4uIF0KPiArc3RhdGljIGludCB6eDI5X3BsbF9zZXRfcmF0ZShzdHJ1Y3QgY2xrX2h3ICpo
dywgdW5zaWduZWQgbG9uZyByYXRlLAo+ICsJCQkgICAgIHVuc2lnbmVkIGxvbmcgcGFyZW50X3Jh
dGUpCj4gK3sKPiArCXN0cnVjdCB6eDI5X2Nsa19wbGwgKnBsbCA9IHRvX3p4MjlfY2xrX3BsbCho
dyk7Cj4gKwl1MzIgc2V0dGluZzsKPiArCj4gKwkvKgo+ICsJICogVE9ETzogSW1wbGVtZW50IGdy
YWR1YWwgUExMIHJhdGUgY2hhbmdlLiBQTExzIGNhbiBiZSBjaGFuZ2VkIHdoaWxlIHRoZXkgYXJl
IHJ1bm5pbmcgYW5kCj4gKwkgKiBkb3duc3RyZWFtIGhhcmR3YXJlIGlzIGdlbmVyYWxseSBmaW5l
IHdpdGggdGhhdC4gVGhlIGV4Y2VwdGlvbiBpcyBEUkFNLCB3aGljaCByZWFkcwo+ICsJICogaW5j
b3JyZWN0IHZhbHVlcyBpZiBjaGFuZ2VkIHRvbyBmYXN0Lgo+ICsJICoKPiArCSAqIENoYW5naW5n
IHRoZSBtcGxsIHJhdGUgaXMgcG90ZW50aWFsbHkgdXNlZnVsIGZvciBvdmVyL3VuZGVyY2xvY2tp
bmcuIEdhdGluZyBtcGxsIGlzCj4gKwkgKiB1bnJlYWxpc3RpYyBiZWNhdXNlIHRvbyBtYW55IGRl
dmljZXMgZGVwZW5kIG9uIGl0Lgo+ICsJICovCj4gKwlzZXR0aW5nID0gengyOV9wbGxfY2FsY192
YWx1ZXMocGxsLCBwYXJlbnRfcmF0ZSwgcmF0ZSwgcmF0ZSwgcmF0ZSk7CgpbU2V2ZXJpdHk6IE1l
ZGl1bV0KU2luY2UgengyOV9wbGxfY2FsY192YWx1ZXMoKSBjYW4gZmFpbCBkdWUgdG8gdGhlIHN0
cmljdCBWQ08gYm91bmRzIGNoZWNrLCBkb2VzCnRoaXMgY2F1c2UgengyOV9wbGxfc2V0X3JhdGUo
KSB0byB1bmV4cGVjdGVkbHkgcmV0dXJuIC1FSU5WQUwgZm9yIGEgcmF0ZSB0aGF0CndhcyBqdXN0
IHZhbGlkYXRlZCBieSB6eDI5X3BsbF9kZXRlcm1pbmVfcmF0ZSgpPwoKVGhpcyBicmVha3MgdGhl
IENvbW1vbiBDbG9jayBGcmFtZXdvcmsgKENDRikgY29udHJhY3QsIHdoaWNoIGV4cGVjdHMgc2V0
X3JhdGUoKQp0byBzdWNjZWVkIHdoZW4gcGFzc2VkIGEgcmF0ZSB2YWxpZGF0ZWQgYnkgZGV0ZXJt
aW5lX3JhdGUoKS4gQ291bGQgdGhpcyBjYXVzZQpyZWdyZXNzaW9ucyB0aHJvdWdoIHVuZXhwZWN0
ZWQgZHJpdmVyIHByb2JlIGZhaWx1cmVzPwoKPiArCWlmICghc2V0dGluZykKPiArCQlyZXR1cm4g
LUVJTlZBTDsKPiArCj4gKwlkZXZfZGJnKHBsbC0+ZGV2LCAiJXM6IFNldHRpbmcgbmV3IGNvbmZp
Z3VyYXRpb246IDB4JTA4eFxuIiwgY2xrX2h3X2dldF9uYW1lKGh3KSwgc2V0dGluZyk7Cj4gKwo+
ICsJcmV0dXJuIHJlZ21hcF91cGRhdGVfYml0cyhwbGwtPm1hcCwgcGxsLT5yZWcsIDB4MDBmZmZm
ZmYsIHNldHRpbmcpOwo+ICt9CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNo
aWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTIzLXp4MjljbGstdjEyLTAtOWMyNDM3OTZiNmQyQGdt
YWlsLmNvbT9wYXJ0PTcKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
