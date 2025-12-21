Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BD4FD68BD5
	for <linux-phy@archiver.kernel.org>; Sun, 21 Dec 2025 10:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kWJ6XvVW4X6g9POMaWb9Vnwkb9tnSFzsuhRnLMfa4HM=; b=dGXrTMgu/GI1o2
	U/hZQj2rEOiRH7qxxe/tGpPpxb6mvU0KRAtmRWFtLYj6BRnL7xMQcuqUN829WH6oIXn0Jqs3aocDc
	0D5bg9+w4eWF6SW+PvrvUddM5sKIy9veGUINVFHWGajbvuBUDbgvfOcCiXGOk7YMugww9fClMVVyn
	cgISpBOKJFWRlY9jgMBruzs/WpQgaibxeq5j+rfDWBWUnBUkdjWE+wFD87Rum5jgaWzqRamMmMF5H
	jESLQm3j/NjJJ/b5xB7cK1Ea26cG16R+b0N9zzNAyW+mfxSI+JF6YjLYeSa98PWwzBJ8DySsHKcwF
	pqA1Yu3xGUnkvt8MUGbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXGpD-0000000CKaS-12zf;
	Sun, 21 Dec 2025 10:38:07 +0000
Received: from mail-westeuropeazon11020111.outbound.protection.outlook.com ([52.101.69.111] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXGpA-0000000CKYl-41wF
	for linux-phy@lists.infradead.org;
	Sun, 21 Dec 2025 10:38:06 +0000
ARC-Seal: i=3; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=ZwjDJcMSuulq0C12oPsCqJi9kZypeh6ECCRsn0FRNqsWcq0Xb2nmkUgrqvuQ8BqL2xieHXgh97pwr+fMqccSdMHHDpUyrs3lhMSORtlZ6OQd0VprT0AkspbyyB663miioO6lAqXkpAXpT8vOJdyaHm4sgsCnJlrTv1rUImlr4YKGBPuemDHFy4xZqksW0oTJ0Og1H450Zt2jDseLM70MbH5e1Jl+dro24n7I3Lja8GP8ZsLvngywFQbyKb/xbgKUG4z9sM4UK0M+GzstgrXyXHzMpinxWRzygO9M0iqJQiQajzkqRycTlQlpCoA7oPPqIMWnE4SykokcF9lZlp60rg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QHLLYX2gn4S9p1jpS5i1Epj2I0NaFtH8RqxrkG0kSto=;
 b=G+jLsrquKxk9PobOk+CFsK1aQ2fGGddyGIZT6iKqPE/FQ5ozjv9TZHNBoZxaH+7AU7uc3M9xEUD/MW6N285Gv3sG3y+L2egmEAnIM9eukScAaPQ1+lC29kE4Nl0NYHbyZXoQjceRNDwpNb2mfxPfWKm2CSnqeC0dhJXAFFzCm+PR1z+dNDHxupZGeptV5pmNesm489TevVlZDLWrLDC/bqt5nAg132eTlATwRzKCva4y/zv/d0G9D5N8Wttsdu9xjhajS7c18jivkCFmIjXpYrRxNRtS8O9n6EeAna3GGzQN2UR4o+rctU5VPho/9Odyw1CiVe13vxXXhJNOBX35rg==
ARC-Authentication-Results: i=3; mx.microsoft.com 1; spf=fail (sender ip is
 52.17.62.50) smtp.rcpttodomain=atomide.com smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QHLLYX2gn4S9p1jpS5i1Epj2I0NaFtH8RqxrkG0kSto=;
 b=DjkRgPBqQauuCSxEe2b/4bJ/zBjtp69g7YBUFdofViqL2+z06NEGl0IX1Kk/tBJcXDNnHTLRLE5lghjiDgLfaLvaaZXs6b+RQ0nMFkz1NSK3Kp6KkYPhNv2KnUqnx3PJe1HT1ea3J1J1+e7WPgoFxOYLci25yNtY314afiz83DI=
Received: from DU7P190CA0025.EURP190.PROD.OUTLOOK.COM (2603:10a6:10:550::32)
 by AS8PR04MB7749.eurprd04.prod.outlook.com (2603:10a6:20b:2a9::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.11; Sun, 21 Dec
 2025 10:37:59 +0000
Received: from DU2PEPF0001E9C0.eurprd03.prod.outlook.com
 (2603:10a6:10:550:cafe::6f) by DU7P190CA0025.outlook.office365.com
 (2603:10a6:10:550::32) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9434.11 via Frontend Transport; Sun,
 21 Dec 2025 10:37:57 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: Fail (protection.outlook.com: domain of solid-run.com does not
 designate 52.17.62.50 as permitted sender) receiver=protection.outlook.com;
 client-ip=52.17.62.50; helo=eu-dlp.cloud-sec-av.com;
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 DU2PEPF0001E9C0.mail.protection.outlook.com (10.167.8.69) with Microsoft SMTP
 Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9456.9 via
 Frontend Transport; Sun, 21 Dec 2025 10:37:58 +0000
Received: from emails-4040425-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-6-225.eu-west-1.compute.internal [10.20.6.225])
	by mta-outgoing-dlp-670-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id A82897FFAC;
	Sun, 21 Dec 2025 10:37:58 +0000 (UTC)
ARC-Authentication-Results: i=2; mx.checkpointcloudsec.com;
 arc=pass;
 dkim=none header.d=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=checkpointcloudsec.com; s=arcselector01; t=1766313478; h=from : to :
 subject : date : message-id : content-type : mime-version;
 bh=QHLLYX2gn4S9p1jpS5i1Epj2I0NaFtH8RqxrkG0kSto=;
 b=q9SCbMhZggT6Eq/GpbLrEy25z0/nzKNc1iytNniojO8wkVNK7FElvYtaUjJ7qNbyVYqgq
 3OWPHd6w4V/GuayyvWe4wpIncsdo4ljqPuhQt9cPNc7X1khRf/aBhUngq6sJJ6pFrMhgz9z
 0zprOv8dFbbEmdIOuYPjQX49in3avug=
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=checkpointcloudsec.com;
 s=arcselector01; t=1766313478;
 b=kUgQRQ8rzv5iSUtLKwA+wftpSgpxfO5tTCvb3Dzj/yzyaKuDAQGA9/GDYE75tSxWbq/ca
 o9uFsfh3PyN419o0kLXxyrxPggPT4U6SwrQdj0DRc8KGa63+W/jGeU0Hkr8+gbVjRA8vx/5
 zj2Kl2oMe5I4qh6geprSUZsftOm4x84=
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yGIJ95X0tI8qWrxOZaPyMmyIVDUNstKeKK+wyNEBm6/KsMw9GGxhmSETsbN4AYNm5LELBCmQpE6X6P8pPnWNYvutGLbo3xmy6PvKoKbPetAwFoAOHozu2pv7X7m+xGTmds4Vv6jgZtzRqOqdwF6ojKGSuOK6QwX/lhXM6to3Fy6ZLhFUqw4yqxMPdzGKjKNuvNGIZz5DzMM7ljEo2hFleI8hCA2jcXPsxGnBanA9kMQHGvTUGM8hrCNVTl+5Ohn1mNtgyvlEbJLKhL9kov1CGF2iehHgmb4UhdmOscnuUyQeYA625SGE3anFxai79dcfXJLFJpfPXOvl1y3aIZQrrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QHLLYX2gn4S9p1jpS5i1Epj2I0NaFtH8RqxrkG0kSto=;
 b=DvIfOpI6pPsNGgTF/t+Mlvl0KtXLGRveVWhheL9hwCX6G1EmcrXfQOFRAxBIaRtEfbvFn0mFCyLV9YZnuhs6soLMAB32KysMQDRLzlw1MQV0wdkZx2X+2wkuMW+G5s5h6tjiSuHF70dsRgqDr40HvOMMxRRWqGWQi/WGO3P+qPTSaG6ch8kFe/cfrujGeY3XInwPikcII7/viX5ZHAfGm8aTCurtm8EVLLbZmIovJx+Sia+4oWZLka2UOQweZgLw2BKnmiKbY+9ji5BSv0WcKrRpF3ZQCyisR86sUPkh1LqKoEh6ELaaAHgm8mgnFoeQ/U5I5L2NEl+BdLj2UHRVlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QHLLYX2gn4S9p1jpS5i1Epj2I0NaFtH8RqxrkG0kSto=;
 b=DjkRgPBqQauuCSxEe2b/4bJ/zBjtp69g7YBUFdofViqL2+z06NEGl0IX1Kk/tBJcXDNnHTLRLE5lghjiDgLfaLvaaZXs6b+RQ0nMFkz1NSK3Kp6KkYPhNv2KnUqnx3PJe1HT1ea3J1J1+e7WPgoFxOYLci25yNtY314afiz83DI=
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22)
 by PA1PR04MB10746.eurprd04.prod.outlook.com (2603:10a6:102:484::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.10; Sun, 21 Dec
 2025 10:37:48 +0000
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::aa83:81a0:a276:51f6]) by PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::aa83:81a0:a276:51f6%4]) with mapi id 15.20.9434.009; Sun, 21 Dec 2025
 10:37:48 +0000
From: Josua Mayer <josua@solid-run.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven
	<geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Wolfram Sang
	<wsa+renesas@sang-engineering.com>, Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, Kishon
 Vijay Abraham I <kishon@kernel.org>, Peter Rosin <peda@axentia.se>, Aaro
 Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, Tony
 Lindgren <tony@atomide.com>, Vignesh R <vigneshr@ti.com>, Janusz Krzysztofik
	<jmkrzyszt@gmail.com>, Andi Shyti <andi.shyti@kernel.org>, Mikhail Anikin
	<mikhail.anikin@solid-run.com>, Yazan Shhady <yazan.shhady@solid-run.com>,
	Jon Nettleton <jon@solid-run.com>, "linux-mmc@vger.kernel.org"
	<linux-mmc@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-renesas-soc@vger.kernel.org"
	<linux-renesas-soc@vger.kernel.org>, "linux-can@vger.kernel.org"
	<linux-can@vger.kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-omap@vger.kernel.org"
	<linux-omap@vger.kernel.org>, "linux-i2c@vger.kernel.org"
	<linux-i2c@vger.kernel.org>
Subject: Re: [PATCH v3 2/6] mux: Add helper functions for getting optional and
 selected mux-state
Thread-Topic: [PATCH v3 2/6] mux: Add helper functions for getting optional
 and selected mux-state
Thread-Index: AQHcafvjRT5zKouON0q90YQR/1KWr7Ul4PSAgAYWxYA=
Date: Sun, 21 Dec 2025 10:37:47 +0000
Message-ID: <20f2128c-c6cb-4b13-aa08-b93e540f5bd9@solid-run.com>
References: <20251210-rz-sdio-mux-v3-0-ca628db56d60@solid-run.com>
 <20251210-rz-sdio-mux-v3-2-ca628db56d60@solid-run.com>
 <CAPDyKFoYd3WKGrjD3DEzZH8EfgZPmRkrqL=rdoKNuAADrvz3Eg@mail.gmail.com>
In-Reply-To: <CAPDyKFoYd3WKGrjD3DEzZH8EfgZPmRkrqL=rdoKNuAADrvz3Eg@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-traffictypediagnostic: PAXPR04MB8749:EE_|PA1PR04MB10746:EE_|DU2PEPF0001E9C0:EE_|AS8PR04MB7749:EE_
X-MS-Office365-Filtering-Correlation-Id: 17b4861d-ab5a-429a-2f7f-08de407d0260
x-cloud-sec-av-info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|7416014|366016|1800799024|376014|38070700021;
X-Microsoft-Antispam-Message-Info-Original: =?utf-8?B?Z2NYN2Y4UU8wcWpNRm5FOTFYVTIzNjY2a3pOVHE5Zm5aUklBc1pZUFhWeERa?=
 =?utf-8?B?ejhCTCs4SVZmYWpNdU1XbjROdVU0akxOM3ZnZjl1SGhOU0crUWxlUVFWU0Vi?=
 =?utf-8?B?YUJvaEVFb1poWDVtZDdZWGo0ZXVxdUoycDMvV09lV3ppYzcvVFlrS0kvSVg0?=
 =?utf-8?B?bWo2R0dUTjcvV3dvenF0azFHWjdCSTU5SDEzSWRkMHNWTVBJUURESVVoR3Bh?=
 =?utf-8?B?SXl1UmlabDNHSVNyVUNkMFdqS2dnbm9EQytjdWIybnhyRXVhREFvL2EvT1Ru?=
 =?utf-8?B?MkU2cE5wOHZvTnFxSnVPMlNRbzlTQTdjdHdYZWk1YnhoY0NmbzhyZlRSUTBm?=
 =?utf-8?B?RnZOTXpPRlRTTysrVXYwNno2Q3BOd2Nia1UzZlRhMHdZTEJVM2loRmcvUk5F?=
 =?utf-8?B?L1BHUFM1bFFBZ2d2cDFsQUt5U1k0c1VkOU5jYzBFOG5LMlhNNE1MbWdxWkUz?=
 =?utf-8?B?bU1Odi9Hc2NmUlRsOWZ0M3M2K09hd1Q5ZHUzRWNMWEtTTTFETklXZkdmdk9I?=
 =?utf-8?B?RlRiVDcvcGxhRHgrcE00dENoRVpBRlFtK1UvVS9wWmtJWnN3QUs5MU56OUlS?=
 =?utf-8?B?M3RySlZ3djJ5VkdSc1pTQ0Y1cHFnNXJ0VlhwZ2orYlNXWGdJUXRtSDlWWGtw?=
 =?utf-8?B?UEVjQ0N3dlhZMWJMcTMyNEdMR1l1K1p2V1p1SU1YV2M3dnV5TnZYSzVjanAr?=
 =?utf-8?B?VitWTFZTM3psWFZReEREbjV0VFRjTVo2eG9EVlkrZENyYUw4UEhheHFMRHM1?=
 =?utf-8?B?c00wSXFESk5pNHhMK3l4YklDamVIVThjRTVnSzJjUnhjS2Z5TmVuUzFUMU9L?=
 =?utf-8?B?R2tTZmcxNmJqUUYxKzR2WnU2SFlHTjN2bXMranFsZVNVL3BWMWJTRUtOWit1?=
 =?utf-8?B?YlV2aGsyYWRFdlArWTQrYkFrZGdka2w4bng1bHlRRXZlMmJtY3NsZmFseEtO?=
 =?utf-8?B?cnNMYmZuMHU2eklZRk1HUFNDdmxreTlyVGp0NWFHNXRGemZmWDNwS3BOaUxO?=
 =?utf-8?B?UExPSlJlWVhpc1lZNmtkNGtvcTlad0kxb2dtdlQzWi93SngxczRSMHlRUVla?=
 =?utf-8?B?czlUSEVtZk92TXc2VUZiVGwrdW43anFVUUJ1VWxTdlJFSTdjMWlqTTFxa1pY?=
 =?utf-8?B?bFNYYVpCR0p6R3RWdWE4YkpWREJ2b2xVcHpidlNUWW9wV3psZWtieEJ5UWc5?=
 =?utf-8?B?Qk52WUliVnVtc3lxTU5xaUsxTmtpSVVzZkRremZEOWpISUF2L2w3ZFpGTnJv?=
 =?utf-8?B?RWh2cHdmNk1kYkhPeWZ4cUVYSkJDNHB3RUVRdC8rRlppVkl4RFh6UGtDNnNI?=
 =?utf-8?B?MEppU2tOdzh1V0JjaGtBQ29qQ28rV1I2dUs2dkZkQVEyaVZtaVNTbU12NDBn?=
 =?utf-8?B?WERSeVVvSlUvS3o4YmY3T0xNaC9GalBJM3FwRGdUcGh5WHJtTCthc3hzNE1S?=
 =?utf-8?B?eWcwTk1HNGRPOGFOTkVCTVRsUGxuREpsTjFRWUZEdjBBRW9nM1EzakNOWkpR?=
 =?utf-8?B?RC9YQ281cWpJSXNaZkt0TFVDNFhhVjJhY3huU1FRZEQ2aFBmRkhMUE9WK3NL?=
 =?utf-8?B?ZXhEeUV1QnZOWFFIYzk1K04wRGNuMER4b3dvc1FlOUVkaTdlSlAyUjZlQmx3?=
 =?utf-8?B?RUhyS3IrdTNwMFczV3pXQWpsN1hvVW92d2xXMUZJNjNJT3V0amJZVEtxaTVK?=
 =?utf-8?B?b3A1b3k3WTIwMytRS0hiY3VKSnVWaFRKMHFkdk5GZlI5QndyTXkxaEdwYVgx?=
 =?utf-8?B?dDFSMWR5dFpuNkJjOGlBWUlhdVZTQ09JWkIwUEVOQzJEOWt2enhwa2I0RE5G?=
 =?utf-8?B?TnVlYXZtVzV5RDVabXRFNFRCZXczUXBHOEJQVVlxaFdqZS8yZ1hHNnEwdmdI?=
 =?utf-8?B?N0pmQ3NQU211WWlCZ2kyT1RlNE5FZEVZK2lEQURINkhpQVUwd3ZuRU9oa2FK?=
 =?utf-8?B?czB3TDVXTkk1NnJaZGpRYWlwS1dyRTFWWnZEV0VOREpGTnFlSndlSjVVc1g4?=
 =?utf-8?B?UUxURFhsUkJWTlFsSFhuNlQzWUptU2ZXRTNtTzVQS0ZaclJmVy9OL3Z4RHR2?=
 =?utf-8?Q?EJo1jV?=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(366016)(1800799024)(376014)(38070700021);DIR:OUT;SFP:1102;
Content-ID: <6EC6B79C4144E441A88BDBE431E802E0@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR04MB10746
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: 8b973d7ca8e84d13b024461fd37e709a:solidrun,office365_emails,sent,inline:c2fe958e95e40757cc4669b5a2af7fd6
Authentication-Results-Original: mx.checkpointcloudsec.com; arc=pass;
 dkim=none header.d=none
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DU2PEPF0001E9C0.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 80f44ee8-75b5-4ac6-73cf-08de407cfbff
X-Microsoft-Antispam: BCL:0;ARA:13230040|35042699022|36860700013|1800799024|82310400026|376014|7416014|14060799003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WVdrc3k2Ynh0Z1VSazdKRkxHNEVsNUJEQ01ZS2xuWlFFdkhmSDlNTGxqOVQr?=
 =?utf-8?B?VEp5Slk0UmRUcGFDV0tEK2NpdERDdTZodWEvbHlNbHRyU1pVK2pvdTRQNE9H?=
 =?utf-8?B?OGdTcHovTkxmTkVKNHM0bUc3dHFZWDlJRkVrUXpkOWUzdGFiS1E4UnU0YjBD?=
 =?utf-8?B?RTU5NFRnMlhwUEVheTNFT0ovNlZsQzBCQjdZbmJJSHh3TU5OSGdpUVd1WC8w?=
 =?utf-8?B?RHNtTUlwMVk4UFN6VWFBR2tCc0tHSmJNaDVRa1JOblBkUGJyQkljU1hkU0No?=
 =?utf-8?B?NVgxdGZHVnlhRWhTR0Nqb2pNMkxGdzlhYm44cndOakhqZVZqZE9nanAxYUN6?=
 =?utf-8?B?a1hvMkVaekxLc3lUc0ZhbVBqWkR6U3cwdVZmTlJWU29ha0NWb0tqWkwvelNw?=
 =?utf-8?B?RXhOcURiR2daOWx0aU5mTjVuRW1IUFlHMUVnWlJFTTB0RUg0MERqaEh4UkZS?=
 =?utf-8?B?NEdqUStZcXNLRFNzWEEwNlBwMi82NVg0MFFWSSt5S1NTbHZWUDZ3aG9oY1Fx?=
 =?utf-8?B?dkZWdHVnVTlNNzIwbHlWaFJhbGZHeEswWElxTkRXOTAyS2R3cDFHclVqQjNE?=
 =?utf-8?B?Vkl4MXlGcytYRmc3N3FFSEg4RWJCWllxajNzVktVZlIzYmdJcjI3emFJd0M3?=
 =?utf-8?B?Kzh5QWs1M2Z2SUFiRTF1aUV0bHQySnpOaXltWUs0UHlLZFhla0tNaWR2a1Vo?=
 =?utf-8?B?Ky8wT2Z4NysxSkRtQVVsTFF5TWlHWXVBeHIrR0xBeTFaUmlneldHenB4T1Y3?=
 =?utf-8?B?VCtXNGlHcVVReTB5Q1NaVWRJZ0xFNlk3M0t0TDdsZkN2bHRXQ0tqbDN1QmFm?=
 =?utf-8?B?WDBrTXU3ZGZ6cHpTb0ducGlLYXZuQWJ3SXF0NHExQ2xnbGt2eG83QXA2VEZI?=
 =?utf-8?B?SU02d2Vrc21ZUXRQTFY0bzlqRWFRZTM1UlNQN1Z2SDFJQlRHUnpITUJoaVNO?=
 =?utf-8?B?WFJDeGlyZXBFSGdob3p0QkZtdk9OWFZJU0xmMTkydUdldkhMTk54NkF1OEFP?=
 =?utf-8?B?M3FlbHZBa09BT1AwYTd2S2lENWNRMzIwbXlXWEhqZkI0amc4VGRNWTdIbW9O?=
 =?utf-8?B?dkQ3NHVYR0h6ZjBLUTRCVjE5bW10akVKUlI1VllQODR2YmM3M3ROVzU3NzZD?=
 =?utf-8?B?aXEzRjZIcDVHTUxFcHRYMVhxZGtWVGRUZ0g5aWxoZjBJemM1aU9mWFNYbjh5?=
 =?utf-8?B?WmJ1TEhvZlpVdGFHNDlKeVhGWjArS2VEYmNDblIvSDVVVzV6cC8vZWRxdVM1?=
 =?utf-8?B?eWFVLzY2V1NENzNXY2hMZ3V6Q3ZId3daQ1JQZmRmTlVrb0VWUWN6UjZYQzRS?=
 =?utf-8?B?SDk3S3NlUWoyczNpNUJFenVNaDRaT3ZIOXZhNUYvbWt6R2wrY3ZBNVJpNTU5?=
 =?utf-8?B?WDhqZUpJRHQwT1lGbUVFVDUydnFNOGZ2MlRWQkZ6dTNYaDliZDE5OVY2eFVM?=
 =?utf-8?B?RjFreEc5R2hKcklTUG05Y01yanNFS3l6NjBNaDFOQ0VNZUFIS1RoR0ptMlk1?=
 =?utf-8?B?dnc3UUJtOWxyNVkrRkdEbm9MaUJsaTc1dVNoQUpjd1REVUU0SVNVdDNvdDJ3?=
 =?utf-8?B?WVpZZk16V1hzT1NjVnNidSsvc08wOEx6U3AwcTVLaUlwd0xjTkh3cTQwcnlk?=
 =?utf-8?B?akh6SlZhdDFienZsdWVuWmFMYitiYUpUb2RGK05iRjl4NlhoSGtQdGo4WThD?=
 =?utf-8?B?cXZwWnk2b254Slh1WFdUTVMxVWR6d09sOEVTYWxXWEFLVEkxOUVjVzFTUC9V?=
 =?utf-8?B?SUp6eFdrUlpmVEtqRkxJZVRWUEdLVWVDNHo3WHo5aUVaTkltalQwc0JPNi9u?=
 =?utf-8?B?MHFreW04RCtyZ0dXQUFFTWkzRzdzS1hpd1BRUkZXQitVTllLZmJRaURJa2pL?=
 =?utf-8?B?RUdIT3REd3pjNzh1RnA3M2ZwZU1yTUtXR1dGTW53RDhwQ1paRS9Xd1d0Y2J3?=
 =?utf-8?B?cWNWM01FRWVDR0NiSWF2K0k2NE5Obkl5UERUY04xKzg2Tlp6RGZDcldGQlAy?=
 =?utf-8?B?djhXYWRscHRNUUpsL2RPZ0FsQkdoTjArVFU3UFBaN2t1WDVuTGN4eUUzYzly?=
 =?utf-8?B?Z0pQOC92dEFWeDgrSjlGQnJXNDIyY2dST2trSVkyMXBjamduQWU2S3ZuME5y?=
 =?utf-8?Q?HgEU=3D?=
X-Forefront-Antispam-Report: CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(35042699022)(36860700013)(1800799024)(82310400026)(376014)(7416014)(14060799003);DIR:OUT;SFP:1102;
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Dec 2025 10:37:58.7712
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 17b4861d-ab5a-429a-2f7f-08de407d0260
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource: DU2PEPF0001E9C0.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7749
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251221_023805_149612_C0E8EA60 
X-CRM114-Status: UNSURE (   8.53  )
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

Hi Ulf,

Am 17.12.25 um 14:38 schrieb Ulf Hansson:
> On Wed, 10 Dec 2025 at 18:39, Josua Mayer <josua@solid-run.com> wrote:

cut

>>  /*
>>   * Using subsys_initcall instead of module_init here to try to ensure - for
>>   * the non-modular case - that the subsystem is initialized when mux consumers
>> diff --git a/include/linux/mux/consumer.h b/include/linux/mux/consumer.h
>> index 2e25c838f8312..a5da2e33a45c0 100644
>> --- a/include/linux/mux/consumer.h
>> +++ b/include/linux/mux/consumer.h
>> @@ -60,5 +60,9 @@ struct mux_control *devm_mux_control_get(struct device *dev,
>>                                          const char *mux_name);
>>  struct mux_state *devm_mux_state_get(struct device *dev,
>>                                      const char *mux_name);
>> +struct mux_state *devm_mux_state_get_optional(struct device *dev,
>> +                                             const char *mux_name);
>> +struct mux_state *devm_mux_state_get_optional_selected(struct device *dev,
>> +                                                      const char *mux_name);
> Seems like we need stub-functions of these too. Otherwise
> subsystems/drivers need to have a "depends on MULTIPLEXER" in their
> Kconfigs.

Currently the drivers that can use a mux select MULTIPLEXER in Kconfig.

There already exist a few mux helpers both for mux-state and for mux-control,
and they might all need stubs.

I'd prefer the restructuring of kconfig dependencies being independent from
adding mux-state functionality to renesas sdhi driver.

sincerely
Josua Mayer
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
