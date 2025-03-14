Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 438EBC35FF1
	for <linux-phy@archiver.kernel.org>; Fri, 14 Mar 2025 10:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KYGZWeKv46Xac1dr6WGR/5lnGaR/Q8HRj51Ye8qLpos=; b=da9zE+HwqBNs+c
	TsNbhmdjz3Pldqx0UUm3kC0ETbXMXH5QgopRuJUewilkizKjyGMjIroSs1o0/vZYmOLSXmdmj1e5d
	Ig1eAJlHTve460manirYe3w3pxZsN76ECVZy4Y5ZNH8/oPSQHljoqvYAoJCiNr+5mgGfYnLgmht3/
	rkTT10SGPtjr5ZR6Dyl/jV2OCyZVZ9e8Onktfe7AA2/p862B8EzqWYJagQUoRivmR5V0QvOvyAxcd
	6DTo7JO6kC6FVY3p0FRrmn3rTtnaIvt567Cq3iMn0+MPAp7HJ04ax2SpSTstSp3wUBXNapsQtVskj
	ShLKoqAoya7JCVS3yyUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt2fk-0000000DuNO-1zJN;
	Fri, 14 Mar 2025 10:53:48 +0000
Received: from aposti.net ([89.234.176.197])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt2Mn-0000000Drat-2HCM
	for linux-phy@lists.infradead.org;
	Fri, 14 Mar 2025 10:34:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1741948441;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=PLB72yBrnjeJPEtt8z5gtHuZmQOq1L7aHckynMuOnTs=;
	b=MJTQ72oXn60T/CmQ9vbivUp9quROQw9ffV67kynLB0IR2iqQ8ryTwFw8HKCJhDudQGsnWa
	sg3x77EaZ/7GdqW7LNjQQeJxCxGYrnPJ82j7D8e2QZja5bxlHrmkOtk8aIQu1VmRej0S6r
	g2AQKwz9Nbmg2apthC0TPxAcns/TCY0=
Message-ID: <c67e2ecbcdf481cddcc4c93716e38049e53d3e93.camel@crapouillou.net>
Subject: Re: [PATCH RESEND] phy: ingenic: fix unbalanced regulator_disable()
 warning
From: Paul Cercueil <paul@crapouillou.net>
To: "H. Nikolaus Schaller" <hns@goldelico.com>, Vinod Koul
 <vkoul@kernel.org>,  Kishon Vijay Abraham I	 <kishon@kernel.org>
Cc: Zhou Yanjie <zhouyanjie@wanyeetech.com>, linux-phy@lists.infradead.org, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Discussions about
 the Letux Kernel <letux-kernel@openphoenux.org>, 	kernel@pyra-handheld.com,
 linux-mips@vger.kernel.org
Date: Fri, 14 Mar 2025 11:33:00 +0100
In-Reply-To: <AF49A39E-0534-4ADC-8E50-606A636D167A@goldelico.com>
References: <96da5fe557f3b2501447358895bd78decc4633ef.1735482146.git.hns@goldelico.com>
	 <ab308c135c3ea5e050bbfb0b94a832c8d52d5380.camel@crapouillou.net>
	 <AF49A39E-0534-4ADC-8E50-606A636D167A@goldelico.com>
Autocrypt: addr=paul@crapouillou.net; prefer-encrypt=mutual;
 keydata=mQENBF0KhcEBCADkfmrzdTOp/gFOMQX0QwKE2WgeCJiHPWkpEuPH81/HB2dpjPZNW03ZM
 LQfECbbaEkdbN4YnPfXgcc1uBe5mwOAPV1MBlaZcEt4M67iYQwSNrP7maPS3IaQJ18ES8JJ5Uf5Uz
 FZaUawgH+oipYGW+v31cX6L3k+dGsPRM0Pyo0sQt52fsopNPZ9iag0iY7dGNuKenaEqkYNjwEgTtN
 z8dt6s3hMpHIKZFL3OhAGi88wF/21isv0zkF4J0wlf9gYUTEEY3Eulx80PTVqGIcHZzfavlWIdzhe
 +rxHTDGVwseR2Y1WjgFGQ2F+vXetAB8NEeygXee+i9nY5qt9c07m8mzjABEBAAG0JFBhdWwgQ2VyY
 3VlaWwgPHBhdWxAY3JhcG91aWxsb3UubmV0PokBTgQTAQoAOBYhBNdHYd8OeCBwpMuVxnPua9InSr
 1BBQJdCoXBAhsDBQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJEHPua9InSr1BgvIH/0kLyrI3V0f
 33a6D3BJwc1grbygPVYGuC5l5eMnAI+rDmLR19E2yvibRpgUc87NmPEQPpbbtAZt8On/2WZoE5OIP
 dlId/AHNpdgAtGXo0ZX4LGeVPjxjdkbrKVHxbcdcnY+zzaFglpbVSvp76pxqgVg8PgxkAAeeJV+ET
 4t0823Gz2HzCL/6JZhvKAEtHVulOWoBh368SYdolp1TSfORWmHzvQiCCCA+j0cMkYVGzIQzEQhX7U
 rf9N/nhU5/SGLFEi9DcBfXoGzhyQyLXflhJtKm3XGB1K/pPulbKaPcKAl6rIDWPuFpHkSbmZ9r4KF
 lBwgAhlGy6nqP7O3u7q23hRU=
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_033414_048031_3C9B5319 
X-CRM114-Status: GOOD (  20.60  )
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

Vmlub2QsIGNhbiB5b3UgdGFrZSB0aGlzPwoKQ2hlZXJzLAotUGF1bAoKCkxlIG1lcmNyZWRpIDI2
IGbDqXZyaWVyIDIwMjUgw6AgMjE6NTQgKzAxMDAsIEguIE5pa29sYXVzIFNjaGFsbGVyIGEKw6lj
cml0wqA6Cj4gSGksCj4gCj4gSSBqdXN0IHdvbmRlciBpZiBhbnlvbmUgaXMgcGlja2luZyB0aGlz
IHVwPwo+IAo+IFRoZXJlIHNlZW1zIHRvIGJlIG5vIE1BSU5UQUlORVIgc3BlY2lmaWMgZm9yIGRy
aXZlcnMvcGh5L2luZ2VuaWMuCj4gCj4gQlIsCj4gTmlrb2xhdXMKPiAKPiA+IEFtIDAyLjAxLjIw
MjUgdW0gMTM6NTMgc2NocmllYiBQYXVsIENlcmN1ZWlsCj4gPiA8cGF1bEBjcmFwb3VpbGxvdS5u
ZXQ+Ogo+ID4gCj4gPiBIaSBOaWtvbGF1cywKPiA+IAo+ID4gTGUgZGltYW5jaGUgMjkgZMOpY2Vt
YnJlIDIwMjQgw6AgMTU6MjIgKzAxMDAsIEguIE5pa29sYXVzIFNjaGFsbGVyIGEKPiA+IMOpY3Jp
dCA6Cj4gPiA+IGlmIGluZ2VuaWNfdXNiX3BoeV9leGl0IGlzIGNhbGxlZCB0aGUgcmVndWxhdG9y
IGlzIGFscmVhZHkKPiA+ID4gZGlzYWJsZWQKPiA+ID4gdGhyb3VnaCBpbmdlbmljX3VzYl9waHlf
cG93ZXJfb2ZmKCkgbGVhZGluZyB0bwo+ID4gPiAKPiA+ID4gW8KgwqDCoCA1LjM2NzMwMV0gV0FS
TklORzogQ1BVOiAwIFBJRDogMjAgYXQKPiA+ID4gZHJpdmVycy9yZWd1bGF0b3IvY29yZS5jOjI5
NTMgX3JlZ3VsYXRvcl9kaXNhYmxlKzB4MjAwLzB4MjMwCj4gPiA+IFvCoMKgwqAgNS4zNjgyMDld
IHVuYmFsYW5jZWQgZGlzYWJsZXMgZm9yIHJlZ3VsYXRvci1kdW1teQo+ID4gPiBbwqDCoMKgIDUu
MzcwMzY0XSBNb2R1bGVzIGxpbmtlZCBpbjogcGh5X2luZ2VuaWNfdXNiCj4gPiA+IC4uLgo+ID4g
PiBbwqDCoMKgIDUuMzczNDQxXSBbPDgwNTQ2MDFjPl0gcmVndWxhdG9yX2Rpc2FibGUrMHg0MC8w
eDgwCj4gPiA+IFvCoMKgwqAgNS4zNzI5NTJdIFs8YzAyNDUwZjg+XSBpbmdlbmljX3VzYl9waHlf
ZXhpdCsweDQ4LzB4NjAKPiA+ID4gW3BoeV9pbmdlbmljX3VzYl0KPiA+ID4gW8KgwqDCoCA1LjM3
NDI4M10gWzw4MDUwODM5Yz5dIHBoeV9leGl0KzB4ZDgvMHgxMDQKPiA+ID4gW8KgwqDCoCA1LjM3
MzEwNF0gWzw4MDY1N2EyND5dIF9fZHdjMl9sb3dsZXZlbF9od19kaXNhYmxlKzB4ZTAvMHhlOAo+
ID4gPiBbwqDCoMKgIDUuMzczMzkzXSBbPDgwNjU4YWQ0Pl0gZHdjMl9kcml2ZXJfcHJvYmUrMHg4
MTgvMHg4MzQKPiA+ID4gLi4uCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBILiBOaWtvbGF1
cyBTY2hhbGxlciA8aG5zQGdvbGRlbGljby5jb20+Cj4gPiAKPiA+IExvb2tzIGdvb2QgdG8gbWUu
IFRoZSByZWd1bGF0b3IgaXMgbm90IGVuYWJsZWQgaW4KPiA+IGluZ2VuaWNfdXNiX3BoeV9pbml0
KCksIHNvIGl0IHNob3VsZCBub3QgYmUgZGlzYWJsZWQgaW4KPiA+IGluZ2VuaWNfdXNiX3BoeV9l
eGl0KCkuCj4gPiAKPiA+IFJldmlld2VkLWJ5OiBQYXVsIENlcmN1ZWlsIDxwYXVsQGNyYXBvdWls
bG91Lm5ldD4KPiA+IAo+ID4gQ2hlZXJzLAo+ID4gLVBhdWwKPiA+IAo+ID4gCj4gPiA+IC0tLQo+
ID4gPiAKPiA+ID4gTm90ZXM6Cj4gPiA+IMKgwqDCoCBSZXNlbnQgYmVjYXVzZSBsaW51eC1taXBz
QHZnZXIua2VybmVsLm9yZ8Kgd2FzIG5vdAo+ID4gPiBhdXRvbWF0aWNhbGx5Cj4gPiA+IGFkZGVk
IGJ5Cj4gPiA+IMKgwqDCoCBnZXRfbWFpbnRhaW5lci5wbCAoZHJpdmVycy9waHkvaW5nZW5pYyBt
aXNzaW5nIGluIE1BSU5UQUlORVJTCj4gPiA+IHJlY29yZD8pCj4gPiA+IAo+ID4gPiDCoGRyaXZl
cnMvcGh5L2luZ2VuaWMvcGh5LWluZ2VuaWMtdXNiLmMgfCAxIC0KPiA+ID4gwqAxIGZpbGUgY2hh
bmdlZCwgMSBkZWxldGlvbigtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5
L2luZ2VuaWMvcGh5LWluZ2VuaWMtdXNiLmMKPiA+ID4gYi9kcml2ZXJzL3BoeS9pbmdlbmljL3Bo
eS1pbmdlbmljLXVzYi5jCj4gPiA+IGluZGV4IGViMjcyMWY3MmE0YzEuLjM1OTg0ZGQ4YTFiZDcg
MTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvcGh5L2luZ2VuaWMvcGh5LWluZ2VuaWMtdXNiLmMK
PiA+ID4gKysrIGIvZHJpdmVycy9waHkvaW5nZW5pYy9waHktaW5nZW5pYy11c2IuYwo+ID4gPiBA
QCAtMTI0LDcgKzEyNCw2IEBAIHN0YXRpYyBpbnQgaW5nZW5pY191c2JfcGh5X2V4aXQoc3RydWN0
IHBoeQo+ID4gPiAqcGh5KQo+ID4gPiDCoCBzdHJ1Y3QgaW5nZW5pY191c2JfcGh5ICpwcml2ID0g
cGh5X2dldF9kcnZkYXRhKHBoeSk7Cj4gPiA+IMKgCj4gPiA+IMKgIGNsa19kaXNhYmxlX3VucHJl
cGFyZShwcml2LT5jbGspOwo+ID4gPiAtIHJlZ3VsYXRvcl9kaXNhYmxlKHByaXYtPnZjY19zdXBw
bHkpOwo+ID4gPiDCoAo+ID4gPiDCoCByZXR1cm4gMDsKPiA+ID4gwqB9Cj4gCj4gCgoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
