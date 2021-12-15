Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60FC5C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 15 Dec 2021 06:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P0kMeSmg0+w+ueQB3/orz6ojZsaS8QEaPJLne2aelqY=; b=IWh7sjG9H3sBCg
	K/FmehiC2jc3Y4ydwiO2UPiKJyD0c/5vxSGhT9/6rd7krg+BfojLAMouaRqImEvMFoi4QdiScspWf
	GARXEGGsPSLAZ5G8XamiXZnZ9wHToSVzW41SemDb5HTxywTPGPxTMFIQ94jl3AvQh5zpK/Cmsoe5N
	wNe7cC//9DWU0rE3V3DmgnQh42sSfp0ZCLXnTdLSUWx0P7H3y/ZfJ+9AiAogyPNAdWI2ZZQ869Bw0
	XTzhtuDdYkl+iS4Yi2q1OT7Vq/hRzzpkmtg9tlxRQjMVrHTLKrGuiuFalZZIQ3gjiGxS/KYsKKihj
	cqWPdEkW4UX+oLyAVI/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxNu8-00Gumt-0l; Wed, 15 Dec 2021 06:36:44 +0000
Received: from mail-eopbgr80050.outbound.protection.outlook.com ([40.107.8.50]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxNn8-00GrOT-TG; Wed, 15 Dec 2021 06:29:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ahO8UZ10Rmh9peQOFWTx+o7WIaGicFM/JOwPcyZIJqLRGlpbJA5W/5iovxBxI8ojUNvPESJEw1wnLGCjFNEW1E4sqB11m8d4dPDwB+n07UrJZ4a/+BzECGFxtxqxLkv5wQDZ9QBDL4GCNIQUG7CziYBOYnswBihap6HjmHPXPE+ZBxdExMeriea6k9ptho3Od9amkzEtcg00HvvC6OiA/arXYqrxY6UDiU2RuDvjpz+uJsyyRjoVXxE74Q8Ujqw57Fipw4TWEh0R89R7tzDNesLIegfAXVnyuOU2u9eaLzDa4s0C7/w0L4aE8dlAkmyzYHj6D6LIyTB/LwLR5SKTvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZoI/WZwXSa7+lEBEoLIb4Ajqre1lGVCIbua61GU+KaY=;
 b=WqYg6zje81BbL3vzbvQ+EMBhX/BAgeO7hmnVNfpedESaJSWHBBrQBcOrELgNzAaGCppkJ9yIt2VG4g/Puj8Dr0ImkJ1wYv21wMZNVi3RjS8hRZbv0yBoiXgCWizKmBYGme7FM5jIeDUhKOBkEFIDm4wUCJg22Udu+C5QFCm5aRTqBFwmXHz2fT/MMsPTMoTmXlIaewEKv0Xmsk1E1qgHNXbEbyuqFCV2lOqMtQSblaEEahrPIuplX5M2H+YAYSsUyoWv0xNHkxHlhPsR1+ezeD5vwnO7aXZc3yMZ0zVHywU7CAxywjoOM3+VUQzTOW2F0xcZIg2+CzfKjNaTynrJRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZoI/WZwXSa7+lEBEoLIb4Ajqre1lGVCIbua61GU+KaY=;
 b=WwkkCO9uvji6wqqgW09gX7+VUr2sHHK0antUEti8fIe0scjeXEgbpaI5xZHkz4s0eEFrfCkDly0x7JMPORMlBgOFmxuHceOGtfAfW317fF/IH9kN5JHxstnsHK8fhHdi5Fh1Nq06dcv3pJCC8LvaT5dvW7pi8v++V9KE+uHhXaY=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by AS8PR04MB9141.eurprd04.prod.outlook.com (2603:10a6:20b:448::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.16; Wed, 15 Dec
 2021 06:29:26 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::b059:46c6:685b:e0fc]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::b059:46c6:685b:e0fc%5]) with mapi id 15.20.4801.014; Wed, 15 Dec 2021
 06:29:26 +0000
From: Hongxing Zhu <hongxing.zhu@nxp.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, kernel test robot <lkp@intel.com>
Subject: RE: [PATCH] phy: freescale: pcie: explictly add bitfield.h
Thread-Topic: [PATCH] phy: freescale: pcie: explictly add bitfield.h
Thread-Index: AQHX8Xo7K05H1Uu+UEi1P50XzJU58awzFowQ
Date: Wed, 15 Dec 2021 06:29:26 +0000
Message-ID: <AS8PR04MB86765D95A0E42CED2C5D9B4D8C769@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <20211215060834.921617-1-vkoul@kernel.org>
In-Reply-To: <20211215060834.921617-1-vkoul@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8658d790-e456-4505-a53c-08d9bf943dcd
x-ms-traffictypediagnostic: AS8PR04MB9141:EE_
x-microsoft-antispam-prvs: <AS8PR04MB91414C7BC6AF1EE4F991F46A8C769@AS8PR04MB9141.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: umaAnsZzuGsZTxTVsWq8hjXcdptMXAtswzHeGPcjrz2r/N+D9chAkEAyY/iFEETSfofsPYGoDn4KKSgblGUy4/To0Xgm5cTnACfzIwdqOm9/iXKbcuAAwfbc/VTgFFVRpHmV7X+lPCec8niCpOlH3i7cdw2G3KwjNuaW6ILFbF36fuZ4C8tyNXP9CNzOh4mZSkJ9S/iVYB+ZggfzPf0uaZ3lWUvpum0VXBJ9Fe+wMJB7hF6G9c4J9wYlArEGoXCuNDT49uIqM9+mvsWWCzpvToFia+FIBh4Q2T/nVQD4WpN1xIAwUM4Z3Vy+oR+Iiu/65mCoqiZXC2I7TqCSBHl1E5lxXl4YqIQ/O2EOkqHWV8JVbJ2jl85N0s2PxE1wFReSfJEjU7Q5VPBRyZ/K0FPDPX1CBvT9rWr9DV9H3IZwh2A75R6bYvdD7jmuYNSj88FZYG1qOVS6Ru0/Nnw3+/KDJAHoq0Qz13iELbPixnA/CUTGJ1H2OvuvAI4hFEClw1NzibPoreGucpsauGMwijARG/e8snxiMy3Vy1UHmvlsapoHmmxtVNmTcooLTP0S9uxRdI2fx3RDrJN6wM2DhMIdFYqy9Cpo2bZ3b1Ki2XXbYAhv8Dn7hIXOqOARRXcpBGDCy3c+0PIGxs3M+1MAt2yZHS+CPssKZh2oXgWZDj9ebdU5n+I2uQwEOYSPvUw6Dshz/5L3N2cb+C50LD18cJI5Lg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR04MB8676.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(66446008)(54906003)(316002)(110136005)(8936002)(66556008)(64756008)(55016003)(7696005)(6506007)(38070700005)(122000001)(71200400001)(83380400001)(86362001)(508600001)(66476007)(66946007)(53546011)(76116006)(186003)(5660300002)(44832011)(4326008)(33656002)(9686003)(26005)(8676002)(38100700002)(52536014)(2906002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bmtbohuFcV+A8IhErMhj20LC6hCyH820nb9ui4apSBog9BM/O0N6HBCxEaXk?=
 =?us-ascii?Q?xM0d7JNqsF1Ibe8MSBzuYWhcEutkkCOsJa4h5KCi8sUOjXkJlAYfA9GmEPd9?=
 =?us-ascii?Q?7wQpFBXJAsVo2drGs6nFYc3uce9+S051kEdibkc8YxmP83kpnm9iJpyPODWq?=
 =?us-ascii?Q?vcpYzed9gEyPgmzj+t2NXChOvERFxm1G/S2ioxplaUUmzntKYjUTGHG0OIFG?=
 =?us-ascii?Q?jbvABEUNWWPOl64GgAKNxXzIGcnmuMfCuLhmH7YWwT0IvHyDXcH3WCryxCzk?=
 =?us-ascii?Q?6HBrSkVs1yiXb3QbhWiRJZ/dLVXArcuiHDun8kGjP+fRcF88qwRX/m9ZniAJ?=
 =?us-ascii?Q?HMlNckojD/2voRLcF24+fMpAw4Fmd/jPujkoWu5/flGEG5EwW6uwkrr1SzwE?=
 =?us-ascii?Q?2hwGaPYvZFNA1zcRp2lynkyCENnb1PtM8U8+V1S0SXAwOlrPmXtg1JixlmFT?=
 =?us-ascii?Q?tCUkRcH/ogyJVHcyQPIAmcWpdbz9pcYkjmjpYsGEgHc5qdHQwMEfbnapPNWL?=
 =?us-ascii?Q?k2L8Y1XmKDLXylMGGCZpBTetJqMSXo6+//NMd2x9iaql3Hg/AAGgPnXV4W2R?=
 =?us-ascii?Q?P2paPGw9DjpBIzAAse8eWgWGYDUgqBkJJDRO+kleoNZwwrIduju8tTeptt0n?=
 =?us-ascii?Q?+lwheLUazBPaBShGQ5LvN79KgvPHaUlIG+p2StTJCsWTyeFp7fre4R1Zx56Q?=
 =?us-ascii?Q?GRE69BeDUzIlRJh/8hoeNyqz+S4/TXE5mw/DIG/5c6KPBv02o6XZ+A+tEVSO?=
 =?us-ascii?Q?8RK3Ja3/fU3yMe2S3EE81JGnCBS9+yV6ew0GQZVVP3Y0NgKJ6LrX9sfzsC6s?=
 =?us-ascii?Q?DUKQBG1W+i5qC8biqvLleecQ2PkBXePE2iL1fwa1QjuUbTyzOwYUZzsjmCHW?=
 =?us-ascii?Q?TOp/ClayLrDzriyXppV9eeeXRm0zMsDd1ftZGeSmrNXYI72//93eWGD3RiQ2?=
 =?us-ascii?Q?Eb5hkrdEG7c+H5N0JzvzKJBNZVvRX8rS473aGyLZOQKSw+cpYGjRn+Z1WM4+?=
 =?us-ascii?Q?jDnHkzKsjcyXCBYwXzxRZ+FHeS4+csGc/rF7iSy3cAgPi7UuFS67XAmYIDhc?=
 =?us-ascii?Q?pZrv87zOveJHmN7j7GSv1YJOyORmmMpDtd7EEx897Uh5KOtqXn3/wT58mQGc?=
 =?us-ascii?Q?Ja8gYkBYaeCDOkshRhzBco31X5isde6clrhsrUf4CeHvUCXKDA3WIVToT7fW?=
 =?us-ascii?Q?4R0xURYyi/13m6UKzuCmA0PZIsfVLKy1BMVnHEhLCASQWyatUMlmKwebo9KK?=
 =?us-ascii?Q?FYHoHpyfsx/QIrLOFtaXrvgU17OLZqICeFQPfkNr/Cf8dosMZkQDunbl7gCh?=
 =?us-ascii?Q?JtaHoPDig0KU+DcXyCs1E+kxaPgDM3IvtUXYUW4/SjwihKboYK4BeXk8uZQk?=
 =?us-ascii?Q?y1ZsxzemRbCf75utOFQ2O0JhND9O14aWbkM/cofCWC1RgJTzaAqzHEpjD0sC?=
 =?us-ascii?Q?/43A6b4sz2XYiRqaAR/Y8FO+U5fnNbigfxhFvgDTgw2Tv3dVwb6ceYNr314N?=
 =?us-ascii?Q?PERhvVZnRi8iAznU4YCVwo0NotfIj304+pj9TBh47s84BSEDA/0rbBDolNsC?=
 =?us-ascii?Q?k/JuVaeIV0tWnlJb7e89R8oEMyzPz7gQDi/7a4bS86uS7I7eLFI1e+SRd/FP?=
 =?us-ascii?Q?6A=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8658d790-e456-4505-a53c-08d9bf943dcd
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2021 06:29:26.1264 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WX3cU7S5iYwtu3w/y44iUNpL21pPC2ekbistVaL0nrT8JJu57wSo+HKl4BHYkLGIPrRo+/g/gWGPMr22IdAgVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB9141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_222931_018033_682E83A9 
X-CRM114-Status: GOOD (  15.11  )
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
> From: Vinod Koul <vkoul@kernel.org>
> Sent: Wednesday, December 15, 2021 2:09 PM
> To: Kishon Vijay Abraham I <kishon@ti.com>; Hongxing Zhu
> <hongxing.zhu@nxp.com>
> Cc: linux-phy@lists.infradead.org; Vinod Koul <vkoul@kernel.org>;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> kernel test robot <lkp@intel.com>
> Subject: [PATCH] phy: freescale: pcie: explictly add bitfield.h
> 
> kernel test robot complains about missing FIELD_PREP, so include
> bitfield.h for that
> 
> drivers/phy/freescale/phy-fsl-imx8m-pcie.c:41:37: error: implicit
> declaration of function 'FIELD_PREP'
> [-Werror=implicit-function-declaration]
> drivers/phy/freescale/phy-fsl-imx8m-pcie.c:41:41: error: implicit
> declaration of function 'FIELD_PREP'
> [-Werror=implicit-function-declaration]
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Fixes: 1aa97b002258 ("phy: freescale: pcie: Initialize the imx8 pcie
> standalone phy driver")
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
Reviewed-by: Richard Zhu <hongxing.zhu@nxp.com>
Thanks a lot for your help to fix it.
And I'm sorry about that I didn't capture this error in my local build and tests.

Best Regards
Richard Zhu

> ---
>  drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> index f6502463d49a..04b1aafb29f4 100644
> --- a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> +++ b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> @@ -3,6 +3,7 @@
>   * Copyright 2021 NXP
>   */
> 
> +#include <linux/bitfield.h>
>  #include <linux/clk.h>
>  #include <linux/io.h>
>  #include <linux/iopoll.h>
> --
> 2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
