Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E6B606A323
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 11:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=2W4GM5+I;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=bp.renesas.com header.i=@bp.renesas.com header.a=rsa-sha256 header.s=selector1 header.b=GRkKOkDr
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pUgxGrj6S6w2YRAYIWorZNHcH1ERrW6A0I4MjU2Vnio=; b=2W4GM5+IPmgScsRxgVcHya+eCQ
	NoshfJVTPhKPwGEr3QA52Dtd5eVG3xAjn6lBUZl73EqRrUI+B1ZIhl1hZPdLmpj3Tj+lfWpE4OQIz
	aTWp+oqwua7CEKIQPNJ9CZkvnEhQnWQbnmNEOAksfwBFFrvudzr5gg/S7D6tdT3qT6cxavGn7gYE9
	QRLdM9+OhiYzATy7jDjFB5mlMeKt2RhpygoZr6RpiOu5D8mYe+8xh6lpCB88ng153mDLhitmHtvtC
	3ge60sekgf6E5vlinUg0cs6jAdN6Dxk4LJTtISI+TXSXigLDik+ReTRzWCYL9doT9nmhmhe574con
	zeBRoMVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQNoz-00000000ZOl-3nQR;
	Mon, 09 Nov 2026 11:45:58 +0000
Received: from mail-japanwestazlp170110001.outbound.protection.outlook.com ([2a01:111:f403:c407::1] helo=OS0P286CU010.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQNow-00000000ZNx-1JsL
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 11:45:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NXdfxfyag7uRngajEN9MTkSKycmiD3OY1n4LKXdKqI7fEnTMUuhJDVmElCBGdeU7KcvaAmqE9RexfE3sppQGXVw7UCyNUZ8DH9d5eOEbPqqKkivEc7KFN2ntusJqb+6IAvKJeMF/uaCNpkPjSgFw9YDs8pBXP1QycAvVOrmcOrSEdikbcQImHJzdtx2p0K6DcK4kiFGopNV9nKWIvJ6w7VQor9t6MIJ6llXV2EbiQPFLXHxIE1wd8DB+aFyv2VEDuz61nRjsR/a2YvQth8ZNds2nC5CjWuOX/tsS6GfXfbwZhYMl8KmWznFob71VvuYwkMYrhwMX/D93QiZFe7Tseg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pPrQZxX6D5w2FDmdd8S9NYIGPfddhMKHDzOIXRyQnk4=;
 b=UEdNRyh0PzYr33f2dnv+WUF8W5Yxce81LrIAq8nr5c0ACXTnFPhTZV38vHbnkXsKbc6hQuJuIXK2SfSIIZLGwVP2ychPW8JWnx0GAUdZOK0kvwhIu0i4u/JuoVKmkyqikqEn/QU3Ojj9bnSqeaLjI/hGhAhlUW0GORbFkuadwdatJFlwDsW5u+NXhWPbdv9J2b+q6zijWhroOfUvbIaPM3yaoBmFvYj906Es+6DWllAPpNghfKV91w0pgAmeQAYEorJYyAXqEFxzrKjQYBtC4kLXWj1GySeBpbeGWThiM0P+APc5CA6PT06SUlVtrLJ/O0TA8bUXL3NeZ4j/nZR2GA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pPrQZxX6D5w2FDmdd8S9NYIGPfddhMKHDzOIXRyQnk4=;
 b=GRkKOkDrSh8UisMuvjBsbd7WCUn3wH9tv4fHq2ENtbTpfcRRiwyk80if8GMLue/VAoJ6JUTuzuuGNr3QRtjSwNhRHI3VHkPxNHu0UCLBqJ+iZ26J3Jvj1Dqwl5x2CFb/1PM1gkgrvpS/zyW0i0N/OUiDVYazyAXjydb/zG58ZJc=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by TYVPR01MB11200.jpnprd01.prod.outlook.com (2603:1096:400:364::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.592.13; Mon, 9 Nov
 2026 11:45:45 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::87d1:4928:d55:97de]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::87d1:4928:d55:97de%6]) with mapi id 15.21.0592.012; Mon, 9 Nov 2026
 11:45:44 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: hyunjungg <hj351016@gmail.com>, Yoshihiro Shimoda
	<yoshihiro.shimoda.uh@renesas.com>
CC: Vinod Koul <vkoul@kernel.org>, Geert Uytterhoeven
	<geert+renesas@glider.be>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-renesas-soc@vger.kernel.org"
	<linux-renesas-soc@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "stable@vger.kernel.org"
	<stable@vger.kernel.org>
Subject: RE: [PATCH v2] phy: rcar-gen3-usb2: cancel OTG work on unbind to
 avoid use-after-free
Thread-Topic: [PATCH v2] phy: rcar-gen3-usb2: cancel OTG work on unbind to
 avoid use-after-free
Thread-Index: AQHdcD3tdwfXnl4oFUKkoRivivoQjLclnj8Q
Date: Mon, 9 Nov 2026 11:45:44 +0000
Message-ID: <TY3PR01MB113466938179F6797D7406F0B86732@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20261109113121.1534929-1-hj351016@gmail.com>
In-Reply-To: <20261109113121.1534929-1-hj351016@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|TYVPR01MB11200:EE_
x-ms-office365-filtering-correlation-id: 70195f1d-3d7f-45c2-3c16-08df3e56fd51
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|23010399003|376014|22082099003|18002099003|10067099003|38070700021|5023799004|11063799006|261028144727099003|261102123227099003|261022105027099003|261022075727099003|56012099006|261021121427099003|261026140227099003|261009223027099003;
x-microsoft-antispam-message-info: kQwDrJ3mjisNnJ/Sh1rwtzpfIfDhSwwH2SXwGGGUTG/oOIR3qBg9ICqJWSkFeLlxklyE4PRzLSkUIXj4xukNFESf2v4Zbj/Op1qJNPjEL1h02Bydw/pNx/Svnn0TsYjVjURNsJcFawhFkL4YWZbAkKfb8jkdFwuLvlSc+wzNdfg/B9YhwPaNfqYeaXUixMuTbX2tnYV05ZWW6fm0pgUedAmRdki/jIvne2f9sZMpnS5Bsdk/Xz4mCpcPaJZ2Vm3ayVVI8ZstBEebgAR/02YrUK6xqnb/KgkPpMuVkNTIBfW3OwD6cDzS58kvpqNSD5SjZRiet5VxwiU1vzWFP18pMs6rl1GiQSrYbutVfFeaZi5kAT+ONT4nJutUCeduoUwEHJpjBuuKcKbETNIAP7xbFQLHdZCcbdB9rmnNF6cyudvwfT09NevperJoOAxfeZCesNhMv8ZlvCxXGlCcdeF53oMuvdpawX7Ky8zDuB5XAIooIqnMoFh0kzTnT7r2lbRMGe42TVuKOu41wOQdVO5kf5U5/chiQ9i9Sv303P4+B9uXv7H08slrvRL7ebm794ItD1UvbtLWPRr2wzFslw8Memmopvp2R+PqgJcsZkLUIaaN5RyVC6vbrQqyyCzAdfuRJx8zBDTgARncWLkPybzOBDTN/axWAN4+hhsMLjHN6Ps6Al+jVgqVYStOve2lWwohcLM4rRfkX1+EpuNpsI/cdsRPDlbl1pvCWcsXfSeinHU=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(22082099003)(18002099003)(10067099003)(38070700021)(5023799004)(11063799006)(261028144727099003)(261102123227099003)(261022105027099003)(261022075727099003)(56012099006)(261021121427099003)(261026140227099003)(261009223027099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hhkTZJt0ZNVXnkBMDpQ+2e9AteVF2kWJOSeL+8Ey8wCE8kIZvhST2j7NaTDi?=
 =?us-ascii?Q?1VNdFR6b6NkQ/k3VYrlnZi9cLGh58X61N0QfRL/pnttc6C7v8wkAfZbkSqUv?=
 =?us-ascii?Q?eTYF8LUQLjt3h8UZQER2qb9tP59yrmLWbc21lm7Jjsb5A0qaIR7rSmeQPyMY?=
 =?us-ascii?Q?B0jdZ86Bn9LbRddj/HTMx7dePsD/pJUM2+RcFNfZKpMQuzTkU6dOgQKLwjTz?=
 =?us-ascii?Q?xiSVI8Redhsl1qaUaYb3gfMiEFhmHM67WJ84UabaDLsQzwSzKBIYllB/rkHR?=
 =?us-ascii?Q?LvMJdNzJEDQldgPvse60jlebKRv0kKMpJcoR/woKUnovEDp9FQOvYYOnR9DC?=
 =?us-ascii?Q?xFZ2wua69EGK/3D4h7lpZgDTf+TeyvdceZUqQBWKwKKVsXSK2aZvvSTPScFq?=
 =?us-ascii?Q?lwAm/51qhoxLajtmJt32dmooiVquc/ZvYiy+kUtDpSC8WrmyYMs0lVSPeT0I?=
 =?us-ascii?Q?8lC+5tykHrREp6m2z8zDFm+W5DfWDgk+awodo3YbVbxFcHV1S+0/E1HWMzep?=
 =?us-ascii?Q?+jTS63x3Z7rISaDehr1QlepcZ+9CBTTQuva+/GoNCj2uL4oiaaU+h+kqmHBO?=
 =?us-ascii?Q?W2Ql+Ja84sUFicmHUmJFiYVImqsLVXu5nOb2E2xq4ikPSLBJSr69Qxl2Tsd6?=
 =?us-ascii?Q?ZTZup07STVWUVvORWrCefbPTSiH3RKyBTLscn8RlLRiZakM/ebGBS42ovXq9?=
 =?us-ascii?Q?qcVivBjvoJg+2hTn0NAkmohNCgkjq+Lm6YZnX3i00+lyKLDXuSk+hv2OAKHS?=
 =?us-ascii?Q?rBkJxGY5j3tSpAWifHHZRC00LWSoZoNDVEom43QIs9rG/Nwk7MA0bA2Oo7Nz?=
 =?us-ascii?Q?Chi/1LIC2uc4mlklSxV9VDZd1oVfwHzR6pUav3O3V3QT1WLIk3+KZ1SsUmBc?=
 =?us-ascii?Q?7SHTiNrWv9B3CIouR4svGLMVtTmsVKHmT3rbu6YYIasOaSIyrx5KJtQFqpsp?=
 =?us-ascii?Q?S2lUiwl2mPoVzbNlZCKFZLOxJc7pyLrz+mDCx1BmSFqeVUhNDDhqSti9xJUI?=
 =?us-ascii?Q?DZnfLF5Pk7kNEDWy6UUd6T+g1wNakDuDjZUr6eqTPkv8nnE0J3miV1WEpDIw?=
 =?us-ascii?Q?XhXhctZGlM8SDRZoNzuJ1xKCx3/leh/fL0/6MCixNh8yMh7hs7O2TKrejkXU?=
 =?us-ascii?Q?7AW7Zhp2HzMcuz6v26TCkiRG5WklE3RCz7FPCkIIz2J95U47+fdN5Gzpt2wp?=
 =?us-ascii?Q?a9Adg8v8xJUlVq7JDCGvWA3Kgryok1tK6tXTOjoRszDxKB4OC7byC9cQeuHe?=
 =?us-ascii?Q?s+vc8voJNjJivLmErbxNwuw+NoSYuRDI6y18bY8ETlOJTX+QXAwKvc4D9SPu?=
 =?us-ascii?Q?L/SRKY8f2cwtfgzW01MXbpaEKQX9ZRzmpGRZk+oP3kX9mE9j24sqNcI2YYvJ?=
 =?us-ascii?Q?9FqpqElm+KEGVfREEOa48mm3r5cSClfPIr43KRXBWjcV2lT7GEw5XPsHOk7Z?=
 =?us-ascii?Q?xohnGmaDdP8/rYRlIQ54wZSw2JoqmEjPbfiIjFjDXqJYlT/LjJcK98RCeCW6?=
 =?us-ascii?Q?1y1tqCnUXurVB/2Ikd5zxPZaptd8YkeiAHw2Da5Cnl5GLCoyvePysfwXaizK?=
 =?us-ascii?Q?WANtTcOwDkOIw795VCtt88IyvbVoIeB8X3N2NSEi0KqzHt90SySqg2Owz50+?=
 =?us-ascii?Q?5zBGuwfrKE+9EJJddl8t5Kgv0lffo703i9+eP3KqTe5AcmT5j9rR9Te2KqJr?=
 =?us-ascii?Q?R7RTkDiKOZQwWyBEj/cdTqmhQoi5JvqQ3solpfdLyt0NjCjXI298kSfXxA0e?=
 =?us-ascii?Q?MDjlKv1w1Q=3D=3D?=
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70195f1d-3d7f-45c2-3c16-08df3e56fd51
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2026 11:45:44.7643
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kk98QTLlAp+unXMfnpjwZC1zIuDhhLf7mVFkxsWIsyUVAExr+xsd5Sf69Cn/26kwGCjoR6UqKLEC3TtbH6Lrctrzqli49m8OwAtuuGx15Ic=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYVPR01MB11200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_034554_375006_8B0E183A 
X-CRM114-Status: GOOD (  25.14  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi hyunjungg,

Thanks for the patch.

> -----Original Message-----
> From: hyunjungg <hj351016@gmail.com>
> Sent: 09 November 2026 11:31
> Subject: [PATCH v2] phy: rcar-gen3-usb2: cancel OTG work on unbind to avoid use-after-free
> 
> From: Hyunjung Ko <hj351016@gmail.com>
> 
> The OTG role/VBUS interrupt (rcar_gen3_phy_usb2_irq) and the role sysfs attribute schedule channel-
> >work (rcar_gen3_phy_usb2_work), whose handler dereferences the channel (ch->extcon). The channel is
> devm-allocated, so it is freed at unbind, but nothing cancels channel->work:
> rcar_gen3_phy_usb2_remove() only drops the role sysfs file. A work scheduled just before unbind can
> run after the channel has been freed, a use-after-free.
> 
> Cancel the work via devm, registered before the interrupt is requested so that on unbind devm frees
> the interrupt first (no new work can be
> scheduled) and then runs the cancel action before the channel is freed.
> 
> Fixes: c14f8a4032ef ("phy: rcar-gen3-usb2: fix mutex_lock calling in interrupt")
> Cc: stable@vger.kernel.org
> Signed-off-by: Hyunjung Ko <hj351016@gmail.com>
> ---
> Changes in v2 (thanks to the Sashiko AI review):
>  - correct the Fixes: tag to c14f8a4032ef, which introduced channel->work
>    and rcar_gen3_phy_usb2_work(), rather than 2b38543c8db1 which only added
>    synchronous extcon handling
>  drivers/phy/renesas/phy-rcar-gen3-usb2.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> index b5ba751..35e519a 100644
> --- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> @@ -1171,6 +1171,13 @@ static int rcar_gen3_phy_usb2_vbus_regulator_register(struct rcar_gen3_chan
> *cha
>  	return rcar_gen3_phy_usb2_vbus_regulator_get_exclusive_enable(channel, enable);  }
> 
> +static void rcar_gen3_phy_usb2_cancel_work(void *data) {
> +	struct rcar_gen3_chan *channel = data;
> +
> +	cancel_work_sync(&channel->work);
> +}
> +
>  static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)  {
>  	struct device *dev = &pdev->dev;
> @@ -1277,6 +1284,17 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
>  		return irq;
>  	} else if (irq > 0) {
>  		INIT_WORK(&channel->work, rcar_gen3_phy_usb2_work);
> +		/*
> +		 * Registered before the IRQ so that, on unbind, devm frees the
> +		 * IRQ first (no more work can be scheduled) and then cancels any
> +		 * work still pending before the channel is freed.
> +		 */
> +		ret = devm_add_action_or_reset(dev,
> +					       rcar_gen3_phy_usb2_cancel_work,
> +					       channel);
> +		if (ret < 0)
> +			return ret;

I have a question,

What happens if this return error? Is it ok to call
cancel_work_sync() before scheduling it?

Cheers,
Biju

> +
>  		ret = devm_request_irq(dev, irq, rcar_gen3_phy_usb2_irq,
>  				       IRQF_SHARED, dev_name(dev), channel);
>  		if (ret < 0)
> --
> 2.43.0
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
