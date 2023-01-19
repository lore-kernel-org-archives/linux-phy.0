Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6BD4C00A5A
	for <linux-phy@archiver.kernel.org>; Thu, 19 Jan 2023 14:22:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0afiNfy9YoANueXDvV5exdU4GC97zV+sLaIb2OTerQY=; b=dOhxO6DvCXKxMo
	YkuiDHsdwV9xKI+vvFxKzTZ0Ph3HkFyR2nJUphprsjWYePmpU10jqS+Ey51ZxPFzpIhBdQzF1ob2F
	HGtc0tDPMO/StLSCXn6ZeVcPhPfXlplXMfEYPowh1BWzqOgRtr0LApPwr6CBvpedPPH7FgB+sgd0p
	t/O7R+rNW1JL2AbZZWApYmB+PT7t9dZGG8u/i+T74dGaMXWj+HRdR19zfaieRpnA2ECYqy9nB0W+X
	ruLc6B8MmJpInflhs7kvDOP/S0cYLeK/X605nVbYB8bZb0GSSMOT8HGPvJt4r79MfRVfjFftSZ5ae
	s3KGZWyOeV7pQ8VCAkNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIVo2-005Hvd-1y; Thu, 19 Jan 2023 14:22:18 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIVny-005Hup-Vg
	for linux-phy@lists.infradead.org; Thu, 19 Jan 2023 14:22:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id CB865B82146;
	Thu, 19 Jan 2023 14:22:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 311D8C433D2;
	Thu, 19 Jan 2023 14:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674138131;
	bh=bY47sj+taCgjVg3ciOHgQdSFSSTtzqbCSq1j2aPO4Cw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lMgflNK94RMu0HDmaLdm3GnHGNVnW5J/RoxECwBu4K3DIg3722+vjDkVux1dVwXXD
	 0MCc1HnLi5ILp6pWp1gx+fP9RIOvhu1heAQywr44/50zTqb5mwoxWe7nO1zksWB3Mw
	 RV0Hl6Nc7+LxhAFwNFznpY3r4hqbLI2XM0FuFDEj2PBNo8DlgauEkiw4yrEp0XgP9N
	 f3vor7PXuQ1t2lvEfs6uHiZIa0GNV7c4Llji1U7jzYbTMEDWZVN8uhJxroCUKCJLR3
	 LHfKhTy2Lm5xrjB9jRVgqfm0i+RmZO6w6rgBHnyxOmyPdq4gOkbczG2jHD00tO/dJk
	 FcIzO9TzgZMog==
Date: Thu, 19 Jan 2023 19:51:55 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 10/12] PCI: qcom: Add SM8550 PCIe support
Message-ID: <20230119142155.GA101896@thinkpad>
References: <20230119140453.3942340-1-abel.vesa@linaro.org>
 <20230119140453.3942340-11-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230119140453.3942340-11-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_062215_328153_D7CEFE13 
X-CRM114-Status: GOOD (  23.08  )
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

T24gVGh1LCBKYW4gMTksIDIwMjMgYXQgMDQ6MDQ6NTFQTSArMDIwMCwgQWJlbCBWZXNhIHdyb3Rl
Ogo+IEFkZCBjb21wYXRpYmxlIGZvciBib3RoIFBDSWUgZm91bmQgb24gU004NTUwLgo+IEFsc28g
YWRkIHRoZSBjbm9jX3BjaWVfc2ZfYXhpIGNsb2NrIG5lZWRlZCBieSB0aGUgU004NTUwLgo+IAo+
IFNpZ25lZC1vZmYtYnk6IEFiZWwgVmVzYSA8YWJlbC52ZXNhQGxpbmFyby5vcmc+CgpSZXZpZXdl
ZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pQGtlcm5lbC5vcmc+Cgo+IFJldmlld2Vk
LWJ5OiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQGxpbmFyby5vcmc+Cj4gLS0tCj4gCj4g
VGhlIHYzIG9mIHRoaXMgcGF0Y2hzZXQgaXM6Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxs
LzIwMjMwMTE5MTEyNDUzLjMzOTM5MTEtMS1hYmVsLnZlc2FAbGluYXJvLm9yZy8KPiAKPiBDaGFu
Z2VzIHNpbmNlIHYzOgo+ICAqIHJlbmFtZWQgY25vY19wY2llX3NmX2F4aSB0byBjbm9jX3NmX2F4
aQo+IAo+IENoYW5nZXMgc2luY2UgdjI6Cj4gICogbm9uZQo+ICAKPiBDaGFuZ2VzIHNpbmNlIHYx
Ogo+ICAqIGNoYW5nZWQgdGhlIHN1YmplY3QgbGluZSBwcmVmaXggZm9yIHRoZSBwYXRjaCB0byBt
YXRjaCB0aGUgaGlzdG9yeSwKPiAgICBsaWtlIEJqb3JuIEhlbGdhYXMgc3VnZ2VzdGVkLgo+ICAq
IGFkZGVkIEtvbnJhZCdzIFItYiB0YWcKPiAKPiAKPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9k
d2MvcGNpZS1xY29tLmMgfCA0ICsrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9wY2llLXFjb20uYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5j
Cj4gaW5kZXggNzdlNWRjN2I4OGFkLi4zMGY3NGJjNTFkYmYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMKPiArKysgYi9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL2R3Yy9wY2llLXFjb20uYwo+IEBAIC0xODIsNyArMTgyLDcgQEAgc3RydWN0IHFjb21f
cGNpZV9yZXNvdXJjZXNfMl8zXzMgewo+ICAKPiAgLyogNiBjbG9ja3MgdHlwaWNhbGx5LCA3IGZv
ciBzbTgyNTAgKi8KCk5vdyB0aGlzIGNvbW1lbnQgaXMgb3V0ZGF0ZWQgOykKClRoYW5rcywKTWFu
aQoKPiAgc3RydWN0IHFjb21fcGNpZV9yZXNvdXJjZXNfMl83XzAgewo+IC0Jc3RydWN0IGNsa19i
dWxrX2RhdGEgY2xrc1sxMl07Cj4gKwlzdHJ1Y3QgY2xrX2J1bGtfZGF0YSBjbGtzWzEzXTsKPiAg
CWludCBudW1fY2xrczsKPiAgCXN0cnVjdCByZWd1bGF0b3JfYnVsa19kYXRhIHN1cHBsaWVzWzJd
Owo+ICAJc3RydWN0IHJlc2V0X2NvbnRyb2wgKnBjaV9yZXNldDsKPiBAQCAtMTIwOCw2ICsxMjA4
LDcgQEAgc3RhdGljIGludCBxY29tX3BjaWVfZ2V0X3Jlc291cmNlc18yXzdfMChzdHJ1Y3QgcWNv
bV9wY2llICpwY2llKQo+ICAJcmVzLT5jbGtzW2lkeCsrXS5pZCA9ICJub2NfYWdncl80IjsKPiAg
CXJlcy0+Y2xrc1tpZHgrK10uaWQgPSAibm9jX2FnZ3Jfc291dGhfc2YiOwo+ICAJcmVzLT5jbGtz
W2lkeCsrXS5pZCA9ICJjbm9jX3F4IjsKPiArCXJlcy0+Y2xrc1tpZHgrK10uaWQgPSAiY25vY19z
Zl9heGkiOwo+ICAKPiAgCW51bV9vcHRfY2xrcyA9IGlkeCAtIG51bV9jbGtzOwo+ICAJcmVzLT5u
dW1fY2xrcyA9IGlkeDsKPiBAQCAtMTgyOCw2ICsxODI5LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBvZl9kZXZpY2VfaWQgcWNvbV9wY2llX21hdGNoW10gPSB7Cj4gIAl7IC5jb21wYXRpYmxlID0g
InFjb20scGNpZS1zbTgyNTAiLCAuZGF0YSA9ICZjZmdfMV85XzAgfSwKPiAgCXsgLmNvbXBhdGli
bGUgPSAicWNvbSxwY2llLXNtODQ1MC1wY2llMCIsIC5kYXRhID0gJmNmZ18xXzlfMCB9LAo+ICAJ
eyAuY29tcGF0aWJsZSA9ICJxY29tLHBjaWUtc204NDUwLXBjaWUxIiwgLmRhdGEgPSAmY2ZnXzFf
OV8wIH0sCj4gKwl7IC5jb21wYXRpYmxlID0gInFjb20scGNpZS1zbTg1NTAiLCAuZGF0YSA9ICZj
ZmdfMV85XzAgfSwKPiAgCXsgfQo+ICB9Owo+ICAKPiAtLSAKPiAyLjM0LjEKPiAKCi0tIArgrq7g
rqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
