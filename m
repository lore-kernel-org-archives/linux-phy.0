Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 315C1C77B75
	for <linux-phy@archiver.kernel.org>; Wed, 17 May 2023 12:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QKaXqaSfU/AyO38vwY4JkZTcxvkRrirDZXyHCN9usn4=; b=sfF/qR1IJHG3V6
	TNpNxePPnL+wttXyOdbUV/IFIHiUfeuSgakW1Yvh2u3fX4q3Uz8AsiR/Se6zt1YyLhtu6yyDYzShp
	Ur8rFkLb5Ib/EumlSfqWR7otctZRIMNxMG4NEeWdWYd9crAChcN+H3SlrWnPVKx1QZ1nxuG0Xt8ZP
	5sPKeUq5xMxavT/5Z90KluksKub/mPRcDiM6gAYn+7xth4uZJVssjU8cqde3oAfszbPjemsU0x4oG
	mQwDMzqTppEHmnV8zKqJxFDTmZIT/v35uwqJNbychk40t2EK0W4xhM6Ji6WDed9TyQdFEnA0W09Ow
	aDQre1VF3cIPRldYJcZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzGd5-009rRP-26;
	Wed, 17 May 2023 12:51:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzGd2-009rQk-1C;
	Wed, 17 May 2023 12:51:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7DDB063DD8;
	Wed, 17 May 2023 12:51:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 734CAC433D2;
	Wed, 17 May 2023 12:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684327898;
	bh=2JoCzAya4ozHUzDjJra+EnUuUPNieFhbiHSZyLF00PA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=psTl8xOZaaVdlSpsfzROkdJ3SFvhphHBtGtz60jb/YMXr4VTHVXNht91DgJqAKtwM
	 H8sgLo39VR+p56amkVM+nizUQfoThZu3vREL8JG9oFCQqTcQvl5XAltpW5aIjg+VyD
	 SXMVUJckERKd+j3EukP8dpqLSfgIEoR3G9omf+hXqvZqa4axZsItV3gonpk6A8s/pN
	 aRgAqwHumvaCfTdfM+T1i/wkM1+WA1WCZDXLbBAa4slFyzUdR07YpZ1fzVfvgAKnkF
	 hRjaRUQDDdRbbO8HXsql899236rOEs5v2FskSLs7JyqngQT+3AHoxSsRmt0EUEYCTP
	 OSzvA1yy38gsw==
Date: Wed, 17 May 2023 18:21:34 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Thierry Reding <thierry.reding@gmail.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Guillaume Ranquet <granquet@baylibre.com>,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	"linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>
Subject: Re: [PATCH] phy: mediatek: Avoid floating point constants
Message-ID: <ZGTN1vWnxmaR/XKM@matsya>
References: <20230419122131.2167122-1-thierry.reding@gmail.com>
 <89583b89-ea8c-8096-b083-6ab773e6c281@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <89583b89-ea8c-8096-b083-6ab773e6c281@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_055140_497346_27B95FCB 
X-CRM114-Status: GOOD (  26.69  )
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

T24gMTctMDUtMjMsIDEyOjU5LCBKb24gSHVudGVyIHdyb3RlOgo+IEhpIFZpbm9kLAo+IAo+IE9u
IDE5LzA0LzIwMjMgMTM6MjEsIFRoaWVycnkgUmVkaW5nIHdyb3RlOgo+ID4gRnJvbTogVGhpZXJy
eSBSZWRpbmcgPHRyZWRpbmdAbnZpZGlhLmNvbT4KPiA+IAo+ID4gV2hlbiBidWlsZGluZyB3aXRo
IG9sZCB2ZXJzaW9ucyBvZiBHQ0MgKDYuMyBpbiB0aGlzIGNhc2UpLCB0aGUgY29tcGlsZXIKPiA+
IHN0dW1ibGVzIG92ZXIgdGhlIGZsb2F0aW5nIHBvaW50IGNvbnN0YW50cyBpbiB0aGlzIGRyaXZl
cjoKPiA+IAo+ID4gCTogSW4gZnVuY3Rpb24g4oCYbXRrX2hkbWlfcGxsX3ByZXBhcmXigJk6Cj4g
PiAJZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1oZG1pLW10ODE5NS5jOjMzMToyMzogZXJy
b3I6IOKAmC1tZ2VuZXJhbC1yZWdzLW9ubHnigJkgaXMgaW5jb21wYXRpYmxlIHdpdGggZmxvYXRp
bmctcG9pbnQgY29kZQo+ID4gCSAgfSBlbHNlIGlmIChwaXhlbF9jbGsgPj0gNzQuMTc1ICogTUVH
QSAmJiBwaXhlbF9jbGsgPD0gMzAwICogTUVHQSkgewo+ID4gCj4gPiAJZHJpdmVycy9waHkvbWVk
aWF0ZWsvcGh5LW10ay1oZG1pLW10ODE5NS5jOjM2MToxMjogZXJyb3I6IOKAmC1tZ2VuZXJhbC1y
ZWdzLW9ubHnigJkgaXMgaW5jb21wYXRpYmxlIHdpdGggZmxvYXRpbmctcG9pbnQgY29kZQo+ID4g
CSBzdGF0aWMgaW50IG10a19oZG1pX3BsbF9wcmVwYXJlKHN0cnVjdCBjbGtfaHcgKmh3KQo+ID4g
CQkgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn4KPiA+IAlkcml2ZXJzL3BoeS9tZWRpYXRlay9waHkt
bXRrLWhkbWktbXQ4MTk1LmM6MzYxOjEyOiBlcnJvcjog4oCYLW1nZW5lcmFsLXJlZ3Mtb25seeKA
mSBpcyBpbmNvbXBhdGlibGUgd2l0aCBmbG9hdGluZy1wb2ludCBjb2RlCj4gPiAKPiA+IEZpeCB0
aGlzIGJ5IHN3aXRjaGluZyB0byB0aGUgS0lMTyBtYWNybyBpbnN0ZWFkIGFuZCBtdWx0aXBseWlu
ZyB0aGUKPiA+IGNvbnN0YW50cyBieSAxMDAwIHRvIGdldCByaWQgb2YgdGhlIGZsb2F0aW5nIHBv
aW50Lgo+ID4gCj4gPiBGaXhlczogNDU4MTBkNDg2YmI0ICgicGh5OiBtZWRpYXRlazogYWRkIHN1
cHBvcnQgZm9yIHBoeS1tdGstaGRtaS1tdDgxOTUiKQo+ID4gUmVwb3J0ZWQtYnk6IEpvbmF0aGFu
IEh1bnRlciA8am9uYXRoYW5oQG52aWRpYS5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBUaGllcnJ5
IFJlZGluZyA8dHJlZGluZ0BudmlkaWEuY29tPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvcGh5L21l
ZGlhdGVrL3BoeS1tdGstaGRtaS1tdDgxOTUuYyB8IDggKysrKy0tLS0KPiA+ICAgMSBmaWxlIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstaGRtaS1tdDgxOTUuYyBiL2RyaXZlcnMv
cGh5L21lZGlhdGVrL3BoeS1tdGstaGRtaS1tdDgxOTUuYwo+ID4gaW5kZXggYWJmYzA3N2ZiMGE4
Li5iMTBhZjI2Y2FkMmYgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHkt
bXRrLWhkbWktbXQ4MTk1LmMKPiA+ICsrKyBiL2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGst
aGRtaS1tdDgxOTUuYwo+ID4gQEAgLTIzOSw5ICsyMzksOSBAQCBzdGF0aWMgaW50IG10a19oZG1p
X3BsbF9jYWxjKHN0cnVjdCBtdGtfaGRtaV9waHkgKmhkbWlfcGh5LCBzdHJ1Y3QgY2xrX2h3ICpo
dywKPiA+ICAgCQl0eHBvc2RpdiA9IDg7Cj4gPiAgIAllbHNlIGlmICh0bWRzX2NsayA+PSA1NCAq
IE1FR0EgJiYgdG1kc19jbGsgPCAxNDguMzUgKiBNRUdBKQo+ID4gICAJCXR4cG9zZGl2ID0gNDsK
PiA+IC0JZWxzZSBpZiAodG1kc19jbGsgPj0gMTQ4LjM1ICogTUVHQSAmJiB0bWRzX2NsayA8IDI5
Ni43ICogTUVHQSkKPiA+ICsJZWxzZSBpZiAodG1kc19jbGsgPj0gMTQ4MzUwICogS0lMTyAmJiB0
bWRzX2NsayA8IDI5NjcwMCAqIEtJTE8pCj4gPiAgIAkJdHhwb3NkaXYgPSAyOwo+ID4gLQllbHNl
IGlmICh0bWRzX2NsayA+PSAyOTYuNyAqIE1FR0EgJiYgdG1kc19jbGsgPD0gNTk0ICogTUVHQSkK
PiA+ICsJZWxzZSBpZiAodG1kc19jbGsgPj0gMjk2NzAwICogS0lMTyAmJiB0bWRzX2NsayA8PSA1
OTQgKiBNRUdBKQo+ID4gICAJCXR4cG9zZGl2ID0gMTsKPiA+ICAgCWVsc2UKPiA+ICAgCQlyZXR1
cm4gLUVJTlZBTDsKPiA+IEBAIC0zMjgsMTIgKzMyOCwxMiBAQCBzdGF0aWMgaW50IG10a19oZG1p
X3BsbF9kcnZfc2V0dGluZyhzdHJ1Y3QgY2xrX2h3ICpodykKPiA+ICAgCQljbGtfY2hhbm5lbF9i
aWFzID0gMHgzNDsgLyogMjBtQSAqLwo+ID4gICAJCWltcGVkYW5jZV9lbiA9IDB4ZjsKPiA+ICAg
CQlpbXBlZGFuY2UgPSAweDM2OyAvKiAxMDBvaG0gKi8KPiA+IC0JfSBlbHNlIGlmIChwaXhlbF9j
bGsgPj0gNzQuMTc1ICogTUVHQSAmJiBwaXhlbF9jbGsgPD0gMzAwICogTUVHQSkgewo+ID4gKwl9
IGVsc2UgaWYgKHBpeGVsX2NsayA+PSA3NDE3NSAqIEtJTE8gJiYgcGl4ZWxfY2xrIDw9IDMwMCAq
IE1FR0EpIHsKPiA+ICAgCQlkYXRhX2NoYW5uZWxfYmlhcyA9IDB4MzQ7IC8qIDIwbUEgKi8KPiA+
ICAgCQljbGtfY2hhbm5lbF9iaWFzID0gMHgyYzsgLyogMTZtQSAqLwo+ID4gICAJCWltcGVkYW5j
ZV9lbiA9IDB4ZjsKPiA+ICAgCQlpbXBlZGFuY2UgPSAweDM2OyAvKiAxMDBvaG0gKi8KPiA+IC0J
fSBlbHNlIGlmIChwaXhlbF9jbGsgPj0gMjcgKiBNRUdBICYmIHBpeGVsX2NsayA8IDc0LjE3NSAq
IE1FR0EpIHsKPiA+ICsJfSBlbHNlIGlmIChwaXhlbF9jbGsgPj0gMjcgKiBNRUdBICYmIHBpeGVs
X2NsayA8IDc0MTc1ICogS0lMTykgewo+ID4gICAJCWRhdGFfY2hhbm5lbF9iaWFzID0gMHgxNDsg
LyogMTBtQSAqLwo+ID4gICAJCWNsa19jaGFubmVsX2JpYXMgPSAweDE0OyAvKiAxMG1BICovCj4g
PiAgIAkJaW1wZWRhbmNlX2VuID0gMHgwOwo+IAo+IAo+IFRoaXMgaXMgYnJlYWtpbmcga2VybmVs
IGNvbXBpbGF0aW9uIHdpdGggb2xkZXIgY29tcGlsZXJzIHN1Y2ggYXMgR0NDNy4gVGhpcwo+IGlz
IG5vdyBpbiB0aGUgbWFpbmxpbmUgYW5kIG9sZGVyIGNvbXBpbGVycyBjYW5ub3QgYnVpbGQgdGhl
IGtlcm5lbCB3aXRoIHRoaXMKPiBkcml2ZXIgZW5hYmxlZC4gVGhlIGtlcm5lbCBkb2NzIHNheSB0
aGUgbWluIHZlcnNpb24gc3VwcG9ydGVkIGlzIEdDQyA1LjEKPiBjdXJyZW50bHkuCj4gCj4gQ2Fu
IHdlIGdldCB0aGlzIG1lcmdlZCBhcyBhIGZpeCBmb3IgdjYuND8KClNvcnJ5IEkgbWlzc2VkIHRo
aXMgb25lIGJ1dCBJIGhhdmUgYWxyZWFkeSBhcHBsaWVkIDAzMjYyYTNmNWI1YiAoInBoeToKbWVk
aWF0ZWs6IHJld29yayB0aGUgZmxvYXRpbmcgcG9pbnQgY29tcGFyaXNvbnMgdG8gZml4ZWQgcG9p
bnQiKSBhbmQKdGhpcyBpcyBpbiBsaW51eC1uZXh0IGFuZCBzaG91bGQgYmUgaG9wZWZ1bGx5IGlu
IExpbnVzJ3MgdHJlZSBpbiBuZXh0IHJjCgpUaGFua3MKLS0gCn5WaW5vZAoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
