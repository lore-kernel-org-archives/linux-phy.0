Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8CC7D3399E
	for <linux-phy@archiver.kernel.org>; Mon, 28 Oct 2024 16:38:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NQgXKcIAAMAf5YkqpdeFhz7xLrup4GtoS6NJlafU0zg=; b=bXV/BRIe0iw8uxXgr+owR2Q7RV
	T0n8WlaFHtYIog8zX0bCb52ta49gkhqZwPf0wGvk3zNHFDqqqZ6m7EwpbFgmRScZuZDdC+lcECAkG
	EOFxkLIhHxxC78LDOBAJuo5BE514lauNTxgN37pcEqstfLG7055FzvTakj+54t85Qn9A1eKon8+Y1
	SXXSuSGDUmbW1Wu3yDWO+/RqSKSHzDguKUi4BfWikUx9dx6aXXdmtj8kSBWOVp6tB6L0iHMXGQ5sp
	JyLhTLl+iEYgWwSdHdJZSMvFiVB9vLZSt52UeJOcsM0gvj0Ey+ItzkpzDt0XHBcOufG4O/PcLWdxn
	cBGYHpmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Sl7-0000000BWUE-01h1;
	Mon, 28 Oct 2024 16:38:25 +0000
Received: from thales.epochal.quest ([51.222.15.28])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Sib-0000000BVQa-1r4o;
	Mon, 28 Oct 2024 16:35:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=epochal.quest;
	s=default; t=1730133348;
	bh=SgbZ6d/TsfOwGbc31ZKuYuZl628O9USHtGUALdy8B+A=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=ZgS7BZdH9XB4Xl54n/5i1z3TmXuFPGbZT7e1yyh6uidffhW5fJX3UtOgD2UeUYK1h
	 aPieFahk0TWr7mrR5UR2vvYcP5G9n0GfgeYuBZezw2UKR5niDymDl8Chm2YXq1yxqd
	 vV4KAWsY0azGRYxHjbp5QIGL1rr6H6czLNQ6yUZmoFu5Ga1u8VcJoyhLXkD0lsoVNi
	 T2CoAgCcSGveBqJ5QOz7kqvpbcs/+pHyUxwaXhJI4d0jDTHHpou488yykXHXa3FNB2
	 SauQb81+iQBLuqZg93k1S5j7eQe03frPSqwIwgzzfHf1Vz5qoXIeBK2irb+YrAK9yQ
	 VpuH4DjlbmtDw==
X-Virus-Scanned: by epochal.quest
MIME-Version: 1.0
Date: Mon, 28 Oct 2024 13:35:46 -0300
From: Cody Eksal <masterr3c0rd@epochal.quest>
To: wens@csie.org
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>,
 Andre Przywara <andre.przywara@arm.com>, Parthiban <parthiban@linumiz.com>,
 Yangtao Li <frank@allwinnertech.com>, Florian Fainelli
 <florian.fainelli@broadcom.com>, Vinod Koul <vkoul@kernel.org>, Linus
 Walleij <linus.walleij@linaro.org>, Thierry Reding <treding@nvidia.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Maxime Ripard
 <mripard@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yangtao Li <tiny.windzz@gmail.com>, Viresh Kumar <vireshk@kernel.org>,
 Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>, Kishon Vijay
 Abraham I <kishon@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>
Subject: Re: [PATCH 07/13] arm64: dts: allwinner: a100: add usb related nodes
In-Reply-To: <CAGb2v64tQ_9C3mwJqt-tm-6SV=SHAk75sO5Ho7gT=p=iyRfLcw@mail.gmail.com>
References: <20241024170540.2721307-1-masterr3c0rd@epochal.quest>
 <20241024170540.2721307-8-masterr3c0rd@epochal.quest>
 <CAGb2v64tQ_9C3mwJqt-tm-6SV=SHAk75sO5Ho7gT=p=iyRfLcw@mail.gmail.com>
Message-ID: <542c16a63ab228a7ed1cc81fc91b961f@epochal.quest>
X-Sender: masterr3c0rd@epochal.quest
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_093549_588881_13E336B2 
X-CRM114-Status: GOOD (  10.14  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMjAyNC8xMC8yNSAxMDoyOSBwbSwgQ2hlbi1ZdSBUc2FpIHdyb3RlOgo+IE9uIEZyaSwgT2N0
IDI1LCAyMDI0IGF0IDE6MDnigK9BTSBDb2R5IEVrc2FsIDxtYXN0ZXJyM2MwcmRAZXBvY2hhbC5x
dWVzdD4gCj4gd3JvdGU6Cj4+IAo+PiBGcm9tOiBZYW5ndGFvIExpIDxmcmFua0BhbGx3aW5uZXJ0
ZWNoLmNvbT4KPj4gCj4+IEFsbHdpbm5lciBBNjQgaGF2ZSB0d28gSENJIFVTQiBjb250cm9sbGVy
cywgYSBPVEcgY29udHJvbGxlciBhbmQgYSBVU0IKPiAKPiAgICAgICAgICAgICBeXl4gUGxlYXNl
IHVwZGF0ZSB0aGlzLgpJIHdhc24ndCBzdXJlIGlmIEkgd2FzIHN1cHBvc2VkIHRvIHVwZGF0ZSB0
aGUgY29tbWl0IG1lc3NhZ2VzOyBhIGZldyAKb3RoZXJzIGhhdmUgZ3JhbW1hciBlcnJvcnMgYXMg
d2VsbC4gSSdsbCBmaXggdGhvc2UgYWxvbmdzaWRlIHRoaXMgb25lIGluIApWMi4KClRoYW5rcyEK
LSBDb2R5Cj4+IFBIWSBkZXZpY2UsIGxldCdzIGFkZCBub2RlcyBvbiBkdHMuCj4+IAo+PiBTaWdu
ZWQtb2ZmLWJ5OiBZYW5ndGFvIExpIDxmcmFua0BhbGx3aW5uZXJ0ZWNoLmNvbT4KPj4gW21hc3Rl
cnIzYzByZEBlcG9jaGFsLnF1ZXN0OiBmYWxsYmFjayB0byBhMzMtbXVzYiBpbnN0ZWFkIG9mIGgz
LW11c2JdCj4+IFNpZ25lZC1vZmYtYnk6IENvZHkgRWtzYWwgPG1hc3RlcnIzYzByZEBlcG9jaGFs
LnF1ZXN0Pgo+PiAtLS0KPj4gIC4uLi9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWEx
MDAuZHRzaSB8IDkxIAo+PiArKysrKysrKysrKysrKysrKysrCj4+ICAxIGZpbGUgY2hhbmdlZCwg
OTEgaW5zZXJ0aW9ucygrKQo+PiAKPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
YWxsd2lubmVyL3N1bjUwaS1hMTAwLmR0c2kgCj4+IGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3
aW5uZXIvc3VuNTBpLWExMDAuZHRzaQo+PiBpbmRleCBhZGIxMWIyNjA0NWYuLjBhZWUxYjU3ODY2
MSAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWEx
MDAuZHRzaQo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktYTEw
MC5kdHNpCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
