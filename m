Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 393E4C5AC67
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 02:45:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2WOw3Dd+iM+8VmXyNZEspPKpI2F/8JU2T9cjQ4lQ6ss=; b=ulpIKowVe+TndnuYfEMMwCGVF7
	6F/Ornp+GjHziVhoz2MAiH/EncdZHph8WTzitFdmoggSf4WkYKSqj6hZiTumf/mg/nf97zIaHBjDW
	+SXe8Y23mr6m4tNRg2LYApMZdSf2tThECIIuaTWHSc9lPIoSMtGvE+vcAQoqQABLvsHTmfh92SXsN
	zbsrc8LigpZHg8BhxizntgWGQgfDGsvqPb6cYdo8bXDY+j+JaMYrIrBHz4G5L4budTLuQpsd1tfhi
	X0Xqs+5OXxorDY/lxHhaqUqde905fhtYy0s/dK8NFV/k6UEgtiCpeXhqxT00EASEH5gFADf+GR+WY
	id8O8Wkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtyyQ-0000000FIst-3etA;
	Wed, 12 Aug 2026 02:45:46 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtyyH-0000000FIrc-20QN;
	Wed, 12 Aug 2026 02:45:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 99B14600AE;
	Wed, 12 Aug 2026 02:45:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 390571F00A3A;
	Wed, 12 Aug 2026 02:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786502736;
	bh=QrWXHne5Rj+iz81loEoN0QV2AkdqZPV2Q62rTm5Hl+c=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=d9i06sarZ94uIQdp7MKoSNrl4Zi1gfnsx/7SATNaKg8rLb2cGQQHF/DOOvO227WwI
	 KgCU5Vpf8o12idpU92K8HESmvxc0Tn63pcis9ysQkNGcXp4i8PBc0tUaxHehRA/bd9
	 zPLxnn/7BPuoPMTN1cWycrMK3S10qiNB4/+ZZcpqGLqy2N6mKSaUKUl4wtNhbMT56n
	 Lp4Qebrkx9d39paQL+ByQfMr7I8L4wVbMcN84PhqGwgZdgFoqbSUd8GmBf4RfiSwgP
	 uD5T3Fm1xoejTAqevj9KzgpzkiE3J/16QLmV56PNPeeBOlUdckccik8TwZhvC8KahK
	 /ZtRfbR0VTQWQ==
Date: Tue, 11 Aug 2026 21:45:35 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 linux-usb@vger.kernel.org, Fabrice Gasnier <fabrice.gasnier@foss.st.com>, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>, 
 Vinod Koul <vkoul@kernel.org>, Rahul Kumar <rahul.kumar05@st.com>, 
 devicetree@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Pankaj Dev <pankaj.dev@st.com>, 
 Christian Bruel <christian.bruel@foss.st.com>, 
 linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rosen Penev <rosenp@gmail.com>, 
 linux-stm32@st-md-mailman.stormreply.com, kernel@dh-electronics.com, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Marek Vasut <marex@nabladev.com>
In-Reply-To: <20260812010157.1772849-2-marex@nabladev.com>
References: <20260812010157.1772849-1-marex@nabladev.com>
 <20260812010157.1772849-2-marex@nabladev.com>
Message-Id: <178650273552.610181.6902482576352266703.robh@kernel.org>
Subject: Re: [PATCH 1/8] dt-bindings: phy: Document ST STM32MP25 USB2-FEMTO
 PHY
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

Ck9uIFdlZCwgMTIgQXVnIDIwMjYgMDI6NTU6NDEgKzAyMDAsIE1hcmVrIFZhc3V0IHdyb3RlOgo+
IEZyb206IFBhbmthaiBEZXYgPHBhbmthai5kZXZAc3QuY29tPgo+IAo+IERvY3VtZW50IFVTQjIg
UEhZIGZvciBTVE0zMk1QMjUgVVNCMiBjb250cm9sbGVycywgd2hpY2ggaW5jbHVkZXMgdGhlCj4g
VVNCMi4wIGhvc3Qtb25seSBjb250cm9sbGVyIGFuZCBVU0IgMi4wIHBhcnQgb2YgdGhlIERXQzMg
Y29udHJvbGxlci4KPiBUd28gc3VjaCBQSFlzIGluIHRvdGFsIGFyZSBwcmVzZW50IGluIFNUTTMy
TVAyNSBTb0MsIHRoZXkgYm90aCBhcmUKPiBzbGlnaHRseSBkaWZmZXJlbnQsIHRoZXJlZm9yZSB0
aGV5IHVzZSBkaWZmZXJlbnQgY29tcGF0aWJsZSBzdHJpbmcKPiB0byBkaXNjZXJuIHRoZW0uCj4g
Cj4gU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgTGUgR29mZmljIDxjbGVtZW50LmxlZ29mZmljQGZv
c3Muc3QuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEZhYnJpY2UgR2FzbmllciA8ZmFicmljZS5nYXNu
aWVyQGZvc3Muc3QuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE1hcmVrIFZhc3V0IDxtYXJleEBuYWJs
YWRldi5jb20+Cj4gU2lnbmVkLW9mZi1ieTogUGFua2FqIERldiA8cGFua2FqLmRldkBzdC5jb20+
Cj4gU2lnbmVkLW9mZi1ieTogUmFodWwgS3VtYXIgPHJhaHVsLmt1bWFyMDVAc3QuY29tPgo+IC0t
LQo+IENjOiBBbGV4YW5kcmUgVG9yZ3VlIDxhbGV4YW5kcmUudG9yZ3VlQGZvc3Muc3QuY29tPgo+
IENjOiBDaHJpc3RpYW4gQnJ1ZWwgPGNocmlzdGlhbi5icnVlbEBmb3NzLnN0LmNvbT4KPiBDYzog
Q29ub3IgRG9vbGV5IDxjb25vcitkdEBrZXJuZWwub3JnPgo+IENjOiBGYWJyaWNlIEdhc25pZXIg
PGZhYnJpY2UuZ2FzbmllckBmb3NzLnN0LmNvbT4KPiBDYzogR3JlZyBLcm9haC1IYXJ0bWFuIDxn
cmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KPiBDYzogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6
aytkdEBrZXJuZWwub3JnPgo+IENjOiBNYXhpbWUgQ29xdWVsaW4gPG1jb3F1ZWxpbi5zdG0zMkBn
bWFpbC5jb20+Cj4gQ2M6IE5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3Jn
Pgo+IENjOiBQYW5rYWogRGV2IDxwYW5rYWouZGV2QHN0LmNvbT4KPiBDYzogUmFodWwgS3VtYXIg
PHJhaHVsLmt1bWFyMDVAc3QuY29tPgo+IENjOiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3Jn
Pgo+IENjOiBSb3NlbiBQZW5ldiA8cm9zZW5wQGdtYWlsLmNvbT4KPiBDYzogVGhpbmggTmd1eWVu
IDxUaGluaC5OZ3V5ZW5Ac3lub3BzeXMuY29tPgo+IENjOiBWaW5vZCBLb3VsIDx2a291bEBrZXJu
ZWwub3JnPgo+IENjOiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZwo+IENjOiBrZXJuZWxAZGgt
ZWxlY3Ryb25pY3MuY29tCj4gQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
Zwo+IENjOiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCj4gQ2M6IGxpbnV4LXN0bTMyQHN0LW1kLW1haWxtYW4uc3Rvcm1yZXBs
eS5jb20KPiBDYzogbGludXgtdXNiQHZnZXIua2VybmVsLm9yZwo+IC0tLQo+ICAuLi4vYmluZGlu
Z3MvcGh5L3N0LHN0bTMyLXVzYjJwaHkueWFtbCAgICAgICAgfCA3MiArKysrKysrKysrKysrKysr
KysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA3MiBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEw
MDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3N0LHN0bTMyLXVzYjJw
aHkueWFtbAo+IAoKTXkgYm90IGZvdW5kIGVycm9ycyBydW5uaW5nICdtYWtlIGR0X2JpbmRpbmdf
Y2hlY2snIG9uIHlvdXIgcGF0Y2g6Cgp5YW1sbGludCB3YXJuaW5ncy9lcnJvcnM6CgpkdHNjaGVt
YS9kdGMgd2FybmluZ3MvZXJyb3JzOgpEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGh5L3N0LHN0bTMyLXVzYjJwaHkuZXhhbXBsZS5kdGI6IC9leGFtcGxlLTAvdXNiLXBoeTogZmFp
bGVkIHRvIG1hdGNoIGFueSBzY2hlbWEgd2l0aCBjb21wYXRpYmxlOiBbJ3N0LHN0bTMybXAyNS11
c2IycGh5J10KCmRvYyByZWZlcmVuY2UgZXJyb3JzIChtYWtlIHJlZmNoZWNrZG9jcyk6CgpTZWUg
aHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2RldmljZXRyZWUvcGF0Y2gvMjAy
NjA4MTIwMTAxNTcuMTc3Mjg0OS0yLW1hcmV4QG5hYmxhZGV2LmNvbQoKVGhlIGJhc2UgZm9yIHRo
ZSBzZXJpZXMgaXMgZ2VuZXJhbGx5IHRoZSBsYXRlc3QgcmMxLiBBIGRpZmZlcmVudCBkZXBlbmRl
bmN5CnNob3VsZCBiZSBub3RlZCBpbiAqdGhpcyogcGF0Y2guCgpJZiB5b3UgYWxyZWFkeSByYW4g
J21ha2UgZHRfYmluZGluZ19jaGVjaycgYW5kIGRpZG4ndCBzZWUgdGhlIGFib3ZlCmVycm9yKHMp
LCB0aGVuIG1ha2Ugc3VyZSAneWFtbGxpbnQnIGlzIGluc3RhbGxlZCBhbmQgZHQtc2NoZW1hIGlz
IHVwIHRvCmRhdGU6CgpwaXAzIGluc3RhbGwgZHRzY2hlbWEgLS11cGdyYWRlCgpQbGVhc2UgY2hl
Y2sgYW5kIHJlLXN1Ym1pdCBhZnRlciBydW5uaW5nIHRoZSBhYm92ZSBjb21tYW5kIHlvdXJzZWxm
LiBOb3RlCnRoYXQgRFRfU0NIRU1BX0ZJTEVTIGNhbiBiZSBzZXQgdG8geW91ciBzY2hlbWEgZmls
ZSB0byBzcGVlZCB1cCBjaGVja2luZwp5b3VyIHNjaGVtYS4gSG93ZXZlciwgaXQgbXVzdCBiZSB1
bnNldCB0byB0ZXN0IGFsbCBleGFtcGxlcyB3aXRoIHlvdXIgc2NoZW1hLgoKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
