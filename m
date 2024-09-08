Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72DD5E6FE49
	for <linux-phy@archiver.kernel.org>; Sun,  8 Sep 2024 08:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:Message-Id:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ESb1zIu45OQm6gc5O2zuFYDJas40/Ys9ouIpyX3FYAc=; b=pWzmW9S0DueZYj
	+qARE5UZqMZKse7WLAmMSJeZdMEgyRfM+MYzt3xAjVcAhlte30Q1U4sLPWV62AjI+vK7UjRNmDL0k
	IxpdSdpLYT6XPS6RmcGtooRQX67O90+3oEII6TzWcg1bGd44YI2bV650QyUW7tNo+iBpUJZOfsBNX
	SRmjYbsr84FHzgHU3y6JiMaGLOGnaSbUBromDrirkbiq2YM8ET0AE91VilD/B27TuXLYE7MHIeBYb
	rVFxIhK3CeC5xaXO/m5EennfOCbO5xjqcp9AnByyk8xREHKpSf3VKaGeLHRqpTbeSSVo0tKBAx2Yh
	cugpXifm/v2ECHG+6QBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snDO1-0000000GPFL-07cw;
	Sun, 08 Sep 2024 08:35:09 +0000
Received: from mail-northeuropeazlp170130004.outbound.protection.outlook.com ([2a01:111:f403:c200::4] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snDNy-0000000GPE2-0cBb
	for linux-phy@lists.infradead.org;
	Sun, 08 Sep 2024 08:35:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Sei67z7tO+3kXjoybhxd9/f/0UZPfhXb1izchPNY4aWsE2Tuu2UnK9phSgZsSEhCO8xs0sqNNwfYVTqMZedNgHf54FHqCceqS6ezRYNU+qfv5lnWck8fH6PkpsnfJtaQjeDJUciAO5UvIoHYg5bAfZDlaYSuzI8O6AwaGv04nIimkZlG3sWTqEQYnRX27yFZuXO3diizFPAeJqD2xj/HcAYDMXOVrEyfBTN3PR2UcX50f1o5zmcOfhv6MImeHO/P+Km3001LuK4pCjwX7pYEecw2vWKl6oDe5tZVzlJjA+Zc/5Alq4RDNIIoatNzu27TSzr6L2dDsPc9udSbETp+WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KWbMLrJxLHF5B33ecxAb1m5DKvW0aLf6ACPrU/C8F30=;
 b=wpYAals/VRA33q73RATZtdLmn0z3ZKVmSbbNOa3ec0PJqrMc1FuqwRMzfK48j7RFbJrAOWpOHYz2Uc/VgNqZ608gpIYSqZmNAsU3/CMFK6qnXODpqWvoZgI/hfN6gOf8vS9XIr82xjyIaU6a4+Ig+c+pIBDQNsEVlIi7ax8gv0+2rJtR52MdFbesv+0yu46mLYQLT5SA4p8IWxSNb7AKpdEpcNccdwtL8a/OAXus5Ywdp38Zcb/0u1xkfyZp5XZdZBNt5P4r4tga+94aN8M45wt/0q5Bclp04RuG8B0SPy8nKvLCDrJjNUfQItndaZofwoh7MU8S2vZGZiZjjFT49w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KWbMLrJxLHF5B33ecxAb1m5DKvW0aLf6ACPrU/C8F30=;
 b=pS7K94UWrqpUzS6IfvZN9jCJP04/hqlCs+OBGIr78s8p1KknRc+fmsNI9AxtdS3iCq8PY/qb1p3vFj8oT7f5rwe/0XzvDvndAES/50OSTfCF931YCHFHfh9WL35DTRtDyTAg9DT7On446h585p7vRBfJjt+it7pMnvVcVxFTIWk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
Received: from AM9PR04MB7586.eurprd04.prod.outlook.com (2603:10a6:20b:2d5::17)
 by DU2PR04MB8855.eurprd04.prod.outlook.com (2603:10a6:10:2e2::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Sun, 8 Sep
 2024 08:34:53 +0000
Received: from AM9PR04MB7586.eurprd04.prod.outlook.com
 ([fe80::c04e:8a97:516c:5529]) by AM9PR04MB7586.eurprd04.prod.outlook.com
 ([fe80::c04e:8a97:516c:5529%6]) with mapi id 15.20.7939.022; Sun, 8 Sep 2024
 08:34:53 +0000
From: Josua Mayer <josua@solid-run.com>
Date: Sun, 08 Sep 2024 11:34:48 +0300
Subject: [PATCH v3] phy: mvebu-cp110-utmi: support swapping d+/d- lanes by
 dts property
Message-Id: <20240908-mvebu-utmi-phy-v3-1-88c50950e7d2@solid-run.com>
X-B4-Tracking: v=1; b=H4sIAKdh3WYC/3XMSw6CMBSF4a2Yjr2mLwQcuQ/joLS30kQoaaGRE
 PZuYWKicfif5HwLiRgcRnI5LCRgctH5Poc4HohuVf9AcCY34ZRLWlIJXcJmgmnsHAztDJVUSjR
 W1EVpSD4NAa177eDtnrt1cfRh3v3EtvUvlRgwqI3QFaKSZyyu0T+dgTD1J+07snGJf4iaih+CZ
 6K0stZMMKsM/SbWdX0DgbIzRPMAAAA=
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Josua Mayer <josua@solid-run.com>
X-Mailer: b4 0.14.1
X-ClientProxiedBy: TL2P290CA0011.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::14) To AM9PR04MB7586.eurprd04.prod.outlook.com
 (2603:10a6:20b:2d5::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB7586:EE_|DU2PR04MB8855:EE_
X-MS-Office365-Filtering-Correlation-Id: a5912bbb-45a2-42a3-618f-08dccfe11c85
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QnlSOUczN2pwdjJrV1hXYkdTK0EzbC9rOUJITi9GS2lxNlVkWnV3c1RxVUVI?=
 =?utf-8?B?L01BSjYzZGdHd2ZrNnJ1ak15dUlncmdGem83aFpReHJuNXR2N1dWd2o2OWhI?=
 =?utf-8?B?c3VlaFYzVVpveXF2dE1HL2lLeHNWT0JLOXEydjBmR2w5S3RXaG9yaDRxZ2VY?=
 =?utf-8?B?S3pJZzNQVkd5bWUxanVRRTFYYnpWWnhVbkxxeVpPZHAwQjVJUENlNGxvWUlz?=
 =?utf-8?B?TENPa0huOEppemxXaXd4OGV5SDUrM0RqRWorSU5DSjNiWGpYcU9VY1BxWVdR?=
 =?utf-8?B?a3JNTXFHaU4vUHgrdS9XVDJqS1Jkd3pVK3laL1VBZGpJU0JLUFBmUTNDNzYw?=
 =?utf-8?B?bTJpeUZkTzFoaXNBQmJmR1NqZkxFcE15WjBoK093L2hGbktwV1JVdHR6c2dh?=
 =?utf-8?B?ZWNQZUlnR2VjN0xkSDlidSs0RUVkRXd2aXZtRDJnWHNvMTJMS1BhK3FMTS9p?=
 =?utf-8?B?TEt0YTQwV1JtY05rcW5ES1VlRThmZzc4V1VaVzNrZTQ1cWJHdXdUY3NES281?=
 =?utf-8?B?dmY4NjBxVGhTSzljaHhyVU43bnU0cTlBenI3V2VQVEpHNklIWmRZYWF0N1NZ?=
 =?utf-8?B?clBSTHpCYkJ2cnhpdnJad3BSblFVeWZuQ3ozMFUwVjIxWUhyZTNNYkYxODNB?=
 =?utf-8?B?UG1OM3FKS3FSTnAxUWhHT01VK0hKTnRNamg4MkViRTdoQ09qb3lSYXNtT1VS?=
 =?utf-8?B?bTh3ei9nTSthSUQvYUxzN3lNR1pkQUQvTXVOZkpsL2RmZ0tZM1pyTXAwVTh5?=
 =?utf-8?B?eGp4bTRmRlp1MWdnKzZFclpEQ2Y3aXRLYnQ1TXhyTmJxVjhwZWZvRmJjLyt5?=
 =?utf-8?B?cXN4czJGY0l3RUd3SlpaV1I5U1JBQkIrS0szSWVBWFk1UmtIUEdvVHpEOGs3?=
 =?utf-8?B?SmV2NExJcGY2Y3RUNVg2dzRCcU85TzNVcitnWm9UT1RkTlYrRFp3T2I4Qyty?=
 =?utf-8?B?SC9BWEhJQUdpaW85VEFZczkvVS9FTVlpTTF4ODJialR1RzhIT29zaDcvK3lI?=
 =?utf-8?B?MTYrZldVMnFKTmlJM3pEQzZ0dGw1U09zWHEvRHFTVGZkeDVLMitEVTlRU09y?=
 =?utf-8?B?cE5XczcrNjg0UGFlZjFVQyt0SGs4ZmhDOUEvalMrRzc3ZG5HL1pTTmxUZWJL?=
 =?utf-8?B?a01FWDlWdHowTWZOZ3VlTllsZElYMWsxR1pKbXllMnh1U0JacDc2bk9nbmhx?=
 =?utf-8?B?QUNrVDlhaktrc3FIOTcvV3BGS2s3TThQTEtKZDVsNW10cFp4TExXcS96ZnRT?=
 =?utf-8?B?bXJYVmxhMkxvbzNtZkxKT3BKV2l2US9vb2N0YVBIRU1qOHV3Vm1sRjJZYmxS?=
 =?utf-8?B?MDA3NGoyRnpwemdKUm5tQWdlNmQyRE0reWhWWlZBeURVNHNOMHJlMDFKYUZU?=
 =?utf-8?B?T1NVbTJyQ1Zyd1FUUU5jQ2Z2SW9CTHQ5RklXMjl4MG13eDdEL1JoRDdvUC9O?=
 =?utf-8?B?WCtpMk5wM1dqUERKb1h4QzhQSUhWblNKNWhER2lRc0p0ak52VGtFVkZIY3Mr?=
 =?utf-8?B?Ti9mV0pNTjI4U29IbnF2TDMyQktycHNUOGozRjlUVjZQMFVoNzByVXloc1kv?=
 =?utf-8?B?N0hVei8xYVhwUVVMdzhyNCtpVVpUWVllaTdOSFhXWk5ZclZoZDdVWlYyOWdP?=
 =?utf-8?B?VXJINDVkcS93S2NyYXlhNnR2dGR5R0pFNlAyNnlhbFZ5clY2U011Mkg3bU54?=
 =?utf-8?B?TkdzNUdJVUwvQzVqbytXOXIybnN2ai9ScG85bk05STZCQ2RwQzVCTWMwMnFY?=
 =?utf-8?B?eExxekZGV1pPRmJWZGRtNGFGOTdzeVlVMk9BVTlTRzNYN1NJNGZQZTNlOGpR?=
 =?utf-8?B?QU9vTHpxcS9BNDFxQ2hqVUtKTm9UQUdUZlcxWjJJc1h2TldyN3pQYy9zR2Nr?=
 =?utf-8?B?Zmp1Nm1Hbld0K1pwT1NkSWxUSnFtZHJZT2RlbEpIWWxFalE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB7586.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(52116014)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cSt5SkFmU1BhNHFXNnpHbzFlcGVuS1pQTGRwSFZTTFJsYTdUMXErYXJ3OEZJ?=
 =?utf-8?B?bDdiNWRDWS9zMHdqQWRmamJ3Wk03ZHRCUDMxb01uTTF0dXZyZ3NnMXBkdzlq?=
 =?utf-8?B?YjVKY0N0Z2dKcUgrVE9kTkpBSmQ0NFdXV1h5Nno4UE1XZFh3R1BFVEQ5SWw4?=
 =?utf-8?B?WkxNTVVDWkdLZkViaGFFOVBmWVU1dE55SFhtblEyL1ByblcvNUc3TjVMeTVl?=
 =?utf-8?B?S2lhZVZra29FRDdwelJtVlpEWGFHOEQ0aG9OWlpPR3R3aGRyN2hMOEtLaWFt?=
 =?utf-8?B?YmtqcS9kZktITjIrVTZ1SGRlQmxYTitKZDNrWkRTQmY4elpiaFcwUzFoSnVK?=
 =?utf-8?B?TVNxSy9DNVV6d2svbXZiTkNOR1VaWTMrbThUbSs0NnRzR2c5QjdJV2tNa0Rw?=
 =?utf-8?B?cFRkUFRkd01OM1ZGYWI2dWZ2VWVjUG9UVVFYZDg4Mk1mZlBIK2M5ZW92Q0o0?=
 =?utf-8?B?N2ZSQXlpNUxLQ1pOM3JiUGd0ZDI5Z3NIYXNWS2pvS3FjT3RHNCtaMUEzNW1F?=
 =?utf-8?B?c3c4OWROZ1ltNUxYbkFMeW05dFVrZmpWejlyV0MwZ2xpSVBmVER3and5QzU5?=
 =?utf-8?B?aTVBTTFuVGhKUG5xRXZCd2hFdk1UMkp3dnQzYzFwMm5WVVdCVlBKSnh4dHM3?=
 =?utf-8?B?VVd3N1AxMzVTSVl2cThQbEpNNE5pZFRyeTduV1VoVVAzbk40ZEJacGRzR2Fj?=
 =?utf-8?B?UDJsbmRoS1hvZS95ZU1zVU5qSS9YNTVrM2VZbXBPWlV5UjRCNUJJc0hacUhy?=
 =?utf-8?B?Zzg0U0hvUTRRTmFTT0MrR1lJSmE5MEZod3E4QWtlUjJsKzgrYzNDaFlISWE4?=
 =?utf-8?B?c1ZxbTg5MGtuM2lGVmtxUlJscVUvcmpZNGdsamErbEs1SVV4MkFSVy9PUlRj?=
 =?utf-8?B?OUQ2NGxtbWZxQzd2QUVpT3VDL3BzaVJxcmFuM2NlNFRBdGJmM0Z6dkNyZUdJ?=
 =?utf-8?B?MnBjWUlPdWJ6UWhCU0pvOUVJS0ZmejNydzFQMmxxM1ZuWXp6MmV1SmtWaVZu?=
 =?utf-8?B?WkFTZ3FyNDUyczd2aWVrZjRxWk4xZUwwL0YwdVg3L01FQTB4RGVOTDcxMVdj?=
 =?utf-8?B?Mk5VMUVzVGJ2ZDdoWFB5Umk4SFk5N3lLZ01TL0ppcXlNcFVycDVxMkNWWVBV?=
 =?utf-8?B?UTNWUGdqMlVBc3FWZ2N6NFV1dHpyZDArVTB6ckRJc3kvRC9rNTV5dGJQNnRQ?=
 =?utf-8?B?a1RjMXJaZ0hhaGh5V0EveDJXaXJzQWsvVWNPRlZoemhmT1R2YjkveDVhbmtV?=
 =?utf-8?B?ZE1EVE45UEszSDFwWFNMR0NKZlp5T25UR0JQMUVhOEJ4RkVHK1YzNFpldkVx?=
 =?utf-8?B?aEtxRnV0c3pwcGpRaXQzQlY3eGgzaVhaajR6NGM3MUp5VFNKTHU1cGRCQmtu?=
 =?utf-8?B?WjJqaFRtQUIzMlJqbzNxYkVzRkNxSXlPUjg1YVhoaU0wWkJwZ081Tnc2bHZC?=
 =?utf-8?B?aVdoeUU3Mkt0NEloNmZjK1pTajZYZU9xc3JTSFNUVnhRSWtTcGRBUW9HSTFq?=
 =?utf-8?B?dnB5MHlrTEdTU3NRa3FrQTMzUkVad1R0dFZsbDhyeW5qVXVoNEw1bFNoVXZ2?=
 =?utf-8?B?U1k5NWVWU2tQV1dGeWEyN2RGcXZuZXVTcmFPWFJRTU4xTzk0ZUhPU1EzeGlJ?=
 =?utf-8?B?QUhmRFdHcG5ORFFiNzhFeVRPMTRnR2dUMUpCSzhQM0Ric1ZNL0VSTmRoQ2lq?=
 =?utf-8?B?S25PaTc1MEZQaElCM2RYRmlSZC9LSE8yQUlaUHl0bEc4dllxK2xpL0hINzJK?=
 =?utf-8?B?S3MvQmMvVGhwUjd4YXltVXRmbWhmczhYejZEMVBNRDZFaTZ1d3FwWTBFNFk0?=
 =?utf-8?B?bHRNL2JMYUgvRlhSdk1CMTdnNnpVY2I4MVFKQkNBdG1Pay8wZ0orVWJHUGJH?=
 =?utf-8?B?bWRwZW5NRWdneEZ5YWlYcGNFeXRQUGhSMXBmU0RxUG5oVDFJczFKdEJSWTFI?=
 =?utf-8?B?dU43QUJ3K1ZCTXpCQlFVOU5WTmJScTVSS2NzRzVEYXlVbWNkZ3p5azkxVThn?=
 =?utf-8?B?Q3R2MjRCSzJoM1FRSzNOT1dSb2tZcXl6Nng4TUMvUGRydkhkeUZ5dkwxcWJ0?=
 =?utf-8?B?Ri8ya2wyakN6NkxZa2t2MVFGbVFHR01TU2FIdTBQTUNsYlY0NU8zMXBFT0M3?=
 =?utf-8?Q?el34WlIjtN8Tc/XRbdIuVod2I?=
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5912bbb-45a2-42a3-618f-08dccfe11c85
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB7586.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2024 08:34:53.3912
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RqluUMxlVxJgCFU0a0HUULm5bg/2Byf2exsirfeegyXGSdZzaeg9SjIpBaaYtxYDViEcjRQrLPi5RnYhfizupg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8855
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_013506_201436_53E4C33A 
X-CRM114-Status: GOOD (  12.53  )
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

CP11x UTMI PHY supports swapping D+/D- signals via digital control
register 1.

Add support for the "swap-dx-lanes" device-tree property, which lists
the port-ids that should swap D+ and D-.
The property is evaluated in probe and applied before power-on
during mvebu_cp110_utmi_port_setup.

Signed-off-by: Josua Mayer <josua@solid-run.com>
---
Changes in v3:
- add description for new struct member
  (Reported-by: kernel test robot <lkp@intel.com>)
- Link to v2: https://lore.kernel.org/r/20240903-mvebu-utmi-phy-v2-1-7f49c131fad0@solid-run.com

Changes in v2:
- fixed compile error introduced with v6.11-rc1:
  parameters of of_property_for_each_u32 were changed from 5 to 3.
  (Reported-by: Vinod Koul <vkoul@kernel.org>)
- rebased on v6.11-rc1
- Link to v1: https://lore.kernel.org/r/20240704-mvebu-utmi-phy-v1-1-9d3c8eea46e5@solid-run.com
---
 drivers/phy/marvell/phy-mvebu-cp110-utmi.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/phy/marvell/phy-mvebu-cp110-utmi.c b/drivers/phy/marvell/phy-mvebu-cp110-utmi.c
index 4922a5f3327d..59903f86b13f 100644
--- a/drivers/phy/marvell/phy-mvebu-cp110-utmi.c
+++ b/drivers/phy/marvell/phy-mvebu-cp110-utmi.c
@@ -62,6 +62,8 @@
 #define   SQ_AMP_CAL_MASK			GENMASK(2, 0)
 #define   SQ_AMP_CAL_VAL			1
 #define   SQ_AMP_CAL_EN				BIT(3)
+#define UTMI_DIG_CTRL1_REG			0x20
+#define   SWAP_DPDM				BIT(15)
 #define UTMI_CTRL_STATUS0_REG			0x24
 #define   SUSPENDM				BIT(22)
 #define   TEST_SEL				BIT(25)
@@ -99,11 +101,13 @@ struct mvebu_cp110_utmi {
  * @priv: PHY driver data
  * @id: PHY port ID
  * @dr_mode: PHY connection: USB_DR_MODE_HOST or USB_DR_MODE_PERIPHERAL
+ * @swap_dx: whether to swap d+/d- signals
  */
 struct mvebu_cp110_utmi_port {
 	struct mvebu_cp110_utmi *priv;
 	u32 id;
 	enum usb_dr_mode dr_mode;
+	bool swap_dx;
 };
 
 static void mvebu_cp110_utmi_port_setup(struct mvebu_cp110_utmi_port *port)
@@ -159,6 +163,13 @@ static void mvebu_cp110_utmi_port_setup(struct mvebu_cp110_utmi_port *port)
 	reg &= ~(VDAT_MASK | VSRC_MASK);
 	reg |= (VDAT_VAL << VDAT_OFFSET) | (VSRC_VAL << VSRC_OFFSET);
 	writel(reg, PORT_REGS(port) + UTMI_CHGDTC_CTRL_REG);
+
+	/* Swap D+/D- */
+	reg = readl(PORT_REGS(port) + UTMI_DIG_CTRL1_REG);
+	reg &= ~(SWAP_DPDM);
+	if (port->swap_dx)
+		reg |= SWAP_DPDM;
+	writel(reg, PORT_REGS(port) + UTMI_DIG_CTRL1_REG);
 }
 
 static int mvebu_cp110_utmi_phy_power_off(struct phy *phy)
@@ -286,6 +297,7 @@ static int mvebu_cp110_utmi_phy_probe(struct platform_device *pdev)
 	struct phy_provider *provider;
 	struct device_node *child;
 	u32 usb_devices = 0;
+	u32 swap_dx = 0;
 
 	utmi = devm_kzalloc(dev, sizeof(*utmi), GFP_KERNEL);
 	if (!utmi)
@@ -345,6 +357,10 @@ static int mvebu_cp110_utmi_phy_probe(struct platform_device *pdev)
 			}
 		}
 
+		of_property_for_each_u32(dev->of_node, "swap-dx-lanes", swap_dx)
+			if (swap_dx == port_id)
+				port->swap_dx = 1;
+
 		/* Retrieve PHY capabilities */
 		utmi->ops = &mvebu_cp110_utmi_phy_ops;
 

---
base-commit: 8400291e289ee6b2bf9779ff1c83a291501f017b
change-id: 20240704-mvebu-utmi-phy-84aa3bf3957d

Best regards,
-- 
Josua Mayer <josua@solid-run.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
