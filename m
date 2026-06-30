Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23C0CC43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 13:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jiBD60qh1b6QEQxlUcewZcFAc3QGh3mAS+hQyBaoj1o=; b=jpc0hD+LeROlVz
	KjbDEpXI74RwqgyksgaoxjZUvbM64l8SXyOe6tDzbLDJvWUxHFoxDXN/vGDC/uVg/DPnivorzHOrx
	gPCQzKO2WJtoYvb3pqloRU7JI/X6q7i5EySxr2R8BdNFn+FQq9QpltnF1zTAJ/dO3XE2V0YpZ/BT7
	JUesZjmfQwg8XuRkqfhYACLfLHEzgfmR5+DdXr9cd4kNqV+hVj4T+PiJo8GRhrQiTjZv7ZTlGDj1w
	7WBFRCCJP4kq9iq3XhSb6iWStw53+TQ/5AV+bHqYrdTzUidHEgiwC+IY5IiAkhbICEzZwhfrh05FD
	pMoLcvKDyyIHeFTt0hlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYVu-0000000HA8D-3P14;
	Tue, 30 Jun 2026 13:28:34 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYVs-0000000HA7b-46K3
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 13:28:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BA05640C42;
	Tue, 30 Jun 2026 13:28:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B9C51F000E9;
	Tue, 30 Jun 2026 13:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782826112;
	bh=e2NTsoPtc4Ih6RALL6+PVycCsLek2TBHF0lUvpy3RoI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TIX6wAuXFfBZv90wBYlbOQdmfg7Eg0X+THSNseCtbfXPGPHrKRAe2lYy5bTuuhexd
	 G7K79powpWYszSyqxhCW6qVuR45J0EAql8sy+zPEsFa7I4Kivv/5puEk8sXytxdIe0
	 5JOSjc7M9MG4j3exhvmkb4G15KUfBzFx/tJoK5Kv1Fx5T008zbn+6yFvV3DQgi9iW5
	 Zs7DnDcd5DjmkxeKdq/J0NjxZ0ciQ3ZDQSMChWoTlq0MR73osY9RtTZyT5FBz3frHm
	 9jNfZkcRBg48VzX7HP8TyLZvBU91zHXkcjFU+TA3osQ2hXVwOmefG0kcnTFzolyDSu
	 YGDueAE2j5wjw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 07/13] ASoC: replace linux/gpio.h inclusions
To: "Arnd Bergmann" <arnd@kernel.org>
Cc: linux-sunxi@lists.linux.dev, linux-phy@lists.infradead.org, linux-input@vger.kernel.org, olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org, dmitry.torokhov@gmail.com
In-Reply-To: <20260629132633.1300009-8-arnd@kernel.org>
References: <20260629132633.1300009-1-arnd@kernel.org>
 <20260629132633.1300009-8-arnd@kernel.org>
Date: Tue, 30 Jun 2026 13:28:31 +0000
Message-Id: <20260630132832.3B9C51F000E9@smtp.kernel.org>
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
ZHVjZXMgZHVwbGljYXRlIGAjaW5jbHVkZSA8bGludXgvZ3Bpby9jb25zdW1lci5oPmAgZGlyZWN0
aXZlcyBpbiBgY3M0Mmw4NC5jYCBhbmQgYGRtaWMuY2AuCi0tCgpjb21taXQgNWU4OGFkOWE1ODYz
ZGJhZmJlNDE0YzY4OGIzMWE4NTgyN2RlMjBkYQpBdXRob3I6IEFybmQgQmVyZ21hbm4gPGFybmRA
YXJuZGIuZGU+CgpBU29DOiByZXBsYWNlIGxpbnV4L2dwaW8uaCBpbmNsdXNpb25zCgpUaGlzIGNv
bW1pdCB1cGRhdGVzIG11bHRpcGxlIEFTb0MgY29kZWNzIHRvIHVzZSBsaW51eC9ncGlvL2NvbnN1
bWVyLmggaW5zdGVhZApvZiB0aGUgZGVwcmVjYXRlZCBsaW51eC9ncGlvLmggaGVhZGVyLgoKPiBk
aWZmIC0tZ2l0IGEvc291bmQvc29jL2NvZGVjcy9jczQybDg0LmMgYi9zb3VuZC9zb2MvY29kZWNz
L2NzNDJsODQuYwo+IGluZGV4IGYyYTU4MTYzZGUwZWQuLjM2YzNhYmMyMWZlZGMgMTAwNjQ0Cj4g
LS0tIGEvc291bmQvc29jL2NvZGVjcy9jczQybDg0LmMKPiArKysgYi9zb3VuZC9zb2MvY29kZWNz
L2NzNDJsODQuYwo+IEBAIC0xNiw3ICsxNiw3IEBACj4gICNpbmNsdWRlIDxsaW51eC9pbml0Lmg+
Cj4gICNpbmNsdWRlIDxsaW51eC9kZWxheS5oPgo+ICAjaW5jbHVkZSA8bGludXgvaTJjLmg+Cj4g
LSNpbmNsdWRlIDxsaW51eC9ncGlvLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9ncGlvL2NvbnN1bWVy
Lmg+CgpbU2V2ZXJpdHk6IExvd10KVGhpcyBpc24ndCBhIGJ1ZywgYnV0IGRvZXMgdGhpcyBjcmVh
dGUgYSBkdXBsaWNhdGUgaW5jbHVkZT8gSXQgYXBwZWFycwpsaW51eC9ncGlvL2NvbnN1bWVyLmgg
aXMgYWxyZWFkeSBpbmNsdWRlZCBmdXJ0aGVyIGRvd24gaW4gdGhpcyBmaWxlLiBDb3VsZCB3ZQpz
aW1wbHkgZHJvcCB0aGUgbGludXgvZ3Bpby5oIGluY2x1ZGUgZW50aXJlbHk/Cgo+ICAjaW5jbHVk
ZSA8bGludXgvcmVnbWFwLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+Cj4gICNpbmNsdWRl
IDxsaW51eC9hY3BpLmg+CgpbIC4uLiBdCgo+IGRpZmYgLS1naXQgYS9zb3VuZC9zb2MvY29kZWNz
L2RtaWMuYyBiL3NvdW5kL3NvYy9jb2RlY3MvZG1pYy5jCj4gaW5kZXggNjFlMWJmMWIzYzllNi4u
OGIwNWQ2ZjliNDI5YiAxMDA2NDQKPiAtLS0gYS9zb3VuZC9zb2MvY29kZWNzL2RtaWMuYwo+ICsr
KyBiL3NvdW5kL3NvYy9jb2RlY3MvZG1pYy5jCj4gQEAgLTYsNyArNiw3IEBACj4gICAqLwo+ICAK
PiAgI2luY2x1ZGUgPGxpbnV4L2RlbGF5Lmg+Cj4gLSNpbmNsdWRlIDxsaW51eC9ncGlvLmg+Cj4g
KyNpbmNsdWRlIDxsaW51eC9ncGlvL2NvbnN1bWVyLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9ncGlv
L2NvbnN1bWVyLmg+CgpbU2V2ZXJpdHk6IExvd10KVGhpcyBpc24ndCBhIGJ1ZywgYnV0IHNob3Vs
ZCB3ZSBqdXN0IGRlbGV0ZSB0aGUgb2xkIGluY2x1ZGUgbGluZT8gUmVwbGFjaW5nCml0IGxlYXZl
cyB0d28gaWRlbnRpY2FsIGluY2x1ZGVzIGJhY2stdG8tYmFjay4KCj4gICNpbmNsdWRlIDxsaW51
eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3JlZ3VsYXRvci9jb25zdW1l
ci5oPgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRj
aHNldC8yMDI2MDYyOTEzMjYzMy4xMzAwMDA5LTEtYXJuZEBrZXJuZWwub3JnP3BhcnQ9NwoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
