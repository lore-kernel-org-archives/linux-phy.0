Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2390CC433F5
	for <linux-phy@archiver.kernel.org>; Sat,  2 Apr 2022 05:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PQqjLgJt/vmMALtgoEbfWzJLHeKYsbrHCZs6P8NdPSY=; b=or6P6AeEaKVfF/
	+6udTK0b0u0VLrLsZSHrRhcR6wPsF/hXP45K6s7qRuQJ4C2IrQRp6lKj/F2nT9ek7PSz4S8BnS0j5
	7tHxAF8dEr/Y9RCQ3mFkj29nrKNalwF4L1PoSt9uAOvcWZSW7KoqWDrrrZSPl8os1mU2euF4dgBb6
	3wCWCHrS/8frzovQW4ZFV2pGPBrjUYgbS+i/OR/Kyw8WMy+a3PHcsG0mnmfNmjPzAmuelaWV0oprX
	SW/rLZ2P7cWZICO3uxoFnfvqhzHivrps77Pjc01U9++NFlM4mcuNPCqzVPVZwDWHrQKshxxXN9df7
	eeqp9BCrogdvshDozDQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naWF4-0084D4-FV; Sat, 02 Apr 2022 05:24:06 +0000
Received: from mail-vi1eur05on20611.outbound.protection.outlook.com
 ([2a01:111:f400:7d00::611]
 helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naWEe-00840T-Lt; Sat, 02 Apr 2022 05:23:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=acDtFvfTJEisL2Dhx7JarTttw1v7RLPKjr/iema8VW6AOrMIiGGfTQqq6+zv+BU1eUdUk3BdBctYEkYfp4gDSGFzo2RKBiZtvbMIsm+kKe41ysq2kDiupwzDWJnSSBA3Gy2fA8Y4zGvfZkTE+hrYRjbvLyM8ZiZxHtQwlbMwidh5zK3UcAy6rhE83hKL0exKesCQeC5k/fbBsef1Ws8IA/hTTcIlPwKKqmz5S41BrppjWd7+Dk17LeOgV1UyRTqsglRpoFje5w90ZTpNoqEGiERqL722VCW148yndtx8XTiBimCP5/DpIMH34ZZ01QtI8pDy7YqEU/zOPKi4jBEBVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4QMNrjHkSzPkfgPuClD3OGPsGuNeGuSlP1cKorrZli8=;
 b=N4euGZm7yf0USDRpM90POuLyhowuD/hPRtOmPum1kiOSeLoEKfMHZNQf2le1A0t3gwyIf4VEXJMxvvcGfez8hkHx13Jsm0rDdqdeTaZFktui8ubsXTG0wMSIXj3vS/N+p0S58LisN+5ZY4c49hmtCTdYtMGJ9ev6mbc/CrH+Q9mRjfqFwVbomUhKJmNXoOwPDSM3IZvKEel0bGkBk/WNF3WW8LFow/0oNcGrj6vCwo4YDh2tmY60OHU1f+VsrZADN+zuCoS8EABYVAdTtOs7VlwmttEbQmgaU8xayj1p7IeRgzvkRsZdUYtRA5batprLWc+75zFXfLGx0370FvrwrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4QMNrjHkSzPkfgPuClD3OGPsGuNeGuSlP1cKorrZli8=;
 b=Mo/faPxyHhYDtgG+0O7mPJ6lo/rFv+QX5Ir8SOTEMrZfhhGJ2nGFKH5+Esj1rEQET53+T9KBGqRVQNphGouSgsMqL5SyKzMlDcxMwBxGIXPlS5z6RMMQL0BfkLN78T8Il0Z3OjIJM+TdkNLoLobmv1SIm/lcbxYi62h318Sk8VM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by PAXPR04MB8750.eurprd04.prod.outlook.com (2603:10a6:102:20c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.30; Sat, 2 Apr
 2022 05:23:37 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::b09c:8ffe:8e02:7387]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::b09c:8ffe:8e02:7387%9]) with mapi id 15.20.5123.030; Sat, 2 Apr 2022
 05:23:37 +0000
From: Liu Ying <victor.liu@nxp.com>
To: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Cc: kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org,
 andrzej.hajda@intel.com, narmstrong@baylibre.com,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, airlied@linux.ie, daniel@ffwll.ch,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, agx@sigxcpu.org,
 robert.chiras@nxp.com, martin.kepplinger@puri.sm, robert.foss@linaro.org,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v6 resend 3/5] dt-bindings: phy: Convert mixel,
 mipi-dsi-phy to json-schema
Date: Sat,  2 Apr 2022 13:24:49 +0800
Message-Id: <20220402052451.2517469-4-victor.liu@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220402052451.2517469-1-victor.liu@nxp.com>
References: <20220402052451.2517469-1-victor.liu@nxp.com>
X-ClientProxiedBy: SI2P153CA0008.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:140::19) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 29da1dc8-4580-4e84-1640-08da1468f048
X-MS-TrafficTypeDiagnostic: PAXPR04MB8750:EE_
X-Microsoft-Antispam-PRVS: <PAXPR04MB87501B6700AE193DB8F7CE4298E39@PAXPR04MB8750.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3j87+0+hCjeDDnjcn2T+8KxOaXQ/DdMF9sS39TKv7T5Tjg/Q6U/r1eTB5ITWORyUbG8D1fim+W625scfcGazyzRC3ABbLDy2FqTEX3hT0hjTB4z9RcqGFdElRf/Vma1HdeMrRFimzV2UQEuR+4wxwBLjq0CTqWDFHv8j9AbnHtiADPsBYv9/bF7GDmqyreHIVgHJv0uvF2Gt+bZ3WsES1XFQl6UcRxasib8CeBbqn/RtKu0kSVHH03Do0q1Zu9oJo1lo3vq6I0DLGW0nnzc4z0ijgukPQQ7yu9BBEy1HQXWfNZpBS6lkb7btSGhNXiFRbvjdnD2M87MF9+K/XoFaopQOkHBAkEwd1JbvVnI82NXYp8KwxvLDW0+TOTGIpfOukJQVbA5ZQYR5IOBo/ZoHpzEbMQTmLGDRjmDpi5NytYaRGJ4Y9y3Ws5CJU3AH4jVsaLCbabpLk5sujMJGg13iHvllH+43SRXi33pgqqugyAB9dJEHJw+zeY86BtGwQRoLHJFUVjJxmuKhPyxWQDvCtb+EwXDVeUC9r7pY1nhL41Zx3zFSIZMEECcse7pJxtyl2pCF+qwGlK58F8KNGVT6H+jG0/YPBZpzSd2M17YmuGVNgKGNDOEVmPlCFBQ3XAEbJ6fs08bifG9kydCl0kjYWvWCEmxkOA/Nf3YTVjMhNjvnxYPMHX2EtlbEglT0FTgNoEK1TpcxzIkC2H+iu6wsU1Aeu8Oq3GEsuUZ/WlBKNLBv0FFpmfMKOGjG+LZDQVDa7R1QQdi38MemQYcuY8e78VGWCvD2YlIl4j/eGif0BRUdgZYGsuuXo9iAWgdSRFM1WxWicdHhSSL5J0VgHkQYCQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB7046.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(36756003)(966005)(6486002)(83380400001)(316002)(6512007)(52116002)(186003)(26005)(6666004)(6506007)(66574015)(1076003)(2616005)(508600001)(7416002)(8936002)(86362001)(38100700002)(5660300002)(38350700002)(2906002)(66476007)(66946007)(4326008)(8676002)(66556008);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MTNBQzlkQ285RmgvN0F6dUFBMm5TRU9ib3JtUk9xZnVGNFZYbktMSk50cCt3?=
 =?utf-8?B?NjhEK2NadzZMd01rS3lPVzhHNE9RTnN0aUdRdVQ0OWNaSng0RFFCTDJsTGlK?=
 =?utf-8?B?RnVwc3poalVseXJPVWtqeVJzakVhdnJuV0diY092T0s5Zkp6QTBwWEpjdjF5?=
 =?utf-8?B?UkRiRHNsZHFpT3FWQ2FKcnpFTmxlNHlGcjZPRlpoa1hKWG5ZOE50d09RYWxG?=
 =?utf-8?B?VTc5TWU4TnJ0VWFkSzF4Q2k3N2ZkV0dienNkdk82dUs2WTYvY1ArRTBjbGIy?=
 =?utf-8?B?Qzg3SWRERXZtQTNsQWdGT0NvRzZxaCs1QkxEMW9FZ2FtTGk0UnVGR0F4V2tG?=
 =?utf-8?B?SWV6dDJaNlBTWkw1NkM1elh4cG5WQWFnc1FOKzIxWFNvcGV4bVkzNm1mOE1r?=
 =?utf-8?B?UGw4eEpWWGUrcktjUkswL054aGZWeUFESzYvMDV2bXhPM0xMOE9YcXlyN21G?=
 =?utf-8?B?MVR3N1BLQkZFT1A0d3pHNlRtaFpJQVl5S1lxanVwRVpqbUhXM2o0VUw4QVBo?=
 =?utf-8?B?ckd1b0RqZFRLSmdLS3JUNWVLS1lCUkUrNzNzRVVpN2hyY1lNTUF6c0tVQXd4?=
 =?utf-8?B?NUd6VDFhY0pIdlEwNGcyZWpqY2RsRDBNQnpXUEdrSHBmSDhoMm13OWw4TEY3?=
 =?utf-8?B?R25YblFpbVhvRUc3SUpHbjZrcjJIT1RFa3BSRkxCaFRieWVPNlVkaUIvOWFB?=
 =?utf-8?B?UUpUd0NMdVhhQ2dmWnl0ejZFZ2tYQUdtQTdLWlRWdlBvaFdyem1QUWxJOGFG?=
 =?utf-8?B?bUVzbkg0TlVnQllYQ1FxcURIbkc2MitWTDNyYTdyYitOU256d05tZFZ2RTAy?=
 =?utf-8?B?MHQrazYyNGphTlNZbzU3NTNBbnJ5QUpRaWNIR2JCaUFqaVl3a0ZQTFR0c1FN?=
 =?utf-8?B?RFNDd2p3MjJWL2hRVDQwc1lXdVhmMjhDTFZRendMekZtSlVMeW42ekwxTktP?=
 =?utf-8?B?WXlBTjhhNFlnYzFoVzVXOThrQXJ0OW10c0x6QWxCck5zWEx0VDFrenVaS1py?=
 =?utf-8?B?b0kwRHhqclZCWVlVdUlzR2I0TFBsU2NVN3FXUUZqUlFpZ1ZSL1U5dENHTXQ0?=
 =?utf-8?B?OUFqbHZIT1VjUUZSRHBFOEQzYVp6a3Vjb2tVdkFYTXFxQkZuZm5wUUJFTG9m?=
 =?utf-8?B?bXY2TWYrVTJYNlIva3JOS1FGNkxCbG9SWFBiNmpCMTdtdXVNTEcxczA3LzFM?=
 =?utf-8?B?UVJsUXJIZ28zRmU3NG1NQ0ZsM1lNMnd2QTZCWHgyQ1JKaXUrc09acVRxendX?=
 =?utf-8?B?MjBlWGpTS0tOd1dRRnh2bU9KR0YzdVZqN0s2aW5jT1FiRm5LUDlhZU9PcmVi?=
 =?utf-8?B?SEc5b3ZqQ1ptaWhZdVVrK3ZwSU1zb0g1cHVGZ2NpZmVvbU56UmtidDBjQW1m?=
 =?utf-8?B?Um5Ec2Z0cmltam5YSWEvTWZ1MzA5RjN0RUhBOE1KcGRjbDhEN1d5SE40VHp0?=
 =?utf-8?B?enRnTVhsN2p4aUYyTFcxUlJpa0d2UjY5MGtuRUQyODM4RlF0d2NiVHZHRzdJ?=
 =?utf-8?B?ZHF4cjJKaXhWV2lXeitvL2x6TitFNjRVcFN4UW41RTZVUUhIUmFldWFiWTYv?=
 =?utf-8?B?dkN4dFllRW5zOG8rVTdzZ242NzBzRmMwMlFCRjJUcTU5cUl5K1lPdlVNNGsw?=
 =?utf-8?B?TTFMOThDMldrSXpDSUVISGhHV2dSYlFXR3BwN1dmLzR2WWdRd2tsM212cXlD?=
 =?utf-8?B?SHE5TGM5ZVFJZmpVeVdWMWVzVXpmQURUMnBiWUt1RUtxajBkYkJXVFhsQmh6?=
 =?utf-8?B?TndOSmVvRi9EbmpEY1d4KzBMZVRWRHA0TjRWLy82SS9QbllOVDFmUlBGdnB3?=
 =?utf-8?B?Z1JSY0hTMHdKTmxYYnNGeXdrUnF2K3krT3NPT3ZMZ0xScGpoalFWZUFSWWxX?=
 =?utf-8?B?TmFJcW1OU1JYZUZwUWkwQnMwZEpDKytibVVsNnBuQ1pFNnhLZjYraGx1N01F?=
 =?utf-8?B?aHBLS1NEeHNLSXRiU3dmc05tazlvR2JYVHpWOU5sRThObGRJcFVLWUNadVVI?=
 =?utf-8?B?ZmEvS3pTYW5oeDJBTnovbDRVQXVVUzg5Z1JONkRubVJxM0VXb1VmN3J0MGdz?=
 =?utf-8?B?ejh6TkJmY2hOQTBjNnBDdWlRUFAwd1lTZ3B4UW4reG1zUVJic0M4aGQvNi9t?=
 =?utf-8?B?UVdEV2YwanpCT0RWNGZ5ZWlPeHVzSUMwRk1FUmwzZEx5SGJZcDVFTDdnOEJy?=
 =?utf-8?B?b3Q1clkxc291OUZiN2dzZkN1RnRwMHlWQ3NKcHk5cS9PN29MOTU5UEIxMmIw?=
 =?utf-8?B?bHZQL0lPSkN1WFpPUU5BdGpwWXAwUXdTbUEvbnNrUkM0VEVCekI5SGJxZit5?=
 =?utf-8?B?Wkc0dlAxMmY5aVpxbkNyS2ZhTHlNNlpqSEFRMytlbmphMVlDN25EQT09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29da1dc8-4580-4e84-1640-08da1468f048
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2022 05:23:36.9957 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UO7g9EGPaD1FJHRvJC6qhJU8EzQotgyoBJFIR/pCD8FB+A3zDwH0Vuy48xR92eBIdAobkECP6RkvlxTLbBkpgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8750
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_222340_774776_FE72DCDC 
X-CRM114-Status: GOOD (  16.78  )
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

VGhpcyBwYXRjaCBjb252ZXJ0cyB0aGUgbWl4ZWwsbWlwaS1kc2ktcGh5IGJpbmRpbmcgdG8KRFQg
c2NoZW1hIGZvcm1hdCB1c2luZyBqc29uLXNjaGVtYS4KCkNvbXBhcmluZyB0byB0aGUgcGxhaW4g
dGV4dCB2ZXJzaW9uLCB0aGUgbmV3IGJpbmRpbmcgYWRkcwp0aGUgJ2Fzc2lnbmVkLWNsb2Nrcycs
ICdhc3NpZ25lZC1jbG9jay1wYXJlbnRzJyBhbmQKJ2Fzc2lnbmVkLWNsb2NrLXJhdGVzJyBwcm9w
ZXJpdGVzLCBvdGhlcndpc2UgJ21ha2UgZHRic19jaGVjaycKd291bGQgY29tcGxhaW4gdGhhdCB0
aGVyZSBhcmUgbWlzLW1hdGNoZXMuICBBbHNvLCB0aGUgbmV3CmJpbmRpbmcgcmVxdWlyZXMgdGhl
ICdwb3dlci1kb21haW5zJyBwcm9wZXJ0eSBzaW5jZSBhbGwgcG90ZW50aWFsClNvQ3MgdGhhdCBl
bWJlZCB0aGlzIFBIWSB3b3VsZCBwcm92aWRlIGEgcG93ZXIgZG9tYWluIGZvciBpdC4KVGhlIGV4
YW1wbGUgb2YgdGhlIG5ldyBiaW5kaW5nIHRha2VzIHJlZmVyZW5jZSB0byB0aGUgbGF0ZXN0CmRw
aHkgbm9kZSBpbiBpbXg4bXEuZHRzaS4KCkNjOiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUu
b3JnPgpDYzogS2lzaG9uIFZpamF5IEFicmFoYW0gSSA8a2lzaG9uQHRpLmNvbT4KQ2M6IFZpbm9k
IEtvdWwgPHZrb3VsQGtlcm5lbC5vcmc+CkNjOiBSb2IgSGVycmluZyA8cm9iaCtkdEBrZXJuZWwu
b3JnPgpDYzogTlhQIExpbnV4IFRlYW0gPGxpbnV4LWlteEBueHAuY29tPgpSZXZpZXdlZC1ieTog
Um9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KUmV2aWV3ZWQtYnk6IEd1aWRvIEfDvG50aGVy
IDxhZ3hAc2lneGNwdS5vcmc+ClNpZ25lZC1vZmYtYnk6IExpdSBZaW5nIDx2aWN0b3IubGl1QG54
cC5jb20+Ci0tLQp2NS0+djY6CiogTm8gY2hhbmdlLgoKdjQtPnY1OgoqIE5vIGNoYW5nZS4KCnYz
LT52NDoKKiBBZGQgUm9iJ3MgYW5kIEd1aWRvJ3MgUi1iIHRhZ3MuCgp2Mi0+djM6CiogSW1wcm92
ZSB0aGUgJ2Nsb2NrLW5hbWVzJyBwcm9wZXJ0eSBieSBkcm9wcGluZyAnaXRlbXM6Jy4KCnYxLT52
MjoKKiBOZXdseSBpbnRyb2R1Y2VkIGluIHYyLiAgKEd1aWRvKQoKIC4uLi9iaW5kaW5ncy9waHkv
bWl4ZWwsbWlwaS1kc2ktcGh5LnR4dCAgICAgICB8IDI5IC0tLS0tLS0tCiAuLi4vYmluZGluZ3Mv
cGh5L21peGVsLG1pcGktZHNpLXBoeS55YW1sICAgICAgfCA3MiArKysrKysrKysrKysrKysrKysr
CiAyIGZpbGVzIGNoYW5nZWQsIDcyIGluc2VydGlvbnMoKyksIDI5IGRlbGV0aW9ucygtKQogZGVs
ZXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWl4
ZWwsbWlwaS1kc2ktcGh5LnR4dAogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9waHkvbWl4ZWwsbWlwaS1kc2ktcGh5LnlhbWwKCmRpZmYgLS1naXQg
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21peGVsLG1pcGktZHNpLXBo
eS50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21peGVsLG1pcGkt
ZHNpLXBoeS50eHQKZGVsZXRlZCBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDliMjM0MDcyMzNjMC4u
MDAwMDAwMDAwMDAwCi0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
bWl4ZWwsbWlwaS1kc2ktcGh5LnR4dAorKysgL2Rldi9udWxsCkBAIC0xLDI5ICswLDAgQEAKLU1p
eGVsIERTSSBQSFkgZm9yIGkuTVg4Ci0KLVRoZSBNaXhlbCBNSVBJLURTSSBQSFkgSVAgYmxvY2sg
aXMgZS5nLiBmb3VuZCBvbiBpLk1YOCBwbGF0Zm9ybXMgKGFsb25nIHRoZQotTUlQSS1EU0kgSVAg
ZnJvbSBOb3J0aHdlc3QgTG9naWMpLiBJdCByZXByZXNlbnRzIHRoZSBwaHlzaWNhbCBsYXllciBm
b3IgdGhlCi1lbGVjdHJpY2FsIHNpZ25hbHMgZm9yIERTSS4KLQotUmVxdWlyZWQgcHJvcGVydGll
czoKLS0gY29tcGF0aWJsZTogTXVzdCBiZToKLSAgLSAiZnNsLGlteDhtcS1taXBpLWRwaHkiCi0t
IGNsb2NrczogTXVzdCBjb250YWluIGFuIGVudHJ5IGZvciBlYWNoIGVudHJ5IGluIGNsb2NrLW5h
bWVzLgotLSBjbG9jay1uYW1lczogTXVzdCBjb250YWluIHRoZSBmb2xsb3dpbmcgZW50cmllczoK
LSAgLSAicGh5X3JlZiI6IHBoYW5kbGUgYW5kIHNwZWNpZmllciByZWZlcnJpbmcgdG8gdGhlIERQ
SFkgcmVmIGNsb2NrCi0tIHJlZzogdGhlIHJlZ2lzdGVyIHJhbmdlIG9mIHRoZSBQSFkgY29udHJv
bGxlcgotLSAjcGh5LWNlbGxzOiBudW1iZXIgb2YgY2VsbHMgaW4gUEhZLCBhcyBkZWZpbmVkIGlu
Ci0gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcGh5LWJpbmRpbmdzLnR4
dAotICB0aGlzIG11c3QgYmUgPDA+Ci0KLU9wdGlvbmFsIHByb3BlcnRpZXM6Ci0tIHBvd2VyLWRv
bWFpbnM6IHBoYW5kbGUgdG8gcG93ZXIgZG9tYWluCi0KLUV4YW1wbGU6Ci0JZHBoeTogZHBoeUAz
MGEwMDMwIHsKLQkJY29tcGF0aWJsZSA9ICJmc2wsaW14OG1xLW1pcGktZHBoeSI7Ci0JCWNsb2Nr
cyA9IDwmY2xrIElNWDhNUV9DTEtfRFNJX1BIWV9SRUY+OwotCQljbG9jay1uYW1lcyA9ICJwaHlf
cmVmIjsKLQkJcmVnID0gPDB4MzBhMDAzMDAgMHgxMDA+OwotCQlwb3dlci1kb21haW5zID0gPCZw
ZF9taXBpMD47Ci0JCSNwaHktY2VsbHMgPSA8MD47Ci0gICAgICAgIH07CmRpZmYgLS1naXQgYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21peGVsLG1pcGktZHNpLXBoeS55
YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9taXhlbCxtaXBpLWRz
aS1waHkueWFtbApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmMzNGYy
ZTZkNmJkNQotLS0gL2Rldi9udWxsCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9waHkvbWl4ZWwsbWlwaS1kc2ktcGh5LnlhbWwKQEAgLTAsMCArMSw3MiBAQAorIyBTUERY
LUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb25seSBPUiBCU0QtMi1DbGF1c2UpCislWUFN
TCAxLjIKKy0tLQorJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9waHkvbWl4ZWws
bWlwaS1kc2ktcGh5LnlhbWwjCiskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1z
Y2hlbWFzL2NvcmUueWFtbCMKKwordGl0bGU6IE1peGVsIERTSSBQSFkgZm9yIGkuTVg4CisKK21h
aW50YWluZXJzOgorICAtIEd1aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNwdS5vcmc+CisKK2Rlc2Ny
aXB0aW9uOiB8CisgIFRoZSBNaXhlbCBNSVBJLURTSSBQSFkgSVAgYmxvY2sgaXMgZS5nLiBmb3Vu
ZCBvbiBpLk1YOCBwbGF0Zm9ybXMgKGFsb25nIHRoZQorICBNSVBJLURTSSBJUCBmcm9tIE5vcnRo
d2VzdCBMb2dpYykuIEl0IHJlcHJlc2VudHMgdGhlIHBoeXNpY2FsIGxheWVyIGZvciB0aGUKKyAg
ZWxlY3RyaWNhbCBzaWduYWxzIGZvciBEU0kuCisKK3Byb3BlcnRpZXM6CisgIGNvbXBhdGlibGU6
CisgICAgZW51bToKKyAgICAgIC0gZnNsLGlteDhtcS1taXBpLWRwaHkKKworICByZWc6CisgICAg
bWF4SXRlbXM6IDEKKworICBjbG9ja3M6CisgICAgbWF4SXRlbXM6IDEKKworICBjbG9jay1uYW1l
czoKKyAgICBjb25zdDogcGh5X3JlZgorCisgIGFzc2lnbmVkLWNsb2NrczoKKyAgICBtYXhJdGVt
czogMQorCisgIGFzc2lnbmVkLWNsb2NrLXBhcmVudHM6CisgICAgbWF4SXRlbXM6IDEKKworICBh
c3NpZ25lZC1jbG9jay1yYXRlczoKKyAgICBtYXhJdGVtczogMQorCisgICIjcGh5LWNlbGxzIjoK
KyAgICBjb25zdDogMAorCisgIHBvd2VyLWRvbWFpbnM6CisgICAgbWF4SXRlbXM6IDEKKworcmVx
dWlyZWQ6CisgIC0gY29tcGF0aWJsZQorICAtIHJlZworICAtIGNsb2NrcworICAtIGNsb2NrLW5h
bWVzCisgIC0gYXNzaWduZWQtY2xvY2tzCisgIC0gYXNzaWduZWQtY2xvY2stcGFyZW50cworICAt
IGFzc2lnbmVkLWNsb2NrLXJhdGVzCisgIC0gIiNwaHktY2VsbHMiCisgIC0gcG93ZXItZG9tYWlu
cworCithZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKKworZXhhbXBsZXM6CisgIC0gfAorICAg
ICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay9pbXg4bXEtY2xvY2suaD4KKyAgICBkcGh5OiBk
cGh5QDMwYTAwMzAgeworICAgICAgICBjb21wYXRpYmxlID0gImZzbCxpbXg4bXEtbWlwaS1kcGh5
IjsKKyAgICAgICAgcmVnID0gPDB4MzBhMDAzMDAgMHgxMDA+OworICAgICAgICBjbG9ja3MgPSA8
JmNsayBJTVg4TVFfQ0xLX0RTSV9QSFlfUkVGPjsKKyAgICAgICAgY2xvY2stbmFtZXMgPSAicGh5
X3JlZiI7CisgICAgICAgIGFzc2lnbmVkLWNsb2NrcyA9IDwmY2xrIElNWDhNUV9DTEtfRFNJX1BI
WV9SRUY+OworICAgICAgICBhc3NpZ25lZC1jbG9jay1wYXJlbnRzID0gPCZjbGsgSU1YOE1RX1ZJ
REVPX1BMTDFfT1VUPjsKKyAgICAgICAgYXNzaWduZWQtY2xvY2stcmF0ZXMgPSA8MjQwMDAwMDA+
OworICAgICAgICAjcGh5LWNlbGxzID0gPDA+OworICAgICAgICBwb3dlci1kb21haW5zID0gPCZw
Z2NfbWlwaT47CisgICAgfTsKLS0gCjIuMjUuMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
