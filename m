Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB007C79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 14:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d3QdBK2YiFvP65guIKiGhR0lOCfLSMAbyRuGVEYD+qw=; b=Wk7x6Trnfrty8x
	zoX5v9Vxk1jLfQsJ5CvlclnbZGxZKFuTOX+SMhJsFu4OcjXq+4sgFAdrjoLYsCpG8l1pJP8mk2fzv
	uIxjzmR+Bla4HJBwzE8iWGalmDHQNXHfDo1nIbBEqBT2INRrg+gFMt0rhSQXB5mvaZGuaQ87aJELR
	QpKqq3s8wBOyEb22AZfM4cKCuu2gPr8H4BiAu0/enGoJZIaP6XK1xfwBXJdjVpGFIqkTjjHgECuwI
	v6L7Zfneh9LgnFZZxdUy8MjSHPXJDClsI+6WFiPH9f20kb7giFzQBul+Oemf3sCUjouHsKN7iBf0I
	j0S6VQIf/WKo9qxxUdBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4J8N-0000000Bwdd-2ayn;
	Wed, 09 Sep 2026 14:18:43 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4J8M-0000000Bwd6-26dR
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 14:18:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E972460219;
	Wed,  9 Sep 2026 14:18:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 532191F00A3F;
	Wed,  9 Sep 2026 14:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788963521;
	bh=yS1MJH+wEBiCZ0uBnpm4J5BknDcUIWz7yzKOw8aqN1k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YCFGwKaFbyYi5XTKK4de4O78njj90E6R7jE4Vpfa65j/hqSZ/3TZdUBG6djmQQHHg
	 NA307sTOHmKszBSTFi+zpMlM3SZPBkP8jqkrkmsJMG72RQxDdXdK0olwwd79ITRv4M
	 J6b0kb4Z+7ztLOfX7XJXhJckqacH+J5WDiSmXffF5v9fW8Jlkdv6T559jgZEUihbpO
	 21ppJIbPCq/m4iormLLfG5dfIrwAxoYFzyPpllTrAbwYKX1N/K9Y7Cd7pgbl6Y7Epp
	 BreTl9JbadzrUFOyX5eF5PHnQg462P4N4FKxq2PXUK1su06PubV/nHlMOFqe8qrq/f
	 oSnRWcbkLpHcg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: qcom: qmp-combo: hold a runtime PM reference in
 the typec callbacks
To: "Oleg Keri" <okerixx@gmail.com>
Cc: vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org
In-Reply-To: <20260909140345.4239-1-okerixx@gmail.com>
References: <20260909140345.4239-1-okerixx@gmail.com>
Date: Wed, 09 Sep 2026 14:18:40 +0000
Message-Id: <20260909141841.532191F00A3F@smtp.kernel.org>
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
IFtIaWdoXSBJZ25vcmVkIHJldHVybiB2YWx1ZSBvZiBxbXBfY29tYm9fY29tX2luaXQoKSBsZWFk
cyB0byB1bmNsb2NrZWQgcmVnaXN0ZXIgYWNjZXNzIGNyYXNoZXMgYW5kIGluaXRfY291bnQgc3Rh
dGUgY29ycnVwdGlvbi4KLS0KCmNvbW1pdCBlNzI1YWZhNzBiNjUwZTJhMWYyNzcxMGZhM2I0ZTBj
NWE1NTY4NjgyCkF1dGhvcjogT2xlZyBLZXJpIDxva2VyaXh4QGdtYWlsLmNvbT4KCiAgICBwaHk6
IHFjb206IHFtcC1jb21ibzogaG9sZCBhIHJ1bnRpbWUgUE0gcmVmZXJlbmNlIGluIHRoZSB0eXBl
YyBjYWxsYmFja3MKICAgIAogICAgcW1wX2NvbWJvX3R5cGVjX3N3aXRjaF9zZXQoKSBhbmQgcW1w
X2NvbWJvX3R5cGVjX211eF9zZXQoKSB0ZWFyIHRoZSBjb21tb24KICAgIGJsb2NrIGRvd24gYW5k
IGJyaW5nIGl0IHN0cmFpZ2h0IGJhY2sgdXAsIGNhbGxpbmcgcW1wX2NvbWJvX2NvbV9leGl0KCkg
YW5kCiAgICBxbXBfY29tYm9fY29tX2luaXQoKSB3aXRoIGZvcmNlPXRydWUuIEhvbGQgYSBydW50
aW1lIFBNIHJlZmVyZW5jZSBhY3Jvc3MgdGhlCiAgICB0ZWFyZG93biBhbmQgYnJpbmd1cCBzbyBy
ZWxlYXNpbmcgdGhlIGNsb2NrcyBjYW5ub3QgcmUtZW50ZXIgdGhlIGRyaXZlcidzCiAgICBvd24g
c3VzcGVuZCBjYWxsYmFjay4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3Bo
eS1xY29tLXFtcC1jb21iby5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNv
bWJvLmMKPiBpbmRleCBjMzljZWQxNjhkMDM1Li5jMDhhMjI2ODFlMGUyIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jCj4gKysrIGIvZHJpdmVy
cy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMKWyAuLi4gXQo+IEBAIC00Nzg2LDYg
KzQ3ODcsOCBAQCBzdGF0aWMgaW50IHFtcF9jb21ib190eXBlY19zd2l0Y2hfc2V0KHN0cnVjdCB0
eXBlY19zd2l0Y2hfZGV2ICpzdywKPiAgCXFtcC0+b3JpZW50YXRpb24gPSBvcmllbnRhdGlvbjsK
PiAgCj4gIAlpZiAocW1wLT5pbml0X2NvdW50KSB7Cj4gKwkJZ3VhcmQocG1fcnVudGltZV9hY3Rp
dmUpKHFtcC0+ZGV2KTsKPiArCj4gIAkJaWYgKHFtcC0+dXNiX2luaXRfY291bnQpCj4gIAkJCXFt
cF9jb21ib191c2JfcG93ZXJfb2ZmKHFtcC0+dXNiX3BoeSk7Cj4gIAkJcW1wX2NvbWJvX2NvbV9l
eGl0KHFtcCwgdHJ1ZSk7CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXNuJ3QgYSByZWdyZXNzaW9u
IGludHJvZHVjZWQgYnkgdGhpcyBwYXRjaCwgYnV0IEkgbm90aWNlZCB0aGUgcmV0dXJuCnZhbHVl
IG9mIHFtcF9jb21ib19jb21faW5pdCgpIGlzIGlnbm9yZWQganVzdCBiZWxvdyB0aGlzIGRpZmYg
aW4KZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmM6CgpxbXBfY29tYm9f
dHlwZWNfc3dpdGNoX3NldCgpIHsKICAgIC4uLgoJCXFtcF9jb21ib19jb21faW5pdChxbXAsIHRy
dWUpOwoJCWlmIChxbXAtPnVzYl9pbml0X2NvdW50KQoJCQlxbXBfY29tYm9fdXNiX3Bvd2VyX29u
KHFtcC0+dXNiX3BoeSk7CiAgICAuLi4KfQoKSWYgcW1wX2NvbWJvX2NvbV9pbml0KCkgZmFpbHMg
dG8gZW5hYmxlIGNsb2NrcyAoZS5nLiwgY2xrX2J1bGtfcHJlcGFyZV9lbmFibGUKZmFpbHMpLCBp
dCBsZWF2ZXMgdGhlIGNsb2NrcyBkaXNhYmxlZCBhbmQgcmV0dXJucyBhbiBlcnJvciBjb2RlLgoK
QmVjYXVzZSB0aGlzIHJldHVybiB2YWx1ZSBpcyBpZ25vcmVkLCB0aGUgY29kZSBwcm9jZWVkcyB0
byBhY2Nlc3MgaGFyZHdhcmUKcmVnaXN0ZXJzIHZpYSBxbXBfY29tYm9fdXNiX3Bvd2VyX29uKCku
CgpDYW4gYWNjZXNzaW5nIG1hcHBlZCBwZXJpcGhlcmFsIHJlZ2lzdGVycyB3aGlsZSB0aGVpciBj
bG9ja3MgYXJlIGRpc2FibGVkCmNhdXNlIGEgU3lzdGVtIEVycm9yIChTRXJyb3IpIGV4Y2VwdGlv
biBvbiBBUk0vQVJNNjQsIHJlc3VsdGluZyBpbiBhIGtlcm5lbApwYW5pYz8KCkFkZGl0aW9uYWxs
eSwgaWYgcW1wX2NvbWJvX2NvbV9pbml0KCkgZmFpbHMgd2hlbiBmb3JjZT10cnVlLCBpdCBjYW4g
Y29ycnVwdAp0aGUgaW5pdGlhbGl6YXRpb24gc3RhdGU6CgpxbXBfY29tYm9fY29tX2luaXQoKSB7
CiAgICAuLi4KCWlmICghZm9yY2UgJiYgcW1wLT5pbml0X2NvdW50KyspCgkJcmV0dXJuIDA7CiAg
ICAuLi4KZXJyX2RlY3JlbWVudF9jb3VudDoKCXFtcC0+aW5pdF9jb3VudC0tOwoKCXJldHVybiBy
ZXQ7Cn0KClRoZSBmb3JjZT10cnVlIGZsYWcgY2F1c2VzIHRoZSBmdW5jdGlvbiB0byBza2lwIHRo
ZSBjb3JyZXNwb25kaW5nIGluY3JlbWVudApvZiBpbml0X2NvdW50LgoKRG9lcyB0aGUgZXJyb3Ig
cGF0aCBuZWVkIHRvIGF2b2lkIGRlY3JlbWVudGluZyBpbml0X2NvdW50IHdoZW4gZm9yY2U9dHJ1
ZT8KCj4gQEAgLTQ4NTMsNiArNDg1Niw4IEBAIHN0YXRpYyBpbnQgcW1wX2NvbWJvX3R5cGVjX211
eF9zZXQoc3RydWN0IHR5cGVjX211eF9kZXYgKm11eCwgc3RydWN0IHR5cGVjX211eF9zCj4gIAlx
bXAtPnFtcHBoeV9tb2RlID0gbmV3X21vZGU7Cj4gIAo+ICAJaWYgKHFtcC0+aW5pdF9jb3VudCkg
ewo+ICsJCWd1YXJkKHBtX3J1bnRpbWVfYWN0aXZlKShxbXAtPmRldik7Cj4gKwo+ICAJCWlmIChx
bXAtPnVzYl9pbml0X2NvdW50KQo+ICAJCQlxbXBfY29tYm9fdXNiX3Bvd2VyX29mZihxbXAtPnVz
Yl9waHkpOwo+ICAKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1
ZSwgYnV0IHRoZSByZXR1cm4gdmFsdWUgb2YgcW1wX2NvbWJvX2NvbV9pbml0KCkKaXMgc2ltaWxh
cmx5IGlnbm9yZWQgaW4gcW1wX2NvbWJvX3R5cGVjX211eF9zZXQoKSBpbgpkcml2ZXJzL3BoeS9x
dWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYzoKCnFtcF9jb21ib190eXBlY19tdXhfc2V0KCkg
ewogICAgLi4uCgkJcW1wX2NvbWJvX2NvbV9pbml0KHFtcCwgdHJ1ZSk7CgoJCWlmIChuZXdfbW9k
ZSA9PSBRTVBQSFlfTU9ERV9EUF9PTkxZKSB7CiAgICAuLi4KfQoKSWYgdGhlIGNsb2NrIGluaXRp
YWxpemF0aW9uIGZhaWxzIGhlcmUsIGRvZXMgdGhpcyBhbHNvIGxlYWQgdG8gc3Vic2VxdWVudApo
YXJkd2FyZSBhY2Nlc3NlcyB3aXRob3V0IGFjdGl2ZSBjbG9ja3M/CgotLSAKU2FzaGlrbyBBSSBy
ZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTA5MTQwMzQ1LjQy
MzktMS1va2VyaXh4QGdtYWlsLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
