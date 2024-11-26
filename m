Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF728D3B98F
	for <linux-phy@archiver.kernel.org>; Tue, 26 Nov 2024 14:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KjNCSVv7bnnkJhkmUx9mQGBuvuIzk+Ekx9p69Q38mAA=; b=3wp4GVwua6NYY5
	fU0VEeEDO60cY+5OthO17snpHeF9EnBCBDC1Y2LC2laADV485Ll5ooupxiKUKRSGq6g74TSR13cZH
	JFVMUBaQKTWJmmyuiQ6zGcLTnWRRBFVuGz79W3p5qP61m6uF/blhsHm5GZqPjs6hQyayK4mkxpMA2
	tMrY3YXbPIvrYo2eSZKY1yc+TMG+nO7u3DDv2iHpNGy7NfV9Z+srboKf0r+TCVG6s+OvDSov2UFxy
	Q5ycYo63xdaE5l/mG6fXHhGdLJieA4S5l18dQpDcsYndeucOykX9mzE3uqgW4fu7P7aOaAlHga2Pj
	YeEurP9HSclSPwLEx0Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFwJa-0000000AozR-1RH5;
	Tue, 26 Nov 2024 14:13:18 +0000
Received: from mail-northeuropeazlp170130004.outbound.protection.outlook.com ([2a01:111:f403:c200::4] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFwIb-0000000AomD-13p2;
	Tue, 26 Nov 2024 14:12:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yju8jUOszLzxvO3VZNUnAVDZ0N3hKtkuv/drdGme8CZeBK3YI95xRy8wTWuF0PfE9iFXRyGr1HPlymWjWMxPMIot4ZETg+7uasXgGKsILcJa+n2Ga1MZCAflWXCEHCjnmLa5mpUCepoRMz06LzvVqf1AIQQgyw4uUL9eDR5XldJEPn0RL5X3KZ8SXxYVicxYUKABk0P4SgC0ApeXcxEvuUVblAKFMdTJNVM0EIl/ZvSKc5IQbexB3DSn/pDWCBMSmQlm7B6GKhb3ed63ItQhdkl9IQbT9zuk5lg1dVd67ZxptmKuAmTP5j2lfznfSjVcQbEt+43jR2PHbJ7MSv+Tgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HVW3UP62qzID2fXk09R8qMi9KtD6raghno4jVVbGUU8=;
 b=bkSw5Wv2iZm7EMSh++9FenGMsgoXVFg0DQ14D1K9dC7Q7Qdj123WUGaXLffK4VfgaddofRhQDNTof1VTf8TG14zGhynBB8R/kjXyP8qpJMwFfBq5X8vPUsS06dF9QIJejPpIuRzGFN8zcaqety98MEhpqyS9SHLhRh+EpK2NR+ScdRJ3tO/1mmTahISEjwlO0og/27GI3+tUuJw3nTr3Ljsu/sBsyiLRkPEuGaxP3R2gp4H/LjSgqAv+cTiV19T4n2CFoFFhiZ7EDUf5ZDwFQmuO61c8C1r7oKGuHBtmnZKRDnXaryPdd0XD7J2b8zU0mCjfeohSKwn9h1WO01k0Hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HVW3UP62qzID2fXk09R8qMi9KtD6raghno4jVVbGUU8=;
 b=KtlrA2v/FmpB0eRzzaxbCoYnUK7EuJmL79xBku5V7EVigkGC9WNPveiABuWBeS2wKrx6KSXI7Zw6ldr1jNoqE1SBpWcHDTQEnTj+0ZSeyH2zfHsksORIxlmkFD18VytJ/xDizcx+oWeKWcEF7BMwPUNcJUPGNNbxLvTW8YQBLKcvW9Agu2dqVNe+ey1g4mM/HIFY8rRL8yDsW5vs3b6QfZ1z9VE2Nl/WPRGDR52OskRDtIXYZtGSKHco5H5kFeTt7ss3DfygqNyCBOinfSkqqNXfWftmv8x3U5RCFpuWGTRGpp6HrS6eKkX7hovhlyRaOoMHDR/XTnBHeTpaFf6ozA==
Received: from PAXPR04MB9448.eurprd04.prod.outlook.com (2603:10a6:102:2b1::21)
 by PAXPR04MB8894.eurprd04.prod.outlook.com (2603:10a6:102:20d::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.21; Tue, 26 Nov
 2024 14:12:04 +0000
Received: from PAXPR04MB9448.eurprd04.prod.outlook.com
 ([fe80::51ae:5f12:9744:1abc]) by PAXPR04MB9448.eurprd04.prod.outlook.com
 ([fe80::51ae:5f12:9744:1abc%2]) with mapi id 15.20.8182.019; Tue, 26 Nov 2024
 14:12:04 +0000
From: Sandor Yu <sandor.yu@nxp.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: "andrzej.hajda@intel.com" <andrzej.hajda@intel.com>,
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, Laurent Pinchart
	<laurent.pinchart@ideasonboard.com>, "jonas@kwiboo.se" <jonas@kwiboo.se>,
	"jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>, "airlied@gmail.com"
	<airlied@gmail.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
	<s.hauer@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
	"vkoul@kernel.org" <vkoul@kernel.org>, "dri-devel@lists.freedesktop.org"
	<dri-devel@lists.freedesktop.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "mripard@kernel.org" <mripard@kernel.org>,
	"kernel@pengutronix.de" <kernel@pengutronix.de>, dl-linux-imx
	<linux-imx@nxp.com>, Oliver Brown <oliver.brown@nxp.com>,
	"alexander.stein@ew.tq-group.com" <alexander.stein@ew.tq-group.com>,
	"sam@ravnborg.org" <sam@ravnborg.org>
Subject: Re: [PATCH v18 6/8] phy: freescale: Add DisplayPort/HDMI Combo-PHY
 driver for i.MX8MQ
Thread-Topic: [PATCH v18 6/8] phy: freescale: Add DisplayPort/HDMI Combo-PHY
 driver for i.MX8MQ
Thread-Index: AQHbQA0r8dlw6FIJEU6y0mSFbhPzYg==
Date: Tue, 26 Nov 2024 14:12:04 +0000
Message-ID: <PAXPR04MB9448A7F6973D9DAE98115716F42F2@PAXPR04MB9448.eurprd04.prod.outlook.com>
References: <cover.1730172244.git.Sandor.yu@nxp.com>
 <411e42c70e71dce33a80059f663fb6c58fb2ac8c.1730172244.git.Sandor.yu@nxp.com>
 <efciuvoptv7qxwauswfseb6zlt5w4fmjdbm3huxfsn63a6bm7u@kfgkkvqoz5x4>
 <PAXPR04MB9448F638D47B5495CF78007AF4522@PAXPR04MB9448.eurprd04.prod.outlook.com>
 <76D430C8-3DBB-4D89-9361-9B5D3EDCF067@linaro.org>
In-Reply-To: <76D430C8-3DBB-4D89-9361-9B5D3EDCF067@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXPR04MB9448:EE_|PAXPR04MB8894:EE_
x-ms-office365-filtering-correlation-id: 90e4994c-413a-4b7b-9dec-08dd0e244e08
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?R1RIb3dPRjFITmIzYmhZRU9HRE12T2ZWdnRMRWFZOElodW1hSEtzck9kcjFT?=
 =?utf-8?B?cUVlN0xZTFZuWEVIMDlFdllSdEdHdUlLcG1YaEw3bU1SWnhnK0JBR2xISDlN?=
 =?utf-8?B?QkpSMys4Mk1xTWxIMHg1NU9lVmlTSmJlZkZEU040MncraCtRT2taSFFyNDF5?=
 =?utf-8?B?RHQ5MTlaMTY1ZGxwL3ptc0crSHFtL1c3Nk0vNlVpRlN3ek9HVSs2TVRXdEdv?=
 =?utf-8?B?bkhWSzBSZ1FoelB1dFlJNnJsK05yNGVHNUVKckZMNURxaElza21wSzh0MGhU?=
 =?utf-8?B?UkpOQklHbHdQMGw2WnRoc1h1SmxkUHpPc25PMkdhVWQ3UDQ5dFpjeVhMMDhi?=
 =?utf-8?B?ald3OWFkUXJLbVh1dDBHd1NuKzFkbWxkME1FOTdIbElhSWFJSStRSFZBTVVV?=
 =?utf-8?B?WGtBWVJ4bFdmc2Q5Zjd1M2Y1eWs3dGhZWlplTFVsQnVqNFkzMEhFUTdESlFR?=
 =?utf-8?B?SVRTcTZWQVpHZHhnbSt2cUhBTTRUbDRxd1pPbUUvak1sNzZFSHlWR01PUnBp?=
 =?utf-8?B?d0k3ZnRLREdSeFc5aDBDOFV5TXBxQ3VDRVhvOUlkRWVnVUZoNkhqOE45ZFVu?=
 =?utf-8?B?SjBSTjdJbGFqZzI3Qmc1WThQVm1WZ3cwaG16WW5aMk41TTY0Nmw1UVFXTkQ0?=
 =?utf-8?B?WkcwUkplZXc2WFVnUUY5UUdpQmJjcDVzSXZoQnp0OFlSeFY0YnJGdXN1MDhN?=
 =?utf-8?B?NjlUeGp0Sm5ySTRRVUxOWHE2S0JVdmk3ajkxaVk4SktxYmxNYVd2d3VWVmR1?=
 =?utf-8?B?VkhJTldLWDhqMTczT0U5ZVZPOWJZbVgzRStqL0dKU2Rxd1B4N0kwd1VNL1lq?=
 =?utf-8?B?L2U2V1pyeGFWZWhiMHNzY2FWL0RpTnVZc1p2OXdRRktSZWNEd0pvdzhMUE5h?=
 =?utf-8?B?THFZM2hjd3V1RytQS2hucWdsMnJqZENiNTlIUkEwMk0wU0dkM053NFIvQ0d1?=
 =?utf-8?B?elBaYWMxYVZzbVg3T09SeDNTRFZPVFI1aTNxNU9sK2dQdDIyWTU0aXlEdjVV?=
 =?utf-8?B?V2pFM0VwejhBUFl1NUoyZ0pSeFA0TjVuYlA3ZXRmYmZmOVlzYXRhTWhPQlh4?=
 =?utf-8?B?YWIxZWU0RXJnVFVNMlpYVGtFK05NdkxEYzhKM1oyRWVrL1hSeUNUNWsvWStP?=
 =?utf-8?B?MG9Md3JmUXdtc2JtY3AvOEhJMmJYSGNMT05uem5TQW83MlZOejRVNk5jdVNn?=
 =?utf-8?B?dVY3QU5QTzVBU3VYeTJUWFZZaWtRVmJ2Y05VMXhvbDNQZWpzM3dBWGgwcmcw?=
 =?utf-8?B?cU0zUTV6WlNFMUsyMGM1RlEzaEIzN3hpTVVZVzRIUTJLUG9vZGlPUnhKaFl5?=
 =?utf-8?B?UlJaVUdSUzh6a3pCMTZ2RWdwVS82cFN4SHF3VUFPbDViWXMrY20yOUVkNFIv?=
 =?utf-8?B?cnh0eFZmS0xEQlIwKytKVkF4ZGhTR3VMTzhXZVQxeXNzaDdsenZlL3dXWEZB?=
 =?utf-8?B?Zitna2NmbWd1eEFGemJzNUQxYnFuM0VPdlZJZ29hMUp0SFNtMDdpN002ZEx0?=
 =?utf-8?B?a05udC9SQTZGNUlFVVNoZGM1dWVzSkhlUHhna2ExalBtOUN5THQ1K24zZHZx?=
 =?utf-8?B?Q09mK3AreXlFSDB6YTBQYlpKZWJCUVM3dXBsK2xBcEZJSi80eStEdTJSMmNU?=
 =?utf-8?B?L1RsOGdvb0JrZFltSTRsSUYrWGhBOVB0NFpHeUNEMVp6cmhpT2kxWVJVdHdk?=
 =?utf-8?B?b0NBazNKa21KOXJ4SDd3cFliRThvS1g5czZNQnVLa3Ayc0s4ZTlJSFNsSG9p?=
 =?utf-8?B?bW82bHRaK2NYd2FHNFhUSGNqbjF2ZExxN1VZenZTS3NBaG9MREN1VWwxRE8y?=
 =?utf-8?B?aVY0dnEyT0hISElKTHE5QjNxRFVsdSthUUt3OXhUU05QbENiM1JTYTVhazNJ?=
 =?utf-8?B?YWxhUUtwRkJNQ2FKNDlzSmZtU1kvQ3Z2YjZwVUtXNkxDanc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9448.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NnFqbE0rc28zT0xiK1Q0M1VhZkNPRkpxdVlxL1p5cDM4eGg0dHp1eTNtQ0dS?=
 =?utf-8?B?WFh4aWxWa3pHUmpUZ3ZnQWtVV095WGxIckwvT2xXRFZJM29FV3h2d3VJM21L?=
 =?utf-8?B?WmFUMFNqeXpsc21NeTgyNUwvc0g1M3YrSTQ0ejNZeHZmOTlpa2tlcjIrbjJP?=
 =?utf-8?B?VHF5TlZQZ1N2Z25Va1E1MGhFK1lzMHNLQk9qc09uMFVabHB3Wi9ISkhPYzBs?=
 =?utf-8?B?ajc3V2ZTRDVnUzBpd1UwRlBsZm5tN2x1R0kvcFM2aUg1Z3hncXpMK0lESnRn?=
 =?utf-8?B?RFFsbkRSNmhRSzU0aUlsRk9uTWUrd0FqTHREYkdnc2xUZGhOOW9pZmlQcmpu?=
 =?utf-8?B?WWFCQy9VaUd2TkNGSUVuS2h0WWtpczlJRklMNkhMcUc0VWsvZmZPdXhnSUNL?=
 =?utf-8?B?dUg2dU1EVHAzYVB6ekQrU1MvYlhqNXZBR2JvbDFmelFELzNNTkIwQXRaL2JZ?=
 =?utf-8?B?OFd3bm80RnJPQ1B2Nm9vTy9zczZva1pxV0ZCUDRzMnVjbTF6dGF5a1AzS1ov?=
 =?utf-8?B?RWNqQ0Qwcit6UGJWNHVDNWVtTkF2WWNzREc3eHlIS25zcmlKbXZ5dGlyT29E?=
 =?utf-8?B?VHZkcG91Q0hwZytTbVVyVjZKRERGakpCeW9oRm1QNHJNR2JSNlczWTVXY1g5?=
 =?utf-8?B?TGczZXJ6dVBYTnMwUmVZOUNGUjZYREtzbzYzSEt0L3d6a255VmkxR0haVzRJ?=
 =?utf-8?B?TmY0ZXNVTGpvb0s2Z1RKNFVTVW0vbVdVam5sMlRmQkY1Qm53dmZMa0lRdkRt?=
 =?utf-8?B?QWVOWXE2VFZpUGxUeFlnSDVhREM1alhhVWt6Zmk0cG95M1N1M2w0SXFYNDRX?=
 =?utf-8?B?anMxbHR5WkpDQW5nUXc5cGhLcU91MUxMbzJNamtWR1J2Qy8weTF0dTh2S1F2?=
 =?utf-8?B?MGdVZTUxdUhYeCt5TlNMdVNrVG1PbjFzS1lvTlVZbE03eGFNbmI4bXV4RWhN?=
 =?utf-8?B?a3JrK1lMa3JFMlpNbU5SL0hqczNFSlpOeDlEMzBzOGNFMUxDNFA5bWh2T2Qy?=
 =?utf-8?B?MkNvVEZpL0NtOVRvaDEvTmh3aklyZHMyVjVqYmdCTnloN0tydmVUZHJGLy9O?=
 =?utf-8?B?TEp6V2FHZHZvZEprQkN3NlVuWFpZTW9BMlMrTlQ4QUJoRURqelhCTCtBMi9x?=
 =?utf-8?B?MW1DSTNURFdma0UzeTNOYUxUTDVNSDVIbXdROXZPbm5vbm0wVWdLUUR2QVov?=
 =?utf-8?B?TVdKYUFicnQzci92Y0h5c2Zmc1dxaGdjUnlPTGRrRFJtMERBb1FYTm1GSGlr?=
 =?utf-8?B?UnMwL1dzUjFWUjlKbFU1VVdwNTRpNTBBSHoweEwrdE1tZk1PaXlEYTRHMTRU?=
 =?utf-8?B?YXd1NkY2RjQ1NnV4WTgwRE1UR3Y5OXNnM1VMN04wSjNUN2RzSGdkdEI1WjFY?=
 =?utf-8?B?eEJhNFU1a0YzRjl3czdSRFE4ZXhaa2NkaW53MWVRVmt3WFJyQW4xVllJTjBm?=
 =?utf-8?B?Wm8wcGRuaXBRb3MxRkdsamFMbStYVmpPMDhpbjZwS0ZZaW5jWHRoQ0lvMmtS?=
 =?utf-8?B?TzBQbXlMMEhuMFFZYWVYUmk4MWZRSXlpSkpXbStJc3dBZ24zWnJhbUVQZVdK?=
 =?utf-8?B?YmlqVllTMW81OFpwWGFLQXFGVzQxSkRNWlN4UGZVRUMwR0pBbzZUVUpoNWg2?=
 =?utf-8?B?NjJ4UXM3RjV1YTUvYTNobjBFMTM4dm1kNTZoaGVqYTF1K1Y1QUJ3dUpIS3di?=
 =?utf-8?B?ZkJYdmFTbDU5UDUwK3kvYVh2S0VXMUJjLzljcmpYTnBGNU1tMWkyUityL2FE?=
 =?utf-8?B?S201MVNoZFdaVWRZcXJ1L0swZ3JvLzJWTEp0aFRBZUErK2pMZzRpOUZNVEF5?=
 =?utf-8?B?SEFCNHIwL3l4bi9mQy9Pbm05S2VSMzZnYzcycFc5ZUtPanB1d1oxcU1jNngw?=
 =?utf-8?B?cDc1NEdnekpiOWY4d0xwV1AxTFlSc2VENUVZS0NFaEFCdXowSTUzeWpHempj?=
 =?utf-8?B?WGgzdEJJWXptVDFPWHJiRDVnazVEZVNXSTZBSENmM1hFdExia3NEamhlemZ1?=
 =?utf-8?B?THlVOU8yWlF5cFA3NU5IWm5qR05ML2Z5VkNnYW1EYzBHUjRjQ3EySGd3VnB3?=
 =?utf-8?B?bXpnN3h3eDVZNzFSek5tVnE2WVd3aldsdG5JTjNDNmRsbElhU1h1OXllUGpD?=
 =?utf-8?Q?lbqc=3D?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9448.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90e4994c-413a-4b7b-9dec-08dd0e244e08
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2024 14:12:04.7257
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BbZ82r+SYl1jSb38YlucwvX8cUl40f0oCJW6jlB622WqUz6q6VDOXic0t9Mpc2PpJ9tmm5aq4fWRGxramv7jqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8894
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_061217_595288_014049F4 
X-CRM114-Status: GOOD (  28.25  )
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

> 
> 
> On 5 November 2024 14:05:51 GMT, Sandor Yu <sandor.yu@nxp.com> wrote:
> >>
> >> On Tue, Oct 29, 2024 at 02:02:14PM +0800, Sandor Yu wrote:
> >> > Add Cadence HDP-TX DisplayPort and HDMI PHY driver for i.MX8MQ.
> >> >
> >> > Cadence HDP-TX PHY could be put in either DP mode or HDMI mode
> base
> >> > on the configuration chosen.
> >> > DisplayPort or HDMI PHY mode is configured in the driver.
> >> >
> >> > Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> >> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> >> > ---
> >> > v17->v18:
> >> > - fix build error as code rebase to latest kernel version.
> >> >
> >> >  drivers/phy/freescale/Kconfig                |   10 +
> >> >  drivers/phy/freescale/Makefile               |    1 +
> >> >  drivers/phy/freescale/phy-fsl-imx8mq-hdptx.c | 1337
> >> ++++++++++++++++++
> >> >  3 files changed, 1348 insertions(+)  create mode 100644
> >> > drivers/phy/freescale/phy-fsl-imx8mq-hdptx.c
> >> >
> >> > diff --git a/drivers/phy/freescale/Kconfig
> >> > b/drivers/phy/freescale/Kconfig index dcd9acff6d01a..2b1210367b31c
> >> > 100644
> >> > --- a/drivers/phy/freescale/Kconfig
> >> > +++ b/drivers/phy/freescale/Kconfig
> >> > @@ -35,6 +35,16 @@ config PHY_FSL_IMX8M_PCIE
> >> >         Enable this to add support for the PCIE PHY as found on
> >> >         i.MX8M family of SOCs.
> >> >
> >> > +config PHY_FSL_IMX8MQ_HDPTX
> >> > +     tristate "Freescale i.MX8MQ DP/HDMI PHY support"
> >> > +     depends on OF && HAS_IOMEM
> >> > +     depends on COMMON_CLK
> >> > +     select GENERIC_PHY
> >> > +     select CDNS_MHDP_HELPER
> >>
> >> This can have problems with being satisfied on randconfig builds,
> >> because CDNS_MHDP_HELPER is deep inside the DRM tree.
> >
> >Yes, it should be. Change it to "depend on CDNS_MHDP_HELPER" will
> eliminate this problem.
> 
> No, depending on a non-user-selectable symbol is a bad idea. You should
> either depend/select all necessary symbols or, better in my opinion, move
> your helpers out of the DRM tree.

How about change CDNS_MHDP_HELPER to user selectable? such as

 config CDNS_MHDP_HELPER
         tristate "Cadence MHDP Helper driver"
         help
           Enable Cadence MHDP helpers for mailbox, HDMI and DP.
           This driver provides a foundational layer of mailbox communication for
           various Cadence MHDP IP implementations, such as HDMI and DisplayPort

Finding a suitable location for the helper code is challenging. 
It needs to be shared among various IP versions (essentially different SoCs) 
and across different driver types to facilitate mailbox access.
I've searched the kernel code but haven't found a good precedent. 
Placing this helper in either drivers/gpu/drm/bridge/cadence or drivers/soc/ (as you previously suggested) has its drawbacks. 
drivers/gpu/drm/bridge/cadence at least provides better context for readers.

> 
> 
> >
> >>
> >> > +     help
> >> > +       Enable this to support the Cadence HDPTX DP/HDMI PHY
> driver
> >> > +       on i.MX8MQ SOC.
> >> > +
> >> >  config PHY_FSL_IMX8QM_HSIO
> >> >       tristate "Freescale i.MX8QM HSIO PHY"
> >> >       depends on OF && HAS_IOMEM
> >> > diff --git a/drivers/phy/freescale/Makefile
> >> > b/drivers/phy/freescale/Makefile index
> 658eac7d0a622..a946b87905498
> >> > 100644
> >> > --- a/drivers/phy/freescale/Makefile
> >> > +++ b/drivers/phy/freescale/Makefile
> >> > @@ -1,4 +1,5 @@
> >> >  # SPDX-License-Identifier: GPL-2.0-only
> >> > +obj-$(CONFIG_PHY_FSL_IMX8MQ_HDPTX)   +=
> phy-fsl-imx8mq-hdptx.o
> >> >  obj-$(CONFIG_PHY_FSL_IMX8MQ_USB)     += phy-fsl-imx8mq-usb.o
> >> >  obj-$(CONFIG_PHY_MIXEL_LVDS_PHY)     +=
> >> phy-fsl-imx8qm-lvds-phy.o
> >> >  obj-$(CONFIG_PHY_MIXEL_MIPI_DPHY)    +=
> phy-fsl-imx8-mipi-dphy.o
> >> > diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-hdptx.c
> >> b/drivers/phy/freescale/phy-fsl-imx8mq-hdptx.c
> >> > new file mode 100644
> >> > index 0000000000000..7aac39df0ab02
> >> > --- /dev/null
> >> > +++ b/drivers/phy/freescale/phy-fsl-imx8mq-hdptx.c
> >> > @@ -0,0 +1,1337 @@
> >> > +// SPDX-License-Identifier: GPL-2.0-only
> >> > +/*
> >> > + * Cadence DP/HDMI PHY driver
> >> > + *
> >> > + * Copyright (C) 2022-2024 NXP Semiconductor, Inc.
> >> > + */
> >> > +#include <drm/bridge/cdns-mhdp-helper.h> #include <linux/clk.h>
> >> > +#include <linux/kernel.h> #include <linux/phy/phy.h> #include
> >> > +<linux/platform_device.h> #include <linux/io.h> #include
> >> > +<linux/unaligned.h>
> >> > +
> >> > +#define ADDR_PHY_AFE 0x80000
> >> > +
> >> > +/* PHY registers */
> >> > +#define CMN_SSM_BIAS_TMR                     0x0022
> >> > +#define CMN_PLLSM0_PLLEN_TMR                 0x0029
> >> > +#define CMN_PLLSM0_PLLPRE_TMR
> 0x002a
> >> > +#define CMN_PLLSM0_PLLVREF_TMR
> 0x002b
> >> > +#define CMN_PLLSM0_PLLLOCK_TMR
> 0x002c
> >> > +#define CMN_PLLSM0_USER_DEF_CTRL             0x002f
> >> > +#define CMN_PSM_CLK_CTRL                     0x0061
> >> > +#define CMN_CDIAG_REFCLK_CTRL
> 0x0062
> >> > +#define CMN_PLL0_VCOCAL_START
> 0x0081
> >> > +#define CMN_PLL0_VCOCAL_INIT_TMR             0x0084
> >> > +#define CMN_PLL0_VCOCAL_ITER_TMR             0x0085
> >> > +#define CMN_PLL0_INTDIV
> 0x0094
> >> > +#define CMN_PLL0_FRACDIV                     0x0095
> >> > +#define CMN_PLL0_HIGH_THR                    0x0096
> >> > +#define CMN_PLL0_DSM_DIAG                    0x0097
> >> > +#define CMN_PLL0_SS_CTRL2                    0x0099
> >> > +#define CMN_ICAL_INIT_TMR                    0x00c4
> >> > +#define CMN_ICAL_ITER_TMR                    0x00c5
> >> > +#define CMN_RXCAL_INIT_TMR                   0x00d4
> >> > +#define CMN_RXCAL_ITER_TMR                   0x00d5
> >> > +#define CMN_TXPUCAL_CTRL                     0x00e0
> >> > +#define CMN_TXPUCAL_INIT_TMR                 0x00e4
> >> > +#define CMN_TXPUCAL_ITER_TMR                 0x00e5
> >> > +#define CMN_TXPDCAL_CTRL                     0x00f0
> >> > +#define CMN_TXPDCAL_INIT_TMR                 0x00f4
> >> > +#define CMN_TXPDCAL_ITER_TMR                 0x00f5
> >> > +#define CMN_ICAL_ADJ_INIT_TMR
> 0x0102
> >> > +#define CMN_ICAL_ADJ_ITER_TMR
> 0x0103
> >> > +#define CMN_RX_ADJ_INIT_TMR                  0x0106
> >> > +#define CMN_RX_ADJ_ITER_TMR                  0x0107
> >> > +#define CMN_TXPU_ADJ_CTRL                    0x0108
> >> > +#define CMN_TXPU_ADJ_INIT_TMR
> 0x010a
> >> > +#define CMN_TXPU_ADJ_ITER_TMR
> 0x010b
> >> > +#define CMN_TXPD_ADJ_CTRL                    0x010c
> >> > +#define CMN_TXPD_ADJ_INIT_TMR
> 0x010e
> >> > +#define CMN_TXPD_ADJ_ITER_TMR
> 0x010f
> >> > +#define CMN_DIAG_PLL0_FBH_OVRD
> 0x01c0
> >> > +#define CMN_DIAG_PLL0_FBL_OVRD
> 0x01c1
> >> > +#define CMN_DIAG_PLL0_OVRD                   0x01c2
> >> > +#define CMN_DIAG_PLL0_TEST_MODE
> 0x01c4
> >> > +#define CMN_DIAG_PLL0_V2I_TUNE
> 0x01c5
> >> > +#define CMN_DIAG_PLL0_CP_TUNE
> 0x01c6
> >> > +#define CMN_DIAG_PLL0_LF_PROG
> 0x01c7
> >> > +#define CMN_DIAG_PLL0_PTATIS_TUNE1           0x01c8
> >> > +#define CMN_DIAG_PLL0_PTATIS_TUNE2           0x01c9
> >> > +#define CMN_DIAG_PLL0_INCLK_CTRL             0x01ca
> >> > +#define CMN_DIAG_PLL0_PXL_DIVH
> 0x01cb
> >> > +#define CMN_DIAG_PLL0_PXL_DIVL
> 0x01cc
> >> > +#define CMN_DIAG_HSCLK_SEL                   0x01e0
> >> > +#define CMN_DIAG_PER_CAL_ADJ                 0x01ec
> >> > +#define CMN_DIAG_CAL_CTRL                    0x01ed
> >> > +#define CMN_DIAG_ACYA
> 0x01ff
> >> > +#define XCVR_PSM_RCTRL
> 0x4001
> >> > +#define XCVR_PSM_CAL_TMR                     0x4002
> >> > +#define XCVR_PSM_A0IN_TMR                    0x4003
> >> > +#define TX_TXCC_CAL_SCLR_MULT_0
> 0x4047
> >> > +#define TX_TXCC_CPOST_MULT_00_0
> 0x404c
> >> > +#define XCVR_DIAG_PLLDRC_CTRL
> 0x40e0
> >> > +#define XCVR_DIAG_HSCLK_SEL                  0x40e1
> >> > +#define XCVR_DIAG_BIDI_CTRL                  0x40e8
> >> > +#define XCVR_DIAG_LANE_FCM_EN_MGN_TMR
> >> 0x40f2
> >> > +#define TX_PSC_A0                            0x4100
> >> > +#define TX_PSC_A1                            0x4101
> >> > +#define TX_PSC_A2                            0x4102
> >> > +#define TX_PSC_A3                            0x4103
> >> > +#define TX_RCVDET_EN_TMR                     0x4122
> >> > +#define TX_RCVDET_ST_TMR                     0x4123
> >> > +#define TX_DIAG_TX_CTRL
> 0x41e0
> >> > +#define TX_DIAG_TX_DRV
> 0x41e1
> >> > +#define TX_DIAG_BGREF_PREDRV_DELAY           0x41e7
> >> > +#define TX_DIAG_ACYA_0                               0x41ff
> >> > +#define TX_DIAG_ACYA_1                               0x43ff
> >> > +#define TX_DIAG_ACYA_2                               0x45ff
> >> > +#define TX_DIAG_ACYA_3                               0x47ff
> >> > +#define TX_ANA_CTRL_REG_1                    0x5020
> >> > +#define TX_ANA_CTRL_REG_2                    0x5021
> >> > +#define TX_DIG_CTRL_REG_1                    0x5023
> >> > +#define TX_DIG_CTRL_REG_2                    0x5024
> >> > +#define TXDA_CYA_AUXDA_CYA                   0x5025
> >> > +#define TX_ANA_CTRL_REG_3                    0x5026
> >> > +#define TX_ANA_CTRL_REG_4                    0x5027
> >> > +#define TX_ANA_CTRL_REG_5                    0x5029
> >> > +#define RX_PSC_A0                            0x8000
> >> > +#define RX_PSC_CAL                           0x8006
> >> > +#define PHY_HDP_MODE_CTRL                    0xc008
> >> > +#define PHY_HDP_CLK_CTL
> 0xc009
> >> > +#define PHY_ISO_CMN_CTRL                     0xc010
> >> > +#define PHY_PMA_CMN_CTRL1                    0xc800
> >> > +#define PHY_PMA_ISO_CMN_CTRL                 0xc810
> >> > +#define PHY_PMA_ISO_PLL_CTRL1
> 0xc812
> >> > +#define PHY_PMA_ISOLATION_CTRL
> 0xc81f
> >> > +
> >> > +/* PHY_HDP_CLK_CTL */
> >> > +#define PLL_DATA_RATE_CLK_DIV_MASK           GENMASK(15, 8)
> >> > +#define PLL_DATA_RATE_CLK_DIV_HBR            0x24
> >> > +#define PLL_DATA_RATE_CLK_DIV_HBR2           0x12
> >> > +#define PLL_CLK_EN_ACK                               BIT(3)
> >> > +#define PLL_CLK_EN                           BIT(2)
> >> > +#define PLL_READY                            BIT(1)
> >> > +#define PLL_EN                                       BIT(0)
> >> > +
> >> > +/* PHY_PMA_CMN_CTRL1 */
> >> > +#define CMA_REF_CLK_DIG_DIV_MASK             GENMASK(13,
> 12)
> >> > +#define CMA_REF_CLK_SEL_MASK                 GENMASK(6, 4)
> >> > +#define CMA_REF_CLK_RCV_EN_MASK
> BIT(3)
> >> > +#define CMA_REF_CLK_RCV_EN                   1
> >> > +#define CMN_READY                            BIT(0)
> >> > +
> >> > +/* PHY_PMA_ISO_PLL_CTRL1 */
> >> > +#define CMN_PLL0_CLK_DATART_DIV_MASK         GENMASK(7, 0)
> >> > +
> >> > +/* TX_DIAG_TX_DRV */
> >> > +#define TX_DRIVER_PROG_BOOST_ENABLE          BIT(10)
> >> > +#define TX_DRIVER_PROG_BOOST_LEVEL_MASK
> >> GENMASK(9, 8)
> >> > +#define TX_DRIVER_LDO_BG_DEPENDENT_REF_ENABLE
> BIT(7)
> >> > +#define TX_DRIVER_LDO_BANDGAP_REF_ENABLE     BIT(6)
> >> > +
> >> > +/* TX_TXCC_CAL_SCLR_MULT_0 */
> >> > +#define SCALED_RESISTOR_CALIBRATION_CODE_ADD BIT(8)
> >> > +#define RESISTOR_CAL_MULT_VAL_32_128         BIT(5)
> >> > +
> >> > +/* CMN_CDIAG_REFCLK_CTRL */
> >> > +#define DIG_REF_CLK_DIV_SCALER_MASK          GENMASK(14,
> 12)
> >> > +#define REFCLK_TERMINATION_EN_OVERRIDE_EN    BIT(7)
> >> > +#define REFCLK_TERMINATION_EN_OVERRIDE
> BIT(6)
> >> > +
> >> > +/* CMN_DIAG_HSCLK_SEL */
> >> > +#define HSCLK1_SEL_MASK
> >> GENMASK(5, 4)
> >> > +#define HSCLK0_SEL_MASK
> >> GENMASK(1, 0)
> >> > +#define HSCLK_PLL0_DIV2                              1
> >> > +
> >> > +/* XCVR_DIAG_HSCLK_SEL */
> >> > +#define HSCLK_SEL_MODE3_MASK                 GENMASK(13,
> 12)
> >> > +#define HSCLK_SEL_MODE3_HSCLK1                       1
> >> > +
> >> > +/* CMN_PLL0_VCOCAL_START */
> >> > +#define VCO_CALIB_CODE_START_POINT_VAL_MASK  GENMASK(8, 0)
> >> > +
> >> > +/* CMN_DIAG_PLL0_FBH_OVRD */
> >> > +#define PLL_FEEDBACK_DIV_HI_OVERRIDE_EN
> BIT(15)
> >> > +
> >> > +/* CMN_DIAG_PLL0_FBL_OVRD */
> >> > +#define PLL_FEEDBACK_DIV_LO_OVERRIDE_EN
> BIT(15)
> >> > +
> >> > +/* CMN_DIAG_PLL0_PXL_DIVH */
> >> > +#define PLL_PCLK_DIV_EN                              BIT(15)
> >> > +
> >> > +/* XCVR_DIAG_PLLDRC_CTRL */
> >> > +#define DPLL_CLK_SEL_MODE3                   BIT(14)
> >> > +#define DPLL_DATA_RATE_DIV_MODE3_MASK
> >> GENMASK(13, 12)
> >> > +
> >> > +/* TX_DIAG_TX_CTRL */
> >> > +#define TX_IF_SUBRATE_MODE3_MASK             GENMASK(7, 6)
> >> > +
> >> > +/* PHY_HDP_MODE_CTRL */
> >> > +#define POWER_STATE_A3_ACK                   BIT(7)
> >> > +#define POWER_STATE_A2_ACK                   BIT(6)
> >> > +#define POWER_STATE_A1_ACK                   BIT(5)
> >> > +#define POWER_STATE_A0_ACK                   BIT(4)
> >> > +#define POWER_STATE_A3                               BIT(3)
> >> > +#define POWER_STATE_A2                               BIT(2)
> >> > +#define POWER_STATE_A1                               BIT(1)
> >> > +#define POWER_STATE_A0                               BIT(0)
> >> > +
> >> > +/* PHY_PMA_ISO_CMN_CTRL */
> >> > +#define CMN_MACRO_PWR_EN_ACK                 BIT(5)
> >> > +
> >> > +#define KEEP_ALIVE           0x18
> >> > +
> >> > +#define REF_CLK_27MHZ                27000000
> >> > +
> >> > +/* HDMI TX clock control settings */ struct hdptx_hdmi_ctrl {
> >> > +     u32 pixel_clk_freq_min;
> >> > +     u32 pixel_clk_freq_max;
> >> > +     u32 feedback_factor;
> >> > +     u32 data_range_kbps_min;
> >> > +     u32 data_range_kbps_max;
> >> > +     u32 cmnda_pll0_ip_div;
> >> > +     u32 cmn_ref_clk_dig_div;
> >> > +     u32 ref_clk_divider_scaler;
> >> > +     u32 pll_fb_div_total;
> >> > +     u32 cmnda_pll0_fb_div_low;
> >> > +     u32 cmnda_pll0_fb_div_high;
> >> > +     u32 pixel_div_total;
> >> > +     u32 cmnda_pll0_pxdiv_low;
> >> > +     u32 cmnda_pll0_pxdiv_high;
> >> > +     u32 vco_freq_min;
> >> > +     u32 vco_freq_max;
> >> > +     u32 vco_ring_select;
> >> > +     u32 cmnda_hs_clk_0_sel;
> >> > +     u32 cmnda_hs_clk_1_sel;
> >> > +     u32 hsclk_div_at_xcvr;
> >> > +     u32 hsclk_div_tx_sub_rate;
> >> > +     u32 cmnda_pll0_hs_sym_div_sel;
> >> > +     u32 cmnda_pll0_clk_freq_min;
> >> > +     u32 cmnda_pll0_clk_freq_max;
> >> > +};
> >> > +
> >> > +struct cdns_hdptx_phy {
> >> > +     struct cdns_mhdp_base base;
> >> > +
> >> > +     void __iomem *regs;     /* DPTX registers base */
> >> > +     struct device *dev;
> >> > +     struct phy *phy;
> >> > +     struct clk *ref_clk, *apb_clk;
> >> > +     u32 ref_clk_rate;
> >> > +     bool power_up;
> >> > +     union {
> >> > +             struct phy_configure_opts_hdmi hdmi;
> >> > +             struct phy_configure_opts_dp dp;
> >> > +     };
> >> > +};
> >> > +
> >> > +/* HDMI TX clock control settings, pixel clock is output */ static
> >> > +const struct hdptx_hdmi_ctrl pixel_clk_output_ctrl_table[] = {
> >> > +/*Minclk  Maxclk Fdbak  DR_min   DR_max  ip_d  dig  DS
> Totl
> >> */
> >> > +{ 27000,  27000, 1000,  270000,  270000, 0x03, 0x1, 0x1,  240,
> >> > +0x0bc,
> >> 0x030,  80, 0x026, 0x026, 2160000, 2160000, 0, 2, 2, 2, 4, 0x3,
> >> 27000, 27000},
> >> > +{ 27000,  27000, 1250,  337500,  337500, 0x03, 0x1, 0x1,  300,
> >> > +0x0ec,
> >> 0x03c, 100, 0x030, 0x030, 2700000, 2700000, 0, 2, 2, 2, 4, 0x3,
> >> 33750, 33750},
> >> > +{ 27000,  27000, 1500,  405000,  405000, 0x03, 0x1, 0x1,  360,
> >> > +0x11c,
> >> 0x048, 120, 0x03a, 0x03a, 3240000, 3240000, 0, 2, 2, 2, 4, 0x3,
> >> 40500, 40500},
> >> > +{ 27000,  27000, 2000,  540000,  540000, 0x03, 0x1, 0x1,  240,
> >> > +0x0bc,
> >> 0x030,  80, 0x026, 0x026, 2160000, 2160000, 0, 2, 2, 2, 4, 0x2,
> >> 54000, 54000},
> >> > +{ 54000,  54000, 1000,  540000,  540000, 0x03, 0x1, 0x1,  480,
> >> > +0x17c,
> >> 0x060,  80, 0x026, 0x026, 4320000, 4320000, 1, 2, 2, 2, 4, 0x3,
> >> 54000, 54000},
> >> > +{ 54000,  54000, 1250,  675000,  675000, 0x04, 0x1, 0x1,  400,
> >> > +0x13c,
> >> 0x050,  50, 0x017, 0x017, 2700000, 2700000, 0, 1, 1, 2, 4, 0x2,
> >> 67500, 67500},
> >> > +{ 54000,  54000, 1500,  810000,  810000, 0x04, 0x1, 0x1,  480,
> >> > +0x17c,
> >> 0x060,  60, 0x01c, 0x01c, 3240000, 3240000, 0, 2, 2, 2, 2, 0x2,
> >> 81000, 81000},
> >> > +{ 54000,  54000, 2000, 1080000, 1080000, 0x03, 0x1, 0x1,  240,
> >> > +0x0bc,
> >> 0x030,  40, 0x012, 0x012, 2160000, 2160000, 0, 2, 2, 2, 1, 0x1,
> >> 108000, 108000},
> >> > +{ 74250,  74250, 1000,  742500,  742500, 0x03, 0x1, 0x1,  660,
> >> > +0x20c,
> >> 0x084,  80, 0x026, 0x026, 5940000, 5940000, 1, 2, 2, 2, 4, 0x3,
> >> 74250, 74250},
> >> > +{ 74250,  74250, 1250,  928125,  928125, 0x04, 0x1, 0x1,  550,
> >> > +0x1b4,
> >> 0x06e,  50, 0x017, 0x017, 3712500, 3712500, 1, 1, 1, 2, 4, 0x2,
> >> 92812, 92812},
> >> > +{ 74250,  74250, 1500, 1113750, 1113750, 0x04, 0x1, 0x1,  660,
> >> > +0x20c,
> >> 0x084,  60, 0x01c, 0x01c, 4455000, 4455000, 1, 2, 2, 2, 2, 0x2,
> >> 111375, 111375},
> >> > +{ 74250,  74250, 2000, 1485000, 1485000, 0x03, 0x1, 0x1,  330,
> >> > +0x104,
> >> 0x042,  40, 0x012, 0x012, 2970000, 2970000, 0, 2, 2, 2, 1, 0x1,
> >> 148500, 148500},
> >> > +{ 99000,  99000, 1000,  990000,  990000, 0x03, 0x1, 0x1,  440,
> >> > +0x15c,
> >> 0x058,  40, 0x012, 0x012, 3960000, 3960000, 1, 2, 2, 2, 2, 0x2,
> >> 99000, 99000},
> >> > +{ 99000,  99000, 1250, 1237500, 1237500, 0x03, 0x1, 0x1,  275,
> >> > +0x0d8,
> >> 0x037,  25, 0x00b, 0x00a, 2475000, 2475000, 0, 1, 1, 2, 2, 0x1,
> >> 123750, 123750},
> >> > +{ 99000,  99000, 1500, 1485000, 1485000, 0x03, 0x1, 0x1,  330,
> >> > +0x104,
> >> 0x042,  30, 0x00d, 0x00d, 2970000, 2970000, 0, 2, 2, 2, 1, 0x1,
> >> 148500, 148500},
> >> > +{ 99000,  99000, 2000, 1980000, 1980000, 0x03, 0x1, 0x1,  440,
> >> > +0x15c,
> >> 0x058,  40, 0x012, 0x012, 3960000, 3960000, 1, 2, 2, 2, 1, 0x1,
> >> 198000, 198000},
> >> > +{148500, 148500, 1000, 1485000, 1485000, 0x03, 0x1, 0x1,  660,
> >> > +0x20c,
> >> 0x084,  40, 0x012, 0x012, 5940000, 5940000, 1, 2, 2, 2, 2, 0x2,
> >> 148500, 148500},
> >> > +{148500, 148500, 1250, 1856250, 1856250, 0x04, 0x1, 0x1,  550,
> >> > +0x1b4,
> >> 0x06e,  25, 0x00b, 0x00a, 3712500, 3712500, 1, 1, 1, 2, 2, 0x1,
> >> 185625, 185625},
> >> > +{148500, 148500, 1500, 2227500, 2227500, 0x03, 0x1, 0x1,  495,
> >> > +0x188,
> >> 0x063,  30, 0x00d, 0x00d, 4455000, 4455000, 1, 1, 1, 2, 2, 0x1,
> >> 222750, 222750},
> >> > +{148500, 148500, 2000, 2970000, 2970000, 0x03, 0x1, 0x1,  660,
> >> > +0x20c,
> >> 0x084,  40, 0x012, 0x012, 5940000, 5940000, 1, 2, 2, 2, 1, 0x1,
> >> 297000, 297000},
> >> > +{198000, 198000, 1000, 1980000, 1980000, 0x03, 0x1, 0x1,  220,
> >> > +0x0ac,
> >> 0x02c,  10, 0x003, 0x003, 1980000, 1980000, 0, 1, 1, 2, 1, 0x0,
> >> 198000, 198000},
> >> > +{198000, 198000, 1250, 2475000, 2475000, 0x03, 0x1, 0x1,  550,
> >> > +0x1b4,
> >> 0x06e,  25, 0x00b, 0x00a, 4950000, 4950000, 1, 1, 1, 2, 2, 0x1,
> >> 247500, 247500},
> >> > +{198000, 198000, 1500, 2970000, 2970000, 0x03, 0x1, 0x1,  330,
> >> > +0x104,
> >> 0x042,  15, 0x006, 0x005, 2970000, 2970000, 0, 1, 1, 2, 1, 0x0,
> >> 297000, 297000},
> >> > +{198000, 198000, 2000, 3960000, 3960000, 0x03, 0x1, 0x1,  440,
> >> > +0x15c,
> >> 0x058,  20, 0x008, 0x008, 3960000, 3960000, 1, 1, 1, 2, 1, 0x0,
> >> 396000, 396000},
> >> > +{297000, 297000, 1000, 2970000, 2970000, 0x03, 0x1, 0x1,  330,
> >> > +0x104,
> >> 0x042,  10, 0x003, 0x003, 2970000, 2970000, 0, 1, 1, 2, 1, 0x0,
> >> 297000, 297000},
> >> > +{297000, 297000, 1500, 4455000, 4455000, 0x03, 0x1, 0x1,  495,
> >> > +0x188,
> >> 0x063,  15, 0x006, 0x005, 4455000, 4455000, 1, 1, 1, 2, 1, 0x0,
> >> 445500, 445500},
> >> > +{297000, 297000, 2000, 5940000, 5940000, 0x03, 0x1, 0x1,  660,
> >> > +0x20c,
> >> 0x084,  20, 0x008, 0x008, 5940000, 5940000, 1, 1, 1, 2, 1, 0x0,
> >> 594000, 594000},
> >> > +{594000, 594000, 1000, 5940000, 5940000, 0x03, 0x1, 0x1,  660,
> >> > +0x20c,
> >> 0x084,  10, 0x003, 0x003, 5940000, 5940000, 1, 1, 1, 2, 1, 0x0,
> >> 594000, 594000},
> >> > +{594000, 594000,  750, 4455000, 4455000, 0x03, 0x1, 0x1,  495,
> >> > +0x188,
> >> 0x063,  10, 0x003, 0x003, 4455000, 4455000, 1, 1, 1, 2, 1, 0x0,
> >> 445500, 445500},
> >> > +{594000, 594000,  625, 3712500, 3712500, 0x04, 0x1, 0x1,  550,
> >> > +0x1b4,
> >> 0x06e,  10, 0x003, 0x003, 3712500, 3712500, 1, 1, 1, 2, 1, 0x0,
> >> 371250, 371250},
> >> > +{594000, 594000,  500, 2970000, 2970000, 0x03, 0x1, 0x1,  660,
> >> > +0x20c,
> >> 0x084,  10, 0x003, 0x003, 5940000, 5940000, 1, 1, 1, 2, 2, 0x1,
> >> 297000, 297000},
> >>
> >> Is there a chance that this table or a part of it can be simplified
> >> or calculated at runtime? For example, I think in all the cases
> >> minclk = maxclk and DR_min = DR_max, dig and DS are always 0x1, etc.
> >
> >The calculation method used to generate this table is not publicly disclosed
> by the vendor.
> 
> I just pointed out how to simplify the table. If the exact method is not known,
> please apply some common sense to reduce duplication.

I'll try to make these tables as simple as possible.

Best Regards
Sandor

> 
> >
> >This PHY operates in two modes: one where the pixel clock is generated
> >internally by the PHY, and another where the pixel clock is input externally.
> >The table above shows the configuration where the pixel clock is
> >generated internally, It is the PHY work mode for i.MX8MQ HDMI PHY.
> >When the pixel clock is input externally, the values for minclk, maxclk,
> DR_min, DR_max, dig, and DS are different.
> >This operating mode is used in other SOCs.
> 
> Make use of it when there is a need for that. You might have different tables
> or platform-specific code instead.
> 
> 
> >
> >>
> >> > +};
> >> > +
> >> > +/* HDMI TX PLL tuning settings */
> >> > +struct hdptx_hdmi_pll_tuning {
> >> > +     u32 vco_freq_bin;
> >> > +     u32 vco_freq_min;
> >> > +     u32 vco_freq_max;
> >> > +     u32 volt_to_current_coarse;
> >> > +     u32 volt_to_current;
> >> > +     u32 ndac_ctrl;
> >> > +     u32 pmos_ctrl;
> >> > +     u32 ptat_ndac_ctrl;
> >> > +     u32 feedback_div_total;
> >> > +     u32 charge_pump_gain;
> >> > +     u32 coarse_code;
> >> > +     u32 v2i_code;
> >> > +     u32 vco_cal_code;
> >> > +};
> >> > +
> >> > +/* HDMI TX PLL tuning settings, pixel clock is output */ static
> >> > +const struct hdptx_hdmi_pll_tuning pixel_clk_output_pll_table[] =
> >> > +{ /*bin VCO_freq min/max  coar  cod NDAC  PMOS PTAT div-T
> P-Gain
> >> Coa V2I CAL */
> >> > +{  1, 1980000, 1980000, 0x4, 0x3, 0x0, 0x09, 0x09, 220, 0x42, 160,
> >> > +5,
> >> 183 },
> >> > +{  2, 2160000, 2160000, 0x4, 0x3, 0x0, 0x09, 0x09, 240, 0x42, 166,
> >> > +6,
> >> 208 },
> >> > +{  3, 2475000, 2475000, 0x5, 0x3, 0x1, 0x00, 0x07, 275, 0x42, 167,
> >> > +6,
> >> 209 },
> >> > +{  4, 2700000, 2700000, 0x5, 0x3, 0x1, 0x00, 0x07, 300, 0x42, 188,
> >> > +6,
> >> 230 },
> >> > +{  4, 2700000, 2700000, 0x5, 0x3, 0x1, 0x00, 0x07, 400, 0x4c, 188,
> >> > +6,
> >> 230 },
> >> > +{  5, 2970000, 2970000, 0x6, 0x3, 0x1, 0x00, 0x07, 330, 0x42, 183,
> >> > +6,
> >> 225 },
> >> > +{  6, 3240000, 3240000, 0x6, 0x3, 0x1, 0x00, 0x07, 360, 0x42, 203,
> >> > +7,
> >> 256 },
> >> > +{  6, 3240000, 3240000, 0x6, 0x3, 0x1, 0x00, 0x07, 480, 0x4c, 203,
> >> > +7,
> >> 256 },
> >> > +{  7, 3712500, 3712500, 0x4, 0x3, 0x0, 0x07, 0x0F, 550, 0x4c, 212,
> >> > +7, 257 }, {  8, 3960000, 3960000, 0x5, 0x3, 0x0, 0x07, 0x0F, 440,
> >> > +0x42, 184, 6, 226 }, {  9, 4320000, 4320000, 0x5, 0x3, 0x1, 0x07,
> >> > +0x0F, 480, 0x42, 205, 7, 258 }, { 10, 4455000, 4455000, 0x5, 0x3,
> >> > +0x0, 0x07, 0x0F, 495, 0x42, 219, 7, 272 }, { 10, 4455000, 4455000,
> >> > +0x5, 0x3, 0x0, 0x07, 0x0F, 660, 0x4c, 219, 7, 272 }, { 11,
> >> > +4950000, 4950000, 0x6, 0x3, 0x1, 0x00, 0x07, 550, 0x42, 213, 7,
> >> > +258 }, { 12, 5940000, 5940000, 0x7, 0x3, 0x1, 0x00, 0x07, 660,
> >> > +0x42, 244, 8, 292 }, };
> >> > +
> >> > +enum dp_link_rate {
> >> > +     RATE_1_6 = 162000,
> >> > +     RATE_2_1 = 216000,
> >> > +     RATE_2_4 = 243000,
> >> > +     RATE_2_7 = 270000,
> >> > +     RATE_3_2 = 324000,
> >> > +     RATE_4_3 = 432000,
> >> > +     RATE_5_4 = 540000,
> >> > +};
> >> > +
> >> > +#define MAX_LINK_RATE RATE_5_4
> >> > +
> >> > +struct phy_pll_reg {
> >> > +     u16 val[7];
> >> > +     u32 addr;
> >> > +};
> >> > +
> >> > +static const struct phy_pll_reg phy_pll_27m_cfg[] = {
> >> > +     /*  1.62    2.16    2.43    2.7     3.24    4.32    5.4
> >> register address */
> >> > +     {{ 0x010e, 0x010e, 0x010e, 0x010e, 0x010e, 0x010e, 0x010e },
> >> CMN_PLL0_VCOCAL_INIT_TMR },
> >> > +     {{ 0x001b, 0x001b, 0x001b, 0x001b, 0x001b, 0x001b, 0x001b },
> >> CMN_PLL0_VCOCAL_ITER_TMR },
> >> > +     {{ 0x30b9, 0x3087, 0x3096, 0x30b4, 0x30b9, 0x3087, 0x30b4 },
> >> CMN_PLL0_VCOCAL_START },
> >> > +     {{ 0x0077, 0x009f, 0x00b3, 0x00c7, 0x0077, 0x009f, 0x00c7 },
> >> CMN_PLL0_INTDIV },
> >> > +     {{ 0xf9da, 0xf7cd, 0xf6c7, 0xf5c1, 0xf9da, 0xf7cd, 0xf5c1 },
> >> CMN_PLL0_FRACDIV },
> >> > +     {{ 0x001e, 0x0028, 0x002d, 0x0032, 0x001e, 0x0028, 0x0032 },
> >> CMN_PLL0_HIGH_THR },
> >> > +     {{ 0x0020, 0x0020, 0x0020, 0x0020, 0x0020, 0x0020, 0x0020 },
> >> CMN_PLL0_DSM_DIAG },
> >> > +     {{ 0x0000, 0x1000, 0x1000, 0x1000, 0x0000, 0x1000, 0x1000 },
> >> CMN_PLLSM0_USER_DEF_CTRL },
> >> > +     {{ 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000 },
> >> CMN_DIAG_PLL0_OVRD },
> >> > +     {{ 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000 },
> >> CMN_DIAG_PLL0_FBH_OVRD },
> >> > +     {{ 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000 },
> >> CMN_DIAG_PLL0_FBL_OVRD },
> >> > +     {{ 0x0006, 0x0007, 0x0007, 0x0007, 0x0006, 0x0007, 0x0007 },
> >> CMN_DIAG_PLL0_V2I_TUNE },
> >> > +     {{ 0x0043, 0x0043, 0x0043, 0x0042, 0x0043, 0x0043, 0x0042 },
> >> CMN_DIAG_PLL0_CP_TUNE },
> >> > +     {{ 0x0008, 0x0008, 0x0008, 0x0008, 0x0008, 0x0008, 0x0008 },
> >> CMN_DIAG_PLL0_LF_PROG },
> >> > +     {{ 0x0100, 0x0001, 0x0001, 0x0001, 0x0100, 0x0001, 0x0001 },
> >> CMN_DIAG_PLL0_PTATIS_TUNE1 },
> >> > +     {{ 0x0007, 0x0001, 0x0001, 0x0001, 0x0007, 0x0001, 0x0001 },
> >> CMN_DIAG_PLL0_PTATIS_TUNE2 },
> >> > +     {{ 0x0020, 0x0020, 0x0020, 0x0020, 0x0020, 0x0020, 0x0020 },
> >> CMN_DIAG_PLL0_TEST_MODE},
> >> > +     {{ 0x0016, 0x0016, 0x0016, 0x0016, 0x0016, 0x0016, 0x0016 },
> >> CMN_PSM_CLK_CTRL }
> >> > +};
> >> > +
> >> > +static int dp_link_rate_index(u32 rate) {
> >> > +     switch (rate) {
> >> > +     case RATE_1_6:
> >> > +             return 0;
> >> > +     case RATE_2_1:
> >> > +             return 1;
> >> > +     case RATE_2_4:
> >> > +             return 2;
> >> > +     case RATE_2_7:
> >> > +             return 3;
> >> > +     case RATE_3_2:
> >> > +             return 4;
> >> > +     case RATE_4_3:
> >> > +             return 5;
> >> > +     case RATE_5_4:
> >>
> >> If this is the only usage, please drop the enum.
> >
> >OK.
> >
> >>
> >> > +     default:
> >> > +             return 6;
> >>
> >> default should be -EINVAL
> >>
> >
> >OK.
> >
> >>
> >> > +     }
> >> > +}
> >> > +
> >> > +static int cdns_phy_reg_write(struct cdns_hdptx_phy *cdns_phy, u32
> >> > +addr,
> >> u32 val)
> >> > +{
> >> > +     return cdns_mhdp_reg_write(&cdns_phy->base, ADDR_PHY_AFE
> +
> >> (addr << 2), val);
> >> > +}
> >> > +
> >> > +static u32 cdns_phy_reg_read(struct cdns_hdptx_phy *cdns_phy, u32
> >> addr)
> >> > +{
> >> > +     u32 reg32;
> >> > +
> >> > +     cdns_mhdp_reg_read(&cdns_phy->base, ADDR_PHY_AFE + (addr
> <<
> >> 2), &reg32);
> >> > +
> >> > +     return reg32;
> >> > +}
> >> > +
> >> > +static void hdptx_dp_aux_cfg(struct cdns_hdptx_phy *cdns_phy) {
> >> > +     /* Power up Aux */
> >> > +     cdns_phy_reg_write(cdns_phy, TXDA_CYA_AUXDA_CYA, 1);
> >> > +
> >> > +     cdns_phy_reg_write(cdns_phy, TX_DIG_CTRL_REG_1, 0x3);
> >> > +     ndelay(150);
> >> > +     cdns_phy_reg_write(cdns_phy, TX_DIG_CTRL_REG_2, 36);
> >> > +     ndelay(150);
> >> > +     cdns_phy_reg_write(cdns_phy, TX_ANA_CTRL_REG_2, 0x0100);
> >> > +     ndelay(150);
> >> > +     cdns_phy_reg_write(cdns_phy, TX_ANA_CTRL_REG_2, 0x0300);
> >> > +     ndelay(150);
> >> > +     cdns_phy_reg_write(cdns_phy, TX_ANA_CTRL_REG_3, 0x0000);
> >> > +     ndelay(150);
> >> > +     cdns_phy_reg_write(cdns_phy, TX_ANA_CTRL_REG_1, 0x2008);
> >> > +     ndelay(150);
> >> > +     cdns_phy_reg_write(cdns_phy, TX_ANA_CTRL_REG_1, 0x2018);
> >> > +     ndelay(150);
> >> > +     cdns_phy_reg_write(cdns_phy, TX_ANA_CTRL_REG_1, 0xa018);
> >> > +     ndelay(150);
> >> > +     cdns_phy_reg_write(cdns_phy, TX_ANA_CTRL_REG_2, 0x030c);
> >> > +     ndelay(150);
> >> > +     cdns_phy_reg_write(cdns_phy, TX_ANA_CTRL_REG_5, 0x0000);
> >> > +     ndelay(150);
> >> > +     cdns_phy_reg_write(cdns_phy, TX_ANA_CTRL_REG_4, 0x1001);
> >> > +     ndelay(150);
> >> > +     cdns_phy_reg_write(cdns_phy, TX_ANA_CTRL_REG_1, 0xa098);
> >> > +     ndelay(150);
> >> > +     cdns_phy_reg_write(cdns_phy, TX_ANA_CTRL_REG_1, 0xa198);
> >> > +     ndelay(150);
> >> > +     cdns_phy_reg_write(cdns_phy, TX_ANA_CTRL_REG_2, 0x030d);
> >> > +     ndelay(150);
> >> > +     cdns_phy_reg_write(cdns_phy, TX_ANA_CTRL_REG_2, 0x030f); }
> >> > +
> >> > +/* PMA common configuration for 27MHz */ static void
> >> > +hdptx_dp_phy_pma_cmn_cfg_27mhz(struct cdns_hdptx_phy
> >> *cdns_phy)
> >> > +{
> >> > +     u32 num_lanes = cdns_phy->dp.lanes;
> >> > +     u16 val;
> >> > +     int k;
> >> > +
> >> > +     /* Enable PMA input ref clk(CMN_REF_CLK_RCV_EN) */
> >> > +     val = cdns_phy_reg_read(cdns_phy, PHY_PMA_CMN_CTRL1);
> >> > +     val &= ~CMA_REF_CLK_RCV_EN_MASK;
> >> > +     val |= FIELD_PREP(CMA_REF_CLK_RCV_EN_MASK,
> >> CMA_REF_CLK_RCV_EN);
> >> > +     cdns_phy_reg_write(cdns_phy, PHY_PMA_CMN_CTRL1, val);
> >> > +
> >> > +     /* Startup state machine registers */
> >> > +     cdns_phy_reg_write(cdns_phy, CMN_SSM_BIAS_TMR, 0x0087);
> >> > +     cdns_phy_reg_write(cdns_phy, CMN_PLLSM0_PLLEN_TMR,
> >> 0x001b);
> >> > +     cdns_phy_reg_write(cdns_phy, CMN_PLLSM0_PLLPRE_TMR,
> >> 0x0036);
> >> > +     cdns_phy_reg_write(cdns_phy, CMN_PLLSM0_PLLVREF_TMR,
> >> 0x001b);
> >> > +     cdns_phy_reg_write(cdns_phy, CMN_PLLSM0_PLLLOCK_TMR,
> >> 0x006c);
> >> > +
> >> > +     /* Current calibration registers */
> >> > +     cdns_phy_reg_write(cdns_phy, CMN_ICAL_INIT_TMR, 0x0044);
> >> > +     cdns_phy_reg_write(cdns_phy, CMN_ICAL_ITER_TMR, 0x0006);
> >> > +     cdns_phy_reg_write(cdns_phy, CMN_ICAL_ADJ_INIT_TMR,
> >> 0x0022);
> >> > +     cdns_phy_reg_write(cdns_phy, CMN_ICAL_ADJ_ITER_TMR,
> >> 0x0006);
> >> > +
> >> > +     /* Resistor calibration registers */
> >> > +     cdns_phy_reg_write(cdns_phy, CMN_TXPUCAL_INIT_TMR,
> 0x0022);
> >> > +     cdns_phy_reg_write(cdns_phy, CMN_TXPUCAL_ITER_TMR,
> >> 0x0006);
> >> > +     cdns_phy_reg_write(cdns_phy, CMN_TXPU_ADJ_INIT_TMR,
> >> 0x0022);
> >> > +     cdns_phy_reg_write(cdns_phy, CMN_TXPU_ADJ_ITER_TMR,
> >> 0x0006);
> >> > +     cdns_phy_reg_write(cdns_phy, CMN_TXPDCAL_INIT_TMR,
> 0x0022);
> >> > +     cdns_phy_reg_write(cdns_phy, CMN_TXPDCAL_ITER_TMR,
> >> 0x0006);
> >> > +     cdns_phy_reg_write(cdns_phy, CMN_TXPD_ADJ_INIT_TMR,
> >> 0x0022);
> >> > +     cdns_phy_reg_write(cdns_phy, CMN_TXPD_ADJ_ITER_TMR,
> >> 0x0006);
> >> > +     cdns_phy_reg_write(cdns_phy, CMN_RXCAL_INIT_TMR,
> 0x0022);
> >> > +     cdns_phy_reg_write(cdns_phy, CMN_RXCAL_ITER_TMR,
> 0x0006);
> >> > +     cdns_phy_reg_write(cdns_phy, CMN_RX_ADJ_INIT_TMR,
> 0x0022);
> >> > +     cdns_phy_reg_write(cdns_phy, CMN_RX_ADJ_ITER_TMR,
> 0x0006);
> >> > +
> >> > +     for (k = 0; k < num_lanes; k = k + 1) {
> >> > +             /* Power state machine registers */
> >> > +             cdns_phy_reg_write(cdns_phy, XCVR_PSM_CAL_TMR
> |
> >> (k << 9), 0x016d);
> >> > +             cdns_phy_reg_write(cdns_phy, XCVR_PSM_A0IN_TMR
> |
> >> (k << 9), 0x016d);
> >> > +             /* Transceiver control and diagnostic registers */
> >> > +             cdns_phy_reg_write(cdns_phy,
> >> XCVR_DIAG_LANE_FCM_EN_MGN_TMR | (k << 9), 0x00a2);
> >> > +             cdns_phy_reg_write(cdns_phy,
> >> TX_DIAG_BGREF_PREDRV_DELAY | (k << 9), 0x0097);
> >> > +             /* Transmitter receiver detect registers */
> >> > +             cdns_phy_reg_write(cdns_phy, TX_RCVDET_EN_TMR |
> (k
> >> << 9), 0x0a8c);
> >> > +             cdns_phy_reg_write(cdns_phy, TX_RCVDET_ST_TMR |
> (k
> >> << 9), 0x0036);
> >> > +     }
> >> > +
> >> > +     cdns_phy_reg_write(cdns_phy, TX_DIAG_ACYA_0, 1);
> >> > +     cdns_phy_reg_write(cdns_phy, TX_DIAG_ACYA_1, 1);
> >> > +     cdns_phy_reg_write(cdns_phy, TX_DIAG_ACYA_2, 1);
> >> > +     cdns_phy_reg_write(cdns_phy, TX_DIAG_ACYA_3, 1); }
> >> > +
> >> > +static void hdptx_dp_phy_pma_cmn_pll0_27mhz(struct
> cdns_hdptx_phy
> >> *cdns_phy)
> >> > +{
> >> > +     u32 num_lanes = cdns_phy->dp.lanes;
> >> > +     u32 link_rate = cdns_phy->dp.link_rate;
> >> > +     u16 val;
> >> > +     int index, i, k;
> >> > +
> >> > +     /* DP PLL data rate 0/1 clock divider value */
> >> > +     val = cdns_phy_reg_read(cdns_phy, PHY_HDP_CLK_CTL);
> >> > +     val &= ~PLL_DATA_RATE_CLK_DIV_MASK;
> >> > +     if (link_rate <= RATE_2_7)
> >> > +             val |= FIELD_PREP(PLL_DATA_RATE_CLK_DIV_MASK,
> >> > +                               PLL_DATA_RATE_CLK_DIV_HBR);
> >> > +     else
> >> > +             val |= FIELD_PREP(PLL_DATA_RATE_CLK_DIV_MASK,
> >> > +
> PLL_DATA_RATE_CLK_DIV_HBR2);
> >> > +     cdns_phy_reg_write(cdns_phy, PHY_HDP_CLK_CTL, val);
> >> > +
> >> > +     /* High speed clock 0/1 div */
> >> > +     val = cdns_phy_reg_read(cdns_phy, CMN_DIAG_HSCLK_SEL);
> >> > +     val &= ~(HSCLK1_SEL_MASK | HSCLK0_SEL_MASK);
> >> > +     if (link_rate <= RATE_2_7) {
> >> > +             val |= FIELD_PREP(HSCLK1_SEL_MASK,
> >> HSCLK_PLL0_DIV2);
> >> > +             val |= FIELD_PREP(HSCLK0_SEL_MASK,
> >> HSCLK_PLL0_DIV2);
> >> > +     }
> >> > +     cdns_phy_reg_write(cdns_phy, CMN_DIAG_HSCLK_SEL, val);
> >> > +
> >> > +     for (k = 0; k < num_lanes; k++) {
> >> > +             val = cdns_phy_reg_read(cdns_phy,
> >> (XCVR_DIAG_HSCLK_SEL | (k << 9)));
> >> > +             val &= ~HSCLK_SEL_MODE3_MASK;
> >> > +             if (link_rate <= RATE_2_7)
> >> > +                     val |=
> FIELD_PREP(HSCLK_SEL_MODE3_MASK,
> >> HSCLK_SEL_MODE3_HSCLK1);
> >> > +             cdns_phy_reg_write(cdns_phy,
> (XCVR_DIAG_HSCLK_SEL |
> >> (k << 9)), val);
> >> > +     }
> >> > +
> >> > +     /* DP PHY PLL 27MHz configuration */
> >> > +     index = dp_link_rate_index(link_rate);
> >> > +     for (i = 0; i < ARRAY_SIZE(phy_pll_27m_cfg); i++)
> >> > +             cdns_phy_reg_write(cdns_phy,
> phy_pll_27m_cfg[i].addr,
> >> > +                                phy_pll_27m_cfg[i].val[index]);
> >> > +
> >> > +     /* Transceiver control and diagnostic registers */
> >> > +     for (k = 0; k < num_lanes; k++) {
> >> > +             val = cdns_phy_reg_read(cdns_phy,
> >> (XCVR_DIAG_PLLDRC_CTRL | (k << 9)));
> >> > +             val &= ~(DPLL_DATA_RATE_DIV_MODE3_MASK |
> >> DPLL_CLK_SEL_MODE3);
> >> > +             if (link_rate <= RATE_2_7)
> >> > +                     val |=
> >> FIELD_PREP(DPLL_DATA_RATE_DIV_MODE3_MASK, 2);
> >> > +             else
> >> > +                     val |=
> >> FIELD_PREP(DPLL_DATA_RATE_DIV_MODE3_MASK, 1);
> >> > +             cdns_phy_reg_write(cdns_phy,
> >> (XCVR_DIAG_PLLDRC_CTRL | (k << 9)), val);
> >> > +     }
> >> > +
> >> > +     for (k = 0; k < num_lanes; k = k + 1) {
> >> > +
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
