Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB05ACAC5BB
	for <linux-phy@archiver.kernel.org>; Wed,  8 Oct 2025 06:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1k9uK9P/Zy4uKWIka40HVlNI33bS3Ymp+dJc7xQ+Nsk=; b=ySGUWNfgWkf9O9
	yIoBtyp8OSlOizFwIaD3hSTfaG1a4nlhSb4+MYkwKtUgWw50W3ocal/1rDQeaXrD+th2dCAj5GmnE
	h9ghR4Q7x11zmdxhR3kUID6Ug5+nqLzdLFcD2mVH9H+OG/tpkZUX3vHP4N82pmE1mhBdGHEUeBo06
	fLSjLuko16rGUBNcpkdDKo8/EW2ZNlADVSUxxNP1+ngqhibjyPI4PpXfzuEnWwQ0ddVnul1TMPbjm
	GwQZrcJgRmAYPcJNm93hPbNBfPQ8kLFTY4ayWIdmWPgzy2slxiQmQUBaOMBQPKjOZXXu0+sVus82u
	Wp5A/lI9R+hr9dU0H75Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6Nde-00000003III-2Oc4;
	Wed, 08 Oct 2025 06:27:02 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6NdY-00000003IHd-38Ht
	for linux-phy@lists.infradead.org;
	Wed, 08 Oct 2025 06:27:02 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20251008062649epoutp0386b8d5f82e4cefa3358e93535c44a4a1~scBmnD_RZ2644326443epoutp034
	for <linux-phy@lists.infradead.org>; Wed,  8 Oct 2025 06:26:49 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20251008062649epoutp0386b8d5f82e4cefa3358e93535c44a4a1~scBmnD_RZ2644326443epoutp034
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1759904809;
	bh=AhYd9h60tgJkroSdF4MzOtQ6cgDPvUr1kxsXqDrcUJM=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=La3EXbgPcWsZqUzCmKKEVCjL0X8zn4DEH+vqhOabEOPGnfXLxPcmW5MkomUK4d10P
	 CiXHidO3JihmKYOJxs3tBGpemXVDwsrfsYLshZzxStxhsFwWRIBzQiBBy/skVHJvn6
	 L6jD93bWLBnTA5A6AernzM2d+dJ92Y23HWApneU0=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20251008062649epcas5p134e702f60be854fa21fddb87920336da~scBl2HGr90191501915epcas5p1O;
	Wed,  8 Oct 2025 06:26:49 +0000 (GMT)
Received: from epcas5p3.samsung.com (unknown [182.195.38.91]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4chNMD0bv1z6B9m6; Wed,  8 Oct
	2025 06:26:48 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20251008062647epcas5p4ea70f83990f96d4e9d28b6cfdd8e5f72~scBkO7nfN2366923669epcas5p46;
	Wed,  8 Oct 2025 06:26:47 +0000 (GMT)
Received: from INBRO002756 (unknown [107.122.3.168]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20251008062645epsmtip204fc4a5b2f19c5b084b6bc37f715eb75~scBiRvGvY1681616816epsmtip2G;
	Wed,  8 Oct 2025 06:26:45 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: =?utf-8?Q?'Andr=C3=A9_Draszik'?= <andre.draszik@linaro.org>, "'Vinod
 Koul'" <vkoul@kernel.org>, "'Kishon Vijay Abraham I'" <kishon@kernel.org>,
	"'Rob Herring'" <robh@kernel.org>, "'Krzysztof Kozlowski'"
	<krzk+dt@kernel.org>, "'Conor Dooley'" <conor+dt@kernel.org>
Cc: "'Peter Griffin'" <peter.griffin@linaro.org>, "'Tudor Ambarus'"
	<tudor.ambarus@linaro.org>, "'Will McVicker'" <willmcvicker@google.com>,
	<kernel-team@android.com>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
In-Reply-To: <20251007-power-domains-dt-bindings-phy-samsung-ufs-phy-v1-1-d9030d14af59@linaro.org>
Subject: RE: [PATCH] dt-bindings: phy: samsung,ufs-phy: add power-domains
Date: Wed, 8 Oct 2025 11:56:43 +0530
Message-ID: <002001dc381c$85e17fa0$91a47ee0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQLlf+KWxfwWEHq87cswdN59mt3ZswNwaTJusom1c8A=
Content-Language: en-us
X-CMS-MailID: 20251008062647epcas5p4ea70f83990f96d4e9d28b6cfdd8e5f72
X-Msg-Generator: CA
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20251007160147epcas5p305e74b7b3449b934687396e9c8aa3ff4
References: <CGME20251007160147epcas5p305e74b7b3449b934687396e9c8aa3ff4@epcas5p3.samsung.com>
	<20251007-power-domains-dt-bindings-phy-samsung-ufs-phy-v1-1-d9030d14af59@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_232659_033334_A1693A8C 
X-CRM114-Status: UNSURE (   5.08  )
X-CRM114-Notice: Please train this message.
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

Cgo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogQW5kcsOpIERyYXN6aWsgPGFu
ZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4NCj4gU2VudDogVHVlc2RheSwgT2N0b2JlciA3LCAyMDI1
IDk6MzIgUE0NCj4gVG86IFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5lbC5vcmc+OyBLaXNob24gVmlq
YXkgQWJyYWhhbSBJDQo+IDxraXNob25Aa2VybmVsLm9yZz47IFJvYiBIZXJyaW5nIDxyb2JoQGtl
cm5lbC5vcmc+OyBLcnp5c3p0b2YgS296bG93c2tpDQo+IDxrcnprK2R0QGtlcm5lbC5vcmc+OyBD
b25vciBEb29sZXkgPGNvbm9yK2R0QGtlcm5lbC5vcmc+OyBBbGltIEFraHRhcg0KPiA8YWxpbS5h
a2h0YXJAc2Ftc3VuZy5jb20+DQo+IENjOiBQZXRlciBHcmlmZmluIDxwZXRlci5ncmlmZmluQGxp
bmFyby5vcmc+OyBUdWRvciBBbWJhcnVzDQo+IDx0dWRvci5hbWJhcnVzQGxpbmFyby5vcmc+OyBX
aWxsIE1jVmlja2VyIDx3aWxsbWN2aWNrZXJAZ29vZ2xlLmNvbT47DQo+IGtlcm5lbC10ZWFtQGFu
ZHJvaWQuY29tOyBsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZzsNCj4gZGV2aWNldHJlZUB2
Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IEFuZHLDqSBEcmFz
emlrDQo+IDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+DQo+IFN1YmplY3Q6IFtQQVRDSF0gZHQt
YmluZGluZ3M6IHBoeTogc2Ftc3VuZyx1ZnMtcGh5OiBhZGQgcG93ZXItZG9tYWlucw0KPiANCj4g
VGhlIFVGUyBwaHkgY2FuIGJlIHBhcnQgb2YgYSBwb3dlciBkb21haW4sIHNvIHdlIG5lZWQgdG8g
YWxsb3cgdGhlDQo+IHJlbGV2YW50IHByb3BlcnR5ICdwb3dlci1kb21haW5zJy4NCj4gDQpDYW4g
eW91IGNyb3NzIGNoZWNrIGlmIHRoZXJlIGlzIGEgc2VwYXJhdGUgcG93ZXIgZG9tYWluIGNvbnRy
b2wgZm9yIHVmcy1waHk/IA0KDQo+IFNpZ25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxhbmRy
ZS5kcmFzemlrQGxpbmFyby5vcmc+DQo+IC0tLQ0KPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BoeS9zYW1zdW5nLHVmcy1waHkueWFtbCB8IDMgKysrDQo+ICAxIGZpbGUgY2hh
bmdlZCwgMyBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zYW1zdW5nLHVmcy1waHkueWFtbA0KPiBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1ZnMtcGh5LnlhbWwNCj4gaW5k
ZXgNCj4gZDcwZmZlYjZlODI0YmZjMTk2NjhlMGY2NzgyNzZhY2Q4NzlhNjIxNy4uMmIyMGMwYTVl
NTA5NDg4OWViM2U4MGRjYzINCj4gMWI1MDU5NDNjNjg1MjMgMTAwNjQ0DQo+IC0tLSBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1ZnMtcGh5LnlhbWwNCj4g
KysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zYW1zdW5nLHVmcy1w
aHkueWFtbA0KPiBAQCAtMzYsNiArMzYsOSBAQCBwcm9wZXJ0aWVzOg0KPiAgICAgIG1pbkl0ZW1z
OiAxDQo+ICAgICAgbWF4SXRlbXM6IDQNCj4gDQo+ICsgIHBvd2VyLWRvbWFpbnM6DQo+ICsgICAg
bWF4SXRlbXM6IDENCj4gKw0KPiAgICBzYW1zdW5nLHBtdS1zeXNjb246DQo+ICAgICAgJHJlZjog
L3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhhbmRsZS1hcnJheQ0KPiAgICAgIG1h
eEl0ZW1zOiAxDQo+IA0KPiAtLS0NCj4gYmFzZS1jb21taXQ6IDNiOWIxZjhkZjQ1NGNhYTQ1M2M3
ZmIwNzY4OTA2NGVkYjJlZGE5MGENCj4gY2hhbmdlLWlkOiAyMDI1MTAwNy1wb3dlci1kb21haW5z
LWR0LWJpbmRpbmdzLXBoeS1zYW1zdW5nLXVmcy1waHktDQo+IGZjZTk1ZTJlYWUzOA0KPiANCj4g
QmVzdCByZWdhcmRzLA0KPiAtLQ0KPiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5h
cm8ub3JnPg0KDQoNCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
