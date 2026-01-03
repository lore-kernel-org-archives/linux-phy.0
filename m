Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE56FFC6182
	for <linux-phy@archiver.kernel.org>; Sat,  3 Jan 2026 21:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TfAl5hlpkvmZxHfYVLgCFcmRbx9nElhulhFQ6DWLXrs=; b=yeEiP71kSCiG6i
	gc/q/QJLxKkOBPucNuOQxJlKod+yFCJe90Wu6FgjjRa7Q+PI6P7mh8dHKs5TkvBlI2vrBjlmnwsnL
	bDbmusnKQbJuMccrHAFNoxLxgd5Tjd/9/WjdGXYjQZSsIRsaKmeqlmu0LC9xdl+6pdWEgDlwxn21e
	uHkiBhGVMbqTRrW5b7RqlBLHbhwNJteXC3J2XhinUE1Y1lmFhujtLlsAk0kfm7PltKBH+dvAKBDQ6
	VRkjkhu3gLe2XsFHDhv2eu4SlkyTKaIGo2fDoHQ53UGzqnaHrmJKliaQTYKuvExnosJJdaXPL1yrH
	Db8JiIacntRgCp1Hjofw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vc8o1-00000009oJq-0uOb;
	Sat, 03 Jan 2026 21:05:01 +0000
Received: from mail-westeuropeazon11011036.outbound.protection.outlook.com ([52.101.70.36] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vc8nw-00000009oIP-2Y0z;
	Sat, 03 Jan 2026 21:04:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IqxrLxvUnpbuud4U7BxAmu5HgWIkO90FkWsXrxhQwDp3CbLxb6DjrrcpFnns4MJh8Zzljgvvknmk2M8syLmY4Oqpj+NLhFWaT6nzh0Y85iqHS4pr74JEjm4UBSnVd6LP+QutrmbnPJiQM12so7D8e5SXwZ83kGhayEhGkUGMzmwteLnainGRu3/C11Gs6H9Yl6vt3ke5QZ8pnQNwKbplkagaKHeZSbq3rU1xz8ur0D2DKL5wHY+aMVI56oscafIiot58buCfWhkUpKwI/ULLAnIbmPbVwO+QUSp+PEvTCUZoEjmuXq20EA0zBNhaqnKK/Ts8fUCbI/Yu4NgJFGx9ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1/Mfkmd8JjVHQSB8FzrtF0IU8AwkarkjebLLOc6bWMQ=;
 b=zPG+ryAjwMNEPzz+XrEnzk3AXnrChd1hJjobj3AmNqxoh0ynwVlYhsSCTjhXXGlqAPdvDmBC9aEh93SBwPOU2rUQFOg3Cj1AoBfQx3j5Qv9bgzhOV2TeyP2nODxyaPBfYMczs/f4mT9OZieB2jJVy4eV6UKkaoI4hbaeCTnZeqe88hbB8Azd1GtzdsmfeE1IYClonmb/LCGqZJ/AYXl6YUzosO4SGhodOpdQJ9OAVT1KVaQWs5TPU/b0HYUbCgxbUYHmWDJ+PuoGm8MTWDdcazEVqm9bI6JFoQL7ha95YvvLnJso1xORiudIjOyzC/vFXDJooYW+u91E04FyvKCOmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1/Mfkmd8JjVHQSB8FzrtF0IU8AwkarkjebLLOc6bWMQ=;
 b=QdcDJOzmtBWDGshFADvlbWa4rMoMczginR69F1LnBsL0sPAkGlpjKm51PhF3IC4As4M7ZvWOyj56i7Eq0haJ0dcHyGj4g4XoEM/nowXnXr7++QnjnjrZEgW0t++VIqdjry4m3w2iLTrOX8xR1q72I5m7Rk76RxWwqv5sBUDHT6d21twDVbfLcHR6uZE9pdRl7twbTd4EV11mJUpuPihs2lFi+ngONZLX2s1hAx0gvrgUsTe/OSf9Zb3m5S0eRoSttHs+niCdBq3nfBPGo5eYhUuWzQqZPjMgOgjBu5Ld9d/9+7aVNS9kh5zeiT1ZzX2jScGyBFBCDGheRYp1gqNohQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DU2PR04MB8584.eurprd04.prod.outlook.com (2603:10a6:10:2db::24)
 by AS8PR04MB8088.eurprd04.prod.outlook.com (2603:10a6:20b:3f7::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Sat, 3 Jan
 2026 21:04:49 +0000
Received: from DU2PR04MB8584.eurprd04.prod.outlook.com
 ([fe80::3f9d:4a01:f53c:952d]) by DU2PR04MB8584.eurprd04.prod.outlook.com
 ([fe80::3f9d:4a01:f53c:952d%3]) with mapi id 15.20.9456.013; Sat, 3 Jan 2026
 21:04:49 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Daniel Golle <daniel@makrotopia.org>,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	=?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Eric Woudstra <ericwouds@gmail.com>,
	=?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Patrice Chotard <patrice.chotard@foss.st.com>
Subject: [PATCH v2 net-next 00/10] PHY polarity inversion via generic device tree properties
Date: Sat,  3 Jan 2026 23:03:53 +0200
Message-Id: <20260103210403.438687-1-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: AS4P195CA0027.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d6::16) To DU2PR04MB8584.eurprd04.prod.outlook.com
 (2603:10a6:10:2db::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8584:EE_|AS8PR04MB8088:EE_
X-MS-Office365-Filtering-Correlation-Id: b3f6a792-bd70-4e3f-0228-08de4b0bbb06
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|19092799006|7416014|52116014|376014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?enpvVFBJcDNPZm02bVFBdmVrNEZmN2RlcjZmOVFBSzdaK1JpVVpISnliSTVq?=
 =?utf-8?B?aUV2K2ovN29ydHZrZk1NaFhlSVFDYUFIR1d0ek9iTGNCaVJNRGRjOTJGcFBn?=
 =?utf-8?B?MlIwV1NpUWJGUWsxTlcwN1BJV1BNYlY4T0U4YTJrR1RpWmRXL3VCMWY5MWpr?=
 =?utf-8?B?dTBjckpCbzRNNC9JdDN3WWZNZ3VqTGRpaVBXV21tSW4vLzErbzJtZkZmbUxR?=
 =?utf-8?B?aUJPcEdvbjcwNTQwSGxFK3BvQjVBcDM2ZForM21XTG1lR0liVU1ob0RLODdC?=
 =?utf-8?B?cTU3VUVJc01qbGdUc0pjSWZuUDNJRm12eHQyQVZHMDFGalRXcjZmSE54UDUy?=
 =?utf-8?B?eldTVnc5NCs5YnBIUmNscnQreHNJcWFtTlR1TTVvWmIza0hKWjQ2czNrNXpT?=
 =?utf-8?B?ckR4MS9HcU9iN0orYitrZDM5SytyY0x2eEJRMktNeXY1cG5sQlhialY3TEF5?=
 =?utf-8?B?UTZEayt4OWRSRlBPaUI3eG5Yb3pZMzVBTUxzcUxFREg4eXdtdG1zQWVjUjIx?=
 =?utf-8?B?cjZGNEZSaGR2N1l6RlRBUmd0Kzd6TTlWVGZrNU53b0E4R0RMVEtaS3ZaSEpj?=
 =?utf-8?B?UUZ4bnExazJ1UHJ5MThodnpPaHp3aTRiblp0THM0eEZRa2hPaURqaWppaVl2?=
 =?utf-8?B?V01ZTXZoRngybElkajNwRGl1YjNFTXEzZnV1cDhmaktsS2F5NmdxNEFlWVlq?=
 =?utf-8?B?dWgxR1BrbTlIVTNjL2FKc3E3Y2g0aWM1VXFuNDJKSXFQakxoK3dXSXBSdFZu?=
 =?utf-8?B?Ri9RQkhyTmFnS2VUUEJmTzU2ejlueVVRdzdUOVFmUjQrV2w4VHlIOWtyN2Jx?=
 =?utf-8?B?b1NidXhWQVNxNXFJYkJHZlNCYnpkdTk2U3dLY0tvQUFFbzBvdVp5RTVDOTBp?=
 =?utf-8?B?QnNiWG4xUStnTm5sN2JQb1Y4cVY1MHowN3dabFp0QjdOaTdYT0tIaDIzcEJX?=
 =?utf-8?B?Nk10alRoTW1rV1ZCS0xXRTl2eWUrbktyQkNpbFhxVGU3ZEQ4c2h0UStjaFZH?=
 =?utf-8?B?OEZrNkdGYjBXaXRtcWliRURSd2Npd055Qi9nVWpLbWkwdWRvZlF5aVVUMWVM?=
 =?utf-8?B?OHVma0VwSnRvNG53VXBnMlFsQjZIWFFUdXVDcWZYWjF2S2E5MnhjQXA3VE9Q?=
 =?utf-8?B?RGptNG9TMDBFcHY1bU16T2JndUpPSE1DTU5CSGRXRXpmeG1XOXl4bGp3R2Jn?=
 =?utf-8?B?WlNwcDdUT296MFh1UnJTRFpzMEt3Zm1KUTY5VENqdXppMkZMMUJqeFVBWmRN?=
 =?utf-8?B?Lzl1NnV3RHVrR2V0eXhIcmJzbmVmUHJhVU1Da0lkbktOSDhydVBWbGd5NmhE?=
 =?utf-8?B?ZG9VSEo5UFdKQk8yLzJscFprRnh5WEY3Wk92Q1QySWNEL2p6TXlGOFM2T0Ur?=
 =?utf-8?B?ak5wMnZwVmFoaEpzRS9OUDhSZVZGY0Z3ZHhMSnAwWG82S2xMTnI0dUdKU2Fi?=
 =?utf-8?B?cklvWWtQYnRQL3dTalpabzNRdnpDK21hK3I4V1ZzSzMwNi9TZGlCM1YyWWo0?=
 =?utf-8?B?MmpvcldDSStvMkRjRW9zZXNpMHExdENWWi9VZys4ZDJmK0dISkMwQWUvdnNI?=
 =?utf-8?B?Rjlrd2Q0YjNWTVAwQlVtenl0UXJkNE0xRlBEUGYyOTZTVTMwVlFQcVZCTUsw?=
 =?utf-8?B?aHhTOTN0Z1dhYVN2enN3NDhzU3pURTFXU3pLSGo4UndaWXMwUHlDcnE4b1lJ?=
 =?utf-8?B?T2t5K1hGRGEzb0VxRWVYcmNvb1NtRXVRa3hheFg2V2V1MGNnelZpU3o1eVhi?=
 =?utf-8?B?TTlzYmxaQ2Qvbk85REVaU0I1M011akxQVmVNSlpYUkhUWmg0cXhxOE1mdm14?=
 =?utf-8?B?NkR5UmVXLzFRellLWm9iaVF3NnBvdmVWZkJVMUNnTlZ6ZmV1K3BySVhiSjFC?=
 =?utf-8?B?WTFUc1VoNysxUml0UWxzcmlEMFdTcFlkMDEyZjd2bGdheFVKb1QzUUIrTWc4?=
 =?utf-8?B?UHBlWjdtVmFRRXhJL3J6VnUrbFduc2FWTzRvZlFjRGdQSXlYcWlmSklLWmFS?=
 =?utf-8?B?bnBIWjFadGNLWDZ2V3pkQzFLWGdCbFNZWXBBaU9idFNyZTdRSVlscWhFdzR5?=
 =?utf-8?B?R1BBNnpLRjZqMmNIem5hUVBYUnVxcVBZTHNXUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8584.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(7416014)(52116014)(376014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dU1MMk95WStDdThtMXl0QzJ1dGdneWZzODRKTjVhcGFkcE9JbitHVUU0Y3c1?=
 =?utf-8?B?Y0ZOcG9qamYraWFERGh2cC9YUUVxZTR5aWtHZzFIV3pyY3h4VUtWMjVOcDFq?=
 =?utf-8?B?RmZEbEpTZ0x1eGhEeThqcVNKaVJiRmVvbFNzZFpHM1NjWnRuOVNnNGNwbHVz?=
 =?utf-8?B?RTZGbU1uVlRTRmtKTEE5US9vMmFNVi8yb3piTUF2SEl5YXpKaTFyaWxQbmpU?=
 =?utf-8?B?VHRvT0x0K0FIQ1lIUUdmdG15aS9aUWJqcVlnR1g2UTM4WjQ0eHQ1TFNPOGZm?=
 =?utf-8?B?VDM2MUdqM05USkRkUHdHd0pUUG9zaWVXUFVKY1d4QVcxREREUitwWXk4dzlj?=
 =?utf-8?B?TDZjc0IxMjdQS0Jta3RobmppeVNqcENxK01HS3JMZGtQVys1RncxUWdYVHFu?=
 =?utf-8?B?emExeXRBWm5QQ2lFODFjV0MwOUxxc0VML3kwblJLSUtiUTZmYXdzV0VWUFFS?=
 =?utf-8?B?NTd5Q1o1V2hnVFlnYmhBQW9MdmMxeThvM0NxRmZQVDVJanEva251d2tqdHdL?=
 =?utf-8?B?SWk2WHlXK3o1Tld4QmdweTFsY2JtRUduUXpqNTQ0em9ZNlQvZllJaXNVV0sy?=
 =?utf-8?B?QnVEcElRaU9IbXpyMVVCZVNySmYwNFJaR0g1MStBOTJCUFdkazNqZjBCc3Nk?=
 =?utf-8?B?YW1PdHpBUWNUdzJCUlFpN0NWYWlzU3JaZ3NYOU41MWQ0UnY4Y3F3VlRjbnJI?=
 =?utf-8?B?RWl5ZER3dk9adjRmaXc0L0h2WlhVeEdPb2VXWnRTTVRzVVZ1VDBlOU5xLzZ3?=
 =?utf-8?B?MzY0Y1Nmdi9uaENNd2F1SkEvT1BMcnVMbWd5TUZpNm9iQ1A1c2V5cTFOMmlY?=
 =?utf-8?B?WUhKSVh3ZWgzbXhDZy9mTGcwc0lrZnpSREZhanlsc3VZV2ROazg3RUwvOEhm?=
 =?utf-8?B?SGE2Ujcya3Z2SmNXZEQ1SzRCZlZMTGJvdllrTHRQWFBmQ2NLN1F5WlJzZ0J5?=
 =?utf-8?B?QVBVTXVNQmluMmlka0p5MzRsL1dNc1A2WkxVQTg3YmxxdXBacFpFMnFjVW5B?=
 =?utf-8?B?b21kRVFiayt4Z3hPa2V6NllRVGxWcWsyNjdNK1hXLzJtSXpaRnFZbWNrVWd3?=
 =?utf-8?B?ak52MUlzR0MzYnZ4aGZlQkwyVlVneVZxMWtURis5OVdobTJLdFZnSTRybGxC?=
 =?utf-8?B?N1pLM3hKdEMyaitoNHFCcnlsZGJTZkpma2l5dTJJcUNhb2JPSTM5emI4SFVo?=
 =?utf-8?B?ajZMbW14aG9vUTgvRkV2M09lQ0xPQmtpQ1RleUd1dE5wTys2VUF5amhWUXFj?=
 =?utf-8?B?Q3NFc0c4TnBZSmxtTWdFMHYxcFlQVTBrdGNHU0tVdGN2QzQ3WTFSb0pJTnp0?=
 =?utf-8?B?N1ZLb1ZSYWZZNWNyZ010TzIrQS95eGhEUkFPdXRsdmxJcm1ORkhkVnFwZkhG?=
 =?utf-8?B?U09JT1VHN1ZtNUJqUGFxdVY4a2VkellMVkVDNUpjbTJXK01oRnJGRFpTbXRZ?=
 =?utf-8?B?NGR6dUVkclVPUitXSzJobGw0eC9tSDZFQ0FiTnJWbkw4S0V4dmpaaVk3Qy9t?=
 =?utf-8?B?RStYNGdUYkliZW1uTFhnVkFQdndiNHlnQlFYNmpMcEoxUG56dHdIK3JzUHFK?=
 =?utf-8?B?ajNKeDRqTDFjY3hHRko2UVJVdzBneHpFcmlKRWV3TzBnVUFhR1VpLytTeWtv?=
 =?utf-8?B?MnZXZ1BaZVdRckFmOTkxM1d2ZGthSU51a0NnNDdHYy9HZDhvUmxqOG1OZDFv?=
 =?utf-8?B?Tk9EVDM2UkZxN3l1NGJCWlRzbng3K2llYXJ0OERaYjZ1eUw3K1VDYVZKZXRB?=
 =?utf-8?B?OXlMMmpUM1FXcWUwd092U3Urb0c1Z3lJbFpVVHJDV01HQXhBbytHSXlQd2dq?=
 =?utf-8?B?ZVF4QXpIK3lOVTYvQi9iQ1E3LzczREk5T2N2VDRCYU5QMmV5SFZJUzhTSy92?=
 =?utf-8?B?emdMSGZyWnJtN2NBREVmNjc2Ni8yRmhXNVR1MXpTenJDZGpjZ0Y4QWlRSmFB?=
 =?utf-8?B?dlRzZlNXakk0SmFoK005bGtHdU9aQU5USUVTeU1SQWJSa3MxUUIwTjFMSjlo?=
 =?utf-8?B?UllqOHFFeklXd05GWkhoZEMxYkd2TVpJTUswZ2ljczdrSUdUU3I0ZXhMYUV6?=
 =?utf-8?B?cUJJaEZ6RmRPRVltMndrTUhTQkIxazFwNGdpTmVWRW9aKzNLNnVIT3BnQ0dM?=
 =?utf-8?B?bHV2Mlk3ZzJTNGM1Z0MyL2l3MjFvMlFjSmp0RGxRNU9wZHFmcGFyQVJyR2wx?=
 =?utf-8?B?OE5iZGVJTFIxeUdaVVlOOXNlZTVhYVlXeEdlc1NwV0xJWkdTU0dNNHdSL3Qv?=
 =?utf-8?B?M2gvSVhmWm4wL2pqSFErWi9KSDg4d2kzZTJ3bWl2dmg2N25BVDBVVDNCNmVU?=
 =?utf-8?B?MVArVjNCODFYRHJ3RTBUSXdqUlcrN3N3ZlJFYW14ekduNS82dXlpM1h6Smwr?=
 =?utf-8?Q?QayGH8JGvnQmqOxk=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3f6a792-bd70-4e3f-0228-08de4b0bbb06
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8584.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2026 21:04:49.0675
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Fr9AyTXZPtohn3Wpg/P5f8Ym0/gVyI/ie7drAPnEBt/ey3aEcXxABkXLynSmyAo/d1lPYXYAVDMhvZQN1QUIHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260103_130456_820771_EF633C94 
X-CRM114-Status: GOOD (  20.14  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SW50cm9kdWNlICJyeC1wb2xhcml0eSIgYW5kICJ0eC1wb2xhcml0eSIgZGV2aWNlIHRyZWUgcHJv
cGVydGllcy4KQ29udmVydCB0d28gZXhpc3RpbmcgbmV0d29ya2luZyB1c2UgY2FzZXMgLSB0aGUg
RU44ODExSCBFdGhlcm5ldCBQSFkgYW5kCnRoZSBNZWRpYXRlayBMeW54SSBQQ1MuCgpSZXF1ZXN0
ZWQgbWVyZ2Ugc3RyYXRlZ3k6ClBhdGNoZXMgMS01IHRocm91Z2ggbGludXgtcGh5CmxpbnV4LXBo
eSBwcm92aWRlcyBzdGFibGUgYnJhbmNoIG9yIHRhZyB0byBuZXRkZXYKcGF0Y2hlcyA2LTEwIHRo
cm91Z2ggbmV0ZGV2CgpDaGFuZ2VzIHNpbmNlIHYxOgotIEFQSSBjaGFuZ2VzOiBzcGxpdCBlcnJv
ciBjb2RlIGZyb20gcmV0dXJuZWQgdmFsdWU7IGludHJvZHVjZSB0d28gbmV3CiAgaGVscGVycyBm
b3Igc2ltcGxlIGRyaXZlciBjYXNlcwotIEFkZCBLVW5pdCB0ZXN0cwotIEJ1ZyBmaXhlcyBpbiBj
b3JlIGNvZGUgYW5kIGluIGRyaXZlcnMKLSBEZWZlciBYUENTIHBhdGNoZXMgZm9yIGxhdGVyICgq
KQotIENvbnZlcnQgTWVkaWF0ZWsgTHlueEkgUENTCi0gTG9naWNhbCBjaGFuZ2U6IHJ4LXBvbGFy
aXR5IGFuZCB0eC1wb2xhcml0eSByZWZlciB0byB0aGUgY3VycmVudGx5CiAgZGVzY3JpYmVkIGJs
b2NrLCBhbmQgbm90IG5lY2Vzc2FyaWx5IHRvIGRldmljZSBwaW5zCi0gQXBwbHkgUm9iJ3MgZmVl
ZGJhY2sKLSBEcm9wIHRoZSAiam9pbnQgbWFpbnRhaW5lcnNoaXAiIGlkZWEuIFRoZSByZXF1ZXN0
IGlzIGZvciBwYXRjaGVzIDEtNgogIHRvIGJlIGFwcGxpZWQgdGhyb3VnaCBsaW51eC1waHksIHRo
ZW4gcHJvdmlkZSBhIHN0YWJsZSBQUiBicmFuY2gsIHRoZW4KICBhcHBseSBwYXRjaGVzIDctMTIg
dGhyb3VnaCBuZXRkZXYuCgooKikgVG8gc2ltcGxpZnkgdGhlIGdlbmVyaWMgWFBDUyBkcml2ZXIs
IEkndmUgZGVjaWRlZCB0byBtYWtlCiJ0eC1wb2xhcml0eSIgZGVmYXVsdCB0byA8UEhZX1BPTF9O
T1JNQUw+LCByYXRoZXIgdGhhbiA8UEhZX1BPTF9OT1JNQUw+Ck9SIDxQSFlfUE9MX0lOVkVSVD4g
Zm9yIFNKQTExMDUuIEJ1dCBpbiBvcmRlciB0byBhdm9pZCBicmVha2FnZSwgaXQKY3JlYXRlcyBh
IGhhcmQgZGVwZW5kZW5jeSBvbiB0aGlzIHBhdGNoIHNldCBiZWluZyBtZXJnZWQgKmZpcnN0KjoK
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzIwMjUxMTE4MTkwNTMwLjU4MDI2Ny0xLXZs
YWRpbWlyLm9sdGVhbkBueHAuY29tLwpzbyB0aGF0IHRoZSBTSkExMTA1IGRyaXZlciBjYW4gcHJv
dmlkZSBhbiBYUENTIGZ3bm9kZSB3aXRoIHRoZSByaWdodApwb2xhcml0eSBzcGVjaWZpZWQuIEFs
bCBwYXRjaGVzIGluIGNvbnRleHQgY2FuIGJlIHNlZW4gYXQ6Cmh0dHBzOi8vZ2l0aHViLmNvbS92
bGFkaW1pcm9sdGVhbi9saW51eC90cmVlL3BoeS1wb2xhcml0eS1pbnZlcnNpb24KCnYxIGF0Ogpo
dHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1waHkvMjAyNTExMjIxOTMzNDEuMzMyMzI0LTEt
dmxhZGltaXIub2x0ZWFuQG54cC5jb20vCgpPcmlnaW5hbCBjb3ZlciBsZXR0ZXI6CgpQb2xhcml0
eSBpbnZlcnNpb24gKGRlc2NyaWJlZCBpbiBwYXRjaCA0LzEwKSBpcyBhIGZlYXR1cmUgd2l0aCBh
dCBsZWFzdAo0IHBvdGVudGlhbCBuZXcgdXNlcnMgd2FpdGluZyBmb3IgYSBnZW5lcmljIGRlc2Ny
aXB0aW9uOgotIEhvcmF0aXUgVnVsdHVyIHdpdGggdGhlIGxhbjk2NnggU2VyRGVzCi0gRGFuaWVs
IEdvbGxlIHdpdGggdGhlIE1heExpbmVhciBHU1cxeHggc3dpdGNoZXMKLSBCasO4cm4gTW9yayB3
aXRoIHRoZSBBTjg4MTFIQiBFdGhlcm5ldCBQSFkKLSBNZSB3aXRoIGEgY3VzdG9tIFNKQTExMDUg
Ym9hcmQsIHN3aXRjaCB3aGljaCB1c2VzIHRoZSBEZXNpZ25XYXJlIFhQQ1MKCkkgYmVjYW1lIGlu
dGVyZXN0ZWQgaW4gZXhwbG9yaW5nIHRoZSBwcm9ibGVtIHNwYWNlIGJlY2F1c2UgSSB3YXMgYXZl
cnNlCnRvIHRoZSBpZGVhIG9mIGFkZGluZyB2ZW5kb3Itc3BlY2lmaWMgZGV2aWNlIHRyZWUgcHJv
cGVydGllcyB0byBkZXNjcmliZQphIGNvbW1vbiBuZWVkLgoKVGhpcyBzZXQgY29udGFpbnMgYW4g
aW1wbGVtZW50YXRpb24gb2YgYSBnZW5lcmljIGZlYXR1cmUgdGhhdCBzaG91bGQKY2F0ZXIgdG8g
YWxsIGtub3duIG5lZWRzIHRoYXQgd2VyZSBpZGVudGlmaWVkIGR1cmluZyBteSBkb2N1bWVudGF0
aW9uCnBoYXNlLgoKQXBhcnQgZnJvbSB3aGF0IGlzIGNvbnZlcnRlZCBoZXJlLCB3ZSBhbHNvIGhh
dmUgdGhlIGZvbGxvd2luZywgd2hpY2ggSQpkaWQgbm90IHRvdWNoOgotICJzdCxweF9yeF9wb2xf
aW52IiAtIGl0cyBiaW5kaW5nIGlzIGEgLnR4dCBmaWxlIGFuZCBJIGRvbid0IGhhdmUgdGltZQog
IGZvciBzdWNoIGEgbGFyZ2UgZGV0b3VyIHRvIGNvbnZlcnQgaXQgdG8gZHRzY2hlbWEuCi0gInN0
LHBjaWUtdHgtcG9sLWludiIgYW5kICJzdCxzYXRhLXR4LXBvbC1pbnYiIC0gdGhlc2UgYXJlIGRl
ZmluZWQgaW4gYQogIC50eHQgc2NoZW1hIGJ1dCBhcmUgbm90IGltcGxlbWVudGVkIGluIGFueSBk
cml2ZXIuIE15IHZlcmRpY3Qgd291bGQgYmUKICAiZGVsZXRlIHRoZSBwcm9wZXJ0aWVzIiBidXQg
YWdhaW4sIEkgd291bGQgcHJlZmVyIG5vdCBpbnRyb2R1Y2luZyBzdWNoCiAgZGVwZW5kZW5jeSB0
byB0aGlzIHNlcmllcy4KClZsYWRpbWlyIE9sdGVhbiAoMTApOgogIGR0LWJpbmRpbmdzOiBwaHk6
IHJlbmFtZSB0cmFuc21pdC1hbXBsaXR1ZGUueWFtbCB0bwogICAgcGh5LWNvbW1vbi1wcm9wcy55
YW1sCiAgZHQtYmluZGluZ3M6IHBoeS1jb21tb24tcHJvcHM6IGNyZWF0ZSBhIHJldXNhYmxlICJw
cm90b2NvbC1uYW1lcyIKICAgIGRlZmluaXRpb24KICBkdC1iaW5kaW5nczogcGh5LWNvbW1vbi1w
cm9wczogZW5zdXJlIHByb3RvY29sLW5hbWVzIGFyZSB1bmlxdWUKICBkdC1iaW5kaW5nczogcGh5
LWNvbW1vbi1wcm9wczogUlggYW5kIFRYIGxhbmUgcG9sYXJpdHkgaW52ZXJzaW9uCiAgcGh5OiBh
ZGQgcGh5X2dldF9yeF9wb2xhcml0eSgpIGFuZCBwaHlfZ2V0X3R4X3BvbGFyaXR5KCkKICBkdC1i
aW5kaW5nczogbmV0OiBhaXJvaGEsZW44ODExaDogZGVwcmVjYXRlICJhaXJvaGEscG5zd2FwLXJ4
IiBhbmQKICAgICJhaXJvaGEscG5zd2FwLXR4IgogIG5ldDogcGh5OiBhaXJfZW44ODExaDogZGVw
cmVjYXRlICJhaXJvaGEscG5zd2FwLXJ4IiBhbmQKICAgICJhaXJvaGEscG5zd2FwLXR4IgogIGR0
LWJpbmRpbmdzOiBuZXQ6IHBjczogbWVkaWF0ZWssc2dtaWlzeXM6IGRlcHJlY2F0ZSAibWVkaWF0
ZWsscG5zd2FwIgogIG5ldDogcGNzOiBwY3MtbXRrLWx5bnhpOiBwYXNzIFNHTUlJU1lTIE9GIG5v
ZGUgdG8gUENTCiAgbmV0OiBwY3M6IHBjcy1tdGstbHlueGk6IGRlcHJlY2F0ZSAibWVkaWF0ZWss
cG5zd2FwIgoKIC4uLi9iaW5kaW5ncy9uZXQvYWlyb2hhLGVuODgxMWgueWFtbCAgICAgICAgICB8
ICAxMSArLQogLi4uL2JpbmRpbmdzL25ldC9wY3MvbWVkaWF0ZWssc2dtaWlzeXMueWFtbCAgIHwg
ICA3ICstCiAuLi4vYmluZGluZ3MvcGh5L3BoeS1jb21tb24tcHJvcHMueWFtbCAgICAgICAgfCAx
NTcgKysrKysrKysKIC4uLi9iaW5kaW5ncy9waHkvdHJhbnNtaXQtYW1wbGl0dWRlLnlhbWwgICAg
ICB8IDEwMyAtLS0tLQogTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgIDEwICsKIGRyaXZlcnMvbmV0L2RzYS9tdDc1MzAtbWRpby5jICAgICAgICAgICAgICAg
ICB8ICAgNCArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9zb2MuYyAg
IHwgIDE5ICstCiBkcml2ZXJzL25ldC9wY3MvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAg
fCAgIDEgKwogZHJpdmVycy9uZXQvcGNzL3Bjcy1tdGstbHlueGkuYyAgICAgICAgICAgICAgIHwg
IDYzICsrLQogZHJpdmVycy9uZXQvcGh5L0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgIHwg
ICAxICsKIGRyaXZlcnMvbmV0L3BoeS9haXJfZW44ODExaC5jICAgICAgICAgICAgICAgICB8ICA1
MyArKy0KIGRyaXZlcnMvcGh5L0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAy
MiArCiBkcml2ZXJzL3BoeS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDIg
KwogZHJpdmVycy9waHkvcGh5LWNvbW1vbi1wcm9wcy10ZXN0LmMgICAgICAgICAgIHwgMzgwICsr
KysrKysrKysrKysrKysrKwogZHJpdmVycy9waHkvcGh5LWNvbW1vbi1wcm9wcy5jICAgICAgICAg
ICAgICAgIHwgMjE2ICsrKysrKysrKysKIGluY2x1ZGUvZHQtYmluZGluZ3MvcGh5L3BoeS5oICAg
ICAgICAgICAgICAgICB8ICAgNCArCiBpbmNsdWRlL2xpbnV4L3Bjcy9wY3MtbXRrLWx5bnhpLmgg
ICAgICAgICAgICAgfCAgIDUgKy0KIGluY2x1ZGUvbGludXgvcGh5L3BoeS1jb21tb24tcHJvcHMu
aCAgICAgICAgICB8ICAzMiArKwogMTggZmlsZXMgY2hhbmdlZCwgOTQ0IGluc2VydGlvbnMoKyks
IDE0NiBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGh5L3BoeS1jb21tb24tcHJvcHMueWFtbAogZGVsZXRlIG1vZGUgMTAw
NjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvdHJhbnNtaXQtYW1wbGl0
dWRlLnlhbWwKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3BoeS9waHktY29tbW9uLXByb3Bz
LXRlc3QuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGh5L3BoeS1jb21tb24tcHJvcHMu
YwogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvcGh5L3BoeS1jb21tb24tcHJvcHMu
aAoKLS0gCjIuMzQuMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
