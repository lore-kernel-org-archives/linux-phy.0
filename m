Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9F3FC5DF81
	for <linux-phy@archiver.kernel.org>; Thu, 20 Aug 2026 14:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FIBuf7P8q8H96wp27ytQit+gWBUfuJMjOT/QtPtyZxI=; b=rnRlKDjzMCdVMW
	wSsC6UKYLCSbKo3MOR93p2ZDu3iBsr/7MDjidS4SDDYC/ZEdCCC7LUE8LknwU+WnzMSveCLBEXHwj
	VRui/AsTBXgoT7p2w+nY31qUDkNx+schMtuQJa1t2nl4B0G6vaXF4RpmodfKJo+FYkMQo3srPPZcJ
	pjf/opaVn3p3b+SSeC9hQq3KXubVEP3iyT6RC6OmexH9Yakg21gO4zSgG4Iz2fuzgCBtWM5nMlk8v
	wvY0C6q+GGx2r07AOOw2pA0vizPXl5rYgEd5jRYchZoNExkiDOUdHin6tCBSbQKwc+5cX1z7wpT0W
	kpaap8dreu4VtLzbLXwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3TO-0000000Bg7A-16ad;
	Thu, 20 Aug 2026 14:10:26 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3TN-0000000Bg74-1ana
	for linux-phy@lists.infradead.org;
	Thu, 20 Aug 2026 14:10:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DF65C43564;
	Thu, 20 Aug 2026 14:10:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53E4C1F000E9;
	Thu, 20 Aug 2026 14:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787235024;
	bh=a+CmMMv9Z4Q0fBZyfb5J0prYodpTqEsZ2Ssj38rEE+0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=C+0jDr3IbuvSCpb3x1qwLZWATfyjjXZ102wpOgdbjP1uxs+eneLQhC3G13OX6DlV5
	 PhS0u/f4qz9vUuTL1lSR8JLawIJwAhk1kHnbwR4XGdH2lsu8SbrZHdAkXVy8eHsqLC
	 +Q1QLwjqBdarJt1Xe865XNDS03SV6oezA+BpiFlOD/LJFi8ohBbTGXjOg1qurOYXap
	 QKbU2Dy5x4IAiWQWqfQEB4v7JdjlOTmhRB4+xBSPg4onskmASzD+yQxA3PUDDbn6TD
	 sBkzv471K/jg1aEKD5RWqUrUIIA/XvIzIzIHtqsgcr0gC3EsL3lUuSGAH57+mJqEv5
	 8kac0hl2jTEhQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/4] phy: rockchip: phy-rockchip-inno-csidphy: add
 support for rk3576 variant
To: "Amin Gattout" <amin.gattout@gmail.com>
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org, olteanv@gmail.com, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260820-rk3576-dphy-v1-3-70e25e8d5e78@gmail.com>
References: <20260820-rk3576-dphy-v1-0-70e25e8d5e78@gmail.com>
 <20260820-rk3576-dphy-v1-3-70e25e8d5e78@gmail.com>
Date: Thu, 20 Aug 2026 14:10:23 +0000
Message-Id: <20260820141024.53E4C1F000E9@smtp.kernel.org>
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
IFtIaWdoXSBUaGUgZHJpdmVyIGFjcXVpcmVzIGV4Y2x1c2l2ZSBjb250cm9sIG92ZXIgdGhlIFBI
WSByZXNldHMgYnV0IG5ldmVyIGFzc2VydHMgb3IgZGVhc3NlcnRzIHRoZW0gZHVyaW5nIGl0cyBs
aWZlY3ljbGUuCi0tCgotLS0gUGF0Y2ggWzNdOiBbUEFUQ0ggMy80XSBwaHk6IHJvY2tjaGlwOiBw
aHktcm9ja2NoaXAtaW5uby1jc2lkcGh5OiBhZGQgc3VwcG9ydCBmb3IgcmszNTc2IHZhcmlhbnQg
LS0tCmNvbW1pdCBmMzMzY2M2MjVjNWQ1MDAxMDhmOTA1YzZhY2RjYjQyOGFkYThlN2Q2CkF1dGhv
cjogQW1pbiBHYXR0b3V0IDxhbWluLmdhdHRvdXRAZ21haWwuY29tPgoKcGh5OiByb2NrY2hpcDog
cGh5LXJvY2tjaGlwLWlubm8tY3NpZHBoeTogYWRkIHN1cHBvcnQgZm9yIHJrMzU3NiB2YXJpYW50
CgpUaGlzIGNvbW1pdCBhZGRzIHN1cHBvcnQgZm9yIHRoZSBSSzM1NzYgTUlQSSBDU0ktMiBEUEhZ
IHRvIHRoZSBleGlzdGluZwpyb2NrY2hpcC1pbm5vLWNzaWRwaHkgZHJpdmVyLiBJdCBpbnRyb2R1
Y2VzIGRyaXZlciBkYXRhIGFuZCByZWdpc3RlcgpkZWZpbml0aW9ucyBmb3IgdGhlIG5ldyB2YXJp
YW50LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlu
bm8tY3NpZHBoeS5jIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tY3Np
ZHBoeS5jCj4gaW5kZXggYzc5ZmI1M2Q4ZWU1Yy4uMjRhZWZkY2Q2MzYxNyAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby1jc2lkcGh5LmMKPiArKysg
Yi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby1jc2lkcGh5LmMKClsgLi4u
IF0KCj4gQEAgLTQwMyw2ICs0MTAsMTcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcGh5X2Rydl9k
YXRhIHJrMzU2OF9taXBpZHBoeV9kcnZfZGF0YSA9IHsKPiAgCS5yZXNldHNfbnVtID0gQVJSQVlf
U0laRShyazMzNjhfcmVzZXRfbmFtZXMpLAo+ICB9Owo+ICAKPiArc3RhdGljIGNvbnN0IHN0cnVj
dCBkcGh5X2Rydl9kYXRhIHJrMzU3Nl9taXBpZHBoeV9kcnZfZGF0YSA9IHsKPiArCS5wd3JjdGxf
b2Zmc2V0ID0gLTEsCj4gKwkudGhzX3NldHRsZV9vZmZzZXQgPSBSSzM1NjhfQ1NJRFBIWV9DTEtf
V1JfVEhTX1NFVFRMRSwKPiArCS5jYWxpYl9vZmZzZXQgPSBSSzM1NjhfQ1NJRFBIWV9DTEtfQ0FM
SUJfRU4sCj4gKwkuaHNmcmVxX3JhbmdlcyA9IHJrMTgwOF9taXBpZHBoeV9oc2ZyZXFfcmFuZ2Vz
LAo+ICsJLm51bV9oc2ZyZXFfcmFuZ2VzID0gQVJSQVlfU0laRShyazE4MDhfbWlwaWRwaHlfaHNm
cmVxX3JhbmdlcyksCj4gKwkuZ3JmX3JlZ3MgPSByazM1NzZfZ3JmX2RwaHlfcmVncywKPiArCS5y
ZXNldHMgPSByazMzNjhfcmVzZXRfbmFtZXMsCj4gKwkucmVzZXRzX251bSA9IEFSUkFZX1NJWkUo
cmszMzY4X3Jlc2V0X25hbWVzKSwKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1leGlz
dGluZyBpc3N1ZSwgYnV0IGRvZXMgdGhlIGRyaXZlciBhY3R1YWxseSB1c2UgdGhlc2UgcmVzZXRz
CmFmdGVyIGFjcXVpcmluZyB0aGVtPwoKTG9va2luZyBhdCByb2NrY2hpcF9pbm5vX2NzaWRwaHlf
cHJvYmUoKSwgdGhlIGRyaXZlciBhY3F1aXJlcyBleGNsdXNpdmUKY29udHJvbCBvZiB0aGUgcmVz
ZXRzOgoKZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tY3NpZHBoeS5jOnJv
Y2tjaGlwX2lubm9fY3NpZHBoeV9wcm9iZSgpCglyZXQgPSBkZXZtX3Jlc2V0X2NvbnRyb2xfYnVs
a19nZXRfZXhjbHVzaXZlKGRldiwgcHJpdi0+cmVzZXRzX251bSwKCQkJCQkJICAgIHByaXYtPnJl
c2V0cyk7CglpZiAocmV0KSB7CgkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gZ2V0IHN5c3RlbSBy
ZXNldCBjb250cm9sXG4iKTsKCQlyZXR1cm4gcmV0OwoJfQoKSG93ZXZlciwgdGhlIGRyaXZlciBk
b2Vzbid0IGFwcGVhciB0byBldmVyIGNhbGwgcmVzZXRfY29udHJvbF9idWxrX2RlYXNzZXJ0KCkg
Cm9yIHJlc2V0X2NvbnRyb2xfYnVsa19hc3NlcnQoKSBkdXJpbmcgaXRzIGxpZmVjeWNsZSAoc3Vj
aCBhcyBpbiBwb3dlcl9vbiBvcgppbml0IHBhdGhzKS4KCkJlY2F1c2UgdGhlIGRyaXZlciBjbGFp
bXMgZXhjbHVzaXZlIGNvbnRyb2wsIG5vIG90aGVyIHN1YnN5c3RlbSBjYW4gbWFuYWdlCnRoZXNl
IHJlc2V0cy4gV2lsbCB0aGUgaGFyZHdhcmUgcmVtYWluIHBlcm1hbmVudGx5IGluIHJlc2V0IGFu
ZCBzaWxlbnRseSBmYWlsCnRvIG9wZXJhdGUgaWYgaXQgaXMgbGVmdCBhc3NlcnRlZCBieSB0aGUg
Ym9vdGxvYWRlciBvciBhIHByZXZpb3VzIHN0YWdlPwoKPiArfTsKPiArCj4gIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgZHBoeV9kcnZfZGF0YSByazM1ODhfbWlwaWRwaHlfZHJ2X2RhdGEgPSB7Cj4gIAku
cHdyY3RsX29mZnNldCA9IC0xLAo+ICAJLnRoc19zZXR0bGVfb2Zmc2V0ID0gUkszNTY4X0NTSURQ
SFlfQ0xLX1dSX1RIU19TRVRUTEUsCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9z
YXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODIwLXJrMzU3Ni1kcGh5LXYxLTAtNzBlMjVlOGQ1
ZTc4QGdtYWlsLmNvbT9wYXJ0PTMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
