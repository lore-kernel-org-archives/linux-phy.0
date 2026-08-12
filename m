Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B7F5C5CFDB
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 10:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z21/ym9bJ7Qt3bWJrFij+ztr0LSv0ivp6ir/B//YwVA=; b=XxvY5idU/uK68r
	q64DPBegERUZtRw2UoAQg9oC35RKYou3K7gRPeYtJVKUk3qvEhFCyJfVv8Eag5QTEtue8Is7h/19I
	32qoZhy95WdQWQX9AKPfsggoZA86nOE4hm6NNjT7ZwoxX5gH6LuTohUtvHb0fULccl9oc/kyFfrVj
	srtuBPLgg4IJDiV/4KHNOfGUwW/oZyUKOyEYHvBy0M55xHNgMabY2Vah27N5euMTkhyQ7OPB7+69T
	HLDm2XnWKCjlG2sE+ukI4zizgtM6u1eg8f7tV7wIwS3ZtXlSCGgHBDYNVy0CxLSyTlRYN6m9ebv/q
	rQdQYSGffvbKPzSMN6IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu6dY-0000000FyoI-0sVY;
	Wed, 12 Aug 2026 10:56:44 +0000
Received: from mx.nabladev.com ([178.251.229.89])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu6dR-0000000Fyml-2lLZ;
	Wed, 12 Aug 2026 10:56:43 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id A540511BD66;
	Wed, 12 Aug 2026 12:56:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1786532190;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=H19yU3A8Y/XE4lULkPLRYtMwMnahPHyjUbEiZ8HBLXM=;
	b=QOW0fXqL5P+LZcOk9Ad1vvUrZiV5Z5pfpESJ6kJuuJNJ48yR27mMGD07nT3W9LZ9kfdCf9
	utUnTrFC0agBWlIICmuXyMDmcMklVISxPEYdZcoPVFDPGOgVycjbdxPhEZ4ffg3XojogaH
	ggKwhOSUHaGg4j6bFDQ2fqFIv9mSAh/9M/ECRxXTyMiMBbw31sLmwlmdSib6MTKbJNpFO3
	UR+K6p4wXJI7rN2WICoO8mSIvWiM37S4UWkhPz0Pfq4mS3azUfIRkhUwoW7wITbNCahWJd
	sySy6HHbbfSQw5lM4Cc3U6uVO/BcQwCo8fxJ6ShB+SOaRJaWYCxW0Y4Q6hj9rw==
Message-ID: <ff691741-a110-44e8-90e7-ac54a96de1af@nabladev.com>
Date: Wed, 12 Aug 2026 12:56:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] dt-bindings: phy: Document ST STM32MP25 USB2-FEMTO
 PHY
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-usb@vger.kernel.org, Pankaj Dev <pankaj.dev@st.com>,
 Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
 Rahul Kumar <rahul.kumar05@st.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Christian Bruel <christian.bruel@foss.st.com>,
 Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Rosen Penev <rosenp@gmail.com>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 kernel@dh-electronics.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
References: <20260812010157.1772849-1-marex@nabladev.com>
 <20260812010157.1772849-2-marex@nabladev.com>
 <20260812-silky-omniscient-dalmatian-b268cb@quoll>
Content-Language: en-US
From: Marek Vasut <marex@nabladev.com>
In-Reply-To: <20260812-silky-omniscient-dalmatian-b268cb@quoll>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260812_035641_579166_C5EF7F35 
X-CRM114-Status: GOOD (  11.13  )
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

T24gOC8xMi8yNiAxMjoxNSBQTSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBPbiBXZWQs
IEF1ZyAxMiwgMjAyNiBhdCAwMjo1NTo0MUFNICswMjAwLCBNYXJlayBWYXN1dCB3cm90ZToKPj4g
RnJvbTogUGFua2FqIERldiA8cGFua2FqLmRldkBzdC5jb20+Cj4+Cj4+IERvY3VtZW50IFVTQjIg
UEhZIGZvciBTVE0zMk1QMjUgVVNCMiBjb250cm9sbGVycywgd2hpY2ggaW5jbHVkZXMgdGhlCj4+
IFVTQjIuMCBob3N0LW9ubHkgY29udHJvbGxlciBhbmQgVVNCIDIuMCBwYXJ0IG9mIHRoZSBEV0Mz
IGNvbnRyb2xsZXIuCj4+IFR3byBzdWNoIFBIWXMgaW4gdG90YWwgYXJlIHByZXNlbnQgaW4gU1RN
MzJNUDI1IFNvQywgdGhleSBib3RoIGFyZQo+PiBzbGlnaHRseSBkaWZmZXJlbnQsIHRoZXJlZm9y
ZSB0aGV5IHVzZSBkaWZmZXJlbnQgY29tcGF0aWJsZSBzdHJpbmcKPiAKPiBXaGF0IGlzIHNsaWdo
dGx5IGRpZmZlcmVudD8gVGhpcyBzaG91bGQgYmUgZWl0aGVyIGhlcmUsIG9yIGJldHRlciwgaW4K
PiAiZGVzY3JpcHRpb24iIHBhcnQuCgpUaGV5IGFyZSBib3RoIFN5bm9wc3lzIEZFTVRPLVBIWSAs
IGJ1dCB0aGV5IGFyZSBlYWNoIGF0dGFjaGVkIHRvIGEgCmRpZmZlcmVudCBjb250cm9sbGVyIChv
bmUgdG8gVVNCIDIuMCBob3N0ICwgdGhlIG90aGVyIHRvIERXQzMgRFJEKSAsIGFuZCAKdGhlaXIg
Y29udHJvbCBiaXRzIGluIHRoZSBzeXN0ZW0gY29udHJvbGxlciByZWdpc3RlciBhcmUgZGlmZmVy
ZW50IGZvciAKZWFjaCB2YXJpYW50LgoKSSBleHRlbmRlZCB0aGUgZGVzY3JpcHRpb24gaW4gVjIu
Cgo+PiB0byBkaXNjZXJuIHRoZW0uCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IENsw6ltZW50IExlIEdv
ZmZpYyA8Y2xlbWVudC5sZWdvZmZpY0Bmb3NzLnN0LmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogRmFi
cmljZSBHYXNuaWVyIDxmYWJyaWNlLmdhc25pZXJAZm9zcy5zdC5jb20+Cj4+IFNpZ25lZC1vZmYt
Ynk6IE1hcmVrIFZhc3V0IDxtYXJleEBuYWJsYWRldi5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IFBh
bmthaiBEZXYgPHBhbmthai5kZXZAc3QuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBSYWh1bCBLdW1h
ciA8cmFodWwua3VtYXIwNUBzdC5jb20+Cj4gCj4gSW5jb21wbGV0ZS9pbmNvcnJlY3QgRENPIGNo
YWluLiBXaG8gc2VuZHMgaXQ/IFJhaHVsPwpUaGlzIGlzIGxpZnRlZCBmcm9tIHRoZSBTVCBkb3du
c3RyZWFtIGtlcm5lbCBmb3JrLCBpdCdzIGEgY29tYmluYXRpb24gb2YgCmEgYnVuY2ggb2YgY29t
bWl0cyB0aGVyZSBhbmQgdGhlbiBjbGVhbmVkIHVwLiBQYW5rYWogYW5kIEZhYnJpY2UgZGlkIApt
b3N0IG9mIHRoZSBkb3duc3RyZWFtIHdvcmssIEkgZGlkIHRoZSBjbGVhbiB1cCBmb3IgdXBzdHJl
YW1pbmcuIEkgCmNvbGxlY3RlZCB0aGUgU29CIGxpbmVzIGZyb20gYWxsIHRoZSBjb21taXRzIGZy
b20gU1QgZG93bnN0cmVhbSBmb3JrIGFuZCAKYWRkZWQgbWluZSwgaGVuY2UgdGhpcyBsaXN0LiBI
b3cgc2hhbGwgSSBhZGRyZXNzIHRoaXMgY29ycmVjdGx5LCB3aXRoIApzb21lIENvLWRldmVsb3Bl
ZC1ieSB0YWcgPyBXaG8gZ2V0cyB3aGljaCB0YWcgPwoKYWRkaXRpb25hbFByb3BlcnRpZXMgaXMg
YWRkcmVzc2VkIGluIFYyLCBzbyBpcyB0aGUgcmVwb3J0ZWQgZnJvbSBSb2IncyAKYm90IHJlZ2Fy
ZGluZyB0aGUgYm90Y2hlZCBjb21wYXRpYmxlIHN0cmluZyBpbiBleGFtcGxlLgoKVGhhbmtzICEK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
