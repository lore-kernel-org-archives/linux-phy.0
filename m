Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4045FC79FAA
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 07:41:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/EW/6/z7orrLTgo8sVafFv7YO8OndfcYhfhtkpDeE8w=; b=X5R7EjxKUVv86J
	s7Vo+We8YKDAtKcVE9pbJCmP72rNiRg2VqXMbrxk8eYtuhzwj+zRylkM7xLM191r4dMOzmX7mFwxC
	7A0U4j15XMHiYFKUHJrrNaYJ8ydEaSs81C8lvPBy/ftpthYcwuU0l3NdK34+yqUM7rrnQzKXuQREZ
	g3DHBQVybuLvFzlxrZl7BNvOP4KM3KcRfAV0J0Bj0rORvOrpe1DOH3ILb55PdZWTpBbDQZMPj0ay+
	S5skh2R68bWGteAwd9IJJYUngzxyUprOkkQSdidRk+xxW9CWVwsosSKOW3AWuFf8lukEpj2QcBh8c
	Tghh7MdCxKLqoum84teg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Cvm-0000000B0ko-2bKM;
	Wed, 09 Sep 2026 07:41:18 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Cvi-0000000B0kc-2EG1
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 07:41:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id EDEF94379D;
	Wed,  9 Sep 2026 07:41:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5137A1F00A3A;
	Wed,  9 Sep 2026 07:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788939673;
	bh=lSeFjDW5eiBGIVae8tX1ju2okgaGaYVEwgaaxEkYskg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=RjZMoR3Nf4/Wv0M+CqCWKgdOfCRbVGjtRB+2VRTRPq0nqKlEar9bFX/AG4yQ61CT0
	 oPTmDI2RZrYC1mqkzgmNQy89SuetLM7Pc+LVUOlpSNvmTjG0BHKVvgAOXvh34rXEdT
	 PmGxiliYMFkIJgQXCKrzGqOD72TycJWYaQ6JHps7qtmYx/pWyGi1wec3oHN0qWBD7d
	 3SYp6Oje+1+IJaeZxF6oCAW0jpxo6+Ukfa3+0BUrggMPFufa/2euNlXTxEpMuLY21B
	 hZUnw8jZJI/4PnjyJ7PMPXn2FXraL3h6QP5mez6kbXsXwlkbBdEBzI7csDNtmv8q5T
	 7u0JxlPaBYVoQ==
Date: Wed, 9 Sep 2026 09:41:06 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Hongling Zeng <zenghongling@kylinos.cn>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, johan@kernel.org, 
	kishon@kernel.org, rogerq@ti.com, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, zhongling0719@126.com
Subject: Re: [PATCH v6 1/4] phy: ti-pipe3: Fix ignored clock enable return
 value  in init
Message-ID: <rws3cizw777sqpaioxhxmzbzs6ofifnq4ja7nzswotwqir6sfk@47kay4qi2fut>
References: <20260619030214.1779043-1-zenghongling@kylinos.cn>
 <20260619030214.1779043-2-zenghongling@kylinos.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260619030214.1779043-2-zenghongling@kylinos.cn>
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

T24gRnJpLCBKdW4gMTksIDIwMjYgYXQgMTE6MDI6MTFBTSArMDgwMCwgSG9uZ2xpbmcgWmVuZyB3
cm90ZToKPiB0aV9waXBlM19pbml0KCkgaWdub3JlcyB0aGUgcmV0dXJuIHZhbHVlIG9mIHRpX3Bp
cGUzX2VuYWJsZV9jbG9ja3MoKSwKPiB3aGljaCBjYW4gbGVhZCB0bzoKPiAKPiAxLiBVbmNsb2Nr
ZWQgaGFyZHdhcmUgYWNjZXNzIGlmIGNsb2NrIGVuYWJsZSBmYWlscwo+IDIuIFVuYmFsYW5jZWQg
Y2xvY2sgZGlzYWJsZXMgaW4gZXJyb3IgcGF0aHMKPiAKPiB0aV9waXBlM19lbmFibGVfY2xvY2tz
KCkgcmV0dXJucyBhbiBlcnJvciBjb2RlIHdoZW4gY2xvY2sgZW5hYmxlIGZhaWxzCj4gYW5kIHJv
bGxzIGJhY2sgYW55IHBhcnRpYWxseSBlbmFibGVkIGNsb2Nrcy4gSWYgd2UgaWdub3JlIHRoaXMg
ZXJyb3IKPiBhbmQgY29udGludWUsIHdlIGFjY2VzcyBoYXJkd2FyZSB3aXRob3V0IHByb3BlciBj
bG9ja2luZywgd2hpY2ggY2FuCj4gY2F1c2UgYnVzIGVycm9ycy4KPiAKPiBBZGRpdGlvbmFsbHks
IGlmIHdlIHJlYWNoIGVycm9yIHBhdGhzIGxhdGVyIGluIHRoZSBmdW5jdGlvbiBhbmQgY2FsbAo+
IHRpX3BpcGUzX2Rpc2FibGVfY2xvY2tzKCksIHdlJ2xsIGJlIGRpc2FibGluZyBhbHJlYWR5LWRp
c2FibGVkIGNsb2NrcywKPiBjYXVzaW5nIHVuYmFsYW5jZWQgZGlzYWJsZSB3YXJuaW5ncy4KPiAK
PiBGaXggdGhpcyBieSBjaGVja2luZyB0aGUgcmV0dXJuIHZhbHVlIG9mIHRpX3BpcGUzX2VuYWJs
ZV9jbG9ja3MoKQo+IGFuZCByZXR1cm5pbmcgZWFybHkgaWYgaXQgZmFpbHMuCj4gCj4gRml4ZXM6
IDIzNDczOGVhMzM5MCAoInBoeTogdGktcGlwZTM6IG1vdmUgY2xrIGluaXRpYWxpemF0aW9uIHRv
IGEgc2VwYXJhdGUgZnVuY3Rpb24iKQo+IFJlcG9ydGVkLWJ5OiBTYXNoaWtvIEFJIDxzYXNoaWtv
QGtlcm5lbC5vcmc+Cj4gU2lnbmVkLW9mZi1ieTogSG9uZ2xpbmcgWmVuZyA8emVuZ2hvbmdsaW5n
QGt5bGlub3MuY24+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFu
bmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCk9uZSBjb21tZW50IGJlbG93LgoKPiAK
PiAtLS0KPiBDaGFuZ2UgaW4gdjU6Cj4gICAtQWRkIEZpeCBpZ25vcmVkIGNsb2NrIGVuYWJsZSBy
ZXR1cm4gdmFsdWUgaW4gaW5pdCBwYXRjaAo+IC0tLQo+IENoYW5nZSBpbiB2NjoKPiAgIC1GaXgg
YWxsIGNsb2NrIGxlYWsgcGF0aHMgY29tcHJlaGVuc2l2ZWx5Cj4gICAtUENJZSBzeXNjb24gdXBk
YXRlIGZhaWx1cmUgcGF0aAo+ICAgLVNBVEEgRFBMTCBsb2NrIGNoZWNrIHBhdGggKGFsc28gZml4
IGluY29ycmVjdCByZXR1cm4gbG9naWMpCj4gICAtU0FUQSBlcnJhdGEgcGF0aCBpbiB0aV9waXBl
M19leGl0KCkKPiAtLS0KPiAgZHJpdmVycy9waHkvdGkvcGh5LXRpLXBpcGUzLmMgfCA1ICsrKyst
Cj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvdGkvcGh5LXRpLXBpcGUzLmMgYi9kcml2ZXJzL3BoeS90
aS9waHktdGktcGlwZTMuYwo+IGluZGV4IGI1NTQzYjVjNjc0Yy4uYjhjMDU1ODkzNzQyIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3RpL3BoeS10aS1waXBlMy5jCj4gKysrIGIvZHJpdmVycy9w
aHkvdGkvcGh5LXRpLXBpcGUzLmMKPiBAQCAtNTAwLDcgKzUwMCwxMCBAQCBzdGF0aWMgaW50IHRp
X3BpcGUzX2luaXQoc3RydWN0IHBoeSAqeCkKPiAgCXUzMiB2YWw7Cj4gIAlpbnQgcmV0ID0gMDsK
Ck5vdyB0aGlzIGluaXRpYWxpemF0aW9uIGJlY29tZXMgcmVkdW5kYW50LgoKLSBNYW5pCgotLSAK
4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
