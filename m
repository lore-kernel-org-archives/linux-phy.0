Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0E97C4452B
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 03:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BvGg9jp+Y1PSWnIugGH+J+mMAnfSY2rQ+JqgUZEp7Dc=; b=SpKgYUka1HoxLr
	CtCZDzPEGoGsTUg9HKV9iMxNeA5VJEomM3ie3RW6FhfI189UXaVxa++wyXUReHHymFVHMj2EqcX5n
	dHlFrnmsv0MPj3mi4pXL3hLNp3k4osyY7C2UjuyBRSziv289amvw6eNun6dEGWkSgGGCf7b8UuCFE
	luQHq70fytZktB0+Fvw3wMTbJDT/rF0vSD0c0OAwOSxRReEjWljoeiiL7j6QJ7Zfom7uM4uSVB2FW
	nMERte29ULb2O04QwbUKQWYKZyMsxOVkZ1J675dQ8H28SROXvE84coEGeN4WSsicO8GujJnHltMJX
	mTmZDAp32fK8Gm+Rpu/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmkEv-0000000DK0d-1MwN;
	Thu, 23 Jul 2026 03:36:53 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmkEt-0000000DK0X-43hG
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 03:36:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 02214600AB;
	Thu, 23 Jul 2026 03:36:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E0C51F000E9;
	Thu, 23 Jul 2026 03:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784777810;
	bh=VFBPegZkEaD1Uzy0TXtVoDQYnQHiEABl4IkfF89B91I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=iUrB6+TQwR81xEQ7TaQV4di91ssIAJxj0fnq8fNGoRHB8pn3nqRbCEZLGANfVIazA
	 roxiK0b3XNMxPlF4WIdXx0/WsXMJINISRjiPUnH4sn8MDaJPLCYrHphyNTj2eAKVo4
	 sOKqPb1n/MXL34tAvwswXRRDQ8lXkyGvfRnOplzQ7ljReTHre8O8D+rk4DmYvevf8J
	 myppSZ/uBw7cpHEkn2TYATacIsgACzkOIGn8m8NsD/Iumg6YG2RQAOrtA/LLL62fQq
	 xl7CtMWCDzQTMANn1ecjlIcE5Txkhc+KNp6qFzTrvV+/qStaPUtDo8c4yRWIPgGur5
	 jcMjMTBwXcxRw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: fsl-lynx-28g: propagate PCVT enable errors
To: kr494167@gmail.com
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com
In-Reply-To: <20260722033619.10647-1-kr494167@gmail.com>
References: <20260722033619.10647-1-kr494167@gmail.com>
Date: Thu, 23 Jul 2026 03:36:49 +0000
Message-Id: <20260723033650.5E0C51F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gSGFyZHdhcmUgYW5k
IHNvZnR3YXJlIHN0YXRlIGRlc3luY2hyb25pemF0aW9uIG9uIFBDVlQgZW5hYmxlIGZhaWx1cmUg
cHJldmVudHMgbW9kZSByZWNvdmVyeS4KLS0KCi0tLSBQYXRjaCBbMV06IFtQQVRDSF0gcGh5OiBm
c2wtbHlueC0yOGc6IHByb3BhZ2F0ZSBQQ1ZUIGVuYWJsZSBlcnJvcnMgLS0tCmNvbW1pdCA2MTkz
YTdhZGNiMThhMTgzYjk0NjJkYTkxOWQ0ODBmM2E2OTQ5NTYyCkF1dGhvcjogc3VyZW5kcmEgPGty
NDk0MTY3QGdtYWlsLmNvbT4KCnBoeTogZnNsLWx5bngtMjhnOiBwcm9wYWdhdGUgUENWVCBlbmFi
bGUgZXJyb3JzCgpUaGlzIGNvbW1pdCB1cGRhdGVzIGx5bnhfMjhnX3NldF9tb2RlKCkgdG8gY2hl
Y2sgdGhlIHJldHVybiB2YWx1ZSBvZgpseW54XzI4Z19sYW5lX2VuYWJsZV9wY3Z0KCkuIElmIGFu
IGVycm9yIG9jY3VycywgdGhlIGNvZGUgbm93IHByb3BhZ2F0ZXMKdGhlIGVycm9yIGFuZCBleGl0
cyBiZWZvcmUgdXBkYXRpbmcgdGhlIHNvZnR3YXJlIGxhbmUgbW9kZSB0cmFja2luZy4KCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWx5bngtMjhnLmMgYi9kcml2
ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1seW54LTI4Zy5jCj4gaW5kZXggMzhhZmNkMDgxYTJh
Ny4uMWZlNDA2YWRjODNjYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5
LWZzbC1seW54LTI4Zy5jCj4gKysrIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtbHlu
eC0yOGcuYwo+IEBAIC0xMDAzLDcgKzEwMDMsOSBAQCBzdGF0aWMgaW50IGx5bnhfMjhnX3NldF9t
b2RlKHN0cnVjdCBwaHkgKnBoeSwgZW51bSBwaHlfbW9kZSBtb2RlLCBpbnQgc3VibW9kZSkKPiAg
Cj4gIAlseW54XzI4Z19sYW5lX2NoYW5nZV9wcm90b19jb25mKGxhbmUsIGxhbmVfbW9kZSk7Cj4g
IAlseW54XzI4Z19sYW5lX3JlbWFwX3BsbChsYW5lLCBsYW5lX21vZGUpOwo+IC0JV0FSTl9PTihs
eW54XzI4Z19sYW5lX2VuYWJsZV9wY3Z0KGxhbmUsIGxhbmVfbW9kZSkpOwo+ICsJZXJyID0gbHlu
eF8yOGdfbGFuZV9lbmFibGVfcGN2dChsYW5lLCBsYW5lX21vZGUpOwo+ICsJaWYgKGVycikKPiAr
CQlnb3RvIG91dDsKCltTZXZlcml0eTogTWVkaXVtXQpEb2VzIHRoaXMgbmV3IGVycm9yIHBhdGgg
bGVhdmUgdGhlIHNvZnR3YXJlIGFuZCBoYXJkd2FyZSBzdGF0ZXMKZGVzeW5jaHJvbml6ZWQ/CgpQ
cmlvciB0byB0aGlzIHBvaW50LCB0aGUgaGFyZHdhcmUgaGFzIGFscmVhZHkgYmVlbiByZXByb2dy
YW1tZWQgdG8gdGhlCm5ldyBtb2RlIGJ5IGx5bnhfMjhnX2xhbmVfY2hhbmdlX3Byb3RvX2NvbmYo
KSBhbmQKbHlueF8yOGdfbGFuZV9yZW1hcF9wbGwoKS4gSWYgbHlueF8yOGdfbGFuZV9lbmFibGVf
cGN2dCgpIGZhaWxzIGFuZCB0YWtlcwp0aGUgZ290byBvdXQgcGF0aCwgbGFuZS0+bW9kZSByZW1h
aW5zIHNldCB0byB0aGUgb2xkIG1vZGUuCgpJZiBhIGNhbGxlciBsYXRlciBhdHRlbXB0cyB0byBy
ZWNvdmVyIGJ5IHNldHRpbmcgdGhlIFBIWSBiYWNrIHRvIHRoZSBvbGQKbW9kZSwgbHlueF8yOGdf
c2V0X21vZGUoKSB3aWxsIHNlZToKCiAgICBpZiAobGFuZV9tb2RlID09IGxhbmUtPm1vZGUpCiAg
ICAgICAgcmV0dXJuIDA7CgphbmQgc2hvcnQtY2lyY3VpdCwgcHJldmVudGluZyB0aGUgaGFyZHdh
cmUgZnJvbSBhY3R1YWxseSBiZWluZyByZXZlcnRlZC4KClNob3VsZCB0aGUgZXJyb3IgcGF0aCBl
aXRoZXIgcmV2ZXJ0IHRoZSBoYXJkd2FyZSBjaGFuZ2VzIG9yIHNldApsYW5lLT5tb2RlID0gTEFO
RV9NT0RFX1VOS05PV04gdG8gZW5zdXJlIHN1YnNlcXVlbnQgcmVjb3ZlcnkgYXR0ZW1wdHMgYnlw
YXNzCnRoZSBzaG9ydC1jaXJjdWl0IGNoZWNrPwoKPiAgCj4gIAlsYW5lLT5tb2RlID0gbGFuZV9t
b2RlOwo+CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3Bh
dGNoc2V0LzIwMjYwNzIyMDMzNjE5LjEwNjQ3LTEta3I0OTQxNjdAZ21haWwuY29tP3BhcnQ9MQoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
