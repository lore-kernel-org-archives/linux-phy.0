Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFE36C001DC
	for <linux-phy@archiver.kernel.org>; Wed, 26 Jul 2023 08:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oqMtw/iIp58dNPF4knsRmw6iBDPs6UcQ3KN1HN93lyc=; b=yNU3LWD0I0C+zj9LJY1wS6Ny9z
	0yveyMYjPLDA1OkbGycRO3KTloUPRrHbkTCoEF9pmSNlV4DGTuGO22XvJmYFVRvyyGa8iCDDrO3IY
	4MsJS900JlMcZ56/mbwO1FsTQIaBoYHJsRBetutF8ukwMgcxjZUfxAqG6R+9GRCdqZbWrkIorpgDc
	nQfPx/Bsyb7XzUNHqKvZEoM4EZ/RW5jvvBcPG2Pn+BTXu9ptFNsOK8kaEiA2fXgQDJ7iqCSgQqRYm
	pwB2i6OYxdXeYylXoCUMd3rmubC+NexHQmed1jCvwqbJXcCpueUSrQZi0M5JiaDM/O5psHKjsr7tv
	dASDdT3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOZel-009Yf7-1i;
	Wed, 26 Jul 2023 08:14:03 +0000
Received: from mail-am6eur05on20612.outbound.protection.outlook.com ([2a01:111:f400:7e1b::612] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOZej-009YeN-1x
	for linux-phy@lists.infradead.org;
	Wed, 26 Jul 2023 08:14:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QFBjADjDL65U+xTpfvH84ibdvnWC5EJyKHERbEXN1rCT3N4IkRQ1BFHeGE/a/mSO7DAp/Enn0zfUhdLbPF5K4KJSqHLwvLKx02KpvVqU4QnKXz2Q6RNpTI7CG6jNReZX/lSWlNgEsM3lx7J8E9Wo/FMPFgCLtoDW+fTJSdng+cSLQyMi5TqNppOYtEL0pZ8Sd22OK6tXPWScEWbJQRZ1krWt1JdqViWVme3nkFSyqd5e+OINzOp2kmwW3nkNfxrRR8XNHv/GdC/fXnQYk+37CojVqgJNRFHpYJcsrsaTm85EClXxX2VgZ9Qr0wShgiBGIEWlAjF8jWX92BRD49mBcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yyf1W4teB0Q/JCspmM4/dBe5RhUAizA+5P6ldJfiXYM=;
 b=dsnhy2IpEZg8/YtvrJVRExzAdEbLqHsBZp9hSaG2xGIFxeY7Id5nxPWd4migXxVSlZiXC3iTBY9y+j8j52tXW5fUo2bNkwbdFBHTKzyo7d4UD/1X4yHYX4BAP8CNItgUCMHy6Vth0K9xTJ5Khqht+zw5NedNb8hAoxTRr4RoCz3Mv5htJoQcCKPnJhQq6eg67xo1CQqiLwgrlMnIX3lJrkdJdfzDjh8+FR1b6rPFlmNIKywmdvYCrvA9yt2XDuOvQEoENK9fp/446GuMG2UqKkhNUu2OA9H+1vFV8OIexSskZI2DVft1X0y6JxSogLEeGEKHxe+F85NJcQQfG6hbtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yyf1W4teB0Q/JCspmM4/dBe5RhUAizA+5P6ldJfiXYM=;
 b=WE/+j5ug3d9lPBN03ZiGHSMQFt8Ed1PG9qvRFsuxDmJFtEa4/VThGBX4PQKpI8MqsWJw6Sbi1vzrk3oYwZJc51bmXcSn/yWXK47uCl1iWoalQvVKfrnCN8yM42pO1C9HCtvbhRkOxlmwP8UV5sgQuKre/ljHFhiYpwn4qW3vypy4d82liqTvho5UPEjomRHgpXsZ4DHPUv6X6BrJFcUazLl7VmK4j+vLkMVEims/f3xzjXiic6mZH4h3gX3r9AWrP/4is8SamSY7FSK4H7RPBBfkop/WFyYvqFtjlBHpMyI/3VfhS/d9sMBVIsp8CBW7uyWPUVQPIyM0f7LSx0TrmA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=suse.com;
Received: from VI1PR04MB7104.eurprd04.prod.outlook.com (2603:10a6:800:126::9)
 by DB8PR04MB6777.eurprd04.prod.outlook.com (2603:10a6:10:11f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Wed, 26 Jul
 2023 08:13:56 +0000
Received: from VI1PR04MB7104.eurprd04.prod.outlook.com
 ([fe80::7ef4:97ef:66d5:f5b3]) by VI1PR04MB7104.eurprd04.prod.outlook.com
 ([fe80::7ef4:97ef:66d5:f5b3%2]) with mapi id 15.20.6609.032; Wed, 26 Jul 2023
 08:13:56 +0000
Message-ID: <a11f0ec8-7eaa-aa3e-8b86-555e5dbe6e3e@suse.com>
Date: Wed, 26 Jul 2023 10:13:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v9 2/5] phy: realtek: usb: Add driver for the Realtek SoC
 USB 2.0 PHY
To: Stanley Chang <stanley_chang@realtek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 Flavio Suligoi <f.suligoi@asem.it>, Roy Luo <royluo@google.com>,
 Bagas Sanjaya <bagasdotme@gmail.com>, Ray Chi <raychi@google.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20230725033318.8361-1-stanley_chang@realtek.com>
 <20230725033318.8361-2-stanley_chang@realtek.com>
Content-Language: en-US
From: Oliver Neukum <oneukum@suse.com>
In-Reply-To: <20230725033318.8361-2-stanley_chang@realtek.com>
X-ClientProxiedBy: FR2P281CA0118.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9d::10) To VI1PR04MB7104.eurprd04.prod.outlook.com
 (2603:10a6:800:126::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR04MB7104:EE_|DB8PR04MB6777:EE_
X-MS-Office365-Filtering-Correlation-Id: 566a16c2-8558-4519-04f0-08db8db041c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RC7cd0QvVULxXyrCB/HXQuhBuU5N0bbXXnKK/1wwM3hmnNidxOPc28JQiAkWHR/jI4SWFpVrOy0tTldgtEnr/0j2UOI7r8/DUROtNPSizPdVCTUBRdsLcIOe/ImFTcFMVVPAqF2AMjYUzbj60oz851juF9IivQxPGXZHY9U877uy7lIMIAYAZXVnKOsuq3Y4yc5/ykHXuLR8bSXNr6LLwd4h24+RAODmnIVoulA7TPlmx4PymlkmG9ZR3ecSupG63tPX7Gyd7HI9hSLJaWOBJLjxGXEYGjk6+1ZjH7ZesDgnkfyi2gSMvVUjs6TBw+ygigxyTh9jJucAjzOsiDzzv0alqMPU+bN74snKhqDKnQ3bkky4zarHIOxdKVaTqaF3H5RgxDM5xnNPluWD/QQ1OI6qmYuhhiYjTOL5IqyiWJG/jBMLKW307sB7Ouu3z6F67oKSQhsvwdy2onjh1yCKwO6bZR4Ir8RzDapZfjUTL1DK+kaP7W7D2n9Wm3hBzh7QSQK9rQed8YrzF5M3xbc489GmFrwInfilFj0m988jhXKdYPbX3IkhTWlE16VKRudM0Ky49Kk6VB1K0BaijHBduU379eipWqgldYgDRpQ6sEgWnTM7pFjbad2ngKZ+X5i5YBG3I/rYq7HNJzo4g+oUCw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB7104.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(396003)(39860400002)(376002)(136003)(346002)(366004)(451199021)(6666004)(6486002)(478600001)(53546011)(6506007)(6512007)(4326008)(110136005)(54906003)(66476007)(66556008)(66946007)(186003)(2616005)(38100700002)(31686004)(7416002)(8676002)(8936002)(5660300002)(2906002)(4744005)(316002)(41300700001)(86362001)(31696002)(36756003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VmxiOHFucWVjWVZjZGVIc3kvOFhKL0N3S1g4N3ErdktMN0tuOHJGVXNDL3Jz?=
 =?utf-8?B?Q0M2VHVOTXpDTlFrbWtUQWlUQU1WZ1pQQjk1WDRBZWMwRlAvZ2RBcll2UEhG?=
 =?utf-8?B?K3VISWhwSjJvSklVaU1uaXVFR2RmNWZWWkhuSW9vQURLNGxvMzRCR3Q1SGVD?=
 =?utf-8?B?czlmdm9UZURIWlIzYTdZbFJVZTZteEpQaFd0T3pUcEJjNUhnOEpGMmd5Z2U2?=
 =?utf-8?B?M2JmNjBhL200SlpDTHlNOUVBcDd5NWpoN0pIOHRCNkFyK21VTzlxVVpsb1lR?=
 =?utf-8?B?cnpzVDRzUnpmS2ZxbTR0bFJGbFo3eUg5UnBZSDcvcStSamhpUTNkNTl5YjNv?=
 =?utf-8?B?V1FBZWY4VEsvUU9zeVk5Yld4cTkxTDRRNDZkQlN2WmUxS3Z0S2pkMzFPK1RJ?=
 =?utf-8?B?cXlsWElrdkRuTFEwS0RDTmVqdDdycHVucjBaSmxHK09LZis4cmhVTm5BMlc3?=
 =?utf-8?B?MjM3d1h2RDBCOEMvdjVBSGpRWlRHNGRGSG9yM092ajlFK2RlbWlYbEpwSXcr?=
 =?utf-8?B?NDVFc0FydWMrT0VVMzI3V1BJelltRmJCY3poSWthODdHa2ptRWczckZFTWVw?=
 =?utf-8?B?bS9IVlAyT0dDTnFHNFEvQU5NUHgwMzd5bHVDYWhzalJDUiszT1V2VWpzZE5L?=
 =?utf-8?B?WVRmdDYrZmVDYTM1MHhSV1M5bzN4Z2NIWWNXeUV1NW5GUjlzWEl1V3BDVjBz?=
 =?utf-8?B?MURtZFhYRUZ1K01UVi9sazhyaGRCdVhBUDNiYWpWcFA2NkRMV2hmWTNyc1NR?=
 =?utf-8?B?NlNBM3JuVGcvTWNId1NZL2cyVE9kNnYyMUFoTlI2UTcvaFpURFZpT25JNGVC?=
 =?utf-8?B?dkhVcnN5OVNXSEduRzRTWXh4Zy9NS0VqYUFIdDNoS1E5M2RYbVdYTWVvMEN5?=
 =?utf-8?B?aUJRMjM2UjZsaGN5NHlFdmlkK0NuNnRwdE04RmdiSkgxbndIMVlGR011TFFn?=
 =?utf-8?B?TkRWc3pVS2VBR3Y4bFNuR2lERll5MkwvS05RU3VHNmd0cFBIZnhwUlM1RVRn?=
 =?utf-8?B?SXBNMWFZaTFyODdUNXk4OUFSNFd3ZmxhU0hkWm9ZdlJua080d05IZWNDMk5G?=
 =?utf-8?B?aEJLaThFcG10YUNkSzFkK1I1Z3gzb3hCOEl4akI4K3loRXJRMEkvRXpSZWNM?=
 =?utf-8?B?MkNLYzBycGZ0WElWQjJySmxsUkRQd3lQeGpDRWFpNHZJWHBIQTFIdzgrWW5P?=
 =?utf-8?B?bGVSWEEwbzRWTXVKYWRlNUl4ZDFRMUhMQ3YwSC9EWHIvMTd0U3hZRkJJT3ZB?=
 =?utf-8?B?Wm8xSjZuMUZsdzZ3dlZSdnZJOU9kczJYZkFRWitubGwzOVlycGs1cHZGaWQx?=
 =?utf-8?B?REFma1BuNDZCS2tQSjlrOGU1b1IwNnIzZ2FNRURMSk56RTljNWtmS0JvVjM2?=
 =?utf-8?B?dzJLOWtJOTRTTDc1M0hlWTNSWDVxQy9nUVVNNlg4WE1aaWZtaFBYcVRGSTNo?=
 =?utf-8?B?SkpTMHIyYStsOWVJSngyTkgvdmZBNHMyUGRsZEh6SEJIVG1hVmpTaFlLWmI4?=
 =?utf-8?B?RHBsSU5GNUJJayszQTlJdVJjbUl6SWVTLzkyWWFaUDhHemdKblJ2S3MyK04r?=
 =?utf-8?B?L0ZDd3BKS01OS1RkZWMrcCt0b1ZrYTUxS1ZSclpFUElBNWZEckRFWGlQQUEy?=
 =?utf-8?B?a3VSbyt1TEdWQ3NoQ1k4VTNSOWlQQm5uaDNSUkY1N2lSZlpFZ0ZyY3gvVlBi?=
 =?utf-8?B?cWdWb0RPbCtGbGVZcWE2R0xBREJLclByOVhwcXV2RXNIcGc2RWo3ZUJ6QkJQ?=
 =?utf-8?B?QUtnaWlLT0lRdUtEUVZNTk9wRW9Mc0traUF5blB6Wkc4d3M2VlltdlpEMmdW?=
 =?utf-8?B?VFhWN1J1R25idEFWVldaYThSbzRRTHJLa0JSOFhxQXlsdTJ5YmljUmkrYTVU?=
 =?utf-8?B?WHJ0SWhCNlU1Z2hNY0FWbVFINVlramZseEU3SlpsL0xGMjY5c2lVYncvbjJN?=
 =?utf-8?B?RzV2Z2NtWUprSVMyMFoxeXVrYXFDaGZoUkg4c2lqaW5DNDJ4a0Z5M0NVdWpw?=
 =?utf-8?B?OSs3OURBUFlhZXRZSHJUS0hPVVRQNHA5YXBTWWFFUUtDaWt5LzBNVTkyNmdV?=
 =?utf-8?B?V1BhcTBuQXZ6eU1la0ZFcHMzS0l2TlBUY2NXTThhS2U1ZHVXU0xOZ0dNSExl?=
 =?utf-8?B?S042cFdBU1VaaFZTVStRM2s3cU1oRUhLUGdCVnVONEl4NE4vNHBiMysyL0Z1?=
 =?utf-8?Q?7VMDhDEW1QN4T3Y5hysj6nc=3D?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 566a16c2-8558-4519-04f0-08db8db041c2
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB7104.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2023 08:13:56.2397
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nKG3vH1llCuTwD43/9rYPK2RIjPRlIn9Zw3kmWe7MusPHkZfmC6cmyuxKowyVBs0IcUeE9/JLiVGO1SLesXDvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6777
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_011401_681448_2B78B8F7 
X-CRM114-Status: GOOD (  12.46  )
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


Hi,

On 25.07.23 05:31, Stanley Chang wrote:
> +static int get_phy_data_by_efuse(struct rtk_phy *rtk_phy,
> +				 struct phy_parameter *phy_parameter, int index)
> +{
> +	struct phy_cfg *phy_cfg = rtk_phy->phy_cfg;
> +	u8 value = 0;
> +	struct nvmem_cell *cell;
> +	struct soc_device_attribute rtk_soc_groot[] = {
> +		    { .family = "Realtek Groot",},
> +		    { /* empty */ } };
> +
> +	if (!phy_cfg->check_efuse)
> +		goto out;
> +
> +	/* Read efuse for usb dc cal */
> +	cell = nvmem_cell_get(rtk_phy->dev, "usb-dc-cal");
> +	if (IS_ERR(cell)) {
> +		dev_dbg(rtk_phy->dev, "%s no usb-dc-cal: %ld\n",
> +			__func__, PTR_ERR(cell));
> +	} else {
> +		unsigned char *buf;
> +		size_t buf_size;
> +
> +		buf = nvmem_cell_read(cell, &buf_size);
> +		value = buf[0] & phy_cfg->dc_driving_mask;
> +
> +		kfree(buf);
> +		nvmem_cell_put(cell);

nvmem_cell_read() can take NULL as the second argument.
You are throwing away buf_size anyway.

	Regards
		Oliver


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
