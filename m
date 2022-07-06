Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE63CC43334
	for <linux-phy@archiver.kernel.org>; Wed,  6 Jul 2022 05:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:CC:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=37vzFsEjIP+4uz47Mq5l6fBrBJ5ALfKKB9yPOmVgslM=; b=iMcZyAaH59Rp/y
	wOvxXl5T3viccmSFiEaJCAhbwkjgC0bj5b/JoCQKhs3UA88MyBEWfur5J2bjDbUYEdGOAdzFxXtQM
	t3R/NMi1uRyupG3Zzx0duobGr5P+FZ5XfKOjErOPbGbX5yZ+I+nrtH6ByjRXdwQlhv9dOI7dX2dYU
	mVYgpuZoPr+ijT12Px6cFQjJg2RaiZ8dJRrWbhqVurFJh+iavJ1O49lFKVeiEc4ROWnpf4X38RKrm
	RPEDPR3HVcUDc/kVMlbaLHQ3TWOK2FzzY4fCkDf36EoxfHVURAt91pb2Yosf5xwOc+RPMpJi+IQTK
	YmTftAW3LJNrrzvX5W5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8xSt-0066ZV-7M; Wed, 06 Jul 2022 05:20:43 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8xSp-0066VL-Ao
	for linux-phy@lists.infradead.org; Wed, 06 Jul 2022 05:20:42 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20220706052024epoutp032c72bab143d2e15afafadcd382160b20~-Jd4rkNK40421704217epoutp03F
	for <linux-phy@lists.infradead.org>; Wed,  6 Jul 2022 05:20:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20220706052024epoutp032c72bab143d2e15afafadcd382160b20~-Jd4rkNK40421704217epoutp03F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1657084824;
	bh=f+ua8THa6FizjnAsXlAoxZZd0pO8JVwXvlSUl0eu28s=;
	h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
	b=dE7VlihhkxqrhpMEpWxQ5DjU8wlwK57TYaIAeT9tYGYK1e8mNoPd58SeQpRqEU7Lr
	 lB84ovULeF9MZP0zf4jsZP1MVwYphriPh3mERbOXUnwqnj7DMcmfjvufvmVQ2XboZ2
	 MtZ3Jaw3IL8ZFq/atCWQrK4s0CB2TQJ2tLir7jgE=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
	epcas2p4.samsung.com (KnoxPortal) with ESMTP id
	20220706052023epcas2p42c3b36dc283a34e4155af641625a3b5d~-Jd3_gpvL1642816428epcas2p4h;
	Wed,  6 Jul 2022 05:20:23 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.36.69]) by
	epsnrtp3.localdomain (Postfix) with ESMTP id 4Ld7Cp5S6pz4x9Q2; Wed,  6 Jul
	2022 05:20:22 +0000 (GMT)
X-AuditID: b6c32a47-5e1ff700000025aa-9a-62c51b96a027
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
	epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
	1D.F3.09642.69B15C26; Wed,  6 Jul 2022 14:20:22 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH v3 2/5] dt-bindings: phy: Add ARTPEC-8 PCIe phy
From: Wangseok Lee <wangseok.lee@samsung.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"jesper.nilsson@axis.com" <jesper.nilsson@axis.com>, "lars.persson@axis.com"
	<lars.persson@axis.com>, "bhelgaas@google.com" <bhelgaas@google.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>, "kw@linux.com"
	<kw@linux.com>, "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
	"kernel@axis.com" <kernel@axis.com>
CC: Moon-Ki Jun <moonki.jun@samsung.com>, Sang Min Kim
	<hypmean.kim@samsung.com>, Dongjin Yang <dj76.yang@samsung.com>, Yeeun Kim
	<yeeun119.kim@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <43a075c6-ff48-acf2-0be7-634d292daf30@kernel.org>
X-CPGS-Detection: blocking_info_exchange
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20220706052021epcms2p700172d20dbc02303cf9c6f7e66cebfbd@epcms2p7>
Date: Wed, 06 Jul 2022 14:20:21 +0900
X-CMS-MailID: 20220706052021epcms2p700172d20dbc02303cf9c6f7e66cebfbd
X-Sendblock-Type: AUTO_CONFIDENTIAL
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrBJsWRmVeSWpSXmKPExsWy7bCmqe406aNJBs07tSyWNGVYvDykaTH/
	yDlWi90zljNZzJx6htni+aFZzBafWlQtLjztYbN4Oesem8X58xvYLRp6frNaHHnzkdli//GV
	TBaXd81hszg77zibxYRV31gs3vx+wW5xbnGmReveI+wWO++cYLb4tfUPk4Oox5p5axg9rq8L
	8FiwqdRj06pONo8nV6YzeWxeUu/Rt2UVo8fxG9uZPD5vkgvgjMq2yUhNTEktUkjNS85PycxL
	t1XyDo53jjc1MzDUNbS0MFdSyEvMTbVVcvEJ0HXLzAH6TEmhLDGnFCgUkFhcrKRvZ1OUX1qS
	qpCRX1xiq5RakJJTYF6gV5yYW1yal66Xl1piZWhgYGQKVJiQnbGj+RtjQbdIRfu28gbG48Jd
	jJwcEgImEpufdTJ3MXJxCAnsYJSYu+kpUxcjBwevgKDE3x1gNcICzhK7/m9iA7GFBJQkdqyZ
	xwwR15e4vqKbFcRmE9CV+Lf4JRvIHBGBWWwSS74uZQJxmAUWMErs/72PEWIbr8SM9qcsELa0
	xPblW8HinAJ2EnNPH2KGiGtI/FjWC2WLStxc/ZYdxn5/bD7UHBGJ1ntnoWoEJR783A0Vl5JY
	8OQQK4RdLbH/728mCLuBUaL/firIYxJAV++4bgwS5hXwlZh4CeIxFgFViea9fWwQ5S4S594/
	BFvLLKAtsWzha2aQVmYBTYn1u/QhpihLHLnFAvNUw8bf7OhsZgE+iY7Df+HiO+Y9gTpGTWLe
	yp3MExiVZyECehaSXbMQdi1gZF7FKJZaUJybnlpsVGAMj9rk/NxNjOAkruW+g3HG2w96hxiZ
	OBgPMUpwMCuJ8K6adDBJiDclsbIqtSg/vqg0J7X4EKMp0JcTmaVEk/OBeSSvJN7QxNLAxMzM
	0NzI1MBcSZzXK2VDopBAemJJanZqakFqEUwfEwenVAOTTUNRsWXQ/AkiEo2H3HJ1Jv+8cci5
	6PgRT+eeme1ctl6rntXcq7p76F+H0dkrRe+vmBcErI5TT278G/j5zJ8ri9z7HzzneSjEcbf8
	jGijdu/fX9P9DW+1KQk2L+ufvNcyRk5Swdyx0vd8pu4mlt0B/Knz/G9XJ/6Vv7SolP1VbFr1
	5knFLxr5O3n4Fv5V/7ic6/i5hG4pOU3fjn363BxmLs6ua0+eftHQaR1kd0Rausj4BZ+jn/n3
	zrZnlYv0bH9o76r41T/PREnr9m7Jrrefd4cV7rg3xevY+mvP9c6qvwx43+Z0JKfXsmhxiYbC
	7LqFBk9CZ0zi8uMPYAs4yXX40qGTy94E5jlJfeQ+81SJpTgj0VCLuag4EQCuPlWyawQAAA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7
References: <43a075c6-ff48-acf2-0be7-634d292daf30@kernel.org>
	<20220620083821epcms2p57a65984523a0f2a3815e4873e8bfc6df@epcms2p5>
	<4b4b08af-887b-89e9-b4a5-93e7d8a03222@kernel.org>
	<20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p7>
	<20220614012916epcms2p5cf8d55e7420dea10bb4a05d91aaf99dd@epcms2p5>
	<20220629071829epcms2p65eab75702495a939f3f6e4ea020181de@epcms2p6>
	<CGME20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_222039_753481_053D1C56 
X-CRM114-Status: GOOD (  11.37  )
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
Reply-To: wangseok.lee@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T27CoDA1LzA3LzIwMjLCoDE5OjU5LMKgS3J6eXN6dG9mIEtvemxvd3NracKgd3JvdGU6DQo+IE9u
wqAyOS8wNi8yMDIywqAwOToxOCzCoFdhbmdzZW9rwqBMZWXCoHdyb3RlOg0KPj7CoEp1c3TCoGHC
oGdlbnRsZcKgcGluZ8KgZm9ywqB0aGlzwqBwYXRjaCzCoGlmwqBhbnnCoGNvbmNlcm7CoG9uwqB0
aGlzwqBwYXRjaMKgcGxlYXNlwqBsZXTCoG1lwqBrbm93Lg0KPj7CoA0KPiANCj4gWW91wqByZWNl
aXZlZMKgY29tbWVudHPCoHRvwqBmaXjCoGluwqB0aGlzwqBwYXRjaC7CoEV4YWN0bHnCoGZvdXIu
wqBGb3VywqBpbXBvcnRhbnQNCj4gcG9pbnRzwqB0b8KgZml4LsKgVGhlcmVmb3JlwqB3aGF0wqBp
c8KgdGhpc8KgcGluZ8KgYWJvdXQ/DQo+IA0KPiBXaXRob3V0wqBmaXhpbmfCoHRoZXNlwqBpdGVt
cyzCoHlvdXLCoHBhdGNowqBjYW5ub3TCoGJlwqBhY2NlcHRlZC7CoFdoYXTCoGlzwqBtb3JlDQo+
IHRvwqBwaW5nwqBoZXJlPw0KPiANCj4gQmVzdMKgcmVnYXJkcywNCj4gS3J6eXN6dG9mDQoNCkkg
dHJpZWQgdG8gcmVjZWl2ZSB5b3VyIG9waW5pb24gYWJvdXQgdGhlIGZpeCBwb2ludCAuDQpJIHdp
bGwgcmVxdWVzdCBhIHJldmlldyBhZ2FpbiBhZnRlciBtb2RpZnlpbmcgaXQgaW4gdGhlIG5leHQg
cGF0Y2guDQoNClRoYW5rIHlvdS4NCg0KPj4+ICsNCj4+PiArICBjbG9ja3M6DQo+Pj4gKyAgICBp
dGVtczoNCj4+PiArICAgICAgLSBkZXNjcmlwdGlvbjogUENJZSBQSFkgcmVmZXJlbmNlIGNsb2Nr
DQo+IA0KPiByZWZlciB0byBzYW1wbGUtc2NoZW1hLnlhbWwsIGV2ZW4gaWYgdGhlIGNsb2NrIGl0
ZW0gaXMgc2luZ2xlLA0KPiBpdCBzZWVtcyB0byBiZSB1c2VkIGFzIGZvbGxvd3MuDQo+IA0KPiBj
bG9ja3M6DQo+ICAgbWF4SXRlbXM6IDENCj4gDQo+IGNsb2NrLW5hbWVzOg0KPiAgIGl0ZW1zOg0K
PiAgICAgLSBjb25zdDogcmVmDQo+IA0KPiBJZiBvbmx5ICJjbG9ja3M6IiBhcmUgZGVmaW5lIGFu
ZCBjbG9jay1uYW1lcyBhcmUgbm90IGRlZmluZSwNCj4gdGhlIGZvbGxvd2luZyB3YXJuaW5nIG9j
Y3Vycy4NCj4gIidjbG9jay1uYW1lcycgZG9lcyBub3QgbWF0Y2ggYW55IG9mIHRoZSByZWdleGVz
Ig0KPiANCj4+PiArDQo+Pj4gKyAgbGNwbGwtcmVmLWNsazoNCj4+PiArICAgIGNvbnN0OiAxDQo+
PiANCj4+IFVua25vd24gZmllbGQuLi4gY3VzdG9tIHByb3BlcnRpZXMgbmVlZCB2ZW5kb3IgKGF4
aXMsKSwgdHlwZSAoYm9vbGVhbikNCj4+IGFuZCBkZXNjcmlwdGlvbi4NCj4+IA0KPiANCj4gImxj
cGwtcmVmLWNsayIgaGFzIGFuIGVudW0gdHlwZSB2YWx1ZSwgc28gaSB3aWxsIG1vZGlmeSBpdCBh
cyBiZWxvdy4NCj4gDQo+IA0KPiBheGlzLGxjcGxsLXJlZi1jbGs6DQo+ICAgZGVzY3JpcHRpb246
DQo+ICAgICBzZWxlY3QgdGhlIHJlZmVyZW5jZSBjbG9jayBvZiBwaHkgYW5kIGluaXRpYWxpemF0
aW9uIGlzIHBlcmZvcm1lZA0KPiAgICAgd2l0aCB0aGUgcmVmZXJlbmNlIGNsb2NrIGFjY29yZGlu
ZyB0byB0aGUgc2VsZWN0ZWQgdmFsdWUuDQo+ICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMv
ZGVmaW5pdGlvbnMvdWludDMyDQo+ICAgZW51bTogWyAwLCAxLCAyLCAzLCA0IF0NCj4gCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
