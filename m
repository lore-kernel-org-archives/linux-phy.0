Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC6B3C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 21 Apr 2022 23:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:CC:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KE8rSCsTxngYi9He74C4r709XPQPwGvIF5t66qQdruQ=; b=pZcy/J2lGpxfEf
	VkR8foww8mAbLPxNpJDDp4lfjyf/cpJqh1QztAIv/2AAdB0R0sshskHqqLxU3iCxz0xYETCWK0oCT
	rMeXafXYlGyG9nFQPzJRNxVmFVwgM1uwGk3cws+kCg1Acv1WqHQWKfFzAEPKVMuWtaYiAxvxqzkiD
	+hF1k5tpfPnmJq/WDVehQpGXiCIIJLFzRyVecmcMLhZjaIPEyYxchnMst5V23Iccv92lEALt8Xqx0
	e1NkQXdFqc+QDEaJFBjpqDyYkWk6L29dP7SEaxtw9Nse6I9uIHAJcFH96do3po0OYzrAkXaU9SuWw
	S/7fGfB0dpKXq13YOHFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhggD-00FQwL-BO; Thu, 21 Apr 2022 23:57:45 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhgg8-00FQsd-PO
 for linux-phy@lists.infradead.org; Thu, 21 Apr 2022 23:57:43 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20220421235730epoutp040a146bca516b007361c474d1325a765e~oDrjjPtPU3224432244epoutp04F
 for <linux-phy@lists.infradead.org>; Thu, 21 Apr 2022 23:57:30 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20220421235730epoutp040a146bca516b007361c474d1325a765e~oDrjjPtPU3224432244epoutp04F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1650585450;
 bh=5Sox+YNGgjYTvkyhHby50JbmhNPXeBUzzR3HBxzMBOw=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=iWgJbsIhgvyrCuuSbT+2KHBNB8kv8H74m+4uAhIWLXbXBciYuljuRRMadjHfDRDX3
 hdw20u4+93O+yKEXT1bGvb/r7xDSa3tnpokyeW3nwZSE+ecVujHxIdCXnQD/VeCpv0
 8HYrMyPkHBNHJOMcUVEQ0SSzQ+oVMw8WSHeiq1Lw=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTP id
 20220421235730epcas2p3a16df8e04b9876100c89c52b5ad34fa9~oDri7NNye1370513705epcas2p3Q;
 Thu, 21 Apr 2022 23:57:30 +0000 (GMT)
Received: from epsmges2p1.samsung.com (unknown [182.195.36.69]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 4Kkvbp73HNz4x9Pr; Thu, 21 Apr
 2022 23:57:26 +0000 (GMT)
X-AuditID: b6c32a45-4fdff700000228cc-c8-6261ef66dd84
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 5E.23.10444.66FE1626; Fri, 22 Apr 2022 08:57:26 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH 0/5] Add support for Axis, ARTPEC-8 PCIe driver
From: Wangseok Lee <wangseok.lee@samsung.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, robh+dt <robh+dt@kernel.org>,
 krzk+dt <krzk+dt@kernel.org>, kishon <kishon@ti.com>, vkoul
 <vkoul@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 "jesper.nilsson" <jesper.nilsson@axis.com>, "lars.persson"
 <lars.persson@axis.com>
CC: bhelgaas <bhelgaas@google.com>, linux-phy
 <linux-phy@lists.infradead.org>, linux-pci <linux-pci@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>, "lorenzo.pieralisi"
 <lorenzo.pieralisi@arm.com>, kw <kw@linux.com>, linux-arm-kernel
 <linux-arm-kernel@axis.com>, kernel <kernel@axis.com>, Moon-Ki Jun
 <moonki.jun@samsung.com>, Dongjin Yang <dj76.yang@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <4a6dd90c-3f8e-ad18-0136-88b75f4d9cf9@kernel.org>
X-CPGS-Detection: blocking_info_exchange
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20220421235725epcms2p1fc34c904f960cba958fa692c6d5dad9c@epcms2p1>
Date: Fri, 22 Apr 2022 08:57:25 +0900
X-CMS-MailID: 20220421235725epcms2p1fc34c904f960cba958fa692c6d5dad9c
X-Sendblock-Type: AUTO_CONFIDENTIAL
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrHJsWRmVeSWpSXmKPExsWy7bCmmW7a+8Qkg0MLJCyWNGVYvDykaTH/
 yDlWi90zljNZPD80i9niU4uqxYWnPWwWL2fdY7M4f34Du0VDz29WiyNvPjJb7D++ksni8q45
 bBZn5x1ns5iw6huLxZvfL9gtzi3OtGjde4TdYuedE8wOwh5r5q1h9Li+LsBjwaZSj02rOtk8
 nlyZzuSxeUm9R9+WVYwex29sZ/L4vEkugDMq2yYjNTEltUghNS85PyUzL91WyTs43jne1MzA
 UNfQ0sJcSSEvMTfVVsnFJ0DXLTMH6B8lhbLEnFKgUEBicbGSvp1NUX5pSapCRn5xia1SakFK
 ToF5gV5xYm5xaV66Xl5qiZWhgYGRKVBhQnbGqnMr2QpWWlasOlTcwPjKvIuRk0NCwETi9Yvr
 zF2MXBxCAjsYJVY2HmDtYuTg4BUQlPi7QxikRljAWeLf7VZmEFtIQElix5p5zBBxfYnrK7pZ
 QWw2AV2Jf4tfsoHMERFYwCRxf+4MJhCHWeA/k8SrxmNsENt4JWa0P2WBsKUlti/fyghicwrY
 SWz81AJVoyHxY1kvM4QtKnFz9Vt2GPv9sfmMELaIROu9s1A1ghIPfu6GiktJLHhyiBXCrpbY
 //c3E4TdwCjRfz8V5DEJoKt3XDcGCfMK+ErM690FNp5FQFWi/9osqDEuEvu/ngQbzyygLbFs
 4WtmkFZmAU2J9bv0IaYoSxy5xQLzVMPG3+zobGYBPomOw3/h4jvmPYE6Rk1i3sqdzBMYlWch
 AnoWkl2zEHYtYGRexSiWWlCcm55abFRgCI/a5PzcTYzghK3luoNx8tsPeocYmTgYDzFKcDAr
 ifCGzoxPEuJNSaysSi3Kjy8qzUktPsRoCvTlRGYp0eR8YM7IK4k3NLE0MDEzMzQ3MjUwVxLn
 9UrZkCgkkJ5YkpqdmlqQWgTTx8TBKdXAVB8r1n77cOQRy1leVXOzF8x9nPV0ViDXv0fPRGOt
 GrxyLHeymGXrKl7RNletcs1Yx/j87FonOZd/9r0ZSzc0Pexg13/1y0vK9tuM19L+n12dTohb
 LWD9WSrjoPUtzvkts/C11B0Ry7+9br1QupxJd2WCyIMzvj9OFCu2v9+95+m9OXZlxbfYlkZU
 b74+KUOhb3rN7eqaaX23pJz/Mq09erFq2/ycl25fG0NXm7yYOWWij8Nh/5zmsyqfC369Dyt+
 eV5Qu3j6kqcd7Xa5YXzrLir8LDHmWc91V21n+4yjH1r73qvaH0o6dirrdonWtao866ia258l
 M18VZRbNynsT/f+Bs7z1A96S9UeC/6ZOU2Ipzkg01GIuKk4EAPbGHa9hBAAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220418072049epcms2p463a9f01d8ae3e29f75b746a0dce934f1
References: <4a6dd90c-3f8e-ad18-0136-88b75f4d9cf9@kernel.org>
 <20220418072049epcms2p463a9f01d8ae3e29f75b746a0dce934f1@epcms2p4>
 <CGME20220418072049epcms2p463a9f01d8ae3e29f75b746a0dce934f1@epcms2p1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_165741_219585_04C96263 
X-CRM114-Status: GOOD (  11.99  )
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

PiBPbsKgMTgvMDQvMjAyMsKgMDk6MjAswqBXYW5nc2Vva8KgTGVlwqB3cm90ZToNCj4+Pj7CoEFs
c28swqBhc8KgeW91wqBrbm93LA0KPj4+PsKgZXh5bm9zwqBkcml2ZXLCoGlzwqBkZXNpZ25lZMKg
YWNjb3JkaW5nwqB0b8KgZXh5bm9zwqBTb0PCoHBsYXRmb3JtLA0KPj4+PsKgc2/CoGJvdGjCoGZ1
bmN0aW9uwqBhbmTCoHZhcmlhYmxlwqBuYW1lc8Kgc3RhcnTCoHdpdGjCoGV4eW5vcy4NCj4+Pg0K
Pj4+wqBUaGF0J3PCoGhhcmRsecKgYcKgcHJvYmxlbS4uLg0KPj4+DQo+Pj4+wqBDb21wYXJlZMKg
dG/CoHRoZcKgZXhpc3RpbmfCoGV4eW5vc8KgZHJpdmVyLMKgDQo+Pj4+wqB5b3XCoGNhbsKgc2Vl
wqB0aGF0wqB0aGXCoHN0cnVjdHVyZcKgYW5kwqB0eXBlwqBvZsKgZnVuY3Rpb27CoGFyZcKgZGlm
ZmVyZW50Lg0KPj4+DQo+Pj7CoE5vLMKgScKgY2Fubm90wqBzZWXCoGl0LsKgWW91wqBjb2RlZMKg
dGhlwqBkcml2ZXLCoHRoYXTCoHdheSzCoHlvdcKgY2FuwqBjb2RlwqBpdMKgaW4NCj4+PsKgb3Ro
ZXLCoHdheS4NCj4+Pg0KPj4+PsKgRm9ywqB0aGlzwqByZWFzb24swqBpdMKgaXPCoGRpZmZpY3Vs
dMKgdG/CoHVzZcKgdGhlwqBleGlzdGluZ8KgZXh5bm9zwqBkcml2ZXLCoA0KPj4+PsKgZm9ywqBh
cnRwZWMuDQo+Pj4NCj4+PsKgTmFtaW5nwqBvZsKgZnVuY3Rpb25zwqBhbmTCoHN0cnVjdHVyZXPC
oGlzwqBub3TCoG1ha2luZ8KgaXTCoGRpZmZpY3VsdC7CoFRoYXQncw0KPj4+wqBub3TCoHRoZcKg
cmVhc29uLg0KPj4+DQo+Pj4+wqBPdXLCoGlkZWHCoGlzwqB0b8KgcmVnaXN0ZXLCoGHCoG5ld8Kg
UENJZcKgZHJpdmVywqBmb3LCoGFydHBlYy04wqBTb0PCoHBsYXRmb3JtwqANCj4+Pj7CoGFuZMKg
bWFpbnRhaW7CoGl0wqBpbsKgdGhlwqBmdXR1cmUuDQo+Pj4NCj4+PsKgV2XCoGFsc2/CoHdhbnTC
oHRvwqBtYWludGFpbsKgRXh5bm9zwqBQQ0llwqBkcml2ZXLCoGluwqB0aGXCoGZ1dHVyZS4NCj4+
Pg0KPj4+wqBCZXN0wqByZWdhcmRzLA0KPj4+wqBLcnp5c3p0b2YNCj4+wqANCj4+wqBIaSzCoA0K
Pj7CoFNvcnJ5wqBmb3LCoGRlbGF5wqByZXNwb25zZS4NCj4gDQo+IFN1cmUswqBoYXBwZW5zLMKg
YnV0wqBJwqBkb24ndMKgcmVtZW1iZXLCoHRoZcKgZGlzY3Vzc2lvbizCoHNvwqByZXBseWluZ8Kg
dGhhdA0KPiBsYXRlwqB3aWxswqBub3TCoGhlbHDCoHlvdXLCoGNhdXNlLg0KPiANCj4gWW91wqBr
bm93wqB0aGF0wqBpZsKgeW91wqAoeW91wqBhc8KgU2Ftc3VuZynCoHdvcmtlZMKgd2l0aMKgdXBz
dHJlYW0swqBlLmcuwqBieQ0KPiBleHRlbmRpbmfCoHRoZcKgZHJpdmVyc8KgYW5kwqBrZWVwaW5n
wqB0aGVtwqBpbsKgc2hhcGUswqBpdMKgd291bGTCoGJlwqBtdWNowqBlYXNpZXINCj4gZm9ywqB5
b3XCoChhZ2FpbsKgeW91wqBhc8KgU2Ftc3VuZynCoHRvwqBhY3R1YWxsecKgYWRkwqBuZXfCoGZl
YXR1cmVzP8KgSXQnc8KgbXVjaA0KPiBiZXR0ZXIvZWZmZWN0aXZlwqBhcHByb2FjaMKgdGhhbsKg
dGhlwqBwYXRowqBvZsKgcHVzaGluZ8KgZXZlcnnCoHRpbWXCoG5ld8KgZHJpdmVyDQo+IHdpdGjC
oGV4cGxhbmF0aW9uwqBsaWtlwqAid2XCoGRvwqBub3TCoHdhbnTCoHRvwqBtYWludGFpbsKgb2xk
ZXLCoGRyaXZlcizCoHNvwqB3ZQ0KPiB3YW50wqBhwqBuZXfCoG9uZSIuLi4NCj4gDQo+PsKgScKg
aGF2ZcKgbGlzdGVkwqBzb21lwqBwYXJ0c8KgdGhhdMKgYXJlwqBkaWZmZXJlbnTCoGZyb23CoGV4
eW5vc8KgcGNpZcKgZHJpdmVyLg0KPj7CoA0KPj7CoFBIWcKgZHJpdmVyDQo+PsKgUEhZwqBpc8Kg
ZGlmZmVyZW50LMKgc2/CoHJlZ2lzdGVywqBtYXDCoGlzwqBhbHNvwqBkaWZmZXJlbnQuDQo+PsKg
VGhyZWXCoHJlZmVyZW5jZcKgY2xvY2vCoG9wdGlvbnPCoGFyZcKgYXZhaWxhYmxlwqBpbsKgQVJU
UEVDLTguDQo+PsKgwqDCoEl0wqBvcGVyYXRlc8KgYnnCoHNlbGVjdGluZ8Kgb25lwqBjbG9ja8Kg
YW1vbmfCoFhPLMKgSU8swqBhbmTCoFNPQ8KgUExMLg0KPj7CoMKgwqBIb3dldmVyLMKgdGhlwqBl
eHlub3PCoHBoecKgZHJpdmVywqBzZXRzwqBvbmXCoHJlZsKgY2xrwqB0aG91Z2jCoHN5c3JlZy4N
Cj4gDQo+IEl0wqB1c3VhbGx5wqB0cml2aWFswqB0b8KgY29kZcKgc3VjaMKgZGlmZmVyZW5jZcKg
aW7CoHRoZcKgZHJpdmVyLg0KPiANCj4+wqBUaGXCoHJlc2V0wqBtZXRob2TCoGFuZMKgdHlwZcKg
b2bCoFBIWcKgZm9ywqBpbml0aWFsaXphdGlvbsKgYXJlwqBkaWZmZXJlbnQuDQo+PsKgVGhlwqBv
dmVyYWxswqBzeXNyZWfCoGNvbmZpZ3VyYXRpb27CoGlzwqBkaWZmZXJlbnQNCj4gDQo+IEluZGVl
ZC4NCj4gDQo+PsKgQXJ0cGVjLTjCoHJlcXVpcmVzwqBhwqBzZXBhcmF0ZcKgc2VxdWVuY2XCoGZv
csKgcGh5wqB0dW5pbmcsDQo+PsKgYnV0wqBpdMKgZG9lc8Kgbm90wqBleGlzdMKgaW7CoGV4eW5v
c8KgcGh5wqBkcml2ZXIuDQo+PsKgQXJ0cGVjLTjCoHJlcXVpcmVzwqBwY3PCoHJlc291cmNlcyzC
oGJ1dMKgZXh5bm9zwqBwaHnCoGRyaXZlcsKgZG9lc8Kgbm90wqBleGlzdC4NCj4+wqANCj4gDQo+
IEZvcsKgdGhlwqBwaHnCoGRyaXZlcsKgaW5kZWVkwqBpdMKgbWlnaHTCoHJlcXVpcmXCoG11Y2jC
oGVmZm9ydMKgdG/CoGNyZWF0ZcKgb25lwqBkcml2ZXIuDQo+IA0KPj7CoENvbnRyb2xsZXLCoGRy
aXZlcg0KPj7CoFN1YsKgY29udHJvbGxlcsKgaXPCoGRpZmZlcmVudCzCoHNvwqByZWdpc3RlcsKg
bWFwwqBpc8KgYWxzb8KgZGlmZmVyZW50Lg0KPj7CoEFuZMKgaXTCoGlzwqBkaWZmZXJlbnTCoGhh
bmRsZXPCoGxhbmXCoGNvbnRyb2wswqBsaW5rwqBjb250cm9sLMKgUEhZwqBjbG9ja2luZywNCj4+
wqByZXNldCzCoGludGVycnVwdMKgY29udHJvbC7CoA0KPj7CoFRoZcKgbnVtYmVywqBhbmTCoHR5
cGXCoG9mwqBjbG9ja8KgcmVzb3VyY2VzwqB1c2VkwqBhcmXCoGRpZmZlcmVudC4NCj4+wqBUaGXC
oG92ZXJhbGzCoHN5c3JlZ8KgY29uZmlndXJhdGlvbsKgaXPCoGRpZmZlcmVudA0KPj7CoA0KPj7C
oEFsc2/CoGFydHBlYy04wqBpc8KgcGVyZm9ybWVkwqBpbsKgZHVhbMKgbW9kZcKgdGhhdMKgc3Vw
cG9ydHPCoGJvdGjCoFJDwqBhbmTCoEVQLg0KPj7CoEFzwqBkZXNjcmliZWTCoGFib3ZlLMKgdGhl
wqBQSFnCoGFuZMKgc3ViwqBvbnRyb2xsZXLCoGFyZcKgZGlmZmVyZW50DQo+PsKgYW5kwqB0aGXC
oHJlZ2lzZXLCoG1hcMKgaXPCoGRpZmZlcmVudC4NCj4+wqBzeXNyZWfCoGlzwqBhbHNvwqBkaWZm
ZXJlbnQuwqBBbmTCoHRoZXJlwqBhcmXCoGRpZmZlcmVuY2VzwqBzdWNowqBhc8KgcmVzZXQuDQo+
PsKgVGhlwqBkcml2ZXLCoHdpbGzCoGJlwqBtdWNowqBtb3JlwqBjb21wbGljYXRlZMKgaWbCoGJv
dGjCoGhhcmR3YXJlc8Kgc2hvdWxkwqBiZQ0KPj7CoHN1cHBvcnRlZMKgaW7CoHRoZcKgc2FtZcKg
ZHJpdmVyLg0KPiANCj4gTWF5YmUswqBxdWl0ZcKgcHJvYmFibHkuwqBUaGXCoHJlbHVjdGFuY2XC
oHRvwqBleHRlbmTCoGFuecKgZXhpc3RpbmfCoGNvZGXCoG1ha2VzDQo+IG1lwqBkb3VidGluZ8Kg
dGhpcyzCoGJ1dMKgScKgYWRtaXTCoHRoYXTCoHRoZXJlwqBhcmXCoG1hbnnCoGRpZmZlcmVuY2Vz
Lg0KPiANCj4+wqBGb3LCoHRoZXNlwqByZWFzb25zLMKgbXnCoG9waW5pb27CoGlzwqB0aGF0wqBi
ZXR0ZXLCoHRvwqBjcmVhdGUNCj4+wqBhwqBwaHkswqBjb250cm9sbGVywqBib3RowqBkcml2ZXLC
oHdpdGjCoGHCoG5ld8KgZmlsZS4NCj4+wqBQbGVhc2XCoGxldMKgbWXCoGtub3fCoHlvdXLCoG9w
aW5pb24uDQo+IA0KPiBBdMKgdGhlwqBlbmTCoGl0J3PCoG1vc3RsecKgdGhlwqBkZWNpc2lvbsKg
b2bCoFBDSWXCoGFuZMKgcGh5wqBzdWJzeXN0ZW0NCj4gbWFpbnRhaW5lcnPCoHdoZXRoZXLCoHRo
ZXnCoHdhbnTCoHRvwqBoYXZlwqBzZXBhcmF0ZcKgZHJpdmVyc8KgZm9ywqBEV0PCoFBDSWUNCj4g
YmxvY2tzwqBpbsKgQVJNdjjCoFNhbXN1bmfCoFNvQ3MuDQo+IA0KPiBJbsKgYW55wqBjYXNlLMKg
dGhlwqBkcml2ZXLCoGNvZGXCoGxvb2tzwqBsaWtlwqBjb3BpZWQtcGFzdGVkwqBmcm9twqBzb21l
wqB2ZW5kb3INCj4gc291cmNlcyzCoHNvwqB5b3XCoG5lZWTCoHRvwqBicmluZ8KgaXTCoHRvwqBz
aGFwZS4NCj4gDQo+IEJlc3TCoHJlZ2FyZHMsDQo+IEtyenlzenRvZg0KDQpIaSwNCg0KVGhhbmsg
eW91IGZvciB5b3VyIGtpbmRuZXNzIHJldmlldyBvdmVyIHNldmVyYWwgZS1tYWlscy4NCkkgd2ls
bCBpbXByb3ZlIG9uIFBBVENIIDEsMiwzLDQgYW5kIGkgd2lsbCByZXR1cm4gd2l0aCB2Mi4NCih5
YW1sIGFuZCBwaHksIGNvbnRyb2xsZXIgZHJpdmVyIGNvZGUgaW1wcm92ZW1lbnQpDQpBdCB0aGF0
IHRpbWUsIGkgd291bGQgbGlrZSBhc2sgdG8geW91IGFuZCBwaHksIGNvbnRyb2xsZXIgDQptYWlu
dGFpbmVyJ3Mgb3BpbmlvbiBhZ2Fpbi4NCg0KVGhhbmsgeW91LgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
