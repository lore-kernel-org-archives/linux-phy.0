Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31898C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 09:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFvl2rjtNnqcmcthW0XoSIyAAsM2gapUcbBM7tvRQB0=; b=RrrUQ9YXoDh3bJ
	+uAhvCkrILVwhNWxjdnw4x9CISnda7bXZH/LUErBdCQ7nsHf9YZ/b/Bo2lznwFcEmcWMDzbt8Lrqt
	UOEhvczrOxUaybpBs0OWyujHtTsptRtQCLIUnyoOtNuCpAbjUW+wOAhMbNjG0Jr3/zjysnhnLyb1U
	K9vO5i5bWvnBZectkl51C8owSPwu0R3BA6vJzSD2dUz0a80OUQS2tN32pWXw0ETT8R+ryTF09VYPE
	qRRaxW7CyfcismKw7SrLsXzhkzAqTU+ASiLe3dEoOyxU6rioGtlX/MkHisev+bi0DYyFE7+9f4YjR
	JbwTXHwvqdN+6mf6w8/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh1i0-0000000EZBZ-37iv;
	Tue, 07 Jul 2026 09:03:16 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh1hz-0000000EZBT-1UJW
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 09:03:15 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8A2D841E60;
	Tue,  7 Jul 2026 09:03:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F8AD1F000E9;
	Tue,  7 Jul 2026 09:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783414994;
	bh=ICmL8npfbVbIYvQOQDMPOAZ+2Wnk4tqu6ySZn/1HS48=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BjB2ZNREa2yQdk66ehogaNkq/8G1T0SE5NxJB8uGYU9YeO7VYysOcui+OQ++hXFh/
	 evGsAGn/6S/DUamH01nioTmMxhU+X43bQtVEXI/lIOHoa3AbVw1dP/gY4zhsnShUwx
	 /8OyAtAURy3cWiK3KA7UJHuyr7ATJ3H3YGzhzKXQ/oO4G+9v6L2J9mPEFZ4Atry5cN
	 FICUaKLDyEOyYaVQK+xZzt40ICFpl6YFNC+BCM4T46zt65+RGusYQ4pix9YQ6fGJuS
	 JwL1q9MF39JhuDopHmVeGmXrWYbRR3ip4RGCCzuzfzHMExfg0bcxlXypaUo25lRQrS
	 zkWqllK5Y50rA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 10/11] iio: adc: qcom-spmi-iadc: Migrate to
 devm_spmi_subdevice_alloc_and_add()
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: olteanv@gmail.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org
In-Reply-To: <20260707083730.33977-11-angelogioacchino.delregno@collabora.com>
References: <20260707083730.33977-1-angelogioacchino.delregno@collabora.com>
 <20260707083730.33977-11-angelogioacchino.delregno@collabora.com>
Date: Tue, 07 Jul 2026 09:03:13 +0000
Message-Id: <20260707090314.2F8AD1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEJsaW5kIGNhc3Qgb2Yg
YGRldi0+cGFyZW50YCB0byBgc3RydWN0IHNwbWlfZGV2aWNlYCBieXBhc3NpbmcgYnVzIHR5cGUg
dmFsaWRhdGlvbiBjYW4gbGVhZCB0byBhIHR5cGUgY29uZnVzaW9uIHZ1bG5lcmFiaWxpdHkgYW5k
IGtlcm5lbCBwYW5pYy4KLS0KCi0tLSBQYXRjaCBbMTBdOiBbUEFUQ0ggdjEwIDEwLzExXSBpaW86
IGFkYzogcWNvbS1zcG1pLWlhZGM6IE1pZ3JhdGUgdG8gZGV2bV9zcG1pX3N1YmRldmljZV9hbGxv
Y19hbmRfYWRkKCkgLS0tCmNvbW1pdCBlMWVlZGIwNzIwMTQzMzFjMWU1MjgyMmViMzFlN2E5YWFl
YjNlODQ4CkF1dGhvcjogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hp
bm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KCmlpbzogYWRjOiBxY29tLXNwbWktaWFkYzogTWln
cmF0ZSB0byBkZXZtX3NwbWlfc3ViZGV2aWNlX2FsbG9jX2FuZF9hZGQoKQoKVGhpcyBjb21taXQg
Y2hhbmdlcyB0aGUgZHJpdmVyIHRvIHJlZ2lzdGVyIGEgbmV3IFNQTUkgc3ViLWRldmljZSBhbmQK
aW5pdGlhbGl6ZSBpdHMgb3duIHJlZ21hcCByYXRoZXIgdGhhbiB1c2luZyB0aGUgcGFyZW50IFNQ
TUkgZGV2aWNlJ3MKcmVnbWFwLiBUaGlzIGFsbG93cyB0aGUgcmVnbWFwIEFQSSB0byBoYW5kbGUg
dGhlIGJhc2UgYWRkcmVzcyBkaXJlY3RseS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaWlvL2Fk
Yy9xY29tLXNwbWktaWFkYy5jIGIvZHJpdmVycy9paW8vYWRjL3Fjb20tc3BtaS1pYWRjLmMKPiAt
LS0gYS9kcml2ZXJzL2lpby9hZGMvcWNvbS1zcG1pLWlhZGMuYwo+ICsrKyBiL2RyaXZlcnMvaWlv
L2FkYy9xY29tLXNwbWktaWFkYy5jClsgLi4uIF0KPiBAQCAtNTAyLDE4ICs1MTEsMjEgQEAgc3Rh
dGljIGludCBpYWRjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAlpYWRj
ID0gaWlvX3ByaXYoaW5kaW9fZGV2KTsKPiAgCWlhZGMtPmRldiA9IGRldjsKPiAgCj4gLQlpYWRj
LT5yZWdtYXAgPSBkZXZfZ2V0X3JlZ21hcChkZXYtPnBhcmVudCwgTlVMTCk7Cj4gLQlpZiAoIWlh
ZGMtPnJlZ21hcCkKPiAtCQlyZXR1cm4gLUVOT0RFVjsKPiArCXNwYXJlbnQgPSB0b19zcG1pX2Rl
dmljZShkZXYtPnBhcmVudCk7Cj4gKwlzdWJfc2RldiA9IGRldm1fc3BtaV9zdWJkZXZpY2VfYWxs
b2NfYW5kX2FkZChkZXYsIHNwYXJlbnQpOwoKW1NldmVyaXR5OiBIaWdoXQpDb3VsZCB0aGlzIGJs
aW5kIGNhc3QgdG8gc3RydWN0IHNwbWlfZGV2aWNlIGNhdXNlIGEga2VybmVsIHBhbmljIGlmIHRo
ZQpwYXJlbnQgZGV2aWNlIGlzbid0IGFjdHVhbGx5IG9uIHRoZSBTUE1JIGJ1cz8KCklmIGEgY3Vz
dG9taXplZCBkZXZpY2UgdHJlZSBvciBvdmVybGF5IGluc3RhbnRpYXRlcyB0aGlzIGRyaXZlciB1
bmRlciBhCm5vbi1TUE1JIHBhcmVudCBub2RlIChmb3IgZXhhbXBsZSwgZGlyZWN0bHkgdW5kZXIg
c2ltcGxlLWJ1cyksIGRldi0+cGFyZW50CndpbGwgbm90IGJlIGEgdmFsaWQgc3BtaV9kZXZpY2Uu
IFdoZW4gc3ViZGV2aWNlIGFsbG9jYXRpb24gYWNjZXNzZXMKc3BhcmVudC0+Y3RybCwgaXQgd2ls
bCByZWFkIG1lbW9yeSBvdmVybGFwcGluZyB3aXRoIHRoZSBwYXJlbnQncyBhY3R1YWwKc3RydWN0
dXJlLCB3aGljaCBjYW4gbGVhZCB0byBhbiBpbnZhbGlkIHBvaW50ZXIgZGVyZWZlcmVuY2UuCgpU
aGUgcHJldmlvdXMgaW1wbGVtZW50YXRpb24gc2FmZWx5IGhhbmRsZWQgdGhpcyB2aWEgZGV2X2dl
dF9yZWdtYXAoKSwgYnV0CnRoaXMgbmV3IGNhc3QgYnlwYXNzZXMgYnVzIHR5cGUgdmFsaWRhdGlv
bi4gV291bGQgaXQgYmUgYmV0dGVyIHRvIHVzZQpzcG1pX2ZpbmRfZGV2aWNlX2J5X29mX25vZGUo
KSBoZXJlLCBzaW1pbGFyIHRvIGhvdyBpdCBpcyB1c2VkIGluIG90aGVyCmRyaXZlcnMgaW4gdGhp
cyBwYXRjaCBzZXJpZXMsIHRvIGVuc3VyZSB0aGUgZGV2aWNlIGlzIHNhZmVseSByZXRyaWV2ZWQ/
Cgo+ICsJaWYgKElTX0VSUihzdWJfc2RldikpCj4gKwkJcmV0dXJuIFBUUl9FUlIoc3ViX3NkZXYp
Owo+ICAKPiAgCWluaXRfY29tcGxldGlvbigmaWFkYy0+Y29tcGxldGUpOwo+ICAJbXV0ZXhfaW5p
dCgmaWFkYy0+bG9jayk7CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtv
LmRldi8jL3BhdGNoc2V0LzIwMjYwNzA3MDgzNzMwLjMzOTc3LTEtYW5nZWxvZ2lvYWNjaGluby5k
ZWxyZWdub0Bjb2xsYWJvcmEuY29tP3BhcnQ9MTAKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
