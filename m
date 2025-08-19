Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76CF3CA0EE9
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 05:51:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i7I44Lbvuv45VtsjCpKeg73oLrSDqtIFdqigKvYYAzg=; b=qP35X046daZF2X
	k5MIuJ/wQQQzV9HU7UAsRfSO/9hmTnRT8RdhooKHdm9pbBJMw8q32gP4lMXWoJ3sKqzrcVkgArVlb
	Se9ypuXZhItO401GIPuQi8PatWRAyUMWI12i7NXVCt67VA805nM+V+NWN/skjCUXYbKfgmUV3UIzo
	B8TdR1B6vsxcEPdvEzpKY+sIgYNkZT8kXSAX/b2V36C4uKmiK4PFVXZVFMb1RgQaZXG3GUtfxJTo9
	qrA3XYeneUyddYmuUZhtuqMp7YGvhLa8BPSfrzmWAqLMAS7LIybwPUBM1F21gc4o3tFsooMiHXVAz
	cAfuDgT7Eh6CMBMr7mCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoFFT-00000009Sxv-0Sor;
	Tue, 19 Aug 2025 05:51:07 +0000
Received: from mail-japanwestazlp170110001.outbound.protection.outlook.com ([2a01:111:f403:c407::1] helo=OS0P286CU010.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoFEG-00000009SsS-1ms7
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 05:49:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BdRVGvCfChiuenOF2ahiRu4k4w0EprbWSEdl//758qRCa4e5EdKvdZL3vgOTg93NmhFrsiCZaknT1oJgDZ/a9o8HnWsJvKkTB2XRRGuTb6sHy9DFk0UWaFB/Rk0hj0aPcJBkeWK1ETg7UNqBu917HRAgvAFo2mRF3QJERD9aFNzMQG47wCypY6zbNy7g3Wors+oMm/GA/USRoboNzAKxWogCvOY147aHGM2tLQUtJoq2FeMHYPD4KRETW1NQE2QKYr1kMJr1B5sOU7WPar+XlzanAckNOrzdxbh7w5QQbpjel5G/+mCGTVs472SFU5+dbTE8pyCPzHN6fxppzJpUpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wFq6pkG4sSCcUvxmY8yVUQW6i7Yu13Cn7sHjv2k1vgQ=;
 b=N/7bmu1uk3z32q8TIB0ExJIwSO+lJ8BJFPIDviNGgMKKmYhoL4dBDfB2BDCsCtBUKfZHzpKYLedlzm6QNvGxyOUlY3EOap6P4zcbXXZuHtlHow98Vnz1Aj2wug47PP+x6+UT9qeTOfKnFXVrbY3rmQis4fzOn9GgYXzTQOYOYWrDUxMpiHlPMMN683Gnd1ccC3hWFnokMzYS42efI4GLEKmrW597EmhdTgPduuHH4IMjwT2lD2M/TGBO5w38uTgLUdJZgX0AVyDLyCV4AGrnwZuT8xOp6EMVzGhTqZsHh8Dgq8gv7yQZHhnJoZ8Nw8jPmCtcvt4SX7w/Nya7PrVW4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wFq6pkG4sSCcUvxmY8yVUQW6i7Yu13Cn7sHjv2k1vgQ=;
 b=Kg12po8/0EGlnqemPP0lLgdwuHC+amznIUO5mZ1bwCVbWQDhpLCeB38JjEubv1UNesr28/WXprTd3uau/Wj0hDZdpkU3ue1FlIi3Ak8DnSdOoF6C5KMAw72p0Bi7HZJwoPzQwa84nvXLQVL+QALgaeD01PpI36+pJng0Uf+tYdM=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by OSCPR01MB14998.jpnprd01.prod.outlook.com (2603:1096:604:3ac::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Tue, 19 Aug
 2025 05:49:32 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1%7]) with mapi id 15.20.9031.023; Tue, 19 Aug 2025
 05:49:32 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Claudiu.Beznea <claudiu.beznea@tuxon.dev>, "vkoul@kernel.org"
	<vkoul@kernel.org>, "kishon@kernel.org" <kishon@kernel.org>,
	"robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, "geert+renesas@glider.be"
	<geert+renesas@glider.be>, magnus.damm <magnus.damm@gmail.com>, Yoshihiro
 Shimoda <yoshihiro.shimoda.uh@renesas.com>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Subject: RE: [PATCH v5 2/7] phy: renesas: rcar-gen3-usb2: Fix an error
 handling path in rcar_gen3_phy_usb2_probe()
Thread-Topic: [PATCH v5 2/7] phy: renesas: rcar-gen3-usb2: Fix an error
 handling path in rcar_gen3_phy_usb2_probe()
Thread-Index: AQHcEMwKkF0KDbGXOUaBwniJyvjIFbRpd2yA
Date: Tue, 19 Aug 2025 05:49:32 +0000
Message-ID: <TY3PR01MB1134647BC6436CA61E0A200F98630A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
 <20250819054212.486426-3-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20250819054212.486426-3-claudiu.beznea.uj@bp.renesas.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|OSCPR01MB14998:EE_
x-ms-office365-filtering-correlation-id: 77016d4a-df36-4d00-6b28-08dddee42bb3
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014|38070700018|921020;
x-microsoft-antispam-message-info: =?us-ascii?Q?pbN3bEDcEFGNqSscneYdHWVvDER9OYjJcO41YPyNYRklqtZZD00g+Bpbj1Wn?=
 =?us-ascii?Q?OKLpCn3dA04NUjCnT8MOBp27RyOZt02rV8/14jKsU63rhC3WRRDr/w2e9SPO?=
 =?us-ascii?Q?P/bHFl06S5nsvdm3x10m6pdRjkNcdFytE+hB60RGLEzsCZ97d4EX0R30P0R9?=
 =?us-ascii?Q?lA/U8IPstywThycfEUpbOQDuDgX6QqlAs9gnu54cdpoUYbF7gr+vnmyLDrfq?=
 =?us-ascii?Q?d6v43pUMSrfbbVDJ9RP3619aChB3gCmdEuOhx+dhuTFEflqXbr3c0CjT+LTO?=
 =?us-ascii?Q?Z5tvuSZ+SXr/spk8pnQ6RchSxYGwbgy5448E5sIZyKf8O8nj5d70LPObg2fg?=
 =?us-ascii?Q?cBujCs0aWqO4NChS/Z9a0rTPITcoF4k9ForrsO8130aN7W74l220L42XWM2z?=
 =?us-ascii?Q?Ho9SioCus6KRVDOi5tRj/09VXdMygv8SHLjXN+Bq4FAEhAFrxbsG99FrPgSb?=
 =?us-ascii?Q?n54ncXj2ILFl6T1odUvmuuNm24VLeAZFAwLRTXy2Gf8WE9FuMgDQn5wZA3g6?=
 =?us-ascii?Q?8t7Rw5/pvNOGsDMBrTcZ7jHfTgMLIQVYQyRdIrRiyuJt+7D/kjobpbLlh5b1?=
 =?us-ascii?Q?sIyN2ARqteSVi/CE5mEF8wE52I9kLyG4KCqhfwQwJ7dPwkTuRDz0SQD0LCbz?=
 =?us-ascii?Q?DUM5jddxKfDnp8ZkI3MqNFJVlGs7FSV+mAWT1jxwvDc2UKudxBp8eij7sSif?=
 =?us-ascii?Q?EYRR/uXmCZhboZmueNwBg7W89V/dtA9hqi4MXOygVlGUHg+AQUhNvWnwrBgv?=
 =?us-ascii?Q?PkjJAezg8dAehejgtWAxjO1keCnqF+3jXygjzYy6qZ71y2f9GluegoGxSXR3?=
 =?us-ascii?Q?BB2PAk4BlSKE+mXux8tB07m9xRsLo0tC2h34o9F01Ngy7FwkuOj3lvw2bW5g?=
 =?us-ascii?Q?ozJjxi3lbxpB1OEWVpRqxJi26d+gNOhE+6FqbnSWiROQpSa08xIlwHAekvDB?=
 =?us-ascii?Q?t74xDVUGqDA5ob1bgdbOl2neqhKH+rMeQk2DtTUhfDhWeTmQYwVk4oyW+F8g?=
 =?us-ascii?Q?AL8ZEwg/fV7emW2lOa0DasYy5gu0GaBs5dEBkk+TQ3s+1s7jUatPdKr+6Jn2?=
 =?us-ascii?Q?ZBaP7RufXlTzWGDo++HWjUUD4yZnkDS2LjVbOdEE9YyEfq25JOBpH+6HetKB?=
 =?us-ascii?Q?zNjUn2qCl1RWmLe4XJlV4UTVzDDom9n7OZ/zHU0sQsYn49GVJ7w8gu32/QEZ?=
 =?us-ascii?Q?ASu8DUd6qsBC+R8dvsJQ6O5Fit8ugtz4OWZ9Eg7RpB77daB/CymchPBEjzj3?=
 =?us-ascii?Q?hMEifeMzGEcNt4YzLl6rLgCz+ZVuZUaZ/fXn7OPmorXaCOTGX9BjdH8XGQ9g?=
 =?us-ascii?Q?ghis0W1boiQgqMenRw+4FFluFpu8EMOi1sat9uWH8PZKGrkzGAjHKLe3IMto?=
 =?us-ascii?Q?2IsC0HNqqXZ6CS+FQAAT6rUeZKXnzjyuZkLkRVxCxS7F4wISWXJ9pPG4hY1O?=
 =?us-ascii?Q?FNsZGMldtUHFtCg1dZvOzUaj/9J9pTx1?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014)(38070700018)(921020);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ayIjYjS8zgF6t0Xbo55+IXtBsP7uTRyUTfiviFUr3e9qB+KXBUkr+7DNGff4?=
 =?us-ascii?Q?gBHKMshGxZC6joL2B7fziuvaWUDwj9PtiI0kuohbMcPJXMSp9mkpgfWxz2vS?=
 =?us-ascii?Q?dsgPg+y5HkSnm6vK9CY91UB5x+6Hhg8kNSKR/Iyh7Oe/7rT8blv//AoEy3GD?=
 =?us-ascii?Q?iU0WWT8wnV4k4VvjzSniJN0hIr927sMT7ucXIsTw/xdI+V8j8mi5M7Gvq/zf?=
 =?us-ascii?Q?wVn6KH9DzfXR5JLcaYzhHXjyFa2bFW3M8srI725zqejvbj2r9/lZJB6et8W9?=
 =?us-ascii?Q?PAYjXmwDTjwnfJKkZkIRDS/NYC1a1H/lP7q96axgRljv0fW1gf0TzWGDyKSM?=
 =?us-ascii?Q?70cnq1kkOSrRi+5+CuZW/2G2sS2smrpGHG4BJSO6gZHo3zIQvHTlGoQGwZN0?=
 =?us-ascii?Q?nUVqXbJlQ6G+R7O/zlMUEaZAX04PKwSUbD5y63PZfVznhNrGQir1HDDKd7GX?=
 =?us-ascii?Q?nqTTSdlNdOcOz9I2Woc9C3Lqg22RSSGp5H7iQm8leTHONqjkWtyzdYTyOsUz?=
 =?us-ascii?Q?lcy/hMLOKQg4j5rUXcYCz79nbu7nahB4lkvjGHjGXloagIZ0jJw6td/PCqsg?=
 =?us-ascii?Q?2DjvU9M1FR9xeytyGDAPrcbn92mkPjAI7MfDzlMUBbXdQwOddn6W/DFuXuEI?=
 =?us-ascii?Q?x71dNn39GEFpOXTsZwkk7E/TeKcuQXNc5Qz/Dj43oIo975jjQd+70YRxwuFs?=
 =?us-ascii?Q?CIx5zfVEmtcrbEjLfETJdTTR+xPTQeKR/0PdIkCTpCgC2CDMEUN6IXu6XMyV?=
 =?us-ascii?Q?YMRJx+0gEdRCFHKSsb+Vt2DdnoYgjqVnbuhLibWiPCuwapF2W5CKkTJGFSxN?=
 =?us-ascii?Q?lY4+ma1REMqb92a8AUcHJrfrjv8tkrE3JFDJqnnGlTETeJgBYoTXFRtC2TOf?=
 =?us-ascii?Q?yXvpvoSJ4LTZeWbaQlUtVl3KQm9f0Feno7l/21XhM4Ky4WhLScNBwUzVTr0k?=
 =?us-ascii?Q?luKQcyCjqYcyBnCNGifhg/YMlUJc9DiXGqWPWx3zpSaJOFq/KsdZ8wcV4tyy?=
 =?us-ascii?Q?U9oPE/CYAB2/gVxD9YzG90N/Pa0ZMey47g6QnDvK3WbPMoL8aSZT82JIhRHQ?=
 =?us-ascii?Q?uGWpCDmDCv5IkxA258iFbT25u5ahWknqx4IV4An8LX/tIxITsEmYKv41xP7r?=
 =?us-ascii?Q?wJ9H36lUCt/1OBU6ORZw93nhyZOkrbCiUs8x6DrIHzDcoGXKhgPOj5l1tWf0?=
 =?us-ascii?Q?/K6HJCjLnPQAb3pPE3z05P3Z+Hr/3DNPVNsQ18iDTJhzyjP1tyNydcduEOV2?=
 =?us-ascii?Q?Br42ZyUS5TgFNgYkMlWqLXxU3LIKjfDOs+PQCvLKuYaCorHpzEt4w3kj2G2Y?=
 =?us-ascii?Q?qiFp+m09d6AdW+awe+XHJdGLv4QbKPUgql5X4/5DIy8JpfRLQTQPClMSpo8A?=
 =?us-ascii?Q?UJLJ62gieMZx2MhmaMP3SJEwj1EdXxJ+rDZiV091EoCxgJZCRCdDOtQpXgRK?=
 =?us-ascii?Q?I9R5bvp8VJRHrwSj+jseGusHCdToThmUUso5plS0A21tLdHWNpp9Tf4wfO3T?=
 =?us-ascii?Q?RS3jS295qEsFir79DmVg6ohFb6PBfwZ6ulb0lmmktTxfyskjJzrztrFaUSSP?=
 =?us-ascii?Q?JDg9j3468XXCPAdKuuO8bZ7wFKYlmHYrl5DZHWBOuqQhfv0McgMKw0VxHs1T?=
 =?us-ascii?Q?jg=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77016d4a-df36-4d00-6b28-08dddee42bb3
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2025 05:49:32.3525
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DvHvthHK5pYqqfGLe+HQJDeJe77mdhq6zjGzDLD22fAr0ePmJqYl107LOxPrnqZz85n5Hg67mXSr3STJyH/so+4Gaix+Ksynn3j+tB7e1Zw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSCPR01MB14998
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_224952_459304_262727D0 
X-CRM114-Status: GOOD (  20.94  )
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

Hi Claudiu, Christophe,

Thanks for the patch.

> -----Original Message-----
> From: Claudiu <claudiu.beznea@tuxon.dev>
> Sent: 19 August 2025 06:42
> Subject: [PATCH v5 2/7] phy: renesas: rcar-gen3-usb2: Fix an error handling path in
> rcar_gen3_phy_usb2_probe()
> 
> From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> 
> If an error occurs after the reset_control_deassert(),
> reset_control_assert() must be called, as already done in the remove function.
> 
> Use devm_add_action_or_reset() to add the missing call and simplify the
> .remove() function accordingly.
> 
> Fixes: 4eae16375357 ("phy: renesas: rcar-gen3-usb2: Add support to initialize the bus")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> [claudiu.beznea: removed "struct reset_control *rstc = data;" from  rcar_gen3_reset_assert()]
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
> 
> Changes in v5:
> - none
> 
> Changes in v4:
> - none
> 
> Changes in v3:
> - collected tags
> 
> Changes in v2:
> - none; this patch is new; re-spinned the Christophe's work at
> 
> https://lore.kernel.org/all/TYCPR01MB113329930BA5E2149C9BE2A1986672@TYCPR01MB11332.jpnprd01.prod.outloo
> k.com/
> 
> 
>  drivers/phy/renesas/phy-rcar-gen3-usb2.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> index 47beb94cd424..d61c171d454f 100644
> --- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> @@ -699,6 +699,11 @@ static enum usb_dr_mode rcar_gen3_get_dr_mode(struct device_node *np)
>  	return candidate;
>  }
> 
> +static void rcar_gen3_reset_assert(void *data) {
> +	reset_control_assert(data);
> +}
> +
>  static int rcar_gen3_phy_usb2_init_bus(struct rcar_gen3_chan *channel)  {
>  	struct device *dev = channel->dev;
> @@ -717,6 +722,11 @@ static int rcar_gen3_phy_usb2_init_bus(struct rcar_gen3_chan *channel)
>  	if (ret)
>  		goto rpm_put;
> 
> +	ret = devm_add_action_or_reset(dev, rcar_gen3_reset_assert,
> +				       channel->rstc);

Now 'rstc' can be removed from struct rcar_gen3_chan and use the local rstc pointer
as context variable here.

Cheers,
Biju

> +	if (ret)
> +		goto rpm_put;
> +
>  	val = readl(channel->base + USB2_AHB_BUS_CTR);
>  	val &= ~USB2_AHB_BUS_CTR_MBL_MASK;
>  	val |= USB2_AHB_BUS_CTR_MBL_INCR4;
> @@ -860,7 +870,6 @@ static void rcar_gen3_phy_usb2_remove(struct platform_device *pdev)
>  	if (channel->is_otg_channel)
>  		device_remove_file(&pdev->dev, &dev_attr_role);
> 
> -	reset_control_assert(channel->rstc);
>  	pm_runtime_disable(&pdev->dev);
>  };
> 
> --
> 2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
