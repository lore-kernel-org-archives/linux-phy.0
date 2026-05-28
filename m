Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAE1ECD6E4A
	for <linux-phy@archiver.kernel.org>; Thu, 28 May 2026 17:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uiBp039RtI+bv2Po6Th6kUu3fKfvhl1fpP3q5Tvxtpc=; b=EQwF2zR7qkgn6s
	emVlrzOtAS6tAVO9R1Jxmo7QVrlhmDD5ibVaRZA/pwCi0HslVfQBSS62cgzawnJpUfYkzF105TSfD
	uwJH9eGNWTWgRkWTRRJCEpfbDqE8SxzX+73b7WlNwiKUbcg1KIi8EOBg/mjzmMI6gnbs5d1p/hkqx
	VDMg0xCsq6QaSpemT4plDBcpaykWvwbvaCFVab3CswVhOJ+8BU4vz5kqhUDiZ6MwK1xLif6e8p0ec
	+p9PzyGowlx2o/MhNMxrVwqH/Wdu8yPuNb4l8wAJEccPxhsHpOU6rQSToGgwi8CJ62mEFK+HRRstS
	/eLc9LoAVNGRETeiQJwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeTC-000000065W5-2yPH;
	Thu, 28 May 2026 17:24:34 +0000
Received: from mail-northeuropeazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c200::5] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeT9-000000065T8-3TFe
	for linux-phy@lists.infradead.org;
	Thu, 28 May 2026 17:24:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vdKnggSb537O4jsQVfjZsaALuZp5rxEwYhonO168OHNFpsFUegDjrVfRuDFtQouKU0ULsG4k/wCZty5HxnTNNpxZPcdC2IGqUzf1XEna6S/HuYJeXzdYeCPlnsyDEj2Pmxg/AotXTxEJm9UYYDC8XgRHF+NK2FsBAJeZlYPCU+8uc5jJo1NAM9k+3cvOe8WI/uZNbdIrCkndj4tMrntsizuNJYrz/3wuDrMtvzmmud9QRO8IFbV4zDbX85V/0KpuFyXmhjq7KDFKrXiYFab8OGtP6BE7bDYoZXtKbmSo0d+HGhwFTaruapE5znb0lPUEh9ARCw2ixICKQReEFQEPag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CqfUedrQIfLE9VCTnR6pmz3OG3F4aC8Rw7OUPGOcuIE=;
 b=auChdXEJsFuB1mzaSI3Yj5q30eVB+/Fw4m05uxqjjuPcSAdaTe3hcyeJLys5R+xBvR6MD7rNvf2KtDI5bEUJPLNVFsHQrXLhIznAg6Fz9mOLiS3ram4HHDI/q+E5olwE5S976fkn4KBxTjJp35abn7KGhvMWbSyxDkpazc/sIWBVmBch72DGer+mgCewZaLfN8VINGOegPSy9YT2hWydxgbpiYaTGXb0piOmbzLG2FsZyW/WlsN+n4JpjQB+g1x3VwT5n+aCNR+qUAT02P9xBSKpujtLrpYPZ2oJdazVh4R6ra1PQJ+NnY5zD1CKgh5g9ODr3UzWmdMlbHwxQaaqCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CqfUedrQIfLE9VCTnR6pmz3OG3F4aC8Rw7OUPGOcuIE=;
 b=LkGYYPfbHyjARtZMryoVMzvT5JazR+jxLvRN7eOFopPVgiGFpbN8VEgBG/eQ2CUp8GL0tn57iuYwX0I1ZfAk9CWb2tdMft5aK2TfZeE9zs3uSl1gYI41oCNzLSIWog6VDwVOYJULRIP5sAmUT8ztiyBJolbAFCuhSwGeOB27W5tC8C0aIGRYcDDUkAQNjjcq1uybuUwMyoWR6D23xfkyy62N1S2a0Tgc5WQx3SD/WQrlqb03jFbfJOkQ8TQePWAKeZHYbcHX2S/19ZkUdOwdFegZ7IPMEws1g+F9vaDa8E+e9PjTG5E+SbvkhHYFbgf0BzqoBhSLwQZiZEJA2sPKww==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM0PR04MB11931.eurprd04.prod.outlook.com (2603:10a6:20b:6fd::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.14; Thu, 28 May
 2026 17:24:27 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 17:24:27 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH phy-next 11/13] phy: lynx-28g: optimize read-modify-write operation
Date: Thu, 28 May 2026 20:24:02 +0300
Message-Id: <20260528172404.733196-12-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260528172404.733196-1-vladimir.oltean@nxp.com>
References: <20260528172404.733196-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P195CA0039.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:20b:65a::15) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM0PR04MB11931:EE_
X-MS-Office365-Filtering-Correlation-Id: bf72791e-e7c2-4c46-e2c9-08debcddf81b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|19092799006|366016|376014|1800799024|10070799003|22082099003|18002099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: 7W5hsmpt0NwXiWUAffABR3k5x+MtT2MP/xM4gWJ0h0RWPKpSGOKcv4bsmkkTiIsi7iuXhwEP2SDrlrUUT5rnL4nhn08/Y5e8+gHJ6oAeUBpsniZlteqkSKYY24lld0xV0zzLKxtIvR91iX3swHm54xolj3ENjWKdoi80fKnW5ybNNsHHpqluQU67JoF/B+rowLQEU7Z+ZS2h4HWiLYk6pQeWNYrvfSoikStJDUNTNErZtJUxt4+kV5OsH88guWTof3z5sPVUt4pN2s+Njqvo8H4HjVenZez0tc9sAQJ8lXnm77+RYXvJv/Lu2fT5eMo/2r8GUguGT/DjrMngqLtWn8HTvqhqfpiT+bblNiCL7FN2tORoLQ1AL0H82YTsDyJf+mYl8/dbn4xPDd76gu9qPeIPYULXbD2Ur8LWHRv3DLZCZpurrNWKTrEmUWzMaSZIa0AyKEvbcOwL5lxTqaYKRw2qPscD9nFxR5YwkHVF+aXo58Z0JJZH5g4Kush/WYkPrk93VKqOM+Co6sHHRo6DD6yvTxpMtU23RDWo/yAJovGck/7Tf/G6tCCnwP97LL1J7GB4q/FSr2UDwBgFKSyjojzRdk6ZX/XSuA+iEYo6o/peVq4oK9l7QBOxcoqT890OtRNqOZA2wVuWpwLv4OiYVJakixo+oTFg4R5zZ1YjSRER7TiAFkdVNBF1qVSM8/gU
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(366016)(376014)(1800799024)(10070799003)(22082099003)(18002099003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2o2cdluC6cb1oAcgfENPznCiof0tQO9npTRneBnIGTWLIAO7lDjlJHoygQS5?=
 =?us-ascii?Q?1x5yZin13sXulE4jPXiQ9GLrul8g5Xwiz/kifWc2+e+97tlFpA1EPYNBEYfR?=
 =?us-ascii?Q?qrjWs4siVfz7X9aCCMKnhjGETaYDAJkziyD3DNWv7SOY27pHytE6FWcSP6Xv?=
 =?us-ascii?Q?zrd3NXBcrpyREcNf96i8lNHkpsyjh+G3AnZO1N8d8iKbBJyF9Oyrw0lRlmA2?=
 =?us-ascii?Q?KVfvExJNt1j7E/hbGtRwYlnrNcCxYLjiiTWlGR8IdBjzF6ffUFI79W6mPwY1?=
 =?us-ascii?Q?0bhyNU4vDIzZA5aDKlUKhFoQlnQqWib38cByIXQZpGDRF/QGXcOq2RprW/1U?=
 =?us-ascii?Q?ypbkDty9Z6aMInYxJKoI6/nfvWnU8YacHgRUJURBsEWpwdSU28nrFXY//I1c?=
 =?us-ascii?Q?Iy4yX5vIi/Wac40Cru9eiy7rVbyQTMn2i19tylaJgipy0esarsQcHYu+J4bd?=
 =?us-ascii?Q?ISoTVw3t4E356KxtKuc7d6W+vdAmP0m+7MRjY9AyBT7aUpMSI7t2oDY8VZyq?=
 =?us-ascii?Q?//5osY+sD9UToAwAS3MFiiiID0Irlm0V0XzuKuBppYXSy1pt6k0jdcdDKmlf?=
 =?us-ascii?Q?guOQQCQx+nvBtUEDmJpwd6CK1DZpoyy4WA8b8+dL91Ss44jynQdQBOrcGg9t?=
 =?us-ascii?Q?hs3BKh7UxAh3UZ7XCFNPzCIABOn1Obzj8TKsU3S+Pj54Oy24GxAKoogTQ0x8?=
 =?us-ascii?Q?cJ/CHHHhkDmO2oKtxn1Y0XdRgo6Ywymst7peMV+WHZGMXdVs4m92/Q6X1RwM?=
 =?us-ascii?Q?KAzW+C0EixyvQ2qD+zAsHKJE4o6KtkmKDhsXJ+/IG04KURpcBdKP94YVW7xS?=
 =?us-ascii?Q?hsy/RNVESydJbx8RKX+QpbhY6Qoz4g3b+k46Qwq1BTN0d9/tpMjyCHjxrb7Q?=
 =?us-ascii?Q?l2UO/53CC2dku+HU08Enw+fPKduj+AHVrU4s9AbzLNkJWNWHFxatweEHK/zu?=
 =?us-ascii?Q?FlvFkSKQ6ZPdP6hSv41wz1xhkSFaAOUnAzK3khwZI344npPOljALCcQ3EfFE?=
 =?us-ascii?Q?H+IcYTbQp6C/V1w42+gt1XNKoO8/Sbj5WAKLJEmVupzYRT7teMIX7vlBJAVY?=
 =?us-ascii?Q?pD5vCDYGHYIckoz8re+QGhGKD4Kg8c3MOXgMVfaMnOWGGfFAO3AjIJEcAyqg?=
 =?us-ascii?Q?/eRBJ/Wy8UgLw65Ahuui+AmqAxIiRrJ2MDsrL0bKn6qulF3iV1sBSaMVTOHX?=
 =?us-ascii?Q?hbbTyvN2FLyPtlVrIk1vvn04DVf3qG+YeFaneiF0GOk3knNhG3gY9eucT2ov?=
 =?us-ascii?Q?omtu0JSRQcJ3UzJoedW2a7gIPo7Yq+MfnpZcuykxhSGvmEQBTzIm+OWARCCl?=
 =?us-ascii?Q?fQkwhQtyqgWD8oFy+0+sY0rHO7OXllzyX+qqC38MqSJ/lK/SJZvpYlm43iJa?=
 =?us-ascii?Q?swdBJKIyfgcvInZKUdewq1X8NhCcJmiTuAncT+s3SlrNEeDNq0hrwDqw3UBc?=
 =?us-ascii?Q?hvAqyv4Q9Qj+w/jxH2Ih9cYsELEfV+4zNkX7f+uJVwzW/7MXFr+P7QiGGJyo?=
 =?us-ascii?Q?Lqvk3Sy+wIavBk39GUcSe/SbJm7m1Ups2F5qoF3k6vT8t3IzTnS2NSJmF9c2?=
 =?us-ascii?Q?UwTTjSQQ3pp/dW4WwLkyh7G4S/qDpERowwNQH+bBV1LD8kd3sGthBWtcYtrP?=
 =?us-ascii?Q?QLkMaOkJtCzbTTtWRqfytOsEZSV+hz/fmZBxxqUuHr12RGWnVK2QkfC0oc5R?=
 =?us-ascii?Q?hnSPFQ4hVwu5+6ltdEo/6WLOJrL52NjPpBkHgz553nF/bXjJhxiFdu0C4tbJ?=
 =?us-ascii?Q?wwXuGsEY9I3l4C+DzEhN1fLLUajoGdmPfEldppxa4/W3PeyHuLeI?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf72791e-e7c2-4c46-e2c9-08debcddf81b
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 17:24:27.0609
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9cqwdDE1IoIMsgux0cf6U0hCeh59+qejEy3TWPeJ//VoI6SF67DzMfTUKqcIs/rgs255doJ2lE/nUgrOM1oDXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB11931
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_102431_868359_42831DBB 
X-CRM114-Status: UNSURE (   9.71  )
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
