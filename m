Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A6D4C88E64
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 12:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nv+VUkoHn7XmoE7sKArv8ZemWlRQOvqcAv5Le2IUwYs=; b=gKi3SIsYvVgjqG
	0advRbmE9Nl49LKmySx42+BO48VlU19cri+/OWR7CQhKC69Qhuqq+ocMd2MkLjsGWoBbdJNR+G71S
	FJhaQNyNDSKXKODEDgNxfVPcrwD0wJ5zB6rIBAisbzZa3ONitvXxi4zpBlqfO8V7gW2f5U8JepWp/
	NgtwCfwC/JWN3w/5cVR8g4LKeDdxyLHmqOMcOqV/zvl65tSkk1O0EtwPyCQZI3LUGN+JaEVaEQg/c
	+3s7fgZg53IYZwQBBEj8EYWrAHrwhqymDA70nRD0XQeQL5uMEgMn9ENgt9b7ZnTMTj5Yx4gmFPWv+
	s1syVOEXOG5V7wqUXtFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x664E-00000003d5f-2qJc;
	Mon, 14 Sep 2026 12:45:50 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x664D-00000003d5N-0ekT
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 12:45:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E63114005B;
	Mon, 14 Sep 2026 12:45:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7AC2F1F000FF;
	Mon, 14 Sep 2026 12:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789389946;
	bh=57ZSRc601GzQEtLlCHRTFktl0ay/BmrztWI7CWEW9Qw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=I3fDGOn1jmkk8Iiht45jTiEeqGr5Z2kuLM99TprHV5GOUfi4me0Yj56ERMgRxwHJT
	 XJWXHIaNmU8ACSvSqQQ2L6iF1yYqszCIuBb0cfPwG0a1Rw7O0jh0sjo1PXFUFaFJhv
	 qdpCXaX7QzE/1zi9HTPq02U40zVMIA0r3Z8KeEendIi1UKSeBFQsDKS6jdF3o/KNU8
	 a2JY6pw7gdOlO5vGMuUUzmq8X+6tvrc0yzo7vZSS+XKckgYPCd8Q/DAhiJ8U9/iwJo
	 q/7UllQCs6KcVMyIk8TYZsv6FhqJalf/ys06FlplKUaH/c8VTF1N7QgOGLEIqiWCul
	 mHg7PHt8fgB7Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 13/24] scsi: ufs: mediatek: Remove vendor kernel
 quirks cruft
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: linux-scsi@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260914-mt8196-ufs-v12-13-9279d7ef814d@collabora.com>
References: <20260914-mt8196-ufs-v12-0-9279d7ef814d@collabora.com>
 <20260914-mt8196-ufs-v12-13-9279d7ef814d@collabora.com>
Date: Mon, 14 Sep 2026 12:45:46 +0000
Message-Id: <20260914124546.7AC2F1F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gSW5jb21wbGV0ZSBjbGVh
bnVwOiB1bnVzZWQgbWFjcm8sIGVudW0sIGFuZCBTaVAgY29tbWFuZCBsZWZ0IGluIGhlYWRlciBm
aWxlCi0tCgpjb21taXQgNWYyYjE3NDc5ZWJlM2Q5MjQxODAxNWYxYTgxYjYwZDk0M2FhM2FjNgpB
dXRob3I6IE5pY29sYXMgRnJhdHRhcm9saSA8bmljb2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5j
b20+CgpzY3NpOiB1ZnM6IG1lZGlhdGVrOiBSZW1vdmUgdmVuZG9yIGtlcm5lbCBxdWlya3MgY3J1
ZnQKICAgIApCb3RoIHVmc19tdGtfdnJlZ19maXhfdmNjIGFuZCB1ZnNfbXRrX3ZyZWdfZml4X3Zj
Y3F4IGxvb2sgbGlrZSB0aGV5IGFyZQp2ZW5kb3Iga2VybmVsIGhhY2tzIHRvIHdvcmsgYXJvdW5k
IGV4aXN0aW5nIGRvd25zdHJlYW0gZGV2aWNlIHRyZWVzLgpNYWlubGluZSBkb2VzIG5vdCBuZWVk
IG9yIHdhbnQgdGhlbSwgc28gcmVtb3ZlIHRoZW0uCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Vm
cy9ob3N0L3Vmcy1tZWRpYXRlay5jIGIvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYwo+
IGluZGV4IDNkMTA4YTA5MjkyMDUuLjNjMTBhOWZkMDlkZmMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYwo+ICsrKyBiL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1l
ZGlhdGVrLmMKPiBAQCAtMTA1Myw3MyArMTA1Myw2IEBAIHN0YXRpYyB2b2lkIHVmc19tdGtfaW5p
dF9jbG9ja3Moc3RydWN0IHVmc19oYmEgKmhiYSkKPiAgCX0KPiAgfQo+ICAKPiAtI2RlZmluZSBN
QVhfVkNDX05BTUUgMzAKPiAtc3RhdGljIGludCB1ZnNfbXRrX3ZyZWdfZml4X3ZjYyhzdHJ1Y3Qg
dWZzX2hiYSAqaGJhKQo+IC17ClsgLi4uIF0KPiAtCWlmIChvZl9wcm9wZXJ0eV9yZWFkX2Jvb2wo
bnAsICJtZWRpYXRlayx1ZnMtdmNjLWJ5LW51bSIpKSB7Cj4gLQkJdWZzX210a19nZXRfdmNjX251
bShyZXMpOwo+IC0JCWlmIChyZXMuYTEgPiBVRlNfVkNDX05PTkUgJiYgcmVzLmExIDwgVUZTX1ZD
Q19NQVgpCgpbU2V2ZXJpdHk6IExvd10KV2l0aCB0aGUgcmVtb3ZhbCBvZiB0aGlzIGZ1bmN0aW9u
LCBkb2VzIHRoaXMgYWxzbyBtZWFuIHRoYXQKdWZzX210a19nZXRfdmNjX251bSgpLCBlbnVtIHVm
c19tdGtfdmNjX251bSwgYW5kIFVGU19NVEtfU0lQX0dFVF9WQ0NfTlVNCmFyZSBub3cgZW50aXJl
bHkgdW51c2VkPwoKTG9va2luZyBhdCBkcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay1zaXAu
aCwgaXQgc2VlbXMgbGlrZSB0aGVzZSB3ZXJlCm9ubHkgdXNlZCBoZXJlIGFuZCBjb3VsZCBiZSBy
ZW1vdmVkIGFzIHdlbGwgdG8gYXZvaWQgbGVhdmluZyBkZWFkIGNvZGUgYmVoaW5kOgoKZHJpdmVy
cy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWstc2lwLmg6CiNkZWZpbmUgVUZTX01US19TSVBfR0VUX1ZD
Q19OVU0gICAgICAgICAgIEJJVCg2KQoKLi4uCgplbnVtIHVmc19tdGtfdmNjX251bSB7CglVRlNf
VkNDX05PTkUgPSAwLAoJVUZTX1ZDQ18xLAoJVUZTX1ZDQ18yLAoJVUZTX1ZDQ19NQVgKfTsKCi4u
LgoKI2RlZmluZSB1ZnNfbXRrX2dldF92Y2NfbnVtKHJlcykgXAoJdWZzX210a19zbWMoVUZTX01U
S19TSVBfR0VUX1ZDQ19OVU0sICYocmVzKSkKCkNvdWxkIHRoZXNlIGJlIGNsZWFuZWQgdXAgaW4g
dGhpcyBwYXRjaCBhcyB3ZWxsPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2Fz
aGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkxNC1tdDgxOTYtdWZzLXYxMi0wLTkyNzlkN2VmODE0
ZEBjb2xsYWJvcmEuY29tP3BhcnQ9MTMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
