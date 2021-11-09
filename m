Return-Path: <SRS0=gA2j=P4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 261F9C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  9 Nov 2021 10:11:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ED1FD61167
	for <linux-phy@archiver.kernel.org>; Tue,  9 Nov 2021 10:11:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org ED1FD61167
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4oIHZfETgimvMyVUrg66hLCI9v+fLuQemaGQOoIGG3k=; b=YtSYuBPr2FZHpo
	NPlfFppVzn0G66m8XvBUu33VAsPzaS0l9loX9iyhiuhhHa2RNZTUsW+fIhfRkO4dMTt/3ZH0+0Fds
	S20yYuRJQcNg7jSG1AhH0lHdER6O/Z08UCJt1pIU6Ut9IcpV8rnnCW6PwbTDK1fBG495PfrZKAmgk
	pIeuDWssISRIlnp1gcWZ7LMS29dQrn3JPsxRXlzieuyv44grXWTkWRtUZkTns9kl+C1xSroBaEzlo
	UPnVql+4Yg05koc3QT/8RLs4nQnq5LU6LJEO8TUixfzSQa6bsRSitSQyzDiPXmVWiWl7Bdq6aM3ky
	eEaBvGRTy+h7hDzwb5sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkO6U-001RQq-SB; Tue, 09 Nov 2021 10:11:46 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkO4E-001QWY-2x
 for linux-phy@lists.infradead.org; Tue, 09 Nov 2021 10:09:27 +0000
Received: (Authenticated sender: miquel.raynal@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id CB3961BF212;
 Tue,  9 Nov 2021 10:09:21 +0000 (UTC)
Date: Tue, 9 Nov 2021 11:09:20 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, Kishon
 Vijay Abraham I <kishon@ti.com>, pali@kernel.org
Subject: Re: [PATCH phy 2/6] phy: marvell: phy-mvebu-a3700-comphy: Add
 native kernel implementation
Message-ID: <20211109110920.6d172768@xps13>
In-Reply-To: <20211028184242.22105-3-kabel@kernel.org>
References: <20211028184242.22105-1-kabel@kernel.org>
 <20211028184242.22105-3-kabel@kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.7 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211109_020926_314699_6FC75848 
X-CRM114-Status: GOOD (  16.73  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SGkgTWFyZWssCgprYWJlbEBrZXJuZWwub3JnIHdyb3RlIG9uIFRodSwgMjggT2N0IDIwMjEgMjA6
NDI6MzggKzAyMDA6Cgo+IEZyb206IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+Cj4gCj4g
UmVtb3ZlIG9sZCBSUEMgaW1wbGVtZW50YXRpb24gYW5kIGFkZCBhIG5ldyBuYXRpdmUga2VybmVs
IGltcGxlbWVudGF0aW9uLgo+IAo+IFRoZSBvbGQgaW1wbGVtZW50YXRpb24gdXNlcyBBUk0gU01D
IEFQSSB0byBpc3N1ZSBSUEMgY2FsbHMgdG8gQVJNIFRydXN0ZWQKPiBGaXJtd2FyZSB3aGljaCBw
cm92aWRlcyByZWFsIGltcGxlbWVudGF0aW9uIG9mIFBIWSBjb25maWd1cmF0aW9uLgo+IAo+IEJ1
dCBvbGRlciB2ZXJzaW9ucyBvZiBBUk0gVHJ1c3RlZCBGaXJtd2FyZSBkbyBub3QgcHJvdmlkZSB0
aGlzIFBZCj4gY29uZmlndXJhdGlvbiBmdW5jdGlvbmFsaXR5LCBzaW1wbHkgcmV0dXJuaW5nOiBv
cGVyYXRpb24gbm90IHN1cHBvcnRlZDsgb3IKPiB3b3JzZSwgc29tZSB2ZXJzaW9ucyBwcm92aWRl
IHRoZSBjb25maWd1cmF0aW9uIGZ1bmN0aW9uYWxpdHkgaW5jb3JyZWN0bHkuCj4gCj4gRm9yIGV4
YW1wbGUgdGhlIGZpcm13YXJlIHNoaXBwZWQgaW4gRVNQUkVTU09iaW4gYm9hcmQgaGFzIHRoaXMg
b2xkZXIKPiB2ZXJzaW9uIG9mIEFSTSBUcnVzdGVkIEZpcm13YXJlIGFuZCB0aGVyZWZvcmUgU0FU
QSwgVVNCIDMuMCBhbmQgUENJZQo+IGZ1bmN0aW9uYWxpdHkgZG8gbm90IHdvcmsgd2l0aCBuZXdl
ciB2ZXJzaW9ucyBvZiBMaW51eCBrZXJuZWwuCj4gCj4gRHVlIHRvIHRoZSBhYm92ZSByZWFzb25z
LCB0aGUgZm9sbG93aW5nIGNvbW1pdHMgd2VyZSBpbnRyb2R1Y2VkIGludG8gTGludXgsCj4gdG8g
d29ya2Fyb3VuZCB0aGVzZSBpc3N1ZXMgYnkgaWdub3JpbmcgLUVPUE5PVFNVUFAgZXJyb3IgY29k
ZSBmcm9tCj4gcGh5LW12ZWJ1LWEzNzAwLWNvbXBoeSBkcml2ZXIgZnVuY3Rpb24gcGh5X3Bvd2Vy
X29uKCk6Cj4gCj4gY29tbWl0IDQ1YWVmZTNkMjI1MSAoImF0YTogYWhjaTogbXZlYnU6IE1ha2Ug
U0FUQSBQSFkgb3B0aW9uYWwgZm9yIEFybWFkYQo+IDM3MjAiKQo+IGNvbW1pdCAzMjQxOTI5YjY3
ZDIgKCJ1c2I6IGhvc3Q6IHhoY2k6IG12ZWJ1OiBtYWtlIFVTQiAzLjAgUEhZIG9wdGlvbmFsIGZv
cgo+IEFybWFkYSAzNzIwIikKPiBjb21taXQgYjBjNmFlMGY4OTQ4ICgiUENJOiBhYXJkdmFyazog
Rml4IGluaXRpYWxpemF0aW9uIHdpdGggb2xkIE1hcnZlbGwncwo+IEFybSBUcnVzdGVkIEZpcm13
YXJlIikKPiAKPiBSZXBsYWNlIHRoaXMgUlBDIGltcGxlbWVudGF0aW9uIHdpdGggcHJvcGVyIG5h
dGl2ZSBrZXJuZWwgaW1wbGVtZW50YXRpb24sCj4gd2hpY2ggaXMgaW5kZXBlbmRlbnQgb24gdGhl
IGZpcm13YXJlLiBOZXZlciByZXR1cm4gLUVPUE5PVFNVUFAgZm9yIHByb3Blcgo+IGFyZ3VtZW50
cy4KPiAKPiBUaGlzIHNob3VsZCBzb2x2ZSBtdWx0aXBsZSBpc3N1ZXMgd2l0aCByZWFsLXdvcmxk
IGJvYXJkcywgd2hlcmUgaXQgaXMgbm90Cj4gcG9zc2libGUgb3IgcmVhbGx5IGluY29udmVuaWVu
dCB0byBjaGFuZ2UgdGhlIGZpcm13YXJlLiBMZXQncyBlbGltaW5hdGUKPiB0aGVzZSBpc3N1ZXMu
Cj4gCj4gVGhpcyBpbXBsZW1lbnRhdGlvbiBpcyBwb3J0ZWQgZGlyZWN0bHkgZnJvbSBBcm1hZGEg
MzcyMCBjb21waHkgZHJpdmVyIGZvdW5kCj4gaW4gbmV3ZXN0IHZlcnNpb24gb2YgQVJNIFRydXN0
ZWQgRmlybXdhcmUgc291cmNlIGNvZGUuCgpJIHRoaW5rIHdlIHNob3VsZCBub3Qgb3B0IGZvciBh
IHN0YXR1cyBxdW8gYW5kIGxldCBicm9rZW4gdXNlcnMgb3V0CnRoZXJlLiBJdCBpcyB0cnVlIHRo
YXQgcmVmbGFzaGluZyB0aGUgZmlybXdhcmUgY2FuIGJlIGNoYWxsZW5naW5nIGluCnNvbWUgc2l0
dWF0aW9ucywgc28gbGV0J3MganVtcCAzIHllYXJzIGJhY2sgYW5kIHJlLWludGVncmF0ZSB0aGF0
IGNvZGUKaW4gdGhlIGtlcm5lbC4KCkFja2VkLWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5
bmFsQGJvb3RsaW4uY29tPgoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBQYWxpIFJvaMOhciA8cGFsaUBr
ZXJuZWwub3JnPgo+IFNpZ25lZC1vZmYtYnk6IE1hcmVrIEJlaMO6biA8a2FiZWxAa2VybmVsLm9y
Zz4KPiAtLS0KClRoYW5rcywKTWlxdcOobAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
