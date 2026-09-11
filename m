Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 695D4C88E4C
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 07:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Utzhj+ttMYOojVz7tQU5Ky71Xjo2K06jn1K48YaPiUk=; b=jL/waQ8UMzQOMH
	BaEibRDRqbQ7jc3NMyONvJNoyR6D1lv5YBJpOzTJarHbeLTagb99T1bm9dC5yZCE8qVllv7+n3zyl
	CV3FS+rlSHlAdq70sZFq2BZVcmLthCbEWEWFuJd/utySACeJdFfLPzNqY5nmTgp5YqHT2EWUS3n+q
	e72e58/ZQ+j/1FDphvfDHtgfMz1Rv4g8NcUn0PaCEptCEKwh9bu9PALbdEfQw5qLImNa+4EZxWI+w
	tWVenTpPcxImLcm81ONK7hBfhY24b9pMCACqmVkVK7ihb2OCP/gKJ9/IGH4vaWQkTw2dszC3Vkjvf
	VeAuNy6nUjgok2ruizjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4w2n-0000000G4SE-0Udv;
	Fri, 11 Sep 2026 07:51:33 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4w2m-0000000G4S6-1FyQ
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 07:51:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BF61140AE5;
	Fri, 11 Sep 2026 07:51:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48BC61F000FF;
	Fri, 11 Sep 2026 07:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789113091;
	bh=okg3TokBT9+oTqBqWFBGuSEM8HNU1T7RP163axqjBP8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=F8OFhlcJozoo+sRBWmvgVJ+/q9AUIVezeemz0skMOqou2EUIg7CfPO60m1cxqQvy+
	 8VaQXDW4TmUgtz0V78X80VFMObGaFUTCSVGPO4TmcJhdweUDTWfPiKC8V41VuT7E9G
	 Kg7JTxE39RrRE+ITs6i63eCEK6ZcI89IkLhIXT+eqAGHQ6ICXbhOuKsprstCiVhj6L
	 gscntUiP7psql3+fJnbocVJANX0bWgwDEhaWpYcxjoskDHaRd+7oZ8nDKbLjepw0Sr
	 14cSNGhh6jSgwCdk3lHJ/AWIQrb3n/sz6AVmZwiHXohGurOfi9LYBllTWK4i4peCp1
	 MF2OyRmAikQKg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/2] phy: mediatek: phy-mtk-hdmi-mt8195: Fix PLL calc
 divisor overflow
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, dri-devel@lists.freedesktop.org, vkoul@kernel.org
In-Reply-To: <20260911074015.9994-2-angelogioacchino.delregno@collabora.com>
References: <20260911074015.9994-1-angelogioacchino.delregno@collabora.com>
 <20260911074015.9994-2-angelogioacchino.delregno@collabora.com>
Date: Fri, 11 Sep 2026 07:51:30 +0000
Message-Id: <20260911075131.48BC61F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBNdWx0aXBsaWNhdGlvbnMgaW52b2x2aW5nIGBNRUdBYCBhbmQgYEdJR0FgIG1hY3Jv
cyBvdmVyZmxvdyBvbiAzMi1iaXQgYXJjaGl0ZWN0dXJlcywgYnJlYWtpbmcgY2xvY2sgY2FsY3Vs
YXRpb25zLgotLQoKY29tbWl0IDgzYzcwYmNjZTAwMjg3ZDdlODgwYzYwYzUzZjMyMjU4MTU2ODEx
N2QKQXV0aG9yOiBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5k
ZWxyZWdub0Bjb2xsYWJvcmEuY29tPgoKcGh5OiBtZWRpYXRlazogcGh5LW10ay1oZG1pLW10ODE5
NTogRml4IFBMTCBjYWxjIGRpdmlzb3Igb3ZlcmZsb3cKCldoZW4gdHJ5aW5nIHRvIGNhbGN1bGF0
ZSBhIFBMTCByYXRlIGZvciB0YXJnZXQgZGlzcGxheSByZXNvbHV0aW9ucwphYm92ZSAyNTYweDE0
NDAsIDI0YnBwLCAzMEh6LCB0aGUgcGl4ZWwgY2xvY2sgdmFsdWUgd2lsbCBiZSBtb3JlCnRoYW4g
MzItYml0cyBsb25nIGJ1dCB0aGUgZGl2aXNpb24gdG8gZmluYWxseSBjYWxjdWxhdGUgdGhlIGRp
Z2l0YWwKY2xvY2sgZGl2aWRlciBpcyBiZWluZyBkb25lIHdpdGggZGl2X3U2NCgpLCB3aGljaCBl
eHBlY3RzIGEgMzJiaXQKdW5zaWduZWQgZGl2aXNvci4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGh5L21lZGlhdGVrL3BoeS1tdGstaGRtaS1tdDgxOTUuYyBiL2RyaXZlcnMvcGh5L21lZGlhdGVr
L3BoeS1tdGstaGRtaS1tdDgxOTUuYwo+IGluZGV4IDE0MjZhMmRiOTg0ZDUuLmU2ZWU4ZTA4MDAy
MjIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1oZG1pLW10ODE5
NS5jCj4gKysrIGIvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1oZG1pLW10ODE5NS5jCj4g
QEAgLTI5MCw3ICsyOTAsNyBAQCBzdGF0aWMgaW50IG10a19oZG1pX3BsbF9jYWxjKHN0cnVjdCBt
dGtfaGRtaV9waHkgKmhkbWlfcGh5LCBzdHJ1Y3QgY2xrX2h3ICpodywKPiAgCXBvc2RpdjIgPSAx
Owo+ICAKPiAgCS8qIERpZ2l0YWwgY2xrIGRpdmlkZXIsIG1heCAvMzIgKi8KPiAtCWRpZ2l0YWxf
ZGl2ID0gZGl2X3U2NChuc19oZG1pcGxsX2NrLCBwb3NkaXYxICogcG9zZGl2MiAqIHBpeGVsX2Ns
ayk7Cj4gKwlkaWdpdGFsX2RpdiA9IGRpdjY0X3U2NChuc19oZG1pcGxsX2NrLCBwb3NkaXYxICog
cG9zZGl2MiAqIHBpeGVsX2Nsayk7CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXNuJ3QgYSBidWcg
aW50cm9kdWNlZCBieSB0aGlzIHBhdGNoLCBidXQgc2luY2UgdGhpcyBwYXRjaCBmaXhlcwozMi1i
aXQgb3ZlcmZsb3dzLCBjb3VsZCB0aGUgbXVsdGlwbGljYXRpb25zIGludm9sdmluZyBNRUdBIGFu
ZCBHSUdBIGluCm10a19oZG1pX3BsbF9jYWxjKCkgYW5kIG10a19oZG1pX3BsbF9kcnZfc2V0dGlu
ZygpIGFsc28gb3ZlcmZsb3cgb24gMzItYml0CmFyY2hpdGVjdHVyZXM/CgpJbiBkcml2ZXJzL3Bo
eS9tZWRpYXRlay9waHktbXRrLWhkbWktbXQ4MTk1LmM6bXRrX2hkbWlfcGxsX2NhbGMoKSwgdGhl
CmJvdW5kcyBjaGVja3MgdXNlIE1FR0EgYW5kIEdJR0E6CgogICAgZWxzZSBpZiAodG1kc19jbGsg
Pj0gNTQgKiBNRUdBICYmICh0bWRzX2NsayAqIDEwMCkgPCAxNDgzNSAqIE1FR0EpCgphbmQ6Cgog
ICAgaWYgKG5zX2hkbWlwbGxfY2sgPj0gNSAqIEdJR0EgJiYKICAgICAgICBuc19oZG1pcGxsX2Nr
IDw9IDEyICogR0lHQSkKClNpbmNlIE1FR0EgYW5kIEdJR0EgYXJlIGRlZmluZWQgd2l0aCB0aGUg
VUwgc3VmZml4IGluIDxsaW51eC91bml0cy5oPiwgZG8KdmFsdWVzIGxpa2UgMTQ4MzUgKiBNRUdB
IGFuZCA1ICogR0lHQSBzaWxlbnRseSB3cmFwIGFyb3VuZCB3aGVuIGV2YWx1YXRlZCBhcwozMi1i
aXQgdW5zaWduZWQgbG9uZyB2YWx1ZXMgKGUuZy4sIDE0ODM1ICogTUVHQSBiZWNvbWluZyB+MS45
NSBiaWxsaW9uKT8KClNpbWlsYXJseSwgaW4gbXRrX2hkbWlfcGxsX2Rydl9zZXR0aW5nKCk6Cgog
ICAgfSBlbHNlIGlmICgoKHU2NClwaXhlbF9jbGsgKiAxMDAwKSA+PSA3NDE3NSAqIE1FR0EgJiYg
cGl4ZWxfY2xrIDw9IDMwMCAqIE1FR0EpIHsKCldvdWxkIDc0MTc1ICogTUVHQSB3cmFwIHRvIH4x
LjEzIGJpbGxpb24gb24gMzItYml0IGJ1aWxkcyBpbnN0ZWFkIG9mIDc0LjEKYmlsbGlvbiwgcG90
ZW50aWFsbHkgaW50ZXJjZXB0aW5nIGNvbmRpdGlvbnMgdGhhdCBzaG91bGQgZmFsbCB0byBhIGRp
ZmZlcmVudAppbXBlZGFuY2UgY29uZmlndXJhdGlvbiBibG9jaz8KCj4gIAlpZiAoIShkaWdpdGFs
X2RpdiA8PSAzMiAmJiBkaWdpdGFsX2RpdiA+PSAxKSkKPiAgCQlyZXR1cm4gLUVJTlZBTDsKPgoK
LS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8y
MDI2MDkxMTA3NDAxNS45OTk0LTEtYW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEu
Y29tP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
