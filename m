Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 380B6D65C7E
	for <linux-phy@archiver.kernel.org>; Thu, 14 Nov 2024 11:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kDMmJwa8ANZVbet23edY+8yX8fAV6tDD2F2nJdBSd3Q=; b=xNd/4uF/9vspua
	zhDrBkFD6jRCV4JFdims9+JAKJNetTJbW2h3SBoXugOaiKu2+3KpHtJ25w7drMjQC2X9iSk3CxJXU
	+Sd9s6XmRvWYc7nSTXzSxsGM9PCU/P9um8dqhzBpXl493d7eP0O+2KVTFyojGiWTER0pKeyjpdRF7
	cz/o9o3AHIR7zr1mOVZ/p/7aDtpBDJt7cmlhS5gGiPS/M+XEKcyQv6bIGsgKdfjQI3BrHqMscW1wh
	5kCm8J/XffZ3NFrzoYRCSFpYDNOvRkxKUNrXKB1z6MHUYg3MfRt2TCx3DpayoYN6hVK8bc2Xc/UXS
	Va0TP3QoYzyeyrE/KinQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBYMN-00000009n0f-3K0F;
	Thu, 14 Nov 2024 11:50:03 +0000
Received: from mail-vi1eur02on2062c.outbound.protection.outlook.com ([2a01:111:f403:2607::62c] helo=EUR02-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBXfg-00000009eqg-3btO;
	Thu, 14 Nov 2024 11:05:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fu+asE8BtsXhIInAeW9Gtr09U5jJpfL/FC6Rz9/jqUZPKsxEWMdAspiiYmS8Md7b+8P7HoQmy1JCxDPH/kK6Xtdm62du5XUFjj+V2c5tevjo40bD6vG9guctSjYhd55S1pF2OaAEAKdHBB60fFNA9zb+WhhHDrT1RuCLcKDNrgB/+IcNy5E6RcBuYLBevHgwfoVR8VnXx38w/uNOxgSn/jupxcTsDFDTKPXJlumt+NoePl1SJaFHMQ5yCtzKNBr/tsmLojJx8LKoajommt6yRySjN/hgFYOpPV3ienx7pRIMrKuH1XsKWFihtKcHkV2CCxn8qEfe1ZeFd+kTZjpEHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eMgRw/4KgLfzPzIqEQZxz4BhuAttqw9j8fbRZuCP3do=;
 b=Bo0AO6ieoEcpUCQwgjUsDfEO5z2eEdRZ81tokgjdC2RJ0A/M1aWmrCAkpYYL7bAWXE7DRrGpgfd7GqdmqA1FgfgPQslQjABwM4t+oITGBpUqni5UvZnePq+JIoaAKh+41v5TwwidAz3SnpoSQwvdnDMnJXcwxRiqBdgWNhQi/YjWS1oq1bARNfJMEZXoYuXlAbSypPalAYdAoLrCCqaHsRcCIm4CPk3Xq/StG07D8N1j6D7vAsbfuedhl5saSrNiNJ/VvskeddaMLa7x3zdR9Z9IO2l5gFbJYlRyg4fhm//4MOfUFBo4dEtcjENJOVBrxtRU0stuhIknI3mZkw+oBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eMgRw/4KgLfzPzIqEQZxz4BhuAttqw9j8fbRZuCP3do=;
 b=ARNScUl3pUYm+PhDGoFt+/1zv47nym7tlMrFIotlH34HPT6HzBMh9lCsBb2NBBbQb2pUFg5Ur8jkhRS5dda1dmmLy6jUttPFHOm7n3WzpjmAaoMNesY0dN2FYn5+LxaYVEz89YOd0LL6i8p62wXc6Z+/s6s0yewtH+ZWWqnthdLtDcu+FfKyxSgP4yTJsePQkvzdXTft1czIUvKDA0kJJZzqGydt4SrvKGPObgO8zZbF43Y7W6c9TRflb4Tf1ssuCL0u80hfNSGxr6Tl/h7atet/HJ3folZM2EHhfQ181le4dN1enYBZ68JKkz+IIIgVp8bmS0m9tAmNuwW9Hydy9A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com (2603:10a6:10:2e1::11)
 by DB8PR04MB6842.eurprd04.prod.outlook.com (2603:10a6:10:11c::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.18; Thu, 14 Nov
 2024 11:05:44 +0000
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::4e24:c2c7:bd58:c5c7]) by DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::4e24:c2c7:bd58:c5c7%6]) with mapi id 15.20.8158.013; Thu, 14 Nov 2024
 11:05:44 +0000
Date: Thu, 14 Nov 2024 19:03:25 +0800
From: Xu Yang <xu.yang_2@nxp.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	gregkh@linuxfoundation.org, Frank.Li@nxp.com, jun.li@nxp.com,
	l.stach@pengutronix.de, aford173@gmail.com, hongxing.zhu@nxp.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH v9 2/3] arm64: dts: imx95: add usb3 related nodes
Message-ID: <20241114110325.qmakphgvkqoykzbl@hippo>
References: <20241113080745.2300915-1-xu.yang_2@nxp.com>
 <20241113080745.2300915-2-xu.yang_2@nxp.com>
 <2968363.e9J7NaK4W3@steina-w>
Content-Disposition: inline
In-Reply-To: <2968363.e9J7NaK4W3@steina-w>
X-ClientProxiedBy: SG2PR02CA0118.apcprd02.prod.outlook.com
 (2603:1096:4:92::34) To DU2PR04MB8822.eurprd04.prod.outlook.com
 (2603:10a6:10:2e1::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8822:EE_|DB8PR04MB6842:EE_
X-MS-Office365-Filtering-Correlation-Id: da213759-8fbd-46aa-16ee-08dd049c489d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|52116014|366016|38350700014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TDJhTHBWMjZxSUJmaWYvWEF3elRuT1F3aGhJTjRubmU2ZzZkWmRnbWJwNGFt?=
 =?utf-8?B?UEorUzdDSi9QRFgxdjVzdGtpdXRYbjhpbWErWUh5TU5abHE0SVN0SnUxN2N5?=
 =?utf-8?B?Nzg4U1doKzFENExCWVQyU1Y0b1BMYTcrMTBJS2g2NW5SMHlJQWVUYXFVZ2Zy?=
 =?utf-8?B?azZURmlOd0h0Z25uSGpuV0JxY28wZERqdWltemhvZjUwWTBRazJFRFZ2UkI1?=
 =?utf-8?B?YmROUURuNWRycG4zaDZGSjJsMTU1d0xWL1BFcHh5U0pqc2lHcGFTTXo1bC96?=
 =?utf-8?B?SUYwZUdaUEZKVDhUemtYeW1NeDFsa2hhU3kzQ0F0QTRFU2l2SnlLVHNaVUlP?=
 =?utf-8?B?bkh0U0dZUncyYjdjL0MvNkFDT0YxUlJKVk1tbXcySGZFT0dlOU5DZHNyV2Na?=
 =?utf-8?B?cFJHck5kSjNuTHVHRTd2RnZrZDdWMmxtbFR0Si9iL1A2MUYrUDhNOFZNREZS?=
 =?utf-8?B?YURucWNPRm9oK3pYT2dYYVRETC9WZXhjaHIyekxnWlNNb0tJUERkdkdRa3BB?=
 =?utf-8?B?NDRBVDJUY2Z3TjhxUXRIL1hzdC9HWG5ZTTlaUWg5cmUvQm54UkFMdVFNeTRq?=
 =?utf-8?B?Z2QwR2ZtYzVUVFJ1MVI1b21wNElTWHpkRGs2dzJTcjYwclVyb29IVVhLRDIx?=
 =?utf-8?B?VTBHVC8yNnROMVNBMkRiS2Q1UmUwSXpQZUxHNUtlcWZBaHFPM3N6TE9QMUUw?=
 =?utf-8?B?dWRuamdjeTBMTE04SDNOTVdKVnFZd3M2V3ZZeGE2ZWZ4RlJMa1BWQWtFSGs5?=
 =?utf-8?B?UC9YSW81cmJEbmZLKzRYU3FLbTJEcnBXNkpPMUhPWmNNSzJVL2xTK2tuUEFZ?=
 =?utf-8?B?Ly9SSmJLc1ZtMzNJN0FLbldJTS9Jb2lNQnRRcnJRVXFNSEs0TGhic2lEVUlj?=
 =?utf-8?B?dTNSMHRGNVR5U1EzNXpydGRuK0lCQ2phYXZqbTRkajcxNnBWbkswd1UvYW96?=
 =?utf-8?B?Wm5mSzZ2cWtTeHhRRmdpSlk1NStDUzJ0U1kwWmE1RkFCZ0tCSGJCc1ptQzZJ?=
 =?utf-8?B?MC8xYWxNVVRMWDlXQi9wVTVBTHpVa0UvL3IwcmJZajJ5UHlJWVpFMitOaFl5?=
 =?utf-8?B?MVRsVFErZE8zNjREWjVDL2tDNGQ2TmNMRXB5Q0hPdnJlMDk3WnVnOEdNamFL?=
 =?utf-8?B?M1JEanR2a050dE5GMzErcUhGamx2bXV2c3NSb3NTNjlxVTdySGs5Ym5qNm1T?=
 =?utf-8?B?R2Q2Yi9IYWh3TlJFdHVTYnlJaENmeC9oNDVlSFpMMzRuN2ZZenBSVUpPUXVK?=
 =?utf-8?B?SkJqUkRvMUJXTjdrMldNbk9rSEhVbHVJSWFwa2ZvaFZ4ZTVNQTQxbExqNmFv?=
 =?utf-8?B?emJsOHZxb0lja2dEL3hDUlFRdGdldFF3MVl0OXh3TFdoL3NzVGtrVU1yMUR2?=
 =?utf-8?B?NmpUbVVjenMzNmUxWExPODR5ckc5UjYvbnQ3R05VcG1wQkhxajFLOCtHQVc3?=
 =?utf-8?B?MlowQjNVWUc0QmxRcVdzVHN6THlTNlVGOXBDdVgvdmVwVWtRdC8vM1RIQnA2?=
 =?utf-8?B?eGpuV2FCU0NDeVJyVXB6dVEySm9ReDR3aEFvTmxMTzlPMzFCMlVpdkZLYTYw?=
 =?utf-8?B?c0lxcXlDZlZ0YjVjc1JTOUtXMXZ4RlU1OVIrZ2VsYk5oZWkwSi9sblMzV0VF?=
 =?utf-8?B?Um0wQ0pyeXdxVFUvZ1NwZWlGVm1tOEx2ZGFMcUdoL2h5eFI3cmFvcE9KajBl?=
 =?utf-8?B?bVd4MnBYY2lzbzhlS0orTWF4WkVJaUwrcDdXSld5RHNLcUZaeDd4TFpKY2JM?=
 =?utf-8?Q?zYJa67+9uH32lhONsgory1VHnzoblwAmPgrKc4L?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8822.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(52116014)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c2VXOTM5T0tJeHlqa1JRNVlOdVYzYWI5eUx3RVM5dzhGNzJyTDYxVlhabEZY?=
 =?utf-8?B?MlkrVTlZWUk0L0VPaHcyVVZUbmNHZmdiZWszSVBLTEtLQUtmNEIrb0E1TmMw?=
 =?utf-8?B?MHkwRlVJbXdOZUNFVG5wci91NzBaTUw5ZjYwczltYmkrbElQS0c5RGh5bnpY?=
 =?utf-8?B?MFlHL0NDemxuYThyeWZsOHJ3MDVKTGFsK3c1VFc0M0J4WmtCd01DcHQrY25a?=
 =?utf-8?B?dTBWN2hlWE1Za0JVaGtBQzZubjcyQ2NOYTM3cmM0eWJad2FxWEFmNHgydUVZ?=
 =?utf-8?B?NjkrVEJOaWllSWlnU3cxRU1DazJqTjl0enRZRFNEbWhpa0dRNGdlT2J6b00w?=
 =?utf-8?B?Z0pxNEFwcmxDcGl4UDc3VEtvRUVPbE1TVldXa0hvdTlSemVscjE5S3ArSkFo?=
 =?utf-8?B?VjZLODUwa1RwOElKaXM0UytkbUJCSEp2QjJnWVJCU1RyZkxpUU5tNVNPY2dv?=
 =?utf-8?B?OFZVVVlVNDIxSXdxdFQwb0o2T1J6V3REb2ZOMitnU2pnbkVkMGhnanpzYVZX?=
 =?utf-8?B?L05RM1JRaU80bFFmQmtnQ1FxOW5RUHVKbEEvT1FoSUJ3K1hMREU3UUJnSS96?=
 =?utf-8?B?VGVablRRNm93ZHlKSnhzSW9PRlZaYlo3OUFmU1JrWHNHNW1HcDMrVFBEdGdt?=
 =?utf-8?B?enZpNVcwUldxdktaNW15YzNEOHJKT01VR1M0TFRiZnJqQzhaVHBabVM1eFpY?=
 =?utf-8?B?ZG5QV095cTVnVHJpRVF4V0tEd0FKL294L1MzQm5BZHZNSFA2Q2x6bFArc0Uy?=
 =?utf-8?B?aWYxUVdZekZ4eERRbUxsTWlHRDdqajNtaE5sNEp0UmV6Unp2VUE5ZFR6TGtL?=
 =?utf-8?B?bnJJbHdtVDJzSnBFZjZPR1RxMWxFZ0U1cHNwNndMbGtydEhRVnkxMWI1dEtt?=
 =?utf-8?B?SUNnejl2MmMvTHBXYXVOeUpscU5NYVYzKzlCeEo0amdEQ0xwT1hlN2czRjJ3?=
 =?utf-8?B?c3VMV0FXb0dLQ2crM3ZwOTFKTFJocDNGSDRkRG5VTUNCNyt6Z2xGWTltQXpj?=
 =?utf-8?B?eXMyZ2RRd3Z4VmNZSVRaMlp3R2t2OXRYOXZ2Z09PWXdoVzJJRUJEcFMxODNQ?=
 =?utf-8?B?MFdSVVpEYXVWL1BlcUIrWm1vTi9KemE1eWtMZERpN24rTHo1N0d6VDVSdTVM?=
 =?utf-8?B?RFA5SU84RjYvTEprSElpRS8wMFB1WUoxaDQxQ3BPSzljREE1c0ZqcjRXTHVC?=
 =?utf-8?B?RGtlRTc2SjFHa24zbUtBTU0xTmxjbFJEbTJYdlBBOHJ2K0MvcnoxZW9CTWJ5?=
 =?utf-8?B?UVhEdUJwLytrU3g3ZzNQbEwzYXhLdDQ5SHZ2Vmx3K0R2Vm50bGVHN0toM0RC?=
 =?utf-8?B?VDdxbHpPbkFQWUxTTEpENlg5VWhXUTNCaDVoanhrd1VGOHJJY2s5MmFHa3N3?=
 =?utf-8?B?VnlFWERYa2ljeGtUYTQ0WjRQUk85ZEp2dm5MOTFkbzBxSnJBT2hJS3lLaWZj?=
 =?utf-8?B?bm92RmE1VG1XTkZHYStVT0toWmxwWTl4Qko0aWZaN3ptc3RiWWROcG9MNmJo?=
 =?utf-8?B?eWQ0WldxM3RhMEhtbDVPWmVhZEVPTE5jQTI5Y1VLSFV4c2R2TVlaZDRPWEt0?=
 =?utf-8?B?WnFObk1rdkdTckxrdDcvZkNQcy9sMytteGpSZkRFV20xSit5TmZpeUFpekxn?=
 =?utf-8?B?M3BIcTdLNzZ1U0Fhd0JyS0JXZk1hR2t3ZVJINkI3NWtJamd1MUVoWWM3cmNK?=
 =?utf-8?B?M1lVdlA4T1F1YWl2VHJGNTNaRU02dFdOMysrMGE3enlHNXl4UDhHZzBLMVAz?=
 =?utf-8?B?dkZKNFZjb240VFlJQ3BnYmRPNnVRUlJYZDFIczN0a29VQkZQSGw2STROeGp1?=
 =?utf-8?B?NWd2RzhoZ0xaVVkxY2MvYU1NVzRsL1d0b1lSVlhxL3h1L1E3VTZlcWJDcExa?=
 =?utf-8?B?UVVwYXNWUllUa3dNL2szdzBCdmwwb0lrUGE5d29iZ2pjSTNDQk56anJnS1Zk?=
 =?utf-8?B?Wk5wN1F6THRYeUZCMkpOcE1MaUJHVVd2dVprTm5vd3d1Q1RJUS91MEsxQS9I?=
 =?utf-8?B?cHk4VWhPTG5SZEo3Tnc3cmdSUjM3QXM5NVNsU1ZUSCs4N2RKOC9acDFjTHlv?=
 =?utf-8?B?aU9aWWZiQ1ZpZlpzdWRlSGQrTk1xa0hLVHRiYUhDU1J2amtUTGlldnJtMm8w?=
 =?utf-8?Q?RLIr3AB6wfT0jh3H4Dq1QGcDw?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da213759-8fbd-46aa-16ee-08dd049c489d
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8822.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2024 11:05:43.9377
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L/OsMiHYk1qr+rnlmlJQ9xu69pJsM7ave8HCKCmZ495TBf5nPskmvoKse52qAinhBN5qx+2MrtQYA11dmGoptg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6842
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_030556_943196_C6F60B09 
X-CRM114-Status: GOOD (  21.72  )
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

T24gVGh1LCBOb3YgMTQsIDIwMjQgYXQgMTE6NTk6MjNBTSArMDEwMCwgQWxleGFuZGVyIFN0ZWlu
IHdyb3RlOgo+IEhpLAo+IAo+IEFtIE1pdHR3b2NoLCAxMy4gTm92ZW1iZXIgMjAyNCwgMDk6MDc6
NDQgQ0VUIHNjaHJpZWIgWHUgWWFuZzoKPiA+IEFkZCB1c2IzIHBoeSBhbmQgY29udHJvbGxlciBu
b2RlcyBmb3IgaW14OTUuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IFh1IFlhbmcgPHh1Lnlhbmdf
MkBueHAuY29tPgo+ID4gCj4gPiAtLS0KPiA+IENoYW5nZXMgaW4gdjI6Cj4gPiAgLSBubyBjaGFu
Z2VzCj4gPiBDaGFuZ2VzIGluIHYzOgo+ID4gIC0gbm8gY2hhbmdlcwo+ID4gQ2hhbmdlcyBpbiB2
NDoKPiA+ICAtIHJlb3JkZXIgbm9kZXMKPiA+IENoYW5nZXMgaW4gdjU6Cj4gPiAgLSBubyBjaGFu
Z2VzCj4gPiBDaGFuZ2VzIGluIHY2Ogo+ID4gIC0gcmViYXNlIHRvIGxhdGVzdAo+ID4gQ2hhbmdl
cyBpbiB2NzoKPiA+ICAtIG5vIGNoYW5nZXMKPiA+IENoYW5nZXMgaW4gdjg6Cj4gPiAgLSBubyBj
aGFuZ2VzCj4gPiBDaGFuZ2VzIGluIHY5Ogo+ID4gIC0gbm8gY2hhbmdlcwo+ID4gLS0tCj4gPiAg
YXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OTUuZHRzaSB8IDQzICsrKysrKysrKysr
KysrKysrKysrKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0MyBpbnNlcnRpb25zKCspCj4gPiAK
PiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg5NS5kdHNp
IGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OTUuZHRzaQo+ID4gaW5kZXggMDM2
NjFlNzY1NTBmLi5lM2ZhYTg0NjI3NTkgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2ZyZWVzY2FsZS9pbXg5NS5kdHNpCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2Zy
ZWVzY2FsZS9pbXg5NS5kdHNpCj4gPiBAQCAtMTQ3Myw2ICsxNDczLDQ5IEBAIHNtbXU6IGlvbW11
QDQ5MGQwMDAwIHsKPiA+ICAJCQl9Owo+ID4gIAkJfTsKPiA+ICAKPiA+ICsJCXVzYjM6IHVzYkA0
YzAxMDAxMCB7Cj4gPiArCQkJY29tcGF0aWJsZSA9ICJmc2wsaW14OTUtZHdjMyIsICJmc2wsaW14
OG1wLWR3YzMiOwo+ID4gKwkJCXJlZyA9IDwweDAgMHg0YzAxMDAxMCAweDAgMHgwND4sCj4gPiAr
CQkJICAgICAgPDB4MCAweDRjMWYwMDAwIDB4MCAweDIwPjsKPiA+ICsJCQljbG9ja3MgPSA8JnNj
bWlfY2xrIElNWDk1X0NMS19IU0lPPiwKPiA+ICsJCQkJIDwmc2NtaV9jbGsgSU1YOTVfQ0xLXzMy
Sz47Cj4gPiArCQkJY2xvY2stbmFtZXMgPSAiaHNpbyIsICJzdXNwZW5kIjsKPiA+ICsJCQlpbnRl
cnJ1cHRzID0gPEdJQ19TUEkgMTczIElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+ID4gKwkJCSNhZGRy
ZXNzLWNlbGxzID0gPDI+Owo+ID4gKwkJCSNzaXplLWNlbGxzID0gPDI+Owo+ID4gKwkJCXJhbmdl
czsKPiA+ICsJCQlwb3dlci1kb21haW5zID0gPCZzY21pX2RldnBkIElNWDk1X1BEX0hTSU9fVE9Q
PjsKPiA+ICsJCQlkbWEtcmFuZ2VzID0gPDB4MCAweDAgMHgwIDB4MCAweDEwIDB4MD47Cj4gPiAr
CQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiA+ICsKPiA+ICsJCQl1c2IzX2R3YzM6IHVzYkA0YzEw
MDAwMCB7Cj4gPiArCQkJCWNvbXBhdGlibGUgPSAic25wcyxkd2MzIjsKPiA+ICsJCQkJcmVnID0g
PDB4MCAweDRjMTAwMDAwIDB4MCAweDEwMDAwPjsKPiA+ICsJCQkJY2xvY2tzID0gPCZzY21pX2Ns
ayBJTVg5NV9DTEtfSFNJTz4sCj4gPiArCQkJCQkgPCZzY21pX2NsayBJTVg5NV9DTEtfMjRNPiwK
PiA+ICsJCQkJCSA8JnNjbWlfY2xrIElNWDk1X0NMS18zMks+Owo+ID4gKwkJCQljbG9jay1uYW1l
cyA9ICJidXNfZWFybHkiLCAicmVmIiwgInN1c3BlbmQiOwo+ID4gKwkJCQlpbnRlcnJ1cHRzID0g
PEdJQ19TUEkgMTc1IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+ID4gKwkJCQlwaHlzID0gPCZ1c2Iz
X3BoeT4sIDwmdXNiM19waHk+Owo+ID4gKwkJCQlwaHktbmFtZXMgPSAidXNiMi1waHkiLCAidXNi
My1waHkiOwo+ID4gKwkJCQlzbnBzLGdmbGFkai1yZWZjbGstbHBtLXNlbC1xdWlyazsKPiA+ICsJ
CQkJc25wcyxwYXJrbW9kZS1kaXNhYmxlLXNzLXF1aXJrOwo+ID4gKwkJCQlpb21tdXMgPSA8JnNt
bXUgMHhlPjsKPiA+ICsJCQl9Owo+ID4gKwkJfTsKPiA+ICsKPiA+ICsJCXVzYjNfcGh5OiBwaHlA
NGMxZjAwNDAgewo+ID4gKwkJCWNvbXBhdGlibGUgPSAiZnNsLGlteDk1LXVzYi1waHkiLCAiZnNs
LGlteDhtcC11c2ItcGh5IjsKPiA+ICsJCQlyZWcgPSA8MHgwIDB4NGMxZjAwNDAgMHgwIDB4NDA+
LAo+ID4gKwkJCSAgICAgIDwweDAgMHg0YzFmYzAwMCAweDAgMHgxMDA+Owo+ID4gKwkJCWNsb2Nr
cyA9IDwmc2NtaV9jbGsgSU1YOTVfQ0xLX0hTSU8+Owo+ID4gKwkJCWNsb2NrLW5hbWVzID0gInBo
eSI7Cj4gPiArCQkJI3BoeS1jZWxscyA9IDwwPjsKPiA+ICsJCQlwb3dlci1kb21haW5zID0gPCZz
Y21pX2RldnBkIElNWDk1X1BEX0hTSU9fVE9QPjsKPiA+ICsJCQlvcmllbnRhdGlvbi1zd2l0Y2g7
Cj4gCj4gVGhpcyBhZGRzIHRoZSBvcmllbnRhdGlvbi1zd2l0Y2ggdG8gYWxsIGlteDk1IGJhc2Vk
IGJvYXJkcywgd2hpY2ggaW4gdHVybgo+IHJlcXVpcmVzIGEgcG9ydCBzdWJub2RlLgo+IFRoaXMg
aXMgaW5jb3JyZWN0IGlmIHRoaXMgVVNCIGludGVyZmFjZSBpcyBub3QgY29ubmVjdGVkIHRvIGEg
VVNCIFR5cGUtQwo+IGNvbm5lY3RvciBidXQgYW4gb24tYm9hcmQgVVNCIGh1Yi4KCk9rYXkuIEkn
bGwgbW92ZSBpdCB0byBpbXg5NS0xOXgxOS1ldmsuZHRzIGZpbGUgaW4gbmV4dCB2ZXJzaW9uLgoK
QlRXLCBJIGp1c3Qgc2VuZCBhIHBhdGNoIHRvIGZpeCB5b3VyIHByZXZpb3VzIGlzc3VlLiBZb3Ug
Y2FuIHRlc3QgaXQuCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2lteC8yMDI0MTExNDEwMjIwMy40
MDY1NTMzLTEteHUueWFuZ18yQG54cC5jb20vVC8jdQoKVGhhbmtzLApYdSBZYW5nCgo+IAo+IEJl
c3QgcmVnYXJkcywKPiBBbGV4YW5kZXIKPiAKPiA+ICsJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+
ID4gKwkJfTsKPiA+ICsKPiA+ICAJCXBjaWUwOiBwY2llQDRjMzAwMDAwIHsKPiA+ICAJCQljb21w
YXRpYmxlID0gImZzbCxpbXg5NS1wY2llIjsKPiA+ICAJCQlyZWcgPSA8MCAweDRjMzAwMDAwIDAg
MHgxMDAwMD4sCj4gPiAKPiAKPiAKPiAtLSAKPiBUUS1TeXN0ZW1zIEdtYkggfCBNw7xobHN0cmHD
n2UgMiwgR3V0IERlbGxpbmcgfCA4MjIyOSBTZWVmZWxkLCBHZXJtYW55Cj4gQW10c2dlcmljaHQg
TcO8bmNoZW4sIEhSQiAxMDUwMTgKPiBHZXNjaMOkZnRzZsO8aHJlcjogRGV0bGVmIFNjaG5laWRl
ciwgUsO8ZGlnZXIgU3RhaGwsIFN0ZWZhbiBTY2huZWlkZXIKPiBodHRwOi8vd3d3LnRxLWdyb3Vw
LmNvbS8KPiAKPiAKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
