Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01178C61DBD
	for <linux-phy@archiver.kernel.org>; Wed, 26 Aug 2026 13:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NlByJ06iraIVRmV1pyfKGelaBhSZknhIiR6e39pnxHw=; b=YSslVdOnhxSsP/
	KnTB0AsNRxISDn/cQl+QuGMEtX1/ImO2LKNHUop3sap/tbMmERM3bL2JZxFV12K8KZLfkIOLovEqx
	nnd0VsKiG8U/31GtiIMw06AGHXoZjBBEnDkDsfCSy9TaEpRNNK8VZg8IpWl9QkeyN2tyhvnoSBUbp
	kxMUZBBeGynv8Ouhlpx5T3/J0+UULuNkLW2fUy00bomxhZI9EGeXnqACGjxYH4XosNR9uTjS+1rrr
	B3f/axt3kx8kId1u5xnfNbiQd5Yb/Wca/kVa0Y4kv21tvShaNQbIppET8x6JSTlYHNbFR93KnocOX
	MmmJb0oxexMA8YRtPFpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzDY1-00000002Uxl-1Yba;
	Wed, 26 Aug 2026 13:20:09 +0000
Received: from mail-norwayeastazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c20f::7] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzDXx-00000002Ux0-3OXv;
	Wed, 26 Aug 2026 13:20:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HkNczmtNHsJiW2aKujap+yN/LQcLVp2jx+TIF80bFOPY+/O+DdPPHUTJzODjjdIjXYgCRoHFvSRl3B7JYMIympf/VIb4Zyf1ckk6srZR7qzKvxgCAdIV+UpM3iWfdSK1e5dJ69m1ffX0V9REhNJLmnmff36BjA7XtW5LG7eSoSYLFK88DuvtGQNpELX7QCh+d7qxy7Z8pXdtzMySQno+t6Iyf+SSKHv2u1ZFPT+s1oY5yoa1WBAbRtNqiHTaHswGIWmS8TLvEphoHnBqla1GVidXm8Ke/aAqtNcEtCyRKnshSpmctdsRWHUDwnEoiJeY+d6yOIZRmdpMbagoyTRb9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jCwwyJLd0mfu177p6suH3hriyU2wFFGIcIman/dEOP8=;
 b=V0vxeSLTlWs8VQ6PLL+x5mppGomLgXCRSqj5vezM5cHewy2kJTp6xcFiiwB3/1Z1ABPdyfB3IcEbouaVjOXeBAQq/KpcgWRkeAs9pAevsVvKkgSmWpVO+MT/pvWo6m2infbAojtDnHvRTHKZdEVsvzX9TA2YwQf1SsJBa1/Zf8wMtHVEEYfStsdQtn1G+FffU3rOeDzR5k99h6AdI9sEaZAiycA6Hp2HsuuUN//iFloGS9epdMQUjr7AFx0LBUYNCy/LqoZ3iwOBbCmgYCXMNUtthdwXMMlVLR0XKB+3r8RXrtFzV5cQJnP4Qn4VB6oECRhmr+ZFfidIkbqUVudhSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 164.130.1.59) smtp.rcpttodomain=nabladev.com smtp.mailfrom=foss.st.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=foss.st.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jCwwyJLd0mfu177p6suH3hriyU2wFFGIcIman/dEOP8=;
 b=OA8eJBUDdO5c58ytTWYnvtExNYZd/XcKHwFGGNZmkzJYK9rtGANKTMmQ+0ZIk1t/vf8YuwCjvtnBwtBZMaUWYjJduqEyW4AG96hC2LXVlvUrS5ahinlh+Vcs+ZpwgDI6YJN4803NKUS/R5wadVVBDG/AW3WRFnGVlf+UHxP3FRAHNPaLAWzrf64cllZlrzowfd3WcOye0ipbkdgrz2NRvLHKZWK3gdAA+p1XSzc0IH2+8GLIH1LNgBquHjR+0oT0g2NIXnAuD+/FcO9QJZtS4OH50AF82efB0q+r8pp3LHWVaUjnr5zkExRd3k3maegqKh5/iVsyTZraOJE9WRfkQw==
Received: from AS8PR07CA0013.eurprd07.prod.outlook.com (2603:10a6:20b:451::21)
 by DU4PR10MB8466.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:55b::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.360.6; Wed, 26 Aug
 2026 13:19:57 +0000
Received: from AM3PEPF00009B9C.eurprd04.prod.outlook.com
 (2603:10a6:20b:451:cafe::60) by AS8PR07CA0013.outlook.office365.com
 (2603:10a6:20b:451::21) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.360.7 via Frontend Transport; Wed, 26
 Aug 2026 13:19:57 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 164.130.1.59)
 smtp.mailfrom=foss.st.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=foss.st.com;
Received-SPF: Fail (protection.outlook.com: domain of foss.st.com does not
 designate 164.130.1.59 as permitted sender) receiver=protection.outlook.com;
 client-ip=164.130.1.59; helo=smtpO365.st.com;
Received: from smtpO365.st.com (164.130.1.59) by
 AM3PEPF00009B9C.mail.protection.outlook.com (10.167.16.21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.360.3 via Frontend Transport; Wed, 26 Aug 2026 13:19:57 +0000
Received: from STKDAG1NODE2.st.com (10.75.128.133) by smtpo365.st.com
 (10.250.44.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.43; Wed, 26 Aug
 2026 15:25:51 +0200
Received: from [10.252.23.181] (10.252.23.181) by STKDAG1NODE2.st.com
 (10.75.128.133) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.43; Wed, 26 Aug
 2026 15:19:55 +0200
Message-ID: <1cf02ebd-fa70-4d44-9deb-f39e4dd6c04f@foss.st.com>
Date: Wed, 26 Aug 2026 15:19:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/16] arm64: dts: st: Add ucpd node on stm32mp251
To: Marek Vasut <marex@nabladev.com>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Christian Bruel
	<christian.bruel@foss.st.com>, <linux-usb@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-stm32@st-md-mailman.stormreply.com>, Conor Dooley
	<conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, Neil Armstrong
	<neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>, Liam Girdwood
	<lgirdwood@gmail.com>, Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	<linux-phy@lists.infradead.org>, Thomas Bourgoin
	<thomas.bourgoin@foss.st.com>, Mark Brown <broonie@kernel.org>, Philipp Zabel
	<p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, Alexandre Torgue
	<alexandre.torgue@foss.st.com>, Srinivas Kandagatla <srini@kernel.org>,
	Pankaj Dev <pankaj.dev@st.com>
References: <20260821-ucpd-host-fusb340-v7-2-rfc-v1-0-c5e27cbc0795@foss.st.com>
 <20260821-ucpd-host-fusb340-v7-2-rfc-v1-8-c5e27cbc0795@foss.st.com>
 <745a30e5-3fc3-406c-9263-1c1c8ca9135c@nabladev.com>
Content-Language: en-US
From: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
In-Reply-To: <745a30e5-3fc3-406c-9263-1c1c8ca9135c@nabladev.com>
X-Originating-IP: [10.252.23.181]
X-ClientProxiedBy: ENXCAS1NODE2.st.com (10.75.128.138) To STKDAG1NODE2.st.com
 (10.75.128.133)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM3PEPF00009B9C:EE_|DU4PR10MB8466:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d29e307-b785-47e4-0af1-08df0374b995
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|23010399003|36860700016|7416014|376014|1800799024|82310400026|10067099003|6133799003|22082099003|18002099003|11063799006|56012099006|4143699003;
X-Microsoft-Antispam-Message-Info: iPw6JiKxBdylA6enzFv3TJycHxbTuZ7msJbVwYCwE0u3tXHDutyS9wyvL+ThLNdRqqX33nJxKun22C/wsWB91qUWJMstGuqv9w572YSyAJFeBtTF0jJs9WdG3/k6gW3uIQiMl1v5E6bw61F9aNS572AtVibjpYk+lIInIfB9yM4WVBJVpTaNi9mCDxQkZ2hrs2r6jNFDmnvYZG93lUlsw/u5oGgdRX3K6iBbDclofIqMXwC7bYqnw/KTPmuAzndHN411OJYjLd+6g/hcAo5J6O3xMbXu+/rsAR9vZI38+Wh6xzttuM3wbrFLRZz7jbIRM01oNMXov8sQTjxj6yDkoCreTuIB8iEr5XYdTwj2tfukA/jyswOvqzvT6Kjf1SssqNYZbK7YWPlMtiC0dtBsy+cAZSuIhqBflBsN92CurWns6m3eUPbmKYi9vyiGG6vDsuDJzPZQNXDBIJg2cfa1OOWUK8l2InuaGuvaiAUVVIGoTLFd2GfAf/OE1z0gKJg5XHfuf18TDn67nfJ0Bau4fqIkMQkL7XafBp81ljBoFceLNerHnakBqZYfiqlXKU4TtKiPWcOXi1qgvgkWHLclD8aEG3b0UNUOoJBwDGUyW3Cyrgkb/2TWVYC8XoaSdv0TxGLEeBh+SEORtm7SD/zhWq9mMztMYPx0T4iQn46pjzOVJlqc0ICgIKtUiIkqoNk/CU8kNjdhjiBcuOmYYPb5Ow==
X-Forefront-Antispam-Report: CIP:164.130.1.59;CTRY:IT;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:smtpO365.st.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(23010399003)(36860700016)(7416014)(376014)(1800799024)(82310400026)(10067099003)(6133799003)(22082099003)(18002099003)(11063799006)(56012099006)(4143699003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: FXqBVyuMaiC4kW+uZeCSPUxIS/aEjtC+nv7VAZxE92oWlYb4tUrLWhgDfvskJh4diAEuiZk9z++9YFxkxhlL7uX/AkCxae2EMzqPcDAmGrvI6rmZRoNkW0DLwy+vNW1P2eKPqzJx6mzIlQQvO+cZKf2nfyVvG8q7bmet2vaHIavLCopqp1xOmMNM0Q/8Y63pe4tr5M6buhZfzzxWaqFH7ThAeaDvjLi5Dzz5rmf59yvoiA7k6EYypgYpTTrWnfSKa25vRYPN7lnVAD2xVKxKnlZBpEkHKjxLN6AEhtha8cndOnDguiK7ZmvRcmE4MlwH3QgmfHJDgcAVQXdGE+qUhuAt+WNThp2g2E3iCO+/HuIDgFHiqzz+DCL5jCO8GLcD4KWFylCtmxeTgNjlnjcfQmWodkb6wmtT+93SofHTIt2WN82A4tsBj3tZYIwKITOa
X-OriginatorOrg: foss.st.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2026 13:19:57.3697
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d29e307-b785-47e4-0af1-08df0374b995
X-MS-Exchange-CrossTenant-Id: 75e027c9-20d5-47d5-b82f-77d7cd041e8f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=75e027c9-20d5-47d5-b82f-77d7cd041e8f;Ip=[164.130.1.59];Helo=[smtpO365.st.com]
X-MS-Exchange-CrossTenant-AuthSource: AM3PEPF00009B9C.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU4PR10MB8466
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_062006_224603_402538DF 
X-CRM114-Status: GOOD (  12.12  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gOC8yMi8yNiAwNzowMCwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4gT24gOC8yMS8yNiA2OjIzIFBN
LCBGYWJyaWNlIEdhc25pZXIgd3JvdGU6Cj4+IERlc2NyaWJlIFVDUEQgYmluZGluZ3MgYW5kIG52
bWVtIGNlbGxzIHRvIGFjY2VzcyB0cmltIHZhbHVlcy4KPj4gVGhpcyBwcm92aWRlcyB0aGUgUEQg
YW5kIENDIFVTQi1DIGNhYmxlIHNpZ25hbGluZyBmdW5jdGlvbnMuCj4+Cj4+IENvLWRldmVsb3Bl
ZC1ieTogQ2hyaXN0aWFuIEJydWVsIDxjaHJpc3RpYW4uYnJ1ZWxAZm9zcy5zdC5jb20+Cj4+IFNp
Z25lZC1vZmYtYnk6IENocmlzdGlhbiBCcnVlbCA8Y2hyaXN0aWFuLmJydWVsQGZvc3Muc3QuY29t
Pgo+PiBDby1kZXZlbG9wZWQtYnk6IFRob21hcyBCb3VyZ29pbiA8dGhvbWFzLmJvdXJnb2luQGZv
c3Muc3QuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgQm91cmdvaW4gPHRob21hcy5ib3Vy
Z29pbkBmb3NzLnN0LmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogRmFicmljZSBHYXNuaWVyIDxmYWJy
aWNlLmdhc25pZXJAZm9zcy5zdC5jb20+Cj4+IC0tLQo+PiDCoCBhcmNoL2FybTY0L2Jvb3QvZHRz
L3N0L3N0bTMybXAyNTEuZHRzaSB8IDUxICsrKysrKysrKysrKysrKysrKysrKysrKwo+PiArKysr
KysrKysrCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA1MSBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3N0L3N0bTMybXAyNTEuZHRzaSBiL2FyY2gvYXJt
NjQvYm9vdC8KPj4gZHRzL3N0L3N0bTMybXAyNTEuZHRzaQo+PiBpbmRleCA5ZGM3YTA1ZmNlOTku
LmJlNTRkZDU2NzEzYiAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9zdC9zdG0z
Mm1wMjUxLmR0c2kKPiAKPiBbLi4uXQo+IAo+PiBAQCAtMTgxOCwxMCArMTgzOSw0MCBAQCBwYXJ0
LW51bWJlci1vdHBAMjQgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJl
ZyA9IDwweDI0IDB4ND47Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+IMKgICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVjcGRfdHJpbV8zYV9jYzE6IHRyaW1fM2FfY2MxQDFiZCwx
IHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8MHgxYmQgMHgxPjsK
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBiaXRzID0gPDEgND47Cj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdWNw
ZF90cmltXzNhX2NjMjogdHJpbV8zYV9jYzJAMWJmLDEgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHJlZyA9IDwweDFiZiAweDE+Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGJpdHMgPSA8MSA0PjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPiAK
PiBUaGVzZSB0d28gZnVzZSBmaWVsZHMgXiBkbyBub3Qgc2VlbSB0byBtYXRjaCBTVE0zMk1QMjV4
eCBkb2N1bWVudGF0aW9uID8KPiAKPiBSTTA0NTcgUmV2IDUKPiBUYWJsZSA4NzYuIFVDUEQgc29m
dHdhcmUgdHJpbSBkYXRhCj4gUGFnZSA1MDEzCj4gCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBOb24tdm9sYXRpbGUgbWVtb3J5IGxvY2F0aW9uCj4gTmFtZcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIEFkZHJlc3PCoMKgwqDCoMKgwqAgQml0cwo+IDNBMF9DQzFbMzowXcKg
wqDCoMKgwqDCoCAweDU0MDAgMDFFOMKgwqDCoMKgIDExOjgKPiAzQTBfQ0MyWzM6MF3CoMKgwqDC
oMKgwqAgMHg1NDAwIDAxRTjCoMKgwqDCoCAxMTo4Cj4gXl5eXl5eXsKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBeXl5ewqDCoMKgwqAgXl5eXgo+IAoKSGkgTWFyZWssCgpZZXMs
IEkndmUgcmFpc2VkIGl0IGludGVybmFsbHkgKFNUKSBzbyB0aGUgZG9jdW1lbnRhdGlvbiBnZXRz
IGNsYXJpZmllZC4KClBsZWFzZSBsb29rIGF0ICJPVFAgbWFwcGluZyIgc2VjdGlvbiBpbnN0ZWFk
LCBUYWJsZSAzNC4KCmUuZy4gT1RQMTExCgp3b3JkL2JpdHMgfAoKOSB0byAxMiAgfCBVU0JUQ19W
SVJFRjFfM0EwWzM6MF0gfCBVU0IgVHlwZSBDIENDMSByZWYgY3VycmVudCB0cmltICjCsTYlKQpp
biAzIEEgbW9kZQoyNSB0byAyOCB8IFVTQlRDX1ZJUkVGMl8zQTBbMzowXSB8IFVTQiBUeXBlIEMg
Q0MyIHJlZiBjdXJyZW50IHRyaW0gKMKxNiUpCmluIDMgQSBtb2RlCgphbmQgT1RQMTIyCjQgdG8g
NyAgIHwgVVNCVENfQ0NSUEQxWzM6MF0gICAgIHwgVVNCIFR5cGUgQyBDQzEgNS4xS29obSBwdWxs
IGRvd24gdHJpbQoowrExMCUpCjggdG8gMTEgIHwgVVNCVENfVklSRUYxXzFBNVszOjBdIHwgVVNC
IFR5cGUgQyBDQzEgcmVmIGN1cnJlbnQgdHJpbSAowrE2JSkKaW4gMS41IEEgbW9kZQoxMiB0byAx
NSB8IFVTQlRDX0NDUlBEMlszOjBdICAgICB8IFVTQiBUeXBlIEMgQ0MyIHB1bGwgZG93biB0cmlt
ICg1LjEgSwrCsTEwJSkKMTYgdG8gMTkgfCBVU0JUQ19WSVJFRjJfMUE1WzM6MF0gfCBVU0IgVHlw
ZSBDIENDMiByZWYgY3VycmVudCB0cmltICjCsTYlKQppbiAxLjUgQSBtb2RlCgpCUiwKRmFicmlj
ZQoKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGFja2FnZS1vdHBAMWU4IHsKPj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8MHgxZTggMHgxPjsKPj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBiaXRzID0gPDAgMz47Cj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4gWy4uLl0KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
