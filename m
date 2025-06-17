Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41B9CC71136
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jun 2025 01:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H4vGN4CqQly3KmSGy0q9OhYDlGItTe/OvcfVbHxEVzk=; b=xh5T6pczGdIxBB
	sno6kMbQt8+/u1QcE6+SFxs1oxkWpIlb0OT4v9yGEoHX0HiuJDD+6HmMDNa67hcm8DmtoKSq1W1SA
	DlCnl251kJdzjSWlDlnAMfn8uydBfr8qbFO5NxfV46ZA3/rnmgnKaNU/8Byjjs9HyVFgpZX0bZtVU
	BfzzrwX0tQ7ufDoYFXGal4VXIThAAY4FrywBWZfFTFhfGwhEKnFS6ARpsZ0sqn2riFbkQzI0zUDCf
	/Xg3rgUbIU1LMN2eLmav37ic7Ol3xFgGKfJMC6gIxID6Gv4Scx2dVqJPFLnQssDjVPtToqd/eNWrc
	zX/4M3sxzZvePES3R/Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRhfF-00000008kvP-018w;
	Wed, 18 Jun 2025 01:32:33 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRhRu-00000008juP-0IYy
	for linux-phy@lists.infradead.org;
	Wed, 18 Jun 2025 01:18:47 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20250618011844epoutp0313598f1799c6f62e1e800a2f7afc7c60~J-koaz-gN1810718107epoutp03J
	for <linux-phy@lists.infradead.org>; Wed, 18 Jun 2025 01:18:44 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20250618011844epoutp0313598f1799c6f62e1e800a2f7afc7c60~J-koaz-gN1810718107epoutp03J
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1750209524;
	bh=wtB2nyAmYkJNev8xHYq9d18z8IHo9fhTQMx4FXJI91Q=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=hwOfwwPf1PK9Df2XtBITBVGkjWNu/RovmVrO+C5uEhHfZcW1PEsaa9usJPF6RWFha
	 szkvyXwbP0P5sP7J0iC5oIok6+B+Ue4nJhGtxKQ8jcu8WgrFs0gG5+hs1dNHrBCkXy
	 kcV98DhjUY2/DpcVvH7bk0wFBP/zCRAxM1GE1U5I=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20250618011843epcas5p3367373e129f7f5754a9dd4a8b63038f1~J-knaQ-wF0610006100epcas5p3L;
	Wed, 18 Jun 2025 01:18:43 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.178]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4bMQqP1bF5z3hhT3; Wed, 18 Jun
	2025 01:18:41 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20250617181451epcas5p4b52e90a02e099d01aa319f0235846d28~J5yig9GeW0527705277epcas5p4u;
	Tue, 17 Jun 2025 18:14:51 +0000 (GMT)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20250617181448epsmtip25216cdd55479e0fd7073a49e4b970357~J5yfuD5Nn2750327503epsmtip22;
	Tue, 17 Jun 2025 18:14:48 +0000 (GMT)
From: "Pritam Manohar Sutar" <pritam.sutar@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>
Cc: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<andre.draszik@linaro.org>, <peter.griffin@linaro.org>,
	<kauschluss@disroot.org>, <ivo.ivanov.ivanov1@gmail.com>,
	<m.szyprowski@samsung.com>, <s.nawrocki@samsung.com>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <rosa.pila@samsung.com>,
	<dev.tailor@samsung.com>, <faraz.ata@samsung.com>,
	<muhammed.ali@samsung.com>, <selvarasu.g@samsung.com>
In-Reply-To: <20250616-proud-statuesque-polecat-616eaf@kuoka>
Subject: RE: [PATCH v3 5/9] phy: exyons5-usbdrd: support HS combo phy for
 ExynosAutov920
Date: Tue, 17 Jun 2025 23:44:47 +0530
Message-ID: <000601dbdfb3$b800ecd0$2802c670$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQNTkACKxnsdZBPuyPiYuNftoBZF1gGep4S9AR7FIqoAhOg89rD+NDxg
Content-Language: en-in
X-CMS-MailID: 20250617181451epcas5p4b52e90a02e099d01aa319f0235846d28
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250613055053epcas5p377269bcc2c8567c00a2298d86c0d26a4
References: <20250613055613.866909-1-pritam.sutar@samsung.com>
	<CGME20250613055053epcas5p377269bcc2c8567c00a2298d86c0d26a4@epcas5p3.samsung.com>
	<20250613055613.866909-6-pritam.sutar@samsung.com>
	<20250616-proud-statuesque-polecat-616eaf@kuoka>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_181846_416213_36C9BC16 
X-CRM114-Status: UNSURE (   9.33  )
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

SGkgS3J6eXN6dG9mLAoKPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+IEZyb206IEtyenlz
enRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KPiBTZW50OiAxNiBKdW5lIDIwMjUgMDE6
NDcgUE0KPiBUbzogUHJpdGFtIE1hbm9oYXIgU3V0YXIgPHByaXRhbS5zdXRhckBzYW1zdW5nLmNv
bT4KPiBDYzogdmtvdWxAa2VybmVsLm9yZzsga2lzaG9uQGtlcm5lbC5vcmc7IHJvYmhAa2VybmVs
Lm9yZzsKPiBrcnprK2R0QGtlcm5lbC5vcmc7IGNvbm9yK2R0QGtlcm5lbC5vcmc7IGFsaW0uYWto
dGFyQHNhbXN1bmcuY29tOwo+IGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZzsgcGV0ZXIuZ3JpZmZp
bkBsaW5hcm8ub3JnOyBrYXVzY2hsdXNzQGRpc3Jvb3Qub3JnOwo+IGl2by5pdmFub3YuaXZhbm92
MUBnbWFpbC5jb207IG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbTsKPiBzLm5hd3JvY2tpQHNhbXN1
bmcuY29tOyBsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZzsKPiBkZXZpY2V0cmVlQHZnZXIu
a2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgbGludXgtYXJtLQo+IGtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eC1zYW1zdW5nLXNvY0B2Z2VyLmtlcm5lbC5v
cmc7Cj4gcm9zYS5waWxhQHNhbXN1bmcuY29tOyBkZXYudGFpbG9yQHNhbXN1bmcuY29tOwo+IGZh
cmF6LmF0YUBzYW1zdW5nLmNvbTsgbXVoYW1tZWQuYWxpQHNhbXN1bmcuY29tOwo+IHNlbHZhcmFz
dS5nQHNhbXN1bmcuY29tCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2MyA1LzldIHBoeTogZXh5b25z
NS11c2JkcmQ6IHN1cHBvcnQgSFMgY29tYm8gcGh5IGZvcgo+IEV4eW5vc0F1dG92OTIwCj4gCj4g
T24gRnJpLCBKdW4gMTMsIDIwMjUgYXQgMTE6MjY6MDlBTSBHTVQsIFByaXRhbSBNYW5vaGFyIFN1
dGFyIHdyb3RlOgo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QKPiA+ICtleHlub3M1X3VzYmRyZF9w
aHlfY29uZmlnIHVzYmRyZF9oc3BoeV9jZmdfZXh5bm9zYXV0b3Y5MjBbXSA9IHsKPiA+ICsJewo+
ID4gKwkJLmlkCQk9IEVYWU5PUzVfRFJEUEhZX1VUTUksCj4gPiArCQkucGh5X2luaXQJPSBleHlu
b3NhdXRvdjkyMF91c2JkcmRfdXRtaV9pbml0LAo+ID4gKwl9LAo+ID4gK307Cj4gPiArCj4gPiAr
c3RhdGljIGNvbnN0IHN0cnVjdCBleHlub3M1X3VzYmRyZF9waHlfZHJ2ZGF0YQo+IGV4eW5vc2F1
dG92OTIwX3VzYmRyZF9oc3BoeSA9IHsKPiA+ICsJLnBoeV9jZmcJCT0gdXNiZHJkX2hzcGh5X2Nm
Z19leHlub3NhdXRvdjkyMCwKPiA+ICsJLnBoeV9vcHMJCT0gJmV4eW5vc2F1dG92OTIwX3VzYjMx
ZHJkX3BoeV9vcHMsCj4gPiArCS5jbGtfbmFtZXMJCT0gZXh5bm9zNV9jbGtfbmFtZXMsCj4gPiAr
CS5uX2Nsa3MJCQk9IEFSUkFZX1NJWkUoZXh5bm9zNV9jbGtfbmFtZXMpLAo+ID4gKwkuY29yZV9j
bGtfbmFtZXMJCT0gZXh5bm9zNV9jb3JlX2Nsa19uYW1lcywKPiA+ICsJLm5fY29yZV9jbGtzCQk9
IEFSUkFZX1NJWkUoZXh5bm9zNV9jb3JlX2Nsa19uYW1lcyksCj4gPiArfTsKPiAKPiBTYW1lIHF1
ZXN0aW9uczogd2hlcmUgYXJlIGFsbCBvdGhlciBmaWVsZHMgYW5kIHJlc291cmNlcz8KPiAKCkxE
TyByZWd1bGF0b3JzIGFyZSBhbHdheXMgb24uICBVU0IgZG9u4oCZdCBjb250cm9sIHRoZW0gZm9y
IEV4eW5vc0F1dG92OTIwLg0KUGh5IGlzb2wgaXMgc2hhcmVkIGFjcm9zcyB0aGUgVVNCcy4gQW5k
IGl0IGlzIGhhbmRsZWQgaW4gYm9vdGxvYWRlciAoaWYgb25lIGNhdXNlcyBwaHkgZXhpdCwgaXQg
aXNvbGF0ZXMgYWxsIHRoZSBwaHlzKS4gDQoNCkhlbmNlLCBzdXBwbGllcyBhbmQgcG93ZXIgb24v
b2ZmIGFyZSByZW1vdmVkIGZyb20gcGh5IG9wcy4NCg0KV2lsbCB1cGRhdGUgdGhlIHNhbWUgd2l0
aCBjb21taXQgbWVzc2FnZSBpbiBuZXh0IHZlcnNpb24gb2YgdGhlIHBhdGNoLXNldCAodjQpLg0K
DQo+IEJlc3QgcmVnYXJkcywNCj4gS3J6eXN6dG9mDQoNCg0KCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
