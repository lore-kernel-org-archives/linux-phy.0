Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90AC1C7EE2F
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jun 2023 02:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p6wlhO2wnasTZZgzLEZqsL+BlcRg/OsEHZY7H6RG/8Y=; b=aqkbGX0bkedF1T
	5LDwVuUnSLjxS/d73hcsTv51tzUjyGCRaQGqe9TMOV2Pu6gwwfnWZELxr9TniWH7hxtQOrCRFXgqb
	GAB+31Z7eoL5mkwIT7cUXurI/rgOK4VX7yRKKfQ1RDwtZBtVLMdJVhlI3c7yuTziPWb0jb9GGB8WS
	gZJhhr8/q5Vw9eGuSXhci8neV03UlOifVyTQJfO+jnB7boNKuuGXbFA5+BzrIiluyCBGQdKVTtpLu
	YXMYxtWvfC7ncz4vy2DZiRPj07DsxkNKS3Uwe8Yk/AROUtZqtxTatGT1QGeIC1Up9K5EIv/QKCWz0
	zHaFmpeBgrfOdNzuSWWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6jOc-0045hg-0d;
	Wed, 07 Jun 2023 02:59:38 +0000
Received: from mail-he1eur04on060e.outbound.protection.outlook.com ([2a01:111:f400:fe0d::60e] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6jOY-0045gt-25
	for linux-phy@lists.infradead.org;
	Wed, 07 Jun 2023 02:59:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mMFjp7bigDlyS29ewc3gF/JkbB38JehITJmLvVsya/5X5zp8eoSSJkjm9y0mvaSc4p+mxcGpd8WSRlY2bzXLdhiiOwND/a+rlSG/iinkZjX4ATG6xx15BocCxh4e/RLwB1ekv+ngJIsBHoI+LJeLge4h4jUDOGyxUvvwtn8AM/SSrvBN0ODzVRvda8/+cCVY7YDvCx5glsYFOxiaYBjsjfV3nEHUf2EYfR3ry+pA62cbWqbC9/Anh4i2Yj9+VNl5sPVntmrOmFwuoH9Y9RUIjFRPROO5DB4wQPYCY/u6IdHsuyLJ3ExxA/E+ZtDbGMMjx9RE9AyHwGhG/Kj08YdmAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7NlpjdWh8S9kic2p18IGvmsi4zwiWke/NKxknTRlvLI=;
 b=V7Ln/uS4OiOKlzzsgrDOk4s6J2+G+8GsvCu8iV740PKYQGuJaGr3I7eZ2MiknjZHpUz47ihUcRySozMnD1I/s+hbWl5oxKFoXj5hSOFci0N5J/zKEmz3NoULnqVfe/KtFBT0WxqBfUeAVpmyvWrGcsXGbKZ7pkqqRwcMCVilVFleVIKYLW39R0QPpuFGvwdXP+/hf2O5qXU4s/YxXyEdL4O8Dzz/LI4PxJneZd6prlhruMkFEzYFD7tw47L7GWBOzS91mkDXwuZY5fvMWY4H/4roEf2ZqppYqU4GYKDtz7lWN6QhRHsLcR+No5iYJYMg6RL1D4MmJemLQdFWYe0Ehw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7NlpjdWh8S9kic2p18IGvmsi4zwiWke/NKxknTRlvLI=;
 b=LQm+x7NWtTihZwx/r+WdgOx7A9xsFL5JDC/PmTRwh1uxo5OQSRZxHSR/EQg7WOKYEYxJpHRMFwh25bYNlT7bLRrz5xvubDTbiwswusxgLvihW7NBUiRGJI8IpNr6gc8EXKztICkFB/Geqk/MFQ+kFb5jBYeVgw6Mt9XUhcfcJuY=
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by DB8PR04MB7065.eurprd04.prod.outlook.com (2603:10a6:10:127::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Wed, 7 Jun
 2023 02:45:06 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::7af:d8d5:d0ce:f68e]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::7af:d8d5:d0ce:f68e%2]) with mapi id 15.20.6477.016; Wed, 7 Jun 2023
 02:45:06 +0000
From: Ying Liu <victor.liu@nxp.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>, Vinod Koul
	<vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
	<robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: RE: [PATCH 1/1] dt-bindings: phy: mixel,mipi-dsi-phy: Remove
 assigned-clock* properties
Thread-Topic: [PATCH 1/1] dt-bindings: phy: mixel,mipi-dsi-phy: Remove
 assigned-clock* properties
Thread-Index: AQHZmIV0iIPtRlAagkKG6T8+RKAcSa9+ogjA
Date: Wed, 7 Jun 2023 02:45:06 +0000
Message-ID: <AM7PR04MB7046C0E33F87DBA409C8C0DC9853A@AM7PR04MB7046.eurprd04.prod.outlook.com>
References: <20230606144447.775942-1-alexander.stein@ew.tq-group.com>
In-Reply-To: <20230606144447.775942-1-alexander.stein@ew.tq-group.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM7PR04MB7046:EE_|DB8PR04MB7065:EE_
x-ms-office365-filtering-correlation-id: 6561af31-a7e8-4027-c44a-08db670133df
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zd1CfL5QwkftbKtz3Z8Itn3RbC+Vnd57ufSlYV4b+lr3BOBWm1yR+QvecBP1yjeqseMgbHrGvvtk7ZT2dmMvJsYkx6mdkSr5EjGjuFYAlIR/f8qhznp+eiL+/kmV7orvE7BfJs/zkzgwaEfqsys/F7v9riPTAiobExa5xx9fs8Vr3EN5K6d5mylxAu6+KWfi3sHQppKBOE8TZfZ1lYNeDbg6ZnC9iNREpoOs8CTEjXqz58DZwAy6wqzkF4ROlTPhwUZFSPGsF30h1JfxMQDrIFuohbdilh8rpJ6YlNJ6oe2aohOaPYPKSXpKkpBsezkofwwjxMxC6ft3zL39vazVzv2WWLONvvzjlJNz9+DggcHi3xf2Z9trJfdcP9OVQyd96/2qY82x7cCsasfR/EknA71Trusec3vHXNxFYISFrJrBlB3bE969vjZCg9VW6z5vm5pqejEV0Drjcjbn3qSbLarErF3cMFxDWZ6PSie3i0nsm2r0TqRGBLZlDV9WGZNHRKqj73i5JkCP9nKVi7kgNlv6hcxtCn0DaHCTDvRilaiysyjgqXYpmAZDvlyf2mvTYSxY6DZlpA3jXPDlbggTRPA4I4rzJB/fxj/mngQDUzw=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(376002)(396003)(366004)(346002)(39860400002)(451199021)(4744005)(2906002)(38070700005)(86362001)(52536014)(33656002)(5660300002)(55016003)(76116006)(83380400001)(966005)(7696005)(71200400001)(186003)(9686003)(6506007)(26005)(478600001)(54906003)(110136005)(66556008)(122000001)(66476007)(4326008)(38100700002)(316002)(66446008)(66946007)(64756008)(8936002)(41300700001)(8676002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?i7MQdJ9+bI+bbSyY2jI8hAMacva/cDdTxVE1zEanIhOK3vNgG3E7no++kd5o?=
 =?us-ascii?Q?6sCQ9PNVCNSeaVfS8ymayMlN895cpVoLlMsfydxzWLAFxPQcUwQGv22hOyMn?=
 =?us-ascii?Q?+EjyYiqedijVJBs8NeVlhoXn5AyX8L0GynPgL92+6luFpPf+sdDs36PT0qU+?=
 =?us-ascii?Q?qSYacK712JS8TjaItkLKjaCRPnlqpT1RCbQSIEkEQR/n3OVTgAupQGw6KMob?=
 =?us-ascii?Q?c+9yzgE4fakXlsHmyxTI8StChbDJS9SzOvuUtkwanPooVFTp2hRGBBO3R1DC?=
 =?us-ascii?Q?vMY0XjmJTFdj7jqxRlDQzS66fk2S355l9mFWxsTsliUyaoAMklmIKyG3omsJ?=
 =?us-ascii?Q?8LK8ZttN4sRkoTEAIVPOOCYMApKNnY8RgogtyabmxBkDIUpgNXgqZbLJzBN7?=
 =?us-ascii?Q?JzqjrIcrz8kmJzpfjmHhn2gwOApfKDvA/V3v0/3rhvRKPRZBPShZmGVkV8S9?=
 =?us-ascii?Q?J7voJ3zHL4fjLI+X408yZOx+eyIrfdIskzwLSYY20zlGJ2yMhKlkMfM9xdr+?=
 =?us-ascii?Q?Zbe7z4fN7qFVStJkR4wzfRR1qFYSwi8bSTteFyJ6N/ZsBFMhvZHESgq2WIlq?=
 =?us-ascii?Q?hhzVc13TgAwDtaU2WFOj9qh4A4t2UcTolBk+pO7UZf6YcBQKxpliCgmjO+9S?=
 =?us-ascii?Q?my0JewX6a/j76PxSmznCglazEGGlVvbPh7xhJXkWq0WHr5uzFgWbjiYbryHs?=
 =?us-ascii?Q?zxgUs7S9S0/O1UcqBdpSW6E40h0qUwklnmonIULbQMqtDM+TblOHRzRjW7xu?=
 =?us-ascii?Q?GOE/jpCLbwZ9EIkYf/D1qnjQk/0QZxqU/6xBTgTQbVR7TmJxP19CTcObydmj?=
 =?us-ascii?Q?9GRYW2n8/ybi1geNOKaMLf5ISu+NCQftDhedz2f7NnXEAC0zPwaEuAlL0DG/?=
 =?us-ascii?Q?TUi183aWrbGz0oiB5SOhOSCtG7s+ebvFb8soyIK4VQ8dZ+OYaliafGyExSXc?=
 =?us-ascii?Q?oYHkyX5Mdpv3cmEOVGNePyg0ik8XNoNfSZ/MHjUfRF/BxpDIdUGLcguCEFcr?=
 =?us-ascii?Q?VBSeqhpmHPfA9EFy1Jtg8efKx0uMDvyS1qC9RF2GAd5syUkDVai3HYUAkp12?=
 =?us-ascii?Q?a6D408Ko6xhDK5z9RDO1jE4jeBLUamowsI8H1/Q4bE48VLx9NojVwFLPuXNE?=
 =?us-ascii?Q?hQgU81jORqSIhveDBoMKg8WRyai7tKvvtjSs8qdZUJeT2fVEhogaw4pRSQN0?=
 =?us-ascii?Q?zT6VYq6tzoQL+j7r9I5HmNJQStNgN2ZgXsoFl+bNiPW4TgY/uWoVRlg9RkPB?=
 =?us-ascii?Q?pRP24CvVa+8plfuAB04iNEqYeLGXYOD8VY7P+5NaqDneGtd9KtLmonnr4C/1?=
 =?us-ascii?Q?o9bEM8tIR/JNfsrcayrOIUQ8hhkujc5zZ1w0D2RvlX4mj93U+NL87nM/Q8+1?=
 =?us-ascii?Q?Fgpu34D8Nk7AaEUX98c2D6/1gvNK15PntWkzlbYVJu4bobW2J0VHZHIDLQlH?=
 =?us-ascii?Q?OeZRRKMwICpH6HBJNQTFGSgCEaRxH1HnFQWkxeXYVt5XKkcrhc6BCFvdstbT?=
 =?us-ascii?Q?6Owd5QiNQ/XDq6buR/ujYaZf49PsJx8Fyh0SNP4+HwZGGQXrL2aZJ7syaYJ3?=
 =?us-ascii?Q?Cuz7i9J+iPjPvzbuKQ0=3D?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6561af31-a7e8-4027-c44a-08db670133df
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2023 02:45:06.5468
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IdBRWKsDw5h0c0jsv8VPp50tI5fpdYTD2z+xvr4zsUbVhzetJLuODCVSHiyptuL5uQMPILDW08b/QFmQpGh77g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_195934_713614_C28FE765 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
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

> From: Alexander Stein <alexander.stein@ew.tq-group.com>
> 
> These properties are allowed anyway and some SoC (e.g. imx8mq) configure
> more than just one clock using these properties.
> 
> Fixes: f9b0593dd4fc6 ("dt-bindings: phy: Convert mixel,mipi-dsi-phy to json-
> schema")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> I can't reproduce the mentioned mis-matches in commit f9b0593dd4fc6
> ("dt-bindings: phy: Convert mixel,mipi-dsi-phy to json-schema").

IIUC, this is due to dt-schema change done by commit c3424745f900
("dtschema: Add assigned-clock* properties by default").  See
https://github.com/devicetree-org/dt-schema/commit/c3424745f900e8cf0a0e3acebffeeda83a82f6d4

Regards,
Liu Ying

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
