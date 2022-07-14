Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8E58CCA47B
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 10:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:CC:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OT15Ajx7jmc6g+Oo0mixcLfnbIUmbD6aeus80Hu09CI=; b=Ab6Cguxd6sw/t0
	4d9ENm4FSWEvsij8IiqXznrv2WsdONG3juLFpEhr/v0vqF+2MzSFBn8+S94gQFWuuw8t6gl9teYcB
	TfsBh5UM1MhhBt4vsHq1UyGpXXxzxMED/1fAVyjsL+UWd3Zbd/LxbX66m3QTZXqimIwhMiNgjxnA9
	cVY12jikNfzLa8dDx5EX8ju63zYY5Kx8V8z/pWWj81fUyewXbxWilAVhasijPoSZk2PI1LutiLwuP
	TG59XlQoqreU4nYM6MwijL8ZLa2Lwk3e+7VC/NJu23Dg9KDtXSFfKq+3LPUCupMlKCxny/0em0WcN
	y0h4Z3rwuDe59p1VHAiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBvdf-00D8p9-6V; Thu, 14 Jul 2022 10:00:07 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBvdc-00D8j6-6G
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 10:00:06 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20220714095957epoutp01b1ecd95f2acda26badec2aec505666f3~BqcQjVBva3076630766epoutp01L
	for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 09:59:57 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20220714095957epoutp01b1ecd95f2acda26badec2aec505666f3~BqcQjVBva3076630766epoutp01L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1657792797;
	bh=0aAHM3hKuspUcMppNQjaigO1obsyhzNCJFbT+4VcEW8=;
	h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
	b=Q3gfn3UlAkUveDiLNhftZ8RXdF09KbLIo6aF651lNObxBaT03BY9zVraRc5p3idbu
	 ODQZSN3IxWEPuwAv0qKkpzMw/tYXO8m33NxczhOcWoRLbU6hCFFF7cwT90psF1yMsn
	 lQemLHzvLRFka20tz7SnS/sRkVwbTCtbpna8ONyM=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
	epcas2p4.samsung.com (KnoxPortal) with ESMTP id
	20220714095956epcas2p49a29c26bba338ec73a6a172b3ab221d4~BqcP2fDTV2288722887epcas2p4G;
	Thu, 14 Jul 2022 09:59:56 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.36.98]) by
	epsnrtp1.localdomain (Postfix) with ESMTP id 4Lk92h2mSJz4x9Pv; Thu, 14 Jul
	2022 09:59:56 +0000 (GMT)
X-AuditID: b6c32a46-0b9ff700000025b2-aa-62cfe91cf8bc
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
	epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	6E.78.09650.C19EFC26; Thu, 14 Jul 2022 18:59:56 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH v3 4/5] phy: Add ARTPEC-8 PCIe PHY driver
From: Wangseok Lee <wangseok.lee@samsung.com>
To: Vinod Koul <vkoul@kernel.org>
CC: "robh+dt@kernel.org" <robh+dt@kernel.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"jesper.nilsson@axis.com" <jesper.nilsson@axis.com>, "lars.persson@axis.com"
	<lars.persson@axis.com>, "bhelgaas@google.com" <bhelgaas@google.com>,
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
In-Reply-To: <YsW9m6hotDKacXe3@matsya>
X-CPGS-Detection: blocking_info_exchange
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20220714095955epcms2p5f5e9a3123a368069b5c661cdeb70485e@epcms2p5>
Date: Thu, 14 Jul 2022 18:59:55 +0900
X-CMS-MailID: 20220714095955epcms2p5f5e9a3123a368069b5c661cdeb70485e
X-Sendblock-Type: AUTO_CONFIDENTIAL
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrPJsWRmVeSWpSXmKPExsWy7bCmha7My/NJBi+PC1osacqweHlI02L+
	kXOsFrtnLGeymDn1DLPF80OzmC0+tahaXHjaw2bxctY9NouGnt+sFkfefGS22H98JZPF5V1z
	2CzOzjvOZjFh1TcWize/X7BbnFucadG69wi7xc47J5gtfm39w+Qg4rFm3hpGj+vrAjwWbCr1
	2LSqk83jyZXpTB6bl9R79G1Zxehx/MZ2Jo/Pm+QCOKOybTJSE1NSixRS85LzUzLz0m2VvIPj
	neNNzQwMdQ0tLcyVFPISc1NtlVx8AnTdMnOAnlJSKEvMKQUKBSQWFyvp29kU5ZeWpCpk5BeX
	2CqlFqTkFJgX6BUn5haX5qXr5aWWWBkaGBiZAhUmZGe8u85bcNy/YkHXAZYGxv2+XYycHBIC
	JhJ/zlxg7mLk4hAS2MEosfrDFyCHg4NXQFDi7w5hkBphAVuJhVdesIHYQgJKEjvWzGOGiOtL
	XF/RzQpiswnoSvxb/BKsRkRAUeJqz3GwOLPACzaJVW1lELt4JWa0P2WBsKUlti/fygiyilNA
	TeJzhypEWEPix7JeZghbVOLm6rfsMPb7Y/MZIWwRidZ7Z6FqBCUe/NwNFZeSWPDkECuEXS2x
	/+9vJgi7gVGi/34qyCoJoJN3XDcGCfMK+ErMuvIVrJxFQFXizZZZjBAlLhKvn3FBHK8tsWzh
	a3B4MAtoSqzfpQ9RoSxx5BYLzEsNG3+zo7OZBfgkOg7/hYvvmPcE6hY1iXkrdzJPYFSehQjk
	WUh2zULYtYCReRWjWGpBcW56arFRgRE8WpPzczcxglO2ltsOxilvP+gdYmTiYDzEKMHBrCTC
	233oXJIQb0piZVVqUX58UWlOavEhRlOgJycyS4km5wOzRl5JvKGJpYGJmZmhuZGpgbmSOK9X
	yoZEIYH0xJLU7NTUgtQimD4mDk6pBiaxtRN1EtlKRaddcr/88eL2pBvF37pYNRPir93Tq18x
	56dMjI+w4qtF8TYXezWDq/x1Nl67Y9MRePi1Ts3+EBu2tUsCnlx0/rWjs0e8LKc0/NHm9401
	/724OmNvLHYqbjs93/uzUrtx67fAuEVNv8S+Mau0bvojrJ/12mvaKSFGq1WXvr2/+OI0WzTL
	NMHd4lznE1o2bHl9835z4YeJThxnjwVZtGz7KDG3KfmVDhOXnpSVWLqm+8zFRT0Sqf/5csNy
	xdfsuCW/cVngwtetq+04n378+W3902l2zsf+82zs2/aYo41ZcpVF6IKQ15Glz+uuXv3ZIbSj
	qvP51MhnE57/P79j+3TrE3V5a1Yrmk9QYinOSDTUYi4qTgQA5ZNv2WIEAAA=
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7
References: <YsW9m6hotDKacXe3@matsya> <YsPYc3YPuG56yTYM@matsya>
	<20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p7>
	<20220614013446epcms2p8c88ea65da49447f72fef6536c7f73fb6@epcms2p8>
	<20220706081036epcms2p6baf1d8afac994cd0d45c5e59029c8ce7@epcms2p6>
	<CGME20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p5>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_030004_730411_6F50ACB1 
X-CRM114-Status: GOOD (  13.89  )
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

T27CoDA3LTA3LTIyLMKgMDE6NTIswqBWaW5vZCBLb3VswqB3cm90ZToNCj4gT27CoDA2LTA3LTIy
LMKgMTc6MTAswqBXYW5nc2Vva8KgTGVlwqB3cm90ZToNCj4+wqBPbsKgMDUtMDctMjIswqAxNToz
MCzCoFZpbm9kwqBLb3VswqB3cm90ZToNCj4+wqA+wqBPbsKgMTQtMDYtMjIswqAxMDozNCzCoFdh
bmdzZW9rwqBMZWXCoHdyb3RlOg0KPj7CoD4+wqBBZGTCoHN1cHBvcnTCoEF4aXMswqBBUlRQRUMt
OMKgU29DLg0KPj7CoD4+wqBBUlRQRUMtOMKgaXPCoHRoZcKgU29DwqBwbGF0Zm9ybcKgb2bCoEF4
aXPCoENvbW11bmljYXRpb25zLg0KPj7CoD4+wqBUaGlzwqBpc8KgYmFzZWTCoG9uwqBhcm02NMKg
YW5kwqBzdXBwb3J0wqBHRU40wqAmwqAybGFuZS4NCj4+wqA+PsKgVGhpc8KgZHJpdmVywqBwcm92
aWRlc8KgUEhZwqBpbnRlcmZhY2XCoGZvcsKgQVJUUEVDLTjCoFNvQ8KgUENJZcKgY29udHJvbGxl
ciwNCj4+wqA+PsKgYmFzZWTCoG9uwqBTYW1zdW5nwqBQQ0llwqBQSFnCoElQLg0KPj7CoD4+wqAN
Cj4+wqA+PsKgU2lnbmVkLW9mZi1ieTrCoFdhbmdzZW9rwqBMZWXCoDx3YW5nc2Vvay5sZWVAc2Ft
c3VuZy5jb20+DQo+PsKgPj7CoFNpZ25lZC1vZmYtYnk6wqBKYWVob8KgQ2hvwqA8amFlaG83OS5j
aG9Ac2Ftc3VuZy5jb20+DQo+PsKgPj7CoC0tLQ0KPj7CoD4+wqB2Mi0+djPCoDoNCj4+wqA+PsKg
LXJlbW92ZcKgdW5uZWNlc3NhcnnCoGluZGVudGF0aW9uDQo+PsKgPj7CoC1yZWRlZmluZcKgbG9j
YWzCoHN0cnVjdMKgdG/CoHN0YXRpc8KgY29uc3QNCj4+wqA+PsKgLWFkZMKgc3RhdGljwqBjb25z
dMKgdG/CoHN0cnVjdMKgdGhhdMKgcmVxdWlyZXPCoHN0YXRpY8KgY29uc3TCoGRlZmluaXRpb24N
Cj4+wqA+PsKgLXJlbW92ZcKgd3JhcHBlcnPCoG9uwqB3cml0ZWzCoGFuZMKgcmVhZGwNCj4+wqA+
PsKgDQo+PsKgPj7CoHYxLT52MsKgOg0KPj7CoD4+wqAtY2hhbmdlwqBmb2xkZXLCoG5hbWXCoG9m
wqBwaHnCoGRyaXZlcsKgdG/CoGF4aXPCoGZyb23CoGFydHBlYw0KPj7CoD4+wqAtLS0NCj4+wqA+
PsKgwqBkcml2ZXJzL3BoeS9LY29uZmlnwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oHzCoMKgwqAxwqArDQo+PsKgPj7CoMKgZHJpdmVycy9waHkvTWFrZWZpbGXCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHzCoMKgwqAxwqArDQo+PsKgPj7CoMKgZHJpdmVycy9waHkvYXhp
cy9LY29uZmlnwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfMKgwqDCoDnCoCsNCj4+wqA+PsKgwqBk
cml2ZXJzL3BoeS9heGlzL01ha2VmaWxlwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHzCoMKgwqAywqAr
DQo+PsKgPj7CoMKgZHJpdmVycy9waHkvYXhpcy9waHktYXJ0cGVjOC1wY2llLmPCoHzCoDc3NsKg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrDQo+PsKgPj7CoMKgNcKgZmlsZXPC
oGNoYW5nZWQswqA3ODnCoGluc2VydGlvbnMoKykNCj4+wqA+PsKgwqBjcmVhdGXCoG1vZGXCoDEw
MDY0NMKgZHJpdmVycy9waHkvYXhpcy9LY29uZmlnDQo+PsKgPj7CoMKgY3JlYXRlwqBtb2RlwqAx
MDA2NDTCoGRyaXZlcnMvcGh5L2F4aXMvTWFrZWZpbGUNCj4+wqA+PsKgwqBjcmVhdGXCoG1vZGXC
oDEwMDY0NMKgZHJpdmVycy9waHkvYXhpcy9waHktYXJ0cGVjOC1wY2llLmMNCj4+wqA+PsKgDQo+
PsKgPj7CoGRpZmbCoC0tZ2l0wqBhL2RyaXZlcnMvcGh5L0tjb25maWfCoGIvZHJpdmVycy9waHkv
S2NvbmZpZw0KPj7CoD4+wqBpbmRleMKgMzAwYjBmMi4uOTJiODIzMsKgMTAwNjQ0DQo+PsKgPj7C
oC0tLcKgYS9kcml2ZXJzL3BoeS9LY29uZmlnDQo+PsKgPj7CoCsrK8KgYi9kcml2ZXJzL3BoeS9L
Y29uZmlnDQo+PsKgPj7CoEBAwqAtNzMsNsKgKzczLDfCoEBAwqBjb25maWfCoFBIWV9DQU5fVFJB
TlNDRUlWRVINCj4+wqA+PsKgwqANCj4+wqA+PsKgwqBzb3VyY2XCoCJkcml2ZXJzL3BoeS9hbGx3
aW5uZXIvS2NvbmZpZyINCj4+wqA+PsKgwqBzb3VyY2XCoCJkcml2ZXJzL3BoeS9hbWxvZ2ljL0tj
b25maWciDQo+PsKgPj7CoCtzb3VyY2XCoCJkcml2ZXJzL3BoeS9heGlzL0tjb25maWciDQo+PsKg
Pj7CoMKgc291cmNlwqAiZHJpdmVycy9waHkvYnJvYWRjb20vS2NvbmZpZyINCj4+wqA+PsKgwqBz
b3VyY2XCoCJkcml2ZXJzL3BoeS9jYWRlbmNlL0tjb25maWciDQo+PsKgPj7CoMKgc291cmNlwqAi
ZHJpdmVycy9waHkvZnJlZXNjYWxlL0tjb25maWciDQo+PsKgPj7CoGRpZmbCoC0tZ2l0wqBhL2Ry
aXZlcnMvcGh5L01ha2VmaWxlwqBiL2RyaXZlcnMvcGh5L01ha2VmaWxlDQo+PsKgPj7CoGluZGV4
wqAwMWU5ZWZmLi44MDhjMDU1ZcKgMTAwNjQ0DQo+PsKgPj7CoC0tLcKgYS9kcml2ZXJzL3BoeS9N
YWtlZmlsZQ0KPj7CoD4+wqArKyvCoGIvZHJpdmVycy9waHkvTWFrZWZpbGUNCj4+wqA+PsKgQEDC
oC0xMiw2wqArMTIsN8KgQEDCoG9iai0kKENPTkZJR19QSFlfUElTVEFDSElPX1VTQinCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCs9wqBwaHktcGlzdGFjaGlvLXVzYi5vDQo+PsKgPj7C
oMKgb2JqLSQoQ09ORklHX1VTQl9MR01fUEhZKcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgKz3CoHBoeS1sZ20tdXNiLm8NCj4+wqA+PsKgwqBvYmotecKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgKz3CoGFsbHdpbm5lci/CoMKgwqDCoMKgwqDCoMKgXA0KPj7CoD4+wqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgYW1sb2dpYy/CoMKgwqDCoMKgwqDCoMKgXA0KPj7CoD4+wqArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBheGlzL8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgXA0KPj7CoD4+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYnJvYWRjb20v
wqDCoMKgwqDCoMKgwqDCoFwNCj4+wqA+PsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGNhZGVuY2UvwqDCoMKgwqDCoMKgwqDCoFwNCj4+wqA+PsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGZyZWVzY2FsZS/CoMKgwqDCoMKgwqDCoMKgXA0KPj7CoD4+wqBkaWZmwqAtLWdp
dMKgYS9kcml2ZXJzL3BoeS9heGlzL0tjb25maWfCoGIvZHJpdmVycy9waHkvYXhpcy9LY29uZmln
DQo+PsKgPj7CoG5ld8KgZmlsZcKgbW9kZcKgMTAwNjQ0DQo+PsKgPj7CoGluZGV4wqAwMDAwMDAw
Li43MTk4YjkzDQo+PsKgPj7CoC0tLcKgL2Rldi9udWxsDQo+PsKgPj7CoCsrK8KgYi9kcml2ZXJz
L3BoeS9heGlzL0tjb25maWcNCj4+wqA+PsKgQEDCoC0wLDDCoCsxLDnCoEBADQo+PsKgPj7CoCtj
b25maWfCoFBIWV9BUlRQRUM4X1BDSUUNCj4+wqA+PsKgK8KgwqDCoMKgwqDCoMKgwqBib29swqAi
QVJUUEVDLTjCoFBDSWXCoFBIWcKgZHJpdmVyIg0KPj7CoD4+wqArwqDCoMKgwqDCoMKgwqDCoGRl
cGVuZHPCoG9uwqBPRsKgJibCoChBUkNIX0FSVFBFQzjCoHx8wqBDT01QSUxFX1RFU1QpDQo+PsKg
Pj7CoCvCoMKgwqDCoMKgwqDCoMKgc2VsZWN0wqBHRU5FUklDX1BIWQ0KPj7CoD4+wqArwqDCoMKg
wqDCoMKgwqDCoGhlbHANCj4+wqA+PsKgK8KgwqDCoMKgwqDCoMKgwqDCoMKgRW5hYmxlwqBQQ0ll
wqBQSFnCoHN1cHBvcnTCoGZvcsKgQVJUUEVDLTjCoFNvQy4NCj4+wqA+PsKgK8KgwqDCoMKgwqDC
oMKgwqDCoMKgVGhpc8KgZHJpdmVywqBwcm92aWRlc8KgUEhZwqBpbnRlcmZhY2XCoGZvcsKgQVJU
UEVDLTjCoFNvQw0KPj7CoD4+wqArwqDCoMKgwqDCoMKgwqDCoMKgwqBQQ0llwqBjb250cm9sbGVy
Lg0KPj7CoD4+wqArwqDCoMKgwqDCoMKgwqDCoMKgwqBUaGlzwqBpc8KgYmFzZWTCoG9uwqBTYW1z
dW5nwqBQQ0llwqBQSFnCoElQLg0KPj7CoD7CoA0KPj7CoD7CoEhvd8KgZGlmZmVyZW50wqBpc8Kg
aXTCoGZyb23CoFNTwqBJUMKgYW5kwqB3aHnCoHNob3VsZMKgaXTCoG5vdMKgYmXCoHVuZGVyDQo+
PsKgPsKgcGh5L3NhbXN1bmcvwqB0aGVuPw0KPj7CoD7CoA0KPj7CoA0KPj7CoFNvQ8KgcGxhdGZv
cm3CoGlzwqBjb21wbGV0ZWx5wqBkaWZmZXJlbnTCoGZyb23CoGV4eW5vc8KgcGxhdGZvcm3CoGFu
ZMKgZGlmZmVyZW50wqANCj4+wqBmcm9twqBleHlub3PCoFBDSWXCoFBIWS7CoFNvwqB0aGXCoG92
ZXJhbGzCoHN5c3JlZ8KgY29uZmlndXJhdGlvbsKgaXPCoGRpZmZlcmVudA0KPj7CoGFuZMKgcmVn
aXN0ZXLCoG1hcMKgaXPCoGFsc2/CoGRpZmZlcmVudC7CoFRoZcKgcmVzZXTCoG1ldGhvZMKgYW5k
wqB0eXBlwqBvZsKgUEhZwqBmb3INCj4+wqBpbml0aWFsaXphdGlvbsKgYXJlwqBkaWZmZXJlbnQu
wqBUaGlzwqBpc8Kgbm90wqBhwqBkcml2ZXLCoHRoYXTCoHN1cHBvcnRzwqBTYW1zdW5nDQo+PsKg
U29DwqBwbGF0Zm9ybSzCoGJ1dMKgdGhpc8KgUEhZwqBkcml2ZXLCoHRoYXTCoHN1cHBvcnRzwqBv
bmx5wqBBeGlzLMKgQXJ0cGVjLTgNCj4+wqBwbGF0Zm9ybXMswqBzb8KgaXTCoGlzwqBub3TCoGFk
ZGVkwqB0b8KgcGh5L3NhbXN1bmcuDQo+IA0KPiBTb0PCoGlzwqBhwqBtb290wqBwb2ludC7CoElm
wqB0aGXCoElQwqBibG9ja8KgaXPCoHNhbWXCoHRoZW7CoHdlwqBzaG91bGTCoHRyecKgdG/CoHJl
dXNlDQo+IHRoZcKgZXhpc3RpbmfCoHBoecKgZHJpdmVyLMKgbW9kaWZpY2F0aW9uc8KgdG/CoGN1
cnJlbnTCoGRyaXZlcsKgdG/CoHN1cHBvcnTCoHlvdXINCj4gY2hhbmdlc8Kgc2hvdWxkwqBiZcKg
ZmluZS4uLg0KPiANCj4gSXPCoHRoYXTCoGZlYXNpYmxlPw0KPiANCj4gLS3CoA0KPiB+Vmlub2QN
Cg0KU29ycnkgZm9yIGxhdGUgcmVwbHkuDQoNCkFib3ZlIGFsbCwgdGhlIElQIGJsb2NrcyBvZiBw
aHktZXh5bm9zLXBjaWUuYyBhbmQgYXJ0cGVjOCdzIHBjaWUgcGh5IGFyZQ0KZGlmZmVyZW50LiBB
cyBhIHJlc3VsdCwgdGhlIEgvVyBhcmNoaXRlY3R1cmUgYW5kIG9wZXJhdGlvbiBzZXF1ZW5jZSBp
cw0KdmVyeSBkaWZmZXJlbnQuIFNvIGl0IGlzIHZlcnkgZGlmZmljdWx0IHRvIG1lcmdlIGludG8g
YSBleHlub3MgcGNpZSBmaWxlLg0KSWYgcG9zc2libGUsIHdlIHdvdWxkIGxpa2UgdG8gcHJvY2Vl
ZCB3aXRoIGEgbmV3IGZpbGUuIElzIHRoYXQgcG9zc2libGU/DQoNCkJlc3QgcmVnYXJkcywNCldh
bmdzZW9rIExlZQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
