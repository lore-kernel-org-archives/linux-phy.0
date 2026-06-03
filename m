Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B05C3CD6E6C
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 13:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FaJ0FyoNAalMbqM/ZVpCMTVTa/DiTOfM6tdbEwixOP4=; b=NFvmKX2fP+MgBr
	U/fVuZR9Ocv6rB3rhEtY39gyYres0cMV0iq2Hh303Rzg0eAYXqi6xo8MJ8CZk5czcDIr7jhCoGXiM
	8DS2ztra+jdifY5r0wpdwSyDOzAS42iRY6ZCq8bf4feX+EQzDP6xsAzLZcteFjWgWc6vL61azNvKZ
	BxwYY8Vy/sENBw5e1C6EbGpILqiCHS/1NEFtOZwnj5aMW4b8SqMCqwkMK3GQHxz52dco6tHtoArr9
	PrnHkpH5oUMcO6bx8wfyyujd5n4i9bLPgB7Qgd8aO/PyzI2jlGwCXJ41YO3ezMyOaytkhUs3/lE1m
	r+sNtX9Rqk9EZaJ/vdsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlVl-0000000FACr-1z9u;
	Wed, 03 Jun 2026 13:19:57 +0000
Received: from mail-swedencentralazon11013016.outbound.protection.outlook.com ([52.101.83.16] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlVj-0000000FAAL-2ewl
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 13:19:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hP8Eaer3uN0oc1fTPoJUzwiVKJSo4I1KgWhKs/K/T5lfochvChm39y0qvHsJY6uRO7lrGDapG44bIgW9pdMD4wpXb5B6moMW8vZepDoJ4e5fxuephe++1GtVXxfdsGUhutTFXhrJ33Ohz4/8ZEZOWklblrMWhuo7hyEAl27lBqTYZI4zc218/yCK8wXRwFWj8rB4SeD2etk6Vrvkj9NY3IUvWXe4/2PcV1w9nVnG0Utkwtec4r0/ZKYm0NBwdN4gtdkNq4wTWNdopecnXs66Ice+GKQVFNTyAADviucoHlt9f6ZUhs9TKde5JevgOHgeYeMaB67pAIIsCNGisjkxDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dTk2mDWkXzk+ovB01XVuHputsZ4RNx4zlbGpCDuhQsk=;
 b=PU7ogKsmP8jQP+IMTWAGrRVy24QlohuDJKlYfx2ItqWWRQ7a7LFz9y4OXxpZOQpnJoeecZY4TNKGv9Ehqw672OdvLfiFYQ8Jcgo+IsZbGfqeD5iuR+HUyVYQIqM94u5rzpoWP2hMXeGQ4P2PbZj07r2OtX2Xt7TSmwzzCsQB69ec045ahlTxACzRMc4AS/DNtqpZrO9Xa9AOJWp5a9IvIkI3GrwtEWnPVNDV196dYGwCAIaLCnQ1PffZ5Ax7e4bSO/j4OOZL3HjRd1ik/DRES10Z25ParYYEcTX4ERqFtLpDtjKKDkDignGsEvCL73HyDsg/+ub++MRzDvsgRVkJEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dTk2mDWkXzk+ovB01XVuHputsZ4RNx4zlbGpCDuhQsk=;
 b=Kve4VzncmTskbb6ujaKPsULTHrTWlV5ebh9dzfwWpmbZL7gYz0wgfYL4QQLzy24DXyBUGCiMdf5eyI4NSQ6ecxFBX/+DQlFREFq4Wrr7m8WvtvAh4PIZqvAwkHQpa/j5pcqDEWsUk2fknAyys+MF1KzJOLpY2fnJW6oNVC0DPvVdRsG3lJ081PjvPnsfXbsT98fPvOlQOu6+QL0/odCPxqRDEmpy+LfIWvLHtW9lZpIh9L4G0X1JVAUiRA8Ay4VpN9pAW9UjtlEQIaNno9pqd6bqA1zinVqpe90Fz1Ppntqg6iyXEdn1XevLHmZ9faik3ftbu1dWv5AmMGtbMr3Qew==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by PA1PR04MB10225.eurprd04.prod.outlook.com (2603:10a6:102:467::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 13:19:47 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 13:19:47 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 phy-next 12/16] phy: lynx-28g: optimize read-modify-write operation
Date: Wed,  3 Jun 2026 16:19:10 +0300
Message-Id: <20260603131914.503053-13-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260603131914.503053-1-vladimir.oltean@nxp.com>
References: <20260603131914.503053-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P192CA0012.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:5da::20) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|PA1PR04MB10225:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d8dbcf5-0624-42a8-8e21-08dec172c88e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|19092799006|366016|1800799024|11063799006|56012099006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: XW82tw+cKYCuyLln3KQUdAFzkafRnkSpACeabS16Qa+GgQcGWGD/gbe76+BaKWfnOkHyxoUhI0RfVC9ONWydYE0RSA7dFOQLFb+3+v/oKBY/wYKgwTlrTPIIGW/SeEXUiJUI8Rb0hXRIPoTcmu6FcRVQT3Lzbm+V3RicFH2EjWhfYE1fokEXiFitSqrrc12vefxhkobi2llLzk9MefwRzdI2b/BAOhPLsBzj/dbAxVFo3cjzNjglAf31DF1imTSBWG/FNUxq3CbKPFxcu7zkDPwemn+t+jFVcCWQnV0RPB5lxH9eS3vtqCYy5WCBK2nZMWWz+qDmmnXLMIirOuG7fEIEABrBFNPC3PLmFoUdRja3wQyavNlrDpS8ezQfgNy3GlvQPRKFMdXpBmZgutLoH4M1jbdZlQZefWnZJV2xlD/EDi2oAbEsUjExr2H0YpxW1bP9u59ZBuXJCr4Q5ob/INvN9ii8LVnKC23LKzpLdBCyvOR6YEcEjLStzbvDDoWcW+UP1+fYKcdUMl+nXSfDtY2oNPOBl66GRyriOfOWcIvNNH95cktgU85OI7LioKmBvBZ84ZmMWyN+EEmMjTAE1hIeIRtvRVNOOQyVBCNQg6RBT8lh4s2orFBxiUbituiZhA2z7ppM1vrfNHGb2ptDpI9/jWzXNmyRbIaQ+fhpq9xM9gXcoZwUDucgNA4NDwKy
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(19092799006)(366016)(1800799024)(11063799006)(56012099006)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QaTUMOTFk5phMFkv2Ro/uWE/thANlaG+OdHCeNHs5dWVbg2PsbA/fCVh1wrS?=
 =?us-ascii?Q?znZG/WFSAXrusKXk1px5cXVWMCvTBZsr5m0PmUsB1SW/4wekLZVBvN/P6Kud?=
 =?us-ascii?Q?JkFgZ78miEZKsvLYVFgmMC45Kr/sIUy9b1Lo68cyun6ZMeX1t/cm/57qGWIu?=
 =?us-ascii?Q?izquL0pbaFZt2jpk+8Zgq+i3zziqlNA2dAGXRObbhCIlAtRbttSncRSh4w0o?=
 =?us-ascii?Q?vXcAEf76Fkp6/37RAbQnn5hw/W+beZxpQxiPaYqzJuutamn6klRS08oxVNPE?=
 =?us-ascii?Q?43oR5FVYR8CT0bb8sKsrsjkRKaLxosdvT+IECFQHygpbhcYDkTkitFTE7YYp?=
 =?us-ascii?Q?6VK31H66fKGJ5h1wlCiDibQM0CgcAuJ5uj3bkugleZLe0tiVDEBApK5mmZsr?=
 =?us-ascii?Q?t32VnHPkpwhKfHXkHVWnPTEZb0UaEoPJiw2cdIkk/VjAD34jdKHYm/+ccnvH?=
 =?us-ascii?Q?BF0yI3T0IQ3JHmRZer7GjrS9rB3dD8S06PdVk8DLAOrEq0joOhxQsMYw9Qwl?=
 =?us-ascii?Q?bfCIX3zYv/NX4PkBtKZB4cSElA5UiOIEhz+G4SAGUGXZ0t/IcrGZL+RHsJSb?=
 =?us-ascii?Q?2HyL6jvFyxGwytN8ABAYXiaWeR4btVUV9EViwzLuswGKSxZBHq/GikBxq/y2?=
 =?us-ascii?Q?yPwIUZ3Shk7OT/g+8QcqXxVU2nImQTjwhOSpgJVt8UYc8xnhXltXklr0bR7K?=
 =?us-ascii?Q?y2sBmgtW9Pk5BFsryidXjNFjUJjSWsN604x3eTNta9U+4EIqQk9uIrs3xxUZ?=
 =?us-ascii?Q?zVFmDjvk//Tr7HGWOeYNj6zb7NU00wcb/WZVnj7xPTkjJsS5IkbXkVq1NnNk?=
 =?us-ascii?Q?Mm39dk0fJuoTD43fiU9c4VWG6oU3T0ESVhKPrJXh+LIW1TZdJUfkR51YhgHG?=
 =?us-ascii?Q?OFTjkTO4+XI3CKj8T6AIHOR3A4GMfs3ngRXsecA7h2UJR/FOZ9Hs1Pz9oy7J?=
 =?us-ascii?Q?bAAJ+mO+8AAI+01XAQPJ4EgdpgH6SSNsn9VMcC6jIEIy9qLC7cV/2IL2YRc4?=
 =?us-ascii?Q?+PkMMH9MhE+TlWjhBWdUjElZiTi8/9tpsZRTBWS9D//XXcKUR+UFFfj7oeo/?=
 =?us-ascii?Q?1A7DC8KS1JB50JdrStN1D2TSRzf7YHXzNay09WtHz4UzF1ghCheY2ziZ5FnW?=
 =?us-ascii?Q?SuTQRYEoJ08UJAGXiqgNXxt2b3HSBXv0HPZ/WloitbHopTdsNpJhilUUiVUK?=
 =?us-ascii?Q?uXfWwodV4wgDXSkkeVm1GLp56aYT+hS4wZefXnzJsix5HzXoLaQiCy7fPwDw?=
 =?us-ascii?Q?26kuxbeK+DiW4Z9Kf4kpJX1n/kggsjWrMurEgrSV4hD4RMDmHQ32AY95fPQT?=
 =?us-ascii?Q?2VOJetXVAJ04/fsxQ7KCVNc+WxeLj4XxMYvg8553GLgdD5pbtkOxpQdS9uAu?=
 =?us-ascii?Q?swXXHG/DakVopAZG/enNeCXGg/uAG/6kGmTnP5EIptAJqBw87bQjF5ZTJJpa?=
 =?us-ascii?Q?tQ1jT0fNgnSmSD9i05/UTgOs5mSQBnHNjwfUYRlYSvkm4sC+gCMIEVV0MURk?=
 =?us-ascii?Q?4waNoy5jbrePg+0WuOvyZRzIKbNduC6nVldofR/hYFn/J2IpVxVcwHm0vZjJ?=
 =?us-ascii?Q?TR3iYTNvZyuLYxpHXzXruyx8WInpquNvs0t926KpAZZ5hDs1q7Y6WMaYaDKP?=
 =?us-ascii?Q?Vo03mxPckt2EKpD69X+8rGJhvcI242THJww/kF6f0GhNk8Qc49HGec3A2ldC?=
 =?us-ascii?Q?kb/PMPSvzKdmtyrw7fMCHi7cBCpF/UzsV0gsFD3fdujfQW9dXwyEuAkab0DF?=
 =?us-ascii?Q?VZLqohr75g=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d8dbcf5-0624-42a8-8e21-08dec172c88e
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 13:19:47.0004
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xgwQdoz3a6LjBneQbFUtuRzYjmOL6Hf1ua0eoKce6fRujbCQFXeydPYEGRibpc+zBfWOCP7bYrqSCZaSlD9BGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR04MB10225
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_061955_673880_7D37A36E 
X-CRM114-Status: GOOD (  10.11  )
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
v1->v3: none
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
