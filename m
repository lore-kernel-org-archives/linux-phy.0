Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD8A3CCF9E3
	for <linux-phy@archiver.kernel.org>; Mon, 10 Nov 2025 12:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=13jsHM9orfd4IWY0VwrzOCjbG0WJ0mLFIqscLJqaQ2c=; b=jkCxAnvxma27Tj
	ATLHjmrrkF0TYze5je5wbH8jL3/3M4lMONHm5QvVFlaxs9TwhE2jdrNyZHfPpEClXp3UQODnvc/DK
	jnPSe65ObDjYjR8Z72YOcHrTtCdG52+FSAHJGmbkzscRud25MFXctARDiN2TuyjCdzLXXVdOdyhSs
	36SeQrRkGQ6uzIdUnBN4mftV09y2L7NnJUx2x31gaJUFA0hEJbpPtXb/YNP69WHfHAF03tFSujX0+
	papy/YsiVyEOnwtgAPnTIDD2BZa+0dAP7Zc0LAgtetbYpDyjtR2qEtD7EUOsMMYzZHMEhWJDsZpE4
	qzBG3Ea5OzgXs9pikHFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIQjN-00000005Nhq-2lyC;
	Mon, 10 Nov 2025 12:10:45 +0000
Received: from mail-japanwestazlp170110001.outbound.protection.outlook.com ([2a01:111:f403:c407::1] helo=OS0P286CU010.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIQjL-00000005NhH-3dkf
	for linux-phy@lists.infradead.org;
	Mon, 10 Nov 2025 12:10:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u7OHwLlzv+Nk3nCrxDAjtkRYpNye+iSxjgNL9T/pYLYbSaKZqUGMpHC2jSj1gMj/+OdNNLXgGE1Ty36+2bSmLooniMxBQYf7oM5w1p7F4pKhK4hHWX7vJ3/rNyXroeWCDVyBx5+hGLHg7r3wod+IKFptOksLsT9688q/sD/+a/v0T6/RAR6jmmNoeR+yBRMfaFE/kqHWuE+IKn4/BP2cXTnhbWl6BHHOwk6qrTUZyKLaQSGWaxZe182dD18hAg1XhSC+IemYOx8+CPZh8oob0Bf14wf2KNQqfx9c/PNA7CFQgMAG5inKOsWvsxhqG2m1q3wSKh+WVeiKgOUpoOyjUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UlVOqrgbgISZzaLtuuIS9Nv+x979iMSBG8M3IVkCWAk=;
 b=DcdmVZWVjU+YgMLM5XkkA9uRVyzorGCrDexwBPNtzh5xa2AgEMgd2/T+iZ+1O/3NXQtJkcIjuyeT1ycioMtlL4F779YCSJRYG9p+zNit157Fk6IasSY2WU/JTd95X4YrVFysEVYiPmLdoA+i6FL6kzbbS1VPiMqtfC9Kbvke/Xjh1XemHeYS7xSQ4O+hK04cZEWZckRq48r055VWwk6DWVBZwEgeyqGwFNAkarHEIDd+SFgduc6vsEfODAoTqRMQeetuegeTp5NFA86VkY/0gAeN+qhcXCEHs67bJ0RrHk6uzpWTUCxOvFGJhhC/wLsdstZZPwEvNHzkGx+wwVVdeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UlVOqrgbgISZzaLtuuIS9Nv+x979iMSBG8M3IVkCWAk=;
 b=iljzuTTYBmhEg+o3uPa4LzHCkK5KuffbMAGbHdpGLn1DOV4pCmh7bi3BaE0au698ZSvkRefB+j1yCvIxsFNl+R425y05687Jvh5UPU7QYABhDUbzXvltftjMnIlyGr+ms2K56yUev59Qd4j4A0RDNXQLnelSHX4Zz/AEkJUTbKs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
 by TYCPR01MB11558.jpnprd01.prod.outlook.com (2603:1096:400:37e::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.14; Mon, 10 Nov
 2025 12:10:31 +0000
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31]) by TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31%6]) with mapi id 15.20.9320.013; Mon, 10 Nov 2025
 12:10:31 +0000
From: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
To: tomm.merciai@gmail.com
Cc: linux-renesas-soc@vger.kernel.org,
	biju.das.jz@bp.renesas.com,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Peter Rosin <peda@axentia.se>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 13/21] dt-bindings: reset: Document RZ/G3E USB2PHY reset
Date: Mon, 10 Nov 2025 13:08:13 +0100
Message-ID: <765a0512d36ce34117961dd46a49dd88efa67cf4.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
References: <cover.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
X-ClientProxiedBy: MR2P264CA0176.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501::15)
 To TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB11947:EE_|TYCPR01MB11558:EE_
X-MS-Office365-Filtering-Correlation-Id: caf63a73-7be3-42f2-2eab-08de20522501
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|52116014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?MYbQOegOhwxxCMDwyrwhdhDQOytJfb3US8Gdy6eWnMfjGd/0FTT+JVvdgF0z?=
 =?us-ascii?Q?/yPnW03Ysbfrz9PzPCQtWhdnyrTL+79cTfXOp2HxtdAoPnY0PXxyLYBETQ1x?=
 =?us-ascii?Q?zLjeY8Hk/G5F2ORWv3lQF5wE8BTPMVozujx4KidIyF6hNeQ159AF3QT1Yibs?=
 =?us-ascii?Q?qBjhtiZJRuBYgTE/V/N+Tsp3y82IKGLkW6WwQWgv4l7KiRdk15a3iMG0thU+?=
 =?us-ascii?Q?dmAhnieN7DG3OBb8t0ZtkSHK3lRoY41C+APlPddOvHra5YC/EwqEy9X7NNNF?=
 =?us-ascii?Q?ODl2fmlF5l9ADNxAMwtTQeJpfiMbDUP0JOIGUt9s4Zl4f/dp1+3pFTd+5ATj?=
 =?us-ascii?Q?+MKUGh8uiCrHYcASvrLIfGWuTS2U4U/YNzHceY4og6G0jkIeBxae+mIX8VWJ?=
 =?us-ascii?Q?xr2wTxb+9U6YqFdOqMjEafaOuRgoE5C+4oeri9yyNUoLaTizAX1kI0BwXLl9?=
 =?us-ascii?Q?4MC0jirfDs3Rnf6YlztYtAx4DawPvtmBJ9jyPv2zn7ddzHg5JNZz6v0eOaPr?=
 =?us-ascii?Q?qKrHwjkhS07Uhg72AUPfzWul/PojR+FC7x8KFm+4I/+7O+BUQIg7UTdiTsQU?=
 =?us-ascii?Q?gfisc7wRcP5hcEIknEQfmthEv3vhk1kYTTT2Y/0/F2Fr3CwIt1jFfOi4RQkP?=
 =?us-ascii?Q?vz/N46zurjgqCAvQyfGK+fzTZMa4gI24sikHSzXj8gPpV+XSlDtU8+Zac9qi?=
 =?us-ascii?Q?0oJUYxI81mtS0cfS8AtdP6d9Vs6hCEOi3u21MNTc/AL3i9LzqvYSge+mUnDe?=
 =?us-ascii?Q?/DGHnVFtOiLqLTiD92IAU898szPtIv5HxdXURKslVSV+KqJlMEPyumHvIezI?=
 =?us-ascii?Q?LAL+9lcOQosv19n79H1JqXdV6BmM2GqXFV3TtlVjbCM1SKNUDlQzwLg7+2QC?=
 =?us-ascii?Q?TsjM3UtT3O3yKYsruA5mRum+F8IJ2KVoKgc3DLiCxSO+AJ4A9dQLQ4X5fRw7?=
 =?us-ascii?Q?d2HEpC08ZT+qZS981Uac9DFB9pv3Rx+5S2xnlUClb9G+pafNpJHZ4CU5oBBl?=
 =?us-ascii?Q?rHAk9piqMOwM0RDMnNAj08XCv+nhhJ+slV8oweHcTQn4dlTDyXhp9NWRg49S?=
 =?us-ascii?Q?c+NVf5Fje5EpuYrkoK+GyOKSBH4orkS01b2W2EeEJTvmMYFh+7yAOk6t5PWk?=
 =?us-ascii?Q?fGVOOSFcOXTL2ZwbHeT0ih09usVYAGXeLui8gvYD8ZcbsRLwUU1WtTSaDA6T?=
 =?us-ascii?Q?4xyG+AQirGvySt+4mIpF6GXJN5cqRa0INPIXREoIdcloNZt+hNp/DKDkQPF4?=
 =?us-ascii?Q?dNdhfN8+0t2M1r672+PYDnuDTxMmZ18bSqTVDhs+lXp0Sl+yP/mIjde+PuF2?=
 =?us-ascii?Q?URNkGFcvEacx+vyKjfm65cAm4pId6dWtbCBLXiqjhwJcyFD2jA+erFPHCvVJ?=
 =?us-ascii?Q?9mwARMEzKaanKA0FzVPTB0MzpravdMX+z+v4B6+tq19DvLQaWUG6qCy1u/jS?=
 =?us-ascii?Q?k6npoV+znS6IkE+xNNGnnsDkHQs0VJPlnOS1D5xRtU37WYB0e8AbjN1hm7J5?=
 =?us-ascii?Q?/aS4sLTWicAif1n35hIyYtKc39MXLcZWP2hb?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB11947.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(52116014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZqBSvZTaL4kxdRn4wrqylkIpbc9NmQQnuxz2ZXLpppIMtga7GvgNP7xzjkLD?=
 =?us-ascii?Q?CGKgmUA23ZE+6ko7DLBvFIHRqpPfNEBrqrueSeHFEm4+yxOZuN0Yqt6CkVMm?=
 =?us-ascii?Q?q7zUbfnV2xv2vBR7xteGWDLBKfrv/eFKiJaCtWLDXFJH+Od8gbf1oB1J5me7?=
 =?us-ascii?Q?nr1Z3/AM7m3oj9woMZKGsFXryt55uDPwkfQKB9yUqO5+W14H6J4upTNSpbJ9?=
 =?us-ascii?Q?hAPvHXLaTu4flzqecqhKjDjxuRAc2OzQQ0o9DoizUhaT1UrMyYSjzHyuohzZ?=
 =?us-ascii?Q?iJ6K8GwggeFQjIqbzQk7IteCJZB3zcGSOdD24XvWARCPAC6EWlPycU3/jCxe?=
 =?us-ascii?Q?tNsJgTf1AGFiVUOmoyBiEV3e0J2SIcIaBMVmWMcLGRlY7Q7NVBZNCi17RiPW?=
 =?us-ascii?Q?7bhibphMb8utWo+vJikQccPo0L4iFCcxH7cH7S9W6dirA4L+ijbY6t/m1rGn?=
 =?us-ascii?Q?J++X8M/XCOUxO3EvLcVXnCpN2spvUfJyEWFnIpWPMUGh41vGeXyluWGE1tTp?=
 =?us-ascii?Q?wmkSnELL6RhiTv5SY5dvtXNEzXw98zSijzCSJaP3v6Kkvo3W0szCFeB/If/4?=
 =?us-ascii?Q?RNoqxi2lbBrsVVX8Av1IfnsoWnfoJYjCUj1tjUYpPeJ9g+N2k5c0ZmqLhv5k?=
 =?us-ascii?Q?bq0ekfiRJjDMzKby2Q3M47GTQUmUA0rF6GIKgzmGih4apqKnjVBCrFK0P5Na?=
 =?us-ascii?Q?tOY3cc0Ztad09Tx+h6CgNv10lwN/qwlj499atXZKWqZFS7Obzkmz3WJYwOgU?=
 =?us-ascii?Q?Qoba/W0LzqdUglxzS7kB+h+uC2d8/kIrHPs/AmG1QmU8SaBfa79ybEUZ9h4t?=
 =?us-ascii?Q?flVrsMsOoaAihEuroUXem65cn0N4LPUBuEEMJwHX1CP7JZGhVJd/4+VJk/kz?=
 =?us-ascii?Q?haiziLGxtpbGd7wghOOI/9zz+kyBX/iJMxDt5VdvKQm9dHPeqpXB+szHYYwK?=
 =?us-ascii?Q?b2S6ZuPau2dnO9Ulm3coVdFyEAfwqop1KqICtrNmRygdzwwnWBQAGmcn9MG9?=
 =?us-ascii?Q?tqpB4mn3jdk0ZhFF+l5lWIa8hll4mFUMp+Q83JAURo5k0twbotDb90jT0Mhp?=
 =?us-ascii?Q?JoerYpjpOHMzSvbkwG13yXm/USrCKS+vMEgyF8szny7npL5/aGMGezVJk4Wi?=
 =?us-ascii?Q?Xdo0NA4jImGhqTxSNB6+Lg0Y+xq1FeiO8w66Hz8WLgaChdVmK8XXgr3DaHtD?=
 =?us-ascii?Q?oTC5MyTefOPB50s3C5j8zvfIu8tq8tU++UR/tIDrJXf6BuwmFrstQ00AuQhF?=
 =?us-ascii?Q?+eM2yaP6Byp1YOuuS8K58CnoKbftTyGi/kVgTzNR+xlCWpqXNSFNGxl7IQfs?=
 =?us-ascii?Q?seUCFScvdzGJoZXqUF/iarqsPMsUPncxtgPWKDG6+Ltv/HZBXPSCXRGsrS36?=
 =?us-ascii?Q?aKHzLehLF850QXm8qmg1z6rWRK2e98/p8Gfgi/Ckg2ksaZpt16eJy+gybkbo?=
 =?us-ascii?Q?jdEmAy/wS7S5WvI1PuPSP7djjs7g5ZxFK5RfQwO4LBKdDGkM93vh9rt6zzl+?=
 =?us-ascii?Q?nwFC07ClWz/g9wUfS2XxEnLJ9FUe9coyBLDaWlgLrBmkZ3uXiNXlx3gbbkHl?=
 =?us-ascii?Q?6yTVEQC1vQ3PoWce5fBuiYj5QhwFXJa3/nprIOrRJEw7lznTJ5PtAnA1wCdC?=
 =?us-ascii?Q?qGEG9Tk0blp3B1685xA2UZ0=3D?=
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: caf63a73-7be3-42f2-2eab-08de20522501
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB11947.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2025 12:10:31.4606
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9ResbIAJQQlsUHSPynoA1ARosCsJTruohC1lTEp7ylRlGX4tCMCKZzl70tXIPvjAVz1Ffot1xzylEiMulRlfIL2/dWZrScydaxnYLqnLBKFJ/H37REBPFK+18OMK/dLH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB11558
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_041043_929462_A2DA0FA0 
X-CRM114-Status: GOOD (  10.54  )
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

Document USB2PHY reset controller bindings for RZ/G3E ("R9A09G047") SoC.

The RZ/G3E USB2PHY reset controller is functionally identical to the one
found on the RZ/V2H(P), so no driver changes are needed. The existing
"renesas,r9a09g057-usb2phy-reset" will be used as a fallback compatible
for this IP.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
---
v2->v3:
 - No changes

v1->v2:
 - Collected CDooley tag

 .../bindings/reset/renesas,rzv2h-usb2phy-reset.yaml           | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/reset/renesas,rzv2h-usb2phy-reset.yaml b/Documentation/devicetree/bindings/reset/renesas,rzv2h-usb2phy-reset.yaml
index 03da74ff2d08..c4f3aa8b27fe 100644
--- a/Documentation/devicetree/bindings/reset/renesas,rzv2h-usb2phy-reset.yaml
+++ b/Documentation/devicetree/bindings/reset/renesas,rzv2h-usb2phy-reset.yaml
@@ -17,7 +17,9 @@ properties:
   compatible:
     oneOf:
       - items:
-          - const: renesas,r9a09g056-usb2phy-reset # RZ/V2N
+          - enum:
+              - renesas,r9a09g047-usb2phy-reset # RZ/G3E
+              - renesas,r9a09g056-usb2phy-reset # RZ/V2N
           - const: renesas,r9a09g057-usb2phy-reset
 
       - const: renesas,r9a09g057-usb2phy-reset # RZ/V2H(P)
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
