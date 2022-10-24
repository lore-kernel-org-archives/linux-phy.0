Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9948C38A2D
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 14:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3cRUz8KILKG+EhibPVRyVDZkdiFkW5+v8eLur6jb2PQ=; b=09xMpHc+/7SaCz
	8pNicK2WrHe1FfA5tnYcajxijaA85nmDB1uBY1u1KXKszMs8MYo9mvICqSBzniqG6z0seUji7eGJk
	eApT8I/rEBI99g0GXgkyWSbjg9FB5EWHJN+Aiee27xJExD1bzFlT+i27JmqKA9CqWXDI9YPy5w49Y
	jrT8LTHaYrNVXJ3lUHpddIVnBZnm4AMfgVV3ZoRp/4d9chtzKQr4089Z7NaQR4TQ6+IePYlxrWVbV
	oDSPYZFt7G7wpNkaRc9B9+A4YuqABQjzKsu1+ERLLbkk/VzuLVpTXz+GGgxj/Kc8JmJUSHzAj33oN
	R/TQIgRs5G6XD32lwHhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omyqt-00203x-4y; Mon, 24 Oct 2022 14:54:55 +0000
Received: from sender4-op-o18.zoho.com ([136.143.188.18])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omyqh-00201i-WB; Mon, 24 Oct 2022 14:54:45 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1666623276; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=OuC5UuswYeJwvDBhbj5/UnDO5N1jT5QmGcDoTqLjmM+WB2SyFIMZK1U9Iakm2oM1Pg5egIcUhvJBEt2o0rThSEN8L5e/AQaz6ddjwD0W6eEXfxscplmQGhRhxi//XtO8neaYjes1G6VzYplBythR3bwn+ryak1tfHqpUt112Qsg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1666623276; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
	bh=KtFnxpe3/zLGu3zMT8VZpJKVy8JzlMwgd9rxKAODgBc=; 
	b=OhlF9/Ppa7U2cWGLMO+SpNRfzDiQj5sDmuroumxzRZZuTSO7pyfgJGiMQK6YSafQb9FmG08oC4EaB9AtRRjVcuqTBg3Hm5aby24aBd6ozCt/8VHqR8n1mdXbz2/9CjYUsCp6N1vWz6Vid9GJkkZOjvWzNx5kvqHtQ8F1im6KQzA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1666623276;
	s=zmail; d=icenowy.me; i=uwu@icenowy.me;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=KtFnxpe3/zLGu3zMT8VZpJKVy8JzlMwgd9rxKAODgBc=;
	b=HjmrGs8cF4SHI5gvT0qasK+xbp3ZRTpFLth0wBnuvei9m5umaJ8AIrP7sfc9w/nl
	XtwQuoLdjJxrD6z59KNz9Oou9mJHp7rOdrAzVyn8kRd5jE4TzcKbyjNwozA4IwXSLlC
	6NZ9NJQQs4I4JzJJwAp7qvTa+aVbRIQdpnst2ZF8=
Received: from edelgard.fodlan.icenowy.me (112.94.102.105 [112.94.102.105]) by mx.zohomail.com
	with SMTPS id 166662327277432.6796919089179; Mon, 24 Oct 2022 07:54:32 -0700 (PDT)
Message-ID: <6eac76260f5d47542ac88143082a2b4393deb3bf.camel@icenowy.me>
Subject: Re: [PATCH v2 09/10] dt-binding: arm: sunxi: add compatible strings
 for PopStick v1.1
From: Icenowy Zheng <uwu@icenowy.me>
To: Andre Przywara <andre.przywara@arm.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Chen-Yu Tsai <wens@csie.org>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, soc@kernel.org,
 linux-kernel@vger.kernel.org,  devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-sunxi@lists.linux.dev,
 linux-phy@lists.infradead.org,  linux-usb@vger.kernel.org
Date: Mon, 24 Oct 2022 22:54:25 +0800
In-Reply-To: <20221024151714.59968916@donnerap.cambridge.arm.com>
References: <20221012055602.1544944-1-uwu@icenowy.me>
	 <20221012055602.1544944-10-uwu@icenowy.me>
	 <20221024151714.59968916@donnerap.cambridge.arm.com>
Organization: Anthon Open-Source Community
User-Agent: Evolution 3.44.4 
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_075444_124565_38CD053B 
X-CRM114-Status: GOOD (  17.70  )
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

5ZyoIDIwMjItMTAtMjTmmJ/mnJ/kuIDnmoQgMTU6MTcgKzAxMDDvvIxBbmRyZSBQcnp5d2FyYeWG
memBk++8mgo+IE9uIFdlZCwgMTIgT2N0IDIwMjIgMTM6NTY6MDEgKzA4MDAKPiBJY2Vub3d5IFpo
ZW5nIDx1d3VAaWNlbm93eS5tZT4gd3JvdGU6Cj4gCj4gSGkgSWNlbm93eSwKPiAKPiA+IFNvdXJj
ZVBhcnRzIFBvcFN0aWNrIGlzIGEgRjFDMjAwcy1iYXNlZCBzdGljay1zaGFwZWQgU0JDLgo+ID4g
Cj4gPiBBZGQgYSBjb21wYXRpYmxlIHN0cmluZyBsaXN0IGZvciBpdHMgdjEuMSB2ZXJzaW9uICh0
aGUgZmlyc3QgcHVibGljCj4gPiBvbmUpLgo+IAo+IElmIHYxLjAgKG9yIGFueXRoaW5nIHByaW9y
KSBuZXZlciBtYWRlIGl0IHRvIHRoZSBvdXRzaWRlIHdvcmxkLCBJCj4gZG9uJ3QKPiB0aGluayB3
ZSBuZWVkIHRvIG1lbnRpb24gdGhhdCBpbiB0aGUgcHVibGljIGJpbmRpbmdzLgo+IEluIGdlbmVy
YWwgTGludXggc2VlbXMgdG8gZGlzY291cmFnZSBzdXBwb3J0IGZvciB1bnJlbGVhc2VkIGhhcmR3
YXJlLAo+IHNvIEkKPiB0aGluayB5b3UgY2FuIGp1c3QgZHJvcCB0aGUgInNvdXJjZXBhcnRzLHBv
cHN0aWNrLXYxLjEiIG5hbWUuCgpUaGVyZSdzIGdvaW5nIHRvIGJlIHYyLjAsIHdoaWNoIGlzIHF1
aXRlIGRpZmZlcmVudCB0byB2MS4xLgoKPiAKPiBDaGVlcnMsCj4gQW5kcmUKPiAKPiA+IFNpZ25l
ZC1vZmYtYnk6IEljZW5vd3kgWmhlbmcgPHV3dUBpY2Vub3d5Lm1lPgo+ID4gLS0tCj4gPiBOZXcg
cGF0Y2ggaW50cm9kdWNlZCBpbiB2Mi4KPiA+IAo+ID4gwqBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvYXJtL3N1bnhpLnlhbWwgfCA3ICsrKysrKysKPiA+IMKgMSBmaWxlIGNoYW5n
ZWQsIDcgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9zdW54aS55YW1sCj4gPiBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9hcm0vc3VueGkueWFtbAo+ID4gaW5kZXggM2FkMWNkNTBlM2ZlLi5j
NmUwYWQ3ZjQ2MWQgMTAwNjQ0Cj4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvYXJtL3N1bnhpLnlhbWwKPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9hcm0vc3VueGkueWFtbAo+ID4gQEAgLTgwNyw2ICs4MDcsMTMgQEAgcHJvcGVydGll
czoKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IHNpbmxpbngsc2luYTMzCj4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiBhbGx3aW5uZXIsc3VuOGktYTMzCj4gPiDCoAo+
ID4gK8KgwqDCoMKgwqAgLSBkZXNjcmlwdGlvbjogU291cmNlUGFydHMgUG9wU3RpY2sgdjEuMQo+
ID4gK8KgwqDCoMKgwqDCoMKgIGl0ZW1zOgo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0
OiBzb3VyY2VwYXJ0cyxwb3BzdGljay12MS4xCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29u
c3Q6IHNvdXJjZXBhcnRzLHBvcHN0aWNrCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6
IGFsbHdpbm5lcixzdW5pdi1mMWMyMDBzCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6
IGFsbHdpbm5lcixzdW5pdi1mMWMxMDBzCj4gPiArCj4gPiDCoMKgwqDCoMKgwqAgLSBkZXNjcmlw
dGlvbjogU0w2MzEgQWN0aW9uIENhbWVyYSB3aXRoIElNWDE3OQo+ID4gwqDCoMKgwqDCoMKgwqDC
oCBpdGVtczoKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IGFsbHdpbm5lcixzbDYz
MS1pbXgxNzkKPiAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
