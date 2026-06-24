Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D85BCDB470
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jun 2026 08:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TIxWCIG0LmcKSs1cyOyAAnJefcFDMkbPoCGrwA+SIQ8=; b=3C19VzgqdaiwCY
	OHrrNvU7yV40lLTww8UTr224nAc3uvQQfByxmENMhyeif5xQhjR3O27wicmFBiNI5Z+vwti3qHzJr
	MbUU2LzJMdufwknf0wzhYC6MNTq5bEtM07hkrXeuMdQEbmAwBcGsewQfcq9CcZKv9f99jMw2stPwo
	mzPEb6bd+astZHHG0xL9utG/4rUSuQ7meyvoTCkG3lZFjnqrWkZx3IPk5YmLHwG1e4HDaN16Q48Vy
	A3TINyBre3RJlSrlRuRX5o1EmqGmDF35v/+yAwPHWcYOrSw5eQiXh3QOEfvYFTL5EU3fhA7hmLGHp
	OE5MCo7drod1vLiWrQtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcIcM-00000007N2f-0z27;
	Wed, 24 Jun 2026 08:05:54 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcIcK-00000007N2F-0Flm
	for linux-phy@lists.infradead.org;
	Wed, 24 Jun 2026 08:05:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 701C044434;
	Wed, 24 Jun 2026 08:05:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F3C81F000E9;
	Wed, 24 Jun 2026 08:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782288351;
	bh=xAowsRhUihJj4+O3EYECy/w8/hiyXkhTptwwxYj5/Lk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=EmN10+p3erPTwWdrS+OElJciBB8CGwqJKg8w0xi5Ta9N+eIVD6KIEKUaIEQB+5wss
	 RhwL1XKCMsmG3oDyTTw0b8c5b65vlTKaxnfIHCfhPBI62XneH0PJhbDBrrXBOZkaWd
	 dM1a+BnTIuMin5+2xk1685XeWkaYf3SuU7jqtgR6QDIvWXRK0ysHjqJ29Es1FHhoDz
	 LR79wVXUMXcuohfaIZLyFA9VLkWUGvc9t6cCvqfI86b+XhZjD8Gf5qlMbsYJjjASHx
	 ZHGBVXmjOHKg2csd1eVPoXOMd+CWF8my9xTZXMjPXnmJpclfL9Ajh1EGHIZqul10ow
	 72tkhzs5FquXg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v3 1/2] net: phy: sfp: free mii_bus in
 sfp_i2c_mdiobus_destroy
To: "Petr Wozniak" <petr.wozniak@gmail.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com
In-Reply-To: <20260623080538.7646-2-petr.wozniak@gmail.com>
References: <20260623080538.7646-1-petr.wozniak@gmail.com>
 <20260623080538.7646-2-petr.wozniak@gmail.com>
Date: Wed, 24 Jun 2026 08:05:50 +0000
Message-Id: <20260624080551.0F3C81F000E9@smtp.kernel.org>
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
IFtIaWdoXSBUaGUgZGVsYXllZCB3b3JrcyAoYHNmcC0+cG9sbGAgYW5kIGBzZnAtPnRpbWVvdXRg
KSBjYW4gZXhlY3V0ZSBhZnRlciB0aGVpciBkZXBlbmRlbnQgR1BJTyBkZXNjcmlwdG9ycyBhbmQg
SVJRcyBhcmUgcmVsZWFzZWQsIGxlYWRpbmcgdG8gVXNlLUFmdGVyLUZyZWUuCi0tCgpjb21taXQg
MzE4YzY4NjEyMjBhNTcwODZkNTQ3Y2U4OTRjZjFjMDI5YTRkMzYzOQpBdXRob3I6IFBldHIgV296
bmlhayA8cGV0ci53b3puaWFrQGdtYWlsLmNvbT4KCm5ldDogcGh5OiBzZnA6IGZyZWUgbWlpX2J1
cyBpbiBzZnBfaTJjX21kaW9idXNfZGVzdHJveQoKc2ZwX2kyY19tZGlvYnVzX2NyZWF0ZSgpIGFs
bG9jYXRlcyB0aGUgSTJDIE1ESU8gYnVzIHdpdGggbWRpb19pMmNfYWxsb2MoKSwKYSBwbGFpbiAo
bm9uLWRldm0pIGFsbG9jYXRpb24sIGFuZCByZWdpc3RlcnMgaXQuIHNmcF9pMmNfbWRpb2J1c19k
ZXN0cm95KCkKb25seSB1bnJlZ2lzdGVycyB0aGUgYnVzIGFuZCBjbGVhcnMgc2ZwLT5pMmNfbWlp
IHdpdGhvdXQgY2FsbGluZwptZGlvYnVzX2ZyZWUoKS4gQXMgdGhlIG9ubHkgcmVmZXJlbmNlIHRv
IHRoZSBidXMgaXMgdGhlbiBjbGVhcmVkLCB0aGUKc3RydWN0IG1paV9idXMgaXMgbGVha2VkLgoK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvcGh5L3NmcC5jIGIvZHJpdmVycy9uZXQvcGh5L3Nm
cC5jCj4gaW5kZXggMDNiZmQ4NjQwZGI5Ni4uYzRkMjc0YWI2NTFlMyAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL25ldC9waHkvc2ZwLmMKPiArKysgYi9kcml2ZXJzL25ldC9waHkvc2ZwLmMKPiBAQCAt
OTYzLDYgKzk2Myw3IEBAIHN0YXRpYyBpbnQgc2ZwX2kyY19tZGlvYnVzX2NyZWF0ZShzdHJ1Y3Qg
c2ZwICpzZnApCj4gIHN0YXRpYyB2b2lkIHNmcF9pMmNfbWRpb2J1c19kZXN0cm95KHN0cnVjdCBz
ZnAgKnNmcCkKPiAgewo+ICAJbWRpb2J1c191bnJlZ2lzdGVyKHNmcC0+aTJjX21paSk7Cj4gKwlt
ZGlvYnVzX2ZyZWUoc2ZwLT5pMmNfbWlpKTsKPiAgCXNmcC0+aTJjX21paSA9IE5VTEw7Cj4gIH0K
CltTZXZlcml0eTogSGlnaF0KVGhpcyBpc24ndCBhIGJ1ZyBpbnRyb2R1Y2VkIGJ5IHRoaXMgcGF0
Y2gsIGJ1dCB3aGlsZSByZXZpZXdpbmcgdGhlIHRlYXJkb3duCnBhdGggSSBub3RpY2VkIGEgcG90
ZW50aWFsIHVzZS1hZnRlci1mcmVlIGR1cmluZyBkZXZpY2UgdW5iaW5kIG9yIG1vZHVsZQpyZW1v
dmFsLgoKSW4gc2ZwX3Byb2JlKCksIHNmcF9jbGVhbnVwKCkgaXMgcmVnaXN0ZXJlZCBiZWZvcmUg
YWxsb2NhdGluZyB0aGUgR1BJTwpkZXNjcmlwdG9yczoKCmRyaXZlcnMvbmV0L3BoeS9zZnAuYzpz
ZnBfcHJvYmUoKSB7CiAgICAuLi4KCWVyciA9IGRldm1fYWRkX2FjdGlvbl9vcl9yZXNldChzZnAt
PmRldiwgc2ZwX2NsZWFudXAsIHNmcCk7CglpZiAoZXJyIDwgMCkKCQlyZXR1cm4gZXJyOwogICAg
Li4uCglmb3IgKGkgPSAwOyBpIDwgR1BJT19NQVg7IGkrKykKCQlpZiAoc2ZmLT5ncGlvcyAmIEJJ
VChpKSkgewoJCQlzZnAtPmdwaW9baV0gPSBkZXZtX2dwaW9kX2dldF9vcHRpb25hbChzZnAtPmRl
diwKCQkJCQkgICBncGlvX25hbWVzW2ldLCBncGlvX2ZsYWdzW2ldKTsKICAgIC4uLgp9CgpEdXJp
bmcgdW5iaW5kLCBkZXZyZXMgcnVucyBjbGVhbnVwIGFjdGlvbnMgaW4gcmV2ZXJzZSBMSUZPIG9y
ZGVyLCBtZWFuaW5nCnRoZSBHUElPIGRlc2NyaXB0b3JzIGFyZSBmcmVlZCBmaXJzdC4KCnNmcF9y
ZW1vdmUoKSBkb2Vzbid0IGNhbmNlbCBzZnAtPnBvbGwuIElmIHNmcC0+bmVlZF9wb2xsIGlzIHRy
dWUsIHRoZSBwb2xsCndvcmtlciBjb3VsZCBmaXJlIGFuZCBhY2Nlc3MgdGhlIGZyZWVkIEdQSU8g
ZGVzY3JpcHRvcnMgYmVmb3JlIHNmcF9jbGVhbnVwKCkKZmluYWxseSBjYW5jZWxzIGl0OgoKZHJp
dmVycy9uZXQvcGh5L3NmcC5jOnNmcF9jbGVhbnVwKCkgewogICAgLi4uCgljYW5jZWxfZGVsYXll
ZF93b3JrX3N5bmMoJnNmcC0+cG9sbCk7CgljYW5jZWxfZGVsYXllZF93b3JrX3N5bmMoJnNmcC0+
dGltZW91dCk7CiAgICAuLi4KfQoKQ291bGQgdGhpcyBsZWFkIHRvIGEgcGFuaWMgd2hlbiB1bmJp
bmRpbmcgdGhlIGRldmljZSBvciByZW1vdmluZyB0aGUgbW9kdWxlPwoKLS0gClNhc2hpa28gQUkg
cmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYyMzA4MDUzOC43
NjQ2LTEtcGV0ci53b3puaWFrQGdtYWlsLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
