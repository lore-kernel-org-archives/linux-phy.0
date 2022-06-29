Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BAD1C43334
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jun 2022 07:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:CC:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T3crBrDGwzkcQKANvyhn3NtNBlyeTIgQFvt44JmXHko=; b=y2URBC9bd1U6oD
	Qhd8kSBvr/ws4tdRVck8+ikBmibyEExBTk1Gr56eYsl/2jC4DK0Yex+BLm1ynyTG6EJrhCJsnQ+Tz
	fFLY481q7zgW5e740QXjaWkYEcUYiV18+AG3fXA3Rv1naEuWn1oaq75hS8Pr5hOJK9ySaQU63/M6a
	tIrIe9h9TVSDP7YjGQOSwXKYOYsaQ+OkA/fP924/E8KJaEEy7G8q7eCnl6zZAI1YBmfifKVmpsc+Z
	D3zN5XwhvSvdc5GoP/zOsTO7XpkKQBRfPnrOeDMV8CRHSFetftVNlfBMyBdGZVQ4nydVD/3jYSB5n
	sFwT86+eWxiueQYNMoww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RyO-00A3ns-CL; Wed, 29 Jun 2022 07:18:52 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RyE-00A3kD-TX
	for linux-phy@lists.infradead.org; Wed, 29 Jun 2022 07:18:46 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20220629071831epoutp02f15cc31e4ff36adf0f2868e0fe429681~9BkBSw5U20496604966epoutp02d
	for <linux-phy@lists.infradead.org>; Wed, 29 Jun 2022 07:18:31 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20220629071831epoutp02f15cc31e4ff36adf0f2868e0fe429681~9BkBSw5U20496604966epoutp02d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1656487111;
	bh=1wS6cRdRjTdFjT3S6Lk+8PVzesqj0XsuvTbIfj3KJOI=;
	h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
	b=ItIV6k3kAysuTVNtmru2Lfh+kwOHeq48XGZ7C+ATdwo/Y/EovLapo7iKA0zQ05Eva
	 iiZdzb4masqIpUsY5Q9yT3+aDJ/7qwoHgo4AF8kL+2wl2I1ZQJdJyYygbFOKkAQNgb
	 9NAILRfk40ujnZV9iJp3f+wHTirCsHv1L9jFneWc=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTP id
	20220629071830epcas2p16267bd2ee8f19f7cc80872ccc82441de~9BkAzc2M20582005820epcas2p1T;
	Wed, 29 Jun 2022 07:18:30 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.36.97]) by
	epsnrtp2.localdomain (Postfix) with ESMTP id 4LXt9L1LCNz4x9Pt; Wed, 29 Jun
	2022 07:18:30 +0000 (GMT)
X-AuditID: b6c32a47-5e1ff700000025aa-00-62bbfcc50a4e
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
	epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
	D4.38.09642.5CCFBB26; Wed, 29 Jun 2022 16:18:30 +0900 (KST)
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
In-Reply-To: <20220620083821epcms2p57a65984523a0f2a3815e4873e8bfc6df@epcms2p5>
X-CPGS-Detection: blocking_info_exchange
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20220629071829epcms2p65eab75702495a939f3f6e4ea020181de@epcms2p6>
Date: Wed, 29 Jun 2022 16:18:29 +0900
X-CMS-MailID: 20220629071829epcms2p65eab75702495a939f3f6e4ea020181de
X-Sendblock-Type: AUTO_CONFIDENTIAL
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrOJsWRmVeSWpSXmKPExsWy7bCmhe6xP7uTDFYeZbJY0pRh8fKQpsX8
	I+dYLXbPWM5kMXPqGWaL54dmMVt8alG1uPC0h83i5ax7bBbnz29gt2jo+c1qceTNR2aL/cdX
	Mllc3jWHzeLsvONsFhNWfWOxePP7BbvFucWZFq17j7Bb7Lxzgtni19Y/TA6iHmvmrWH0uL4u
	wGPBplKPTas62TyeXJnO5LF5Sb1H35ZVjB7Hb2xn8vi8SS6AMyrbJiM1MSW1SCE1Lzk/JTMv
	3VbJOzjeOd7UzMBQ19DSwlxJIS8xN9VWycUnQNctMwfoMyWFssScUqBQQGJxsZK+nU1RfmlJ
	qkJGfnGJrVJqQUpOgXmBXnFibnFpXrpeXmqJlaGBgZEpUGFCdsbaF29YC76ZV/QsPsXUwLjM
	rIuRk0NCwETi6NtOxi5GLg4hgR2MErf2vGfvYuTg4BUQlPi7QxikRljAWWLX/01sILaQgJLE
	jjXzmCHi+hLXV3SzgthsAroS/xa/ZAOZIyIwi01iydelTCAOs8ACRon9v/cxQmzjlZjR/pQF
	wpaW2L58K1icU8BP4vH95UwQcQ2JH8t6mSFsUYmbq9+yw9jvj82HmiMi0XrvLFSNoMSDn7uh
	4lISC54cYoWwqyX2//0NNbOBUaL/firIYxJAV++4bgwS5hXwlbg0dyMbSJhFQFXi9VMviAoX
	idcPuEEqmAW0JZYtfM0MEmYW0JRYv0sfokJZ4sgtFpiXGjb+ZkdnMwvwSXQc/gsX3zHvCdQp
	ahLzVu5knsCoPAsRzLOQ7JqFsGsBI/MqRrHUguLc9NRiowJjeMwm5+duYgSncC33HYwz3n7Q
	O8TIxMF4iFGCg1lJhHfhmZ1JQrwpiZVVqUX58UWlOanFhxhNgX6cyCwlmpwPzCJ5JfGGJpYG
	JmZmhuZGpgbmSuK8XikbEoUE0hNLUrNTUwtSi2D6mDg4pRqYkrYfmn9AgCvULH7FpCeX98ld
	P/yQfaKOfwOHvxPD69hzrDu6DfLXZV80TZ74K+df27wJMrnfXdLmP74upBiysHjL9lnqRsea
	xXe9rU/6rPFi3yH/zU17w9+YmrIl/zBrDzQR2mSgZrbUZCLD3ai/vGK7NEyW5PuKpS7Qb5b+
	p2w7l/2enbJlTba2u4h8/cWqSycOhxtE9lqVqH5OVVEPuPHDs6Lb9tYpPnHVFe5eLz/5737Q
	GXb7cP6WvNuT9vGkKzx4dvPt9x6rmBkH2bJcA4rmRta5X+NrzHssNv1czMGqcOGSaMmijh9c
	n5b8bfkeXvjh5g7+T44/H/TMqN6qvd2/7/B2gx8Lt/5juHxCiaU4I9FQi7moOBEAlf9ktWoE
	AAA=
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7
References: <20220620083821epcms2p57a65984523a0f2a3815e4873e8bfc6df@epcms2p5>
	<4b4b08af-887b-89e9-b4a5-93e7d8a03222@kernel.org>
	<20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p7>
	<20220614012916epcms2p5cf8d55e7420dea10bb4a05d91aaf99dd@epcms2p5>
	<CGME20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p6>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220629_001844_295952_5880C64D 
X-CRM114-Status: GOOD (  12.55  )
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

SnVzdCBhIGdlbnRsZSBwaW5nIGZvciB0aGlzIHBhdGNoLCBpZiBhbnkgY29uY2VybiBvbiB0aGlz
IHBhdGNoIHBsZWFzZSBsZXQgbWUga25vdy4KCgpPbsKgMjAvMDYvMjAyMsKgMTc6MzgswqBXYW5n
c2Vva8KgTGVlwqB3cm90ZToNCj4gT27CoDE3LzA2LzIwMjLCoDA3OjU5LMKgS3J6eXN6dG9mwqBL
b3psb3dza2nCoHdyb3RlOg0KPj7CoE9uwqAxMy8wNi8yMDIywqAxODoyOSzCoFdhbmdzZW9rwqBM
ZWXCoHdyb3RlOg0KPj4+wqBTaWduZWQtb2ZmLWJ5OsKgV2FuZ3Nlb2vCoExlZcKgPHdhbmdzZW9r
LmxlZUBzYW1zdW5nLmNvbT4NCj4+PsKgLS0tDQo+Pj7CoHYyLT52M8KgOg0KPj4+wqAtbW9kaWZ5
wqB2ZXJzaW9uwqBoaXN0b3J5wqB0b8KgZml0wqB0aGXCoGxpbnV4wqBjb21taXTCoHJ1bGUNCj4+
PsKgLXJlbW92ZcKgJ0RldmljZcKgVHJlZcKgQmluZGluZ3MnwqBvbsKgdGl0bGUNCj4+PsKgLXJl
bW92ZcKgY2xvY2stbmFtZXPCoGVudHJpZXMNCj4+PsKgLWNoYW5nZcKgbm9kZcKgbmFtZcKgdG/C
oHNvY8KgZnJvbcKgYXJ0cGVjOMKgb27CoGV4Y2FtcGxlcw0KPj4+wqANCj4+PsKgdjEtPnYywqA6
DQo+Pj7CoC0nbWFrZcKgZHRfYmluZGluZ19jaGVjayfCoHJlc3VsdMKgaW1wcm92ZW1lbnQNCj4+
PsKgLUFkZMKgdGhlwqBtaXNzaW5nwqBwcm9wZXJ0ecKgbGlzdA0KPj4+wqAtQWxpZ27CoHRoZcKg
aW5kZW50YXRpb27CoG9mwqBjb250aW51ZWTCoGxpbmVzL2VudHJpZXMNCj4+PsKgLS0tDQo+Pj7C
oMKgLi4uL2JpbmRpbmdzL3BoeS9heGlzLGFydHBlYzgtcGNpZS1waHkueWFtbMKgwqDCoMKgwqDC
oMKgwqB8wqA3M8KgKysrKysrKysrKysrKysrKysrKysrKw0KPj4+wqDCoDHCoGZpbGXCoGNoYW5n
ZWQswqA3M8KgaW5zZXJ0aW9ucygrKQ0KPj4+wqDCoGNyZWF0ZcKgbW9kZcKgMTAwNjQ0wqBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2F4aXMsYXJ0cGVjOC1wY2llLXBoeS55
YW1sDQo+Pj7CoA0KPj4+wqBkaWZmwqAtLWdpdMKgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGh5L2F4aXMsYXJ0cGVjOC1wY2llLXBoeS55YW1swqBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYXhpcyxhcnRwZWM4LXBjaWUtcGh5LnlhbWwNCj4+PsKg
bmV3wqBmaWxlwqBtb2RlwqAxMDA2NDQNCj4+PsKgaW5kZXjCoDAwMDAwMDAuLjMxNmI3NzQNCj4+
PsKgLS0twqAvZGV2L251bGwNCj4+PsKgKysrwqBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvYXhpcyxhcnRwZWM4LXBjaWUtcGh5LnlhbWwNCj4+PsKgQEDCoC0wLDDCoCsx
LDczwqBAQA0KPj4+wqArI8KgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6wqBHUEwtMi4wLW9ubHnC
oE9SwqBCU0QtMi1DbGF1c2UNCj4+PsKgKyVZQU1MwqAxLjINCj4+PsKgKy0tLQ0KPj4+wqArJGlk
OsKgaHR0cHM6Ly9wcm90ZWN0Mi5maXJlZXllLmNvbS92MS91cmw/az04NGY2YThjMC1lNTdkYmRk
OS04NGY3MjM4Zi03NGZlNDg1Y2JmZWMtZTgxYmQ3OWJmZDFmZjQ0MiZxPTEmZT02NzM5YWYwNi03
MzBjLTQ4ZGItYWVmOC0wMjZhOWFhZWUxYjQmdT1odHRwJTNBJTJGJTJGZGV2aWNldHJlZS5vcmcl
MkZzY2hlbWFzJTJGcGh5JTJGYXhpcyUyQ2FydHBlYzgtcGNpZS1waHkueWFtbCUyMw0KPj4+wqAr
JHNjaGVtYTrCoGh0dHBzOi8vcHJvdGVjdDIuZmlyZWV5ZS5jb20vdjEvdXJsP2s9YjRmMWE0YmEt
ZDU3YWIxYTMtYjRmMDJmZjUtNzRmZTQ4NWNiZmVjLTdmODg1Y2JlODJkYzc4NjAmcT0xJmU9Njcz
OWFmMDYtNzMwYy00OGRiLWFlZjgtMDI2YTlhYWVlMWI0JnU9aHR0cCUzQSUyRiUyRmRldmljZXRy
ZWUub3JnJTJGbWV0YS1zY2hlbWFzJTJGY29yZS55YW1sJTIzDQo+Pj7CoCsNCj4+PsKgK3RpdGxl
OsKgQVJUUEVDLTjCoFNvQ8KgUENJZcKgUEhZDQo+Pj7CoCsNCj4+PsKgK21haW50YWluZXJzOg0K
Pj4+wqArwqDCoC3CoEplc3BlcsKgTmlsc3NvbsKgPGplc3Blci5uaWxzc29uQGF4aXMuY29tPg0K
Pj4+wqArDQo+Pj7CoCtwcm9wZXJ0aWVzOg0KPj4+wqArwqDCoGNvbXBhdGlibGU6DQo+Pj7CoCvC
oMKgwqDCoGNvbnN0OsKgYXhpcyxhcnRwZWM4LXBjaWUtcGh5DQo+Pj7CoCsNCj4+PsKgK8KgwqBy
ZWc6DQo+Pj7CoCvCoMKgwqDCoGl0ZW1zOg0KPj4+wqArwqDCoMKgwqDCoMKgLcKgZGVzY3JpcHRp
b246wqBQSFnCoHJlZ2lzdGVycy4NCj4+PsKgK8KgwqDCoMKgwqDCoC3CoGRlc2NyaXB0aW9uOsKg
UEhZwqBjb2RpbmfCoHN1YmxheWVywqByZWdpc3RlcnMuDQo+Pj7CoCsNCj4+PsKgK8KgwqByZWct
bmFtZXM6DQo+Pj7CoCvCoMKgwqDCoGl0ZW1zOg0KPj4+wqArwqDCoMKgwqDCoMKgLcKgY29uc3Q6
wqBwaHkNCj4+PsKgK8KgwqDCoMKgwqDCoC3CoGNvbnN0OsKgcGNzDQo+Pj7CoCsNCj4+PsKgK8Kg
wqAiI3BoeS1jZWxscyI6DQo+Pj7CoCvCoMKgwqDCoGNvbnN0OsKgMA0KPj4+wqArDQo+Pj7CoCvC
oMKgY2xvY2tzOg0KPj4+wqArwqDCoMKgwqBpdGVtczoNCj4+PsKgK8KgwqDCoMKgwqDCoC3CoGRl
c2NyaXB0aW9uOsKgUENJZcKgUEhZwqByZWZlcmVuY2XCoGNsb2NrDQo+IA0KPiByZWZlcsKgdG/C
oHNhbXBsZS1zY2hlbWEueWFtbCzCoGV2ZW7CoGlmwqB0aGXCoGNsb2NrwqBpdGVtwqBpc8Kgc2lu
Z2xlLA0KPiBpdMKgc2VlbXPCoHRvwqBiZcKgdXNlZMKgYXPCoGZvbGxvd3MuDQo+IA0KPiBjbG9j
a3M6DQo+IMKgwqBtYXhJdGVtczrCoDENCj4gDQo+IGNsb2NrLW5hbWVzOg0KPiDCoMKgaXRlbXM6
DQo+IMKgwqDCoMKgLcKgY29uc3Q6wqByZWYNCj4gDQo+IElmwqBvbmx5wqAiY2xvY2tzOiLCoGFy
ZcKgZGVmaW5lwqBhbmTCoGNsb2NrLW5hbWVzwqBhcmXCoG5vdMKgZGVmaW5lLA0KPiB0aGXCoGZv
bGxvd2luZ8Kgd2FybmluZ8Kgb2NjdXJzLg0KPiAiJ2Nsb2NrLW5hbWVzJ8KgZG9lc8Kgbm90wqBt
YXRjaMKgYW55wqBvZsKgdGhlwqByZWdleGVzIg0KPiANCj4+PsKgKw0KPj4+wqArwqDCoG51bS1s
YW5lczoNCj4+PsKgK8KgwqDCoMKgY29uc3Q6wqAyDQo+Pj7CoCsNCj4+PsKgK8KgwqBsY3BsbC1y
ZWYtY2xrOg0KPj4+wqArwqDCoMKgwqBjb25zdDrCoDENCj4+wqANCj4+wqBVbmtub3duwqBmaWVs
ZC4uLsKgY3VzdG9twqBwcm9wZXJ0aWVzwqBuZWVkwqB2ZW5kb3LCoChheGlzLCkswqB0eXBlwqAo
Ym9vbGVhbikNCj4+wqBhbmTCoGRlc2NyaXB0aW9uLg0KPj7CoA0KPiANCj4gImxjcGwtcmVmLWNs
ayLCoGhhc8KgYW7CoGVudW3CoHR5cGXCoHZhbHVlLMKgc2/CoGnCoHdpbGzCoG1vZGlmecKgaXTC
oGFzwqBiZWxvdy4NCj4gDQo+IA0KPiBheGlzLGxjcGxsLXJlZi1jbGs6DQo+IMKgwqBkZXNjcmlw
dGlvbjoNCj4gwqDCoMKgwqBzZWxlY3TCoHRoZcKgcmVmZXJlbmNlwqBjbG9ja8Kgb2bCoHBoecKg
YW5kwqBpbml0aWFsaXphdGlvbsKgaXPCoHBlcmZvcm1lZA0KPiDCoMKgwqDCoHdpdGjCoHRoZcKg
cmVmZXJlbmNlwqBjbG9ja8KgYWNjb3JkaW5nwqB0b8KgdGhlwqBzZWxlY3RlZMKgdmFsdWUuDQo+
IMKgwqAkcmVmOsKgL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvdWludDMyDQo+IMKg
wqBlbnVtOsKgW8KgMCzCoDEswqAyLMKgMyzCoDTCoF0NCj4gDQo+Pj7CoCsNCj4+PsKgK3JlcXVp
cmVkOg0KPj4+wqArwqDCoC3CoGNvbXBhdGlibGUNCj4+PsKgK8KgwqAtwqByZWcNCj4+PsKgK8Kg
wqAtwqByZWctbmFtZXMNCj4+PsKgK8KgwqAtwqAiI3BoeS1jZWxscyINCj4+PsKgK8KgwqAtwqBj
bG9ja3MNCj4+PsKgK8KgwqAtwqBjbG9jay1uYW1lcw0KPj4+wqArwqDCoC3CoHNhbXN1bmcsZnN5
cy1zeXNyZWcNCj4+wqANCj4+wqBTYW1lwqBwcm9ibGVtwqBhc8KgaW7CoHBhdGNowqAjMS4NCj4+
wqANCj4gDQo+IEnCoHdpbGzCoGFkZMKgdGhlwqBmb2xsb3dpbmfCoGl0ZW1zwqB0b8KgdGhlwqBw
cm9wZXJ0eS4NCj4gDQo+IHNhbXN1bmcsZnN5cy1zeXNyZWc6DQo+IMKgwqBkZXNjcmlwdGlvbjoN
Cj4gwqDCoMKgwqBQaGFuZGxlwqB0b8Kgc3lzdGVtwqByZWdpc3RlcsKgb2bCoGZzeXPCoGJsb2Nr
Lg0KPiDCoMKgJHJlZjrCoC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3BoYW5kbGUN
Cj4gDQo+Pj7CoCvCoMKgLcKgbnVtLWxhbmVzDQo+Pj7CoCvCoMKgLcKgbGNwbGwtcmVmLWNsaw0K
Pj4+wqArDQo+Pj7CoCthZGRpdGlvbmFsUHJvcGVydGllczrCoHRydWUNCj4+wqANCj4+wqBObyzC
oHRoaXPCoG11c3TCoGJlwqBmYWxzZS4NCj4+wqANCj4gDQo+IHllcyzCoGnCoG1pc3PCoGl0LsKg
ScKgd2lsbMKgZml4wqB0aGlzLg0KPiANCj4+wqBCZXN0wqByZWdhcmRzLA0KPj7CoEtyenlzenRv
Zg0KPiANCj4gVGhhbmvCoHlvdcKgZm9ywqBraW5kbmVzc8KgcmVpdmV3Lg0KPiANCj4gQmVzdMKg
cmVnYXJkcywNCj4gV2FuZ3Nlb2vCoExlZQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
