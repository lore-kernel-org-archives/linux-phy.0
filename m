Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5783FC27C4F
	for <linux-phy@archiver.kernel.org>; Thu, 13 Jun 2024 09:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c+WhyoBrwB/vz3fOkUSLlcC2pu0M8LUxa3R7LAhASRE=; b=pOUSElP9jGRMuV
	Hli97AR9xwEc3rmXqIpWBi72xWwStjqAEn0VxqgNHDLPs55LBW4UnVbGcjT462E6HSl2FAc3YfDlo
	lF/yNMg6bM3B7KDGGvFeZeYROmdsO+Hwa6LuCfoyDGPUzx2Mv8hCPHT+AXVoR6DkjAK3Gjg9CTO33
	r6A5ty2dRiOdjN6VKHORVWOnwCsWY1SS+xp98hy7U5swNkrEZAuXpR2a14+XPyc/0LaNZGI71ijEo
	22VhWH14bdpdk5RY99FoEKdNcgE34eLSijZoWtMy2vPeTf6vzUCk1c8hIvIHuxBU8BWt7enQQI0Qb
	ujGiA+5QpQ1VPxzTTSEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHgrm-0000000FzRU-00xC;
	Thu, 13 Jun 2024 09:35:34 +0000
Received: from mail-mw2nam10on20602.outbound.protection.outlook.com ([2a01:111:f403:2412::602] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHgri-0000000FzOv-36F7;
	Thu, 13 Jun 2024 09:35:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YZjbhIZUvJCwXCrcQBLzj24wJ//LTdRELYJksZMk/qnvVp5vvYDlOcdXlCmItvw6jyAV3gXQCinGG/GNCvjWmfjjdS/UoM09+3o3FXYYAhapTBPH3vkpdLMqlh2xJZbQ7EL34M80NfcsRp3l68cy+D79PBH1COUum1KyOjx0Y9rAFNkjy02AZf2Pj7tINJIAquvPsuO/wS6CuSLMlVDYE/aj2EzRSPwb//+tgoDyZS//nxM/J/rxvhD2NksNvWOHhIc/72W61OJTAOhb8LC1xXUdeCnNkLI8iln3/ngdGjfMmmzoCXSqhZyLeGtfZRReJ7Ih0Nh4eauuNoZs4XVBig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y4Gyt+bczsyvG9yQ7hpnLnVjO+JElgVujQgoHYwiBWA=;
 b=Bwfcu237zIU1G+AFWahHrJMeXOJVmmmd3RBAAwoXKMBKNbvldRuVN7+ALqyImvz6H71M5JfMundvvJSqc4ayifC266lQIHYLjjn9yR4/yVnk4sS8UPMELSnd0FYTWjf0B8z9TCGiX6GFXB1vUHjZqkwSGEUDtdW9ZIUd8mxW405J5uDbX8DvzojLetIHZWsdu+wi71jVdE7LBDGE/mgKePXUBdpvs4cJju2G8yoclYqd5N7gfrpg9TND8uODLGq7PPuTzbEyD26TZty0dJ7Nwj47/o63wpVi8QkeNfeUrWp9Z07BCiuj9hWc3ydY5RKqTSWLi+iD8fvThavtEMvBPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y4Gyt+bczsyvG9yQ7hpnLnVjO+JElgVujQgoHYwiBWA=;
 b=O6o3E1b6+beRoqz0eG7up4nMFZyeG1OL8wIQOVYDPkyj92NdyjCUqMdmoxKSnmfyTgingFsqtIY8FOhrBOXpbxnmycMv9JUC/L5dIaAEs6J+YRRs5grlDN6F17LXATjqh5EOrOReuhwWPQ7xeip39jkGNjDzqqvPvSdMys5VH8c=
Received: from MN0PR12MB5953.namprd12.prod.outlook.com (2603:10b6:208:37c::15)
 by DM4PR12MB6448.namprd12.prod.outlook.com (2603:10b6:8:8a::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7677.20; Thu, 13 Jun 2024 09:20:42 +0000
Received: from MN0PR12MB5953.namprd12.prod.outlook.com
 ([fe80::6798:13c6:d7ba:e01c]) by MN0PR12MB5953.namprd12.prod.outlook.com
 ([fe80::6798:13c6:d7ba:e01c%6]) with mapi id 15.20.7677.019; Thu, 13 Jun 2024
 09:20:41 +0000
From: "Pandey, Radhey Shyam" <radhey.shyam.pandey@amd.com>
To: Sean Anderson <sean.anderson@linux.dev>, Laurent Pinchart
	<laurent.pinchart@ideasonboard.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>
CC: Vinod Koul <vkoul@kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "Simek, Michal" <michal.simek@amd.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Subject: RE: [PATCH v2 4/4] phy: zynqmp: Add debugfs support
Thread-Topic: [PATCH v2 4/4] phy: zynqmp: Add debugfs support
Thread-Index: AQJ83aedMQVFXzZR+sovobCavopdtgGvrfvSsHOmC7A=
Date: Thu, 13 Jun 2024 09:20:41 +0000
Message-ID: <MN0PR12MB5953519A685A222CC603A2FEB7C12@MN0PR12MB5953.namprd12.prod.outlook.com>
References: <20240506170110.2874724-1-sean.anderson@linux.dev>
 <20240506170110.2874724-5-sean.anderson@linux.dev>
In-Reply-To: <20240506170110.2874724-5-sean.anderson@linux.dev>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN0PR12MB5953:EE_|DM4PR12MB6448:EE_
x-ms-office365-filtering-correlation-id: d3bf7d4b-dbd7-467f-5dbc-08dc8b8a186d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230034|376008|1800799018|366010|38070700012;
x-microsoft-antispam-message-info: =?us-ascii?Q?BBm9zZilPOEFWLERogC7pqYcMxdNpYOfgRsEBQ/tYbvI4mo+X7jAxDumYRBZ?=
 =?us-ascii?Q?y6+pFaOGnWgFxXtVm4J7fI8+bLFmm8lHHWomRvgWM8NE4et9oaN+ffK1zhPr?=
 =?us-ascii?Q?pPAHr5M61vDd+BbGuQwpeJW9hAAUrEZ8pOiVZFmNzV0lEMk6Uc4S8HuKIo/j?=
 =?us-ascii?Q?e7M9WIrMgbphoIWn/USPq7jfAj80H1DQewAbNZbXbCeWDr7H9Fmupdf5amg9?=
 =?us-ascii?Q?OjqeAOn95ZkbuqYxTv4ry5cQPRa4TPukYy0jOoEDcUqaHztIPKTpMAeia3yT?=
 =?us-ascii?Q?uQWzkv1bAcAVWmlirZE6bXfnb89xQB627pnpffN4pwd5M7hVovtNF72ZcFy1?=
 =?us-ascii?Q?j3q9yGH0FMkj5V3ZnujdLTusY6RB4nIklNHMSeZ6c7Zno29xA4QHFzfl0/kh?=
 =?us-ascii?Q?cH1dMIFjUe1zlMt1a/YI0kjP7W3kFax191CNVmWIBfTHz0TzoNNxyT9vt+97?=
 =?us-ascii?Q?THlVYD8l2GKpT6iHluO2M8HITnzkbEK5VRZWh9jJ22+qyYj7K2twla0bK4Y8?=
 =?us-ascii?Q?dqz8m5j7WTUEIKBTkhaJboNTdFI9AhOOYrxBsTtajm0HhUd3KWmSwsefKSul?=
 =?us-ascii?Q?iMP1OkXCD0vRYkaU899jR/MwejwdcA6LIBVos3YbNZJWsNO97GuxcDP60ybD?=
 =?us-ascii?Q?dhdR81VTLUtJfWVlU6/PM4IScU+BY+IGhN7aYSHsgidOkneCwRX6xVtjqkIH?=
 =?us-ascii?Q?/9elgNiTk7oERURHRRJpOKu5erJVe/FIOQGzoQ5B8ccnHoUVL07YHtshc8Uw?=
 =?us-ascii?Q?Aj8lAD+nlvdRM8jsPCy2lRDQPpa+0Y2+p9GUxNKLD3rg+4ZUyS7N+qx8fzms?=
 =?us-ascii?Q?G7lCSE/YRKWtKdd+UFJKUW1MP624B5ddSCDJtg5nJ7dMafwtuM4OaL0SILyc?=
 =?us-ascii?Q?7OkqI/9UOu+4/0zgJCkRvK18Js3YvOkoJtxVebRxAsiBEi6rX6s2qnZO5Vg/?=
 =?us-ascii?Q?I6/42W3frEgqlsN9LvhtLPuqzL1jCWa+YmodjfUdiZ/cWrSM2eq8m38PWIsN?=
 =?us-ascii?Q?VpcC/sxmWwZxDq6PaiHL5hN7P0aAwgOvBl+wwL6Npk4Rt/WjmmM8RMzxK5E8?=
 =?us-ascii?Q?8LcFF98rmafd/+CZc4DTP20Yo1EL3WsuqgF/g8/vvY3o9eb2S5LoJM1I4o/O?=
 =?us-ascii?Q?RJqiItEd1VXcbQOE9Hlg7vkTo0cgEJITyP5rQXsgBj4zTD2IkmPjkZXpdTGt?=
 =?us-ascii?Q?Qyzpi/w6xyXEoHQDeAzRuFYxFXxfmSo52NIMg2bVtp++kdv7IIiNEo+OxR7t?=
 =?us-ascii?Q?S/beSWYxx93OMpH4JI0iBr9vqj0uC5BkV7mn2YcfvfhSYB/HNfujWfLFLBM5?=
 =?us-ascii?Q?ngZf4hjFS9+aGZ2LzwQthSVuVohPpj9nlUbA4Z55jE/NpUfRXbj10fvUzvVe?=
 =?us-ascii?Q?AcvLtg0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN0PR12MB5953.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230034)(376008)(1800799018)(366010)(38070700012);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?o7SS+O53ScM3yIX04AJWTyeTZkm5vC4fmJ9+Me2Gw1asGzzBEyIHmlRxWq56?=
 =?us-ascii?Q?aXdNWNhmkVEYTo1z3keJDVOvOSNy7P1Nccvm9E2nYo9ncM8hKYkjKgAoA6db?=
 =?us-ascii?Q?upM4sKBeRW3NaBv1x52339mbuS5alh3LFFLHrtyR5OvsiN/qN8Gv7/H+3u7a?=
 =?us-ascii?Q?AvgRteb8hk7798zKeowLKvhXHz1LUidJT4hCgZ01V4JNzru26+qGMLcrau0T?=
 =?us-ascii?Q?hXitO8+CQlryja+QBh1+SgkXLba3ykzRpnT3jiTZVqdOUQPce/paatqs6RyJ?=
 =?us-ascii?Q?U3Q0vgfBSGA5UpwKwWqwKo6GgMOGu9LhWV/BxyXlsA3vHysvakwcEbK0O4EI?=
 =?us-ascii?Q?vxoVI2MQ4V3VAGnwubzU0MLG0ksTKObSsNpuN5TtuqWLeh4mnWHxBhaMhisz?=
 =?us-ascii?Q?tJj8y0CGcSYp6yS5rLFkHcUzmoeq/WA05OgE/Na6rxOY3EiH/+MvIwWHgaMz?=
 =?us-ascii?Q?7R8A5vJk64WPOie37gIrHINMe/nOOWWJVSFswqMqhuusQ0oaMXP43e4rb/VW?=
 =?us-ascii?Q?UMANYwFYn7dn5huWbzpgS9peMTVIFCwkpiYRQVzzZVDalfF+OzubgrtFinVK?=
 =?us-ascii?Q?CwOE1y6+c9J6cI7apZ774onZ58SlIN47JnxMz9uIPXWoSasFlp4SU0gBINq8?=
 =?us-ascii?Q?EdwM3v6yx6LYTRC3jKdeW3DbHe3atuOlxMczeqBfGAip5Tx/kMONTGjToWUm?=
 =?us-ascii?Q?wyUdKTZa4kBSlcS5PB47WqqBekmNKwsTEzws1zJQAAc2j1f6KD1vLSuFeuLA?=
 =?us-ascii?Q?kLwyg/0Cb4vnydZBggKM1IKXjAUAphUnCZaHvdJEnPLto3LlBlnldja9lC9o?=
 =?us-ascii?Q?8wSa2Vimuc9MYaVyN6qfTci2UcNU0rFAtOcwTreCmZGIHIfRDN7gYw6s7Xod?=
 =?us-ascii?Q?ExtXXdun4fz1eL1TT7YZ43aRYV8ej4AvsyZ5gNPcv3lknvs6BYhwxEb7salg?=
 =?us-ascii?Q?/mSg/zmcqACQeej8yzVTLTCmp4AWPUTIqMY1C+mom2ohoqUyf30t2NQhIJN9?=
 =?us-ascii?Q?U91tpqT1kDwGhLDGwFk+AV6enqzQqKytB8d107Hojclk014uSlsrQnw43+fR?=
 =?us-ascii?Q?+d1rLLTWjEBYfGAlu4SNBObSX+0Ts3jPcSG98Z2Yh97p8Flb2/KlEZlSJ27E?=
 =?us-ascii?Q?WcCMYv5MwqBRlcQJPAAWx8G1LfIeVpRvxUD/kuXgK3ajk7Ikh+sguSuAOOCV?=
 =?us-ascii?Q?iu4xjkHPb0W/4Z+wYaOSiRZ2PuZbhK34OD0LrZ25AWnK9HOzT363F+f7cEm9?=
 =?us-ascii?Q?PwbQ1WE6FFHsYYuY5cu5AZYxV4PoyihwybIVX9YXUO+KsND8P20Idysuxfb5?=
 =?us-ascii?Q?F9z/qmCg0zMaGp7i1Vfqr4VEK2R0pO8IZsAIi1w/Agul6oo7XikRHTR9/Crt?=
 =?us-ascii?Q?Z6+Kc7rcvHJXC/Zg97EqIw5warQXXChS6bhoCkdO71q5V86mlD9NiZbftCQS?=
 =?us-ascii?Q?ziBzyQOP4Nh87yyUZKL0whCI7Bi7D/d4swku18DNLue/DhNqTOPaXF2XhJ2p?=
 =?us-ascii?Q?rzLkGcK8wuYo+v8S27aID/kCRvtSmA4hp1OcX9Waa/GBE906Zgc7RPSB/jCf?=
 =?us-ascii?Q?wT7n/h3or0bYhj1ZG/c=3D?=
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN0PR12MB5953.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3bf7d4b-dbd7-467f-5dbc-08dc8b8a186d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2024 09:20:41.0900
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1Cc80lz2j7bgJ1+O6q0Ssc0YduRwYBnGtyk1CiYVBBCp/qiCQLHxHv01wXSnN3Xu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6448
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_023530_977645_116A9687 
X-CRM114-Status: GOOD (  20.92  )
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

> -----Original Message-----
> From: Sean Anderson <sean.anderson@linux.dev>
> Sent: Monday, May 6, 2024 10:31 PM
> To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>; linux-
> phy@lists.infradead.org
> Cc: Vinod Koul <vkoul@kernel.org>; linux-arm-kernel@lists.infradead.org;
> linux-kernel@vger.kernel.org; Michal Simek <michal.simek@amd.com>;
> Kishon Vijay Abraham I <kishon@kernel.org>; Sean Anderson
> <sean.anderson@linux.dev>
> Subject: [PATCH v2 4/4] phy: zynqmp: Add debugfs support
> 
> Add support for printing some basic status information to debugfs. This
> is helpful when debugging phy consumers to make sure they are configuring
> the phy appropriately.
> 
> Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
> ---
> 
> Changes in v2:
> - Use debugfs_create_devm_seqfile
> 
>  drivers/phy/xilinx/phy-zynqmp.c | 40
> +++++++++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
> 
> diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-
> zynqmp.c
> index b86fe2a249a8..2520c75a4a77 100644
> --- a/drivers/phy/xilinx/phy-zynqmp.c
> +++ b/drivers/phy/xilinx/phy-zynqmp.c
> @@ -13,6 +13,7 @@
>   */
> 
>  #include <linux/clk.h>
> +#include <linux/debugfs.h>
>  #include <linux/delay.h>
>  #include <linux/io.h>
>  #include <linux/kernel.h>
> @@ -123,6 +124,15 @@
>  #define ICM_PROTOCOL_DP			0x4
>  #define ICM_PROTOCOL_SGMII		0x5
> 
> +static const char *const xpsgtr_icm_str[] = {
> +	[ICM_PROTOCOL_PD] = "powered down",

Protocol saying powered down seems confusing.
Should we say None or None(power down)?

> +	[ICM_PROTOCOL_PCIE] = "PCIe",
> +	[ICM_PROTOCOL_SATA] = "SATA",
> +	[ICM_PROTOCOL_USB] = "USB",
> +	[ICM_PROTOCOL_DP] = "DisplayPort",
> +	[ICM_PROTOCOL_SGMII] = "SGMII",
> +};
> +
>  /* Test Mode common reset control  parameters */
>  #define TM_CMN_RST			0x10018
>  #define TM_CMN_RST_EN			0x1
> @@ -788,6 +798,34 @@ static struct phy *xpsgtr_xlate(struct device *dev,
>  	return ERR_PTR(-EINVAL);
>  }
> 
> +/*
> + * DebugFS
> + */
> +
> +static int xpsgtr_status_read(struct seq_file *seq, void *data)
> +{
> +	struct device *dev = seq->private;
> +	struct xpsgtr_phy *gtr_phy = dev_get_drvdata(dev);
> +	struct clk *clk;
> +	u32 pll_status;
> +
> +	mutex_lock(&gtr_phy->phy->mutex);

Do we see any need for this lock? This function simply read hw register 
/phy members and decodes it.

> +	pll_status = xpsgtr_read_phy(gtr_phy, L0_PLL_STATUS_READ_1);
> +	clk = gtr_phy->dev->clk[gtr_phy->refclk];
> +
> +	seq_printf(seq, "Lane:            %u\n", gtr_phy->lane);
> +	seq_printf(seq, "Protocol:        %s\n",
> +		   xpsgtr_icm_str[gtr_phy->protocol]);
> +	seq_printf(seq, "Instance:        %u\n", gtr_phy->instance);
> +	seq_printf(seq, "Reference clock: %u (%pC)\n", gtr_phy->refclk, clk);
> +	seq_printf(seq, "Reference rate:  %lu\n", clk_get_rate(clk));
> +	seq_printf(seq, "PLL locked:      %s\n",
> +		   pll_status & PLL_STATUS_LOCKED ? "yes" : "no");
> +
> +	mutex_unlock(&gtr_phy->phy->mutex);
> +	return 0;
> +}
> +
>  /*
>   * Power Management
>   */
> @@ -937,6 +975,8 @@ static int xpsgtr_probe(struct platform_device *pdev)
> 
>  		gtr_phy->phy = phy;
>  		phy_set_drvdata(phy, gtr_phy);
> +		debugfs_create_devm_seqfile(&phy->dev, "status", phy-
> >debugfs,
> +					    xpsgtr_status_read);
>  	}
> 
>  	/* Register the PHY provider. */
> --
> 2.35.1.1320.gc452695387.dirty


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
