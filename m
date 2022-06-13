Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D83FC43334
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jun 2022 01:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:CC:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vt5rwTYZi9okJJWk3m9WETBR39EsqwCuWNur0w9jzsc=; b=3FiLpF1fHc9qRL
	DM5+B3KGpMg4Hp74h6BIwXj/MKSfIVYRiHijMKxrrUiB7ZgI5MuES8h/IjZ40GpWaas5/qkCzcANt
	cAQSSoBg8iEN74lF7H+NStdcB0RyGO9ddS/pEU+RP+0kzPFcyhLjrKcgCztpJs1B2WYQvUGUt6mhW
	8ar1EJuIUH/EjrttV5NeoyRx1jDAXsDCQzPQcF+cdHvUjN0LYn0P0wDM8r5UodWG+TtCLYc7nQWuy
	KphoAs1spt4+u5GQMBDh+5S/Dk4V9unwHlkcdJdUUzZuxLZOXrJnjr3U2MXmPcyYcQi4xGulDOb8q
	+DaAOAC6YvRTcZBUGKsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0ZE0-000nGv-Jn; Mon, 13 Jun 2022 01:50:40 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0ZDt-000nEx-Ux
	for linux-phy@lists.infradead.org; Mon, 13 Jun 2022 01:50:39 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20220613015025epoutp02cc2debdd7afdf38ef5f37ffe4d4022be~4Cw-fPMRV1667716677epoutp02f
	for <linux-phy@lists.infradead.org>; Mon, 13 Jun 2022 01:50:25 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20220613015025epoutp02cc2debdd7afdf38ef5f37ffe4d4022be~4Cw-fPMRV1667716677epoutp02f
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1655085025;
	bh=TI5lIB7R6zW2iND4nrZkLphXvV5UKqiH9SxEM/5/FmM=;
	h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
	b=E5o6iu8L/I4eUSGjfSfnvV4bLuKRv3l25W2oRxpHwsCE1bGCsHHVfYTCDpAoambEv
	 7Y4eMYMo7KUBG3hNmCV8L0aXgohIZUFGcp801PQQGsRnz6WSiHEpL3CGm+8g5J4DmC
	 JZRsVb3eE2XqbLXjRqUAceS6vPwDa0+4uDw+oLsI=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTP id
	20220613015025epcas2p37377353f244eec7ae8a60a8699095200~4Cw_ugwgL1307313073epcas2p3K;
	Mon, 13 Jun 2022 01:50:25 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.36.91]) by
	epsnrtp3.localdomain (Postfix) with ESMTP id 4LLvf81S62z4x9Pr; Mon, 13 Jun
	2022 01:50:24 +0000 (GMT)
X-AuditID: b6c32a46-f75ff70000002624-c0-62a697e0d2f4
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
	epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	05.0A.09764.0E796A26; Mon, 13 Jun 2022 10:50:24 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH v2 3/5] PCI: axis: Add ARTPEC-8 PCIe controller driver
From: Wangseok Lee <wangseok.lee@samsung.com>
To: Bjorn Helgaas <helgaas@kernel.org>
CC: "robh+dt@kernel.org" <robh+dt@kernel.org>, "krzk+dt@kernel.org"
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
	<kernel@axis.com>, Moon-Ki Jun <moonki.jun@samsung.com>, Sang Min Kim
	<hypmean.kim@samsung.com>, Dongjin Yang <dj76.yang@samsung.com>, Yeeun Kim
	<yeeun119.kim@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <20220610153020.GA597980@bhelgaas>
X-CPGS-Detection: blocking_info_exchange
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20220613015023epcms2p70e6700a99042d4deb560e40ab5397001@epcms2p7>
Date: Mon, 13 Jun 2022 10:50:23 +0900
X-CMS-MailID: 20220613015023epcms2p70e6700a99042d4deb560e40ab5397001
X-Sendblock-Type: AUTO_CONFIDENTIAL
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrOJsWRmVeSWpSXmKPExsWy7bCmhe6D6cuSDP7OZrdY0pRh8fKQpsX8
	I+dYLXbPWM5k8erMWjaLmVPPMFs8PzSL2eJTi6rFhac9bBYvZ91js2jo+c1qceTNR2aL/cdX
	Mllc3jWHzeLsvONsFhNWfWOxePP7BbvFucWZFq17j7Bb7Lxzgtni19Y/TA6iHmvmrWH0uL4u
	wGPBplKPTas62TyeXJnO5LF5Sb1H35ZVjB7Hb2xn8vi8SS6AMyrbJiM1MSW1SCE1Lzk/JTMv
	3VbJOzjeOd7UzMBQ19DSwlxJIS8xN9VWycUnQNctMwfoMyWFssScUqBQQGJxsZK+nU1RfmlJ
	qkJGfnGJrVJqQUpOgXmBXnFibnFpXrpeXmqJlaGBgZEpUGFCdsbsg/eZC876VBw9d5C9gfG4
	VxcjJ4eEgInEsb8L2boYuTiEBHYwSrS+nszYxcjBwSsgKPF3hzBIjbCAl8TqrjlsILaQgJLE
	jjXzmCHi+hLXV3SzgthsAroS/xa/ZANpFRFQk+hqDwUZySwwkV1iztPzzBC7eCVmtD9lgbCl
	JbYv38oIYnMCzbnUdwQqriHxY1kvVL2oxM3Vb9lh7PfH5jNC2CISrffOQtUISjz4uRsqLiWx
	4MkhVgi7WmL/399MEHYDo0T//VSQ2ySAdu24bgwS5hXwlfj/aSlYOYuAqsSq31+hVrlI7Jy7
	HuwcZgFtiWULXzODtDILaEqs36UPMUVZ4sgtFpinGjb+ZkdnMwvwSXQc/gsX3zHvCdQxahLz
	Vu5knsCoPAsRzLOQ7JqFsGsBI/MqRrHUguLc9NRiowIjeMwm5+duYgSncC23HYxT3n7QO8TI
	xMF4iFGCg1lJhDfg9qIkId6UxMqq1KL8+KLSnNTiQ4ymQF9OZJYSTc4HZpG8knhDE0sDEzMz
	Q3MjUwNzJXFer5QNiUIC6YklqdmpqQWpRTB9TBycUg1M5xMmPeS+m39fyc3lbRyPxNTtieYK
	p9du39t3Jfbw3qq1mjOreZun77x6jjvAqMrQI/iNtH6hHWt4a9pW/qnTOpdud1aq+9f653rx
	j1LOhz/Ued7fMpyTUDYnwcYzZW3FMhMNvsNCDUViy+MDl5u/1ZJdUG5tuTTnVZr2rKPf1+9Q
	Z/B7JMq9zdXpecFKh52HQ9QXZ93WVxZeZj3pgtCL0zO7WXbGpi95uWhf8dvdMeqbt3X/qPv3
	LDQ9LZZpTY6y8c79zg0Gq18uUlkjHLTZfbXPLKWWldc9aqbZ+TG88zf1qVaY8YU3+M09lwP2
	sqnBojUyVmVbqyLNZQ/qHu+u7SlSvzn5dpDWlfLtLxuVWIozEg21mIuKEwFVqrYyagQAAA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220610153050epcas2p3b0d83f4f56ffe81a06aae73d8994a3d1
References: <20220610153020.GA597980@bhelgaas>
	<CGME20220610153050epcas2p3b0d83f4f56ffe81a06aae73d8994a3d1@epcms2p7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220612_185035_495599_508A503E 
X-CRM114-Status: GOOD (  11.42  )
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

T24gMDYvMTEvMjAyMiAwMDozMCwgQmpvcm4gSGVsZ2FhcyB3cm90ZToKPiBPbsKgRnJpLMKgSnVu
wqAxMCzCoDIwMjLCoGF0wqAwOTowMzowM0FNwqArMDkwMCzCoFdhbmdzZW9rwqBMZWXCoHdyb3Rl
Og0KPj7CoE9uwqAwNi8wNC8yMDIywqAwMTowMyzCoEJqb3JuwqBIZWxnYWFzwqB3cm90ZToNCj4+
wqA+wqBJbsKgdGhlwqBzdWJqZWN0LMKgd2h5wqBkb8KgeW91wqB0YWfCoHRoaXPCoCJheGlzIj/C
oMKgVGhlcmUnc8KgYW7CoGV4aXN0aW5nDQo+PsKgPsKgcGNpZS1hcnRwZWM2LmPCoHRoYXTCoHVz
ZXPCoHRoZcKgZHJpdmVywqBuYW1lwqAiImFydHBlYzYtcGNpZSLCoGFuZMKgdGhlDQo+PsKgPsKg
c3ViamVjdMKgbGluZcKgdGFnwqAiYXJ0cGVjNiIuDQo+PsKgPsKgDQo+PsKgPsKgVGhpc8KgYWRk
c8KgcGNpZS1hcnRwZWM4LmPCoHdpdGjCoGRyaXZlcsKgbmFtZcKgImFydHBlYzgtcGNpZSIswqBz
b8KgdGhlDQo+PsKgPsKgb2J2aW91c8KgY2hvaWNlwqB3b3VsZMKgYmXCoCJhcnRwZWM4Ii4NCj4+
wqA+wqANCj4+wqA+wqBJwqBhc3N1bWXCoHlvdcKgZXZhbHVhdGVkwqB0aGXCoHBvc3NpYmlsaXR5
wqBvZsKgZXh0ZW5kaW5nwqBhcnRwZWM2wqB0b8Kgc3VwcG9ydA0KPj7CoD7CoGFydHBlYzjCoGlu
wqBhZGRpdGlvbsKgdG/CoHRoZcKgYXJ0cGVjNsKgYW5kwqBhcnRwZWM3wqBpdMKgYWxyZWFkecKg
c3VwcG9ydHM/DQo+PsKgwqANCj4+wqAicGNpZS1hcnRwZWM2LsKgYyLCoHN1cHBvcnRzwqBhcnRw
ZWM2wqBhbmTCoGFydHBlYzfCoEgvVy4NCj4+wqBhcnRwZWM4wqBjYW7CoG5vdMKgYmXCoGV4cGFu
ZGVkwqBiZWNhdXNlwqBIL1fCoGNvbmZpZ3VyYXRpb27CoGlzDQo+PsKgY29tcGxldGVsecKgZGlm
ZmVyZW50wqBmcm9twqBhcnRwZWM2LzcuDQo+PsKgcGh5wqBhbmTCoHN1YsKgY29udHJvbGxlcsKg
YXJlwqBkaWZmZXJlbnQuDQo+IA0KPiBUaGFua3PCoGZvcsKgdGhpc8KgZGV0YWlsLsKgwqBDYW7C
oHlvdcKgaW5jbHVkZcKgdGhpc8KgaW7CoHRoZcKgY29tbWl0wqBsb2fCoG5leHQNCj4gdGltZcKg
YXJvdW5kwqBpbsKgY2FzZcKgYW55Ym9kecKgZWxzZcKgaGFzwqBhwqBzaW1pbGFywqBxdWVzdGlv
bj8NCj4gDQoNCk9rLCBzdXJlLg0KDQo+PsKgPj7CoCsvKsKgRlNZU8KgU1lTUkVHwqBPZmZzZXRz
wqAqLw0KPj7CoD7CoA0KPj7CoD7CoFRoZcKgbGlzdMKgYmVsb3fCoHNlZW1zwqB0b8KgaW5jbHVl
wqBtb3JlwqB0aGFuwqBqdXN0wqByZWdpc3RlcsKgb2Zmc2V0cy4NCj4+wqA+wqANCj4+wqDCoA0K
Pj7CoElzwqBpdMKgY2xlYXLCoHRvwqBjaGFuZ2XCoHRvwqAiRlNZU8KgYmx1ZcKgbG9naWPCoHN5
c3RlbcKgcmVnaXN0ZXJzIsKgDQo+PsKgbGlrZcKgSmFzcGVywqBOaWxzc29uYHPCoGNvbW1lbnQ/
DQo+PsKgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjIwNjA3MDcwMzMyLkdZMTg5MDJA
YXhpcy5jb20vDQo+PsKgTXnCoG9waW5pb27CoGlzwqB0aGXCoHNhbWUuDQo+IA0KPiBZZXAswqB0
aGF0J3PCoGZpbmUuwqDCoEJ1dMKgc3BlbGzCoGl0wqAiZ2x1ZcKgbG9naWMiLMKgbm90wqAiYmx1
ZcKgbG9naWMiwqA6KQ0KPiANCg0KVGhhbmtzLCBpdCB3YXMganVzdCBhIHR5cG8uDQoNCj4+wqA+
PsKgK3N0YXRpY8KgaW50wqBhcnRwZWM4X3BjaWVfZ2V0X2Nsa19yZXNvdXJjZXMoc3RydWN0wqBw
bGF0Zm9ybV9kZXZpY2XCoCpwZGV2LA0KPj7CoD4+wqArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3Ry
dWN0wqBhcnRwZWM4X3BjaWXCoCphcnRwZWM4X2N0cmwpDQo+PsKgPj7CoCt7DQo+PsKgPj7CoCvC
oMKgwqDCoMKgwqDCoMKgc3RydWN0wqBkZXZpY2XCoCpkZXbCoD3CoCZwZGV2LT5kZXY7DQo+PsKg
Pj7CoCsNCj4+wqA+PsKgK8KgwqDCoMKgwqDCoMKgwqBhcnRwZWM4X2N0cmwtPnBpcGVfY2xrwqA9
wqBkZXZtX2Nsa19nZXQoZGV2LMKgInBpcGVfY2xrIik7DQo+PsKgPj7CoCvCoMKgwqDCoMKgwqDC
oMKgaWbCoChJU19FUlIoYXJ0cGVjOF9jdHJsLT5waXBlX2NsaykpwqB7DQo+PsKgPj7CoCvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRldl9lcnIoZGV2LMKgImNvdWxkbid0wqBnZXTC
oHBpcGXCoGNsb2NrXG4iKTsNCj4+wqA+PsKgK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgcmV0dXJuwqAtRUlOVkFMOw0KPj7CoD4+wqArwqDCoMKgwqDCoMKgwqDCoH0NCj4+wqA+PsKg
Kw0KPj7CoD4+wqArwqDCoMKgwqDCoMKgwqDCoGFydHBlYzhfY3RybC0+ZGJpX2Nsa8KgPcKgZGV2
bV9jbGtfZ2V0KGRldizCoCJkYmlfY2xrIik7DQo+PsKgPj7CoCvCoMKgwqDCoMKgwqDCoMKgaWbC
oChJU19FUlIoYXJ0cGVjOF9jdHJsLT5kYmlfY2xrKSnCoHsNCj4+wqA+PsKgK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgZGV2X2luZm8oZGV2LMKgImNvdWxkbid0wqBnZXTCoGRiacKg
Y2xrXG4iKTsNCj4+wqA+PsKgK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJu
wqAtRUlOVkFMOw0KPj7CoD4+wqArwqDCoMKgwqDCoMKgwqDCoH0NCj4+wqA+PsKgKw0KPj7CoD4+
wqArwqDCoMKgwqDCoMKgwqDCoGFydHBlYzhfY3RybC0+c2x2X2Nsa8KgPcKgZGV2bV9jbGtfZ2V0
KGRldizCoCJzbHZfY2xrIik7DQo+PsKgPj7CoCvCoMKgwqDCoMKgwqDCoMKgaWbCoChJU19FUlIo
YXJ0cGVjOF9jdHJsLT5zbHZfY2xrKSnCoHsNCj4+wqA+PsKgK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgZGV2X2VycihkZXYswqAiY291bGRuJ3TCoGdldMKgc2xhdmXCoGNsb2NrXG4i
KTsNCj4+wqA+PsKgK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuwqAtRUlO
VkFMOw0KPj7CoD4+wqArwqDCoMKgwqDCoMKgwqDCoH0NCj4+wqA+PsKgKw0KPj7CoD4+wqArwqDC
oMKgwqDCoMKgwqDCoGFydHBlYzhfY3RybC0+bXN0cl9jbGvCoD3CoGRldm1fY2xrX2dldChkZXYs
wqAibXN0cl9jbGsiKTsNCj4+wqA+PsKgK8KgwqDCoMKgwqDCoMKgwqBpZsKgKElTX0VSUihhcnRw
ZWM4X2N0cmwtPm1zdHJfY2xrKSnCoHsNCj4+wqA+PsKgK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgZGV2X2luZm8oZGV2LMKgImNvdWxkbid0wqBnZXTCoG1hc3RlcsKgY2xrXG4iKTsN
Cj4+wqA+wqANCj4+wqA+wqBJdCdkwqBiZcKgbmljZcKgaWbCoHRoZcKgZXJyL2luZm/CoG1lc3Nh
Z2VzwqBtYXRjaGVkwqB0aGXCoGV4YWN0wqBEVMKgbmFtZToNCj4+wqA+wqAicGlwZV9jbGsiLMKg
ImRiaV9jbGsiLMKgc2x2X2NsayIswqBldGMuDQo+PsKgPsKgDQo+PsKgwqANCj4+wqBJwqB3aWxs
wqBmaXjCoGl0Lg0KPj7CoMKgDQo+PsKgPsKgV2h5wqBhcmXCoHNvbWXCoG9mwqB0aGXCoGFib3Zl
wqBkZXZfZXJyKCnCoGFuZMKgb3RoZXJzwqBkZXZfaW5mbygpwqB3aGVuwqB5b3UNCj4+wqA+wqBy
ZXR1cm7CoC1FSU5WQUzCoGluwqBhbGzCoGNhc2VzPw0KPj7CoMKgDQo+PsKgV2hlbsKgcHJvcGVy
dHnCoGlzwqBub3TCoGZvdW5kLMKgaXTCoGp1c3TCoHRvwqByZXR1cm7CoGVycm9yLg0KPj7CoEnC
oHdpbGzCoG1vZGlmecKgdG/CoHJldHVybsKgUFRSX0VSUi4NCj4gDQo+IA0KPiBVc2luZ8KgUFRS
X0VSUigpwqBsb29rc8KgbGlrZcKgYcKgZ29vZMKgaWRlYSzCoHNpbmNlwqB0aGVuwqB5b3XCoHJl
dHVybsKgdGhlDQo+IGFjdHVhbMKgZXJyb3LCoGZyb23CoGRldm1fY2xrX2dldCgpwqBpbnN0ZWFk
wqBvZsKgYWx3YXlzwqByZXR1cm5pbmfCoC1FSU5WQUwuDQo+IA0KPiBCdXTCoHRoYXTCoHdhc24n
dMKgbXnCoGNvbW1lbnQuwqDCoE15wqBjb21tZW50wqB3YXPCoHRoYXTCoGl0wqBsb29rc8KgbGlr
ZcKgdGhlc2UNCj4gc2hvdWxkwqBiZcKgYWxswqBkZXZfZXJyKCnCoChvcsKgYWxswqBkZXZfaW5m
bygpKS4NCj4gDQoNCkkgdW5kZXJzdG9vZCB5b3VyIHF1ZXN0aW9uLiBJIHRoaW5rIGl0IHdhcyBz
aW1wbHkgYSB3YXkgdG8gZ2VuZXJhdGUgbG9nDQptc2cuDQpJbiB0aGlzIGNhc2UsIGlzIHRoZXJl
IGEgbW9yZSBwcm9wZXIgcHJpbnQgZnVuY3Rpb24gdGhhdCB1c2UgdG8gZ2VuZXJhdGUNCmxvZyBt
c2c/DQpJbiBhZGRpdGlvbiwgZXJyb3IgcmV0dXJuIGluIGFydHBlYzhfcGNpZV9nZXRfY2xrX3Jl
c291cmNlcygpIHdpbGwgYmUNCm1vZGlmaWVkIHRvIGRldm1fY2xrX2J1bGtfZ2V0KCkuDQooYWNj
b3JkaW5nIHRvIEtyenlzenRvZidzIHJldmlldyBjb21tZW50Li4gKQ0KDQo+PsKgPj7CoCvCoMKg
wqDCoMKgwqDCoMKgc3dpdGNowqAobW9kZSnCoHsNCj4+wqA+PsKgK8KgwqDCoMKgwqDCoMKgwqBj
YXNlwqBEV19QQ0lFX1JDX1RZUEU6DQo+PsKgPj7CoCvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGFydHBlYzhfcGNpZV93cml0ZWwoYXJ0cGVjOF9jdHJsLT5lbGJpX2Jhc2UswqBERVZJ
Q0VfVFlQRV9SQywNCj4+wqA+PsKgK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBQQ0lFX0FSVFBFQzhfREVWSUNFX1RZUEUpOw0K
Pj7CoD4+wqArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXTCoD3CoGFydHBlYzhf
YWRkX3BjaWVfcG9ydChhcnRwZWM4X2N0cmwswqBwZGV2KTsNCj4+wqA+PsKgK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgaWbCoChyZXTCoDzCoDApDQo+PsKgPsKgDQo+PsKgPsKgQXJl
wqB0aGVyZcKgcG9zaXRpdmXCoHJldHVybsKgdmFsdWVzwqB0aGF0wqBpbmRpY2F0ZcKgc3VjY2Vz
cz/CoMKgTW9zdMKgcGxhY2VzDQo+PsKgPsKgYWJvdmXCoHlvdcKgYXNzdW1lwqAicmV0wqAhPcKg
MCLCoG1lYW5zwqBmYWlsdXJlLMKgc2/CoGp1c3TCoGN1cmlvdXPCoHdoecKgeW91DQo+PsKgPsKg
dGVzdMKgInJldMKgPMKgMCLCoGluc3RlYWTCoG9mwqBqdXN0wqAicmV0Ii4NCj4+wqDCoA0KPj7C
oFRoZXJlwqBpc8Kgbm/CoHNwZWNpYWzCoHJlYXNvbizCoGJ1dMKgaXTCoHNlZW1zwqB0aGF0wqB0
aGXCoGZvcm1hdMKgdXNlZMKgDQo+PsKgaW7CoHRoZcKgZXhpc3RpbmfCoGR3wqBkcml2ZXLCoGlz
wqBhcHBsaWVkLg0KPiANCj4gRmFpcsKgZW5vdWdoLsKgwqAiZ2l0wqBncmVwwqAtQTLCoGFkZF9w
Y2llX3BvcnTCoGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvIg0KPiBzYXlzwqBhbGzCoCpfYWRkX3Bj
aWVfcG9ydCgpwqBjYWxsc8KgdXNlwqB0aGXCoHNhbWXCoHBhdHRlcm4swqBzb8KgdGhhbmtzwqBm
b3INCj4gZm9sbG93aW5nwqB0aGF0Lg0KPiANCj4gQmpvcm4NCg0KVGhhbmsgeW91IGZvciBraW5k
bmVzcyByZWl2ZXcuDQogDQpCZXN0IHJlZ2FyZHMsDQpXYW5nc2VvayBMZWUKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
