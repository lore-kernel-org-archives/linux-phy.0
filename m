Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3935C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 24 Feb 2022 15:13:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XnYcAVlu9dLECEYrTQvt5ycmByNhuEcrkY5xaddsKp8=; b=SMEK8Xrf9SLn5a
	6HYgqfISrnPxrNpRHjBhJnPjp/Xlj4AQSR/7GsLwiWUW5B+DPsW+5zwOAytrbbkU65RiDmNAces16
	wvvyKX1fELrGaHwiaCgSbmz9storoHwjNx/2aRXouQv3FHcYfIwG9NcA09IXNcr5QAiMYzA2o0pxc
	ZUExm4rBRJK6X8AKjt3k+O4ltb/yBcvvsBXYbMmON3Xw9O0qgyF1Zj5dpvCi1M21BgS5Lz6XzzYz/
	hjJa3+Hjx1jnVIBVhhmIXQF/3YwWlqxwMYb2LHxbrvBxsuRt6/rSAbc4BgPFJjVq+Bi8HFYPbaZ76
	Flgi5omR6kaLeZOW8poQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNFoC-001EOR-BI; Thu, 24 Feb 2022 15:13:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNFo9-001ENh-He
 for linux-phy@lists.infradead.org; Thu, 24 Feb 2022 15:13:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D89BF60FE9;
 Thu, 24 Feb 2022 15:13:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 737CFC340E9;
 Thu, 24 Feb 2022 15:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645715608;
 bh=NBGh6CGBDt4gsSu02IXrOMeIBE61lXM1zDERO6+Xm9A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ZR69KQipMZKfBv2H+S15VlNmmXK0m1fG1zmaioR/0eIiytve+yT1xrP0Y8l4ZeQFQ
 nEpL6HWXwOeSO915f39dW29R0pparj9Q05CGC64WP8t9wRefWvGpCJIKf/lp5YVGtm
 +Y8LLxvmXzvgqfU+Uc5jAmhp6AWjp+9Wo8iWR0D+avFx+curMois7TI/76NUUdNIFG
 5Ce2Kty7HMEfLkRO92jtg5Y+pAU6JuFcTawDHF810Qk53C1Lw9hg53/PvIByvf8C6K
 qGcibe/5odOvzl2CJUXXglwbNaV1UMwSdTPQ/26kar9arXuyzOQ8LS4XcFyH/UWZrp
 IjMkbOYEXuMjQ==
Date: Thu, 24 Feb 2022 16:13:24 +0100
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Jens Axboe <axboe@kernel.dk>
Cc: Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 pali@kernel.org
Subject: Re: [PATCH phy v4 3/5] Revert "ata: ahci: mvebu: Make SATA PHY
 optional for Armada 3720"
Message-ID: <20220224161324.6ac0061c@dellmb>
In-Reply-To: <20220203214444.1508-4-kabel@kernel.org>
References: <20220203214444.1508-1-kabel@kernel.org>
 <20220203214444.1508-4-kabel@kernel.org>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_071329_688685_9FD9280E 
X-CRM114-Status: GOOD (  19.88  )
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

RGVhciBKZW5zLAoKY291bGQgeW91IHBsZWFzZSBzZW5kIEFjayBmb3IgdGhpcyBwYXRjaD8KaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcGh5LzIwMjIwMjAzMjE0NDQ0LjE1MDgtNC1rYWJl
bEBrZXJuZWwub3JnLwoKSXQgaXMgYSByZXZlcnQgb2YgYW5vdGhlciBwYXRjaCB0aGF0IHdhcyBh
ZGRlZCBiZWNhdXNlIG9mIHBvdGVudGlhbApwcm9ibGVtcyBpbiBjb21waHkgZHJpdmVyLCBhbmQg
dGhlc2UgYXJlIG5vdyBzb2x2ZWQgYnkgdGhpcyBzZXJpZXMsIGJ1dApWaW5vZCBzYXlzIGhlIGNh
biBhcHBseSB0aGUgQVRBIHBhdGNoIGJ1dCBoZSBuZWVkcyB5b3VyIEFjay4KClRoYW5rcy4KCk1h
cmVrCgpPbiBUaHUsICAzIEZlYiAyMDIyIDIyOjQ0OjQyICswMTAwCk1hcmVrIEJlaMO6biA8a2Fi
ZWxAa2VybmVsLm9yZz4gd3JvdGU6Cgo+IEZyb206IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5v
cmc+Cj4gCj4gVGhpcyByZXZlcnRzIGNvbW1pdCA0NWFlZmUzZDIyNTFlNGUyMjlkNzY2MjA1Mjcz
OWY5NmFkMWQwOGQ5Lgo+IAo+IEFybWFkYSAzNzIwIFBIWSBkcml2ZXIgKHBoeS1tdmVidS1hMzcw
MC1jb21waHkuYykgZG9lcyBub3QgcmV0dXJuCj4gLUVPUE5PVFNVUFAgZnJvbSBwaHlfcG93ZXJf
b24oKSBjYWxsYmFjayBhbnltb3JlLgo+IAo+IFNvIHJlbW92ZSBBSENJX0hGTEFHX0lHTl9OT1RT
VVBQX1BPV0VSX09OIGZsYWcgZnJvbSBBcm1hZGEgMzcyMCBwbGF0IGRhdGEuCj4gCj4gQUhDSV9I
RkxBR19JR05fTk9UU1VQUF9QT1dFUl9PTiBpcyBub3QgdXNlZCBieSBhbnkgb3RoZXIgYWhjaSBk
cml2ZXIsIHNvCj4gcmVtb3ZlIHRoaXMgZmxhZyBjb21wbGV0ZWx5Lgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+Cj4gU2lnbmVkLW9mZi1ieTogTWFyZWsg
QmVow7puIDxrYWJlbEBrZXJuZWwub3JnPgo+IEFja2VkLWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1
ZWwucmF5bmFsQGJvb3RsaW4uY29tPgo+IC0tLQo+ICBkcml2ZXJzL2F0YS9haGNpLmggICAgICAg
ICAgICAgfCAyIC0tCj4gIGRyaXZlcnMvYXRhL2FoY2lfbXZlYnUuYyAgICAgICB8IDIgKy0KPiAg
ZHJpdmVycy9hdGEvbGliYWhjaV9wbGF0Zm9ybS5jIHwgMiArLQo+ICAzIGZpbGVzIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9hdGEvYWhjaS5oIGIvZHJpdmVycy9hdGEvYWhjaS5oCj4gaW5kZXggZWVhYzU0ODJmMWQxLi5h
NTdkOTBkZDQ5NjQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9hdGEvYWhjaS5oCj4gKysrIGIvZHJp
dmVycy9hdGEvYWhjaS5oCj4gQEAgLTI0MCw4ICsyNDAsNiBAQCBlbnVtIHsKPiAgCQkJCQkJCWFz
IGRlZmF1bHQgbHBtX3BvbGljeSAqLwo+ICAJQUhDSV9IRkxBR19TVVNQRU5EX1BIWVMJCT0gKDEg
PDwgMjYpLCAvKiBoYW5kbGUgUEhZcyBkdXJpbmcKPiAgCQkJCQkJCXN1c3BlbmQvcmVzdW1lICov
Cj4gLQlBSENJX0hGTEFHX0lHTl9OT1RTVVBQX1BPV0VSX09OCT0gKDEgPDwgMjcpLCAvKiBpZ25v
cmUgLUVPUE5PVFNVUFAKPiAtCQkJCQkJCWZyb20gcGh5X3Bvd2VyX29uKCkgKi8KPiAgCUFIQ0lf
SEZMQUdfTk9fU1hTCQk9ICgxIDw8IDI4KSwgLyogU1hTIG5vdCBzdXBwb3J0ZWQgKi8KPiAgCj4g
IAkvKiBhcC0+ZmxhZ3MgYml0cyAqLwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2F0YS9haGNpX212
ZWJ1LmMgYi9kcml2ZXJzL2F0YS9haGNpX212ZWJ1LmMKPiBpbmRleCAzYWQ0NmQyNmQ5ZDUuLmQ0
YmJhM2FjZTQ1ZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2F0YS9haGNpX212ZWJ1LmMKPiArKysg
Yi9kcml2ZXJzL2F0YS9haGNpX212ZWJ1LmMKPiBAQCAtMjI3LDcgKzIyNyw3IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgYWhjaV9tdmVidV9wbGF0X2RhdGEgYWhjaV9tdmVidV9hcm1hZGFfMzgwX3Bs
YXRfZGF0YSA9IHsKPiAgCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgYWhjaV9tdmVidV9wbGF0X2Rh
dGEgYWhjaV9tdmVidV9hcm1hZGFfMzcwMF9wbGF0X2RhdGEgPSB7Cj4gIAkucGxhdF9jb25maWcg
PSBhaGNpX212ZWJ1X2FybWFkYV8zNzAwX2NvbmZpZywKPiAtCS5mbGFncyA9IEFIQ0lfSEZMQUdf
U1VTUEVORF9QSFlTIHwgQUhDSV9IRkxBR19JR05fTk9UU1VQUF9QT1dFUl9PTiwKPiArCS5mbGFn
cyA9IEFIQ0lfSEZMQUdfU1VTUEVORF9QSFlTLAo+ICB9Owo+ICAKPiAgc3RhdGljIGNvbnN0IHN0
cnVjdCBvZl9kZXZpY2VfaWQgYWhjaV9tdmVidV9vZl9tYXRjaFtdID0gewo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2F0YS9saWJhaGNpX3BsYXRmb3JtLmMgYi9kcml2ZXJzL2F0YS9saWJhaGNpX3Bs
YXRmb3JtLmMKPiBpbmRleCAxODI5NjQ0M2NjYmEuLmIyNjc1NWJkYzlkNiAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2F0YS9saWJhaGNpX3BsYXRmb3JtLmMKPiArKysgYi9kcml2ZXJzL2F0YS9saWJh
aGNpX3BsYXRmb3JtLmMKPiBAQCAtNTksNyArNTksNyBAQCBpbnQgYWhjaV9wbGF0Zm9ybV9lbmFi
bGVfcGh5cyhzdHJ1Y3QgYWhjaV9ob3N0X3ByaXYgKmhwcml2KQo+ICAJCX0KPiAgCj4gIAkJcmMg
PSBwaHlfcG93ZXJfb24oaHByaXYtPnBoeXNbaV0pOwo+IC0JCWlmIChyYyAmJiAhKHJjID09IC1F
T1BOT1RTVVBQICYmIChocHJpdi0+ZmxhZ3MgJiBBSENJX0hGTEFHX0lHTl9OT1RTVVBQX1BPV0VS
X09OKSkpIHsKPiArCQlpZiAocmMpIHsKPiAgCQkJcGh5X2V4aXQoaHByaXYtPnBoeXNbaV0pOwo+
ICAJCQlnb3RvIGRpc2FibGVfcGh5czsKPiAgCQl9CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
