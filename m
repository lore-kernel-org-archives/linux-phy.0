Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 753F0C43458
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 19:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mav4Bi4tfy86yRhIrWcFeNFUzoNrpbgHwVv1EhVPsN4=; b=4Rt7i9lT5lTJqr
	9QQmMunLjjyWgunSLYJmI/gOZiUTp1RbrXC70BZFFMTEnth2Uy9uskDaa0r7wIlB9wHUvjBLnu5x1
	3wyUwzxGnfqNTjEAjKcogXn1zF9KsjdL/HIYx+GoQPyrgmwKHvQ4ayyPQ7l0JRiAniY+lYBtwhWPV
	uNl8XqglDULNZMzZCJ4eRV7Rh2VU4UMLoDBzLKYDrLZOQaMxYJBvJm/OwNKgc9h5kVjiAv7/TT6ld
	V3TS2wqGqPOCC2m78CBcHSsJ0hlluRAYErb1LKt7MM5xxmNrnIrogNa3qLGFqmHhzKeVOC2cyJIBY
	CC+B4+AgHVgpxMsZOIug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whuHJ-00000003RZr-4AmV;
	Thu, 09 Jul 2026 19:19:21 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whuHI-00000003RZW-2JUd
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 19:19:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 51D3D4384D;
	Thu,  9 Jul 2026 19:19:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B94AE1F000E9;
	Thu,  9 Jul 2026 19:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783624760;
	bh=HIiUoS3LI7eqCsR4iLN3iH1cPlsSNqFsiPN9R/mx4VI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BQ++RArFOU1cdzMQn5Wv6CoksJi0Yn7D6E/KEWk1Uxlv2EWZPms38xW35u+/Of5UW
	 OoNhbWeIosMWavwmLKaXll6HghaRBL6+jLoAtuKVdoP9cGsH3o2QAm5KuUhugNymjN
	 0j5HpraqO4HShwtQXWKwy9Akoz/2kq8vRn+p393b8A+DIz65KWYNMWoJLC+7LRAjN7
	 HJhuTprF2ThhOQMro1PhH5U/ISp7HWniMPZLpkhjtG2MLJBaDfdsoQmw0zb7WbajqC
	 hN7yvNFpWnNYb5mhZjYQiz2QgUE0sow4RZVZoBPza/TbpXN9OIgeU2fauSs+Ycobf7
	 FQ6KXQGtI7x3w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 08/36] phy: rockchip: usbdp: Amend SSC modulation
 deviation
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: conor+dt@kernel.org, olteanv@gmail.com, robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260709-rockchip-usbdp-cleanup-v11-8-a149ac60f76c@collabora.com>
References: <20260709-rockchip-usbdp-cleanup-v11-0-a149ac60f76c@collabora.com>
 <20260709-rockchip-usbdp-cleanup-v11-8-a149ac60f76c@collabora.com>
Date: Thu, 09 Jul 2026 19:19:19 +0000
Message-Id: <20260709191919.B94AE1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBUaGUgZHJpdmVyIGZhaWxzIHRvIHVwZGF0ZSBgdWRwaHktPm1vZGVgIHdoZW4gZXhp
dGluZyBEaXNwbGF5UG9ydCBBbHQgTW9kZSwgbGVhdmluZyB0aGUgUEhZIGluIGEgYnJva2VuIHN0
YXRlIGZvciBVU0IzLgotIFtIaWdoXSBUaGUgRGlzcGxheVBvcnQgY29uZmlndXJlIGNhbGxiYWNr
IGFsbG93cyByZXF1ZXN0aW5nIG1vcmUgbGFuZXMgdGhhbiBhdmFpbGFibGUsIHdoaWNoIGNvcnJ1
cHRzIHRoZSBjb25maWd1cmF0aW9uIG9mIGFjdGl2ZSBVU0IgbGFuZXMuCi0tCgotLS0gUGF0Y2gg
WzhdOiBbUEFUQ0ggdjExIDA4LzM2XSBwaHk6IHJvY2tjaGlwOiB1c2JkcDogQW1lbmQgU1NDIG1v
ZHVsYXRpb24gZGV2aWF0aW9uIC0tLQpjb21taXQgNzIxZmI0Mjg3YjJlNGRlNjUyNDhlNDQzN2Jh
ODE1ODM3ODFkZjU2ZgpBdXRob3I6IEZyYW5rIFdhbmcgPGZyYW5rLndhbmdAcm9jay1jaGlwcy5j
b20+CgpwaHk6IHJvY2tjaGlwOiB1c2JkcDogQW1lbmQgU1NDIG1vZHVsYXRpb24gZGV2aWF0aW9u
CgpUaGlzIGNvbW1pdCBtb3ZlcyB0aGUgU1NDIG1vZHVsYXRpb24gZGV2aWF0aW9uIGludG8gdGhl
IHByaXZhdGUgY29uZmlnIG9mCnRoZSBjbG9jayBmb3IgdGhlIDI0TSBhbmQgMjZNIGNvbmZpZ3Vy
YXRpb25zLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlw
LXVzYmRwLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+IGlu
ZGV4IGUzZjVhMjZjODc2YTUuLmNiNmFjYWRmYmNjZmIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9w
aHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiArKysgYi9kcml2ZXJzL3BoeS9yb2Nr
Y2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+IEBAIC0zNTAsNyArMzUwLDggQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCByZWdfc2VxdWVuY2UgcmtfdWRwaHlfMjRtX3JlZmNsa19jZmdbXSA9IHsKPiAg
CXsweDBhNjQsIDB4YTh9LCB7MHgxYTNjLCAweGQwfSwKPiAgCXsweDFhNDQsIDB4ZDB9LCB7MHgx
YTQ4LCAweDAxfSwKPiAgCXsweDFhNGMsIDB4MGR9LCB7MHgxYTU0LCAweGUwfSwKPiAtCXsweDFh
NWMsIDB4ZTB9LCB7MHgxYTY0LCAweGE4fQo+ICsJezB4MWE1YywgMHhlMH0sIHsweDFhNjQsIDB4
YTh9LAo+ICsJezB4MDBkNCwgMHgzMH0KPiAgfTsKClsgLi4uIF0KCltTZXZlcml0eTogSGlnaF0K
VGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0IEkgbm90aWNlZCB0aGF0IHRoZSBkcml2
ZXIgbWlnaHQgZmFpbCB0bwp1cGRhdGUgdWRwaHktPm1vZGUgd2hlbiBleGl0aW5nIERpc3BsYXlQ
b3J0IEFsdCBNb2RlLgoKSW4gcmtfdWRwaHlfdHlwZWNfbXV4X3NldCgpOgoKCWlmIChzdGF0ZS0+
YWx0ICYmIHN0YXRlLT5hbHQtPnN2aWQgPT0gVVNCX1RZUEVDX0RQX1NJRCkgewoJCXN0cnVjdCB0
eXBlY19kaXNwbGF5cG9ydF9kYXRhICpkYXRhID0gc3RhdGUtPmRhdGE7CgpXaGVuIHRoZSBUeXBl
LUMgbXV4IHN0YXRlIGNoYW5nZXMgdG8gVFlQRUNfU1RBVEVfVVNCIG9yIFRZUEVDX1NUQVRFX1NB
RkUsCnN0YXRlLT5hbHQgaXMgc2V0IHRvIE5VTEwuIFRoaXMgY2F1c2VzIHRoZSBibG9jayBhYm92
ZSB0byBiZSBza2lwcGVkLApieXBhc3NpbmcgdGhlIGFzc2lnbm1lbnQgb2YgdWRwaHktPm1vZGUg
YW5kIHVkcGh5LT5tb2RlX2NoYW5nZS4KCkNvdWxkIHRoaXMgbGVhdmUgdWRwaHktPm1vZGUgc3R1
Y2sgaW4gVURQSFlfTU9ERV9EUCBhbmQgcHJldmVudCB0aGUgVVNCMwpwb3J0IGZyb20gYmVpbmcg
cmUtZW5hYmxlZD8KCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1
ZSwgYnV0IGRvZXMgdGhlIERpc3BsYXlQb3J0IGNvbmZpZ3VyZSBjYWxsYmFjawphbGxvdyByZXF1
ZXN0aW5nIG1vcmUgbGFuZXMgdGhhbiBhdmFpbGFibGU/CgpJbiBya191ZHBoeV9kcF9waHlfdmVy
aWZ5X2xhbmVzKCk6CgoJCS8qIHZhbGlkIGxhbmUgY291bnQuICovCgkJdWRwaHktPmxhbmVzID0g
ZHAtPmxhbmVzOwoKVGhlIHJlcXVlc3RlZCBsYW5lIGNvdW50IGlzIGFjY2VwdGVkIGFuZCBzYXZl
ZCB3aXRob3V0IHZhbGlkYXRpbmcgaXQgYWdhaW5zdAp0aGUgYWN0dWFsIG51bWJlciBvZiBhdmFp
bGFibGUgRFAgbGFuZXMuIAoKSWYgdGhlIERQIGNvbnRyb2xsZXIgcmVxdWVzdHMgNCBsYW5lcyB3
aGlsZSB0aGUgUEhZIGlzIGluIDItbGFuZSBEUCArIFVTQgptb2RlLCB1ZHBoeS0+bGFuZXMgaXMg
aW5hcHByb3ByaWF0ZWx5IHNldCB0byA0LgoKTGF0ZXIgaW4gcmtfdWRwaHlfZHBfcGh5X2NvbmZp
Z3VyZSgpOgoKCQkJcmtfdWRwaHlfZHBfc2V0X3ZvbHRhZ2UodWRwaHksIHVkcGh5LT5idywgZHAt
PnZvbHRhZ2VbaV0sCgkJCQkJZHAtPnByZVtpXSwgbGFuZSk7CgpUaGlzIG91dC1vZi1ib3VuZHMg
bGFuZSBjb25maWd1cmF0aW9uIGlzIGFwcGxpZWQgaW4gYSBsb29wLgoKQ291bGQgdGhpcyBjb3Jy
dXB0IHRoZSBhbmFsb2cgc3RhdGUgb2YgbGFuZXMgdGhhdCBhcmUgYWN0aXZlbHkgYmVpbmcgdXNl
ZCBieQp0aGUgVVNCMyBjb250cm9sbGVyPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBz
Oi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcwOS1yb2NrY2hpcC11c2JkcC1jbGVhbnVw
LXYxMS0wLWExNDlhYzYwZjc2Y0Bjb2xsYWJvcmEuY29tP3BhcnQ9OAoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
