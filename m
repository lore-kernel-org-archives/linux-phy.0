Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 416DBC43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 08:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vkPemdBl7FLxVoDlVgwn9o6xidrkjZdCAg1lNtKptG8=; b=0+j2T2i2Hy8Ybn
	K1JPYkHYbj5Ahz7ypRTBpRCZTkWWBD+BgdksDZgIXS4whvUwTKF6VZIwEQZPsbUSBZ+SMLN41BEts
	UJkMKblrpL6+UOqbsgHNaBN+fifayv0Ltt/+yoVk0RSG4fchO+ik9Fm3BiPpp8kBB1V3A0MjKaV6t
	FcT0IXEW12YImsSIe5d4hkPuUfDf5gQvkmHVT2Ql2XV4QnW6bkp5Au2+qsohQdJCy2ZBOM5Drpf0h
	vkaLqm5rVx7v9tfZGyIRU8h7TF/ZV5tCT6tRcgkU3crdWF0+mf3+IE8hKHxYp4o3jOAnjzzQOE4Sr
	xi1htXUmFq5Nl4kDX/WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh1bj-0000000EYU5-01y0;
	Tue, 07 Jul 2026 08:56:47 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh1bh-0000000EYTr-3P1E
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 08:56:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3508D404B8;
	Tue,  7 Jul 2026 08:56:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C03841F000E9;
	Tue,  7 Jul 2026 08:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783414605;
	bh=z8W9fVuVHfdI432/76SdPxvHzlJN8mA6iJvScAL4/PY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VTHYZ+5T3iBJ6h4DCymwyrVmjRfaR7PVHbhNZAJ1z0P8x2YeMtx7f4l6GU/eMnQfP
	 gz6SnpHSD5U+RczFurvKes5Bc8GKWjJW7/bxeYV3eHCqcBS1zm60h6XLwOv8zlzbz5
	 UY9Gd9/AxWyj0PNCQ8FzKyc7eHHrz/2W3vu0VAYvEOY1Dx9WK6ZrQIiqHVogXNN9cC
	 CZ978qZfNRJi/dxkHt4ZVo/9yR04SKUo9JPxbP0030YoVogaRdJ53cnY5IGC+Jd89O
	 E806opRX8wkSbEGYFOFZxiHo+JMEbIs71QT1vuin8y1lpoDQ6qnu1U//VhiTzwtST6
	 pHGh9k/9f7PyA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 09/11] misc: qcom-coincell: Migrate to
 devm_spmi_subdevice_alloc_and_add()
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org
In-Reply-To: <20260707083730.33977-10-angelogioacchino.delregno@collabora.com>
References: <20260707083730.33977-1-angelogioacchino.delregno@collabora.com>
 <20260707083730.33977-10-angelogioacchino.delregno@collabora.com>
Date: Tue, 07 Jul 2026 08:56:44 +0000
Message-Id: <20260707085644.C03841F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gTGVha2VkIGRldmlj
ZSByZWZlcmVuY2UgY291bnQgZm9yIHRoZSBwYXJlbnQgU1BNSSBkZXZpY2UgYWNxdWlyZWQgdmlh
IHNwbWlfZmluZF9kZXZpY2VfYnlfb2Zfbm9kZSgpLgotIFtMb3ddIFJldHVybmluZyBhIHBvaW50
ZXIgKGBFUlJfUFRSKC1FTk9ERVYpYCkgZnJvbSBhIGZ1bmN0aW9uIHdpdGggYW4gYGludGAgcmV0
dXJuIHR5cGUuCi0tCgotLS0gUGF0Y2ggWzldOiBbUEFUQ0ggdjEwIDA5LzExXSBtaXNjOiBxY29t
LWNvaW5jZWxsOiBNaWdyYXRlIHRvIGRldm1fc3BtaV9zdWJkZXZpY2VfYWxsb2NfYW5kX2FkZCgp
IC0tLQpjb21taXQgZDRhNGQyYmE1ZDllMTgwNDRiZmFlMDQwMzlkZjg3MzFlMTNlYTJmMgpBdXRo
b3I6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25v
QGNvbGxhYm9yYS5jb20+CgptaXNjOiBxY29tLWNvaW5jZWxsOiBNaWdyYXRlIHRvIGRldm1fc3Bt
aV9zdWJkZXZpY2VfYWxsb2NfYW5kX2FkZCgpCgpUaGlzIGNvbW1pdCBtaWdyYXRlcyB0aGUgY29p
bmNlbGwgY2hhcmdlciBkcml2ZXIgdG8gdXNlIHRoZSBuZXcKZGV2bV9zcG1pX3N1YmRldmljZV9h
bGxvY19hbmRfYWRkKCkgQVBJLiBJdCByZWdpc3RlcnMgYSBuZXcgU1BNSQpzdWItZGV2aWNlIGFu
ZCBpbml0aWFsaXplcyBpdHMgb3duIHJlZ21hcC4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWlz
Yy9xY29tLWNvaW5jZWxsLmMgYi9kcml2ZXJzL21pc2MvcWNvbS1jb2luY2VsbC5jCj4gaW5kZXgg
M2M1N2Y3NDI5MTQ3Ni4uNDYzNDBmMDE5OWNkYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21pc2Mv
cWNvbS1jb2luY2VsbC5jCj4gKysrIGIvZHJpdmVycy9taXNjL3Fjb20tY29pbmNlbGwuYwpbIC4u
LiBdCj4gQEAgLTcxLDM3ICs3MSw1OCBAQCBzdGF0aWMgaW50IHFjb21fY29pbmNlbGxfcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgewpbIC4uLiBdCj4gLQlyYyA9IG9mX3By
b3BlcnR5X3JlYWRfdTMyKG5vZGUsICJyZWciLCAmY2hnci5iYXNlX2FkZHIpOwo+ICsJcmMgPSBk
ZXZpY2VfcHJvcGVydHlfcmVhZF91MzIoZGV2LCAicmVnIiwgJnFjb21fY29pbmNlbGxfcmVnbWFw
X2NvbmZpZy5yZWdfYmFzZSk7Cj4gIAlpZiAocmMpCj4gIAkJcmV0dXJuIHJjOwo+ICAKPiArCXNw
YXJlbnQgPSBzcG1pX2ZpbmRfZGV2aWNlX2J5X29mX25vZGUoZGV2LT5wYXJlbnQtPm9mX25vZGUp
Owo+ICsJaWYgKCFzcGFyZW50KQo+ICsJCXJldHVybiBFUlJfUFRSKC1FTk9ERVYpOwoKW1NldmVy
aXR5OiBMb3ddClRoZSBxY29tX2NvaW5jZWxsX3Byb2JlKCkgZnVuY3Rpb24gcmV0dXJucyBhbiBp
bnQsIGJ1dCBFUlJfUFRSKC1FTk9ERVYpCmNvbnN0cnVjdHMgYSBwb2ludGVyLiBXaWxsIHRoaXMg
Y2F1c2UgYSBjb21waWxlciBlcnJvciBmb3IgaW1wbGljaXQKcG9pbnRlci10by1pbnRlZ2VyIGNv
bnZlcnNpb24/CgpbU2V2ZXJpdHk6IE1lZGl1bV0KVGhlIHNwbWlfZmluZF9kZXZpY2VfYnlfb2Zf
bm9kZSgpIGZ1bmN0aW9uIGFjcXVpcmVzIGEgcmVmZXJlbmNlIHRvIHRoZSBwYXJlbnQKU1BNSSBk
ZXZpY2UuIFNpbmNlIGRldm1fc3BtaV9zdWJkZXZpY2VfYWxsb2NfYW5kX2FkZCgpIGRvZXMgbm90
IGNvbnN1bWUgdGhpcwpyZWZlcmVuY2UsIGRvZXMgdGhpcyBjb2RlIGxlYWsgdGhlIGRldmljZSBy
ZWZlcmVuY2UgYnkgbmV2ZXIgY2FsbGluZwpwdXRfZGV2aWNlKCkgdG8gcmVsZWFzZSBpdD8KClRo
ZXNlIHNhbWUgcmV0dXJuIHR5cGUgbWlzbWF0Y2hlcyBhbmQgcmVmZXJlbmNlIGxlYWtzIGFsc28g
YXBwZWFyIHRvIGJlCnByZXNlbnQgaW4gdGhlIHByb2JlIGZ1bmN0aW9ucyBmb3IgcWNvbS1zcG1p
LXNkYW0uYywgcWNvbS1wb24uYywgYW5kCnBoeS1xY29tLWV1c2IyLXJlcGVhdGVyLmMgaW50cm9k
dWNlZCBieSB0aGlzIHBhdGNoc2V0LgoKPiArCj4gKwlzdWJfc2RldiA9IGRldm1fc3BtaV9zdWJk
ZXZpY2VfYWxsb2NfYW5kX2FkZChkZXYsIHNwYXJlbnQpOwo+ICsJaWYgKElTX0VSUihzdWJfc2Rl
dikpCj4gKwkJcmV0dXJuIFBUUl9FUlIoc3ViX3NkZXYpOwoKLS0gClNhc2hpa28gQUkgcmV2aWV3
IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcwNzA4MzczMC4zMzk3Ny0x
LWFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT9wYXJ0PTkKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
