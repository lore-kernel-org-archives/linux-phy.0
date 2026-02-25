Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62F19FCEE8B
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 11:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qrwzoKkChFO11QBxBrCFXeGTpyS0RC3JuiY96K4C1nY=; b=FxFMiZvosqhkzTe3VR8X/GwXTh
	ko5zhnO7ixBZQPDNKx4Vg6kNXsM21MsLQQcjTRbHElm8qbX/Y8DTWQQVptV1qIH9d4AMG25MKBe8w
	I2aF8YwkaZeDVZ3DkpI4aHIBNhsFvmt+lIue6MWwhnhNVxWv89cXsKmLKWwya/1lId4FcyfYx8Bdp
	0KMvFGHKUcg+0j+pHPTtDTFPqj2lvL75C0T+JyiRUAna4KcNOaWjUz3W7NWKbzl2cyl6NmHph3o0w
	/j4Jg22Y/hgHdyvAGxtURR09apMAqDL1vaDCDKRQQjukom2hn7bm40p0zTaDsFbIvrjpoTU4+YvHp
	sw4/Y4sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvDAQ-00000003vLc-0ayI;
	Wed, 25 Feb 2026 11:34:58 +0000
Received: from mail-northeuropeazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c200::5] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvDAN-00000003vIe-0fEm
	for linux-phy@lists.infradead.org;
	Wed, 25 Feb 2026 11:34:56 +0000
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=HnO0uFyquZqZSxXe7C/hg+6jm7Y5cJhF/0hpBJXgWK6rUpFfnON6O8ggT6lCE8cVxv1BUEr1oDRmhf/D++9Pi1cNpn32IaBU9TjrFXulB3GBW90i17EHRZZEwpUu2w+GcaSLW5bVx1nETsL6NWvZsJ2/ciMzdUGdwAvGoGKzbKA3IEiZRk59X7PDAOKiIX3p+9CupjTzb3y5nTej5/cgrvZyo3X9SxbkeapWwrnsPKyG4NM5UYw+XuyEgZ0G3Of1mF2v+EXPlVpINZXrA42Juc4qzbNNsYWQbWtvTvGTCxTRLR6p4kWnUhhRps2SXZ9FZbmBNsskLQkcMJmpmC/9kQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KzjHXwZElFC+HUQNbvYMVDLUt/jeNMj0vzfEleaL0/M=;
 b=xIDz/PzKPpcHKh2ijhda9veLB1c2g9EPO8YPXqUOfWnGr1iwA8U8nRBAvu1f/bMcxAf4Cri+uuTgnhznrj4E1A0ee1tBjVUlleExg9epWXCOJcdH8vYqv3GwcnYt+OumVMAcF5ntEvmn+usz2W+3URBR+dIJf9EkfGsp7yF9dw0q3ToyD/+DlotpMJkYUOWZVnvsyBIAcNgnf/3dIijA9679ZSB5ZlpZFEsu+T/9X27YxcS5L39QExV6gzWk9avgzn1LQ53VwLiBriHZ7Y5Znlrhar4JMCwJ0+1G+u6YyELpDknsWl7iUh7U5bcdo6dNeYBfmoJK8bRqKJKkhfPvBw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=softfail (sender ip
 is 52.17.62.50) smtp.rcpttodomain=atomide.com smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KzjHXwZElFC+HUQNbvYMVDLUt/jeNMj0vzfEleaL0/M=;
 b=gUxTzpczYgQazV9LEuU62MELytha4GD+kh9IdgUeq1amKdS+tMZFDxmYqYoGVAeffZFQuMuDtQX76QsUEJBi3s7stOJywHMi1z+y6QaEuISw16QNmlDP42uvuRt7aQDD5MZEHQH/+4rzcPXf9snPUOGTtIVDM32lB6CtqUAuoVU=
Received: from AM0PR02CA0145.eurprd02.prod.outlook.com (2603:10a6:20b:28d::12)
 by DB5PR04MB12228.eurprd04.prod.outlook.com (2603:10a6:10:64a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Wed, 25 Feb
 2026 11:34:52 +0000
Received: from AM3PEPF00009B9D.eurprd04.prod.outlook.com
 (2603:10a6:20b:28d:cafe::5d) by AM0PR02CA0145.outlook.office365.com
 (2603:10a6:20b:28d::12) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.23 via Frontend Transport; Wed,
 25 Feb 2026 11:34:32 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 solid-run.com discourages use of 52.17.62.50 as permitted sender)
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 AM3PEPF00009B9D.mail.protection.outlook.com (10.167.16.22) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.12
 via Frontend Transport; Wed, 25 Feb 2026 11:34:51 +0000
Received: from emails-1969853-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-6-236.eu-west-1.compute.internal [10.20.6.236])
	by mta-outgoing-dlp-862-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id D087B805B3;
	Wed, 25 Feb 2026 11:34:50 +0000 (UTC)
X-Mailbox-Line: From b'josua@solid-run.com' Wed Feb 25 11:34:44 2026
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=om8ZouEmeJImsR1mX7tG1g+nbyVp6qFJQxOuqb55vOQyT5RPHuX/K2/iHY4LInZ4XtOIwBZ3JmymP7FhACkgz61x4CBaL89YFhLGA2PoxHkRuue5yaKQj+sLTbtK8QQrxWVMcCZep0aHToBTrkiYPRxdSmvWWogCwsHCEa4I/k/CSYiyH+8eqCoMED9PaQZAIz1Pcrbt1t7ouvZAGcSjIcfOsTnUYlfqK1lopHBaDLJKBEUCRMyp34yhzk6YVK51dcSy4Z8Kt3vaGOIHNlTSH8NZn4Y6BaDWbCinDts2REl/KoKQQ7ads/QebadevWEnoYFh5Mf1dTVcqlxbY1Y6rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KzjHXwZElFC+HUQNbvYMVDLUt/jeNMj0vzfEleaL0/M=;
 b=uD4sMscNV/rHwOzBWpLPf23ugZIwaNzEwSAZzHNLVrHzWmIOlfYxnKKc6fcu1e4LqMTbYFWuSJuvNNkSobfhfqJgIsws2lvaHt8lXCVKesKPLnrAENl5nA3MbrIoq9Rv1IkDc8hJOAdGDqOP8d0y9OdWTwTMthxVRvviNRhJ7npGngm5bcWcS8Kbh4kAIHCjVwmLotEGi1iLARbuGj/ESneC6uBqfmfgMMGUnagXUDHhqxKVsHblqUUm+L8UggMiLu76O8ZUpzE8MyASql9kctW/lCIIVmT9QEP2hoPsKmoXExhv7Uw1FPUfE50eXaPauCNAdFMe3pBYTVBydTRbnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KzjHXwZElFC+HUQNbvYMVDLUt/jeNMj0vzfEleaL0/M=;
 b=gUxTzpczYgQazV9LEuU62MELytha4GD+kh9IdgUeq1amKdS+tMZFDxmYqYoGVAeffZFQuMuDtQX76QsUEJBi3s7stOJywHMi1z+y6QaEuISw16QNmlDP42uvuRt7aQDD5MZEHQH/+4rzcPXf9snPUOGTtIVDM32lB6CtqUAuoVU=
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22)
 by AM8PR04MB7267.eurprd04.prod.outlook.com (2603:10a6:20b:1df::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Wed, 25 Feb
 2026 11:34:42 +0000
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1]) by PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1%3]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 11:34:42 +0000
From: Josua Mayer <josua@solid-run.com>
Date: Wed, 25 Feb 2026 13:34:20 +0200
Subject: [PATCH v10 6/9] i2c: omap: switch to new generic helper for
 getting selected mux-state
Message-Id: <20260225-rz-sdio-mux-v10-6-1ee44f2ea112@solid-run.com>
References: <20260225-rz-sdio-mux-v10-0-1ee44f2ea112@solid-run.com>
In-Reply-To: <20260225-rz-sdio-mux-v10-0-1ee44f2ea112@solid-run.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>, 
 Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Peter Rosin <peda@axentia.se>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
 Andi Shyti <andi.shyti@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 Wolfram Sang <wsa+renesas@sang-engineering.com>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: Yazan Shhady <yazan.shhady@solid-run.com>, 
 Jon Nettleton <jon@solid-run.com>, Vladimir Oltean <olteanv@gmail.com>, 
 Mikhail Anikin <mikhail.anikin@solid-run.com>, linux-can@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, Josua Mayer <josua@solid-run.com>
X-Mailer: b4 0.14.3
X-ClientProxiedBy: TL0P290CA0012.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::12) To PAXPR04MB8749.eurprd04.prod.outlook.com
 (2603:10a6:102:21f::22)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: PAXPR04MB8749:EE_|AM8PR04MB7267:EE_|AM3PEPF00009B9D:EE_|DB5PR04MB12228:EE_
X-MS-Office365-Filtering-Correlation-Id: 1f896e76-49bf-474d-67a1-08de7461e392
X-CLOUD-SEC-AV-Info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|52116014|376014|7416014|366016|1800799024|38350700014|921020;
X-Microsoft-Antispam-Message-Info-Original: M4VBC5Ov5RrcdX8iCA2y3mVWHMJqlGZxr7GZraV5CkhaKmm+Z5w8sBnlKUTlAelZcauzL/E49PrCDz9ujJuU2bzhe4d3jbZV+W688HaSfR/EpIHddIvawLLgROKkLaPRCsmHrKAb2M/rG7OOJHeviHmGGTfb0bI/pUG8aL+cEY7E1wcgms1TX5eVC+rZqKbmylq4ZFAM79jAXrXEkvpmMprCAinmTIPOGYYIlssjd3FqKUULF9netQ4RL5uR5t53yj0+0EBplQclSJgadmyQvmb5HYsZpeYRefiJmj6G1D+DYrjlmHknhhcZFNuxv03IZpIZ4ZJmr8HLBfl3Zk4s9EOPc3E8D06R352USzX7cxi+O0QCfKB72fP5tqtujPD1dw78Ke/0YKM8WOZYqd+1TrNF5X06cZeWY6N0sWMPTBhfTpJV2mN6U7yTvsswaqvn2vdiV2Y7bj8YmbHe0mjeBujOlkA4YckANOeeVeioRI7bD07ynoE5T95MgC7Jr9AeYvIFYOIx//AKVlf9cDIgH4nVOk924j9ehXxlhPRcqqDvaUQXweihPUzfZLaZXrFZDTOYPDb/aSSSlyyLnmZUrNV2M5JFr2/2QP+fCDQNknXkzGxeMT6wSacmEQ+GLQad/ELK2glmZKrqPWtRZzez/X8OYJ1lW27KZKriIqaXvI5ib6T9Ajc/Xxq+KWXRzTqKaKYk2I0k+aqnRpr9lsM32GLW4CHjpZX20b00fSCwLlTJEVMrwjblX65inzdT8CMcGZEW4zMxoBDh2yrEV26FExsZZb3X5y5c/dn6UHTpUUTyd3SwMGYIkTLQBEHoOTyY
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(52116014)(376014)(7416014)(366016)(1800799024)(38350700014)(921020);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7267
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: 9d4fdc0eec574c62a3a0bb018a2ead31:solidrun,office365_emails,sent,inline:c1cd8ff72a3c708341fd9de96626bab6
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM3PEPF00009B9D.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 9c6ed239-6ab0-408c-6d76-08de7461de75
X-Microsoft-Antispam: BCL:0;ARA:13230040|36860700013|35042699022|1800799024|7416014|376014|14060799003|82310400026|921020;
X-Microsoft-Antispam-Message-Info: AW1fhaTxr+7kIh4Ka9+im9WOIrqsXYaGXi64zeFZMRtBr/cgjr+4tyep/Aqc6JyXjjQRNfWv/mND8GfPKABoZtZOU3oXv3G2jrrcsKACLZKTvjmuKUMKKVXbVv2acgsBfjHKMrnH6MGU0fScRQz60zdE6yNJNMjfyRuH+3hCRHsiRYt7pVQSu++aavUccwxMcTYMRFZbNiDhnA7ZGYIBzsyYKlYmRHEZNv6kb/xBbve2RdZJbegwJGTl5fbbBUSkJAWfWC/k5+s28CTzA/8iQiA7+ibEwkoHFSSFUEO8AeIM91vITjSxlRCdmp2brEWvyll84pyQ8nNzUn7ZdgllU6aLrwERpn33uNP92gmQV+fMJVFmMeXFP3KTZekAhxFgMyrnCW181wrIH3vzJgjjkE1IUJv/uu3fcWMQzxGecbDXNiJG/dFGpK+u9ETYGq6E7lYt6x9ykmsKOqD/2w0Ogv1bctXhIhRbGCEJGgNA9xtVGtq1Fie3T2BrM0+c1ko+YyPNkczSpM8J2/7ueG9DuyFk2NVRq8JxBljJ+kMILLKEzUBwmA1kORVBo4K47qtmu9u+Jf+xNBGog1mvW4lDTLMXwIeGVtut7IgqUWUKBcKFnEDn/L7rRChNyjkh8WIYYd+T1k4I1SZ+b4685nMDx7g8hz+2w/tyRX9pGbKryo7fzeZAvcPGRWMK+CPMZ1sRhAMUCu9OS04gTe2Mvr+Bcf0c0HHvxh1FLv7n5LGCbtUbgavpfQzHgTk76KJZDiP7B9vq3RxLOmQ5RsAhdHV6U/qjNAZhXXULlVVrvVC1BDhWE+WVPo/RD4hOCdCLDfOVPl1uZM30Er6gUGTgasonLwWVlmLtCvya2N7nmBCb4uw=
X-Forefront-Antispam-Report: CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(36860700013)(35042699022)(1800799024)(7416014)(376014)(14060799003)(82310400026)(921020);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: ExphWOaQnItyY0CIxZprUWPhElu+S826yvfB5sFoHfOW0jIEPH2oOWt3Hz41N2yFidz1rG98FQAs+maGu1YQYWW5JomsLbp+HKk4jO+gDE14Df6m/NbWU8PWMirXtxjdLTs1xTtpg7uBf2q+DuWzEpvpnIWeLdfv6FTsgZx66lF/U6rvjc41G5DjjtM9xCmo5nRxgS2JdR2I1vnzTYBDyonj813LiRQ1k/qugAG6N9h3Si56uDp13+qkdrpLjeDkSVFcz5lA4hb23avZjXXWS772nNd6B+N8mSoxUv5CowHyUi8xd9i+hPT8BY8/LzWABcMtQTvedmwSL+E5CDIYAWO4I//wYzLDVQbhFHH5oHCDvmxf7wIwCRiDUTcoeDqElAs/Zm1hAba4yIBurQroIwyEfiQ/MAkN8pqxlqJZBeMf8zD9B07EzQwA9aMdETAo
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 11:34:51.0849
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f896e76-49bf-474d-67a1-08de7461e392
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource: AM3PEPF00009B9D.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR04MB12228
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_033455_344938_B945C8C4 
X-CRM114-Status: GOOD (  11.66  )
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

Multiplexer subsystem has added generic helper functions for getting an
already selected mux-state object.

Replace existing logic in probe with the equivalent helper function.

There is a functional difference in that the mux is now automatically
deselected on release, replacing the explicit mux_state_deselect call.

This change is only compile-tested.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Andreas Kemnade <andreas@kemnade.info>
Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Josua Mayer <josua@solid-run.com>
---
 drivers/i2c/busses/i2c-omap.c | 24 +++++-------------------
 1 file changed, 5 insertions(+), 19 deletions(-)

diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index d9f590f0c384..f02d294db42a 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -1453,27 +1453,16 @@ omap_i2c_probe(struct platform_device *pdev)
 				       (1000 * omap->speed / 8);
 	}
 
-	if (of_property_present(node, "mux-states")) {
-		struct mux_state *mux_state;
-
-		mux_state = devm_mux_state_get(&pdev->dev, NULL);
-		if (IS_ERR(mux_state)) {
-			r = PTR_ERR(mux_state);
-			dev_dbg(&pdev->dev, "failed to get I2C mux: %d\n", r);
-			goto err_put_pm;
-		}
-		omap->mux_state = mux_state;
-		r = mux_state_select(omap->mux_state);
-		if (r) {
-			dev_err(&pdev->dev, "failed to select I2C mux: %d\n", r);
-			goto err_put_pm;
-		}
+	omap->mux_state = devm_mux_state_get_optional_selected(&pdev->dev, NULL);
+	if (IS_ERR(omap->mux_state)) {
+		r = PTR_ERR(omap->mux_state);
+		goto err_put_pm;
 	}
 
 	/* reset ASAP, clearing any IRQs */
 	r = omap_i2c_init(omap);
 	if (r)
-		goto err_mux_state_deselect;
+		goto err_put_pm;
 
 	if (omap->rev < OMAP_I2C_OMAP1_REV_2)
 		r = devm_request_irq(&pdev->dev, omap->irq, omap_i2c_omap1_isr,
@@ -1515,9 +1504,6 @@ omap_i2c_probe(struct platform_device *pdev)
 
 err_unuse_clocks:
 	omap_i2c_write_reg(omap, OMAP_I2C_CON_REG, 0);
-err_mux_state_deselect:
-	if (omap->mux_state)
-		mux_state_deselect(omap->mux_state);
 err_put_pm:
 	pm_runtime_put_sync(omap->dev);
 err_disable_pm:

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
