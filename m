Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56B5DC77B71
	for <linux-phy@archiver.kernel.org>; Tue, 18 Apr 2023 09:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8IZurXt7mXV/dijdGRa4yl3dEYWHVHFsbOoaHZn2YMA=; b=HyjcRv84GcUNDH
	cDFGyteEZULd7YDZx7KfFdX+6wAbTq0XWhyvQzGUZ6lKiEv7oJGYJYbPDALctujMJ1l64ef8IdTRE
	QK/YhZq3/xW5LMrXGfFuSRmR+IVVKT2AZn/M9d0WpAeLK51peZ54UsEr/igEr9RKHsc+gI07pAKZk
	4l2xbw1V/J6iBirZO0G8PFgqijJ7lVpKNDzunxh3csHjhe7jea0+L0EIdj9zOulUAqqSwG9FjsM1m
	jUJaIOvPaxBIh243L9EAqWrdS9NSSvoUUbKKVrB/LVtcmPAiQb8wkEWGwPy5DEo0GPAZMHEX4BjXr
	xMETLdwNwJP9ctGGNb4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pohsG-001WFs-3D;
	Tue, 18 Apr 2023 09:43:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pohsE-001WEU-1c
	for linux-phy@lists.infradead.org;
	Tue, 18 Apr 2023 09:43:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1pohry-0000pw-4o; Tue, 18 Apr 2023 11:43:26 +0200
Message-ID: <67d283f3-d0db-5fc0-79e9-e7531d591aab@pengutronix.de>
Date: Tue, 18 Apr 2023 11:42:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] dt-bindings: phy: imx8mq-usb: add phy tuning
 properties
Content-Language: en-US, de-DE
From: Johannes Zink <j.zink@pengutronix.de>
To: Rob Herring <robh@kernel.org>
Cc: kishon@kernel.org, devicetree@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, festevam@gmail.com,
 s.hauer@pengutronix.de, vkoul@kernel.org, haibo.chen@nxp.com,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-imx@nxp.com,
 kernel@pengutronix.de, linux-phy@lists.infradead.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org, jun.li@nxp.com
References: <20230405112118.1256151-1-j.zink@pengutronix.de>
 <20230405112118.1256151-2-j.zink@pengutronix.de>
 <5398cbe0-c681-5dd7-0b3e-3a586cc4915f@linaro.org>
 <3f7257ee36dc44f162a87281c8279fd5bad91dea.camel@pengutronix.de>
 <95b4afd4-c93e-628b-fd22-6fcbc1d1234e@linaro.org>
 <b394b456540943b1022a7b093bf369924fca0566.camel@pengutronix.de>
 <20230412133921.GA2017891-robh@kernel.org>
 <6953b608-973f-c603-f852-edf7ba183e64@pengutronix.de>
In-Reply-To: <6953b608-973f-c603-f852-edf7ba183e64@pengutronix.de>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: j.zink@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_024342_537271_C20D7E7B 
X-CRM114-Status: GOOD (  26.26  )
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

SGkgUm9iLCBoaSBLcnp5c3p0b2YsCgpPbiA0LzEyLzIzIDE2OjMyLCBKb2hhbm5lcyBaaW5rIHdy
b3RlOgo+IEhpIFJvYiwKPiAKPiBPbiA0LzEyLzIzIDE1OjM5LCBSb2IgSGVycmluZyB3cm90ZToK
Pj4gT24gVHVlLCBBcHIgMTEsIDIwMjMgYXQgMDQ6MjI6MzdQTSArMDIwMCwgSm9oYW5uZXMgWmlu
ayB3cm90ZToKPj4+IEhpIEtyenlzdG9mLAo+Pj4KPj4+IHRoYW5rIHlvdSBmb3IgeW91ciBleHBs
YW5hdGlvbnMuIEFzIEknbSBzdGlsbCBxdWl0ZSBuZXcgdG8gd3JpdGluZwo+Pj4gYmluZGluZ3Ms
IEkgc3RpbGwgaGF2ZSBzb21lIHF1ZXN0aW9uczoKPj4+Cj4+PiBPbiBGcmksIDIwMjMtMDQtMDcg
YXQgMTE6MDMgKzAyMDAsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+Pj4gT24gMDUvMDQv
MjAyMyAxNDoxNCwgSm9oYW5uZXMgWmluayB3cm90ZToKPj4+Pj4gSGkgS3J5c3p0b2YsCj4+Pj4+
Cj4+Pj4+IHRoYW5rcyBmb3IgeW91ciByZXZpZXcsIHBsZWFzZSBmaW5kIG15IHF1ZXN0aW9ucyBi
ZWxvdy4KPj4+Pj4KPj4+Pj4gT24gV2VkLCAyMDIzLTA0LTA1IGF0IDEzOjUxICswMjAwLCBLcnp5
c3p0b2YgS296bG93c2tpIHdyb3RlOgo+Pj4+Pj4gW3NuaXBdCj4+Pj4+Pj4gwqDCoMKgwqDCoMKg
wqAgQSBwaGFuZGxlIHRvIHRoZSByZWd1bGF0b3IgZm9yIFVTQiBWQlVTLgo+Pj4+Pj4+ICvCoCBm
c2wscGh5LXR4LXZyZWYtdHVuZToKPj4+Pj4+PiArwqDCoMKgIGRlc2NyaXB0aW9uOgo+Pj4+Pj4+
ICvCoMKgwqDCoMKgIEhTIERDIFZvbHRhZ2UgbGV2ZWwgYWRqdXN0bWVudAo+Pj4+Pj4KPj4+Pj4+
ICJMZXZlbCIgaW4gd2hhdCB1bml0cz8KPj4+Pj4+Cj4+Pj4+Cj4+Pj4+IFRoZSBkYXRhc2hlZXQg
anVzdCBzaG93cyBwZXJjZW50LCByYW5naW5nIGZyb20gLTYgdG8gKzI0JSwgaW4gMiUKPj4+Pj4g
aW5jcmVtZW50cy4gV2hhdCB1bml0IHdvdWxkIHlvdSBzdWdnZXN0Pwo+Pj4+Cj4+Pj4gcGVyY2Vu
dAo+Pj4+IGh0dHBzOi8vZ2l0aHViLmNvbS9kZXZpY2V0cmVlLW9yZy9kdC1zY2hlbWEvYmxvYi9t
YWluL2R0c2NoZW1hL3NjaGVtYXMvcHJvcGVydHktdW5pdHMueWFtbAo+Pj4KPj4+IEkgYW0gc3Rp
bGwgYSBiaXQgY29uZnVzZWQgaG93IHRvIHVzZSB0aGlzIHByb3Blcmx5LiBIb3cgY2FuIEkgcmVz
dHJpY3QKPj4+IHRoZSB2YWx1ZXMgdG8gbXVsdGlwbGVzIG9mIDIgaW4gb3JkZXIgdG8gYXZvaWQg
aWxsZWdhbCB2YWx1ZXM/Cj4+Pgo+Pj4gQXQgdGhlIG1vbWVudCB0aGUgb25seSB0aGluZyBJIGNv
dWxkIGNvbWUgdXAgd2l0aCBpcyBzb21ldGhpbmcgbGlrZQo+Pj4KPj4+IGZzbCxwaHktdHgtdnJl
Zi10dW5lLXBlcmNlbnQ6Cj4+PiDCoMKgIGRlc2NyaXB0aW9uOiB8Cj4+PiDCoMKgwqDCoCBBZGp1
c3RzIHRoZSBoaWdoLXNwZWVkIERDIGxldmVsIHZvbHRhZ2UKPj4+IMKgwqAgJHJlZjogL3NjaGVt
YXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvaW50MzIKPj4KPj4gTm90ZSB0aGF0IHdpdGggc3Rh
bmRhcmQgdW5pdCBzdWZmaXhlcywgeW91IGRvbid0IG5lZWQgYSB0eXBlLgo+Pgo+Pj4gwqDCoCBt
aW5pbXVtOiAtNgo+Pj4gwqDCoCBtYXhpbXVtOiAyNAo+Pj4gwqDCoCBkZWZhdWx0OiAwCj4+Pgo+
Pj4gRG9lcyBzb21ldGhpbmcgbGlrZSB0aGlzIHdvcms/IEkgYW0gbm90IHF1aXRlIHN1cmUgaWYg
SSBhbSBvbiB0aGUgcmlnaHQKPj4+IHRyYWNrIGhlcmUsIGVzcGVjaWFsbHkgYXMgdGhpcyByZXF1
aXJlcyBhIHNpZ25lZCBpbnQsIG9mIHdoaWNoIEkgaGF2ZQo+Pj4gbm90IHNlZW4gbWFueSBleGFt
cGxlcyBzbyBmYXIuCj4+Cj4+IFdlJ2QgaGF2ZSB0byBjaGFuZ2UgdGhlIHR5cGUgZm9yIC1wZXJj
ZW50IHRvIHNpZ25lZC4gVGhhdCdzIHBvc3NpYmxlLAo+PiBidXQgZm9yIHZlbmRvciBzcGVjaWZp
YyBwcm9wZXJ0aWVzIHRoZXJlJ3Mgbm90IG11Y2ggYWR2YW50YWdlIHRvIHVzZQo+PiBzdGFuZGFy
ZCB1bml0cyBpbnN0ZWFkIG9mIGp1c3QgdXNpbmcgdGhlIHJlZ2lzdGVyIHZhbHVlcyBkaXJlY3Rs
eS4KPj4KPiAKPiBJIGRvbid0IGhhdmUgYW55IG9iamVjdGlvbnMgdG8gdGhhdCwgdGhpcyBpcyBw
cmV0dHkgbXVjaCB3aGF0IEkgc2VudCBpbiAKPiBteSB2MSBwYXRjaCA8MjAyMzA0MDUxMTIxMTgu
MTI1NjE1MS0yLWouemlua0BwZW5ndXRyb25peC5kZT4sIGJ1dCAKPiBLcnp5c3p0b2YgcmVxdWVz
dGVkIHRvIGNoYW5nZSB0aGUgdmVuZG9yIHNwZWNpZmljIHByb3BlcnRpZXMgdG8gdXNlIAo+IHBy
b3BlcnR5LXVuaXRzLgo+IAo+IFdvdWxkIHNvbWV0aGluZyBhbG9uZyB0aGUgbGluZXMgb2YgdGhl
IHN0LHRyaW0taHMtY3VycmVudCBvbiAKPiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGh5L3BoeS1zdG0zMi11c2JwaHljLnlhbWwgYmUgCj4gYWNjZXB0YWJsZSAoaS5lLiB1c2Ug
YW4gZW51bSBhbmQgYW5ub3RhdGUgdGhlIG1lYW5pbmcgb2YgdGhlIHZhbHVlcyBpbiAKPiB0aGUg
ZGVzY3JpcHRpb24pPwo+IAo+IEkgd2lsbCwgbmV2ZXJ0aGVsZXNzLCB0cnkgdG8gbWFrZSB0aGUg
ZGVzY3JpcHRpb25zIGEgYml0IG1vcmUgdmVyYm9zZSBpbiAKPiBteSB2MiAod2hlcmV2ZXIgdGhl
IGRhdGFzaGVldCBnaXZlcyBtZSBwcm9wZXIgaW5mb3JtYXRpb25zKSwgYXMgCj4gS3J6eXN6dG9m
IHJlcXVlc3RlZC4KCmdlbnRsZSBwaW5nIC0gYW55IG9waW5pb25zIG9uIHRoaXM/IFNoYWxsIEkg
anVzdCBzZW5kIGEgVjIgYWxvbmcgdGhlIApsaW5lcyBvZiB0aGUgcGh5LXN0bTMyLXVzYnBoeS5j
PwoKQmVzdCByZWdhcmRzCkpvaGFubmVzCgo+IAo+IEJlc3QgcmVnYXJkcwo+IEpvaGFubmVzCj4g
Cj4+IFJvYgo+Pgo+IAoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgfCBKb2hh
bm5lcyBaaW5rICAgICAgICAgICAgICAgICAgfApTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAg
ICAgIHwgaHR0cHM6Ly93d3cucGVuZ3V0cm9uaXguZGUvICAgIHwKMzExMzcgSGlsZGVzaGVpbSwg
R2VybWFueSAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICAgICB8CkFtdHNnZXJp
Y2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2fCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgICAg
fAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
