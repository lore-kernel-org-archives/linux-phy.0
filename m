Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADEA8C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 21 Oct 2022 13:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K65PTz4EMo4nwUQwSDjljOq6pOoN9WcR1+p5plWu2W0=; b=4CfhgJaSysKbpHu7jg43X4Jy0w
	WGie54/nScvm45Nq4EHZMmRH95jHoccWFsNRPW2dXiwUJYhfao/suU8oIRQRmkspvuWFwsnU+M7Xd
	cUO6JNZOXoaJa1Qzh9khj3Tk8jo1Ak54a+UdxpUeYeSFn7u+eElQLePXnSeCRAfLlet3buaSueeT5
	c0H8dLbGGHllsMDQXruaXLSfxQVCVnbxqmNXIa9L462JbekRkvik+XfzIARH+j1v2nENTjiQh1L52
	u4daD67/150oBS+yAj4FcDdIhZV+0aUoAawvWgTs5UpXK7ET8jcT0m+zw0gBXvo8vLUJ2GSXDPUL8
	n/wfJFXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olsGq-0085VR-Ur; Fri, 21 Oct 2022 13:41:08 +0000
Received: from mail-bn8nam12on2073.outbound.protection.outlook.com ([40.107.237.73] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olsGi-0085JF-S0
	for linux-phy@lists.infradead.org; Fri, 21 Oct 2022 13:41:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RFwbeZH8iuCUFHkV1xU/9NpBcSiP9AjdvjgkoGWacGZq+kkLTOtItuNFwqhpnxKJSYXa/SkrBYarZIwsq4yQXtp91L9tJK/P2mv3PPFajy1ViyiKWC9m7eW42m7i73c1DY8Zdi/EpmSO5GZ9HlDEDIMFXrQ3NJS8aLItoOzTNwmyH44w0SpFM0LoGPxZrduh6iOkA+VRhO3w8EFTg2DsR9lZOjZiFxISzyGUA7nWk9YgrjEraDlkOtIuwHS3SqQLnTVnnemPWYFR+qGxrPT/ARPU3P7VzOWN9aTxFsfRhKc4xft2noGsFV6MxkRKx6FdgiUsXeKVYcCMgVFwTQM0Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CYlW8Jb1t7Os7gtdr2h9a7s+FPDqsABFk7XIhDaiN98=;
 b=HkfBAWrPsn/6WJmDDIc1X4+V+Jbua683B3icJABVi2k7EeR9QVGF6dh/X55BPjoUOdWhz1BQ/PxmxQxzKp/3sXoDcU95pGfxHkpyvZhTiwzA5vkI0NXSWDHOjMCoeMglSre4dpJ8b9QnXAChe79/u6XBe5dc7daM6OzyzX+vYI1d8/1JiiUIIOk8QsZBXcxcmE+tRfd9fsq1Nntu0Ts1s1JoxXR3wBTFRK6um9AVBLFYpJGgXglb31qXhhya5OVDUiHE+mx6xKp+gPep5C1Hv/5x9UZ23XxkxdGHiml0gI+HQNpP/6gj1TDytFLntldEp/oB4kJdkV0RaHo8wRmKxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CYlW8Jb1t7Os7gtdr2h9a7s+FPDqsABFk7XIhDaiN98=;
 b=ZvNsONIKzzOwc8LEnbV8h9KAx3mSX2S8suw466MDEJIO7QVMorBA/0t/m6C5BDZIr/zQk+1s/RXG4HeauugAwrQBBUajJRetRNzLRHFUIJfFs1Cs1jCRzmKQJLUXrKFxpuF9KKb7RmwZQNMA+h/R6Y+4ORiNcUEjp97ErDqLi6ZFxuMjbRk+ye4G3898ivEGuJQLU+kx/ANavvp7F9FOZFbDrxhMqaV7uSXuBV4SOxV6Tyd9YmZAyLiKcNn9gWq1ulz6O6YgyrougDnu9duQNhSJaSWab3cefYPTkcJnzvTZzr81uGcm6vE9NUHMcA7DgGMfeUik3pKppmb6tNn8bg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CO6PR12MB5444.namprd12.prod.outlook.com (2603:10b6:5:35e::8) by
 MW4PR12MB5627.namprd12.prod.outlook.com (2603:10b6:303:16a::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.32; Fri, 21 Oct 2022 13:40:55 +0000
Received: from CO6PR12MB5444.namprd12.prod.outlook.com
 ([fe80::c0e5:f111:3e59:7c66]) by CO6PR12MB5444.namprd12.prod.outlook.com
 ([fe80::c0e5:f111:3e59:7c66%5]) with mapi id 15.20.5723.033; Fri, 21 Oct 2022
 13:40:55 +0000
Message-ID: <c7ff2627-881a-4d69-ad78-618ee4f4c62e@nvidia.com>
Date: Fri, 21 Oct 2022 14:40:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH] phy: tegra: xusb: Remove usb3 supply
Content-Language: en-US
To: Haotien Hsu <haotienh@nvidia.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Vinod Koul <vkoul@kernel.org>
Cc: JC Kuo <jckuo@nvidia.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Thierry Reding <thierry.reding@gmail.com>, linux-phy@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 Wayne Chang <waynec@nvidia.com>
References: <20221005084031.2154251-1-haotienh@nvidia.com>
From: Jon Hunter <jonathanh@nvidia.com>
In-Reply-To: <20221005084031.2154251-1-haotienh@nvidia.com>
X-ClientProxiedBy: LO4P123CA0317.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:197::16) To CO6PR12MB5444.namprd12.prod.outlook.com
 (2603:10b6:5:35e::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR12MB5444:EE_|MW4PR12MB5627:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d4e0597-c5ca-4c22-a20a-08dab369e0c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	9/F6u0EwcZSe4xKnsvvFTYKu1B+4UNgv6icmXy5ZCK19CpME21/O4xIDUB8j5ySXQ4R+jz8BzAyDA+qFJv81OyHYLPUKPEUcBMS/wQ/pzrX3Zm/163tAqDNj3B7hF59JOpxpq4bsbdKT8jhsEjqqOAK0GeGtyxZzaDwA9rW+qVPvl+j2YaVSMGBad0LsW1whEnt6Nmm4vFkqdhpX2py2Ub/d2FXONq/cC8EyfjVjjQEX+bgAWrsX8gCk7JUITba8nRQxPEDXSfPVZLpJeHNr1nngAFzJdTIW9OAbykf0vELQuwif3s0f7/gRTjOAWlB12YtHfugPGnbveFGC9/xJ/HqN+HWORlFLuU98JXf+/SuWYHQrPlS7dpdKY4pnYg/+2FB4erR8mn+yeFeqypuysSO8NQqhyUDrMBApXjYKjWhMjLHyEEr0e+rfX94FV/y2s0kvfKgrE6UN3nG4yUwOVRKg/YD+v54KCzDRLX04C+I40KGJTQ+BCGuhEQsPC77lkVl1XQHxwq7kiS0UVe2/1DVT7SAH46AjHWcZWdqGqAunNtnRkFCuf+DZK8ny0cCT/KF/sGwN/gAV2Drq0nE9QIfC4j+p6zZnxGyA+bMscIhwmdIShewY/eMYDB7pA8hk4VaSntWEIdgYAIFdycVIMp8CxL4Vj45M0u+rGqO6DndLivYpedj2v6waByzQdTEUJj2400ytALc69pZuyD7HFsVUgcx0nxbfrmFt0UJM4LmyeYMPCRmjHkUjBdNEnR7D5pYTTiCYTBnOONubWNQIzJ1m4qn9vudE1EeuVDB3WCY=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR12MB5444.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(346002)(366004)(376002)(136003)(39860400002)(451199015)(31686004)(36756003)(107886003)(6506007)(6666004)(5660300002)(8936002)(4326008)(53546011)(6512007)(186003)(31696002)(41300700001)(86362001)(478600001)(2616005)(8676002)(66476007)(66946007)(83380400001)(66556008)(2906002)(38100700002)(6486002)(316002)(110136005)(54906003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?dVNUZW5IY3V2NUREcExEQlR4dW0zSWJ0dHhwRnV3QzZHVkZSM1dqMVZFMXJa?=
 =?utf-8?B?VC9VQjBsSzAvRGsxblhReFdNK2dmOHU5azhGMGRqd1JnaXZaM0twOGt3dCtr?=
 =?utf-8?B?RTdneUNkTm1iM0RHd0NqWGNIV0pZTlVDNU01TlZQcjYzdkI3STNsRXZVanpt?=
 =?utf-8?B?VTZUelNnOGRFMlNzeDg5WWErL2lPdjZmYkFpMlVaZVJqY3VKbUxieXBLakor?=
 =?utf-8?B?Vk1jMnQzblVGT3ptRDNwY2szWDdSTTlnSU0rSWtVaUc3dU9ZQVh6OHh1RWhy?=
 =?utf-8?B?SXYwdU11SGo4NEp5Y1U1SWNhSWhtVUVWbTkxN3gyWWhuV3dLZGpndUlkUmw0?=
 =?utf-8?B?N0JrMUhITDNIK2NHZmpZa1R2Yjk3OTlQMTd6VkJnQms3cDJqYms4VlUwNlRF?=
 =?utf-8?B?b1JIYkxwWWttMkIxSFhBQXBJNDFSaEF5VW1xZi91ajROaWY1ZDMyUEJWOGVy?=
 =?utf-8?B?QVRyZEJQdGd2bkw2UGVGRGt2U0VPMEowMERQZitndFpVY2JwYUdTS2QzbUJK?=
 =?utf-8?B?L05MdmpVdndhbUJTQnUzNUJvQkREa1RHWTZaNStUdGlZcXM2VmN0SW9ja3dK?=
 =?utf-8?B?eGxObWVYVGdLN2xlY2wyM1c5Mmd3Z2ZxUW5DYVF1NHNqSXJTOC84SHY3T3R2?=
 =?utf-8?B?RXU2WlkxRjlHSWtDZSs3U3NOTXpyazl5N3VSRWxuRWtrZXlIeWZqWC9NZ2tO?=
 =?utf-8?B?VFkrUVM4U2JKWGplcVNURlA1cy9kV21nT05Xc1Q4SDB1MHkxYVF1OGMzSHkv?=
 =?utf-8?B?aEw4bHlmZjJHL2puTy80d0drVUZ0UVZiT1haOFo2bnZSc2tEOHhUMG1NRUFO?=
 =?utf-8?B?UGxneXo0dVZSS05ockM1Q2NaSDNBejJENWRhRGhhVUpKN2xBcGNsOFZIamtl?=
 =?utf-8?B?a3Zld2UwTCtnc2tGWGhCYlNHSHJ0dGRDVVdmTEZpdW1PekQ4akFSOWsydzhL?=
 =?utf-8?B?Yjd5eHgxdHNyTS9xUWtibTd5Z1N1RFJOOUpKNGZNbWg1U0dOWVBYMVBXZG13?=
 =?utf-8?B?MTE1ekJHQXpGMzZTQjdDaFBFdjFkNG1qN3VYU1ZrOVNGRjdGWldBUmJteG9y?=
 =?utf-8?B?YzZJSnBxLy82VVlhaElaKzNjSHlzSHhkNkREZGRnZGlEcGd4dWxmclM4VDhV?=
 =?utf-8?B?ZDZHQnpMWExiV0xJSFBUMER1Vjg0RXhRTkdWcnpzcUxHUDFqM1JnY1VFNm42?=
 =?utf-8?B?SG83amI5c2FjUjNFQUFZdEgvaVZSa3B3QUE3enAxakZsNFB6TWZkd2hPWkJy?=
 =?utf-8?B?WDMyWUJONDRNMDVjbGtnWHZFNCttZ3FzN2ZwUWoxUVpIZk9scmdXNjhoeUJ6?=
 =?utf-8?B?b3dRN1ppM0JicVEvcnhSTXVyMWsrWmQ5eDJ3VkJsS1RCN2kzZE9iTXd2ekVN?=
 =?utf-8?B?Ly9WK1ZYTEo5OFVpdDUwc21tVi9uVGZjejZGSWNqWmpDYWxySm94cEVQZTJ3?=
 =?utf-8?B?am9jQVVRODhYK1ZnNXFpSVhlUDlUakQvcVdFcTVNbVFCa1N2Nyt6dEo5ZHlo?=
 =?utf-8?B?R01sTzFaNTMxaG05QTE5ZXRjWUw2azJmQTNHRFlsVDRTTWlkcWd2elF4bGYx?=
 =?utf-8?B?Q2pXYis3b2lXQTc3c3crV1F6L1BscW8zMEdFUWkyYnM4d2Vid25QVkREbTJS?=
 =?utf-8?B?Nkd0U0o5cGxHL0dBNFVpMlZwUS9lT2N2b3A4UXFIekgrZzB5bU5zK0lleDk1?=
 =?utf-8?B?RHNwSktFTGVMSGNIa09kREtqYVRWdnR1Mi9yblE5UUg4VmFhSWZkRnMzaElV?=
 =?utf-8?B?RUkwMzJqbzFWaXpvMXhYQlA3QW5iUXppQ2lvZGlLcHhVckdOUFdDRTVzSWpj?=
 =?utf-8?B?K1prMjdIZnFwQ0FpUjZ3UnBLSVIvMWVYbDRqUGtnYnFqL2lmMFNwNFJGVklo?=
 =?utf-8?B?cTBzdkFzSlpaRklld0Q3d01DSkZQYjk2NkxXRlUvZDFxWFhGb0RIbk9XdkZW?=
 =?utf-8?B?dm93MTZRTCtpRUpZREVuYkU5QUZTaEEvb3hRMUdXeUlydmJxdFFiQWZ4MHRB?=
 =?utf-8?B?OHFMTmV2ZzBoaUZrK3M3Z1MwMUhrZ2hDdkNXVXN4SHlaSVBXMGQ4bXQwenJI?=
 =?utf-8?B?S2FWRXFSaFZoblpqeVovYTVvYlZ6WDJ0cWN1T2U5eFZxLzE1dkIyYi9kbHVn?=
 =?utf-8?B?QSs0VDZoTG9oclpkTU5CSUdyM20reCtmeFlzbWZFYTlwR3BRMm1McllCRE1Y?=
 =?utf-8?Q?0j9/Nn0O73aHYQ35uCpFPhrRwEqfbzhsdq1XM3gnhcQ3?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d4e0597-c5ca-4c22-a20a-08dab369e0c2
X-MS-Exchange-CrossTenant-AuthSource: CO6PR12MB5444.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2022 13:40:55.3104
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wcm3zdU7QZKsazXSI5UJuWx0Giw0RSAFFTihcVm3+elRNTXCbOiVCCzOsHrwzil5CNHp5L8Nt55vHL9YPDysyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB5627
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_064101_019203_ADA5C076 
X-CRM114-Status: GOOD (  15.67  )
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


On 05/10/2022 09:40, Haotien Hsu wrote:
> From: Wayne Chang <waynec@nvidia.com>
> 
> Remove redundant codes for getting the vbus supply of usb3 ports because
> we get and control the vbus supply by the companion usb2 ports
> 
> Signed-off-by: Wayne Chang <waynec@nvidia.com>
> Signed-off-by: Haotien Hsu <haotienh@nvidia.com>
> ---
>   drivers/phy/tegra/xusb-tegra124.c |  1 -
>   drivers/phy/tegra/xusb-tegra186.c |  1 -
>   drivers/phy/tegra/xusb-tegra210.c |  1 -
>   drivers/phy/tegra/xusb.c          | 10 +---------
>   drivers/phy/tegra/xusb.h          |  2 --
>   5 files changed, 1 insertion(+), 14 deletions(-)
> 
> diff --git a/drivers/phy/tegra/xusb-tegra124.c b/drivers/phy/tegra/xusb-tegra124.c
> index db56c7fbe60b..f4f75ea033b8 100644
> --- a/drivers/phy/tegra/xusb-tegra124.c
> +++ b/drivers/phy/tegra/xusb-tegra124.c
> @@ -1652,7 +1652,6 @@ tegra124_usb3_port_map(struct tegra_xusb_port *port)
>   
>   static const struct tegra_xusb_port_ops tegra124_usb3_port_ops = {
>   	.release = tegra_xusb_usb3_port_release,
> -	.remove = tegra_xusb_usb3_port_remove,
>   	.enable = tegra124_usb3_port_enable,
>   	.disable = tegra124_usb3_port_disable,
>   	.map = tegra124_usb3_port_map,
> diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
> index f6099609f154..25db49789f41 100644
> --- a/drivers/phy/tegra/xusb-tegra186.c
> +++ b/drivers/phy/tegra/xusb-tegra186.c
> @@ -1213,7 +1213,6 @@ tegra186_usb3_port_map(struct tegra_xusb_port *port)
>   
>   static const struct tegra_xusb_port_ops tegra186_usb3_port_ops = {
>   	.release = tegra_xusb_usb3_port_release,
> -	.remove = tegra_xusb_usb3_port_remove,
>   	.enable = tegra186_usb3_port_enable,
>   	.disable = tegra186_usb3_port_disable,
>   	.map = tegra186_usb3_port_map,
> diff --git a/drivers/phy/tegra/xusb-tegra210.c b/drivers/phy/tegra/xusb-tegra210.c
> index eedfc7c2cc05..ebc8a7e21a31 100644
> --- a/drivers/phy/tegra/xusb-tegra210.c
> +++ b/drivers/phy/tegra/xusb-tegra210.c
> @@ -3078,7 +3078,6 @@ tegra210_usb3_port_map(struct tegra_xusb_port *port)
>   
>   static const struct tegra_xusb_port_ops tegra210_usb3_port_ops = {
>   	.release = tegra_xusb_usb3_port_release,
> -	.remove = tegra_xusb_usb3_port_remove,
>   	.enable = tegra210_usb3_port_enable,
>   	.disable = tegra210_usb3_port_disable,
>   	.map = tegra210_usb3_port_map,
> diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
> index 46661a8d5bbc..0eaab6d846bf 100644
> --- a/drivers/phy/tegra/xusb.c
> +++ b/drivers/phy/tegra/xusb.c
> @@ -960,8 +960,7 @@ static int tegra_xusb_usb3_port_parse_dt(struct tegra_xusb_usb3_port *usb3)
>   			return -EINVAL;
>   	}
>   
> -	usb3->supply = regulator_get(&port->dev, "vbus");
> -	return PTR_ERR_OR_ZERO(usb3->supply);
> +	return 0;
>   }
>   
>   static int tegra_xusb_add_usb3_port(struct tegra_xusb_padctl *padctl,
> @@ -1018,13 +1017,6 @@ void tegra_xusb_usb3_port_release(struct tegra_xusb_port *port)
>   	kfree(usb3);
>   }
>   
> -void tegra_xusb_usb3_port_remove(struct tegra_xusb_port *port)
> -{
> -	struct tegra_xusb_usb3_port *usb3 = to_usb3_port(port);
> -
> -	regulator_put(usb3->supply);
> -}
> -
>   static void __tegra_xusb_remove_ports(struct tegra_xusb_padctl *padctl)
>   {
>   	struct tegra_xusb_port *port, *tmp;
> diff --git a/drivers/phy/tegra/xusb.h b/drivers/phy/tegra/xusb.h
> index d66b22bfeaa7..1b6b780efeec 100644
> --- a/drivers/phy/tegra/xusb.h
> +++ b/drivers/phy/tegra/xusb.h
> @@ -360,7 +360,6 @@ void tegra_xusb_hsic_port_release(struct tegra_xusb_port *port);
>   
>   struct tegra_xusb_usb3_port {
>   	struct tegra_xusb_port base;
> -	struct regulator *supply;
>   	bool context_saved;
>   	unsigned int port;
>   	bool internal;
> @@ -382,7 +381,6 @@ struct tegra_xusb_usb3_port *
>   tegra_xusb_find_usb3_port(struct tegra_xusb_padctl *padctl,
>   			  unsigned int index);
>   void tegra_xusb_usb3_port_release(struct tegra_xusb_port *port);
> -void tegra_xusb_usb3_port_remove(struct tegra_xusb_port *port);
>   
>   struct tegra_xusb_port_ops {
>   	void (*release)(struct tegra_xusb_port *port);


Reviewed-by: Jon Hunter <jonathanh@nvidia.com>

Thanks
Jon

-- 
nvpublic

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
