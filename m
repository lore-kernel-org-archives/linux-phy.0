Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B3A8C43334
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jun 2022 03:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:CC:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=27cceaBjSfxz26AYxyM7o7Np0aMKm3tYnuTcWjfvCgM=; b=HNgosll0uBr4A3
	eip7or6yriXgRhn1P0H8C+uJ2oRnK2/EhgQFSRrB7w54rmfunbOMSclGA6A1RcrbmsUE87Z68PkeZ
	Pc5qiRC/M4ZkrO/KwQn4AjsZyTv+EeS1P41xMNNRdBdlNV3MW9BMLycXHdscJF8pKXmdhK//SSlj3
	hn3/R2gduVFuhGo7jwAZjTOANU69zdEOJ7mpNABjhLueA662BJS2g4XLodYvqQ6Uo6iQMrQXy5EN/
	Dz5FzC3nzvuhYxH8YnjnZplb8+b+o0n1OdD+Ao6u/2lvMUYb1qyD2Ix0Dmkcgr4ZGTIR9KRj0D84v
	OMsjx9j66LVsgpDoy74A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nymPL-00At1m-A8; Wed, 08 Jun 2022 03:30:59 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nymPH-00At0x-R8
	for linux-phy@lists.infradead.org; Wed, 08 Jun 2022 03:30:58 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20220608033042epoutp03318d86e839c9ff7f8f2cc5499fc38cfd~2h6ICPws10355403554epoutp03w
	for <linux-phy@lists.infradead.org>; Wed,  8 Jun 2022 03:30:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20220608033042epoutp03318d86e839c9ff7f8f2cc5499fc38cfd~2h6ICPws10355403554epoutp03w
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654659043;
	bh=svUnNcvZi8FnB/eO2kX+puEXSJbtaaVEi8Nbh0KTMmw=;
	h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
	b=iR6WGEBciq5CM+3mCwZaRaFf/60z2JEB7pKrhNEuGuJqovdQpYwJYazso+vO1TpB1
	 5RzElJ04GcM/4VT6lG+9LfMKaVf3uW9LBX7A3rkx8Fa1KBnXwztS9IMISNmhniOZZm
	 SVGl2SIZk1bNXAQ2fSytBubHzydiBT4SkOVfut/c=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTP id
	20220608033042epcas2p3f91c1864435e7c11cce0b8953655c6b9~2h6Hg0tKA0952709527epcas2p3a;
	Wed,  8 Jun 2022 03:30:42 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.36.102]) by
	epsnrtp4.localdomain (Postfix) with ESMTP id 4LHt6872Lzz4x9Q7; Wed,  8 Jun
	2022 03:30:40 +0000 (GMT)
X-AuditID: b6c32a46-f8bff70000002624-4e-62a017e02523
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
	epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	E7.6C.09764.0E710A26; Wed,  8 Jun 2022 12:30:40 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH v2 2/5] dt-bindings: phy: Add ARTPEC-8 PCIe phy
From: Wangseok Lee <wangseok.lee@samsung.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Wangseok Lee
	<wangseok.lee@samsung.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>,
	"vkoul@kernel.org" <vkoul@kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "jesper.nilsson@axis.com"
	<jesper.nilsson@axis.com>, "lars.persson@axis.com" <lars.persson@axis.com>
CC: "bhelgaas@google.com" <bhelgaas@google.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>, "kw@linux.com"
	<kw@linux.com>, "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
	"kernel@axis.com" <kernel@axis.com>, Moon-Ki Jun <moonki.jun@samsung.com>,
	Sang Min Kim <hypmean.kim@samsung.com>, Dongjin Yang
	<dj76.yang@samsung.com>, Yeeun Kim <yeeun119.kim@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <45aa26be-625e-47eb-c21f-92497e60b6dd@linaro.org>
X-CPGS-Detection: blocking_info_exchange
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20220608033040epcms2p5807e0bf6528ba9f6b24863e9f2244c84@epcms2p5>
Date: Wed, 08 Jun 2022 12:30:40 +0900
X-CMS-MailID: 20220608033040epcms2p5807e0bf6528ba9f6b24863e9f2244c84
X-Sendblock-Type: AUTO_CONFIDENTIAL
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrEJsWRmVeSWpSXmKPExsWy7bCmme4D8QVJBj8WmFssacqweHlI02L+
	kXOsFrtnLGeymDn1DLPF80OzmC0+tahaXHjaw2bxctY9Nou9r7eyWzT0/Ga1OPLmI7PF/uMr
	mSwu75rDZnF23nE2iwmrvrFYvPn9gt3i3OJMi9a9R9gtdt45wWxx5/BZFotfW/8wOYh5rJm3
	htHj+roAjwWbSj02repk87hzbQ+bx5Mr05k8Ni+p9+jbsorR4/iN7UwenzfJBXBFZdtkpCam
	pBYppOYl56dk5qXbKnkHxzvHm5oZGOoaWlqYKynkJeam2iq5+AToumXmAP2opFCWmFMKFApI
	LC5W0rezKcovLUlVyMgvLrFVSi1IySkwL9ArTswtLs1L18tLLbEyNDAwMgUqTMjOmDKplb3g
	pFXFj7mzWRsY2y27GDk5JARMJP7ce8bexcjFISSwg1Hi0o+zQA4HB6+AoMTfHcIgprCAs0TL
	0mCQciEBJYkda+Yxg9jCAvoS11d0s4LYbAK6Ev8Wv2QDGSMisI5ZYveNtWAzmQWOsEjcaf/O
	DrGMV2JG+1MWCFtaYvvyrYwgNqeAncT1kz+hajQkfizrZYawRSVurn7LDmO/PzafEcIWkWi9
	dxaqRlDiwc/dUHEpiQVPDrFC2NUS+//+ZoKwGxgl+u+ngjwjAXT1juvGIGFeAV+JrXtmgZWz
	CKhK3J9zHOo0F4nL9z+CjWQW0JZYtvA1M0grs4CmxPpd+hBTlCWO3GKBeaph4292dDazAJ9E
	x+G/cPEd855AHaMmMW/lTuYJjMqzEOE8C8muWQi7FjAyr2IUSy0ozk1PLTYqMIJHbXJ+7iZG
	cGLXctvBOOXtB71DjEwcjIcYJTiYlUR4JcPnJwnxpiRWVqUW5ccXleakFh9iNAX6ciKzlGhy
	PjC35JXEG5pYGpiYmRmaG5kamCuJ83qlbEgUEkhPLEnNTk0tSC2C6WPi4JRqYJKNO8X9R6qu
	xP8Zg/C3J7Ok/ePWPthdK/LZZ0Fd0uUdmyJ0dBuXelm5Fivb6H7KeaTcKHBoStmko02/HGWt
	hIVWPgl1SrWoeKK/OsFuBUfBCf2ZCaaiOeZnp5z3WrOwmF1LmEkq5nvjJe0Zfj5ruK+wWBjW
	ryp6pXuyMObT3mOVahMvXGoXXajFnTTxVlT3pEf7iy9/9d26TWNFZ0CAyQ6j5W0hnTrT+dtj
	lKojf7lG+m66sXj3XO/bLss2zubt0A5Z+PCnS0+DoMi5hrpK5RiTXXXXJFyvRxrwXFyW9DJ3
	5Qbbq0+4tzsFfT3qd7S4+s+tj0+Xe5dmijVPVrCtPDvbxYPfbOqvjYt/lWyTUGIpzkg01GIu
	Kk4EAOS03Zx1BAAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220603015431epcms2p6203908cebe6a320854136559a32b54cb
References: <45aa26be-625e-47eb-c21f-92497e60b6dd@linaro.org>
	<20220603015431epcms2p6203908cebe6a320854136559a32b54cb@epcms2p6>
	<20220603023158epcms2p6949f6cd93926b9e811e1b4d52fbef91b@epcms2p6>
	<CGME20220603015431epcms2p6203908cebe6a320854136559a32b54cb@epcms2p5>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_203056_256810_4A54D967 
X-CRM114-Status: GOOD (  11.07  )
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

T27CoDA2LzA2LzIwMjLCoDE5OjE2LMKgS3J6eXN6dG9mwqBLb3psb3dza2nCoHdyb3RlOg0KPsKg
T27CoDAzLzA2LzIwMjLCoDA0OjMxLMKgV2FuZ3Nlb2vCoExlZcKgd3JvdGU6DQo+PsKgQWRkwqBk
ZXNjcmlwdGlvbsKgdG/CoHN1cHBvcnTCoEF4aXMswqBBUlRQRUMtOMKgU29DLg0KPj7CoEFSVFBF
Qy04wqBpc8KgdGhlwqBTb0PCoHBsYXRmb3JtwqBvZsKgQXhpc8KgQ29tbXVuaWNhdGlvbnMNCj4+
wqBhbmTCoFBDSWXCoHBoecKgaXPCoGRlc2lnbmVkwqBiYXNlZMKgb27CoFNBTVNVTkfCoFBIWS4N
Cj7CoA0KPsKgVGhpc8KgZG9lc8Kgbm90wqBsb29rwqBsaWtlwqB3cmFwcGVkwqBpbsKgTGludXjC
oGNvbW1pdMKgc3R5bGUuDQo+wqBodHRwczovL3Byb3RlY3QyLmZpcmVleWUuY29tL3YxL3VybD9r
PWM3M2FlMzA5LWE2NDcwYjRlLWM3M2I2ODQ2LTc0ZmU0ODVmZmYzMC1kMDBiNzI0OWMyYzBhOTcw
JnE9MSZlPWI4YjMzODk1LWFmM2QtNDJjZS04MGFjLTQ4MzUwNTcwNzhlNyZ1PWh0dHBzJTNBJTJG
JTJGZWxpeGlyLmJvb3RsaW4uY29tJTJGbGludXglMkZ2NS4xOC1yYzQlMkZzb3VyY2UlMkZEb2N1
bWVudGF0aW9uJTJGcHJvY2VzcyUyRnN1Ym1pdHRpbmctcGF0Y2hlcy5yc3QlMjNMNTg2DQo+wqAN
CsKgDQpPayzCoGnCoHdpbGzCoGZpeMKgaXQuDQrCoA0KPj7CoA0KPj7CoGNoYW5nZXPCoHNpbmNl
wqB2McKgOg0KPj7CoC0nbWFrZcKgZHRfYmluZGluZ19jaGVjayfCoHJlc3VsdMKgaW1wcm92ZW1l
bnQNCj4+wqAtQWRkwqB0aGXCoG1pc3NpbmfCoHByb3BlcnR5wqBsaXN0DQo+PsKgLUFsaWduwqB0
aGXCoGluZGVudGF0aW9uwqBvZsKgY29udGludWVkwqBsaW5lcy9lbnRyaWVzDQo+PsKgDQo+PsKg
U2lnbmVkLW9mZi1ieTrCoFdhbmdzZW9rwqBMZWXCoDx3YW5nc2Vvay5sZWVAc2Ftc3VuZy5jb20+
DQo+PsKgLS0tDQo+PsKgwqAuLi4vYmluZGluZ3MvcGh5L2F4aXMsYXJ0cGVjOC1wY2llLXBoeS55
YW1swqDCoMKgwqDCoMKgwqDCoHzCoDcwwqArKysrKysrKysrKysrKysrKysrKysrDQo+PsKgwqAx
wqBmaWxlwqBjaGFuZ2VkLMKgNzDCoGluc2VydGlvbnMoKykNCj4+wqDCoGNyZWF0ZcKgbW9kZcKg
MTAwNjQ0wqBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2F4aXMsYXJ0cGVj
OC1wY2llLXBoeS55YW1sDQo+PsKgDQo+PsKgZGlmZsKgLS1naXTCoGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9heGlzLGFydHBlYzgtcGNpZS1waHkueWFtbMKgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2F4aXMsYXJ0cGVjOC1wY2llLXBoeS55
YW1sDQo+PsKgbmV3wqBmaWxlwqBtb2RlwqAxMDA2NDQNCj4+wqBpbmRleMKgMDAwMDAwMC4uYWI5
NzY2Zg0KPj7CoC0tLcKgL2Rldi9udWxsDQo+PsKgKysrwqBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9waHkvYXhpcyxhcnRwZWM4LXBjaWUtcGh5LnlhbWwNCj4+wqBAQMKgLTAs
MMKgKzEsNzDCoEBADQo+PsKgKyPCoFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOsKgR1BMLTIuMC1v
bmx5wqBPUsKgQlNELTItQ2xhdXNlDQo+PsKgKyVZQU1MwqAxLjINCj4+wqArLS0tDQo+PsKgKyRp
ZDrCoGh0dHBzOi8vcHJvdGVjdDIuZmlyZWV5ZS5jb20vdjEvdXJsP2s9ODc4NDIyNWMtZTZmOWNh
MWItODc4NWE5MTMtNzRmZTQ4NWZmZjMwLWI0YWY1MWI5YjM2NzBmNDMmcT0xJmU9YjhiMzM4OTUt
YWYzZC00MmNlLTgwYWMtNDgzNTA1NzA3OGU3JnU9aHR0cCUzQSUyRiUyRmRldmljZXRyZWUub3Jn
JTJGc2NoZW1hcyUyRnBoeSUyRmF4aXMlMkNhcnRwZWM4LXBjaWUtcGh5LnlhbWwlMjMNCj4+wqAr
JHNjaGVtYTrCoGh0dHBzOi8vcHJvdGVjdDIuZmlyZWV5ZS5jb20vdjEvdXJsP2s9Zjc4ZWZhZjMt
OTZmMzEyYjQtZjc4ZjcxYmMtNzRmZTQ4NWZmZjMwLTU4Mzk1MGQ0NWMwNzM4NzcmcT0xJmU9Yjhi
MzM4OTUtYWYzZC00MmNlLTgwYWMtNDgzNTA1NzA3OGU3JnU9aHR0cCUzQSUyRiUyRmRldmljZXRy
ZWUub3JnJTJGbWV0YS1zY2hlbWFzJTJGY29yZS55YW1sJTIzDQo+PsKgKw0KPj7CoCt0aXRsZTrC
oEFSVFBFQy04wqBTb0PCoFBDSWXCoFBIWcKgRGV2aWNlwqBUcmVlwqBCaW5kaW5ncw0KPsKgDQo+
wqBTYW1lwqBjb21tZW50wqBhc8KgcGF0Y2jCoCMxLg0KPsKgDQrCoA0KScKgd2lsbMKgcmVtb3Zl
wqAnRGV2aWNlwqBUcmVlwqBCaW5kaW5ncycuDQrCoA0KPj7CoCsNCj4+wqArbWFpbnRhaW5lcnM6
DQo+PsKgK8KgwqAtwqBKZXNwZXLCoE5pbHNzb27CoDxqZXNwZXIubmlsc3NvbkBheGlzLmNvbT4N
Cj4+wqArDQo+PsKgK3Byb3BlcnRpZXM6DQo+PsKgK8KgwqBjb21wYXRpYmxlOg0KPj7CoCvCoMKg
wqDCoGNvbnN0OsKgYXhpcyxhcnRwZWM4LXBjaWUtcGh5DQo+PsKgKw0KPj7CoCvCoMKgcmVnOg0K
Pj7CoCvCoMKgwqDCoGl0ZW1zOg0KPj7CoCvCoMKgwqDCoMKgwqAtwqBkZXNjcmlwdGlvbjrCoFBI
WcKgcmVnaXN0ZXJzLg0KPj7CoCvCoMKgwqDCoMKgwqAtwqBkZXNjcmlwdGlvbjrCoFBIWcKgY29k
aW5nwqBzdWJsYXllcsKgcmVnaXN0ZXJzLg0KPj7CoCsNCj4+wqArwqDCoHJlZy1uYW1lczoNCj4+
wqArwqDCoMKgwqBpdGVtczoNCj4+wqArwqDCoMKgwqDCoMKgLcKgY29uc3Q6wqBwaHkNCj4+wqAr
wqDCoMKgwqDCoMKgLcKgY29uc3Q6wqBwY3MNCj4+wqArDQo+PsKgK8KgwqAiI3BoeS1jZWxscyI6
DQo+PsKgK8KgwqDCoMKgY29uc3Q6wqAwDQo+PsKgKw0KPj7CoCvCoMKgY2xvY2tzOg0KPj7CoCvC
oMKgwqDCoGl0ZW1zOg0KPj7CoCvCoMKgwqDCoMKgwqAtwqBkZXNjcmlwdGlvbjrCoFBDSWXCoFBI
WcKgcmVmZXJlbmNlwqBjbG9jaw0KPj7CoCsNCj4+wqArwqDCoGNsb2NrLW5hbWVzOg0KPj7CoCvC
oMKgwqDCoGl0ZW1zOg0KPj7CoCvCoMKgwqDCoMKgwqAtwqBjb25zdDrCoHJlZl9jbGsNCj7CoA0K
PsKgU2FtZcKgY29tbWVudMKgYXPCoHBhdGNowqAjMS4NCj7CoA0KwqANCk9rLMKgcmVtb3ZlwqBf
Y2xrLg0KwqANCj4+wqArDQo+PsKgK8KgwqBudW0tbGFuZXM6DQo+PsKgK8KgwqDCoMKgY29uc3Q6
wqAyDQo+PsKgKw0KPj7CoCtyZXF1aXJlZDoNCj4+wqArwqDCoC3CoGNvbXBhdGlibGUNCj4+wqAr
wqDCoC3CoHJlZw0KPj7CoCvCoMKgLcKgcmVnLW5hbWVzDQo+PsKgK8KgwqAtwqAiI3BoeS1jZWxs
cyINCj4+wqArwqDCoC3CoGNsb2Nrcw0KPj7CoCvCoMKgLcKgY2xvY2stbmFtZXMNCj4+wqArwqDC
oC3CoG51bS1sYW5lcw0KPj7CoCsNCj4+wqArYWRkaXRpb25hbFByb3BlcnRpZXM6wqBmYWxzZQ0K
Pj7CoCsNCj4+wqArZXhhbXBsZXM6DQo+PsKgK8KgwqAtwqB8DQo+PsKgK8KgwqDCoMKgI2luY2x1
ZGXCoDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9pcnEuaD4NCj4+wqArwqDCoMKg
wqAjaW5jbHVkZcKgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2FybS1naWMuaD4N
Cj4+wqArDQo+PsKgK8KgwqDCoMKgYXJ0cGVjOMKgew0KPsKgDQo+wqBTYW1lwqBjb21tZW50wqBh
c8KgcGF0Y2jCoCMxLg0KPsKgDQo+wqANCsKgDQpPayzCoG1vZGl0ecKgdG/CoCdzb2MnLg0KwqAN
Cj4+wqArwqDCoMKgwqDCoMKgwqDCoCNhZGRyZXNzLWNlbGxzwqA9wqA8Mj47DQo+PsKgK8KgwqDC
oMKgwqDCoMKgwqAjc2l6ZS1jZWxsc8KgPcKgPDI+Ow0KPj7CoCvCoMKgwqDCoMKgwqDCoMKgcGNp
ZV9waHk6wqBwY2llLXBoeUAxNmM4MDAwMMKgew0KPj7CoCvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBjb21wYXRpYmxlwqA9wqAiYXhpcyxhcnRwZWM4LXBjaWUtcGh5IjsNCj4+wqArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgcmVnwqA9wqA8MHgwwqAweDE2YzgwMDAwwqAweDDCoDB4MjAwMD4sDQo+
PsKgK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoDwweDDCoDB4MTZjOTAwMDDC
oDB4MMKgMHgxMDAwPjsNCj4+wqArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVnLW5hbWVzwqA9
wqAicGh5IizCoCJwY3MiOw0KPj7CoCvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAjcGh5LWNlbGxz
wqA9wqA8MD47DQo+PsKgK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNsb2Nrc8KgPcKgPCZjbG9j
a19jbXVfZnN5c8KgNTM+Ow0KPj7CoCvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjbG9jay1uYW1l
c8KgPcKgInJlZl9jbGsiOw0KPj7CoCvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBudW0tbGFuZXPC
oD3CoDwyPjsNCj4+wqArwqDCoMKgwqDCoMKgwqDCoH07DQo+PsKgK8KgwqDCoMKgfTsNCj4+wqAr
Li4uDQo+wqANCj7CoA0KPsKgQmVzdMKgcmVnYXJkcywNCj7CoEtyenlzenRvZg0KDQpUaGFuayB5
b3UgZm9yIGtpbmRuZXNzIHJlaXZldy4NCg0KQmVzdCByZWdhcmRzLA0KV2FuZ3Nlb2sgTGVlCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
