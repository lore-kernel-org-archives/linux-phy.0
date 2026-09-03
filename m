Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7ED27C61DD3
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 10:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=515x8joJvN7tfpjshljUyHLLf++N3fKp+FtkmfCStTw=; b=se2u2upDTXkdBJ
	3/VZQMiwFeILHl7jGfW9O4Dy1/VyHrJSA5gY+gKOH1L8/ws9VakrTfqw2UqCoGhXo6TJB+0fyAAIZ
	tCwFMmWleS5L8QkdJ6p2ftfFGM3c5TxATnY68VRSFZgHgZH20oX0tGGSqI9NMYAWH2n7S2jKImK6o
	hI0eYO3HQim0Fp5ssZHuaQUxqmBzKRt/pf/n8eIIGkgxdpQ6tIfxM491k/civaBHuyOyWNyily3m7
	yWvp2rB5ApxXAB7isydoPyuhsVhQPy8zUuaxyzJ7MMV1N90iWoTMoIhaKNeoKPjgLEWD8bxocMWTg
	RqX6dXuA/fE7MqoB6SsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x24Xp-0000000H4IL-0xf2;
	Thu, 03 Sep 2026 10:19:45 +0000
Received: from mail-northeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c200::3] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x24Xn-0000000H4HG-03PT;
	Thu, 03 Sep 2026 10:19:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uyj1l1RIAPwFDURSdrmMQhj1HO18L28jpJhP2QgTWYjIrzZR6bTk7Hwn+Ijjal6M/RAFLTjLuB2MN5TFYPOuKOsbzEFOYqe+aNE0+88uAqIcyvxzuosV/9CE+hZm+EVF/qSfR4YAVc43UwEBHHegfHp8W6G9xuAhXZt/FuEIQJBpa+ewTSO3A1y5wpMGVCQbdFaFDE1SCO6DK874/DW3KAkQy+cpcUX+2k7IKlUXd26kj345gme31zNV1GBtlRu0F4s8pZmjjrIb1GGRXvVYDURSXuuH9Zqc7Fhm9/B76NFY2krVqs+f3obiJNeuuY5RRWV25LPpiahvMQ5uoWwbbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DWwrRCUaQMd13jrkgTL7dC4SUzFnWzdzuMg8vGXTBg4=;
 b=OuHLTwwk+EJhVm+GeSvALgcPzAI3z16vVzhzrwiSUu89s1pMDqc7XQS58ETcALvgIKjb4JUoK0MeEtnSPmzA+lDGd3jFWsl7JNCrNvqmGDN4WXg8O6m09koXBwaFQ9ozM/f7rNm7QxAfDZQxR7VzDEiUJyjFrk6MciXnbxpvwsv3cviSjqtyl4282SQXEBndgbVy0jxHv+OFqglW+GIrgPzzV7IxFRiw1R3ra6OYHFz7r8EkIkQ/b8eMn3YJp8v24NBJM/yDE039DGW0LDncUAajYRVpKQdSKrigMv8gyIYsloBgMeuziKCqd7JJc+XJArZ6oDWjyOHQRYgzgxP9Tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 164.130.1.88) smtp.rcpttodomain=nabladev.com smtp.mailfrom=foss.st.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=foss.st.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DWwrRCUaQMd13jrkgTL7dC4SUzFnWzdzuMg8vGXTBg4=;
 b=Iq06QDItacyE0sAXS2zSnqbjKNNxed7Zrvm+q1efHQhjzKUAtrL3MzDI02lL0Ns7UaPsB19rPbbvEuYG9oHoiYyRXRx8SzD/F85H+Q6ZLB8hWIsh0Da2X2In6h1+qvB5o/pED1skocqPBFTdxKBJzDnbpFLnc62tKNXjhQdkUOR4rPGwr5/2dfFAqO5QFwjBhZGX6Vm3SC/vKmDF5UQ9WBbY13idCsyzyYt+XRQK2C9WKYcdSrEIG8r3HByeES/gwQx+y7BtnYh5HIxLqJoejHPjUAU59BgbAaSqVWouaWSVxsgLaJ8FfX9ON5RxXihkKidsEXo/jemZRSX9MEifSA==
Received: from AS8PR04CA0210.eurprd04.prod.outlook.com (2603:10a6:20b:2f3::35)
 by GV4PR10MB9596.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:150:2eb::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.360.13; Thu, 3 Sep
 2026 10:19:32 +0000
Received: from AMS0EPF00000192.eurprd05.prod.outlook.com
 (2603:10a6:20b:2f3:cafe::98) by AS8PR04CA0210.outlook.office365.com
 (2603:10a6:20b:2f3::35) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.382.11 via Frontend Transport; Thu, 3
 Sep 2026 10:19:32 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 164.130.1.88)
 smtp.mailfrom=foss.st.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=foss.st.com;
Received-SPF: Fail (protection.outlook.com: domain of foss.st.com does not
 designate 164.130.1.88 as permitted sender) receiver=protection.outlook.com;
 client-ip=164.130.1.88; helo=smtpO365.st.com;
Received: from smtpO365.st.com (164.130.1.88) by
 AMS0EPF00000192.mail.protection.outlook.com (10.167.16.218) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.382.8 via Frontend Transport; Thu, 3 Sep 2026 10:19:31 +0000
Received: from ENXDAG1NODE4.st.com (10.75.129.197) by smtpo365.st.com
 (10.250.44.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.43; Thu, 3 Sep
 2026 12:16:49 +0200
Received: from [10.48.86.251] (10.48.86.251) by ENXDAG1NODE4.st.com
 (10.75.129.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.43; Thu, 3 Sep
 2026 12:19:29 +0200
Message-ID: <34e63564-0191-406a-973a-eb601292b255@foss.st.com>
Date: Thu, 3 Sep 2026 12:19:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: Document ST STM32MP25 USB2-FEMTO
 PHY
To: Marek Vasut <marex@nabladev.com>, <linux-phy@lists.infradead.org>
CC: Pankaj Dev <pankaj.dev@st.com>, Krzysztof Kozlowski
	<krzysztof.kozlowski@oss.qualcomm.com>, Rahul Kumar <rahul.kumar05@st.com>,
	=?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>, "Alexandre
 Torgue" <alexandre.torgue@foss.st.com>, Christian Bruel
	<christian.bruel@foss.st.com>, Conor Dooley <conor+dt@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Neil Armstrong
	<neil.armstrong@linaro.org>, Patrice Chotard <patrice.chotard@foss.st.com>,
	Rob Herring <robh@kernel.org>, Rosen Penev <rosenp@gmail.com>, Vinod Koul
	<vkoul@kernel.org>, <devicetree@vger.kernel.org>,
	<kernel@dh-electronics.com>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>
References: <20260902141312.649406-1-marex@nabladev.com>
Content-Language: en-US
From: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
In-Reply-To: <20260902141312.649406-1-marex@nabladev.com>
X-Originating-IP: [10.48.86.251]
X-ClientProxiedBy: ENXCAS1NODE2.st.com (10.75.128.138) To ENXDAG1NODE4.st.com
 (10.75.129.197)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS0EPF00000192:EE_|GV4PR10MB9596:EE_
X-MS-Office365-Filtering-Correlation-Id: 83109a49-9883-4d54-d962-08df09a4d856
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|36860700016|82310400026|23010399003|376014|7416014|10067099003|3023799007|6133799003|56012099006|22082099003|18002099003|11063799006;
X-Microsoft-Antispam-Message-Info: T5P8j8MN2qKgrfPD4zjR1+GerB0BUGMPn9VKK2aqDT9wu3J48dJ7fb0YmUt1baEA/6pLpCCYC22XJYevnyQceHiNjbtLezo5uFDG7CxStfWaU0WyEj0JsPThkeLvU9xKm2OhBhsyqwYW6zdpkupVtNc+scSepoAlRvJTXrDxNnT0wUDYEKtg+WFPLu3MlZQLkRLC27NOqSqC2j2JbasgvdeLwg74j1SyYIqFb3zDCUOHBPE/AaC6QcPLGU6wmMVzHoJaPc4gvQIHCZUBz9uzmXCyPGm5MGAsDONsX4HgtyQlZm8HdDS7gVlkQw8yKVK1wSRx8fZisuIYykterwW84euTfiPsi2W1FKspOFipiq9UN/JEldNtn3RL8a5FaxLGP2ZEeQ33O9VpZfhcuLZ2saB/263iUZ/L3ETHotJtWrOtgBP4aqrhMSbPyYj60YX/chgoudQNDg5yEUVaV3zS+u2MjOfdZ4SiM2BelL7Da0et8dcO9GahYtBWo7qvTHq9NRirvKU27dqU3rNRY+yFyuJ4Gu/ObLIDn+sJrSIAxWHwGlmyhrpbD+e/Nukvqf1GqYTSs4zi/+/HO9mJIy3647xQRWuvENW925QXDjv4e2TwunE2ALK/8TkciXywdeSndwSm5g3Qk/CIiO1wYVJiIA==
X-Forefront-Antispam-Report: CIP:164.130.1.88;CTRY:IT;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:smtpO365.st.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(36860700016)(82310400026)(23010399003)(376014)(7416014)(10067099003)(3023799007)(6133799003)(56012099006)(22082099003)(18002099003)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 6fUT0CwICTzxUpjQQehgXElTps+XOEYNZUyo2bVPU3cUrddn7q1cywnpvb8zN+C6hRLzcKtEkzfYjxql+MrXbxQSStyxp09qXKF0zzNvBXT6PDVqrG6f6r7RjQ1V3I7pX/Gc+D/VKbD1zl5oyQFxBX0bPKYhlts4R9JQmLAx4XUWx7I7DZ3kutXYqpFFLwPr1mcM5JYUzVJitk/Nkxk19anCLmQOBQD+HcualahiFIP67nDeSiBRLLEtekvWZQD8ZNi9dNOA2fiXldjCA5nUheQVOcsd1+3b339kbHBWtdDD4SR3viGoeSmcCX+G8NBHqmWe28Zv5w3SOfvV8vCdSvc7VvuPijnBh8FP0ddJLL7+9aimNfKPaEiXyGiMzXcbBR5vp9iJeKvEy4RLIR7HcGefJziJC+NTZcDTnwSACkm//X+KN8oGE3YqqnrLI6kT
X-OriginatorOrg: foss.st.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2026 10:19:31.7927
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 83109a49-9883-4d54-d962-08df09a4d856
X-MS-Exchange-CrossTenant-Id: 75e027c9-20d5-47d5-b82f-77d7cd041e8f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=75e027c9-20d5-47d5-b82f-77d7cd041e8f;Ip=[164.130.1.88];Helo=[smtpO365.st.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS0EPF00000192.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV4PR10MB9596
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_031943_214671_0C67E329 
X-CRM114-Status: GOOD (  19.76  )
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

T24gOS8yLzI2IDE2OjEzLCBNYXJlayBWYXN1dCB3cm90ZToKPiBGcm9tOiBQYW5rYWogRGV2IDxw
YW5rYWouZGV2QHN0LmNvbT4KPiAKPiBEb2N1bWVudCBVU0IyIFBIWSBmb3IgU1RNMzJNUDI1IFVT
QjIgY29udHJvbGxlcnMsIHdoaWNoIGluY2x1ZGVzIHRoZQo+IFVTQjIuMCBob3N0LW9ubHkgY29u
dHJvbGxlciBhbmQgVVNCIDIuMCBwYXJ0IG9mIHRoZSBEV0MzIGNvbnRyb2xsZXIuCj4gVHdvIHN1
Y2ggUEhZcyBpbiB0b3RhbCBhcmUgcHJlc2VudCBpbiBTVE0zMk1QMjUgU29DLCB0aGV5IGJvdGgg
YXJlCj4gc2xpZ2h0bHkgZGlmZmVyZW50LCB0aGVyZWZvcmUgdGhleSB1c2UgZGlmZmVyZW50IGNv
bXBhdGlibGUgc3RyaW5nCj4gdG8gZGlzY2VybiB0aGVtLgoKSGVsbG8gTWFyZWssCgpJJ20gbm90
IHN1cmUgaWYvaG93IHRoaXMgZml0IHdpdGggYWxsIGJlbG93IHRhZ3MuIEZvciBhbGwgdGhlCmNv
bnRyaWJ1dGlvbnMgeW91J3ZlIG1hZGUsIHlvdSBjYW4gYWRkIG15OgpSZXZpZXdlZC1ieTogRmFi
cmljZSBHYXNuaWVyIDxmYWJyaWNlLmdhc25pZXJAZm9zcy5zdC5jb20+ClRlc3RlZC1ieTogRmFi
cmljZSBHYXNuaWVyIDxmYWJyaWNlLmdhc25pZXJAZm9zcy5zdC5jb20+CgpCUiwKRmFicmljZQoK
PiAKPiBSZXZpZXdlZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3Nr
aUBvc3MucXVhbGNvbW0uY29tPgo+IFNpZ25lZC1vZmYtYnk6IFBhbmthaiBEZXYgPHBhbmthai5k
ZXZAc3QuY29tPgo+IENvLWRldmVsb3BlZC1ieTogUmFodWwgS3VtYXIgPHJhaHVsLmt1bWFyMDVA
c3QuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFJhaHVsIEt1bWFyIDxyYWh1bC5rdW1hcjA1QHN0LmNv
bT4KPiBDby1kZXZlbG9wZWQtYnk6IEZhYnJpY2UgR2FzbmllciA8ZmFicmljZS5nYXNuaWVyQGZv
c3Muc3QuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEZhYnJpY2UgR2FzbmllciA8ZmFicmljZS5nYXNu
aWVyQGZvc3Muc3QuY29tPgo+IENvLWRldmVsb3BlZC1ieTogQ2zDqW1lbnQgTGUgR29mZmljIDxj
bGVtZW50LmxlZ29mZmljQGZvc3Muc3QuY29tPgo+IFNpZ25lZC1vZmYtYnk6IENsw6ltZW50IExl
IEdvZmZpYyA8Y2xlbWVudC5sZWdvZmZpY0Bmb3NzLnN0LmNvbT4KPiBDby1kZXZlbG9wZWQtYnk6
IE1hcmVrIFZhc3V0IDxtYXJleEBuYWJsYWRldi5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWFyZWsg
VmFzdXQgPG1hcmV4QG5hYmxhZGV2LmNvbT4KPiAtLS0KPiBDYzogQWxleGFuZHJlIFRvcmd1ZSA8
YWxleGFuZHJlLnRvcmd1ZUBmb3NzLnN0LmNvbT4KPiBDYzogQ2hyaXN0aWFuIEJydWVsIDxjaHJp
c3RpYW4uYnJ1ZWxAZm9zcy5zdC5jb20+Cj4gQ2M6IENvbm9yIERvb2xleSA8Y29ub3IrZHRAa2Vy
bmVsLm9yZz4KPiBDYzogRmFicmljZSBHYXNuaWVyIDxmYWJyaWNlLmdhc25pZXJAZm9zcy5zdC5j
b20+Cj4gQ2M6IEtyenlzenRvZiBLb3psb3dza2kgPGtyemsrZHRAa2VybmVsLm9yZz4KPiBDYzog
TWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pQGtlcm5lbC5vcmc+Cj4gQ2M6IE1heGltZSBDb3F1
ZWxpbiA8bWNvcXVlbGluLnN0bTMyQGdtYWlsLmNvbT4KPiBDYzogTmVpbCBBcm1zdHJvbmcgPG5l
aWwuYXJtc3Ryb25nQGxpbmFyby5vcmc+Cj4gQ2M6IFBhbmthaiBEZXYgPHBhbmthai5kZXZAc3Qu
Y29tPgo+IENjOiBQYXRyaWNlIENob3RhcmQgPHBhdHJpY2UuY2hvdGFyZEBmb3NzLnN0LmNvbT4K
PiBDYzogUmFodWwgS3VtYXIgPHJhaHVsLmt1bWFyMDVAc3QuY29tPgo+IENjOiBSb2IgSGVycmlu
ZyA8cm9iaEBrZXJuZWwub3JnPgo+IENjOiBSb3NlbiBQZW5ldiA8cm9zZW5wQGdtYWlsLmNvbT4K
PiBDYzogVmlub2QgS291bCA8dmtvdWxAa2VybmVsLm9yZz4KPiBDYzogZGV2aWNldHJlZUB2Z2Vy
Lmtlcm5lbC5vcmcKPiBDYzoga2VybmVsQGRoLWVsZWN0cm9uaWNzLmNvbQo+IENjOiBsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBDYzogbGludXgta2VybmVsQHZnZXIua2Vy
bmVsLm9yZwo+IENjOiBsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IENjOiBsaW51eC1z
dG0zMkBzdC1tZC1tYWlsbWFuLnN0b3JtcmVwbHkuY29tCj4gLS0tCj4gVjI6IC0gRml4IHVwIFNv
Yi9DZGIgbGluZXMKPiAgICAgLSBGaXggdXAgY29tcGF0aWJsZSBzdHJpbmcgaW4gZXhhbXBsZQo+
ICAgICAtIFVzZSBhZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKPiAgICAgLSBFeHBhbmQgZGVz
Y3JpcHRpb246Cj4gICAgIC0gVXNlIGNsb2NrLWNlbGxzID0gPDE+IHRvIGRpc2Nlcm4gT1NDIGFu
ZCBmdXR1cmUgUExMIGNsb2NrIGZyb20gdGhlIFBIWQo+IFYzOiAtIE1vdmUgY2xvY2stY2VsbHMg
bmV4dCB0byBQSFkgY2VsbHMKPiAgICAgLSBGaXggdGhlIGJpbmRpbmdzCj4gICAgIC0gRml4IHVw
IFNvYi9DZGIgbGluZXMgZnVydGhlcgo+IFY0OiAtIFJlb3JkZXIgdGhlIHByb3BlcnRpZXM6IGxp
c3QsIHB1dCAjLi4uY2VsbHMgYXQgdGhlIGVuZCwgcmVnIGFmdGVyIGNvbXBhdGlibGUKPiAgICAg
LSBTcGxpdCB0aGlzIGZyb20gc2VyaWVzIGFybTY0OiBkdHM6IHBoeTogc3Q6IHVzYjogQWRkIFNU
TTMyTVAyIFVTQiBzdXBwb3J0Cj4gICAgICAgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIw
MjYwODIyMDc0ODE2LjU0ODY2Mi0xLW1hcmV4QG5hYmxhZGV2LmNvbS8KPiBWNTogQWRkIFJCIGZy
b20gS3J6eXN6dG9mCj4gLS0tCj4gIC4uLi9iaW5kaW5ncy9waHkvc3Qsc3RtMzItdXNiMnBoeS55
YW1sICAgICAgICB8IDY4ICsrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDY4
IGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9waHkvc3Qsc3RtMzItdXNiMnBoeS55YW1sCj4gCj4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc3Qsc3RtMzItdXNiMnBoeS55
YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zdCxzdG0zMi11c2Iy
cGh5LnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLmM3
NmU5NGMwNDRlNjcKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3BoeS9zdCxzdG0zMi11c2IycGh5LnlhbWwKPiBAQCAtMCwwICsxLDY4IEBA
Cj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xh
dXNlKQo+ICslWUFNTCAxLjIKPiArLS0tCj4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3Nj
aGVtYXMvcGh5L3N0LHN0bTMyLXVzYjJwaHkueWFtbCMKPiArJHNjaGVtYTogaHR0cDovL2Rldmlj
ZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4gKwo+ICt0aXRsZTogU1RNaWNyb2Vs
ZWN0cm9uaWNzIFNUTTMyIE1QVSBIaWdoLVNwZWVkIFVTQiBQSFkKPiArCj4gK2Rlc2NyaXB0aW9u
Ogo+ICsgIFVTQjIgUEhZIGJsb2NrIGluIFNUTTMyIGlzIGF0dGFjaGVkIHRvIFVTQiAyLjAgSG9z
dCBjb250cm9sbGVyIGFuZAo+ICsgIFVTQiAyLjAgc2lkZSBvZiBEV0MzIERSRCBjb250cm9sbGVy
LCBhbmQgcHJvdmlkZXMgdGhlIFVTQiBMUy9GUy9IUwo+ICsgIGNvbm5lY3Rpdml0eS4gQm90aCBQ
SFlzIGFyZSB0aGUgRkVNVE8tUEhZLCBidXQgdGhlaXIgY29uZmlndXJhdGlvbgo+ICsgIGJpdHMg
aW4gdGhlIHN5c3RlbSBjb250cm9sIHJlZ2lzdGVyIGFyZSBkaWZmZXJlbnQgZm9yIGVhY2ggdmFy
aWFudC4KPiArCj4gK21haW50YWluZXJzOgo+ICsgIC0gRmFicmljZSBHYXNuaWVyIDxmYWJyaWNl
Lmdhc25pZXJAZm9zcy5zdC5jb20+Cj4gKyAgLSBNYXJlayBWYXN1dCA8bWFyZXhAbmFibGFkZXYu
Y29tPgo+ICsgIC0gUGFua2FqIERldiA8cGFua2FqLmRldkBzdC5jb20+Cj4gKwo+ICtwcm9wZXJ0
aWVzOgo+ICsgIGNvbXBhdGlibGU6Cj4gKyAgICBlbnVtOgo+ICsgICAgICAtIHN0LHN0bTMybXAy
NS11c2IycGh5MQo+ICsgICAgICAtIHN0LHN0bTMybXAyNS11c2IycGh5Mgo+ICsKPiArICByZWc6
Cj4gKyAgICBtYXhJdGVtczogMQo+ICsKPiArICBjbG9ja3M6Cj4gKyAgICBtYXhJdGVtczogMQo+
ICsKPiArICByZXNldHM6Cj4gKyAgICBtYXhJdGVtczogMQo+ICsKPiArICB2ZGQzMy1zdXBwbHk6
Cj4gKyAgICBkZXNjcmlwdGlvbjogUGhhbmRsZSB0byByZWd1bGF0b3IgcHJvdmlkaW5nIDNWMyBw
b3dlciBzdXBwbHkgdG8gdGhlIFVTQjIgSFMgUEhZCj4gKwo+ICsgICIjY2xvY2stY2VsbHMiOgo+
ICsgICAgY29uc3Q6IDEKPiArCj4gKyAgIiNwaHktY2VsbHMiOgo+ICsgICAgY29uc3Q6IDAKPiAr
Cj4gK3JlcXVpcmVkOgo+ICsgIC0gY29tcGF0aWJsZQo+ICsgIC0gcmVnCj4gKyAgLSBjbG9ja3MK
PiArICAtIHJlc2V0cwo+ICsgIC0gdmRkMzMtc3VwcGx5Cj4gKyAgLSAiI2Nsb2NrLWNlbGxzIgo+
ICsgIC0gIiNwaHktY2VsbHMiCj4gKwo+ICthZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKPiAr
Cj4gK2V4YW1wbGVzOgo+ICsgIC0gfAo+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2Nr
L3N0LHN0bTMybXAyNS1yY2MuaD4KPiArICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9yZXNldC9z
dCxzdG0zMm1wMjUtcmNjLmg+Cj4gKwo+ICsgICAgdXNiLXBoeUAyNDAwIHsKPiArICAgICAgICBj
b21wYXRpYmxlID0gInN0LHN0bTMybXAyNS11c2IycGh5MSI7Cj4gKyAgICAgICAgcmVnID0gPDB4
MjQwMCAweDI0PjsKPiArICAgICAgICAjcGh5LWNlbGxzID0gPDA+Owo+ICsgICAgICAgICNjbG9j
ay1jZWxscyA9IDwxPjsKPiArICAgICAgICBjbG9ja3MgPSA8JnJjYyBDS19LRVJfVVNCMlBIWTE+
Owo+ICsgICAgICAgIHJlc2V0cyA9IDwmcmNjIFVTQjJQSFkxX1I+Owo+ICsgICAgICAgIHZkZDMz
LXN1cHBseSA9IDwmdmRkMzN1c2I+Owo+ICsgICAgfTsKCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
