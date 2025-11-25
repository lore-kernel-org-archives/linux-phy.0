Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0C0ED0E6C7
	for <linux-phy@archiver.kernel.org>; Tue, 25 Nov 2025 11:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ERFC4/bHKK8KUskXqYT5nSbvchzV61PL9n/DI1M0VcU=; b=2JAuaCv1U814th
	Ojjc3JdOvmI8cBK3RGBprY+xyiJCrEeHH4y6dYlSQmMoo+dkFBOJmSBz1dddo7FyAPoZTsVTKA7PH
	DQ6j9mORF49TupiI1l91GHKLMrJKprs8nW8ZPXBg/CEhxFAN0Oj6g12wrY2E303MV0DATA9wENkMC
	PIGDjvdPWYFx7NL7YEhyitamZlAo/ROeaeIPZY9GbGg7A9WEcgQB639+cQ9m02C++/YNE9vt5J0am
	wRdkza4ECBQbwle7b0Lsa4OHIFG1/JtSwcY0GcrZdNIrNL/jss47WHTPkDCSv9gLa6kB3kof6cOUx
	wVTXz97KqTcz23GjXOyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYR-0000000DFCW-2B0p;
	Tue, 25 Nov 2025 11:49:55 +0000
Received: from mail-northeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYO-0000000DF1D-0uIy
	for linux-phy@lists.infradead.org;
	Tue, 25 Nov 2025 11:49:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eKNRiocNhDNtQPV1xn/4ZX4oAMNHccftZHaEV5yeBWR0rF4fd56zB5TKYIyFozlNTbSLxm/Yd530tdE5Q9nI+/28sULFUJ3pTWTfXPSLEmkfSpxpwH0Vq6pJSV6bKjNNae8SQhvSneJDb13igaxF0CsD+8ZKVGvV0U/EIYgujzoeEP0hOOGMaEa0rhN0NdAApqBSeaMmj0S9zMDeWCnHaIW/zGv99X0BQR+YssEQi/wZnIDrXkulXXamcVv2jD17NmAm+QsJ/JxPv4+gt4pUo1u3RfLrrM/XxXf7z/Ye0NrkGzpVmz6YBL4cDVfvPeCSy12cemdHs4Pzbfm0rRN6IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V1v7Ud7YFNxBWKM6e+A1OwrlJ7YcvyMCM1zUS64CVYU=;
 b=lT/MXPJJDEJO54FMrn0cGavJy/DdyDMMV2BsVwG2FUcjOu0iN99V/OvbTvwTdEVADuoZReWRQt6Wi4xMwW1rfqmZk82HL4ZJ0LqaRnP99pLIj3i/rIo+TUXvxSWI10aOp/QAxtF5LaycZPHsxjN+bu2/MWGPgkGKFs9j46zzRh1ZfVGpCSqLLM1CFIyJFOukfjp7g2hs8cHNEmAN7x9QAn7fXDzpGroskGyA0viUxKrBfJdwho83Lb2mqfK1VbhPAl/6FACTx1EGzIIoPW8r3S5QSFWBY+yrPXXp4Hco/rmLcUOm1Bha0ahnOAVyKKw9TxMo8yy6hj6Ctz+rjwwM9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V1v7Ud7YFNxBWKM6e+A1OwrlJ7YcvyMCM1zUS64CVYU=;
 b=VTN89+733U5UcfEl1vbxerLI1CJmvivbcf1MuvXdVk63UJ6RHVv6N3jXGew0ePcxSN/UHhorNHf0U7qkLKWNP4izXjrKKDrFxUVMqHDR0rbBlr/bM8QANeo5sgr07LRp8hm1RQN8tvdaV4blsuM3D+qvOR4q3WoEQuZx+1wxc5yD+lqK/m1QmizEGW8iXFzZ7G6fOrna6Hu2oF+9sc6q9+PqF0UaL+uWlZFGkumbLSoegdtEtwBG9F5Zn6i0rgjab7rjlhyD7ahRHwPDqwSu5L8labmRRVQMW7VU9jTXV3/jEdVhcYT7Lp1jXQzipQUsxVesd4rYjXLTlxp/JQOwPA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by PAXPR04MB8271.eurprd04.prod.outlook.com (2603:10a6:102:1ca::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Tue, 25 Nov
 2025 11:49:45 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab%5]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 11:49:45 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 phy 08/15] phy: lynx-28g: convert iowrite32() calls with magic values to macros
Date: Tue, 25 Nov 2025 13:48:40 +0200
Message-Id: <20251125114847.804961-9-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251125114847.804961-1-vladimir.oltean@nxp.com>
References: <20251125114847.804961-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P189CA0047.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:659::19) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|PAXPR04MB8271:EE_
X-MS-Office365-Filtering-Correlation-Id: 56718446-eefe-48d5-8498-08de2c18ba7d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|52116014|376014|19092799006|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?w6bQkxnp71PcV/kU2gdi8EwNfJjb1w1REc7WTi4mtO58hQnnTF/UaANFdhoN?=
 =?us-ascii?Q?wnQDGGrfbR34WPzRfSAstgGYemPw7YbBLwa2QXpUq0OFbvHKB6n2qXa+egy4?=
 =?us-ascii?Q?9L2TEsyUuIFeI0ztCsZdjkuT9H5teNDgbpiWXZmkM1VDvu58ILi934gVl1gh?=
 =?us-ascii?Q?ug3e7vPXLX2wUeomV3EmluqzeEWVmbTfUv1atg5wU3KpLNNvH6XMrvpjT3/A?=
 =?us-ascii?Q?n/TiiHeyCbRi3ljlCAhbDSje39A4scdNIzCqwLWSYpDIqGDI79PnA92J2vJo?=
 =?us-ascii?Q?nnWWNOHzc65ill5PQaKujq+gzZwoj8ZsEKlp5yYO4T724A/PPh+Sz8byZI4b?=
 =?us-ascii?Q?IZ1JM2CeealISY/75tPLf4N5iGFFxOeh1RZDve1z1juUqSxaMdjPBEHoDqGC?=
 =?us-ascii?Q?wQEUMU/2H24McIO1WShXW0RU2S1roFzTiBlND5ZW2ryCegSY/KgPasZZP7Fp?=
 =?us-ascii?Q?5knfKuTCMeJhwkuz1JN3UzFol1ZP1Ju1lTHhTljVwwDVQLiLVvvNHRm1pBaI?=
 =?us-ascii?Q?FlO8FKC2VASa/Z9N3UzOzDka0v1V+LnJIcNHYlN9/GRPXekBAwTue5naz+dS?=
 =?us-ascii?Q?Ir6TYd+E9uA3IrpErCCU4Eoe3zTb42QtlkXdgMyz2OqsQQWN4GPuRB3PGedz?=
 =?us-ascii?Q?nKYKjh5WTSk7buTgTPfFspd2/jBWcfy+tx+WWCIqUUfxr/cL7VxA6GG66gXN?=
 =?us-ascii?Q?oqSFlLHEYhHpTFVQXE38iRfs6QLT2N/oHzqDhklZqfAtAoZz6JOiFJekND7n?=
 =?us-ascii?Q?8LLSDIfePrgiCEat0DgbSCiYEt0+SJUbK6bV2ulUJuJJ4Cgel1DqaCxzCerg?=
 =?us-ascii?Q?0tXYRKbQZKeDtPlSHIjOPcFGz3nxgtOpRnZENq0r5JWcBXo3MlOCxFikm7ru?=
 =?us-ascii?Q?gHA7YcidA8j9umlZ60f8vvUGmrIu2wZZh4HA/ih5c9svCh1K9GUFsiDzJ8+s?=
 =?us-ascii?Q?cyhyAAwXsxCb3mAMGHZ47AXLmHcmkSYWpfPjIAzIB90NwdZRtWxe+CSmNilE?=
 =?us-ascii?Q?ggZ5QiGz5Ad5z2zU5CbT5WdxS46Ddtmm4mzcMW/Kxd+gmAaIPZ4KmyRgTGde?=
 =?us-ascii?Q?pnuipuuwZb8d9d7TQWIZRCD3L+REoT+Om0Cg+jXFp7FtmAJl41R/Eb6BAVgS?=
 =?us-ascii?Q?kmw0d/rDQKYTlzWC72jadXJyXPEqQrDw9+ziYSKnMiiF8OkC4dDemZOCXRUW?=
 =?us-ascii?Q?Stb2XOHMjX+c6OszvrMBWUauBlboBm4KSYNpqQpbY/er+IBPhlM7DLxmisxN?=
 =?us-ascii?Q?HX8zGVMA2QFcDUJ1g1sZrjYehEDufUKaDZjJEDEBml9wgKspG2VmPw3Q1t7A?=
 =?us-ascii?Q?Xv3XMQTLa+Mrwm1gZyi2I08OaH5gy1ir1SJwRei4BA/5pKERjKFiMSdf5Lqe?=
 =?us-ascii?Q?Xt2lM0qGzAPPrWt9b6sQZm0ZyBq+0LbIVDwzb6UEG2sbZsek6umPLmh4ve98?=
 =?us-ascii?Q?2REHoAI3ryL0+5rN1vXgn6gzXCSDdGJX?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(376014)(19092799006)(10070799003)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Wue4kgm35Ci63hVtTPd+wEoNULzSNesm9p+ZJQ9XBi8DVcKJ5fERmS7fW/YA?=
 =?us-ascii?Q?VMWv3S/Uk9s40POaQB73fR53cDDoge9LV+Klq7lEqDfa+67jwiqhQg8E7lXi?=
 =?us-ascii?Q?eILpWiCO5BXH+1XE3LMiNr8wsjjNJJzr8bET8uycFmYTYciJqHumYdMWoEXf?=
 =?us-ascii?Q?MrMbB7hkj4BVJL0i3FaKWhydNmDoJyxdToqFTewqTKGS0PEB9mSpaodtaD/a?=
 =?us-ascii?Q?+F7uAWtpNxukaxhWSMbCB19FNDUBzff23cxAxT23EtqueiLI3dgFsXc5+u/3?=
 =?us-ascii?Q?t+n7zYXMfL7pbDLlsCKsXjdrBUaAmHRTeA+DdiXLKhqFBvU9qPaeuh+uAbhN?=
 =?us-ascii?Q?MzkRaPuo6hKFAjzvLm6D6P0ahu7gKrJIshp0qSVq1fLhzXxwcFbHFY6hOABi?=
 =?us-ascii?Q?+mKvqLe4zRLwZIo3yNqUnoTE3wt/o7MUb4Xxm3hlO1NbQcyDTy37TkPMhZef?=
 =?us-ascii?Q?DSJTz90Xirz5Wzf1xP7TtOcrmQsez92OBOjwQdiJVAEkd7twFzkPEUHuI9Ku?=
 =?us-ascii?Q?NoMQ6ZwWEoNkSrzTOwwNt/jHZ8AT9J3A+U2VMXq/+3KT8BaaV+tZbMRKyZvX?=
 =?us-ascii?Q?YAW9FB6udLJafQ2B/X1VYBtyIIGWN2qWyM6TNtVUQhN11bKCXVcFoHbpcbKf?=
 =?us-ascii?Q?XkU7b2eh5aBqiKcSJuR6qpHRKZzopBCnQ4YmHUdx7qhGIQrTkEWbeLTOLN63?=
 =?us-ascii?Q?5DQ7LFTXje2WsXxbhqqxkxaXCSazQYQ7LzHgKXe2I3nbI6ty7Ry6Dr+sQJvL?=
 =?us-ascii?Q?42FQfoV/GP1AT/pDeBt+xGGHPk/r3NB7apN1O1zZzN54zbb138S/yXVcVE61?=
 =?us-ascii?Q?2u4umEDd3JUzAgbH+PZfhddWOzrTb9Cw+/GUo+fWnMwcgq/FEs7UVdP7A1wn?=
 =?us-ascii?Q?IU+Uu54X9EWdsdPhvdFNVSgD4ED1zI/svRy8ZXZ3jcxgoK8aDVRyUN+ryRiu?=
 =?us-ascii?Q?yJqX57dTfI+NkPJIIp6v8LNkdhDiDdenoRSaJITg8QePUmOnGQN97DgYlabv?=
 =?us-ascii?Q?pCveYX4zLN6mgAlz/Kzc5H1vMYQ1tdVrHiO3rUh0PBLP6YfjuVN6f8ppQ8x5?=
 =?us-ascii?Q?oOr4agnSeqyorwf/1F5qupzq0v1kC+b7YVbXImT+u/M8KXjC/dN+00ZsGNJj?=
 =?us-ascii?Q?ivgobW4Uf9al2Hv1Fi286WECmbdSmedix49XWEQpZ7S/aj3v2Wro5h68Qh37?=
 =?us-ascii?Q?iNIY6tIUDNUZqtfIQi90MZU/Kc6SO2+ADJIxFf1If02aNBWUUg2s9wbj9FT2?=
 =?us-ascii?Q?go+/1bxP6x7nAQukm6F+8UzfQ5gsu1SkP5rIZ/UgUnG3exKByyeFmRj1lFPv?=
 =?us-ascii?Q?KmohObK8KOA83tQLryOeQWE7yUgiVAA14Ub1XiHxryIIfKyBv4k4q5DNVnXM?=
 =?us-ascii?Q?UbnICeDsOO4KSDiIalSXcMzx+Os70ZH9l0dYzWypjtyChirPy/j7341jMpgM?=
 =?us-ascii?Q?gLY9b1fPAox3pHBHKcXvAzpk/iyDL9zmVwg70PY9TNkwP2ZDl2RnKgAfcdYA?=
 =?us-ascii?Q?yCuiFJi9hAJ6FSwZ9y6+MzOJuBIh9geWK85Esu0U6TbMw37ZxWz0J6avcpvw?=
 =?us-ascii?Q?xMCPVc9qNij5+SfF8dQevK0oBmmCalT9evfLieQl5vLvOGBjsDp1ypaGiG11?=
 =?us-ascii?Q?JHw9gImxhg9tfqNF9BqJNoM=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56718446-eefe-48d5-8498-08de2c18ba7d
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 11:49:45.5051
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YVId+425FJWsuLXCIorTm/lxo4K4s5d5KniN2b4bczGhir2HckIxFRt3Tqorw6JKVXhX29cWRS3+x+BzRR1i0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8271
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_034952_301829_C8209D07 
X-CRM114-Status: GOOD (  12.67  )
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

The driver will need to become more careful with the values it writes to
the TX and RX equalization registers. As a preliminary step, convert the
magic numbers to macros defining the register field meanings.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v2->v5: none
v1->v2: remove duplicate LNaRSCCR0_SMP_AUTOZ_D1F definition

 drivers/phy/freescale/phy-fsl-lynx-28g.c | 102 ++++++++++++++++++++---
 1 file changed, 90 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 439fcd6bdc1c..def91c64a6ac 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -70,6 +70,12 @@
 #define LNaTGCR0_N_RATE_QUARTER			0x2
 
 #define LNaTECR0(lane)				(0x800 + (lane) * 0x100 + 0x30)
+#define LNaTECR0_EQ_TYPE			GENMASK(30, 28)
+#define LNaTECR0_EQ_SGN_PREQ			BIT(23)
+#define LNaTECR0_EQ_PREQ			GENMASK(19, 16)
+#define LNaTECR0_EQ_SGN_POST1Q			BIT(15)
+#define LNaTECR0_EQ_POST1Q			GENMASK(12, 8)
+#define LNaTECR0_EQ_AMP_RED			GENMASK(5, 0)
 
 /* Lane a Rx Reset Control Register */
 #define LNaRRSTCTL(lane)			(0x800 + (lane) * 0x100 + 0x40)
@@ -89,12 +95,56 @@
 #define LNaRGCR0_N_RATE_QUARTER			0x2
 
 #define LNaRGCR1(lane)				(0x800 + (lane) * 0x100 + 0x48)
+#define LNaRGCR1_RX_ORD_ELECIDLE		BIT(31)
+#define LNaRGCR1_DATA_LOST_FLT			BIT(30)
+#define LNaRGCR1_DATA_LOST			BIT(29)
+#define LNaRGCR1_IDLE_CONFIG			BIT(28)
+#define LNaRGCR1_ENTER_IDLE_FLT_SEL		GENMASK(26, 24)
+#define LNaRGCR1_EXIT_IDLE_FLT_SEL		GENMASK(22, 20)
+#define LNaRGCR1_DATA_LOST_TH_SEL		GENMASK(18, 16)
+#define LNaRGCR1_EXT_REC_CLK_SEL		GENMASK(10, 8)
+#define LNaRGCR1_WAKE_TX_DIS			BIT(5)
+#define LNaRGCR1_PHY_RDY			BIT(4)
+#define LNaRGCR1_CHANGE_RX_CLK			BIT(3)
+#define LNaRGCR1_PWR_MGT			GENMASK(2, 0)
 
 #define LNaRECR0(lane)				(0x800 + (lane) * 0x100 + 0x50)
+#define LNaRECR0_EQ_GAINK2_HF_OV_EN		BIT(31)
+#define LNaRECR0_EQ_GAINK2_HF_OV		GENMASK(28, 24)
+#define LNaRECR0_EQ_GAINK3_MF_OV_EN		BIT(23)
+#define LNaRECR0_EQ_GAINK3_MF_OV		GENMASK(20, 16)
+#define LNaRECR0_EQ_GAINK4_LF_OV_EN		BIT(7)
+#define LNaRECR0_EQ_GAINK4_LF_DIS		BIT(6)
+#define LNaRECR0_EQ_GAINK4_LF_OV		GENMASK(4, 0)
+
 #define LNaRECR1(lane)				(0x800 + (lane) * 0x100 + 0x54)
+#define LNaRECR1_EQ_BLW_OV_EN			BIT(31)
+#define LNaRECR1_EQ_BLW_OV			GENMASK(28, 24)
+#define LNaRECR1_EQ_OFFSET_OV_EN		BIT(23)
+#define LNaRECR1_EQ_OFFSET_OV			GENMASK(21, 16)
+
 #define LNaRECR2(lane)				(0x800 + (lane) * 0x100 + 0x58)
+#define LNaRECR2_EQ_OFFSET_RNG_DBL		BIT(31)
+#define LNaRECR2_EQ_BOOST			GENMASK(29, 28)
+#define LNaRECR2_EQ_BLW_SEL			GENMASK(25, 24)
+#define LNaRECR2_EQ_ZERO			GENMASK(17, 16)
+#define LNaRECR2_EQ_IND				GENMASK(13, 12)
+#define LNaRECR2_EQ_BIN_DATA_AVG_TC		GENMASK(5, 4)
+#define LNaRECR2_SPARE_IN			GENMASK(1, 0)
 
 #define LNaRSCCR0(lane)				(0x800 + (lane) * 0x100 + 0x74)
+#define LNaRSCCR0_SMP_OFF_EN			BIT(31)
+#define LNaRSCCR0_SMP_OFF_OV_EN			BIT(30)
+#define LNaRSCCR0_SMP_MAN_OFF_EN		BIT(29)
+#define LNaRSCCR0_SMP_OFF_RNG_OV_EN		BIT(27)
+#define LNaRSCCR0_SMP_OFF_RNG_4X_OV		BIT(25)
+#define LNaRSCCR0_SMP_OFF_RNG_2X_OV		BIT(24)
+#define LNaRSCCR0_SMP_AUTOZ_PD			BIT(23)
+#define LNaRSCCR0_SMP_AUTOZ_CTRL		GENMASK(19, 16)
+#define LNaRSCCR0_SMP_AUTOZ_D1R			GENMASK(13, 12)
+#define LNaRSCCR0_SMP_AUTOZ_D1F			GENMASK(9, 8)
+#define LNaRSCCR0_SMP_AUTOZ_EG1R		GENMASK(5, 4)
+#define LNaRSCCR0_SMP_AUTOZ_EG1F		GENMASK(1, 0)
 
 #define LNaPSS(lane)				(0x1000 + (lane) * 0x4)
 #define LNaPSS_TYPE				GENMASK(30, 24)
@@ -104,6 +154,12 @@
 #define SGMIIaCR1(lane)				(0x1804 + (lane) * 0x10)
 #define SGMIIaCR1_SGPCS_EN			BIT(11)
 
+enum lynx_28g_eq_type {
+	EQ_TYPE_NO_EQ = 0,
+	EQ_TYPE_2TAP = 1,
+	EQ_TYPE_3TAP = 2,
+};
+
 struct lynx_28g_priv;
 
 struct lynx_28g_pll {
@@ -151,6 +207,8 @@ static void lynx_28g_rmw(struct lynx_28g_priv *priv, unsigned long off,
 	lynx_28g_rmw((lane)->priv, reg(lane->id), val, mask)
 #define lynx_28g_lane_read(lane, reg)			\
 	ioread32((lane)->priv->base + reg((lane)->id))
+#define lynx_28g_lane_write(lane, reg, val)		\
+	iowrite32(val, (lane)->priv->base + reg((lane)->id))
 #define lynx_28g_pll_read(pll, reg)			\
 	ioread32((pll)->priv->base + reg((pll)->id))
 
@@ -311,12 +369,22 @@ static void lynx_28g_lane_set_sgmii(struct lynx_28g_lane *lane)
 			  SGMIIaCR1_SGPCS_EN);
 
 	/* Configure the appropriate equalization parameters for the protocol */
-	iowrite32(0x00808006, priv->base + LNaTECR0(lane->id));
-	iowrite32(0x04310000, priv->base + LNaRGCR1(lane->id));
-	iowrite32(0x9f800000, priv->base + LNaRECR0(lane->id));
-	iowrite32(0x001f0000, priv->base + LNaRECR1(lane->id));
-	iowrite32(0x00000000, priv->base + LNaRECR2(lane->id));
-	iowrite32(0x00000000, priv->base + LNaRSCCR0(lane->id));
+	lynx_28g_lane_write(lane, LNaTECR0,
+			    LNaTECR0_EQ_SGN_PREQ | LNaTECR0_EQ_SGN_POST1Q |
+			    FIELD_PREP(LNaTECR0_EQ_AMP_RED, 6));
+	lynx_28g_lane_write(lane, LNaRGCR1,
+			    FIELD_PREP(LNaRGCR1_ENTER_IDLE_FLT_SEL, 4) |
+			    FIELD_PREP(LNaRGCR1_EXIT_IDLE_FLT_SEL, 3) |
+			    LNaRGCR1_DATA_LOST_FLT);
+	lynx_28g_lane_write(lane, LNaRECR0,
+			    LNaRECR0_EQ_GAINK2_HF_OV_EN |
+			    FIELD_PREP(LNaRECR0_EQ_GAINK2_HF_OV, 31) |
+			    LNaRECR0_EQ_GAINK3_MF_OV_EN |
+			    FIELD_PREP(LNaRECR0_EQ_GAINK3_MF_OV, 0));
+	lynx_28g_lane_write(lane, LNaRECR1,
+			    FIELD_PREP(LNaRECR1_EQ_OFFSET_OV, 31));
+	lynx_28g_lane_write(lane, LNaRECR2, 0);
+	lynx_28g_lane_write(lane, LNaRSCCR0, 0);
 }
 
 static void lynx_28g_lane_set_10gbaser(struct lynx_28g_lane *lane)
@@ -353,12 +421,22 @@ static void lynx_28g_lane_set_10gbaser(struct lynx_28g_lane *lane)
 	lynx_28g_lane_rmw(lane, SGMIIaCR1, 0, SGMIIaCR1_SGPCS_EN);
 
 	/* Configure the appropriate equalization parameters for the protocol */
-	iowrite32(0x10808307, priv->base + LNaTECR0(lane->id));
-	iowrite32(0x10000000, priv->base + LNaRGCR1(lane->id));
-	iowrite32(0x00000000, priv->base + LNaRECR0(lane->id));
-	iowrite32(0x001f0000, priv->base + LNaRECR1(lane->id));
-	iowrite32(0x81000020, priv->base + LNaRECR2(lane->id));
-	iowrite32(0x00002000, priv->base + LNaRSCCR0(lane->id));
+	lynx_28g_lane_write(lane, LNaTECR0,
+			    FIELD_PREP(LNaTECR0_EQ_TYPE, EQ_TYPE_2TAP) |
+			    LNaTECR0_EQ_SGN_PREQ |
+			    FIELD_PREP(LNaTECR0_EQ_PREQ, 0) |
+			    LNaTECR0_EQ_SGN_POST1Q |
+			    FIELD_PREP(LNaTECR0_EQ_POST1Q, 3) |
+			    FIELD_PREP(LNaTECR0_EQ_AMP_RED, 7));
+	lynx_28g_lane_write(lane, LNaRGCR1, LNaRGCR1_IDLE_CONFIG);
+	lynx_28g_lane_write(lane, LNaRECR0, 0);
+	lynx_28g_lane_write(lane, LNaRECR1, FIELD_PREP(LNaRECR1_EQ_OFFSET_OV, 31));
+	lynx_28g_lane_write(lane, LNaRECR2,
+			    LNaRECR2_EQ_OFFSET_RNG_DBL |
+			    FIELD_PREP(LNaRECR2_EQ_BLW_SEL, 1) |
+			    FIELD_PREP(LNaRECR2_EQ_BIN_DATA_AVG_TC, 2));
+	lynx_28g_lane_write(lane, LNaRSCCR0,
+			    FIELD_PREP(LNaRSCCR0_SMP_AUTOZ_D1R, 2));
 }
 
 static int lynx_28g_power_off(struct phy *phy)
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
