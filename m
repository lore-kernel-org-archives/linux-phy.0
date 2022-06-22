Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B02F3C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jun 2022 07:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:CC:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gcK3WL0wj/9hCAom/EB4BxpGnwkCNeX5GX+RpTFgrYk=; b=Dx8k+FzyyQswTh
	TJxg073YfQSu6hazwxqVew0a6NGYKNxdfOMCT1lhq2loIXF40ncWnNcV/3BUhHwbOhfqZpjs3EUO7
	XcHKmFNqViY3XMt1P4WffGDGT9tyoBYp2XZ9GD48XNc4GDjgold2jFn4blP4T8KmClxZtayQGs7DJ
	9/RRLpA6UR+GoKpFOU9BbubgitDiWpB9yCLwQGbOZas8s9omiof1+J+VoaGDxcGg2c+hmpa+giuZm
	73iIQc4CEvt95C2c1J7RA09B/8nt0u3FTgdsJjSYNrTjp3vv9/j8rB9ya87qbQrnotD5B9ZPAwp9Y
	g/Bud8aMfmB5vIccNKXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3ufa-0092lb-42; Wed, 22 Jun 2022 07:20:58 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3ufV-0092jy-Ve
	for linux-phy@lists.infradead.org; Wed, 22 Jun 2022 07:20:56 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20220622072045epoutp018fda05653bd6cd33d461b5bcf111456f~64E_JvW-n3081030810epoutp01k
	for <linux-phy@lists.infradead.org>; Wed, 22 Jun 2022 07:20:45 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20220622072045epoutp018fda05653bd6cd33d461b5bcf111456f~64E_JvW-n3081030810epoutp01k
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1655882445;
	bh=RswvKDk4upxR0WC4q5EAwd93hnGQme9cTpzcHMcp0wo=;
	h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
	b=K4L9hOZ+5jx0kEw/Bl8O4pq+n+MHkc3X3cQHsKFSg5sfhg14U/A+UMXutwLPlPxKd
	 j8aGpHAf0Q4M45oe5DuDZFiHIh4b3ERn8Oi5dmzvoh4jtwtYN43IotpMgcDTukxEr7
	 ZueS49Anchgi3kAoZzph+16VjP7nalTBpLcm1D4s=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTP id
	20220622072044epcas2p28ab1ed3e98b70ecb1c92a3d7ec20c1cb~64E9IWtLd1904919049epcas2p2S;
	Wed, 22 Jun 2022 07:20:44 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.36.102]) by
	epsnrtp3.localdomain (Postfix) with ESMTP id 4LSZY7414Pz4x9QP; Wed, 22 Jun
	2022 07:20:43 +0000 (GMT)
X-AuditID: b6c32a47-5e1ff700000025aa-95-62b2c2cb39f9
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
	epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
	B3.32.09642.BC2C2B26; Wed, 22 Jun 2022 16:20:43 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH v3 1/5] dt-bindings: pci: Add ARTPEC-8 PCIe controller
From: Wangseok Lee <wangseok.lee@samsung.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org"
	<vkoul@kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "jesper.nilsson@axis.com"
	<jesper.nilsson@axis.com>, "lars.persson@axis.com" <lars.persson@axis.com>,
	"bhelgaas@google.com" <bhelgaas@google.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-pci@vger.kernel.org"
	<linux-pci@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "lorenzo.pieralisi@arm.com"
	<lorenzo.pieralisi@arm.com>, "kw@linux.com" <kw@linux.com>,
	"linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>, "kernel@axis.com"
	<kernel@axis.com>
CC: Moon-Ki Jun <moonki.jun@samsung.com>, Sang Min Kim
	<hypmean.kim@samsung.com>, Dongjin Yang <dj76.yang@samsung.com>, Yeeun Kim
	<yeeun119.kim@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <4a58c6c4-be0e-e56c-2498-a14ba46b508d@linaro.org>
X-CPGS-Detection: blocking_info_exchange
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20220622072042epcms2p478ff972391aa11a8827347b3469fd00c@epcms2p4>
Date: Wed, 22 Jun 2022 16:20:42 +0900
X-CMS-MailID: 20220622072042epcms2p478ff972391aa11a8827347b3469fd00c
X-Sendblock-Type: AUTO_CONFIDENTIAL
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrHJsWRmVeSWpSXmKPExsWy7bCmhe7pQ5uSDBb/lLZY0pRh8fKQpsX8
	I+dYLXbPWM5kMXPqGWaL54dmMVt8alG1uPC0h83i5ax7bBZ7X29lt2jo+c1qceTNR2aL/cdX
	Mllc3jWHzeLsvONsFhNWfWOxePP7BbvFucWZFq17j7Bb7Lxzgtni19Y/TA6iHmvmrWH0uL4u
	wGPBplKPTas62TzuXNvD5vHkynQmj81L6j36tqxi9Dh+YzuTx+dNcgFcUdk2GamJKalFCql5
	yfkpmXnptkrewfHO8aZmBoa6hpYW5koKeYm5qbZKLj4Bum6ZOUDvKSmUJeaUAoUCEouLlfTt
	bIryS0tSFTLyi0tslVILUnIKzAv0ihNzi0vz0vXyUkusDA0MjEyBChOyM9582cdUME+7Yu+8
	6cwNjH1aXYycHBICJhKXVp1k6WLk4hAS2MEo0dqxm7WLkYODV0BQ4u8OYZAaYQEvibXrXrGA
	2EICShI71sxjhojrS1xf0c0KYrMJ6Er8W/ySDWSOiMBqNolZO18wgTjMAgsYJfb/3scIsY1X
	Ykb7UxYIW1pi+/KtYHFOATuJxmePmCDiGhI/lvUyQ9iiEjdXv2WHsd8fmw81R0Si9d5ZqBpB
	iQc/d0PFpSQWPDnECmFXS+z/+xtqZgOjRP/9VJDHJICu3nHdGCTMK+Ar0bV8BhuIzSKgKvFx
	3l02iHIXidmXD4CNZBbQlli28DUzSCuzgKbE+l36EFOUJY7cYoF5qmHjb3Z0NrMAn0TH4b9w
	8R3znkAdoyYxb+VO5gmMyrMQAT0Lya5ZCLsWMDKvYhRLLSjOTU8tNiowhsdtcn7uJkZwQtdy
	38E44+0HvUOMTByMhxglOJiVRHhtuDckCfGmJFZWpRblxxeV5qQWH2I0BfpyIrOUaHI+MKfk
	lcQbmlgamJiZGZobmRqYK4nzeqVsSBQSSE8sSc1OTS1ILYLpY+LglGpg0r7SrmbmzizTIhPs
	/Wj2Gb/g+s8/xVSzdiQsS52or6ekmhjDWf9/dnpZzpbkgJ+z/N1PX1yed+lo95I8KZ5388XP
	rdFndWHjcVxmY6mtYMSannom5cmbU8y396ddkD6X9cPz+6UDV68b7Eow35XNxMi/Wf3QUh+z
	1efcn8dYTXtRL1peptxi92Kr482cX6a2LxI6rnoHXY7YeO7JsX2bc+VkNKapWbJum/8yZm+a
	3ruGrROaOjabxKz8v+hIevou7w7ZtgUMZQW7K7aWrXH+VTB948fkEovGzOcX3/TMfpEYEh0z
	sy2uQnbbO6XzL1XW5k1/t2pGY8WRawVHxVi49l7QvM1QMu29hfKvyow5SizFGYmGWsxFxYkA
	0Tq3QnEEAAA=
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7
References: <4a58c6c4-be0e-e56c-2498-a14ba46b508d@linaro.org>
	<f9a877ce-1e18-90f9-67e5-b6e67b3b4156@linaro.org>
	<8d806fc9-0067-2c8d-ec41-13787c7644a2@linaro.org>
	<20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p7>
	<20220614012713epcms2p810386a5137fbcf6aefc41fe086badc0b@epcms2p8>
	<20220620075548epcms2p61182d9d7f41fadb1eb139b349bf7486d@epcms2p6>
	<20220621074244epcms2p23cb631babfb87e5abb416467fb66e521@epcms2p2>
	<CGME20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p4>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220622_002054_382698_4350AE50 
X-CRM114-Status: GOOD (  13.44  )
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

T27CoDIxLzA2LzIwMjLCoDIxOjQ0LMKgS3J6eXN6dG9mIEtvemxvd3NracKgd3JvdGU6DQo+IE9u
wqAyMS8wNi8yMDIywqAwOTo0MizCoFdhbmdzZW9rwqBMZWXCoHdyb3RlOg0KPj4+PsKgwqANCj4+
Pj7CoMKgc2Ftc3VuZyxzeXNjb24tYnVzLXMtZnN5czoNCj4+Pj7CoMKgwqDCoGRlc2NyaXB0aW9u
Og0KPj4+PsKgwqDCoMKgwqDCoFBoYW5kbGXCoHRvwqBidXMtc8KgcGF0aMKgb2bCoGZzeXPCoGJs
b2NrLMKgdGhpc8KgcmVnaXN0ZXINCj4+Pj7CoMKgwqDCoMKgwqBhcmXCoHVzZWTCoGZvcsKgZW5h
YmxpbmfCoGJ1cy1zLg0KPj4+PsKgwqDCoMKgJHJlZjrCoC9zY2hlbWFzL3R5cGVzLnlhbWwjL2Rl
ZmluaXRpb25zL3BoYW5kbGUNCj4+Pj7CoMKgDQo+Pj4+wqDCoHNhbXN1bmcsc3lzY29uLWJ1cy1w
LWZzeXM6DQo+Pj4+wqDCoMKgwqBkZXNjcmlwdGlvbjoNCj4+Pj7CoMKgwqDCoMKgwqBQaGFuZGxl
wqB0b8KgYnVzLXDCoHBhdGjCoG9mwqBmc3lzwqBibG9jayzCoHRoaXPCoHJlZ2lzdGVyDQo+Pj4+
wqDCoMKgwqDCoMKgYXJlwqB1c2VkwqBmb3LCoGVuYWJsaW5nwqBidXMtcC4NCj4+Pj7CoMKgwqDC
oCRyZWY6wqAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlDQo+Pj4NCj4+
PsKgVGhpc8KgdHdvwqBsb29rwqB1bnNwZWNpZmljwqBhbmTCoGhhY2t5wqB3b3JrYXJvdW5kwqBm
b3LCoG1pc3NpbmfCoGRyaXZlcnMuwqBMb29rcw0KPj4+wqBsaWtlwqBpbnN0ZWFkwqBvZsKgaW1w
bGVtZW50aW5nwqBpbnRlcmNvbm5lY3TCoG9ywqBjbG9ja8KgZHJpdmVyLMKgeW91wqBkZWNpZGVk
DQo+Pj7CoHRvwqBwb2tlwqBzb21lwqBvdGhlcsKgcmVnaXN0ZXJzLsKgV2h5wqB0aGlzwqBjYW5u
b3TCoGJlwqBhbsKgaW50ZXJjb25uZWN0wqBkcml2ZXI/DQo+Pj4NCj4+Pg0KPj7CoA0KPj7CoGJ1
cy1zLMKgYnVzLXDCoGlzwqBhwqByZWdpc3RlcsKgdGhhdMKgZXhpc3RzwqBpbsKgdGhlwqBzeXNy
ZWfCoG9mwqB0aGXCoGZzeXPCoGJsb2NrLg0KPj7CoEl0wqBpc8KgdGhlwqBzYW1lwqBibG9ja8Kg
YXPCoCJmc3lzLXN5c3JlZyLCoGJ1dMKgaXPCoHNlcGFyYXRlZMKgc2VwYXJhdGVsecKgaW4NCj4+
wqBoYXJkd2FyZS4NCj4gDQo+IFR3b8KgcG9pbnRzwqBoZXJlOg0KPiAxLsKgSWbCoGl0wqBpc8Kg
aW7CoEZTWVMswqB3aHnCoGl0wqBjYW5ub3TCoGJlwqBhY2Nlc3NlZMKgd2l0aMKgc2Ftc3VuZyxm
c3lzLXN5c3JlZz8NCj4gMi7CoElmwqBpdMKgaXPCoG9ubHnCoHJlZ2lzdGVyLMKgc2h1bGTCoGJl
wqBkZXNjcmliZWTCoGxpa2XCoHRoaXMuwqBZb3XCoG11c3QNCj4gZGVzY3JpYmXCoGl0ZW06DQo+
IGh0dHBzOi8vcHJvdGVjdDIuZmlyZWV5ZS5jb20vdjEvdXJsP2s9MGY1MjlhNTctNTBjOWEzMzIt
MGY1MzExMTgtMDAwYmFiZmYzMmUzLTUwOTM4ZDgxOTgwNzdkNTkmcT0xJmU9MzIyODRlNjktYmJl
ZC00ZDA5LWI2ZDYtMGE0MzQyOGFlYmY1JnU9aHR0cHMlM0ElMkYlMkZlbGl4aXIuYm9vdGxpbi5j
b20lMkZsaW51eCUyRnY1LjE4LXJjMSUyRnNvdXJjZSUyRkRvY3VtZW50YXRpb24lMkZkZXZpY2V0
cmVlJTJGYmluZGluZ3MlMkZzb2MlMkZzYW1zdW5nJTJGZXh5bm9zLXVzaS55YW1sJTIzTDQyDQo+
IA0KDQpJdCB3b3VsZCBiZSBiZXR0ZXIgdG8gYWNjZXNzIHdpdGggZnN5cy1zeXNyZWcsIGJ1dCB0
aGVpciBoL3cgYWRkcmVzcyBhcmUNCmZhciBmcm9tIGVhY2ggb3RoZXIuIFRoZSBmc3lzIGJsb2Nr
IGNvbnNpc3RzIG9mIGEgc3lzdGVtIHJlZ2lzdGVyIGFuZCBhbg0KYWRkaXRpb25hbCBjb250cm9s
IHN5c3RlbSByZWdpc3Rlci4gImJ1cy1zLWZzeXMiIGFuZCAiYnVzLXAtZnN5cyIgYXJlDQphZGRp
dGlvbmFsIGNvbnRyb2wgc3lzdGVtIHJlZ2lzdGVyLiBzeXNyZWcgYW5kIGFkZGl0aW9uYWwgY29u
dHJvbCBzeXNyZWcNCmFkZHJlc3NlcyBhcmUgZmFyIGZyb20gZWFjaCBvdGhlciBhbmQgdGhlcmUg
YXJlIGgvdyByZWdpc3RlcnMgdGhhdCBwZXJmb3JtDQpkaWZmZXJlbnQgZnVuY3Rpb25zIGJldHdl
ZW4gdGhlbS4NCg0KPj7CoFNvLMKgZ2V0wqByZXNvdXJjZcKgaXPCoHBlcmZvcm1lZMKgc2VwYXJh
dGVsecKgZnJvbcKgImZzeXMtc3lzcmVnIi4NCj4+wqBUaGV5wqBzZXTCoHBjaWXCoHNsYXZlLMKg
ZGJpwqByZWxhdGVkwqBjb250cm9swqBzZXR0aW5ncywNCj4+wqBuYW1pbmfCoCJidXMteCLCoHNl
ZW1zwqB0b8KgYmXCoGludGVyY29ubmVjdC4NCj4+wqBJwqB3aWxswqBhZGTCoHRoaXPCoGRlc2Ny
aXB0aW9uwqB0b8KgcHJvcGVydHkuDQo+PsKgScKgZG9uJ3TCoHRoaW5rwqBpdMKgbmVlZMKgdG/C
oHVzZcKgdGhlwqBpbnRlcmNvbm5lY3TCoGRyaXZlciwNCj4+wqBzb8KgcGxlYXNlwqBsZXTCoG1l
wqBrbm93wqB5b3VywqBvcGluaW9uLg0KPiANCj4gUGxlYXNlwqBkb2N1bWVudMKgYm90aMKgaW7C
oHRoZcKgYmluZGluZ3PCoGFuZMKgaW7CoHRoZcKgZHJpdmVywqB1c2FnZcKgb2bCoHRoaXMNCj4g
cmVnaXN0ZXIuwqBXcml0aW5nwqB0aGVyZcKgIjAiwqBvcsKgIjEiwqBpc8Kgbm90wqBlbm91Z2gu
wqBJZsKgdGhlwqBkb2N1bWVudGF0aW9uDQo+IGlzwqBnb29kLMKgScKgYW3CoGZpbmXCoHdpdGjC
oGl0LsKgSWbCoHRoZcKgZXhwbGFuYXRpb27CoGlzwqBvYmZ1c2NhdGVkL25vdA0KPiBzdWZmaWNp
ZW50LMKgaXTCoHdpbGzCoGxvb2vCoGxpa2XCoGF2b2lkaW5nwqB0b8KgaW1wbGVtZW50wqBhwqBk
cml2ZXIswqB3aGljaMKgSQ0KPiBkb24ndMKgd2FudMKgdG/CoGFjY2VwdC4NCj4gDQoNCkkgdGhp
bmsgaSBzaG91bGQgYWRkIGVub3VnaCBkZXNjcmlwdGlvbi4gSXMgaXQgc3VmZmljaWVudCB0byBt
b2RpZnkNCnRoZSBuYW1lIGFuZCBkZXNjcmlwdGlvbiBvZiBwcm9wZXJ0eSBsaWtlIHRoaXM/DQoN
CnNhbXN1bmcsZnN5cy1idXMtczoNCsKgwqBkZXNjcmlwdGlvbjoNCsKgwqDCoMKgUGhhbmRsZcKg
dG/CoGJ1cy1zwqBvZsKgZnN5c8KgYmxvY2ssIHRoaXMgcmVnaXN0ZXINCiAgICBpcyBhZGRpdGlv
bmFsIGNvbnRyb2wgc3lzcmVnIGluIGZzeXMgYmxvY2sgYW5kDQogICAgdGhpcyBpc8KgdXNlZMKg
Zm9ywqBwY2llIHNsYXZlIGNvbnRyb2wgc2V0dGluZy4NCsKgwqAkcmVmOsKgL3NjaGVtYXMvdHlw
ZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhhbmRsZQ0KDQpzYW1zdW5nLGZzeXMtYnVzLXA6DQrCoMKg
ZGVzY3JpcHRpb246DQrCoMKgwqDCoFBoYW5kbGXCoHRvwqBidXMtcMKgb2bCoGZzeXPCoGJsb2Nr
LMKgdGhpc8KgcmVnaXN0ZXINCsKgwqDCoMKgaXMgYWRkaXRpb25hbCBjb250cm9sIHN5c3JlZyBp
biBmc3lzIGJsb2NrIGFuZA0KICAgIHRoaXMgaXPCoHVzZWTCoGZvcsKgcGNpZSBkYmkgY29udHJv
bCBzZXR0aW5nLg0KwqDCoCRyZWY6wqAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9w
aGFuZGxlDQoNCj4gQmVzdMKgcmVnYXJkcywNCj4gS3J6eXN6dG9mDQoNClRoYW5rIHlvdSBmb3Ig
a2luZG5lc3MgcmVpdmV3Lg0KDQpCZXN0IHJlZ2FyZHMsDQpXYW5nc2VvayBMZWUNCgoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
