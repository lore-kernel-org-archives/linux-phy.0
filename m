Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74198C43602
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 13:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V656Pu7wRgFcIG1oz+40s4C2Ze4wwhubrPjajsJF/Ho=; b=bPArDB+Kdt7rpx
	SeqS+TZB4FDqDuiEUXUewSOFPSZpkzMQ0VW9qoSInOfIYY1TfO8Xq/b1RlPgZA3R4lRlWoPcgAv3b
	tqHy952yFiuuVPOmbbsG8M/nW36CpBmgxN43MagsTYu5ieGEM7hX1y+xfI6lG2QHb9r70GNn0AtkA
	xagb+WauY7zxxrHKVtvmiSaqbdm2JUJ+2IX+nlLrmeeGLCn7oNM+S34tw4xC1IEU1gfOvt0RsYWBo
	DbeIq2oDC94/F7YdXjJhWC5nRLLqrq/MRuRGk2qBvn1NuKQmZjp6LFuRKeuvoTFcbw4PJb81mGZzQ
	SRkXrlz7C1aVtUOZYE+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weuen-000000027B8-0jkV;
	Wed, 01 Jul 2026 13:07:13 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weuem-000000027Az-0CjF
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 13:07:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B4FFE43DD7;
	Wed,  1 Jul 2026 13:07:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C83071F000E9;
	Wed,  1 Jul 2026 13:07:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782911231;
	bh=s13JqDASJEsHLe7U0vrNcTPlNBmxFIye296NKUa1xoI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mb7888WFK8KsqrAkU9bHEuxSJrAFxmghKNks6GW3CHK+4HrDuVGmnyY2eLi66r782
	 sOPCY7KgA2PZtZ6kHDQGAnRn2BTkkUapqWGEskpvTBrQ7iKoEhFUy7ZsaTvBLS+f3R
	 xdEwWuzfepEC5tXXcyA4W047P2BoxT4SYD/PMWbzyc40YooPwKZ5QB+pUnGT7uLt7g
	 QqgVPcQPc7QVvJNWV1gV5WM92tCSyw9MyuyV4VDLGkCzS2JHrIOXJHAbj8tAcj9W16
	 Chbl7xgN2/1aoeYYMcQ1eHIC7R5GQPa2hY2s7ivI19AA0vEv+i7q40PSrQQ3fNuDOl
	 rpoiFy4SCMecA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 11/12] phy: phy-mtk-dp: Add PHYD Lane EN register mask
 to SoC data
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260701122008.19509-12-angelogioacchino.delregno@collabora.com>
References: <20260701122008.19509-1-angelogioacchino.delregno@collabora.com>
 <20260701122008.19509-12-angelogioacchino.delregno@collabora.com>
Date: Wed, 01 Jul 2026 13:07:10 +0000
Message-Id: <20260701130710.C83071F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBtdGtfZHBfcGh5X2Rpc2FibGVfYWxsX2xhbmVzKCkgZXhlY3V0ZXMgdW5kZWZpbmVk
IGJlaGF2aW9yIGlmIGluaXRpYWxseSB6ZXJvLCBhbmQgaW5jb3JyZWN0bHkgY2xlYXJzIGxhbmVz
IGJ5IHNoaWZ0aW5nIHRoZSBsYW5lIGluZGV4IGluc3RlYWQgb2YgYSBiaXRtYXNrLgotLQoKY29t
bWl0IGQxN2VkZTRhYjRiMTE4OWUxMzNmYzhmOGU4NGM1OWFhZjJkMjU5MGUKQXV0aG9yOiBBbmdl
bG9HaW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJv
cmEuY29tPgoKcGh5OiBwaHktbXRrLWRwOiBBZGQgUEhZRCBMYW5lIEVOIHJlZ2lzdGVyIG1hc2sg
dG8gU29DIGRhdGEKClRoaXMgY29tbWl0IHByZXBhcmVzIGZvciBzdXBwb3J0aW5nIG5ld2VyIFNv
Q3MgYnkgbW92aW5nIHRoZSBQSFlEX1RYX0xOX0VOCnJlZ2lzdGVyIG1hc2sgaW50byB0aGUgU29D
LXNwZWNpZmljIGRhdGEgc3RydWN0dXJlLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvbWVk
aWF0ZWsvcGh5LW10ay1kcC5jIGIvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1kcC5jCj4g
aW5kZXggN2M4YzA0Nzg3Yjc4Yy4uZjA2N2FjZWYyMjJmNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L3BoeS9tZWRpYXRlay9waHktbXRrLWRwLmMKPiArKysgYi9kcml2ZXJzL3BoeS9tZWRpYXRlay9w
aHktbXRrLWRwLmMKClsgLi4uIF0KCj4gQEAgLTQ0Miw3ICs0NDYsNyBAQCBzdGF0aWMgaW50IG10
a19kcF9waHlfZGlzYWJsZV9hbGxfbGFuZXMoc3RydWN0IG10a19kcF9waHkgKmRwX3BoeSkKPiAg
CQlyZXR1cm4gcmV0Owo+ICAKPiAgCS8qIEdldCBtYXNrIG9mIGN1cnJlbnRseSBlbmFibGVkIGxh
bmUgKi8KPiAtCXZhbCA9IEZJRUxEX0dFVChQSFlEX1RYX0xOX0VOLCB2YWwpOwo+ICsJdmFsID0g
ZmllbGRfZ2V0KHBkYXRhLT5tYXNrX2RpZ190eF9sbiwgdmFsKTsKPiAgCj4gIAkvKiBEaXNhYmxl
IGFsbCBsYW5lcyAobmVlZHMgdG8gYmUgZG9uZSBvbmUgYnkgb25lLCBmcm9tIGxhc3QgdG8gZmly
c3QpICovCj4gIAlkbyB7Cj4gQEAgLTQ1MSw3ICs0NTUsNyBAQCBzdGF0aWMgaW50IG10a19kcF9w
aHlfZGlzYWJsZV9hbGxfbGFuZXMoc3RydWN0IG10a19kcF9waHkgKmRwX3BoeSkKPiAgCj4gIAkJ
cmV0ID0gcmVnbWFwX2NsZWFyX2JpdHMoZHBfcGh5LT5yZWdtYXAsCj4gIAkJCQkJcGRhdGEtPm9m
Zl9kaWdfZ2xiICsgcmVnc1tEUF9QSFlEX1RYX0NUTF8wXSwKPiAtCQkJCQlGSUVMRF9QUkVQKFBI
WURfVFhfTE5fRU4sIGxhbmVfbnVtKSk7Cj4gKwkJCQkJZmllbGRfcHJlcChwZGF0YS0+bWFza19k
aWdfdHhfbG4sIGxhbmVfbnVtKSk7CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMgYSBwcmUtZXhp
c3RpbmcgaXNzdWUsIGJ1dCBkb2VzIHRoaXMgbG9vcCBzYWZlbHkgaGFuZGxlIHRoZSBjYXNlCndo
ZXJlIHZhbCBpcyBpbml0aWFsbHkgMD8KClNpbmNlIHRoaXMgaXMgYSBkby13aGlsZSBsb29wLCBp
ZiBubyBsYW5lcyBhcmUgY3VycmVudGx5IGVuYWJsZWQsIGZscygwKQp3aWxsIGV2YWx1YXRlIHRv
IDAsIHdoaWNoIGxlYXZlcyBsYW5lX251bSBhcyAtMS4gVGhpcyB3b3VsZCB0aGVuIHJlc3VsdApp
biBhbiBvdXQtb2YtYm91bmRzIHNoaWZ0IGR1cmluZyB0aGUgQklUKGxhbmVfbnVtKSBjYWxjdWxh
dGlvbi4KCkFkZGl0aW9uYWxseSwgc2hvdWxkIGxhbmVfbnVtIGJlIHBhc3NlZCBpbnRvIGZpZWxk
X3ByZXAoKSBhcyBhIGJpdG1hc2sKKGUuZy4sIEJJVChsYW5lX251bSkpIHJhdGhlciB0aGFuIHRo
ZSByYXcgaW50ZWdlciBpbmRleD8gCgpQYXNzaW5nIHRoZSBpbnRlZ2VyIGluZGV4IGRpcmVjdGx5
IChsaWtlIDIgb3IgMykgaW5zdGVhZCBvZiBhIGJpdG1hc2sKYXBwZWFycyB0byBnZW5lcmF0ZSBh
biBpbmNvcnJlY3QgdmFsdWUsIHdoaWNoIGNvdWxkIGNhdXNlIHJlZ21hcF9jbGVhcl9iaXRzKCkK
dG8gY2xlYXIgdGhlIHdyb25nIGJpdHMgaW4gdGhlIHJlZ2lzdGVyIGFuZCBsZWF2ZSBsYW5lcyBp
bmNvcnJlY3RseSBwb3dlcmVkIG9uLgoKPiAgCQlpZiAocmV0KQo+ICAJCQlyZXR1cm4gcmV0Owo+
ICAJfSB3aGlsZSAodmFsKTsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hp
a28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MDExMjIwMDguMTk1MDktMS1hbmdlbG9naW9hY2NoaW5v
LmRlbHJlZ25vQGNvbGxhYm9yYS5jb20/cGFydD0xMQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
