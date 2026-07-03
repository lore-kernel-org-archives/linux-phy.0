Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7686BC43458
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jul 2026 23:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m9w3pZTmhhz6xzUlKJ/evMWURc0TXb1LsEFf5fyOKBE=; b=X7JotWz9SNfMxB
	M6WUtNHiQZKYbzmng/05OKSxQ3J2h152Gk9ERhqvGl9+EvZTZzoYKZlcbMd1CWAeD0pDjhn77wZAH
	pQP+aayYRzSddxL+Ts2UAak5b8aNnb0SzJVkHCqmBHUKdLl/Zfs2uMxto6nmoTbiEmraN+Xv625iZ
	d38+ZWQ2ddD3D1LrwNZmA0VcKt6m6yOncpxlfxHw8FetoJmiDvcUrfvwoU+yrQCdBeT8ydn71CTP2
	hlIxp3bkTL4YsnKht8IAsmq/sUNqEeS1+JWvX43O4rENuzN04O8CArbd5a+PyEQtvpEo4TfP8uQB8
	FW1RRdu96R+SpcQ5wPJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfnfT-000000081ql-112t;
	Fri, 03 Jul 2026 23:51:35 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfnfR-000000081qf-2URb
	for linux-phy@lists.infradead.org;
	Fri, 03 Jul 2026 23:51:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D26B1600AF;
	Fri,  3 Jul 2026 23:51:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15A671F000E9;
	Fri,  3 Jul 2026 23:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783122692;
	bh=UPfEXxLHhA+P7h6eArkgTVJ6+sIdc4LAfYITKWYSX/U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UTATIyXZuvn9LqERurVtfT5+2NgAB3GvV+yk8ADSon05vw/9S18+XpvMWNm7ARRBk
	 SJI1josmgr9F8ZHQmsOOf1tjIC3ZJUt14bdTm2Gps8CVfUWqRRXzxw62jL/q8S2pTA
	 PtCRLBd6Doj2EszjJ6fIBiX+pDZ5ERAtIEm0uPeyFzmo8xOqRJRt0j+kSUy8+kcG9p
	 SEwrL3WCb5tTG3a7wOdVpHI2DHollw2kjWLqnuygPJeFxmr4TgIw2cK0GdbixZgBAL
	 skjfrWUxAcR0TZn6fg3Bf3WCNCRA9gZCdDEFW/bZQqw1DQrMf7kfkGYpwRyjW6c1gP
	 KbrvXX1ZQCuZA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 19/36] phy: rockchip: usbdp: Re-init the PHY on
 orientation change
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, conor+dt@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org
In-Reply-To: <20260703-rockchip-usbdp-cleanup-v10-19-a392711ca8a9@collabora.com>
References: <20260703-rockchip-usbdp-cleanup-v10-0-a392711ca8a9@collabora.com>
 <20260703-rockchip-usbdp-cleanup-v10-19-a392711ca8a9@collabora.com>
Date: Fri, 03 Jul 2026 23:51:31 +0000
Message-Id: <20260703235132.15A671F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBwYXRjaCBkZWZl
cnMgUEhZIGhhcmR3YXJlIHJlLWluaXRpYWxpemF0aW9uIGR1cmluZyBUeXBlLUMgb3JpZW50YXRp
b24gY2hhbmdlcyBieSBzZXR0aW5nIGEgYHBoeV9uZWVkc19yZWluaXRgIGZsYWcsIGFzc3VtaW5n
IGEgc3Vic2VxdWVudCBjYWxsIHRvIGBya191ZHBoeV91cGRhdGVfcG93ZXJfc3RhdGUoKWAgd2ls
bCBhcHBseSB0aGUgY2hhbmdlLiBIb3dldmVyLCBmb3IgVVNCMy1vbmx5IGNvbm5lY3Rpb25zLCB0
aGlzIHN1YnNlcXVlbnQgY2FsbCBpcyBvZnRlbiBuZXZlciBtYWRlLCByZXN1bHRpbmcgaW4gYnJv
a2VuIFVTQjMgZnVuY3Rpb25hbGl0eS4KLS0KCmNvbW1pdCBhZjcxMmVjYzQ4OWRlNWM2NDdhOGUz
MDVjN2JlY2E0YjFjNmRkNWNiCkF1dGhvcjogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5y
ZWljaGVsQGNvbGxhYm9yYS5jb20+CgpwaHk6IHJvY2tjaGlwOiB1c2JkcDogUmUtaW5pdCB0aGUg
UEhZIG9uIG9yaWVudGF0aW9uIGNoYW5nZQoKVGhpcyBwYXRjaCB1cGRhdGVzIHRoZSByb2NrY2hp
cCB1c2JkcCBQSFkgZHJpdmVyIHRvIHRyYWNrIG9yaWVudGF0aW9uCmNoYW5nZXMgYnkgY2hlY2tp
bmcgaWYgdGhlIGNhYmxlIG9yaWVudGF0aW9uIGlzIHJldmVyc2VkLiBJZiB0aGUgb3JpZW50YXRp
b24KY2hhbmdlcywgaXQgZmxhZ3MgdGhlIFBIWSBhcyBuZWVkaW5nIHJlLWluaXRpYWxpemF0aW9u
IHNvIHRoYXQgdGhlIGxhbmUgCm11eGluZyBjYW4gYmUgcmVjb25maWd1cmVkLgoKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMgYi9kcml2ZXJz
L3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+IGluZGV4IGU0NGQxOWM5ZDExOTMu
LjRiNDU0Nzk4YzRlZDQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJv
Y2tjaGlwLXVzYmRwLmMKPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAt
dXNiZHAuYwo+IEBAIC02MjAsNiArNjIwLDcgQEAgc3RhdGljIGludCBya191ZHBoeV9vcmllbl9z
d19zZXQoc3RydWN0IHR5cGVjX3N3aXRjaF9kZXYgKnN3LAo+ICAJCQkJIGVudW0gdHlwZWNfb3Jp
ZW50YXRpb24gb3JpZW4pCj4gIHsKPiAgCXN0cnVjdCBya191ZHBoeSAqdWRwaHkgPSB0eXBlY19z
d2l0Y2hfZ2V0X2RydmRhdGEoc3cpOwo+ICsJYm9vbCBmbGlwcGVkID0gb3JpZW4gPT0gVFlQRUNf
T1JJRU5UQVRJT05fUkVWRVJTRTsKPiAgCj4gIAltdXRleF9sb2NrKCZ1ZHBoeS0+bXV0ZXgpOwo+
ICAKPiBAQCAtNjMxLDcgKzYzMiwxMCBAQCBzdGF0aWMgaW50IHJrX3VkcGh5X29yaWVuX3N3X3Nl
dChzdHJ1Y3QgdHlwZWNfc3dpdGNoX2RldiAqc3csCj4gIAkJZ290byB1bmxvY2tfcmV0Owo+ICAJ
fQo+ICAKPiAtCXVkcGh5LT5mbGlwID0gb3JpZW4gPT0gVFlQRUNfT1JJRU5UQVRJT05fUkVWRVJT
RTsKPiArCWlmICh1ZHBoeS0+ZmxpcCAhPSBmbGlwcGVkKQo+ICsJCXVkcGh5LT5waHlfbmVlZHNf
cmVpbml0ID0gdHJ1ZTsKPiArCgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgdGhpcyBkZWZlcnJhbCBv
ZiBQSFkgaW5pdGlhbGl6YXRpb24gYnJlYWsgVVNCMy1vbmx5IGNvbm5lY3Rpb25zPwoKQnkgb25s
eSBzZXR0aW5nIHRoZSBwaHlfbmVlZHNfcmVpbml0IGZsYWcgaGVyZSwgdGhlIGFjdHVhbCBoYXJk
d2FyZSB1cGRhdGUKYXBwZWFycyB0byBiZSBkZWZlcnJlZCB1bnRpbCBya191ZHBoeV91cGRhdGVf
cG93ZXJfc3RhdGUoKSBpcyBjYWxsZWQgdG8gCmNvbnN1bWUgaXQuCgpGb3IgVVNCMy1vbmx5IGNv
bm5lY3Rpb25zIChlc3BlY2lhbGx5IG9uIGZpeGVkLXJvbGUgcG9ydHMgb3IgYm9hcmRzIHdpdGhv
dXQgYQptb2RlLXN3aXRjaCBwcm9wZXJ0eSksIGlzIHJrX3VkcGh5X3VwZGF0ZV9wb3dlcl9zdGF0
ZSgpIGd1YXJhbnRlZWQgdG8gYmUKY2FsbGVkIGFmdGVyIHRoaXMgb3JpZW50YXRpb24gY2hhbmdl
PyAKCklmIGl0IGlzbid0IGNhbGxlZCwgaXQgc2VlbXMgYSByZXZlcnNlLXBsdWdnZWQgVVNCMyBk
ZXZpY2UgbWlnaHQgZmFpbCB0bwpjb25uZWN0IGJlY2F1c2UgdGhlIHJldmVyc2UgbGFuZSByb3V0
aW5nIGlzIG5ldmVyIHdyaXR0ZW4gdG8gdGhlIGhhcmR3YXJlLiAKQWRkaXRpb25hbGx5LCBpZiBh
IERpc3BsYXlQb3J0IGRldmljZSAod2hpY2ggZG9lcyB0cmlnZ2VyIGEgcG93ZXIgc3RhdGUgCnVw
ZGF0ZSkgaXMgcGx1Z2dlZCBpbiByZXZlcnNlIGFuZCB0aGVuIHJlcGxhY2VkIHdpdGggYSBub3Jt
YWwgVVNCMyBkZXZpY2UsIApjb3VsZCB0aGUgc29mdHdhcmUgc3RhdGUgcmVzZXQgdG8gbm9ybWFs
IHdoaWxlIHRoZSBoYXJkd2FyZSByZW1haW5zIHN0dWNrIAppbiByZXZlcnNlPwoKPiArCXVkcGh5
LT5mbGlwID0gZmxpcHBlZDsKPiAgCXJrX3VkcGh5X3NldF90eXBlY19kZWZhdWx0X21hcHBpbmco
dWRwaHkpOwo+ICAJcmtfdWRwaHlfdXNiX2J2YWxpZF9lbmFibGUodWRwaHksIHRydWUpOwo+Cgot
LSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIw
MjYwNzAzLXJvY2tjaGlwLXVzYmRwLWNsZWFudXAtdjEwLTAtYTM5MjcxMWNhOGE5QGNvbGxhYm9y
YS5jb20/cGFydD0xOQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
