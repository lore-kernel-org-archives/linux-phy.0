Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3965CD6E45
	for <linux-phy@archiver.kernel.org>; Thu, 28 May 2026 17:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T5ItcLDnXdFbsMnu0FFFqEBmRlgsJZLthA+yPmDgCzA=; b=sikIrdxfYL/G5s
	NGdxn41W+vxkiw8CdDdLTRzHFsSrweZbL3wKV1FKm/qGAChytCyyCcsJXlXwKAFa3gdHvVnJLlOPI
	OoiEQeml8Kj9865eIYb1/+L/5ekzBP8FkljAKh1zIiwY+2L0XdEVsrxZJI+nRv0jBXl5icIht/Uqs
	lpbXJzS8D71F2NnRweuR1FvBJmOcHjIkQLGq2JUj6c9jjAXgY0jR4K0ndO50QYm45JydgSumMoG1h
	TfR4BqlpGSr3u0GiQ4kt257Tf9617p1zLwv6yjp3ZdBNEi4SZEaz/nQLW6w0uYyB/rzA74Drc0buV
	9h6XwQqnnMXz+eiFXZIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeT8-000000065U3-2BOn;
	Thu, 28 May 2026 17:24:30 +0000
Received: from mail-norwayeastazon11013030.outbound.protection.outlook.com ([40.107.159.30] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeT6-000000065Mi-1Lec
	for linux-phy@lists.infradead.org;
	Thu, 28 May 2026 17:24:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KVCl7NMgE8BZVxOW8Mx8uWTzQWLWFoACkNKVTJ+hO13cqKNO9Ubr+NDDrVO9Qsj79o2P31iEG0xseulenbav9pEvrjpCdcYbUuC8kbnNc6XZEynm9cvMzdHvBV+PRuPgb9wj016Ex4HU1Ccz74euasVABs23Z/jx5yEfjOt1hospIdqvOq1m5fx4EVBhTHFWukkLkSqz50/3LHiYrE53fKYW1EHFhTgkngB6Fk7vzXouLhzhSzjDd83YvynOkRnBdWxXUNaNxl5NMODMaq3yMfpMKUg1YwWkrz7iu79iO0R9fzWjmlanm7I+alAY2o6laLArWwd9mB61LCHNKWXMLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EjhPNmets0yEaHyk49aQw8hkWWDe8qMBd8DC3Kle5aA=;
 b=CHliRAz+3CKXrKIDf8jvar7nRL5zrA3sQKnskJi9OkWCBy+MVMJ0CsMbG8xD9SMCpHCI3baz9p3z6mePCnS7IN5jixr6vCgKbtA8IDHevzTJnWxAmseo6EAc8ClIBSz78h+165ZfqhxnshAZ0pLGwdBjw8r1yKIg8TGk/76yQ3uk2sYRqq26yWxzzKTp1ede75GKgiekZFSnuQZXprawWpaSj8PkSGl30Xjvrq/OdRsI/KbQgGbg3mgIBwonPZTXd2Pfbzb5fsr6odsd1lhfCtEmYfP5tNjVUIb7onmidEU+R36ILqYj6TCg8+XVzHr4nvwlj/JgSUa8Ip7EFZwMzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EjhPNmets0yEaHyk49aQw8hkWWDe8qMBd8DC3Kle5aA=;
 b=hWw0ggxLcE1IZ3hW2lnbPw1/gYPk4UBfeKVhAyWI4VX0pS0E0VsRhy6mBy62s6Kwe6gcM8YzssGGDfM/kcwIIawekVd+RLEffjYXSwKbWFlO78fYBzQ43hEB3RKHzlBcMIpGJ/8v0zgfU/O7O01nmoccLYPJZmOH4AX2oxA1JnVVouFD3Ry15CbnkSRlDCqNTUUJln/JN2du105SrzTb6NwTKYWc+6JIsw7enlQ9YpCnxIBFJHyjVc5A9DiCbKC6JxTKXMoePS6BP423SzoHuxOLacxHJ4KjXIhCkg6fk5cqeYXp36TgZyf+tpqOBI42fMNFkFhIFuK5XUgVVj20yg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM0PR04MB6993.eurprd04.prod.outlook.com (2603:10a6:208:17d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.12; Thu, 28 May
 2026 17:24:18 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 17:24:18 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH phy-next 06/13] phy: lynx-28g: provide default lynx_lane_supports_mode() implementation
Date: Thu, 28 May 2026 20:23:57 +0300
Message-Id: <20260528172404.733196-7-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260528172404.733196-1-vladimir.oltean@nxp.com>
References: <20260528172404.733196-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM4PR0302CA0013.eurprd03.prod.outlook.com
 (2603:10a6:205:2::26) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM0PR04MB6993:EE_
X-MS-Office365-Filtering-Correlation-Id: 10e74a70-47a0-4e11-0718-08debcddf2cc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|10070799003|376014|19092799006|3023799007|22082099003|56012099006|11063799006|18002099003;
X-Microsoft-Antispam-Message-Info: vMw/rUyGhLaTy9sGB4GG5U692VZGnWNDdDhhxiyxtwzz6vhKXjzh7YF2mwEd4Sv/+6Kp0ncg309np2I3jBc1F8v+L1dsw4Pf35RE8Q/Zo1BWHkgso3/7MvR5npYgUttmTDEzfcdBVL59bP20IZ9GG1fbtYv0rt04AAs9uk7fpNVjEVC/8WSC0fHmwUa81mAncJ3E5szLZ6njjMkiT9d83ZZ+NDnvOuypeo1PjN3QJzgWJlGuyhsrMzcFXihxMWlAMeiLK69M6gokxjgczlF5Iao+D0A5UhOOrOBGcwsBdmXtMPVtREa+iPw2ZQOR93Xb6C2YTJ8qkARxSoNyHtixkSiWWW4CEzOg+GOE6R0yPBWIKR6CZLUjWa//9qk+UiZJdI7QbF11xxaZMk1HFIyNe6zcFGOwuM78A8xcZSHjNoxcPAH9ay3sIsVKGNXxvWN3NJjJTUXyqEVa0ddrmPjVUoUnHZ2okMHWOc26moGoL1PPY+/VKjBbfmgU2hORSe9v1+r9xTtc8d5yTTj5nTAxToDt9XsxpjQKGIFy1VloTHh1HCR6ESBrjux88uFbR9womSu5DtvtHir8nYyb/nfe0tSrDjoPpK7eo6tMRFIePc74w9jpk7GOURGcL8qiNAKn2HY9jabNkxzRy5L5jGeLBERaTqWFP3f/aB5E87DDLXjiUIkplcO7nxAneIBcZoF/
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(10070799003)(376014)(19092799006)(3023799007)(22082099003)(56012099006)(11063799006)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kp5sfZ5SEpGiGwieAtBpjMH4FikMY+F+b6UHfXEbJYrfMnRv8uDXcPwV9QTX?=
 =?us-ascii?Q?UEqdKSt4kohdU1x6d6ojD9EnyKCt2J1XWglWH2cQYAThVUIvpdNTOaCb1euM?=
 =?us-ascii?Q?5qTum7zIAFU2xAG1WwLp4Wh5x5mTCYh9+T7zvMGPOu5xw6JNxB0xoCXqU/LM?=
 =?us-ascii?Q?qWEFysr1BXGwkPtcfccgsZaqoCNlEBdx1HY+eQu+pN6Flh/BzloKbkEJ5zyp?=
 =?us-ascii?Q?jy3RXYP4N9kkyW2lvrYuUg3jz9BYNce85CyYHfDAXteo5rkRq97eyJupElcK?=
 =?us-ascii?Q?uDp01U+oSXSPSf7w5nDNzL0JUndVUjwmZWySJA7NCEzxi53Sqt/a6dcHFNQV?=
 =?us-ascii?Q?O0hEVFVuAOuzEaayZQopuA+D7BaJNmfLoFP/oNTzFtNtB5cDgf4PX3a8maEg?=
 =?us-ascii?Q?BZ8Z8xExY8q8fdHTzC22dFBbg5a53xJTBRbKkiJtVS/bazIjLnM2CColePlk?=
 =?us-ascii?Q?MUye7C/IRC8JI83wjSsZtGW0Ja5kNee6lPrNq0ieAtBlwu8PCWEPiHffcoAf?=
 =?us-ascii?Q?Hta+LbP5eWSHn3jKYoF9poYTxPmNJr0kaIgOYMS1LGw9v3hFU2RKynh+8WTM?=
 =?us-ascii?Q?60Hx8UbmgSCZMkEqY6YQHnuqXF0sx3DYdrzcOEZPQo0Mp4f8gatgKNXm0Oqz?=
 =?us-ascii?Q?i8lPeCW1GX13z8EdGWGBl0Do3uGElRksR3yikepaxaNiqqMej7SEhTOZDa7w?=
 =?us-ascii?Q?NYfDCaOGLnfCwUfwSQkCpAWGGW1WEjmpPua5bFu55cDcQUfgn5EU7YkbTGdC?=
 =?us-ascii?Q?en7prgR8alkNHpk0pkSa5advWnMozHL3ISKRVegIkgaIvFW4z0YM2rjzlj41?=
 =?us-ascii?Q?ux5wYlGPeEN9rGNa3FpEDc7LL8+C2ooEy2e32aRxzFbmN2JRDcDkrKeSNnxq?=
 =?us-ascii?Q?q+udAK9197hXKUIglFc5qPGv1FrODMjWaYoAFp1qqcbRe4SjtBAOANNmUc+7?=
 =?us-ascii?Q?hI9kRBumeZMoLwn+oL/zRMYPJcDSHQV+0aYlwGEWwxu0aYMddW3+i32c+a3p?=
 =?us-ascii?Q?U2CIfYK02ew1GmoQ75vBnSggUG0wOzwbGG6zJPaOwSeI1qzjrQfGFrYsO9BU?=
 =?us-ascii?Q?odrrz4yKKKo8NZ+ro0m6cBc/b/toIjlTBwfUWvIZU0XeG5+/HVzxN/+lO/i/?=
 =?us-ascii?Q?7Q5KGz7QX/pJkGcE/71Xb5jAy54sNLKqq58JJ9a7H0ciMPky89iDjOQ/ZMkH?=
 =?us-ascii?Q?i24mPlDiYG8FzSk5gyUhWjbctnPMNbjTw7xj4O/hH+n5OS+Yb+v/dPPh9O6S?=
 =?us-ascii?Q?NQme2IrwsD4ciH0x+1Ggpz0ayZivsNsecVfj9mCbpoei4mvYN3IVMPciKX3J?=
 =?us-ascii?Q?yULZnQed+63a/OsnttQMtlZnoi2oPG4b1TSqZzgL5p5xHd2RMnMgk+LxySJO?=
 =?us-ascii?Q?2ylKmmQHvNuQFxzBgrIRwp98xB/ULUrQcxXl9aY/JO7mgUETwOkYH5N84tO7?=
 =?us-ascii?Q?K3TMHFJaalj8Iyi2ecVmOFN0zk0SBkxIsMO+XZQLgDKxRlD58OVkzQO5MOrx?=
 =?us-ascii?Q?rGtiBwxuvAAg+qUjj+v5WxcRrahlrUoHFQhF7XwPnPgFyCFiAgPdTPyCygRB?=
 =?us-ascii?Q?wjWTsaDZWyb3R+Mo3TEJimfGz5l6Tdlplt3vw2SH+qnSkcZ6VdTvYaWkD8Dx?=
 =?us-ascii?Q?NO2V2ytjfMAKwbzCJaaswoKFOleku+vB0kIn837knQlh/cqr9Qf77v4hvLjB?=
 =?us-ascii?Q?2dYokXs8Y04AXG7FpQojpX6Rk0O+pdBpZIlrm8dZbR9X1mV+7NRL62cFHv2n?=
 =?us-ascii?Q?u4qgjrgqe0pBzunkm8f+yuhtzQp6YMYUSUHIb+rdOy/KnYPbabYN?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10e74a70-47a0-4e11-0718-08debcddf2cc
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 17:24:18.1457
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5M1qhpDX1QGSMcvYVnyVRDn1333MG6FAkjR6VDRJEVxkzK7sArjOHh8ZBp8qg8Ugqfaas9VTjWSyTLWPr2ZXkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6993
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_102428_360952_59BF5099 
X-CRM114-Status: GOOD (  19.26  )
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

For the 28G Lynx, there are situations where a protocol is not supported
on a lane despite there being a PCCR register and protocol converter
available:
- LX2160A SerDes 1: reference manual documents PCCD fields E25GC_CFG and
  E25GD_CFG and protocol converter registers E25GCCR1..E25GCCR3 /
  E25GDCR1..E25GDCR3, but nonetheless, Table 289. SerDes 1 protocol
  mapping shows no RCW[SRDS_PRTCL_S1] value for which lanes C and D
  support 25G
- when using the "fsl,lynx-28g" fallback compatible string, we don't
  want to offer 25GbE because we don't know if the lane supports it,
  even though we know how to reach the PCCR and protocol converter
  registers for it.

But for the upcoming 10G Lynx SerDes, the above situations don't exist.
There, if we know how to reach the PCCR and protocol converter
registers on a lane, we implicitly know that the protocol is supported
there, so implementing priv->info->lane_supports_mode() would be
redundant.

Implement lynx_lane_supports_mode_default() which decides whether a lane
mode is supported just based on priv->info->get_pccr() and
priv->info->get_pcvt_offset().

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/phy/freescale/phy-fsl-lynx-core.c | 27 ++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.c b/drivers/phy/freescale/phy-fsl-lynx-core.c
index f49d594622cb..802e32dc6dca 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.c
@@ -40,6 +40,27 @@ enum lynx_lane_mode phy_interface_to_lane_mode(phy_interface_t intf)
 }
 EXPORT_SYMBOL_NS_GPL(phy_interface_to_lane_mode, "PHY_FSL_LYNX");
 
+/* By default, assume that if we know how to get the PCCR register and
+ * protocol converter for a lane, that protocol is supported.
+ */
+static bool lynx_lane_supports_mode_default(struct lynx_lane *lane,
+					    enum lynx_lane_mode mode)
+{
+	struct lynx_priv *priv = lane->priv;
+	struct lynx_pccr pccr;
+
+	if (!priv->info->get_pccr || !priv->info->get_pcvt_offset)
+		return false;
+
+	if (priv->info->get_pccr(mode, lane->id, &pccr) < 0)
+		return false;
+
+	if (priv->info->get_pcvt_offset(lane->id, mode) < 0)
+		return false;
+
+	return true;
+}
+
 /* A lane mode is supported if we have a PLL that can provide its required
  * clock net, and if there is a protocol converter for that mode on that lane.
  */
@@ -48,8 +69,12 @@ bool lynx_lane_supports_mode(struct lynx_lane *lane, enum lynx_lane_mode mode)
 	struct lynx_priv *priv = lane->priv;
 	int i;
 
-	if (!priv->info->lane_supports_mode(lane->id, mode))
+	if (priv->info->lane_supports_mode) {
+		if (!priv->info->lane_supports_mode(lane->id, mode))
+			return false;
+	} else if (!lynx_lane_supports_mode_default(lane, mode)) {
 		return false;
+	}
 
 	for (i = 0; i < LYNX_NUM_PLL; i++) {
 		if (!priv->pll[i].enabled)
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
