Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD99EC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Apr 2022 07:09:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zeM/fHSR481ahSS38NYtGtxGURYUlZ1IqaXxMgzZOrg=; b=oPoWzbjJC9T9ND
	E7vD39kYnVhChEqb6Ay4sWLRnjKrqjfL5UYYKaKEIdH6DhlrnmlVSNXb4u7wy0BIHmuYIu2QXA0So
	nfs932GPGKAo9uVVqIKQHZ1Vxddq3vJOMyjokm9H0as/D4BD3H+S0GkWWPjBuaU/61Kd1PzQZ03nd
	gbm7WOUnPMkEwP+ZwKUwGPKo+pn+Yeb/FR57D0TcXo7QJK6VsDqxWeZl+5xveaOAT11A7/gsoHUEd
	FIQhiIVhgKO0AKm/JVJDFKj9N3u8kwlOp7kIFP6ZKDGnw6tZ1HHL1K2Wdkwc+62SZvAl8KqgiRkLL
	khraQcYrOsigd9/6IXpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1netby-004GMR-UF; Thu, 14 Apr 2022 07:09:50 +0000
Received: from mail-am6eur05on2062b.outbound.protection.outlook.com
 ([2a01:111:f400:7e1b::62b]
 helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1netbV-004G61-FC; Thu, 14 Apr 2022 07:09:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NTDZ1cCotbZd0IydRa/S2wTNipNbYDF5z9GsgvvnRzjjTxuggEhPFL2cOGsEp5O77c8nktdzOwd/+BAzd1d1LB+zES+hV8gnfyM6Fiqg/p868b6wRkW3NDau5OHihqpstxJ4o7gh/WNfl43L+xf3m6ettrYwLelWyY1tlehiL7R+0NpZcB1nUzc+EmWYD52za0msAlap7QHsctb8aiWVMURX6Kly3wYEdut5eQt1jzoGb9upuYBPvEmvxWhp6Yt/4LoAKFqRASVE/Ki584/FVnkU/WBWIvlnKbuAoeCmBdb6pSZ4Z/FMr2obsRZqIC2V6DQzBQfZIhCJJVJRnxMjCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J2oGElILzCk+igiUTrOVzfcg+9IEz0ALDeKTJRlftv0=;
 b=oVBKG9lfzKYiLoAaOzGU3bsw1OqtpE5QGOwzo9CkjxXD2jU5TMtInuPoFtH6uUAInhMV/Gkrbh2eNVeXCEqgcYTkdVI3Gbock5pmukwDnJy88LuVkacEFOtD/qCdPra1q8Hun9aPEgD7I17MxL7fLeYI05TdHgqJRoatDnxYPc6DpRa4ac3JGD5uQIq5dRpuM4mP10M5gh0ejF4Kkgk9M8f2w1u0eDe8LVAZMnxuf36U/gb+AD4KDscSv5VGCXNvHnJdejHqrdXDrr1dX4jpF4yOY1g6k7kQE60aWUNeJLxhrsHbbIFMtSt8PEj1ExjLeCZgzsLOF9jQ5tVl2Njd1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J2oGElILzCk+igiUTrOVzfcg+9IEz0ALDeKTJRlftv0=;
 b=E0rMaOWdOiZuXIiy8vZFLGScTMmEtjd4nD5h9yM/XiJMl7jtSDY77HZnQBW/dEvukqQ1X0GCHTtYXn7wl6wGT1gwhll9m3ie23fxJX0tWy9wi7BQ6mGVR8cSeObhDF96ddIrqdBPFIOp/w+FimUDqafb+c8UwsAZaZ8yizEdtrs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by DB8PR04MB6714.eurprd04.prod.outlook.com (2603:10a6:10:10e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.20; Thu, 14 Apr
 2022 07:09:17 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::b09c:8ffe:8e02:7387]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::b09c:8ffe:8e02:7387%9]) with mapi id 15.20.5164.018; Thu, 14 Apr 2022
 07:09:17 +0000
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
Subject: [PATCH v8 3/5] dt-bindings: phy: Convert mixel,
 mipi-dsi-phy to json-schema
Date: Thu, 14 Apr 2022 15:10:37 +0800
Message-Id: <20220414071039.423271-4-victor.liu@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220414071039.423271-1-victor.liu@nxp.com>
References: <20220414071039.423271-1-victor.liu@nxp.com>
X-ClientProxiedBy: SI2PR06CA0005.apcprd06.prod.outlook.com
 (2603:1096:4:186::12) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2a2d7bcc-db4c-4fad-865c-08da1de5b07c
X-MS-TrafficTypeDiagnostic: DB8PR04MB6714:EE_
X-Microsoft-Antispam-PRVS: <DB8PR04MB671449B9E53B8DD21557969498EF9@DB8PR04MB6714.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qE9My7+/runUOCq5/SMZOCu4wIFby4/MlKm0Fe9okNN6IYCnL+1txMcWwQdwn8FA/u/2yAtW5z5T5qxYmNSXxN0HatmpbU+qTtyQMzUp4vXW8sFJVWJM7JGv5CHgtDCKE+u8nMZPF/1cLtY3FyflMnZKvbWuOLAnGhrHGIhLFta5pgrhvnIehUCR8aWw76T747U2XDEXSzaKHxsbnztumpKo8oPwBupqv+PFdzQY/LUgDlGMoXyvOtcemEoeCA1Dd6/LHBbJ1A6ErYUdgeWZKZY4yZxbXoiE8A6LH9/gC4MK7QHMkXucnRGAeevezv4wf78vmuHNyjr+6xnAUftOfaYNldLMhLHE3g5M917yUCGrQiS2Y2iXvslI8JBAL83n+/wr1JNGTCDE5JVSQ6JCViGr9Jsiomlc2Rbj5quBfx1jmsR2r/oiC9kOFL4rJAIeQIPje/GqEUFEPVQ/D81VNwLtxstxFuaN952synGCwWC/kZda+Rdym2Ykx43wlYMNs2JVM5nEDqzPKTYfKp2Lc8Oqn2xxjZhvg+FFCcaP83G9qQS3Xq4LYK0ctSwTWjlk1cYw1Uklew0ZSJizZg2MrNdEHIbC/5mcIphlJu35An76J3c0MNeBAJ1SbVHmGLPRUJRSHSn2+JCkILoEPzLzHeBplJ7OKZ2ouqFyBBhIYw0fDeY0n6hHST83NpBNi2OkUjwpRFtdzMXR3FDmxYXyoM1A0l1achCWwJ6Efnd28aNQJyPv+UvwOz4IEVvG05k82zWYHqIkX7x1ARg5gqTlRjwumuFbVaptHfFGoD1EYqQWu5xNiylyZq93ST6Eb3KCpkCXcUvzAv6XDrCDzBlQLw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB7046.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(966005)(6486002)(1076003)(38100700002)(38350700002)(66556008)(316002)(66946007)(4326008)(66476007)(508600001)(8676002)(86362001)(2616005)(26005)(6666004)(6512007)(52116002)(6506007)(186003)(7416002)(2906002)(5660300002)(36756003)(8936002)(83380400001)(66574015);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U3NPNEdBTnR5TTUvVnZkOFlVdjhnUTY1WktKVHp3MVBVMEpWRndQcU94bUxJ?=
 =?utf-8?B?Vi9BZHVzM0lPMVd0RFY2TDFCNkNvNHdERUdOSnFQVHh1RDFXQzhuSUU2SkFx?=
 =?utf-8?B?N1BMeURXVStqcEUrcUZ2Umw0T1FUK0IrYU5kVW5WeFdJL2p6NnFKeWE0d1pL?=
 =?utf-8?B?QytjNWhvdE1GZU5IYTFjbG82dS9mUDRuOEJFRkVIK25vaFBJVzNFa0srOGkw?=
 =?utf-8?B?L3NoZjBwOGF6bGkxRnZva3N6YnRFVVQ5QmpwTUo2dmRIMWlqTmFpQWV3SGtS?=
 =?utf-8?B?QmprMTg5TjNDdnZaaDBZcU1Ka3UwWEV4UUljWjVEV0dHZGx1Rk1VN1QrQUs5?=
 =?utf-8?B?Z0kzMnhNNUU2cmxnclVUenM1QXFEK0tUUzN6YXhCempMZVFkeEdUQ0JYbS9y?=
 =?utf-8?B?VUFLV0ZIcXVXSWdlVWhlaDV6dFhrdzJpMHZjekQ4djU2NXY2SU9kdjREUDFh?=
 =?utf-8?B?RkVVR3Z5RVRjeThzb0pNVFQ3QmJ3SkFCQ0Z5eWRPSGV0MUJLQ3BYZEpIL3lM?=
 =?utf-8?B?SEM5bUZ6T294eFBMWHNSdmJsT3pLbk5KOVBRbEEveEFXZGg2M0VMaEFYbjZx?=
 =?utf-8?B?UTR0dUNuSkhKTEhQOWV4VWhpMGo4SGpRSmd6UW1pMDdBRVVuMGJaLzNmejlG?=
 =?utf-8?B?eE5hWjViN3V3dHExYURNZ2tGV0FuZ2M2c1dPN3ZpNWFEZm5zKzNYeklJMFR0?=
 =?utf-8?B?NjIrYWcwN0plbGVlWTdHVmdyczZtWTZvYk5EMHNtSFQ1VU5KQUJhZUdpWmsw?=
 =?utf-8?B?VjJUa25vYlFCWHlZd3YzTWFBRUVmWk5oU3U5aWE5WmdCSGtXSlhwY211TFJr?=
 =?utf-8?B?OGlVMWZ1TTNEVmRNRmZNaG1QbC81ek5ZVnBJcHVScCtET3pmbWxOS3RTd2Va?=
 =?utf-8?B?UStpSHR5elFpbGdwWXo1azFoVTBRUUJzVXZDSHhOZWtiNjBYRGpXaEtYS05i?=
 =?utf-8?B?SFZaV1FVL1VXcVFuU3JFaVpPRzBPTEJBRGJEV2d1cHBKMnNlYjFOQ1M4Q25o?=
 =?utf-8?B?SVhTcjRWVzUxT09PZDl6c0ZYZENkUnZGaWQrbHNNNkZMKzlVRmc0UTJ1eGFE?=
 =?utf-8?B?QVNLOVl6ZzhITTB2RWtkRTNCQmE2eFRCeThWc0cxMnlwSmk2cWk2bGFMU0Mx?=
 =?utf-8?B?UUNMVFczOVdlbm9WQXZoaGFRaXJ3THZJOFBQR2lDSVVuVmoxalFobkZDbnY4?=
 =?utf-8?B?L3Q3VXNxcWRjVmlFVVRFTHZCaXh1MnBHOEhGYUxNRmJON1liMnpVYTRJSUtj?=
 =?utf-8?B?VFJuaVR1RTZITEdncFNtWnlWcWNmejhwa0UxaDdVQmVBNXlVeWVsOCtNYVB4?=
 =?utf-8?B?ME5tZERxa1c3bHhUbUtEdGdaTCtENGoxSE1kSTRVNUhLYktoWVR4TDg3a1c4?=
 =?utf-8?B?QXZhb1d0Uks3bmM2V21wdm5uTWFQcGk0ME9VNWw0VEpTTWRmMU9mbEVKMjgz?=
 =?utf-8?B?bmhLNU5wWkdMa0JUcUEzbGlGOHJrbXV5dTVxS004OFVvQis4bWdWYy9JTk1Z?=
 =?utf-8?B?YjF0VXBlQXlRY05KVFZJQzQ4NDFFMHRPNVg1a2Frc3p0UnlYbjdmS3Q2MFNn?=
 =?utf-8?B?ejdSbjNEUnRGeFBlOWRtMUJCUU1rODhEbFNRSlc2SXBpdU02aXRoMG45UUp4?=
 =?utf-8?B?QU82eDRYd1pWcXFrM0JVdnRaSS9ZcExDY2NwMW8yZ3psZVVCVDRaOGFUSG5J?=
 =?utf-8?B?TE1pbGVCbHdaa2hvSzl1TzFqcmphWGtFS1JwNmpad3Q5cnBuZEV4aDd5WlRT?=
 =?utf-8?B?ZUR0RDdDOFd5QXlnM2YrN2N4MmxycHJRL3JWUUJnYS9ZcnBkd1E5RGMwMXZy?=
 =?utf-8?B?NHdLaFhFSi9rRTgzb1htSVVLMGlmby9nRFVyYjhuRWw4VTF4UFl1aXdBT01o?=
 =?utf-8?B?NjI2TTRPQWpLdnRTN1YxUWNrWlpTc3oyVTVybkJOcEZzeUI3S2Z4cmovNFQ1?=
 =?utf-8?B?ZEhoQjFrWVlpbEVEWXlyblNKZkg1bmNwaThCby91ZDVyczJqUXFZMFB6aGIy?=
 =?utf-8?B?cmVMbGhxeXY2dVdycHpQSFRsMlhBdkR4Vm1mRVJ1dUxrY0tHR2V0d1oyYU4z?=
 =?utf-8?B?aUZ0M1NYclRBQStiUzR0L0F1ay9DTEF5VEVzSGYreFB3b3E5OEN5TzltNGd3?=
 =?utf-8?B?YmZ2bGp6Ukx2UTJXdnFjc1VDNjYwYWRFNncxRFcrTjdYdUdsZW9wZEV4dlB0?=
 =?utf-8?B?NHFPdkJ0Y09yTE5NTTRkd2tBb0FyWWN4NGhKU1psUGl2bkJFMkNBdUd6ZDN1?=
 =?utf-8?B?ZjJKc0FwTEJ0d0d6NzhoTi9kbHlvT1FORUhqVmJ4cHA3YzZuOGU4VkpHUkxR?=
 =?utf-8?B?Y2lxRHlHMUY0M3Q4QytLYVhSdTlPOGVxdDJwQk5RaHMzT3ZHQ0M3QT09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a2d7bcc-db4c-4fad-865c-08da1de5b07c
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2022 07:09:17.3888 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sbCC5JmQ1gSmWSGMYgUYd4lph0heVRfW4Qc0uWmGlNFoOZxspTuhg9pr4bfZmziKpM34NrH9tMHUHllfxYTc7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6714
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220414_000921_594812_F2CA45A6 
X-CRM114-Status: GOOD (  16.69  )
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
