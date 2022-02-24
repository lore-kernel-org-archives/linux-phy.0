Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F893C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 24 Feb 2022 23:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CTXb32Pd5DETWI919JQCh0t+PP5zTG6/mEzNYVaAPQ4=; b=edritzHQYOqw+d
	74NgoO3zzDZlbqXaJn3ZOy3KTydyGxtFe7q9Rsi5biD+uDZzpMeyKGnRu0nawehA5A8nPJYF2HHTz
	X2DGzbWsFqkuNHXPgj1hyb+Y5od5A05Ljg1je4IexMvaif6N1/suoXbbg0Dla/ihMPqAZElT/kJev
	BC9KshFOuLN9+ND1YeOCbY8GbKrKRd9ZHjlZMx0EOAW3pFhWUyWg4JvEsuq3k1DJ+PSn+mLE/Rm2v
	fEkY/Av49ALlpmwfZeKvmczHrhifoEh5pNyv/voGT9GUv7MCerCFlOcK0vUC8n4WeVj42xAofA0Gr
	Rt+EHreFzl6YyVgfsa2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNNlO-002id2-Oe; Thu, 24 Feb 2022 23:43:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNNlL-002icj-Hx
 for linux-phy@lists.infradead.org; Thu, 24 Feb 2022 23:43:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4CC1E61CBB;
 Thu, 24 Feb 2022 23:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 636E2C340E9;
 Thu, 24 Feb 2022 23:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645746185;
 bh=eIXifxjDTcZJEsL0jklLGEYb3BKV5hVMiOY6tqWPvVY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=nVUzwVMrMfmA3qd/svbysILX7Fk6AAJu3C2dg7Pn9VmcI3nDhS62W80/PqOFOyqfd
 76q7ZSathABKLeAq8sSJS9goF1DKDyTGJgnVHTZL+5mPA9uMan/j5l+G0n+8kXFQ67
 clwl3Ck4Pdd02a3rgFak1uAgeL7qntoawcNwtVFMJSE03not7+YOHHJeq+9i+/5C7q
 wU2IKvSpTl50RGPRK+iRIYjoHTPc91EHaN1sQ7RW3SWlkWFsxoqpINsicJPg0oZfuK
 +cJmPtZQ8+tXdOM6BukT5ybbeGUzmXOnG6pIiD8wTozf1XvkjNjhv9UNmFO+SyzDw8
 blX/s0MbOiaTA==
Date: Fri, 25 Feb 2022 00:43:00 +0100
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Cc: Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 pali@kernel.org
Subject: Re: [PATCH phy v4 3/5] Revert "ata: ahci: mvebu: Make SATA PHY
 optional for Armada 3720"
Message-ID: <20220225004300.1bd1405e@thinkpad>
In-Reply-To: <c6a1d5ca-255b-9a3d-aad2-9c3dc4dd68a3@opensource.wdc.com>
References: <20220203214444.1508-1-kabel@kernel.org>
 <20220203214444.1508-4-kabel@kernel.org>
 <20220224161324.6ac0061c@dellmb>
 <6082e3a5-aaf7-f876-b1ec-c6627fba1503@kernel.dk>
 <20220224163738.7da04b51@dellmb>
 <c6a1d5ca-255b-9a3d-aad2-9c3dc4dd68a3@opensource.wdc.com>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_154307_653518_28F74DBD 
X-CRM114-Status: GOOD (  17.63  )
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

T24gRnJpLCAyNSBGZWIgMjAyMiAwNzozMzo0OCArMDkwMApEYW1pZW4gTGUgTW9hbCA8ZGFtaWVu
LmxlbW9hbEBvcGVuc291cmNlLndkYy5jb20+IHdyb3RlOgoKPiBPbiAyLzI1LzIyIDAwOjM3LCBN
YXJlayBCZWjDum4gd3JvdGU6Cj4gPiBPbiBUaHUsIDI0IEZlYiAyMDIyIDA4OjE0OjU4IC0wNzAw
Cj4gPiBKZW5zIEF4Ym9lIDxheGJvZUBrZXJuZWwuZGs+IHdyb3RlOgo+ID4gICAKPiA+PiBPbiAy
LzI0LzIyIDg6MTMgQU0sIE1hcmVrIEJlaD9uIHdyb3RlOiAgCj4gPj4+IERlYXIgSmVucywKPiA+
Pj4KPiA+Pj4gY291bGQgeW91IHBsZWFzZSBzZW5kIEFjayBmb3IgdGhpcyBwYXRjaD8KPiA+Pj4g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcGh5LzIwMjIwMjAzMjE0NDQ0LjE1MDgtNC1r
YWJlbEBrZXJuZWwub3JnLwo+ID4+Pgo+ID4+PiBJdCBpcyBhIHJldmVydCBvZiBhbm90aGVyIHBh
dGNoIHRoYXQgd2FzIGFkZGVkIGJlY2F1c2Ugb2YgcG90ZW50aWFsCj4gPj4+IHByb2JsZW1zIGlu
IGNvbXBoeSBkcml2ZXIsIGFuZCB0aGVzZSBhcmUgbm93IHNvbHZlZCBieSB0aGlzIHNlcmllcywg
YnV0Cj4gPj4+IFZpbm9kIHNheXMgaGUgY2FuIGFwcGx5IHRoZSBBVEEgcGF0Y2ggYnV0IGhlIG5l
ZWRzIHlvdXIgQWNrLiAgICAKPiA+Pgo+ID4+IEknbSBub3QgbWFpbnRhaW5pbmcgbGliYXRhIGFu
eW1vcmUsIGFkZGluZyBEYW1pZW4gd2hvJ3MgdGhlIG5ldwo+ID4+IG1haW50YWluZXIuIExlYXZp
bmcgZW1haWwgYmVsb3cuICAKPiA+IAo+ID4gRGVhciBEYW1pZW4sCj4gPiBjb3VsZCB5b3UgbG9v
ayBhdCB0aGlzIHJldmVydCBhbmQgZ2l2ZSB5b3VyIEFjaz8gU2VlIHRoZSBxdW90ZWQgbWVzc2Fn
ZQo+ID4gZm9yIEplbnMuICAKPiAKPiBUaGUgcGF0Y2ggbG9vayBPSyB0byBtZS4gQnV0IEkgaGF2
ZSBub3QgcmVjZWl2ZWQgaXQsIG5vciBkbyBJIHNlZSBpdCBpbgo+IGxpbnV4LWlkZSBsaXN0LiBQ
bGVhc2UgcmVzZW5kIGl0IHRvIG1lIGFuZCBsaW51eC1pZGUgc28gdGhhdCBJIGNhbiBhcHBseQo+
IGl0IHRvZ2V0aGVyIHdpdGggb3RoZXIgbGliYXRhIGZpeGVzLgoKRGVhciBEYW1pZW4sCgp0aGlz
IG5lZWRzIHRvIGJlIGFwcGxpZWQgb25seSBhZnRlciB0aGUgZmlyc3QgdHdvIHBhdGNoZXMgb2Yg
dGhhdApzZXJpZXMgYXJlIGFwcGxpZWQgdmlhIGxpbnV4LXBoeSwgc28gd2Ugd291bGQgbGlrZSBh
bGwgb2YgdGhlbSB0byBnZXQKYXBwbGllZCBieSBWaW5vZCB2aWEgbGludXgtcGh5IGlmIHBvc3Np
YmxlLiBJZiB5b3UncmUgbm90IGNvbWZvcnRhYmxlCndpdGggdGhhdCBwbGVhc2UgbGV0IG1lIGtu
b3cgYW5kIHdlJ2xsIHRyeSBhbm90aGVyIHNvbHV0aW9uLgoKSSBjYW4gYm91bmNlIHRoZSBwYXRj
aCB0byBsaW51eC1pZGUuIFNob3VsZCBJIGFsc28gYm91bmNlIHRoZSB3aG9sZQpzZXJpZXMsIG9y
IHRoYXQgcGF0Y2ggb25seT8KCk1hcmVrCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
