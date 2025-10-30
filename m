Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A2C7CCF9EA
	for <linux-phy@archiver.kernel.org>; Thu, 30 Oct 2025 05:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/IxZdC+/O8/sUb0hoiv9cPoWYHNLgcpdBqxP5zFelos=; b=YxHfwlbpfDn9J4
	JflnUEfZ5TqMXmR8ckRDrTKax+xcm50eTq2DxrVr90DmN1di5t2wy4UIUmQ+XFM+1QkfaTRWOvJE2
	mBXycx6WoUefvF2rw1qXmUYPloPNSBAwoairMb/dJzHtkbbFX/I6LukwPoFQR2iCjwYrCETRvJ4gg
	VhK4oCrYtqfyo8uAkU+NWnmaFVc9bpN1aYNrFBQGwlZhY9AWBk/YB59PdlWFI2ega+3g7mSj6njVc
	HP+iUgYwZPbjQRp6aFa7lOHjyIq7zvXEYR7s2ek/hxIDlNQW7PdfC+BrUZmxt0USmtZJWoepp3/u4
	ZStuRowo32v9Cc2VGd4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vELbt-00000003Wrc-2NOy;
	Thu, 30 Oct 2025 05:54:09 +0000
Received: from mail-koreacentralazlp170130006.outbound.protection.outlook.com ([2a01:111:f403:c40f::6] helo=SEYPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vELbq-00000003Wr5-2R6J;
	Thu, 30 Oct 2025 05:54:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hCcIq4U19mRXKxNYE0ymzVfwoUGej2m2kaDpmd3dXov7jjZkZpfoWVMZOOVyAEKQjyK9ZKyCAL2q6VrsUpjuKDRBzx8T2P7WapQ5wKwIApQrwX2EHVWGK9P+CSp/5Q+PTdDCYmVHONkGtYpLvVXu/D7yNwLgWfEA2UZcJzjzzD3r4Jr/SB83lK6y/Q/1UxVFo+6mrsQw454cpDxWydxDmwZKproh1APTfmunT3q9CTA6ldbAoxPn9jy1Ghs7PGa72W7CjO/JNukxiqIS6aTKymmHP+BZjOjIYlLe89ZcVPEGFIlmAMSJhLAkpTNPK6keTGEn+Vd3CC+tm9OIjhKtCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B+Rute5EbUI5miTKWp/5rVHJjzKz9Gq1NiJ4bCqlJcU=;
 b=WbT1BoltzI9VIEYAcgisbAxiW2LFvqnWzMzQl4I/02vhRv5jST3p2l/NsycTKzKT0wnO0CwINMLflySBDxZiiOssvLQOCeFoRb4VLdKoGNgppNvOyCPfE5uu+edNtV9bJdRnq+pNhKPZvCzhVe7DwJWnLFYPgV7B1aCIH3FFlhgt2fBjQv459CwMhrL4p4J3cUgxSmFFAFJJhHWVaUctUNkFjscvOZh27p9gSlT6jb8BNiWeA85SCQWyDERKCex6DCyVl11q+XN3PT5DAjjJL0VaaKP2ixlM6fgx+lz0QoWjx6FlzoY+C1v0sn6775Wz+5qrHhAY5eMw1hWEzRs3Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B+Rute5EbUI5miTKWp/5rVHJjzKz9Gq1NiJ4bCqlJcU=;
 b=WH7rHAIli65A8zn5Y/K7RxSnqTEnZU7T/IU/bLutdmkxsNMJjGCMXuAmzJxjbzMJ2QlXGgSosD2ZmVoAcDPvQislUueJzMCVrLI8xe3rwSH/x3xuedLm9G4/vFKr94nwS4wplEFmu/646UrhS/g7fNmkf61eHykeSB1wusgM+gjHGL9oQ2+GxJCoN9+g68lPIEiBr6CzhwxWvXghWxCk751A4CutVupTQPV9m7v13/Hrt/2qroiFT51yP6ZRQWWibco0SkQK6ILr/4e19XrdZGOhjvXBWzpARxBkFy4/iyBrkSMxW8IJL2oN6ofCfdmNBxJXN0xpUpFl9UBLRymdUw==
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com (2603:1096:101:5a::12)
 by KL1PR0601MB5598.apcprd06.prod.outlook.com (2603:1096:820:9a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.13; Thu, 30 Oct
 2025 05:53:55 +0000
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28]) by SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28%6]) with mapi id 15.20.9253.018; Thu, 30 Oct 2025
 05:53:55 +0000
From: Jacky Chou <jacky_chou@aspeedtech.com>
To: Bjorn Helgaas <helgaas@kernel.org>
CC: "lpieralisi@kernel.org" <lpieralisi@kernel.org>, "kwilczynski@kernel.org"
	<kwilczynski@kernel.org>, "mani@kernel.org" <mani@kernel.org>,
	"robh@kernel.org" <robh@kernel.org>, "bhelgaas@google.com"
	<bhelgaas@google.com>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "joel@jms.id.au"
	<joel@jms.id.au>, "andrew@codeconstruct.com.au"
	<andrew@codeconstruct.com.au>, "vkoul@kernel.org" <vkoul@kernel.org>,
	"kishon@kernel.org" <kishon@kernel.org>, "linus.walleij@linaro.org"
	<linus.walleij@linaro.org>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, "linux-aspeed@lists.ozlabs.org"
	<linux-aspeed@lists.ozlabs.org>, "linux-pci@vger.kernel.org"
	<linux-pci@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "openbmc@lists.ozlabs.org"
	<openbmc@lists.ozlabs.org>, "linux-gpio@vger.kernel.org"
	<linux-gpio@vger.kernel.org>
Subject: =?big5?B?pl7C0DogW1BBVENIIHY0IDgvOV0gUENJOiBhc3BlZWQ6IEFkZCBBU1BFRUQgUENJ?=
 =?big5?Q?e_RC_driver?=
Thread-Topic: [PATCH v4 8/9] PCI: aspeed: Add ASPEED PCIe RC driver
Thread-Index: AQHcRyhCH7zDOQXtTkOMFWnp6NUXRbTXzgwAgAJk+tA=
Date: Thu, 30 Oct 2025 05:53:55 +0000
Message-ID: <SEYPR06MB51340DD75653EAC61D724F589DFBA@SEYPR06MB5134.apcprd06.prod.outlook.com>
References: <20251027095825.181161-9-jacky_chou@aspeedtech.com>
 <20251028171330.GA1506282@bhelgaas>
In-Reply-To: <20251028171330.GA1506282@bhelgaas>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aspeedtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR06MB5134:EE_|KL1PR0601MB5598:EE_
x-ms-office365-filtering-correlation-id: 391a1223-4275-4a3a-c27d-08de1778b64c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014|38070700021;
x-microsoft-antispam-message-info: =?big5?B?M3BrMXM0YmhWb21XTi9TOGkxVWRtQSt6djdPR2EzWnUrVDVNRng2QXlVZXBuZ2tu?=
 =?big5?B?akNVTFp3S2VCTE12dUcySXdueVRsNHRwSWtEMDlKYzg4enplWlg2Tm5ITDJMM3Jo?=
 =?big5?B?ZTAzNzhaTC9XbTMxY25vQ2EyUGEva1lGSTFDNVAvL29OWnRwcVdFMHNMSTBBTmlv?=
 =?big5?B?MmlUNXAraktJWGFtTU9JaEI2aWZvdjZ2YmxXR2VYQjEyZzlLdHdhVnZ6NlRuQ0cz?=
 =?big5?B?bHpydktScVpQVEt5M0tVb1JzVm1KZzVDU3h0NDJjZXhiOGg3N1NtdnBUcFRNQUE0?=
 =?big5?B?OVYxaCtQbGxBUk80QUJ5OVppNzNHdjBnWlhjaThmS25NQnZwR3A2ZVdtQ29OczNO?=
 =?big5?B?akc4eFQwOHUzbDVSSkVCSVc2SmpZZVNGSHA3cjd5eENKK2g4NThhTXdyOXV4V0lm?=
 =?big5?B?TzVodFYvcUFVMEJVNS9OZElVcWkxMmVzcEQyc1pVazVWSjBaOWNjcXpzOU1qV011?=
 =?big5?B?d2U4c3NtR2Y3ZkZRS2hzZEVvSnFaUnBFU0lTaVJkMlA5RGVpam9GVkpsNU9rSkVJ?=
 =?big5?B?bk92SWNFemNvWTdjNVFCVnBqRU5GSXhzdFZ5ZWVxL1dsaVMveWh4MElMRG9seU80?=
 =?big5?B?U2J6dzdnczBMMDgyMDhjSEt0YmtJYmhpa3YrL3pUWHlsRm5VbUJkZWM2bUtDY3B0?=
 =?big5?B?MDNqcGc4dlZ0bHNkYjFPWHk5N3AvMFR6MkVHcDFhb0VTSUdVWDM5TFpTWENZaE9M?=
 =?big5?B?Tlp3UnBKMTkxRzhyaGlXNE1GMWVjUUhiQVl2M2p6MXY0M2IzQnAya2pqRVRBVGRx?=
 =?big5?B?UERCUnk4OUJDT0Y4UjZWSWluYkJSY1dxT0NsNDArMStwMTcweG9hVDhOTC9meUhh?=
 =?big5?B?UERnckxPZkR2R3RZdU4vVlhmTUJqVHlvWWFWcy9KejQ5Rk1hcURYNzQ3WnB6emEw?=
 =?big5?B?RlJaRjVPRjRTSTY1amRBSkZ0T282ZHdRamJhQTJ4bThlZnoyNi9vRnBlZjhTeVU0?=
 =?big5?B?bmFCd21LVkZzUlR4L2UwV0Z1NnRJM0xydjNZTHRMaDYyRVFGRzFJd2Q1R2ZkM2JW?=
 =?big5?B?cGd0ME5rSTVyamF2WmIvalRJYURzTEVZWlN0eU9NM2p5YlkyUDRsTGVkaGZoM0lG?=
 =?big5?B?Z0V2WEtQWVByZVVmY3V3OEhmaWM3Z2Rkc3p0MlVXVXREMXo0KzNQTVNGQmZYaHdP?=
 =?big5?B?NVVaV2c4S1pxdlN2T1JOWjNrWjUwRWRIb2ZOK2I3M1J0cWhya3NVVStjbmdQZ0JW?=
 =?big5?B?akNVWUpXNDIxY25VRGNiNkcyVC9hZTk4SkR3eXNQbXJhTnpxckhwU3Z6ekNiSzJl?=
 =?big5?B?cTRkWVd6NC9UUEFvTlRKUUhqajJPSVJOUEVCZFJHYWtaRmZQMnM3ajZFVHR6dUdm?=
 =?big5?B?cmVTbTMvWG43d3J6QTY5ZGthYXRiajdDRFR6ZHFSWGdYSDZFeldpT09rS1dvYXFB?=
 =?big5?B?cE9HOUc1N2E3UVA2V0cwN3ovaEJFSW54VmdvTFphKzh2ay9TblNTNk1qcjFIQkUz?=
 =?big5?B?M3RoTzNmUEhYMXFWOW1EVmdaRTN2OG8vWmg5Yjg0R2tXZ1QrNzJPcDJYbDBWcjV2?=
 =?big5?B?QWJvZkl5cVNJTEdqVG1EZWxXMG1naEhIeXR6VWpoVEsrYmZQZmpiT2g5MVIwYzI5?=
 =?big5?B?cGVXL2V2czNCYmorbCtqdkhZTURIV203RE00eUJ0UEQrSU1KSE14Y0oyVGUwc1Zz?=
 =?big5?B?ZTZkSFV3RkE3cHliQzRtbG1PTC8xQXBnajFFWFhSRjlpYSs5Tm9BL1hNRndOTUJo?=
 =?big5?B?ZlRWRnhVNXdsWm82M0prc2lQTHg2NHlQYnBOK0ttVHFVaXRZV1J5V3hKL2ZvSEZZ?=
 =?big5?B?MmZJdnNBNURTYmtSNVJzQ2s0RUYxcVUzam5teG4rVnMvVWJYSGxzc0dhbXduYTZP?=
 =?big5?B?L3EzV1hVdlByU0tEOTBjQTcyRG1CR3EwK210WWZiL2xEdUQ2OEJ4REdZTlhPMWpv?=
 =?big5?Q?SiAVjlULAleYYYflFV/zmyXGkZ3swtEEJLpJPhKOGN4F0MAl?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:zh-tw;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEYPR06MB5134.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?big5?B?aCtmdm1yd3BhV3VpaUlya2FhZGlzTC9FZk52bW1jWDd4eHhWZDVNNTVzZ1hYdDBX?=
 =?big5?B?VE1QNDR2VHNUOXVUT3cyTUF5YVE0ZWtrdCtVc2pqOUVYRmNkYVQyQjBWeUpYbkM0?=
 =?big5?B?RVFLdFYyemxUeWlRZjRTQ0d2RGx1RlQ2cXVSMkJqZElLQUh0N29EbWRqcll3Q1hE?=
 =?big5?B?OFFFWk5SNUFxaW50UUdVK3dnSE1uV0c4ZnRPb054TVQrVEhFS3U2Um14dDJwMnV0?=
 =?big5?B?akxKZDE5T0JDT0p6VmhoRG9vZWtPSUk1ZFZVU0FYS3AwUHFzb2V2VHpsR0VYUEM5?=
 =?big5?B?UWxGZDJtenc1ck1nWm1ycDUvNkd4bmRwZW5tZzZEZ25iL1dTNVZiWnBZekRJQnJr?=
 =?big5?B?UWpDTE83MStzOTMrQ2xqeGZaanpwdzg1M2pyaHVuRThUL0h1Rlk1NUdoRnRrd0k4?=
 =?big5?B?ajNycWVZNUxVZGVuc21TWEttQXlDKzR3dnFuNi9FV0ZnR3JOZWZpQkVYakVSakF5?=
 =?big5?B?VytrRVF4cyt3M2dHQWFRRHVrMFZtUDA1ZFBMN1k3SUVVbXlERGp2VnNSSTQ5T25n?=
 =?big5?B?N0RjTmxoK3BUcmk5U20zOWJpVksyVVlOYjBCeXpvNkxEc3NVdGM0N1JwRW9xRDI5?=
 =?big5?B?LzFVTmJoZStITTNzL0hRcTVnVUFOMUFCMmRucE5HUmVlN0Z3R3dXUFE3QUIxVFZ4?=
 =?big5?B?Z1M5RXVTWE1RVU5tTUpKRU1MdHRJSGdGemlEQjg3OXppdlM5OTdBL0o3cW5Hd0Zk?=
 =?big5?B?ZXdpdzNCL1QyUDBmbTVDT1AzcG1TdUQvekVYdmZyV0dhL0NieTJYaEI2MFFMV3B1?=
 =?big5?B?blRrVVdFWTYyWnR6aVpPM0tUR2Z2dkRxZ3hoTExKYXQ2MEc4eDNaZVBwMGZCTWpD?=
 =?big5?B?TGJJbzQ2dURXZE5sd2dDNDk3M3JMQkkyZUQrS0ZDenFNcXVFZmd6UXhKbCtzYmN6?=
 =?big5?B?dDh6bjhlZDB2cHEwUGdpMnFQOGhWNlQwb0dHTjN6bVMrMFlHc3BSRFk4WHFTNU1h?=
 =?big5?B?NXdpd1VPMkkrNTdHZVUrVkxqb0tldDRtRlkwRVdkK3E0bFZWZUxLaUJtVjIzZ3hP?=
 =?big5?B?SXN2NVVaVWhubEpBa3N3ODFXYmJ3Qk9pWXZHM3pxYXp2QzJVQTBON2N5dHIrdjFp?=
 =?big5?B?WDFDWU80L1ZIOTFwU09wRW5pNXgxdGFxRzlHWmpNUUZDT1NUdVl6RWg2QmowSzVv?=
 =?big5?B?Tyt5UTRpQkJNSkZIZ3F0SVI0ZHRIVENkWGhwV1B2amgxN2c3TUlZTjlnZnVNb2Q3?=
 =?big5?B?WFNRSytCSUhUY1VBVitTWXBQcklkOHpNL3MxRkFiMmJhYzdDMHJ4TjZWU2NwZjVC?=
 =?big5?B?Y01pSzVHLzR3K1pDZkI0RFpRNnJkUTZzR20xRG9ZanpQRE1FUGJ4blI2aXBoQy9G?=
 =?big5?B?OEpIT0VSamRJT2EyemZzd3FRcG9uZHRHTkUxY3BDeXNNdDQ1R3dzdUgraTlLaGFI?=
 =?big5?B?OGJKREJnaTI4RTlZUXpHNVRKSXFhNTZNeU9HQ0RYMm1VaHVjNlhoMStjUkIwUmhC?=
 =?big5?B?QTRHd29BUDJyTy9sMGN0UUNHSW1OTzFVcTVLOFZoV3E1eTN5dXNLZnBJelVIUzRS?=
 =?big5?B?TnEzK2kzK08xZmFZdUo2Rk5EU1gwaGdad2gxb2UxMXk1a0JrYm83bkxzS2s2cm1B?=
 =?big5?B?NW9FZlAyS2pMU1Rod0ZDWVJySVg5Ny9rQi9UcklSUmRFdkh2QXU5ZHN3cEMxM3J2?=
 =?big5?B?bCt6WEpHUjBhaytlV0NoQSttSTkybUl5MTBvVzFtZDJGSUw0Sk5pY0g1YjJjL0hB?=
 =?big5?B?dGpwRTZJek9IcFNkY1JDR2d0QmVZMmE0amlzMDJoczZQN21kakZKaHQ3Y1JhSTY3?=
 =?big5?B?eDZEM051T2hsZEZacXA4b2UzY0JRNi9ZM1JJa0ZtVGhPWnhLd3RWMGVYaWxrQWxo?=
 =?big5?B?WnIrV1RzLzY2MHZsVWlKTVB2NEtrbjR3ZldoaUU1NWxheG0zUmw2UHRTN1V6UmV4?=
 =?big5?B?RU1wN09CMThsdHdXM3ZwOUE1Wi9YUXVlVlVCa1FQV2ZuRGJwQXFzTHc1Zlg1dmlX?=
 =?big5?B?OEFkUHJJKzQwejBuZmR5UGw5MThkK0llSzVpZFJjYUtDL2xGaTN1NUk5eXV1QnZH?=
 =?big5?Q?aLD43Vm2SLy8Ev/F?=
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR06MB5134.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 391a1223-4275-4a3a-c27d-08de1778b64c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2025 05:53:55.4806
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tUYWb67KgUc0PvZTAjYA3jiFi480Q+FScz+ef8T8JdtvpPmdY337qLNeaZIOfHUHQqFyPmvy/GvK79YZG/WUev3g9u0/NI3k8PRyxYwroOs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR0601MB5598
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_225406_784602_CDFFD7DB 
X-CRM114-Status: GOOD (  23.87  )
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

Hi Bjorn,

Thank you for your reply.

> > +config PCIE_ASPEED
> > +	bool "ASPEED PCIe controller"
> > +	depends on ARCH_ASPEED || COMPILE_TEST
> > +	depends on OF
> > +	depends on PCI_MSI
> > +	select IRQ_MSI_LIB
> > +	help
> > +	  Enable this option to support the PCIe controller found on ASPEED
> > +	  SoCs.
> > +
> > +	  This driver provides initialization and management for PCIe
> > +	  Root Complex functionality, including interrupt and MSI support.
> 
> Maybe "INTx and MSI support", since MSI is an interrupt?
> 

Agreed.

> > +/* Complete status */
> 
> "Completion"
> 

Agreed.

> > +static int aspeed_ast2700_ahb_remap_to_bar(struct aspeed_pcie *pcie)
> > +{
> > +	struct resource_entry *win, *tmp;
> > +	struct pci_host_bridge *bridge = pcie->host;
> > +
> > +	/* Configure AHB remapping to BAR on AST27x0.
> > +	 * The BAR region is HW-fixed in AST27x0, these BARs will be filled
> > +	 * in the ranges of pcie node in DT.
> > +	 */
> 
> I don't understand what "HW-fixed" means here.  It looks like you're writing
> host bridge window addresses (that came from DT) to the hardware.  That
> sounds like they're not actually "fixed" but programmable.
> 
> Host bridge windows are not BARs themselves.  Mem space for devices below
> the host bridge is allocated from the windows, and the addresses are
> programmed into BARs of those downstream devices.
> 

I checked our design, and there were errors in my description and usage.
I want to configure the "PCI address" from the range property of dts.
Therefore, I also get the wrong address, here will get the soc view address.
I will modify our code and my description in next version.

> Multi-line comment style:
> 
>   /*
>    * Configure ...
>    */
> 
> Wrap to fill 78 columns, or add blank lines between paragraphs.
> 

Agreed.

> > +	resource_list_for_each_entry_safe(win, tmp, &bridge->windows) {
> > +		struct resource *res = win->res;
> > +
> > +		if (resource_type(res) == IORESOURCE_MEM &&
> > +		    !(res->flags & IORESOURCE_MEM_64)) {
> > +			writel(ASPEED_REMAP_BAR_BASE(res->start),
> > +			       pcie->reg + ASPEED_H2X_REMAP_DIRECT_ADDR);
> > +			return 0;
> > +		}
> > +	}
> > +
> > +	return -ENODEV;
> > +}
> > +
> > +static int aspeed_ast2700_setup(struct platform_device *pdev) {
> > +	struct aspeed_pcie *pcie = platform_get_drvdata(pdev);
> > +	struct device *dev = pcie->dev;
> > +	int ret;
> > +
> > +	pcie->cfg = syscon_regmap_lookup_by_phandle(dev->of_node,
> > +						    "aspeed,pciecfg");
> > +	if (IS_ERR(pcie->cfg))
> > +		return dev_err_probe(dev, PTR_ERR(pcie->cfg),
> > +				     "failed to map pciecfg base\n");
> > +
> > +	regmap_update_bits(pcie->cfg, ASPEED_SCU_60,
> > +			   ASPEED_RC_E2M_PATH_EN | ASPEED_RC_H2XS_PATH_EN |
> > +			   ASPEED_RC_H2XD_PATH_EN | ASPEED_RC_H2XX_PATH_EN
> |
> > +			   ASPEED_RC_UPSTREAM_MEM_EN,
> > +			   ASPEED_RC_E2M_PATH_EN | ASPEED_RC_H2XS_PATH_EN |
> > +			   ASPEED_RC_H2XD_PATH_EN | ASPEED_RC_H2XX_PATH_EN
> |
> > +			   ASPEED_RC_UPSTREAM_MEM_EN);
> > +	regmap_write(pcie->cfg, ASPEED_SCU_64,
> > +		     ASPEED_RC0_DECODE_DMA_BASE(0) |
> > +		     ASPEED_RC0_DECODE_DMA_LIMIT(0xff) |
> > +		     ASPEED_RC1_DECODE_DMA_BASE(0) |
> > +		     ASPEED_RC1_DECODE_DMA_LIMIT(0xff));
> > +	regmap_write(pcie->cfg, ASPEED_SCU_70, ASPEED_DISABLE_EP_FUNC);
> > +
> > +	aspeed_host_reset(pcie);
> > +
> > +	writel(0, pcie->reg + ASPEED_H2X_CTRL);
> > +	writel(ASPEED_H2X_BRIDGE_EN | ASPEED_H2X_BRIDGE_DIRECT_EN,
> > +	       pcie->reg + ASPEED_H2X_CTRL);
> > +
> > +	ret = aspeed_ast2700_ahb_remap_to_bar(pcie);
> > +	if (ret)
> > +		return dev_err_probe(dev, ret, "failed to assign BAR\n");
> 
> This is not assigning *BARs*.  A host bridge doesn't have BARs in the PCI spec
> sense.  It might have programmable address ranges, but the host bridge is not
> itself a PCI device, so its programmability is device specific.

As you said, host bridge doesn't have BARs.
Here I want to configure the "PCI address" to our design.
Will modify this in next version.

Thanks,
Jacky

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
