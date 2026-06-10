Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72599CD8CB2
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 15:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VALKRSE5ITjGo/sLGAoHWTFatZAH84lchLAEAtTRBAY=; b=tqdvWXD7CLz7KR
	7riN02PC/APQR/g5WGcfSMXGj0l1+zd/Np568wwfmWud0YHmr97h8SYg2vdDPSVY0eXihFerINeCf
	L2th3mM+MIOMptmP6XvjtOdqAyLZdVJhoKVc/zBK/H1AorOQzygs9DNO0fRkE9JujuBUYRZrfBvkL
	To+CyWq3UA+AB4rQpLL4qUT2fViyDuVeSWOOUz/2s85r9Zj+XmKnPY5WnmsCEaLOdV7ljZC/CadvE
	GkoQJA9xJSie5fl+Q/kDG/yET/Rm8lSNjyA3niMXhV3DdAdq0mR8/2+CUUaa2auTywnW4NbbKpdwq
	sdwPvv+PdMuM6MTrPLjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKjM-000000080gG-0c1z;
	Wed, 10 Jun 2026 15:20:36 +0000
Received: from mail-westeuropeazlp170130006.outbound.protection.outlook.com ([2a01:111:f403:c201::6] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKjJ-000000080SM-1MzN
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 15:20:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jOjwpxB8E4tsQm50EliwL3N1keyV7YPoO6yHKqGL/vZ0XBIKh2EdJnCN2xHet7y8yT268UxLdKkhKFjQ8Bg0m6QkxZKz8xGXo3BLGOh9vsEYBGY7G5d7Xo4dXDofnj93iY9rzDhix0U9k28iHthSJ5a38Mp0NkJ+7sE3Tyr0I+dx7PIzGGuFltM3vYyeraD66FZqkZzlkC9JQISzPeYzj5DAyDLaxmR7jMXPjDWyZMYAafhxmEkw08ZijwtEtPd5gU2qlfvTpnXhNQP5ou3/NXpiC5HclTDd1VNseDk35XbfNZuGepNeoZjaqSv5hBKMeAtqblIYfeSaDJ6z0SLsXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/Fi+m+qqjgC2O6wIhGCkeyGZvmKgsk3Ouu6U6tvWhTo=;
 b=OVsPKiwqDwQxUb4CRT/FQLTpblP1TaAccSaDVlg6U+zuj5leXW5ClXgL7W2iCMj5QmYJhCXJF5AO/o9DI5avNsyNjnn8KywqAEj3Igc/DvxVmWwZnzI7LV+eIFCycjhxBJgy4O/LPOOnKR7yKwboaUoZVmiOK4amGrfYWxBdyTNy2Zz1dCgct8DIHzcZlzNPMg+bb8jTvk3GZ05PIyykCdDIj4bFK4lA0QqwuvbQ8lZKfiolpYUylG0Nna6Pk+G3oRlZM8s1SDVLLNZ7AC+5NIGO60hJtdkq3HwRo3RNbXyLD5f5jBkaZ1IuwAhxec0OcOEVBiZigEU15PNVS6axnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/Fi+m+qqjgC2O6wIhGCkeyGZvmKgsk3Ouu6U6tvWhTo=;
 b=Yl6Ea70uvntYmtdfYy/zGB7u7x55mc7jZgj5oI80ILkurIFjay/QuQy1jpUoDjasdFvE7hUdi0oZ7IREaWZu3nbrfiGsPDQVeLwdV+YgDS9nyoqfLiY0AmNzksOa4A7mwf5JSbOIeiAQOhXjB6nDYFYt1jf98IBQx2eAXyOZ07y5XbT0iqFhInV0WNXN+CyL/dq0ODZlzdtn3LhT16bUnBLkHTJykPwCSX7At4yZCK2Ql/AzTKmo/P06vMKthWolN173bah3rSmNY4QshH9uJ8Q4oRDmKpdemDfow9lDoU6FZ02Nqb3HhCZuA5rRyl2akSUaB3e6v9s8Izno1Aev9A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8844.eurprd04.prod.outlook.com (2603:10a6:20b:40b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Wed, 10 Jun
 2026 15:20:26 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0113.011; Wed, 10 Jun 2026
 15:20:26 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v5 phy-next 16/16] MAINTAINERS: expand Lynx 28G entry to cover Lynx 10G SerDes
Date: Wed, 10 Jun 2026 18:19:52 +0300
Message-Id: <20260610151952.2141019-17-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
References: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4PR10CA0006.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:5dc::6) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8844:EE_
X-MS-Office365-Filtering-Correlation-Id: c0bd44ae-e093-4112-bd8d-08dec703cc23
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|19092799006|1800799024|23010399003|56012099006|11063799006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: xDSRlFSz7+lywAdn5rlZGlPU+VO3LmYK5oiK3yPDlRL544i+CqdFJHynVI+iT5UOIIHRIhsql+rHKTSEJXzSOYc7rE7rzkp4Zc4NKq3C3e613JsXo6LBpVn+g/383hNg8bCI4gb2Bui5HjfBjZJqY9nl+9xawvWcd+c0nxgOW5oQQ6Y1Uu+iXgAtd2qctKHmEflfzTW279C+eROgFRc+jl7lNJuRm2QbZipOPnO7oRWr7B3bmpro2clXtwKwrLvY7OAWjoSGYMioZ7MzUQ374+HcmDElrJ5TGCmhRQOUFB7hCdofYPBz5BNdwEprLkmzLUlpDYMXDeXBvsaJVf2o7HmeFPXGHu2tjkm3TgXeos8OrXWvIRQrx83gzUYTVs7LL1eatEUushcs88v6AqzFSfaSrnFgU12cdhlXi7s3Fbi1KxbvU4LtZpwPkGq5nCvIOYkzpK+iodWk7C6rGVfhAxGDk23+Ah8L3U1MPLeQMyBb5Zl5/K6XtDxFjV2i8jqsItwMuE4ImmQUJVyonvufU0KReJtz3GNhK7IEreQKS87n9EkaQsE3cshQ5MFND2z+xIm+uK/agxFihaeJq1Dxr108VYh0CUn5Wx4amQwz04yWQJGnopagRUwKSmfeBeJH/3ASSX+J01hwFxdlvXR/y1rlYCgrUDF/MZ6fhC1CqDgybkVZL2qECsQ3K8FNNS2a
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(19092799006)(1800799024)(23010399003)(56012099006)(11063799006)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wrxEIMUFxL6K0pZKCCTv3uwSUM7eQAoAIXPsdd9nt8Q9w2FZjuR8LqShqTGk?=
 =?us-ascii?Q?M7QPiwkRG+vV+wglEKWaIwrQac5ISMwz594Wo98zU3XpXKkGp0yM/rbgoaAM?=
 =?us-ascii?Q?exQOoq5GHI2sx9XPR4HvNcYbe/CIf6st+hsFW45o6zKCV2iFk7fE8rHajebc?=
 =?us-ascii?Q?MbP4VIN197js+4PqezLF5DMseu2Dbf68nOsvAQWw7PISsqzpStqzR3uuiSjT?=
 =?us-ascii?Q?efTFAGLmSPr8Si7bsL193hQxjYkVEDO/dVRfhrnqep5oyQs+SAGy/fjVad5g?=
 =?us-ascii?Q?EPZ+z2w4aUNuK1SKKmkXO5G5/JwvMkHunfHtoayIA83HlEvtvYpvia/9QhT2?=
 =?us-ascii?Q?zbhNYmL05IKH6XaCC8mPH5UVCXM3CzdrxJ+rO4ImfQjryKDRjzoJyU8qfsrJ?=
 =?us-ascii?Q?Zv/n4qfhoubhEvVNnMZhmjqSsle6VJJiOxYFgmmfywAboP1EWHWKAH85z/Ey?=
 =?us-ascii?Q?1J4CSqd4wBYtkQ/tqEK52vjHlnGHMdt6530h5uqLBfEq+DZtfkCXkf8iN3Pr?=
 =?us-ascii?Q?42AnYMSn7CxJpFn96m7UpMQZyF3v29PLA3vKIuc43hZTKDg5F2HDFqP5kOFO?=
 =?us-ascii?Q?Q/fa7Ea4AG0Y0wbjgQuZ02TiMWLAb/acr4rtDIqngNZ/zEmfhcHeQm8VoND5?=
 =?us-ascii?Q?hM3bUg9bI0aLTSIQmF9czC//1ksiNAsk0eKA616qF5+N54l/2EsOJnbyvxJs?=
 =?us-ascii?Q?E+7flOHo6V5tynEYv75pF6iN3FpWXa4paH5Gpha7XcbtQyeu09LQZqL6gz1U?=
 =?us-ascii?Q?ZpU1fhIO27v7bYwbaePnrgDkAoj3n0Faqq2JKRn0EBEkC8k+oRJEirTo6b5O?=
 =?us-ascii?Q?cF2lAjZkvaAj7/fIxV5U7GSG35s0YoARIcVlDdPLiNqpSJBvP1gt/7ewC+sI?=
 =?us-ascii?Q?7gdJclTIfcATF7fe5W6+nfYnd1zXIJHuNskTmC4Lc3jkyQyD5OFVMmttxKCV?=
 =?us-ascii?Q?elpBJn2Xy+6y3ixM5WSRpCj11eCymxgKAEUDiq/2LMsMfUX9yn1ulb9Hg+mc?=
 =?us-ascii?Q?nIMH03kQ9u6WfQSJmGhPjh49aFOyFSiICgncsuVW3DG44h89v/mGkPRBVOrO?=
 =?us-ascii?Q?w6/2Hu2GWmX9jBHIaDJ8QOqW9bsBMYuXCQsYTEyxrjUgT0rusZnKPaIR7oZc?=
 =?us-ascii?Q?Vps5H91NcTQYkt4gpFl7JC4TyJyDDLP875WM+u4gZph0ZR0SZclWb4Dj/V57?=
 =?us-ascii?Q?MWPBvP6pEPn7q8JVJtL0F3AOeh8NyPm3YTYNA5yNww3BII9jxABNb1CB1+kC?=
 =?us-ascii?Q?o/XpOh+b+oY1jO9WeDcu7i78C76hqA1B4iv8rNkuIAPU/nOrhisud6YhZO7t?=
 =?us-ascii?Q?kbtZVfkW9GUV0qo0arZyaPjuitxvW60ZhRoySR42J8o2eLHukOhB1McvszET?=
 =?us-ascii?Q?ENTsdBA0ZicnGjH+Bhj4nriFJP7mpw7drpIg+gogRmP1MMtZ6ULGzjcet9yH?=
 =?us-ascii?Q?6A/DyIfdVk/NMJCSxWXIP+7aOyZpA/qgGpdX8Qgb04bkiJXlvoOudFEAAaoV?=
 =?us-ascii?Q?8tLJYiZiVma43sVCmXraOm7YLqeKhDkJ2xE+Xe+RR+Kl4A7LaHCmTkOxOm/8?=
 =?us-ascii?Q?V3ELbaQeTGKeqw+tP03HsnESSST4rBm2PP34DBCji697BYqGY+faEbrP8VdT?=
 =?us-ascii?Q?ehIphRr3tk26TZHuw0KnbVRg5ck1sSQUAtOi+ALUfY70FC6sU0P0T6fNJmX8?=
 =?us-ascii?Q?Ch6hQ2pOTa0jMlSuB947uGxAy4ZgUnAbclR109gIZtctYp3XGmkNWPEDZAIC?=
 =?us-ascii?Q?NMJifnMlLQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0bd44ae-e093-4112-bd8d-08dec703cc23
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2026 15:20:25.9422
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hawc0lX5/zxrWEOk/2Ru/wIWFDT9VUU444M8h+ioNPwlqPbu34hzoZARL/F6G2lY0VLrIXKILbMa/cF+/cslAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8844
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_082033_383802_904ADC66 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
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

The lynx-28g and lynx-10g drivers share code and hardware architecture,
so let them be covered by a single MAINTAINERS entry.

Add myself as a second maintainer alongside Ioana Ciornei.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
Cc: devicetree@vger.kernel.org
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>

v1->v5: none
---
 MAINTAINERS | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index a727d4920fae..ecc2f4a0baed 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15415,12 +15415,18 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/iio/light/liteon,ltr390.yaml
 F:	drivers/iio/light/ltr390.c
 
-LYNX 28G SERDES PHY DRIVER
+LYNX SERDES PHY DRIVERS
 M:	Ioana Ciornei <ioana.ciornei@nxp.com>
+M:	Vladimir Oltean <vladimir.oltean@nxp.com>
 L:	netdev@vger.kernel.org
 S:	Supported
+F:	Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
 F:	Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
+F:	drivers/phy/freescale/phy-fsl-lynx-10g.c
 F:	drivers/phy/freescale/phy-fsl-lynx-28g.c
+F:	drivers/phy/freescale/phy-fsl-lynx-core.c
+F:	drivers/phy/freescale/phy-fsl-lynx-core.h
+F:	include/soc/fsl/phy-fsl-lynx.h
 
 LYNX PCS MODULE
 M:	Ioana Ciornei <ioana.ciornei@nxp.com>
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
