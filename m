Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D79DC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 13 Oct 2022 08:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I3s/rBOO7KKhjKKlSR5Wee1RLaqGDloFh6NQOzNQ45Q=; b=eGIVZjOfqBUgYI
	XNrIj6cEOWWNudP1N+D/TPIuhLIpjDDkMRXrjXWW22GYJN3NLzLBz7oknGzJK+WQgHWnbSoy5EQ7j
	bbcsCopBRi3ZBJErNlx6Ju8oB2M0v3rQdHsJKJXQRStb0eS1PAhh2GmLbrxAmbee5XmwB/CUedU5J
	fkiN4QAGCJjuEqMNo+DhCaz5sLE1UbQaLpkmoyvzGs0rrznzdPzp8NIuXtAvPOQB+EexQaNcHdD6O
	mXzXsBaLA7pDZRo4UFghe/8qdX4ZDm+Tknzn5zHxbuB169IjswwmzxutdI3XRdJzE07+pRNgHbc9o
	4TrJ8KsgOdKynrHi1UMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oitvD-00BAZi-RP; Thu, 13 Oct 2022 08:50:31 +0000
Received: from sender4-op-o18.zoho.com ([136.143.188.18])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oituv-00BATB-8O; Thu, 13 Oct 2022 08:50:14 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1665650999; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=mAXTfNQx4KK9U3hKLTy2Vu1XiBfkJTEQgI+t2gr+tHIZwjiSpe4WpePGfugU5vLm0UjfgYLh/SKAzQydZT/N7Q+ARKGxowo6xQkyQqMPwBsQjgueCM/UrelMUsCzNstnuSlNpnPSlLvj85maTN16f/ucdiqI8IUTCET2TlEyRM4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1665650999; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
	bh=h+wv9BWVpxAEeVBWGF8N5xlC4ECUzHofGlXe/WmnrJs=; 
	b=NUVJ6aPmn6fBNHnE3dW3SY0oM6InJa+Qx1d9G69TNW7K2WImfpRyXCQ3dnHdPPT7mLFwIaNj06VS49jmfG/6WjSEph0pmNtfV226t9Eic/MRKfOv4HGHzpTN7YnLLvIC4fp6T9t6JzcDpSX9a/tpfkzNxyZVBV4cluY+FLaYANY=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1665650999;
	s=zmail; d=icenowy.me; i=uwu@icenowy.me;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=h+wv9BWVpxAEeVBWGF8N5xlC4ECUzHofGlXe/WmnrJs=;
	b=LVp9SE8gVJU1f+WjTS3Iw7cWc4QspHdlvHzXmf9Oxy3mwzclD9hQpgVAJO0UcDLd
	xUSytzEPrRsDSJEiGYdItiKU4uah204LZhup02JQBBQsAXQWycS/jKZMEfHL9btMKbR
	IeNrlMDLpJHFsiS/E9YRJ33+x3KnuIOAo+fFeDxY=
Received: from edelgard.fodlan.icenowy.me (112.94.102.144 [112.94.102.144]) by mx.zohomail.com
	with SMTPS id 1665650997135403.57608440342176; Thu, 13 Oct 2022 01:49:57 -0700 (PDT)
Message-ID: <439b685e3aada19021d94669f6f855f1fc81d08e.camel@icenowy.me>
Subject: Re: [PATCH v2 04/10] phy: sun4i-usb: add support for the USB PHY on
 F1C100s SoC
From: Icenowy Zheng <uwu@icenowy.me>
To: Jernej =?gb2312?Q?=810=947krabec?= <jernej.skrabec@gmail.com>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Chen-Yu Tsai <wens@csie.org>, Samuel
 Holland <samuel@sholland.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Andre Przywara <andre.przywara@arm.com>
Cc: soc@kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev,  linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org
Date: Thu, 13 Oct 2022 16:49:51 +0800
In-Reply-To: <4218006.ejJDZkT8p0@kista>
References: <20221012055602.1544944-1-uwu@icenowy.me>
	 <20221012055602.1544944-5-uwu@icenowy.me> <4218006.ejJDZkT8p0@kista>
Organization: Anthon Open-Source Community
User-Agent: Evolution 3.44.4 
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221013_015013_385330_84806FF9 
X-CRM114-Status: GOOD (  18.91  )
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

5ZyoIDIwMjItMTAtMTLmmJ/mnJ/kuInnmoQgMjM6MjEgKzAyMDDvvIxKZXJuZWogxaBrcmFiZWPl
hpnpgZPvvJoKPiBIaSBJY2Vub3d5LAo+IAo+IERuZSBzcmVkYSwgMTIuIG9rdG9iZXIgMjAyMiBv
YiAwNzo1NTo1NiBDRVNUIGplIEljZW5vd3kgWmhlbmcKPiBuYXBpc2FsKGEpOgo+ID4gVGhlIEYx
QzEwMHMgU29DIGhhcyBvbmUgVVNCIE9URyBwb3J0IGNvbm5lY3RlZCB0byBhIE1VU0IKPiA+IGNv
bnRyb2xsZXIuCj4gPiAKPiA+IEFkZCBzdXBwb3J0IGZvciBpdHMgVVNCIFBIWS4KPiA+IAo+ID4g
U2lnbmVkLW9mZi1ieTogSWNlbm93eSBaaGVuZyA8dXd1QGljZW5vd3kubWU+Cj4gPiAtLS0KPiA+
IE5vIGNoYW5nZXMgc2luY2UgdjEuCj4gPiAKPiA+IMKgZHJpdmVycy9waHkvYWxsd2lubmVyL3Bo
eS1zdW40aS11c2IuYyB8IDExICsrKysrKysrKysrCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAxMSBp
bnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9hbGx3aW5uZXIv
cGh5LXN1bjRpLXVzYi5jCj4gPiBiL2RyaXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3VuNGktdXNi
LmMgaW5kZXgKPiA+IDNhMzgzMWY2MDU5YS4uMmY5NGNiNzc2MzdiCj4gPiAxMDA2NDQKPiA+IC0t
LSBhL2RyaXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3VuNGktdXNiLmMKPiA+ICsrKyBiL2RyaXZl
cnMvcGh5L2FsbHdpbm5lci9waHktc3VuNGktdXNiLmMKPiA+IEBAIC0xMDksNiArMTA5LDcgQEAg
ZW51bSBzdW40aV91c2JfcGh5X3R5cGUgewo+ID4gwqDCoMKgwqDCoMKgwqDCoHN1bjhpX3Yzc19w
aHksCj4gPiDCoMKgwqDCoMKgwqDCoMKgc3VuNTBpX2E2NF9waHksCj4gPiDCoMKgwqDCoMKgwqDC
oMKgc3VuNTBpX2g2X3BoeSwKPiA+ICvCoMKgwqDCoMKgwqDCoHN1bml2X2YxYzEwMHNfcGh5LAo+
ID4gwqB9Owo+ID4gCj4gPiDCoHN0cnVjdCBzdW40aV91c2JfcGh5X2NmZyB7Cj4gPiBAQCAtODU5
LDYgKzg2MCwxNCBAQCBzdGF0aWMgaW50IHN1bjRpX3VzYl9waHlfcHJvYmUoc3RydWN0Cj4gPiBw
bGF0Zm9ybV9kZXZpY2UKPiA+ICpwZGV2KSByZXR1cm4gMDsKPiA+IMKgfQo+ID4gCj4gPiArc3Rh
dGljIGNvbnN0IHN0cnVjdCBzdW40aV91c2JfcGh5X2NmZyBzdW5pdl9mMWMxMDBzX2NmZyA9IHsK
PiA+ICvCoMKgwqDCoMKgwqDCoC5udW1fcGh5cyA9IDEsCj4gPiArwqDCoMKgwqDCoMKgwqAudHlw
ZSA9IHN1bml2X2YxYzEwMHNfcGh5LAo+IAo+IEkgdGhpbmsgeW91IHNob3VsZCBqdXN0IHVzZSBz
dW40aV9hMTBfcGh5LiBJdCBoYXMgbm8gc3BlY2lhbAo+IGhhbmRsaW5nLiBJIGRvbid0IAo+IHNl
ZSBhIHBvaW50IGFkZGluZyBuZXcgcGh5IHR5cGVzIGlmIHRoZXJlIGlzIG5vIHNwZWNpYWwgY2Fz
ZXMgZm9yIGl0LgoKU291bmRzIHJlYXNvbmFibGUsIGFsdGhvdWdoIEkgdGhpbmsgd2Ugc2hvdWxk
IGZpbmFsbHkgZHJvcCAudHlwZSBhbmQKdXNlIG9ubHkgZGVzY3JpYmluZyBpdGVtcy4KCj4gCj4g
QmVzdCByZWdhcmRzLAo+IEplcm5lago+IAo+ID4gK8KgwqDCoMKgwqDCoMKgLmRpc2NfdGhyZXNo
ID0gMywKPiA+ICvCoMKgwqDCoMKgwqDCoC5waHljdGxfb2Zmc2V0ID0gUkVHX1BIWUNUTF9BMTAs
Cj4gPiArwqDCoMKgwqDCoMKgwqAuZGVkaWNhdGVkX2Nsb2NrcyA9IHRydWUsCj4gPiArfTsKPiA+
ICsKPiA+IMKgc3RhdGljIGNvbnN0IHN0cnVjdCBzdW40aV91c2JfcGh5X2NmZyBzdW40aV9hMTBf
Y2ZnID0gewo+ID4gwqDCoMKgwqDCoMKgwqDCoC5udW1fcGh5cyA9IDMsCj4gPiDCoMKgwqDCoMKg
wqDCoMKgLnR5cGUgPSBzdW40aV9hMTBfcGh5LAo+ID4gQEAgLTk4OCw2ICs5OTcsOCBAQCBzdGF0
aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZAo+ID4gc3VuNGlfdXNiX3BoeV9vZl9tYXRjaFtd
ID0geyB7IC5jb21wYXRpYmxlID0KPiA+ICJhbGx3aW5uZXIsc3VuNTBpLWE2NC11c2ItcGh5IiwK
PiA+IMKgwqDCoMKgwqDCoMKgwqDCoCAuZGF0YSA9ICZzdW41MGlfYTY0X2NmZ30sCj4gPiDCoMKg
wqDCoMKgwqDCoMKgeyAuY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg2LXVzYi1waHki
LCAuZGF0YSA9IAo+ICZzdW41MGlfaDZfY2ZnIH0sCj4gPiArwqDCoMKgwqDCoMKgwqB7IC5jb21w
YXRpYmxlID0gImFsbHdpbm5lcixzdW5pdi1mMWMxMDBzLXVzYi1waHkiLAo+ID4gK8KgwqDCoMKg
wqDCoMKgwqAgLmRhdGEgPSAmc3VuaXZfZjFjMTAwc19jZmcgfSwKPiA+IMKgwqDCoMKgwqDCoMKg
wqB7IH0sCj4gPiDCoH07Cj4gPiDCoE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIHN1bjRpX3VzYl9w
aHlfb2ZfbWF0Y2gpOwo+ID4gLS0KPiA+IDIuMzcuMQo+IAo+IAo+IAoKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
