Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96006C5B572
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 18:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RxWAKHSLBX4qtCD/wXTO79do1azwHFuxDhNycAyWLmg=; b=nUaqHQ2N+1UwPl
	MzUzFfbm4wwnOT3jptF95EOydlqbUkpnY6CR+dqcaRG96Pg7oE30q3cl0LVZmz6/cv9RYUFYCdeIA
	QL0iwJ8G70V7Lw/q6yVQ5519nf5caXigaqJmoQQXpuwp7ui9e4qyabWMNvhfllSWB9QW9L9zMm9+7
	+Rqu1N4W7jsRnv8ll2OS4U3A2zI9snZ/W/1GaRKQAImFT33Ui+qYJQKv2zwhcM4SVe8tZROvZG7ie
	aYGVVYNoiML9bIKGmFvV95O93ZpKFSrpM65ti3qQtezX5IjHmkdJEYgbt81NFyAi9F1pxBQE2GXxf
	SyBfew/mb2DLGMbVIG5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuDdT-0000000GnED-0VE6;
	Wed, 12 Aug 2026 18:25:07 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuDdR-0000000GnE7-3YM9
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 18:25:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3CAA3408BF;
	Wed, 12 Aug 2026 18:25:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D06C51F00A3E;
	Wed, 12 Aug 2026 18:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786559105;
	bh=inCYK+QCt0UWAjFEglrrSVWHisACtfuDvqJ0v7NwO1g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=B+qnEE/ZYZYZarJPVLav9gmivY4BpIWcIo0yXd+U9x9+9oOqFH8g2q4cPm0n74Eti
	 3dPUhCzPMnYAGnk9MB3ADOhkmHiyMjLt7DXi707mGAfovISYGcvzF1PTvQM/4z8o17
	 v78b87YPZpVJYvAnU67aAUn9ZS6et2Qeu97SMh4vLsZgWlQadibgM18StmvG/R118k
	 6ROESpLM1Q9RRGnjw4X1tYeVzMqVB8aBjifU7mAjxMTlsqoPTSGhvI/XB+FusBlfZG
	 ufN856dV3JFvmyEdfe0drsSEd/6ZwP3SyYSOyvViHQx8e/w/7W2AGmCJ3CArfawGC0
	 R9gXpTal3wppg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCHv2] phy: mediatek: tphy: simplify main allocation
To: "Rosen Penev" <rosenp@gmail.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com
In-Reply-To: <20260812181857.64544-1-rosenp@gmail.com>
References: <20260812181857.64544-1-rosenp@gmail.com>
Date: Wed, 12 Aug 2026 18:25:04 +0000
Message-Id: <20260812182504.D06C51F00A3E@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gTWVhbmluZ2Z1bCBj
b2RlIGFuZCBjb21taXQgbWVzc2FnZSBtaXNtYXRjaCByZWdhcmRpbmcgdGhlIHJlbW92YWwgb2Yg
YSBOVUxMIGNoZWNrLgotLQoKLS0tIFBhdGNoIFsxXTogW1BBVENIdjJdIHBoeTogbWVkaWF0ZWs6
IHRwaHk6IHNpbXBsaWZ5IG1haW4gYWxsb2NhdGlvbiAtLS0KY29tbWl0IDI5M2I1ZDQ3MjhiYThh
NTdkYzYyZmZjZjU1NzVmOTY2ZWVmMDRiYTgKQXV0aG9yOiBSb3NlbiBQZW5ldiA8cm9zZW5wQGdt
YWlsLmNvbT4KCnBoeTogbWVkaWF0ZWs6IHRwaHk6IHNpbXBsaWZ5IG1haW4gYWxsb2NhdGlvbgoK
VGhpcyBjb21taXQgc2ltcGxpZmllcyB0aGUgbWFpbiBhbGxvY2F0aW9uIGJ5IHJlcGxhY2luZyBh
IHNlcGFyYXRlIGt6YWxsb2MKYW5kIGtjYWxsb2Mgd2l0aCBhIHNpbmdsZSBremFsbG9jIHVzaW5n
IGEgZmxleGlibGUgYXJyYXkgbWVtYmVyLiBJdCBhbHNvCnNodWZmbGVzIGNvZGUgdG8gc2F0aXNm
eSBfX2NvdW50ZWRfYnkgcmVxdWlyZW1lbnRzLgoKPiBSZW1vdmVkIE5VTEwgY2hlY2sgZnJvbSBv
Zl9nZXRfbWF0Y2hfZGF0YSBhcyBpdCdzIG5ldmVyIE5VTEwgcGVyIHRoZQo+IGRldmljZSB0YWJs
ZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBSb3NlbiBQZW5ldiA8cm9zZW5wQGdtYWlsLmNvbT4KPiAK
PiAtLS0KPiB2MjogYWRkIGJhY2sgTlVMTCBjaGVjawoKW1NldmVyaXR5OiBNZWRpdW1dClRoaXMg
aXNuJ3QgYSBidWcsIGJ1dCB0aGUgY29tbWl0IG1lc3NhZ2UgYm9keSBzdGF0ZXMgdGhlIE5VTEwg
Y2hlY2sgd2FzCnJlbW92ZWQsIHdoaWxlIHRoZSB2MiBub3RlcyBhbmQgdGhlIHBhdGNoIGl0c2Vs
ZiBzaG93IGl0IHdhcyByZXRhaW5lZC4gU2hvdWxkCnRoZSBjb21taXQgbWVzc2FnZSBiZSB1cGRh
dGVkIHRvIHJlbW92ZSB0aGlzIGxpbmUgc28gaXQgYWNjdXJhdGVseSByZWZsZWN0cwp0aGUgYXBw
bGllZCBjaGFuZ2VzPwoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10
ay10cGh5LmMgYi9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLXRwaHkuYwo+IGluZGV4IGFj
ZjUwNjUyOTUwNzIuLmU5YjllNjY3YjMxOTUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvbWVk
aWF0ZWsvcGh5LW10ay10cGh5LmMKPiArKysgYi9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRr
LXRwaHkuYwpbIC4uLiBdCj4gQEAgLTE1NzIsMjIgKzE1NzIsMTkgQEAgc3RhdGljIGludCBtdGtf
dHBoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQpbIC4uLiBdCj4gKwl0cGh5
LT5ucGh5cyA9IG5waHlzOwo+ICsJdHBoeS0+ZGV2ID0gZGV2Owo+ICAJdHBoeS0+cGRhdGEgPSBv
Zl9kZXZpY2VfZ2V0X21hdGNoX2RhdGEoZGV2KTsKPiAgCWlmICghdHBoeS0+cGRhdGEpCj4gIAkJ
cmV0dXJuIC1FSU5WQUw7Cj4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hp
a28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4MTIxODE4NTcuNjQ1NDQtMS1yb3NlbnBAZ21haWwuY29t
P3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
