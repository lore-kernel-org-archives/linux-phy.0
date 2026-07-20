Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BF4BC44515
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 15:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sicco0gV2Bl1UYXhg5kOJIDz4yewpHSPNWdJu1k82NY=; b=1qGswEWXaR/uDv
	QvlxEnk/AqPl0DcpNghknwme8pOMqjYXnrrUl3MCTVsdmP3PpS26a37QNXWw2FW1GGmqMF8EwCpmv
	tVqMSjQB+pxCHX61XY0eLYrJl8Q5U4SZZYsJFpXxgVmMJ7O//2VcAiJdId6xZ0xxN5SyKjST3tyCd
	2gMh4yAtdcqvLFDcahJuIlLp7xW7BvUnmLPMXljYpdN+jyrP74O971gft36mbnyO+Hiy68Q2gSrTN
	iknfk6wE4eAdH3NRwsD3rMY+I6Atfzwi+pd+/I9xSbaySaa7tC8We5DGp9FA87So6ONUzkD01oexC
	j5pYWvxs/Cl/5dpTLJ7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlq3m-00000007DDB-0MLz;
	Mon, 20 Jul 2026 15:37:38 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlq3l-00000007DD0-21Vk
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 15:37:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1BAD443597;
	Mon, 20 Jul 2026 15:37:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8566B1F00A3A;
	Mon, 20 Jul 2026 15:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784561857;
	bh=AdydMQD6XqNimOrdxgFxFFc3ogSzS1ey/fOCAe9XFwk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ctOxcuRuX0K0OlXUz230voFAZRzKZCP1GkbYvyMHCe153u/GdMDZeYNGkAFJEIofn
	 wRMG/Hg52teVgdEVz2/5S7nfe+b9amFXk1NhYkfN3xoPv4oUPBpawgVKjTCyQAAmV7
	 G5sxh0yRxGej+IfxEBXS18foLp0JPX3r6+Wsi6R62+I6f0220wiq0unqb3SOty3qGq
	 fCmhbIteMJGbTvFm6NpUsmk1s0cC8iAhlvIVPYJCizNW3a23GTpLd+Mfajsl+WQFIO
	 MRl5NtzbbgdqZ2MaPCQ7UUtQKTGp581GNqMC7hnX/f3E8H1HMNaI1KRORy1xzrtHoQ
	 0ZFzgicFc6iRg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/2] phy: mediatek: Add support for PCI-Express Gen4
 S-PHY
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260720152654.92216-3-angelogioacchino.delregno@collabora.com>
References: <20260720152654.92216-1-angelogioacchino.delregno@collabora.com>
 <20260720152654.92216-3-angelogioacchino.delregno@collabora.com>
Date: Mon, 20 Jul 2026 15:37:36 +0000
Message-Id: <20260720153736.8566B1F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIGRyaXZlciBlbWl0
cyBhIGZhbHNlLXBvc2l0aXZlIGtlcm5lbCBlcnJvciBsb2cgd2hlbiBOVk1FTSBpcyBkaXNhYmxl
ZCBvciB1bnN1cHBvcnRlZC4KLS0KCi0tLSBQYXRjaCBbMl06IFtQQVRDSCB2MyAyLzJdIHBoeTog
bWVkaWF0ZWs6IEFkZCBzdXBwb3J0IGZvciBQQ0ktRXhwcmVzcyBHZW40IFMtUEhZIC0tLQpjb21t
aXQgOTNjZTAzNWE1ZTNhMjRiNGM2ZjYzNjk3ODY5YmJjYjVkOGU1MGRiNApBdXRob3I6IEFuZ2Vs
b0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9y
YS5jb20+ClN1YmplY3Q6IHBoeTogbWVkaWF0ZWs6IEFkZCBzdXBwb3J0IGZvciBQQ0ktRXhwcmVz
cyBHZW40IFMtUEhZCgpUaGlzIGNvbW1pdCBhZGRzIHN1cHBvcnQgZm9yIHRoZSBQQ0ktRXhwcmVz
cyBHZW40IFMtUEhZIGZvdW5kIGluIHRoZSBsYXRlc3QKTWVkaWFUZWsgU29DcywgaW5jbHVkaW5n
IE1UODE5NiwgTVQ4ODk0IGFuZCBzaW1pbGFyLgoKWyAuLi4gXQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLXBjaWUtc3BoeS5jIGIvZHJpdmVycy9waHkvbWVkaWF0
ZWsvcGh5LW10ay1wY2llLXNwaHkuYwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAw
MDAwMDAwMDAwMC4uODUzYWFmYTE4MjU5Nwo+IC0tLSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJz
L3BoeS9tZWRpYXRlay9waHktbXRrLXBjaWUtc3BoeS5jClsgLi4uIF0KPiArc3RhdGljIGludCBt
dGtfcGNpZV9zcGh5X2dldF9vbmVfY2FsX3BhcmEoc3RydWN0IGRldmljZSAqZGV2LCBjb25zdCBj
aGFyICpuYW1lLCB1OCBtYXhfdmFsKQo+ICt7Cj4gKwl1MTYgYnVmOwo+ICsJdTggdG1wOwo+ICsJ
aW50IHJldDsKPiArCj4gKwkvKgo+ICsJICogQWxsIG9mIHRoZSBjYWxpYnJhdGlvbnMgYXJlIGFs
d2F5cyBtYXggOCBiaXRzIGxvbmcsIGJ1dCBzb21lIG1heQo+ICsJICogYmUgc3BsaXQgYmV0d2Vl
biB0d28gZGlmZmVyZW50IDgtYml0cyBjZWxsczogaGFuZGxlIHRoaXMgY29ybmVyCj4gKwkgKiBj
YXNlIGJ5IHJldHJ5aW5nIHJlYWRpbmcgYXMgdTE2Lgo+ICsJICovCj4gKwlyZXQgPSBudm1lbV9j
ZWxsX3JlYWRfdTgoZGV2LCBuYW1lLCAmdG1wKTsKPiArCWlmIChyZXQgPT0gMCkKPiArCQlidWYg
PSB0bXA7Cj4gKwllbHNlCj4gKwkJcmV0ID0gbnZtZW1fY2VsbF9yZWFkX3UxNihkZXYsIG5hbWUs
ICZidWYpOwo+ICsKPiArCWlmIChyZXQgPT0gLUVOT0VOVCkgewo+ICsJCWRldl9pbmZvKGRldiwg
Ik5vIGNhbGlicmF0aW9uIGZvciAlcy4gVXNpbmcgZGVmYXVsdHNcbiIsIG5hbWUpOwo+ICsJCXJl
dHVybiAtRU5PRU5UOwo+ICsJfSBlbHNlIGlmIChyZXQpCj4gKwkJcmV0dXJuIGRldl9lcnJfcHJv
YmUoZGV2LCByZXQsCj4gKwkJCQkgICAgICJDYW5ub3QgZ2V0IGNhbGlicmF0aW9uIGRhdGEgZm9y
ICVzXG4iLCBuYW1lKTsKCltTZXZlcml0eTogTG93XQpEb2VzIHRoaXMgZW1pdCBhIGZhbHNlLXBv
c2l0aXZlIGtlcm5lbCBlcnJvciBsb2cgd2hlbiBOVk1FTSBpcyBkaXNhYmxlZCBvcgp1bnN1cHBv
cnRlZD8KCklmIENPTkZJR19OVk1FTT1uLCB0aGUgTlZNRU0gQVBJcyByZXR1cm4gLUVPUE5PVFNV
UFAsIHdoaWNoIHdpbGwgY2F1c2UgdGhpcwpwYXRoIHRvIHByaW50IGFuIGVycm9yIHdpdGggZGV2
X2Vycl9wcm9iZSgpLiBIb3dldmVyLCB0aGUgY2FsbGVyIGluCm10a19wY2llX3NwaHlfZ2V0X2Nh
bGlicmF0aW9uX2RhdGEoKSBncmFjZWZ1bGx5IGhhbmRsZXMgLUVPUE5PVFNVUFAgYXMgYQpub24t
ZXJyb3IgY29uZGl0aW9uOgoKCWlmIChyZXQgPCAwKSB7CgkJLyoKCQkgKiBJZiBhbnkgb2YgdGhl
IGNhbGlicmF0aW9uIHZhbHVlcyBpcyBtaXNzaW5nLCBvciBpZiB0aGVyZSBpcwoJCSAqIG5vIGNh
bGlicmF0aW9uIGF0IGFsbCBpbiB0aGUgZUZ1c2VzLCB0aGlzIGlzIG5vdCBhIHByb2JsZW0sCgkJ
ICogYXMgdGhlIFBIWSBkb2Vzbid0IHJlcXVpcmUgb25lIHRvIGFjdHVhbGx5IHdvcmsuCgkJICov
CgkJaWYgKHJldCA9PSAtRU5PRU5UIHx8IHJldCA9PSAtRU9QTk9UU1VQUCkgewoJCQljYWwtPnN1
cHBvcnRlZCA9IGZhbHNlOwoJCQlyZXR1cm4gMDsKCQl9CgpDb3VsZCAtRU9QTk9UU1VQUCBiZSBo
YW5kbGVkIHNpbGVudGx5IGhlcmUgaW4gbXRrX3BjaWVfc3BoeV9nZXRfb25lX2NhbF9wYXJhKCkK
dG8gYXZvaWQgc3B1cmlvdXMgZXJyb3IgbWVzc2FnZXMgZHVyaW5nIGJvb3Q/Cgo+ICsKPiArCWlm
IChidWYgPiBtYXhfdmFsKQo+ICsJCXJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgLUVSQU5HRSwK
PiArCQkJCSAgICAgIkJhZCB2YWx1ZSAldSByZXRyaWV2ZWQgZm9yICVzLlxuIiwgYnVmLCBuYW1l
KTsKPiArCj4gKwlyZXR1cm4gYnVmOwo+ICt9CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0
cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzIwMTUyNjU0LjkyMjE2LTEtYW5nZWxv
Z2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tP3BhcnQ9MgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
