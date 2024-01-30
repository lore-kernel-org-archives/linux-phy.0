Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4EE2C47DA9
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jan 2024 08:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Jd1PD42oC/4Eb/ky7l+chKGA99zM7FNDtyXapuPiALc=; b=twOLAQSPG1VqC+Mcu8RoodRGXh
	uc3OyoNvTSVNTv7z3meosULRO57twK9VyjJ9FJsaY1Hjq0MHYDIK1D9cWvlTQZD4BJeodoESyO2YL
	rT2efedh3feNvX7oasxeWihnOCNF+mZxegK0w8i0XifJUt42X5ou1ScCf3aodirRc4KqRrErHiPez
	Q++uehIyiytnZ0oABnXCA95LPZJKHQJeStLIaqoWiBA6TM4tGfRsH/yQz6isTc1/pgESaCwzElM96
	UN8tkoW1KEgUpK5MEmwmFMc9LsIgYJcjdUYXsEBZphKLsCk71OwTvQy7tX/WaACrhe6kD6sv3LGS/
	VsVJHz3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUjR3-0000000FhBf-1lKf;
	Tue, 30 Jan 2024 08:25:37 +0000
Received: from mail-he1eur04on20701.outbound.protection.outlook.com ([2a01:111:f403:260f::701] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUjR0-0000000FhAM-07yh;
	Tue, 30 Jan 2024 08:25:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iR58VlghKotmUNMunbcT0ktsRR73SJvgZGei0XjVatLjKH2/VsjJml7NRU7XAxpEAVrBqEbHIBPmH+n1eJdllto8NPrTmk2qX4sXUrdFHjq5l2UF7N51SiGH20diO92ukFIK6UDb9i7XRE7JasT3+HGPS7MdsL2HWVMD3QC/BQWfPS2dIcUjmr8QYR4+WQhQ5vE4VZx0uslU8aQIEgb0OqwzEQ67Iki9H5VwBVYW0i0lws8JBn4+++JCb1jwkD09DlaNlEfVOParzWTs9FIieXDXbDu/ypqIK2jwtkAISRG0LR+/1gUayk9F0wzrSJeUhDHChYwGr3Xx+Q4cF+qXEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gRzJrSQRLnQSP3doCEm5XkoV1ZJRXbxt9ESr2VUuhBA=;
 b=XhhuIRLhfNDDCq7VRxGwg9NKMbecFu7MyMQYq+5QdoB0XS5kQ2LUu6gSomcYB+NT3OucxJqaYAQgjWc2+lsY6oMfi6fMNuFssEuGlcflySKT+BkAX2l4rIYf2IEVxPiOMQ/FcbNDmI0HR1qN+9CLviE0uJS5Cn4D8WN81veBLDTzEEuRwoJTBOtEZMvxXxmtnBlC7nuJ4zUoa81BnpWjIhBEg82ixRZHNtoHkbHGJDTZ4y41kEblDQPcU+eCJk6Ubt0Ub1w7Ke4VvJs30U3SujxS72LL43AIt4wuBKEmZ/+G1XD5vd0hyaF/GQk+whlpCyDjFNEmXPcmkL1R3fkTwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gRzJrSQRLnQSP3doCEm5XkoV1ZJRXbxt9ESr2VUuhBA=;
 b=QLvSls/w3eBeiF3nxQjaHfJePD9IQisOPAJGzqj4bYEZjvSCji6n0ApSsJdCTJNl6TrR+yWT3iKgdXuL7n2JAJYzrWAAEQoKNO+Y6fxNaGVNkwKBIp0bzjUnHl8215NvMRbW16hpRjg5kn6GvrTMkqXe7O9U6Y3lah2N9ZdX/aU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axentia.se;
Received: from DU0PR02MB8500.eurprd02.prod.outlook.com (2603:10a6:10:3e3::8)
 by VI1PR02MB5936.eurprd02.prod.outlook.com (2603:10a6:803:12f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Tue, 30 Jan
 2024 08:25:25 +0000
Received: from DU0PR02MB8500.eurprd02.prod.outlook.com
 ([fe80::4c56:a71b:d42d:11ba]) by DU0PR02MB8500.eurprd02.prod.outlook.com
 ([fe80::4c56:a71b:d42d:11ba%3]) with mapi id 15.20.7228.029; Tue, 30 Jan 2024
 08:25:25 +0000
Message-ID: <6568893d-13c7-ef1f-9c3f-88de0701c7aa@axentia.se>
Date: Tue, 30 Jan 2024 09:25:21 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2 04/15] mux: add mux_chip_resume() function
Content-Language: sv-SE
To: Thomas Richard <thomas.richard@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Haojian Zhuang
 <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, Andi Shyti
 <andi.shyti@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Tom Joseph <tjoseph@cadence.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
 theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, u-kumar1@ti.com
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com>
 <20240102-j7200-pcie-s2r-v2-4-8e4f7d228ec2@bootlin.com>
From: Peter Rosin <peda@axentia.se>
In-Reply-To: <20240102-j7200-pcie-s2r-v2-4-8e4f7d228ec2@bootlin.com>
X-ClientProxiedBy: MM0P280CA0057.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:190:b::17) To DU0PR02MB8500.eurprd02.prod.outlook.com
 (2603:10a6:10:3e3::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR02MB8500:EE_|VI1PR02MB5936:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c71b344-6f10-4607-3003-08dc216d0214
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wFBb51cV8dFj2pgVU9RaC9xcJx1Z9cUoXPjovZIwSYI7YbFoaF64yVH2yAr8Cd0JfCrPz79gvkXKEXKbU+wnYRex63GtI6iVPIzlWMct8ulZ6nvoMBprG9V8Qx9Z6ur0vdLc9f9S+HUhysK6Sd+dPqjNDA/z+vk05dsOzJaSA1BDHtDU+q0Mm4OYAfK1MkCH2k+se4NzW+6UmSxlB+6MLq85QvOD23nDhBP+jZxigFGeg5M8b7VHUR3u7phD2ufIQP87w3I1bHlQtOVjndNv2PK6xmp55bLBalaYNBInvHAMMZXuvPpS/kalwhi0n6nFdzrNXrv4K9JjDfrE9C+vaR1M5sb43vSMu++80o/dmWIvMVc2MYBHkeFRJ2GAu0zTNYJlbUV1bcFf6esBdGre7M0bbeKbwdFoOzmtCiAN4H1EDKoG15vICJxFuiKvCIC54mXp4Hd1paZP8Dc3XL3izm+Pz3qtxbYswKuZMzFcuttqJUdKNjHi8pPN7t0ZzPqLk2wCEIpgFqYGohxiYfn+OBl9Vb/oywq8u9XDBlbrZsMZmt6AMvFTTMZ5kT5hUlaxZq6ftYY8ibSWLcyLrAA0EdaCoc+RIlYmm4/8u1VeOCf/dDyedSOY5Nv1ixpOWLFaQQaO3Jt3Q7mn+vJTDluEywPyH1URQYRJm+ynyyCxm+4=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR02MB8500.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39830400003)(396003)(346002)(366004)(376002)(136003)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(316002)(4326008)(8676002)(8936002)(7416002)(2906002)(5660300002)(31696002)(86362001)(110136005)(66476007)(66556008)(66946007)(36756003)(6486002)(38100700002)(6506007)(6512007)(478600001)(6666004)(83380400001)(26005)(2616005)(921011)(41300700001)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TGtwU2xKZUh3dHc1Tm5YZGdPUEphMEVqL2xkbmwweE9nYWhwaWNPcEVMTDBp?=
 =?utf-8?B?VTVwcnkwbG5zMG9zaXVNUVd6c0NKV3I2YjV4TVZlNU5zV0E4TWQvMTN2NWdw?=
 =?utf-8?B?bzA3WGFuRTRqMlozdzBUa3owNGMyeGxPOFFqeWN2MlVLaTNwZFZLdmNwZUNv?=
 =?utf-8?B?YnNnK1dQOGhpdmJnTkJ1QjRnNmNqRzk3U21PeUxnc0VEVjBBWkhodkljSnl1?=
 =?utf-8?B?OHFpOXgyeDNsM29Lb1p3YUd3aDJ0SElVYnJONndsK1BUM3ljLy9TendoYlF6?=
 =?utf-8?B?bSt5SVNFNC9FbjdWK1FId1hLN3dTMWljcWNNNGh1T2wwUGorSkFQSEpXNVV6?=
 =?utf-8?B?RGpRZFNQNWlCTExPNEhUWmxKazFFOCtNUUhSWFZXTmhodmtRK0ZOVTZOYlJ3?=
 =?utf-8?B?ZnRNZXF6bVZrSHo2Uk9IVVpLYzJRa1ZYMUVSRWFWYkhldjU1NXcwU0ozQlBv?=
 =?utf-8?B?YzZQT29idEVZZFFUWXUzbzNMdjdTcXR2WXVPdURXdzJndGN6SHZHZGlEV1FQ?=
 =?utf-8?B?UkE3cS9WYWJpUXRmb1I0Sko2eUpNMWRmY3lSMmlHb3ZpMVNMNGZWVS9ZNFBv?=
 =?utf-8?B?Y05xY2FIbTcrUHFTbUQrRFduRkV3cE5uVlZaSWZaSnBxNzZ4VitsS0lhTGky?=
 =?utf-8?B?VXpvOGUyWk1nanVEMXdPdVFFcWh1dnFDcU0yWEgxRjdwYUQ5RmlJRkcxZFNz?=
 =?utf-8?B?R3ZQS3hCckE3Q1AwT2IwZ091RHo4akJBbUlHTkxMcXJNb1BSdkQ4MEpZaUN4?=
 =?utf-8?B?emxtekExc2kzeVE0cnEzSVZEeXpkandjcVNsTmhHZ2E4RVF2VGM5cURTSUhH?=
 =?utf-8?B?eGo0V3gzN2o3U1Q0d3hEa2RVWVRpUkJkUHlKT3czbmlDVmRWdVJ4aTBkdUZC?=
 =?utf-8?B?RFJHb0RtL2pCRzBvL1gzNFJ6MmtWSjJ5R0lPOG1GeTBmQzVxUy9Fd1BrVnJI?=
 =?utf-8?B?cXEyMDV1RVZBYTljVUNIZFlqNjc3ME9MZVR5NXFIUm01MVNrSXBSTTM1OHBF?=
 =?utf-8?B?YzdmdnhmS050SURlc0NOa1plZGwyb1l6RzZ5Q29EamNxOExheWpZNnZMSkRK?=
 =?utf-8?B?YnkzWTNsSjZ0Sk82MXBOYTk5WThieWdwc2lWcVVOL3B5VlNGOXJtR0tSVW5Z?=
 =?utf-8?B?cFVEblEyYTRic1RFbVhDK2ZzMHQ4VTRyVzYzU2VESjhyMnU4bzBnZ0JJNWtz?=
 =?utf-8?B?ZStjUTlEOE94NEtvWUhJdlFqZGxEMThETk5YbDRxZUVpZHFRRlBUamFOcVRh?=
 =?utf-8?B?N2E4WW9HWHNrd3AvKzZhb1U1T25JeHhiWFZBMnk0NGF0bWl2ejE3bWRDT3Nm?=
 =?utf-8?B?eWdMK2VOcCthdlFlaWh4UGUrZCtzcVd3VkhmUmxXNkdPbVFZSUNGZ2pHZGpv?=
 =?utf-8?B?aHo2WllLMTBzWS9GOHQ1Q3B3VzJkTkhLUjRJb0J0Vy85WXN6cForelRqQngx?=
 =?utf-8?B?bENsNlU0R05iMHZHNC83anQwMXBDQ01HYTlPaUlPanFJYlZlSUE5YVhvdkpq?=
 =?utf-8?B?MUFPSHFvMGdJL3E2bFEybXdCRUVhNTdmMTBMOExFSWhPd3o1Q1VRUDg0VFlh?=
 =?utf-8?B?dGxZSCtUMUhWSUdQaVhqRmRDNDkvM2VWbVB2TGdVOG1MUDBWWFpsQnhYeVZn?=
 =?utf-8?B?SHJJT2FqS29HUitYWjg0ajVRaW9qejNBODZrUzVrZFJVYW40anh4UTRXM005?=
 =?utf-8?B?WEFTcHp1ZjFOeEtxUDFxUFByak5VNlIyanRUbWFGMHNlTHNBbjJvQkJUT0tv?=
 =?utf-8?B?SnFGY3M4dkpDT04rM2RKY0IwN2ZIWkI4VU5lNmQ2M1JHV2RRblAvUE8zTjM4?=
 =?utf-8?B?OFljcUtqWmg1RDZmU0RyZSt1cTU5Wm9ENTl1SWNKdE00OVp0RVZucGttMGNk?=
 =?utf-8?B?OUtXbUZhYnVOYUxyaUdLM1VicUxySlR2TlNBcnkxYkZEWnc3ZUswcmdOcXFJ?=
 =?utf-8?B?ejFGZDB6YzZodUJySWtPUzdGa0hzSVhkMlZWZnlyM3dRU1BlWkErZGFDSmVW?=
 =?utf-8?B?V0d1cmcxbXpweXFCNlEyTmtOVFZGOWY5NWQxOXh4SGhteFFmRHNDMmJLL1NG?=
 =?utf-8?B?ZFV4OGFZNGt0VkttV3NOVnBMNytkbXNick5HM1BmZ1B1aE5SK2p6aG0vV0gr?=
 =?utf-8?Q?b0xcwN9G1pzXA915Z9s6xwAvd?=
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c71b344-6f10-4607-3003-08dc216d0214
X-MS-Exchange-CrossTenant-AuthSource: DU0PR02MB8500.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2024 08:25:25.1781
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eqJVlZjfmz6iQUQ/qKs1u/d22La4q9Mh0Zjb/23Vwct2dVeZz5S1jSDF4fUq0h6s
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR02MB5936
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_002534_425841_ECC69933 
X-CRM114-Status: GOOD (  24.93  )
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

Hi!

2024-01-26 at 15:36, Thomas Richard wrote:
> The mux_chip_resume() function restores a mux_chip using the cached state
> of each mux.
> 
> Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
> ---
>  drivers/mux/core.c         | 27 +++++++++++++++++++++++++++
>  include/linux/mux/driver.h |  1 +
>  2 files changed, 28 insertions(+)
> 
> diff --git a/drivers/mux/core.c b/drivers/mux/core.c
> index 775816112932..896f74b34eb8 100644
> --- a/drivers/mux/core.c
> +++ b/drivers/mux/core.c
> @@ -215,6 +215,33 @@ void mux_chip_free(struct mux_chip *mux_chip)
>  }
>  EXPORT_SYMBOL_GPL(mux_chip_free);
>  
> +/**
> + * mux_chip_resume() - restores the mux-chip state
> + * @mux_chip: The mux-chip to resume.
> + *
> + * Restores the mux-chip state.
> + *
> + * Return: Zero on success or a negative errno on error.
> + */
> +int mux_chip_resume(struct mux_chip *mux_chip)
> +{
> +	int ret, i;
> +
> +	for (i = 0; i < mux_chip->controllers; ++i) {
> +		struct mux_control *mux = &mux_chip->mux[i];
> +
> +		if (mux->cached_state != MUX_CACHE_UNKNOWN) {
> +			ret = mux_control_set(mux, mux->cached_state);
> +			if (ret < 0) {
> +				dev_err(&mux_chip->dev, "unable to restore state\n");
> +				return ret;

I'm don't know what is expected of the core resume code on error,
but is it ok to return on first failure? Is it not better to try
to restore all muxes and return zero if all is well or the first
failure when something is up?

But maybe the resume is completely dead anyway if there is any
failure? In that case the above early return is fine, I guess...

Cheers,
Peter

> +			}
> +		}
> +	}
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(mux_chip_resume);
> +
>  static void devm_mux_chip_release(struct device *dev, void *res)
>  {
>  	struct mux_chip *mux_chip = *(struct mux_chip **)res;
> diff --git a/include/linux/mux/driver.h b/include/linux/mux/driver.h
> index 18824064f8c0..2a7e5ec5d540 100644
> --- a/include/linux/mux/driver.h
> +++ b/include/linux/mux/driver.h
> @@ -88,6 +88,7 @@ struct mux_chip *mux_chip_alloc(struct device *dev,
>  int mux_chip_register(struct mux_chip *mux_chip);
>  void mux_chip_unregister(struct mux_chip *mux_chip);
>  void mux_chip_free(struct mux_chip *mux_chip);
> +int mux_chip_resume(struct mux_chip *mux_chip);
>  
>  struct mux_chip *devm_mux_chip_alloc(struct device *dev,
>  				     unsigned int controllers,
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
