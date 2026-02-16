Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40E66E81A2B
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 14:58:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qZVnG9AiQII0yByA3yY0OAAbKHfA2TmJO8oMXUe7/jw=; b=gnN09Iwvt0RYQ9
	xVVkN0tsSc8+o2/SKeB1fy+53wgUqB3VX3bHhnTurh6Xt2M/P+Ct6eqdpHHPaZ46NmwmYweYDK+F+
	eHO9JaB0sdQZricGdV6CS9temhuWzX2BAAhqx05QdLUkpyRcI2qP3YveUaH4csJgVAMco6en2bmy3
	yfIYoSl06bkF8MIMQWm5XeRsXh1ZUBlWSPxPJMwvwq09u8Nz/srCiKswf0MPI0dlzcumi+4jl3aG3
	ppeT8wXzcuXktjh5e9q08DWq5pI9QCRGOe8L+eNL7JtAoWOc9FnWJtutYQrtLM8lwovfD2j5XW9fq
	EyuiH3VJTbOKeOcT9rsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs03Q-00000006pop-49MP;
	Mon, 16 Feb 2026 14:58:28 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs03O-00000006pnh-3AvE
	for linux-phy@lists.infradead.org;
	Mon, 16 Feb 2026 14:58:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 62A4844400;
	Mon, 16 Feb 2026 14:58:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B842DC116C6;
	Mon, 16 Feb 2026 14:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771253906;
	bh=l0PoeuUQ0W4SIOqU8eBxrvIWKq27RR5Mnf17zQxc0gw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Uj4l9WHqA9kzwS4uQ40NaMiqBr3e3eRpGO1RQ440m4/UCfAcIkqfEhqSnBV1IQ2ll
	 aMme+SXNCIdhZJq1mqEzzlHwlF0Xd7oVjH55nBYCs5GksiHIYw7Fh7Xrt5cBFBYd0O
	 AOoox8p6wWpWDydidgFQuWyewB4u4rZhr+Rgqi6Yk9XAygDrCd+dMbhE9cEmSqlqI0
	 aPQv0EXFxC3VBPCITcU8W5QGtUKXXZBVPZVm5UAtbLza0Bd0Y1VR8eGrZDMTZlcgLL
	 7/uHPivfRJcHhgcoVLcAuq4XQXcvHeh+3fq8EEpO9S8/lW6oq0JwAUjB4p4nJhliGM
	 8PULvHt8Gjp9A==
Date: Mon, 16 Feb 2026 20:28:11 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Jingoo Han <jingoohan1@gmail.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH 3/5] PCI: qcom: Keep PERST# GPIO state as-is during probe
Message-ID: <twbujrvphqts75hkwzot4bfgiddw7qkg2foidvfh4in2jluxyo@3m3mfskxu2ym>
References: <20260109-link_retain-v1-0-7e6782230f4b@oss.qualcomm.com>
 <20260109-link_retain-v1-3-7e6782230f4b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260109-link_retain-v1-3-7e6782230f4b@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_065826_815007_55C500E0 
X-CRM114-Status: GOOD (  18.44  )
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

T24gRnJpLCBKYW4gMDksIDIwMjYgYXQgMTI6NTE6MDhQTSArMDUzMCwgS3Jpc2huYSBDaGFpdGFu
eWEgQ2h1bmRydSB3cm90ZToKPiBUaGUgUEVSU1QjIHNpZ25hbCBpcyB1c2VkIHRvIHJlc2V0IFBD
SWUgZGV2aWNlcy4gQ3VycmVudGx5LCB0aGUgZHJpdmVyCj4gcmVxdWVzdHMgdGhlIEdQSU8gd2l0
aCBHUElPRF9PVVRfSElHSCwgd2hpY2ggZm9yY2VzIHRoZSBsaW5lIGhpZ2gKPiBkdXJpbmcgcHJv
YmUuIFRoaXMgY2FuIHVuaW50ZW50aW9uYWxseSBhc3NlcnQgcmVzZXQgZWFybHksIGJyZWFraW5n
Cj4gbGluayByZXRlbnRpb24gb3IgY2F1c2luZyB1bmV4cGVjdGVkIGRldmljZSBiZWhhdmlvci4K
PiAKClRoZXJlIGlzIG5vIHdheSBhc3NlcnRpbmcgUEVSU1QjIGlzIGdvaW5nIHRvIGNhdXNlICd1
bmV4cGVjdGVkIGRldmljZSBiZWhhdmlvcicuCgo+IENoYW5nZSB0aGUgcmVxdWVzdCB0byB1c2Ug
R1BJT0RfQVNJUyBzbyB0aGUgZHJpdmVyIHByZXNlcnZlcyB0aGUKPiBleGlzdGluZyBzdGF0ZSBj
b25maWd1cmVkIGJ5IHRoZSBib290bG9hZGVyIG9yIGZpcm13YXJlLiBUaGlzIGFsbG93cwo+IHBs
YXRmb3JtcyB0aGF0IG1hbmFnZSBQRVJTVCMgZXh0ZXJuYWxseSB0byBtYWludGFpbiBwcm9wZXIg
cmVzZXQKPiBzZXF1ZW5jaW5nLgo+IAoKWW91IHNob3VsZCBhbHNvIG1lbnRpb24gdGhlIGZhY3Qg
dGhhdCB0aGUgZHJpdmVyIGFzc2VydHMgUEVSU1QjIGR1cmluZyB0aGUgc3RhcnQKb2YgcWNvbV9w
Y2llX2hvc3RfaW5pdCgpLiBTbyByZXF1ZXN0aW5nIFBFUlNUIyB3aXRoIEdQSU9EX09VVF9ISUdI
IGlzIHJlZHVuZGFudAphbnl3YXkuCgotIE1hbmkKCj4gU2lnbmVkLW9mZi1ieTogS3Jpc2huYSBD
aGFpdGFueWEgQ2h1bmRydSA8a3Jpc2huYS5jaHVuZHJ1QG9zcy5xdWFsY29tbS5jb20+Cj4gLS0t
Cj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jIHwgNCArKy0tCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jIGIvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMKPiBpbmRleCA3YjkyZTdhMWMwZDkzNjRhOWNl
ZmUxNDUwODE4ZjljYmZjN2ZkM2FjLi45MzQyZjljNzVmMWMzMDE3YjU1NjE0MDY5YTdhYTgyMWE2
ZmI4ZGE3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNv
bS5jCj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMKPiBAQCAt
MTcxMSw3ICsxNzExLDcgQEAgc3RhdGljIGludCBxY29tX3BjaWVfcGFyc2VfcG9ydChzdHJ1Y3Qg
cWNvbV9wY2llICpwY2llLCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUKPiAgCWludCByZXQ7Cj4g
IAo+ICAJcmVzZXQgPSBkZXZtX2Z3bm9kZV9ncGlvZF9nZXQoZGV2LCBvZl9md25vZGVfaGFuZGxl
KG5vZGUpLAo+IC0JCQkJICAgICAgInJlc2V0IiwgR1BJT0RfT1VUX0hJR0gsICJQRVJTVCMiKTsK
PiArCQkJCSAgICAgICJyZXNldCIsIEdQSU9EX0FTSVMsICJQRVJTVCMiKTsKPiAgCWlmIChJU19F
UlIocmVzZXQpKQo+ICAJCXJldHVybiBQVFJfRVJSKHJlc2V0KTsKPiAgCj4gQEAgLTE3NzIsNyAr
MTc3Miw3IEBAIHN0YXRpYyBpbnQgcWNvbV9wY2llX3BhcnNlX2xlZ2FjeV9iaW5kaW5nKHN0cnVj
dCBxY29tX3BjaWUgKnBjaWUpCj4gIAlpZiAoSVNfRVJSKHBoeSkpCj4gIAkJcmV0dXJuIFBUUl9F
UlIocGh5KTsKPiAgCj4gLQlyZXNldCA9IGRldm1fZ3Bpb2RfZ2V0X29wdGlvbmFsKGRldiwgInBl
cnN0IiwgR1BJT0RfT1VUX0hJR0gpOwo+ICsJcmVzZXQgPSBkZXZtX2dwaW9kX2dldF9vcHRpb25h
bChkZXYsICJwZXJzdCIsIEdQSU9EX0FTSVMpOwo+ICAJaWYgKElTX0VSUihyZXNldCkpCj4gIAkJ
cmV0dXJuIFBUUl9FUlIocmVzZXQpOwo+ICAKPiAKPiAtLSAKPiAyLjM0LjEKPiAKCi0tIArgrq7g
rqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
