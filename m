Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFCF5C4451B
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 01:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Ewml3JmIa+vVMuuplX1hArzAiNDxQ7Vh/aILqr2hC0=; b=h5gNigegFiKIZE
	pVzXdkvEhUJw71zFljfcGT0UmPTXdwjSnW/4niihGgwNWWSb1eoYDGCKTzIZuDnfztdn1tryvsbck
	upe/ofF19xMmXE9+7HwEWqYFqlxBvcRYFvFesO0J537NW7Mu9g9N1v89eTpJcRfDmXfVRtm3Kr5mP
	+oZy0ffrHZZQxW4mWYDvGxjV5qgL1ucQDlPUkOd5SPa+LyX3BqgQRdN+QyIqbRI9P/djKzKp+N9ld
	cJNJ6WR42pHNVqGbX/IPgKpdfJ3MQdk5qNm7xAX/DHRvsmepjSsGN5e5GwdoZawQAHGezQhADvlga
	iypGAQvKSsKjktrqg68w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlcZH-00000005a6X-1wUU;
	Mon, 20 Jul 2026 01:13:15 +0000
Received: from mail-sh0chn02on2104.outbound.protection.partner.outlook.cn ([139.219.146.104] helo=CHN02-SH0-obe.outbound.protection.partner.outlook.cn)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlcZE-00000005a5K-2Pr0
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 01:13:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZP/A/z+zL72aCdnwp+XNH+rjIQmL9GKWh1lkMmDjQLgTBlQ29k49IGXjOY1qZDMmPA3GGQCUBsuDSAcRxisF+YX2iZAvtj0FH5GL8yzfYOkjsFJr8PM07msa45n5Tkz+XpvZzTzeaDbCstb1J6ML2nXXsO64oGnOKTPpT4b319Ln8uTi0+0jQAljEj5IeoOl+aI3kMASmOvsvAmNrKO9sdMyrYwXyis1EUAWlb1K6S6RMSNcTKDSlpx9MTDUXnGSbirqgrPYQs+uDbHlyFZfYXcNwXUEKVSC0kR8S+rZvEhyDj8azG06h6gfvt+nCBIGO4S1bAeuG6yAHoL2uHmsJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gsbi1UzDh9fJhHX9vjtRjpL3K1yb9cHkxI5l0X3Xs/w=;
 b=mVLz9lM/byhLtC9n7GDUVkXDo6ulJjcFJLj6p5ULORRKm6GEY/FS4GPLhT/omxhgoX37Arkm4dvT/46tBgrqYm1NDbvm1hZisEPEaawf2QMuisf3eMtsPL49VuqlXAzh/Y6Vxq7R3Ji/rC8J0oxbYgbS/7yG2W40IixXO217SAHTr7C978hgcwvAKPSp9pHVNH7qLS2rUDH1PXugMy5Mes/fObBlozvTdiCj5umJADaDassZASUQLM1SADI3ZGd7GbIsgqhbxRwjwq+k+lTwr/9qwi00WsjonjCWQufKrqUwmPB8upxQTcAmqyCfUSSKIcAch6XdG611ADF6kDAfww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Received: from ZQ4PR01MB1202.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:17::6) by ZQ4PR01MB1316.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:14::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.223.15; Mon, 20 Jul
 2026 01:13:02 +0000
Received: from ZQ4PR01MB1202.CHNPR01.prod.partner.outlook.cn
 ([fe80::e7d4:256c:b066:850d]) by
 ZQ4PR01MB1202.CHNPR01.prod.partner.outlook.cn ([fe80::e7d4:256c:b066:850d%2])
 with mapi id 15.21.0223.015; Mon, 20 Jul 2026 01:13:02 +0000
From: Changhuang Liang <changhuang.liang@starfivetech.com>
To: Can Peng <pengcan@kylinos.cn>, "jack.zhu@starfivetech.com"
	<jack.zhu@starfivetech.com>, "keith.zhao@starfivetech.com"
	<keith.zhao@starfivetech.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: Re: [PATCH v2 2/2] phy: starfive: Fix runtime PM cleanup in JH7110
 DPHY RX probe
Thread-Topic: [PATCH v2 2/2] phy: starfive: Fix runtime PM cleanup in JH7110
 DPHY RX probe
Thread-Index: AQHdFpQPrs/3rXuqSkiK30SzgNUqx7Z1nKhw
Date: Mon, 20 Jul 2026 01:13:01 +0000
Message-ID: <ZQ4PR01MB120243F55B58351EF130DAB2F2C32@ZQ4PR01MB1202.CHNPR01.prod.partner.outlook.cn>
References: <20260718090054.444513-1-pengcan@kylinos.cn>
 <20260718090054.444513-3-pengcan@kylinos.cn>
In-Reply-To: <20260718090054.444513-3-pengcan@kylinos.cn>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ZQ4PR01MB1202:EE_|ZQ4PR01MB1316:EE_
x-ms-office365-filtering-correlation-id: 10690281-31c8-41fc-09d6-08dee5fc0b78
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|23010399003|376014|38070700021|18002099003|22082099003|4143699003|56012099006|10067099003;
x-microsoft-antispam-message-info: w8Erh9X8DdR+5EGh6XvMfxOfHuu4I0tXYKIFR47E/d72ELjwKERsuCWKvpQwFZ1hnvxMrD90l3zHmFBIR0eLYqP/0E98pzEqPVMQ/n9QJpT0U0YXgpxqoZa/Dr2iN+OeEeFXtY9hEXn27ZQUKpHMF0ZZf4aqu6p69XvgiFzVjBsiX48U4ph6j+Ure+62U2plI65j2i43irthsFSwo4U8DJ+qbhct2Std32jk6CD69KioVh0L2MsX64ayQ9bVIAg2xpom9WEG697Mrm/7A4OYNfvm59PjQMe3jbKx8KwRMMz63Q1xJr6gz6ppcBF/bOUyJE23WxtvqHwQiizete3zWkc3TmOz9jAVYd3xekXqxx52VqpfHJIC2tCP3JXtYJ8xkvEKdodPLX2EaiNJt3R6ZNm4qopaEfG6Yy0Qti9vffqwwjlfaTCDbwzQiRodQmid0E/eLazYy81CilawW6O9Kb2A5N27Ki8apDzCDdJaM0tyLCnMjzsEH+T/SVPDSOnqR1AJCkIq72lnS0MQYMOIOl8kKO6GNCUldi8Tzoj2lFPbtGNdwlcnqk/lrlnjAi9a
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZQ4PR01MB1202.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(38070700021)(18002099003)(22082099003)(4143699003)(56012099006)(10067099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6jGSiXa5q4mhK7f1vD1m3dGrst3gIls3hncUJC6napqV1h9cA4L9lgcKp6Lb?=
 =?us-ascii?Q?v3wMFg1CHpNwJGYznFDnKuHlebG1LzPYMqIF+IrDGCyOESW3ZWtSK0tNdnw+?=
 =?us-ascii?Q?C2o1hKkXKLXI0MMxGaQCtQ7+PuuU1SQbZycU/gw9ktU+nXk+VbSOJUx55xH0?=
 =?us-ascii?Q?r5fIQ7HkFwfIFeY9cwDoGWNOqXZ9bopz2rApbd7N4dYjtSRF52D6wfWN8rEZ?=
 =?us-ascii?Q?ccssXgNn0I4o8pFvAHJ1ZgMukAFVUhnFTJkbPm2BUwrgR6y4hNlI1biq7bss?=
 =?us-ascii?Q?IU54uf0PNs5zJ2bOs37qutL4UU12HlDeJrn18V0Gpuiv26q1pTfRw4ivQ0pJ?=
 =?us-ascii?Q?Hi//xyP2D5n/MCdaKI+zqzmuHIpC10BZk2iYjmA8X3KK+eysUr6NrA78thGB?=
 =?us-ascii?Q?KNtDmvU4EumnMqwWzB/GbkebfxLbirH6Gd0uEG2aYc1BDw9pHAYiVeQBGf3i?=
 =?us-ascii?Q?L2hV7jvkjR+Prfqz8PczjyqFGALlbcsTt0guao3w3lzUIq7gi+K8yGDo6nF0?=
 =?us-ascii?Q?EGXkZp1TdUANwiFtExriKR/QXsyMIboemJIuaZ3nHCvppWbv0Xul4Z7KsvKf?=
 =?us-ascii?Q?zf6toXZBkyaZ9+WADiixrpG3vyKFZx+AXOw0zD3tgQ8CnYCdceRbmwDeOvv6?=
 =?us-ascii?Q?s2Vp5Ds3NUk47HidSy1DGVGpZ9GqdAAUgJQEh+aeQgvNxHmAaBHyBk1xEgYZ?=
 =?us-ascii?Q?90hZOSsxbhssrrlrqXB4ZlzkBg0w1/fFE7SlRjbCcucpIjhlEiylmbzurTtk?=
 =?us-ascii?Q?IjZb5QfCSqYZcXOLVzaaFwOJfeavWg07TP7XWo6QwIXGhyj0KEMEze+h32lR?=
 =?us-ascii?Q?DWDYJBUQieRBh9KjXre3NCZygjoI6l7ArHOOw8aMgEJkOqke2f9DWiithhyO?=
 =?us-ascii?Q?ggOG221iDfSFFm34r+Ylh1/jWJQjujwKQIV73hFVkgPeayowVCz1RLsA2jVC?=
 =?us-ascii?Q?arve2SUUPEy4fwFzit6Lig29ntCkCdLF/VNAP5tddRb23c0B74GvxaNSPKz0?=
 =?us-ascii?Q?JSv/eGJF66jJGh2cORG5mXWrEb9zU2gP/wUgH+hBQ4yVw5y6FZUVGvSJ9S1Y?=
 =?us-ascii?Q?am1W9xoM1Jhkh4FXemAmW86WNvTyXJD++5DHTA4wq2BFJnRbzSbXxNn91Aco?=
 =?us-ascii?Q?5TwAZII2O7ldUv+vhg1IXMzBcAtOSUTwM8vObx9rLukRVx4kP14T/CNjQsHF?=
 =?us-ascii?Q?hyWtYzC6kSM3jdIGHoY/Jv98fZqDmELX5wEIuWllodcMKZAblukzuryQAsW6?=
 =?us-ascii?Q?Z6KETefMpUwKiOb6Gts60xNZ0f1kwXaZlJ6qxU9d6VepHvG8FawRAfpcv3YA?=
 =?us-ascii?Q?HXOGq2MpXCVtZ0RkW+gs8aeJJCsEvHETDvCtcrdGIqsBgIqgFzieOQNf/UFN?=
 =?us-ascii?Q?/ZGBjLWKBy8evyyFSXmMUMfzsWz4igzhW7Je9eoRxp2BPK2zQGV0WUYndm2h?=
 =?us-ascii?Q?53M+IkiCJBh/noXlhfZwjepk7Yy0Le8TvXit8US7N12vK1OY4RTE5m6saLqv?=
 =?us-ascii?Q?ZqjzGmVQ6CVHykLGL9UDBiLMEDel+EAimnyfvjdHzk6xU+Re8MNG9jApmVVs?=
 =?us-ascii?Q?0YqpkOxsnb8mScjHT6BuX5/yJkCUtpoQ/weissPVo116QDo2fQa5lYGI/ZFa?=
 =?us-ascii?Q?KfYSyJiCVakDZFAf6h1HnBzfVu/SB3z74/9ovAaiJflNUDq+87gz84/xI8Qi?=
 =?us-ascii?Q?Az9DmPbhOOG/azOxsAByU4656qwj5PETk+VafeJQ8q3YEHqChl6IlsaU0p4s?=
 =?us-ascii?Q?foqfgyQ2gn5xm/GP7dLc1Jh47o1sZWk=3D?=
MIME-Version: 1.0
X-OriginatorOrg: starfivetech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ZQ4PR01MB1202.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-Network-Message-Id: 10690281-31c8-41fc-09d6-08dee5fc0b78
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2026 01:13:01.9385
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bEaZIv2oszEssHL+cDmu57wsvbziBTPaeBPrApMAxzAXflkTi9k17bM2og1Dy0Tq2IqY96Gxt3fxgd1Fkc83XlrHaLBVNrMwVCZD9mj04/0knVFAfKAQCsGAL5xUTxaX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZQ4PR01MB1316
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260719_181312_616950_163BCE27 
X-CRM114-Status: GOOD (  14.31  )
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

> stf_dphy_probe() enables runtime PM before registering the PHY provider.
> If devm_of_phy_provider_register() fails, probe returns with runtime PM still
> enabled.
> 
> The driver also has no remove callback, so runtime PM is left enabled on
> driver unbind after a successful probe.
> 
> Use devm_pm_runtime_enable() so runtime PM is disabled automatically on
> later probe failures and on driver unbind.
> 
> Fixes: f8aa660841bc ("phy: starfive: Add mipi dphy rx support")
> Cc: stable@vger.kernel.org
> Signed-off-by: Can Peng <pengcan@kylinos.cn>

Reviewed-by: Changhuang Liang <changhuang.liang@starfivetech.com>

> ---
>  drivers/phy/starfive/phy-jh7110-dphy-rx.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/starfive/phy-jh7110-dphy-rx.c
> b/drivers/phy/starfive/phy-jh7110-dphy-rx.c
> index 0b039e1f71c5..d06f21ad6332 100644
> --- a/drivers/phy/starfive/phy-jh7110-dphy-rx.c
> +++ b/drivers/phy/starfive/phy-jh7110-dphy-rx.c
> @@ -150,6 +150,7 @@ static int stf_dphy_probe(struct platform_device
> *pdev)  {
>  	struct phy_provider *phy_provider;
>  	struct stf_dphy *dphy;
> +	int ret;
> 
>  	dphy = devm_kzalloc(&pdev->dev, sizeof(*dphy), GFP_KERNEL);
>  	if (!dphy)
> @@ -190,7 +191,9 @@ static int stf_dphy_probe(struct platform_device
> *pdev)
>  		return PTR_ERR(dphy->phy);
>  	}
> 
> -	pm_runtime_enable(&pdev->dev);
> +	ret = devm_pm_runtime_enable(&pdev->dev);
> +	if (ret)
> +		return ret;
> 
>  	phy_set_drvdata(dphy->phy, dphy);
>  	phy_provider = devm_of_phy_provider_register(&pdev->dev,
> --
> 2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
