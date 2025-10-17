Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5367ACCD195
	for <linux-phy@archiver.kernel.org>; Fri, 17 Oct 2025 09:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UrYCplG6/SAjRNUGFdtbNOsiU2bRlSuf4hZ2E0GzhR0=; b=NKmTHWh+1Cqgoz
	CggczhqZgu9tKZZUNvKXGAf6ekC9wEvmKglw3O80kQLnmIe2E8tvJj6hAVP6xUqbnZUy5SNdKPi5P
	tWox8gPlTbjG4cVO8evxjhXkti8nPHcYH0dGWfY/9ZbKWYmDOiCWmtwmJrHR7nq04DMRgjx01LPr8
	SXj6MvH5ghNwAZT4vGkUFwf2DxGwMxAHqpF1CAAYtjdyXMZWmpU1UwxHqwBB0KnkqgXmRFLPWHfP7
	iLwiHjabzvo5JS4PwOAgNVKdPerY7C1lNhQ3eiooUrNhA/BvFPIGOjgUNsjhXXf2Pg9RXEpOFawcJ
	9N6Qs6iEQMDszqmTUH1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9gpG-00000007JcK-3zmJ;
	Fri, 17 Oct 2025 09:32:42 +0000
Received: from mail-japaneastazlp170100000.outbound.protection.outlook.com ([2a01:111:f403:c405::] helo=TY3P286CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9gpB-00000007JaZ-29vX
	for linux-phy@lists.infradead.org;
	Fri, 17 Oct 2025 09:32:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DsUnf/z1aObneKJ2tRNIgbbjjYMwf4U8hyZXcDzoIcrxW9D1zMZ/FVQm+G9g3PxVb8tu4RCOazsTnxrAKh0Y4+m/+B9nOSX4q7P3u9/CAbeeCeXxhbuesRJTP69tWEWwlm0hkfCGnmGTJGJ9DScG2carT3hZP5dLFoizmp8y5aotvt4cQ4fJ+oM3y+0Zg0Drl6LpxJ/Md4+hKBQEUXqZv8JlHxAF+SqXwtYWmA5EpkWdOV1Ur5fPYGrZICXRfxTZpKbryFPzB+YiBAh+5J0JvTOvJgjB97bztDSjMTabJd2oXt6MUU6nVvXJhFGR3tUhIAHRViXRoGVyqgsPOnNxaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AzSDcs/tqtwCEptAkNRe8X5UlS23V4nEBIws2kQ4aME=;
 b=a2dEcQpduPIBgFnIlTBTnjsLohEXRPpyeCzecZYA8M8V+vg9dSmyp6BBTgSarBnxpuLLgJkzwaH/4rQvZvtd0ogtCQ0zVEM6WXu5hqjyxz8pyPmJep3i3T+krld/sooWIPE+1iW9zdcqF9Xjs0Z3W1DpOju+mgCnEAOG72ikBQDEKAZ4HJj6QDjQwPe+27b3m5dhs1g5A2e/DCmiQVdL8KL2DQAR5YpxLDjorRlV9zEJvvRJi6hQK8meLNAadPZtEI78RalBipykj6AaALUF8HfQWOe+OrOW0st4m9DCM6JAxBR+wZFu8mbVIcLPLLUtKxvHpYwGyAniGPbPl9paXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AzSDcs/tqtwCEptAkNRe8X5UlS23V4nEBIws2kQ4aME=;
 b=U5tNSu0dqEqEhAjzP4y2kKSgypH8mhMUHnIEYR2Cgq7Xcws4XMOOdMjlhwQQZf1gPcocSJ5zD7SQrfvAFLa96Z6UWot1uY1m9JCv3yBg4FiolzFPGGUY2l+a7yLzyWCVcv7HDhQtZiHeWpVRc44qx9KaNJAjkux5PENIgBELOYg=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by OSCPR01MB13062.jpnprd01.prod.outlook.com (2603:1096:604:335::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.6; Fri, 17 Oct
 2025 09:32:22 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1%4]) with mapi id 15.20.9228.012; Fri, 17 Oct 2025
 09:32:22 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: biju.das.au <biju.das.au@gmail.com>, Vinod Koul <vkoul@kernel.org>, Kishon
 Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Geert
 Uytterhoeven <geert+renesas@glider.be>, magnus.damm <magnus.damm@gmail.com>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, biju.das.au
	<biju.das.au@gmail.com>, Conor Dooley <conor.dooley@microchip.com>
Subject: RE: [PATCH v3 1/9] dt-bindings: phy: renesas: Document Renesas RZ/G3E
 USB3.0 PHY
Thread-Topic: [PATCH v3 1/9] dt-bindings: phy: renesas: Document Renesas
 RZ/G3E USB3.0 PHY
Thread-Index: AQHcJxsC7Q8Qu3lyakqAd2KasW14OrTGQ3Eg
Date: Fri, 17 Oct 2025 09:32:22 +0000
Message-ID: <TY3PR01MB113463934A994AEC56D305E1986F6A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20250916150255.4231-1-biju.das.jz@bp.renesas.com>
 <20250916150255.4231-2-biju.das.jz@bp.renesas.com>
In-Reply-To: <20250916150255.4231-2-biju.das.jz@bp.renesas.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|OSCPR01MB13062:EE_
x-ms-office365-filtering-correlation-id: 7ce2150c-bc69-498e-184e-08de0d601365
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?wMwoALhM9eNLv793c+mJK2b9T8hqbPGTBoZoAv6n0bTWtIAC8b5N3LeD+ef9?=
 =?us-ascii?Q?AciMvCyHrxJQl0fHUeo2mpWH3ROc1DcttyleZN1hMbkFxKIPib+twMpnMJzH?=
 =?us-ascii?Q?V3siEv5YtQxxXQR8TI+F0XYuid8MQRbkDY9tAhISFTE4//zZ85YJ5EVv5gY6?=
 =?us-ascii?Q?4KnKhMWZMlAGq5alf/++YOvJgacjUMBrtVXEWwjlA547gC/x2D3DXQ9I9VPg?=
 =?us-ascii?Q?X67TtYmzqW97z5UlaQ+qBx0GEyGJvlrFyRPIPCROxwVChEkclpVu39VL8vch?=
 =?us-ascii?Q?Ra3MRl2T+tjG4qXWmFxjZZmhiZTzcfoPXIT3UsnPnBFSnXZID+j2zFUuJeGb?=
 =?us-ascii?Q?uqKRqnjRvzDTL9rCfXyX6ZA/YkZcDg8uutmca9TkFS6w7nG1D8jvXTseBYgG?=
 =?us-ascii?Q?CIb78nkD8tzVyeXE0D/onmDcvi+LyU8hMP6ex6Ekn/jTeSeOZkTkBTZt34eA?=
 =?us-ascii?Q?Bca1olWCMtS0tTiMHdGedEkuPW4qXwARibi0LOTHCHBpDLzRvU/jZ3QEcX11?=
 =?us-ascii?Q?FSfU1EBoMOjgClwPNfi8eYtDMwzGttgDxYz1nNZglCL5tI2UwryxMVpePxlc?=
 =?us-ascii?Q?8JpHqaOqE410KP10qFuQCPeuKJQ7vGK/Byg97Xa/jAj4k8m3kygfcSHh/htq?=
 =?us-ascii?Q?0we32piJrSaGvI8phl8g94pX2bhkkCFLXBX321yHVCK9ea3aSOoSc2ACxwwH?=
 =?us-ascii?Q?QBVnJR6/0KJC5P+xTJZRP8YcrU4/0eoSNw6/QjxTQHWbwAWJK0kTNlqhUoFJ?=
 =?us-ascii?Q?gRlordzGdjr7IjKQnyP061vshYkhz3frgQI0C2zsza493lKsCLPVyKpvkkrc?=
 =?us-ascii?Q?+RG/VVihOmXbZOqcnBNUkav6xiahzthmR/Q0BNHy1r0BzCu63QlxedJX8k6B?=
 =?us-ascii?Q?bXGBNvCx3fyWfgr5YjqJpdqkptcEC9OAQNP+z8SLI9ZG7uon3W1OEw4ifkCz?=
 =?us-ascii?Q?BfCtBRZNiP60y5KebJnfcBn9awMo94bAv7vFP5kqQAujAgmfAZI9n+JcI+I3?=
 =?us-ascii?Q?gIwhHnU4JT4KpIoEf80SoRBRHFGob1fn0ZZ6U6r3caJkE1kLUP6zRWYfPexD?=
 =?us-ascii?Q?nTZlMHws7ho3s+sVK+pb5oLr8Cgvvo18HhI1tMq3l++v6gFvGCCYsjVcVLGk?=
 =?us-ascii?Q?w0QBgz6v0XCBBDkgH7uoq5RK/ShsmNJbauPLNpV+XRdUqZvvlXF4uvEIge1l?=
 =?us-ascii?Q?fs1U7fen2KBDFVBEJpTVsXiMzqs6s8UqekGdqquDqZaRpSQCnP8ekYuF5+4N?=
 =?us-ascii?Q?/Ope/Ic0b2D7yupGUmTv7LdOzgSLF/4sWPrLUErpYEsaFGDHTJ8IK69tjFGA?=
 =?us-ascii?Q?ptElJltsXxl+GI7wg99eYeoAYzPrDviWOgOmBUTLxrrZQxtLPQ1W+JjXdK/N?=
 =?us-ascii?Q?szC351GwBkPS8nFu/DufOSQvFSsRlN73SUE/ekXKiEdYlawdD3L7vtuZ/fRK?=
 =?us-ascii?Q?i8LXYq/R/lFbmkp8AZy/ClPySEmkYpxXQ16/23I+VmRl+5N0E52Row=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?x+MyOLHI/fDTQwCIKIzcUBorwyhO/VwzF5zlnw0XuXLyBl8dVWputl/8IzJU?=
 =?us-ascii?Q?0cM2ULKg1tjN95idNEG7FtP+esGxnMhoiUufVoZYh7QBykgk8pwO7ghE+uBz?=
 =?us-ascii?Q?Hc5Afsv4qE49Tg9TE8MWhSKj+KjH17oSfQI3/poaSji+x31XoMQX1PLEODNg?=
 =?us-ascii?Q?eJliORAsjZ8hlRbvzOAgr1Pj8jRB9MId3TsJdQbvK+qeApcQzZmD6z1KYV5P?=
 =?us-ascii?Q?T8QSSH9jddD6/Wf5YyapCYzgXm4yLS9+73wdI5n1E0N/kAnbCO2rlbBJnwZv?=
 =?us-ascii?Q?k0pySUG1pgTMXvY/ZEZ5rQRbVuyX22sRsATxe4IuCQ/ND3Kfgll0gxY3h8hJ?=
 =?us-ascii?Q?j9a5Af0ti/Psps3ywFIccmp5yVtI3lLY+TUA+FvsJB2Yp2biCDnjSkMdWcU9?=
 =?us-ascii?Q?+8RIM6uq8qBkA6Rm8o3EFiXN58LpphsxcRm6EgCi4NmeYK9fmyqbycxVSEiL?=
 =?us-ascii?Q?F1n3Nu7/igAgbuT0HKRcFz5Z9SA4Ul8InIeAmN6TcZAAIN+i22Un0qLBdNT4?=
 =?us-ascii?Q?ulfyzv90RdrW3vZJ/DO5MbXnElq653j0oO3yuaWkPtLjFHLJROgAdHdTn57e?=
 =?us-ascii?Q?JnjCmGh0QdDI7Q3whREWKjY3pIuQryJ1AZCZmjgoHzaWN4HzUnQTjw+YtExy?=
 =?us-ascii?Q?ngTfaov+SXdTM6xsaYs3/rDbB61BAZ7XG7oJl37T5iq72T/VB6VDBGtav1TE?=
 =?us-ascii?Q?9YgWM2Mf9KIwBeT2SiVHS9Ie7mhK6XTpdeygxH3kQd9qgz6Jzz0PVpoTWhI9?=
 =?us-ascii?Q?fpfeJxuJePaIQckcxkpy2qBAKnsU1kaUHaRjiO2doNx+Bt4ltqpYwsvtBTo2?=
 =?us-ascii?Q?UeuHMSK1RshKtwm7cKJXaHj2W0EliBNdIDllyKVcrGs77YkRQd9puN0AxOQK?=
 =?us-ascii?Q?cE8GSP6cggt9rURWMtUf4aqAiICVxPKl+zSsQsJyunjt+1isrJ5kEEBJSgPF?=
 =?us-ascii?Q?Phx7ZyBNRBDiRNS1amMFpmnqSkyVuwObA8MgLqdeKVqWSkf0UuLlx/usCTf8?=
 =?us-ascii?Q?elQAeNjtiKk3RppvUSrG4DntLwczZaquaamsWEMSOFqqxTfb/uWP2Ha2TYas?=
 =?us-ascii?Q?GdV/QJ7pG0ZxBUXILJckfrEYOEnFMcbqaznR5GGD9tDsnj6LRr2kMiwqwfqc?=
 =?us-ascii?Q?pV2/HDZ5jAFJ2lUO6seItkQ0UyFcldLiL0Gz0RpLSGNsesoblRCd62/REqYa?=
 =?us-ascii?Q?3pSpjWmcVLbvFm3CfNYFPOOUZdKI2+oZBVuVjfGhEgM37+eXvEYAFg+0M2rP?=
 =?us-ascii?Q?f4H9fl61th1RJKF7OuR5W4XbBA1w/djWwF2ZL007lCB87pzHbO4dM1Vvr8su?=
 =?us-ascii?Q?sKiODFgDRehiIgrC5gsx0XuCNO0FlNcFWu0caP+zWsrySlv0X8eE6VZZsUek?=
 =?us-ascii?Q?w6eo9ewwZ1tsjAhrOIX0S2wdNR+qBfdr+saSJbpnpkg/CkNl5nFqDnhdm66e?=
 =?us-ascii?Q?woDBBB4AEA93BdPlHhrmuk9CcdXS0b+K6pw09whmz9j1qukPK8YUM1g+E3b7?=
 =?us-ascii?Q?2NjSO3+bjgrxdlTYiOaDwxtn1o8R59O/5VRwToS6+u6rCbnk+tVzxzMOPGhU?=
 =?us-ascii?Q?q1XR3BkELmAYyGffD0FHPABuioT3EmYW+jj/0J8Q?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ce2150c-bc69-498e-184e-08de0d601365
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2025 09:32:22.6242
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fPYFdgrfM7fGbYCfa4fhQdLjUp9m/S7C6mn/jawHZbJlfTWmG3RwLB8VN1dY+vSGpZCu4Uptx4fKQtUlAqAqONeC4wUlVk6qCnG7Zm974Mk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSCPR01MB13062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_023237_892132_B93502FF 
X-CRM114-Status: GOOD (  14.62  )
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

Hi All,

> -----Original Message-----
> From: Biju <biju.das.au@gmail.com>
> Sent: 16 September 2025 16:03
> Subject: [PATCH v3 1/9] dt-bindings: phy: renesas: Document Renesas RZ/G3E USB3.0 PHY
> 
> From: Biju Das <biju.das.jz@bp.renesas.com>
> 
> Document Renesas RZ/G3E USB3.0 PHY. This IP is connected between USB3HOST and PHY module. The main
> functions of the module are as follows:
>  - Reset control
>  - Control of PHY input pins
>  - Monitoring of PHY output pins
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
> v2->v3:
>  * No change.
> v1->v2:
>  * Collected tag.
> ---
>  .../bindings/phy/renesas,rzg3e-usb3-phy.yaml  | 63 +++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml
> b/Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml
> new file mode 100644
> index 000000000000..b86dc7a291a4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/renesas,rzg3e-usb3-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas RZ/G3E USB 3.0 PHY
> +
> +maintainers:
> +  - Biju Das <biju.das.jz@bp.renesas.com>
> +
> +properties:
> +  compatible:
> +    const: renesas,r9a09g047-usb3-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: APB bus clock
> +      - description: USB 2.0 PHY reference clock
> +      - description: USB 3.0 PHY reference clock
> +
> +  clock-names:
> +    items:
> +      - const: pclk
> +      - const: core
> +      - const: ref_alt_clk_p
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  '#phy-cells':
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - power-domains
> +  - resets
> +  - '#phy-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/renesas,r9a09g047-cpg.h>
> +
> +    usb-phy@15870000 {
> +        compatible = "renesas,r9a09g047-usb3-phy";
> +        reg = <0x15870000 0x10000>;
> +        clocks = <&cpg CPG_MOD 0xb0>, <&cpg CPG_CORE 13>, <&cpg CPG_CORE 12>;
> +        clock-names = "pclk", "core", "ref_alt_clk_p";
> +        power-domains = <&cpg>;
> +        resets = <&cpg 0xaa>;
> +        #phy-cells = <0>;
> +    };
> --
> 2.43.0

Gentle ping.

Cheers,
Biju


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
