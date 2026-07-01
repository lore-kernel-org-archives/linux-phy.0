Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C21F6C43327
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 13:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BDczBOB8yev1VPB/uJYzXR1kpwcu2Z71i1IYeRYOudI=; b=vTSJMx4Bm7dRqQ
	QKRtGpw56fayUWYvULBiTZF3SCAuMflkz8iR/d9Xxuhko/7RvdlWmM7n46eHP2Un8wHWM3jWmi3BB
	D5547v1Gae1MKdZRTBIjOhDsDGARq/jjvnIKPGoGCguhjJHL7mhpELPIArn5e7w4UtWZTRMTSc3z8
	GlGqKHopxzjY3PfV9VW1t9xnNVZ36efZ3Vs0Aoy2zmFDes+cknqP3dJOU3GVgWF89zCC68yPrcwZj
	F+XSPmeX3D3kuQ+ciQmPlat2EkIO7tBrcuVpt5Ux5n0oggUzzLf9YUcX/7LTn/ssWTCnMtRe2OhPh
	9Pv/uVcXChMSEhJiY+rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weua9-000000026jo-2K2R;
	Wed, 01 Jul 2026 13:02:25 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weua9-000000026jQ-07E6
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 13:02:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7130140850;
	Wed,  1 Jul 2026 13:02:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF9691F000E9;
	Wed,  1 Jul 2026 13:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782910944;
	bh=MwYg1YAoI39wRvoAcBgzLbmYQlvcrl66/3NbKVGwuEs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Lz1gDrWuY7UOVKIkxILFqALu51y6JTcV/9buRhmroPW4pGCAPcUE+f9aYm+YPm92q
	 1GKDQQEG7H+O8j43TGoh9XBtaEawZII+CCPYw1gWCCpMALUfyCgObNrPmpxcQg2xpB
	 YKPhQIbnByUWEmtlHLU3w8zkc1jSC5/JEh/WSXC3Kzsj6uDsjGPmC4/iKGv1E1j/yb
	 YDx+P2Mbz2HuOQQHv1zgeeUqdtfMtHUCo7VaWDhkvwPzTB9SMtfIze9d8f9aATEq6P
	 4ITVzYEud6ZUwVppjR15Ed0WMkGZLI613ljY8AYG78XUi9vCJXm2Wbh3HhkHOn7jZ9
	 DhxWy/FXAOjNQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 10/12] phy: phy-mtk-dp: Add bitrate register val
 definitions to SoC data
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, vkoul@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, neil.armstrong@linaro.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260701122008.19509-11-angelogioacchino.delregno@collabora.com>
References: <20260701122008.19509-1-angelogioacchino.delregno@collabora.com>
 <20260701122008.19509-11-angelogioacchino.delregno@collabora.com>
Date: Wed, 01 Jul 2026 13:02:23 +0000
Message-Id: <20260701130223.CF9691F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIG10a19kcF9waHlfZGlz
YWJsZV9hbGxfbGFuZXMgbG9vcCBleGVjdXRlcyB1bmRlZmluZWQgYmVoYXZpb3Igd2hlbiB2YWwg
aXMgMCwgYW5kIGluY29ycmVjdGx5IGNsZWFycyBsYW5lIGJpdHMgdXNpbmcgdGhlIGxhbmUgaW5k
ZXggaW5zdGVhZCBvZiBhIGJpdG1hc2suCi0tCgpjb21taXQgMjVjZGQ1MWJkMWFjNGQ2OWE0OWU3
N2Q5M2E2YjEzNzRiYTQ2ZGQzYwpBdXRob3I6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxh
bmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+CgpwaHk6IHBoeS1tdGstZHA6
IFN1cHBvcnQgc2V0X2xhbmVzIGluIGNvbmZpZ3VyZSBhbmQgcHJvcGVybHkgY2xlYW51cAoKQWRk
IHN1cHBvcnQgZm9yIGVuYWJsaW5nIGEgc3BlY2lmaWNhbGx5IHJlcXVlc3RlZCBudW1iZXIgb2Yg
bGFuZXMgaW4gdGhlCmNvbmZpZ3VyZSBjYWxsYmFjaywgYW5kIGRpc2FibGUgYWxsIGxhbmVzIGlu
IHBvd2VyIG9mZiBhbmQgcmVzZXQKY2FsbGJhY2tzIGZvciBwcm9wZXIgaGFyZHdhcmUgY2xlYW51
cC4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstZHAuYyBiL2Ry
aXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstZHAuYwo+IGluZGV4IDU4NmU3Mjc5NTYzMzIuLmEy
Y2QyMmI5ZGEwNjYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1k
cC5jCj4gKysrIGIvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1kcC5jClsgLi4uIF0KPiBA
QCAtMjYxLDYgKzI2NywzNSBAQCBzdGF0aWMgaW50IG10a19kcF9waHlfcG93ZXJfb24oc3RydWN0
IHBoeSAqcGh5KQo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbnQgbXRrX2RwX3Bo
eV9kaXNhYmxlX2FsbF9sYW5lcyhzdHJ1Y3QgbXRrX2RwX3BoeSAqZHBfcGh5KQo+ICt7Cj4gKwlj
b25zdCBzdHJ1Y3QgbXRrX2RwX3BoeV9wZGF0YSAqcGRhdGEgPSBkcF9waHktPnBkYXRhOwo+ICsJ
Y29uc3QgdTggKnJlZ3MgPSBwZGF0YS0+cmVnc19kaWdfZ2xiOwo+ICsJaW50IHJldDsKPiArCXUz
MiB2YWw7Cj4gKwo+ICsJcmV0ID0gcmVnbWFwX3JlYWQoZHBfcGh5LT5yZWdtYXAsIHBkYXRhLT5v
ZmZfZGlnX2dsYiArIHJlZ3NbRFBfUEhZRF9UWF9DVExfMF0sICZ2YWwpOwo+ICsJaWYgKHJldCkK
PiArCQlyZXR1cm4gcmV0Owo+ICsKPiArCS8qIEdldCBtYXNrIG9mIGN1cnJlbnRseSBlbmFibGVk
IGxhbmUgKi8KPiArCXZhbCA9IEZJRUxEX0dFVChQSFlEX1RYX0xOX0VOLCB2YWwpOwo+ICsKPiAr
CS8qIERpc2FibGUgYWxsIGxhbmVzIChuZWVkcyB0byBiZSBkb25lIG9uZSBieSBvbmUsIGZyb20g
bGFzdCB0byBmaXJzdCkgKi8KPiArCWRvIHsKPiArCQl1MzIgbGFuZV9udW0gPSBmbHModmFsKSAt
IDE7CgpbU2V2ZXJpdHk6IEhpZ2hdCklmIG5vIGxhbmVzIGFyZSBjdXJyZW50bHkgZW5hYmxlZCwg
dmFsIHdpbGwgYmUgMC4gRG9lcyB0aGlzIGNhdXNlIGZscygwKSAtIDEKdG8gdW5kZXJmbG93LCBs
ZWFkaW5nIHRvIHVuZGVmaW5lZCBiZWhhdmlvciB3aGVuIGNvbXB1dGluZyBCSVQobGFuZV9udW0p
PwoKPiArCQl2YWwgJj0gfkJJVChsYW5lX251bSk7Cj4gKwo+ICsJCXJldCA9IHJlZ21hcF9jbGVh
cl9iaXRzKGRwX3BoeS0+cmVnbWFwLAo+ICsJCQkJCXBkYXRhLT5vZmZfZGlnX2dsYiArIHJlZ3Nb
RFBfUEhZRF9UWF9DVExfMF0sCj4gKwkJCQkJRklFTERfUFJFUChQSFlEX1RYX0xOX0VOLCBsYW5l
X251bSkpOwoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRoaXMgaW5jb3JyZWN0bHkgY2xlYXIgYml0
cyB1c2luZyB0aGUgbGFuZSBpbmRleCBpbnN0ZWFkIG9mIGEgYml0bWFzaz8KCkZvciBleGFtcGxl
LCBpZiBsYW5lIDMgaXMgYmVpbmcgZGlzYWJsZWQgKGxhbmVfbnVtID09IDMpLCB0aGlzIHBhc3Nl
cyAzIHRvCkZJRUxEX1BSRVAgaW5zdGVhZCBvZiBCSVQoMykuIFRoaXMgd291bGQgY2xlYXIgbGFu
ZXMgMCBhbmQgMSAoMyA8PCA0KSB3aGlsZQpsZWF2aW5nIGxhbmUgMyBlbmFibGVkLiBTaG91bGQg
dGhpcyB1c2UgQklUKGxhbmVfbnVtKSBpbnN0ZWFkPwoKPiArCQlpZiAocmV0KQo+ICsJCQlyZXR1
cm4gcmV0Owo+ICsJfSB3aGlsZSAodmFsKTsKPiArCj4gKwlyZXR1cm4gMDsKPiArfQpbIC4uLiBd
CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0
LzIwMjYwNzAxMTIyMDA4LjE5NTA5LTEtYW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJv
cmEuY29tP3BhcnQ9MTAKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
