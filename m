Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE719CD8CA7
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 22:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bw5ITMFT4fJCxDNYaeW4BMTlI4sjF5IolwUo3yBhxh4=; b=MJf27Bu9clpVNQ
	AaUGOy1xog+Aio+cWEF0wiGjiMuiXj3cZmSkaI9TL1QXxGDH7rUSVOcgHjatqGbCX0R1AWn8joazD
	nRXDBp5tTgq4NODG0WzehwDVSSyYD8wrucvGD7VK3bCzY54azGnSluJdifIhVIDvYLq83oujnPcyP
	27BBa+CDOHAQQXbzslLmsWcgaoihUjsUlmvNInHyR74btzUcR6kJW+3pm0FZKh9ZNuBBBDS0aQrQ5
	s0Z2m2SVOM9NfZT03bsZlef23eqm6WiqK52MtG7yeHSdPXlPeFHxuPqtDXsj/JYq+2VO0Of9QMbpb
	QoJ4k+22VqsJiyNEMoJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiHu-00000004U4q-3gBN;
	Mon, 08 Jun 2026 22:17:42 +0000
Received: from mail-swedencentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c202::7] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiHs-00000004U2a-1DGs
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 22:17:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gu2VJPJZfaQipIrAI6BCkP/gxQV9ozuhyxai4wZY/y9DYLKonkAVX+hK+f+dWrYK9ZFeGzQcX5sBRuQ2IbK34o+Xc8yfJWf/S4IQugM44GWR67zTxVd6cG5ZYPjngNWcE0T70uBHPGJej8mn0/Nm8vYGOm5/T2cKku/UhykIcGwGzWVr2rG41oH+9Doak96soZtfw5ZlbXJDjxif9Yww8g3tkxzdXzzEPR50c1GRty+Y8Okak3eVO7eaKxCOSONz+b3IkkDPKTN84Qdwrv8auAyzu6csGgWJBrQ3ICQYqbYKi9vR+AA2S1RcpX59pb/f0A8595LbOnoBc8KVA/rUPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e5bu8M73uC1X8tocJ6Qj0Ts5SyhNb2BgZimNpf0EdNQ=;
 b=LPwLp2cUOgrTaakQmqO9cGxXCl5eoSTwHfdHA3V1w7uI9LBRhfy5tsWs+Kr/LxX9iqL8tceST0rvHLz6DCc2CDZlWn1IDA8xG027dVknlpCl5tVHnkMPjJYsCzw6tSasMrM64abtwnZiETphaG9EIBLj6TNkmX6YyknQsOWPBVZuM7v+DMG5KeicJ+u/WnpWAPBz+6k9MGYujY+NGtPkYUSgnLCCNQHR0ahORGJjwXh9rMTmPMvnza8PsTre1WEUa7nrtltSUzlZweoVzZqoFuBVmv4inAMe4MfI+vCSRljG/ILof1Tb1UAAaopMJTEhYdJC1Y0I+kRKJlSKejI9QQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e5bu8M73uC1X8tocJ6Qj0Ts5SyhNb2BgZimNpf0EdNQ=;
 b=QFDPctwZB48hU4/bZUWtl6dnkYq72CnArNVTbTizsa9DN06+7RUnSdAShdWxoc/sq401ij5j0nGTvRl3LR8XfBQKdZvZKG0ULKE+5ke2E64H6UZeu/M61z/h5fZesc3fHsUeVeM3oo8QclB9880PADfP7sWGCiPmA0CSVIYZD4+lvV1n1FI8Wzk6nZhF0M9tHOv2MmVnDgGvesDvk721v0zj6lAYhEKFKpH0g0qhesDbQlyKnHqnSIuCK5gxCPlHzjeKJhfVMneYftvlm5pKy1heEQcyrx6kTCYGjtR3ebVmUPfnpVZH3orEKRNVZV+00QKTAkdwsRQFU4HZ21ZyaA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8338.eurprd04.prod.outlook.com (2603:10a6:20b:3ec::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.14; Mon, 8 Jun 2026
 22:17:33 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 22:17:33 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 phy-next 02/16] phy: lynx-28g: reject probing on devices with unsupported OF nodes
Date: Tue,  9 Jun 2026 01:16:56 +0300
Message-Id: <20260608221710.1572971-3-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
References: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: WA2PEPF0000089B.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d8::64f) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8338:EE_
X-MS-Office365-Filtering-Correlation-Id: cd65829f-7f26-4d02-a2b5-08dec5abbd27
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|19092799006|10070799003|6133799003|22082099003|18002099003|56012099006|11063799006|3023799007;
X-Microsoft-Antispam-Message-Info: HWvtWZxLHyxayxNZV+F+OoEnB0Dmf0oui7eSum4Ba2KWmVgJSMO+FaMTBcBM1OS46jGRnQ27KshKBjwLiovIYAmevIthDCYTe6eRvJAGH+rIz4JwbQQZLnarIsmUT5A987OjaMlo/xj0YNyRXa3yjlTOFSz0l3/7yqM3nHNSNa4zWKDyruIuGA+UY9f7iVsx5wRL40XjtwZxsMb5qijedOMkVnSyFqXWRdzelq7Kt9236cMgzQyNFzxqquEs6JQhWx4w0O5NkFMBYZpdGEqYPsM4KndWPHIr9Gqjg2NDvAon5ZXeYUjwIZfpd8dySW9H8/V4FrxjTuG1MpE/5TuT4xdw6GuglWezgSVKfUsKJgQ1PxVuOypf4WKG800/KfrbP1vk92Xvk5x8Hx8NRy/zCnNoLNgfuK9EoYK8kwCVL+f69sjNG+OZq41t2FwYlNswDuGUKj72IS7LEoBRnSOT4vWLdUyND45TCyD9Up+whETk76K3cjj7MLZi9F75+8MBCGT5Kn9rYSID+h1zHCFnmt6P62aKdEX5w9gXj/nxQn2eUsWzuWFmrb3nHULp3mfTZvdHvQQ2Gq9lghUkK68jQ3R4wEKKHtEyItm/9Aoe5f6gVThSuYmOCQu3YjUSnDcG02/I5veceNe4gwjFDVbjzFsC23Vxoe8O309xSoB/bO84goivgi8qm/62x9WeOcek
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(19092799006)(10070799003)(6133799003)(22082099003)(18002099003)(56012099006)(11063799006)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FSahIUeSC3Ry+sfoVsWo8xtwJzDf0daUxcvoF0TNEvE9v2wA+oqlrI26uT0J?=
 =?us-ascii?Q?Yiq/e7oXYK5xQilo6grQi7ltjaRBsLlnHZzMxLBYIp9Ff7k8mTm+v+0QElhL?=
 =?us-ascii?Q?FtgMrGEpBjrJ/Oyc/xw3omAX8a3nYQvARm1tAu5rCPEd8gvu8AeSPu865Evh?=
 =?us-ascii?Q?VpplWOUFSiXb0qwVLOIBSfyOJxf1JHJphAaVhvmnw2zoKNs0XoaQ258oFYsV?=
 =?us-ascii?Q?pHPI8/RjjUjlYjVtsMNrryQORfe/WLRKxZITTX4hpowNSRE3ZNeIy7TSWMv4?=
 =?us-ascii?Q?JTF6k6mNejpHMJBHcWTj4W88FgcVpNExYJk5Xa70XOBqD07tefDgRHfXNwpA?=
 =?us-ascii?Q?2dRT22k1aTbkKybkVVaCADBXsdeVn5OZ6G6wxeM7x0qpOnrVWvRpr5LpBxY6?=
 =?us-ascii?Q?L6gXS3xGu/mZTqUN6rO1bTg9heUME2MW/vozWvFtcHw5B3yiPOyPUQw0mskV?=
 =?us-ascii?Q?eBsz9ykEoUSufcFdbqSbvB+iotFZc/e5H6Sbg2Rj5SUEmX6ABuj7hR4nbzc4?=
 =?us-ascii?Q?TcjHEC2DK6Opzxj6rLrFmZSoJSWZhsBGuYzaiuXjD34+6kHnnx8gqRv3vKWc?=
 =?us-ascii?Q?G8Kiv6FWhvk3yZlU980xx0vE6u0jjCahYpfpcjG0PbI9/l1qqAL8xr2lQwgP?=
 =?us-ascii?Q?8tixb9MsiRWtQYoRWccwlOMHt/HjDCTuniOhHiMIZA/kE5zF/4V5j+xzUULm?=
 =?us-ascii?Q?NfNGS9lwAKpdKJ6MTT1b8nE3JvP4r4qk7t3YauXO4TAv7Us0ooEw9zPRBgx0?=
 =?us-ascii?Q?RDl2pTG50QrNyhyA0hgaBhBjLE5JaUHn03RAMsEz30T0/TN+tv4sf0nkPBiP?=
 =?us-ascii?Q?BTbHCZTkerYEQYsnlDwkCWMxvVgZ3VljLyLvxl20SWRKmQ7a+ZCXzGKMuHVq?=
 =?us-ascii?Q?OsRdfmABHsJPAVFUfhp++Jkpzps4go5DgOXxrUjAyePMzP9QGLafTv0LBXMq?=
 =?us-ascii?Q?SHy3SksCC9Mc3NZD4Mt26T1SicVPhQYD7UKkHpK7hwgcW1GVsrRRz8Rbn8Kk?=
 =?us-ascii?Q?JF9201mZu7KbLbQkkxljR9ktG6EcXoAmnczbHbcB+rmLSoKC5HwR7UWq4kIz?=
 =?us-ascii?Q?dHrgNqKOEEKWxC3j/PPvCLOijccTDNQ6YBkcn+n/Tw4G9cueZuFfOc8kIobK?=
 =?us-ascii?Q?TyeBxbET9nHnfLpuZc8zp8IthVZoOwv81Rr+QR/0u6BMhXx7GmZXfPDPhrJ7?=
 =?us-ascii?Q?yDsDHfJGTwxD2uEZtChZpOHgAlQDzPdO2wUp6jdX/MCB8m5Xg5L9ARMZSoUG?=
 =?us-ascii?Q?rl/o9i6UzT2aq5DeOSOaOotGos/d3IJvZTjMVYpYQ4Z4gpSGTriUQJKtqbrb?=
 =?us-ascii?Q?JUJOeOsRHmNWBjAcVyzkJryjxKy310hs047VN7lma8fOZnV/eIExzZqAPw7u?=
 =?us-ascii?Q?ANuXDabRrFYoR6wxFdaSKDgehK57888hEinoFkEwwNeP3PXwA4Tnkvt7fJ2n?=
 =?us-ascii?Q?hjni/CyTH9bpBv1u7dbW+wZPdvy5avrhYhtXmkMOvNVwUZbjgQ1SgBMJ4jYb?=
 =?us-ascii?Q?Fw6IQaXEjs5fMYtzLSi4vUKWnFZmKWtheOSI56wcHSDfKVKQQsp6SVCf9evI?=
 =?us-ascii?Q?Ifcgfzh+XjqU9xkeT+9P1SuyYBSCrsViVl9efViap3q2XoBoaQk6pMfV4puG?=
 =?us-ascii?Q?f+JNgoLzyJmmJKkJWVbP9cxzT5xCx46JRn+c7REMR8NBsKVYDHScbqsEmghk?=
 =?us-ascii?Q?WaBTtsfR0lCj78FodrrFxumprbJ7gnc2WHS4O3DZvdchQQNPTJY0C/RUg6Dw?=
 =?us-ascii?Q?JNf0zBWPQ5VXnUP4Xd3QmxepYzguRZaWzofAP97jz5Msel8hIR8c?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd65829f-7f26-4d02-a2b5-08dec5abbd27
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 22:17:33.7567
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fozjyoXvKAjf7G8Gk2GGjxaAcXbvCbX5Aby4fdyQeVsfSEENOM+29St07one+uxFYedh4X+pQGAifC/2zILn6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8338
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_151740_338560_04270EBF 
X-CRM114-Status: GOOD (  14.49  )
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

It is possible to bind the lynx-28g driver to an arbitrary device with
an OF node, using the driver_override mechanism that is available for
the platform bus, and trigger a crash this way:

$ echo 1ea0000.serdes > /sys/bus/platform/drivers/lynx-10g/unbind
$ echo lynx-28g > /sys/bus/platform/devices/1ea0000.serdes/driver_override
$ echo 1ea0000.serdes > /sys/bus/platform/drivers/lynx-28g/bind
Internal error: Oops: 0000000096000004 [#1]  SMP
Hardware name: LS1028A RDB Board (DT)
pc : lynx_probe+0x118/0x4fc
lr : lynx_probe+0x110/0x4fc
Call trace:
 lynx_probe+0x118/0x4fc (P)
 lynx_28g_probe+0x54/0x7c
 platform_probe+0x68/0xa4
 really_probe+0x14c/0x2ec
 __driver_probe_device+0xc8/0x170
 device_driver_attach+0x58/0xa8
 bind_store+0xd8/0x118
 drv_attr_store+0x24/0x38

The crash is caused by the fact that of_device_get_match_data() returns
NULL (the bound device has a different compatible string) and this is
not checked.

There was a previous attempt to avoid this in commit c9d80e861034 ("phy:
lynx-28g: require an OF node to probe"), but the mechanism was not fully
understood and it only covered the case where the driver was bound to a
device with no OF node.

The issue was found during Sashiko review. Elevated privilege is
required to override the driver for a device, so the real life impact of
the issue should not be very high.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v2->v4: none
v1->v2: patch is new
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index cacc128dc96a..1f5cb02931f5 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -1477,6 +1477,9 @@ static int lynx_28g_probe(struct platform_device *pdev)
 
 	priv->dev = dev;
 	priv->info = of_device_get_match_data(dev);
+	if (!priv->info)
+		return -ENODEV;
+
 	dev_set_drvdata(dev, priv);
 	spin_lock_init(&priv->pcc_lock);
 	INIT_DELAYED_WORK(&priv->cdr_check, lynx_28g_cdr_lock_check);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
