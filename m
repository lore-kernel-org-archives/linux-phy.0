Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07DAFC55182
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 13:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UcAb8jHlqB9ie8t/QOg4oofNFAdIVIbGHGWZXFmhT2o=; b=2UehZ/4jm//ymK
	nRGaSPFdAPc4Nzl3H2XzB8df3itcPBYwW0Yz4yH3CHzumm2lWcg/2ns5ayTP4SnnY5BWlVv/bOMhs
	OnKr4aKI1bcRyo5VUAoTSbklg+2K+2SoWpANnjviTDpBFRxz+seeilyrTkUTEaTjd/Re1W4UCUJFk
	syDooOiKzFFrdT2ZL4bncMnKCr/ZmhBqFbQopCZ6SZaBDsmLq/rEcZ0zyv/mZkTmCWXl+ILYtZqvC
	CXpHXLnJwuf4Jph1HKhgKs5yGGjh7U3w1jfqqa4cWc/SSU0SGN3BWIPboFm1mSzwOjXTSxqXgKDV4
	QVnw9rfI94KMB1W/WG1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqsbw-0000000H9JC-2iV9;
	Mon, 03 Aug 2026 13:21:44 +0000
Received: from mail-japanwestazon11011033.outbound.protection.outlook.com ([40.107.74.33] helo=OS0P286CU010.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqsbu-0000000H9IY-2cHT
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 13:21:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IrXoIxYqAEZaelA0kHSZ5Jv0WXzJnAXp1zOzf99t3LEVwBZyI7uz0/tssJDEao2qJCokkUxjrge7VIVtPS5ik0uq57oV7jcIFoZ6m0D+duHl0FFnAv0CF45spUP/SKQgxZtFwdHzRj1h/e+3QWw0+EI7oiZi4UmvPn5ykAhxUG90nJ3laEOiZ136jKCkiBEST6+FlDqLCteIlEaQ4bVCLONO1gmEMUbSOCBw5I90/7AaX13fLpUQSgHkHSluG83F3weY/chbnzEkPf0APdAiL23tjyW/werkHfrHjBnExyZm8onLUuRjkuBBc4tW2NEJ3AYhwElPSMewyaLy7t/7Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zy3C7bN0jHdsQmIWYDXE7vg2z0vaPzD2aj7ONhf+BJA=;
 b=Cw042ATTbNQRk1HtD57IKfVkObBVsNSZ+zcoQ8ew73FJJqqvLEz9pYrmq0KCqGoi2es9ZPIKVg+sXv2sarMQdkEtFtG+8VrGw+Ip0+i+6ac7BOCvOlS19fLJexcnnfIGDgPN2rRwGGXMv5FzciuXMrR+etqbKgspyrHlMfzJgzBnZ8bnNRXpMd8c5ePXrlh8Yz9fOqZ0TyTJNEtkSxid4BRdv5uoI7f7j4wF8vHA8PUKytneqrdzt49Vs37j2XpP2nzw92IIpR4i6zJgwkHUVaeDR3HSlEofKhiJP2QF1sS1FmjnnDuB39prVictf9fUAFQOfntyMICrvb56d/L7wQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zy3C7bN0jHdsQmIWYDXE7vg2z0vaPzD2aj7ONhf+BJA=;
 b=dA+hXaUwcOkNkgjWiPb2Q8rUZmWlJvM6wCi6xZ9a9IRolU/GwJL8v/PNZLz+bwFMP8l37UPB0AO+hgqxj+I/zwhLKS/VuI6sF7Frh08q8F8pwaSVwd3sfqpGlUmiFek+MkOSvtBYwsMGRLjZbGyrxesonwjcFjxEkXjtrBgBr5w=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by TYYPR01MB12795.jpnprd01.prod.outlook.com (2603:1096:405:160::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.270.17; Mon, 3 Aug
 2026 13:21:29 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::87d1:4928:d55:97de]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::87d1:4928:d55:97de%4]) with mapi id 15.21.0270.017; Mon, 3 Aug 2026
 13:21:29 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Felix Gu <ustc.gu@gmail.com>, Vinod Koul <vkoul@kernel.org>, Neil
 Armstrong <neil.armstrong@linaro.org>, Geert Uytterhoeven
	<geert+renesas@glider.be>, "magnus.damm" <magnus.damm@gmail.com>, Krzysztof
 Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] phy: renesas: rcar-gen2: Fix double of_node_put on phy
 creation failure
Thread-Topic: [PATCH] phy: renesas: rcar-gen2: Fix double of_node_put on phy
 creation failure
Thread-Index: AQHdI0kT7ZtcEOhbm0KC8pOlV6ALULaMTw/A
Date: Mon, 3 Aug 2026 13:21:29 +0000
Message-ID: <TY3PR01MB11346A09428478C8C70BF50FE86D52@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20260803-rcar-gen2-v1-1-9aa35c36d7d7@gmail.com>
In-Reply-To: <20260803-rcar-gen2-v1-1-9aa35c36d7d7@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|TYYPR01MB12795:EE_
x-ms-office365-filtering-correlation-id: 9bd3b316-40a4-4652-545f-08def16220cc
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|23010399003|366016|22082099003|18002099003|38070700021|11063799006|56012099006|10067099003;
x-microsoft-antispam-message-info: 4hyzCWH7oYIM5EKUnIH4MI/KGpXKlu0M0KFiFwVDrDRh+kBuasStcuhRVveKhyWbdIZxqYflZdP3CUSRxQqIz4HPzGKSBVEns6IcNbkwP2u74dOncgaLH+zv1l2njwtDeElGJAfkoW369MX2WvOQs1NLu9rnNqOwt/Fq/ekuMCLKsxU+N55RTL6HKure1gJNjxOiMvrHGAW40qeN2ovr15U905hFsISzynkgalSbHyaFeUIymtWKPCCzYaQTnsAyznxktU5ASBrVa8M31XdKPmwRCJRBnMyZubTvTNa0dowKvRXmDPnPfbo4vN2bsu6gqqhq8alWyIi36z9rE38YoJXCSE9OG0g/J/AX4D/5osezI4SqpHXJSRZsELxWfA77uhk+XS2ZmwY0VU+LalzeAfj9HL/2PDXqdAAajjpdnJNA0puhmzzIsfcMSg606rRiaEGTqbUkcpj+cJDqvMRWf372Rfim/z90/wRcJ19G6uTFixUBS6Q/bM203/Eu9thPPl61WkgdEVnf1+HAxEMp//UprkA9ul6qRoMpj3Zd2jdzMMDi2CueWxE+8LqcDhE+rCn8CrFJ0WaqxU/WZFoIE87ibYMjEe6NaO964E5o8SmU8u9kYdFzqqV/Fyf6ht26ufNY1tCKYGrAd/mnywrIMoLKPxV04z/+eglVOwzkQ/M3A6y9aMhh1dO3KrC1NrG5KTCs6tPyfGz+RF9kwR+BwO+m/9bq2lhnesqk+157ijk=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(22082099003)(18002099003)(38070700021)(11063799006)(56012099006)(10067099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VEpTNXhOVVdCQ2ViMER0V1dnY2VNUFpOT2hjRXd3cmhCNnZzaDlHVGVXUHNi?=
 =?utf-8?B?T3hKVDhxR095U1JvV0pqbkp0MW5GbGRqZ0ltUC9OT2ZhR3Y0eHZnSE44RERX?=
 =?utf-8?B?RjdNZGJHVnUxRFFidm9heTl0aDFZaHVWdzlnWHhOZ2FqTnlOdldZbEZscGJj?=
 =?utf-8?B?NkhLY2o5SnZSanNKek1nKzk0eWlvOUxoMFJKSktKUDcwdTFKRjR3RlZMb3ky?=
 =?utf-8?B?ZVpXbERZUUc4aHdKb2p6aXFMTVAxU21pSkVUM2sxZFpxN3l2OWx1cndlcURP?=
 =?utf-8?B?MnBweDd4OU1mWCt1WDdUTG1CZ0t6UXFDYWhPSWtWRXc5eWYwZE16aTcrYysz?=
 =?utf-8?B?bUdPcmVwUGxmYVBKU3lDeGtEMlNqQjBnVE4vNzNGRUxSSjFOZG1uaHhHUFk5?=
 =?utf-8?B?WTFyckwwZ3FzQTIrS3hOZGJWWGdoRFVYaTJJZFVGRC83NStGR1hkTHVER3li?=
 =?utf-8?B?RzdjYVUxUmEvaTV4RzB1SVFubXBPVFFpazhnUGtWcTJ0M2lzSjUxakYvSVlk?=
 =?utf-8?B?cnZLWVVhR0NhSmpjV21pYWpJVUdPclR2bzQxRmo0cVBQdm0yOGlKTmlRNHdr?=
 =?utf-8?B?NFJRa2RNaHZ3QmgvdEVNYnJXVHhIeTUxSUd3RDduaEhJdDAwZ1VIcFZSUWg0?=
 =?utf-8?B?R3RYZys3RnFzVFptZENiVUhMVWx1NUxrMG9PTEhQUEFzNGpES2hLVThFZUt3?=
 =?utf-8?B?TWVMRnNnWXVBR2dlNDEzREZ4T2xEeVFrTkJGSFdLT1pDdXNVSlFTK0RZVzk2?=
 =?utf-8?B?dERkbFhhUTFTbEFHY0s1bFhBNW9xclZvYm5PeDVWVG83RHk3QmlKSmNQczNJ?=
 =?utf-8?B?OXJ3NWJIaGxWQXR2OGJBSDYyNVVtYnFIZmNPTzlUZHhZQjkzV0VQaVVQWkxG?=
 =?utf-8?B?QXFZNExOTmNnL3NmY05zRm1lMlVLVUZaZnI4aUVteHMrYmVxOHVvVEpFdVl3?=
 =?utf-8?B?Tm1JYjYvUXpmTnZFK2x5WU9RM2crbXVVb1o3bnkrWGpiVVVIZHRtNTNiSTRs?=
 =?utf-8?B?OEJ3bXJyQWRBTTFXMnRpUDMwSk93L3MxMk9JUG15Vk9MRFd0SXI5SDkwL3RT?=
 =?utf-8?B?Mk5sdjl3TzhESEtMNlhnOU5XMUtHa2xZSHhwM2owQ0FuaDdubXlKeERHNzly?=
 =?utf-8?B?VXREWXl1bDdRUlRtRGN4NGg1RmJMbWZiRkZ4NnpORzVYcHZpZzIxUFQxbmhV?=
 =?utf-8?B?VjRYOURQa2YzVkdGR3U5VXpFRERlZk5TZUtHcGcxeWhvbkpkSTdFT0hxZEkr?=
 =?utf-8?B?enRwNldGQUtBWEJScHdvZ01NckppbEorWHpxL0R3WUgrZE5UaWtMUmlsR2Zq?=
 =?utf-8?B?ZWVqU0szWFVUZXBrV0FuMTdRYktaY25lNXgwNG54TEdvNzVIT3dDYUZxd0gv?=
 =?utf-8?B?emhWTVo5WlBWOWowVUJ4bG9RYzZkamxNMmFLODZpVE5mR1VtNFI2Y0xGTWpj?=
 =?utf-8?B?YWRYaDUzQ1FMQ1lORHByVGxObzZEOHM3Z3dWNUxHYkl0dERIUC9iQURiRzJE?=
 =?utf-8?B?Z0lFRUUvczZadFhpbXZQY21pdVlEZnovUFIyWXR1cDFNU2l3Z0NZWnBZWUd3?=
 =?utf-8?B?ME56alVNTG5mbmI5NElVU0tkWkZKbENzcm9VaFVmeHkwMk5UTDBTVTRRcFpJ?=
 =?utf-8?B?R2VVQjduLzJ5M0pWU3l2bytNNjRGcFA1N1NLcVF3a3Qyd3RRdTVqMElGTGtK?=
 =?utf-8?B?V0Q4U1VQZlZGMHhVaWdLQ0tzbDNiOXFqWUdYSG5UalBGaW1PMDY1MmdVWTdQ?=
 =?utf-8?B?NHpQa3JybXJXeXdLYVpVKzMvTUVNN2JUZm5lUVJtbHJaY0J6RnJ6dWZ6MHBX?=
 =?utf-8?B?S3Rva3pkczRsSzQ3STdFUktndC9Ia3JKandQeEZlSDAxbitPUXJ6b3hIMHRP?=
 =?utf-8?B?Q0lOaEtUczdRNFk3SGhCaGllaFZqZnJtRFVtRnRKZHY4TzQ3WlRWdHoyTmtw?=
 =?utf-8?B?dWV6OXNOVVNEa2ZKdzEyRXFoQzQwZWJhcGV2Vm02YXJ4aU5KU3RHKytkdmx4?=
 =?utf-8?B?ZFVSWjJFRjVJMzBGVUw5L2RBZzVWaDhiNDFXczB1WUdDQ0FVSGhvVUcrRkd4?=
 =?utf-8?B?Z1pnMlk5WTk3K1BqNEFIQ2xlbmpzdmp1cTRnV0dqdURBOHBnTjV3SStrYmJr?=
 =?utf-8?B?cmZuMTJ2VmR6MHhnODRYWEp3NFFvUU9BNjN3citnWjhSQ3hBdTVOMlQveEdr?=
 =?utf-8?B?ZU1xTGVmand0UnloTXpVTHJydWE3djAycFE2dHdQMlkrL1RaSEl5V2k1R3dr?=
 =?utf-8?B?UHZnaWdadXZGT1ZEcTgxbFhVcFUyc29rc3EzVE5UWG92TzI4YVQxSk8yRU9O?=
 =?utf-8?B?R0g1TFJ3Mm1FYk92K2ZEWE83OFgxaEkrODZCTm1pZlBWWllJNVRldz09?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bd3b316-40a4-4652-545f-08def16220cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2026 13:21:29.2217
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wilOSd87l9a3vv1GffIrypzZZruKpL0gnc3qws3x532xnAUSmT2QuU+I5ifCaFatVtHeJaetZ7tc3ipLoJDOVRTsQSmnEEbxlef/gVdRTEo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYYPR01MB12795
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_062142_677753_19468AF7 
X-CRM114-Status: GOOD (  18.60  )
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
> Sent: 03 August 2026 13:43
> Subject: [PATCH] phy: renesas: rcar-gen2: Fix double of_node_put on phy creation failure
> 
> for_each_child_of_node_scoped() releases the node reference on scope exit, so the explicit
> of_node_put(np) in the devm_phy_create() error path drops it twice.
> 
> Drop the redundant of_node_put() and let the scoped cleanup handle it.
> 
> Fixes: b64b32791fb5 ("phy: renesas: rcar-gen2: Simplify with scoped for each OF child loop")
> Signed-off-by: Felix Gu <ustc.gu@gmail.com>
> ---
>  drivers/phy/renesas/phy-rcar-gen2.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/phy/renesas/phy-rcar-gen2.c b/drivers/phy/renesas/phy-rcar-gen2.c
> index 6c671254c625..5a272e25e051 100644
> --- a/drivers/phy/renesas/phy-rcar-gen2.c
> +++ b/drivers/phy/renesas/phy-rcar-gen2.c
> @@ -405,7 +405,6 @@ static int rcar_gen2_phy_probe(struct platform_device *pdev)
>  						   data->gen2_phy_ops);
>  			if (IS_ERR(phy->phy)) {
>  				dev_err(dev, "Failed to create PHY\n");
> -				of_node_put(np);
>  				return PTR_ERR(phy->phy);

Now, can we use dev_err_probe() as it is probe function??

Cheers,
Biju

>  			}
>  			phy_set_drvdata(phy->phy, phy);
> 
> ---
> base-commit: 415606a7be939835db9b0d6b711887586646346d
> change-id: 20260803-rcar-gen2-140f014cd384
> 
> Best regards,
> --
> Felix Gu <ustc.gu@gmail.com>
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
