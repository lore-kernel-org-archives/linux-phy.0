Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00FCDFF885A
	for <linux-phy@archiver.kernel.org>; Tue,  5 May 2026 09:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JWh/8oyCkYvwDWHjraWFrrHX7gV7I0f+4b1vNvBoOL0=; b=woNtLqH44/bKD+
	jDT5M0t9qjBEJA1fXDSb6vp5gaKmJAM8y8k8HiaYIOxBw7Rq71LkT9ZFbcTL9SUeDxkG+JCRrDwOL
	XqlnjkJ9pEe0WnH5J7LsNmuoO9GFClXQ1N+jTdwLvCqATM+icPRYTgzhs/+w1SIDyBZa+OKdY6Ykl
	Rmc4BYkmkQdX/3sZYaOz+iR27n5iwxFIVducNTEP7faOEd7azFOF3Ql4jaEcYDM1+sRG6a7x0UrMJ
	GTDWoHR1Zthv2sLlFw18p0MS8tlXc59OCorkDub7jX0OYl9JbaQdyWbGhqpKVeH1eVzsrcOzCeF89
	kR2JyhygXxpuP6I2FztA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKBvy-0000000FdZo-1lE1;
	Tue, 05 May 2026 09:19:18 +0000
Received: from mail-westeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c201::1] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKBvv-0000000FdYZ-2Uvi
	for linux-phy@lists.infradead.org;
	Tue, 05 May 2026 09:19:17 +0000
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=feJoX3T6xth9fa5AB0Z8BqlTT6tBdcYB51G78lxCrmIqglaWE0vorA9Wf4z/PWARPc1w6BopNoi5JPcx7q7ASjXj3oMUlNRKtGewqPJ0maRdWc65fO1tLVbOiYBsEW9Dny9NGBYcwhMHsxV7uyS1SGEhZb03L7KACyWs+tmgztmo8CasWWVY2qspxDwtPQMK1j3VEdptYVKC5cxPKCWcR/EWyVQnnyn/Lt4HOobotnPoJVb12y+4pnsRwoXebBG2OflCkC6E38aV9vFUJRwPwiUqnEG7Ozjewmj9fAgLTBis0L/13j0DtNEDjtCzVbtDJwPvoCoD22N8UvT/eKiZZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x8i4nk7fnGMWhznqlB/9npOU5Hy8+f4LoViuxxVAODs=;
 b=t/q3XrPZa7y3QqkduDGju+0pbZiBhWJtomst0qHaAneEvpSLdHS0cuY5buouA2cCJTmKuwwOOjikEkDklRmfObVXwIMcZ8ZbnOwKbYw8Qs2iFNk+tWHlnu0BZlbBRd90N4CHKyY0Do1gH9ZYJ6J/zqkGdhMo1zeuTdNkP00KwZ0HnTkgEbgVsU0UQSYn9zS8NsyoUT0cCfzVJCVygwKbhJ61znhatQK0UQFUgZwtk2f+YISbRxNBjjvBWKdOhsP5ZO1gWHCjECLFC0mcXNqhJV5jaWsHRBd5C7YzHOImLFSzs4utOgi2H1rq3fRShyy5VM5hb+EhoofoypLjAUzNRg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=fail (sender ip is
 52.17.62.50) smtp.rcpttodomain=kernel.org smtp.mailfrom=solid-run.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=solid-run.com; dkim=pass (signature was verified)
 header.d=solid-run.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=solid-run.com] dkim=[1,1,header.d=solid-run.com]
 dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=solid-run.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x8i4nk7fnGMWhznqlB/9npOU5Hy8+f4LoViuxxVAODs=;
 b=gBhczW0yutrgBsW4K+S+jiCHGDZqYOem0ph/vFTfQxjMNuYixYQ600ME7Re7Vec9LgEtn/a0JurTUfwhrgP9IaNGy8fQ6K40n3EPFlJgphrvzyFUTZZJ/B55Z2AQABK+OxZwnxQyDz14clLXmXTmo+1HfsCzZ6XeaVIZaTlagvshA02VEgQ8ar4xngaIU6LEGHmLrXvxiUbLv71iNp88c/yKjFqPjqs7mCZQrCPro5+u7qiAIXSi0W/6j7XT42QaA33+2hMfaUvij9Qh8y/sCwk7DcI1X0zMmYNDUeeRSVHmFDn2TdF7YRPePo6q8ZYxrTZffHRlF2hHlwRXrb9B8Q==
Received: from DUZPR01CA0252.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b5::22) by VI0PR04MB11614.eurprd04.prod.outlook.com
 (2603:10a6:800:300::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Tue, 5 May
 2026 09:19:09 +0000
Received: from DB5PEPF00014B98.eurprd02.prod.outlook.com
 (2603:10a6:10:4b5:cafe::9c) by DUZPR01CA0252.outlook.office365.com
 (2603:10a6:10:4b5::22) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9870.27 via Frontend Transport; Tue,
 5 May 2026 09:19:09 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solid-run.com;dmarc=pass action=none header.from=solid-run.com;
Received-SPF: Fail (protection.outlook.com: domain of solid-run.com does not
 designate 52.17.62.50 as permitted sender) receiver=protection.outlook.com;
 client-ip=52.17.62.50; helo=eu-dlp.cloud-sec-av.com;
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 DB5PEPF00014B98.mail.protection.outlook.com (10.167.8.165) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9891.9
 via Frontend Transport; Tue, 5 May 2026 09:19:09 +0000
Received: from emails-6496621-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-6-105.eu-west-1.compute.internal [10.20.6.105])
	by mta-outgoing-dlp-291-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id E24B8803C3;
	Tue,  5 May 2026 09:19:08 +0000 (UTC)
X-Mailbox-Line: From b'josua@solid-run.com' Tue May  5 09:18:33 2026
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N+Qf0kYx/vGbV5rqEsyXWeeo506kdk9v6sSBVe5aQ+n3duBc+EUEEAywuDczY5/wQvEEE22L4daRob59v3G9gT1axT+JzpqBEgOKPR2OdW/apv+Upu+07Px+PeGCRtkj3lI4DSHfGwBlypJ0ZgY9FSkj6uRg4b+eityyhW7bQ14OeAGgwKRjnRzfp5qH62wK/2QMPVHf2DktbebsdLORoQfOgyE8//qgNGYbCRJPv6aaPiH/8uDXe7rA26+Age/jmnYOZFramlxNBdl0pXbThZP7mym5rDeZi5vPLLGCEp18KNyCX1ugnYPwe2e+wo/G/0ckwEVdNl73inljwOBTkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x8i4nk7fnGMWhznqlB/9npOU5Hy8+f4LoViuxxVAODs=;
 b=YJ2qncoL2PGN/3+byrjMsWag7TaJ4L5XmqoMh89uEGF2jiKgs18XAnO5K20gWPtJ0bGBxSGmN2VFDt1o5LG/EIYm82qNZOnJOnN2tnuktDiGxw87VcdmB2GGsICHlMa2Wt0PZVdRHemSFaBq8HheEXdw0Bg6TTLgFlgqqSDMOjzYRmZaAbBSm5vfHbYMNfva2O1CIUEq3bKEDjOs2ZDBeiGEbWFKzWvHeCnCgPjfZsulW/uUiyAOqpsQEukppGE/wkU1WyemTgoeB58s56uikchM5sc838pPuCkgQTtWU4Tebr2S/IwHMHFRp/6HfxXRx5ysHQv8+CO067WaFcSVAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=solid-run.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x8i4nk7fnGMWhznqlB/9npOU5Hy8+f4LoViuxxVAODs=;
 b=gBhczW0yutrgBsW4K+S+jiCHGDZqYOem0ph/vFTfQxjMNuYixYQ600ME7Re7Vec9LgEtn/a0JurTUfwhrgP9IaNGy8fQ6K40n3EPFlJgphrvzyFUTZZJ/B55Z2AQABK+OxZwnxQyDz14clLXmXTmo+1HfsCzZ6XeaVIZaTlagvshA02VEgQ8ar4xngaIU6LEGHmLrXvxiUbLv71iNp88c/yKjFqPjqs7mCZQrCPro5+u7qiAIXSi0W/6j7XT42QaA33+2hMfaUvij9Qh8y/sCwk7DcI1X0zMmYNDUeeRSVHmFDn2TdF7YRPePo6q8ZYxrTZffHRlF2hHlwRXrb9B8Q==
Received: from GVXPR04MB12057.eurprd04.prod.outlook.com
 (2603:10a6:150:313::24) by VI0PR04MB11614.eurprd04.prod.outlook.com
 (2603:10a6:800:300::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Tue, 5 May
 2026 09:18:31 +0000
Received: from GVXPR04MB12057.eurprd04.prod.outlook.com
 ([fe80::14f1:a127:2988:de5b]) by GVXPR04MB12057.eurprd04.prod.outlook.com
 ([fe80::14f1:a127:2988:de5b%7]) with mapi id 15.20.9870.023; Tue, 5 May 2026
 09:18:31 +0000
From: Josua Mayer <josua@solid-run.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
CC: "linux-can@vger.kernel.org" <linux-can@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Marc
 Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
	Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v2 0/4] phy: phy-can-transceiver: Ad-hoc cleanups and
 refactoring
Thread-Topic: [PATCH v2 0/4] phy: phy-can-transceiver: Ad-hoc cleanups and
 refactoring
Thread-Index: AQHctkzt2/uGtBr9E0uHhoJ+wJjgi7XfEH0AgBPvoQCAAChpAIAAAgmAgAAdRoCACnJqgIABuWwA
Date: Tue, 5 May 2026 09:18:30 +0000
Message-ID: <3b11269f-fb3d-4973-8dd5-79255581ad12@solid-run.com>
References: <20260317203001.2108568-1-andriy.shevchenko@linux.intel.com>
 <ad6KwGIhpJn_2eVz@ashevche-desk.local>
 <7bcb68c4-e4bd-4ad9-bb75-99e0845b204c@solid-run.com>
 <ae9l4n8wocbVegcJ@ashevche-desk.local>
 <5d4c3c95-cbe1-4439-8036-b014264ce8c2@solid-run.com>
 <ae-AJdSrnXiuc1mW@ashevche-desk.local> <afhDm5_ydU83xFKU@ashevche-desk.local>
In-Reply-To: <afhDm5_ydU83xFKU@ashevche-desk.local>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
x-ms-traffictypediagnostic: GVXPR04MB12057:EE_|VI0PR04MB11614:EE_|DB5PEPF00014B98:EE_|VI0PR04MB11614:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a2c76d3-1e0d-4c45-0b9b-08deaa875d08
x-cloud-sec-av-info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|376014|1800799024|366016|56012099003|18002099003|22082099003|38070700021;
X-Microsoft-Antispam-Message-Info-Original: uhcmNEsfgE0i3Sf0hTThY46+r1htmFnhNK6ORA1ZOvUzXmN5WVr3gLNL8YXlNpqpPENz38pohnQ/CafufKZR3gtPfCmZVcAOULSUFjVgSBU0RnEYXdrzQsuCN/DjKfyMOsekhZmByFJafcmrGs0IXxI3dSNnqXcA60yvGLXyXjbnx/JYix+S1DTeZBSC1bHLDvbzyuCKd8LCITONG6hQkwRVYCN9DF6SFN5FwQnvtadtwjgW4wLl1o0XIvbnICpaCbwG/tRV8Xg7JZ5S56HMGsdRZBC86K9zbSLe1DoZWTK7wB3P69Hqrjk6h2BM3CiyHQLjNI6iac5xxNvvBk0RxJdThx+l51JeyslOvYt45KTv3xLe5N+nk0QFzsBPB5bFQE0sVlvPFomrL88hWu13o6tpmMarVrXz6Dz6M4a8RhCBgs2ZvXHtacYq/URm+yYisbYRr0zeDXJIb+WFpQcQAscTLBL2of8/JNy3pZA9+ivINPlg+yp2pnWhBR16JoCFGgvtyR9M70vdOkn6gIGu4Sq8ceYUEkoo4nlGfU5w43jiVkX1idXhrRiKUm/QBm23vsvNRMYpiO9eUyMxcT0RGf2VQyaUiqcapOCZOyoQGVL5JM44iGx4MxQ/WaSDoWixaOyvzM9PU/+0VBXtOsX/A9OdyDRFzgaIF8ckMYIRQUObOlaaHplyMG+arRId9kVGnlTcpgncO9JhI4rLvFyg+P0AoAmDMlT8GpLQX4VQIt3cGPKhAJHimat+CArK3odk
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12057.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(18002099003)(22082099003)(38070700021);DIR:OUT;SFP:1102;
Content-ID: <92F1CC0BE0358649A76D2667A4E7A195@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: AxDW3d1E4e4x7Cf5EiFda5NmNnhqBrZ+TysaCzahKcZzWPd4ChkAH01GU9cYvlh5gsZMqHK7SM9D8CvK/b35bJNFQIJBpNU5Q1ysBSUtdDSvhj2xH3+rINw4D7CZh4kpeMSmFuUflNAzOM4VVPtRof3mjcpigb/7LoOMuAHSItczNjBT+iHxExmUYl5d+db7AXGcGWhJW4LZ5liGkmVBB+ubykx/MTZOFsKmDQSEjjYtAtwADRacqiyPROFgUiizL7tEsYD8jLaFtA3ZSBJ2xt/BrepzCeiaXePAeWjs8xJr+VaKer/rkG54+PTiAgf9q8KwTV8j1ECWgjCrvTidXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR04MB11614
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2-6.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: 8290ba194f964b13bfe6b3dcd11f50bd:solidrun,office365_emails,sent,inline:e5f4c0cce52b3aa936fab29a235a2a66
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5PEPF00014B98.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: e2f5d28e-b2a7-4e35-aad1-08deaa874640
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|14060799003|376014|1800799024|36860700016|35042699022|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: iZQy/Rzq4AZpOlfqAC/MVqRLCDaVYE7XARbOWDH7LEXARJMhba2VL1ZHWoOjucSU+hiWVtwFz95ztiT/1vtIv/dzv4JeF29LlmZzofyE9efk0eTX0deUAFcHODiutPRNQP+Xoyz8D95pM3PGFMElMjc0FdKIYicnv86FdQhb6ofJRQvLeiqDalsMEETxzajbQwpZ7ROfz48oHIMQNjtX7GyvjAiZ+zzz60B5Rl/3p5dxy5u1xpnnHvWyhhI/iHx9KhmX2PeZQVSnkvVWLafsFfMdKtsCFng1qRQHB05ymh1Es3j9yEJ1AmvA2+Ty7JkbeyQNIWvDRJMNiptFI3mTSg032ZRdXbSp1M+NimoxaOg+v49xroKPWEZJ91CM6OnQ+1E8Ez8dOngqQmVa6T9EK8EbeoC0/xVvner5wlTrwS4eXY0c83LTrWxhNl+OVkhZwiq4KZj5N9ZPumvpdUcBmaoiVrbEChLXEygAAaLU6BVN6zCth6OuTzipGXSYVK1eDbJD2QFSUbH5yXdvoVf/tr/Js9AwIzvq50Yra3WooXKbs2xK2PkO6iBrO1pz9VTtz5JquJerFWeHezy3kZW0JDN+8UWb3Q6PML9ExfdwAbmO0pgDPo59jDdXjifdtJN8wksJne0WLCCcFwL3hcZcJzKN/Zl+JIyfSpNx7HDXC7ihFfUE1ApuXwlWZQT/66hPSw5Wh8tGAWLkCCZJzY6AKJU8LW6UMbHeXygRntHFatA=
X-Forefront-Antispam-Report: CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(82310400026)(14060799003)(376014)(1800799024)(36860700016)(35042699022)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 39xvUlUCL60RkNewG1obVKo9Fe8ocSd/3Z2D28asYzqxKnuZ5JnvyiUvcTwOWnDGysmJgjt03sruBJ2vN88j4PQIGP2w8ipzEFHXB4CcFXSp07O6OV7UIhLAIJzOwMnqJt+Wrvmo2hL/hj1YrGH6Sy4dLi2vufF+T5clc/tHKg1VUAilgKp9Gb7lszI7bV6ypuAV+K2UUKNR0PznxKbgUMjYyUNapF/B6oMRI4JURajC7jBdscyyPc0ajzHFPK5yOHV/alCXUd4kQNWmtyz70JmKoEK780bbu7PvSp2szUBZYg1X6+vZ12C77lf49GZ8SICtwtpz0GgPxvIhJaiS83HHSMT5och8hBaahUv+AAPzta1FUEUqFLMSVMa62JenxVwsCD/kwa48QpLl6be5+vnJAhv4PblNtqR3g5LYkA3Ku0KrkSNMPYLzHuhhkxIH
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2026 09:19:09.0725
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a2c76d3-1e0d-4c45-0b9b-08deaa875d08
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5PEPF00014B98.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR04MB11614
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_021915_827629_09BF19C9 
X-CRM114-Status: GOOD (  13.38  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Am 04.05.26 um 08:58 schrieb Andy Shevchenko:
> On Mon, Apr 27, 2026 at 06:26:34PM +0300, Andy Shevchenko wrote:
>> On Mon, Apr 27, 2026 at 01:41:43PM +0000, Josua Mayer wrote:
>>> Am 27.04.26 um 15:34 schrieb Andy Shevchenko:
>>>> On Mon, Apr 27, 2026 at 11:09:48AM +0000, Josua Mayer wrote:
>>>>> Am 14.04.26 um 20:43 schrieb Andy Shevchenko:
>>>>>> On Tue, Mar 17, 2026 at 09:27:26PM +0100, Andy Shevchenko wrote:
> ...
>
>>>>> For unknown reason your patch-set did not arrive in my inbox.
>>>>> Perhaps it went missing for others, too?
>>>> Are you in the MAINTAINERS for this part of the kernel?
>>>> The CAN NETWORK DRIVERS and GENERIC PHY FRAMEWORK do not list your name.
>>> Correct. I touched can phy once related to mux only.
>>>> If you think of mail delivery in general, it's delivered at least to the ML
>>>> https://lore.kernel.org/all/20260317203001.2108568-1-andriy.shevchenko@linux.intel.com/
>>>>
>>>> TBH I don't know what to answer to your question as I don't know your expectations and
>>>> how it should be fulfilled taking into account my above question...
>>> Changelog v2:
>>> - Cc'ed to Ulf and Josua due to above
>>>
>>> This is why I expected it in my inbox.
>>> Usually in this situation I blame my provider.
>> Ah, blame me then. I most likely missed to add your name to the Cc list.
> Hmm... I have checked and your address is in the Cc for the whole series,
> so I withdraw that I admit earlier that problem is on my side. Please, check
> if everything fine on yours. Note, I'm about to send a v3.
Received v3, thanks!
>
>>>> But thanks for the reviewing! I will address the commit message in v3.
>>> Great!
>> And will try hard to make sure your address will be in the Cc list.
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
