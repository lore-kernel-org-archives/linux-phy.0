Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00F15D4A609
	for <linux-phy@archiver.kernel.org>; Fri, 16 Jan 2026 08:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bm5ner/KuUgbXRMnb12YcV2Sx5rBRfcpROl0M4NUdlw=; b=b1tZ/93XeKjfrp
	aZ92LrILvWMkICGfkKpw3zSsVo4UQk7zj5eSMjo4MNyyv6/mtno/tdUjBCiQCbrk/cB2EYqQBDj1D
	JMrrUaGKGbqF1/t+OueNa7c3QAskdc+0dTiUdNKOgQvLj84yZy9k2Ko9M1Pe+x5BGXIXQCFEKdy0D
	sGsWS8O9FAU+4SS1khsetNTIC0L7JGnXULh1UpdRfDP4uRn6brcJ/7kiQRfBb9glQXRvYiAYoLgpQ
	QZ8Q4cjPoMbqx5wm/YhQgJSZzPFh3XWE3MVVWjnKs0Li5NTeoj3CkOXSFNoS26psmHnehxzoedtTs
	riTrG3VoKHdEhk0w77yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgfXF-0000000DnCY-2sqz;
	Fri, 16 Jan 2026 08:50:25 +0000
Received: from zg8tmja2lje4os4yms4ymjma.icoremail.net ([206.189.21.223])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgfXB-0000000DnBf-38Jg
	for linux-phy@lists.infradead.org;
	Fri, 16 Jan 2026 08:50:24 +0000
Received: from luyulin$eswincomputing.com ( [10.12.96.77] ) by
 ajax-webmail-app2 (Coremail) ; Fri, 16 Jan 2026 16:50:11 +0800 (GMT+08:00)
X-Originating-IP: [10.12.96.77]
Date: Fri, 16 Jan 2026 16:50:11 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: "Yulin Lu" <luyulin@eswincomputing.com>
To: "Vinod Koul" <vkoul@kernel.org>
Cc: neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, p.zabel@pengutronix.de,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, ningyu@eswincomputing.com,
	zhengyu@eswincomputing.com, linmin@eswincomputing.com,
	huangyifeng@eswincomputing.com, fenglin@eswincomputing.com,
	lianghujun@eswincomputing.com
Subject: Re: Re: [PATCH v7 2/2] phy: eswin: Create eswin directory and add
 EIC7700 SATA PHY driver
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2024.2-cmXT6 build
 20241203(6b039d88) Copyright (c) 2002-2026 www.mailtech.cn
 mispb-72143050-eaf5-4703-89e0-86624513b4ce-eswincomputing.com
In-Reply-To: <aWeH5fn8nGOzjDpP@vaman>
References: <20260106062944.1529-1-luyulin@eswincomputing.com>
 <20260106063309.241-1-luyulin@eswincomputing.com> <aWeH5fn8nGOzjDpP@vaman>
MIME-Version: 1.0
Message-ID: <133c22d5.2674.19bc5ff735f.Coremail.luyulin@eswincomputing.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: TQJkCgCH+y3D+2lpxd8BAA--.482W
X-CM-SenderInfo: pox13z1lq6v25zlqu0xpsx3x1qjou0bp/1tbiAQEJA2lpFosaogAA
	sv
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_005022_041706_AAA97B53 
X-CRM114-Status: GOOD (  10.84  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

PiA+ICtzdGF0aWMgaW50IGVpYzc3MDBfc2F0YV9waHlfaW5pdChzdHJ1Y3QgcGh5ICpwaHkpCj4g
PiArewo+ID4gKwlzdHJ1Y3QgZWljNzcwMF9zYXRhX3BoeSAqc2F0YV9waHkgPSBwaHlfZ2V0X2Ry
dmRhdGEocGh5KTsKPiA+ICsJdTMyIHZhbDsKPiA+ICsJaW50IHJldDsKPiA+ICsKPiA+ICsJcmV0
ID0gY2xrX3ByZXBhcmVfZW5hYmxlKHNhdGFfcGh5LT5jbGspOwo+ID4gKwlpZiAocmV0KQo+ID4g
KwkJcmV0dXJuIHJldDsKPiA+ICsKPiA+ICsJcmVnbWFwX3dyaXRlKHNhdGFfcGh5LT5yZWdtYXAs
IFNBVEFfUkVGX0NUUkwxLCBTQVRBX0NMS19SU1RfU09VUkNFX1BIWSk7Cj4gPiArCj4gPiArCXZh
bCA9IEZJRUxEX1BSRVAoU0FUQV9QMF9QSFlfVFhfQU1QTElUVURFX0dFTjFfTUFTSywgMHg0Mikg
fAo+ID4gKwkgICAgICBGSUVMRF9QUkVQKFNBVEFfUDBfUEhZX1RYX0FNUExJVFVERV9HRU4yX01B
U0ssIDB4NDYpIHwKPiA+ICsJICAgICAgRklFTERfUFJFUChTQVRBX1AwX1BIWV9UWF9BTVBMSVRV
REVfR0VOM19NQVNLLCAweDczKTsKPiA+ICsJcmVnbWFwX3dyaXRlKHNhdGFfcGh5LT5yZWdtYXAs
IFNBVEFfUEhZX0NUUkwwLCB2YWwpOwo+ID4gKwo+ID4gKwl2YWwgPSBGSUVMRF9QUkVQKFNBVEFf
UDBfUEhZX1RYX1BSRUVNUEhfR0VOMV9NQVNLLCAweDUpIHwKPiA+ICsJICAgICAgRklFTERfUFJF
UChTQVRBX1AwX1BIWV9UWF9QUkVFTVBIX0dFTjJfTUFTSywgMHg1KSB8Cj4gPiArCSAgICAgIEZJ
RUxEX1BSRVAoU0FUQV9QMF9QSFlfVFhfUFJFRU1QSF9HRU4zX01BU0ssIDB4OCk7Cj4gCj4gV2hl
cmUgYXJlIHRoZSBtYWdpYyB2YWx1ZXMgeW91IGFyZSB3cml0aW5nIGNvbWluZyBmcm9tLi4/Cj4g
CgpIaSBWaW5vZCwKClRoZXNlIHZhbHVlcyBzZXQgdGhlIFRYIHByZWVtcGhhc2lzIGFuZCBhbXBs
aXR1ZGUgcGFyYW1ldGVycyBmb3IgdGhlIFNBVEEgUEhZLgpUaGUgYWN0dWFsIG51bWJlcnMgY29t
ZSBmcm9tIGV5ZeKAkWRpYWdyYW0gdHVuaW5nIHJlc3VsdHMgb24gZGlmZmVyZW50IGhhcmR3YXJl
CmRldmVsb3BtZW50IGJvYXJkcy4KVGhlIGN1cnJlbnQgY29kZSByZWZsZWN0cyB0aGUgc2V0dGlu
Z3MgZm9yIHRoZSBTaWZpdmUgSGlGaXZlIFByZW1pZXIgUDU1MCBib2FyZC4KSW4gdGhlIG5leHQg
cGF0Y2ggSSBwbGFuIHRvIG1vdmUgdGhlc2UgaW50byB0aGUgZGV2aWNldHJlZSAoRFRTKS4KV291
bGQgdGhhdCBiZSBhY2NlcHRhYmxlPwoKPiA+ICsJcmVnbWFwX3dyaXRlKHNhdGFfcGh5LT5yZWdt
YXAsIFNBVEFfUEhZX0NUUkwxLCB2YWwpOwo+ID4gKwo+ID4gKwl2YWwgPSBGSUVMRF9QUkVQKFNB
VEFfTE9TX0xFVkVMX01BU0ssIDB4OSkgfAo+ID4gKwkgICAgICBGSUVMRF9QUkVQKFNBVEFfTE9T
X0JJQVNfTUFTSywgMHgyKTsKPiA+ICsJcmVnbWFwX3dyaXRlKHNhdGFfcGh5LT5yZWdtYXAsIFNB
VEFfTE9TX0lERU4sIHZhbCk7Cj4gPiArCj4gPiArCXZhbCA9IFNBVEFfTV9DU1lTUkVRIHwgU0FU
QV9TX0NTWVNSRVE7Cj4gPiArCXJlZ21hcF93cml0ZShzYXRhX3BoeS0+cmVnbWFwLCBTQVRBX0FY
SV9MUF9DVFJMLCB2YWwpOwo+ID4gKwo+ID4gKwl2YWwgPSBTQVRBX1JFRl9SRVBFQVRDTEtfRU4g
fCBTQVRBX1JFRl9VU0VfUEFEOwo+ID4gKwlyZWdtYXBfd3JpdGUoc2F0YV9waHktPnJlZ21hcCwg
U0FUQV9SRUZfQ1RSTCwgdmFsKTsKPiA+ICsKPiA+ICsJdmFsID0gRklFTERfUFJFUChTQVRBX01Q
TExfTVVMVElQTElFUl9NQVNLLCAweDNjKTsKPiA+ICsJcmVnbWFwX3dyaXRlKHNhdGFfcGh5LT5y
ZWdtYXAsIFNBVEFfTVBMTF9DVFJMLCB2YWwpOwo+ID4gKwo+ID4gKwl1c2xlZXBfcmFuZ2UoMTUs
IDIwKTsKPiA+ICsKPiA+ICsJcmV0ID0gcmVzZXRfY29udHJvbF9kZWFzc2VydChzYXRhX3BoeS0+
cnN0KTsKPiA+ICsJaWYgKHJldCkKPiA+ICsJCWdvdG8gZGlzYWJsZV9jbGs7Cj4gPiArCj4gPiAr
CXJldCA9IHdhaXRfZm9yX3BoeV9yZWFkeShzYXRhX3BoeS0+cmVnbWFwLCBTQVRBX1AwX1BIWV9T
VEFULAo+ID4gKwkJCQkgU0FUQV9QMF9QSFlfUkVBRFksIDEpOwo+ID4gKwlpZiAocmV0IDwgMCkg
ewo+ID4gKwkJZGV2X2Vycigmc2F0YV9waHktPnBoeS0+ZGV2LCAiUEhZIFJFQURZIGNoZWNrIGZh
aWxlZFxuIik7Cj4gPiArCQlnb3RvIGRpc2FibGVfY2xrOwo+ID4gKwl9Cj4gPiArCj4gPiArCXJl
dHVybiAwOwo+ID4gKwo+ID4gK2Rpc2FibGVfY2xrOgo+ID4gKwljbGtfZGlzYWJsZV91bnByZXBh
cmUoc2F0YV9waHktPmNsayk7Cj4gPiArCXJldHVybiByZXQ7Cj4gPiArfQo+ID4gKwo+ID4gK3N0
YXRpYyBpbnQgZWljNzcwMF9zYXRhX3BoeV9leGl0KHN0cnVjdCBwaHkgKnBoeSkKPiA+ICt7Cj4g
PiArCXN0cnVjdCBlaWM3NzAwX3NhdGFfcGh5ICpzYXRhX3BoeSA9IHBoeV9nZXRfZHJ2ZGF0YShw
aHkpOwo+ID4gKwlpbnQgcmV0Owo+ID4gKwo+ID4gKwlyZXQgPSByZXNldF9jb250cm9sX2Fzc2Vy
dChzYXRhX3BoeS0+cnN0KTsKPiA+ICsJaWYgKHJldCkKPiA+ICsJCXJldHVybiByZXQ7Cj4gPiAr
Cj4gPiArCWNsa19kaXNhYmxlX3VucHJlcGFyZShzYXRhX3BoeS0+Y2xrKTsKPiA+ICsKPiA+ICsJ
cmV0dXJuIDA7Cj4gPiArfQo+ID4gKwo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcGh5X29wcyBl
aWM3NzAwX3NhdGFfcGh5X29wcyA9IHsKPiA+ICsJLmluaXQJCT0gZWljNzcwMF9zYXRhX3BoeV9p
bml0LAo+ID4gKwkuZXhpdAkJPSBlaWM3NzAwX3NhdGFfcGh5X2V4aXQsCj4gPiArCS5vd25lcgkJ
PSBUSElTX01PRFVMRSwKPiA+ICt9Owo+ID4gKwo+ID4gK3N0YXRpYyBpbnQgZWljNzcwMF9zYXRh
X3BoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gK3sKPiA+ICsJc3Ry
dWN0IGVpYzc3MDBfc2F0YV9waHkgKnNhdGFfcGh5Owo+ID4gKwlzdHJ1Y3QgcGh5X3Byb3ZpZGVy
ICpwaHlfcHJvdmlkZXI7Cj4gPiArCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4g
PiArCXN0cnVjdCByZXNvdXJjZSAqcmVzOwo+ID4gKwl2b2lkIF9faW9tZW0gKnJlZ3M7Cj4gPiAr
Cj4gPiArCXNhdGFfcGh5ID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCpzYXRhX3BoeSksIEdG
UF9LRVJORUwpOwo+ID4gKwlpZiAoIXNhdGFfcGh5KQo+ID4gKwkJcmV0dXJuIC1FTk9NRU07Cj4g
PiArCj4gPiArCXJlcyA9IHBsYXRmb3JtX2dldF9yZXNvdXJjZShwZGV2LCBJT1JFU09VUkNFX01F
TSwgMCk7Cj4gPiArCWlmICghcmVzKQo+ID4gKwkJcmV0dXJuIC1FTk9FTlQ7Cj4gPiArCj4gPiAr
CXJlZ3MgPSBkZXZtX2lvcmVtYXAoZGV2LCByZXMtPnN0YXJ0LCByZXNvdXJjZV9zaXplKHJlcykp
Owo+ID4gKwlpZiAoSVNfRVJSKHJlZ3MpKQo+ID4gKwkJcmV0dXJuIFBUUl9FUlIocmVncyk7Cj4g
Cj4gZGV2bV9wbGF0Zm9ybV9nZXRfYW5kX2lvcmVtYXBfcmVzb3VyY2UoKSBwbGVhc2UKPiAKCkFz
IGV4cGxhaW5lZCBpbiBteSDigJx2NiDihpIgdjXigJ0gY2hhbmdlcyBpbiB0aGUgY292ZXLigJFs
ZXR0ZXI6CuKAnE1hcCB0aGUgSS9PIHJlc291cmNlIHdpdGggcGxhdGZvcm1fZ2V0X3Jlc291cmNl
IGFuZCBkZXZtX2lvcmVtYXAKaW5zdGVhZCBvZiB0aGUgZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jl
c291cmNlIEFQSSwKYmVjYXVzZSB0aGUgYWRkcmVzcyByZWdpb24gb2YgdGhlIFNBVEHigJFQSFkg
ZmFsbHMgaW50byB0aGUgcmVnaW9uIG9mCnRoZSBIU1AgY2xvY2sgJiByZXNldCB0aGF0IGhhcyBh
bHJlYWR5IGJlZW4gb2J0YWluZWQgYnkgdGhlIEhTUApjbG9ja+KAkWFuZOKAkXJlc2V0IGRyaXZl
ci7igJ0KVGhlIEhTUCBjbG9jay1hbmQtcmVzZXQgZHJpdmVyIHVzZXPCoGRldm1fcGxhdGZvcm1f
Z2V0X2FuZF9pb3JlbWFwX3Jlc291cmNlKCksCm1lYW5pbmcgdGhpcyByZWdpb24gaGFzIGFscmVh
ZHkgYmVlbiByZXF1ZXN0ZWQuClRoZSBIU1AgY2xvY2stYW5kLXJlc2V0IGRyaXZlciBpcyBhbHNv
IGN1cnJlbnRseSBiZWluZyB1cHN0cmVhbWVkLgoKQmVzdCByZWdhcmRzLApZdWxpbiBMdQoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
