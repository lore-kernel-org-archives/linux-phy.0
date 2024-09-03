Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB265CD3443
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 15:36:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I98FcY6ZjVXNsoqsFvMavheggjl1YP0CMBJ5Yt+rZ1U=; b=Mq/TdnmhEgGdQK
	JJd0AlvqwLZv98lXnmdUZzlEvkLd4LffQciDL77S/PjY+TmnyoJAQBonnKKbaGBUAsOc0E3f5bbNs
	KlfCk6VEqAbQ5m7CMb4vNiBNQHbE/hY4mvXkpjcxCcLGNfo0vxv/ZPmXC1VECMLuOLaDBN9M/rsGH
	5nr/eBoCnZRwjANocQgwqBfj5nvMzPD/tnd41S691ph+c60Iv1f7PAta6gIp4IiA3e7+QoOVzSKxw
	Ika7DDhaUhtSVN8HbJpOEagF66PDJMsuxmpnbM5c0nJdg9ppJLhfhvh2H9Rp5UipSKZkWLDmccSgP
	y0qkZhAyeFE0OfbCI46Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slVZf-00000000thY-1Tbt;
	Tue, 03 Sep 2024 15:36:07 +0000
Received: from mail-japaneastazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c405::1] helo=TY3P286CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slVUf-00000000ryD-3TlS;
	Tue, 03 Sep 2024 15:31:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w2hKPKSwvTxdb7cqpyG9JCUy07KCrU6HkxV4j1xQbstInulAuytOYALDOZ7qqT4lNVhJs6BPXaJFjI2Ajx/R/fzh7OIPik3E7UQXaqBVzvMh+VpLoKybV2az03z/dXlZ/sMJj14XFGJxDXKZ05iTSJaG2TvzY/duHwnAgLkVPWAdo59slsMMCdlZlWFHl6K/vbhdaIbjO74XRnxQk7JnpqUVtP3kGLxfhMjvIsF5Vq9+8JS70EViQADJVD6R9JPuIvJOVwMQgJIrH3tRZ7oYSFwh6zn/WYcHaPA/Uq6o9QSBpSMxScQ53U3oYJk3lGJ3CzXxlATqnFQHhGoUmzpH9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Grf9LpQORYOl7s8Gg57S/13ebMgtgg8M14BumzJpaok=;
 b=olhg1XqnE9nCV3rj20AI6d9lin9eMY1o3/kdxOoEvgkATaf2RZW4I/Sf4TVVrXHAwWKk75X2KIBCR9sjx7fxpO7lhTFO9GjgF9Rccw8bOCF/bR6xcbcIBqdxvo+wTBYnpKAwJ2ng880mwnPr6qCf5zDBPr+3L9Z4BH+pFNs9EalMH5BEBblSGKRaJ1h+oh030ZQdRHzCozc2/4E07Np6lTpBGHz1EZfI6OrQjA1/a8g0k7YEI/kTfOZWDkqwuIz3srhoiHlg6yI7Vqzc6DLLkvx4oxwk4PGNyJKGfpQ2RUZrlm1fjroija4yd+32XpLRdOmlJtWr+eLs5ut9isdR9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Grf9LpQORYOl7s8Gg57S/13ebMgtgg8M14BumzJpaok=;
 b=JSiyiVeNlNU9Max3mp0Coq7LC0mKZfNV5VhK1BjWJnAXIWQqURfb9hWKQoLWchpKFVY1iUd/zEelsUwZOux6uPBAuipnvYgidscaA/ZLFWVfCHtFRtpw+P8vzXDyjUClMapAHC2RCWo41Op9LEUJUv0jKXdmH74LsBAMYxtdqJs=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by OS9PR01MB12356.jpnprd01.prod.outlook.com (2603:1096:604:2e6::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Tue, 3 Sep
 2024 15:30:44 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1%6]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 15:30:43 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Claudiu.Beznea <claudiu.beznea@tuxon.dev>, Ulf Hansson
	<ulf.hansson@linaro.org>
CC: "vkoul@kernel.org" <vkoul@kernel.org>, "kishon@kernel.org"
	<kishon@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	"geert+renesas@glider.be" <geert+renesas@glider.be>, "magnus.damm@gmail.com"
	<magnus.damm@gmail.com>, "gregkh@linuxfoundation.org"
	<gregkh@linuxfoundation.org>, "mturquette@baylibre.com"
	<mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>, Yoshihiro
 Shimoda <yoshihiro.shimoda.uh@renesas.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-renesas-soc@vger.kernel.org"
	<linux-renesas-soc@vger.kernel.org>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-clk@vger.kernel.org"
	<linux-clk@vger.kernel.org>, "linux-pm@vger.kernel.org"
	<linux-pm@vger.kernel.org>, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: RE: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
Thread-Topic: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
Thread-Index: AQHa9KfrLpE8CCuWg0uaPyaAgZR3ArI+ZjUAgAEcCoCAAVgqEIADVdkwgAAP5ACAAACycIAABtQAgAAAhkCAABeagIAAAFcwgAFU0LCAADjlgIAAAKQQgAAJGICAAAE9UIAADyWwgAAHkoCAAADSkIAAB+2AgAABx5CAAByhgIAAAMmg
Date: Tue, 3 Sep 2024 15:30:43 +0000
Message-ID: <TY3PR01MB11346676D07F8434BBD68E62786932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <TY3PR01MB11346505565B81AD2894E035586922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <35dc7414-f5bd-4ed4-bfa1-f723f4f0078c@tuxon.dev>
 <TY3PR01MB11346A4814F83FE296A1DED8886922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <TY3PR01MB1134648BF51F1B52BFE34DD6D86932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <fbfa9179-2f52-429f-8b69-f7f4064e796b@tuxon.dev>
 <TYCPR01MB11332EF1A8D064C491D8F261286932@TYCPR01MB11332.jpnprd01.prod.outlook.com>
 <f7c57e76-b890-491f-880d-62d060b7b31e@tuxon.dev>
 <TYCPR01MB11332BE2EDB318950B9C7B54C86932@TYCPR01MB11332.jpnprd01.prod.outlook.com>
 <TY3PR01MB113469FC8A9F49D9B1FA432FD86932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <0b73544b-0253-43b9-b631-6578b48eaca8@tuxon.dev>
 <TY3PR01MB1134689573A785E91A9041E1886932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <5bcdc677-e61e-4312-a19b-57b4600685d3@tuxon.dev>
 <TY3PR01MB11346FAC6022C81ED8B9B2DC386932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <7ffb6419-b8f0-4940-99d9-7779eec9bbb7@tuxon.dev>
In-Reply-To: <7ffb6419-b8f0-4940-99d9-7779eec9bbb7@tuxon.dev>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|OS9PR01MB12356:EE_
x-ms-office365-filtering-correlation-id: 4aebda6a-a561-435b-6da7-08dccc2d602b
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?UjVKbjVNMXJBQ1BjQVJ5blNUMDd5M3VMWEpudk90VmJrbTBzM2oxL1NDM0Nw?=
 =?utf-8?B?bDJsaUJzaVpRb0ExZXBSMHVrK3RRT2NaUXZoOVFPMmVFMkNlNDJTeDQwZzQw?=
 =?utf-8?B?bFpiWncxWkVNb05xVlNkY25YQ2R5eEhMUWlXZTdwR09lZnd6NXRZaXUyZms5?=
 =?utf-8?B?SFQ5WGV1SzZnYnp1VmloaGpxTXI3R0ZzdXNVWC9uQ2h6U0srSk4xekNCRGRz?=
 =?utf-8?B?Zk5HZGp4VHQ4cjZMMzZKa2R3OHVTOThWb1RJa0VxSFBRZFI4Um1uUGtOYnpW?=
 =?utf-8?B?bHNpZS9kR2dtc0c0QjBkYmZ6MGJsMHhmWmhid2pqVmt2UGcxUTltbzNENmU3?=
 =?utf-8?B?dHJLYk8wd0JLT0l4MDc0d3pPTjVicjZIeFV4V3gxeGZOWjV0c1lZOWRjNFpo?=
 =?utf-8?B?dTJDSGZsdU9Nei83R0dJbllyZWtqVmFLM1RBR0dWRE95UGJrbWtPNm9aMmxN?=
 =?utf-8?B?VVd2VGJIYTBUQ2hGbmtHNVIvZ1Erdllldmw0WGR2ektUa21Wd2hrZnlNa1ZN?=
 =?utf-8?B?MlEzSm1TelRCSjdGUXRBaXJnQWRFV3AxeUw2R2hXVmE1bDAydHBkOFMyVGFt?=
 =?utf-8?B?VHF2emJOeDRvcHRFNXN0YzNLZUw1MysvTWRzRWRBMXNyRDVKeGZDUkp5RGUy?=
 =?utf-8?B?OG14QVVralhMQ1VzSXVzWUE0WWFMc3hFMlkrQkU3NVVTUjdkMlE1ZDJEOUdN?=
 =?utf-8?B?U2txQzBJRHJLUjFJQUtlT1pBTFQxbWRyNG9KVzZLdS9meVVnUUl5bDBlRlJS?=
 =?utf-8?B?aUNzNGFUWnpBMnIzZmtXZVN6bnY1U3oyRDlCZzB1RTBjYTVZRFduWnVPeGFB?=
 =?utf-8?B?UmdlWFZHNVBBQ21UMjFGL0U4Y3IxOENHWkZSTjJidUVoSjkvSTZMelg5T0xN?=
 =?utf-8?B?YzQ3ekVFVlM2SWdtMWxCa3IxSFVCaUs4Ri9ZZ3M1bE5EVHl2WXUzZy9LcVBa?=
 =?utf-8?B?aHpTTUplWEwvOXZKblpTR24vZWtham95aXFDTTlSdW9mM2hWU1ZmTG00SU1n?=
 =?utf-8?B?SkY3WmpZTE1YdjY4QmNMTnZoTU5ibXd4ZVVqK25uVmpLRHZQeFkxYm8zTktZ?=
 =?utf-8?B?UzJBQTliT2t4ZEk3RXpUZm1INS8yTk8zWHJ0MVduYzFwc255K3A0d2FvMHRI?=
 =?utf-8?B?aU8zQTl1VTdKMTJ0aGI2ZjY4d09MNTNyMEpwbTR1UDY4V054MG05VGR3YXht?=
 =?utf-8?B?WlpKWFZqRmtFT3I3UXRmWkJEcERZengyK2RPZEN4Sk1OS1JabmJmQmZoL0Vu?=
 =?utf-8?B?eXp3ZUt4STFnOW4vYTAzOVpCeHo3b0k3bU9TR0E4aXZoTFRBYVRHTy9xR1VY?=
 =?utf-8?B?UytTTE5JTlBqRVpvVytzSC9RMkxRQ0ZsZUFIYlg3Zkora1Uyb2FsS1lyVHdw?=
 =?utf-8?B?WVRBMjIxWmVsblBBT1JnR0E4UnFhSmtpYkdPdkp1anNXWkVqa1lFcjhOY3Vp?=
 =?utf-8?B?SFhGT2F1OXNON2xsTFlNaTUrMXRuUFBLWmdVWTBIODBOK0V0bEFYa0xyWXps?=
 =?utf-8?B?T3JXVGlCWkIrZFAyTlBnanB6b1ZrS1UyemxFVXJ6aVRpRDY2NVp0YjdKdVZV?=
 =?utf-8?B?Z29jUWtoZzNqbDNwSU1KYWFpazdibUgxMWFKQkJ4UFlxYmtnSkNHMTlISnlK?=
 =?utf-8?B?WmpHRk9zM3FNcGFjWkdPVFp1M21nV0RpeURBcjB2dGF2eDBkUVk4QktTc2lM?=
 =?utf-8?B?bXhBTHhUUXNEa2k0RVgzSkFxa1Zzc3BUYUl2Qk9JVmVKUWxRNlZZWWNTd3pq?=
 =?utf-8?B?SGFVOHZRTnR5enJ6TjA4Sk11Y3ZHV0x0a1VlUkRXUSt6ZnFveXZyNXdkelVr?=
 =?utf-8?B?U09WMHRnampoZ2ltcHlFaWoxemZlb2hWQk9WV3RydWJ3SzhuTG13MHlKZ2l0?=
 =?utf-8?B?UFZNditMcGZTaE1UMkVuM2FjY2NvVHZSMFpFN09lb0Mzbmc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ME9pY3BMVDVITlBBS2pTNFNNZzZaRmxKMjY3RW0xblhWbEV5YUtXZUU5dCtO?=
 =?utf-8?B?MHlKc2xacDNrTW9TaHNoNjBiem5SaWg0eXVPWXV4VjhrQTJOeDJuQkpCYjE1?=
 =?utf-8?B?UE1YSkQrQ2xaa2d3aDZkRHptaFFhUG9laXZjL1hNZVZqaVlLR1VvSVR5Ym5m?=
 =?utf-8?B?SEpTTnoyVExZbjdhZFl4YlNYRGVFQVdSbkVzRzVQb3dRUVNrUWNHOEQxYklu?=
 =?utf-8?B?V2xKdUcrWXZINlpCQnFyTzZwaVBaQkUyY3BHQ2hoSXMzVTFkazIxWGxBK0xK?=
 =?utf-8?B?c2tDcmNYdVRCNkZMMTBEUjh0czdHbHFsUTBSamFjNklRVitSS3BqZFhyZXFz?=
 =?utf-8?B?M3BQQzF6SWVveXFJQ2NnSUhVaUo4NHhWcUpsSE1zT25wOVh6UjJvb29LVU8v?=
 =?utf-8?B?R0dUdEd2MUh6MUlLcFovaGNrbkF4QnBWLzJ6dFUxMVlCTlRkVGdCTXc1bnBD?=
 =?utf-8?B?bm1ic0pJZEJtNVBFQkFlQ1A4cXljdkhieTlKQmJvalIvWVFydDl1SENIS1gv?=
 =?utf-8?B?cGlKemNZWnJKV2dHdjJPbEN5cno2SXJnNUhOUURSdVNaVHpYZTFuUnRsYmRw?=
 =?utf-8?B?Q2o2c1dqMDdTdStNSHFhNUlBQnBqQkE5bXppUjM1VG9RSHNzbWdxQzlFbW1F?=
 =?utf-8?B?SzBXSmkwWEtQYWg1SHFaS25PU2hYbUF5blJXK1ZHOGZyUDZOL0tob1FoUTA1?=
 =?utf-8?B?Mjlsa01NRFk2S3duRVJFQmhrYU1jbTI4REp3emlKSUFDYkRkaFdMVTRIeDVo?=
 =?utf-8?B?WDlYN290UjVpQWNHODRNbXMrVklaWnM1RFpMSTJJdHk0OENTcHRUNXdTaThP?=
 =?utf-8?B?SWVaVFJXZ0ViRlNKOXpzd0NKNW1qSlAzdEQwR2V5eTgrZXpZRWU5eUovT0tZ?=
 =?utf-8?B?ZlVkVWFpMUp3eEZ6a0pvRktPWGE4eTNBZ0Njak9lNXFxQ0RDNGtUZDdjZWY2?=
 =?utf-8?B?aHZ5MkNRN0l6cFRmQk1xZ3FvTytUa3Y4b0liZTFTcjVCY0R5R213dlhlYzJL?=
 =?utf-8?B?QU54V21Ld1Bic2NhR0dZT0xGaWhMNjhIQW1DZ2o5MkdsWC9wT1M0c0xKSGpC?=
 =?utf-8?B?eUJqN215ZVBObXpvNnhhMHpERjh3RU8rY2Q0OXZaeW9TWjd2NUdlQ3dkeUVO?=
 =?utf-8?B?dWdGWGd6Z3djNDBRZ3lvcDM4SEhBaUFtRm12aU0xVE04YXgxc1M4VFdGZmNp?=
 =?utf-8?B?ZTJuUnpGb2FWVmdsbzFWbTlzTGJGVDRERGJ3d0dha1NlRTF1UE1wUVdWUVFM?=
 =?utf-8?B?MzlJSy8xT3N6SmI0VjNlVmV3RSs3L0ZOMDJ6TUI3L0w4eVY0ZkpaTGZzYmhZ?=
 =?utf-8?B?N25hWVJlWkcyUDlObFk1MjQySHkzMktiMTh0ZjR6S21Ib05UQ1hsbnZFYjll?=
 =?utf-8?B?YzBLOU0yWGsyUGRmQndJamM5ckFlK3VId0grZ05UZ1dmNFVVaHBGU3BGcXNr?=
 =?utf-8?B?cHRzZVovVUh0NGFBS25Fc3dNR1BzLzYvejBwdWZUZUJwWERKNGppWTJUVE8y?=
 =?utf-8?B?UFpqQWdvTURRM1kyVkhLTlBycDZOZmdYNllVQ2k1RmgyZmlsU0ZPUTlpYnZR?=
 =?utf-8?B?L3Y4SzlkeE9rVlp0UjdzbE1ITnlGMHhGeitDck9DY1Rla1NCcUptUjJCVUpv?=
 =?utf-8?B?REJjZTAvR3dQandxbmZFU3hDcUJZVkE4ZWNFTk9aZmE5VFdzcFh3WEZzSjlG?=
 =?utf-8?B?YVRvVzNDUW95NTdGdFF3YjRlYW9VOEVUbUFxZmpSMVBHZHpaNE1Kc1lGWTh0?=
 =?utf-8?B?RFNKRHVxVEl1L3A1eFg2ODRwNXhEOU1PaG1YSmJ2UGJpOXFqT2w5c2FObGpl?=
 =?utf-8?B?VmtFSi80VFJBb0xWWkN4OGdPSEZ6OEkrcHVSNUlpTWhxYTVJOE9jblIzZU50?=
 =?utf-8?B?SFdUY0JBeU42WFRacUVxdWN2NlpJSlJkK3JibmZnRzlZemRsWXdGNkpiMEt0?=
 =?utf-8?B?L21JSTZ0czhUcTd3WmdhMDA1c3N3ZGhQV1ZZRlRxbDJTckw2Q2VUUktXTnRM?=
 =?utf-8?B?MURlZE11M3B6c2tOM3UvOFdjT3dHalZ4YmVSbVFBOTFIbi8xWFN0eFJKY0Jj?=
 =?utf-8?B?STQyNkliOUtyMEhvZjBpQmxXVUg4eFVGckVLNkVSRVZadFFMY1JEM24yR2pv?=
 =?utf-8?B?ejhsM1pUZHpaT3ZPSi9KS0huUnZZTERBN1U2aTlJMFBES1IzOFRoVFZWWFJl?=
 =?utf-8?B?ZUE9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4aebda6a-a561-435b-6da7-08dccc2d602b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2024 15:30:43.8787
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4SgQEZRmhBRjTIDctbdqDQ2Aqk+ydbLyZI1J1ejonnZdsb2KVp/SBRP+X/CgakXzFgV1qPmamjSwjmxOmxaZzh9Hau//mccRfV0OP8BJY3g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS9PR01MB12356
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_083058_248776_ABF7FE5A 
X-CRM114-Status: GOOD (  12.05  )
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


Hi Claudiu,

> -----Original Message-----
> From: claudiu beznea <claudiu.beznea@tuxon.dev>
> Sent: Tuesday, September 3, 2024 3:46 PM


> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
> 
> 
> 
> On 03.09.2024 16:09, Biju Das wrote:
> > Hi Claudiu,
> >
> >> -----Original Message-----
> >> From: claudiu beznea <claudiu.beznea@tuxon.dev>
> >> Sent: Tuesday, September 3, 2024 1:57 PM
> > -
> >> clk@vger.kernel.org; linux-pm@vger.kernel.org; Claudiu Beznea
> >> <claudiu.beznea.uj@bp.renesas.com>
> >> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas
> >> RZ/G3S SoC
> >>
> >>
> >>
> >> On 03.09.2024 15:37, Biju Das wrote:
> >>>
> >>>
> >>>> -----Original Message-----
> >>>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
> >>>> Sent: Tuesday, September 3, 2024 1:26 PM
> >>>> To: Biju Das <biju.das.jz@bp.renesas.com>; Ulf Hansson
> >>>> <ulf.hansson@linaro.org>
> >>>> Cc: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org;
> >>>> krzk+dt@kernel.org; conor+dt@kernel.org; p.zabel@pengutronix.de;
> >>>> geert+renesas@glider.be; magnus.damm@gmail.com;
> >>>> gregkh@linuxfoundation.org; mturquette@baylibre.com;
> >>>> sboyd@kernel.org; Yoshihiro Shimoda
> >>>> <yoshihiro.shimoda.uh@renesas.com>;
> >>>> linux-phy@lists.infradead.org; devicetree@vger.kernel.org;
> >>>> linux-kernel@vger.kernel.org; linux- renesas-soc@vger.kernel.org;
> >>>> linux-usb@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> >>>> linux- clk@vger.kernel.org; linux-pm@vger.kernel.org; Claudiu
> >>>> Beznea <claudiu.beznea.uj@bp.renesas.com>
> >>>> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas
> >>>> RZ/G3S SoC
> >>>>
> >>>>
> >>>>
> >>>> On 03.09.2024 15:00, Biju Das wrote:
> >>>>>
> >>>>>
> >>>>>> -----Original Message-----
> >>>>>> From: Biju Das <biju.das.jz@bp.renesas.com>
> >>>>>> Sent: Tuesday, September 3, 2024 12:07 PM
> >>>>>> To: Claudiu.Beznea <claudiu.beznea@tuxon.dev>; Ulf Hansson
> >>>>>> <ulf.hansson@linaro.org>
> >>>>>> Cc: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org;
> >>>>>> krzk+dt@kernel.org; conor+dt@kernel.org; p.zabel@pengutronix.de;
> >>>>>> geert+renesas@glider.be; magnus.damm@gmail.com;
> >>>>>> gregkh@linuxfoundation.org; mturquette@baylibre.com;
> >>>>>> sboyd@kernel.org; Yoshihiro Shimoda
> >>>>>> <yoshihiro.shimoda.uh@renesas.com>;
> >>>>>> linux-phy@lists.infradead.org; devicetree@vger.kernel.org;
> >>>>>> linux-kernel@vger.kernel.org; linux- renesas-soc@vger.kernel.org;
> >>>>>> linux-usb@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> >>>>>> linux- clk@vger.kernel.org; linux-pm@vger.kernel.org; Claudiu
> >>>>>> Beznea <claudiu.beznea.uj@bp.renesas.com>
> >>>>>> Subject: RE: [PATCH 00/16] Add initial USB support for the
> >>>>>> Renesas RZ/G3S SoC
> >>>>>>
> >>>>>> Hi Claudiu,
> >>>>>>
> >>>>>>> -----Original Message-----
> >>>>>>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
> >>>>>>> Sent: Tuesday, September 3, 2024 12:00 PM
> >>>>>>> Subject: Re: [PATCH 00/16] Add initial USB support for the
> >>>>>>> Renesas RZ/G3S SoC
> >>>>>>>
> >>>>>>>
> >>>>>>>
> >>>>>>> On 03.09.2024 13:31, Biju Das wrote:
> >>>>>>>>>> During boot clr USB PWR READY signal in TF-A.
> >>>>>>>>>> STR case, suspend set USB PWR READY signal in TF-A.
> >>>>>>>>>> STR case, resume clr USB PWR READY signal in TF-A.
> >>>>>>>>> As I said previously, it can be done in different ways. My
> >>>>>>>>> point was to let Linux set what it needs for all it's devices to work.
> >>>>>>>>> I think the way to go forward is a
> >>>>>>> maintainer decision.
> >>>>>>>>
> >>>>>>>> I agree, there can be n number of solution for a problem.
> >>>>>>>>
> >>>>>>>> Since you modelled system state signal (USB PWRRDY) as reset
> >>>>>>>> control signal, it is reset/DT maintainer's decision to say the
> >>>>>>>> final word whether this signal fits in reset
> >>>>>>> system framework or not?
> >>>>>>>
> >>>>>>> I was thinking:
> >>>>>>> 1/ Geert would be the best to say if he considers it OK to handle this
> >>>>>>>    in Linux
> >>>>>>
> >>>>>> I agree Geert is the right person for taking SYSTEM decisions,
> >>>>>> since the signal is used only during state transitions (Table
> >>>>>> 41.6.4 AWO to ALL_ON and 41.6.3 ALL_ON to AWO)
> >>>>>
> >>>>> One more info, as per [1], this USB PWRRDY signal setting to be before Linux kernel boots.
> >>>>
> >>>> The "controlled by" column mentions CA-55 on PWRRDY signal control
> >>>> line and it is b/w steps "DDR exits from retention mode" and
> >>>> "clock start settings for system bus and peripheral modules".
> >>>> AFAICT, after DDR exists retention mode
> >> Linux is ready to run.
> >>>
> >>> DDR retention exit happens in TF-A and it jumps into reset code
> >>> where it executes BL2 in TF_A. Bl2
> >> checks for warm or cold reset.
> >>> If it is warm reset, it sets required minimal clocks/resets and pass
> >>> the control to linux by calling the SMC callback handler. Which in
> >>> turn calls resume(step 11-->14)
> >> path.
> >>
> >> Is this from HW manual or some specific documentation? I'm referring at "resume" == "steps 11-->14"
> 
> You branched the discussion, there was at least this question that I've asked you above that
> interested me.

if there is DDR retention exit involved,
Step 11->14 is just like resume path, for each IP it need clock , reset and restore registers from DDR backup.

> 
> >>
> >>>
> >>> Step 8, Cortex-A55 Exit from DDR retention mode (when using) Setting
> >>> for exiting form DDR retention mode Step 9, Cortex-A55 USB PHY
> >>> PWRRDY signal control (if use USB) SYS_USB_PWRRDY Step 10,
> >>> Cortex-A55 PCIe RST_RSM_B signal control (if use PCIe)
> >>> SYS_PCIE_RST_RSM_B
> >>
> >> Note *if use*: how does the TF-A know if USB/PCIe is used by Linux?
> >> The documentation mention to set it *if use*. Same note is on ALL_ON
> >> to VBATT transition documentation (namely "if using USB", "if using
> >> PCIe"). If TF-A will do this it should set this signals
> >> unconditionally. It will not be something wrong though. We don't know at the moment what this
> involves in terms of power consumption, if it means something...
> >
> > You mean, you modelled this as reset signal just to reduce power
> > consumption by calling runtime PM calls to turn on/off this signal??
> 
> In this series it is though a reset control driver.
> 
> The internal BSP propose the control of this signal though SMC calls in each individual USB driver; I
> think the hardware team was checked for this; I may be wrong, as I don't have this insight.
> 
> As you know, the initial control of these bits in the BSP was though SMC calls and you propose to have
> a separate Linux driver to control this after finding that these registers are accessible in normal
> world. As a result, this series, with reset approach, which you were against, but I felt this was the
> best way (I know) to describe the hardware and the relation b/w hardware blocks. To conclude, you
> initially proposed me internally to have it in Linux.

I agree, I proposed to have Linux SYSC driver instead of calling SMC calls from PHY control driver(Reset)

Currently we explored 4 approaches to avoid SMC calls from PHY control driver.

1) modelling this as reset signal
2) power domain approach 
3) set this in SYSC driver during early boot.
4) handle this in TF-A.

> 
> To answer your question, the answer is no, I didn't try to just model something fancy just to be
> fancy. I did it based on what is proposed in BSP as this may have been checked with hardware team and
> I did tests around this. And considering this best describes the HW and the relation b/w individual
> hardware blocks and in this way Linux can have at its hand all the resources it needs w/o relying on
> third parties. And from the HW manual description my understanding was that this is possible. I never
> said that this solution is the best. I'm just adding information here as I requested help from
> maintainers to guide on the proper direction.
> 
> You were adding information to sustain your TF-A idea, too.

This is just an option based on the hardware manual tables where SYSC signal is turned on 
just after DDR retention exit and before starting the clocks/resets.

> 
> >
> > Does will it have any system stability issue as hardware manual says
> > to do it at very early stage before starting any clocks/resets?? Have you checked with hardware
> team?
> 
> All the implementation of this is based on what has been proposed on BSP, the same approach was
> proposed there, meaning the control of these signals was done on probe/remove, suspend/resume in
> Linux.

Based on Hardware manual state transition tables, USBPWRRDY signal is set before starting clocks/reset of the IPs.
If there is no stability issue with BSP approach, then there is no harm in what you have implemented.

Cheers,
Biju

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
