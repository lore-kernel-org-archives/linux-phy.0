Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 143B3C44501
	for <linux-phy@archiver.kernel.org>; Thu, 16 Jul 2026 10:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rMu2Q7pZ5DJOHC+vQl7REk5t3HM8IuXzbRSwD7UjdEI=; b=HBNLJ7E3QiDyDh
	yvQtdcaWZg4D7T1d8jwT3rTf1ONfwCVbYo4NGtcFUkiVwYibWI9xcTJLHwaqri1IcLWoe1je0LHpm
	aS6sXcrVhM4cwJgRpjYdQ584s3bRTt1wSQimCGapTpgCN4rvxbUTArUsIJb0cojaw4PvhkwX8CN5E
	aDL6v5D12R/yZvxc0C9KXFzRMsuPjyjpxNwR2LbVPCcCMZm3tX6SQ7txyfcRddB6dL+o0HyabNwZe
	swL2/0ae9ns5wT+nOtiR5ShDWRyUVRiIHgVBB9LgnXn3azM2tf//vtvXJzjHQ5zN5PZCcEpND2xu7
	J92nWSMOGOymx0uI1bCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkJXn-0000000H2vR-3F7s;
	Thu, 16 Jul 2026 10:42:19 +0000
Received: from mail-norwayeastazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c20f::7] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkJXl-0000000H2tp-1OrG
	for linux-phy@lists.infradead.org;
	Thu, 16 Jul 2026 10:42:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LCSyXBGG8qUAXceUVMR6ge52/4iA15k2syqPKsP9uHGjHKBP9S10uB8Sx2QEoGvWchHx/4/feDoKO/BqBz8bYL8BX9di/XHoI48/cdAniXgY2gJ/Hazb//9JnfvjGBrMWucu2VxrMBOveVcVvCWwIneQuHmfJx8cK46Ipsy60HQi92GnE696kc/16K4vS2HQc7Zm47rGy8ZUtYwZYPz/ob0B4eBD8qaxHwMM9MEMdZNJCB6r31GU/u6ZOB776pAW3wJVq0rN7joXjzEPW4wHDmT454LJMV+O8HWbuEfgdFT0UD8QxXftiUIARSsCMks13IB/m6LchzSchK5yVTBQ6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VZ6lHFCu0Wg4qTUQTpRRuNRkft52tB9ztn4HXixFJ34=;
 b=bwOHmcmjrIMeWw4EQwEUp/sAm8Kuf8UfIbIp41J4tSfdAc4ZN59Zn9iIsK91ZI86mk4p1vXgVbLYkObooBHnMqwVgkxBaZbxkvs/gZ4ly6fv+6745e2/6lCrMq28TXXVQf7lyGfO0a5swaY/NkxRG0O+1kkUxu/ISwBSskUmDjNZJv2dqOXJGi1HIu82QQyNWRtCQOW14PaPjcl8Uxa0F4pdmRNjkna/1k9kivkNzqVG6hgHHtklfl0FB8czPZPCqQQSM1vfKHcdatZVWINuQprXIIVzqsak7FcZ78IWdV3/qXBKqhGz8ssCqjDGrRwLHP1GUoUcD3WM8Y2V1doCvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VZ6lHFCu0Wg4qTUQTpRRuNRkft52tB9ztn4HXixFJ34=;
 b=IWLw/5aUdxqdzYsIZiGQALqiVa+cT/OJaHz/dvPQehExhjLfuJNUpeK0VMaoWYseWYllN+Hxg8VsZHIbxQBItwtVXHeRdAAbjbc6l9AVeS4549U2AQnN2f8FGlau3NZs4SUy7UjmfclV6vg7ACi/2+h3fqSqpoihNuCKw5s2gqMlJFSmUXJnF3+ClrHguU126DCNYIDfAA3Nw+j4yHnQ631WzdvQ4VPsQARGDuIEx+t3f286EgqWMzKCnHUO9ZU0Z1upgF5XLwQXfEsksqu9WEvx9dMATiykZ+56rw1Ey3cWpF847D1ZSOTBfzLHSSl/M4E51pgfViaJuPca6KXcGg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from PAXPR04MB9422.eurprd04.prod.outlook.com (2603:10a6:102:2b4::21)
 by AM0PR04MB11878.eurprd04.prod.outlook.com (2603:10a6:20b:6fb::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.18; Thu, 16 Jul
 2026 10:42:13 +0000
Received: from PAXPR04MB9422.eurprd04.prod.outlook.com
 ([fe80::54e:28bf:aa85:d25d]) by PAXPR04MB9422.eurprd04.prod.outlook.com
 ([fe80::54e:28bf:aa85:d25d%4]) with mapi id 15.21.0223.011; Thu, 16 Jul 2026
 10:42:13 +0000
Date: Thu, 16 Jul 2026 18:40:50 +0800
From: Xu Yang <xu.yang_2@oss.nxp.com>
To: sashiko-reviews@lists.linux.dev
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, imx@lists.linux.dev, 
	vkoul@kernel.org, Frank.Li@kernel.org, neil.armstrong@linaro.org
Subject: Re: [PATCH v6 1/6] phy: fsl-imx8mq-usb: fix typec switch leak on
 probe error path
Message-ID: <tm3ptavs6y3aejixayfbwb4lziy6jzj6btdds2kq6m4hzvd5sf@6itsf2kksoob>
References: <20260715-imx8mp-usb-phy-improvement-v6-0-00d95e270e4c@nxp.com>
 <20260715-imx8mp-usb-phy-improvement-v6-1-00d95e270e4c@nxp.com>
 <20260715114626.651A81F000E9@smtp.kernel.org>
Content-Disposition: inline
In-Reply-To: <20260715114626.651A81F000E9@smtp.kernel.org>
X-ClientProxiedBy: FR4P281CA0175.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b7::12) To PAXPR04MB9422.eurprd04.prod.outlook.com
 (2603:10a6:102:2b4::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9422:EE_|AM0PR04MB11878:EE_
X-MS-Office365-Filtering-Correlation-Id: 4fd80803-c411-4f09-5a5e-08dee326e56c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|23010399003|19092799006|366016|1800799024|6133799003|4143699003|56012099006|5023799004|11063799006|18002099003|22082099003|10067099003;
X-Microsoft-Antispam-Message-Info: GMwftpMZTL9Vnz6QdnDA6JyLb6mia7anDUT3uC0DEGYLckufJRen1v4KNxLqRnwhw7yZhG4SPlQPsdIKkgvNNnLFxV9hwPDBxIlB8EWw0DMD0XBsq71gtUoxj7kV1twnRAoY4J1erxE8J/BsXO3Sw4npzM03WoiWgsLSB+5EDFVFLWaWy+CmCLqAYbIZz1Ptu91boiwTGxnYf6ASt8iHSa+ZoDc5DzpLKxTpa09Tvd2qDrzgXVdwsGalTj17JW+sQzzE46JNAU3bJ/WTh48PFXtiDi5yPwMBQXbO6JoEzmj5SZOGU/zlZGy4IeYXsKc5fm2bz8fnhSPKOqZAOgvxTHHbcbd8KThqAdIP5wJm9JQBtz8qoSYjEn7OgHGNT/FBVjWG2EQlgAlqvJwW2clac4k5HwioRHL3D8J8m+BFUvLPA59l9NCo7f9uHbk2MaM5SEOuHgNSJS58b1JijadsB4t7EHqDs8q3P28DcCpE/ZFzd3/wVkt6OAqUfLcmuyGYWAvr/Q9wf74FuFeBwPDEAvhrB1Q86KAUA9zU4JnbWoQRZ8vRxy0p1y7L8i3Lpmyme23WgMhDPJ+ooBcGK67gyOdAODnbEk7G3qqnqHHc75w=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9422.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(23010399003)(19092799006)(366016)(1800799024)(6133799003)(4143699003)(56012099006)(5023799004)(11063799006)(18002099003)(22082099003)(10067099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RlhrdWphS3lVWUM5bUdySmNkRW42MHVvVlpvSThDaTlMNThiMEo3OW8wZUJa?=
 =?utf-8?B?dG42TUQvajlDcGJGL2w4YWlYYjRNOE9adllzakp6YmtCY1UyYnVTRSt4bTFG?=
 =?utf-8?B?aFd6MTFUYXlDeWxubkFYMXZsTXZ6N2ZPZmlqU2RKTmtzMnJJQmNiVlovOUJE?=
 =?utf-8?B?VWR6SFZLcHFqVjFia0JoRENnUEt1MHhzL0JPV3FwblIvZ0Q3T0hOcS9sQUsr?=
 =?utf-8?B?TUplNGdvTGcwMjZSQU1DaXRUODlWVmhya3gwd2pPL3lDbEZMRlN5ZkxZdGJ4?=
 =?utf-8?B?WXZhd0pTSjljUFlSSzEzM1dyLzJ6SzVrNTVsd1dqSk90eE5GTENNVWw1MHBG?=
 =?utf-8?B?akhRTmdUN2dDamhicTNjVWNHRDhMZWZtSFU1SUY4Yk9nZEQ2aXlGQVZvZUNP?=
 =?utf-8?B?LzlnRldHWVZmSGVpYWhjSVlEN1IxcHpYOXoxcEE5M3RzYitManlJemkrcSt1?=
 =?utf-8?B?K0Y2aG1Hc083Yi9pTWVNM3gwMjNhRW9RQ1RpWHhqbEY5NHI2YUs5dVVWVUMz?=
 =?utf-8?B?M2QzZjFOWFlsa0hWVEp3YkpRMEVYUEVQQWtIcmdaNW5iZmRpMnRtdm8rUlFn?=
 =?utf-8?B?OHhUOEVyWGFTaFc1ajU3bG9DdzdjSXNWWFkwa1hnSjV5NXp4UHNlS3JkVzFM?=
 =?utf-8?B?d2tOYnl1S2toaGxhSlJmeW94UkJjVExxam1BaGR5WGpLaTQ2ZnYyNWNwRURJ?=
 =?utf-8?B?WGlUM09saytNUXhJbkc3QlFuVndTa1F4NzBZR2FJWGFpa2ZzM2FVajVDMDQx?=
 =?utf-8?B?Wkw4c1VXZjhiUXV3NTBzMzVXRGdvNzZOd1dIckZ2eWNEaVJkeVVvTzN4ZXhU?=
 =?utf-8?B?Z1ozaXA1U29KZE95a1AwZmNOaFpNVEQ4Zi9OVWkvb0VicndrSS9MM0M3a1dI?=
 =?utf-8?B?bGQzMmxweG56Y0tybmVnSmhMbEdSRndNOUZKQXZKSEJwWmRwajl4ZzBjNWFR?=
 =?utf-8?B?RGw2cm1PWmdoZDNTVCtzaVdMRmgwZXdybW80c1BlRkpZK2J0bVNLdFRmQVpl?=
 =?utf-8?B?SmkyQkdHMUtURGpydkRNVDdHc2dVWGRhRG9oS1Z3ZERtRzEvTWpEYXl2RTlp?=
 =?utf-8?B?aUI0SE9McWF0aHhVVlQwWEluNVdnaVU2UCtKR0llajZZSGNYUjhsN1hUTW5N?=
 =?utf-8?B?TnJhTitSSkFzOEJVYnZQY0p2NHNHUDBVVWMvM2FvMy9YdWhxU0FXelF3S1c3?=
 =?utf-8?B?YWJKTHk4V0tDcERDMWcvdzRadVJyUW5TMTRUays5UG1qZTBoSEVSbXlkUFA4?=
 =?utf-8?B?eDFZQjkyekdTSUVjanZEUXJYdEoyc3F5OUE1YkdEN0lKT04yYXQzS3hjV3N1?=
 =?utf-8?B?TnhRSUcrV0RwYWdMR1E4dThUY3RrZmFObFdIRVcrUkM5Smg4NXh1aklvNWg0?=
 =?utf-8?B?WkVQUjZjdElJa0NNTTFjWGduWWQwNzVJN0RqeFpMNUp2bG9YU3RVdDg3Q3Y2?=
 =?utf-8?B?b0pZeWNuQnF4SXFoRFk2T2RuOU1qTWhYZ1RtSFVUbEU1TmF3MXZlRThjbGY3?=
 =?utf-8?B?Y29IVlFXT0RXOVloM09vNDlHSkJ5NEF5QTVzaDlwTm50RFFrSWlTVWJLbTNi?=
 =?utf-8?B?Zy9CdGxRVEJ5dlRYMWc4Rk02QjJwNVRjZjFNSW1UaGNTa01jazdhUm4vSmlv?=
 =?utf-8?B?QmRmVi9LVE05MW9XMG55RzhUdmpTR3o5M2szVyswd2VJdTNtSmxDeXRwZUph?=
 =?utf-8?B?em56VGZtdS9nYlBBTlJnTndQZ2FPNWo1aTU5ZXlrWC9UK25wU2dKVXZ4QU1y?=
 =?utf-8?B?eWhwQlVtWFZKM0FWSUlMcFZudkJFRVlUS2xIRGpHeHpoZ0hhSjFlbmxXQVM0?=
 =?utf-8?B?V0p0MjNjMEt4bHJpUGVVN1VlT3lMSHdXVEVWRDBESm50V25ZNld6SkswQSt3?=
 =?utf-8?B?Y3NscUh1ZStML3JoOTBRdU9pRVZxY0kzd0psZGsvVkZkbUI5TTUrUVpiZC83?=
 =?utf-8?B?ZThZVzFLdXY5YllrUTJpUDU4WHhqcjNNeXNMMWhXTC81UkRpUGZEMytjMnRN?=
 =?utf-8?B?Slk3M1Z3b211djNaMGMrVCthV0JUdDN1a0lFcVNlR2taaU0vYXNHbmF1WkQv?=
 =?utf-8?B?UFdacVZDeDl3ZEZDRks1bkR2UUVrdlcrRjJ0cm9Jekowd3pHY2dac3ZudjBI?=
 =?utf-8?B?U2Y1ZTNBQmYwNkNVeVUyUkVXRGJEWG9VQUQrNjdOQy9DajdoSmdHVHYyNlF2?=
 =?utf-8?B?NVFNRGs5THQweXpjVHIrdVp0Y3RDaFBUMmRvT1MyalJ6c0ZoUllqejJ1Q0RO?=
 =?utf-8?B?VUgrSTV6VGdqVmcwNjNIT1pRdmFVdFFibkhHMS93NjkyNGREcUNnVHpFVURL?=
 =?utf-8?B?K2FqN0FZL3gzTWJSV0ZXd0c0K0JOQ3VjNWdZSmVXcjZrM2F6NEg5bUkzdXJr?=
 =?utf-8?Q?Bc3KzfAiVvrWGkJOOiLSLnal2KTT79Jt8RTJS?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fd80803-c411-4f09-5a5e-08dee326e56c
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9422.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2026 10:42:13.2285
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2X+TkAOfiS9Gqpz3MPR16pdKTQ5rpeqNliYLG4ljg98eTKZN07F0vUpfTn11HfMX1VscMAR6B1GqE0A80yF3vc+S0/SDGSei05nicjL18AZ3mdXcH9AtPvnvZ67e8Po5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB11878
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_034217_378769_DFBC6C04 
X-CRM114-Status: GOOD (  22.33  )
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

T24gV2VkLCBKdWwgMTUsIDIwMjYgYXQgMTE6NDY6MjVBTSArMDAwMCwgc2FzaGlrby1ib3RAa2Vy
bmVsLm9yZyB3cm90ZToKPiBUaGFuayB5b3UgZm9yIHlvdXIgY29udHJpYnV0aW9uISBTYXNoaWtv
IEFJIHJldmlldyBmb3VuZCAxIHBvdGVudGlhbCBpc3N1ZShzKSB0byBjb25zaWRlcjoKPiAKPiBQ
cmUtZXhpc3RpbmcgaXNzdWVzOgo+IC0gW0hpZ2hdIFRoZSBUeXBlLUMgc3dpdGNoIGNhbGxiYWNr
IGB0Y2FfYmxrX3R5cGVjX3N3aXRjaF9zZXRgIGNhbiBiZSBpbnZva2VkIGFmdGVyIHRoZSBQSFkg
ZHJpdmVyIGlzIHVuYm91bmQsIGxlYWRpbmcgdG8gYSBVc2UtQWZ0ZXItRnJlZSBvZiB0aGUgZHJp
dmVyIGNvbnRleHQuCgpJdCdzIGEgY29tbW9uIGlzc3VlIGFuZCBpdCBzaG91bGQgYmUgZml4ZWQg
aW4gVHlwZWMtQyBzdWJzeXN0ZW0uCgpUaGFua3MsClh1IFlhbmcKCj4gLS0KPiAKPiAtLS0gUGF0
Y2ggWzFdOiBbUEFUQ0ggdjYgMS82XSBwaHk6IGZzbC1pbXg4bXEtdXNiOiBmaXggdHlwZWMgc3dp
dGNoIGxlYWsgb24gcHJvYmUgZXJyb3IgcGF0aCAtLS0KPiBjb21taXQgNWUwMDkzY2ZkZDZlOWRk
NjQ4ZWQzNTQ5ZWI5M2JhY2I1NDE2NGJlMgo+IEF1dGhvcjogRmVsaXggR3UgPHVzdGMuZ3VAZ21h
aWwuY29tPgo+IAo+IHBoeTogZnNsLWlteDhtcS11c2I6IGZpeCB0eXBlYyBzd2l0Y2ggbGVhayBv
biBwcm9iZSBlcnJvciBwYXRoCj4gCj4gVGhpcyBjb21taXQgZml4ZXMgYSB0eXBlYyBzd2l0Y2gg
cmVzb3VyY2UgbGVhayB3aGVuIHByb2JlIGZhaWxzIGFmdGVyCj4gaW14OTVfdXNiX3BoeV9nZXRf
dGNhKCkgc3VjY2VlZHMuIEl0IHRyYW5zaXRpb25zIHRoZSBjbGVhbnVwIG9mIHRoZSBzd2l0Y2gK
PiB0byB1c2UgZGV2bV9hZGRfYWN0aW9uX29yX3Jlc2V0KCkgc28gdGhhdCBpdCBpcyBwcm9wZXJs
eSBmcmVlZCBvbiBib3RoCj4gcHJvYmUgZmFpbHVyZSBhbmQgZHJpdmVyIHJlbW92YWwuCj4gCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OG1xLXVzYi5j
IGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OG1xLXVzYi5jCj4gPiBpbmRleCBi
MDVkODBlODQ5YTE0Li45YTMzYzA2ZDZmYzM5IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9waHkv
ZnJlZXNjYWxlL3BoeS1mc2wtaW14OG1xLXVzYi5jCj4gPiArKysgYi9kcml2ZXJzL3BoeS9mcmVl
c2NhbGUvcGh5LWZzbC1pbXg4bXEtdXNiLmMKPiA+IEBAIC0xNzMsOSArMTczLDkgQEAgc3RhdGlj
IHN0cnVjdCB0eXBlY19zd2l0Y2hfZGV2ICp0Y2FfYmxrX2dldF90eXBlY19zd2l0Y2goc3RydWN0
IHBsYXRmb3JtX2RldmljZQo+ID4gIAlyZXR1cm4gc3c7Cj4gPiAgfQo+ID4gIAo+ID4gLXN0YXRp
YyB2b2lkIHRjYV9ibGtfcHV0X3R5cGVjX3N3aXRjaChzdHJ1Y3QgdHlwZWNfc3dpdGNoX2RldiAq
c3cpCj4gPiArc3RhdGljIHZvaWQgdGNhX2Jsa19wdXRfdHlwZWNfc3dpdGNoKHZvaWQgKmRhdGEp
Cj4gPiAgewo+ID4gLQl0eXBlY19zd2l0Y2hfdW5yZWdpc3Rlcihzdyk7Cj4gPiArCXR5cGVjX3N3
aXRjaF91bnJlZ2lzdGVyKGRhdGEpOwo+IAo+IFtTZXZlcml0eTogSGlnaF0KPiBUaGlzIGlzIGEg
cHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgZG9lcyB0eXBlY19zd2l0Y2hfdW5yZWdpc3RlcigpIGd1
YXJhbnRlZQo+IHRoYXQgbm8gY29uc3VtZXJzIHdpbGwgaW52b2tlIHRoZSAuc2V0IGNhbGxiYWNr
IGFmdGVyd2FyZHM/Cj4gCj4gSWYgYSBjb25zdW1lciBhY3F1aXJlcyB0aGUgc3dpdGNoIHVzaW5n
IGZ3bm9kZV90eXBlY19zd2l0Y2hfZ2V0KCkgYW5kIGhvbGRzCj4gYSByZWZlcmVuY2UsIGl0IGFw
cGVhcnMgdHlwZWNfc3dpdGNoX3VucmVnaXN0ZXIoKSByZW1vdmVzIHRoZSBkZXZpY2UgZnJvbQo+
IHN5c2ZzIGJ1dCBkb2Vzbid0IHJldm9rZSB0aGUgY29uc3VtZXIncyBhYmlsaXR5IHRvIGNhbGwg
c3dfZGV2LT5zZXQoKS4KPiAKPiBCZWNhdXNlIGlteF9waHkgYW5kIHRjYSBhcmUgYWxsb2NhdGVk
IHdpdGggZGV2bV9remFsbG9jKCkgZHVyaW5nIHByb2JlLCB0aGV5Cj4gYXJlIGF1dG9tYXRpY2Fs
bHkgZnJlZWQgd2hlbiB0aGUgcHJvdmlkZXIgdW5iaW5kcy4gQ291bGQgdGhpcyBsZWFkIHRvIGEK
PiB1c2UtYWZ0ZXItZnJlZSBpZiB0aGUgY29uc3VtZXIgYXN5bmNocm9ub3VzbHkgY2FsbHMgdHlw
ZWNfc3dpdGNoX3NldCgpOgo+IAo+IHRjYV9ibGtfdHlwZWNfc3dpdGNoX3NldCgpCj4gICAgIHN0
cnVjdCBpbXg4bXFfdXNiX3BoeSAqaW14X3BoeSA9IHR5cGVjX3N3aXRjaF9nZXRfZHJ2ZGF0YShz
dyk7Cj4gICAgIHN0cnVjdCB0Y2FfYmxrICp0Y2EgPSBpbXhfcGh5LT50Y2E7Cj4gCj4gd2hlcmUg
aW14X3BoeSBoYXMgYWxyZWFkeSBiZWVuIGZyZWVkIGJ5IHRoZSBkZXZtIHRlYXJkb3duPwo+IAo+
ID4gIH0KPiA+ICAKPiA+ICBzdGF0aWMgdm9pZCB0Y2FfYmxrX29yaWVudGF0aW9uX3NldChzdHJ1
Y3QgdGNhX2JsayAqdGNhLAo+IAo+IFsgLi4uIF0KPiAKPiAtLSAKPiBTYXNoaWtvIEFJIHJldmll
dyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MTUtaW14OG1wLXVzYi1w
aHktaW1wcm92ZW1lbnQtdjYtMC0wMGQ5NWUyNzBlNGNAbnhwLmNvbT9wYXJ0PTEKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
