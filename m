Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18D7BE9A02C
	for <linux-phy@archiver.kernel.org>; Wed, 18 Feb 2026 16:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bSfQSBuQEM9XmbjMiQ7nYfMRgzdTD3Lztot5UYnwy9A=; b=h1C9jLA8kWEhLn
	cVxfTRILFgpMd598HopPllH4SCB+OBYMCud9467Vb2Y2RhVvRisEzSyCyfjZ7hH7bnU0qqIWuiGvz
	tIY0Iz2h/XRz5/bJH9ERIbI8eIaE7zDG4vhDhpyTKEaCzFtf+7J0T/77y6WseXuHyyiItX0r2KVyp
	LV92hPAAo5++ptRWS1q11x6GmA2ZgzZtusylG7KlZ7y1w05ikaUfpex5gc57dBaYoFSNqBctOkW6V
	5/1Z3A5aKTdDDFt6zdUrGnRI5o2n41JXWlMsKXPb4zpm9je4y+KI3jQ1SKOPX2sptWC7yBbOErkcj
	RQh1gm1ufpItA+TDsVpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vskXi-0000000A5cP-2r1O;
	Wed, 18 Feb 2026 16:36:50 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vskXg-0000000A5bf-03Ca;
	Wed, 18 Feb 2026 16:36:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 29EDA43FCF;
	Wed, 18 Feb 2026 16:36:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7FDFC19422;
	Wed, 18 Feb 2026 16:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771432607;
	bh=cZtx7DmmsQtOs5cgW5qKB4n145O37dojE3He8nE95zo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fug49kQ0NHqozjO5RhVCrMU8ypPZA00+VlJC0RtLfwOiwTrTsRf8S9uxBEeY3Fx52
	 gZYf8UAcDQmTi33jZOluEQboWW98K2KdS4NIJFpTgSVnYadztiVP+qanW+tPy8acfn
	 XAiAWRG7WhyNaelPsMUid9SeLvFpVXfrWXLX73cTDEew/H0UG//raP72EuZchNr6p7
	 jIFBakoVL/HKfUOUmZtpj/brKU/VbuyMELHQqMim+FLABVBA6c3DoE99WU7y12vXbT
	 wuhJDV+LAsqhZh/sCiM8XG7N58VNHGgmx4IeLbxyZHz0Leb2veGbamTuWxSgLLJf9A
	 2sOLASP+7kJLg==
Date: Wed, 18 Feb 2026 22:06:29 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sean Anderson <sean.anderson@linux.dev>
Cc: "Pandey, Radhey Shyam" <radhey.shyam.pandey@amd.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Vinod Koul <vkoul@kernel.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"Simek, Michal" <michal.simek@amd.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	"Havalige, Thippeswamy" <thippeswamy.havalige@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH 1/8] dt-bindings: pci: xilinx-nwl: Add resets
Message-ID: <rli6pqtityds6xitz5ki3fxzwd63i2hsovlopikpz6xnjf4ial@x4iiu2xzdsdg>
References: <20260203002128.935842-1-sean.anderson@linux.dev>
 <20260203002128.935842-2-sean.anderson@linux.dev>
 <MN0PR12MB59537BC8B60D76CCE0B1391CB798A@MN0PR12MB5953.namprd12.prod.outlook.com>
 <89516358-7b13-43ad-b303-1731f61d72e7@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <89516358-7b13-43ad-b303-1731f61d72e7@linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260218_083648_097471_2CE8B3BC 
X-CRM114-Status: GOOD (  20.06  )
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

T24gVGh1LCBGZWIgMDUsIDIwMjYgYXQgMTA6NDc6MjFBTSAtMDUwMCwgU2VhbiBBbmRlcnNvbiB3
cm90ZToKPiBPbiAyLzQvMjYgMDM6MzIsIFBhbmRleSwgUmFkaGV5IFNoeWFtIHdyb3RlOgo+ID4g
W0FNRCBPZmZpY2lhbCBVc2UgT25seSAtIEFNRCBJbnRlcm5hbCBEaXN0cmlidXRpb24gT25seV0K
PiA+IAo+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPj4gRnJvbTogU2VhbiBBbmRl
cnNvbiA8c2Vhbi5hbmRlcnNvbkBsaW51eC5kZXY+Cj4gPj4gU2VudDogVHVlc2RheSwgRmVicnVh
cnkgMywgMjAyNiA1OjUxIEFNCj4gPj4gVG86IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGlu
Y2hhcnRAaWRlYXNvbmJvYXJkLmNvbT47IFZpbm9kIEtvdWwKPiA+PiA8dmtvdWxAa2VybmVsLm9y
Zz47IGxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPj4gQ2M6IEtyenlzenRvZiBXaWxj
ennFhHNraSA8a3dpbGN6eW5za2lAa2VybmVsLm9yZz47IExvcmVuem8gUGllcmFsaXNpCj4gPj4g
PGxwaWVyYWxpc2lAa2VybmVsLm9yZz47IFBhbmRleSwgUmFkaGV5IFNoeWFtCj4gPj4gPHJhZGhl
eS5zaHlhbS5wYW5kZXlAYW1kLmNvbT47IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IFNp
bWVrLCBNaWNoYWwKPiA+PiA8bWljaGFsLnNpbWVrQGFtZC5jb20+OyBsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmc7IGxpbnV4LQo+ID4+IHBjaUB2Z2VyLmtlcm5lbC5vcmc7IE5l
aWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPjsgUm9iIEhlcnJpbmcKPiA+
PiA8cm9iaEBrZXJuZWwub3JnPjsgSGF2YWxpZ2UsIFRoaXBwZXN3YW15IDx0aGlwcGVzd2FteS5o
YXZhbGlnZUBhbWQuY29tPjsKPiA+PiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbmlAa2VybmVs
Lm9yZz47IEJqb3JuIEhlbGdhYXMKPiA+PiA8YmhlbGdhYXNAZ29vZ2xlLmNvbT47IFNlYW4gQW5k
ZXJzb24gPHNlYW4uYW5kZXJzb25AbGludXguZGV2PjsgQ29ub3IKPiA+PiBEb29sZXkgPGNvbm9y
K2R0QGtlcm5lbC5vcmc+OyBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprK2R0QGtlcm5lbC5vcmc+
Owo+ID4+IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnCj4gPj4gU3ViamVjdDogW1BBVENIIDEv
OF0gZHQtYmluZGluZ3M6IHBjaTogeGlsaW54LW53bDogQWRkIHJlc2V0cwo+ID4+Cj4gPj4gQWRk
IHJlc2V0cyBzbyB3ZSBjYW4gaG9sZCB0aGUgYnJpZGdlIGluIHJlc2V0IHdoaWxlIHdlIHBlcmZv
cm0gcGh5IGNhbGlicmF0aW9uLgo+ID4gCj4gPiBTZWVtcyBsaWtlIHRoaXMgc2hvdWxkIGEgcmVx
dWlyZWQgcHJvcGVydHk/Cj4gCj4gSXQncyBvcHRpb25hbCBhcyBpdCBkb2VzIG5vdCBleGlzdCBp
biBwcmV2aW91cyB2ZXJzaW9ucyBvZiB0aGUKPiBkZXZpY2V0cmVlLiBJbiB0aGUgcGFzdCBJIGhh
dmUgcmVjZWl2ZWQgcHVzaGJhY2sgYWdhaW5zdCBtYWtpbmcgdGhlc2UKPiBzb3J0IG9mIHByb3Bl
cnRpZXMgcmVxdWlyZWQuCj4gCj4gSWYgdGhlIHJlc2V0cyBkb24ndCBleGlzdCB3ZSBqdXN0IGRv
bid0IGFzc2VydCB0aGVtIGFuZCBhc3N1bWUgdGhlCj4gYm9vdGxvYWRlciBoYXMgZGVhc3NlcnRl
ZCB0aGVtLgo+IAoKSWYgdGhlIHJlc2V0cyBhcmUgcHJldHR5IG11Y2ggcmVxdWlyZWQgZm9yIHRo
ZSBoYXJkd2FyZSBmdW5jdGlvbmFsaXR5LCB3ZSBjYW4KbWFyayB0aGVtIGFzIHJlcXVpcmVkIGlu
IHRoZSBiaW5kaW5nIGFuZCBhY2NlcHQgdGhlIEFCSSBicmVha2FnZS4gVGhpcyBzY2VuYXJpbwpr
ZWVwcyBjb21pbmcgd2l0aCBkZXZpY2V0cmVlIGFzIHRoZSBpbml0aWFsIGRldmljZXRyZWUgYmlu
ZGluZ3MgbGFja2VkIGZ1bGwKaGFyZHdhcmUgZGVzY3JpcHRpb24gaW4gbW9zdCBvZiB0aGUgY2Fz
ZXMuCgotIE1hbmkKCj4gLS1TZWFuCj4gCj4gPiBSZXN0IGxvb2tzIGZpbmUgdG8gbWUuCj4gPiAK
PiA+Pgo+ID4+IFNpZ25lZC1vZmYtYnk6IFNlYW4gQW5kZXJzb24gPHNlYW4uYW5kZXJzb25AbGlu
dXguZGV2Pgo+ID4+IC0tLQo+ID4+Cj4gPj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS94
bG54LG53bC1wY2llLnlhbWwgIHwgMTcgKysrKysrKysrKysrKysrKysKPiA+PiAgMSBmaWxlIGNo
YW5nZWQsIDE3IGluc2VydGlvbnMoKykKPiA+Pgo+ID4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3hsbngsbndsLXBjaWUueWFtbAo+ID4+IGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS94bG54LG53bC1wY2llLnlhbWwKPiA+
PiBpbmRleCA5ZGUzYzA5ZWZiNmUuLjdlZmIzZGQ5OTU1ZiAxMDA2NDQKPiA+PiAtLS0gYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3hsbngsbndsLXBjaWUueWFtbAo+ID4+
ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kveGxueCxud2wtcGNp
ZS55YW1sCj4gPj4gQEAgLTY5LDYgKzY5LDE4IEBAIHByb3BlcnRpZXM6Cj4gPj4gICAgcG93ZXIt
ZG9tYWluczoKPiA+PiAgICAgIG1heEl0ZW1zOiAxCj4gPj4KPiA+PiArICByZXNldHM6Cj4gPj4g
KyAgICBtYXhJdGVtczogMwo+ID4+ICsKPiA+PiArICByZXNldC1uYW1lczoKPiA+PiArICAgIGl0
ZW1zOgo+ID4+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBBUEIgcmVnaXN0ZXIgYmxvY2sgcmVzZXQK
PiA+PiArICAgICAgICBjb25zdDogY2ZnCj4gPj4gKyAgICAgIC0gZGVzY3JpcHRpb246IEFYSS1Q
Q0llIGJyaWRnZSByZXNldAo+ID4+ICsgICAgICAgIGNvbnN0OiBicmlkZ2UKPiA+PiArICAgICAg
LSBkZXNjcmlwdGlvbjogUENJZSBNQUMgcmVzZXQKPiA+PiArICAgICAgICBjb25zdDogY3RybAo+
ID4+ICsKPiA+PiAgICBpb21tdXM6Cj4gPj4gICAgICBtYXhJdGVtczogMQo+ID4+Cj4gPj4gQEAg
LTExNyw2ICsxMjksNyBAQCBleGFtcGxlczoKPiA+PiAgICAgICNpbmNsdWRlIDxkdC1iaW5kaW5n
cy9pbnRlcnJ1cHQtY29udHJvbGxlci9pcnEuaD4KPiA+PiAgICAgICNpbmNsdWRlIDxkdC1iaW5k
aW5ncy9waHkvcGh5Lmg+Cj4gPj4gICAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcG93ZXIveGxu
eC16eW5xbXAtcG93ZXIuaD4KPiA+PiArICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9yZXNldC94
bG54LXp5bnFtcC1yZXNldHMuaD4KPiA+PiAgICAgIHNvYyB7Cj4gPj4gICAgICAgICAgI2FkZHJl
c3MtY2VsbHMgPSA8Mj47Cj4gPj4gICAgICAgICAgI3NpemUtY2VsbHMgPSA8Mj47Cj4gPj4gQEAg
LTE0Niw2ICsxNTksMTAgQEAgZXhhbXBsZXM6Cj4gPj4gICAgICAgICAgICAgIG1zaS1wYXJlbnQg
PSA8Jm53bF9wY2llPjsKPiA+PiAgICAgICAgICAgICAgcGh5cyA9IDwmcHNndHIgMCBQSFlfVFlQ
RV9QQ0lFIDAgMD47Cj4gPj4gICAgICAgICAgICAgIHBvd2VyLWRvbWFpbnMgPSA8Jnp5bnFtcF9m
aXJtd2FyZSBQRF9QQ0lFPjsKPiA+PiArICAgICAgICAgICAgcmVzZXRzID0gPCZ6eW5xbXBfcmVz
ZXQgWllOUU1QX1JFU0VUX1BDSUVfQ0ZHPiwKPiA+PiArICAgICAgICAgICAgICAgICAgICAgPCZ6
eW5xbXBfcmVzZXQgWllOUU1QX1JFU0VUX1BDSUVfQlJJREdFPiwKPiA+PiArICAgICAgICAgICAg
ICAgICAgICAgPCZ6eW5xbXBfcmVzZXQgWllOUU1QX1JFU0VUX1BDSUVfQ1RSTD47Cj4gPj4gKyAg
ICAgICAgICAgIHJlc2V0LW5hbWVzID0gImNmZyIsICJicmlkZ2UiLCAiY3RybCI7Cj4gPj4gICAg
ICAgICAgICAgIGlvbW11cyA9IDwmc21tdSAweDRkMD47Cj4gPj4gICAgICAgICAgICAgIHBjaWVf
aW50YzogbGVnYWN5LWludGVycnVwdC1jb250cm9sbGVyIHsKPiA+PiAgICAgICAgICAgICAgICAg
IGludGVycnVwdC1jb250cm9sbGVyOwo+ID4+IC0tCj4gPj4gMi4zNS4xLjEzMjAuZ2M0NTI2OTUz
ODcuZGlydHkKPiA+IAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7g
rprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
