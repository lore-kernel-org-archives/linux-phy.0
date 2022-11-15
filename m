Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D82E1C43219
	for <linux-phy@archiver.kernel.org>; Tue, 15 Nov 2022 12:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v0ltmLUcxe5HtDTNWmgPYq8roY6Pd1JeRPsajYljOxY=; b=XzM8TLTNN2/j8D/PNvfL+teKM/
	ketiKQVNToYZT9w6zTt3nQ7Otqoaez+xdCUQbK7OyhDXVPAMmN/qyUqT6hvOT/NO5mY/IRPHA9oZs
	ZP+SP47Ug2GFd5ryMRHzwR+16c2ulm+Dw380LbCBiZ4E5Kru6TuMSEis4Ih4TJwO7VTktI8Op0LWN
	AI7KnIwlATWXZQbWDfo+nFq5G4W+E8tb32DwCeHLqDbyOKvG7gVhW53uywIqlDriINIRq4vHJMcYY
	kqKY/Zb4EDsL6rmzxYgT4lF+lxKTNxriuu7VJz1tWRT1S2cUPKuITLyI1r4nWSpAN2D0x1GopSJ+L
	R7zTKllg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouuuV-00AxHF-9f; Tue, 15 Nov 2022 12:19:27 +0000
Received: from mail-bn1nam02on20610.outbound.protection.outlook.com ([2a01:111:f400:7eb2::610] helo=NAM02-BN1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouuu1-00AwyU-2j
	for linux-phy@lists.infradead.org; Tue, 15 Nov 2022 12:18:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DezlylJzct3afFykPfwREBT7VF5QWdqtgtPd+cyCofA1PN8WwV1uauJG0G162n5Ckm9K7HWo6XJBHLqPmbiXNBuGhdCwqIWnHXdFDnz1qEZOQ0KlYEyRpE/qyED2SbpkAutkGqi4II0jIDCsapmh3ZvCdj9MsbaGMfBc652bgFhAuls7+Ac7BykAEqz8KS0vOwCkKmfX60KnWX27/EXaXE7NfyKWAQcStXF9UAxgjrKacz19Ajq3AFfLjZSGl7Gr5LdY79oBPRPk5vaVjVO2Xnv9IJZ2cp1+PKItHQ6k2NaSxqRko/ZSu05EsitWzdVFRr35Mj/3ZGMVOzeQxSTEIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tyGo5aMsaLkazu5tbo91EbLUeEPk94jQHJk7k3shrnc=;
 b=EXD0YNgbsKkRcMQWkSoIJcfW/dcuPCXvUOEUOcGmLx/kMPQl+GyP15tRLmnwjQ0Qx336YJSc5jh2s5HjeL+L26K5x6EduU5Tm53vY9en/bJF7GGpBpz6dcTUOhndFOyqy/trBAOZiVHQW2znI6v8bn7OS0hRhDQfYPHEPSsVp7ZfnPQmZc6maDTvoGU9WFjk/uXwMSHcjfcYwuv4WGFv/eo3XUeJ/55OuJtLHTmlEN5d3SrQxCpzXDVadHT+rKOzMR+v2qPBVNGuvkFG/fJE7n4BwMAiHSuBYGmDWOzNqxTh+vI+s0kUleBMJ8TLNtZslZc8toLvqqL9+xaMiAIoRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tyGo5aMsaLkazu5tbo91EbLUeEPk94jQHJk7k3shrnc=;
 b=aiWYKvSaGAsfXa6h1CFq7ZiXKRs0+tQmwkvvf8wUVe2M4dE5BVGhg2Hbt8gdD2IJM9Sb0/yoPWN8Gj96/1WlaFQStpnlfO+43ARwM5TuzaD/jO0yf0100w196oE4RfSM/cHBsK0TDVdoeeAVmifPEeqQqfMo/2vwIwdEY3duMh7S25TsVx81SEeH78KSnd80nM5YjqRq+Ib2f6O9ixsmVFmpeBzIpynxVtoWvQhWTyPAMKjDTydlCVl+P/ZbUAw48dd08xsBg4q/vnIgoFnLQr6tFmsHQQtGkWKW5K6mEpc0K2tun+4UnLrAvr4ba+K2hU/2BAs5rUFgAhbl19trgw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CO6PR12MB5444.namprd12.prod.outlook.com (2603:10b6:5:35e::8) by
 BN9PR12MB5036.namprd12.prod.outlook.com (2603:10b6:408:135::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5813.18; Tue, 15 Nov 2022 12:18:51 +0000
Received: from CO6PR12MB5444.namprd12.prod.outlook.com
 ([fe80::8edd:6269:6f31:779e]) by CO6PR12MB5444.namprd12.prod.outlook.com
 ([fe80::8edd:6269:6f31:779e%5]) with mapi id 15.20.5813.018; Tue, 15 Nov 2022
 12:18:51 +0000
Message-ID: <03b93c24-f055-fd56-972c-fd5ad4e9a67e@nvidia.com>
Date: Tue, 15 Nov 2022 12:18:44 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 06/13] usb: typec: ucsi_ccg: Add cypress,firmware-build
 as a well-known regex
Content-Language: en-US
To: Wayne Chang <waynec@nvidia.com>, gregkh@linuxfoundation.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, treding@nvidia.com,
 thierry.reding@gmail.com, heikki.krogerus@linux.intel.com, ajayg@nvidia.com,
 vkoul@kernel.org, p.zabel@pengutronix.de, balbi@kernel.org,
 mathias.nyman@intel.com, jckuo@nvidia.com
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, singhanc@nvidia.com,
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-tegra@vger.kernel.org
References: <20221114124053.1873316-1-waynec@nvidia.com>
 <20221114124053.1873316-7-waynec@nvidia.com>
From: Jon Hunter <jonathanh@nvidia.com>
In-Reply-To: <20221114124053.1873316-7-waynec@nvidia.com>
X-ClientProxiedBy: LO6P123CA0039.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:2fe::19) To CO6PR12MB5444.namprd12.prod.outlook.com
 (2603:10b6:5:35e::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR12MB5444:EE_|BN9PR12MB5036:EE_
X-MS-Office365-Filtering-Correlation-Id: a3e98dcc-f329-48b2-49dd-08dac7038e24
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	uKCvLwUrmtmrCz9++dDOKcbe6ooxbE+d3M+AO3JzalREzxF2xtF9GDV/F7dZLre+7uvQSCKCAQtafXdmQFNKpbewwY85HegrziJ9etUBlWM84mA9I3aC786i0U8clxul1Ve4sT8m9m47ILq2bvHYaaikHfmmwn6eulD+PXKJRVfKvRVrjRkIyDTcuAAJEeyYWHQipFetDhKYrgjB8OG+uo7SUhTVectNFmILMoNMlDIkSTgCzAcQ1UZs+uuphuHVAe3CiJQk9Ql+qz94YamPz1jF7olb0SEaw5bRt3bfrkNTcRTaZ8s5mQQl8k1qiga6Bltz6h3ij1xJqmbFCsWSIQ1RZGEDl1wCRy/5CQ8l66gHERvJPn5ERakZcIOII86AJk9MgZkCmmLev0Px0cIVJPnn7A1IkOETbYTds3DLqlytKlK7p3epaqB20AFXJaX6Mu78GAHRc7Kdz2707FU/A62DSJliqjUMlkN+t6allCqzcsbivDtIuEFC79uL+1tNOHolwgzruBJMVWkJ1tLqBt0bRI0zqjqNJsIJVDeH8niYriEcknwPU7PH53jPz3yp9SscgKuxHMTTEupb5CzkOdxNjMmhFMkDMhSYHWhwC75QN4W734Ry8Dlz2EXUtLoddvbSEJyGzgoVii6y8kBmR4LbeQPlKp017/G0fdos/zSggsLW6m4RKnf/+D3XDmtKBvrkDNVKo8N2lFdruHeJoL+vVqPv/rPdnkedkgGNBKNFSvWUiDnw0t3Zut8hpSzwpLVgGtb2HJFnJDdHS7vdENF3SYDTmhW5bC+gUcmXG12OJPtKAKK/QquZb7bCPbAJ
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR12MB5444.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(366004)(136003)(39860400002)(376002)(396003)(451199015)(6666004)(31686004)(6486002)(478600001)(6636002)(316002)(66946007)(55236004)(66556008)(26005)(53546011)(6512007)(8676002)(66476007)(36756003)(4326008)(41300700001)(2616005)(8936002)(186003)(5660300002)(921005)(38100700002)(7416002)(6506007)(86362001)(31696002)(2906002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?a0F4U3hHaXJmeHQxTU9HU3RnNlN1eEJsWkgyNkU4di9yV2Job3ZyNjRENGpi?=
 =?utf-8?B?OEc5VGIvclV6WkpQTkZwMlZJc2s1a28xSlRjbit2VFBidWtQTVFhTmVrQ3pK?=
 =?utf-8?B?R0JlY1Y1SFcvVUVCUWpSMGtLbVlrckZVVkYxSWU5TE9GeEYxdm93UE9lZC9x?=
 =?utf-8?B?MG1jMFBxQUdVRkExNUN0MWVrVFR6TWt1anZEL2hHK2pESkxFMXpZQi9XcEJx?=
 =?utf-8?B?cVJaZ1hXZHV0NHBDODBpQ1ZiVndXMGJKTUF5Tk1kVW95T0oyWnJyYW1mNm9U?=
 =?utf-8?B?djlvMWxZd2syWXhTUU1MeGNXaGJjb3FkbUZMYURMcnpwVnJUWVpUQllPMmxp?=
 =?utf-8?B?NjZWL28ybkFvNWFyeVZ3MDM2SjZhWTk2TndPYlNxYWJGTUpxQW1EMGRrMUNp?=
 =?utf-8?B?S2pCNzZFdWNKWXhja2ZlR1RqS2VTTzJyZy9zQk1XeThHbjV4eEtuUjBlRFhW?=
 =?utf-8?B?ZWRnejdsY3EwcklWSFdONzdRZ1RzcEszYllMSXZZdFVNQzdDOHJjVEg1b0NE?=
 =?utf-8?B?ak51ZnZMOCttWHB4cDl1alpzQkNnbWNzclAxSzRJMmtvc0lLMnFYdFB4a1pQ?=
 =?utf-8?B?d1g1cTJ4cDhTcU5kdUVwWW9NQ2VnUkRTcHZOYkQ5L0dXTEtLV1IrWDVjaHhW?=
 =?utf-8?B?dS92VnRaVmpoYXBOOU5TNjVMa1JCL3ZjTGxHdEM0MEM4MU9NNnV3ZnovNkdL?=
 =?utf-8?B?ejdZdHVnUUV2dEFoUW9CZG0rWHBHOUM0TEY5M0NQbGVtY2dyeVhrT1ppSGJM?=
 =?utf-8?B?RkdmdS9NY1N4VVROYi9mNk4xZnYwNTh6VlN2WFFFeEJqQTBSSHQ2MklWRlN6?=
 =?utf-8?B?TW1aNWdBZ3hSOGN5YTNycGg0OVpuSzdtb05maWJHd3V4ZU1QSXc4SkNCdHUw?=
 =?utf-8?B?RGYzNDhJZWM2N2RNR0FRT1RUZmF6ZSs0M3kyNWJMek93TFdGNDlyZTVyRUxu?=
 =?utf-8?B?ODNXTVVmSlMvdVQ0aXRkNG9hVHpIQUlZZ3djekRjbnR0eFR2eHdZSHlhQzVH?=
 =?utf-8?B?ZzIzd25DTXRjeWRkd1N1UEQ5WUJWYlVvazlwQlRCaWVIWW50U1lBaWZ1VWtR?=
 =?utf-8?B?OGt1YkpoQWJDL1pITTFCeEpTYy92c296MFdZWS9RTDY4NHNBb1VsMTl2T1Ew?=
 =?utf-8?B?V1pmZzd1ajhqUkpYSTdGQ1J5UzMzbzJ1Zmg3cnFCUmZSbWpJSTFhcTMrQlU5?=
 =?utf-8?B?MDlzZ3Rnd01zamVWV1k3MjVZWk0yV3JzS0hEQVMyY3JBekwvS0FxMStXNlAr?=
 =?utf-8?B?QkNaNlZXaFhWK3VsL3hLQ05Gd2x4bUs0a3FxNkloZFNzNzI5Szg0MnlOVzlQ?=
 =?utf-8?B?SkRraGJhNFRDeCtqR21KT0thWUd6dlRHT3FiTDk3Q05ycy9jTld5SEZCQ2Nz?=
 =?utf-8?B?OUlrSUxRVmVHT3VuM2xUWitUa0Jud1NxbHQrRmgwQXRCVlZBdXUvSnhVMTlX?=
 =?utf-8?B?ZXlhS1duN0FlWlVRT2tMY1BkbXdORTl6U2JPU05ncERrRUorZ2xYdVo4Skto?=
 =?utf-8?B?emYvb2xMbTBMU1FRb0hrcFQ5VUorYXlxOWR2dFZUV0QyVE5kemliZmNqQktM?=
 =?utf-8?B?NHBDaEY0Y2FEMHlUUjdnMlB4WGR2QWtHMHFHSmVVdGx0QXJCOXljTXdIdjFB?=
 =?utf-8?B?aGM0M0szTVZ1NTl6VGZzak44SWJCZDgrTUVtMEFzSmd2dGE5NDhqQmpEL1Y5?=
 =?utf-8?B?M3VJYy94V28xd1hOcUhnZ1l6Q25VRFQ1TEc5YkV3Sm85OC9nT2N1QU1nVk0z?=
 =?utf-8?B?T3ZOSXNsa29DSm9zR1hCaHdIU21wMTJhYXdiREJhR2c1bTJBLzRSTFZXVjRk?=
 =?utf-8?B?UzlqV1A0SjlwV1NYMkcwd2RJbStmODJ3RllFWU1RMmRSc3duY0hELzZybHda?=
 =?utf-8?B?bnE2ZjZYT3pDUUZGS3Q2OUNLeDI3RkNZNXF1OWN0Y1hqQ3V6MUdQV1RBTWsv?=
 =?utf-8?B?SFZ5RnZON2pBRHBqM21BL0RBalBWSm5pNldidTFjY1lJd1RraHRuZUhiUldP?=
 =?utf-8?B?R25aenNjNmlIVnh3WVQveThDWStCclFVK04zTlB4T2kyMDBweUc1Sks5QjB6?=
 =?utf-8?B?b1ZHOVM0YVAxdHV2TVE1cTVSS3BPU3BsMThDZEtWcTlDQVdBdHl2azZGVkxO?=
 =?utf-8?B?VWNKeDY3OVNob05YVG1QbUFEbU9ZMmNwWUlLY2pGY2NiUHpwRzM4a3BBZzhX?=
 =?utf-8?B?SVE9PQ==?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3e98dcc-f329-48b2-49dd-08dac7038e24
X-MS-Exchange-CrossTenant-AuthSource: CO6PR12MB5444.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2022 12:18:51.2600
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pSUGvtmwI+EN6BiB1bno0m5xTGWQxFumY/GpVdsKyH0YBqyi/Ft2lxaOYBcgNHfeZYXEcioJmm2ItAhDa1s6eA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR12MB5036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_041857_155247_D6E2D5C8 
X-CRM114-Status: GOOD (  18.40  )
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


On 14/11/2022 12:40, Wayne Chang wrote:
> ccgx is refer to the cypress cypd4226 typec controller.
> add cypress,firmware-build as a well-known regex.
> 
> 16-bit value is not sufficient for descriptiva names.
> Using string instead of u16 to make it more descriptive.
> 
> Signed-off-by: Wayne Chang <waynec@nvidia.com>
> ---
> V2 -> V3:nothing has changed
> V1 -> V2:new change added for adding cypress,firmware-build
>   drivers/usb/typec/ucsi/ucsi_ccg.c | 12 ++++++++++++
>   1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/usb/typec/ucsi/ucsi_ccg.c b/drivers/usb/typec/ucsi/ucsi_ccg.c
> index 139707a2f3d6..e412a457bbfc 100644
> --- a/drivers/usb/typec/ucsi/ucsi_ccg.c
> +++ b/drivers/usb/typec/ucsi/ucsi_ccg.c
> @@ -1343,6 +1343,7 @@ static int ucsi_ccg_probe(struct i2c_client *client,
>   {
>   	struct device *dev = &client->dev;
>   	struct ucsi_ccg *uc;
> +	const char *of_fw_build;
>   	int status;
>   
>   	uc = devm_kzalloc(dev, sizeof(*uc), GFP_KERNEL);
> @@ -1363,6 +1364,17 @@ static int ucsi_ccg_probe(struct i2c_client *client,
>   	if (status)
>   		dev_err(uc->dev, "failed to get FW build information\n");
>   
> +	status = device_property_read_string(dev, "cypress,firmware-build",
> +					  &of_fw_build);
> +	if (!status) {
> +		if (!strcmp(of_fw_build, "nvidia,jetson-agx-xavier"))
> +			uc->fw_build = CCG_FW_BUILD_NVIDIA_TEGRA;
> +		else if (!strcmp(of_fw_build, "nvidia,gpu"))
> +			uc->fw_build = CCG_FW_BUILD_NVIDIA;
> +	} else {
> +		dev_err(uc->dev, "failed to get FW build information\n");
> +	}
> +
>   	/* reset ccg device and initialize ucsi */
>   	status = ucsi_ccg_init(uc);
>   	if (status < 0) {


Reviewed-by: Jon Hunter <jonathanh@nvidia.com>

Thanks
Jon

-- 
nvpublic

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
