Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28047CCFA0D
	for <linux-phy@archiver.kernel.org>; Wed,  5 Nov 2025 15:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0KwMk36RGiKDiv/22f+sq/WzOuqLRFnMm7CqItsomqo=; b=AgYQoq7HdNOjAL
	moXtldU+ZWbJcxlSCv8KCVihrRGr4zpT3ijlsJfwakCeZDZ8zRFyB8lanPc/IL/y1+WMFgMy2dbLb
	QBPXlRphhn+fi4zNfZw/kSrVIvO5UFrar+y6OrZG8NM1+E9JAU8Rc9TFL/nv7EOnnZkt0niO2ijyV
	uo4FgS42MzjKnRV+kYs3KWPZEomMwqEEGgD5po6QtsYl1VMBSBwgS2GRn1mFmVAqzLN3vhdrVagNS
	Y7HtYHKvMREPUVqlL6nXmo5GxuPfe2avfvqVV3lyuJ9HM/a5mZfbTcLTJg90i9bHXRFwCDvtAxevE
	i/EVHWK07fe7e1VG53lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGfcM-0000000Dxi0-3Z2n;
	Wed, 05 Nov 2025 15:40:14 +0000
Received: from mail-japaneastazlp170100000.outbound.protection.outlook.com ([2a01:111:f403:c405::] helo=TY3P286CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGfcK-0000000DxgL-0R4j
	for linux-phy@lists.infradead.org;
	Wed, 05 Nov 2025 15:40:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l6ODz47kEwcRtf24O2G6igmwqqSvR0/y0TQfV9ttvtXyeASsL+9YdjoosBaHo/yPkZctOkoQ8V9SIZKEdWgwzJEWh+xIVMPZv2EmGCSRfqbi7q6O+wfNLkwUhaMBlg/kBoFi9xOcJfHrbytBEqoT84nr/icQEnp5rDRtnoOlL4xPpHYr+TOpLw5DWdRdNchEsHliYuZ6ya+vswO2g9I0JGoItq7r8Tpg7I6saHHkkjwIyUFyQQ1Oiyi4C1/84KxcLn1D2HX75y2BnhU4/EyKrSjD08ySweP+NqpB6oG4ETd+8YA1146Yu9HBG9YcLcTuqGkYeaQNG40BGYpB+QoJRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2BwiLzXo8NyMKbFeRIkQddVUThJ7B9XbDSgF+mjU8iI=;
 b=M8i/cnKkwzo3ByS69I3UMwJQa+3ZSruiltoQhTmUTbTb+8d2ipk5jr96Xa1xKfkXfl2QQQN1htRgFazN6iarj1lG3Pc0FsjHGS+2XNKefKLM4r04dZ+1tQSrBA4/6d+1XXc7GTEZL5zFoS9SrjpRDqTqmmPzbuHIWB//KzaXdl7KDEBRMd7AtMs1CJw8BmlzorxTcaSteQ2oiAvUIUJGeXIeTC0b8EmYi7C7LHxIESLYOYl+X/9geS5lTwu/l6mEa511UfknsCdoXJ+LkWNftwfuejExq+oIGFWQ/0/b5jrjbLgvWQVbdzqA3a2p3GSOlPvuiwr+MS32Upv0N4HiIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2BwiLzXo8NyMKbFeRIkQddVUThJ7B9XbDSgF+mjU8iI=;
 b=A34msW7BCtGBAL+/+p/9iyk7lor1OAhLNSfipXo/Nj1StKQQVnhYDh7777lI5t9kyV7BdqcJWdtfz0Qaz5MgVPBcogvCiPbbHpWh21LsU7GEY0T2p430k8eh3rVnwlwOrWbfgdqrOhrUBFjC7TUpiWVeuNKK+7+gYtPcbjcZ0sg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
 by OSZPR01MB9329.jpnprd01.prod.outlook.com (2603:1096:604:1d7::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.8; Wed, 5 Nov
 2025 15:40:06 +0000
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31]) by TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31%6]) with mapi id 15.20.9298.010; Wed, 5 Nov 2025
 15:40:06 +0000
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
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 01/21] phy: renesas: rcar-gen3-usb2: Use devm_pm_runtime_enable()
Date: Wed,  5 Nov 2025 16:38:57 +0100
Message-ID: <a34355c1e3775c05816cf4e90648b659427db5fe.1762354366.git.tommaso.merciai.xr@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1762354366.git.tommaso.merciai.xr@bp.renesas.com>
References: <cover.1762354366.git.tommaso.merciai.xr@bp.renesas.com>
X-ClientProxiedBy: FRYP281CA0002.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::12)
 To TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB11947:EE_|OSZPR01MB9329:EE_
X-MS-Office365-Filtering-Correlation-Id: a063994a-f6a4-4c7b-38e0-08de1c81981f
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|52116014|376014|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?nwvfRmkqMLbLRFcql3GashjXxvm4X4cy1cG26vkxLnfeKjOwRL8KTDDE1EV2?=
 =?us-ascii?Q?awPYzhXIozf93McnlusMZscBN9lOPRIDjQG+9YWnpOFFqdT/1xlSEkR4tBnk?=
 =?us-ascii?Q?nmLKId3E7F9ahUIDgqU7v1/AC6WzI6ckmgfX7RvWfkAW6lnN9einM03/9TdJ?=
 =?us-ascii?Q?zTB8MBSZhjxSkoJpIFnQwbuhnlia4bIJ8cNQQzTTHSxslNQT/VgoXRjiEeRr?=
 =?us-ascii?Q?Zu0ewjPt58iywomXjlU3k2Xvcbkrg7AD4RgAzuuhePoQ3MhG7AzDaox9FA0P?=
 =?us-ascii?Q?VcjwxtdaCAgaqxSt2uqYeT3RPL+7hUZvak34XJx1vhO2KIV0nJAWdNLuFkHk?=
 =?us-ascii?Q?05DjnKiSKrcSf0c3InunTvT15Xbwr6+q/w32f7f1FtXXgD5D03eS925WqyCm?=
 =?us-ascii?Q?QQGGDYVd0n2eod5ZGs/qWOEmNn+TvT7a07Huw3qEW9PukNp98cKvfbnlaCIw?=
 =?us-ascii?Q?338/AWA2zDtdFan2LkvYXxF/15qtD6EtCbYGcnR+4TPrSJB31nyQ7b9NLqPU?=
 =?us-ascii?Q?+OE9zzcN0Hied9Wd/JjF7TLqZj3ZUL4Jp/Ov2kECY0iEd+tw7c0rW7FPuITr?=
 =?us-ascii?Q?rIOhsksTeZ2Hrc9jS9zW1ZiE3u71xUE8PHMndkhADeJRaN3TcPz4OGIApmii?=
 =?us-ascii?Q?RXvpiPpkd4DjtxKRm+Fs4Ogzz1nUio5IReAN1SsfjtI7Cg3wY2VZ25fEHePb?=
 =?us-ascii?Q?CFfsGkr30RAHjIKAvSDG6xF4+5tBVoTUr1m8UM6UQBke6MG6egmNecVI5/ea?=
 =?us-ascii?Q?PgIBWadA4FClXNuraQAJmAkL/LAbg8eibJzxLr5hCr/S/Ha7VFIUXiVuTBef?=
 =?us-ascii?Q?WS0C5D4r1vlmBGlER16UcgHb/kGjDkUjqGiirGRnVcXmMLe9RYy1RJEwQ5+O?=
 =?us-ascii?Q?2OAZRnkuQGePKEkB83vK1MEkN3b3n0GYZxb5pGtkA6tpPdplLGGH8P6EKkHZ?=
 =?us-ascii?Q?cIK4jsRnJ1AnB8xj4DCL2QM0p8kM3JdQ5IpksR1vTCmAlgTSvFFZCB6ZqJag?=
 =?us-ascii?Q?UxIbvjimqF9Mqz5X9/TpxXOqxGI8hnTnWQBq68gi7wzftyyk+TbQcGxMLw4e?=
 =?us-ascii?Q?a+XyJCsXXXcJshCKX/RxchDijeh7+k3WGiUBaD3bLfMKQGttzohmW19AqrcD?=
 =?us-ascii?Q?lnZ/cxpBqWDm3HcQXmz6/5RgkBe+qSEUCyvUNpK5c3GZJcIEpg24m4pTE/Et?=
 =?us-ascii?Q?y0ZBMn2ccbcfsETie8fiwl2mmsXwUqxqwYT2Ov+qT1yI1sGy11CK7zR6Yx6b?=
 =?us-ascii?Q?pi31ppS5FmMm3Rd5xrWVINuUDwRK/VQlw8waTurlnPD4j7w9cv7WgbLJ4ZBk?=
 =?us-ascii?Q?lRvo9Jdx1WEvwOfxw6Kxt7KSap2RnFFwl8KNSmD2NAwnNWjOmORT8OELKh+3?=
 =?us-ascii?Q?0zQJQEbKt/F4aEjH2BvHpcXgm6ghQD8mhyPHluN88/zsqylAVaz8KM9u+MVw?=
 =?us-ascii?Q?XwWKC7v/ap5F2Hqcb87ik4vP4GIfg/Scz8h/+ULL8mxIr+4nazeZo3RpAmrv?=
 =?us-ascii?Q?LCdfZguXhJ2nWbxROTjeI879SQu9lErRc3Cs?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB11947.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(52116014)(376014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OKYKC0dqAWTNrn3mp/tCvtB7LlfBZhKw7Ewl48EJLsCaGgXufDkv1+Zmk1nD?=
 =?us-ascii?Q?2Vx4WiOYQChVyMLdRh/7fHqXte2BtZzzNOFyHOZRwPpnNHCyjbAHdCtnoIW6?=
 =?us-ascii?Q?FjB7VhAtvTujZdDhG3JGj4rckExdycdI7k+8BakpOZ5PE3aLdXO39SN3lszM?=
 =?us-ascii?Q?IzHEAa1SR0xSqSSSxlqQ5JRvq5p76ZbyIBbY7/7XiPxhX2gYlyIYwez82fHR?=
 =?us-ascii?Q?8AYcJ5uuwf6OMraRpAVYnGnYGZJHp+PIJJdzLaMKQr/tOWzow7D55HxhhaxM?=
 =?us-ascii?Q?Oi+A7peiwU46HHsxTClndgZ30e4psDLSNPekYvpOLVUuebHZD4c/EdoilrBC?=
 =?us-ascii?Q?904d2aevacbf93QFHs2JIx4ejqZlQ4xHoWGgYnltMm1tmZ1Sy9l9RLnNgr1T?=
 =?us-ascii?Q?sZZ3AL43glNRBYIayDP+eyAo5eo4nEPqcu3/VtiLijOT0erv34UgV/gu1u2o?=
 =?us-ascii?Q?hqGFX5pGENuZi7p4qSc102PEMTzSaJ9nIi9ZDdXB+ey2ZDbnpILsMhKo/nGD?=
 =?us-ascii?Q?rkvH2LY7pznVRIe6ojpm5lNp9NExyTZRJaYewP3EnuToHvwUnsi9JHyUIudu?=
 =?us-ascii?Q?TvM5tfahYHsWbAzxq4YMSM1UznbIAEjCr/pHNlCoBQvvlNu+gziml4sUhA75?=
 =?us-ascii?Q?59CiU+bDe4bXj5lDim9+LN1SjzN0ZbavqieiiWB7Yr7crCEO+bRkUTfUmcR+?=
 =?us-ascii?Q?CptIr0FGO5t37Ez/RpinA9quctxvJc2NRqWdsIlkyJAgNqbIqSuZWeGoz0Ee?=
 =?us-ascii?Q?ZqL+4hsBk+8QwyUFOexJCNEBt854j7QYhGO7ziP5g/jSDsxy8dhzXMAB7IpH?=
 =?us-ascii?Q?wsompnUvSfSNH89In7l8ISnK0r3NsqYparc8q44gWXmHLeGhu8DDapuzu/yi?=
 =?us-ascii?Q?5CGF+QPlIeckRxDEc20kcUUAsaEQ8J8R+yyx9TpMBVUbuHTDwUAlkXtsRk9h?=
 =?us-ascii?Q?IODVgjaiGFL++Z4Gal59n8M0OHrzd8bMst3CX+B683I1B99UKt4Nylm+Hsvq?=
 =?us-ascii?Q?cXhjn4ev7CP8IGG5uvBKpCUG/SGR97z74+aNNwxg54HO/FM6JHNYbHmNKE08?=
 =?us-ascii?Q?L96S+W0mu9ZRdweeD8zCOliMVVSr8T3g+bjYol6jdoAh360pYf28zIOeQHJn?=
 =?us-ascii?Q?OqK5sfjKjX8wAA49ToTABAEnqp27zwP6HMo4K9aNHsqVEHL4CqyBZ/aOIac+?=
 =?us-ascii?Q?FMHQVlV9WVc4yxMndD8AJfCNIDujCJ+fSDkpVh6eN6uP4kHE/dAP2KascJfE?=
 =?us-ascii?Q?pBxuS5QLy5TnkzaN/MUVBJkaU0FXDCCp+N1FKh9Jv67w7ARCaI7W4fCn0wu4?=
 =?us-ascii?Q?V5pp3IJXilyaWFgBWHDuFpM1+rWNUofRUXC9FB7K0o5DlhsmoZOwHxy6OQWs?=
 =?us-ascii?Q?cWWdNp6cfBPQGWfDf4ihvFzLkTLL20VooZImAeT7m1KNfabnyuIEpk6rXCcK?=
 =?us-ascii?Q?ZfJKuxusiGekkItGC4eILrCq+LWvcEb4wsgHW5TSf5jU9ng1DJwFNnjWNKDl?=
 =?us-ascii?Q?NCPhxB1Rk4Ptkct4FzgxzdbINeHHsjpGiFz1K7eZb86oUd9L2NkGHZJxRGr/?=
 =?us-ascii?Q?kQORAfH+zlvpO4zaJhdGvMl8bFs57MYvByTqQO/Un9TPX+V4z8RjgoZKTh9m?=
 =?us-ascii?Q?xNmmPKwxuglp/N6gSYa17Cs=3D?=
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a063994a-f6a4-4c7b-38e0-08de1c81981f
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB11947.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 15:40:06.4998
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AkFo5EwyxzUvX6ZX1es28pQPnxM7D3oBlMQj7RkqJSRNxUiqtLYMR65EmSHtUU9tcYuEsgSWZaYf2JGyncAP4hgRON2pepIcXMdsPmtWWggnqwq1Q04ewhJ7XTNr57Xg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSZPR01MB9329
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_074012_151962_863E1635 
X-CRM114-Status: GOOD (  17.03  )
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

Replace pm_runtime_enable() with devm_pm_runtime_enable() to ensure proper
cleanup if the probe fails. This change enhances driver reliability by
avoiding resource leaks, as the devm-managed version automatically handles
disabling at probe failure or device removal.

Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
---
v1->v2:
 - No changes

 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 53 ++++++++++--------------
 1 file changed, 21 insertions(+), 32 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 150423dbb1f2..38b49ceb5ff3 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -850,13 +850,13 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 	 * devm_phy_create() will call pm_runtime_enable(&phy->dev);
 	 * And then, phy-core will manage runtime pm for this device.
 	 */
-	pm_runtime_enable(dev);
+	ret = devm_pm_runtime_enable(dev);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to enable pm_runtime\n");
 
 	channel->phy_data = of_device_get_match_data(dev);
-	if (!channel->phy_data) {
-		ret = -EINVAL;
-		goto error;
-	}
+	if (!channel->phy_data)
+		return -EINVAL;
 
 	platform_set_drvdata(pdev, channel);
 	channel->dev = dev;
@@ -864,18 +864,17 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 	if (channel->phy_data->init_bus) {
 		ret = rcar_gen3_phy_usb2_init_bus(channel);
 		if (ret)
-			goto error;
+			return ret;
 	}
 
 	spin_lock_init(&channel->lock);
 	for (i = 0; i < NUM_OF_PHYS; i++) {
 		channel->rphys[i].phy = devm_phy_create(dev, NULL,
 							channel->phy_data->phy_usb2_ops);
-		if (IS_ERR(channel->rphys[i].phy)) {
-			dev_err(dev, "Failed to create USB2 PHY\n");
-			ret = PTR_ERR(channel->rphys[i].phy);
-			goto error;
-		}
+		if (IS_ERR(channel->rphys[i].phy))
+			return dev_err_probe(dev, PTR_ERR(channel->rphys[i].phy),
+					     "Failed to create USB2 PHY\n");
+
 		channel->rphys[i].ch = channel;
 		channel->rphys[i].int_enable_bits = rcar_gen3_int_enable[i];
 		phy_set_drvdata(channel->rphys[i].phy, &channel->rphys[i]);
@@ -886,44 +885,36 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 	else
 		channel->vbus = devm_regulator_get_optional(dev, "vbus");
 	if (IS_ERR(channel->vbus)) {
-		if (PTR_ERR(channel->vbus) == -EPROBE_DEFER) {
-			ret = PTR_ERR(channel->vbus);
-			goto error;
-		}
+		if (PTR_ERR(channel->vbus) == -EPROBE_DEFER)
+			return PTR_ERR(channel->vbus);
+
 		channel->vbus = NULL;
 	}
 
 	irq = platform_get_irq_optional(pdev, 0);
 	if (irq < 0 && irq != -ENXIO) {
-		ret = irq;
-		goto error;
+		return irq;
 	} else if (irq > 0) {
 		INIT_WORK(&channel->work, rcar_gen3_phy_usb2_work);
 		ret = devm_request_irq(dev, irq, rcar_gen3_phy_usb2_irq,
 				       IRQF_SHARED, dev_name(dev), channel);
-		if (ret < 0) {
-			dev_err(dev, "Failed to request irq (%d)\n", irq);
-			goto error;
-		}
+		if (ret < 0)
+			return dev_err_probe(dev, ret,
+					     "Failed to request irq (%d)\n",
+					     irq);
 	}
 
 	provider = devm_of_phy_provider_register(dev, rcar_gen3_phy_usb2_xlate);
 	if (IS_ERR(provider)) {
-		dev_err(dev, "Failed to register PHY provider\n");
-		ret = PTR_ERR(provider);
-		goto error;
+		return dev_err_probe(dev, PTR_ERR(provider),
+				     "Failed to register PHY provider\n");
 	} else if (channel->is_otg_channel) {
 		ret = device_create_file(dev, &dev_attr_role);
 		if (ret < 0)
-			goto error;
+			return ret;
 	}
 
 	return 0;
-
-error:
-	pm_runtime_disable(dev);
-
-	return ret;
 }
 
 static void rcar_gen3_phy_usb2_remove(struct platform_device *pdev)
@@ -932,8 +923,6 @@ static void rcar_gen3_phy_usb2_remove(struct platform_device *pdev)
 
 	if (channel->is_otg_channel)
 		device_remove_file(&pdev->dev, &dev_attr_role);
-
-	pm_runtime_disable(&pdev->dev);
 }
 
 static struct platform_driver rcar_gen3_phy_usb2_driver = {
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
