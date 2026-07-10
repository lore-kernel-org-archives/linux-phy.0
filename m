Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E451CC43458
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jul 2026 21:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HRTOMj8jhpITqMFo7nUYkmQCKcGQY+mJ9w/RHtZcaZ4=; b=h2lDDV0oeIgTt4
	6EXdZc0ayh91CRAsSXkNvwvZUEXs1R+a0GppWYFdP6RyfnB+v6U6/y/px9d0PXTscDiN2xkzaGxc8
	3pBfMeV6p82AQm+IK3WBVpkgkHHIVuBEL93F1q0nPyixo5d6GQ6/GEizLo7T1cGWp5vTiuSRkstEr
	zqgYU3AH5Q8jVVzzPXzR0kub36xVtCNEMln27OcJiNyo8FR4YWarRpapYfNe6wS2/JFuI9NlPJJ5L
	N25yMApOQ4QXh7y8jrfQo6LJlen2QAt9wtd/XiGYSF04nXykzBECAPRhvZOfiSrDnc0cz4N8BYEYa
	Rb1hIeHjCTD8t4xcrysA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIcO-00000005nBI-2pVb;
	Fri, 10 Jul 2026 21:18:44 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIcO-00000005nAw-06gF
	for linux-phy@lists.infradead.org;
	Fri, 10 Jul 2026 21:18:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7848760052;
	Fri, 10 Jul 2026 21:18:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B24721F000E9;
	Fri, 10 Jul 2026 21:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783718323;
	bh=jt+Fd9u0Tn4LsSFmXs3cDAG8+/bQsqEi3AqJQ8VflT4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CLbyAnjTjFbYGHVTLwSzmdhVKOHxNh/vkRQc1UEC9dAGBPZJRueFtXNSgbNEDCDLr
	 FyKCRGcodbbGymCdQ+Z3qHzW49WIUJ61oQztPf5AvLdhxvIUlykM9dBS0+x8VvBC8T
	 0XkzFrcoocEREEVSOZHTwGqcbCMkImhtf3dlcwurQbV3a+YOXbeF/yhlqVLORW4Bjk
	 MKPfM1QLPH/8e2URwf0ic1ZgD/pYgtmEde6LDAt9RtmZcBMhmjgWqqFQw0qptVCQjY
	 dPihQFAZYg1yncE3gIex5L0URyDm9cyebt1XpPAxlcoriK7pS9eMDAhyv2T6drgPFt
	 O3q5edR458IoQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 22/36] phy: rockchip: usbdp: Use guard functions for
 mutex
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, neil.armstrong@linaro.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, olteanv@gmail.com
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-22-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
 <20260710-rockchip-usbdp-cleanup-v12-22-8b41a9a9bef0@collabora.com>
Date: Fri, 10 Jul 2026 21:18:42 +0000
Message-Id: <20260710211842.B24721F000E9@smtp.kernel.org>
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
IFtIaWdoXSBUaGlzIHByb2JsZW0gd2Fzbid0IGludHJvZHVjZWQgYnkgdGhpcyBwYXRjaCwgYnV0
IGBya191ZHBoeV9kcF9waHlfY29uZmlndXJlYCBhY2Nlc3NlcyBzaGFyZWQgUEhZIHN0YXRlIHdp
dGhvdXQgaG9sZGluZyBgdWRwaHktPm11dGV4YC4KLS0KCi0tLSBQYXRjaCBbMjJdOiBbUEFUQ0gg
djEyIDIyLzM2XSBwaHk6IHJvY2tjaGlwOiB1c2JkcDogVXNlIGd1YXJkIGZ1bmN0aW9ucyBmb3Ig
bXV0ZXggLS0tCmNvbW1pdCBmNDcxNWMxZThlYTFmZjI3OTQ2MzMzNzg5ODBkYmFmNTVkMjc2Njg0
CkF1dGhvcjogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5j
b20+CgpwaHk6IHJvY2tjaGlwOiB1c2JkcDogVXNlIGd1YXJkIGZ1bmN0aW9ucyBmb3IgbXV0ZXgK
CkNvbnZlcnQgdGhlIGRyaXZlciB0byB1c2UgZ3VhcmQgZnVuY3Rpb25zIGZvciBtdXRleCBoYW5k
bGluZyBhcwphIHNtYWxsIGNsZWFudXAuIFRoZXJlIGlzIGEgc21hbGwgZnVuY3Rpb25hbCBjaGFu
Z2UgaW4gdGhlIERQIFBIWQpwb3dlciB1cCBmdW5jdGlvbiwgd2hpY2ggbm8gbG9uZ2VyIHNsZWVw
cyBpZiB0aGUgaW50ZXJuYWwgcG93ZXJ1cApjb2RlIHJldHVybnMgYW4gZXJyb3IuCgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYyBiL2RyaXZl
cnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gaW5kZXggMDM5OWNiZjk2ZTE5
NS4uOGMxNjViY2FiNzk2OCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHkt
cm9ja2NoaXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hp
cC11c2JkcC5jCgpbIC4uLiBdCgo+IEBAIC0xMjU1LDM1ICsxMjU0LDMwIEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgcGh5X29wcyBya191ZHBoeV9kcF9waHlfb3BzID0gewo+ICBzdGF0aWMgaW50IHJr
X3VkcGh5X3VzYjNfcGh5X2luaXQoc3RydWN0IHBoeSAqcGh5KQo+ICB7CgpbU2V2ZXJpdHk6IEhp
Z2hdClRoaXMgaXNuJ3QgYSBidWcgaW50cm9kdWNlZCBieSB0aGlzIHBhdGNoLCBidXQgcmtfdWRw
aHlfZHBfcGh5X2NvbmZpZ3VyZSgpCmFjY2Vzc2VzIHNoYXJlZCBQSFkgc3RhdGUgd2l0aG91dCBo
b2xkaW5nIHVkcGh5LT5tdXRleC4KCkNvdWxkIHRoaXMgY3JlYXRlIGEgZGF0YSByYWNlIHdpdGgg
VHlwZS1DIG9yaWVudGF0aW9uIGNoYW5nZXM/CgpUaGUgZnVuY3Rpb24gaXRlcmF0ZXMgb3ZlciB0
aGUgdWRwaHktPmRwX2xhbmVfc2VsIGFycmF5IGFuZCB3cml0ZXMgdG8gdGhlCmhhcmR3YXJlIFBI
WSByZWdpc3RlcnMgYmFzZWQgb24gdGhlIG1hcHBlZCBsYW5lczoKCiAgICBmb3IgKGkgPSAwOyBp
IDwgdWRwaHktPmxhbmVzOyBpKyspIHsKICAgICAgICBsYW5lID0gdWRwaHktPmRwX2xhbmVfc2Vs
W2ldOwogICAgICAgIHN3aXRjaCAodWRwaHktPmxpbmtfcmF0ZSkgewogICAgICAgIC4uLgoKQmVj
YXVzZSBwaHlfY29uZmlndXJlIGlzIGNhbGxlZCBieSB0aGUgRFJNIGJyaWRnZSB3aXRob3V0IHVk
cGh5LT5tdXRleCBoZWxkLAphbmQgY29uY3VycmVudCBUeXBlLUMgb3JpZW50YXRpb24gc3dpdGNo
IGV2ZW50cyBoYW5kbGVkIGluCnJrX3VkcGh5X29yaWVuX3N3X3NldCgpIGhvbGQgdWRwaHktPm11
dGV4IHdoaWxlIG1vZGlmeWluZyB1ZHBoeS0+ZHBfbGFuZV9zZWwKYW5kIHVkcGh5LT5sYW5lX211
eF9zZWwsIHRoZXkgbWlnaHQgcnVuIGF0IHRoZSBzYW1lIHRpbWUuCgpJZiBhIGNhYmxlIGlzIGZs
aXBwZWQgZXhhY3RseSBkdXJpbmcgYSBkaXNwbGF5IGJyaW5nLXVwLCBjb3VsZCB0aGlzIGNhdXNl
IGEKdG9ybiByZWFkIHRoYXQgYXBwbGllcyBzZXR0aW5ncyB0byB0aGUgc2FtZSBsYW5lIHR3aWNl
IHdoaWxlIG9taXR0aW5nIG90aGVycywKbGVhdmluZyB0aGUgaGFyZHdhcmUgaW5jb3JyZWN0bHkg
Y29uZmlndXJlZCBhbmQgRFAgYWx0IG1vZGUgb3V0cHV0IGJyb2tlbj8KCi0tIApTYXNoaWtvIEFJ
IHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MTAtcm9ja2No
aXAtdXNiZHAtY2xlYW51cC12MTItMC04YjQxYTlhOWJlZjBAY29sbGFib3JhLmNvbT9wYXJ0PTIy
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
