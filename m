Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD0CFC43327
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 13:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A03FoqO2vtHlVqjj83aVIgnViDZUxafmqM7Do7oPmSU=; b=uLZsT6sTyVtPyx
	hN94wH+k7euC98MsadUWO6y2nIiwLZ2xEWE3sKF2UxBV0tyiX4VH6V1u4YwuHSrs2cX0HoREEQa0r
	/W22Hr8M/8qhRHNjBy4aHEhaqx6WhgMlbBh8EppCWdHxIvl8PqZ1pC08yeXjKTOoMaYIXWr0wiKND
	+BieKIz6mRl3EdSnsxsFO1tM6XIhIaWfdiiIkMfQd2kd8FbIbnzG0TzwCXhOZzNJ15J9eVhrZ4b2T
	BjmzPU2L+yvNV0o5mikOnOObAMJCa3mUe0D0Ioeq97NRwjWOCXkjWnplY9H8hLw0e/a6/aoPenher
	GUmY1gjEafXVXFkKBk/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYVz-0000000HAAA-1xPR;
	Tue, 30 Jun 2026 13:28:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYVx-0000000HA9U-3NN4
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 13:28:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8F37643442;
	Tue, 30 Jun 2026 13:28:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5FF0A1F000E9;
	Tue, 30 Jun 2026 13:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782826117;
	bh=w7gjhOObn06IZwCF2h72/yM1H2nbVXiS2binvXxNAqg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Gu88O8iebsZJCi1hNxtEIPFj1XOpyvcaqbQHSb3FMW8xOkENbkxbs5RbLQPoxLyOO
	 xVupTwOgiJdZ1SAAiTyHjULy3chcDk0ozGJ38zA8umJTrH4XaUGyHkV4AeP18PFUnt
	 s/u4bRKKKKSc8abAXMBe6bHFTIu+OpJP7t1y905wRh3uQsbPJWmNuPdnLnSYgpLCsR
	 z1+5ek6xYoWU4vZK2xf+rp0cSkXkZeeKTmHZvg+vxezY9WFjSJhnnTFoPYpttNZid/
	 zlzJtTOd1fm7YsC9t+Z3mYbP+X8VKQ9tIKWp+FEFeK+Dm3foOwE7t6sIm/WFSOkWtZ
	 XA5IPev8NVbFA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 12/13] gpib: gpio: replace linux/gpio.h inclusion
To: "Arnd Bergmann" <arnd@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-sunxi@lists.linux.dev, neil.armstrong@linaro.org, vkoul@kernel.org, linux-input@vger.kernel.org, dmitry.torokhov@gmail.com, olteanv@gmail.com
In-Reply-To: <20260629132633.1300009-13-arnd@kernel.org>
References: <20260629132633.1300009-1-arnd@kernel.org>
 <20260629132633.1300009-13-arnd@kernel.org>
Date: Tue, 30 Jun 2026 13:28:35 +0000
Message-Id: <20260630132836.5FF0A1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpOZXcgaXNzdWVzOgotIFtMb3ddIFRo
ZSBwYXRjaCBpbnRyb2R1Y2VzIHJlZHVuZGFudCBkdXBsaWNhdGUgYCNpbmNsdWRlIDxsaW51eC9n
cGlvL2NvbnN1bWVyLmg+YCBzdGF0ZW1lbnRzIGluIG11bHRpcGxlIGZpbGVzLgoKUHJlLWV4aXN0
aW5nIGlzc3VlczoKLSBbSGlnaF0gTWlzc2luZyBib3VuZHMgY2hlY2sgb24gYHByaXYtPmNvdW50
YCBpbiBgYmJfREFWX2ludGVycnVwdCgpYCBjYW4gbGVhZCB0byBhIGJ1ZmZlciBvdmVyZmxvdy4K
LS0KCmNvbW1pdCAxOThjZmYzZmFkZDhmN2FiNWRiOThhMGZmMmE2NjZmNGFjN2YxYmYwCkF1dGhv
cjogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KCmdwaWI6IGdwaW86IHJlcGxhY2UgbGlu
dXgvZ3Bpby5oIGluY2x1c2lvbgoKbGludXgvZ3Bpby5oIGlzIGdvaW5nIGF3YXksIHNvIHVzZSBs
aW51eC9ncGlvL2NvbnN1bWVyLmggaW5zdGVhZC4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3Bp
Yi9ncGlvL2dwaWJfYml0YmFuZy5jIGIvZHJpdmVycy9ncGliL2dwaW8vZ3BpYl9iaXRiYW5nLmMK
PiBpbmRleCAwZTIyNzk4MGI0OTNhLi4yZThkODk1ZGIwNmE1IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3BpYi9ncGlvL2dwaWJfYml0YmFuZy5jCj4gKysrIGIvZHJpdmVycy9ncGliL2dwaW8vZ3Bp
Yl9iaXRiYW5nLmMKPiBAQCAtNjQsNyArNjQsNyBAQAo+ICAjaW5jbHVkZSA8bGludXgvZ3Bpby9j
b25zdW1lci5oPgo+ICAjaW5jbHVkZSA8bGludXgvZ3Bpby9kcml2ZXIuaD4KPiAgI2luY2x1ZGUg
PGxpbnV4L2dwaW8vbWFjaGluZS5oPgo+IC0jaW5jbHVkZSA8bGludXgvZ3Bpby5oPgo+ICsjaW5j
bHVkZSA8bGludXgvZ3Bpby9jb25zdW1lci5oPgoKW1NldmVyaXR5OiBMb3ddClRoaXMgaXNuJ3Qg
YSBidWcsIGJ1dCBkb2VzIHRoaXMgaW50cm9kdWNlIGEgZHVwbGljYXRlIGluY2x1ZGUgb2YKbGlu
dXgvZ3Bpby9jb25zdW1lci5oPyBJdCBhcHBlYXJzIHRvIGFscmVhZHkgYmUgaW5jbHVkZWQgYSBm
ZXcgbGluZXMgYWJvdmUuCgpTaW1pbGFyIGR1cGxpY2F0ZSBpbmNsdWRlcyBtaWdodCBoYXZlIGJl
ZW4gYWRkZWQgdG8gb3RoZXIgZmlsZXMgbGlrZQpkcml2ZXJzL2lucHV0L2tleWJvYXJkL21hdHJp
eF9rZXlwYWQuYyBhbmQgZHJpdmVycy9uZXQvcGh5L21kaW9fZGV2aWNlLmMKaWYgdGhleSB3ZXJl
IGFsc28gcGFydCBvZiB0aGlzIHNlcmllcy4KCj4gICNpbmNsdWRlIDxsaW51eC9pcnEuaD4KPiAg
Cj4gIHN0YXRpYyBpbnQgc243NTE2eF91c2VkID0gMSwgc243NTE2eDsKCldoaWxlIHJldmlld2lu
ZyB0aGlzIGZpbGUsIEkgbm90aWNlZCBhIHNlcGFyYXRlIGlzc3VlIGluIGJiX0RBVl9pbnRlcnJ1
cHQoKS4KCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0
IGRvZXMgdGhpcyBsYWNrIG9mIGEgYm91bmRzIGNoZWNrIG9uCnByaXYtPmNvdW50IGxlYWQgdG8g
YSBidWZmZXIgb3ZlcmZsb3c/Cgpkcml2ZXJzL2dwaWIvZ3Bpby9ncGliX2JpdGJhbmcuYzpiYl9E
QVZfaW50ZXJydXB0KCkgewogICAgICAgIC4uLgogICAgICAgIHByaXYtPnJidWZbcHJpdi0+Y291
bnQrK10gPSBnZXRfZGF0YV9saW5lcygpOwogICAgICAgIHByaXYtPmVuZCA9ICFncGlvZF9nZXRf
dmFsdWUoRU9JKTsKICAgICAgICAuLi4KfQoKSWYgdGhlIGhhcmR3YXJlIGxpbmUgREFWIGdvZXMg
bG93IG11bHRpcGxlIHRpbWVzIHdoaWxlIHByaXYtPnJfYnVzeSBpcyBzZXQKd2l0aG91dCB3YWl0
aW5nIGZvciB0aGUgbm9ybWFsIE5SRkQvTkRBQyBoYW5kc2hha2UsIGNvdWxkIHByaXYtPmNvdW50
IGV4Y2VlZAp0aGUgYWxsb2NhdGVkIGJ1ZmZlciBzaXplIGFuZCBjb3JydXB0IG1lbW9yeT8KCi0t
IApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAy
NjA2MjkxMzI2MzMuMTMwMDAwOS0xLWFybmRAa2VybmVsLm9yZz9wYXJ0PTEyCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
