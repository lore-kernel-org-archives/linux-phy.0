Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4D5EC43602
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 13:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pD53zkzOD2MrW0Y1n1fa34JaNFpblBh+1Y8XOPCqnDo=; b=HhsWj7CALkKc7J
	vFzZqCiJu7pSLA9Cr2HPHLymdJioMgn6NQXIM5gCH+3w7SfQbMbRxFnq3TNKN2igerMc51n8SCdKw
	wjmh5n6lZb/y77q6ySiwCx8FgnOA1gckputMwWT2DavvHmOhPkUX6lG1phkHNFT3YFgA6UI61KYcp
	F7nVIsFWUxgnf8hCeHh/QKT5xCkklE8Ir4t8+2ckETzDhz4Czx9/9vzDeV7xehQl36NESCehvd7/x
	6W6OGnYtKu3WUShXEsoV9UXasFfDbLugT1gPtxjyhzFYMB8V6NYFf595MOY9+//MfCSHfAx4cL/EP
	Fk8rI+Mnyum3V9kOaEyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYVx-0000000HA9B-1Zih;
	Tue, 30 Jun 2026 13:28:37 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYVv-0000000HA8W-2KTC
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 13:28:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 533E24368E;
	Tue, 30 Jun 2026 13:28:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B03A1F000E9;
	Tue, 30 Jun 2026 13:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782826115;
	bh=bVQOQl0jRlDX5vv0kM3q6D/yJBdPNZlJCO8WFYYkED0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mDFGBfqNpQG+xW4EAMSJGsE42/E2qnxQ5qVsis5khPhV+4/UmiTiRpO9x7saznSuw
	 Swy0z4iscMjE7Dg9u4YjY9LOlvuHUvDUxznH41EdLNT0pimCOF79I9+pXx+ebYQxaZ
	 lGsLozTuwQfd1AMc+PdVAeP0/4aK+jmdrj5iITWieLqfQrdYX07ZbIVIrntuwEzFzR
	 aQqtA4TSfH4hmR4LFHNxClrK9nNc9W+paoqjKVt2tyEPnthdCdYFcnRQ7pS7lho4tK
	 X8WEGlqAz0bKakfLW9q/1uD4ZSFoCEJmB1EmJSfVVdiKNRxeHz5nkYNX30xiomRi2z
	 bGIiB+kAhTSGQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 11/13] Input: matrix_keyboard - replace linux/gpio.h
 inclusion
To: "Arnd Bergmann" <arnd@kernel.org>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, linux-sunxi@lists.linux.dev, dmitry.torokhov@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org, linux-input@vger.kernel.org
In-Reply-To: <20260629132633.1300009-12-arnd@kernel.org>
References: <20260629132633.1300009-1-arnd@kernel.org>
 <20260629132633.1300009-12-arnd@kernel.org>
Date: Tue, 30 Jun 2026 13:28:34 +0000
Message-Id: <20260630132834.9B03A1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gUmVkdW5kYW50IGhlYWRl
ciBpbmNsdXNpb24gb2YgPGxpbnV4L2dwaW8vY29uc3VtZXIuaD4KLS0KCmNvbW1pdCBiNjBmNGM1
YmYxZDZjODNjYzM0YjNhYjYwMzA3MjU0ODliZDdjM2U1CkF1dGhvcjogQXJuZCBCZXJnbWFubiA8
YXJuZEBhcm5kYi5kZT4KCklucHV0OiBtYXRyaXhfa2V5Ym9hcmQgLSByZXBsYWNlIGxpbnV4L2dw
aW8uaCBpbmNsdXNpb24KClRoaXMgY29tbWl0IHJlcGxhY2VzIHRoZSBpbmNsdXNpb24gb2YgdGhl
IGRlcHJlY2F0ZWQgbGludXgvZ3Bpby5oIGhlYWRlcgp3aXRoIGxpbnV4L2dwaW8vY29uc3VtZXIu
aCBpbiB0aGUgbWF0cml4IGtleXBhZCBkcml2ZXIuIEl0IHByZXBhcmVzIHRoZQpjb2RlIGZvciB0
aGUgcmVtb3ZhbCBvZiBsaW51eC9ncGlvLmguCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lucHV0
L2tleWJvYXJkL21hdHJpeF9rZXlwYWQuYyBiL2RyaXZlcnMvaW5wdXQva2V5Ym9hcmQvbWF0cml4
X2tleXBhZC5jCj4gaW5kZXggZTUwYTZmZWE5YTYwMi4uOThkMDI2OWE5NzhmZSAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2lucHV0L2tleWJvYXJkL21hdHJpeF9rZXlwYWQuYwo+ICsrKyBiL2RyaXZl
cnMvaW5wdXQva2V5Ym9hcmQvbWF0cml4X2tleXBhZC5jCj4gQEAgLTE2LDcgKzE2LDcgQEAKPiAg
I2luY2x1ZGUgPGxpbnV4L2ludGVycnVwdC5oPgo+ICAjaW5jbHVkZSA8bGludXgvamlmZmllcy5o
Pgo+ICAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gLSNpbmNsdWRlIDxsaW51eC9ncGlvLmg+
Cj4gKyNpbmNsdWRlIDxsaW51eC9ncGlvL2NvbnN1bWVyLmg+CgpbU2V2ZXJpdHk6IExvd10KRG9l
cyB0aGlzIHJlc3VsdCBpbiBhIHJlZHVuZGFudCBpbmNsdXNpb24/IExvb2tpbmcgYXQgbWF0cml4
X2tleXBhZC5jLAo8bGludXgvZ3Bpby9jb25zdW1lci5oPiBpcyBhbHJlYWR5IGluY2x1ZGVkIGVh
cmxpZXIgaW4gdGhlIGZpbGU6CgojaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KI2luY2x1ZGUgPGxp
bnV4L2RlbGF5Lmg+CiNpbmNsdWRlIDxsaW51eC9ncGlvL2NvbnN1bWVyLmg+CiNpbmNsdWRlIDxs
aW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KCkNvdWxkIHRoZSBvbGQgPGxpbnV4L2dwaW8uaD4gaW5j
bHVzaW9uIGp1c3QgYmUgcmVtb3ZlZCBlbnRpcmVseSBpbnN0ZWFkIG9mCmJlaW5nIHJlcGxhY2Vk
PwoKPiAgI2luY2x1ZGUgPGxpbnV4L2lucHV0L21hdHJpeF9rZXlwYWQuaD4KPiAgI2luY2x1ZGUg
PGxpbnV4L3NsYWIuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L29mLmg+CgotLSAKU2FzaGlrbyBBSSBy
ZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjI5MTMyNjMzLjEz
MDAwMDktMS1hcm5kQGtlcm5lbC5vcmc/cGFydD0xMQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
