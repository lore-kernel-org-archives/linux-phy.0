Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BF50C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 30 Dec 2021 04:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eT4zk8MAXcFSNLM7YFHG/rym226FyMzjkx+0RICwrwQ=; b=3VIGXb9u1EEXWQ
	hl1/trDiM3C5x7tFf7JxLaflLoIcMZ9d9Lmh0uwf7/wGXMgB+mUjNnFUFeqIRpLwtaHmw3sKCNLEi
	z0+E3oh1/qKRzIO5GyRBWJlRpwXZYg0cvbTxB3ta28qnD4s16ZvkniCndS7vraiUlpgR1dnMD7/ow
	hz4m0s/vcJFMzHxYw0GK//OhlNH8M7tEuLdd4E1qUs7xUadth5+SbbSm5/0wKyTqg9+AxsssFX8FY
	f7rcs35N6xaQyIUIH2Rz02rGQ+6OQ91pmlQo5nUfNP+WrrwNFn77QhZOGoXvW/lE0fHDugxBUWciR
	YKkVmIjTFE7VQn9CrbAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n2nWs-003f7q-Ou; Thu, 30 Dec 2021 04:59:06 +0000
Received: from mail-vi1eur05on2066.outbound.protection.outlook.com
 ([40.107.21.66] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n2nWp-003f6h-Oc; Thu, 30 Dec 2021 04:59:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SSsee+CBUKMzS8AEJ8ZsQOnhp0WanPgmyZsumi1ngDtaa9AfiCorxOdB61SgMozhNrJRFQgUO4hYSaZ/t8Y0B+FwM5r6xs2HUJn5acg4EJHqdexNNOANt4xKePA6ugqH8w7hiM8ioIgP3coOcRvCMTrKk3SQzukmuAJwvWeeEAjGoRORHRggPeQm2i/CYnBGe5zituery36YBr3D860JlPtV0GcXj0CZnTh6ryyFibhBl/sFkIgTcgUBXEMe7UEsUkHQrItLstGqt7R/0hxl8nHWuVm6DMzFCSyJ2zLiDAV3mHNU1kBe8hAVMbRut68Ot/Uu2V7R7AqOn3rF+zijqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VWacNiUSub/MKMLLD+HwnFUHeRnGVQg6zlaT80VQnko=;
 b=SuqG6qjVhsU9vVttvK2glvcKrWmT/eIClpg7bpTaPm9FtpFrEhMa1iLe+8TaPuI/Vw5kBYN1QUQ1LrBvLK44cABIQgAHZ6AilY/o807O+JLj6Y5W+oKeQ+kwAnBeVEd9CVIBMduhIA7/XrVUDQhLB8cruirx19qEk9ISlrG+yupHGUeNBk7y8OIF0ALki+zI8rXp1F5fCfMVsVGoAetIrX2akEbsB1TrAScZU+ZSbe4utgeUU2QBNZT7dAf6e0qorenEvDoDM1SWGckZmbTU4atBdQxIpNx1SgX1gNmOml6ZL/FSZwCLS5mr6gmH4S+VQyhIeyknFReb6/+mGXA2PQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VWacNiUSub/MKMLLD+HwnFUHeRnGVQg6zlaT80VQnko=;
 b=WwpzueIn+pmcA748M5IyxwMT95TIBgnkZ5/IRox/ijLOBDOXZt50/MpHR9EiYIfzE9gnfgY7P98dgptbs9Zx8Q6/RsfoPPIS1yNaNBKBNySQLNuMlnQdrUZNcJ18UZeiCn8iYtIcc3LTUyP8zXipWtRAITjNn4umYRREYZttNOQ=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by AS8PR04MB8931.eurprd04.prod.outlook.com (2603:10a6:20b:42e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4844.14; Thu, 30 Dec
 2021 04:58:53 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::949e:59fd:6098:6508]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::949e:59fd:6098:6508%4]) with mapi id 15.20.4844.014; Thu, 30 Dec 2021
 04:58:53 +0000
From: Hongxing Zhu <hongxing.zhu@nxp.com>
To: Philip Molloy <philip@linutronix.de>
CC: "l.stach@pengutronix.de" <l.stach@pengutronix.de>, "bhelgaas@google.com"
 <bhelgaas@google.com>, "lorenzo.pieralisi@arm.com"
 <lorenzo.pieralisi@arm.com>, "tharvey@gateworks.com" <tharvey@gateworks.com>, 
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, "kishon@ti.com"
 <kishon@ti.com>, "vkoul@kernel.org" <vkoul@kernel.org>, "robh@kernel.org"
 <robh@kernel.org>, "galak@kernel.crashing.org" <galak@kernel.crashing.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "linux-phy@lists.infradead.org"
 <linux-phy@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-pci@vger.kernel.org"
 <linux-pci@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>
Subject: RE: [PATCH v7 5/8] phy: freescale: pcie: Initialize the imx8 pcie
 standalone phy driver
Thread-Topic: [PATCH v7 5/8] phy: freescale: pcie: Initialize the imx8 pcie
 standalone phy driver
Thread-Index: AQHX51basRBPa9z4x0Ob3hpqHmdRI6xJk7GAgAD6bJA=
Date: Thu, 30 Dec 2021 04:58:53 +0000
Message-ID: <AS8PR04MB8676151C053B01293A0C1E938C459@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <1638432158-4119-1-git-send-email-hongxing.zhu@nxp.com>
 <1638432158-4119-6-git-send-email-hongxing.zhu@nxp.com>
 <7320d3fb-4338-86b8-5a49-b56f06f1cd11@linutronix.de>
In-Reply-To: <7320d3fb-4338-86b8-5a49-b56f06f1cd11@linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9ca173a4-a4b8-42d9-3db7-08d9cb511403
x-ms-traffictypediagnostic: AS8PR04MB8931:EE_
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AS8PR04MB89316700693BB6C3B1476E478C459@AS8PR04MB8931.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3bDeVDrVFCrPiV7dNFPLXoxb2u2w2ovZZJqIyAJtqeKH0ELtXa9+M45T/qqjIWa92MuPe57ev+/9bSkDYgtQ5t+99gvBpTDWA2u9hqMi3xKJa1fk57hIhG3bZA9fsPECVAZZLS3LAJVhAjw1styZ8F0QOVZ7UgA6kL1RLCU7R6m9jH23ilPQbiHTw2QY7Ng1vDg8SjY/FJXZ8SUnTTlSPd/8pueqMtf1Ds3ehefi/Ut9RCJ4+B/WVhmjFlTRRcsCaxApSl5fL6SbJZe+Uzs/lld4b4SGc6JA9mZ+zksjPRdfXjlSuFeRnUNy76RBidt4HDXGO9Ja8MB7TjmYMCcLuiRAklvvsUqtIANGe/k22hzjViMj2JZdc7+phIoEwNNIyyNgNZ0Gch1W3X40H5W18qK7yuI+OwtuwpaxUcb1E3kl4DNN439iKIzJFbf3eMmsDny/kdWg2L8Gz5N+36YDyRP7g5j2aGKDRTsk/x17CLesdahlSVxrG4pbHZ18JtDGCMSHf4LO5uERrx9NzT2lxImBiNlTHXlFGIAHowpKBltoo1EXYtmc2CYrDHaIVr4ou1r2McOoDVIKM5ixPrS3OcRR9Ipw0MP1i3SKCwRFXHI16bSQFECFBBQ7zrM8vrynRqM16Mb4BJq/pg/5Je/0NxlM4a24JEwZFAuVWKSuzeUYbgjzt5+ltC0gDddpaBequq7vjpR8xqjbkHvsoOSVRw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR04MB8676.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(186003)(122000001)(7416002)(33656002)(26005)(38100700002)(38070700005)(5660300002)(316002)(2906002)(44832011)(83380400001)(52536014)(7696005)(8676002)(53546011)(6506007)(55016003)(66446008)(9686003)(8936002)(54906003)(4326008)(86362001)(66556008)(64756008)(66476007)(6916009)(76116006)(508600001)(66946007)(71200400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TjB2czI1dVo0QjE0S2t4aVhBSmErSW51anNpUVhNY3RQQW15UFlZanVvVDJQ?=
 =?utf-8?B?QjVEYTU0NlkxTUhHb3VXbHozbG41MURSSjFCMXB5ZVA1N0I4TnlkenBPaWpL?=
 =?utf-8?B?SFpiREcyNkVPZnZpbnpsUXd5TmJuUUFVdDFqQ1ZYYk05alhjeGwvekRQc1NS?=
 =?utf-8?B?S1hIc0tMOGI2dkpUNFk5Y1dVMWVqU3VwUnRuMnQyNmQrS2kxdC9jb1FsZzhj?=
 =?utf-8?B?S210TGZ4azE0YUVpZzhHRlViQlJmczNWZTZablp4c0U1MytxZ0FYU3Zobjhr?=
 =?utf-8?B?Mi9rNzhWb1pZT2hCNElTbk9tNFBHazFxYkdVT3pzV0JnQWNTN1E4SEdNOVYx?=
 =?utf-8?B?Q3pkWjkwVWpXRUtST09FMHpGeHgxUzZmK2l3NTYyeExmdjhhOEVEaVp4dVMx?=
 =?utf-8?B?MWErdnlEZU16VDkvaGJDMDZzN0RTT3l2bXNqeTQrNWpTNlpzRVRmdnU3L08w?=
 =?utf-8?B?VHNhQkpMRlhUTEdBM0RXM3BNT0dGNUQ2UE5CcGJENm4yRUVEVlVwVFJIM09J?=
 =?utf-8?B?dDhjRWY4TVhGS0JwY3NQbVIrc3ZQNy9yczI3bWc2NmxBejUwYkF3eFM2WFF5?=
 =?utf-8?B?ak0rRVdmeDdmZDdSZ2ZaY0J6QU5xU1k5c0VEYmZ1OXhNTHJ5QktBR0RCNU55?=
 =?utf-8?B?QWRtODU2TFRQc01FMFRETWRLVEsxakx0bGFRODFjci9URldTY2hJdDMvbk1l?=
 =?utf-8?B?bUJRMnd0SDNIa2NweTM0bG9MQnN4RC8ySWxMUVRSbFdEM25Zb29qVFpNN09F?=
 =?utf-8?B?bE42dnEwWUdERU1sQ1FKQkVkeDJ5WTBwNlZTa2VvL2VPeFQ3dHhYUCtmbHNo?=
 =?utf-8?B?VzlRcUc4WDBWUEVjMmVMVTBrQjlVQThmeERxdEluOVpHQk1NNm16VHBCUWZ0?=
 =?utf-8?B?cmYxb0FGSUdBVnNnOVRkMllEa0tNMWdEQURrcVRlekw2WXpsY1FWdXZFRDZu?=
 =?utf-8?B?YUoyaDB3UUNXNG1VREhoY2EzT2pIOVpnYWd3OHBCRk1sZ01vMTA0NnBBYmVN?=
 =?utf-8?B?SVQxam1XT0pmaFhMTWZiWjAzN0RHUlhJYm5mTXNPN2MwR0RDaFkyN0VhVWsr?=
 =?utf-8?B?OEJhMWxBWndRMFhvQWsrSnc2R1NqRnVuWVZNVi9YWEtzMlRIWi9SdCtIY2RF?=
 =?utf-8?B?NTN2Yk5RcjdxYW1ENGRzUmd1U1hjRk9KNjFSK3YyU2ZueW16ZnJaM2VhdGF5?=
 =?utf-8?B?WXVCZTJPRGU0c2dpd1F2RXd1QUM1amxkdURMZWU5ZUtzRndna1RFN2FGVkg3?=
 =?utf-8?B?SVY3UFNPeXg0ZmFCYkExZG1TNVNDdUtaT015RXZuaVdmcS9JcTlmd2Z4Vmd0?=
 =?utf-8?B?MVU1LzhSS01HeDZBTmtZQWhOWi9aTHdxZzBzYXV4Sm4vYWg0a3dyQzg2L0k0?=
 =?utf-8?B?UUZzSEVCVk15NThGZU44ZzlWNVk2VUE1MllWS3NVNHVLaWRONnpHNTF1Z0p3?=
 =?utf-8?B?S1pyMldSYm1JbjBpcG4yTTk3VWJ6WWJoVWhvMm82ZFdVMEFlc3pYU2RTa3Ny?=
 =?utf-8?B?QzR6TThRV1BFOGJpOEVCbTM1Rk9odXh0SEhuT2RGWmZJQUJ0aWV5bWVTVmFu?=
 =?utf-8?B?MGI4NHJJLzQ5RDI4TCs5T09vZ0FKQnRHVG1mUUdlOHZLT0NPaTVteFVHM25z?=
 =?utf-8?B?S0pUbG5NS0xOcGZSNWdadDdnYytFc1pYNklQTTNERUR1VlRwT2txWU13UXRU?=
 =?utf-8?B?VVV0Y3JyUnZxSzFkYnpFSGtVMDNEY0o0UDNsZEd2Z1pNL0JrVElNSFVlOGVR?=
 =?utf-8?B?SU53YkRYZVRUQlJqc0hQUlFqQTM2UVV3VkEySXFZTlNhVC9ST3FUMUFlMWJV?=
 =?utf-8?B?ZCtUMkxXZk0wUjRCL21NU3dIQkNXQTVhMHFJSmdIN0JCeW82ejF1QUlTZWRJ?=
 =?utf-8?B?bDNuVncybTJXTkVvK1dkQk9kQ1IwNWtsQmZEWWdZTVpocG52dlI2Y29FSmEv?=
 =?utf-8?B?dHI4VGJvR2pGMnpmU250YXdEa3FleVZ3Vm9xWjVLaVVQazdORnZiaHU4SkpH?=
 =?utf-8?B?WG9ueUI3UnFkeDBOUWtiRUo0WFlnUUZ0d21GTVVkSnB1OGNINHhkSy9wUEdC?=
 =?utf-8?B?cjJxNW1yZlhURjZLalJPOUV0MnNiU2c1eE8rR0hFWi8wVGVvSlVKZHM5YXlJ?=
 =?utf-8?B?RDdPTm94MVgyRXVUS0xpUHpLUXV6dUx0ck05ai81VlB5YjRJUXBMemZsUnc2?=
 =?utf-8?B?eGc9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ca173a4-a4b8-42d9-3db7-08d9cb511403
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Dec 2021 04:58:53.6619 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DeAH/Do3JSmBxvSdo6nBKxa4Qxi8JVoMED15xzSem7mrEIunxql4D1u93WhOEriqT/TeWTOAjTcnt+OVt5HSdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8931
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211229_205904_019244_ED6CF7B1 
X-CRM114-Status: GOOD (  34.05  )
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

> -----Original Message-----
> From: Philip Molloy <philip@linutronix.de>
> Sent: Wednesday, December 29, 2021 8:40 PM
> To: Hongxing Zhu <hongxing.zhu@nxp.com>
> Cc: l.stach@pengutronix.de; bhelgaas@google.com;
> lorenzo.pieralisi@arm.com; tharvey@gateworks.com; Marcel Ziswiler
> <marcel.ziswiler@toradex.com>; kishon@ti.com; vkoul@kernel.org;
> robh@kernel.org; galak@kernel.crashing.org; shawnguo@kernel.org;
> linux-phy@lists.infradead.org; devicetree@vger.kernel.org;
> linux-pci@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> linux-kernel@vger.kernel.org; kernel@pengutronix.de; dl-linux-imx
> <linux-imx@nxp.com>
> Subject: Re: [PATCH v7 5/8] phy: freescale: pcie: Initialize the imx8 pcie
> standalone phy driver
> 
> Hi Richard,
> 
> I've run into an issue that appears to indicate a functional difference
> between the existing integrated pci-imx6.c implementation and this new
> implementation with the separate phy driver.
> 
> I'm working with a SOM and baseboard from Phytec that is based on the
> IMX8MM. The board does not have an external PCIe clock and has a
> ethernet controller hanging off the PCIe bus.
> 
> When booting from a 5.4 NXP-based kernel from Phytec the ethernet
> controller is probed and functions as expected.
> 
> A co-worker backported a slightly earlier version of this patchset to
> 5.10.[1] With our kernel both the controller driver and new PHY driver are
> probed, but a timeout occurs in dw_pcie_wait_for_link() which indicates
> that the "Phy link never came up".
> 
> After reproducing this issue I configured pcie_phy with
> IMX8_PCIE_REFCLK_PAD_OUTPUT. With that configured, phy register
> CMN_REG062/0x188 matches the 5.4 NXP/Phytec kernel. I then
> compared the controller and PHY registers between the two kernels and
> noticed that CMN_REG063/0x18c is set to AUX_IN/0x0 in the 5.4
> NXP/Phytec kernel, but the new PHY driver writes
> I_PLL_REFCLK_FROM_SYSPLL/0xc0 to that register.
> 
> If I modify the phy driver to not write I_PLL_REFCLK_FROM_SYSPLL/0xc0
> then the system behaves as expected.
[Richard Zhu] 
Hi Philip:
The address 0x018C is a register to control the output mode of Refclk IO.
When internal syspll is used as PHY REF clock.
Regarding my understand, this register should select the syspll, and route
it out of SOC from CLK N/P pads.
Then the remote EP device can use the clock from CLK N/P pads.

If the bit7-6 is set to 2b'00, there wouldn't clock output from CLK N/P pads.
What's the hardware design of the CLK N/P pads in your project?
Can you monitor the situation of the CLK N/P if it is possible?

Best Regards
Richard Zhu

> 
> Best,
> Philip
> 
> [1]: I plan on rebasing our branch with the latest patches that have been
> applied upstream. Note that I did not see any difference in the following
> code with what we have applied.
> 
> On 12/2/21 09:02, Richard Zhu wrote:
> > +#define IMX8MM_PCIE_PHY_CMN_REG061	0x184
> > +#define  ANA_PLL_CLK_OUT_TO_EXT_IO_EN	BIT(0)
> > +#define IMX8MM_PCIE_PHY_CMN_REG062	0x188
> > +#define  ANA_PLL_CLK_OUT_TO_EXT_IO_SEL	BIT(3)
> > +#define IMX8MM_PCIE_PHY_CMN_REG063	0x18C
> > +#define  AUX_PLL_REFCLK_SEL_SYS_PLL	GENMASK(7, 6)
> > +#define IMX8MM_PCIE_PHY_CMN_REG064	0x190
> > +#define  ANA_AUX_RX_TX_SEL_TX		BIT(7)
> > +#define  ANA_AUX_RX_TERM_GND_EN		BIT(3)
> > +#define  ANA_AUX_TX_TERM		BIT(2)
> > +#define IMX8MM_PCIE_PHY_CMN_REG065	0x194
> > +#define  ANA_AUX_RX_TERM		(BIT(7) | BIT(4))
> > +#define  ANA_AUX_TX_LVL			GENMASK(3, 0)
> ...
> > +	if (pad_mode == IMX8_PCIE_REFCLK_PAD_INPUT) {
> > +		/* Configure the pad as input */
> > +		val = readl(imx8_phy->base +
> IMX8MM_PCIE_PHY_CMN_REG061);
> > +		writel(val & ~ANA_PLL_CLK_OUT_TO_EXT_IO_EN,
> > +		       imx8_phy->base +
> IMX8MM_PCIE_PHY_CMN_REG061);
> > +	} else if (pad_mode == IMX8_PCIE_REFCLK_PAD_OUTPUT) {
> > +		/* Configure the PHY to output the refclock via pad */
> > +		writel(ANA_PLL_CLK_OUT_TO_EXT_IO_EN,
> > +		       imx8_phy->base +
> IMX8MM_PCIE_PHY_CMN_REG061);
> > +		writel(ANA_PLL_CLK_OUT_TO_EXT_IO_SEL,
> > +		       imx8_phy->base +
> IMX8MM_PCIE_PHY_CMN_REG062);
> > +		writel(AUX_PLL_REFCLK_SEL_SYS_PLL,
> > +		       imx8_phy->base +
> IMX8MM_PCIE_PHY_CMN_REG063);
> 
> If I comment out this writel() then the register defaults to 0x0/AUX_IN
> and then the system behaves as expected.
> 
> > +		val = ANA_AUX_RX_TX_SEL_TX | ANA_AUX_TX_TERM;
> > +		writel(val | ANA_AUX_RX_TERM_GND_EN,
> > +		       imx8_phy->base +
> IMX8MM_PCIE_PHY_CMN_REG064);
> > +		writel(ANA_AUX_RX_TERM | ANA_AUX_TX_LVL,
> > +		       imx8_phy->base +
> IMX8MM_PCIE_PHY_CMN_REG065);
> > +	}

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
