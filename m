Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C97FECD4F52
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 08:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4BHrPfWQRT3K8ajAL3sjRQQW7m4gSfViYwALG3mlO/8=; b=1gt785vmqUP+KwOCnZCOmMLLOG
	cI3yfeSRE3pf8oDBktv1qBxXXSzBx/60AAkmZHaSBovF7WQuJxIw0C0Tkr5y3jFY7TYN0z7io1Fhm
	nHBMyx1rRIYTywaE9go/HD9ibGCPlQZp4lwUf8Tjx4WhkxoOX4YQYcHkigeuiP7J4iBiAsRpp7oHv
	CQdzryDzndPffHwxdbbduEh14BVlAnhzL6X8qJZfcwfz60zPa+DTlqiDNs3k90bwu+7Jr2JALhEIi
	2szyECp0y/WoGukCAAe3m5HH+kQ2ThcOwRaR3+mjuAtvHFOZ/rWR2/F7RsggzwPIVfOc32zLUhn2U
	eXDTeIAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPG7g-00000000jjj-2Pz6;
	Tue, 19 May 2026 08:48:20 +0000
Received: from mail-southcentralusazon11012062.outbound.protection.outlook.com ([40.93.195.62] helo=SN4PR2101CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPG7d-00000000jiu-3dK7
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 08:48:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dLYcmgBl+Vf36Kfzt5a3k/ahqW5gX/jJCmI/quEQSjY2FaOdMnfe7AQ6NSJj6gMSHa6qKkyqKSGP4vgRXfYdC7x3YEnz3c63fJTZf5jjM4w7P4e7LT43Gu0HhEYjwk00iotTzdGm1RGlovM8Jz5TuGbudXOF2fe+pgJJJ1mB/4zrghZRuIfNQ6Yzem+LbbFTYSEcxms2PFNgCiilAgEaIhBDQOxrCdS7LkF50G+Ko4ewd6yYYRs0xyA+Wqb0cAz+nbzJ6/f/X3ExDiDlkuO6f2YIK2VberCS/NEfGukNiGD7C50ieTiz/QYy026/aPgGL9y6tSlAKqAfhlI1TJ+jqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qzLHzXih7MvePC8JaigK3PNOQXJ+rkbKr7os07/BPh0=;
 b=GZCGRWf/QZBVQh+aaj5CSXphohle1NIjsbtjoA7u8GJmBCzPBHabuLkKi5NcqAnUNW2/NVbONbB/V5ht/7dYwsjLIZuG2+oh0fYLeNPnOfwM3F8wDVREYT6kF+CDbekmQgau02qdkMWbcyhQAKM0UNJWqa0tZJkNLTR5tB9C8ha2aVkW2bZym6ejlQjt7rR4XL4vNaMjvhxo3WNPxZ6HxU6IIpEwb1mHsSXGnkgOu2IaQhKHNfeJ67kpPRiDuX0rIsCH7ZO7OVuXqCWPQuVKVwJqwQVn5ds4dcZL5hDly2ymMY0t+lwmBAMGYq9FTelTaAbZvvaayKjorlS+JHUSbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qzLHzXih7MvePC8JaigK3PNOQXJ+rkbKr7os07/BPh0=;
 b=FUafIzdU5HlkjP/PkLtVtn5VNBjCysxMKZwjHhK+eUkjEAdLyuzIbxjhCFhaQEGTV7CEFKzWdpRT2DY9S7jrAZomOq/ukUYmwwD1JQybuohV+YjrfO1fjiD1TZ7IK8rz/q/Zz8AW0k1t95e+TyulpniFnHRa6XV2YpNNjyMt0+4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from CY1PR12MB9697.namprd12.prod.outlook.com (2603:10b6:930:107::6)
 by CY8PR12MB7172.namprd12.prod.outlook.com (2603:10b6:930:5b::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.21; Tue, 19 May
 2026 08:48:11 +0000
Received: from CY1PR12MB9697.namprd12.prod.outlook.com
 ([fe80::3a41:55a0:8203:596d]) by CY1PR12MB9697.namprd12.prod.outlook.com
 ([fe80::3a41:55a0:8203:596d%5]) with mapi id 15.21.0025.023; Tue, 19 May 2026
 08:48:11 +0000
Message-ID: <f6a3cf7c-8b40-434d-9df6-f8c309526c1e@amd.com>
Date: Tue, 19 May 2026 14:18:04 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] MAINTAINERS: Hand over phy-zynqmp to Tomi Valkeinen
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, vkoul@kernel.org,
 neil.armstrong@linaro.org, michal.simek@amd.com,
 Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
References: <20260519082253.40142-1-laurent.pinchart@ideasonboard.com>
Content-Language: en-US
From: "Pandey, Radhey Shyam" <radheys@amd.com>
In-Reply-To: <20260519082253.40142-1-laurent.pinchart@ideasonboard.com>
X-ClientProxiedBy: PN3PR01CA0061.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:99::6) To CY1PR12MB9697.namprd12.prod.outlook.com
 (2603:10b6:930:107::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY1PR12MB9697:EE_|CY8PR12MB7172:EE_
X-MS-Office365-Filtering-Correlation-Id: 395ca809-b15f-42e5-e6d7-08deb5835b93
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|22082099003|56012099003|18002099003|11063799006;
X-Microsoft-Antispam-Message-Info: s8ZBfwUPj2OyC4VaMUjqkzS9lV5RGXSAfICwDEKXweq8vYZ42u17YLW7B2K1WbFI+M7gjsQb6sUlJFUkE9qCtV2PHYQE8SK+iyHbqX5CKNTb6/Df7zQ2kMSwOuxurW6TyIvrDxZz1Xv7IHgiOLudWBcd7yQhcWZtCkqP+FnKuPsnoDLhOIkw3HjYuAb9iJrcckdoPvc9BFBMc5Tp22nMtFBcTx7XQoTVHQxp6PM0alJbBpxa4+PSFWFyxBWSeSzSuZv/R7TgiWKe6UtowwjwIdZ2QzpfA2N0CrpRKUOwy1pN+dwNMrLRInm3gIwnx+cQvMppeHcQMkOSv/7KVbxiSGsMlaVvmvSXpk6ZI2HX0G1rzYCZAXaZ2qEfjulVukEwqOgWldPCP7U/o31EgzhUXQxdPy/uNY7w3CT5v1nzFEh2LyxOI2zyLTQzv/Iu2+nTF7SWwDfp+FMiJoU2Qaug07o99bFwO0CyqyBoCZMEg+slKj7zKr+9VsmG4Kc7K8N/02UEQq/bYrYFpa5YupY5Tqw/nNyhyUK+IlueNUicj+VZMEsY75pKGWcltmEOkq0kEJmvmnqYBK2wVTXsJSoP043COWfNF81BfDYphY14i6GehOOdoFxR60os9WrYjJUfJSFX2/YfDpgbw1poRcG5f21ChkyZvJdiTb63axgQiUV5mJbmVZn6DtlrmzdmgQV9NlwCtizkZUbpGYMPXY/SeQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY1PR12MB9697.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(22082099003)(56012099003)(18002099003)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWlrS09vY25td0FqbFQ2WGVseEVFVWJnRkM5VE5DWm1XaFdOc2xzZm9LK2V2?=
 =?utf-8?B?eXVkekRycVZ4RGFFTHhTS2loN1Z6ZnlqL0IyNkxCS1pZOXl5WU9OaG9QSG5M?=
 =?utf-8?B?YlFsZU9OL3NoTTlMSG14dUhjZ0J1VTBtL1J2enRpeUdnd0h1SzY2ZkNBb1Bn?=
 =?utf-8?B?dGZGM2Z4RzE2QitORWo0cml3aHlVWjJiVXpVVmphbzNUMTJESzhGeGlrUlNr?=
 =?utf-8?B?NTNicndISnBVMkxuTXlmLy9ZSzBGalVPM3ZacHFxRnhjL0owcHdkZk5wUWZy?=
 =?utf-8?B?RzcwaHZJakJHZHZNbndmQWEvMkJVb1lyeStLdU93N1lheWZFK1d4dFd6V24r?=
 =?utf-8?B?eE01cjUyK25iVmcxU1hveFpFa2t0cHVZaGErSktUNyszME05K1ZjZnlnSjh6?=
 =?utf-8?B?M1JoUTkrNG5SQy91MzdSNStKM01hMWhnelJ6MWx5cGpNM2x3N2Y2TUcvOVN4?=
 =?utf-8?B?WXlZN3poZlBWMFdENjhKM3ljc0JXTm11Q013bERkNWZNTG03Z0xacTdRMzBY?=
 =?utf-8?B?SjRjaVJaQi9pWjZUdVdQUTB4Kzg2T0pKdGtEdVE4UDdTaVRpTXBIQyttSE9m?=
 =?utf-8?B?OUJ4SWhRS09kZkJwa3hNcUhsMS94eDVvYVNpN25ENEtzZGMzc09ILzA0enFh?=
 =?utf-8?B?aWRKWFd2NkVjVmNCMUduREpZZi9DSGU1ZkVhamttbngvZ0xuN1RJcDhoNFNX?=
 =?utf-8?B?NjRSVVU5cW5IcERKTmdwMjBYSTVXalNxVjBlV252djVTTlRkTDRoQ1FqK0tI?=
 =?utf-8?B?R3ROdE1RRkF6UWxjOHJHZUc0ZTB0OTdNSjc1cDhKd0Q5L3k5VndOSUptRmlu?=
 =?utf-8?B?V3MvSVpJeTZObUtvOWhQRkNMVE9PMmtDVVI5SUlXb0hSVFlQb2RwK3E1b2Y2?=
 =?utf-8?B?N1J6M25iTjhmcnp3bWgxeXhKcUlKTWV4UDVxV0xYWEFTNENUY0hRT2hrL1ZH?=
 =?utf-8?B?RzA2blJRc2hHYzN3RkQ5dVNaOTd3ZkFUNEVLa2dycmczWnZOMDBRc0phcTdU?=
 =?utf-8?B?LzhtTERhdFdwYlp0TlBMWGVhYXNpZkRkcCtybVZaZXFpZ0VrZGxJSmtxQWNX?=
 =?utf-8?B?Q1d5dXhLNDhFckJtUU85MjloSk02TE5LZEc4YU5lQXpwOFoxcTd6aGtmc2RY?=
 =?utf-8?B?MXkxeXJyekNES2ZjT1pnK1pwL2ZVeG5kK2VueG5USFM4aFFkb2RJN3RQT3dr?=
 =?utf-8?B?K21BcTJLeko5TkdWQ2poZHRIZWwxcUtQbkpreGI2cE4xczhuc0g3SkdVZTdK?=
 =?utf-8?B?RUNSUWFSTzh5N1pWRFdoSHJia09Zbmh0UXV0QVdFVno1M1UydjZFcC9heXg2?=
 =?utf-8?B?UDREMGRkZTNYVll5M0tGajNna0hkVXZINXFDVVRNT3d2UERGMm1XMDBzd2Ey?=
 =?utf-8?B?TEZleUFWOXhMMEhUVkdOSXhtbUhMWktDUnBHSmUzQUE5bEdlTE14NlhiQlBD?=
 =?utf-8?B?ZFhjeVQ5bjFZaUtKWWtyNHFuY3dkclE5Y2ZMRnc5bmNrd1J5ZGFVQm1aUnZM?=
 =?utf-8?B?eHRQR1A3enFCQ1lmSDFIdGxadVpkZEJ1elhqem94RG1GSW9YRnl2MTNaN3FG?=
 =?utf-8?B?dm1WNnpSRnlheDdyeUpvZHdhd0Z4dmtXdnRTMUpjVGFMRXplVi94ZXhkb1pS?=
 =?utf-8?B?b0lJNjB0SzVQNzkvMUxJY25JRzVnZUYvS1Fyc3R3SEdLK1Zaa3lBU3NmQzI3?=
 =?utf-8?B?OSt0V2pLWVoyNEhkaXk1MkZjeUF1TDRyanM5eGpUcU9lSy9ycXZ5cFV0TDFB?=
 =?utf-8?B?cElSQkgreXFXU05YODhXU0ZHb0JzMGVCVy9BVkxuNXlMYXVJS01FZWxmVTMv?=
 =?utf-8?B?eFhKM2VFYjlGM0tsU281YkM2bTZQcm9RenBZRkw3eEs0enBpanBQd3pSYTVY?=
 =?utf-8?B?TE9WVU90eFl4RGtDV0F1YjhUWU1xMmt0SzZ5VmtSd2ZzS1VNeU9wL2pzaWRD?=
 =?utf-8?B?S1Y5cUF6ek9BVUZocDdWb2NXdHg5NmpDNVJ4STcybGVGYkk4RXFtSUdUZVpT?=
 =?utf-8?B?U1FaeFh2SUIxYTJjQWdxWXZOYzNEVXR1S2RRU3daSlFMK0hONG5KVVRrZnBO?=
 =?utf-8?B?WVdGcDBEZmtJVThRWlhVb3JoNjFYWEpLdVcrQ3FqWGFGSE5GMHFKSms1dStS?=
 =?utf-8?B?ZnVMTEFaaFcvUTJqVUZpR28rNUNaQjNLTHRoTjJrektUM0hndklkQkM0S2pI?=
 =?utf-8?B?akZyb3QveCt3Z0NLV2xKSGZsODBmclA5Tkl2Q1ZoaDgxbDRXV01uYUdKbXFz?=
 =?utf-8?B?d2dPYTNycXRsOUdVbXBzdDlaSlkxM016blgzYW1VY2d6TUxIbXMzNFRybkN2?=
 =?utf-8?B?UGRLd1BsL2hQc081cXFySi9tOG55TXJ5NU1scCtha0ltNXJPTG13UT09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 395ca809-b15f-42e5-e6d7-08deb5835b93
X-MS-Exchange-CrossTenant-AuthSource: CY1PR12MB9697.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2026 08:48:11.8393
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3vTkKUCK8+JbIYxfrSGVSkBdGoT08i1QCL4cMQCfRF1IWiQiC2K363q+WgnP/qzL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_014817_914536_93DE11BB 
X-CRM114-Status: GOOD (  15.76  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 5/19/2026 1:52 PM, Laurent Pinchart wrote:
> I volunteered to maintain the phy-zynqmp driver as part of my work on
> the ZynqMP DPSUB driver. Now that Tomi has taken over the DPSUB, it
> makes sense for him to handle the phy-zynqmp driver as well.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Acked-by: Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
Thanks!

> ---
> I would also be happy if someone from AMD would like to take over
> maitainership of the driver.
> ---
>   MAINTAINERS | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 63389fea5d15..458f2b77d4ce 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -29293,7 +29293,7 @@ F:	Documentation/devicetree/bindings/memory-controllers/xlnx,zynqmp-ocmc-1.0.yam
>   F:	drivers/edac/zynqmp_edac.c
>   
>   XILINX ZYNQMP PSGTR PHY DRIVER
> -M:	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> +M:	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
>   L:	linux-kernel@vger.kernel.org
>   S:	Supported
>   T:	git https://github.com/Xilinx/linux-xlnx.git


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
