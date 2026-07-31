Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7F3BC5516D
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jul 2026 08:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F2+LPGkh09qqfyRDc78JihZKMKfilOtcg7c2SIKi6m0=; b=lgRu2irnRrbMG1
	fvmQBC81rYjOIYyE2DLuKqNGFHqM2a+R2j9qKiaTuwl4/E88KwBCZp1b1tLv1jVSDBZbgXzFl+/Tq
	bKbwxpdbuiMWgCL0Qt+XOHrqsq7sED8Z/E2vHpUsBSS7CTvUhmZ8jXJe+Dg19e6kgDgpRVS2cpmnO
	9im0ne37G8OebalbPOuxnTNgoKpHvrchzmZ2AG2cm6F8vyHT/nRfMKeBGvpGVP7SIaun9Rhsyvmi9
	2YQrUitbS4AVlNsG87xyh2yywUIKp+n8ZhbVvy04iUpYuXuRIkwkyciMXkrQwtSkjMa9j8dA8SOPE
	s3OhUzeBJ/W2BQVUQ01Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpiaD-0000000C3rg-2c32;
	Fri, 31 Jul 2026 08:27:09 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpiaC-0000000C3rL-0AzQ
	for linux-phy@lists.infradead.org;
	Fri, 31 Jul 2026 08:27:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7049340DEF;
	Fri, 31 Jul 2026 08:27:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD5161F000E9;
	Fri, 31 Jul 2026 08:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785486427;
	bh=bQVRuWb1aHpzhKsj7xdRF2ObnZLDP4QmknPPX9xxqBc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eU+xh8uOpxYeChxNhX+mLJq2a0l+K76XJyhGUq1SUhbTwY9ZUvXgH8zEvb/EYOmp2
	 FgyRg//RfGsE5rjHJRcBvRfT+PQr/6MQxiDAtEy+ZRFTvXrHL+dStyGVH4f6Obo0vE
	 UlAGFYcaQyeYPswk3JsJyko0BC3FvtroQd8oHBFzevuxYwMjK+rJg/yGkp5KxCos3g
	 BO0fm1r8sRHj7igSDtWuVCs6hNIWA+2brMMby/2OREA2e+mY2bFMQIffoOeHb9ZlbD
	 ABYyhUhVpgl7jDozg7oA2+ikFOXfLzLIEJ1XBXl2+yi2EkEGM893xtIaxaI8sgoAIZ
	 aryvKC1jMhXlQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 4/6] phy: fsl-imx8mq-usb: add control register regmap
To: "Xu Yang" <xu.yang_2@oss.nxp.com>
Cc: Frank.Li@kernel.org, vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, imx@lists.linux.dev, neil.armstrong@linaro.org
In-Reply-To: <20260731-imx8mp-usb-phy-improvement-v8-4-2ec8d6b3854d@nxp.com>
References: <20260731-imx8mp-usb-phy-improvement-v8-0-2ec8d6b3854d@nxp.com>
 <20260731-imx8mp-usb-phy-improvement-v8-4-2ec8d6b3854d@nxp.com>
Date: Fri, 31 Jul 2026 08:27:06 +0000
Message-Id: <20260731082706.AD5161F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE1pc3NpbmcgUE0gcnVu
dGltZSBwcm90ZWN0aW9uIGR1cmluZyBwcm9iZSBhbGxvd3MgbWlkLXByb2JlIHN1c3BlbmQgYW5k
IGRvdWJsZSBjbG9jayBkaXNhYmxlIG9uIGVycm9yIHBhdGguCi0tCgotLS0gUGF0Y2ggWzRdOiBb
UEFUQ0ggdjggNC82XSBwaHk6IGZzbC1pbXg4bXEtdXNiOiBhZGQgY29udHJvbCByZWdpc3RlciBy
ZWdtYXAgLS0tCmNvbW1pdCAwYzhlMmE2Mzg5YzQ3ZGQzNjI3NWUzYWVjYmE2NDkxZjNmNGM3MGFj
CkF1dGhvcjogWHUgWWFuZyA8eHUueWFuZ18yQG54cC5jb20+CgogICAgcGh5OiBmc2wtaW14OG1x
LXVzYjogYWRkIGNvbnRyb2wgcmVnaXN0ZXIgcmVnbWFwCiAgICAKICAgIFRoZSBDUiBwb3J0IGlz
IGEgc2ltcGxlIDE2LWJpdCBkYXRhL2FkZHJlc3MgcGFyYWxsZWwgcG9ydCB0aGF0IGlzCiAgICBh
Y2Nlc3NlZCB0aHJvdWdoIDMyLWJpdCBNTUlPIHJlZ2lzdGVycyBmb3Igb24tY2hpcCBhY2Nlc3Mg
dG8gdGhlCiAgICBjb250cm9sIHJlZ2lzdGVycyBpbnNpZGUgdGhlIFVTQiAzLjAgZmVtdG9QSFku
IEFkZCBjb250cm9sIHJlZ2lzdGVyCiAgICByZWdtYXAgYW5kIGV4cG9ydCB0aGVzZSByZWdpc3Rl
cnMgYnkgZGVidWdmcyB0byBoZWxwIFBIWSdzIGRpYWdub3N0aWMuCgpbIC4uLiBdCgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4bXEtdXNiLmMgYi9kcml2
ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4bXEtdXNiLmMKPiBpbmRleCA0MmRlMmNmZjRk
NWYzLi5lMDNmOWRhZmQ2OWUwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9w
aHktZnNsLWlteDhtcS11c2IuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNs
LWlteDhtcS11c2IuYwpbIC4uLiBdCj4gQEAgLTY5Niw2ICs3MDgsMTMgQEAgc3RhdGljIGludCBp
bXg4bXFfdXNiX3BoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJaWYg
KElTX0VSUihpbXhfcGh5LT5iYXNlKSkKPiAgCQlyZXR1cm4gUFRSX0VSUihpbXhfcGh5LT5iYXNl
KTsKPiAgCj4gKwlpbXhfcGh5LT5jcl9yZWdtYXAgPSBkZXZtX3JlZ21hcF9pbml0X21taW8oZGV2
LCBpbXhfcGh5LT5iYXNlICsgUEhZX0NSQ1RMLAo+ICsJCQkJCQkgICAmaW14X2NyX3JlZ21hcF9j
b25maWcpOwo+ICsJaWYgKElTX0VSUihpbXhfcGh5LT5jcl9yZWdtYXApKSB7Cj4gKwkJZGV2X3dh
cm4oZGV2LCAiRmFpbCB0byBpbml0IGRlYnVnIHJlZ2lzdGVyIHJlZ21hcFxuIik7Cj4gKwkJaW14
X3BoeS0+Y3JfcmVnbWFwID0gTlVMTDsKPiArCX0KPiArCj4gIAlpbXhfcGh5LT52YnVzID0gZGV2
bV9yZWd1bGF0b3JfZ2V0KGRldiwgInZidXMiKTsKPiAgCWlmIChJU19FUlIoaW14X3BoeS0+dmJ1
cykpCj4gIAkJcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCBQVFJfRVJSKGlteF9waHktPnZidXMp
LCAiZmFpbGVkIHRvIGdldCB2YnVzXG4iKTsKCltTZXZlcml0eTogSGlnaF0KRG9lcyBpbXg4bXFf
dXNiX3BoeV9wcm9iZSgpIG5lZWQgYSBQTSBydW50aW1lIHVzYWdlIHJlZmVyZW5jZSBiZWZvcmUg
ZW5hYmxpbmcKcnVudGltZSBQTT8KCkxhdGVyIGluIHRoaXMgZnVuY3Rpb24sIHBtX3J1bnRpbWVf
ZW5hYmxlKGRldikgaXMgY2FsbGVkIHdpdGhvdXQgaG9sZGluZyBhCnVzYWdlIHJlZmVyZW5jZSB2
aWEgcG1fcnVudGltZV9nZXRfbm9yZXN1bWUoKS4gQWZ0ZXIgdGhhdCwgaXQgcmVnaXN0ZXJzIGEK
VHlwZS1DIHN3aXRjaC4KCklmIHRoZSBUeXBlLUMgc3Vic3lzdGVtIChvciBUQ1BNKSBpbW1lZGlh
dGVseSBjb25maWd1cmVzIHRoaXMgc3dpdGNoIHZpYQp0Y2FfYmxrX3R5cGVjX3N3aXRjaF9zZXQo
KSwgaXQgYWNxdWlyZXMgYW5kIGRyb3BzIGEgUE0gcmVmZXJlbmNlLiBEcm9wcGluZwp0aGUgcmVm
ZXJlbmNlIHF1ZXVlcyBhbiBpZGxlIHJlcXVlc3QsIGNhdXNpbmcgdGhlIGRldmljZSB0byBydW50
aW1lIHN1c3BlbmQKYW5kIGRpc2FibGUgaXRzIGNsb2Nrcy4KCklmIGEgc3Vic2VxdWVudCBwcm9i
ZSBzdGVwIGxpa2UgZGV2bV9vZl9waHlfcHJvdmlkZXJfcmVnaXN0ZXIoKSBmYWlscywgdGhlCmNv
ZGUganVtcHMgdG8gZGlzYWJsZV9ycG06CgpkaXNhYmxlX3JwbToKICAgIHBtX3J1bnRpbWVfZGlz
YWJsZShkZXYpOwogICAgcmV0dXJuIHJldDsKCkJlY2F1c2UgcG1fcnVudGltZV9kaXNhYmxlKCkg
bGVhdmVzIHRoZSBkZXZpY2UgaW4gdGhlIHN1c3BlbmRlZCBzdGF0ZSBpZiBpdApzdXNwZW5kZWQg
bWlkLXByb2JlLCB0aGUgZGV2aWNlIHJlbWFpbnMgc3VzcGVuZGVkLiBUaGUgcHJvYmUgcmV0dXJu
cyBhbgplcnJvciwgdHJpZ2dlcmluZyBkZXZyZXMgY2xlYW51cCwgd2hpY2ggY2FsbHMgY2xrX2Rp
c2FibGVfdW5wcmVwYXJlKCkgYW5kCmRpc2FibGVzIHRoZSBjbG9ja3MgYSBzZWNvbmQgdGltZS4K
CkZvciBhIHNoYXJlZCBjbG9jaywgdGhpcyBkcm9wcyB0aGUgZ2xvYmFsIGVuYWJsZSBjb3VudCB1
bmV4cGVjdGVkbHksIHR1cm5pbmcKb2ZmIHRoZSBoYXJkd2FyZSBjbG9jayB3aGlsZSBvdGhlciBj
b25zdW1lcnMgYXJlIGFjdGl2ZWx5IHVzaW5nIGl0LiBPbiBTb0NzCmxpa2UgaS5NWDgsIGFjY2Vz
c2luZyB1bmNsb2NrZWQgcmVnaXN0ZXJzIHR5cGljYWxseSBjYXVzZXMgYW4gQVhJIGJ1cyBsb2Nr
dXAuCgpDYW4gd2UgYWNxdWlyZSBhIFBNIHJlZmVyZW5jZSBiZWZvcmUgZW5hYmxpbmcgcnVudGlt
ZSBQTSB0byBwcmV2ZW50IHRoZQpkZXZpY2UgZnJvbSBzdXNwZW5kaW5nIGR1cmluZyBwcm9iZT8K
Ci0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQv
MjAyNjA3MzEtaW14OG1wLXVzYi1waHktaW1wcm92ZW1lbnQtdjgtMC0yZWM4ZDZiMzg1NGRAbnhw
LmNvbT9wYXJ0PTQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
