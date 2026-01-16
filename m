Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F425D47CDE
	for <linux-phy@archiver.kernel.org>; Fri, 16 Jan 2026 11:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BL0ZDnzK6O6gH7zcQT6Mkk1sgrSI5uhZSGiKc/sXDOU=; b=VtfCoM0e28v9FB
	+BzacfGrG3X3ifJUiR8CMNX3W08IKqKpdopDXOzSBHPc23KH3SiOnhjrjH9wNACoLwOwrxe+1x95J
	5P4VfWM8e1k53tyAW/JuvaAkfpzo+noTvMzvgP92vieb3ELWPorbmxXbhQR5W/+cqOCTM1Ru8H8Vc
	fqso9PTUKZ23lALTWOfCf6Bkp6SS2sEksTBuZSU7NFIW4KhnDodrMXINvxy9n/YdEulUKQ2/njWWm
	sVNODwn7He/To0brlxuXoAfBmSVVk9tiFi16tuAp2wZjpfgmCWN+s+E3wYQfZMVNe2P+tsvnv+kGl
	qu2DnjEZuJYDz4mCznGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgi9k-0000000E3uF-0OCd;
	Fri, 16 Jan 2026 11:38:20 +0000
Received: from mail-westeuropeazon11011059.outbound.protection.outlook.com ([52.101.70.59] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgi9h-0000000E3tI-1IHh;
	Fri, 16 Jan 2026 11:38:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CZ8VznzA8QONmEeWxa5QWLXonNn/SNU7uxvScmHR9Q2Rb7OP+4mkPIOHqbpPy0xcuF0dapcFCsGsSnNuvgdk2wrul5gS+AhVFi/5ZjjcjtCi1Uj7IkIw/x3pw/t89WZ8qMcckomyVkBWT9hThuBw4axKNORNhcFM1Ylpj/AH4RCS509khsC5gcvpEJj3zYc8AwoXrVnVuXAZAn9lq5kqqS55rgyvXr3yRO1vCW0NIQ7eAdbjZeIMuHjhKcuXEYW6CwJFs6+740NQG8y7EKCd1ViGHIpb0a4bLFZ2+wdYCiA5TAB3+kyP44/TjgcNP8e7Usucin3oznSZQP379S/lAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HMURAvxjLVcmaanqmGgB4Baf6gcTvTxiOsttmPA80Ps=;
 b=C1RYpdlaGliQUltbk/CzInwanGvuEIVCwxqoZHkCzpFx9JsaW+9s9Aw/2iUmqKIfogPRmKw1+P44iAYD/Ek6sZ6YQeXakFsH2FTgoXbAHPPz7oIcaCvxa2hawxUDGjEtC/IdIHIj9c+NsNDM7b1PE6elJ4nnAUStwwRcF7xcWx+seIrYIIS9fBMB3HkPnGmo+ZOD35aNlaoR3AY4QRh3GtMOHMrjGwv0M3jPLs5tw0TXIOSX/1xqQiCXQw1YRdGXYS2p5kFNzyX6sEgOxa0Qwgg0tvmMmo07RhkjaLCS5B++YzIJ1Fg42rWm3NM+ezB7xF34NCEyzWq3arRkxWy8jA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HMURAvxjLVcmaanqmGgB4Baf6gcTvTxiOsttmPA80Ps=;
 b=DdpbYcnQrQ3/UCEgLarOJ1Asysm4YpF2XChFWH4QPj/0HfJ189uISKnSJnbY7GxECoWmFi3ftT6lN1KzHvSF8wgM3a1/kgOcqH8ZNJTA4oywcuqnUgKUJzYZgztlk6pkV+z5fSHX2Cq0l1Q07hGLqMiatbtRXqRpKCfrqEspMvFZ5FIJfiM63T2QzkPdJlNcdvY56cKaK9kMu1SLjim2py1WP7J2hPTydT9d9jjeSVDrB3JVoGhwTAzs5W/63Ro2VWOmTPFSVKAsUko2CPgeic21wqCHRKJ5wiDi8HSgXGBwiRuegWohk5t6OUS6A3kCIvufUTecefIlSIP6xuYEEA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com (2603:10a6:10:2e1::11)
 by DU2PR04MB8856.eurprd04.prod.outlook.com (2603:10a6:10:2e3::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Fri, 16 Jan
 2026 11:38:13 +0000
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::c67b:71cd:6338:9dce]) by DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::c67b:71cd:6338:9dce%5]) with mapi id 15.20.9478.004; Fri, 16 Jan 2026
 11:38:13 +0000
Date: Fri, 16 Jan 2026 19:30:58 +0800
From: Xu Yang <xu.yang_2@nxp.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, neil.armstrong@linaro.org, 
	shawnguo@kernel.org, kernel@pengutronix.de, festevam@gmail.com, jun.li@nxp.com, 
	Frank.Li@nxp.com, linux-phy@lists.infradead.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] phy: fsl-imx8mq-usb: add debugfs to access control
 register
Message-ID: <rrmva3t4tesocitdrz5yfb35wer4htr5lkymzoyhjx4ajy7tt6@fbhlvrqzswd5>
References: <20260108083641.2119616-1-xu.yang_2@nxp.com>
 <c1425564-9dca-45dc-ac5e-093150a3ff01@lunn.ch>
 <aWdkapV39bOArR-d@vaman>
Content-Disposition: inline
In-Reply-To: <aWdkapV39bOArR-d@vaman>
X-ClientProxiedBy: SI2PR01CA0035.apcprd01.prod.exchangelabs.com
 (2603:1096:4:192::13) To DU2PR04MB8822.eurprd04.prod.outlook.com
 (2603:10a6:10:2e1::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8822:EE_|DU2PR04MB8856:EE_
X-MS-Office365-Filtering-Correlation-Id: cf0f0213-59e4-442c-be2d-08de54f3bba1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|19092799006|366016|1800799024|376014|7416014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S3JhUkp4MG9ncmZSc3pDTHBmeHA5b0p0M0hEK2RnZjJxaERuOTI1WDIwYUlr?=
 =?utf-8?B?emRCSDBQcWNlU0E5OFpmMWQvcGJ6ZFhkSG92ejJ6RVpucGx4ckR1b1hqSW5j?=
 =?utf-8?B?MkQzZmhXMGhoTjRIRUNnNVNGa09xckJuWGJZaHNuOS9TZzlSRmFuVG9qRVZY?=
 =?utf-8?B?RVhrdEFmQmdrNlROd0lPNktsQ1RzL1JnMkVRUEVWMGlmZnh2Nk1jMFM2bGwz?=
 =?utf-8?B?T00vVmwvY3dBTmljeUhCWmJsVWpTdkd3TjBlYVZwRE03cTRvTjZzUlJZb0VX?=
 =?utf-8?B?YUVyZHUzQ2JORzZEQmYzREwxNkF6alJzUlVvZGhmSTljc3lRd3k5WEhpSHJy?=
 =?utf-8?B?VXRaVkFmY1FYdXcyd0E4ZTB6dVZlTnpGeVNJSU9PZWh3djRQTlhjbTlsYnhV?=
 =?utf-8?B?UUpNTnpQd1lCUFk0UUZlbHFseE4zMTBOelc4K2dROGZNT3VQTjZTQ1ZtQlZ1?=
 =?utf-8?B?RTB4WVpTbk5mQ3puUGhIQWF0UlB6d0srNHZSUTJrbXNkYWY2d3Rrd2tTaVBD?=
 =?utf-8?B?ajhoWjF0WS9kRURUY2t1dmRwWUZtbytZK2JDZ2VkVlVjRDJ0N2V4UXNtNy9k?=
 =?utf-8?B?OW9aRDc3cXVUSE5IV2NJQ3B1MG9XUm95Mm42RXZUR1Nmd3FHMEZkdVZUNzk1?=
 =?utf-8?B?VVg4M2ZyMVdzUE9ud2RUaE9JdXFJWjY2Y04wYXhJZzNlSi9ScnJNSVJYdi80?=
 =?utf-8?B?eFJOMUhXRkgrcHR5azFGT2tkYkt5M1pGczJNQVArSWQ2dlcrVE4ybkVQR0J0?=
 =?utf-8?B?MElmYUZRNHJQQkErQnRMMFpMVUlBSG0reVhKRGprM3BYS2YyTFVEdzVOMXVK?=
 =?utf-8?B?N1pQUUk0VURCcWV0R1FBb20xelJ2ekVOWTRWRVNlc0R0bTVUS2dqQjhuVmlP?=
 =?utf-8?B?Rjl5c0tRcktwVDJ5TzVIdGJLUGtoS1ZpZjhLZkx2Mjd3UjBwN256M3hXSjhE?=
 =?utf-8?B?T3ZHR2luaDlrczYvYzd4a0RJcWJlYkE4a29NYThIWHYyUXpvMGwrQzRlTWZM?=
 =?utf-8?B?a0hZcVNDY0tlSVBCNGg5Z1QrVzFtdWJ0NkZqaVZ1dGtiK2p2QzZRMDBDSGhs?=
 =?utf-8?B?QUxDTnNyR3U5ZEREQmt4am5sWjdNMFAvN25CcTNxWS9UY1NwNXlucmhaU3Rj?=
 =?utf-8?B?QjBPTkg2cHNmVmVLdTQ3a1RndkUrZlBhK29DWG5yemJoQUJqOFdXYUxnUTk4?=
 =?utf-8?B?Z1BkNlVUeWdsd0NqT3ZTVng1UFpmZUZibHBPckxIYjBpZ2s0aFpMZ0RXYlJK?=
 =?utf-8?B?aERMZFc2cnoxcFF1REtaVFpnK2RrYUFMazFQSnhwNnNlTUxISHB3dlptUzdj?=
 =?utf-8?B?WTFIMmcrRjZtREE5R2xPcGxSeW1hcHZCcVMvY2xWUk1LdWhwY21LaEFkUCsw?=
 =?utf-8?B?Ry9vbE15Um12anFYUHNuUTFtOHZJOFh5Z3E5U25QNkZ6S3BnUi9rRmxvSGVj?=
 =?utf-8?B?NVg1c1BzUERiaW9kK3hRSHFmNm11YWlwM28zM2VYSXIvdk5jUXZ6TDhsajdY?=
 =?utf-8?B?U05WRzdUSXVPekg0N3FwOEFsNFBualB5T1FmeU0zTGFHOVJ0OFlnRWVydjFj?=
 =?utf-8?B?NTVXaVVGVXluZjlBK0pYeUNYZnI4cituZDJVZVJkVHZMRnZQQjhhMlpzSGEx?=
 =?utf-8?B?dE5ZV1I5RndXVXRqTjlJcXdRd3BqZjRlRGJQaGpHQzZHQkpHZ0RLem80Yjhn?=
 =?utf-8?B?bmlqZTBLN25pa1JsckpoSzcxdEpnVGxWeFN0TGxQaE1FTXNFVE5kcWFSZzVq?=
 =?utf-8?B?cFk1WU8yd01NZVgveU5uaDQxVGlrVFNWSmdxeHNNWlppcUxoTk5vbCt3ampt?=
 =?utf-8?B?NDNzbzEvRDN4eHFvSTIrZzN4SGxZZ3IrN1NXa2RYS1M4ZWwzWVZyNGlzdit4?=
 =?utf-8?B?R2lJUEVPbkFNRHprV09jeURZRFA1dldOcDAydG5YVHJidUJhZmZrT1R6RExI?=
 =?utf-8?B?eFZlbUlla0cvZm5lTGpHalZPck5td1YwbmVnYWRlR3loaVlDU2ZKaGVQZ0la?=
 =?utf-8?B?bVJQUW9LUnZ0c3lTdEdYVWZmSWZBVW1kazNwTnN3ZVlUZlloRTdtV2d0QUR5?=
 =?utf-8?B?NkZpMGtCNit1RS9CTzJnYTI1S1dBcHowRW80VFRwcHJ5RmR0QUxPRm1MSTdO?=
 =?utf-8?B?WjlKc0VFZGJoQ2R4cjB5dS9ja0dlYmlIZWx1TlJhUFpnQ2hvNnVMTVh2VzB5?=
 =?utf-8?Q?0HUaBo3Hl4thHQOo1bWsLRs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8822.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(366016)(1800799024)(376014)(7416014)(52116014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eHBOeTdUUW5qeFNXRy9mYS9mS2NiY3VhSTYxUE5Fdk1jUzJ0bUpMYmJRRjBp?=
 =?utf-8?B?cWJlSEpuWEJhUUZ4Q09FTDZ5YUFhT0V3cUhrQzcwYUVrQ29RNU1sYnArYktj?=
 =?utf-8?B?VEZwOHNQdHJsYytMUlIraTYrWmZJYm9QemFjN2huWS83MnE5OFMvNEtkbEZ5?=
 =?utf-8?B?UWtIVG9hYXh3bXd5bmt5Znpmdno0UUhqbHdVUlV3cUlKTm00bDhlNnRxZnVh?=
 =?utf-8?B?TGw5ME5aMDh4ZmZ3ZThNQVUybk1LSGlUQU8zVmpFWVFJaUpGRGh0NFN0eWxV?=
 =?utf-8?B?QzJtVUl6T1J2T2NUS0FkRThLNWJaUGRlUkpiMWRWYXBEdk1iekR3LzR4Y2tW?=
 =?utf-8?B?NllMNXBpMTY4eGRTelA2c2dsRDh6MFNCU08rdzdUSGltSE1XRExpZU1ZcDl0?=
 =?utf-8?B?TU1wSE91R05VZmxUemJ4Y0lTcUFmN1c0UnpkZmpxejlLY3habDNNYTBKcGpt?=
 =?utf-8?B?NGFsZHAxdk90STc5TUVpNlZTNTV5ZEw1VjlxOTcvMDU2TzdhTkhNMG1tMVpI?=
 =?utf-8?B?WlJyMktPaWt4ZHB6WjZOMTU4MERsai9ZTE5XM1kzUnltOVpkUlE5STFPOHY3?=
 =?utf-8?B?eW9XMy9Yd1FPcEw3Q0xFVktYckQ3cFJmQURlTTJKK29RQnpNN0VVbkcvYzZj?=
 =?utf-8?B?OXFsdktXWjhTRzRNL0FNZUpFdVZyOW9reDJqN3NtcUdhVFRWVytrQkhRL2RE?=
 =?utf-8?B?WnczN2c2d0YrSE1sNnd4c3doTGlZTDRQMlBoWUE5dnFGTlkwT0FBeDVQeUQ5?=
 =?utf-8?B?ejZUZlQ3aVhXZnpZZ1o4SVUrV3cwMlViMTB4WncrTG8vRHlsc00xUlFrTVhD?=
 =?utf-8?B?cC9BR3loWm42cGYzalFIeWdOWVhKanpaQTBWV3R2eHZNS3B3WTBaN3FwMDFQ?=
 =?utf-8?B?U1hEM3UwcjZTRWVhOWNtaHNDQy8zc2NTU2x0eTIwYkdRSmZUMmVaOG5ZQlE5?=
 =?utf-8?B?NW02ZUxCa1JTV3R3TDVVNXNWQ090a3ErZ0MvZHpzSWMxM3AydzB2TWRvcVYx?=
 =?utf-8?B?bGFpR21RN1d3bzRrV2NGdkNJdlVzYm5LOFF1NDBzNVd4T2c0YXNBVFRtakp2?=
 =?utf-8?B?K0p4dktiTTkxY093bTNKTWlCTFVVRnVCL05IalN4eFl5eFpGVGdBTzh6R0t3?=
 =?utf-8?B?cHExdjVUKy9EOE1wb091TTdVOVBLdmxjZ3RsME1PYlQrZ09mK1h4UU5NYkJy?=
 =?utf-8?B?c0V0YzZkakhnNk1SajNEOTByTGJNYmFScURPOXpSMnNhSmRtNWZBdmlCbXda?=
 =?utf-8?B?RG9aLzJpVE91L0ovM1JFNUg5ZHdUL2dZSnZnYjJ3aFYzMWw5Vy9pd3JqK0pk?=
 =?utf-8?B?UG9WYjJBQTNYTWh5dTZOaHNYYTQ4cm1ydWtYT3pkOGQ3bjdIZU4vK3BxSGhi?=
 =?utf-8?B?WGZtTkJob0hBdkhuSVdJQ3R2dFNmQzZhQi9aQksvajlJL2ZrOWIyWXBVU1lh?=
 =?utf-8?B?THhQeXJ6bUlmUDBDa1pIYXBsSk9FaUZHL2h5ZlVFdzVORDJkQ0F2djh0UnVW?=
 =?utf-8?B?Z2hSblpvNXhncXI1Y2U3K09GUEUzcjNlMW9zWHdITy9tamNmaGkycWxFekNy?=
 =?utf-8?B?NmNTYjFIeFRqdW1ORHY0YUMxR1BqS1JYeVhHYWtCanNrMjBaUUFpNEpGdW80?=
 =?utf-8?B?dDBHYUxjcy9lZ2hORWdpVENtSklOMysybTJkZDZjZ3Y0WTdNaE40Sml0SmZJ?=
 =?utf-8?B?MlBPbndPTkdwaEZZM2x3NmU1RXNGU2ZLWGpPUnRLQXE3aHEvdUk3UXRrdjdw?=
 =?utf-8?B?bXhiM2VTeFNhWS9ySEZrendpMFZqZFlFQ2R3NU05Qkh4Q3ZjMC9OV2o1aVBk?=
 =?utf-8?B?U09EaGxvbXZEWU1HZGpMYlhvbDZRVkkwMmR6bkh3cEhVR1lialpDbndmcFdk?=
 =?utf-8?B?cHRuMVNnYThvZkNuRFozS2ROTnhsRWR4bXB4Ymh4M0dpUVdvamtlTGJSNUlk?=
 =?utf-8?B?TXZEcWdZT3ZLYUpRUDlIb2J1NVkrdXlHWFRnOHJYM2pHSG5CRnovK2xwcDBN?=
 =?utf-8?B?cDU1bzR0U3gySDhaS2J3OGg0UUp5MnlsaVdoazU0enZpc2JkMVRjeEk0ZURZ?=
 =?utf-8?B?QWNEQ2tpby9EejNmK1FzRE5vSUc2TnhHeFQyWDVVUER2UzZSUHgxVytnOWQ2?=
 =?utf-8?B?UVE3S1NKV2tDdUljWUNoWWpyblBWQkU3UXl1ZDRUMXBLYXhFWU55Nm9lN1hx?=
 =?utf-8?B?SnhMN3lFVldvSDlxVERsWU5uWmJjSnF3THpkRGpEY3MwQWhsVEp4QnoxdW5D?=
 =?utf-8?B?ZHg0ckE4NkxGUTM3WlhQc3g3eXQ1b3BjbFlML0svUU9vT0Fybit3cWsvd2t2?=
 =?utf-8?B?WVZGQldrakhwbUlCNmhLV1NRY1FITUxXSGNTRjRrNis0L1FOSGxXUT09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf0f0213-59e4-442c-be2d-08de54f3bba1
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8822.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2026 11:38:13.6795
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /baFK9+XYrfZ8Zur1Q82uwR2Jwx+iUBJeZxBttmg/dchCQOTdoqQECjQ69PiYd5yImS4x1Yjj/XzybqXqbb6CA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8856
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_033817_350010_B815FFF9 
X-CRM114-Status: GOOD (  25.32  )
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

T24gV2VkLCBKYW4gMTQsIDIwMjYgYXQgMDM6MDk6NTRQTSArMDUzMCwgVmlub2QgS291bCB3cm90
ZToKPiBPbiAwOC0wMS0yNiwgMTk6MjQsIEFuZHJldyBMdW5uIHdyb3RlOgo+ID4gT24gVGh1LCBK
YW4gMDgsIDIwMjYgYXQgMDQ6MzY6NDFQTSArMDgwMCwgWHUgWWFuZyB3cm90ZToKPiA+ID4gVGhl
IENSIHBvcnQgaXMgYSBzaW1wbGUgMTYtYml0IGRhdGEvYWRkcmVzcyBwYXJhbGxlbCBwb3J0IHRo
YXQgaXMKPiA+ID4gcHJvdmlkZWQgZm9yIG9uLWNoaXAgYWNjZXNzIHRvIHRoZSBjb250cm9sIHJl
Z2lzdGVycyBpbnNpZGUgdGhlCj4gPiA+IFVTQiAzLjAgZmVtdG9QSFlbMV0uIFdoaWxlIGFjY2Vz
cyB0byB0aGVzZSByZWdpc3RlcnMgaXMgbm90IHJlcXVpcmVkCj4gPiA+IGZvciBub3JtYWwgUEhZ
IG9wZXJhdGlvbiwgdGhpcyBpbnRlcmZhY2UgZW5hYmxlcyB5b3UgdG8gYWNjZXNzCj4gPiA+IHNv
bWUgb2YgdGhlIFBIWeKAmXMgZGlhZ25vc3RpYyBmZWF0dXJlcyBkdXJpbmcgbm9ybWFsIG9wZXJh
dGlvbiBvcgo+ID4gPiB0byBvdmVycmlkZSBzb21lIGJhc2ljIFBIWSBjb250cm9sIHNpZ25hbHMu
Cj4gPiA+IAo+ID4gPiAzIGRlYnVnZnMgZmlsZXMgYXJlIGNyZWF0ZWQgdG8gcmVhZCBhbmQgd3Jp
dGUgY29udHJvbCByZWdpc3RlcnMsCj4gPiA+IGFsbCB1c2UgaGV4YWRlY2ltYWwgZm9ybWF0Ogo+
ID4gPiBjdHJsX3JlZ19iYXNlOiB0aGUgcmVnaXN0ZXIgb2Zmc2V0IHRvIHdyaXRlLCBvciB0aGUg
c3RhcnQgb2Zmc2V0Cj4gPiA+ICAgICAgICAgICAgICAgIHRvIHJlYWQuCj4gPiA+IGN0cmxfcmVn
X2NvdW50OiBob3cgbWFueSBjb250aW51b3VzIHJlZ2lzdGVycyB0byBiZSByZWFkLgo+ID4gPiBj
dHJsX3JlZ192YWx1ZTogcmVhZCB0byBzaG93IHRoZSBjb250aW51b3VzIHJlZ2lzdGVycyB2YWx1
ZSBmcm9tCj4gPiA+ICAgICAgICAgICAgICAgICB0aGUgb2Zmc2V0IGluIGN0cmxfcmVnX2Jhc2Us
IHRvIGN0cmxfcmVnX2Jhc2UKPiA+ID4gICAgICAgICAgICAgICAgICsgY3RybF9yZWdfY291bnQg
LSAxLCBvbmUgbGluZSBmb3Igb25lIHJlZ2lzdGVyLgo+ID4gPiAgICAgICAgICAgICAgICAgd2hl
biB3cml0ZSwgb3ZlcnJpZGUgdGhlIHJlZ2lzdGVyIGF0IGN0cmxfcmVnX2Jhc2UsCj4gPiA+ICAg
ICAgICAgICAgICAgICBvbmUgdGltZSBjYW4gb25seSBjaGFuZ2Ugb25lIDE2Yml0cyByZWdpc3Rl
ci4KPiA+ID4gCj4gPiA+IExpbmtbMV06IGh0dHBzOi8vd3d3LnN5bm9wc3lzLmNvbS9kdy9kb2Mu
cGhwL3BoeS91c2IzLjAvZmVtdG8vcGh5L3g2NTJfdXNiM19zczE0bHBwXzE4X25zLzQuMDdhL2R3
Y191c2IzLjBfZmVtdG9waHlfc3MxNGxwcF8wOFYxOFZfeDFfZGF0YWJvb2sucGRmCj4gPiAKPiA+
IFBsZWFzZSBkb24ndCBpZ25vcmUgbXkgY29tbWVudHMgdG8gVjIuIFRoaW5rIGFib3V0IHRoZSBj
b2RlIHNwbGl0Cj4gPiBiZXR3ZWVuIHRoZSBnZW5lcmljIElQIGxpY2Vuc2VkIGZyb20gU3lub3Bz
eXMgYW5kIHRoZSB2ZW5kb3Igc3BlY2lmaWMKPiA+IGNvZGUgdXNlZCBmb3IgaW50ZWdyYXRpb24g
aW50byB0aGUgU29DLiBZb3Ugd2FudCB0byBhdm9pZCBtYWtpbmcgYQo+ID4gbWVzcyB5b3UgbGF0
ZXIgbmVlZCB0byBjbGVhbnVwIGJlY2F1c2Ugc29tZWJvZHkgZWxzZSBsaWNlbnNlZCB0aGUgc2Ft
ZQo+ID4gSVAgY29yZSBmcm9tIFN5bm9wc3lzLCBhbmQgbmVlZCB0byBwdXQgdGhlaXIgb3duIHZl
bmRvciBzcGVjaWZpYwo+ID4gaW50ZWdyYXRpb24gY29kZSBhcm91bmQgdGhlIGdlbmVyaWMgY29k
ZS4KPiAKPiBBZ3JlZSB3aXRoIEFuZHJldyBoZXJlLCBwbGVhc2UgZG8gbWl4LCBzcGxpdHRpbmcg
d291bGQgYmUgYmV0dGVyCgpPSywgd2lsbCB0cnkuCgpUaGFua3MsClh1IFlhbmcKCj4gCj4gPiAK
PiA+ICAgICBBbmRyZXcKPiAKPiAtLSAKPiB+Vmlub2QKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
