Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 174B4C77B7A
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jun 2023 02:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:
	In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nm3gGNhAmmS/HQRxKMmBm1F1XsmcwLcgu2QIcfmu744=; b=S+riC4NLjGvB+A
	lQNmr8ypPaivbPOKSgIVnHObHT2MKE6fBkdXsx/5yAP6wJQLSgDrnkq1gczUHRWtrTdG6MTeN55nP
	5PcmFKoXqLOYQ8XVpXeeS7NKhl990ffN4ZJFi9S8Sb8iaPQKVf8ru8Ib0mrjjq75fHWqOxrZ2Zo3Z
	l4BxA3ox657J5FD379hYV3APPVdkwDfR0Gpydud+zEj5t3V4Co9r/Y+pqj25cHqJpBkI6tv9hy5ll
	uk/nKqagYtVYOSHw8dHTH5IcPa+zr3IfQZ8efILFCvR24Dza1xr4ycQUDpKjUYgcmFVNxdSxcRSYV
	sOJpoao0rb43HYrqiXFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6j0F-0041Tb-1l;
	Wed, 07 Jun 2023 02:34:27 +0000
Received: from mail-dm6nam11on20601.outbound.protection.outlook.com ([2a01:111:f400:7eaa::601] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6j0B-0041SG-0j
	for linux-phy@lists.infradead.org;
	Wed, 07 Jun 2023 02:34:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nA8qhwoKN05Nqkh7aqUN17WqzneZAMXkzth5uBAq9+5PWIePjzeGBZ2fNvGbcXHVkNHMqCEcP3zIERgodvgDmm/fE+z8Mz9Rlk0ZxWyNxwxUclt8tz0DJpfpkFhECcladddLUSvKK6m/pLfcWlkWhFWtAs4hu4wOp+AU+BZ8KjBr39USdiju9eSUZP2/cqMwmatBgYMJlfEOlqPRzqkxatEq7321I9cD9HQVHhII4ak7iQMIuVdQlrOJwqVCh7uOJ2RirZXsGe1EZYUduodehb+uKJqFe+0QLW72Ecp6pTGPhGXu7Fs0YSu4U62XdgnmkMmJf40KIEtHX4ZkOcionQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vDAvHCyKqMROtXh2lb0480Nn3oFyI935lfHS+N9vzXE=;
 b=DoM66j/AM7fJsBYGdrF3xTXH+dLEcLqUesu1n8pUK1tA1aPXkzcSYyE6l6E0qGjC+2UK3HsWE0CLuX75LciAygI6/nF/ydUaAzCifQ7RxTJqY9jI7XOsZWyWUxxYNtalxF2wYsTsLyIYcFrMEgf7FK7QGmoePfQFJhFiB4EMilneBbcHtxaFHyYrXe6S7jyzCmbPPf83fVwFrtAO3+0xkCH9uTYS+jtpGz3ajvsaEwtezT65Osmlkhwox17HoymeDGpV9bmt1GrRyQOpwMaVf1Ed1NLFDasTz8+joGSkI75LkSV20xY1QYiuN9rOQm2N47ZGwLqXxk5X8EFsiwGiMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vDAvHCyKqMROtXh2lb0480Nn3oFyI935lfHS+N9vzXE=;
 b=mAuJfMIVJUffpBg1PMmEKB+CIDvj+nUq8mmVCScmjMzD270M+PT8PkS6jjSbPWfUn7cNWwVhEXdQLXc/D6OOQBiy5qGrOCNEuBOVlmRF78ybWiEdB8bHxR63EaulIulGolWcOpLnUQa1mM5sKbmNyJdoqkdfny1Wk/cBxrXAWfIkuhilNY88dQ4LZNcp+ANDthtjXLu172YLEBQEvWRf2ywp3eul6wTh/hqGxJMgp+eSWY0K3c1SmfyxGw9GFeeowqDm0/mlIMg2GYBWOf/8Tk1LtEf3pYmRPWdNt1nK0cRqotEIKEZ2hQmGhPOvGBkB7fl77DkcY/JtO5fzcrrXHw==
Received: from DM4PR12MB5988.namprd12.prod.outlook.com (2603:10b6:8:6b::20) by
 BY5PR12MB5015.namprd12.prod.outlook.com (2603:10b6:a03:1db::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Wed, 7 Jun
 2023 02:34:15 +0000
Received: from DM4PR12MB5988.namprd12.prod.outlook.com
 ([fe80::2388:c64f:4a08:c45b]) by DM4PR12MB5988.namprd12.prod.outlook.com
 ([fe80::2388:c64f:4a08:c45b%6]) with mapi id 15.20.6455.030; Wed, 7 Jun 2023
 02:34:15 +0000
From: Haotien Hsu <haotienh@nvidia.com>
To: "thierry.reding@gmail.com" <thierry.reding@gmail.com>
CC: "kishon@kernel.org" <kishon@kernel.org>, "vkoul@kernel.org"
	<vkoul@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, EJ Hsu
	<ejh@nvidia.com>, "linux-tegra@vger.kernel.org"
	<linux-tegra@vger.kernel.org>, Wayne Chang <waynec@nvidia.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, Jui Chang Kuo
	<jckuo@nvidia.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>
Subject: Re: [PATCH v2] phy: tegra: xusb: Fix use-after-free issue
Thread-Topic: [PATCH v2] phy: tegra: xusb: Fix use-after-free issue
Thread-Index: AQHZgZRkKXYDv7i5b0KUq0xSyjnxwK9947UAgADqOwA=
Date: Wed, 7 Jun 2023 02:34:15 +0000
Message-ID: <377c2bd5aa9d2363c2a9a0e63849207c12f47289.camel@nvidia.com>
References: <20230508100320.345673-1-haotienh@nvidia.com>
	 <ZH8oKiteNGxYmw9l@orome>
In-Reply-To: <ZH8oKiteNGxYmw9l@orome>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR12MB5988:EE_|BY5PR12MB5015:EE_
x-ms-office365-filtering-correlation-id: a05fd8d2-8fe7-4f87-6751-08db66ffafad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0hyxlOrLxce7vGhg7+SU0DGd3A00E67AJlWARGfjozctQJ1zBeiNi/bPjXUmNG4TqmWQf581F/D2sxjW/gI7Q/4vL9N9Qv0FwrnU4vBpW+EhcaC/FZaZ0ewnayxKAvoOKuX+EfUdeO2v0hLnQu9WgEEzBcgDOAGvpLV8Fn1mZ4utuSmNiuWn7zK/RATYQbUTF8ouZPuOv1ZftlhuOJY6748LF3SYQJ3Zy5IRPlwbVCdpeoGHvmgZXn+p9xpL5Omy4fEMEUXEYVT78ovzcwGdWwtFlc+6sEAIk8POCMxNk9NCCQ4G5crrYs51jg0vSoIRYv7eoDKhtnxW5+wwwrvNiqMQDNAi24ttXlFPWZ7HiPjIVGVM449IaKE9GWR16uUrnl/V1XRc18Qs9qN0q1tENnLoOZcqbPAbXgp3xz8Y4KtQW5AyO3hhs2KRQAX6F2/vAFSZHUKpdvFIxxxQaMppht847s3PxZvSz9LXtiNiZ41vKSp9xOialgucuebIOH9Nyk8ajn485FkhOiUyKZjZeK64Ljs+SKg0pEvIq2Iv6Wq1lh5c9oCMXu06AB9+XqKzWtVIExOAayjL593zhCjsmrYFYvbCjuE3ms0VtCVKFaEQNfhmYviL+b2xT6lLHvnw
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR12MB5988.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(346002)(366004)(376002)(39860400002)(136003)(451199021)(36756003)(2906002)(54906003)(38070700005)(3450700001)(71200400001)(478600001)(86362001)(38100700002)(41300700001)(8936002)(8676002)(5660300002)(316002)(6916009)(66556008)(4326008)(64756008)(122000001)(66476007)(66946007)(76116006)(91956017)(66446008)(6506007)(2616005)(6512007)(26005)(186003)(6486002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Wi9GSUhaTTF0ZzJzTnZxZGhHSXlQeldIT2JDOGRUVHhZZFg2Kzk5MHBubWpv?=
 =?utf-8?B?YlNXWThkVlRKZm5KaEdTaFNNL3Y3RWNQeEtkUG5aSzhrK1JPTmJwSUVwVm9w?=
 =?utf-8?B?dDV3UnJDS0RvZjMyRUd5UHYzeHNUcnN6Yk5uZ1pNMHBvSjZvUzNRRFZrRWJO?=
 =?utf-8?B?Ly8zQ0tTVlpNS3RDMTluSWdRUjdwRG9CT0s1Qyt4RkRkVzFyQWR5NWhwajM4?=
 =?utf-8?B?TGc2S3lTY0ZSbU1GR1JRRDRjRlpubk05eXJ5L0lUZTdUdWcvcFdQdDlyc1RZ?=
 =?utf-8?B?VUcyTFVWMlYvUDVjcnNCUHZnMlhHY3l1NEh3eDNBTXZDaXJrS0xTbmRSbnp6?=
 =?utf-8?B?L0hrTXRLbVFSUmJkZkNKaVZpNW5FdXVDNjQrR2F6L0FxR1RPQXZXdU5YNXQ2?=
 =?utf-8?B?cDlaaFJQMmFMYmRwY1RVVmNtQ3NIdElTeEJvbmdWQkl3eU9BZWUwaEduYWxI?=
 =?utf-8?B?MWIxaGZtcHVlZVVxK3JqNy9oa3hxcGtGcDhWUlkzWG9KSnFWbG90Wk1jcTFq?=
 =?utf-8?B?M2tUTXVHcUIyMmh0Z0h4N29vUTFrMzdDZVI5Tk1jSVQvRGhPbE5SMFowQkpt?=
 =?utf-8?B?bmtiTTNqNFMzL3A0dVZTekJKQUlpUDJhdGk0WmN1MFdBbGRwOGVWUVJIdjZ1?=
 =?utf-8?B?a1hEQW03T0hYQWFCdmJNY2s3YVY5UVZGYm9wR0drb2ZXVTBXS1A0LzNMcFBP?=
 =?utf-8?B?bGJ2SDFWWloraTBRNENVYWZSTWJWeW5EN1MxcytEZ0o0Tmg0dy8xOHBLWFZq?=
 =?utf-8?B?WThBV2F2MmVLZjE1U1VVTmJCSnAwTkM1UjlNcExkcVhJWVFWTjJlU1VmR3Rp?=
 =?utf-8?B?RnlYcVZXN3hhNGdUS2t0dStlZ0VtVm1VNHozRFJHa1JGY3ppSUM3c201eUNu?=
 =?utf-8?B?QXhnNkMyWWRsakxyWmFvOFJNMzI5eU83S01mNU9mNkVVdkpRTmtRa2JUbGxR?=
 =?utf-8?B?VHZqbXVrU3VPdzZBaHRYTDUza0lpSEFVT3BHek9pR1hGbjN2L3ZnMGxVQ09Z?=
 =?utf-8?B?RE9aalR1cWpVd2VJalJsTGcxamM1V04vWkI3U21tclN5Q0V5QkpqZzJIT21w?=
 =?utf-8?B?NUY4VzR1RWRuQTB1d01WSFVoMmRMaml2Q1ZoUnpWS01rTiswMXBKUWJZd2dv?=
 =?utf-8?B?Y3NWS1pKOU1zRXd3dzN4K1ByUEtRN3ZqenFmU0FHNXJ2OVVzM0orUk9kdHl0?=
 =?utf-8?B?RGNxQkY3RUpVU3dVR1NNYmt5elB1ZXFBVXArY294c3g1ZVp3Z1dOeG1yOEEw?=
 =?utf-8?B?aFNzcVVCbVpIWkkyWEV3cGhsZ1RYV0NpTGMzZC94M05YR0VlS0FLMGwvY0Iy?=
 =?utf-8?B?aDZNNTg3d054dG5TTTBBMm1Ka1RIVStXdkVoczZ1cVg0dlB2T3VqY0tnT29T?=
 =?utf-8?B?d0NJSmdUU042RW42Zi9PcGJzQXpPQTNhWndZTWNHWFB1RHRTV3cyQW1Ec2E1?=
 =?utf-8?B?QTA4L1lsNHUvQjdLbWNBQ0FkVEV6eTdQRUtlcWQwZUUzQUFmM0FoNE8wWFdN?=
 =?utf-8?B?TWdWSmtFTlBaTU5mL3o3L0N0cjlrckYwZEJUemNZVG1NZGtaZXBSNUFMOW85?=
 =?utf-8?B?NEZGZTU2NWUrOTRhblR5U0FmWGNPaU8vc0VLU1l4MVJMeWpoSkcvN29yVzlw?=
 =?utf-8?B?VTFMMFNyZHFja3dOSHBJVUhGSnhQMGdGUldmZ2s0eEQzTmo3bHB6VEN6Wnlw?=
 =?utf-8?B?ZDRZamwvSUliM1MzbjZwUU1sU3ZKenZCLzZpNS92K2VWWXZpb1NVbjNDdE5E?=
 =?utf-8?B?UE5ITStwZC9Gczdud1NBa1d0aXloNFAvUVovczNYR3h3SnBHRm9KTm5YTkxW?=
 =?utf-8?B?TTNUTWFsbDVER0tWNHBWdXc0b29oZkpIQk5HZUxNbHlXbVk1TjdtMlVUcVZz?=
 =?utf-8?B?T3RFdU50dUJubGZOUXlaOVUxTk50Skd3UzdUeTZyb293WG8wSUlYYjQrdVlH?=
 =?utf-8?B?UDNCYWsyZk12d054V1dOb0cva291ZXM3akIxZURUdGtOSlQ3N3p5eHNJa3I4?=
 =?utf-8?B?YnVEMG1TWUE3TnNZM0Q1T0oyRzZ2MUNyK1JBUkZBREhBWG0venVMczVaNHlz?=
 =?utf-8?B?Yld1U3JEc1hZM0ZYQ01EaVBIcGtFTmpwMW9oZVNBQzNEMDR6WTZQdCtja3hL?=
 =?utf-8?Q?w1iDEv3Ekjr6PCdA5RVWTGkLy?=
Content-ID: <797C94DD92476545AF447FA94F5C4EBA@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR12MB5988.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a05fd8d2-8fe7-4f87-6751-08db66ffafad
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2023 02:34:15.2676
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UJ9sOaFl1IXVHw6KyjJv3PEIwNOJLnrmGnxCFabH/65a7WFVG8lDiV4l4iIYrOK+CASdUzHw16Yt4smXugZIQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB5015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_193423_448197_F68ADC1D 
X-CRM114-Status: GOOD (  19.00  )
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
Reply-To: Haotien Hsu <haotienh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, 2023-06-06 at 14:35 +0200, Thierry Reding wrote:
> On Mon, May 08, 2023 at 06:03:20PM +0800, Haotien Hsu wrote:
> > From: EJ Hsu <ejh@nvidia.com>
> > 
> > For the dual-role port, it will assign the phy dev to usb-phy dev
> > and
> > use the port dev driver as the dev driver of usb-phy.
> > 
> > When we try to destroy the port dev, it will destroy its dev driver
> > as well. But we did not remove the reference from usb-phy dev. This
> > might cause the use-after-free issue in KASAN.
> > 
> > Fixes: e8f7d2f409a1 ("phy: tegra: xusb: Add usb-phy support")
> > Cc: stable@vger.kernel.org
> > 
> > Signed-off-by: EJ Hsu <ejh@nvidia.com>
> > Signed-off-by: Haotien Hsu <haotienh@nvidia.com>
> > ---
> > V1 -> V2: Remove extra movements to clarify the change
> > ---
> >  drivers/phy/tegra/xusb.c | 1 +
> >  1 file changed, 1 insertion(+)
> 
> Haotien,
> 
> I had already given an Acked-by on v1. Typically you should add such
> tags when you post new versions so that people don't have to repeat
> them. Anyway, here it is again:
> 
> Acked-by: Thierry Reding <treding@nvidia.com>

Hi Thierry,

I see.
My mistake.
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
