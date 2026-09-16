Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA1B0C88E5C
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 13:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gxNbQUMlWE+M3y6XzH9Fbp+eqBEgU0owq+Yg64e2mWc=; b=UIgaIaTrP57dwN
	3OD2eE+QZCKwNN4pt+XdyHAper68d0YXPUN7PcQhwFWTfKUnK9l6bNQ007TNm+YixTVo3Gbfq7fOJ
	5HDPW3ufdzDY6EmON4wb2eegWCUk2pMkZuN1JaZL/4QSOrRIucQ8I2FgpVE3/WXoglETAHgNSCDje
	g1zuLNnstAyrNHEl1oWKjmcv9U48NbR2MpFY2nBLJPJRdTao2QZRHbhWyWAph4+wp+zmFTOYIYUlD
	QW/sJ8jMEN1PV5Is8qtuCV84tFxhRw3KjDAe+kYSbljaoqUgO8f5rNKQ0Nug9U21M89o444msHTNs
	8waeweHB/K8rM40UkRlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6q1t-00000009L7v-1Mvu;
	Wed, 16 Sep 2026 13:50:29 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6q1r-00000009L7m-35Xj
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 13:50:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 25672413AF;
	Wed, 16 Sep 2026 13:50:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE6401F000FF;
	Wed, 16 Sep 2026 13:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789566627;
	bh=aRUf9cRfEDpbAvwx6D7W4v7PbC5qSzX7V+l3fBVkLVY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UDJ4Xg6bSTc+Otf+WkimDr6Tjvcec9hcOH0GE7oTJkYkO1TYFH/t8S0dJ0sOO6fh+
	 wKkUNqv+KUnYcmuupuXn5MUkMzwU8zi/dXtf8JvxEqyKxHdJmbeNcNNCpvzy+eqPzp
	 Jq517pEat3MFpsUrs96UFV8yVpqtXCWJfvbLsAiwfA6HUIJla6h18X564HSlV3weWa
	 IBylrMpyB/EEqpbgaZGGB90J+uz+fK4CKC4m+zaYwXYaduF14zx2zxaZgMcw2S6kC1
	 NsAiPdbooYpFR4QUALsXTeswvj9mj8vbh5OcQlQUOvPN+mjirlnzTDdA/VXOH4Tfjf
	 gqBFFQ4Mguf8w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/2] phy: qcom: qmp-combo: check qmp_combo_com_init()
 in the typec callbacks
To: "Oleg Keri" <okerixx@gmail.com>
Cc: linux-phy@lists.infradead.org, neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org
In-Reply-To: <20260916133814.3977-3-okerixx@gmail.com>
References: <20260916133814.3977-1-okerixx@gmail.com>
 <20260916133814.3977-3-okerixx@gmail.com>
Date: Wed, 16 Sep 2026 13:50:26 +0000
Message-Id: <20260916135026.AE6401F000FF@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHBoeTogcW1wLWNvbWJv
OiB1bmNsb2NrZWQgTU1JTyBhY2Nlc3Mgb24gdGVhcmRvd24gb3IgcmV0cnkgYWZ0ZXIgaW5pdCBm
YWlsdXJlCi0gW01lZGl1bV0gcGh5OiBxbXAtY29tYm86IGRvdWJsZSBkaXNhYmxlIG9mIGNsb2Nr
cyBhbmQgcmVndWxhdG9ycyBvbiByZXRyeQotLQoKY29tbWl0IGJhYWM3YTVkZjJlOWI0OGU2YmVi
NTQ0OGUxZmE5MDY2NDdiMDZjYjUKQXV0aG9yOiBPbGVnIEtlcmkgPG9rZXJpeHhAZ21haWwuY29t
PgoKICAgIHBoeTogcWNvbTogcW1wLWNvbWJvOiBjaGVjayBxbXBfY29tYm9fY29tX2luaXQoKSBp
biB0aGUgdHlwZWMgY2FsbGJhY2tzCgpUaGlzIGNvbW1pdCBhZGRzIGVycm9yIGNoZWNraW5nIHRv
IHFtcF9jb21ib19jb21faW5pdCgpIGluIHRoZSBUeXBlLUMgYW5kClVTQjQgY2FsbGJhY2tzIHRv
IHByZXZlbnQgcHJvY2VlZGluZyB3aGVuIFBIWSBpbml0aWFsaXphdGlvbiBmYWlscy4gQnkKcmV0
dXJuaW5nIGVhcmx5LCBpdCBhdm9pZHMgYWNjZXNzaW5nIFBIWSByZWdpc3RlcnMgd2l0aCBkaXNh
YmxlZCBjbG9ja3MKaW4gdGhlIGltbWVkaWF0ZSBjYWxsIHBhdGguCgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYyBiL2RyaXZlcnMvcGh5L3F1
YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jCj4gaW5kZXggZGFkN2M1Y2ZjZjBhNi4uNjVjMzBm
MzIzMmQxYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAt
Y29tYm8uYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5j
ClsgLi4uIF0KPiBAQCAtNTA0Miw3ICs1MDUwLDEyIEBAIHN0YXRpYyBpbnQgcW1wX2NvbWJvX3R5
cGVjX3N3aXRjaF9zZXQoc3RydWN0IHR5cGVjX3N3aXRjaF9kZXYgKnN3LAo+ICAJCQlxbXBfY29t
Ym9fdXNiX3Bvd2VyX29mZihxbXAtPnVzYl9waHkpOwo+ICAJCXFtcF9jb21ib19jb21fZXhpdChx
bXAsIHRydWUpOwo+ICAKPiAtCQlxbXBfY29tYm9fY29tX2luaXQocW1wLCB0cnVlKTsKPiArCQly
ZXQgPSBxbXBfY29tYm9fY29tX2luaXQocW1wLCB0cnVlKTsKPiArCQlpZiAocmV0KSB7Cj4gKwkJ
CXFtcC0+b3JpZW50YXRpb24gPSBUWVBFQ19PUklFTlRBVElPTl9OT05FOwo+ICsJCQlyZXR1cm4g
cmV0Owo+ICsJCX0KPiArCgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgcmV0dXJuaW5nIGhlcmUgaW50
cm9kdWNlIGEgcmVncmVzc2lvbiBieSBhYmFuZG9uaW5nIHRoZSBoYXJkd2FyZSBpbiBhbgp1bmNs
b2NrZWQgc3RhdGUgd2hpbGUgbGVhdmluZyB0aGUgbG9naWNhbCBpbml0aWFsaXphdGlvbiBjb3Vu
dGVycyBhY3RpdmU/CgpJZiBxbXBfY29tYm9fY29tX2luaXQoKSBmYWlscywgaXQgdW53aW5kcyBh
bmQgbGVhdmVzIGNsb2NrcyBkaXNhYmxlZC4KSG93ZXZlciwgYmVjYXVzZSB0aGUgbG9naWNhbCBp
bml0aWFsaXphdGlvbiBjb3VudGVycyBhcmUgc3RpbGwgYWN0aXZlLCBhCnN1YnNlcXVlbnQgVHlw
ZS1DIGV2ZW50IChyZXRyeSkgd2lsbCBjYWxsIHFtcF9jb21ib191c2JfcG93ZXJfb2ZmKCkgYmVm
b3JlCnJlLWVuYWJsaW5nIGNsb2NrczoKCnFtcF9jb21ib190eXBlY19zd2l0Y2hfc2V0KCkgewog
ICAgLi4uCiAgICBpZiAocW1wLT51c2JfaW5pdF9jb3VudCB8fCBxbXAtPnVzYjRfaW5pdF9jb3Vu
dCkKICAgICAgICBxbXBfY29tYm9fdXNiX3Bvd2VyX29mZihxbXAtPnVzYl9waHkpOwogICAgLi4u
Cn0KClRoaXMgbGVhZHMgdG8gcW1wX2NvbWJvX3VzYl9wb3dlcl9vZmYoKSBwZXJmb3JtaW5nIGFu
IE1NSU8gd3JpdGUgd2l0aG91dApjbG9ja3MgcnVubmluZzoKCnFtcF9jb21ib191c2JfcG93ZXJf
b2ZmKCkgewogICAgLi4uCiAgICAvKiBQSFkgcmVzZXQgKi8KICAgIHFwaHlfc2V0Yml0cyhwY3Ms
IGNmZy0+cmVnc1tRUEhZX1NXX1JFU0VUXSwgU1dfUkVTRVQpOwogICAgLi4uCn0KCldpbGwgdGhp
cyBjYXVzZSBhIHN5bmNocm9ub3VzIGV4dGVybmFsIGFib3J0IChrZXJuZWwgcGFuaWMpIGR1cmlu
ZyB0ZWFyZG93bgpvciBvbiB0aGUgbmV4dCByZXRyeT8KCltTZXZlcml0eTogTWVkaXVtXQpBZGRp
dGlvbmFsbHksIGlmIHdlIHJldHVybiBlYXJseSBvbiBmYWlsdXJlLCB3aWxsIHRoZSBzdWJzZXF1
ZW50IHJldHJ5IGNhdXNlCmEgcmVncmVzc2lvbiBieSBkb3VibGUgZGlzYWJsaW5nIGNsb2NrcyBh
bmQgcmVndWxhdG9ycz8KCk9uIHRoZSBuZXh0IFR5cGUtQyBldmVudCwgaWYgYm90aCBVU0IgYW5k
IERQIHdlcmUgYWN0aXZlLCB0aGUgZXZlbnQgYnlwYXNzZXMKdGhlIGZhc3QtcGF0aCBjaGVjayBh
bmQgY2FsbHMgcW1wX2NvbWJvX2NvbV9leGl0KHFtcCwgdHJ1ZSkgYWdhaW4uCgpTaW5jZSBmb3Jj
ZSBpcyB0cnVlLCB0aGlzIHVuY29uZGl0aW9uYWxseSBjYWxscyBjbGtfYnVsa19kaXNhYmxlX3Vu
cHJlcGFyZSgpCmFuZCByZWd1bGF0b3JfYnVsa19kaXNhYmxlKCkgaW4gcW1wX2NvbWJvX2NvbV9l
eGl0KCkgb24gcmVzb3VyY2VzIHRoYXQgd2VyZQphbHJlYWR5IGRpc2FibGVkIGJ5IHRoZSBlcnJv
ciBwYXRoIGluIHFtcF9jb21ib19jb21faW5pdCgpLiBDb3VsZCB0aGlzCnVuZGVyZmxvdyB0aGUg
ZW5hYmxlIGNvdW50cyBhbmQgY29ycnVwdCByZXNvdXJjZSB0cmFja2luZz8KCj4gIAkJaWYgKHFt
cC0+dXNiX2luaXRfY291bnQgfHwgcW1wLT51c2I0X2luaXRfY291bnQpCj4gIAkJCXFtcF9jb21i
b191c2JfcG93ZXJfb24ocW1wLT51c2JfcGh5KTsKPiAgCQlpZiAocW1wLT5kcF9pbml0X2NvdW50
KQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNl
dC8yMDI2MDkxNjEzMzgxNC4zOTc3LTEtb2tlcml4eEBnbWFpbC5jb20/cGFydD0yCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
