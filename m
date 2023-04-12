Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02CA4C7619A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 14:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7EnpLTSwS3uKP5l1160jX/EUjHGwDfFsFTBWGRvWI00=; b=f4ZhmGRFN7nyDu
	aCvLIOX7GLJo6yOePNma1HXmzqRRuhV0JS+mel7SZW+7Nee91VdpuqiER9XJlQwH9cVOSdLR1N+DV
	6sEREtLEAtKTy7L72fw28UTBJAE3BYwa2p0kOfTwIHcQqbrxGvfz3psGEfAhQhPxjGzYV9KiK+jY6
	4ImBxX/0xakvy5/Y9TJFUAoMKnamfvZ5dJaAs3ygsIwbrOQO64DFWRx80e5Eu6qTProWKu94zEhBF
	IngCWoJw0e0SewDtCE9fpYe6hc6JEb8kK+b3ZsLTr1XCliUmDo88IdTlIDPpTXPCXcwa6z6sKmCNN
	5zxa9Ta3ez/eLYQk9eWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmbWm-003UmJ-1x;
	Wed, 12 Apr 2023 14:32:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmbWi-003UjA-0k
	for linux-phy@lists.infradead.org;
	Wed, 12 Apr 2023 14:32:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1pmbWS-0001es-VB; Wed, 12 Apr 2023 16:32:33 +0200
Message-ID: <6953b608-973f-c603-f852-edf7ba183e64@pengutronix.de>
Date: Wed, 12 Apr 2023 16:32:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] dt-bindings: phy: imx8mq-usb: add phy tuning
 properties
Content-Language: en-US, de-DE
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, vkoul@kernel.org,
 kishon@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 krzysztof.kozlowski+dt@linaro.org, jun.li@nxp.com, haibo.chen@nxp.com,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20230405112118.1256151-1-j.zink@pengutronix.de>
 <20230405112118.1256151-2-j.zink@pengutronix.de>
 <5398cbe0-c681-5dd7-0b3e-3a586cc4915f@linaro.org>
 <3f7257ee36dc44f162a87281c8279fd5bad91dea.camel@pengutronix.de>
 <95b4afd4-c93e-628b-fd22-6fcbc1d1234e@linaro.org>
 <b394b456540943b1022a7b093bf369924fca0566.camel@pengutronix.de>
 <20230412133921.GA2017891-robh@kernel.org>
From: Johannes Zink <j.zink@pengutronix.de>
In-Reply-To: <20230412133921.GA2017891-robh@kernel.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: j.zink@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_073248_270400_FD394983 
X-CRM114-Status: GOOD (  23.88  )
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

SGkgUm9iLAoKT24gNC8xMi8yMyAxNTozOSwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gT24gVHVlLCBB
cHIgMTEsIDIwMjMgYXQgMDQ6MjI6MzdQTSArMDIwMCwgSm9oYW5uZXMgWmluayB3cm90ZToKPj4g
SGkgS3J6eXN0b2YsCj4+Cj4+IHRoYW5rIHlvdSBmb3IgeW91ciBleHBsYW5hdGlvbnMuIEFzIEkn
bSBzdGlsbCBxdWl0ZSBuZXcgdG8gd3JpdGluZwo+PiBiaW5kaW5ncywgSSBzdGlsbCBoYXZlIHNv
bWUgcXVlc3Rpb25zOgo+Pgo+PiBPbiBGcmksIDIwMjMtMDQtMDcgYXQgMTE6MDMgKzAyMDAsIEty
enlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+PiBPbiAwNS8wNC8yMDIzIDE0OjE0LCBKb2hhbm5l
cyBaaW5rIHdyb3RlOgo+Pj4+IEhpIEtyeXN6dG9mLAo+Pj4+Cj4+Pj4gdGhhbmtzIGZvciB5b3Vy
IHJldmlldywgcGxlYXNlIGZpbmQgbXkgcXVlc3Rpb25zIGJlbG93Lgo+Pj4+Cj4+Pj4gT24gV2Vk
LCAyMDIzLTA0LTA1IGF0IDEzOjUxICswMjAwLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+
Pj4+PiBbc25pcF0KPj4+Pj4+ICDCoMKgwqDCoMKgwqAgQSBwaGFuZGxlIHRvIHRoZSByZWd1bGF0
b3IgZm9yIFVTQiBWQlVTLgo+Pj4+Pj4gICAKPj4+Pj4+ICvCoCBmc2wscGh5LXR4LXZyZWYtdHVu
ZToKPj4+Pj4+ICvCoMKgwqAgZGVzY3JpcHRpb246Cj4+Pj4+PiArwqDCoMKgwqDCoCBIUyBEQyBW
b2x0YWdlIGxldmVsIGFkanVzdG1lbnQKPj4+Pj4KPj4+Pj4gIkxldmVsIiBpbiB3aGF0IHVuaXRz
Pwo+Pj4+Pgo+Pj4+Cj4+Pj4gVGhlIGRhdGFzaGVldCBqdXN0IHNob3dzIHBlcmNlbnQsIHJhbmdp
bmcgZnJvbSAtNiB0byArMjQlLCBpbiAyJQo+Pj4+IGluY3JlbWVudHMuIFdoYXQgdW5pdCB3b3Vs
ZCB5b3Ugc3VnZ2VzdD8KPj4+Cj4+PiBwZXJjZW50Cj4+PiBodHRwczovL2dpdGh1Yi5jb20vZGV2
aWNldHJlZS1vcmcvZHQtc2NoZW1hL2Jsb2IvbWFpbi9kdHNjaGVtYS9zY2hlbWFzL3Byb3BlcnR5
LXVuaXRzLnlhbWwKPj4KPj4gSSBhbSBzdGlsbCBhIGJpdCBjb25mdXNlZCBob3cgdG8gdXNlIHRo
aXMgcHJvcGVybHkuIEhvdyBjYW4gSSByZXN0cmljdAo+PiB0aGUgdmFsdWVzIHRvIG11bHRpcGxl
cyBvZiAyIGluIG9yZGVyIHRvIGF2b2lkIGlsbGVnYWwgdmFsdWVzPwo+Pgo+PiBBdCB0aGUgbW9t
ZW50IHRoZSBvbmx5IHRoaW5nIEkgY291bGQgY29tZSB1cCB3aXRoIGlzIHNvbWV0aGluZyBsaWtl
Cj4+Cj4+IGZzbCxwaHktdHgtdnJlZi10dW5lLXBlcmNlbnQ6Cj4+ICAgIGRlc2NyaXB0aW9uOiB8
Cj4+ICAgICAgQWRqdXN0cyB0aGUgaGlnaC1zcGVlZCBEQyBsZXZlbCB2b2x0YWdlCj4+ICAgICRy
ZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL2ludDMyCj4gCj4gTm90ZSB0aGF0
IHdpdGggc3RhbmRhcmQgdW5pdCBzdWZmaXhlcywgeW91IGRvbid0IG5lZWQgYSB0eXBlLgo+IAo+
PiAgICBtaW5pbXVtOiAtNgo+PiAgICBtYXhpbXVtOiAyNAo+PiAgICBkZWZhdWx0OiAwCj4+Cj4+
IERvZXMgc29tZXRoaW5nIGxpa2UgdGhpcyB3b3JrPyBJIGFtIG5vdCBxdWl0ZSBzdXJlIGlmIEkg
YW0gb24gdGhlIHJpZ2h0Cj4+IHRyYWNrIGhlcmUsIGVzcGVjaWFsbHkgYXMgdGhpcyByZXF1aXJl
cyBhIHNpZ25lZCBpbnQsIG9mIHdoaWNoIEkgaGF2ZQo+PiBub3Qgc2VlbiBtYW55IGV4YW1wbGVz
IHNvIGZhci4KPiAKPiBXZSdkIGhhdmUgdG8gY2hhbmdlIHRoZSB0eXBlIGZvciAtcGVyY2VudCB0
byBzaWduZWQuIFRoYXQncyBwb3NzaWJsZSwKPiBidXQgZm9yIHZlbmRvciBzcGVjaWZpYyBwcm9w
ZXJ0aWVzIHRoZXJlJ3Mgbm90IG11Y2ggYWR2YW50YWdlIHRvIHVzZQo+IHN0YW5kYXJkIHVuaXRz
IGluc3RlYWQgb2YganVzdCB1c2luZyB0aGUgcmVnaXN0ZXIgdmFsdWVzIGRpcmVjdGx5Lgo+IAoK
SSBkb24ndCBoYXZlIGFueSBvYmplY3Rpb25zIHRvIHRoYXQsIHRoaXMgaXMgcHJldHR5IG11Y2gg
d2hhdCBJIHNlbnQgaW4gCm15IHYxIHBhdGNoIDwyMDIzMDQwNTExMjExOC4xMjU2MTUxLTItai56
aW5rQHBlbmd1dHJvbml4LmRlPiwgYnV0IApLcnp5c3p0b2YgcmVxdWVzdGVkIHRvIGNoYW5nZSB0
aGUgdmVuZG9yIHNwZWNpZmljIHByb3BlcnRpZXMgdG8gdXNlIApwcm9wZXJ0eS11bml0cy4KCldv
dWxkIHNvbWV0aGluZyBhbG9uZyB0aGUgbGluZXMgb2YgdGhlIHN0LHRyaW0taHMtY3VycmVudCBv
biAKRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktc3RtMzItdXNicGh5
Yy55YW1sIGJlIAphY2NlcHRhYmxlIChpLmUuIHVzZSBhbiBlbnVtIGFuZCBhbm5vdGF0ZSB0aGUg
bWVhbmluZyBvZiB0aGUgdmFsdWVzIGluIAp0aGUgZGVzY3JpcHRpb24pPwoKSSB3aWxsLCBuZXZl
cnRoZWxlc3MsIHRyeSB0byBtYWtlIHRoZSBkZXNjcmlwdGlvbnMgYSBiaXQgbW9yZSB2ZXJib3Nl
IGluIApteSB2MiAod2hlcmV2ZXIgdGhlIGRhdGFzaGVldCBnaXZlcyBtZSBwcm9wZXIgaW5mb3Jt
YXRpb25zKSwgYXMgCktyenlzenRvZiByZXF1ZXN0ZWQuCgpCZXN0IHJlZ2FyZHMKSm9oYW5uZXMK
Cj4gUm9iCj4gCgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICB8IEpvaGFubmVz
IFppbmsgICAgICAgICAgICAgICAgICB8ClN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAg
fCBodHRwczovL3d3dy5wZW5ndXRyb25peC5kZS8gICAgfAozMTEzNyBIaWxkZXNoZWltLCBHZXJt
YW55ICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgICAgIHwKQW10c2dlcmljaHQg
SGlsZGVzaGVpbSwgSFJBIDI2ODZ8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSAgICB8CgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
