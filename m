Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D10AE6FE49
	for <linux-phy@archiver.kernel.org>; Sun,  8 Sep 2024 16:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iyD0zl9iAhkgrUS0qMHh0uB7ZbxkdcawoLc9VYZesAk=; b=nPPYswcqKA9RnX
	HvlvfCkpxawDEyM2eHb/UYbwXLoWOgnReg+dPP2Uogx1jdOmXRhtHxy6SYq0+WHemk76x82Q3nw+b
	Y06tCP/BimKP+yk99ELxyQ33/pRdMRlmK+qiWdQFWAn2JjASqYKpukUXqniV9fS38XwNd+sOQNDgg
	5d9AIrgDUTfOKyqdAVprwzPAXgBo8d+S0YiQR4wlu2SkKPRTYsFQjrCk64+l0hNUVTU44uWwnlJrj
	XvsjH+5nilOSOEQitqLdGuNmkLByNnCK+ZC0xe5CtX9/6GIqFbg8YLZOsPfzF+1C5jq7KohPbzI4m
	uSBipMzfJGTKX+waMNtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snKx4-0000000H7Tb-461J;
	Sun, 08 Sep 2024 16:39:50 +0000
Received: from mail-japaneastazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c405::1] helo=TY3P286CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snKx0-0000000H7Sx-24mz
	for linux-phy@lists.infradead.org;
	Sun, 08 Sep 2024 16:39:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hkIuv5kQ2N/VK64AjY7SnZFIIOjaLbWGVGg0IWlfEthERHNgiKSARUnW1deEmSMnmpI0OrjEpogCptO+GiQ1yCnYBBibkKwS3U96HzG2c4L3U/PZHKw6lbiD+KVff/f4gZ7sdxr+7xRHKiyx5FJ6WunZm/RkDrvcrG3Yfm5eYgd92tQqjtmQERqMb7BMttD4QVenJuc4jfGVnIFNfpyLvbAvYskvas3kv/+ks57j/B0zqekN3zpBvRjBBAok2nn3AxipW/8lr8stOtEaaWuBPM1Zl2Ig5/uQ8DLOOC5aBnZ7FkM/wtSLnn84j+4J3TpZqwQh47qwmN/l2LDW/Mwo7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z2MrwPEE9CpMG1KZN+uJQBRPx07nSGliIoqYKtpqgxw=;
 b=oPYXk1vU9XZsaV/UcdWDv1QW90jImkxjCXEJ/IxaUs9t2pHUikSE/oV9WEgdGecPRaI+q8BKdIgSVoFDG0aSjyZu810TMVRcSV5IrOagLtIaG8RmXjo4lpII6E/qEKELxU7Ooqgb4l0tsZnpdxDZcR7hN0/Hv+Iurtk8OGywtVrYX0VBo09PoBCsSDD2pXLZGlwN9wN9yLNrSkEMdx6f6tuWB8mjS9qOijxKWW/WIPilEwywMPy7SBn+BOD/ZMQqt6JvF6Llo+sCxBa3Dkpg3dhqhpYyJZ/6vUAsdQHTuBTMZRnv1qEBMcQRCCtK2uOarLc8AfDBsVTvKMJoQ5i9ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z2MrwPEE9CpMG1KZN+uJQBRPx07nSGliIoqYKtpqgxw=;
 b=GnS5zDwePvp+kBlIsJBMW29gNrJL2vgYS6RbyHZAvRKzj5uF/y9baruS/dbPjsFJWsCi4U37MqiyFRDFpP7m2DVeANvzUG5gkGrMBUKjyhtT9bIfIV1SdbQ1qlMfJXuj1418+KUs1DamTYO1QkxjNiQl56kEceXQhUfP5gshxQM=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by OSYPR01MB5351.jpnprd01.prod.outlook.com (2603:1096:604:92::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.22; Sun, 8 Sep
 2024 16:39:34 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1%4]) with mapi id 15.20.7939.022; Sun, 8 Sep 2024
 16:39:27 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>, Yoshihiro Shimoda
	<yoshihiro.shimoda.uh@renesas.com>, Vinod Koul <vkoul@kernel.org>, Kishon
 Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
Subject: RE: [PATCH v2] phy: renesas: rcar-gen3-usb2: Fix an error handling
 path in rcar_gen3_phy_usb2_probe()
Thread-Topic: [PATCH v2] phy: renesas: rcar-gen3-usb2: Fix an error handling
 path in rcar_gen3_phy_usb2_probe()
Thread-Index: AQHbAS4ibvRfK4Xud0ioOSFDKFeH4bJOFDsA
Date: Sun, 8 Sep 2024 16:39:27 +0000
Message-ID: <TY3PR01MB113468D1573C1E50AC9F97DCF86982@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <4efe2d0419cbe98163e2422ebe0c7896b8a5efed.1725717505.git.christophe.jaillet@wanadoo.fr>
In-Reply-To: <4efe2d0419cbe98163e2422ebe0c7896b8a5efed.1725717505.git.christophe.jaillet@wanadoo.fr>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|OSYPR01MB5351:EE_
x-ms-office365-filtering-correlation-id: e07a0dee-0781-45b7-341b-08dcd024cdef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?FTDTMvxRKl4CzE/5Lybf/hZm6kh9iK0/8+WUSqSW2zNT7Zz2Kn0ICZ3Tvb5L?=
 =?us-ascii?Q?qspp2fHikJS0opJMmL7HyWZAM8pzL5gaWjscx7D3HOvsoBwAVRYn62zkuMy7?=
 =?us-ascii?Q?yTqiS0uGQyJ6NM8GxRwrbXAUQnc3r79cNdSdaTxoYGgIBs/RDekKTGZz1zSR?=
 =?us-ascii?Q?xA0TWlvr6iTyYLIZ5rPr/ETjMurr7ODlVbqv3qiJggiZjQWzecFzOejYAHD+?=
 =?us-ascii?Q?fXkUimoecZcqoUoQFQhIArk0xeysGOVeVuOsfpvJAszALUfDHBX8N4IWnlQ4?=
 =?us-ascii?Q?cms80dm4i8m+rrAwvcWG5wjYxod/g/1eTZn9kpPe/+BfR0xlvuxiYFweSl/e?=
 =?us-ascii?Q?s7FEXX8tZJlH5Tg8SaLU5t0WbshBgz/MsOeWU3KvArxPyAH3HFs70VSpB6n7?=
 =?us-ascii?Q?rdBZBdLoXr4BIXZEQ56uGrfeMZf8VuwZQ31gxAG4RENrB8L/9F40cPOIJSiL?=
 =?us-ascii?Q?RySlmf31WjAg3GiGk5OociT592l3o+MAJA87hbHfK7SZpa0VVhmeOpK3R38V?=
 =?us-ascii?Q?YVyJY8MlaQ0TFK0Q/YU5JQ+JMeeiR2vMzEYgy0qTIH/kP/xOVoELGDAymMjq?=
 =?us-ascii?Q?MaC428Ht/h1/KXdFeHzm59UhCdAhrNABT5IIRtItMg1ouJ3SHjShsH95/bPQ?=
 =?us-ascii?Q?0YuVAJFpWxs/hIvSQu0RNEXaK0ELyOjzxS+nMQBXp5a08NBMVtEgFeMp6KPX?=
 =?us-ascii?Q?8UmXx3wCiWzmc7OfMUEfJr+lSQSmHVbYk6TpjGafE0y84kvpvXJXiZNM75On?=
 =?us-ascii?Q?p7zvsgCDyjEj0xGi72X2ArvzdTg4pRy1UNuz6Ohk6pJQ9zGa9b/bdp6Pceio?=
 =?us-ascii?Q?J6iOJco/rB2ctyeOCFCrR4kFZIf7BB0A1SYWowNH77gBu2xwx5MOqJsnkPkf?=
 =?us-ascii?Q?r3PrL20XvTYeSoD8ERjrGdofcP0hLGONDOT64ut/bAfVgjsUzzaXhL9kE0h8?=
 =?us-ascii?Q?FhpHmarWiRD3DcPYk6cXK+alyrFOYceYqo5+r1M6yEpmDRlghMGEerfsUxbr?=
 =?us-ascii?Q?s9+Kxe/xF1g07noH5id8yhMe08LRmG3lkTJRz/7yk8xYeyDb4+kKYhvNj57G?=
 =?us-ascii?Q?Op//QvxbcXn0cbkScKfENce2fbpVSDQ0O7NTN/dcCt96XPzfjdSrl9w8zU7F?=
 =?us-ascii?Q?Tdk/CXLdAOwkRun9EUmpKduc0maGp0dWJymOgj66yLunSth+XGAm4gX9mfv4?=
 =?us-ascii?Q?bmI0xXU4vi4B1+QmN/BBuG0kHMxVWN0JcYBzlUj53EQvb13COZidOl06AdxO?=
 =?us-ascii?Q?mF9xgh68MlVlBNv79fOyqmBu/uq7sJmUsd/hmmKmn8PIIZgIyp6bBkzB3sLS?=
 =?us-ascii?Q?m/vNOP96sjErFTzCSDTtw6OUKCWztjAnjDmGHhVh9CjHsd/Jjkf/Rwbkdo6e?=
 =?us-ascii?Q?rcZEMwo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yxCGp8sImPkJUSMYfP5sIZGD+dYFvzMs6nHEoxNabHHffv+Wu4ICqK0tXvZe?=
 =?us-ascii?Q?Ju8y4tUE+wW9eYYfurwmjsfg5B5sF/sxIeEq4jN5xletOXAcXvdj7106gfJE?=
 =?us-ascii?Q?s0samnfkD85U/Ll8DaeWdfNFmuT42FclSCYgiBqY6OUift5NWgWNDzAnNoQW?=
 =?us-ascii?Q?nlSgujl2Nu1lh7FSldKah+aOitU4WTvsGxJs3+PqaA7uMpdUqW1dGOfcJV9i?=
 =?us-ascii?Q?CNVl+AJiq+1y5CZMxzuKj/WYQG6fswT8jp6aqEIkueYUdGGO2DymHhOUyQtt?=
 =?us-ascii?Q?mz2stFNX93PKq/HpcXEDhhPWR3Gs3G5ot+pH3/GM6GXEjFIlcLKT4msgsPin?=
 =?us-ascii?Q?1ivPH6gCuOFxMwM2neDyw2OHQnGEBcSoFvdOVBmYgRjT+8Ivq5caYnyNW1PW?=
 =?us-ascii?Q?Zrnc/WDc+UOLdhUYrDpUCsiZ7K3LZNB2Ijk32uhciVQf2/lS/cMySPT9f793?=
 =?us-ascii?Q?mIBHfQflasJdy+zJPcCKOlF8AmHbEO/dwzUCJ9Hp/mLh/SsQada0D5cffgO9?=
 =?us-ascii?Q?4dQ4Iudq9e0BBpf+kMKLgc3TFGF2nBv2bcfu6Mu/VgLerkO31+/0pIXV2+3v?=
 =?us-ascii?Q?x4k9Rc60xuFU+jYzYU823SvfZauEs39SR50JjpLNX+Ap1JnH+QxpFXgrnim0?=
 =?us-ascii?Q?nkT3rhDU/fiQwR/j553/LX7QY9G4olUwZ/lF3sj78mJAhHtNPPj0Jfd8PFbQ?=
 =?us-ascii?Q?3LfRvaG/Jhuwz71W4rvIjeE6rXQ9zdOIJx5Z/NNyIQ2DLh99MKgFVAf++jDw?=
 =?us-ascii?Q?iDFAwyVcPLtwKbSFphZqKNefnpqpYDtgss0muZSevJEhIPIpTEWLGpr5Uz5Y?=
 =?us-ascii?Q?9KiuIStMvq+EDoLH/dbkXzLdkB7t7ScJlirUs671vROlu7jyzz5BA8JrGYjT?=
 =?us-ascii?Q?WHZ41viLpHxYYyy+onZXMPSAvkRJpHtYiM6afXBaqNbei5WaWj+JVF3O2aXW?=
 =?us-ascii?Q?LakMjtFgxn2XiEFAkCnSXGuN84psAseuzg+TAi77u6yGmdZVhvdpuwuLTwwa?=
 =?us-ascii?Q?q0B40V/sEZyl/1sCPykVknyEmkbsaJzoN1XhcsS2bB+1RJXVJdlVZ8FlfihR?=
 =?us-ascii?Q?TaIqLtE0NP8WVqG0vScZ4SKwRF93I4FVy/KSXDtxX2v2tS1zQGrOAPuEDcmj?=
 =?us-ascii?Q?zg9+BhRNhoBgq5T3DhEUDDAO5QR24ykKHJSDXXgkryFaF0eLLbP7HEesYF/T?=
 =?us-ascii?Q?Md+u05Q85ooA/lN1fEPxecX6HM4ICnHYqLjFKM11yx8NOp3h/AqQv4uaosIy?=
 =?us-ascii?Q?ftWjaCMZ22I5U3rOqrodelWz+5bkqOnAfWizL/JbWNom0pIopf07b7L0FqpP?=
 =?us-ascii?Q?p9YDTstGC2YLqysfT96gPh8mzjQKQq2Xcb61YnvXwyVIz3gop+2JebdiEUYc?=
 =?us-ascii?Q?a1sc7BKFJVU4ophbaCtAYSrpnCC4Mc2WxlCwaMdZBQqxAD3DBrfTtkWhk9yv?=
 =?us-ascii?Q?bPYxKrqcsQ5438HxAturg6hQDVXko1cx3S3CBbGA1oYeBZdIVR96crmVT4Tw?=
 =?us-ascii?Q?PTWXFGu8pR8eKp2ksSWmsnYK/MR0qQqXMcXntPNiR0q2arS3BtY+mvXGFQ5Q?=
 =?us-ascii?Q?Jf+DllwqEDtRBlcqGDUjqnbsc+clBblWB0MM/YQ3?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e07a0dee-0781-45b7-341b-08dcd024cdef
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2024 16:39:27.1559
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 83rvP2YtWSgM8So2f4gxyBaAsUCOx54kDdmXqxmtP5/oY4Fub/8jwbRGUQD6ZSM7iSCOr1mbiLxGbfOb+ZsA7VC7Is2k6IWEbvLJZksun2M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSYPR01MB5351
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_093946_787901_A76E55EE 
X-CRM114-Status: GOOD (  20.71  )
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

Hi Christophe JAILLET,

Thanks for the patch.

> -----Original Message-----
> From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> Sent: Saturday, September 7, 2024 2:59 PM
> Subject: [PATCH v2] phy: renesas: rcar-gen3-usb2: Fix an error handling path in
> rcar_gen3_phy_usb2_probe()
> 
> If an error occurs after the rcar_gen3_phy_usb2_init_bus(),
> reset_control_assert() must be called, as already done in the remove function.
> 
> This is fine to re-use the existing error handling path, because even if "channel->rstc" is still NULL
> at this point, it is safe to call reset_control_assert(NULL).
> 
> Fixes: 4eae16375357 ("phy: renesas: rcar-gen3-usb2: Add support to initialize the bus")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
> Changes in v2:
>   - Re-use 'error' to simplify the patch   [claudiu beznea]
>   - Update the commit description to explain why it is safe.
> 
> v1:
> https://lore.kernel.org/all/fc9f7b444f0ca645411868992bbe16514aeccfed.1725652654.git.christophe.jaillet
> @wanadoo.fr/
> ---
>  drivers/phy/renesas/phy-rcar-gen3-usb2.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> index 58e123305152..ccb0b54b70f7 100644
> --- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> @@ -803,6 +803,7 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
>  	return 0;
> 
>  error:
> +	reset_control_assert(channel->rstc);

This will result in either kernel crash [1] or reset usage count imbalance in case
of error [2] and [3] in rcar_gen3_phy_usb2_init_bus() see [4]. Also reset control API is not
respected for SoCs other than RZ/G3S. For those SoC's reset assert is
called without calling a get(). Maybe add a check (phy_data->init_bus) for
assert api's, that guarantees assert is called after calling a get() as it
valid only for RZ/G3S??

[1]
channel->rstc = devm_reset_control_array_get_shared(dev);
	if (IS_ERR(channel->rstc))
		return PTR_ERR(channel->rstc);

[2] 
ret = pm_runtime_resume_and_get(dev);
	if (ret)
		return ret;
[3]
ret = reset_control_deassert(channel->rstc);
	if (ret)
		goto rpm_put;

[4] https://elixir.bootlin.com/linux/v6.11-rc6/source/drivers/reset/core.c#L483

Cheers,
Biju

>  	pm_runtime_disable(dev);
> 
>  	return ret;
> --
> 2.46.0
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
