Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9248C43334
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jun 2022 07:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:CC
	:To:From:Subject:Mime-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=nzOtZpeq3OTmdYU1cH/wtbtuCIm4rOzqummifkAqmKw=; b=qwmE+lBXVnbIbX
	Gktg3wTxHksdo8DgFD53+x8Ld5VDaBiVnKTnwqCbLtIkt/TYK8Oz5Ru3ZkDpaF8CjHIxZIEQUXhXs
	fLKDNJKRVq46hAY5gCnVFLUFZlM5zHlfpoc6AmQhus+LnO3cEYelE1CTwAcoQyxjntV9Swm+HoTZQ
	i4Fv3t/S8m9iesbUG3AEznjIXfNEw+AxTTVwbKAarC55JMoP2S0bsLYV6zIyk7yFn/lpCg9hzJgWh
	KlUq5Nb8X8/+FaysUIC/uV0msfSugh5J9OLtYxXCcHyZ3inXk2kaJLmuxyixNvWFwt/PgveNMG/i6
	ebnKPiMZYUeI8ZivsvvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3ugn-009342-BY; Wed, 22 Jun 2022 07:22:13 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3ugj-00931y-EY
	for linux-phy@lists.infradead.org; Wed, 22 Jun 2022 07:22:11 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20220622072201epoutp02bfaed4fdf31bb9abf6bb4e63d39032f2~64GFmbgrL1378813788epoutp02s
	for <linux-phy@lists.infradead.org>; Wed, 22 Jun 2022 07:22:01 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20220622072201epoutp02bfaed4fdf31bb9abf6bb4e63d39032f2~64GFmbgrL1378813788epoutp02s
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1655882521;
	bh=OsCBkB/Hg8OJ6ApY98wwN1LH5i0yIp4If2YhK1U5tNc=;
	h=Subject:Reply-To:From:To:CC:Date:References:From;
	b=LsXJS/0K2YwssEUmNyNh/bfplOx82rw9DPxgz2Db44Tg9VxO3BxKHKh+wS0qVHFww
	 z0C4h4T9cVM4b28Gq6y0HTSzTrT+XfwmNEKhRQoGqSBZmM0CpTibTcynV/O/zY0AxB
	 kloZaAkVgUJH5dFTgNMRpc1Z4EQvWCrB8+mvUStU=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTP id
	20220622072200epcas2p2ef8275ffd36cfb4ec8d194e2788cf415~64GEi9OP42374823748epcas2p2O;
	Wed, 22 Jun 2022 07:22:00 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.36.90]) by
	epsnrtp3.localdomain (Postfix) with ESMTP id 4LSZZc1QlDz4x9QH; Wed, 22 Jun
	2022 07:22:00 +0000 (GMT)
X-AuditID: b6c32a47-5f7ff700000025aa-f3-62b2c31848a1
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
	epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
	29.23.09642.813C2B26; Wed, 22 Jun 2022 16:22:00 +0900 (KST)
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
X-CPGS-Detection: blocking_info_exchange
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20220622072159epcms2p52a21560a7e60cffd13ea70e55ac15428@epcms2p5>
Date: Wed, 22 Jun 2022 16:21:59 +0900
X-CMS-MailID: 20220622072159epcms2p52a21560a7e60cffd13ea70e55ac15428
X-Sendblock-Type: AUTO_CONFIDENTIAL
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrLJsWRmVeSWpSXmKPExsWy7bCmma7E4U1JBstusFosacqweHlI02L+
	kXOsFrtnLGeymDn1DLPF80OzmC0+tahaXHjaw2bxctY9Nou9r7eyWzT0/Ga1OPLmI7PF/uMr
	mSwu75rDZnF23nE2iwmrvrFYvPn9gt3i3OJMi9a9R9gtdt45wWzxa+sfJgdRjzXz1jB6XF8X
	4LFgU6nHplWdbB53ru1h83hyZTqTx+Yl9R59W1Yxehy/sZ3J4/MmuQCuqGybjNTElNQihdS8
	5PyUzLx0WyXv4HjneFMzA0NdQ0sLcyWFvMTcVFslF58AXbfMHKD3lBTKEnNKgUIBicXFSvp2
	NkX5pSWpChn5xSW2SqkFKTkF5gV6xYm5xaV56Xp5qSVWhgYGRqZAhQnZGauuPGMr2KZX0Xtu
	D2sD4xzdLkZODgkBE4nmba8Zuxi5OIQEdjBK7Pq1ga2LkYODV0BQ4u8OYZAaYQEvibXrXrGA
	2EICShI71sxjhojrS1xf0c0KYrMJ6Er8W/ySDWSOiMBqNolZO18wgTjMAgsYJfb/3scIsY1X
	Ykb7UxYIW1pi+/KtUHENiR/LepkhbFGJm6vfssPY74/Nh6oRkWi9dxaqRlDiwc/dUHEpiQVP
	DrFC2NUS+//+ZoKwGxgl+u+ngjwjAXTpjuvGIGFeAV+J1t5usPEsAqoSrQunQo10kbg4+wzY
	acwC2hLLFr5mBmllFtCUWL9LH2KKssSRWywwjzRs/M2OzmYW4JPoOPwXLr5j3hOoY9Qk5q3c
	yQwxRkZi60v/CYxKsxDhPAvJ2lkIaxcwMq9iFEstKM5NTy02KjCGR21yfu4mRnA613LfwTjj
	7Qe9Q4xMHIyHGCU4mJVEeG24NyQJ8aYkVlalFuXHF5XmpBYfYjQFengis5Rocj4wo+SVxBua
	WBqYmJkZmhuZGpgrifN6pWxIFBJITyxJzU5NLUgtgulj4uCUamCKvf3EXXyStmDOhxMPX61d
	vlFO8NW6u1ttTlY+3Pt24fkpc+33HC+NfuIvFGnTuChiuuNUnU9LZF5f4ld8wJqxxm67Bsd3
	4esy9jI8Sc8W/mB+2v/Q3mDzy3wZr7DPlX+3NbDVJXOKqzEUp/xujuPPT9vuabVniaZkc+a8
	7RcdmSyPSDb1tvqsqeG+9/YVm9ibQ6b572ZLLHnrpSrzMP+xQpGJX+DuOIagoD0f9j9ccn7v
	0t+FH6U6Nu9bqj57D+ujt3X167wUnu2cKbD1ucLRhFts14MvL+ZIKH+aECyYYaj29WRuoPOJ
	7zvl88yyV54QfsfA/qVy3SuPi+3XL8geDX5+cofJsjvLQ8XOtBa9UGIpzkg01GIuKk4EABHd
	qzBwBAAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7
References: <CGME20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p5>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220622_002209_906737_A014019B 
X-CRM114-Status: GOOD (  10.62  )
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

T27CoDIxLzA2LzIwMjLCoDIxOjQ0LMKgS3J6eXN6dG9mwqBLb3psb3dza2nCoHdyb3RlOg0KPsKg
T27CoDIxLzA2LzIwMjLCoDA5OjQyLMKgV2FuZ3Nlb2vCoExlZcKgd3JvdGU6DQo+Pj4+wqDCoA0K
Pj4+PsKgwqBzYW1zdW5nLHN5c2Nvbi1idXMtcy1mc3lzOg0KPj4+PsKgwqDCoMKgZGVzY3JpcHRp
b246DQo+Pj4+wqDCoMKgwqDCoMKgUGhhbmRsZcKgdG/CoGJ1cy1zwqBwYXRowqBvZsKgZnN5c8Kg
YmxvY2sswqB0aGlzwqByZWdpc3Rlcg0KPj4+PsKgwqDCoMKgwqDCoGFyZcKgdXNlZMKgZm9ywqBl
bmFibGluZ8KgYnVzLXMuDQo+Pj4+wqDCoMKgwqAkcmVmOsKgL3NjaGVtYXMvdHlwZXMueWFtbCMv
ZGVmaW5pdGlvbnMvcGhhbmRsZQ0KPj4+PsKgwqANCj4+Pj7CoMKgc2Ftc3VuZyxzeXNjb24tYnVz
LXAtZnN5czoNCj4+Pj7CoMKgwqDCoGRlc2NyaXB0aW9uOg0KPj4+PsKgwqDCoMKgwqDCoFBoYW5k
bGXCoHRvwqBidXMtcMKgcGF0aMKgb2bCoGZzeXPCoGJsb2NrLMKgdGhpc8KgcmVnaXN0ZXINCj4+
Pj7CoMKgwqDCoMKgwqBhcmXCoHVzZWTCoGZvcsKgZW5hYmxpbmfCoGJ1cy1wLg0KPj4+PsKgwqDC
oMKgJHJlZjrCoC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3BoYW5kbGUNCj4+Pg0K
Pj4+wqBUaGlzwqB0d2/CoGxvb2vCoHVuc3BlY2lmaWPCoGFuZMKgaGFja3nCoHdvcmthcm91bmTC
oGZvcsKgbWlzc2luZ8KgZHJpdmVycy7CoExvb2tzDQo+Pj7CoGxpa2XCoGluc3RlYWTCoG9mwqBp
bXBsZW1lbnRpbmfCoGludGVyY29ubmVjdMKgb3LCoGNsb2NrwqBkcml2ZXIswqB5b3XCoGRlY2lk
ZWQNCj4+PsKgdG/CoHBva2XCoHNvbWXCoG90aGVywqByZWdpc3RlcnMuwqBXaHnCoHRoaXPCoGNh
bm5vdMKgYmXCoGFuwqBpbnRlcmNvbm5lY3TCoGRyaXZlcj8NCj4+Pg0KPj4+DQo+PsKgDQo+PsKg
YnVzLXMswqBidXMtcMKgaXPCoGHCoHJlZ2lzdGVywqB0aGF0wqBleGlzdHPCoGluwqB0aGXCoHN5
c3JlZ8Kgb2bCoHRoZcKgZnN5c8KgYmxvY2suDQo+PsKgSXTCoGlzwqB0aGXCoHNhbWXCoGJsb2Nr
wqBhc8KgImZzeXMtc3lzcmVnIsKgYnV0wqBpc8Kgc2VwYXJhdGVkwqBzZXBhcmF0ZWx5wqBpbg0K
Pj7CoGhhcmR3YXJlLg0KPsKgDQo+wqBUd2/CoHBvaW50c8KgaGVyZToNCj7CoDEuwqBJZsKgaXTC
oGlzwqBpbsKgRlNZUyzCoHdoecKgaXTCoGNhbm5vdMKgYmXCoGFjY2Vzc2VkwqB3aXRowqBzYW1z
dW5nLGZzeXMtc3lzcmVnPw0KPsKgMi7CoElmwqBpdMKgaXPCoG9ubHnCoHJlZ2lzdGVyLMKgc2h1
bGTCoGJlwqBkZXNjcmliZWTCoGxpa2XCoHRoaXMuwqBZb3XCoG11c3QNCj7CoGRlc2NyaWJlwqBp
dGVtOg0KPsKgaHR0cHM6Ly9wcm90ZWN0Mi5maXJlZXllLmNvbS92MS91cmw/az0wZjUyOWE1Ny01
MGM5YTMzMi0wZjUzMTExOC0wMDBiYWJmZjMyZTMtNTA5MzhkODE5ODA3N2Q1OSZxPTEmZT0zMjI4
NGU2OS1iYmVkLTRkMDktYjZkNi0wYTQzNDI4YWViZjUmdT1odHRwcyUzQSUyRiUyRmVsaXhpci5i
b290bGluLmNvbSUyRmxpbnV4JTJGdjUuMTgtcmMxJTJGc291cmNlJTJGRG9jdW1lbnRhdGlvbiUy
RmRldmljZXRyZWUlMkZiaW5kaW5ncyUyRnNvYyUyRnNhbXN1bmclMkZleHlub3MtdXNpLnlhbWwl
MjNMNDINCj7CoA0KDQpJdMKgd291bGTCoGJlwqBiZXR0ZXLCoHRvwqBhY2Nlc3PCoHdpdGjCoGZz
eXMtc3lzcmVnLMKgYnV0wqB0aGVpcsKgaC93wqBhZGRyZXNzwqBhcmUNCmZhcsKgZnJvbcKgZWFj
aMKgb3RoZXIuwqBUaGXCoGZzeXPCoGJsb2NrwqBjb25zaXN0c8Kgb2bCoGHCoHN5c3RlbcKgcmVn
aXN0ZXLCoGFuZMKgYW4NCmFkZGl0aW9uYWzCoGNvbnRyb2zCoHN5c3RlbcKgcmVnaXN0ZXIuwqAi
YnVzLXMtZnN5cyLCoGFuZMKgImJ1cy1wLWZzeXMiwqBhcmUNCmFkZGl0aW9uYWzCoGNvbnRyb2zC
oHN5c3RlbcKgcmVnaXN0ZXIuwqBzeXNyZWfCoGFuZMKgYWRkaXRpb25hbMKgY29udHJvbMKgc3lz
cmVnDQphZGRyZXNzZXPCoGFyZcKgZmFywqBmcm9twqBlYWNowqBvdGhlcsKgYW5kwqB0aGVyZcKg
YXJlwqBoL3fCoHJlZ2lzdGVyc8KgdGhhdMKgcGVyZm9ybQ0KZGlmZmVyZW50wqBmdW5jdGlvbnPC
oGJldHdlZW7CoHRoZW0uDQoNCj4+wqBTbyzCoGdldMKgcmVzb3VyY2XCoGlzwqBwZXJmb3JtZWTC
oHNlcGFyYXRlbHnCoGZyb23CoCJmc3lzLXN5c3JlZyIuDQo+PsKgVGhlecKgc2V0wqBwY2llwqBz
bGF2ZSzCoGRiacKgcmVsYXRlZMKgY29udHJvbMKgc2V0dGluZ3MsDQo+PsKgbmFtaW5nwqAiYnVz
LXgiwqBzZWVtc8KgdG/CoGJlwqBpbnRlcmNvbm5lY3QuDQo+PsKgScKgd2lsbMKgYWRkwqB0aGlz
wqBkZXNjcmlwdGlvbsKgdG/CoHByb3BlcnR5Lg0KPj7CoEnCoGRvbid0wqB0aGlua8KgaXTCoG5l
ZWTCoHRvwqB1c2XCoHRoZcKgaW50ZXJjb25uZWN0wqBkcml2ZXIsDQo+PsKgc2/CoHBsZWFzZcKg
bGV0wqBtZcKga25vd8KgeW91csKgb3Bpbmlvbi4NCj7CoA0KPsKgUGxlYXNlwqBkb2N1bWVudMKg
Ym90aMKgaW7CoHRoZcKgYmluZGluZ3PCoGFuZMKgaW7CoHRoZcKgZHJpdmVywqB1c2FnZcKgb2bC
oHRoaXMNCj7CoHJlZ2lzdGVyLsKgV3JpdGluZ8KgdGhlcmXCoCIwIsKgb3LCoCIxIsKgaXPCoG5v
dMKgZW5vdWdoLsKgSWbCoHRoZcKgZG9jdW1lbnRhdGlvbg0KPsKgaXPCoGdvb2QswqBJwqBhbcKg
ZmluZcKgd2l0aMKgaXQuwqBJZsKgdGhlwqBleHBsYW5hdGlvbsKgaXPCoG9iZnVzY2F0ZWQvbm90
DQo+wqBzdWZmaWNpZW50LMKgaXTCoHdpbGzCoGxvb2vCoGxpa2XCoGF2b2lkaW5nwqB0b8KgaW1w
bGVtZW50wqBhwqBkcml2ZXIswqB3aGljaMKgSQ0KPsKgZG9uJ3TCoHdhbnTCoHRvwqBhY2NlcHQu
DQo+wqANCg0KScKgdGhpbmvCoGnCoHNob3VsZMKgYWRkwqBlbm91Z2jCoGRlc2NyaXB0aW9uLsKg
SXPCoGl0wqBzdWZmaWNpZW50wqB0b8KgbW9kaWZ5DQp0aGXCoG5hbWXCoGFuZMKgZGVzY3JpcHRp
b27CoG9mwqBwcm9wZXJ0ecKgbGlrZcKgdGhpcz8NCg0Kc2Ftc3VuZyxmc3lzLWJ1cy1zOg0KwqDC
oGRlc2NyaXB0aW9uOg0KwqDCoMKgwqBQaGFuZGxlwqB0b8KgYnVzLXPCoG9mwqBmc3lzwqBibG9j
ayzCoHRoaXPCoHJlZ2lzdGVyDQrCoMKgwqDCoGlzwqBhZGRpdGlvbmFswqBjb250cm9swqBzeXNy
ZWfCoGluwqBmc3lzwqBibG9ja8KgYW5kDQrCoMKgwqDCoHRoaXPCoGlzwqB1c2VkwqBmb3LCoHBj
aWXCoHNsYXZlwqBjb250cm9swqBzZXR0aW5nLg0KwqDCoCRyZWY6wqAvc2NoZW1hcy90eXBlcy55
YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlDQoNCnNhbXN1bmcsZnN5cy1idXMtcDoNCsKgwqBkZXNj
cmlwdGlvbjoNCsKgwqDCoMKgUGhhbmRsZcKgdG/CoGJ1cy1wwqBvZsKgZnN5c8KgYmxvY2sswqB0
aGlzwqByZWdpc3Rlcg0KwqDCoMKgwqBpc8KgYWRkaXRpb25hbMKgY29udHJvbMKgc3lzcmVnwqBp
bsKgZnN5c8KgYmxvY2vCoGFuZA0KwqDCoMKgwqB0aGlzwqBpc8KgdXNlZMKgZm9ywqBwY2llwqBk
YmnCoGNvbnRyb2zCoHNldHRpbmcuDQrCoMKgJHJlZjrCoC9zY2hlbWFzL3R5cGVzLnlhbWwjL2Rl
ZmluaXRpb25zL3BoYW5kbGUNCg0KPsKgQmVzdMKgcmVnYXJkcywNCj7CoEtyenlzenRvZg0KDQpU
aGFua8KgeW91wqBmb3LCoGtpbmRuZXNzwqByZWl2ZXcuDQoNCkJlc3TCoHJlZ2FyZHMsDQpXYW5n
c2Vva8KgTGVlCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
