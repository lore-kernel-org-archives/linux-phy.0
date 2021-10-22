Return-Path: <SRS0=jE1M=PK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 140A9C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 22 Oct 2021 02:06:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C0B40611C3
	for <linux-phy@archiver.kernel.org>; Fri, 22 Oct 2021 02:06:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C0B40611C3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i7zY9+G1c+kQFQWcaMz2ACAKIr89UBExfLUGomedhvs=; b=RmKh+56Ko2y09e
	jQz/ZqU2sAGu1KWd2MGVepwGmbc6T1jNTSqCEjDQ4nYyyaKRfhYoEd7ND28IUxRGrtL4jHPyGJbb1
	fcMhYE5aJR8lddp3qKRYhA8Ha86cXnfYS+6nC/8QtxIAQUO24eIl8TgzccMgFoQx0w340Y3n94qpb
	875cNALdiqWyT4YpU75koDXBUIAPWQNoeYmdv42ttv9AUgjjZg6G9I4xGJ21klPARM5xdKELQQhpA
	+nue8lPg/PlmeTEm9gnG/MZC17LrYGLfY7IhE5jTJEKI5OL7JZQAbtTV8kPWh9sZXzmcd54p3TQ0N
	0Zw07EM+1YaMC3MXMxPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdjwr-009TcL-85; Fri, 22 Oct 2021 02:06:21 +0000
Received: from mail-eopbgr70051.outbound.protection.outlook.com ([40.107.7.51]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdjwo-009Tb7-EO; Fri, 22 Oct 2021 02:06:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PywvgC6FRhO6GV+dRP1YQ/DbVMyVUXNbzP2y6Q7Pz+l+ieKV3jhVeX4YQXmu7CKxJXBziqjlcm0UKy2mMlrcHVwGlqGpyZKRoftQ04QVjoUIRLtSiEIpL2b/kQboptyDxCBVJgg0B/XjobcluNFST+/K9FV9HTMuc9dqs0rX2TVmAnep40Egbi7wJ04lOf3XrnJ23X9GPQ8bQC8cWxCyy+xnYx+AR3tpelebvNa1AjSWrZUmgacnPz3VV7eZx6p+gD1231Cvdm1/lOcUf12O+yTPVUGsNldErJiSw3xpGkrG55N+PnAZaz1A6qaQl0lMQ3rQVrcoG51gextDTIagLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3Pf1UfCIfzldK/S83YLkwkuE1ujWkHAwfmIiehPSaiQ=;
 b=nHVjxEwAcaJmYMy2/tpchLNFDxsNNsy3Wu079kZM3sYTQ2thv3QO8VWVRTEQkdZXR+ogHB29L9HRnSUO9LzdqRRqu+N1bDBB1fbmdWDHWHgSeAmmMWAUG/AQXV3v73KKfAEN4WA2RuifcEl+zhsXVn3nI5T0urYyZAgRDuQ4Mfeg1c8uiHbSK4O60UZcb5P80KvMeTWMQ+qIfW7I6+wbqRPZhW1KifJf8eeueAX0BoMXjAUtRX35sX7W7tAr5mHInteKqvnmegJHxD42fNKPDssONTVOJxPooNrDl6VOW6EO5/aFUmkjcD1EFYWWSNsQpAa+1aE6ZT2jXHKwqfnzGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Pf1UfCIfzldK/S83YLkwkuE1ujWkHAwfmIiehPSaiQ=;
 b=aaW1qj/yL4jg3/O8qLis/NwyKjQdi6NxyglNsX0nVgyrBcZnzOMuEYwkNFlqncV6aHBevMdWnC0NvjQLcnW97klr0BInSqIdN+PrkkPm9DUoPid8CwvhC+/9i6p+GsU2HXe2IxYYdWmW5lt7EOOSasIigejKs0rhn2goKguvzmo=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by AS8PR04MB8995.eurprd04.prod.outlook.com (2603:10a6:20b:42e::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Fri, 22 Oct
 2021 02:06:11 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::b059:46c6:685b:e0fc]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::b059:46c6:685b:e0fc%4]) with mapi id 15.20.4628.018; Fri, 22 Oct 2021
 02:06:10 +0000
From: Richard Zhu <hongxing.zhu@nxp.com>
To: Lucas Stach <l.stach@pengutronix.de>, "tharvey@gateworks.com"
 <tharvey@gateworks.com>, "kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org"
 <vkoul@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
 "galak@kernel.crashing.org" <galak@kernel.crashing.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>
Subject: RE: [PATCH v3 9/9] PCI: imx: add the imx8mm pcie support
Thread-Topic: [PATCH v3 9/9] PCI: imx: add the imx8mm pcie support
Thread-Index: AQHXv0hvnaQTVIrSFUO/5iyHoeCmE6vUbz4AgAnkkJA=
Date: Fri, 22 Oct 2021 02:06:10 +0000
Message-ID: <AS8PR04MB86760B881D9B5B24EACD535C8C809@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <1634028078-2387-1-git-send-email-hongxing.zhu@nxp.com>
 <1634028078-2387-10-git-send-email-hongxing.zhu@nxp.com>
 <57282e6ea0c01dc403c02e245e048d41ec696808.camel@pengutronix.de>
In-Reply-To: <57282e6ea0c01dc403c02e245e048d41ec696808.camel@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2de0d712-9539-4223-b5cf-08d9950084c0
x-ms-traffictypediagnostic: AS8PR04MB8995:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AS8PR04MB8995CA4E07555DB5DBAB75388C809@AS8PR04MB8995.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fif2LzUizWzeWT/ABF6jh9iu3D6c2P7agr4JRTM/50xaOqkty5uPcb/IfKAENgnyrfdPglLZBkoGPrGgKN+U6K/Kk/YydxNpa78R7iG234bSfObVPVBzh5p8SdL66W2K3Ef/TNnjAxATeTxGfjAyslpeLjmTkIjD1EmacJyIQLWTOo2V37VZLchmRLiIx4rQyoPFWOBYcTd3EZR8XF3aUl+7TkLI7d+NXTo+6ZYqCzNbfK2qrba2NOzaIBcrDViLmo+iU8Rau3oNvPYdfgfByBUqW1yBDgE9UxZKnFV2jPSgb1SmeHerq9d01t7O4iSfFm7nBFjogCHuaxqrffBu7JaZa8OiVVplLAy7lxJkqdjWH6rQU9QJaLBy2SLXbwT8ITY4UnZ+5TSYphqkvXJxlQPBruMEyeOonhWrB6Y4MIFzMOELNXZn7nODp/N+D4k7+/Gy4IwmBYkFPGit2D+M65iIxH2SOMWwHXxcPmxD5jgvzzEYFBYRiI/Vp9PxHrWIsUiwMUrzb9BBpj+favra6fMmyp0e0RednP3mpIl4Wz9cJtN3jZTNjLkX6Ci+P4sYFVWpS5P1ild5TwxfXECpWU8jznZRD8+7BgJ7kPqVnY3O/5Xbm7JVALF6D96c0rgSBvgBUj9ziSOK6fQRCjFT5I6WJr4N+d8n/XSjlAZf1r0xPyDYZgzLH1yOclSFVIwjX5VitzBvOdo8wgFYQB5oMf5h9l3rZyxFjk/aB5Owhgg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR04MB8676.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(52536014)(64756008)(6506007)(110136005)(54906003)(38100700002)(26005)(66476007)(53546011)(66556008)(71200400001)(66446008)(66946007)(33656002)(122000001)(9686003)(55016002)(508600001)(4326008)(186003)(5660300002)(7416002)(38070700005)(2906002)(316002)(7696005)(83380400001)(86362001)(8676002)(76116006)(8936002)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M1hlWmhYRURpN3ZGaGxINGN1TmNrTnlLdmxxNUN1ckNQdkV1MXg1K2RjK1Fa?=
 =?utf-8?B?VjRLVGswbnl3ZXlBNnN2QXQrdk1lVkt3RUxGeC94b3ZEWkZoMkN6L05HMzB3?=
 =?utf-8?B?MXkyWTU4S1libHl4cmlhMEVHUkVWTGJVTEVTbTNLb3RaWVRjbkdjODloNmQ1?=
 =?utf-8?B?cW8yNFNNQVlDOFl1TUc0dmRvS1dBT1QzNzlkdlJraWZzblljdS9KN004Mm1h?=
 =?utf-8?B?d3pLL1UwWUVSU1dVK1g0Qm5LY2cyS1U2enlVZithN2N4VWlnVUJKMDJaaGpx?=
 =?utf-8?B?QkdTWk9naU1DUTZQc2dsWDlSbzhycmZxMGpSdlRQNFNXYThUOHVBUTlxVzZY?=
 =?utf-8?B?NVpxRTZyNUFqUTF1RjVUOXVTTVVxRWM5MVFvTDlsZlo5MUwrM3NiTkp6K3RK?=
 =?utf-8?B?VzRkUTBMVGovSVRxNEhoU3hhRGZJb2crOVovMEZwSTdacXdJa1kvV2lrMlBa?=
 =?utf-8?B?MHZNR0s3U3A1MmtaOU90T1hTbXBEOGhib1BLSzJrQkxqOUpVYU9WbUp3UjBJ?=
 =?utf-8?B?RjZkMlpFN3F1VjJ5Ynp1anZSN283a0I5cnVUajE0aGJrZ3pQYkZuRHc5K2Zj?=
 =?utf-8?B?N1JrV2RXWFNwQU9LeGNtU0ZtKzdLM1cwWmx5b3RlMXMxVElOL0pqRmxNcUJn?=
 =?utf-8?B?MnVDc2pPL2kwTDNzQUNSYjZoUXNBd09WVTdneFVmc3VTL3VycFB4WmdJTFpO?=
 =?utf-8?B?VWswYkNqOW1pa05WTkg4Y0R2V283MzNZTW5SZ1VMb3ZvaHdvUG5oMGVWM3BU?=
 =?utf-8?B?Q1NrQ0FlUDRGZUJBeENQeDhRMWpZM1FsZ1NoODVYa0l5b0JMa2M1TnhZYUpU?=
 =?utf-8?B?ZXArNjdQY1IxYlg3VjMzNUs0ZTJTdjlQRXZyN25vVzh0Kzh3TC9pbjhNYWk1?=
 =?utf-8?B?VGlNNVh0ekNBMFRYdW03Y0xFeWRXcnM0RnJOK2dOcDZnL1FaOU03UCtlaVBL?=
 =?utf-8?B?L1N2VU52M2NlaTZGZXEySHZBUDJpRDR3dldSUklWaUZlTTlZUTNXaHpCSko3?=
 =?utf-8?B?Rm1HeTBZbytCU0RqbXZzUFArc2pRaEN5YUFWZ3NZTDBiWXkwa2szSVpWQ2Rk?=
 =?utf-8?B?WTM2ZjVjbEJlVGlaQ0RFRUJuMzBQbDQ1cDZucFFyaElRQmNGSU12VDZhcmNL?=
 =?utf-8?B?cm9HOTMxTHhIMnlVQStweFVDRmhzSUpUWVpMWkJRSGFCeTFPc3VXaXFHU1dK?=
 =?utf-8?B?N05GdkdROTZYYit5UGlmZlNMVWRReXV5RW56MlEvcmJ3R3NnUWQ3UUFPdlhz?=
 =?utf-8?B?Q1dHbHQ5bkR0UE1SUnJEczdKb2puRmhiVEZ0Tjc0YXVkUU5oMTFORFhtbmMx?=
 =?utf-8?B?NFNMK0hkUmZlYUVFZDVKSDVMQ1hYdzVVamlzZkhwNHdiUWs4ZkdxdjF4QzFN?=
 =?utf-8?B?bVZFc2g0bXRVWnVUUjdYRG9VTENiZG1UcEZQdkw0a3dpcmdySlRqdUU4TFYz?=
 =?utf-8?B?dUxtNG9rM1o1OUpRNGtSTk5TN3ZpTmpKY0FoT2U2cXlqYlpKaktvNWpjYnFx?=
 =?utf-8?B?YTRNODlHa3NOOXBCcnBtb1NxSFNzK2xBSXNCK1AzaEZtOWg3elJiTlAxK1ZM?=
 =?utf-8?B?dnV4SG81cEdxNThFRzlsRlhlNEh3b0RqWGJOZ0dVd0d0VlU0OVBKby96VTV4?=
 =?utf-8?B?aHBZTlF3YUdzMEFRdFVpdFBhblB4RVIwS0JhaTVTOG9WRytKZWhCVUVXdzdE?=
 =?utf-8?B?YmEwcCsvMzlLWS93Y0c1VHArZ2VESUd5OFZUUXZXeGZBNk9UNGtMSXkvMmtB?=
 =?utf-8?B?REpsM2dEcXg4SnRBeWFiNllndEllMjlmSGw0V1NXRjRHTGFDbitMWGY4ODF1?=
 =?utf-8?B?YTE0VERGMUxpd3hMOWRpWnk2Um5Cejh5OG9meWw0TzZtVEwzZ3hyS09WOFFv?=
 =?utf-8?B?SGJKNHltQnkyZyszb2dpcUswK2U2eTFHejQ0WEMrSWp5STJORFAzbTZId29x?=
 =?utf-8?Q?m18tUFjS6wI=3D?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2de0d712-9539-4223-b5cf-08d9950084c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2021 02:06:10.8042 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hongxing.zhu@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8995
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211021_190618_685281_ADCA635D 
X-CRM114-Status: GOOD (  27.30  )
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
> From: Lucas Stach <l.stach@pengutronix.de>
> Sent: Saturday, October 16, 2021 3:00 AM
> To: Richard Zhu <hongxing.zhu@nxp.com>; tharvey@gateworks.com;
> kishon@ti.com; vkoul@kernel.org; robh@kernel.org;
> galak@kernel.crashing.org; shawnguo@kernel.org
> Cc: linux-phy@lists.infradead.org; devicetree@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> kernel@pengutronix.de; dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH v3 9/9] PCI: imx: add the imx8mm pcie support
> 
> Am Dienstag, dem 12.10.2021 um 16:41 +0800 schrieb Richard Zhu:
> > i.MX8MM PCIe works mostly like the i.MX8MQ one, but has a different
> > PHY and allows to output the internal PHY reference clock via the refclk
> pad.
> > Add the i.MX8MM PCIe support based on the standalone PHY driver.
> >
> > Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> > ---
> >  drivers/pci/controller/dwc/pci-imx6.c | 63
> > ++++++++++++++++++++++++++-
> >  1 file changed, 61 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/pci/controller/dwc/pci-imx6.c
> > b/drivers/pci/controller/dwc/pci-imx6.c
> > index 26f49f797b0f..73022e37b1c5 100644
> > --- a/drivers/pci/controller/dwc/pci-imx6.c
> > +++ b/drivers/pci/controller/dwc/pci-imx6.c
> > @@ -29,6 +29,7 @@
> >  #include <linux/types.h>
> >  #include <linux/interrupt.h>
> >  #include <linux/reset.h>
> > +#include <linux/phy/phy.h>
> >  #include <linux/pm_domain.h>
> >  #include <linux/pm_runtime.h>
> >
> > @@ -49,6 +50,7 @@ enum imx6_pcie_variants {
> >  	IMX6QP,
> >  	IMX7D,
> >  	IMX8MQ,
> > +	IMX8MM,
> >  };
> >
> >  #define IMX6_PCIE_FLAG_IMX6_PHY			BIT(0)
> > @@ -80,6 +82,7 @@ struct imx6_pcie {
> >  	u32			tx_deemph_gen2_6db;
> >  	u32			tx_swing_full;
> >  	u32			tx_swing_low;
> > +	u32			refclk_pad_mode;
> 
> As Matthias already noticed: drop this.
[Richard Zhu] Got that, thanks.

> 
> >  	struct regulator	*vpcie;
> >  	struct regulator	*vph;
> >  	void __iomem		*phy_base;
> > @@ -88,6 +91,7 @@ struct imx6_pcie {
> >  	struct device		*pd_pcie;
> >  	/* power domain for pcie phy */
> >  	struct device		*pd_pcie_phy;
> > +	struct phy		*phy;
> >  	const struct imx6_pcie_drvdata *drvdata;  };
> >
> > @@ -372,6 +376,8 @@ static void imx6_pcie_assert_core_reset(struct
> imx6_pcie *imx6_pcie)
> >  	case IMX7D:
> >  	case IMX8MQ:
> >  		reset_control_assert(imx6_pcie->pciephy_reset);
> > +		fallthrough;
> > +	case IMX8MM:
> >  		reset_control_assert(imx6_pcie->apps_reset);
> >  		break;
> >  	case IMX6SX:
> > @@ -407,7 +413,8 @@ static void imx6_pcie_assert_core_reset(struct
> > imx6_pcie *imx6_pcie)
> >
> >  static unsigned int imx6_pcie_grp_offset(const struct imx6_pcie
> > *imx6_pcie)  {
> > -	WARN_ON(imx6_pcie->drvdata->variant != IMX8MQ);
> > +	WARN_ON(imx6_pcie->drvdata->variant != IMX8MQ &&
> > +		imx6_pcie->drvdata->variant != IMX8MM);
> >  	return imx6_pcie->controller_id == 1 ? IOMUXC_GPR16 :
> IOMUXC_GPR14;
> > }
> >
> > @@ -447,6 +454,7 @@ static int imx6_pcie_enable_ref_clk(struct
> imx6_pcie *imx6_pcie)
> >  	case IMX7D:
> >  		break;
> >  	case IMX8MQ:
> > +	case IMX8MM:
> >  		ret = clk_prepare_enable(imx6_pcie->pcie_aux);
> >  		if (ret) {
> >  			dev_err(dev, "unable to enable pcie_aux clock\n"); @@ -522,6
> > +530,14 @@ static void imx6_pcie_deassert_core_reset(struct imx6_pcie
> *imx6_pcie)
> >  		goto err_ref_clk;
> >  	}
> >
> > +	switch (imx6_pcie->drvdata->variant) {
> > +	case IMX8MM:
> > +		if (phy_power_on(imx6_pcie->phy))
> > +			pr_info("unable to enable pcie phy clock\n");
> 
> It a implementation detail of the PHY driver that this just turns on the clock.
> dev_err("unable to power on PHY\n") or something like that.
[Richard Zhu] Okay. Thanks.

> 
> > +		break;
> > +	default:
> > +		break;
> > +	}
> >  	/* allow the clocks to stabilize */
> >  	usleep_range(200, 500);
> >
> > @@ -538,6 +554,10 @@ static void imx6_pcie_deassert_core_reset(struct
> imx6_pcie *imx6_pcie)
> >  	case IMX8MQ:
> >  		reset_control_deassert(imx6_pcie->pciephy_reset);
> >  		break;
> > +	case IMX8MM:
> > +		if (phy_init(imx6_pcie->phy) != 0)
> > +			dev_err(dev, "Waiting for PHY ready timeout!\n");
> > +		break;
> >  	case IMX7D:
> >  		reset_control_deassert(imx6_pcie->pciephy_reset);
> >
> > @@ -614,6 +634,8 @@ static void imx6_pcie_configure_type(struct
> > imx6_pcie *imx6_pcie)  static void imx6_pcie_init_phy(struct imx6_pcie
> > *imx6_pcie)  {
> >  	switch (imx6_pcie->drvdata->variant) {
> > +	case IMX8MM:
> > +		break;
> >  	case IMX8MQ:
> >  		/*
> >  		 * TODO: Currently this code assumes external @@ -753,6 +775,7
> @@
> > static void imx6_pcie_ltssm_enable(struct device *dev)
> >  		break;
> >  	case IMX7D:
> >  	case IMX8MQ:
> > +	case IMX8MM:
> >  		reset_control_deassert(imx6_pcie->apps_reset);
> >  		break;
> >  	}
> > @@ -871,6 +894,7 @@ static void imx6_pcie_ltssm_disable(struct device
> *dev)
> >  				   IMX6Q_GPR12_PCIE_CTL_2, 0);
> >  		break;
> >  	case IMX7D:
> > +	case IMX8MM:
> >  		reset_control_assert(imx6_pcie->apps_reset);
> >  		break;
> >  	default:
> > @@ -930,6 +954,7 @@ static void imx6_pcie_clk_disable(struct imx6_pcie
> *imx6_pcie)
> >  				   IMX7D_GPR12_PCIE_PHY_REFCLK_SEL);
> >  		break;
> >  	case IMX8MQ:
> > +	case IMX8MM:
> >  		clk_disable_unprepare(imx6_pcie->pcie_aux);
> >  		break;
> >  	default:
> > @@ -985,6 +1010,7 @@ static int imx6_pcie_probe(struct platform_device
> *pdev)
> >  	struct imx6_pcie *imx6_pcie;
> >  	struct device_node *np;
> >  	struct resource *dbi_base;
> > +	struct device_node *phy_node;
> >  	struct device_node *node = dev->of_node;
> >  	int ret;
> >  	u16 val;
> > @@ -1019,6 +1045,14 @@ static int imx6_pcie_probe(struct
> platform_device *pdev)
> >  			return PTR_ERR(imx6_pcie->phy_base);
> >  	}
> >
> > +	imx6_pcie->phy = devm_phy_get(dev, "pcie-phy");
> > +	if (IS_ERR(imx6_pcie->phy)) {
> > +		if (PTR_ERR(imx6_pcie->phy) == -EPROBE_DEFER)
> > +			return -EPROBE_DEFER;
> > +		/* Set NULL if there is no pcie-phy */
> > +		imx6_pcie->phy = NULL;
> > +	}
> 
> Move this into the i.MX8MM specific section below. The PHY is required on
> the 8MM and we should not ignore any errors.
[Richard Zhu] Okay. Thanks.

Best Regards
Richard Zhu

> 
> Regards,
> Lucas
> 
> > +
> >  	dbi_base = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> >  	pci->dbi_base = devm_ioremap_resource(dev, dbi_base);
> >  	if (IS_ERR(pci->dbi_base))
> > @@ -1090,6 +1124,18 @@ static int imx6_pcie_probe(struct
> platform_device *pdev)
> >  			return PTR_ERR(imx6_pcie->apps_reset);
> >  		}
> >  		break;
> > +	case IMX8MM:
> > +		imx6_pcie->pcie_aux = devm_clk_get(dev, "pcie_aux");
> > +		if (IS_ERR(imx6_pcie->pcie_aux))
> > +			return dev_err_probe(dev, PTR_ERR(imx6_pcie->pcie_aux),
> > +					     "pcie_aux clock source missing or invalid\n");
> > +		imx6_pcie->apps_reset = devm_reset_control_get_exclusive(dev,
> > +									 "apps");
> > +		if (IS_ERR(imx6_pcie->apps_reset)) {
> > +			dev_err(dev, "Failed to get PCIE APPS reset control\n");
> > +			return PTR_ERR(imx6_pcie->apps_reset);
> > +		}
> > +		break;
> >  	default:
> >  		break;
> >  	}
> > @@ -1130,6 +1176,14 @@ static int imx6_pcie_probe(struct
> platform_device *pdev)
> >  				 &imx6_pcie->tx_swing_low))
> >  		imx6_pcie->tx_swing_low = 127;
> >
> > +	/* get PHY refclk pad mode if there is PHY node */
> > +	phy_node = of_parse_phandle(node, "phys", 0);
> > +	if (phy_node) {
> > +		of_property_read_u32(phy_node, "fsl,refclk-pad-mode",
> > +				     &imx6_pcie->refclk_pad_mode);
> > +		of_node_put(phy_node);
> > +	}
> > +
> >  	/* Limit link speed */
> >  	pci->link_gen = 1;
> >  	of_property_read_u32(node, "fsl,max-link-speed", &pci->link_gen); @@
> > -1202,6 +1256,10 @@ static const struct imx6_pcie_drvdata drvdata[] = {
> >  	[IMX8MQ] = {
> >  		.variant = IMX8MQ,
> >  	},
> > +	[IMX8MM] = {
> > +		.variant = IMX8MM,
> > +		.flags = IMX6_PCIE_FLAG_SUPPORTS_SUSPEND,
> > +	},
> >  };
> >
> >  static const struct of_device_id imx6_pcie_of_match[] = { @@ -1209,7
> > +1267,8 @@ static const struct of_device_id imx6_pcie_of_match[] = {
> >  	{ .compatible = "fsl,imx6sx-pcie", .data = &drvdata[IMX6SX], },
> >  	{ .compatible = "fsl,imx6qp-pcie", .data = &drvdata[IMX6QP], },
> >  	{ .compatible = "fsl,imx7d-pcie",  .data = &drvdata[IMX7D],  },
> > -	{ .compatible = "fsl,imx8mq-pcie", .data = &drvdata[IMX8MQ], } ,
> > +	{ .compatible = "fsl,imx8mq-pcie", .data = &drvdata[IMX8MQ], },
> > +	{ .compatible = "fsl,imx8mm-pcie", .data = &drvdata[IMX8MM], },
> >  	{},
> >  };
> >
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
