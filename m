Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73B58CD6E5D
	for <linux-phy@archiver.kernel.org>; Fri,  5 Jun 2026 11:30:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6zGoCaGA0aXkIxeTCuj33PF0QEOnh33RKI96R+ODzoQ=; b=YGmKenNHDvIeGW
	Xc2EDShGfiVASE4r2VJ1E//MNA0Kg3XsduD2VooWuFfgQ5q1yDPgWub9rLJHc77DqMDrACdBJFTXx
	PKkqUAGuSsnoR8rGCi+Mfbox6POrde1X5njTlPkCoOHvqxTPp7ySG5NFTK6VZqj39MqkOI2jZVXE3
	c8Y5RAmLSRyg3F68iaJi6PSsypyJOSgG7GtH2xECrqfuHP9J9ru8JyoRvoPj6V2JP4KZ/uvi0rpkQ
	Yc58rHFM3eOEGa+7OdSO46eqLT5NpM90lQvnpNHo1pScoxv0xvRst8Th5haE8VZlRzwZAvqTNniL5
	GHetn4OohUYCMtwDjL/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVSkb-00000000XX4-0tNb;
	Fri, 05 Jun 2026 11:30:09 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVSkZ-00000000XWx-2SeE
	for linux-phy@lists.infradead.org;
	Fri, 05 Jun 2026 11:30:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CC374601E3;
	Fri,  5 Jun 2026 11:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 312FA1F00898;
	Fri,  5 Jun 2026 11:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780659006;
	bh=HVS7bYQbBAyFEAmBeqgw5R2BF8bSq76ygeTaJIAuS3Y=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jCRzlRXz83wG5PVVV0wfjIyuzy1UqQiTP+dwJqdfIczRdjvkGTNt7cIYvpooqFYiP
	 lbAVU4BcsOl/ls+7ygskB4l2nh3T6QSDDoYAIfKybeUgB03j/dl/38bLR/Gn8//i3+
	 C6lhSMsp6jMIQBWQAlwuvpxvnpgSkptG/pKAqoMjBKvvreKOFYXq2HFPcYoBQQ7CKs
	 2ALKHR2npGyrZdXqCsGn+TfDHkuf3EdDZ7N+GQETB3zQG3NTc7R3NHDhQ0qR3eBuHn
	 014AimLin86iyAyibdQOWb9glEeclDk2DGR7ljTxyaqM9P+ZF6udyAYxo+9RJSiMVr
	 kPXITZa39dggw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/5] phy: fsl-imx8mq-usb: set usb phy to be wakeup
 capable
To: "Xu Yang" <xu.yang_2@oss.nxp.com>
Cc: imx@lists.linux.dev, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org, Frank.Li@kernel.org, olteanv@gmail.com
In-Reply-To: <20260605-imx8mp-usb-phy-improvement-v4-2-b2ddf2f3862c@nxp.com>
References: <20260605-imx8mp-usb-phy-improvement-v4-2-b2ddf2f3862c@nxp.com>
Date: Fri, 05 Jun 2026 11:30:05 +0000
Message-Id: <20260605113006.312FA1F00898@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIFBIWSBkZXZp
Y2UgaXMgbWFya2VkIGFzIHdha2V1cCBjYXBhYmxlLCBidXQgdGhlIGRyaXZlciBsYWNrcyB0aGUg
bmVjZXNzYXJ5IFBNIGNhbGxiYWNrcyBhbmQgaW50ZXJydXB0IGhhbmRsaW5nIHRvIGFjdHVhbGx5
IGltcGxlbWVudCB3YWtldXAgZnVuY3Rpb25hbGl0eSwgcmVuZGVyaW5nIHRoZSBleHBvc2VkIHN5
c2ZzIGVudHJ5IG5vbi1mdW5jdGlvbmFsLgotLQoKY29tbWl0IDg3MzZjNWQzZGMzMjMwNzBlMzE4
YzAyZTQwMWNjNWE1ZDZkZDA4M2QKQXV0aG9yOiBYdSBZYW5nIDx4dS55YW5nXzJAbnhwLmNvbT4K
CnBoeTogZnNsLWlteDhtcS11c2I6IHNldCB1c2IgcGh5IHRvIGJlIHdha2V1cCBjYXBhYmxlCgpU
aGlzIGNvbW1pdCBtYXJrcyB0aGUgaS5NWDhNUSBVU0IgUEhZIGRldmljZSBhcyB3YWtldXAgY2Fw
YWJsZS4gVGhpcwphZHZlcnRpc2VzIHRoZSBjYXBhYmlsaXR5IHRvIHRoZSBQTSBjb3JlIGFuZCBl
eHBvc2VzIGEgcG93ZXIvd2FrZXVwIHN5c2ZzCmVudHJ5IHRvIHVzZXJzcGFjZS4KCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS11c2IuYyBiL2RyaXZl
cnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS11c2IuYwo+IGluZGV4IDg4YjgwNGIyYzk4
MmIuLjU5MWRkZjM0NjA2MTggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3Bo
eS1mc2wtaW14OG1xLXVzYi5jCj4gKysrIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wt
aW14OG1xLXVzYi5jCj4gQEAgLTcyOCw2ICs3MjgsNyBAQCBzdGF0aWMgaW50IGlteDhtcV91c2Jf
cGh5X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAkJCQkJImZhaWxlZCB0
byBnZXQgdGNhXG4iKTsKPiAgCj4gIAlpbXg4bV9nZXRfcGh5X3R1bmluZ19kYXRhKGlteF9waHkp
Owo+ICsJZGV2aWNlX3NldF93YWtldXBfY2FwYWJsZShkZXYsIHRydWUpOwoKW1NldmVyaXR5OiBN
ZWRpdW1dCkRvZXMgdGhpcyByZWdyZXNzaW9uIGV4cG9zZSBhIG5vbi1mdW5jdGlvbmFsIHN5c2Zz
IG5vZGUgdG8gdXNlcnNwYWNlPwoKVGhlIGNvbW1pdCBtZXNzYWdlIG5vdGVzIHRoYXQgdGhlIFBI
WSBzdXBwb3J0cyByZW1vdGUgd2FrZXVwLCBidXQgdGhlCmRyaXZlciBpdHNlbGYgZG9lcyBub3Qg
YXBwZWFyIHRvIGltcGxlbWVudCBhbnkgUE0gY2FsbGJhY2tzIG9yIGludGVycnVwdApoYW5kbGlu
ZyB0byBhY3R1YWxseSBwcm9jZXNzIHRoZSB3YWtldXAgb3IgY2hlY2sgZGV2aWNlX21heV93YWtl
dXAoZGV2KS4KCkJlY2F1c2UgYWN0dWFsIFVTQiByZW1vdGUgd2FrZXVwIGlzIHR5cGljYWxseSBt
YW5hZ2VkIGJ5IHRoZSBwYXJlbnQgVVNCCmNvbnRyb2xsZXIgYW5kIGl0cyBnbHVlIGxheWVyLCB3
aGljaCBoYXZlIHRoZWlyIG93biBmdW5jdGlvbmFsIHdha2V1cApzeXNmcyBub2RlcywgY291bGQg
dGhpcyBjcmVhdGUgYSBkZWFkIHRvZ2dsZSBpbiBzeXNmcyB3aGVyZSB1c2Vyc3BhY2UgY2FuCmVu
YWJsZSB3YWtldXAgb24gdGhlIFBIWSBkZXZpY2Ugd2l0aG91dCBhbnkgYWN0dWFsIGVmZmVjdD8K
Cj4gIAo+ICAJcGh5X3Byb3ZpZGVyID0gZGV2bV9vZl9waHlfcHJvdmlkZXJfcmVnaXN0ZXIoZGV2
LCBvZl9waHlfc2ltcGxlX3hsYXRlKTsKPgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBz
Oi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYwNS1pbXg4bXAtdXNiLXBoeS1pbXByb3Zl
bWVudC12NC0wLWIyZGRmMmYzODYyY0BueHAuY29tP3BhcnQ9MgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
