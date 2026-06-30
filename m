Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7997BC43327
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gM2RSTqUmnYoYOfeJnUzE7Rv82VjdWJESfCHELBA2x4=; b=tlxJEGjUIoKhBy
	Ks6J942ZjuGtTHZ1sdzwX69uov4LlY5f2iZ7h3nNjkx2bWYUYh9UEu6sG27pP9ULQ+5f1BgNIxCAu
	BfqVeCxHl+8cv8yblq0CqzJmAzAP4oOAhHttbIpm5Ij/CXHSyO7pErsRjGlAoEkNY69TXlVG9m1w+
	hr1jRU/uI+opFSMLXaVXgm9OeZjt/EYFrXKhYim+9MWeKvXek3nYqrJ617oszhqB6e5AC3kaa3085
	7ek3A5w9zc2tE07kni131CLyIZixiYrWYgRaKvG5K6/HWb20+o2CLLUepC5UNtyinsjEyXnDWhm7B
	VKRKijai7syk4S5GOykg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYVt-0000000HA7c-0570;
	Tue, 30 Jun 2026 13:28:33 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYVq-0000000HA7V-3mOs
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 13:28:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7F2234395D;
	Tue, 30 Jun 2026 13:28:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA0751F000E9;
	Tue, 30 Jun 2026 13:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782826110;
	bh=FqYwhhXUqU7Jsf0sHkg0y9uuS5UXFaP8C98LR4+cM8g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mDpzbJmayqKDJ0Kq2DxxzPKJfgho1fvMIWAhu+Hvn6mwjgvlukywnTC+OAdF2X+J3
	 QY9D+PgSljZuAZJbeu1iefwLSX8v8B+iNDmVG6mz0aWc/xi70FO8lCo63Ec2xfOmZP
	 wsyOiJjLyxTH2/j6/Z/zJ5gUL6nwuzRpUYP1F1VKGEJy2b6Bt63qGlVJGXVQTzN79T
	 dEEfSHR89cvIcaQ/bncJJjqEnepy+Le4GsS0cfKRJH8VF4W6hVx+3XVJ/nswTEXjHP
	 U2rgNJUIdy7hq15js6z2H+jaHBiA/+NHcbhtLR/Wxo8eHGu1fdJEJHi9UVqv6J5zH+
	 ktPwM4yk97wEg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 05/13] mfd: replace linux/gpio.h inclusions
To: "Arnd Bergmann" <arnd@kernel.org>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, dmitry.torokhov@gmail.com, linux-input@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-sunxi@lists.linux.dev
In-Reply-To: <20260629132633.1300009-6-arnd@kernel.org>
References: <20260629132633.1300009-1-arnd@kernel.org>
 <20260629132633.1300009-6-arnd@kernel.org>
Date: Tue, 30 Jun 2026 13:28:29 +0000
Message-Id: <20260630132829.AA0751F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIHBhdGNoIGludHJv
ZHVjZXMgYSBkdXBsaWNhdGUgYCNpbmNsdWRlIDxsaW51eC9ncGlvL2NvbnN1bWVyLmg+YCBpbiBg
aW5jbHVkZS9saW51eC9tZmQvdGktbG11LmhgLgotLQoKY29tbWl0IDE5NzUxYWYxZjRhZjc1NDlj
ZjlmMTQwZTM4NDI3ODQ3YzhiYWJiZDQKQXV0aG9yOiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRi
LmRlPgoKbWZkOiByZXBsYWNlIGxpbnV4L2dwaW8uaCBpbmNsdXNpb25zCgpUaGlzIGNvbW1pdCBy
ZXBsYWNlcyB0aGUgZGVwcmVjYXRlZCBsaW51eC9ncGlvLmggaW5jbHVzaW9uIGFjcm9zcyB2YXJp
b3VzIE1GRApkcml2ZXJzIGFuZCBoZWFkZXJzLCBjb252ZXJ0aW5nIHRoZW0gdG8gdXNlIGVpdGhl
ciBsaW51eC9ncGlvL2NvbnN1bWVyLmggb3IKbGludXgvZ3Bpby9sZWdhY3kuaCBhcyBuZWVkZWQu
CgpbIC4uLiBdCgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L21mZC90aS1sbXUuaCBiL2lu
Y2x1ZGUvbGludXgvbWZkL3RpLWxtdS5oCj4gaW5kZXggMGJjMGU4MTk5Nzk4Ny4uNTA0MGM3ZDFl
MWI5MiAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2xpbnV4L21mZC90aS1sbXUuaAo+ICsrKyBiL2lu
Y2x1ZGUvbGludXgvbWZkL3RpLWxtdS5oCj4gQEAgLTEwLDcgKzEwLDcgQEAKPiAgI2lmbmRlZiBf
X01GRF9USV9MTVVfSF9fCj4gICNkZWZpbmUgX19NRkRfVElfTE1VX0hfXwo+ICAKPiAtI2luY2x1
ZGUgPGxpbnV4L2dwaW8uaD4KPiArI2luY2x1ZGUgPGxpbnV4L2dwaW8vY29uc3VtZXIuaD4KPiAg
I2luY2x1ZGUgPGxpbnV4L25vdGlmaWVyLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9yZWdtYXAuaD4K
PiAgI2luY2x1ZGUgPGxpbnV4L2dwaW8vY29uc3VtZXIuaD4KCltTZXZlcml0eTogTG93XQpUaGlz
IGlzbid0IGEgYnVnLCBidXQgPGxpbnV4L2dwaW8vY29uc3VtZXIuaD4gaXMgbm93IGluY2x1ZGVk
IHR3aWNlLiBXb3VsZCBpdApiZSBiZXR0ZXIgdG8ganVzdCBkcm9wIHRoZSByZXBsYWNlZCBpbmNs
dWRlIGhlcmUgc2luY2UgdGhlIGNvbnN1bWVyIGhlYWRlciBpcwphbHJlYWR5IHByZXNlbnQgYSBm
ZXcgbGluZXMgYmVsb3c/CgpbIC4uLiBdCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6
Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjI5MTMyNjMzLjEzMDAwMDktMS1hcm5kQGtl
cm5lbC5vcmc/cGFydD01CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
