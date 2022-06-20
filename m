Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83BE0C43334
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jun 2022 08:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:CC:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Whq6M0lxv3sX1u4pjevCke0NnouzhMVK4gz+7uNBIOg=; b=Kpjm6CDvKC69C1
	ndHgLjWGD4FphuiUbQTg2TSRFvEU9mKzCwZS++eMG5f5zr/SR7BI8ZrTj3mcRNl7NOahi8iXLVK25
	8f5c5qddv50r/MeRoWINvqEssblosHItVIeCQyG4GxUUZecppI0GYNlSt1UZTf4UHtps+W44I6gAz
	hNHta7N+h2phV7Yu+PCZnxbZHRYN4lbnreKs4/xboIxE/yhsks0+q7Wlxp9xnSeGEh+5X4ip+yBmD
	5R2YYG/y2kPMU/ojFCWE7uIo+piPwDeN/4KIdd1OfNd/CrVDqGyIYocPudgnhn6JEZ/CK1ue16t0j
	ENNwnsl5gb4KIl9KZa6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3Cva-00GvQ1-T4; Mon, 20 Jun 2022 08:38:34 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3CvX-00GvOb-BX
	for linux-phy@lists.infradead.org; Mon, 20 Jun 2022 08:38:33 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20220620083823epoutp010b7ae4c1f6917f547f8cdbb703a460c8~6R2L0-KJ70587005870epoutp01j
	for <linux-phy@lists.infradead.org>; Mon, 20 Jun 2022 08:38:23 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20220620083823epoutp010b7ae4c1f6917f547f8cdbb703a460c8~6R2L0-KJ70587005870epoutp01j
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1655714303;
	bh=7WqPjom66N299uGJGfpNf6CIRF8tcg1yUJvVRQPJqh8=;
	h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
	b=gyywQ6dvLw1SYD0FEcQsdgmyA/Y+SP+HFvT5d11ZvMH3zV8vROv+C6n1Hcodt0FTo
	 qw63PyGmY3BnYKKhSfv0ixIPII/COolntlbcPzZzvw3/7evr8PZ/u/BmVDApHKcNjN
	 SXh9wiNWAQO+mW7XaqdkeM1m3e9HSHlsI5j3VUhk=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTP id
	20220620083822epcas2p3683203bccd2dcdd78fb65793f6c3e980~6R2LAgSjp2039920399epcas2p3C;
	Mon, 20 Jun 2022 08:38:22 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.36.88]) by
	epsnrtp1.localdomain (Postfix) with ESMTP id 4LRNMd5p8gz4x9QG; Mon, 20 Jun
	2022 08:38:21 +0000 (GMT)
X-AuditID: b6c32a46-0b9ff700000025b2-77-62b031fd25f0
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
	epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	81.07.09650.DF130B26; Mon, 20 Jun 2022 17:38:21 +0900 (KST)
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
In-Reply-To: <4b4b08af-887b-89e9-b4a5-93e7d8a03222@kernel.org>
X-CPGS-Detection: blocking_info_exchange
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20220620083821epcms2p57a65984523a0f2a3815e4873e8bfc6df@epcms2p5>
Date: Mon, 20 Jun 2022 17:38:21 +0900
X-CMS-MailID: 20220620083821epcms2p57a65984523a0f2a3815e4873e8bfc6df
X-Sendblock-Type: AUTO_CONFIDENTIAL
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrJJsWRmVeSWpSXmKPExsWy7bCmme5fww1JBo+e61gsacqweHlI02L+
	kXOsFrtnLGeymDn1DLPF80OzmC0+tahaXHjaw2bxctY9Novz5zewWzT0/Ga1OPLmI7PF/uMr
	mSwu75rDZnF23nE2iwmrvrFYvPn9gt3i3OJMi9a9R9gtdt45wWzxa+sfJgdRjzXz1jB6XF8X
	4LFgU6nHplWdbB5Prkxn8ti8pN6jb8sqRo/jN7YzeXzeJBfAGZVtk5GamJJapJCal5yfkpmX
	bqvkHRzvHG9qZmCoa2hpYa6kkJeYm2qr5OIToOuWmQP0mZJCWWJOKVAoILG4WEnfzqYov7Qk
	VSEjv7jEVim1ICWnwLxArzgxt7g0L10vL7XEytDAwMgUqDAhO+Pn9V9MBV2WFTc7N7I0MJ4x
	72Lk5JAQMJHYMncRYxcjF4eQwA5GiY27mtm7GDk4eAUEJf7uEAapERZwltj1fxMbiC0koCSx
	Y808Zoi4vsT1Fd2sIDabgK7Ev8Uv2UDmiAjMYpNY8nUpE4jDLLCAUWL/732MENt4JWa0P2WB
	sKUlti/fChbnFLCTuLHgDBtEXEPix7JeZghbVOLm6rfsMPb7Y/Oh5ohItN47C1UjKPHg526o
	uJTEgieHWCHsaon9f38zQdgNjBL991NBHpMAunrHdWOQMK+Ar8S8P9vBWlkEVCU2TbsAtcpF
	orHxHtgYZgFtiWULXzODtDILaEqs36UPMUVZ4sgtFpinGjb+ZkdnMwvwSXQc/gsX3zHvCdQx
	ahLzVu5knsCoPAsR0LOQ7JqFsGsBI/MqRrHUguLc9NRiowIjeNwm5+duYgSncS23HYxT3n7Q
	O8TIxMF4iFGCg1lJhNeGe0OSEG9KYmVValF+fFFpTmrxIUZToC8nMkuJJucDM0leSbyhiaWB
	iZmZobmRqYG5kjivV8qGRCGB9MSS1OzU1ILUIpg+Jg5OqQYmef6lwgtuN9i9l3Q3c5y6W/Dc
	sm1dmULmT1M27pOY2/B91+Pqjc75tzhbeTd/XPc8RvNWz+F92et6Z3aZlv95WBkuuGzjwryn
	z3NLhBhMNG1brUyCw/+80RZUDTjHeC3/Xc8yA94pNv9k4tN9/s9/+nw/U61hRfD2xlXlDydt
	fr97unjKbZ5gbmXJ+/afCl1nexv/fNW2Oert4+/muSq6v0KL1ly5PXXrnPtWDXNvsk436rsU
	+jNYMNYy7cNC2VKxbAunu+G7F+kaf07oPXvgBO/69cXs62Zeuav7se2ewctlp1rtHA+Hix/z
	0Bf+FdLAMLv09BWhuevFPzBddJr2c/NO73X88vFfd5/Y9IBVS4mlOCPRUIu5qDgRAA5JO4ds
	BAAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7
References: <4b4b08af-887b-89e9-b4a5-93e7d8a03222@kernel.org>
	<20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p7>
	<20220614012916epcms2p5cf8d55e7420dea10bb4a05d91aaf99dd@epcms2p5>
	<CGME20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p5>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_013831_906861_824091C2 
X-CRM114-Status: GOOD (  13.38  )
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

T27CoDE3LzA2LzIwMjLCoDA3OjU5LMKgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToNCj4gT27C
oDEzLzA2LzIwMjLCoDE4OjI5LMKgV2FuZ3Nlb2vCoExlZcKgd3JvdGU6DQo+PsKgQWRkwqBkZXNj
cmlwdGlvbsKgdG/CoHN1cHBvcnTCoEF4aXMswqBBUlRQRUMtOMKgU29DLg0KPj7CoEFSVFBFQy04
wqBpc8KgdGhlwqBTb0PCoHBsYXRmb3JtwqBvZsKgQXhpc8KgQ29tbXVuaWNhdGlvbnMNCj4+wqBh
bmTCoFBDSWXCoHBoecKgaXPCoGRlc2lnbmVkwqBiYXNlZMKgb27CoFNBTVNVTkfCoFBIWS4NCj4g
DQo+IE5vwqBpbXByb3ZlbWVudHPCoGhlcmUuwqBPbsKgdjLCoEnCoGdhdmXCoHlvdcKgbGlua8Kg
cG9pbnRpbmfCoHRvwqBzcGVjaWZpYw0KPiBwYXJhZ3JhcGjCoG9mwqBvdXLCoGRvY3VtZW50YXRp
b27CoHdoaWNowqB5b3XCoG5lZWTCoHRvwqBhcHBsecKgLcKgd3JvbmfCoHdyYXBwaW5nLg0KPiBJ
c8KgdGhlcmXCoHNvbWV0aGluZ8KgdW5jbGVhcsKgaGVyZT8NCj4gDQo+IFBsZWFzZQ0KPiBkbw0K
PiBub3QNCj4gd3JhcA0KPiBpbg0KPiBkaWZmZXJlbnQNCj4gc3R5bGUuDQo+IA0KPiANCg0KSSB0
aGluayBpIG1pc3VuZGVyc3Rvb2QgeW91ciByZXZpZXcgY29tbWVudC4NCkkgd2lsbCBtb2RpZnkg
aXQgYXMgYmVsb3cuDQpzL1NBTVNVTkfCoFBIWS9TYW1zdW5nIHBoeQ0KUGxlYXNlIGxldCBtZSBr
bm93IGlmIHRoZXJlIGlzIGFueXRoaW5nIEkgbWlzc2VkLg0KDQo+PsKgDQo+PsKgU2lnbmVkLW9m
Zi1ieTrCoFdhbmdzZW9rwqBMZWXCoDx3YW5nc2Vvay5sZWVAc2Ftc3VuZy5jb20+DQo+PsKgLS0t
DQo+PsKgdjItPnYzwqA6DQo+PsKgLW1vZGlmecKgdmVyc2lvbsKgaGlzdG9yecKgdG/CoGZpdMKg
dGhlwqBsaW51eMKgY29tbWl0wqBydWxlDQo+PsKgLXJlbW92ZcKgJ0RldmljZcKgVHJlZcKgQmlu
ZGluZ3MnwqBvbsKgdGl0bGUNCj4+wqAtcmVtb3ZlwqBjbG9jay1uYW1lc8KgZW50cmllcw0KPj7C
oC1jaGFuZ2XCoG5vZGXCoG5hbWXCoHRvwqBzb2PCoGZyb23CoGFydHBlYzjCoG9uwqBleGNhbXBs
ZXMNCj4+wqANCj4+wqB2MS0+djLCoDoNCj4+wqAtJ21ha2XCoGR0X2JpbmRpbmdfY2hlY2snwqBy
ZXN1bHTCoGltcHJvdmVtZW50DQo+PsKgLUFkZMKgdGhlwqBtaXNzaW5nwqBwcm9wZXJ0ecKgbGlz
dA0KPj7CoC1BbGlnbsKgdGhlwqBpbmRlbnRhdGlvbsKgb2bCoGNvbnRpbnVlZMKgbGluZXMvZW50
cmllcw0KPj7CoC0tLQ0KPj7CoMKgLi4uL2JpbmRpbmdzL3BoeS9heGlzLGFydHBlYzgtcGNpZS1w
aHkueWFtbMKgwqDCoMKgwqDCoMKgwqB8wqA3M8KgKysrKysrKysrKysrKysrKysrKysrKw0KPj7C
oMKgMcKgZmlsZcKgY2hhbmdlZCzCoDczwqBpbnNlcnRpb25zKCspDQo+PsKgwqBjcmVhdGXCoG1v
ZGXCoDEwMDY0NMKgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9heGlzLGFy
dHBlYzgtcGNpZS1waHkueWFtbA0KPj7CoA0KPj7CoGRpZmbCoC0tZ2l0wqBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYXhpcyxhcnRwZWM4LXBjaWUtcGh5LnlhbWzCoGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9heGlzLGFydHBlYzgtcGNpZS1w
aHkueWFtbA0KPj7CoG5ld8KgZmlsZcKgbW9kZcKgMTAwNjQ0DQo+PsKgaW5kZXjCoDAwMDAwMDAu
LjMxNmI3NzQNCj4+wqAtLS3CoC9kZXYvbnVsbA0KPj7CoCsrK8KgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L2F4aXMsYXJ0cGVjOC1wY2llLXBoeS55YW1sDQo+PsKgQEDC
oC0wLDDCoCsxLDczwqBAQA0KPj7CoCsjwqBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjrCoEdQTC0y
LjAtb25secKgT1LCoEJTRC0yLUNsYXVzZQ0KPj7CoCslWUFNTMKgMS4yDQo+PsKgKy0tLQ0KPj7C
oCskaWQ6wqBodHRwczovL3Byb3RlY3QyLmZpcmVleWUuY29tL3YxL3VybD9rPTg0ZjZhOGMwLWU1
N2RiZGQ5LTg0ZjcyMzhmLTc0ZmU0ODVjYmZlYy1lODFiZDc5YmZkMWZmNDQyJnE9MSZlPTY3Mzlh
ZjA2LTczMGMtNDhkYi1hZWY4LTAyNmE5YWFlZTFiNCZ1PWh0dHAlM0ElMkYlMkZkZXZpY2V0cmVl
Lm9yZyUyRnNjaGVtYXMlMkZwaHklMkZheGlzJTJDYXJ0cGVjOC1wY2llLXBoeS55YW1sJTIzDQo+
PsKgKyRzY2hlbWE6wqBodHRwczovL3Byb3RlY3QyLmZpcmVleWUuY29tL3YxL3VybD9rPWI0ZjFh
NGJhLWQ1N2FiMWEzLWI0ZjAyZmY1LTc0ZmU0ODVjYmZlYy03Zjg4NWNiZTgyZGM3ODYwJnE9MSZl
PTY3MzlhZjA2LTczMGMtNDhkYi1hZWY4LTAyNmE5YWFlZTFiNCZ1PWh0dHAlM0ElMkYlMkZkZXZp
Y2V0cmVlLm9yZyUyRm1ldGEtc2NoZW1hcyUyRmNvcmUueWFtbCUyMw0KPj7CoCsNCj4+wqArdGl0
bGU6wqBBUlRQRUMtOMKgU29DwqBQQ0llwqBQSFkNCj4+wqArDQo+PsKgK21haW50YWluZXJzOg0K
Pj7CoCvCoMKgLcKgSmVzcGVywqBOaWxzc29uwqA8amVzcGVyLm5pbHNzb25AYXhpcy5jb20+DQo+
PsKgKw0KPj7CoCtwcm9wZXJ0aWVzOg0KPj7CoCvCoMKgY29tcGF0aWJsZToNCj4+wqArwqDCoMKg
wqBjb25zdDrCoGF4aXMsYXJ0cGVjOC1wY2llLXBoeQ0KPj7CoCsNCj4+wqArwqDCoHJlZzoNCj4+
wqArwqDCoMKgwqBpdGVtczoNCj4+wqArwqDCoMKgwqDCoMKgLcKgZGVzY3JpcHRpb246wqBQSFnC
oHJlZ2lzdGVycy4NCj4+wqArwqDCoMKgwqDCoMKgLcKgZGVzY3JpcHRpb246wqBQSFnCoGNvZGlu
Z8Kgc3VibGF5ZXLCoHJlZ2lzdGVycy4NCj4+wqArDQo+PsKgK8KgwqByZWctbmFtZXM6DQo+PsKg
K8KgwqDCoMKgaXRlbXM6DQo+PsKgK8KgwqDCoMKgwqDCoC3CoGNvbnN0OsKgcGh5DQo+PsKgK8Kg
wqDCoMKgwqDCoC3CoGNvbnN0OsKgcGNzDQo+PsKgKw0KPj7CoCvCoMKgIiNwaHktY2VsbHMiOg0K
Pj7CoCvCoMKgwqDCoGNvbnN0OsKgMA0KPj7CoCsNCj4+wqArwqDCoGNsb2NrczoNCj4+wqArwqDC
oMKgwqBpdGVtczoNCj4+wqArwqDCoMKgwqDCoMKgLcKgZGVzY3JpcHRpb246wqBQQ0llwqBQSFnC
oHJlZmVyZW5jZcKgY2xvY2sNCg0KcmVmZXIgdG8gc2FtcGxlLXNjaGVtYS55YW1sLCBldmVuIGlm
IHRoZSBjbG9jayBpdGVtIGlzIHNpbmdsZSwNCml0IHNlZW1zIHRvIGJlIHVzZWQgYXMgZm9sbG93
cy4NCg0KY2xvY2tzOg0KICBtYXhJdGVtczogMQ0KDQpjbG9jay1uYW1lczoNCiAgaXRlbXM6DQog
ICAgLSBjb25zdDogcmVmDQoNCklmIG9ubHkgImNsb2NrczoiIGFyZSBkZWZpbmUgYW5kIGNsb2Nr
LW5hbWVzIGFyZSBub3QgZGVmaW5lLA0KdGhlIGZvbGxvd2luZyB3YXJuaW5nIG9jY3Vycy4NCiIn
Y2xvY2stbmFtZXMnIGRvZXMgbm90IG1hdGNoIGFueSBvZiB0aGUgcmVnZXhlcyINCg0KPj7CoCsN
Cj4+wqArwqDCoG51bS1sYW5lczoNCj4+wqArwqDCoMKgwqBjb25zdDrCoDINCj4+wqArDQo+PsKg
K8KgwqBsY3BsbC1yZWYtY2xrOg0KPj7CoCvCoMKgwqDCoGNvbnN0OsKgMQ0KPiANCj4gVW5rbm93
bsKgZmllbGQuLi7CoGN1c3RvbcKgcHJvcGVydGllc8KgbmVlZMKgdmVuZG9ywqAoYXhpcywpLMKg
dHlwZcKgKGJvb2xlYW4pDQo+IGFuZMKgZGVzY3JpcHRpb24uDQo+IA0KDQoibGNwbC1yZWYtY2xr
IiBoYXMgYW4gZW51bSB0eXBlIHZhbHVlLCBzbyBpIHdpbGwgbW9kaWZ5IGl0IGFzIGJlbG93Lg0K
DQoNCmF4aXMsbGNwbGwtcmVmLWNsazoNCiAgZGVzY3JpcHRpb246DQogICAgc2VsZWN0IHRoZSBy
ZWZlcmVuY2UgY2xvY2sgb2YgcGh5IGFuZCBpbml0aWFsaXphdGlvbiBpcyBwZXJmb3JtZWQNCiAg
ICB3aXRoIHRoZSByZWZlcmVuY2UgY2xvY2sgYWNjb3JkaW5nIHRvIHRoZSBzZWxlY3RlZCB2YWx1
ZS4NCiAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvdWludDMyDQogIGVu
dW06IFsgMCwgMSwgMiwgMywgNCBdDQoNCj4+wqArDQo+PsKgK3JlcXVpcmVkOg0KPj7CoCvCoMKg
LcKgY29tcGF0aWJsZQ0KPj7CoCvCoMKgLcKgcmVnDQo+PsKgK8KgwqAtwqByZWctbmFtZXMNCj4+
wqArwqDCoC3CoCIjcGh5LWNlbGxzIg0KPj7CoCvCoMKgLcKgY2xvY2tzDQo+PsKgK8KgwqAtwqBj
bG9jay1uYW1lcw0KPj7CoCvCoMKgLcKgc2Ftc3VuZyxmc3lzLXN5c3JlZw0KPiANCj4gU2FtZcKg
cHJvYmxlbcKgYXPCoGluwqBwYXRjaMKgIzEuDQo+IA0KDQpJIHdpbGwgYWRkIHRoZSBmb2xsb3dp
bmcgaXRlbXMgdG8gdGhlIHByb3BlcnR5Lg0KDQpzYW1zdW5nLGZzeXMtc3lzcmVnOg0KICBkZXNj
cmlwdGlvbjoNCiAgICBQaGFuZGxlIHRvIHN5c3RlbSByZWdpc3RlciBvZiBmc3lzIGJsb2NrLg0K
ICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlDQoNCj4+wqAr
wqDCoC3CoG51bS1sYW5lcw0KPj7CoCvCoMKgLcKgbGNwbGwtcmVmLWNsaw0KPj7CoCsNCj4+wqAr
YWRkaXRpb25hbFByb3BlcnRpZXM6wqB0cnVlDQo+IA0KPiBObyzCoHRoaXPCoG11c3TCoGJlwqBm
YWxzZS4NCj4gDQoNCnllcywgaSBtaXNzIGl0LiBJIHdpbGwgZml4IHRoaXMuDQoNCj4gQmVzdMKg
cmVnYXJkcywNCj4gS3J6eXN6dG9mDQoNClRoYW5rIHlvdSBmb3Iga2luZG5lc3MgcmVpdmV3Lg0K
DQpCZXN0IHJlZ2FyZHMsDQpXYW5nc2VvayBMZWUKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
