Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EE50606A321
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 09:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=NxEpTkDz;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Df4gYMgq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=G94hjss3oTU9Arr5o0VYlm/JEswGFgbc7YJz5u71Jcc=; b=NxEpTkDz1RtGDpoDO4qlX27uMI
	///jrv7b4k9sg9BwDKLKljgM3PK5rfBdE59v6hxHpbVjECYPwDmvcgWiAXoOIpCvh1ZDDwGTfqGZD
	qMpnIXaUePvFX0JsFz4GIRJL1VKzUKD3cwhYMqmWe8E9ZSx1mwJ0XMqT08tUPO/kB1lPCdSsIyu02
	AztXGNKfuhE0p95DmU+fLTRDk9ANNbVwXEDMVIMMByVyq14U1VY1uEx6ITzXxKUVo1319sO/NrDnE
	bgfweb/Bui0NS8vWddxzcbuubowuZGJwYKA6BrScjwvep7fMXj+YZQHYVLm87xdhNP9U4DWHmLyY0
	HRsifOAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQLxj-00000000IA4-0QoC;
	Mon, 09 Nov 2026 09:46:51 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQLxh-00000000I9x-2FAK
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 09:46:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A8CA3600CB;
	Mon,  9 Nov 2026 09:46:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AD2B1F0089F;
	Mon,  9 Nov 2026 09:46:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794217608;
	bh=Q2CjDBVhzJAJxPZr+GZm+Fvqn6gJjBCjOYe8FvwG4Bg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Df4gYMgqkme1CYkMFMmBgxZe6pwRWOI57U9NTSqgW6YmcjNhl3fxuNhL2r+BIV86T
	 hEDGNjM3Qk3rutjzx4kvCasp3uidjt+QwvQky/YxtnP+ZGBqWWmqhULrsdnyRvrHVk
	 Y6NN08yd0K51sUtXgpS3ufx8wvyvjQdR6KQraQx6GXbz3eJbERpuPG8D1NlyTXAujE
	 w4u1VBuKb8HdH+95sGVxkd3PCRXp1gjSu7M4MJ/fUpqDT/sq1Bv9Og356TLrCQpIr7
	 tK1Mknof35vemFzGbpyBItYNnYkozntczlwwX8DXBEyqBYJDyauLsPglij00ayPt20
	 YYS9WEhjU4G2Q==
Message-ID: <sashiko-outbox-204741@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: rcar-gen3-usb2: cancel OTG work on unbind to avoid
 use-after-free
To: hyunjungg <hj351016@gmail.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, wsa+renesas@sang-engineering.com
In-Reply-To: <20261109091633.1430331-1-hj351016@gmail.com>
References: <20261109091633.1430331-1-hj351016@gmail.com>
Date: Mon, 09 Nov 2026 09:46:47 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0xvd10gcGh5OiByY2FyLWdlbjMtdXNi
MjogRml4ZXMgdGFnIGNpdGVzIDJiMzg1NDNjOGRiMSBpbnN0ZWFkIG9mCiAgYzE0ZjhhNDAzMmVm
Ci0tCgpjb21taXQgODk3MDgyZTUyODUwY2RlZGI3Nzk3NzcwZDRmYjk2NTZjZDc3MTNhZApBdXRo
b3I6IEh5dW5qdW5nIEtvIDxoajM1MTAxNkBnbWFpbC5jb20+Cgo+IHBoeTogcmNhci1nZW4zLXVz
YjI6IGNhbmNlbCBPVEcgd29yayBvbiB1bmJpbmQgdG8gYXZvaWQgdXNlLWFmdGVyLWZyZWUKPgo+
IFRoZSBPVEcgcm9sZS9WQlVTIGludGVycnVwdCAocmNhcl9nZW4zX3BoeV91c2IyX2lycSkgYW5k
IHRoZSByb2xlIHN5c2ZzCj4gYXR0cmlidXRlIHNjaGVkdWxlIGNoYW5uZWwtPndvcmsgKHJjYXJf
Z2VuM19waHlfdXNiMl93b3JrKSwgd2hvc2UgaGFuZGxlcgo+IGRlcmVmZXJlbmNlcyB0aGUgY2hh
bm5lbCAoY2gtPmV4dGNvbikuIFRoZSBjaGFubmVsIGlzIGRldm0tYWxsb2NhdGVkLCBzbwo+IGl0
IGlzIGZyZWVkIGF0IHVuYmluZCwgYnV0IG5vdGhpbmcgY2FuY2VscyBjaGFubmVsLT53b3JrOgo+
IHJjYXJfZ2VuM19waHlfdXNiMl9yZW1vdmUoKSBvbmx5IGRyb3BzIHRoZSByb2xlIHN5c2ZzIGZp
bGUuIEEgd29yawo+IHNjaGVkdWxlZCBqdXN0IGJlZm9yZSB1bmJpbmQgY2FuIHJ1biBhZnRlciB0
aGUgY2hhbm5lbCBoYXMgYmVlbiBmcmVlZCwgYQo+IHVzZS1hZnRlci1mcmVlLgo+Cj4gQ2FuY2Vs
IHRoZSB3b3JrIHZpYSBkZXZtLCByZWdpc3RlcmVkIGJlZm9yZSB0aGUgaW50ZXJydXB0IGlzIHJl
cXVlc3RlZCBzbwo+IHRoYXQgb24gdW5iaW5kIGRldm0gZnJlZXMgdGhlIGludGVycnVwdCBmaXJz
dCAobm8gbmV3IHdvcmsgY2FuIGJlCj4gc2NoZWR1bGVkKSBhbmQgdGhlbiBydW5zIHRoZSBjYW5j
ZWwgYWN0aW9uIGJlZm9yZSB0aGUgY2hhbm5lbCBpcyBmcmVlZC4KPgo+IEZpeGVzOiAyYjM4NTQz
YzhkYjEgKCJwaHk6IHJjYXItZ2VuMy11c2IyOiBhZGQgZXh0Y29uIHN1cHBvcnQiKQo+IENjOiBz
dGFibGVAdmdlci5rZXJuZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogSHl1bmp1bmcgS28gPGhqMzUx
MDE2QGdtYWlsLmNvbT4KCltTZXZlcml0eTogTG93XQpTaG91bGQgdGhlIEZpeGVzIHRhZyByZWZl
cmVuY2UgYzE0ZjhhNDAzMmVmICgicGh5OiByY2FyLWdlbjMtdXNiMjogZml4Cm11dGV4X2xvY2sg
Y2FsbGluZyBpbiBpbnRlcnJ1cHQiKSBpbnN0ZWFkPyAgQ29tbWl0IDJiMzg1NDNjOGRiMSAoInBo
eToKcmNhci1nZW4zLXVzYjI6IGFkZCBleHRjb24gc3VwcG9ydCIpIGNhbGxlZCBleHRjb25fc2V0
X2NhYmxlX3N0YXRlXygpCnN5bmNocm9ub3VzbHksIHdoZXJlYXMgYzE0ZjhhNDAzMmVmICgicGh5
OiByY2FyLWdlbjMtdXNiMjogZml4IG11dGV4X2xvY2sKY2FsbGluZyBpbiBpbnRlcnJ1cHQiKSBp
bnRyb2R1Y2VkIGNoYW5uZWwtPndvcmsgYW5kCnJjYXJfZ2VuM19waHlfdXNiMl93b3JrKCkgd2l0
aG91dCBjYW5jZWxpbmcgdGhlIHdvcmsgb24gdW5iaW5kLgoKLS0gClNhc2hpa28gQUkgcmV2aWV3
IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTEwOTA5MTYzMy4xNDMwMzMx
LTEtaGozNTEwMTZAZ21haWwuY29tP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
