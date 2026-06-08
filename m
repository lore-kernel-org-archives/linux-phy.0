Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 107D7CD8C9F
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 10:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jgYby3CgQETQohTswp4s46uqCIxjiw941wHeWRzzNow=; b=5C4G/sVNF9y7Gd
	/fAXhxhAxkoURsOjRuyT1Ic029SymBNsjMbFfy8iLSWVtTbHG9Xrm+U4HUUBgsLrPhLvizeY6c1Kq
	8NtxT8TpX/SzMaBd5Cf1ExdoZ/e/Lzi/VoV8vXn82LsE0cbW7bythpVhojPRao7KONf7VnEUlisWy
	L21yvtFy53wKA6F+V1AIHqnSJU8y+AN1aB1+Dr3OfKVn1WiNf+d3wIYHCAHLexfT/h+kTggyRrMbK
	nxUXTtrgxgj/wrRu3nZqL1rlDTO4jvG3N7T6maNetApbI2QkqSmY1cdttB0HbEOH2jkXz1DwUWwja
	eR6A/rrj1dF5ES3BT+eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWXcP-00000003NSJ-3IcT;
	Mon, 08 Jun 2026 10:54:09 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWXcO-00000003NSB-11yh
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 10:54:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4103540A44;
	Mon,  8 Jun 2026 10:54:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9E051F00893;
	Mon,  8 Jun 2026 10:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780916047;
	bh=34YNrItYUls8Xa/grSB9VeOku5Jd73EjQQqHlR1lVPM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=iLxdf01ZMEZ2tY6j6X9QT1UKFNIXPHftg92+q+gRjU7Chaem+yT4R+j92nugIOd3G
	 VKZXDiIZJg5KFtwThr1NcOed101tJowlYeBtpSbuSbXjI62IQSGy0+W8FOFGpPXS34
	 FesYec8lnU0oiG0I0YTryEdpSg88QljcMbvZXn7t8dMOuvrKU60efVp+JSZuG5xv6o
	 qBN+PtWhwXcCT4pP9N5ajbbAWg+7OYCBI4xmgAoek1uUwUhbrupgBhRAMl3wwaFihm
	 hgC3hnx8QRcOBdenL+B+WkEt9zqnhsZhKdJ3WJk4APxy0xHlxqd4TFlCvzOR4ESJbl
	 p+i/AVU+CEbhg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 05/10] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260608100949.36309-6-angelogioacchino.delregno@collabora.com>
References: <20260608100949.36309-6-angelogioacchino.delregno@collabora.com>
Date: Mon, 08 Jun 2026 10:54:06 +0000
Message-Id: <20260608105406.C9E051F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBkcml2ZXIgYmxp
bmRseSBjYXN0cyBgZGV2LT5wYXJlbnRgIHRvIGEgYHN0cnVjdCBzcG1pX2RldmljZSAqYCB3aXRo
b3V0IHZhbGlkYXRpbmcgdGhlIHBhcmVudCBkZXZpY2UgdHlwZSwgbGVhZGluZyB0byBhIHdpbGQg
cG9pbnRlciBkZXJlZmVyZW5jZSBvbiBtYWxmb3JtZWQgZGV2aWNlIHRyZWVzLgotLQoKY29tbWl0
IGI2YjQ3OWFiMjBlM2YyZDdhNzI0NzY1N2NhNGJiMGE1YTcwZmM3NWEKQXV0aG9yOiBBbmdlbG9H
aW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEu
Y29tPgoKbnZtZW06IHFjb20tc3BtaS1zZGFtOiBNaWdyYXRlIHRvIGRldm1fc3BtaV9zdWJkZXZp
Y2VfYWxsb2NfYW5kX2FkZCgpCgpUaGlzIGNvbW1pdCBtaWdyYXRlcyB0aGUgU0RBTSBkcml2ZXIg
dG8gdXNlIGRldm1fc3BtaV9zdWJkZXZpY2VfYWxsb2NfYW5kX2FkZCgpLgpJdCByZWdpc3RlcnMg
YSBuZXcgU1BNSSBzdWItZGV2aWNlIGZvciBTREFNIGFuZCBpbml0aWFsaXplcyBhIHJlZ21hcCB3
aXRoIGl0cwpzcGVjaWZpYyBiYXNlIGFkZHJlc3MgcmV0cmlldmVkIGZyb20gdGhlIGRldmljZXRy
ZWUuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWVtL3Fjb20tc3BtaS1zZGFtLmMgYi9kcml2
ZXJzL252bWVtL3Fjb20tc3BtaS1zZGFtLmMKPiBpbmRleCA0ZjFjY2E2ZWFiNzFlLi40OTc0MTA1
ZGQ5NjMyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbnZtZW0vcWNvbS1zcG1pLXNkYW0uYwo+ICsr
KyBiL2RyaXZlcnMvbnZtZW0vcWNvbS1zcG1pLXNkYW0uYwpbIC4uLiBdCj4gQEAgLTExMCw4ICsx
MTAsMTcgQEAgc3RhdGljIGludCBzZGFtX3dyaXRlKHZvaWQgKnByaXYsIHVuc2lnbmVkIGludCBv
ZmZzZXQsIHZvaWQgKnZhbCwKPiAgCj4gIHN0YXRpYyBpbnQgc2RhbV9wcm9iZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQo+ICB7ClsgLi4uIF0KPiAgCXN0cnVjdCBzZGFtX2NoaXAgKnNk
YW07Cj4gIAlzdHJ1Y3QgbnZtZW1fZGV2aWNlICpudm1lbTsKPiArCXN0cnVjdCBzcG1pX2Rldmlj
ZSAqc3BhcmVudDsKPiArCXN0cnVjdCBzcG1pX3N1YmRldmljZSAqc3ViX3NkZXY7Cj4gKwlzdHJ1
Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Owo+ICAJdW5zaWduZWQgaW50IHZhbDsKPiAgCWlu
dCByYzsKPiAgCj4gQEAgLTExOSwxOSArMTI4LDIzIEBAIHN0YXRpYyBpbnQgc2RhbV9wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJaWYgKCFzZGFtKQo+ICAJCXJldHVybiAt
RU5PTUVNOwo+ICAKPiAtCXNkYW0tPnJlZ21hcCA9IGRldl9nZXRfcmVnbWFwKHBkZXYtPmRldi5w
YXJlbnQsIE5VTEwpOwo+IC0JaWYgKCFzZGFtLT5yZWdtYXApIHsKPiAtCQlkZXZfZXJyKCZwZGV2
LT5kZXYsICJGYWlsZWQgdG8gZ2V0IHJlZ21hcCBoYW5kbGVcbiIpOwo+IC0JCXJldHVybiAtRU5Y
SU87Cj4gLQl9Cj4gKwlzcGFyZW50ID0gdG9fc3BtaV9kZXZpY2UoZGV2LT5wYXJlbnQpOwo+ICsJ
c3ViX3NkZXYgPSBkZXZtX3NwbWlfc3ViZGV2aWNlX2FsbG9jX2FuZF9hZGQoZGV2LCBzcGFyZW50
KTsKCltTZXZlcml0eTogSGlnaF0KRG9lcyB0aGlzIGNvZGUgYXNzdW1lIHRoYXQgdGhlIHBhcmVu
dCBkZXZpY2UgaXMgYWx3YXlzIGEgdmFsaWQgU1BNSSBkZXZpY2U/CgpJZiB0aGUgZGV2aWNlIHRy
ZWUgaXMgbWFsZm9ybWVkIGFuZCB0aGlzIG5vZGUgaXMgcGxhY2VkIHVuZGVyIGEgc2ltcGxlLWJ1
cwppbnN0ZWFkIG9mIGFuIFNQTUkgUE1JQywgdGhlIHBhcmVudCBkZXZpY2Ugd2lsbCBub3QgYmUg
YW4gc3BtaV9kZXZpY2UuCkJlY2F1c2UgdG9fc3BtaV9kZXZpY2UoKSB1c2VzIGNvbnRhaW5lcl9v
ZigpLCB0aGlzIHdpbGwgcmVzdWx0IGluIGEgYm9ndXMKcG9pbnRlci4KCldoZW4gdGhhdCBib2d1
cyBwb2ludGVyIGlzIHBhc3NlZCBpbnRvIGRldm1fc3BtaV9zdWJkZXZpY2VfYWxsb2NfYW5kX2Fk
ZCgpLApkb2VzIGl0IGNhdXNlIGEgd2lsZCBwb2ludGVyIGRlcmVmZXJlbmNlIHdoZW4gYWNjZXNz
aW5nIHNwYXJlbnQtPmN0cmwgb3IKc3BhcmVudC0+dXNpZD8KClByaW9yIHRvIHRoaXMgcGF0Y2gs
IGRldl9nZXRfcmVnbWFwKHBkZXYtPmRldi5wYXJlbnQsIE5VTEwpIHdvdWxkIGdyYWNlZnVsbHkK
cmV0dXJuIE5VTEwgZm9yIG1hbGZvcm1lZCBoaWVyYXJjaGllcywgYnV0IHRoaXMgY2hhbmdlIGFw
cGVhcnMgdG8gaW50cm9kdWNlCmEgcG90ZW50aWFsIGtlcm5lbCBwYW5pYy4KCj4gKwlpZiAoSVNf
RVJSKHN1Yl9zZGV2KSkKPiArCQlyZXR1cm4gUFRSX0VSUihzdWJfc2Rldik7CgotLSAKU2FzaGlr
byBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjA4MTAw
OTQ5LjM2MzA5LTEtYW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tP3BhcnQ9
NQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
