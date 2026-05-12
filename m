Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2347CD343F
	for <linux-phy@archiver.kernel.org>; Tue, 12 May 2026 21:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PiCVGhd3/LlsymIiqzYuQyWdEKHB8uZpIquhXe/PLLk=; b=AAFH5DlZ1gxHhp
	QWVzD3VzKA8jITAHXuKWnBoYk2ZJaJ5COPH61M5IUrsuWlYBb5eD9vhrLq8SNSLUNwq1cK51llp/z
	nKkhz1zQifzPD42nMT1mxlZQlMOrNXg91s/8qjOM/vHcJKBAQvJdI4x5mivtjO5Ugenh2bdQ4tnBr
	VqhFWT1CfwNpgpvny/3nwD4Ah76x+dRM9f4euQPzoVrF4oxwW2XaskormfNSuyZE7SaStuhBgsFP7
	0VSMiRM8fKpmEm2KIjcdOzjvy8pUwX3sUakhj7U+i7orO3Y2wxNI1S1rE0LpOMjVbeME19COR7aNA
	KO+2yEXS21cSdZPiLWvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMv54-00000000XKo-2Zku;
	Tue, 12 May 2026 21:55:58 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMv52-00000000XKQ-0cFw
	for linux-phy@lists.infradead.org;
	Tue, 12 May 2026 21:55:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CB088407F5;
	Tue, 12 May 2026 21:55:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71608C2BCB0;
	Tue, 12 May 2026 21:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778622955;
	bh=N/Z1tI7Bx8Ep6LJNcv+mjAu8SyZonrMI9Fs8UUEZDdM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=GScsf5WuPhBB7pN1dAT1ntVItIzqszW0/wB5FyQtv5IbXkxuxhWjHfcqm/4wDclSp
	 42uUpRtK6HydMNai9B7vunJjSbBao5j5TPH4AT88I1KtvMXIaoF9PpcScGHdv7THyv
	 7rpOfpVuOvTqrWxailfySsWbpo1TAnaGfg6y3Au8+BXfF0gTHJxQ5GeCtScH+dMELC
	 FnvVC4t9BG90SRGHqp+3mrJFukZeE8KCIHshI00xtCvdVnFJaTzdkNVifSGfAWDIEr
	 ODvMTHo6P89yirxXDI4fsVtR8nOVg1PCJx66smG5MbWlnEdfXaHPcHcEzB8+BQxORv
	 JIw+xmeSB+C1A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RESEND v8 10/10] iio: adc: qcom-spmi-iadc: Remove regmap
 R/W wrapper functions
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org, olteanv@gmail.com
In-Reply-To: <20260511100805.121432-11-angelogioacchino.delregno@collabora.com>
References: <20260511100805.121432-11-angelogioacchino.delregno@collabora.com>
Date: Tue, 12 May 2026 21:55:55 +0000
Message-Id: <20260512215555.71608C2BCB0@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_145556_211999_57BC0757 
X-CRM114-Status: GOOD (  10.86  )
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
Reply-To: sashiko@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gRm9ybWF0IFNwZWNpZmll
ciBNaXNtYXRjaCBpbiBgaWFkY192ZXJzaW9uX2NoZWNrYAotIFtMb3ddIEltcGxpY2l0IFNpZ25l
ZC9VbnNpZ25lZCBBcml0aG1ldGljIENvbnZlcnNpb24gaW4gYGlhZGNfcnNlbnNlX3JlYWRgCi0t
Cgpjb21taXQgZTNmM2YzN2IyMGIxOTQ1NzdmMzE3N2VhYzUyZjk4ZTU2NTgzNzU3OQpBdXRob3I6
IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNv
bGxhYm9yYS5jb20+CgppaW86IGFkYzogcWNvbS1zcG1pLWlhZGM6IFJlbW92ZSByZWdtYXAgUi9X
IHdyYXBwZXIgZnVuY3Rpb25zCiAgICAKVGhpcyBjb21taXQgbWlncmF0ZXMgdGhlIGRyaXZlciB0
byB1c2UgdGhlIHJlZ21hcCBhcGkgZGlyZWN0bHkgaW5zdGVhZCBvZgpyZWx5aW5nIG9uIGN1c3Rv
bSByZWFkIGFuZCB3cml0ZSB3cmFwcGVyIGZ1bmN0aW9ucy4gSXQgc2ltcGxpZmllcyB0aGUgZHJp
dmVyCmFzIHRoZSBzcG1pIHN1YmRldmljZSBuYXRpdmVseSBoYW5kbGVzIHRoZSByZWdpc3RlciBi
YXNlIGFkZHJlc3MgaW50ZXJuYWxseS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaWlvL2FkYy9x
Y29tLXNwbWktaWFkYy5jIGIvZHJpdmVycy9paW8vYWRjL3Fjb20tc3BtaS1pYWRjLmMKPiBpbmRl
eCA1NWEwOWMwZTJkNWNiLi41MDNmOTBiMmE1YmFkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvaWlv
L2FkYy9xY29tLXNwbWktaWFkYy5jCj4gKysrIGIvZHJpdmVycy9paW8vYWRjL3Fjb20tc3BtaS1p
YWRjLmMKClsgLi4uIF0KCj4gQEAgLTM5MiwxMCArMzY5LDEwIEBAIHN0YXRpYyBpbnQgaWFkY191
cGRhdGVfb2Zmc2V0KHN0cnVjdCBpYWRjX2NoaXAgKmlhZGMpCj4gIAo+ICBzdGF0aWMgaW50IGlh
ZGNfdmVyc2lvbl9jaGVjayhzdHJ1Y3QgaWFkY19jaGlwICppYWRjKQo+ICB7Cj4gLQl1OCB2YWw7
Cj4gKwl1MzIgdmFsOwoKVGhpcyBpc24ndCBhIGJ1ZywgYnV0IHNpbmNlIHZhbCBpcyBub3cgYSB1
MzIsIHNob3VsZCB0aGUgc3Vic2VxdWVudApkZXZfZXJyKCkgZm9ybWF0IHNwZWNpZmllcnMgaW4g
dGhpcyBmdW5jdGlvbiBiZSB1cGRhdGVkIGZyb20gJWQgdG8gJXUgdG8KYXZvaWQgY29tcGlsZXIg
d2FybmluZ3M/Cgo+ICAJaW50IHJldDsKPiAgCj4gLQlyZXQgPSBpYWRjX3JlYWQoaWFkYywgSUFE
Q19QRVJQSF9UWVBFLCAmdmFsKTsKPiArCXJldCA9IHJlZ21hcF9yZWFkKGlhZGMtPnJlZ21hcCwg
SUFEQ19QRVJQSF9UWVBFLCAmdmFsKTsKPiAgCWlmIChyZXQgPCAwKQo+ICAJCXJldHVybiByZXQ7
CgpbIC4uLiBdCgo+IEBAIC00MjgsNyArNDA1LDcgQEAgc3RhdGljIGludCBpYWRjX3ZlcnNpb25f
Y2hlY2soc3RydWN0IGlhZGNfY2hpcCAqaWFkYykKPiAgc3RhdGljIGludCBpYWRjX3JzZW5zZV9y
ZWFkKHN0cnVjdCBpYWRjX2NoaXAgKmlhZGMsIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9kZSkKPiAg
ewo+ICAJaW50IHJldCwgc2lnbiwgaW50X3NlbnNlOwo+IC0JdTggZGV2aWF0aW9uOwo+ICsJdTMy
IGRldmlhdGlvbjsKCkRvZXMgY2hhbmdpbmcgZGV2aWF0aW9uIHRvIHUzMiBjYXVzZSBhbiBpbXBs
aWNpdCB1bnNpZ25lZCBhcml0aG1ldGljCmNvbnZlcnNpb24gbGF0ZXIgaW4gdGhpcyBmdW5jdGlv
bj8KCldoZW4gY2FsY3VsYXRpbmcgaW50X3NlbnNlLCBzaWduIGNhbiBiZSAtMToKCmludF9zZW5z
ZSArPSBzaWduICogZGV2aWF0aW9uICogSUFEQ19JTlRfUlNFTlNFX0RFVklBVElPTjsKClNpbmNl
IGRldmlhdGlvbiBpcyB1bnNpZ25lZCwgLTEgd2lsbCBiZSBwcm9tb3RlZCB0byBhbiB1bnNpZ25l
ZCB2YWx1ZS4KQ291bGQgdGhpcyB0cmlnZ2VyIHN0YXRpYyBhbmFseXNpcyB3YXJuaW5ncywgYW5k
IHdvdWxkIGV4cGxpY2l0bHkgY2FzdGluZwpkZXZpYXRpb24gdG8gaW50IGR1cmluZyB0aGUgY2Fs
Y3VsYXRpb24gYmUgc2FmZXI/Cgo+ICAKPiAgCXJldCA9IG9mX3Byb3BlcnR5X3JlYWRfdTMyKG5v
ZGUsICJxY29tLGV4dGVybmFsLXJlc2lzdG9yLW1pY3JvLW9obXMiLAo+ICAJCQkJICAgJmlhZGMt
PnJzZW5zZVtJQURDX0VYVF9SU0VOU0VdKTsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRw
czovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA1MTExMDA4MDUuMTIxNDMyLTEtYW5nZWxv
Z2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tP3BhcnQ9MTAKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
