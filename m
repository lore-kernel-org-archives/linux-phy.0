Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31840C55182
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 13:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ZQgZYBsbL0q/zSaRnBvSHuCmQWdPkzGHitQ1x5s+BE=; b=JM5m4XMsBTuplJ
	a3w26/kQcuIcg7GQCBRoPvrC18MbOuqE26Dv/YsZWZNKBtnbQWmkX9XxeUoGfHuaz/B9NmA7BCJEy
	2g6OZmUHBxqiRZA5hK6ktbFqjqI+atbifVPUst5TfCSlQYwnVu7yN2tfhm+38OpGodnV61KT7v+eb
	h/JCcqf3MuFnPtEHDNGNE2U8Hao0LzC8MW2iq79d3tynYH/+9oIMFTzE5ec00I8Ps3XEl0wuGILBg
	Q5iHhZ1rhYMfu5a4yc3tXPmxkuJHnnAjdUqiarVV3SGttKXDS3v/mXvhsLe57FGWLabGmSf7bUtOZ
	kpEuvl4DLUWfak1/DklA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqsgO-0000000H9po-3nGY;
	Mon, 03 Aug 2026 13:26:20 +0000
Received: from mail-japaneastazlp170110002.outbound.protection.outlook.com ([2a01:111:f403:c405::2] helo=TYVP286CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqsgL-0000000H9pA-451O
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 13:26:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lbTR1QB/99pScWoXggGTMb/uWR74FHdiLV0Ub37PCSM7Yoa8k5LUnTZ/adL8I4yBFGFEi0wZv69x+d1Re5BPX1HNUCDiTC8xXN/TJvU6KsF61peyDMOQiMUJI9xrWTj6i/VMaCEwRuM6s4VaEPRIP7Ly+2TexBcs0Wa1GC9FeV0ahj5dgnQ1mpvtSRoy2le4CbaGVzlhSSmYL6eMYUi6okoXeSYZhcVW1jPOz3tCx6psTRCbuz3lGy0wza4jzzGUrYIFwDsCamwNA+vKCMn3yJovfImfEmkLaV+Kdeay6V7/rwmXOot4U8S6Bm+DlHYfx9LZtxJmpyBH7XccHg9fNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3MZtlx/TahbMVF12zExEMjqD8qSXQoMrGFeiZaIXHjI=;
 b=KED6fUWAuVPc1b3wR1fcNdpnE5ZsN86LNgIPYi7d76J2dn9OzkR+Zi28eSzwt9BF4OB2Gq9l74+icZDi5s536Wjgnl9zUtCNFyXv+S4+RztxTruKqFSIE0BIzSaY/SRg80L2Mnkans3FFq0An2cfRPQ8MEExcDSMe+TkQedriJ124ZHdRNUt0YBcVtTAKzWih6zUwAWuRwU/PHZpuwLqidJNh/yI8WRxDEZySfrsPK8tGX3LoKkWx9e01kyQZvo25MrjxQt/F5toILUpNYizdkHsGx+DsrNXNpUqzlu3qmqMY7A9XnCKGIEYdjmmWYfhTriWwj51wnetFn2+Kh3qeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3MZtlx/TahbMVF12zExEMjqD8qSXQoMrGFeiZaIXHjI=;
 b=Ui4AD2XDzwvXsn1aMZs6c3D/AvQXtbMSsyl0lxyHk7afOb5+CbkZIoCk5RudQOgOBU6T93X/OM+5CWZ00ZF3kzPLSQrcG3avNvGpWFEf3XSEEqJrbQfj9CHmY8rB/URnLRQjBwM2PvyFZaRd2BYaxUxX9Gr+ynK9nyJOBxn43FA=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by TYYPR01MB12795.jpnprd01.prod.outlook.com (2603:1096:405:160::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.270.17; Mon, 3 Aug
 2026 13:26:07 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::87d1:4928:d55:97de]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::87d1:4928:d55:97de%4]) with mapi id 15.21.0270.017; Mon, 3 Aug 2026
 13:26:07 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Felix Gu <ustc.gu@gmail.com>, Vinod Koul <vkoul@kernel.org>, Neil
 Armstrong <neil.armstrong@linaro.org>, Geert Uytterhoeven
	<geert+renesas@glider.be>, "magnus.damm" <magnus.damm@gmail.com>, Ulrich
 Hecht <uli+renesas@fpond.eu>, wsa+renesas <wsa+renesas@sang-engineering.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Sergei Shtylyov
	<sergei.shtylyov@cogentembedded.com>
CC: Kishon Vijay Abraham I <kishon@kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] phy: renesas: rcar-gen2: Return -EINVAL for out-of-range
 channel reg
Thread-Topic: [PATCH] phy: renesas: rcar-gen2: Return -EINVAL for out-of-range
 channel reg
Thread-Index: AQHdI0kPf97Mz7JxA0CNVzInMjQHSLaMUAUQ
Date: Mon, 3 Aug 2026 13:26:07 +0000
Message-ID: <TY3PR01MB11346B7C0EECC1BFBDCAE069386D52@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20260803-rcar-gen2-1-v1-1-4796ea6e76d8@gmail.com>
In-Reply-To: <20260803-rcar-gen2-1-v1-1-4796ea6e76d8@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|TYYPR01MB12795:EE_
x-ms-office365-filtering-correlation-id: 531e2007-caa9-4fc0-023f-08def162c6ab
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|23010399003|366016|22082099003|18002099003|38070700021|11063799006|56012099006|10067099003;
x-microsoft-antispam-message-info: s2ZkdxlfI7PvEFM9q12H8BKn6cyNK1vw6A3KufoyxxvycV+9XEPz0Kspg71QB4arU9s1zhZaJJLriNZeVzLBcQuvb8CEFJNjqG4/p8iXPacIX/k1KZBjqzecyWc4YDEv5EGc6IUkWbwrmbfXchlpkBEAUDtcesyCeQcCuoHUJa0+aVocnz7oS3WfhTuwFQQkJDbJ93+eonZB3kWsrDWBmPAcBqYz/t/TkynZsuvFCi/nDTnPfWZIT9xLYwwJDMKp5BA/jbHI/g/lsB350epqxdHpqKJytzusXSpzFtOZmRbIiOP6oQuCOaie76kGF1rj2xSugXlpTXZj4p2qci8lT62zIfjl66QfPIZn5+1ikCvr/S3Eg/5E5BDfXtMnAG2Z1nlpXbP4Kb3UBvzIB0b7Wamfaic+Zmymu9ouB9k5BIZrcqFBfADGXm2smnubliWz63GCHfM55ZeGMLOeGlXFhEfi4yVOdd8x3lmWbHgDphnTCchgmeNJ9BUkiodCzfRth+WCbYXKvzESc0K4me+c7VnLFhoNTDEKHaPSgn+B318q81eUIWppaZryCAzXcrb8MnKTbYEonXYdwRDJf7hwLKymUlXCqzgOwuxlXhitsqu8knCIAWAD6WOoWMF9KrogaN61KxRxN2lBePMtmLE/CURpFmJBnHyll04Rb3enWEVz7hYrAMRQ2gdQS3EF2aumuwiNq9WsBlRQwnyYXlq6i3HJ24qN2a6yHIexkw41pKM=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(23010399003)(366016)(22082099003)(18002099003)(38070700021)(11063799006)(56012099006)(10067099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UFdLcWhRNXh1YWdGaGRveFc1RU50dmQycFBTa0Q2Ri9rM3NrS3E0ZEtjM1J4?=
 =?utf-8?B?M1lYb20yQmI5Vy8xejhRazJiaGwrZFJla2Vuc1BwVGwzd0ZvUGZUOXJKcmF6?=
 =?utf-8?B?UDAxTU05cHcrUWtxcnNDaHRuaW1yVGg2VVJKUlBzYlF5KzIwb1RWcVRwbE44?=
 =?utf-8?B?L3dTWVlJVmp1NkFVTnFsOGkzUGZ2akR3RHlZRWF5amQ1OG5YTlg2ZmFESksr?=
 =?utf-8?B?Vm4vM1NCSG5CbU1DR0d4eC9KS1BQWDVGZXRDTjlUMnFFL3pQSEpPSFN0Qktx?=
 =?utf-8?B?ckdDQ1JxMUdwM0kzY2FTeDc4T2RHRmZtSVp3SE4vQkVaelBaZjBtQ24zTHlV?=
 =?utf-8?B?cFluOXc3Q2NISnpwRFBKbnF6OGRTTzhtZytEZ1hyN2RrRHRGUitrNzZCMkx5?=
 =?utf-8?B?YkxkRHRRZTB2RWNaTnlLdGl4M0FHaHdmTW5IUGlQUEZYazRHaGFyeG5Bdk0x?=
 =?utf-8?B?ZlVxOTdPNk12T0FwTDZ5QStNSXJQcWlMQkQyemFYQjkvdGh3TmQvS29wNGRY?=
 =?utf-8?B?anJmZEpYa3A3YXNyTHlwcStsV3BBUmJSbnY4S2s3bWdOZ3ZNN2xJREJOSnZa?=
 =?utf-8?B?UG5EOUhmK21yVW1Kd2djS1NDZWVHUEZYSWNZY2o1Z3RNQTB6RjVway8xSXJC?=
 =?utf-8?B?YnNJanU3SXNjVEM3OW5aV0tvVlZwMWVMVGVncXBMVVVrZTNlTG5URjhkVXR5?=
 =?utf-8?B?ZmhPYnZVVGlURGFYS2kwZzJQRzR0VW9HWDdnRWQ0OHRnbEJsdDBYREdsK2pa?=
 =?utf-8?B?d2doeDRFckFJR2tpb3I3TFl1Qi93N3pOUE91Yko1bFZiNVNKbGNueUlUNXps?=
 =?utf-8?B?UnU5N3VKRFJEVVZLNWNZTExSSUNlUWM3TGlBOVVIc29KWHlMU2tQS1EzTDlp?=
 =?utf-8?B?dnRsOGVqd1FmbFdwOUc3MU9zcHg1TTl2MlhLQ0huOUp1WHZZMTJ1eWR6ckx5?=
 =?utf-8?B?TUlyK0hCc293WGh0Z1RyREJxeGZOcXRYeHRUSjlDLzRYTDY5akYrS05UeUJF?=
 =?utf-8?B?dDI1eEEvQUludU9CajlOb0ZydldjWHJTbEtOQUQwSzFQMkJqam43My9iQ3hT?=
 =?utf-8?B?cWwzMUJ1eHBTSTlOeDBucnhzRW1UcjhnUEtDUTRGbmwzaENsa2ZIK1prMzVH?=
 =?utf-8?B?S2tyclRJL3FRb2N2TWRJWTBwczZLNGxVb2ZNdktIQnFoUnNiakZQTDNYUm1y?=
 =?utf-8?B?T0tOWTFhbXkyWUNJTSsxOWFTbHBEanRIYW9SVVVGa1hBRDU4NHA4dStteFdj?=
 =?utf-8?B?M1d5SmRTcjB0V2E5OHVyR2NhUFdDT2xrcDBwbnI5dzNvN1ltbER0Tk9rNXdn?=
 =?utf-8?B?RTlqdWVqRmFLSm5Mb2lDZVdsNmZMUkcrR1RCMEpsWXNFa3JWS0VWbzdRU25C?=
 =?utf-8?B?RDErNHpOSk12TXB2YkRWU2hIZ0ZpcGptSGkyTGhMU0RJMm9VUWphVitTYzA2?=
 =?utf-8?B?MnNKS2Zna3NhMVJ1Wk9WNjlCV0ZScnNhWWlTdWRhOEVLa0RBQ3N2T09NU0dO?=
 =?utf-8?B?ZXFUcUMxd3h4ZVliNDl2TmVFVEc5QnZRYUhHQ3lPbmQwb2ozNVZ3cGtnOXdw?=
 =?utf-8?B?QmMwMDEwK0k0TTRwSUVvT0VZVkdLdm9kclNBcjZ6Y3dQVlFIM09NTWdzSWFB?=
 =?utf-8?B?N0lJeERmeDJRRnFqY3loVDZOWnJHWlV1TFc3WE10R3pkWXlkRldZeVAzK3Ix?=
 =?utf-8?B?eldESC9xZ0NyODdWMjZ4K3RtZTc5M1RlRmRQclhUb1hnSjlPbU1zMU41Tndn?=
 =?utf-8?B?NVprQmxnVFQ3YnRhVTBCNmcwcEhGZFQ2UjFlMTNKYlZXUmpMV25hbnF0aUh6?=
 =?utf-8?B?Zk9iWVRDZ3pKTnp6VU5JQ1VsNmZmNzhpK2lqWFNNN3pSUGw1bmhOdENDcHBo?=
 =?utf-8?B?c0txU3laV0NvczVPRENReGMvVTViYkx4RnlUVndqcmtRYit2S3YwTWY2eG1P?=
 =?utf-8?B?UDAyTGl6eHlQKytJWVVTdEJkU3JuVXpBajZ2L2dhdGROL1dNTHlYNkVGdE4z?=
 =?utf-8?B?OE9uVGR0bXJ2Z2p3Z21vbmFEaWl2ZGwzVVF0UE9aMGlWM3dqMnB1VURXWG1Y?=
 =?utf-8?B?dlBiN2J4TW5aOVplbWszQXorQ2pHeXpad1phb21TTytTckV4b1FKSkcxUDBj?=
 =?utf-8?B?dVZjWS91dk9NbmFXRUZPSnlXYmNBdUZWcDhhWkovNDVONTlOamhDcEUxMHF4?=
 =?utf-8?B?VGhmMXRTQjI0VWRQUTdNVkp4ZEY3T3F6YlZtMDJyMjlQcGd0MlRZbXJEeldW?=
 =?utf-8?B?b0w3YmJDQzBFTDJTa3JqMlN0SzVtOHhuNUVIYWYvTlN2UWwrZ2k0R1dVaVE3?=
 =?utf-8?B?SkRWL3BER3M1c25adFU1VWJ4WXpscU55ZlZ6Ti9uNWVpRXhRZmkrQT09?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 531e2007-caa9-4fc0-023f-08def162c6ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2026 13:26:07.5154
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vgYpmZB3Y1eSlfNhLCFlzilCLXOW5IZkQhvyXab8uWy9Mu8iXvT24AEwPuabgwnyPZz/aquGhFwrFoJ59UM52CGuPYScMw1I9Nf0wrAgBCg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYYPR01MB12795
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_062618_013466_66BA9DA0 
X-CRM114-Status: GOOD (  18.62  )
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

Hi Felix Gu,

Thanks for the patch.

> -----Original Message-----
> From: Felix Gu <ustc.gu@gmail.com>
> Sent: 03 August 2026 14:07
> Subject: [PATCH] phy: renesas: rcar-gen2: Return -EINVAL for out-of-range channel reg
> 
> When of_property_read_u32() succeeds but channel_num exceeds
> data->num_channels, rcar_gen2_phy_probe() returns error which is 0,
> so probe reports success even though no PHY provider is registered.
> 
> Return -EINVAL in that case.
> 
> Fixes: 1233f59f745b ("phy: Renesas R-Car Gen2 PHY driver")
> Signed-off-by: Felix Gu <ustc.gu@gmail.com>
> ---
>  drivers/phy/renesas/phy-rcar-gen2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/renesas/phy-rcar-gen2.c b/drivers/phy/renesas/phy-rcar-gen2.c
> index 6c671254c625..f0858d8cc705 100644
> --- a/drivers/phy/renesas/phy-rcar-gen2.c
> +++ b/drivers/phy/renesas/phy-rcar-gen2.c
> @@ -390,7 +390,7 @@ static int rcar_gen2_phy_probe(struct platform_device *pdev)
>  		error = of_property_read_u32(np, "reg", &channel_num);
>  		if (error || channel_num >= data->num_channels) {
>  			dev_err(dev, "Invalid \"reg\" property\n");
> -			return error;
> +			return error ?: -EINVAL;

Can we use dev_error_probe() here as well??

Cheers,
Biju

>  		}
>  		channel->select_mask = select_mask[channel_num];
> 
> 
> ---
> base-commit: 415606a7be939835db9b0d6b711887586646346d
> change-id: 20260803-rcar-gen2-1-98f440b28b35
> 
> Best regards,
> --
> Felix Gu <ustc.gu@gmail.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
