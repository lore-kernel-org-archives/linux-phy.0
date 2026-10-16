Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5585BCCA462
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 09:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xXvQUYQq/V4WFnYPIPJ3BW4/Hh49gfF6YVGeqZmBW9M=; b=XCtoHOxJW8ilED
	Gd9l6K8R4seBVIKFx34QkHTac9Jv7Bsumw6WEbEDiNrEnjTXIEI2/L8sWVCpr/EbgaBi4meFMPQ5k
	NEEEgNtn1vEI3mfs/n/qAsv14X70hRKeZSEJfr/klUulIDEWlRPzDLD+fEwNo0Y4+yBrdq/LpnZt6
	w8w1b2G9lYfWL2z8yjH5ypFjVmVv9smSWZ91l2u/lGDDWw4AOZCtg2NY3b95dYEfp7GFfQj2XEhGu
	3XUi4dB9TQVI+gJxfXyQxxtbVBNQpnDl6kN00E5dRIjJMct0h8MI5LSoD0iA57MdV7H/Z1xog1dX+
	gseq4Qp6j9zRx/5fh95A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdwj-00000002R4a-0Cb2;
	Fri, 16 Oct 2026 09:09:49 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdwh-00000002R4Q-35yF
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 09:09:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 371B943F13;
	Fri, 16 Oct 2026 09:09:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0AA11F000C5;
	Fri, 16 Oct 2026 09:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792141787;
	bh=au5NZ+uww3QWwRsPTibFWYI4OmwUlU9DRbnVjOMpM94=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mK4P8GvTaB9JQANCXJvbCOgytSroeCfQBVFJiKMamobKbpzqSsUAEq+z6v6/uW88d
	 5l/D3oi6bnTb7yGyPIsWk7I1mR22YcEqDpvIWodIJq74G6FGPgzNccP+yVZoEvOf8N
	 v9K4X+GCqelXKaz7UNjy6ZHNAm06uUUenISpmuQXs6pThlyBL2kKI4cAZIWr9lans+
	 NNVDsHuhMxznG8ltVn67NqwgZYrFTxYRP0t9WSnc5/siX5qUUoS6zNwDoMHttRH7gq
	 Ac1Imyr6/TVW0515oh/5Ftqyl+1UwJX3zE4okg8TR0CJ0kp1AnH1NOCWuENNoDgaQT
	 jB0XYbn8hiuVA==
Message-ID: <sashiko-outbox-174059@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 3/8] phy: rockchip-samsung-dcphy: Move block-level
 setup to runtime resume
To: "Jason Yang" <jason98166@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261016-dcphy-rx-v1-v5-3-e63b49eabe2d@gmail.com>
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
 <20261016-dcphy-rx-v1-v5-3-e63b49eabe2d@gmail.com>
Date: Fri, 16 Oct 2026 09:09:46 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiBkY3BoeTog
UExMIGxlZnQgZW5hYmxlZCBvbiBsb2NrIGZhaWx1cmUsIHByZXZlbnRpbmcgcmVjb3ZlcnkKLS0K
CmNvbW1pdCAwNDM2YmZlNTUyMmEzMWVmNjU3MjRiNzFkZDJmNjgzZjAxZWJlYWExCkF1dGhvcjog
SmFzb24gWWFuZyA8amFzb245ODE2NkBnbWFpbC5jb20+CgpwaHk6IHJvY2tjaGlwLXNhbXN1bmct
ZGNwaHk6IE1vdmUgYmxvY2stbGV2ZWwgc2V0dXAgdG8gcnVudGltZSByZXN1bWUKClRoaXMgY29t
bWl0IG1vdmVzIHRoZSBibG9jay1sZXZlbCBBUEIgcmVzZXQgYW5kIEJJQVMgY29uZmlndXJhdGlv
bgpmcm9tIHRoZSBwb3dlci1vbiBwYXRoIHRvIHJ1bnRpbWUgcmVzdW1lLiBUaGlzIHByZXZlbnRz
IHJlc2V0dGluZwp0aGUgYmxvY2sgdW5kZXJuZWF0aCBhIFBIWSB0aGF0IGlzIGFscmVhZHkgcnVu
bmluZyB3aGVuIG11bHRpcGxlCmNvbnN1bWVycyBhcmUgcHJlc2VudC4KCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5nLWRjcGh5LmMgYi9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1kY3BoeS5jCj4gaW5kZXggNzM4
MjA0M2UxZjMxOS4uMTQ3MWExNTYzZDJhMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2Nr
Y2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1kY3BoeS5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9j
a2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmctZGNwaHkuYwoKWyAuLi4gXQoKPiBAQCAtMTM2Miwx
MCArMTM2MSw2IEBAIHN0YXRpYyBpbnQgc2Ftc3VuZ19taXBpX2RjcGh5X3Bvd2VyX29uKHN0cnVj
dCBwaHkgKnBoeSkKPiAgewo+ICAJc3RydWN0IHNhbXN1bmdfbWlwaV9kY3BoeSAqc2Ftc3VuZyA9
IHBoeV9nZXRfZHJ2ZGF0YShwaHkpOwo+ICAKPiAtCXJlc2V0X2NvbnRyb2xfYXNzZXJ0KHNhbXN1
bmctPmFwYl9yc3QpOwo+IC0JdWRlbGF5KDEpOwo+IC0JcmVzZXRfY29udHJvbF9kZWFzc2VydChz
YW1zdW5nLT5hcGJfcnN0KTsKPiAtCgpbU2V2ZXJpdHk6IE1lZGl1bV0KSWYgc2Ftc3VuZ19taXBp
X2RjcGh5X3BsbF9lbmFibGUoKSBmYWlscyB0byBsb2NrLCBpdCByZXR1cm5zIHdpdGhvdXQgY2xl
YXJpbmcKdGhlIFBMTF9FTiBiaXQgaW4gUExMX0NPTjA6Cgpkcml2ZXJzL3BoeS9yb2NrY2hpcC9w
aHktcm9ja2NoaXAtc2Ftc3VuZy1kY3BoeS5jOnNhbXN1bmdfbWlwaV9kY3BoeV9wbGxfZW5hYmxl
KCkgewoJcmVnbWFwX3VwZGF0ZV9iaXRzKHNhbXN1bmctPnJlZ21hcCwgUExMX0NPTjAsIFBMTF9F
TiwgUExMX0VOKTsKCglyZXQgPSByZWdtYXBfcmVhZF9wb2xsX3RpbWVvdXQoc2Ftc3VuZy0+cmVn
bWFwLCBQTExfU1RBVDAsCgkJCQkgICAgICAgc3RzLCAoc3RzICYgUExMX0xPQ0spLCAxMDAwLCAy
MDAwMCk7CglpZiAocmV0IDwgMCkKCQlkZXZfZXJyKHNhbXN1bmctPmRldiwgIkRDLVBIWSBwbGwg
ZmFpbGVkIHRvIGxvY2tcbiIpOwoKCXJldHVybiByZXQ7Cn0KCkJlY2F1c2UgdGhpcyBwYXRjaCBy
ZW1vdmVzIHRoZSBhcGJfcnN0IHNlcXVlbmNlIGZyb20gdGhlIHBvd2VyX29uIHBhdGgsIHRoZQpz
dGFsZSBQTExfRU4gYml0IGlzIG5vIGxvbmdlciBjbGVhcmVkIGJ5IHRoZSBoYXJkd2FyZSByZXNl
dCBvbiBzdWJzZXF1ZW50CnJldHJpZXMuCgpEb2VzIHRoaXMgbGVhdmUgdGhlIGhhcmR3YXJlIGlu
IGFuIGFjdGl2ZSBidXQgZmFpbGVkIHN0YXRlLCBwb3RlbnRpYWxseQpjYXVzaW5nIHVuZGVmaW5l
ZCBiZWhhdmlvciBvciBwcmV2ZW50aW5nIHRoZSBQTEwgZnJvbSBsb2NraW5nIGR1cmluZyB0aGUK
bmV4dCBwb3dlcl9vbiBhdHRlbXB0PwoKPiAgCXN3aXRjaCAoc2Ftc3VuZy0+dHlwZSkgewo+ICAJ
Y2FzZSBQSFlfVFlQRV9EUEhZOgo+ICAJCXJldHVybiBzYW1zdW5nX21pcGlfZHBoeV9wb3dlcl9v
bihzYW1zdW5nKTsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2
LyMvcGF0Y2hzZXQvMjAyNjEwMTYtZGNwaHktcngtdjEtdjUtMC1lNjNiNDllYWJlMmRAZ21haWwu
Y29tP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
