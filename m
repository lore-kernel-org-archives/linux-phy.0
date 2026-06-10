Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88222CD8C90
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 04:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=czRdCD/5dEBkVdqMbdgciE+ewBGwfTqSqxAKCF2DFB4=; b=xqld+WVcOeaA/S
	wwaflMbFfpToxirVCLl4eU9HWTy0Ul4wxYZfSFfHxcsuW7lefXY01csJdV6KHL3D4mnYsRMcl2MfM
	rUtbSouBdtJZMaIhH9FRJh6LiqZOtNkn47NK7QHE/cPo7aRBNXZZdrl0T8NSr8U+tdcHE9R6Fwqz9
	wQMVzjeJlM3PfhhZ5y6VBU7Y1p3LohYIJYeqCypBG5JbkI43pxx7+ea7iqsIe9zjSF93HKF87dtYS
	tcbiCLuMFdaDi5nkm9DSRi+Kv15/pYuPy4Idg126u+hwALC6Na65im7LCdDWZcn2pYXOcYqgQCx9Q
	EoNNOljLnkYJjB8UkQ2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXAd4-00000006mhi-0QgX;
	Wed, 10 Jun 2026 04:33:26 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXAd3-00000006mhY-0Qmi;
	Wed, 10 Jun 2026 04:33:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 831BD407E8;
	Wed, 10 Jun 2026 04:33:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 020371F00893;
	Wed, 10 Jun 2026 04:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781066004;
	bh=oXYfUS9iAnPAsRhuciPrR5ndvfboUA5NSi/Wj0ODlDA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=NEoNRuHm4G3lOhwacyNXbaBQqHrh1KHHYSnPmxbF2pO3gzLvNecXW9RqfuRtvavNR
	 kCqQ2xsdcbbYwLCHtOqYp4dajl2MbsnCLkHk5qJ8ky4sbFj/KJH88T0VDjNYT11t8B
	 7ohqtNPGTJAYnV2tUYCcGH8nd7k+/O4zRcrU6r0ip1d1GvBQecEa3PobFqQ7/drA0M
	 5gOJ3ZNlrju7JiplgapmU8c+tbPufpIpSDp7pShLMDW6pbUm8Fk19TDboesVTu4U4X
	 l2p2W65uiqCXIspXWUtzZ75EaYRw5TcEm2fCDBQ7GMQ+9EBlDPtt7MBX7TzVe8Hot5
	 yvgHY6+mS/87A==
Date: Tue, 9 Jun 2026 21:33:22 -0700
From: Drew Fustini <fustini@kernel.org>
To: Icenowy Zheng <uwu@icenowy.me>
Cc: Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Jisheng Zhang <jszhang@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org, Han Gao <rabenda.cn@gmail.com>,
	Yao Zi <ziyao@disroot.org>
Subject: Re: [PATCH 02/12] clk: thead: th1520-ap: add support for MISC subsys
 clocks
Message-ID: <aijpEqzJ7fM7rGMH@thelio>
References: <20260507081710.4090814-1-zhengxingda@iscas.ac.cn>
 <20260507081710.4090814-3-zhengxingda@iscas.ac.cn>
 <aier9XppLeCkJydw@thelio>
 <93b867c1b7f5526cc25cb04f838432cd752f5981.camel@icenowy.me>
 <aievi0s-3SO8hV6a@thelio>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aievi0s-3SO8hV6a@thelio>
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

T24gTW9uLCBKdW4gMDgsIDIwMjYgYXQgMTE6MTU6MzlQTSAtMDcwMCwgRHJldyBGdXN0aW5pIHdy
b3RlOgo+IE9uIFR1ZSwgSnVuIDA5LCAyMDI2IGF0IDAyOjAxOjQzUE0gKzA4MDAsIEljZW5vd3kg
Wmhlbmcgd3JvdGU6Cj4gPiDlnKggMjAyNi0wNi0wOOS4gOeahCAyMzowMCAtMDcwMO+8jERyZXcg
RnVzdGluaeWGmemBk++8mgo+ID4gPiBPbiBUaHUsIE1heSAwNywgMjAyNiBhdCAwNDoxNzowMFBN
ICswODAwLCBJY2Vub3d5IFpoZW5nIHdyb3RlOgo+ID4gPiA+IFRoZSBUSDE1MjAgU29DIGNvbnRh
aW5zIGEgTUlTQ19TVUJTWVMgY2xvY2sgY29udHJvbGxlciwgd2hpY2gKPiA+ID4gPiBhbGxvd3MK
PiA+ID4gPiBjb250cm9sbGluZyBvZiBVU0IgcmVsYXRlZCBjbG9ja3MgYW5kIE1NQy9TRCBjb250
cm9sbGVyIEFIQiBidXMKPiA+ID4gPiBjbG9ja3MuCj4gPiA+ID4gCj4gPiA+ID4gQWRkIHN1cHBv
cnQgZm9yIHRoaXMgY2xvY2sgY29udHJvbGxlciwgaW4gb3JkZXIgdG8gZW5hYmxlIFVTQgo+ID4g
PiA+IHN1cHBvcnQuCj4gPiA+ID4gCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSWNlbm93eSBaaGVu
ZyA8emhlbmd4aW5nZGFAaXNjYXMuYWMuY24+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gwqBkcml2ZXJz
L2Nsay90aGVhZC9jbGstdGgxNTIwLWFwLmMgfCA2NAo+ID4gPiA+ICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysKPiA+ID4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA2NCBpbnNlcnRpb25zKCsp
Cj4gPiA+ID4gCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL3RoZWFkL2Nsay10aDE1
MjAtYXAuYwo+ID4gPiA+IGIvZHJpdmVycy9jbGsvdGhlYWQvY2xrLXRoMTUyMC1hcC5jCj4gPiA+
ID4gaW5kZXggM2E2ODQ3ZjFjOTUwZi4uMjRmNzg1ZjBiMzI5YSAxMDA2NDQKPiA+ID4gPiAtLS0g
YS9kcml2ZXJzL2Nsay90aGVhZC9jbGstdGgxNTIwLWFwLmMKPiA+ID4gPiArKysgYi9kcml2ZXJz
L2Nsay90aGVhZC9jbGstdGgxNTIwLWFwLmMKPiA+ID4gWy4uLl0KPiA+ID4gPiBAQCAtMTYwOSw2
ICsxNjYzLDEyIEBAIHN0YXRpYyBpbnQgdGgxNTIwX2Nsa19wcm9iZShzdHJ1Y3QKPiA+ID4gPiBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiA+ID4gwqAJCQlyZXR1cm4gcmV0Owo+ID4gPiA+IMKg
CX0KPiA+ID4gPiDCoAo+ID4gPiA+ICsJaWYgKHBsYXRfZGF0YSA9PSAmdGgxNTIwX2FwX3BsYXRk
YXRhKSB7Cj4gPiA+ID4gKwkJcmV0ID0gZGV2bV9jbGtfaHdfcmVnaXN0ZXIoZGV2LAo+ID4gPiA+
ICZ1c2Jfc3VzcGVuZF9kaXZfY2xrLmh3KTsKPiA+ID4gPiArCQlpZiAocmV0KQo+ID4gPiA+ICsJ
CQlyZXR1cm4gcmV0Owo+ID4gPiA+ICsJfQo+ID4gPiAKPiA+ID4gU2hvdWxkIHVzYl9zdXNwZW5k
X2Rpdl9jbGsuaHcgaW5zdGVhZCBiZSByZWdpc3RlcmVkIHVuZGVyCj4gPiA+ICdpZiAocGxhdF9k
YXRhID09ICZ0aDE1MjBfYXBfcGxhdGRhdGEpJz8KPiA+IAo+ID4gRG8geW91IG1lYW4gbWlzY19w
bGF0ZGF0YT8KPiA+IAo+ID4gWWVzLCB0aGlzIGlzIGFuIGNvcHktbi1wYXN0ZSBlcnJvciB0aGF0
IGRlc2VydmVzIGEgZml4Lgo+IAo+IEhhaCwgeWVzLCBJIGFsc28gaGFkIGEgdHlwbyA6KQoKQXNz
dW1pbmcgdGhhdCBnZXRzIGZpeGVkIGluIHRoZSBuZXh0IHJldjoKClJldmlld2VkLWJ5OiBEcmV3
IEZ1c2luaSA8ZnVzdGluaUBrZXJuZWwub3JnPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
