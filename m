Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D0D2CA9ED0
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 05:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zW+hnLuXI77FXfhE4bIR3Rzf/PTrmzhHjqLKxROUOwE=; b=n6ExjHd9Z6cDXt
	8G/0fA2l/pGyAbubCTGb5MCzj51qmZ+DELDCuxk6U67IO2GdiSfZS+koSY75g5NcyAOaBrHacrD1D
	406u6Y5WjkAWvuFDkqMy/nUralpEtbhnLBZmT6q9pcvqszG7lz9SNO+eRF2pbd7PJVvonXRDgP2Nf
	MjxIZsvCif+/LrTujPa8soojzw+pJ8g9v1kkBrS5mFlFnzAsRGeqSaBTO5g/M9SHBA2/M6lsOTGDt
	2lIqznDu6h2NYA+gso0ob1MT3UdgVluxwablDFXI8e4SFTBsuNDOctQESE8/G7Jncm4Lm3BtLDlle
	1CGWC8HmEuN9sTWhIekw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGV8F-0000000C1U6-3nus;
	Tue, 13 Oct 2026 05:32:59 +0000
Received: from mail-japaneastazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c405::5] helo=TYPPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGV8C-0000000C1Sm-27Ma;
	Tue, 13 Oct 2026 05:32:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oda/I5xrdOtTNvEQQzqqnlqQcMWeL+CNVnYi7HrdK/5tYSC9iP2PyHL3koDYYWVFjddW7wuYAidsKCAkMt2Jv8jMQAdcY3XODid2LTIWj1jnNs632WclN2/5suIcSUHvEPztQuObL5xM/iWkKmZqaBwOzBIYd/FtXTUa+9yn31fQppTrTlhoMOHdjxpbIqgVVZvAebCjyzaNI5Rd1I1hcAFvfHRa8EWFBrWrRse1XE5RXWCKzujT/s3Up2onJ/b6KQrmYrOAO5ZYvzsx0Uqbs82ZL4hpkC6t/vdqFfNeVNfBceqbvqHQWh5kMqmYI0nxt6idklWz8ZCnbqBmf7LexQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=igItYK4II0G13bwY+AamOS4O0Vn6P2rLyL93Zhzwzrg=;
 b=oVx8pEp3WNjWiNoHuh1cRu5hTo9QQz9nx+L/feY5tIkv/OqxCm9KCmjBJVAEH00iIyHyjOID3TOnxSo2LNLbYOOgtcZJ7UNDuJ2Pl8w8hgYp2FeWSpMDLnAEZLaixOE8pZ7+TldM8gf9Oze9enB2QuMFI/d/+eW/PyJN22ncKBxwFgDUm+JjIDOc+v2GH/a+JXZIfN76yNC8xhfX4E2Jdp3Nyk9TUNk8eFHVjZOgC5Ie8izVo8tph/7Lfzs5IkWCICVeNMSi0jVdt+HOGSHHvwJO6Myf8rXesp/VQ3u37P7CxqQOyqFP9kEdyea2cEUq7ODHQxMNenLEXGTOA2Vq7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=igItYK4II0G13bwY+AamOS4O0Vn6P2rLyL93Zhzwzrg=;
 b=Kc3i2HNDH2A/MtqER14n2gM1pblvznkhxd2kQuU7Qb11r8Y4Ji+dXX1q2zjXGTdmIIYWg61gleRHQIwhCeNLWiaWIeVZflZGVyXo3xhISe7s1VqTgauHVv0bvWFFmojjI1eymGD71qgSnCnVQm1PIUhVJPraFVRz1Kf0VfLO22b/V6ZFWtVi5TLWqfA3BqFluAUXOyq9llghH9Fe6MfkqxmQd2IPvVeebeO4lSOJG0WYnMEpfAR6Ht/ZKovNTB18UhYeIf7mjKbMXjlRWEHcQ9IaM2zUH/b+ju1lBCEVKiGBm5TTZVfva+0QWQ6zgZoyo4ZJwvr8uzGlbLTZsfW70Q==
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com (2603:1096:101:5a::12)
 by SE3PR06MB9263.apcprd06.prod.outlook.com (2603:1096:101:325::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.496.23; Tue, 13 Oct
 2026 05:32:47 +0000
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::f53d:547a:8c11:fc6c]) by SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::f53d:547a:8c11:fc6c%3]) with mapi id 15.21.0496.021; Tue, 13 Oct 2026
 05:32:47 +0000
From: Jacky Chou <jacky_chou@aspeedtech.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, Andrew
 Jeffery <andrew@codeconstruct.com.au>, Manivannan Sadhasivam
	<mani@kernel.org>, Ryan Chen <ryan_chen@aspeedtech.com>, Billy Tsai
	<billy_tsai@aspeedtech.com>, "linux-aspeed@lists.ozlabs.org"
	<linux-aspeed@lists.ozlabs.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: =?big5?B?pl7C0DogW1BBVENIIDAvM10gcGh5OiBhc3BlZWQ6IEFkZCBBU1BFRUQgUENJZSBQ?=
 =?big5?Q?HY_support?=
Thread-Topic: [PATCH 0/3] phy: aspeed: Add ASPEED PCIe PHY support
Thread-Index: AQHdVxgnr7aFySEh9EaR5GOQ5ow9pLb1BNkAgAXz0aA=
Date: Tue, 13 Oct 2026 05:32:47 +0000
Message-ID: <SEYPR06MB5134FDEDBA70AD7A2E61A5CB9D9E2@SEYPR06MB5134.apcprd06.prod.outlook.com>
References: <20261008-aspeed_pcie_phy-v1-0-96764937aef0@aspeedtech.com>
 <20261009-vociferous-puma-of-amplitude-1c4dde@quoll>
In-Reply-To: <20261009-vociferous-puma-of-amplitude-1c4dde@quoll>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aspeedtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR06MB5134:EE_|SE3PR06MB9263:EE_
x-ms-office365-filtering-correlation-id: c243654a-b44a-490f-6e6a-08df28eb6a03
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|23010399003|7416014|366016|1800799024|38070700021|56012099006|4143699003|10067099003|22082099003|18002099003;
x-microsoft-antispam-message-info: QuzgrEycdTG+ZoYBAaeGt3GzT79L4daT2u1URVKfbX5tUqJafwQnKF5IrAExOyGwxoRcU2TepSeyliKHllbXxBo5JPohhMfCI2unNeEVW2Elp/oXwQhDpeborWtCSrPsGoSwGoFW5UecezhdEnJjusPEDSSj8CUXgMuIgJJP3Nv7Q4t73jRlD7XyAcTNZwPkq8W7qw04/EC0TxyRNmEFKe4ltQRIWjOJyeRgMBmiwoG+8WBunJMXx+PnxfnZdtlZVHmSDrEMPBH6Aw6XNolkxtRbcT0VpPOGx82v6MTd95DomP2Fhcbp/nfOfv5SGpnyr1FSTEpv52xy3lITFk0TmJJYj7fDBG1qP2JFgbjXaD/umdOVmiYYjolPwTlxvU4z991/+2RFknENEIoXtev/CItZPDiNzREawV5RMdzpUKIpDsDGWnl05xpWU9SdumL/nrxAIC1qRCUYMgE/ssIN7G/irdrnFtYiTvGs871qHTsT0IyygZs1xDNTRBSU706TketmJisMzm8DXoSX3+JgfwOLT0tXr3fh0UmCHjtqG1l0xy4/f/otiGy+vD8fL6uuHwwgThXLtPKPouO0XLkWH/v2OfgmFPs3EleZy9ecvyFrp7P68LnLoNQ39TOJU8NeCvOMz5OY9fJk1ndWzRWsr0d9M/eXpxeVzM3gBsWbfH/55OsHq/qXfgjsaN4pjNlPcJozazQqpGf6d1VGpFuaT6kq77XoPQcDOxc1nwNF3hY=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:zh-tw;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEYPR06MB5134.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(23010399003)(7416014)(366016)(1800799024)(38070700021)(56012099006)(4143699003)(10067099003)(22082099003)(18002099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?big5?B?ckRwdGFrVktDRFBVY0Vva2xGQ1d6bkljQWF0dlJyeTUxWTZnS1ZLVjNjSnExZnZu?=
 =?big5?B?bjkrdVFPL1NTd1ZJVGg2SWV0MURoeVZXQktiQWtVQTFsc0JZSTIyK2F4ZzF3U2ha?=
 =?big5?B?Q2VYUEttOFkrQkpDdEd3b04vdkZkMGFNVWZJdStMbDlnLzE4WmhRVVR0U3UvQkgx?=
 =?big5?B?QU1PYVJCS1V6TXRGbXVob2NhYkFmODRMSXJOMlRTSXFpVTBvZythRTREZVlQbXdn?=
 =?big5?B?bktqM1M1ckthcUdEdjNiTDU0KytsYkU0ZnpRYkFPUUd4UEFJWWt2akl4cFo0Ykhr?=
 =?big5?B?dTF5KzNxMEF4aHMyK2I5RytWcXNwaEFaY3pBQzYrZDNwTUI3TUprc1ZtUXBuY2pz?=
 =?big5?B?bnJvSnpIS3FIaTRBdEc0MU8wWnRwR0ZES3ZNdXBRMWcyQktSUTM3VWlsSU5HMzBY?=
 =?big5?B?N1IxTEl4MnpvZHM0cjI2N2l3VUk3cWhHY0puaWUwTzhJbHY5L0YzaS90eDBiSDRT?=
 =?big5?B?Nkp1U3QyVnhOa055ai9QU2ZtTE5heXEvZnpLeEhBS3U0a0YxRVNzNEt1S1g4YlRU?=
 =?big5?B?TmE5cktLYmpsblQyRGtqaisxOWRiMGV6MllvM3diSmxMR0tNTjZWZi9tZ0d4VzNE?=
 =?big5?B?d1I5M3RpMWdXeTBNMHZKMUxHWUk4cGdycG5VTmd4WlZKZVhuOU5SWXhUTkRNdXo5?=
 =?big5?B?QnZvZUNyc0dQNmVZeVJYcE94Sml4cE55Q252aUF1ZHgrSEJ1a25EVGcyVUtwc2Ns?=
 =?big5?B?QUFsaXU2UkdCa0FQSUlBd0NCT2JDdmdaa0lKNmpvcG83eFNqMGJidk40WUQxL2VX?=
 =?big5?B?bW9QMUpadFNKNHFMeDlWWkxEOFJxbzQrZHlRM1BRemQ0UEtUTzVWUEgwN3E3Z0Ni?=
 =?big5?B?Zjltb2RtMFkzdDg4ZWJMbTgrREcwdWd0TWlhTHNNS2d5MjJoNFhnZm9tdWV6OUcx?=
 =?big5?B?VHZCbWt5MmpqenNvb1lOWkpQMUdtaW9xTWJpZWtkazZrRDE2c1ZEYmJHVDdyKzl3?=
 =?big5?B?NmJGZ1ZObkNvejJSa3F6c1NNRmlLUHMrZFlFdDZndlpJN0s5cUg2S29Ca043Wmlv?=
 =?big5?B?VjhxRkFWanVKNkxpZ2tBSXN6NWYva2FzbG5YV0xxakJMM3UweUNpeS9GQ3pPcS9K?=
 =?big5?B?RitQTkk5SzdrK0xCbEw1VlpjWEg5Yis5MmxrTDBkQk1jd2dUd0VUMXh4L0xGc2ZN?=
 =?big5?B?WW9jaHpNSmt0Nk82MWNRUUZqVFVLS1Y1WFA2N1I4b3BlZ2EydXV2UDA4YW5pamJV?=
 =?big5?B?TXVTRTljMmN4eEs2Y09SdXE4SUNwalFIUDlycm9CNEZWZFVtalZhb2MxaExobHMx?=
 =?big5?B?aUNVcFoxZ3NSVTNTWUY1TkRta1FLcTVGZHJZOW5vRko1cmdTaUpiNkRxWnBGeGVl?=
 =?big5?B?K2d4bVFTQVVqandNN2VNVnNlM2RZblAyOGJ2YlFJWG96bEtLVGx0RFZscFNROXZm?=
 =?big5?B?eDVEN2Q0bWpqOVNWcElKc1BleEZnYkoxSG51K0lyQnhPQnd1VE9MYjJJV0M0Uitz?=
 =?big5?B?S2J4UjllS0hXb21wSG1pL0ZTQ24yQU01N1RHT3FBNFNBNnNQVEVCMzBuOVlHMGxR?=
 =?big5?B?cGJ2UDFQUXVkZDkyVXg0NmgyWTg4TVV5c0JkeDE2N3k4eG5MOUxkeW1LaDBZTWpT?=
 =?big5?B?b29Fbzk1ZDRzdHl3NFhrelBOM3h5T3hzbnRjeGJtUmNXMEZScTFvbVpyZGpmNnNZ?=
 =?big5?B?RmY0U0pqUWkrTE8zZ2tKQm9rLzRxL0VYY05XSG13Q0xBSmJ2a2NoNmtTU1l2R2FH?=
 =?big5?B?M1ZXYlYyYXpaRmlwaGR0YlE3Y1FFTTZRMTNsZk5CWStaaHhTanN3WS9YR1haZElU?=
 =?big5?B?MW9laWN6L01hWTFGQjZSSnJtOUdhMU5Jb0hhY2c4c1hLbXptUGhyTTJCZ3NFUVB4?=
 =?big5?B?TTloWlNiWTZMdHlCZUJPWCttSHN1cU5BWmRtY1RydnNwTk9HRkJRQkxma2g2OTdh?=
 =?big5?B?R1VXQlBKc2hmR2E0TmgwdTBGeEhVSlhxUFkzQzdDOS9nY2h2eGF5QVNXaHN3NjZT?=
 =?big5?B?eEJhdTZEOW9QTVJ3QUQ3cDAxbDUwT3RJZHd4bi9NUzJ5R3hzNVlqcTlnckNHa0hj?=
 =?big5?B?dmxkRjcrV05qUkI4bnJQcFVobkpDZ0FncGdWN003OWRUWDBaeXBmT2JSZ0k0Rm43?=
 =?big5?B?Q2N1ZG16eVJrNmY5ZWNMMGxTTUxqU09xa3ZqZ3pxaFBkMEFGTHA1TDRQSnlsaVIr?=
 =?big5?B?VDNFaWpWRTlkMEhyVUlVTzJlbEVGcW5QYkcrN1VtMTRhQlI0T3FQK01EQUFsTzRy?=
 =?big5?B?RGhnU3lrbDNUVjk4UlN6OVR0bURWUT09?=
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR06MB5134.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c243654a-b44a-490f-6e6a-08df28eb6a03
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2026 05:32:47.0668
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Kkmf4DSgcS8ZctjcRw0BnKw/Psm1COmyaPTlMZVpkwdGhg23ELE2iI67vrv9GVuN84t3qb1w6qKQ/j+20MTDoSLXnzLiK7whb3V22wouBL8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SE3PR06MB9263
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_223256_550760_302D0FE9 
X-CRM114-Status: GOOD (  18.04  )
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

Hi Krzysztof,

Thank you for your reply.

> > The driver registers an ASPEED PCIe PHY provider through the generic
> > PHY framework and programs the SoC-specific PEHR registers from
> set_mode().
> > For AST2600 this selects the root complex port type. For AST2700 this
> > also configures the posted/completion credit values, local scaling,
> > device type, internal reset selection, and downstream port setting
> > needed by the controller.
> >
> > This series also adds the devicetree binding for the PHY provider and
> > a MAINTAINERS entry for the ASPEED PCIe PHY driver.
> >
> > Signed-off-by: Jacky Chou <jacky_chou@aspeedtech.com>
> > ---
> > Jacky Chou (3):
> >       dt-bindings: phy: aspeed: Add ASPEED PCIe PHY
> >       phy: aspeed: Add ASPEED PCIe PHY driver
> >       MAINTAINERS: Add ASPEED PCIe PHY driver
> 
> And changelog plus versioning are completely missing.
> 
> People sometimes wonder why maintainers are grumpy. Easy answer: you do
> not respect their time.
> 

I'm sorry for omitting the version number and changelog from this submission and 
for wasting your time.
I appreciate the time and effort you and the other reviewers put into reviewing 
patches and maintaining the kernel.
I'll stop using this thread and resend the series as v10, based on the previous v9, 
with proper versioning and a changelog describing the changes since v9.v

Thanks,
Jacky

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
