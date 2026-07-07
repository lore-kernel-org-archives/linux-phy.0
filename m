Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FF5EC43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 08:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dbuiOsawMmtghQwdh/9rCnEXPmN+3x8KNRMFBiVqjNU=; b=JWhckzXioWdh9r
	b1FyxQT33bbLRFQtGABPJEFLHEmsIGxqrYhL9Kh1NsBudA5i4A8qZv/as/0LjhhT+KVTep+y8kwlx
	D8LWc1SjMm5nVlmW6V5bT+B351y0FsRSl5Vt+QOzEnxGYQtUTLStvqk9C5SqSMWouq83Kzf5B3YYg
	Pi5Z5ak/RI8PfQQy4ki8d3cWdHIzxkkHDSaaDjt43oZn1B2hk18rssqaTxjUudo85HhXDHA7UW2iI
	5HTxtQ5MuMgPqTfsG012uiimKud+pfy9nzPw9S7mlSovQl6NUjDtnR21Bh7lGkdknaY5lYPxvJR8e
	V93C2MXqUe5MxoyS8bMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh1YA-0000000EXlC-0PS9;
	Tue, 07 Jul 2026 08:53:06 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh1Y9-0000000EXl2-05UR
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 08:53:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 32C07412E5;
	Tue,  7 Jul 2026 08:53:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BDB221F000E9;
	Tue,  7 Jul 2026 08:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783414383;
	bh=ipuz3Jw5batyDWD5V4hNUdicDLJV/Kwnl0jbrJYm3ok=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=oL+0BvEJ4AXihKqAT/X9NL8mvoYakAxNAPSiQobOglgjeHl5ncMfXckLI1ZiJJpVL
	 SSFD19aC3lxKefev0EhG9CahwINlavQM+5Syq8qJ2ML/Ek8o3ygIxqYaYR0TmzL90m
	 8WvGTAzGziJhSyXi7ShkqfbAqMoafKh+GQmMqBMdarTax90E8F36WE8UvkBlSqiyoP
	 bx1BoWxn2npbJ2YkBJ4rp1seUN+JpEUjnsO5nya61cJeZpq1KdWfCVEsONh/dtADyi
	 T1ZmSVDoqt+QQ+d1+bM3Xu7pQ+319MQ9jHynMxzKb43QQlIXUq4aWnPWCWjtLOfyfO
	 0H9n8gUEmpPpg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 01/11] spmi: Fix potential use-after-free by
 grabbing of_node reference
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com, neil.armstrong@linaro.org, vkoul@kernel.org
In-Reply-To: <20260707083730.33977-2-angelogioacchino.delregno@collabora.com>
References: <20260707083730.33977-1-angelogioacchino.delregno@collabora.com>
 <20260707083730.33977-2-angelogioacchino.delregno@collabora.com>
Date: Tue, 07 Jul 2026 08:53:02 +0000
Message-Id: <20260707085302.BDB221F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpOZXcgaXNzdWVzOgotIFtIaWdoXSBQ
cmVtYXR1cmUgcmVsZWFzZSBvZiB0aGUgT0Ygbm9kZSByZWZlcmVuY2UgaW4gYHNwbWlfZGV2aWNl
X3JlbW92ZSgpYCBjYXVzZXMgYSB1c2UtYWZ0ZXItZnJlZSBkdXJpbmcgZGV2aWNlIHVucmVnaXN0
cmF0aW9uLgoKUHJlLWV4aXN0aW5nIGlzc3VlczoKLSBbSGlnaF0gSWYgYGlkYV9hbGxvYygpYCBm
YWlscyBpbiBgc3BtaV9jb250cm9sbGVyX2FsbG9jKClgLCB0aGUgZXJyb3IgcGF0aCBlcnJvbmVv
dXNseSBmcmVlcyBJRCAwLgotLQoKLS0tIFBhdGNoIFsxXTogW1BBVENIIHYxMCAwMS8xMV0gc3Bt
aTogRml4IHBvdGVudGlhbCB1c2UtYWZ0ZXItZnJlZSBieSBncmFiYmluZyBvZl9ub2RlIHJlZmVy
ZW5jZSAtLS0KY29tbWl0IDMyYjRlMDU0NWU2NmQ4MWEyMTkxZWM0OGVhMGNiOWZjMWUwMjZiMWMK
QXV0aG9yOiBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxy
ZWdub0Bjb2xsYWJvcmEuY29tPgoKc3BtaTogRml4IHBvdGVudGlhbCB1c2UtYWZ0ZXItZnJlZSBi
eSBncmFiYmluZyBvZl9ub2RlIHJlZmVyZW5jZQoKVGhpcyBwYXRjaCBpbmNyZWFzZXMgdGhlIG9m
X25vZGUgcmVmY291bnQgd2hlbiBhc3NpZ25pbmcgaW4Kb2Zfc3BtaV9yZWdpc3Rlcl9kZXZpY2Vz
KCkgYW5kIHJlbGVhc2VzIGl0IGluIHNwbWlfZGV2aWNlX3JlbW92ZSgpIHRvIGZpeCBhCnBvdGVu
dGlhbCB1c2UtYWZ0ZXItZnJlZSBkdXJpbmcgZHluYW1pYyBvdmVybGF5IHVubG9hZGluZy4KCkxp
bms6IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYwODEwMDk0OS4zNjMwOS0x
LWFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT9wYXJ0PTIKCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvc3BtaS9zcG1pLmMgYi9kcml2ZXJzL3NwbWkvc3BtaS5jCj4gaW5kZXgg
NTdiN2MwY2I0MjQwNy4uNmU3MDFhZmY2MDQ1NCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3NwbWkv
c3BtaS5jCj4gKysrIGIvZHJpdmVycy9zcG1pL3NwbWkuYwo+IEBAIC04Niw2ICs4Niw5IEBAIEVY
UE9SVF9TWU1CT0xfR1BMKHNwbWlfZGV2aWNlX2FkZCk7Cj4gICAqLwo+ICB2b2lkIHNwbWlfZGV2
aWNlX3JlbW92ZShzdHJ1Y3Qgc3BtaV9kZXZpY2UgKnNkZXYpCj4gIHsKPiArCWlmIChJU19FTkFC
TEVEKENPTkZJR19PRikpCj4gKwkJb2Zfbm9kZV9wdXQoc2Rldi0+ZGV2Lm9mX25vZGUpOwo+ICsK
PiAgCWRldmljZV91bnJlZ2lzdGVyKCZzZGV2LT5kZXYpOwo+ICB9CgpbU2V2ZXJpdHk6IEhpZ2hd
CkNvdWxkIHRoaXMgcHJlbWF0dXJlbHkgcmVsZWFzZSB0aGUgT0Ygbm9kZSByZWZlcmVuY2U/CgpC
eSBkcm9wcGluZyB0aGUgcmVmZXJlbmNlIGJlZm9yZSBkZXZpY2VfdW5yZWdpc3RlcigpIGNvbXBs
ZXRlcywgdGhpcyBzZWVtcyB0bwpyaXNrIGEgdXNlLWFmdGVyLWZyZWUuIER1cmluZyBkZXZpY2Vf
dW5yZWdpc3RlcigpLCBkZXZpY2VfZGVsKCkgaXMgY2FsbGVkIGFuZAp0aGUgZHJpdmVyIGNvcmUg
ZW1pdHMgYSBLT0JKX1JFTU9WRSB1ZXZlbnQuIFRoaXMgdHJpZ2dlcnMgdGhlIGJ1cyBjYWxsYmFj
awpzcG1pX2Rydl91ZXZlbnQoKSwgd2hpY2ggY2FsbHMgb2ZfZGV2aWNlX3VldmVudF9tb2RhbGlh
cygpIHdoZXJlIGl0IGRpcmVjdGx5CmRlcmVmZXJlbmNlcyB0aGUgZnJlZWQgZGV2LT5vZl9ub2Rl
IHRvIHJlYWQgdGhlIGNvbXBhdGlibGUgc3RyaW5nLgoKV291bGQgaXQgYmUgYmV0dGVyIHRvIGRy
b3AgdGhlIE9GIG5vZGUgcmVmZXJlbmNlIGluIHNwbWlfZGV2X3JlbGVhc2UoKSBzbyBpdAppcyBi
b3VuZCB0byB0aGUgZGV2aWNlJ3MgbGlmZXRpbWU/IChJZiBtb3ZlZCB0aGVyZSwgdGhlIG1hbnVh
bCBvZl9ub2RlX3B1dCgpCmluIHRoZSBzcG1pX2RldmljZV9hZGQoKSBlcnJvciBwYXRoIG1pZ2h0
IG5lZWQgdG8gYmUgcmVtb3ZlZCB0byBwcmV2ZW50IGEKZG91YmxlLWZyZWUpLgoKWyAuLi4gXQoK
W1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzbid0IGEgYnVnIGludHJvZHVjZWQgYnkgdGhpcyBwYXRj
aCwgYnV0IEkgbm90aWNlZCBhIHBvdGVudGlhbCBwcm9ibGVtCmluIHRoZSBlcnJvciBoYW5kbGlu
ZyBmb3Igc3BtaV9jb250cm9sbGVyX2FsbG9jKCkuCgpkcml2ZXJzL3NwbWkvc3BtaS5jOnNwbWlf
Y29udHJvbGxlcl9hbGxvYygpIHsKICAgIC4uLgoJY3RybCA9IGt6YWxsb2NfZmxleCgqY3RybCwg
cHJpdiwgc2l6ZSk7CiAgICAuLi4KCWlkID0gaWRhX2FsbG9jKCZjdHJsX2lkYSwgR0ZQX0tFUk5F
TCk7CglpZiAoaWQgPCAwKSB7CgkJZGV2X2VycihwYXJlbnQsCgkJCSJ1bmFibGUgdG8gYWxsb2Nh
dGUgU1BNSSBjb250cm9sbGVyIGlkZW50aWZpZXIuXG4iKTsKCQlzcG1pX2NvbnRyb2xsZXJfcHV0
KGN0cmwpOwoJCXJldHVybiBFUlJfUFRSKGlkKTsKCX0KICAgIC4uLgp9CgpJZiBpZGFfYWxsb2Mo
KSBmYWlscywgd291bGRuJ3QgdGhpcyBlcnJvciBwYXRoIGluYWR2ZXJ0ZW50bHkgZnJlZSBJRCAw
PwoKU2luY2Uga3phbGxvY19mbGV4KCkgemVyby1pbml0aWFsaXplcyBjdHJsLT5uciwgYW4gaWRh
X2FsbG9jKCkgZmFpbHVyZSB3aWxsCmNhbGwgc3BtaV9jb250cm9sbGVyX3B1dChjdHJsKSB3aGls
ZSBjdHJsLT5uciBpcyBzdGlsbCAwLiBUaGlzIHRyaWdnZXJzIHRoZQpzcG1pX2N0cmxfcmVsZWFz
ZSgpIGNhbGxiYWNrOgoKZHJpdmVycy9zcG1pL3NwbWkuYzpzcG1pX2N0cmxfcmVsZWFzZSgpIHsK
ICAgIC4uLgoJaWRhX2ZyZWUoJmN0cmxfaWRhLCBjdHJsLT5ucik7CglrZnJlZShjdHJsKTsKfQoK
QmVjYXVzZSBpdCB1bmNvbmRpdGlvbmFsbHkgZnJlZXMgY3RybC0+bnIsIElEIDAgaXMgcmVsZWFz
ZWQuIElmIElEIDAgd2FzCmFscmVhZHkgYXNzaWduZWQgdG8gYW5vdGhlciBTUE1JIGNvbnRyb2xs
ZXIsIHRoaXMgY291bGQgY2F1c2UgaXRzIElEIHRvIGJlCmVycm9uZW91c2x5IG1hcmtlZCBhcyBh
dmFpbGFibGUsIHBvdGVudGlhbGx5IGxlYWRpbmcgdG8gYSBzeXNmcyBuYW1pbmcKY29sbGlzaW9u
ICgnc3BtaS0wJykgZHVyaW5nIHRoZSBuZXh0IGNvbnRyb2xsZXIgYWxsb2NhdGlvbi4KCi0tIApT
YXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3
MDcwODM3MzAuMzM5NzctMS1hbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20/
cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
