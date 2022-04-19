Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BC2BC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 19 Apr 2022 01:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zeM/fHSR481ahSS38NYtGtxGURYUlZ1IqaXxMgzZOrg=; b=TZxU4r+O9m/AQ1
	6ieo1ab2d+1K/O9h1c5l6/L/+92JkCUB7NuaQndkBjwB/XjEqGqUIEorDZr7HVC0ooQVcc9H7Eoc4
	iG6K8AK2Pxv8SR0cenkFiAmlPooEUHdHz7ppgX9JbOgiDkniqqAddTVIc9/MWeTKRz24dwWgrDpiJ
	vFH3HR+KdInNcGpkMm8by2Lv617uKJGvJqOJyrlS1ejQdcE+Hx/57gu36gb4ZSG/ZUoZ36QFcl+Hq
	lIgUc42+T4SrTZ4xzZoKGbKXOAOSvyzzFGzRwjaE0PAnUZYJ1rRKfKJttNyGZYBjMKC8WQoyEhXsY
	4kPA5nO9+XVNAseUU5nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngcLT-0010g0-Ok; Tue, 19 Apr 2022 01:07:55 +0000
Received: from mail-am6eur05on20627.outbound.protection.outlook.com
 ([2a01:111:f400:7e1b::627]
 helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngcL8-0010Va-Ee; Tue, 19 Apr 2022 01:07:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bBfCidynRtAwbJMstiuDkmscrWPNZ+X72vxuFD3M32pMu9ga7Vn570hM0oWCgkAk2J3ogVhh2MBcyQo8ZDIXno3mb46DuRUgTf1qebblfSnFmPQgNW5WpYLlNa8PtMOHpGEL5OOcdOFwvFp42jNjFUvzfUFczGmmwSBTXSjivzDL266McyS/ThwNja2BG6gnq5sRLGntF6CUPm1cjwj6Lq0xQh/zCPzkD0y1CwTBsqh9KCArdMfYgJihAdu3IIEX9n38TIFtcjRQdmk4wK3QFXyerhjyht5hRjqSlsdnMviPDSejgFWnE1Crpae8zvCgTCbpGTbjTHqaRbl3eqZ9Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J2oGElILzCk+igiUTrOVzfcg+9IEz0ALDeKTJRlftv0=;
 b=Fezq8evn7PGTALQGOq8cdhU2PZhZkMXUO3XkqkiP+5fqgAUaau/n4Dl5rpbnWpAxwwcIRBvyq5fsRsm50kmIzxvu0pgy4S8JsBtF9j1V2LOpPYj83sEsLmiy5Ma3ebL2If0icEh7ySwOkxC5GwisXfBS+sXr7QNOcmiGQYAO3F2blSXIxvlnqCJC+W5FxmAjbxke+UwK0lpEDakdBeeyIDHR1n5M55sNl5M90wq81d9fJGME+BtwG9Ljg4XZabD3c4AJho2lznVB3CUHMOpNF17K7An8Q/QOSRFDzS+w8pJo0WBrczu6r41Few8fFODRiZxtVvMK/XbWuZT1IbevDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J2oGElILzCk+igiUTrOVzfcg+9IEz0ALDeKTJRlftv0=;
 b=OdjNptzfmi6MnV//wOORAI6uycLJIMob+2GhwnEv6GUu5tmiCysita+I8Wte1KFZST3PMlX2OKvAYDvlkO6q7G/Y+2C5TrsIa0J3xzjtMn+U3tD9Hw3hKNCA8Y/XnqsbLyJr55FFrcxK75ZdOsaXoOcplR24D9IGoGOQ9WHrDnI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by HE1PR04MB3291.eurprd04.prod.outlook.com (2603:10a6:7:18::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.20; Tue, 19 Apr
 2022 01:07:30 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::b09c:8ffe:8e02:7387]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::b09c:8ffe:8e02:7387%9]) with mapi id 15.20.5164.026; Tue, 19 Apr 2022
 01:07:30 +0000
From: Liu Ying <victor.liu@nxp.com>
To: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Cc: kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
 andrzej.hajda@intel.com, narmstrong@baylibre.com, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, airlied@linux.ie, daniel@ffwll.ch,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, agx@sigxcpu.org,
 robert.chiras@nxp.com, martin.kepplinger@puri.sm,
 Rob Herring <robh@kernel.org>
Subject: [PATCH resend v8 3/5] dt-bindings: phy: Convert mixel,
 mipi-dsi-phy to json-schema
Date: Tue, 19 Apr 2022 09:08:50 +0800
Message-Id: <20220419010852.452169-4-victor.liu@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220419010852.452169-1-victor.liu@nxp.com>
References: <20220419010852.452169-1-victor.liu@nxp.com>
X-ClientProxiedBy: SI2P153CA0023.APCP153.PROD.OUTLOOK.COM (2603:1096:4:190::6)
 To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1b3c89ac-798f-4b75-79e4-08da21a0fa4e
X-MS-TrafficTypeDiagnostic: HE1PR04MB3291:EE_
X-Microsoft-Antispam-PRVS: <HE1PR04MB3291964549CDA215B8E76C4998F29@HE1PR04MB3291.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RMWmopOr4beyiq2RJzOTb6KUZprCfaoEnzh4bs7RhhsJ2x7cMN9otIfbfJdzRjfcKkaTAx43L4UYC+fTr8/iGprIsQPFtnczlbZjOAgfCV/ztZSzfpo+494owJbmDZyM8dTuSxB8wn4ZvmevjjTrWGjPOkM8PqkJfVoOOdpoRMBSdRmDG2A7jZi62Z5w7tb53pTInrCd/yfXm8ESZoK7FewtaiNktsFvvc2/CHQ7kbfue4k7Z3TsH/yxFoToj0a55f+7rYq20rYU1fMv+Yy27jRn2P4q+TfXZAGKCk4tHw/WmH+M4g/4CWeUU2wdN9sjvHWD0gHja+PamXQp1JcVWCr6OpCi0xlD2UWeyrYdqWmW19TR0JmhjrPvJfPLeXSA60eYF9y+hQHnH/3wxQC9cG0lDDzba0C/7GogQ5tPZrxO07/XJ44xVbLzMN3hNpKDAgZpaVOvs04REm77BggacJBqVng2TthTVxWEfTPJGTlnjuz7B+dpEzbwljtwmggGmXqESmFEqhkXN5MjqaNa2Ggih8cuA01VxGjiBGxr414AJn6QQsnQcRyB/qtF1CUGuMSntPPdY+St+UMPZyR0J29AJy8jIVpD2w/EaDzT2tIkOQxPzRW7h6ALc7Nac5BilZ7eL6QT0fotokZdE1xp7ctw4C/mFIdegqpL5sBvFmbLjEITrNKuctsIsrkLrCSdvA2231v6nXgWlM00ibRCH3CReiTgsDSS9CQkHnIFpZt0j9EeQWQv0XXaO56DghqQ3r4s6TQcSb/swaJygWMEOgPUNKJwGBVUIBBOgxJiTFlgOpyuJa8GN6JPS8dYr0QHA+uGaa3iv1ZKUvt3Czy6yA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB7046.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(66946007)(508600001)(8676002)(4326008)(66574015)(86362001)(966005)(6486002)(36756003)(52116002)(6512007)(6506007)(6666004)(316002)(66556008)(66476007)(2906002)(26005)(186003)(83380400001)(2616005)(1076003)(5660300002)(7416002)(8936002)(38100700002)(38350700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TGthOVJRMCtsbUV2c0QxZDY3dCtYa0J6ZkwrSmg2anErUGxnQzFZV1M0bGJL?=
 =?utf-8?B?aHRGRkN5b0prK1lqRHJzOStwM05jL2F3MC9pTCtqb25LVHhZUGZLWWMwdUp1?=
 =?utf-8?B?N1FKS2IvL3BaeURBcmlxZzBmd0ViUjVFZEVrR203WXZBT0NreHBhOG82eDU2?=
 =?utf-8?B?TDdTb2tuTVc1dUt1TUZpcFRDcDRpcFhMUnpjSWhhWU1CN2U2dXB6NThFcDBl?=
 =?utf-8?B?YTdFMG9MZDdyalp3SzRHQUFUU04xRVRuMW9hTUJ2S2pmWjBSS0ZjR2p5SC9H?=
 =?utf-8?B?eUhTeFkvcVVQNEtyY3l1WjdPNFZrR2NWRFFCTzNsdzJwaWdQN2g0UFJubGRs?=
 =?utf-8?B?TTI4K3oxRHVFNE1hRXd1ZTl1RW9JNmNaODk0MVpqc1hYMFkxWHdHT1JQSGht?=
 =?utf-8?B?V1lSRjhPTnF0ZUM5UVczRDROVW9aLzZST202SExoRDJRQ3lYWDhleUJmYVRE?=
 =?utf-8?B?RjJvYlhQcTBVQVA1QW9FK3MxcVBYQ09VNHc2UndxSFZENnVDYkFSQnIrbjVk?=
 =?utf-8?B?eWpGZ3RMU1RpZ2tLWGlieGpDU0huZlN2U3FOeWNPMUcyVG91ZkJBOTlmRTdD?=
 =?utf-8?B?bVJpQXBKdHliK3RaeEZHQnk3anpySVpsNmxYeVBDRHV6cmJwTlRseVZWRGE0?=
 =?utf-8?B?eHcrOFhtcFZZUVM4L04vd2NYRTN6c0xXcG9uM01xSTNzZVJxdEpOclVFL0RQ?=
 =?utf-8?B?UjI4WE1qQ0pvR3pZTkNnTXZUdzh3QnkrZ3NJcVZBRThadlRqZWFHeERHMG5k?=
 =?utf-8?B?MW1PSFRqaTA2T1g5ejRQOFRtT3VCcm1aYmh0UnNaTzQxOEhwSForclk0ZjlE?=
 =?utf-8?B?ejJRWnJnVytXVDVoVFNzVHRxMVhWVHQrR3ZRV0d4eGJucUZPdFVEbTZXZGVj?=
 =?utf-8?B?TFU1Rjh2RmYrYVE2UEhZNi9mY2E0ZEd6ZjUvU0RyR0dZS1IvZFRoZForYWdV?=
 =?utf-8?B?cWowM2xDbHYzQnU0bURCQ3V2V0V3ei9Hem9NRy8zQmZWQ3pOdFlwY3NVQVQy?=
 =?utf-8?B?a1VCeG9tSkx2OXAwWUVpdWVFaU9YclhnT3IyK2JlbzhQbUZhMkZUK28yVjJV?=
 =?utf-8?B?U3VWY3FiTlJlWHJpd2llUGJsNHM1bjhTK2FWdnY3aVFlMkJ4UUwzM3c2Kzhy?=
 =?utf-8?B?VGNnUEZLTnpVSlVmd1lRVlVhc2lxWXpxSlJQK0ZiM2VGSnh2cmRpUmpFSi9E?=
 =?utf-8?B?R3daNjZ5YmRVZzBadmp3anFPeFdGWWtMUFpwZmRLMy9wUFlRaERYejlIK3k3?=
 =?utf-8?B?UStaOWc3bkQyVHluMjhYU2diNlJudzJyWDBXQkYrV29FQjRIeS9BUFpiR1hL?=
 =?utf-8?B?QXArQjBTNlJIWkczN0dsWUJ6a3JFNGxQci94T05jYjFQeEVUM3pidlpTNWFy?=
 =?utf-8?B?bGpWaUtBSEcrU2tkK04ralEwYUJBWE5NaFpkbGpOTWNnTFpabk5EQjNIWG9l?=
 =?utf-8?B?Y0VLV0dkbkpKR20zUWZtSUVTSVFyaUdNUkJ2QWNNbWNKbjdoQmJQVysrczRq?=
 =?utf-8?B?UTMzdTdrcnFXUjQzeEdBQ3dkdmI2OEJVWWhMaXg0RjRuZGRMbjhrS1dtb3Rx?=
 =?utf-8?B?Y2dkQ3QyYXFSSjE1alQza0w3RUd0d0JRWGRCNVltQlRDc3VQN0haWGkvR2lF?=
 =?utf-8?B?VFdCTjdZZythYzV5UldVakp1anlrajdia0hjSW13dVBHVnBoRmk1SjhrM3k5?=
 =?utf-8?B?TjdKSlRRdHFMMVhZbEhibmEvWjN3TU1wTlRrWDRiOXZPL2FhaWlQaEVUV1d0?=
 =?utf-8?B?ZzU0NGxMZGpJWDMzUWcyMm5ndVpCL0hucjI2NSs3UnhxenhVS1UyUDB4Ymh2?=
 =?utf-8?B?MmVTVzdXQUszWHZ2VjhMcjZxdEJ4S2VTeXJnN1NiS3FCenFmWjU1KzlGaFpH?=
 =?utf-8?B?RE1LN0RUYy9peXpoU3E4a001M0ZERDAvY1VtWmh2M05ZQ0NiT2pMQ2FzZEFu?=
 =?utf-8?B?NmlqeEp2ckJoTjgzd0ZoMlkyblZxSDg1WFZEMGc3L1BBc0RNbGJMNmZha3Z1?=
 =?utf-8?B?ZHhISWZRa3N1clBacXBMMm80MnhFQmc1c1JidlFPbENQaWlhZTlraDAyK1lT?=
 =?utf-8?B?ZVUrNlAvSTB5cEUva2dUQmduRmhQVSt0ZHMzYjhXdkU1aVcvZjhaRnNjaFc4?=
 =?utf-8?B?Y0ppbUh4dGExdk13NUFnYmtrd1hHZUJ6RHpJcEtQNUxxMzV5YytCT0x6Mk5o?=
 =?utf-8?B?RTA5QkdhZi9NR2JPcS9oWjdORm1BemZMcE84Uncvc3J4VTY0eTBUWFZock5t?=
 =?utf-8?B?RjgrWDlSemdWS2YxWWhpcHJEZWFpQ1VEQ1FmbnFGUnBYN3JuK2lKdmt6Smpj?=
 =?utf-8?B?VVpJQzFNZmR5UktjY2xSMkVrZi93WlFJNFJIaHZ3eks5QmN4aS9ZZz09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b3c89ac-798f-4b75-79e4-08da21a0fa4e
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2022 01:07:30.6789 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2DJXPlal7BcBcVY32rlFx1lzH2vGFVWK6/RQDOJST+m4xMZGbAseZ70jJVAbIWBUuvwMN2jBXyu9LnXbeblQ/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR04MB3291
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220418_180734_566253_35F36774 
X-CRM114-Status: GOOD (  17.38  )
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
cC5jb20+Ci0tLQp2Ny0+djg6CiogTm8gY2hhbmdlLgoKdjYtPnY3OgoqIE5vIGNoYW5nZS4KCnY1
LT52NjoKKiBObyBjaGFuZ2UuCgp2NC0+djU6CiogTm8gY2hhbmdlLgoKdjMtPnY0OgoqIEFkZCBS
b2IncyBhbmQgR3VpZG8ncyBSLWIgdGFncy4KCnYyLT52MzoKKiBJbXByb3ZlIHRoZSAnY2xvY2st
bmFtZXMnIHByb3BlcnR5IGJ5IGRyb3BwaW5nICdpdGVtczonLgoKdjEtPnYyOgoqIE5ld2x5IGlu
dHJvZHVjZWQgaW4gdjIuICAoR3VpZG8pCgogLi4uL2JpbmRpbmdzL3BoeS9taXhlbCxtaXBpLWRz
aS1waHkudHh0ICAgICAgIHwgMjkgLS0tLS0tLS0KIC4uLi9iaW5kaW5ncy9waHkvbWl4ZWwsbWlw
aS1kc2ktcGh5LnlhbWwgICAgICB8IDcyICsrKysrKysrKysrKysrKysrKysKIDIgZmlsZXMgY2hh
bmdlZCwgNzIgaW5zZXJ0aW9ucygrKSwgMjkgZGVsZXRpb25zKC0pCiBkZWxldGUgbW9kZSAxMDA2
NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9taXhlbCxtaXBpLWRzaS1w
aHkudHh0CiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3BoeS9taXhlbCxtaXBpLWRzaS1waHkueWFtbAoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWl4ZWwsbWlwaS1kc2ktcGh5LnR4dCBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWl4ZWwsbWlwaS1kc2ktcGh5LnR4dApk
ZWxldGVkIGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggOWIyMzQwNzIzM2MwLi4wMDAwMDAwMDAwMDAK
LS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9taXhlbCxtaXBpLWRz
aS1waHkudHh0CisrKyAvZGV2L251bGwKQEAgLTEsMjkgKzAsMCBAQAotTWl4ZWwgRFNJIFBIWSBm
b3IgaS5NWDgKLQotVGhlIE1peGVsIE1JUEktRFNJIFBIWSBJUCBibG9jayBpcyBlLmcuIGZvdW5k
IG9uIGkuTVg4IHBsYXRmb3JtcyAoYWxvbmcgdGhlCi1NSVBJLURTSSBJUCBmcm9tIE5vcnRod2Vz
dCBMb2dpYykuIEl0IHJlcHJlc2VudHMgdGhlIHBoeXNpY2FsIGxheWVyIGZvciB0aGUKLWVsZWN0
cmljYWwgc2lnbmFscyBmb3IgRFNJLgotCi1SZXF1aXJlZCBwcm9wZXJ0aWVzOgotLSBjb21wYXRp
YmxlOiBNdXN0IGJlOgotICAtICJmc2wsaW14OG1xLW1pcGktZHBoeSIKLS0gY2xvY2tzOiBNdXN0
IGNvbnRhaW4gYW4gZW50cnkgZm9yIGVhY2ggZW50cnkgaW4gY2xvY2stbmFtZXMuCi0tIGNsb2Nr
LW5hbWVzOiBNdXN0IGNvbnRhaW4gdGhlIGZvbGxvd2luZyBlbnRyaWVzOgotICAtICJwaHlfcmVm
IjogcGhhbmRsZSBhbmQgc3BlY2lmaWVyIHJlZmVycmluZyB0byB0aGUgRFBIWSByZWYgY2xvY2sK
LS0gcmVnOiB0aGUgcmVnaXN0ZXIgcmFuZ2Ugb2YgdGhlIFBIWSBjb250cm9sbGVyCi0tICNwaHkt
Y2VsbHM6IG51bWJlciBvZiBjZWxscyBpbiBQSFksIGFzIGRlZmluZWQgaW4KLSAgRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktYmluZGluZ3MudHh0Ci0gIHRoaXMgbXVz
dCBiZSA8MD4KLQotT3B0aW9uYWwgcHJvcGVydGllczoKLS0gcG93ZXItZG9tYWluczogcGhhbmRs
ZSB0byBwb3dlciBkb21haW4KLQotRXhhbXBsZToKLQlkcGh5OiBkcGh5QDMwYTAwMzAgewotCQlj
b21wYXRpYmxlID0gImZzbCxpbXg4bXEtbWlwaS1kcGh5IjsKLQkJY2xvY2tzID0gPCZjbGsgSU1Y
OE1RX0NMS19EU0lfUEhZX1JFRj47Ci0JCWNsb2NrLW5hbWVzID0gInBoeV9yZWYiOwotCQlyZWcg
PSA8MHgzMGEwMDMwMCAweDEwMD47Ci0JCXBvd2VyLWRvbWFpbnMgPSA8JnBkX21pcGkwPjsKLQkJ
I3BoeS1jZWxscyA9IDwwPjsKLSAgICAgICAgfTsKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWl4ZWwsbWlwaS1kc2ktcGh5LnlhbWwgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21peGVsLG1pcGktZHNpLXBoeS55YW1sCm5l
dyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uYzM0ZjJlNmQ2YmQ1Ci0tLSAv
ZGV2L251bGwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9taXhl
bCxtaXBpLWRzaS1waHkueWFtbApAQCAtMCwwICsxLDcyIEBACisjIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKKyVZQU1MIDEuMgorLS0tCisk
aWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3BoeS9taXhlbCxtaXBpLWRzaS1waHku
eWFtbCMKKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55
YW1sIworCit0aXRsZTogTWl4ZWwgRFNJIFBIWSBmb3IgaS5NWDgKKworbWFpbnRhaW5lcnM6Cisg
IC0gR3VpZG8gR8O8bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4KKworZGVzY3JpcHRpb246IHwKKyAg
VGhlIE1peGVsIE1JUEktRFNJIFBIWSBJUCBibG9jayBpcyBlLmcuIGZvdW5kIG9uIGkuTVg4IHBs
YXRmb3JtcyAoYWxvbmcgdGhlCisgIE1JUEktRFNJIElQIGZyb20gTm9ydGh3ZXN0IExvZ2ljKS4g
SXQgcmVwcmVzZW50cyB0aGUgcGh5c2ljYWwgbGF5ZXIgZm9yIHRoZQorICBlbGVjdHJpY2FsIHNp
Z25hbHMgZm9yIERTSS4KKworcHJvcGVydGllczoKKyAgY29tcGF0aWJsZToKKyAgICBlbnVtOgor
ICAgICAgLSBmc2wsaW14OG1xLW1pcGktZHBoeQorCisgIHJlZzoKKyAgICBtYXhJdGVtczogMQor
CisgIGNsb2NrczoKKyAgICBtYXhJdGVtczogMQorCisgIGNsb2NrLW5hbWVzOgorICAgIGNvbnN0
OiBwaHlfcmVmCisKKyAgYXNzaWduZWQtY2xvY2tzOgorICAgIG1heEl0ZW1zOiAxCisKKyAgYXNz
aWduZWQtY2xvY2stcGFyZW50czoKKyAgICBtYXhJdGVtczogMQorCisgIGFzc2lnbmVkLWNsb2Nr
LXJhdGVzOgorICAgIG1heEl0ZW1zOiAxCisKKyAgIiNwaHktY2VsbHMiOgorICAgIGNvbnN0OiAw
CisKKyAgcG93ZXItZG9tYWluczoKKyAgICBtYXhJdGVtczogMQorCityZXF1aXJlZDoKKyAgLSBj
b21wYXRpYmxlCisgIC0gcmVnCisgIC0gY2xvY2tzCisgIC0gY2xvY2stbmFtZXMKKyAgLSBhc3Np
Z25lZC1jbG9ja3MKKyAgLSBhc3NpZ25lZC1jbG9jay1wYXJlbnRzCisgIC0gYXNzaWduZWQtY2xv
Y2stcmF0ZXMKKyAgLSAiI3BoeS1jZWxscyIKKyAgLSBwb3dlci1kb21haW5zCisKK2FkZGl0aW9u
YWxQcm9wZXJ0aWVzOiBmYWxzZQorCitleGFtcGxlczoKKyAgLSB8CisgICAgI2luY2x1ZGUgPGR0
LWJpbmRpbmdzL2Nsb2NrL2lteDhtcS1jbG9jay5oPgorICAgIGRwaHk6IGRwaHlAMzBhMDAzMCB7
CisgICAgICAgIGNvbXBhdGlibGUgPSAiZnNsLGlteDhtcS1taXBpLWRwaHkiOworICAgICAgICBy
ZWcgPSA8MHgzMGEwMDMwMCAweDEwMD47CisgICAgICAgIGNsb2NrcyA9IDwmY2xrIElNWDhNUV9D
TEtfRFNJX1BIWV9SRUY+OworICAgICAgICBjbG9jay1uYW1lcyA9ICJwaHlfcmVmIjsKKyAgICAg
ICAgYXNzaWduZWQtY2xvY2tzID0gPCZjbGsgSU1YOE1RX0NMS19EU0lfUEhZX1JFRj47CisgICAg
ICAgIGFzc2lnbmVkLWNsb2NrLXBhcmVudHMgPSA8JmNsayBJTVg4TVFfVklERU9fUExMMV9PVVQ+
OworICAgICAgICBhc3NpZ25lZC1jbG9jay1yYXRlcyA9IDwyNDAwMDAwMD47CisgICAgICAgICNw
aHktY2VsbHMgPSA8MD47CisgICAgICAgIHBvd2VyLWRvbWFpbnMgPSA8JnBnY19taXBpPjsKKyAg
ICB9OwotLSAKMi4yNS4xCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
