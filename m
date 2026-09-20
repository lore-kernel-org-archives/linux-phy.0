Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D9E9C982DA
	for <linux-phy@archiver.kernel.org>; Sun, 20 Sep 2026 14:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h4kvrscSZjBCCJ+AaMhJPA9IFY+7fZq0izNuJsXD+wA=; b=ONETk12o6Lrgm8
	JB8R9JgNyI+H8PXqpX/HOhMXkxAY4wjqWwuMpKUZXk8myzlcE0iGlQ5cC00RIrqZArDaEU3XMPXUX
	hgOsUJpverqTRlGqEX41sSJlXpzKeXJreZ0gB/4LYeXkgbdn55bs7bbOfQRksZvWQaSn0J3GZNizK
	3lgVTp/AI+sdLsXEc7YPfTV1yiF6/tzYB1qWU9yg54Qig2AhgpfwpD+SRlui0qldVvHr+EfA6q0WJ
	Mi3SgyntaO/tVpYNs9De868G3ir2jNJZIUkZ0arPLBDSW7qsrooRFmR79Eipq+fHQcsFt4WGfzWM/
	d3Atf6b6W3p9uBP6q6rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8IH1-0000000HZI8-1Y5d;
	Sun, 20 Sep 2026 14:12:07 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8IGz-0000000HZHr-36t4
	for linux-phy@lists.infradead.org;
	Sun, 20 Sep 2026 14:12:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 63A6543880;
	Sun, 20 Sep 2026 14:12:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC6081F000FF;
	Sun, 20 Sep 2026 14:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789913525;
	bh=cLODV7EQdq4ZW+ZMKO+TQoSxkZwXz0085tsVh4wWp8Q=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=RG0aAlDHcPN5fTIgodY/TCGfu1z6ptKd+yxtStDjFqNwVu/iMEcqauOmrTYBsXm+t
	 Bmy32DA+AeqrfqvdLrD26o/9JwKVhf1H1dHscmDGMzDfnWyCXzgJi22fCwAlG4qeR8
	 ECQyEpKg0zh8dBJe+bZJAPw6mDa1VwNfZ61yhISlUjB0QAINFJ8CZiNDTjOypbuyCH
	 4aoRKRaME3dKe6TudFrvOMqlKfry7eE118pWs351t3fmtjAxUm66yRVTIir9ZlSaAw
	 IP1BsY6zPtnMtsFHO9a51LaOKBY2OijcbKVP89MXZeaOu744IMu/ADnGZb7s6qGgMZ
	 5Au1siY01Zluw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/3] phy: qcom-qusb2: describe autoresume bit
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260920-fix-qusb2-v3-3-c273e75c9fb7@oss.qualcomm.com>
References: <20260920-fix-qusb2-v3-0-c273e75c9fb7@oss.qualcomm.com>
 <20260920-fix-qusb2-v3-3-c273e75c9fb7@oss.qualcomm.com>
Date: Sun, 20 Sep 2026 14:12:04 +0000
Message-Id: <20260920141204.EC6081F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiBxY29tLXF1
c2IyOiB1bmludGVuZGVkIGVuYWJsZW1lbnQgb2YgYXV0b3Jlc3VtZSBvbiBzaGlrcmEKLS0KCmNv
bW1pdCA2Y2VhNzFjMzJkNWQyNjJhZTU3NzQ1NzZhYTA0YmExYmJkM2NiNWRlCkF1dGhvcjogRG1p
dHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtvdkBvc3MucXVhbGNvbW0uY29tPgoKcGh5OiBx
Y29tLXF1c2IyOiBkZXNjcmliZSBhdXRvcmVzdW1lIGJpdAogICAgClRoaXMgcGF0Y2ggdXBkYXRl
cyB0aGUgcmVnaXN0ZXIgZGVmaW5pdGlvbnMgZm9yIHRoZSBRVVNCMiBQSFkgYXV0b3Jlc3VtZSBi
aXQsCnNwZWNpZnlpbmcgd2hpY2ggcmVnaXN0ZXIgdG8gdXNlIGZvciBhdXRvcmVzdW1lIGhhbmRs
aW5nLiBJdCBkZWZpbmVzIGJvdGggVEVTVDEKYW5kIFRFU1RfQ1RSTCByZWdpc3RlcnMgYW5kIG1l
cmdlcyBkdXBsaWNhdGUgbGF5b3V0cy4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxj
b21tL3BoeS1xY29tLXF1c2IyLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xdXNi
Mi5jCj4gaW5kZXggYTFkZTA1YTgzMTI4OC4uMTAxYzA4MjAwMjNkNCAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xdXNiMi5jCj4gKysrIGIvZHJpdmVycy9waHkv
cXVhbGNvbW0vcGh5LXFjb20tcXVzYjIuYwoKWyAuLi4gXQoKPiBAQCAtMzc5LDcgKzM3NSw2IEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgcXVzYjJfcGh5X2NmZyBzZG02NjBfcGh5X2NmZyA9IHsKPiAg
CS5zZV9jbGtfc2NoZW1lX2RlZmF1bHQgPSBmYWxzZSwKPiAgCS5kaXNhYmxlX2N0cmwJPSAoQ0xB
TVBfTl9FTiB8IEZSRUVaSU9fTiB8IFBPV0VSX0RPV04pLAo+ICAJLm1hc2tfY29yZV9yZWFkeSA9
IFBMTF9MT0NLRUQsCj4gLQkuYXV0b3Jlc3VtZV9lbgkgPSBCSVQoMyksCj4gIH07Cj4gIAo+ICBz
dGF0aWMgY29uc3Qgc3RydWN0IHF1c2IyX3BoeV9jZmcgc2hpa3JhX3BoeV9jZmcgPSB7CgpbU2V2
ZXJpdHk6IE1lZGl1bV0KRG9lcyB0aGlzIHVuaW50ZW50aW9uYWxseSBlbmFibGUgYXV0b3Jlc3Vt
ZSBvbiBTaGlrcmEgcGxhdGZvcm1zPwoKUHJldmlvdXNseSwgc2hpa3JhX3BoeV9jZmcgb21pdHRl
ZCAuYXV0b3Jlc3VtZV9lbiwgbWVhbmluZyBpdCBkZWZhdWx0ZWQKdG8gMC4gRHVyaW5nIHJ1bnRp
bWUgc3VzcGVuZCwgdGhlIGJpdHdpc2Ugb3BlcmF0aW9ucyBpbgpxdXNiMl9waHlfcnVudGltZV9z
dXNwZW5kKCkgdXNlZCBhIDAgbWFzaywgZWZmZWN0aXZlbHkgbm90IHRvZ2dsaW5nIGFueQpiaXRz
LgoKV2l0aCB0aGlzIHBhdGNoLCBvbWl0dGluZyAuYXV0b3Jlc3VtZV9kaXNhYmxlIGluIHNoaWty
YV9waHlfY2ZnIGRlZmF1bHRzCml0IHRvIGZhbHNlLiBUaGlzIGNhdXNlcyBxdXNiMl9waHlfcnVu
dGltZV9zdXNwZW5kKCkgdG8gdW5jb25kaXRpb25hbGx5IGVudGVyCml0cyB0b2dnbGUgbG9naWMg
YW5kIGFjdGl2ZWx5IHRvZ2dsZSBCSVQoMykgYXQgcmVnaXN0ZXIgMHhiOCAKKFFVU0IyUEhZX1BP
UlRfVEVTVF9DVFJMKSBvbiBTaGlrcmEuCgpDb3VsZCB0aGlzIGhhcmR3YXJlIHN0YXRlIGNoYW5n
ZSBjYXVzZSB1bmRlZmluZWQgYmVoYXZpb3I/IFRvIHByZXNlcnZlIHRoZQpwcmV2aW91cyBiZWhh
dmlvciwgc2hvdWxkIC5hdXRvcmVzdW1lX2Rpc2FibGUgPSB0cnVlIGJlIGFkZGVkIHRvCnNoaWty
YV9waHlfY2ZnPwoKPiBAQCAtNDAyLDcgKzM5Nyw2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcXVz
YjJfcGh5X2NmZyBzbTYxMTVfcGh5X2NmZyA9IHsKPiAgCS5zZV9jbGtfc2NoZW1lX2RlZmF1bHQg
PSB0cnVlLAo+ICAJLmRpc2FibGVfY3RybAk9IChDTEFNUF9OX0VOIHwgRlJFRVpJT19OIHwgUE9X
RVJfRE9XTiksCj4gIAkubWFza19jb3JlX3JlYWR5ID0gUExMX0xPQ0tFRCwKPiAtCS5hdXRvcmVz
dW1lX2VuCSA9IEJJVCgzKSwKPiAgfTsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczov
L3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MjAtZml4LXF1c2IyLXYzLTAtYzI3M2U3NWM5
ZmI3QG9zcy5xdWFsY29tbS5jb20/cGFydD0zCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
