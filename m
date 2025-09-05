Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14F67CA0FED
	for <linux-phy@archiver.kernel.org>; Fri,  5 Sep 2025 08:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RDTS24jBpauvlkcNG8KfZY2zLxopJIDVf/OjvQtYGaw=; b=UF668xcsrzWjo0
	ZhLtE3yZBTYpxHoSeKXaAcnOXssAWQH5Oo25xF97LqsG4bdACAEF7UZI4VbEfI1v0W0Eptzh8qMaf
	0uhrB3/EmRB2ChbuCevmxDKi3U4vy/xWoJK/6jvYEN2jNUuUFxFRqRLAa6Gq63oUCMjb79vgajd57
	xqKDC0PQ98nInNG0ttARal/N1T2e23QDGSUChuSetO4xCWPC4+Xm9luH7ZU4+wgIZBbOdUYpPDdpg
	P9nlJYnCo0AMhFlgjDo1jnSVFJTBhqOqBjnCTPN4gW5Adg1rBRQoGFL/BJ3+QUNwMO5Yh55kVzNXp
	HWV6HrzJYjsF1jOpY6AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuS70-00000000TjN-384p;
	Fri, 05 Sep 2025 08:48:02 +0000
Received: from azure-sdnproxy.icoremail.net ([52.229.205.26])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuQnD-0000000HaBE-3qbf
	for linux-phy@lists.infradead.org;
	Fri, 05 Sep 2025 07:23:34 +0000
Received: from luyulin$eswincomputing.com ( [10.12.96.77] ) by
 ajax-webmail-app2 (Coremail) ; Fri, 5 Sep 2025 15:23:20 +0800 (GMT+08:00)
X-Originating-IP: [10.12.96.77]
Date: Fri, 5 Sep 2025 15:23:20 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: luyulin@eswincomputing.com
To: "Krzysztof Kozlowski" <krzk@kernel.org>, cassel@kernel.org,
	robh@kernel.org
Cc: "Niklas Cassel" <cassel@kernel.org>, dlemoal@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-ide@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	vkoul@kernel.org, kishon@kernel.org, linux-phy@lists.infradead.org,
	ningyu@eswincomputing.com, zhengyu@eswincomputing.com,
	linmin@eswincomputing.com, huangyifeng@eswincomputing.com,
	fenglin@eswincomputing.com, lianghujun@eswincomputing.com
Subject: Re: Re: [PATCH v3 1/3] dt-bindings: ata: eswin: Document for
 EIC7700 SoC ahci
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2024.2-cmXT6 build
 20241203(6b039d88) Copyright (c) 2002-2025 www.mailtech.cn
 mispb-72143050-eaf5-4703-89e0-86624513b4ce-eswincomputing.com
In-Reply-To: <5f6bc8da-ac78-4f21-8f9f-c84f213f60a9@kernel.org>
References: <20250904063427.1954-1-luyulin@eswincomputing.com>
 <20250904063718.421-1-luyulin@eswincomputing.com>
 <8489c13b-6810-480c-9894-bb5c80cfbde0@kernel.org> <aLlYkZWBaI5Yz6fo@ryzen>
 <5f6bc8da-ac78-4f21-8f9f-c84f213f60a9@kernel.org>
MIME-Version: 1.0
Message-ID: <7206383a.d98.19918c22570.Coremail.luyulin@eswincomputing.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: TQJkCgAXt5Xoj7poDeXIAA--.24640W
X-CM-SenderInfo: pox13z1lq6v25zlqu0xpsx3x1qjou0bp/1tbiAgEQA2i5v1ESawAB
	sX
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_002332_269415_C859B5E0 
X-CRM114-Status: GOOD (  20.93  )
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

SGVsbG8gS3J6eXN6dG9mLCBOaWtsYXMsIFJvYiwKClRoYW5rIHlvdSB2ZXJ5IG11Y2ggZm9yIHlv
dXIgc3VnZ2VzdGlvbnMgYW5kIHJlcGx5LgoKPiAKPiBPbiAwNC8wOS8yMDI1IDExOjE0LCBOaWts
YXMgQ2Fzc2VsIHdyb3RlOgo+ID4gSGVsbG8gS3J6eXN6dG9mLCBSb2IsCj4gPiAKPiA+IE9uIFRo
dSwgU2VwIDA0LCAyMDI1IGF0IDA5OjEwOjM0QU0gKzAyMDAsIEtyenlzenRvZiBLb3psb3dza2kg
d3JvdGU6Cj4gPj4+ICsKPiA+Pj4gKyAgcG9ydHMtaW1wbGVtZW50ZWQ6Cj4gPj4+ICsgICAgY29u
c3Q6IDEKPiA+Pgo+ID4+IEkgZG8gbm90IHNlZSBob3cgeW91IGFkZHJlc3NlZCByZXF1ZXN0IGFi
b3V0IGZpcm13YXJlLiBOb3RoaW5nIGNoYW5nZWQKPiA+PiBoZXJlLCBubyBleHBsYW5hdGlvbiBp
biB0aGUgY29tbWl0IG1zZy4KPiA+IAoKLi4uCgo+ID4gCj4gPiBBbnl3YXksIEkgcHJvdmlkZWQg
bXkgNTAgY2VudHMgaGVyZToKPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWlkZS9h
TEJVQzExNk1kSnFER0lKQGZsYXdmdWwub3JnLwo+ID4gCj4gPiAoSSB3b3VsZCBsaWtlIHRvIGFk
ZCB0aGF0IEkgdGhpbmsgaXQgaXMgdGhlIGRpc2FibGluZyBvZiBjbG9ja3MgYW5kCj4gPiByZWd1
bGF0b3JzIHRoYXQgY2F1c2VzIHRoZSByZWdpc3RlciB0byBiZSBjbGVhcmVkLCBzaW5jZSB3ZSBk
byBjYWxsCj4gPiBhaGNpX3BsYXRmb3JtX2Fzc2VydF9yc3RzKCkgZHVyaW5nIHRoZSBmaXJzdCBw
cm9iZSwgc28gaWYgaXQgd2FzIHRoZSByZXNldAo+ID4gdGhhdCBjbGVhcmVkIHRoZSByZWdpc3Rl
ciwgdGhlIGZpcnN0IHByb2JlIHNob3VsZCBhbHNvIG5vdCBoYXZlIHdvcmtlZC4pCj4gPiAKClRo
YW5rIHlvdSB2ZXJ5IG11Y2ggZm9yIHlvdXIgZXhwbGFuYXRpb24uIFRvIGFkZCBzb21lIGNvbnRl
eHQ6CkluIG91ciBzeXN0ZW0sIHRoZcKgcG9ydHMtaW1wbGVtZW50ZWTCoHJlZ2lzdGVyIGhhcyBh
bHJlYWR5IGJlZW4gY29uZmlndXJlZCBieSB0aGUgZmlybXdhcmUKKHdoaWNoIGlzIFUtQm9vdCBv
biB0aGUgSGlGaXZlIFByZW1pZXIgUDU1MCBib2FyZCkuClRoZXJlZm9yZSwgd2hlbiBlbnRlcmlu
Z8KgdGhlIGtlcm5lbCwgdGhlIHZhbHVlIG9mIHRoaXMgcmVnaXN0ZXIgaXMgY29ycmVjdGx5IHNl
dCB0byAweDEuCgpEdXJpbmcgcHJvYmUswqBhaGNpX3BsYXRmb3JtX2VuYWJsZV9yZXNvdXJjZXPC
oOKGksKgYWhjaV9wbGF0Zm9ybV9kZWFzc2VydF9yc3RzwqBpcyBjYWxsZWQuCkFuZCB3aGVuIHRo
ZSBkcml2ZXIgaXMgcmVtb3ZlZCzCoGFoY2lfcGxhdGZvcm1fZGlzYWJsZV9yZXNvdXJjZXMK4oaS
wqBhaGNpX3BsYXRmb3JtX2Fzc2VydF9yc3RzwqBpcyB0cmlnZ2VyZWQuClRoaXMgcmVzZXQgb3Bl
cmF0aW9uIGNhdXNlcyB0aGUgcmVnaXN0ZXIgdG8gYmUgcmVzdG9yZWQgdG8gMC4KQWNjb3JkaW5n
IHRvIHRoZSBJUCBkYXRhYm9vaywgdGhpcyByZWdpc3RlciBpcyBpbmRlZWQgc2V0IHRvIDAgYWZ0
ZXIgcmVzZXQuCgpUaGlzIGlzIG15IHVuZGVyc3RhbmRpbmcuIEknZCBncmVhdGx5IGFwcHJlY2lh
dGUgaXQgaWYgeW91IHBvaW50IG91dCBhbnkgaXNzdWVzLgoKPiA+IAo+ID4gTm90IHN1cmUgaWYg
aXQgcmVsZXZhbnQgdG8gbWVudGlvbiB0aGlzIHJlcGx5IHRvIFJvYidzIHJldmlldyBjb21tZW50
IGluIHRoZQo+ID4gY29tbWl0IG1lc3NhZ2UsIGJ1dCBwZXJoYXBzIGl0IHNob3VsZCBoYXZlIGJl
ZW4gbWVudGlvbmVkIGluIHRoZSBjaGFuZ2UgbG9nLgo+IAo+IFJldmlld2VyIHF1ZXN0aW9ucyBm
b3IgbW9yZSBzZXJpb3VzIHN0dWZmIGhhcHBlbiBmb3IgYSByZWFzb24sIHNvIHdoZW4KPiBkaXNj
dXNzaW9uIGlzIHJlc29sdmVkIHNvbWVob3cgZGlmZmVyZW50bHkgdGhhbiByZXZpZXdlciBzdWdn
ZXN0ZWQsIGl0Cj4gcHJldHR5IG9mdGVuIGRlc2VydmVzIGV4cGxhbmF0aW9uIGluIGNvbW1pdCBt
c2cuCj4gCj4gV2VsbCwgaW4gY2hhbmdlbG9nIGFzIGFic29sdXRlIG1pbmltdW0uIE5vIGV4cGxh
bmF0aW9uIGhhcHBlbmVkIGhlcmUgaW4KPiB0aGUgY2hhbmdlbG9nLCBub3IgaW4gdGhlIGNvbW1p
dCBtc2cuCgpUaGFuayB5b3UgdmVyeSBtdWNoIGZvciB5b3VyIHN1Z2dlc3Rpb24uCkknbGwgYWRk
IGV4cGxhbmF0aW9ucyBpbiB0aGUgY29tbWl0IG1lc3NhZ2UgYW5kIGNoYW5nZWxvZ3MgZm9yIHRo
ZSBuZXh0IHBhdGNoLgoKQmVzdCByZWdhcmRzLApZdWxpbgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
