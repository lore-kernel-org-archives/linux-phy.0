Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79E2BC35FFF
	for <linux-phy@archiver.kernel.org>; Thu, 20 Mar 2025 15:01:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y9DZ23IDnyver8GevpMuao1fTxXddVQ8c/Qcf+0N3o0=; b=Gh5qPDLReufsn5
	JUyJwjY7Xu4cefSqzfFA4EBPdjvFJzwEdV3GpblClg9Lz0yIFGZNYC+aAK5syUI8TyBE3Of6jO6WL
	xX0BA9RT27ai3EeIFG6qMhkurEhCuo05LIwdIPLlMRQtkCInAKSh1WBSyNtjxFIdRBpEbD/l6zuO5
	0el6ER1oVj6PI421R38M6sv3iBwIQ9gOl9GmKoiA8Y1iN8YB6zYhL2wb80FYKMPi9L7keXCoX83Rn
	mOX0O4b8LMK9M3R2krn+I/jTP2EkCdSADQ7vits91MSIYxoLMCgk+7uLloicOCrYd4mdaL0dkU3rJ
	848l0otV7E5PEvjd9D4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvHOa-0000000CTHL-13Xf;
	Thu, 20 Mar 2025 15:01:20 +0000
Received: from mail-japaneastazlp170110002.outbound.protection.outlook.com ([2a01:111:f403:c405::2] helo=TYVP286CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvHOR-0000000CT71-44tg
	for linux-phy@lists.infradead.org;
	Thu, 20 Mar 2025 15:01:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YhpmacBAI+XLfQMojkzJrbvQLuupEzt+YgFMGZEBmdQOSwgk/Bo2Lx5Wj22pE0NM9Z5n9Vk001QUca0sfjTgFalxsPXJqJ51mh9ukd5hiJJK3Qtz66+WcQ6j1ISqVeH6auZuMRyxRJiLHaotg4WwBcIOJE8Ph3idlBghSq6dDIdBv/HQyQGRHtpXfnJKqtU482ZWNADvGLn5amcRz7g72MlPiKCxfrTk4aAhEncyugUNhmiok3J3e0rjjIgCuKHHnXtDKaQ14jjzNR9XIJiYYbHgPGpSGeDXSbsJ/EIOyOA3s7Q8POs2SAVIh3j6yJ8R4SBKKJx1ZbI45g/lwmhgqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3bOZUuyf3pBFM1v47AnSQFp5zJYIGockVI9hBDFhzIQ=;
 b=Lri8r6n9+KSgEcjxt0kGIAOxRQj0SfzFMku8L2jdj4/QmIXh6rntY4SPTGIOCMEHQKUJphlyaOCk4r3tr0s6rbwOmzMt8Lsb+aA3IkQoydOWU/0zeS4byxMtGbbJlcHXU5SKdQnxyHEQ54ag7JJme/Zsk8V9ZJKfyngC52IgpI0u/EpGNHwy/8Lyd33gFktI6s2/CI1TpUgeCNsWIlK912viOUDI8Ce4ThKTeN7A3jTLkj+4Pfj0YYkBguwl//B+0r7pVWN0zGOz0f2i+9nOpN6OCPWOo6uOuj8sOGvWZk7QMXN+J+4orkHxDNh7ggHeL6Z8TNqsC64r93enpbQRDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3bOZUuyf3pBFM1v47AnSQFp5zJYIGockVI9hBDFhzIQ=;
 b=qNBgKfSB61QhDFUJsZe2DD9zTdD5Nx0salYzrEuVjw1+gPRXWW/GAICRMUrXRUo/YDl+itGTDLDOjOubq7yzf0adrN9bLx3vrb52gNYA6P96smG2WZVtg/14BMBZuW7UkxKAs+J646H9NqTIeQ0Iev0kGSsEZ2irvQrqJT0e0BI=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by OSCPR01MB15451.jpnprd01.prod.outlook.com (2603:1096:604:3b3::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Thu, 20 Mar
 2025 15:00:44 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1%4]) with mapi id 15.20.8534.034; Thu, 20 Mar 2025
 15:00:44 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>, "Rob@rox.of.borg"
	<Rob@rox.of.borg>, "Herring@rox.of.borg" <Herring@rox.of.borg>, Marc
 Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol
	<mailhol.vincent@wanadoo.fr>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay
 Abraham I <kishon@kernel.org>, Peter Rosin <peda@axentia.se>, Aswath
 Govindraju <a-govindraju@ti.com>
CC: "linux-can@vger.kernel.org" <linux-can@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] phy: can-transceiver: Re-instate "mux-states" property
 presence check
Thread-Topic: [PATCH] phy: can-transceiver: Re-instate "mux-states" property
 presence check
Thread-Index: AQHbmNKAXe+gsZEblUuBeV4i5gwYsrN8H2MQ
Date: Thu, 20 Mar 2025 15:00:44 +0000
Message-ID: <TY3PR01MB11346DC86A84518D92789A3A886D82@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <6bcfde63b3a6b25640a56be2e24a357e41f8400f.1742390569.git.geert+renesas@glider.be>
In-Reply-To: <6bcfde63b3a6b25640a56be2e24a357e41f8400f.1742390569.git.geert+renesas@glider.be>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|OSCPR01MB15451:EE_
x-ms-office365-filtering-correlation-id: 65a0e445-f0f8-4cc5-42e7-08dd67bffd7e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?9aznLYYVb2Vr9iCcX9S5+NfOkO1CMr9Qzaat4eP0AA0JUtG5LBsYVlZOV2fQ?=
 =?us-ascii?Q?2bTPn/XwkJg5fW9lRb7lOMrPx+aMCQJlkdP5A1Z8N6F1B5t66BCe1ZwQRpx9?=
 =?us-ascii?Q?A+YeT0i6NYgQFZjZhXOtu2iUwbcL6qhU1bF1qvf6/Qp8zE7gxbzM2LoaExq+?=
 =?us-ascii?Q?LEjv86DGIBHYJQ80aerEAu6GR6m67zqYabS6ok3tvbhzyp2k88z/vlRwncdL?=
 =?us-ascii?Q?icjAZa//vFRZ2dlM/KY+hdHHuBAet6pXlIWErVNpJmuUpQpAEMrpc6ihDfH3?=
 =?us-ascii?Q?Sg0PUzEOBOlegzp+Bwh0iQZ4NH3/x8mR3l3gREh4ZhqAkAR6wKy15HM1Ne3m?=
 =?us-ascii?Q?U8XrdjXF36LpBIlynTEACxQYWxrVP1rWkS+bavwCKnUF9jLPx2TPkXeQBR3k?=
 =?us-ascii?Q?UkRml1UXZLgI6d8W8cwGzoTp0xMTZGyoYCs1iRc0tM7N5X4l9VnzN9AXScCg?=
 =?us-ascii?Q?ptuety/qIId9ouC9koeKx7VgINZPso2bvLL4LVyX+OVoslqdlljNZqLT0ocu?=
 =?us-ascii?Q?XmPwfjEM7sn5XYRNATwG9TBf9jddJ3h8T0URG52O7f5CIeKsRCG97szZMGCz?=
 =?us-ascii?Q?FcI/zx5rk6amxWRiuDsX9w/TtciKdlNd1Hn5/2hn47coRq23hI6NqgMG/ubQ?=
 =?us-ascii?Q?5K5Fl/pXn08a0YWivXhkAbTI23tQdmWT+r0Kz9ejeyNq3G4Df3yhfyWuTnkA?=
 =?us-ascii?Q?JlsRk2q44lT9YNi7iVMeDHjEpCRJly/a/JS20hD6PujRLiDFxRVr8U4hdZvg?=
 =?us-ascii?Q?LtLw+D6zjUOJFoeLV98yzK5ix675okmfDB1d6If8E1YcRs6PdZSfvEk4jFzY?=
 =?us-ascii?Q?ZjQAQov/T4DAMImPA7ETepfX0QsVBLsPxm+0N5lUsWOt0+w4N/atrFDhGg5C?=
 =?us-ascii?Q?DtPvOLdmabpwDnhaOLG4bVA8Mhv4I5Ri/or+LIVWKdjug8UNwIq6F5uCjtv3?=
 =?us-ascii?Q?PCUp4R8Tzd5RuzhjbJvbCbFMtEiUARYk/GNcWdClei9j2HDxOyn2y98js3G9?=
 =?us-ascii?Q?YvPrYw46q3hd8/73v2qkiBrQG6jlBbMw8/ecx2OIXIZmUxawdPOdaqTeaUsz?=
 =?us-ascii?Q?zgg8oZNU2i5/cjuGVfuxvlQ54ChobU6M9l0CGk/Z2nK9NKQI5PFZXG0bJ5gy?=
 =?us-ascii?Q?WWkZQXjhxqVVnmZTdx5ihW7hCgHYUiQuO0b/UfatZy4gtbaxQi5vVHjgmEhf?=
 =?us-ascii?Q?aH0fQZjY0TzUpa2y+bJr/OIEWlT4bxUq7uMNJX80Vn3IaZqGChQF/ykI9Nvr?=
 =?us-ascii?Q?Ed+54zEI47POXGJgw/lMX5VcG+/8YG/MdHEHASYH7RlfqGAj9Frmi6Wtqdv3?=
 =?us-ascii?Q?Z96dzrTBYvheAShxbNH6THr7meEI0jqK8gEh4oNe+Od+gq5QNjIEhSPhZuJv?=
 =?us-ascii?Q?v5B2rRleu52KlSbNXuZwM7olFPnpLOj9PIO7+lYi8mrujXMjPxBlbZF/gzQo?=
 =?us-ascii?Q?mFeOkGNGK2IzTJbAZo8+zXkgwEu5Bpas?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?u9VSPbdxlt0SRvszeCEP5IEdiGibR6d1qJztBxFZWT7A2/4gpIcTfFBUUBK2?=
 =?us-ascii?Q?C5CCjGIsc9TXJLFeg758z8tPMsqssExXzriJPcdDipYL4d6vNsaU+YOAtK16?=
 =?us-ascii?Q?25zfA4d8ogDXuFu0FyiHKsyfBhK/Vbbp65+khCW/miU4oJd644koNP7eoR2f?=
 =?us-ascii?Q?v3f2rCfHU7eBiaGMfeC7Ejp8TRaIniHSg2kG2Rt1k53p9xLfRtF8/vLGHRR9?=
 =?us-ascii?Q?e1RCgAziqmR2upgI9d+kTUflGEdyVr7Y1tlRw+/ntAVI3kRXQbUj5th3yqQd?=
 =?us-ascii?Q?tftncXFTorwHXPtQrhnn3EUeTvLC+ygge5T4FpA+aZXJRre5xyTcnBXdbZv+?=
 =?us-ascii?Q?WSIHO5tsBB4oTCxwcAeaVYakoL6+jcavUAkB6gUWVsljj5xZF2WlN2d58Bxl?=
 =?us-ascii?Q?XQEbBDOLdV/c0hnKE1OAUapjoLfCmArbYrD8c++xPTHLUjbw/q7/+38Y7V5z?=
 =?us-ascii?Q?4tGSY6+4RNWObjr6OE1BuGRm6v9x759bHFJgLo54jBUew1XQetvBQjbVAPb9?=
 =?us-ascii?Q?m8zEzBa0uCT53sfq1zuNFtnwtMnpV2G6tZFySVq+2GZ+vedGwPTic9HjWztn?=
 =?us-ascii?Q?oTrP7YkkOb9BwjipTC2vbqy2wFPn38Wz8bb7Va/j9ssg8za3su4+kXh4jxSr?=
 =?us-ascii?Q?QBPOTruNRwaDc7wz7fEpmUGqFwyCCMqGQ9omFytOHjggp7T7a3/3Jc+pcAj2?=
 =?us-ascii?Q?7TODwnHyHN+2j6r7M9yePX4rEi8FxIs8lQ9clj/stOZwDV1S9Sxt8L8kLfVm?=
 =?us-ascii?Q?SFIWrqakeBt7HhMWk7vnzP2ps/3ljVD6oPKZhxXXZp1BaJ1bAo/ElAM7m1pD?=
 =?us-ascii?Q?dsxOhRTRQ1b3s5H2KHXCGK5jlbAHJPmPOK6n0w8Oh7brg5kJx/VxMfNKa74A?=
 =?us-ascii?Q?NsDzGUUgtxyM1Y1NsMoG2oiiVtUM59qNtQ9egOJDQbb7njv/gTShs7jdeLeX?=
 =?us-ascii?Q?0giG3Z44EKe2kkTwzNR/nLXx7e25I+Xz/vYOnq9gKxVvOMyn+6I9/yPWUX0H?=
 =?us-ascii?Q?7a1vxX+GmU5DgNwBiRdsMFOOoNzMgNWFeTDYclcGM5UsD0qjglDN5x8OPJRw?=
 =?us-ascii?Q?gqIcKJcZxTnQCSmQ3tkZX7BzHEPcRBA2cwHTUKwu75xCsQHe16Ou3TKSUY4F?=
 =?us-ascii?Q?g93TEtWldhHx2Mokij2PzY4kgXhVr5XSoxM55/vrUXA0AHK03Lxp3ZGi9Mn9?=
 =?us-ascii?Q?ktNnrszVB9OeE/AvBXhb2maEh1mEvBqh/rGNxRkKXWDJcqoJmVHfLrHht2Nf?=
 =?us-ascii?Q?xgn/jNFzF6gHM0914J51WQLvrLjob7E2t9zgoy5vJkBJstZIfFFsPU4fMyBl?=
 =?us-ascii?Q?06PZYVbg+KNUjC9fqQc4V0QAGIEN/LWjNzfxdSID2VhM/BCaB51A3HcJTxhH?=
 =?us-ascii?Q?8V+azCuX+vYtIy+73kCIeokmhPLVWfk9P1xBw4X38kFnvIN9INVsBly8b6oE?=
 =?us-ascii?Q?pYbydyRATykZwzMnmp+ikl5B9yEuRpUaxrZkXfJYks+Gktz8enX1uhRLwc4f?=
 =?us-ascii?Q?ZsDkM2UmCtP2SYovLbxZmC5vInh0U0tF8Upwu+bckcJX2MQaJRdPtRPyl0iD?=
 =?us-ascii?Q?bqdE8NbpEJoM/QwDxKZRke58V7sKh3u6EEQmE2bl4Vhx9KFboLlj5k6BW8G6?=
 =?us-ascii?Q?7g=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65a0e445-f0f8-4cc5-42e7-08dd67bffd7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2025 15:00:44.5257
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iBn2/t21yH5XW4VEdiltizSaiXbGLOyKhZ7l83BKmqCJPCKWXGqsFbzZHH3C+lIE5hAC3wTVQLzxn9Jl5wWoR4XiHsuGZ3Ik62yx3HsYi6s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSCPR01MB15451
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_080112_399160_A2BA0B0E 
X-CRM114-Status: GOOD (  20.20  )
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

Hi Geert,

> -----Original Message-----
> From: Geert Uytterhoeven <geert+renesas@glider.be>
> Sent: 19 March 2025 13:26
> Subject: [PATCH] phy: can-transceiver: Re-instate "mux-states" property presence check
> 
> On the Renesas Gray Hawk Single development board:
> 
>     can-transceiver-phy can-phy0: /can-phy0: failed to get mux-state (0)
> 
> "mux-states" is an optional property for CAN transceivers.  However,
> mux_get() always prints an error message in case of an error, including when the property is not
> present, confusing the user.
> 
> Fix this by re-instating the property presence check.
> 
> This is bascially a revert of commit d02dfd4ceb2e9f34 ("phy:
> can-transceiver: Drop unnecessary "mux-states" property presence check"), with two changes:
>   1. Use the proper API for checking whether a property is present,
>   2. Do not print an error message, as the mux core already takes care
>      of that.
> 
> Fixes: d02dfd4ceb2e9f34 ("phy: can-transceiver: Drop unnecessary "mux-states" property presence
> check")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Tested-by: Biju Das <biju.das.jz@bp.renesas.com>

Tested on RZ/G3E SMARC EVK that has tcan1046v-q1 that is modelled as two
instances of tcan1042.

Cheers,
Biju

> ---
> Alternatively, the multiplexer subsystem needs to gain support for getting an optional mux...
> ---
>  drivers/phy/phy-can-transceiver.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
> index 2bec70615449f94d..539b3446b9c33eed 100644
> --- a/drivers/phy/phy-can-transceiver.c
> +++ b/drivers/phy/phy-can-transceiver.c
> @@ -103,7 +103,6 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
>  	struct phy *phy;
>  	struct gpio_desc *standby_gpio;
>  	struct gpio_desc *enable_gpio;
> -	struct mux_state *mux_state;
>  	u32 max_bitrate = 0;
>  	int err;
> 
> @@ -114,11 +113,13 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
>  	match = of_match_node(can_transceiver_phy_ids, pdev->dev.of_node);
>  	drvdata = match->data;
> 
> -	mux_state = devm_mux_state_get(dev, NULL);
> -	if (IS_ERR(mux_state)) {
> -		if (PTR_ERR(mux_state) == -EPROBE_DEFER)
> +	if (of_property_present(dev->of_node, "mux-states")) {
> +		struct mux_state *mux_state;
> +
> +		mux_state = devm_mux_state_get(dev, NULL);
> +		if (IS_ERR(mux_state))
>  			return PTR_ERR(mux_state);
> -	} else {
> +
>  		can_transceiver_phy->mux_state = mux_state;
>  	}
> 
> --
> 2.43.0
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
