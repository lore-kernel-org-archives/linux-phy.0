Return-Path: <SRS0=m7K2=OS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D31C4C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 28 Sep 2021 02:29:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A70B0611CE
	for <linux-phy@archiver.kernel.org>; Tue, 28 Sep 2021 02:29:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A70B0611CE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V15kqffQQPh+q7A4Bz3n5QxmfvncMQpPe2Anye+P77U=; b=hXZOmZeYRwklng
	guAaKvBD0qqCkt08C5dYP5z+FvmQwYxETin6pE+h8GdZAHNV2obnWNWNsWhDTYCqnD8QzPBAJ5r2I
	I+ELyGjQnGlK1cUd3ZJBw0xpx6SemxMnsNvytpsMt/P320xnfllTgMIGXQ9rNAFShj5aiRrA2YcAB
	bi6bOcCRyZHF8rFVcKMlPdDcJc16hYJcEeYXVxNYh7io5cIy50jSuD7EIBAeA4gX9qL+4qwohRLZC
	q4AU1riC/DOKpwAlXh4vsYy8SVbxgDmhEe+YeTRwaQew/vtcdmU+xhpBDzxZ95IGuphQKVg3jF3mM
	BrkQgxC5Lk0bqWoBGI9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mV2sQ-005GlT-Ex; Tue, 28 Sep 2021 02:29:50 +0000
Received: from mail-db8eur05on2049.outbound.protection.outlook.com
 ([40.107.20.49] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mV2rR-005GJ6-2T; Tue, 28 Sep 2021 02:28:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lEEGfTNU+xilFhW4mt7EyYU9Epniv/YLS+hb7p4g7rsH6a407Zk8Y+28XaOmxVbLZESoc8UVOHMKv/mY244+U3C0kzFOFa6n6F8KqIQtgiB+Wy3xLnNlUidlHKKfFKI/u/By6iqlhbrqCu/7vGhS0qQppykDXBqjXml63sgbTMBUQA917WZ0KvXPfml0AnC7swqh2FyFJs+j2pAZyPOl35u5tTyDT99kLKuZ/W5GNnOr/G6E7zSbk3U9LauqoHKCGLDwWUC8ddn2SHUidtdj+FCpvX6JQx9IPbWZtkAI1yaQkmwmHCwq6Vkfak1+aavqLrNsQ+EQJ6kOuAZv/mdQlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=1LnidZM/xzhfu5BrdQyOhVsmCyEVFZdv8RgKp15LRP8=;
 b=MNJFSdI7V7WwbIIbLfuZsKmX8gGGnUYe/7SY3kXikRBBuwwNk0u/eBqVBOi4G0nYFUam13uHUmhoO9nbRlFt4cCUBc6RidFHhFLQumcTRf1zpSV/yikbcEsOP9QRA4p+FTZThAPegGzK+S2XLFXhPkUjGM8ij1l2KlXcnBRNkVvStqL1h0WWTFu3a0CQkDM9lhJd+ycEVzGINguJyTnIBr7OJeHMfXBuMpYut9WX1tdh9Qn6qvPrLi5AsTYVhvQcT3LNnYcIqQiL9+rWs8SuGCGPPZ1D6UynyewLB2NFXrJFyl88hbgUP7jcanJxfkk/a8rFmO2+Wb9AUxci1hIWlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1LnidZM/xzhfu5BrdQyOhVsmCyEVFZdv8RgKp15LRP8=;
 b=QIIk2GD7hp4ZzRXI7YGbcNbpq7Lz4O0wN+r25qDXgT9G59l/KtacIKLHK+pM2hfl8xiqCGdzh5Q7eGBM2P4jeK2+1R6CsB63wPSJifP0bz+9ETmH5Ib15G8pSOFB1+IFtjiOteONQ6dt9KNbGU5MJOQcbDxeR6rpwjDvQCYr6Ig=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by AS8PR04MB8867.eurprd04.prod.outlook.com (2603:10a6:20b:42e::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.13; Tue, 28 Sep
 2021 02:28:40 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::c5ef:f538:c3e0:c4c2]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::c5ef:f538:c3e0:c4c2%9]) with mapi id 15.20.4544.022; Tue, 28 Sep 2021
 02:28:40 +0000
From: Richard Zhu <hongxing.zhu@nxp.com>
To: Lucas Stach <l.stach@pengutronix.de>, "kishon@ti.com" <kishon@ti.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
 "galak@kernel.crashing.org" <galak@kernel.crashing.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>
Subject: RE: [PATCH v2 1/4] dt-bindings: phy: phy-imx8-pcie: Add binding for
 the pad modes of imx8 pcie phy
Thread-Topic: [PATCH v2 1/4] dt-bindings: phy: phy-imx8-pcie: Add binding for
 the pad modes of imx8 pcie phy
Thread-Index: AQHXsq0E/ZEra0wLD065nB1GsA2nyKu3jZQAgAAD/fA=
Date: Tue, 28 Sep 2021 02:28:40 +0000
Message-ID: <AS8PR04MB8676652408689F8453D2805B8CA89@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <1632641983-1455-1-git-send-email-hongxing.zhu@nxp.com>
 <1632641983-1455-2-git-send-email-hongxing.zhu@nxp.com>
 <c653181970092c27fc98fbb5dcebe21ebf29d887.camel@pengutronix.de>
In-Reply-To: <c653181970092c27fc98fbb5dcebe21ebf29d887.camel@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: af4ba94d-b4c4-4204-028a-08d98227af25
x-ms-traffictypediagnostic: AS8PR04MB8867:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AS8PR04MB886736B6D799B532EA23E5E88CA89@AS8PR04MB8867.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6vjoixefRUqLu0rTOTIUvmksNxYLm3mwx1xmOibk1738nny0BThOYnIyuHub3uAKpUMWHlEK+AgLSpQTHLVl/eb0SOqSiKKLceaLIv2HGuTLzYq7KIfajDedirkhe/abaFbL/cOKBImd3gQ0NTWzzLmJBXRdkQmpWpyIk7HLG9A0uHuiMjgVURdGesCsqi0JP08lnGlD5pIH5EvJGX/r16+PKWKsxFVL61xlAA4fFDxutwsVVp+mOo/HyEEyxa/yrP4+SxEFE0UvaBFlImVu/rCNs3cCsZnFZIZ4UeL4PDTOfdknaAV394rx3NpxT9lMldg+3vlnEltt/dY9w7P0IaXAAsfjmYg2XpbHFfZmdbEpof+kTOpSpmCf6NWeCf2/ks8VSC26OIwVQx6TbgDHasXrZMqiB86+25YDAaNk7sy/1RW50K4tPtX13ph/npgaJGwRL+1inph0b/mC4vKheU5K9GADJ+JFsjhQh5nPB+lBrESRRAOVy7UUC5zcmupXPF/hDwq0SChMxSVlQ6msa+SCNCYhcHYGJR5JCGk9NLJLhn7CxD9LD+QE43uFR5D+p/HY/N6tcLTGA/e7RehQuzcb+HkOlo/PiQF9reG5knLebbev/Jz+pjepvftrVvjlRKxhxut3bZSH+jyuWg0sJUj5J8zpKpFzHbL9hVe/9qVqtqYfieBqnHtSHRyfU6OHZbuT8deTwK0BKUrS0Y6rRg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR04MB8676.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(83380400001)(38100700002)(76116006)(33656002)(122000001)(66946007)(8936002)(8676002)(316002)(86362001)(52536014)(186003)(9686003)(7416002)(71200400001)(26005)(5660300002)(55016002)(6506007)(53546011)(2906002)(66446008)(64756008)(66556008)(66476007)(4326008)(7696005)(508600001)(38070700005)(110136005)(54906003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R3k2T2ZZRVBlcDhTZW5UbGFRNUYxY21XanY4dDkwTWdmanhNcnZPbjk4M3RZ?=
 =?utf-8?B?cDhORWY3aFE4NkhEckpDbzJ0ZDBkM0JRK2Y1TDZ3S01XTXJEQ3J1UWRBR2VK?=
 =?utf-8?B?ZWM2WXlLdExQQzVMQ3BOTTE3UWJwcXZoeUhGMXNDREc1Yk9adnFxOFJhbEZB?=
 =?utf-8?B?SThiaGx6bkxicTZsOVJycEZrRGUrWmErcjg5YWswcHprVktnZXBvTjF0c0x0?=
 =?utf-8?B?SnZRYWVMVjJ6NWRBNGtmNll3VUtTRllyNTBweXRJY2pweVV4V2MvcDJqNDhT?=
 =?utf-8?B?eFhndTNDUDR0Z09lalRkcFE5aVlBdm9kV3FzdXlFOVZTOTRFVGhOY3lqc0Fx?=
 =?utf-8?B?MFVzTndTQ0RGTFRtL3BuN1c1RlhTVWVFL1RkKzFTTnZNdUNQUnVRNTEvMVJU?=
 =?utf-8?B?WTM3c09iUk1DZ2tHbVIvL0QxTHBxK2luZlAzNGp5VkU2cUtQOWZ5MUVQNFhT?=
 =?utf-8?B?QnVkZmkxK2IwdnUzaVgrZnBBNkZrazh5enQ0TXI1Qk45RVYzc3hOemx1eUZp?=
 =?utf-8?B?NjVJMno5UXB3TXBMaCt2Tjc4dDRrNUE1UG5hUVBFa0FsQjNYUFJsVzVHN3dl?=
 =?utf-8?B?a3NIT0RHYm1EMjVGOWg4UXMxMjYxYmJDbU84ZDV1N0RuUmR4NkVheW56dk4v?=
 =?utf-8?B?TkE4S1dkT21CUEJYV3htWDExQlg4ZUViQSt4SUJSaTlDcFVLRmIzSXlMWWZW?=
 =?utf-8?B?cm1hNWtITVJvMVREaXM2VXhiVHV0eGJyOTgxRUQrOTFCY1FsT0hCZk0rcHVE?=
 =?utf-8?B?amlrY3JBOUJQTU5qeFM5Q1pNd2xzL1Q5aFNvK0ErdUdCNzdHV0QzYnJOeXl5?=
 =?utf-8?B?cTNSeWFScGx0aVlhMHpjUk82OHAzTUFpcXA0Y0cxbDg3L0ZLSlJrR2ZUVjVa?=
 =?utf-8?B?L2VKUDVhWGhNay9qdjk1UTR2K3Irc2VKbWw4ZjJNUVo0S2I3eklmT1EwOGR5?=
 =?utf-8?B?eFBqdzR5NnlIQ0JFK3pldEZJampZR0cxTEE3OVFBbmJrK2NGemtVU0dOSmFz?=
 =?utf-8?B?aWwxS1hmV3JPOTVjRUtPZU5kRjZLQnBJZFhweldwQW1MQ0pSQXdwZE5PUFlF?=
 =?utf-8?B?SzkwUWMvbUJ5M2dBOTd5Z3JxUmN1WDl2bVQ5dEJ4dG5HMEplTGwrSFA3elAw?=
 =?utf-8?B?dG5ZTElaYWY0RGwyMjFKY203dkVqSkpodTJlemtLamEvemxKai9mUXRlRkF1?=
 =?utf-8?B?V2NrUm0zOVlSdlBTMitwc0cvZ0M4cndqSWl2MEY0ajZNeHJQcmN2akpYQVFI?=
 =?utf-8?B?NFViRW1YelRoOUJJSUVja2xmaG9mQmVOWEJPRVJpS0djM0xoS3AvYy8wQnN1?=
 =?utf-8?B?WllJcXE3RWZ3aUNLUTFTY00yVDNWTVZsMFFDc0RaeDVyczFzOWlHdi9lL2tS?=
 =?utf-8?B?Q25Md1pCNzd0cndRdWtIQ2pMYjE4emRaYkU0K1lEZlJMQnQvMVIrREFIemQ2?=
 =?utf-8?B?UnVVcDNPbStaWmFNeENKSHlSSUZ3VzZSNEJDanBhbDArUnBDMW5reW1aRlR3?=
 =?utf-8?B?TXRCWjJ0YTh1TmUyZFcvTDkxSHhZVTZLZlRyUFlaYVd4dnoyS0JscDRIU29O?=
 =?utf-8?B?VmVQMUtrYTRwNWxhMFovZDZOMUVhYUt5TklxWitkMnQ5bW1nblJYYlJzOVZn?=
 =?utf-8?B?Y0p2Q0Q5c2sxWW5sSVVvRUdBaGNnYWNrV3NzR1lnTFlmeWRkNkVuYkIxby8y?=
 =?utf-8?B?REUwVTRCTk1ZWUZQU25PSkR1aEJOZjNPdnN1UmhQWkFlQnZLRTZkc2xmNUpz?=
 =?utf-8?Q?jFdSPYgFy+NcwJUdogpVQj162iuDGxfENenlmeR?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af4ba94d-b4c4-4204-028a-08d98227af25
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2021 02:28:40.2822 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uJ0NOcILsLVcQfnVNtXorcCyK/QwG7DfuIY7G4fGOa5f9HL2imXfgXO7k6+hMWVHce7D3P9CaL+euDV68YDWog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8867
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_192849_172795_DA190428 
X-CRM114-Status: GOOD (  23.84  )
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
> Sent: Monday, September 27, 2021 4:27 PM
> To: Richard Zhu <hongxing.zhu@nxp.com>; kishon@ti.com; vkoul@kernel.org;
> robh@kernel.org; galak@kernel.crashing.org; shawnguo@kernel.org
> Cc: linux-phy@lists.infradead.org; devicetree@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> kernel@pengutronix.de; dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH v2 1/4] dt-bindings: phy: phy-imx8-pcie: Add binding for
> the pad modes of imx8 pcie phy
> 
> Am Sonntag, dem 26.09.2021 um 15:39 +0800 schrieb Richard Zhu:
> > Add binding for reference clock PAD modes of the i.MX8 PCIe PHY.
> >
> > Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> > ---
> >  include/dt-bindings/phy/phy-imx8-pcie.h | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> >  create mode 100644 include/dt-bindings/phy/phy-imx8-pcie.h
> >
> > diff --git a/include/dt-bindings/phy/phy-imx8-pcie.h
> > b/include/dt-bindings/phy/phy-imx8-pcie.h
> > new file mode 100644
> > index 000000000000..59ed322f8d6c
> > --- /dev/null
> > +++ b/include/dt-bindings/phy/phy-imx8-pcie.h
> > @@ -0,0 +1,14 @@
> > +/* SPDX-License-Identifier: GPL-2.0+ */
> 
> This should be (GPL-2.0+ OR MIT) to be compatible with the license of the
> DTSI file it is included in.
[Richard Zhu] Thanks for your comments. Okay, would be changed as this one later.

> 
> > +/*
> > + * This header provides constants for i.MX8 PCIe.
> > + */
> > +
> > +#ifndef _DT_BINDINGS_IMX8_PCIE_H
> > +#define _DT_BINDINGS_IMX8_PCIE_H
> > +
> > +/* Reference clock PAD mode */
> > +#define IMX8_PCIE_REFCLK_PAD_NO_USED	0
> 
> I think _UNUSED would be the more idiomatic way to call this.
> 
[Richard Zhu] Okay, got that. Thanks.

Best Regards
Richard Zhu
> > +#define IMX8_PCIE_REFCLK_PAD_INPUT	1
> > +#define IMX8_PCIE_REFCLK_PAD_OUTPUT	2
> > +
> > +#endif /* _DT_BINDINGS_IMX8_PCIE_H */
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
