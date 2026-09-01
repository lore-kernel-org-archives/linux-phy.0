Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ABBAC624D3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 16:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GbOISSbA7GEBrlz2HXhRwc1/VvSDThyt60DXR3i6JMk=; b=CPR3GY22xb1pcC
	9Pz6hWMWCQ4w9ulx2FVz3CWVVKBxIfaInocBjHLq23u5Tlhq/vY9Cv+hQtznddkmKs3lzVyJWCJhj
	SEBL1ZY6UpDJDElTkVIInVEeceMYaV61P1j52wSdJtEXCBT4fGh868pYDN0QSedfExf4Prws25VJg
	uVvLcchkFlr8TqHIJOHK0RBfetAIFbKewxsJNa77LDLuBUmYHQLMyXGvSAoV0LyDzkaxjzDvOBswN
	VvkWIZj0uHAAKKitTG6r9uBWZV0SIy9GW0MZd29SDPnUiiI4A8yOVr5knOcK4MDPui5c2boKDxCUQ
	rlEYXW5cQ5AYTxhxVtOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1RK0-0000000CetT-44sJ;
	Tue, 01 Sep 2026 16:26:52 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1RJz-0000000Cesv-02uI
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 16:26:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8F64840BDA;
	Tue,  1 Sep 2026 16:26:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5B6D1F000E9;
	Tue,  1 Sep 2026 16:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788280010;
	bh=NVCcuS1Pbbtguh8VUMzbatetxCy9mJfpPGOgAUSyILU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SA7rYR8LHLfmH2XL38prYerkgTaI3USKMEzKCDKkQJ/XHEmTANnpxpxEYIzO0xTf3
	 LBNN4bnHGVA4Yq+K3BN+5WE1sTO6qaLLvZvuUJ646vLNUr15PwwNsj4qghbb/JhElI
	 Z3FP3IZucbZhN62JzR/LAoJ+RZbxJVn4FBfvMONeB5XSI42K1H8l0YdcLScTmtedO4
	 /ex1ndktdXkxd1p7p9y3iwoSNR0E65nJC6ogd6NrgnQxm9+2a66aTOBTdI9kLpf4yP
	 6b39Tj0ijp18Cxb9jk8u8KozbDs9QAgf+02v87bu4BDi2FYnsQtA/1fvaIn7B1CqUY
	 VyabUpqeuhpag==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 22/24] scsi: ufs: mediatek: Remove ret local from
 link_startup_notify
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, devicetree@vger.kernel.org
In-Reply-To: <20260901-mt8196-ufs-v11-22-dbd007704490@collabora.com>
References: <20260901-mt8196-ufs-v11-0-dbd007704490@collabora.com>
 <20260901-mt8196-ufs-v11-22-dbd007704490@collabora.com>
Date: Tue, 01 Sep 2026 16:26:49 +0000
Message-Id: <20260901162649.E5B6D1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBUaGUgcmV0dXJuIHZhbHVlIG9mIHVmc2hjZF9kbWVfc2V0KCkgaXMgb3ZlcndyaXR0
ZW4gb24gTVQ2OTg5IHBsYXRmb3JtcyB3aXRob3V0IGJlaW5nIGNoZWNrZWQsIGxvc2luZyB0aGUg
ZXJyb3Igc3RhdGUuCi0gW0hpZ2hdIFRoZSByZXR1cm4gdmFsdWUgb2YgdWZzX210a19hdXRvX2hp
YmVybjhfZGlzYWJsZSgpIGlzIGNvbXBsZXRlbHkgaWdub3JlZCBpbiB1ZnNfbXRrX3B3cl9jaGFu
Z2Vfbm90aWZ5KCkuCi0tCgpjb21taXQgODMyOWFjNzI2ZGU1OGQzYWEyNDUzZWIwZWQzMTllN2Zi
YmZiMmE2ZApBdXRob3I6IE5pY29sYXMgRnJhdHRhcm9saSA8bmljb2xhcy5mcmF0dGFyb2xpQGNv
bGxhYm9yYS5jb20+CgpzY3NpOiB1ZnM6IG1lZGlhdGVrOiBSZW1vdmUgcmV0IGxvY2FsIGZyb20g
bGlua19zdGFydHVwX25vdGlmeQoKVGhpcyBjb21taXQgcmVtb3ZlcyB0aGUgdW51c2VkIGxvY2Fs
IHJldCB2YXJpYWJsZSBmcm9tCnVmc19tdGtfbGlua19zdGFydHVwX25vdGlmeS4gSXQgYWxzbyBy
ZWZhY3RvcnMgdGhlIGZ1bmN0aW9uIHRvIHJldHVybgpkaXJlY3RseSBmcm9tIHRoZSBzd2l0Y2gg
c3RhdGVtZW50LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsu
YyBiL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMKPiBpbmRleCA0NzgyZmRmNTQ4NjZi
Li5iY2RlNThlM2FlZTg2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlh
dGVrLmMKPiArKysgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jCj4gQEAgLTE1NDMs
MjEgKzE1NDMsMTUgQEAgc3RhdGljIHZvaWQgdWZzX210a19wb3N0X2xpbmsoc3RydWN0IHVmc19o
YmEgKmhiYSkKPiAgc3RhdGljIGludCB1ZnNfbXRrX2xpbmtfc3RhcnR1cF9ub3RpZnkoc3RydWN0
IHVmc19oYmEgKmhiYSwKPiAgCQkJCSAgICAgICBlbnVtIHVmc19ub3RpZnlfY2hhbmdlX3N0YXR1
cyBzdGFnZSkKPiAgewo+IC0JaW50IHJldCA9IDA7Cj4gLQo+ICAJc3dpdGNoIChzdGFnZSkgewo+
ICAJY2FzZSBQUkVfQ0hBTkdFOgo+IC0JCXJldCA9IHVmc19tdGtfcHJlX2xpbmsoaGJhKTsKPiAt
CQlicmVhazsKPiArCQlyZXR1cm4gdWZzX210a19wcmVfbGluayhoYmEpOwoKW1NldmVyaXR5OiBI
aWdoXQpUaGlzIGlzbid0IGEgYnVnIGludHJvZHVjZWQgYnkgdGhpcyBwYXRjaCwgYnV0IGxvb2tp
bmcgYXQgdWZzX210a19wcmVfbGluaygpCndoaWNoIGlzIGNhbGxlZCBoZXJlOgoKZHJpdmVycy91
ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYzp1ZnNfbXRrX3ByZV9saW5rKCkgewoJLi4uCglyZXQgPSB1
ZnNoY2RfZG1lX3NldChoYmEsIFVJQ19BUkdfTUlCKFZTX1NBVkVQT1dFUkNPTlRST0wpLCB0bXAp
OwoKCS8qIEVuYWJsZSB0aGUgMTE0NCBmdW5jdGlvbnMgc2V0dGluZyAqLwoJaWYgKGhvc3QtPmlw
X3ZlciA9PSBJUF9WRVJfTVQ2OTg5KSB7CgkJcmV0ID0gdWZzaGNkX2RtZV9nZXQoaGJhLCBVSUNf
QVJHX01JQihWU19ERUJVR09NQyksICZ0bXApOwoJLi4uCn0KCkRvZXMgdGhpcyBjb2RlIHVuY29u
ZGl0aW9uYWxseSBvdmVyd3JpdGUgdGhlIHJldHVybiB2YWx1ZSBvZiB1ZnNoY2RfZG1lX3NldCgp
CndoZW4gdGhlIElQIHZlcnNpb24gbWF0Y2hlcyBNVDY5ODkgd2l0aG91dCBiZWluZyBjaGVja2Vk
PwoKSWYgdWZzaGNkX2RtZV9zZXQoKSBmYWlscyB3aGlsZSBkaXNhYmxpbmcgZGVlcCBzdGFsbCwg
dGhlIGZhaWx1cmUgYXBwZWFycyB0bwpiZSBzaWxlbnRseSBpZ25vcmVkIG9uIHRoZXNlIHBsYXRm
b3Jtcy4KCkxlYXZpbmcgZGVlcCBzdGFsbCBpbmFwcHJvcHJpYXRlbHkgY29uZmlndXJlZCBtaWdo
dCBsZWFkIHRvIFVGUyBidXMgbG9ja3VwcwphbmQgY29tbWFuZCB0aW1lb3V0cy4KCj4gIAljYXNl
IFBPU1RfQ0hBTkdFOgo+ICAJCXVmc19tdGtfcG9zdF9saW5rKGhiYSk7Cj4gLQkJYnJlYWs7Cj4g
LQlkZWZhdWx0Ogo+IC0JCXJldCA9IC1FSU5WQUw7Cj4gLQkJYnJlYWs7Cj4gKwkJcmV0dXJuIDA7
Cj4gIAl9Cj4gIAo+IC0JcmV0dXJuIHJldDsKPiArCXJldHVybiAtRUlOVkFMOwo+ICB9CgpbIC4u
LiBdCgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMgYWxzbyBhIHByZS1leGlzdGluZyBpc3N1ZSBp
biB0aGlzIGZpbGUsIGJ1dCB3aGlsZSByZXZpZXdpbmcgdGhlIG5vdGlmeQpmdW5jdGlvbnMsIEkg
bm90aWNlZCB0aGlzIGluIHVmc19tdGtfcHdyX2NoYW5nZV9ub3RpZnkoKToKCmRyaXZlcnMvdWZz
L2hvc3QvdWZzLW1lZGlhdGVrLmM6dWZzX210a19wd3JfY2hhbmdlX25vdGlmeSgpIHsKCS4uLgoJ
Y2FzZSBQUkVfQ0hBTkdFOgoJCWlmICh1ZnNoY2RfaXNfYXV0b19oaWJlcm44X3N1cHBvcnRlZCho
YmEpKSB7CgkJCWhvc3QtPmFoaXQgPSB1ZnNoY2RfcmVhZGwoCgkJCQloYmEsIFJFR19BVVRPX0hJ
QkVSTkFURV9JRExFX1RJTUVSKTsKCQkJdWZzX210a19hdXRvX2hpYmVybjhfZGlzYWJsZShoYmEp
OwoJCX0KCQlyZXR1cm4gdWZzX210a19wcmVfcHdyX2NoYW5nZShoYmEsIGRldl9yZXFfcGFyYW1z
KTsKCS4uLgp9CgpJcyB0aGUgcmV0dXJuIHZhbHVlIG9mIHVmc19tdGtfYXV0b19oaWJlcm44X2Rp
c2FibGUoKSBpbnRlbnRpb25hbGx5IGlnbm9yZWQKaGVyZT8KCklmIGl0IGZhaWxzIGFuZCByZXR1
cm5zIGFuIGVycm9yIGxpa2UgLUVCVVNZLCB0aGUgY29kZSBwcm9jZWVkcyB0byBleGVjdXRlCnVm
c19tdGtfcHJlX3B3cl9jaGFuZ2UoKS4KCkV4ZWN1dGluZyBwb3dlciBtb2RlIGNoYW5nZXMgd2hp
bGUgdGhlIGxpbmsgaXMgc3R1Y2sgaW4gaGliZXJuOCBhbmQgZXJyb3IKcmVjb3ZlcnkgaXMgcGVu
ZGluZyBjb3VsZCByZXN1bHQgaW4gaGFyZHdhcmUgbG9ja3VwcyBhbmQgdW5yZXNwb25zaXZlbmVz
cyBpbgp0aGUgc3RvcmFnZSBzdWJzeXN0ZW0uCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0
cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTAxLW10ODE5Ni11ZnMtdjExLTAtZGJk
MDA3NzA0NDkwQGNvbGxhYm9yYS5jb20/cGFydD0yMgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
