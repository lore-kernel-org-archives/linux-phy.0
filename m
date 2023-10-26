Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35C6AC25B6B
	for <linux-phy@archiver.kernel.org>; Thu, 26 Oct 2023 06:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4zrT8U9lRHyHReMC5HMaKEynVdSjFMkVLKxRSeWS6Y8=; b=wz/SlvmXwp/xDM
	4YY/R71HvLJDz5uv2diAR3OswnQtAywkE8MW7FyHoKbbcsnHJIumjdLb6/+FH0dRWVELJOVIAc/7+
	0OCjYLF0PiAe8SF3Q2GzPKexCHeVmjxO6tX3ZLSmjfwxysXt1lkpkqwoZ7EEeEy2swhd2/9Zh5cB1
	29oH8vL4S4FxZqYIlImE2F/YIRXIziyzh1AsosodmsUldTOTK4QoEYgIU8gwqg4FvWrEvs8Q6VXUA
	DpX0a651vPPRUYr5RGnI9P+o2UsMufiaPFeYq1ANAhjscfz8lBjUK7XXkz2yEVsm2U+VrDifQ9Osb
	uAMM22LWrSHsA0YmF4dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvtb0-00Dl9n-2Y;
	Thu, 26 Oct 2023 06:11:54 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvtax-00Dl8z-2n
	for linux-phy@lists.infradead.org;
	Thu, 26 Oct 2023 06:11:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 8E623B8345A;
	Thu, 26 Oct 2023 06:11:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CA9CC433C7;
	Thu, 26 Oct 2023 06:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698300709;
	bh=WP9d1iMdHPkt0PbU8QkjDRKGyEiT4D30Ft8z4vXjTQc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PVkNkhKh5ml5e5y+JFl345qvwmlc2Mz25e1JTAeCRFmHBWCp3hXXt1ZXdu+qnjTRS
	 HYORrhArTLtrjXIlUtP6SJb7IaFad4JoO0V1W4HVBoQOLATcMaTvSxoCw7wl0CK1h/
	 KavsoFACTRYaKd36vfWdPMQeLdTV5yrRJhVUJIbnIodsgthnmnP+ZAFjcxEmYItRLn
	 HBiI/gXbgG/lf9ECvqU2j9kDzE8yj5iSDkbRgLxmaSphXt2JJQfJXt5ZYpWsF6hliq
	 RbVRkfiuIF71qUmw5tBcocOI1LO3uBemxrUqUFO+zKsY71yM29X3rD7zshKmo9wbep
	 7pEQ6KDmEs/iw==
Date: Thu, 26 Oct 2023 11:41:39 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	konrad.dybcio@linaro.org, quic_shazhuss@quicinc.com,
	quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com,
	quic_nayiluri@quicinc.com, dmitry.baryshkov@linaro.org,
	robh@kernel.org, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com, quic_parass@quicinc.com,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, mhi@lists.linux.dev,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 4/5] PCI: epf-mhi: Add support for SA8775P
Message-ID: <20231026061139.GB4915@thinkpad>
References: <1697715430-30820-1-git-send-email-quic_msarkar@quicinc.com>
 <1697715430-30820-5-git-send-email-quic_msarkar@quicinc.com>
 <20231025075603.GD3648@thinkpad>
 <610b0621-b140-ee9b-c450-0fec6862c4fc@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <610b0621-b140-ee9b-c450-0fec6862c4fc@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_231152_177942_FACD30B0 
X-CRM114-Status: GOOD (  20.94  )
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

T24gVGh1LCBPY3QgMjYsIDIwMjMgYXQgMTE6MDA6MjlBTSArMDUzMCwgTXJpbm1heSBTYXJrYXIg
d3JvdGU6Cj4gCj4gT24gMTAvMjUvMjAyMyAxOjI2IFBNLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0g
d3JvdGU6Cj4gPiBPbiBUaHUsIE9jdCAxOSwgMjAyMyBhdCAwNTowNzowOVBNICswNTMwLCBNcmlu
bWF5IFNhcmthciB3cm90ZToKPiA+ID4gQWRkIHN1cHBvcnQgZm9yIFF1YWxjb21tIFNuYXBkcmFn
b24gU0E4Nzc1UCBTb0MgdG8gdGhlIEVQRiBkcml2ZXIuCj4gPiA+IFNBODc3NVAgaGFzIHRoZSBQ
SUQgKDB4MDMwNikgYW5kIHN1cHBvcnRzIEhETUEuIEN1cnJlbnRseSwgaXQgaGFzCj4gPiBJcyB0
aGUgUElEIGZpeGVkPyBJIHRob3VnaHQgeW91IGp1c3Qgd2FudCB0byByZXVzZSB0aGUgU0RYeHgg
UElEIGluIHRoZQo+ID4gbWVhbnRpbWUuCj4gPiAKPiA+IC0gTWFuaQo+IAo+IFRoZSBQSUQgZm9y
IFNBODc3NXAgRVAgaXMgbm90IGRlY2lkZWQgeWV0LiBTbyB1c2luZyAweDAzMDYgUElEIG1lYW50
aW1lLgo+IAoKT2theSwgdGhlbiBwbGVhc2UgbWVudGlvbiB0aGF0IGV4cGxpY2l0bHkgaW4gdGhl
IGNvbW1pdCBtZXNzYWdlLgoKLSBNYW5pCgo+IC0tTXJpbm1heQo+IAo+ID4gPiBubyBmaXhlZCBQ
Q0kgY2xhc3MsIHNvIGl0IGlzIGJlaW5nIGFkdmVydGlzZWQgYXMgIlBDSV9DTEFTU19PVEhFUlMi
Lgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogTXJpbm1heSBTYXJrYXIgPHF1aWNfbXNhcmth
ckBxdWljaW5jLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICAgZHJpdmVycy9wY2kvZW5kcG9pbnQvZnVu
Y3Rpb25zL3BjaS1lcGYtbWhpLmMgfCAxNyArKysrKysrKysrKysrKysrKwo+ID4gPiAgIDEgZmls
ZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9wY2kvZW5kcG9pbnQvZnVuY3Rpb25zL3BjaS1lcGYtbWhpLmMgYi9kcml2ZXJzL3BjaS9l
bmRwb2ludC9mdW5jdGlvbnMvcGNpLWVwZi1taGkuYwo+ID4gPiBpbmRleCBiN2I5ZDNlLi40NDg3
MjYwIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL3BjaS9lbmRwb2ludC9mdW5jdGlvbnMvcGNp
LWVwZi1taGkuYwo+ID4gPiArKysgYi9kcml2ZXJzL3BjaS9lbmRwb2ludC9mdW5jdGlvbnMvcGNp
LWVwZi1taGkuYwo+ID4gPiBAQCAtMTE0LDYgKzExNCwyMiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IHBjaV9lcGZfbWhpX2VwX2luZm8gc204NDUwX2luZm8gPSB7Cj4gPiA+ICAgCS5mbGFncyA9IE1I
SV9FUEZfVVNFX0RNQSwKPiA+ID4gICB9Owo+ID4gPiArc3RhdGljIHN0cnVjdCBwY2lfZXBmX2hl
YWRlciBzYTg3NzVwX2hlYWRlciA9IHsKPiA+ID4gKwkudmVuZG9yaWQgPSBQQ0lfVkVORE9SX0lE
X1FDT00sCj4gPiA+ICsJLmRldmljZWlkID0gMHgwMzA2LAo+ID4gPiArCS5iYXNlY2xhc3NfY29k
ZSA9IFBDSV9DTEFTU19PVEhFUlMsCj4gPiA+ICsJLmludGVycnVwdF9waW4gPSBQQ0lfSU5URVJS
VVBUX0lOVEEsCj4gPiA+ICt9Owo+ID4gPiArCj4gPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHBj
aV9lcGZfbWhpX2VwX2luZm8gc2E4Nzc1cF9pbmZvID0gewo+ID4gPiArCS5jb25maWcgPSAmbWhp
X3YxX2NvbmZpZywKPiA+ID4gKwkuZXBmX2hlYWRlciA9ICZzYTg3NzVwX2hlYWRlciwKPiA+ID4g
KwkuYmFyX251bSA9IEJBUl8wLAo+ID4gPiArCS5lcGZfZmxhZ3MgPSBQQ0lfQkFTRV9BRERSRVNT
X01FTV9UWVBFXzMyLAo+ID4gPiArCS5tc2lfY291bnQgPSAzMiwKPiA+ID4gKwkubXJ1ID0gMHg4
MDAwLAo+ID4gPiArfTsKPiA+ID4gKwo+ID4gPiAgIHN0cnVjdCBwY2lfZXBmX21oaSB7Cj4gPiA+
ICAgCWNvbnN0IHN0cnVjdCBwY2lfZXBjX2ZlYXR1cmVzICplcGNfZmVhdHVyZXM7Cj4gPiA+ICAg
CWNvbnN0IHN0cnVjdCBwY2lfZXBmX21oaV9lcF9pbmZvICppbmZvOwo+ID4gPiBAQCAtNjc3LDYg
KzY5Myw3IEBAIHN0YXRpYyBpbnQgcGNpX2VwZl9taGlfcHJvYmUoc3RydWN0IHBjaV9lcGYgKmVw
ZiwKPiA+ID4gICB9Cj4gPiA+ICAgc3RhdGljIGNvbnN0IHN0cnVjdCBwY2lfZXBmX2RldmljZV9p
ZCBwY2lfZXBmX21oaV9pZHNbXSA9IHsKPiA+ID4gKwl7IC5uYW1lID0gInNhODc3NXAiLCAuZHJp
dmVyX2RhdGEgPSAoa2VybmVsX3Vsb25nX3QpJnNhODc3NXBfaW5mbyB9LAo+ID4gPiAgIAl7IC5u
YW1lID0gInNkeDU1IiwgLmRyaXZlcl9kYXRhID0gKGtlcm5lbF91bG9uZ190KSZzZHg1NV9pbmZv
IH0sCj4gPiA+ICAgCXsgLm5hbWUgPSAic204NDUwIiwgLmRyaXZlcl9kYXRhID0gKGtlcm5lbF91
bG9uZ190KSZzbTg0NTBfaW5mbyB9LAo+ID4gPiAgIAl7fSwKPiA+ID4gLS0gCj4gPiA+IDIuNy40
Cj4gPiA+IAo+IAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprg
rr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
