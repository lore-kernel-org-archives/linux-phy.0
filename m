Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 499F3C79F82
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 08:56:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OaT66LGkIBck4lyFy99BHO+RnmOahd+tkqsUAoFe140=; b=nAKnu3wVCdK1Ad
	7oFgYm/eyFQ7lUkynzcJVX4z3+haWFDfQ+N8tD0jeyqzmB1wgw6010kwuJng+TxYLepW5WmcWitW1
	eKZTnJWNno3NJPgMbI70Wjw0mKEp0ctebbaf5ZV3kTl+CALGC4QyCFeJUCbW0LSnx/ZGOGeu+E1+e
	l1zPtMqKrwTDHb2lezqW04C9IpVOqKzQAwD04xbyL4i0G52KW/U0iXSUUWLwhrAXupcVye19onuOG
	8Z051VfTNhFzVJZB/Oqi9BVqac8uBGgyHgMhR0rCnWcWMbn4t00xD7QJUJAIYHycdB2/Ji1q0Gczl
	sW3SnVzyqahkeMWtL5Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3rch-00000008Tr2-2UPC;
	Tue, 08 Sep 2026 08:56:11 +0000
Received: from mail-westeuropeazon11011001.outbound.protection.outlook.com ([52.101.70.1] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3rce-00000008TpX-30Pl
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 08:56:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ngjUh6JC0ev7jadoGaCrQ251mJ/x2/XfwMyhIcVsMGXdLtnMSo474fGfEjTSruWa+szulFK3NFsZ2f/oBYHAHgi1M7mD66SJ13JOZSf45uu66NWNDIqNYvPrZDELUnJtsI9R28VnDr+pMGOAsoD5hEUEjlqJfW9SPPmrJQJNugr0COAIM8COW5CXOWbuYE223suDsooByYh/2T+F7wzm81eQUIBZgyh7g0Jbecs4KlXzNcJXVLpNj7V+ppmn+l69OWfk5RbtFwrIgTnaVqJg0VVktVAUTcNUtfohDO4aJ1FZaDY/9phoq8s/HVzQEYUVnZ9tpl/5My39ayxQFH9VkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rDMRuErsoo9lfOx6JDF8rXAdESDHKjzkDnW2udH6C1g=;
 b=ll+mR7H0We5Ju1ptIhAcn164LXq3ti/9VY5aUxSRkpsbuSGTrff5vW4ZsnP+30KBaip4ZasVtewBE64upgP53r0vU8MYjoIP675KBbVkoR87oeOxQGB+dp7ImCO3kS7UOBcCIOhMwV9npO4aItPqnVs2QZ8FNYTjsF4Lza6fWIOkAsNiAxcXlJc57snUmZaDELf3VNmBwokersJ57pOM0hNaWYMLSZrcxNBcfhti0gnmhxzpvz8rOSqC/WgN8Lbdn1gTAMWBGo95S6bwYTi9FSt+lVwqCMBjGB+U8MNl+Aaq3hLFYif1DyzZ2AVM83WQbr8D82HgzQn6HpgEG3ZPow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rDMRuErsoo9lfOx6JDF8rXAdESDHKjzkDnW2udH6C1g=;
 b=f62nO1MSlVffPXlLcUI3hlGdXAKpKG3pBr6sFpBpL5opu1CJBqtUtDcqcHMhl2ocdz92A85HoxS+8Km/3Ui9AgETfLD5CQKGlCmBmSkhmod8LqfSfc/vaSAz4OSGa62MjtcM+ucEz1sJjzX46ysqOVM5j6dJwrVsJsE9VxBJM2FB2mjd8ztTUClxHQZVwPOP651U7YVmr43L3K+PAO2DYToiD/BDcKlzW6y/gFAXcBr1GC64o3l3RkTwUIeASOQfb/yIRErqrTXKHi64Jso+o8V70ma5pYicC492XxZrcr9/4/QyERTkV1nrqT1JGdAxxrZVCFldhBEwbJZmPd6Lgg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from PAXPR04MB9422.eurprd04.prod.outlook.com (2603:10a6:102:2b4::21)
 by DU0PR04MB9586.eurprd04.prod.outlook.com (2603:10a6:10:31e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.382.13; Tue, 8 Sep
 2026 08:55:53 +0000
Received: from PAXPR04MB9422.eurprd04.prod.outlook.com
 ([fe80::54e:28bf:aa85:d25d]) by PAXPR04MB9422.eurprd04.prod.outlook.com
 ([fe80::54e:28bf:aa85:d25d%4]) with mapi id 15.21.0382.014; Tue, 8 Sep 2026
 08:55:53 +0000
From: Xu Yang <xu.yang_2@oss.nxp.com>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	mani@kernel.org,
	dmitry.baryshkov@oss.qualcomm.com,
	ivo.ivanov.ivanov1@gmail.com
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev
Subject: [PATCH] phy: phy-snps-eusb2: fix FSEL_48_MHZ_VAL definition
Date: Tue,  8 Sep 2026 16:59:53 +0800
Message-Id: <20260908085953.3315953-1-xu.yang_2@oss.nxp.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: MA5P287CA0346.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:21f::7) To PAXPR04MB9422.eurprd04.prod.outlook.com
 (2603:10a6:102:2b4::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9422:EE_|DU0PR04MB9586:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c8aab5a-9f3d-46cb-25e2-08df0d86fcf5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|19092799006|1800799024|23010399003|376014|10067099003|56012099006|11063799006|18002099003;
X-Microsoft-Antispam-Message-Info: 1+mggfrI59JyodkkUNCJmGHzwig9gdmRPDQASRu++RzIcyL5pjjboRcpWRdrxz3kbmyEB0+mBjofSjfbUCPSsdouVCzxBbMNc441yw3Kx/WwA2xRZbs28mQ9zkcfKcrJDDWXGkNUFoyuDuB1n6G1Dy7wTQ+aIrMKx8Kw0oGXMx++FiM56b4QvBiMk8p33CcAVpoVuD+AeFL3PID1foRAKZ6lXpZtdm3r+EGnFmV0F/0ql3C3TPPLtPNieiS8PY1E+h6KXoRopI+ymG9N16YtcGHbzvXEL89Cxecjnag567lZRYz8LCDVemstqZ433J+pgQVqkd299IGqb3TdmnlT7b+uuk3WhfshtKshXciiCCoFQG5AqoN04RQdKDroE+Up2V2LyIeO9TJyMuEn7Qq34/L5KmrFCSVx7jnePfKEWg/+BEU+RHUCW0feMHvHuaVRoBtpUsjKy4Eo39SXAw0AdBuCxiAwnM8zWLWpjGJvtBR4gV6KBGBdtt6+dgiK0xb9l47RN7hxO65dAXEN2U8TWmcUiDh0hWIhtuXWvGBvIlAbfCVEDerXCqCNoufeS1PSaX45EQKVw6T6bYCWeSyiik6kR33ett63xB7nA/SWMKHp0CBWx0MRdDZNmVtugls2F1I7gRpmPjCosaWSRPZOhea8RFx0/mgSM5xnBY74fcM=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9422.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(19092799006)(1800799024)(23010399003)(376014)(10067099003)(56012099006)(11063799006)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ld+yfiDzMuoVHgo5QcbMkSoWTEivG73XpqaDLK6MhdeB8OAdfhDjYYw0yY4l?=
 =?us-ascii?Q?6OhzDBX/zKw5NtcanZrz1JFp+rNg+np0AKaqp/w0QowiXOg1OCdi1jCEx9cf?=
 =?us-ascii?Q?WN+PB4Y+R5iLO2vgvyqY34RUkwZa/oJbvF3fGkr5k/KQ6wbmhUfNmzqtkbgo?=
 =?us-ascii?Q?RmTnLA3QXl7BHwzH99tBgzB1rF5DhAuYuPV4vcuXhYds3QPxdcVPrYfqnzUn?=
 =?us-ascii?Q?kvd9k3X9uM+0axHRioEeLrIHEh+OrTGmkp/tf0lhy2BCaNU1Jy7FvIZ1qcRS?=
 =?us-ascii?Q?Qit/gOfiZFIAIfWwHpiZNQ5lQzlprPeSkG8ELyyzY9uVhIFpLBoETaFtKWaV?=
 =?us-ascii?Q?PUOjgL9A9cT9kPsodm9vDcn0fDKQB2DnLN+4SnwnavC+ZKqnXvyLXnN8RCBf?=
 =?us-ascii?Q?faizZSiUMeYezPNc2p+R3iHrALs29jWDWOQEZWQu5ICXUBBLZj/Z48MOrnRE?=
 =?us-ascii?Q?KCm7CM3cQ1h/svHKWIaf+Z8Gwda97Wp+RdaQf2/MXZn/X1mqvyKcx3yESd+W?=
 =?us-ascii?Q?n89f7KRt6oudZ80L+Hn4eqwrFQFCfIlJiru6L5KZuhMI2UjVumrzXPzdGwrR?=
 =?us-ascii?Q?N+IUvLAzv+1kfKF3Bf6zJKtlgpN1lRIO2t23uJMinJW5KzzhOu9FAbCzeYxs?=
 =?us-ascii?Q?k2pgMth4O5l60KGr9dyc/GsLNp6MtJF8hBtlHLogauPBe8erRyiTEzUsjdLd?=
 =?us-ascii?Q?Tzqpzh2y8ZREn+IDXZ4cBvkid4tD1QHfbJjszNgkTLZGYPNACtsl26L6kwF7?=
 =?us-ascii?Q?3mwK6Q8lw/m87toHV8YqhNviEpR3YBzgqXrqecjTKmBQm1vQSFrhM1D/4lZH?=
 =?us-ascii?Q?HjvyOooKWA4TUCzmeUY33r8/5iH5j5VMobWfkghfxRbjTKPmV0eIp70erkPc?=
 =?us-ascii?Q?ahYdU9albWvoEYN39NSYhzQQ5F6A+LejuvsYIIxFIU6S3NGdkzAmENCUR6YO?=
 =?us-ascii?Q?VMYz1ExUYFJjYKvlm1cCYkcHDjJksogDjL9k5iRkDnUWnbHcurdvsMO5L/4+?=
 =?us-ascii?Q?BMAc+HWuBBT4T2JNt/NW/dPihNw6AJULd9npBtdrSpZpLxzBmOegWrQRIlsr?=
 =?us-ascii?Q?oqKkF6dSHT/XvQn3qFqrB6IivpOD5bi5gTSL7Az3ts5QF1mSvxAOaJ4dvJuE?=
 =?us-ascii?Q?R5qpN2No8WNdxh0qw7y6/qKMfueg919IDitFO/JmJxl7ywLFy7cXVAW0fNZa?=
 =?us-ascii?Q?3MfKT+A0AtUGli8VJmvIN2KzDnwv1ya8XuTh7thi3gpqUqRRzj8MJTQg7OYG?=
 =?us-ascii?Q?dWsBBpVRZKF6wmf2/yRmZVexscuXCSxL1RLCmCOfJKMFOUJ6kbtfW+lFfzTp?=
 =?us-ascii?Q?XT7uUaI3zk+CC9ezub+RuzZVu8FJrjBJ3QcWL1X5klv6Mbm8Xg6cWoiJXooF?=
 =?us-ascii?Q?+BFM/DwYLfh1TJOjdKmitVG0HIuZlXcL507qrJ3oBQN1Zled7e4+EM+z/ksi?=
 =?us-ascii?Q?577X10lJGilHo5QAx11/0LBoJKCzCWfEO4/f916koCse/sfuSYZEPOucMYhI?=
 =?us-ascii?Q?rCfX8IKKH3OIISU4/teWsGMVWn1ghrvwD8+ZUDOhMN4nrcKRyuvkR7NYnaOU?=
 =?us-ascii?Q?A+bY6AdeGSKeSC+JySKkrStf3OV3bom7Sh3ezR9HSiJHAo1ZvKxP6bwSr/MV?=
 =?us-ascii?Q?OVHNPWdpfCYQ+UYb1ebvAh26ZCNBtPctSRyegnLrp/EpK4zmF7mLycAok1cp?=
 =?us-ascii?Q?kCucJRbr5R//3KzkwlX/n9cIXZu3eL5OfQerwAc/d4lKLMKGB91NVqzSlDan?=
 =?us-ascii?Q?3G3sP86CUvX2a3y+4Z1llQ7DKFcyXQgsA944fTkesKxm+jFzEDOh?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c8aab5a-9f3d-46cb-25e2-08df0d86fcf5
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9422.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2026 08:55:53.5186
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: THsVD3k+6VrDn9zPqP2gIWk0gy4b/SflPBcTi8VeArQWWKqWMZJIglahqnqR0aiSdGEDNIoFJQekifOrd1afMss92xJ2RrfHyCb+4X+D++LaOr9z1wKjP7F92NsEuhhx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR04MB9586
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_015608_761596_6968A603 
X-CRM114-Status: UNSURE (   8.89  )
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

From: Xu Yang <xu.yang_2@nxp.com>

According to Synopsys eUSB2 PHY Databook, FSEL_48_MHZ_VAL should be 0x6
for supported 48 MHz reference clock.

Fixes: c4098f3e6134 ("phy: phy-snps-eusb2: add support for exynos2200")
Cc: stable@vger.kernel.org
Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
---
 drivers/phy/phy-snps-eusb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
index af4fa17ac6cb..3cb18d6ebc1d 100644
--- a/drivers/phy/phy-snps-eusb2.c
+++ b/drivers/phy/phy-snps-eusb2.c
@@ -21,7 +21,7 @@
 #define FSEL_20_MHZ_VAL			(0x1)
 #define FSEL_24_MHZ_VAL			(0x2)
 #define FSEL_26_MHZ_VAL			(0x3)
-#define FSEL_48_MHZ_VAL			(0x2)
+#define FSEL_48_MHZ_VAL			(0x6)
 
 #define EXYNOS_USB_PHY_CFG_PLLCFG0	(0x8)
 #define PHY_CFG_PLL_FB_DIV_19_8_MASK	GENMASK(19, 8)
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
