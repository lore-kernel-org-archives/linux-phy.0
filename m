Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A7A7CCA47A
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jun 2022 07:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:CC:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=teh6uU5UCQ8Yq4wMiUnvYs38YpV2ArPF3g9+1z5W7/4=; b=lVH9kjxeKyk0PP
	x9qj9dZgy1U+mF2SAAXvwW3xfng7Jp1jAQxcZ4/lg4kTbUxsPArBGxcvFZLwhZdQGXIrEOanQykMJ
	CCZSTxsmGKNAcjTaDbP40YIa/4X9nJB5iYHYVmjwgCJOkGKVoeG1e++J5WrDk2MxPubKGQRJ7fOz3
	6CnqYnv+cDwbRqRfiHHyHSKU2KVnPUAli7hLdJCxRmgcTyc1e8wLcEU7bsG8yvQQISr+ONgasw+qq
	3sDEa2cSdCvW66tP9Hm1yJSCr/Fwyps22PlYMxviMH+B7kyd63bcUqx4WPbjZs2qTDTF/b2hj/VKq
	9MfC8yIF6yrUX42Xv41g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3uRm-0090Co-M4; Wed, 22 Jun 2022 07:06:42 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3uRi-0090BH-9u
	for linux-phy@lists.infradead.org; Wed, 22 Jun 2022 07:06:41 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20220622070627epoutp0265dbe9e09441c96cc5e71dc7ef3fe6b6~634fuBbsR3127831278epoutp02j
	for <linux-phy@lists.infradead.org>; Wed, 22 Jun 2022 07:06:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20220622070627epoutp0265dbe9e09441c96cc5e71dc7ef3fe6b6~634fuBbsR3127831278epoutp02j
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1655881587;
	bh=zeSvkutVhCwLhqpuMOBEA1bNHvXYgLmki1LCYFH8ryI=;
	h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
	b=tNRNaZpR7PT2bB9AQ0wUK8pSW7i5TFaixDhu9MrK9/ws189S+wyQayreMKHT7RncA
	 6YkSd+a/Ly7YE+CI18ICfNLneGlDeAwK+FkeJmzNPBB+gE6zt6ASPq+UropOBkCqc1
	 zOr/7Y0Gc8MHjAlBRbG5eVnlWSBg/TNp39VS4aWw=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTP id
	20220622070626epcas2p24cd717a2358840c3a44b92cb6bcacdd1~634d8kFfJ3086230862epcas2p2n;
	Wed, 22 Jun 2022 07:06:26 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.36.91]) by
	epsnrtp2.localdomain (Postfix) with ESMTP id 4LSZDd4V6fz4x9QJ; Wed, 22 Jun
	2022 07:06:25 +0000 (GMT)
X-AuditID: b6c32a46-0a3ff700000025b2-8a-62b2bf71c064
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
	epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	13.DD.09650.17FB2B26; Wed, 22 Jun 2022 16:06:25 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH v3 2/5] dt-bindings: phy: Add ARTPEC-8 PCIe phy
From: Wangseok Lee <wangseok.lee@samsung.com>
To: Bjorn Helgaas <helgaas@kernel.org>
CC: Krzysztof Kozlowski <krzk@kernel.org>, "robh+dt@kernel.org"
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
	"kernel@axis.com" <kernel@axis.com>, Moon-Ki Jun <moonki.jun@samsung.com>,
	Sang Min Kim <hypmean.kim@samsung.com>, Dongjin Yang
	<dj76.yang@samsung.com>, Yeeun Kim <yeeun119.kim@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <20220621211354.GA1332400@bhelgaas>
X-CPGS-Detection: blocking_info_exchange
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20220622070625epcms2p27b8af447c871dba8219b5dd16c2860c7@epcms2p2>
Date: Wed, 22 Jun 2022 16:06:25 +0900
X-CMS-MailID: 20220622070625epcms2p27b8af447c871dba8219b5dd16c2860c7
X-Sendblock-Type: AUTO_CONFIDENTIAL
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrNJsWRmVeSWpSXmKPExsWy7bCmqW7h/k1JBv9uKFosacqweHlI02L+
	kXOsFrtnLGeyeHVmLZvFzKlnmC2eH5rFbPGpRdXiwtMeNouXs+6xWZw/v4HdoqHnN6vFkTcf
	mS32H1/JZHF51xw2i7PzjrNZTFj1jcXize8X7BbnFmdatO49wm6x884JZotfW/8wOYh5rJm3
	htHj+roAjwWbSj02repk83hyZTqTx+Yl9R59W1Yxehy/sZ3J4/MmuQDOqGybjNTElNQihdS8
	5PyUzLx0WyXv4HjneFMzA0NdQ0sLcyWFvMTcVFslF58AXbfMHKD3lBTKEnNKgUIBicXFSvp2
	NkX5pSWpChn5xSW2SqkFKTkF5gV6xYm5xaV56Xp5qSVWhgYGRqZAhQnZGR2z/zEXLNGt2Lzz
	BnMDY59OFyMnh4SAicTuW9+Yuxi5OIQEdjBKvD3wl7GLkYODV0BQ4u8OYZAaYQFniV3/N7GB
	2EICShI71sxjhojrS1xf0c0KYrMJ6Er8W/ySDaRVREBNoqs9FGQks8AOdom7b78zQuzilZjR
	/pQFwpaW2L58K1icU8BAYs2LI0wQcQ2JH8t6mSFsUYmbq9+yw9jvj82HmiMi0XrvLFSNoMSD
	n7uh4lISC54cYoWwqyX2//0NNbOBUaL/firIbRJAN++4bgwS5hXwlVj/4DsrSJhFQFWi5YM8
	RLWLxO7mbrCJzALaEssWvmYGKWEW0JRYv0sfYoiyxJFbLDA/NWz8zY7OZhbgk+g4/BcuvmPe
	E6hb1CTmrdzJPIFReRYilGch2TULYdcCRuZVjGKpBcW56anFRgVG8IhNzs/dxAhO5VpuOxin
	vP2gd4iRiYPxEKMEB7OSCK8N94YkId6UxMqq1KL8+KLSnNTiQ4ymQE9OZJYSTc4HZpO8knhD
	E0sDEzMzQ3MjUwNzJXFer5QNiUIC6YklqdmpqQWpRTB9TBycUg1MHqxRn/UW1VgslHsRU6vo
	vSlCw6Xl1JU+rba0KvfAzGKVPxzPpusFudm1yf55ePnFi6LtKwy9jxT+mqapG+VgppTOrORt
	tE3+8Wf9w/YmDuf8hdYtm7vR/wgLb5v4jGQTgxv2pgkhcS/PhvZ6y9nssJvw4cZfvkT/3kmd
	mVXf3jh2zWsN3/V+9fpfK75uKjohnLhsX5CEWBz7ahaPv/prDyYzTPiv0c/H06t1XSfw3LYF
	qyvaXfkeszNwfK6TsfOvSE04xCZdmtvauJ+LUfj9pIbnUxbdmHBWPrwn42v75wX6HTMnCwdx
	Liv7lXdTg3tX81eGrd4uPydusp3Uav7660+xrb7r1DxcbpVMZFBiKc5INNRiLipOBADCFcZD
	bgQAAA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220621212357epcas2p41ecf1ace5d207b154cc77dac79bc7e53
References: <20220621211354.GA1332400@bhelgaas>
	<CGME20220621212357epcas2p41ecf1ace5d207b154cc77dac79bc7e53@epcms2p2>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220622_000638_881726_6AF6DC39 
X-CRM114-Status: GOOD (  11.22  )
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

T27CoDIyLzA2LzIwMjLCoDA2OjIzLMKgQmpvcm4gSGVsZ2Fhc8Kgd3JvdGU6DQo+IE9uwqBNb24s
wqBKdW7CoDIwLMKgMjAyMsKgYXTCoDA1OjM4OjIxUE3CoCswOTAwLMKgV2FuZ3Nlb2vCoExlZcKg
d3JvdGU6DQo+PsKgT27CoDE3LzA2LzIwMjLCoDA3OjU5LMKgS3J6eXN6dG9mwqBLb3psb3dza2nC
oHdyb3RlOg0KPj7CoD7CoE9uwqAxMy8wNi8yMDIywqAxODoyOSzCoFdhbmdzZW9rwqBMZWXCoHdy
b3RlOg0KPj7CoD4+wqBBZGTCoGRlc2NyaXB0aW9uwqB0b8Kgc3VwcG9ydMKgQXhpcyzCoEFSVFBF
Qy04wqBTb0MuDQo+PsKgPj7CoEFSVFBFQy04wqBpc8KgdGhlwqBTb0PCoHBsYXRmb3JtwqBvZsKg
QXhpc8KgQ29tbXVuaWNhdGlvbnMNCj4+wqA+PsKgYW5kwqBQQ0llwqBwaHnCoGlzwqBkZXNpZ25l
ZMKgYmFzZWTCoG9uwqBTQU1TVU5HwqBQSFkuDQo+PsKgPsKgDQo+PsKgPsKgTm/CoGltcHJvdmVt
ZW50c8KgaGVyZS7CoE9uwqB2MsKgScKgZ2F2ZcKgeW91wqBsaW5rwqBwb2ludGluZ8KgdG/CoHNw
ZWNpZmljDQo+PsKgPsKgcGFyYWdyYXBowqBvZsKgb3VywqBkb2N1bWVudGF0aW9uwqB3aGljaMKg
eW91wqBuZWVkwqB0b8KgYXBwbHnCoC3CoHdyb25nwqB3cmFwcGluZy4NCj4+wqA+wqBJc8KgdGhl
cmXCoHNvbWV0aGluZ8KgdW5jbGVhcsKgaGVyZT8NCj4+wqA+wqANCj4+wqA+wqBQbGVhc2UNCj4+
wqA+wqBkbw0KPj7CoD7CoG5vdA0KPj7CoD7CoHdyYXANCj4+wqA+wqBpbg0KPj7CoD7CoGRpZmZl
cmVudA0KPj7CoD7CoHN0eWxlLg0KPj7CoA0KPj7CoEnCoHRoaW5rwqBpwqBtaXN1bmRlcnN0b29k
wqB5b3VywqByZXZpZXfCoGNvbW1lbnQuDQo+IA0KPiBLcnp5c3p0b2bCoHdhc8KgcG9pbnRpbmfC
oG91dMKgdGhhdMKgeW91csKgY29tbWl0wqBsb2c6DQo+IA0KPiDCoMKgQWRkwqBkZXNjcmlwdGlv
bsKgdG/CoHN1cHBvcnTCoEF4aXMswqBBUlRQRUMtOMKgU29DLg0KPiDCoMKgQVJUUEVDLTjCoGlz
wqB0aGXCoFNvQ8KgcGxhdGZvcm3CoG9mwqBBeGlzwqBDb21tdW5pY2F0aW9ucw0KPiDCoMKgYW5k
wqBQQ0llwqBwaHnCoGlzwqBkZXNpZ25lZMKgYmFzZWTCoG9uwqBTQU1TVU5HwqBQSFkuDQo+IA0K
PiBvbmx5wqBmaWxsc8KgYWJvdXTCoDUwwqBjb2x1bW5zLMKgYW5kwqBpZsKgeW91wqBydW7CoCJn
aXTCoGxvZyIswqBtb3N0wqBjb21taXTCoGxvZ3MNCj4gZmlsbMKgYWJvdXTCoDc1wqBjb2x1bW5z
wqBzb8KgdGhhdMKgd2hlbsKgZ2l0wqBhZGRzwqA0wqBzcGFjZXPCoG9mwqBpbmRlbnRhdGlvbizC
oHRoZXkNCj4gZml0wqBuaWNlbHnCoGluwqBhbsKgODAtY29sdW1uwqB0ZXJtaW5hbMKgYW5kwqB0
YWtlwqBhZHZhbnRhZ2XCoG9mwqB0aGXCoHdob2xlwqB3aWR0aC4NCj4gDQo+IEl0J3PCoGVhc2ll
csKgdG/CoHJlYWTCoHdoZW7CoGFsbMKgdGhlwqBjb21taXTCoGxvZ3PCoGFyZcKgcm91Z2hsecKg
dGhlwqBzYW1lDQo+IHdpZHRoLsKgwqBTb8KgcGxlYXNlwqB3cmFwwqB5b3Vyc8KgdG/CoHNvbWV0
aGluZ8KgbGlrZcKgdGhpczoNCj4gDQo+IMKgwqBBZGTCoGRlc2NyaXB0aW9uwqB0b8Kgc3VwcG9y
dMKgQXhpcyzCoEFSVFBFQy04wqBTb0MuwqDCoEFSVFBFQy04wqBpc8KgdGhlwqBTb0MNCj4gwqDC
oHBsYXRmb3JtwqBvZsKgQXhpc8KgQ29tbXVuaWNhdGlvbnPCoGFuZMKgUENJZcKgUEhZwqBpc8Kg
ZGVzaWduZWTCoGJhc2VkwqBvbsKgU2Ftc3VuZw0KPiDCoMKgUEhZLg0KPiANCj4gVGhlwqBQQ0nC
oGRyaXZlcsKgdGhlwqBjb21taXTCoGxvZ8KgaXM6DQo+IA0KPiDCoMKgQWRkwqBzdXBwb3J0wqBB
eGlzLMKgQVJUUEVDLTjCoFNvQy4NCj4gwqDCoEFSVFBFQy04wqBpc8KgdGhlwqBTb0PCoHBsYXRm
b3JtwqBvZsKgQXhpc8KgQ29tbXVuaWNhdGlvbnMuDQo+IA0KPiDCoMKgVGhpc8KgaXPCoGJhc2Vk
wqBvbsKgYXJtNjTCoGFuZMKgc3VwcG9ydMKgR0VONMKgJsKgMmxhbmUuDQo+IMKgwqBUaGlzwqBQ
Q0llwqBjb250cm9sbGVywqBpc8KgYmFzZWTCoG9uwqBEZXNpZ25XYXJlwqBIYXJkd2FyZcKgY29y
ZcKgYW5kwqB1c2VzwqBEZXNpZ25XYQ0KPiDCoMKgcmXCoGNvcmXCoGZ1bmN0aW9uc8KgdG/CoGlt
cGxlbWVudMKgdGhlwqBkcml2ZXIuDQo+IA0KPiDCoMKgInBjaWUtYXJ0cGVjNi7CoGMiwqBzdXBw
b3J0c8KgYXJ0cGVjNsKgYW5kwqBhcnRwZWM3wqBIL1cuDQo+IMKgwqBhcnRwZWM4wqBjYW7CoG5v
dMKgYmXCoGV4cGFuZGVkwqBiZWNhdXNlwqBIL1fCoGNvbmZpZ3VyYXRpb27CoGlzwqBjb21wbGV0
ZWx5wqBkaWZmZXJlDQo+IMKgwqBudMKgZnJvbcKgYXJ0cGVjNi83Lg0KPiDCoMKgcGh5wqBhbmTC
oHN1YsKgY29udHJvbGxlcsKgYXJlwqBkaWZmZXJlbnQuDQo+IA0KPiBUaGlzwqBzaG91bGTCoGJl
wqBzaW1pbGFybHnCoHJld3JhcHBlZMKgdG/CoGZpbGzCoDc1wqBjb2x1bW5zLsKgwqBUaGXCoHNo
b3J0wqBsaW5lc8KgYXJlDQo+IGHCoHNpZ25hbMKgdG/CoHRoZcKgcmVhZGVywqB0aGF0wqAidGhp
c8KgaXPCoHRoZcKgbGFzdMKgbGluZcKgb2bCoGHCoHBhcmFncmFwaCzCoHNvDQo+IGV4cGVjdMKg
YcKgbmV3wqBwYXJhZ3JhcGjCoHRvwqBmb2xsb3cuIg0KPiANCj4gQnV0wqBpbsKgY29tbWl0wqBs
b2dzLMKgcGFyYWdyYXBoc8KgYXJlwqB0eXBpY2FsbHnCoHNlcGFyYXRlZMKgYnnCoGJsYW5rwqBs
aW5lcyzCoHNvwqBhDQo+IHNob3J0wqBsaW5lwqBmb2xsb3dlZMKgbm90wqBiecKgYcKgYmxhbmvC
oGxpbmXCoGJ1dMKgYnnCoHRleHTCoHRoYXTCoCpjb3VsZCrCoGZpdMKgb27CoHRoZQ0KPiBwcmV2
aW91c8Kgc2hvcnTCoGxpbmXCoGlzwqBhwqBjb25mdXNpbmfCoHNpZ25hbC4NCj4gDQo+IFRoaXPC
oHNpbWlsYXLCoHRvwqB0aGXCoFdpa2lwZWRpYcKgc3R5bGU6DQo+IGh0dHBzOi8vZW4ud2lraXBl
ZGlhLm9yZy93aWtpL1dpa2lwZWRpYTpNYW51YWxfb2ZfU3R5bGUvTGF5b3V0I1BhcmFncmFwaHMN
Cj4gDQo+IFRoZcKgUENJwqBkcml2ZXLCoGNvbW1pdMKgbG9nwqBzaG91bGTCoGFsc2/CoGpvaW7C
oCJEZXNpZ25XYXJlIsKgYW5kwqAiZGlmZmVyZW50IiwNCj4gd2hpY2jCoGFyZcKgY3VycmVudGx5
wqBzcGxpdMKgYWNyb3NzwqBsaW5lcy4NCj4gDQo+PsKgScKgd2lsbMKgbW9kaWZ5wqBpdMKgYXPC
oGJlbG93Lg0KPj7CoHMvU0FNU1VOR8KgUEhZL1NhbXN1bmfCoHBoeQ0KPiANCj4gIlBIWSLCoGlz
wqB0eXBpY2FsbHnCoGFsbMKgY2Fwc8KgaW7CoEVuZ2xpc2jCoHRleHQswqBlLmcuLMKgc2VlwqBl
eGFtcGxlc8KgaGVyZToNCj4gaHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvUGh5c2ljYWxf
bGF5ZXIjUEhZDQo+IA0KPiBCam9ybg0KDQpUaGFuayB5b3UgdmVyeSBtdWNoIGZvciB5b3VyIGRl
dGFpbGVkIHJldmlldy4NCkkgd2lsbCBmaXggdGhlIGNvbW1pdCBtc2dzIGFzIHlvdXIgZGVzY3Jp
cHRpb24uDQoNCkJlc3QgcmVnYXJkcywNCldhbmdzZW9rIExlZQoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
