Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F602C9830D
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 06:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IW/eQhYTP82t93WaHxewiJBEric5opnbi7ZAYDi+Of8=; b=vgzYSfL3QE2Oti
	m9/wLiMJeYnbFlRELebC/FjmEL/FfgSskm/Rak9L+R99egrXaXszX8vWCwdoK9zczFiZRequ1e0h3
	FYsOpSGahllX0UaE4meQgnYN1GTkp7glWSkuBqTSmx3Y75GrNirCoPBrnSXzO9O0RS+ELthUe/i6H
	vRGoKDDbycnvdGy/NoN7TuGDRS9ihbO3ZVPrEd9Nd4bfgMr6fbLkV+47SQ8m+WJD/WDFiZkLR2PNO
	haIqZio05P/Bus6HMhXH1bjM80s6nftdr24Xspm8Rkw9XmQebgB/mnIcY7NB6032lC+8g23/AiCnM
	BDMkWLLQPbrm1aBTB1ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9zQT-0000000CkJb-0G6j;
	Fri, 25 Sep 2026 06:28:53 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9zQQ-0000000CkJJ-3fGU
	for linux-phy@lists.infradead.org;
	Fri, 25 Sep 2026 06:28:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id DCAA96022E;
	Fri, 25 Sep 2026 06:28:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B71241F000FF;
	Fri, 25 Sep 2026 06:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790317729;
	bh=BPPjjn1CvKsUI7yM/hq8jU+Pg8KjNYzEAq1cyTZMulw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=hFWHnpDQrT3THQcEbsmGsm9HiEjbg8wN/Bdd0IEQGC8H8v0+iy+stF8sAMhhf701S
	 v5lAENcU4rRSWVs3xFhfrDTxSz/LJwl0b2V69EomdKpi5FsJNGQmptda9K/wIH35Qb
	 7yZ2wnz1AxDDi5xxzkuAYkUFHd81rFImIKz+l5yMz2t9E+4B8Zm/oq/b96Nta5CnJH
	 gXuYwoopEnQW7LBUV5HLwYfdI9OMvgpWBKfdxpdHk6qpGZTlzBOkuu6Vk1VjA74XYL
	 AZjXMOJtMzX/ywRBsyPQt5gx6PNDQVOqD6/zrbeCo9wGbvei9HF217PI39GeK2ps3X
	 ym3LV0LFdcdRA==
Message-ID: <89bdd01c-74b5-4425-9ef1-19a69b9a07a5@kernel.org>
Date: Fri, 25 Sep 2026 08:28:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/6] dt-bindings: phy: qcom: add Nord QMP PCIe PHY
 binding
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>, Bjorn Andersson <andersson@kernel.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, shengchao.guo@oss.qualcomm.com,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org
References: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
 <20260921-nord-v4-1-ed05c6e09240@oss.qualcomm.com>
 <20260924-lumpy-robust-fulmar-1bfbe0@quoll>
 <050f7d22-48a2-4114-babf-7cf21c4bc08b@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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
In-Reply-To: <050f7d22-48a2-4114-babf-7cf21c4bc08b@oss.qualcomm.com>
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

T24gMjUvMDkvMjAyNiAwNjowOCwgS3Jpc2huYSBDaGFpdGFueWEgQ2h1bmRydSB3cm90ZToKPiAK
PiAKPiBPbiA5LzI0LzIwMjYgNjo1MiBQTSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4g
T24gTW9uLCBTZXAgMjEsIDIwMjYgYXQgMTE6MDc6MDlBTSArMDUzMCwgS3Jpc2huYSBDaGFpdGFu
eWEgQ2h1bmRydSB3cm90ZToKPj4+ICsKPj4+ICsgIHZkZGEtcGxsLWQtc3VwcGx5OiB0cnVlCj4+
PiArCj4+PiArICBxY29tLGxpbmstbW9kZToKPj4+ICsgICAgZGVzY3JpcHRpb246Cj4+PiArICAg
ICAgUmVmZXJlbmNlIHRvIHRoZSBUQ1NSIHN5c2NvbiByZWdpc3RlciBjb250YWluaW5nIHRoZSBQ
Q0llIGxpbmsgbW9kZQo+Pj4gKyAgICAgIHNlbGVjdGVkIGJ5IGZpcm13YXJlLiBUaGUgcHJvcGVy
dHkgY29uc2lzdHMgb2YgdGhlIFRDU1Igc3lzY29uCj4+PiArICAgICAgcGhhbmRsZSBmb2xsb3dl
ZCBieSB0aGUgb2Zmc2V0IG9mIHRoZSBUQ1NSX1BDSUVfTElOS19DT05GSUdfTU9ERQo+Pj4gKyAg
ICAgIHJlZ2lzdGVyLgo+Pj4gKyAgICAgIFRoZSByZWdpc3RlciB2YWx1ZSBzZWxlY3RzIG9uZSBv
ZiB0aGVzZSB0b3BvbG9naWVzLgo+Pj4gKyAgICAgICAgMCAoUU1QX1BDSUVfTk9SRF9NT0RFX1gx
NikgICAgICAgICDigJQgYWxsIHBvcnRzIGNvbWJpbmVkIGFzIG9uZSB4MTYgUEhZCj4+PiArICAg
ICAgICAxIChRTVBfUENJRV9OT1JEX01PREVfWDhfWDgpICAgICAgIOKAlCBwb3J0IEEgYXMgeDgg
YW5kIHBvcnRzIEIrQytEIGFzIHg4Cj4+PiArICAgICAgICAyIChRTVBfUENJRV9OT1JEX01PREVf
WDhfWDRfWDQpICAgIOKAlCBwb3J0IEEgYXMgeDgsIHBvcnQgQiBhcyB4NCwgYW5kIHBvcnRzIEMr
RCBhcyB4NAo+Pj4gKyAgICAgICAgMyAoUU1QX1BDSUVfTk9SRF9NT0RFX1g4X1g0X1gyX1gyKSDi
gJQgcG9ydCBBIGFzIHg4LCBwb3J0IEIgYXMgeDQsIGFuZCBwb3J0cyBDIGFuZCBEIGFzIHgyCj4+
IFNhbWUgcXVlc3Rpb24gYXMgbGFzdCB0aW1lLiBwaHktY2VsbHMgdGVsbHMgd2hpY2ggbW9kZSB5
b3UgYXJlIGhlcmUuCj4+IFRoaXMgaXMgZHVwbGljYXRpbmcgaXQgYW5kIHRoZSByZWdpc3RlciB2
YWx1ZSBDQU5OT1QgY2hvb3NlIHRoZQo+PiB0b3BvbG9neS4gSWYgaXQgZG9lcywgdGhlbiBwaHkt
Y2VsbHMgc2hvdWxkIGJlIDAgYXMgdG9wb2xvZ3kgaXMgZGVmaW5lZAo+PiBieSBoYXJkd2FyZSBh
bHJlYWR5LCBubz8KPiBwaHktY2VsbHMgZG9lcyBub3QgZGVzY3JpYmUgdGhlIHRvcG9sb2d5LiBU
aGUgUEhZIGFyZ3VtZW50IGlzIG9ubHnCoHVzZWQgYnkgdGhlCj4gUENJZSBjb250cm9sbGVyIHRv
IGlkZW50aWZ5IHRoZSBQSFkgaW5zdGFuY2UgYXNzb2NpYXRlZCB3aXRowqB0aGF0IGNvbnRyb2xs
ZXIKPiAoZm9yIGV4YW1wbGUsIHBoeXMgPSA8JnBjaWVfcGh5IDI+IHNlbGVjdHMgUEhZIGluc3Rh
bmNlIDIpLgo+IAo+IFRoZSBxY29tLGxpbmstbW9kZSBwcm9wZXJ0eSBzZXJ2ZXMgYSBkaWZmZXJl
bnQgcHVycG9zZS4gSXQgcHJvdmlkZXPCoGFjY2VzcyB0bwo+IHRoZSBmaXJtd2FyZS1wcm9ncmFt
bWVkIFRDU1JfUENJRV9MSU5LX0NPTkZJR19NT0RFIHJlZ2lzdGVyLCB3aGljaCBkZXNjcmliZXMK
PiB0aGUgZ2xvYmFsIGxhbmUgcGFydGl0aW9uaW5nICh4MTYsIHg4K3g4LCB4OCt4NCt4NCwgeDgr
eDQreDIreDIsIGV0Yy4pLgo+IAo+IMKgIC0gcGh5LWNlbGxzIGlkZW50aWZpZXMgd2hpY2ggUEhZ
IGluc3RhbmNlIGEgY29udHJvbGxlciBpcyB1c2luZy4KPiDCoCAtIHFjb20sbGluay1tb2RlIHJl
cG9ydHMgdGhlIG92ZXJhbGwgdG9wb2xvZ3kgc2VsZWN0ZWQgYnkgZmlybXdhcmUuCk9LLCBJIGFz
c3VtZWQgdGhlIGNlbGwgYXJndW1lbnQgZGVmaW5lcyB0aGUgaW5zdGFuY2UgaW4gdGhhdCB0b3Bv
bG9neSwKYnV0IGl0IHNlZW1zIG5vdC4gSSB0aGluayB0aGF0IHdhcyB0aGUgbWlzdW5kZXJzdGFu
ZGluZy4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
