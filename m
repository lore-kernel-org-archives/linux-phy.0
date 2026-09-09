Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 704F2C79FAD
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 08:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9R15zGJ2Cqw/E2L85aNg3ftj4/RrvQQW9UnRQSakHeg=; b=tXnRSyw6NvfJl2
	cRkVmOseS7chQDQxOQ796q/TeGAC2Gw+LZ/iLhsY7rEsELDZurUX3ZwPP4Xx5uqKl9WRvLaATIcPC
	so7ZDwzYJoB0IF6nMENS7VjffoU1toUqSlZL4xhNKWk/qrg+Z/r6NKC/Pq5TkHdCf2INKGfelbX50
	sjGzIyckHt2BZ9iguU8tnqWo2wOaNukES17mntArsTpGWOvp8yYxTs6MN7nNYVqu1oA2nNOTrY/40
	xxrZqM52ehKJX+sqAbenOFTPUorJCIoG9+WE0YXDRl2SaoSIIUaNoMc2NI9fyVBomRnOXNAy7taUu
	X3uLZ33Trc37qtXrS07Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4DjH-0000000B7q1-2DOr;
	Wed, 09 Sep 2026 08:32:28 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4DiJ-0000000B6il-1h84;
	Wed, 09 Sep 2026 08:31:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id EEBE1444EE;
	Wed,  9 Sep 2026 08:31:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36BC11F00ADE;
	Wed,  9 Sep 2026 08:31:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788942686;
	bh=u90H3kvPiANnjYuJutZLUXCAY3/LlIec8aBZfM+ga7k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=AkuxpnB9gDnuD2XgPNSBlab6Z3PdHQZERsEVWHElRJ50N0hxy2uK6t/K1p5LnwKSd
	 qtR1Nn0oxXrp0Vq+zyk+Z9Ldye+U20odLWC1zmFhuQHw+ZhZHnC2TalDrd33l0VRd7
	 1+QjeDcfUDEXZ1/SI2cx5uvOLd8pEIuiOXVgaRQ5KL8UYBmPlur7NIfdjKU1Kthi42
	 XTXaN594AG5csFXG3PaK+GpEJFgrVjM9K7MKptTJWizdRoTqfSWWx/weuKBsITT+gd
	 uV66BafxxOZ3yiFCyIyskHjvm/Ps6rvzZf6aC4+nxYgZ//jhHHqt8qgqLb11IRQEb+
	 75bsSLWIb6ndA==
Date: Wed, 9 Sep 2026 10:31:17 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Ryan Chen <ryan_chen@aspeedtech.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@codeconstruct.com.au>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] phy: aspeed: Add AST2700 USB3.2 PHY driver
Message-ID: <5oamvlreciw524g3bpbemcpdpljc7thilejy6s4kwmt5hdjwcp@xmaef4eaurzk>
References: <20260701-upstream_usb3phy-v3-0-00e12315b6f9@aspeedtech.com>
 <20260701-upstream_usb3phy-v3-2-00e12315b6f9@aspeedtech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260701-upstream_usb3phy-v3-2-00e12315b6f9@aspeedtech.com>
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

T24gV2VkLCBKdWwgMDEsIDIwMjYgYXQgMDI6NTg6MThQTSArMDgwMCwgUnlhbiBDaGVuIHdyb3Rl
Ogo+IEFkZCBBU1QyNzAwIFVTQjMuMiBQSFkgZHJpdmVyIHN1cHBvcnQuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogUnlhbiBDaGVuIDxyeWFuX2NoZW5AYXNwZWVkdGVjaC5jb20+CgpKdXN0IGNvdXBsZSBv
ZiBuaXRwaWNrcyBiZWxvdy4gT25jZSB0aGV5IGFyZSBhZGRyZXNzZWQ6CgpSZXZpZXdlZC1ieTog
TWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21t
LmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvcGh5L0tjb25maWcgICAgICAgICAgICAgICAgICB8ICAg
MSArCj4gIGRyaXZlcnMvcGh5L01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAgMSArCj4gIGRy
aXZlcnMvcGh5L2FzcGVlZC9LY29uZmlnICAgICAgICAgICB8ICAxNSArKysKPiAgZHJpdmVycy9w
aHkvYXNwZWVkL01ha2VmaWxlICAgICAgICAgIHwgICAyICsKPiAgZHJpdmVycy9waHkvYXNwZWVk
L3BoeS1hc3BlZWQtdXNiMy5jIHwgMjM2ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrCj4gIDUgZmlsZXMgY2hhbmdlZCwgMjU1IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9waHkvS2NvbmZpZyBiL2RyaXZlcnMvcGh5L0tjb25maWcKPiBpbmRleCAxOWYz
YjdkMTJiN2QuLjg1ZmEzODE5NzhmOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9LY29uZmln
Cj4gKysrIGIvZHJpdmVycy9waHkvS2NvbmZpZwo+IEBAIC0xNzEsNiArMTcxLDcgQEAgY29uZmln
IFBIWV9YR0VORQo+ICBzb3VyY2UgImRyaXZlcnMvcGh5L2FsbHdpbm5lci9LY29uZmlnIgo+ICBz
b3VyY2UgImRyaXZlcnMvcGh5L2FtbG9naWMvS2NvbmZpZyIKPiAgc291cmNlICJkcml2ZXJzL3Bo
eS9hcHBsZS9LY29uZmlnIgo+ICtzb3VyY2UgImRyaXZlcnMvcGh5L2FzcGVlZC9LY29uZmlnIgo+
ICBzb3VyY2UgImRyaXZlcnMvcGh5L2F4aWFkby9LY29uZmlnIgo+ICBzb3VyY2UgImRyaXZlcnMv
cGh5L2Jyb2FkY29tL0tjb25maWciCj4gIHNvdXJjZSAiZHJpdmVycy9waHkvY2FkZW5jZS9LY29u
ZmlnIgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9NYWtlZmlsZSBiL2RyaXZlcnMvcGh5L01h
a2VmaWxlCj4gaW5kZXggZDdhYTUxNmJjYzQ5Li5jNmRkMDIwMDNiYmUgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9waHkvTWFrZWZpbGUKPiArKysgYi9kcml2ZXJzL3BoeS9NYWtlZmlsZQo+IEBAIC0y
Myw2ICsyMyw3IEBAIG9iai0kKENPTkZJR19QSFlfWEdFTkUpCQkJKz0gcGh5LXhnZW5lLm8KPiAg
b2JqLSQoQ09ORklHX0dFTkVSSUNfUEhZKQkJKz0gYWxsd2lubmVyLwlcCj4gIAkJCQkJICAgYW1s
b2dpYy8JXAo+ICAJCQkJCSAgIGFwcGxlLwlcCj4gKwkJCQkJICAgYXNwZWVkLwlcCj4gIAkJCQkJ
ICAgYXhpYWRvLwlcCj4gIAkJCQkJICAgYnJvYWRjb20vCVwKPiAgCQkJCQkgICBjYWRlbmNlLwlc
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2FzcGVlZC9LY29uZmlnIGIvZHJpdmVycy9waHkv
YXNwZWVkL0tjb25maWcKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAw
MC4uN2I1ZjQ4ZGIyYmU4Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvcGh5L2FzcGVl
ZC9LY29uZmlnCj4gQEAgLTAsMCArMSwxNSBAQAo+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiBHUEwtMi4wLW9ubHkKPiArCj4gKyMKPiArIyBQSFkgZHJpdmVycyBmb3IgQVNQRUVECj4gKyMK
PiArCj4gK2NvbmZpZyBQSFlfQVNQRUVEX1VTQjMKPiArCXRyaXN0YXRlICJBU1BFRUQgVVNCMyBQ
SFkgZHJpdmVyIgo+ICsJc2VsZWN0IEdFTkVSSUNfUEhZCj4gKwlkZXBlbmRzIG9uIChBUkNIX0FT
UEVFRCB8fCBDT01QSUxFX1RFU1QpCj4gKwloZWxwCj4gKwkgIEVuYWJsZSB0aGlzIHRvIHN1cHBv
cnQgdGhlIFVTQiAzLjIgUEhZIG9uIHRoZSBBc3BlZWQgQVNUMjcwMCBTb0MuCj4gKwkgIEl0IHN1
cHBvcnRzIFN1cGVyU3BlZWRQbHVzIEdlbjJ4MSAoMTAgR2JwcyksIFN1cGVyU3BlZWQgKDUgR2Jw
cyksCj4gKwkgIEhpZ2ggU3BlZWQgKDQ4MCBNYnBzKSwgRnVsbCBTcGVlZCAoMTIgTWJwcykgYW5k
IExvdyBTcGVlZAo+ICsJICAoMS41IE1icHMpLCBhbmQgaXMgcGFpcmVkIHdpdGggdGhlIERXQzMg
VVNCIGNvbnRyb2xsZXIuCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2FzcGVlZC9NYWtlZmls
ZSBiL2RyaXZlcnMvcGh5L2FzcGVlZC9NYWtlZmlsZQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4g
aW5kZXggMDAwMDAwMDAwMDAwLi5kOTZkOWQ3M2EwMDkKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIv
ZHJpdmVycy9waHkvYXNwZWVkL01ha2VmaWxlCj4gQEAgLTAsMCArMSwyIEBACj4gKyMgU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiArb2JqLSQoQ09ORklHX1BIWV9BU1BFRURfVVNC
MykJCSs9IHBoeS1hc3BlZWQtdXNiMy5vCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2FzcGVl
ZC9waHktYXNwZWVkLXVzYjMuYyBiL2RyaXZlcnMvcGh5L2FzcGVlZC9waHktYXNwZWVkLXVzYjMu
Ywo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi5lZmYxNDhmYWEx
NGMKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9waHkvYXNwZWVkL3BoeS1hc3BlZWQt
dXNiMy5jCj4gQEAgLTAsMCArMSwyMzYgQEAKPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IEdQTC0yLjArCj4gKy8qCj4gKyAqIENvcHlyaWdodCAyMDI2IEFzcGVlZCBUZWNobm9sb2d5IElu
Yy4KPiArICovCj4gKwo+ICsjaW5jbHVkZSA8bGludXgvYml0ZmllbGQuaD4KPiArI2luY2x1ZGUg
PGxpbnV4L2Nsay5oPgo+ICsjaW5jbHVkZSA8bGludXgvaW8uaD4KPiArI2luY2x1ZGUgPGxpbnV4
L2lvcG9sbC5oPgo+ICsjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gKyNpbmNsdWRlIDxsaW51
eC9vZi5oPgo+ICsjaW5jbHVkZSA8bGludXgvcGh5L3BoeS5oPgo+ICsjaW5jbHVkZSA8bGludXgv
cGxhdGZvcm1fZGV2aWNlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9yZXNldC5oPgo+ICsKPiArI2Rl
ZmluZSBQSFkzUzAwCQkweDAwCj4gKyNkZWZpbmUgUEhZM1MwMF9JTklUX0RPTkUJCUJJVCgxNSkK
PiArI2RlZmluZSBQSFkzUzAwX1NSQU1fQllQQVNTCQlCSVQoNykKPiArI2RlZmluZSBQSFkzUzAw
X1NSQU1fRVhUX0xPQUQJQklUKDYpCgpJZiB5b3Ugd2FudCB0byBtaXggcmVnaXN0ZXIgb2Zmc2V0
cyBhbmQgYml0ZmllbGQgZGVmaW5pdGlvbnMsIHRoZW4geW91IG5lZWQgdG8KdXNlIGluZGVudCB0
byBkaWZmZXJlbnRpYXRlOgoKCSNkZWZpbmUgUEhZM1MwMAkJCTB4MDAKCSNkZWZpbmUgIFBIWTNT
MDBfSU5JVF9ET05FCUJJVCgxNSkKCSNkZWZpbmUgIFBIWTNTMDBfU1JBTV9CWVBBU1MJQklUKDcp
CgkuLi4KCSNkZWZpbmUgUEhZM1MwNAkJCTB4MDQKCS4uLgoKPiArI2RlZmluZSBQSFkzUzA0CQkw
eDA0Cj4gKyNkZWZpbmUgUEhZM0MwMAkJMHgwOAo+ICsjZGVmaW5lIFBIWTNDMDQJCTB4MEMKClVz
ZSBsb3dlcmNhcHMgZm9yIGFsbCBoZXggdmFsdWVzCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXg
rqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
