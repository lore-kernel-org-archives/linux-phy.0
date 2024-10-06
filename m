Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B842CFB43F
	for <linux-phy@archiver.kernel.org>; Sun,  6 Oct 2024 09:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Dpsbnf+fe/LLBZPjCBgEGosbnHcaEh334Bz2vDa2bQ=; b=zReWvL4qWqRbBh
	RVOJuk2wGaMOPz0V8raBjkAighF/XB/XrZrPXCKVmFP23OmT7XNo6/QWC4MehzggZy+JWPzeXtv1u
	KL/1V5dDX9g25PU3ZwTvUcpFKoD2st88KLAvamzS/iYrvKTihekPKL2S+Qe5mRI8erGRkTVWJa8ps
	lbNJpnIYfra1YVeSqdwJ/zHcq2FWF4YZHWFS4+EPEOYOhxuaGR2wLaK5VHeJBz/74moKg88rQxcNo
	Sbl9zWCo5xXsZ35iL/eL5s4p71iTN+itclMspUx2DWhM51UuKauhkfVni2JauF1a7qcB3skfl/epY
	204Gggj77Td7xaIysuew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxNz0-0000000HTgV-08ys;
	Sun, 06 Oct 2024 09:55:22 +0000
Received: from mout.gmx.net ([212.227.17.20])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxNyw-0000000HTfR-0fdt
	for linux-phy@lists.infradead.org;
	Sun, 06 Oct 2024 09:55:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728208492; x=1728813292;
	i=markus.stockhausen@gmx.de;
	bh=4mEsezqHbyZZMHgW9+Vl8py9/Zf97rtCbS2L8MndtIY=;
	h=X-UI-Sender-Class:MIME-Version:Message-ID:From:To:Cc:Subject:
	 Content-Type:Date:In-Reply-To:References:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=qOgmN3RK//eUGJn6Us+/RNGMC8Yr9SqFbQCZkKKW2Z8TMxwDKB32bTII+4TU9PiY
	 1wm++9qiShEOVrcTRJtI+0yJl9jyCZx2+mTRMGdJKky3/nwbaf1be5Fi/qVIPWmjX
	 4HJKQnq32VIznyXELFC+T2zDr4uj6Esv2sSTe3PfmKgGhc7BDvvHV3o0ji2tMh5T3
	 sxuB1SwOKt1z5/wB90cA6MBMcslGeqAd/kcCDL6OKRg9moGDRu+v9/sEZCKEpmf8K
	 OjkAcROtKz+xZDuOUUhH04Ikf2MzPtzmNAbFfpyxbSAMY43bvU71PsPnqYh6IlbeN
	 8Jj7MTvol4tjyneTxw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [87.79.75.227] ([87.79.75.227]) by web-mail.gmx.net
 (3c-app-gmx-bap17.server.lan [172.19.172.87]) (via HTTP); Sun, 6 Oct 2024
 11:54:52 +0200
MIME-Version: 1.0
Message-ID: <trinity-730b9987-1281-4589-af51-e4d85af3de66-1728208492437@3c-app-gmx-bap17>
From: Markus Stockhausen <Markus.Stockhausen@gmx.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-phy@lists.infradead.org, chris.packham@alliedtelesis.co.nz
Subject: Aw: Re:  Re: [PATCH 4/4] phy: Realtek Otto Serdes: add devicetree
 documentation
Date: Sun, 6 Oct 2024 11:54:52 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <362ccc22-9f7d-43de-9670-380a1a57e886@kernel.org>
References: <20241004195712.1891488-1-markus.stockhausen@gmx.de>
 <20241004195712.1891488-5-markus.stockhausen@gmx.de>
 <085c03f4-8b1e-413a-a72e-0dd3ec60a667@kernel.org>
 <trinity-30f499cf-b454-4ee8-981b-51f950858c68-1728124094345@3c-app-gmx-bs38>
 <362ccc22-9f7d-43de-9670-380a1a57e886@kernel.org>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:v/Gc8buWa+dBxr4IR8cQmvalcUkIQyBhYFQoQ0SSF6LO+aLO20kfGMOyoEX0ZQj8NYrdB
 107A34Syl128/Ynqn4epx5MAx63eRaSvivmP5RXRUdI8IvF/g6zMgtKMYg9NBtmCdetzPgnTCS3E
 DA8LvLQFucW02E5VvztZ+KUMfzw7c329ofGWl268e70PcrXGx56IQT85JzS39hNWORpINmMeudL/
 beZ9xbt8ILHhQOas6kpGZWWy5e/zBhN0QuBD4ffF6h+hdesDkHTqiko0iYYuaHgHLuJA5c2dWKT+
 8k=
UI-OutboundReport: notjunk:1;M01:P0:0wsWeCYiodc=;dbDKuH+UZvF/RiBXjypOMk27Vjd
 e3CnvMCEY1ETCNtBTZEq+6iw2DT9qH7FmcoM71aWKAZZeS4INOa2mfMbQksYbDx+jwufORyjH
 8+JXA0LuT48yn+0QXWJWjjZ6NtC/IFwGd6IFqBOMWCpXzO6w6DEmERGw4lfu/W8JmhFBOb3H5
 8g6jJTH8+VUrl8MVtQ99SrkLiyqOSA7LRjqf42w5hHjDgBa3IRcLQiOusFvIrPs8yrCc6tmby
 B7E2S51f8M2oXEYNvo1cK1MEHhi4u510PCcG2GsY7qiSymFWbZS2vmRmAQY3F2fLwRssVs4pv
 Cje3T6ZEqwcYgFvpeAYFdckSXWaPgNcr0tOTlWuJBaJB9O+O5yj7IJGm2A22TIKz/Rw48FRxD
 I0S8Ukh5q1UQ+SoZZJceEuq3ZxH0SPgg7WLbW/uOrIvrR3uz5qacx6vgpSEUfQa7wGGJdb9Fn
 ucbimJ4vkYDzrJ+Iyy5pzKOq+zwzOe0U/fY1Oluihs27DQGns9h+349zP9TYhtaJfccqyBUVf
 h3l8xuTUJreJDMrlNYtPSK6lemltJErX5HkmR4mjRdW+Zy5DPzAQHL+lJS1WulID8ng4b48Jp
 NEvVRfsFjdkRMwP/a10ibr+kc+Pqtk59CvOo4HzYVaPLicCzjRHle5ft2vCjyuVaT2SwWTDju
 tr93Al4NswsKXT47ltl5Uzt4Dt0LX4q0cT9fM7UOyQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_025518_521206_9EFFCDBE 
X-CRM114-Status: GOOD (  11.01  )
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

PiBHZXNlbmRldDrCoFNvbm50YWcsIDA2LiBPa3RvYmVyIDIwMjQgdW0gMTA6MTggVWhyCj4gVm9u
OsKgIktyenlzenRvZiBLb3psb3dza2kiIDxrcnprQGtlcm5lbC5vcmc+Cj4gQW46wqAiTWFya3Vz
IFN0b2NraGF1c2VuIiA8TWFya3VzLlN0b2NraGF1c2VuQGdteC5kZT4KPiBDYzrCoGxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnLCBjaHJpcy5wYWNraGFtQGFsbGllZHRlbGVzaXMuY28ubnoK
PiBCZXRyZWZmOsKgUmU6IEF3OiBSZTogW1BBVENIIDQvNF0gcGh5OiBSZWFsdGVrIE90dG8gU2Vy
ZGVzOiBhZGQgZGV2aWNldHJlZSBkb2N1bWVudGF0aW9uCj4gT24gMDUvMTAvMjAyNCAxMjoyOCwg
TWFya3VzIFN0b2NraGF1c2VuIHdyb3RlOgo+ID4+IC4uLgo+Pj4gKyBjbWQtc2V0dXA6Cj4+PiAr
IGRlc2NyaXB0aW9uOiB8Cj4+PiArIEEgZmllbGQgb2YgMTYgYml0IHZhbHVlcyB0aGF0IGNvbnRh
aW4gYSBwYXRjaC9jb21tYW5kIHNlcXVlbmNlIHRvIHJ1biBvbiB0aGUKPj4+ICsgU2VyRGVzIHJl
Z2lzdGVycyBkdXJpbmcgZHJpdmVyIHNldHVwLgo+Pgo+PiBOb25lIG9mIHRoZXNlIGZpZWxkcyBt
YXRjaCBEVC4gRHJvcCBhbGwgb2YgZHJpdmVyIHJlbGF0ZWQgc3R1ZmYuCj4KPiBIbSwgd2hhdCB3
b3VsZCBiZSB0aGUgYmVzdCB3YXkgdG8gcnVuIG1hZ2ljIHZlbmRvciBwYXRjaCBzZXF1ZW5jZXMg
dGhhdCBzZXR1cAo+IHJlZ2lzdGVycyBhbmQgZG8gbm90IHBvbGx1dGUgZHJpdmVyPwo+IAo+IFRo
ZXNlIGJlbG9uZyB0byBkcml2ZXIuIFdoYXQgZG8geW91IG1lYW4gInBvbGx1dGUiPyBUaGUgZHJp
dmVyIGlzIHRoZQo+IHBsYWNlIGZvciB0aGVzZSwgbm90IERUIQoKVW5kZXJzdG9vZC4gU28gaWYg
SSBjZXJhdGUgYW5vdGhlciBpbmNsdWRlIC0gbGV0J3Mgc2F5ICJwaHktcnRsLW90dG8tc2VyZGVz
LXNlcSIgLSB0aGF0Cmxvb2tzIHNvbWV0aGluZyBsaWtlIHRoZSBmb2xsb3dpbmcgd291bGQgYmUg
b2s/IEV2ZW4gd2l0aCBhIGxvdCBvZiAibWFnaWMiIGluc2lkZT8KCnN0cnVjdCBydHNkc19zZXF1
ZW5jZSBydHNkc184Mzl4X2NtZF9pbml0ID0gewoJeyBfTUFTS18sIDB4MDAsIDB4MDgsIDB4MDAs
IDB4NTgwMCwgMHhmZmZmIH0sCgl7IF9NQVNLXywgMHgwMCwgMHgwOCwgMHgwMSwgMHg0MDAwLCAw
eGZmZmYgfSwKCXsgX01BU0tfLCAweDAwLCAweDA4LCAweDAyLCAweDU0MDAsIDB4ZmZmZiB9LAoJ
eyBfTUFTS18sIDB4MDAsIDB4MDgsIDB4MDMsIDB4MDAwMCwgMHhmZmZmIH0sCgl7IF9NQVNLXywg
MHgwMCwgMHgwOCwgMHgwNiwgMHg0MDAwLCAweGZmZmYgfSwKwqAJLi4uCn07CgpzdHJ1Y3QgcnRz
ZHNfc2VxdWVuY2UgcnRzZHNfODM5eF9jbWRfc2V0dXAgPSB7Cgl7IF9NQVNLXywgMHgwMCwgMHgw
OCwgMHgxYywgMHgwMDI4LCAweDAwMzggfSwKCXsgX01BU0tfLCAweDAwLCAweDA4LCAweDFjLCAw
eDAwMDAsIDB4MDFjMCB9LAoJeyBfTUFTS18sIDB4MDAsIDB4MDgsIDB4MWMsIDB4MDAwMiwgMHgw
MDA3IH0sCgl7IF9NQVNLXywgMHgwMCwgMHgwOSwgMHgwMSwgMHhjNDQwLCAweGZmZmYgfSwKwqAJ
Li4uCn07CgpCZXN0IHJlZ2FyZHMuCgpNYXJrdXMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
