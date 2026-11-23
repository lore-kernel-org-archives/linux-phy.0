Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627ED606A31A
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 07:01:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=irAFhWzG;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=GzIWYnEC
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=BCFWBzTkHofS7w2C8m8bBA5HwTsLMqPT81wCkRSm/Hs=; b=irAFhWzGf6VDWA5eElnGFnvx3W
	2sgD20S1NKfQdQQNjeNzA0D3SEPrqhr1fM+6ZhOKyC8xtpIvWVf14bBhoUvVz9OjtUN1SXvueBpQH
	iIT6Xzo9epmV+SelDnhlfwvcAcvThbAScjGCa1XFySQkLjT5/odh1LKSm/qjjA0nRiNldHqRjYP2s
	yeEUybR/7xd+1e1NzWxaxN5pVg/qArh0sPST/W8EUv2EuwhW5xdd0f4tZJGVSgkTFrPT2ZyfZECcM
	dVX07+m7hhzBtFUBIbb1FmTcBaMhrgiKBU8a1pM2cqJy9s6t6cSsnf/0U+PgyVFzos6uklkt9C3BW
	DE4+2y3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVO34-00000002PqN-0ZtL;
	Mon, 23 Nov 2026 07:01:10 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVO2Y-00000002Pp9-1QDE
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 07:01:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7EF696190B;
	Mon, 23 Nov 2026 07:00:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E57151F000C0;
	Mon, 23 Nov 2026 07:00:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795417237;
	bh=2Xfacf8N1soNHWfZFuFtXqaDfTfpszAiJhgMipE9g3k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GzIWYnECvJczcIiseT0lVEVt2xELTQTw5nCA7ZrC9hru+kA8loDCQ5InqJ898RXS1
	 yiJIqI7fd4bQHaXwIpqF9Qqt5tosyzUcyP05XIFP2S9mUIJ8IL50QEL7gicCwMeTeF
	 GFfsxNwgSyTfGKc9rNi24PmGXcY49WJ2DSVr6QKJwjqSXX2+GziNPvRpIn/X77suZB
	 pyepZbXGz2iBzJFvTr3MsUXFixjibjT2+AVq2t9aBHIN4/hTuZHb9ryJh9+f2hYQ4U
	 fX8XmvQEsnDuXrlwN9UNoIV/UyZ78UBoJfZ3G93D7KpIRrEAsCvQf6yMOZBt4xL/CR
	 lBXgw8Qot762A==
Message-ID: <sashiko-outbox-228788@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/3] usb: musb: sunxi: Assert reset before
 deasserting on init
To: "Bobek Brzeczyszczykiewicz" <admin@roadbobek.com>
Cc: linux-usb@vger.kernel.org, linux-sunxi@lists.linux.dev, linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261123-usb-sunxi-reset-fix-v2-1-4e51d3a64964@roadbobek.com>
References: <20261123-usb-sunxi-reset-fix-v2-0-4e51d3a64964@roadbobek.com>
 <20261123-usb-sunxi-reset-fix-v2-1-4e51d3a64964@roadbobek.com>
Date: Mon, 23 Nov 2026 07:00:36 +0000
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
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0xvd10gdXNiOiBtdXNiOiBzdW54aTog
dW5jaGVja2VkIHJlc2V0X2NvbnRyb2xfYXNzZXJ0KCkgaW4KICBzdW54aV9tdXNiX2luaXQoKQot
LQoKY29tbWl0IDk3OWQ1NDg2ZWFjMGFhMzY5NjBkNTgyYjZiNjQ1ZmEwOGU0MWQ2MmUKQXV0aG9y
OiBCb2JlayBCcnplY3p5c3pjenlraWV3aWN6IDxhZG1pbkByb2FkYm9iZWsuY29tPgoKdXNiOiBt
dXNiOiBzdW54aTogQXNzZXJ0IHJlc2V0IGJlZm9yZSBkZWFzc2VydGluZyBvbiBpbml0CgpUaGlz
IGNvbW1pdCByZXF1ZXN0cyBhbiBleGNsdXNpdmUgcmVzZXQgY29udHJvbCBpbiBzdW54aV9tdXNi
X3Byb2JlKCkgYW5kCmJyaWVmbHkgYXNzZXJ0cyBnbHVlLT5yc3QgYmVmb3JlIGRlYXNzZXJ0aW5n
IGl0IGluIHN1bnhpX211c2JfaW5pdCgpIHNvCnRoYXQgTVVTQiBzdGFydHMgZnJvbSBhIGNsZWFu
IHN0YXRlIHdoZW4gYSBib290bG9hZGVyIGxlZnQgdGhlIHJlc2V0IGxpbmUKZGVhc3NlcnRlZC4K
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdXNiL211c2Ivc3VueGkuYyBiL2RyaXZlcnMvdXNiL211
c2Ivc3VueGkuYwo+IGluZGV4IGExN2IxYzE1MDYyNmIuLjVmNjNkNTE5MjM3YjQgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy91c2IvbXVzYi9zdW54aS5jCj4gKysrIGIvZHJpdmVycy91c2IvbXVzYi9z
dW54aS5jClsgLi4uIF0KPiBAQCAtMjM5LDYgKzI0MCw4IEBAIHN0YXRpYyBpbnQgc3VueGlfbXVz
Yl9pbml0KHN0cnVjdCBtdXNiICptdXNiKQo+ICAJCWdvdG8gZXJyb3Jfc3JhbV9yZWxlYXNlOwo+
ICAKPiAgCWlmICh0ZXN0X2JpdChTVU5YSV9NVVNCX0ZMX0hBU19SRVNFVCwgJmdsdWUtPmZsYWdz
KSkgewo+ICsJCXJlc2V0X2NvbnRyb2xfYXNzZXJ0KGdsdWUtPnJzdCk7Cj4gKwkJdXNsZWVwX3Jh
bmdlKDEwLCAyMCk7Cj4gIAkJcmV0ID0gcmVzZXRfY29udHJvbF9kZWFzc2VydChnbHVlLT5yc3Qp
Owo+ICAJCWlmIChyZXQpCj4gIAkJCWdvdG8gZXJyb3JfY2xrX2Rpc2FibGU7CgpbU2V2ZXJpdHk6
IExvd10KQXMgcmVwb3J0ZWQgYnkgUGhpbGlwcCBaYWJlbCBvbiB2MSBbMV0sIHNob3VsZCB0aGUg
cmV0dXJuIHZhbHVlIG9mCnJlc2V0X2NvbnRyb2xfYXNzZXJ0KGdsdWUtPnJzdCkgYmUgY2hlY2tl
ZCBhbmQganVtcCB0byBlcnJvcl9jbGtfZGlzYWJsZQpvbiBmYWlsdXJlLCBtYXRjaGluZyByZXNl
dF9jb250cm9sX2RlYXNzZXJ0KCkgcmlnaHQgYmVsb3c/CgpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvci85NzRkNjI5YjIzZDM4ZDQ2YTAzMzUxM2RiOWI0ZTc4M2I5YzExY2RhLmNhbWVsQHBl
bmd1dHJvbml4LmRlCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRl
di8jL3BhdGNoc2V0LzIwMjYxMTIzLXVzYi1zdW54aS1yZXNldC1maXgtdjItMC00ZTUxZDNhNjQ5
NjRAcm9hZGJvYmVrLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
