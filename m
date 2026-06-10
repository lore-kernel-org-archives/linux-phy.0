Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFB19CD8CB9
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 15:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=88EWMNDGly4ItK/GzPGPVVLSUtJIU9iUWFPL+uzjDOU=; b=psJLUAcIljg63w
	YAoIbg/hXUG846E6dWBho7Hs4aRibFj8rSe3x+HUwLljo45KBz+c2jlNqkXf7ch8kxoooXBu6Rnfv
	EroSLiT/8iDLo0DqbcvsITHJgXFxH94glXYHT/oON6zpz3ohfg9znKNKNAZumSqdQhFM7ST51cra8
	utfCS9+kCTw0X2iSJvFuz7pyexFAoS/CBwo0pzhfCAhu6AU7QPvz5FR0eGbOd+Jlqkg11fsh5PUkV
	cEbWcWsSXtTxuN2JwCo+5Unw164OAPUskUJJBQbywWydFbSHkG/5l6TWsVEuhIYFXYJkFqDTXmMrm
	cjW6rxrlonsLX9lV4rqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKjC-000000080bD-2Pmy;
	Wed, 10 Jun 2026 15:20:26 +0000
Received: from mail-westeuropeazlp170130006.outbound.protection.outlook.com ([2a01:111:f403:c201::6] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKjA-000000080SM-1n2r
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 15:20:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pZtGU9C1gECI6yy/sHRG0AiD8XQ5njKfgfjAJcqt3e5GeIfZLsfGqvP3Ny91ffOgNjTgK0ICdrl8pzTpO2ENqJodNDT2yY+Qp7Qd1Oy968K4Fqnsi59ySrEDlFQcooKePpHnyQgaSmaXIyaUpLA2DnSTpY8wxwH7jkjptPobjWl1t3aILpTHFbioSDcN1Qe0n1AMEeINsLdssjdOfFaeY1OW3Hm2jsLWo2+YXOtVFvi5Y2RvEdZ9wxqYyrmbMDsG6YA0m9fMtBWXR11Q8cqVygS6VMLllEXpXHOzkEAFRZq0gWBMvnY5oAAAX3N85+2YYDh+un/ma21opJS367ALFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aOyvJ6UZzdc0IekfzTcl0+NWEy2adle2ojQK2v2AbzM=;
 b=Bu0IU0+eF/Wmh/3xZLf8aEEaMwNtMBaiFU3NJtzfJQK0zQWuU32ugi8Z5MtYognEPh4fqLJz+zIuVsk013USeZBlCVv2zpVPL5bdTMBsKXKjPtOosUcbYE6kCz3U3yI/VgOp+ng4Oy/N4w3IYRlO34TyIlq3AZRqajMIHDRMYDBE4vsFGgQAyWtPaEFCT72Xy54WDoPEfPv37UbL3eHvMUcWUWCKKIKR2JF7v/f+PzqC3JyvTmDyVsL/aTQLeA89YOymTb9RUNzwgqIpnnhvF9E3X/GWMq/ShkzqqvLqw/YfG/dsJWtJUj2V147T1UYpR1valq7FDy4Jfg5/bAoEzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aOyvJ6UZzdc0IekfzTcl0+NWEy2adle2ojQK2v2AbzM=;
 b=njkkOKzyr/O76eXiTOatH6386EePX4m6IuJQQse05UjfwyukTY7sHCVtpdemmNBT2Omss5Rkkkgv1miD9pH0izRfSttCFAPVjJ+fBOllOBqVZfDPzL1J3ZlXW0fHasUj9voM0zaA1MLbBP7tAKECcV+hBm7x3p+qfrXrSxcrwV5zaZWftcaAfNqe//c0nHchnSVoKjaqHF2Vi6dnhOfxu0umLnuKEboOoARIvvi/fG6VuKwMJcI+KvQGmQgmIVL8OvXmLEfIrGF4xRLrThIhnc5HDS6uhwqrgX+nbbqT8Cv/HNzzyuge9YEerjQuSI5IqnEF3Judfl9iXqezSViiCQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8844.eurprd04.prod.outlook.com (2603:10a6:20b:40b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Wed, 10 Jun
 2026 15:20:18 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0113.011; Wed, 10 Jun 2026
 15:20:18 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 phy-next 12/16] phy: lynx-28g: optimize read-modify-write operation
Date: Wed, 10 Jun 2026 18:19:48 +0300
Message-Id: <20260610151952.2141019-13-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
References: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4PR10CA0010.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:5dc::7) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8844:EE_
X-MS-Office365-Filtering-Correlation-Id: f2f84681-1c0e-4dae-a314-08dec703c7eb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|19092799006|1800799024|23010399003|56012099006|11063799006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 6N4R7Q5IuHvzyxeONV+IBVMJvfL7MuEQxop48TXShG6RkAF3osGxvrfMACbV0/jS3ijVVRaCr3l2fpZzGv8/UlQHRFhg73N0PxWvmC4XqoFrHo8zjk0FSSR7+HLoqWuUrEYKzIsyLTu0kbE6h3zymY2RBGKVcLSqewYwB1euWSluFOardWl4eymcQ15K0cWS10bIcgEHtQcBKx5qiBASWvJVgSJFRgJ0S7nmWjy26gf6Cc1Z+O4FflK0k8kvKm0aYIuOmOUxVdYQBRkG1+GzCAXoCFX+P7hKN8BUJpOI1diLOCqj3kMPoXEa4K2OZ1hlLVgPUPFYtc2FpObCIgav8mPbcUjUg6v1stBAB+YehXO7quC9gXqzITlou0HvOBw5DYsXjlWduW2TKPlkqGtYGSwoj/RKYe0xLgCQ7nUsRerchK4VRWhAUOUiL1I8RpU27FL1Mk0MY8d4KOOofFgsPeVWGtLpc7L2FF4S6pNIjal775uNp8796vH7JoBVYMop3hS6Cdf8oIIBVsTpIsmA4ELQ3gxPoV1QErdHt/abv4UhRcZnMLWiH7jI5v6lwdBmukooac2jlV6KeKcazvg1SvcGTbrM8JjSpj+37GP8YIKPWmlv7EoyCuxpDOD/9qnECxdxAaGvEn0N2DTi60VL7uX2ETknN6uUzzaOZWAvf6+DGCWveHBhaKd0n0A3/sTu
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(19092799006)(1800799024)(23010399003)(56012099006)(11063799006)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?reIFnAlvW4KcnrThlHlifoJzJnNX/WKg4EzCGa+FWZuafTyYz9l17bupcU7j?=
 =?us-ascii?Q?dU6TesklCtZ9LmXL/bs0B3sed7Fxy+YvOlNYAAmroaUiqK/l0P7MxX33Dc0m?=
 =?us-ascii?Q?yUiGFRiwXcIh1dTR0m3fUUz0uyb3faeuU5xcNka1fPspLMWcmsGG48gdy/6P?=
 =?us-ascii?Q?yq4AjqpK3Y+KGuYbCDKdq1/SctxARImBQPNdJ0jxRF4FXi1fLTa7TOlO9E7r?=
 =?us-ascii?Q?kLUPYVCAzhfBM+C3pUG8Z8zDA+xCFSgNKaVmj7zyb8fbV+96e153a/CgfQF6?=
 =?us-ascii?Q?NQ2uo4bHn8iK2TsWeMAcn+cM7eT7Frsd8rUl2GmuOSCbvKh+quK/kiGYGsHO?=
 =?us-ascii?Q?WtFuN3EmAgamqgnrdC2akm/1mDg+DPpdCYjo+a20hfp11OcQCt5gza/n5EWS?=
 =?us-ascii?Q?QvITzZwEsmzMHszE4i+KKG0jKybcQLYFIil+SG7ZJ/JJ7dsbX0frYF7A43t+?=
 =?us-ascii?Q?I/gl6PBYVC4l0p03xjxFUdD+SLIf20VbNVP8rolgg7Bo0ZJOD6ZAkCmUfJx7?=
 =?us-ascii?Q?laYUVaaL5xowtvxznMCrun09n5oBq2r0z5/bOZ1oyrjaVxARRnEAjFdW8Jao?=
 =?us-ascii?Q?Jw762PVXqKhxZLwKjzny99CH9G/hrhcIvsBZinldwJvyYzM+xxFrKxAS76Be?=
 =?us-ascii?Q?PHdI+TCrBDlQ5JOiBpJx5JCL9y05zmTx3kPAVZhp9WIRjqBLMOPdthhtft2Z?=
 =?us-ascii?Q?kljEeo3M+jahK5AFf9eRDfqDuUnvVeoiwp9tQpV36yJFfhCF4uLU7n6p7U+6?=
 =?us-ascii?Q?s+NuArIc29crmA8qJoaDVEPyLWWuRJL9QpqmhQ7L4uSQ325HBWQ6jK+7rISk?=
 =?us-ascii?Q?0YbolcyNo+CYJZIiYs1al+SPi0P2rnAOO8Hy9N0uIy3WEEr3oSB+rrjBCQvV?=
 =?us-ascii?Q?MQ2HGln5PHdiUQHlvMJhyXE6dpuctCh9us6iiVITEfYqdK/X1eZCY+9tG96h?=
 =?us-ascii?Q?v+5ndk96ZD+34CxfA+dqwya5qMU70MNJ2ZRR1xohgfZ17UrNvBUtSv5bz1bM?=
 =?us-ascii?Q?aMd+/PzEtDWlXFy2/i3wkvPphZIUZAXfeavWTlVOMb0QjUovcX1z2/uBO1tg?=
 =?us-ascii?Q?3xCpT6aM4LEBlgi+hOAmyif+8OxZdNMSv4dzaG9bwsgpd4cmsCbxcCNzK4dV?=
 =?us-ascii?Q?mw7sMWzSpT+asEt92+cM+u8RJAkobuJ6UZ8mcKXp9VQtvO+U7TtCrm1LiRun?=
 =?us-ascii?Q?zTY5Fpo7nYUh+dLCGA3Ak0ATkeHGVH9AVKSauhlPJ10k0XCndG5xhAmuB7QJ?=
 =?us-ascii?Q?33DFbNZquagTM6Djj+El19+s5sw4k5tTVLxOac+8Ejorri43xUI+emXYg6PV?=
 =?us-ascii?Q?IevLYljBH9dA+fGRe9gPPDCoVbVBxX97g9HfuP7mF3YVh8Daz3yRw2IOkHmm?=
 =?us-ascii?Q?Or0VTNYz43BeqzodZVG0su2hHKIKnSg56JKoWZ+DQOPFDnbWjQhd/jC2n4rO?=
 =?us-ascii?Q?Zb/9escPUGv2/n+5F/AaRlUy8Ui4kmrRwARoUk1V+JeoWdOyHIltuu19pN/c?=
 =?us-ascii?Q?xnhnfn5oOP1l2zKMXNYrqzK2ZvOcCzeTeuWZ/fdaw5tFHTRnxQrb7OgM1X2i?=
 =?us-ascii?Q?tIVNev4P2mVd5EBwbduNT00fUiYlX39NG5ItygYLjsPPi0vOgS8WEIRlgYdp?=
 =?us-ascii?Q?UJQo+WdrY4RHVKby3edC4T4ixv+yHJ4BFYIfJP8ggw8YHXTiicOM6dsEBT0m?=
 =?us-ascii?Q?9xHTykB4g3nYrQYAxSjL9XJfqk3tBihPfubH8zyAupa304vcJpzEJheki842?=
 =?us-ascii?Q?T8W7PLdN3g=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2f84681-1c0e-4dae-a314-08dec703c7eb
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2026 15:20:18.7481
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KiuxvyPdxVtPZP9asiP/tC61xycVuYTL+1oNWQRglOTkLPAUxMcQp5BZMH6oeLEUU9LqxM6m96WGxsOJFz947A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8844
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_082024_473231_BBF4A45E 
X-CRM114-Status: UNSURE (   9.72  )
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

It is unnecessary to rewrite a register if the masked field already
contains the desired value upon reading. The hardware behaviour does not
depend upon register writes with identical values.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v5: none
---
 drivers/phy/freescale/phy-fsl-lynx-core.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.h b/drivers/phy/freescale/phy-fsl-lynx-core.h
index d82e529fa65a..3d9508dfb2c1 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.h
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.h
@@ -93,7 +93,8 @@ static inline void lynx_rmw(struct lynx_priv *priv, unsigned long off, u32 val,
 	orig = lynx_read(priv, off);
 	tmp = orig & ~mask;
 	tmp |= val;
-	lynx_write(priv, off, tmp);
+	if (orig != tmp)
+		lynx_write(priv, off, tmp);
 }
 
 #define lynx_lane_rmw(lane, reg, val, mask)	\
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
