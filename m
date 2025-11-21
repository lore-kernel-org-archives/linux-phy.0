Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F230CFC283
	for <linux-phy@archiver.kernel.org>; Fri, 21 Nov 2025 15:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vPkvqK6vbxt2DTfG1TRpTSgSfBcLJpi4zXhezruxTz4=; b=J+jEQUXkqQIXsh
	3pGGEXoCph0BryKldT8ETpwjQk/uVUISWWaUvxEcp73eS3xrHVr8rbj++9lJFnTyPr0YTr8iFQKTn
	S87HvF4TfjQ2EpSrx/CaXvqLSY4XC3JM60MFJYbJr8gBNCmXXGp4kgvKKAAqbwwmwrljNv7ANxhFv
	HWAHaQ8qB9EOrcerSk6spMcVQzCWXisOS6Oma+VIa1Uou9q2IAKvUHo6SMAcMg4HU9DLP4pXCYVwW
	r3VuT+JyL2jtTz7D81/5LkV0rvdPilvB8o1gY+/M/KZv9aZEi7PnknhHc5xswNad6UsA764LXwYn/
	TOEdfelXrqNBfsyUvvpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMSqU-00000008b5M-0ZFc;
	Fri, 21 Nov 2025 15:14:46 +0000
Received: from mail-japanwestazon11010006.outbound.protection.outlook.com ([52.101.228.6] helo=OS0P286CU011.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMSqR-00000008b4F-3LPJ
	for linux-phy@lists.infradead.org;
	Fri, 21 Nov 2025 15:14:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q2xj5mpz/MGSYxzu6fXQntwDvJv9mLq7Vr6Qtk1G6LkdK8dptrPJxj+A2sWo6zwuigdjeZCO3ol6JuwiVtd9HfZWMeY/rY1cL4ful6yRQBerYnL98DCJKF8Qm29O2/+Kw4664rPzh373U9Js4FxB6cc4+JDSHg+pdRkYOIN9XzocYHbJYziqfnYn1P16aQxH19UaCokH54HaiSJjMHd5Hdd5gts8JJTfimWX1zmXPtvQx0U8/VSsDAr/xcrDlN1f1fLUn4d0GtqjnvETzb5XyfYsWd2t9Y8K4oEsXISVu9k6O1MXGC8VGCEahZNedSKsGINjyONnbpGzxM1aaD8YmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=35/Wu9j7V2IpANbFzPhFfPHt9+6SbXbpidMLq9d+7Rw=;
 b=sYnJydHYat09Ta6eQLaPNhawLf9A1y93ztXH8jqwx7alxlrgLkPQskYJRE8oImU/MA2aP+TKVSw74c7Q2ut37yIW5HFf64oOxvAXVuQ8b09anKRI1Sgkhc5uUE6CtI+A5ILpgBNXz886A3G5tDPn79Y71jSJ+29ERCDL/nIiVeZZyCI+sSkhxP2vTZ/AVCgBjT7R+DJfSu7zwE0M347uw6DUBtSlhUDIPw6N9miN8TCkXr6maoBZLy93F5VnXLN/HyECj8QS7e3z3lK9dVGWg0dUnQHx+pLCDhAZD85SOdDgOfnQ+T1fxtSq5iSyEBrrtkSS1Xac+ceri1F9iD9Liw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=35/Wu9j7V2IpANbFzPhFfPHt9+6SbXbpidMLq9d+7Rw=;
 b=AlD8q3uYhH/4lSyeOYJSCLzP+YtA35HRi/eThdWa0ITxVl2R01/nal5CibcVeqSvUFJeggOhgXCrf3nFCpBRytY0B25rhgnKfddQUmjwsG8dGQ69Hbil8pIMeVhcVpydHp3aOuSOZ4/GC8CoOfMg2RgoKTjKGyT8ixtsLhyOTgc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
 by OS7PR01MB16954.jpnprd01.prod.outlook.com (2603:1096:604:41e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.11; Fri, 21 Nov
 2025 15:14:41 +0000
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::33f1:f7cd:46be:e4d8]) by TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::33f1:f7cd:46be:e4d8%5]) with mapi id 15.20.9343.011; Fri, 21 Nov 2025
 15:14:41 +0000
From: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
To: tomm.merciai@gmail.com
Cc: linux-renesas-soc@vger.kernel.org,
	biju.das.jz@bp.renesas.com,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
	Peter Rosin <peda@axentia.se>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andi Shyti <andi.shyti@kernel.org>,
	Jonathan Cameron <jonathan.cameron@huawei.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 13/22] dt-bindings: phy: renesas,usb2-phy: Document RZ/G3E SoC
Date: Fri, 21 Nov 2025 16:12:02 +0100
Message-ID: <89f81a7abef7e9e95c239992a9dba1a1e12ff093.1763737324.git.tommaso.merciai.xr@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1763737324.git.tommaso.merciai.xr@bp.renesas.com>
References: <cover.1763737324.git.tommaso.merciai.xr@bp.renesas.com>
X-ClientProxiedBy: FRYP281CA0015.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::25)
 To TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB11947:EE_|OS7PR01MB16954:EE_
X-MS-Office365-Filtering-Correlation-Id: 108d0faf-8cb5-4bc2-2baa-08de2910b18e
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|52116014|7416014|376014|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6bM58/+T5M8phuog9esh3MnomWySNILizy+42ePZOIjj6p8bT0cvRO5oaOIs?=
 =?us-ascii?Q?9x1r485jB9ljMLMg/MHJ3hI7rJhseeRbm04078RazfzN3V+r3Qu6QQ1CD6BB?=
 =?us-ascii?Q?n/ul1RltObNGss0q0DrJrzavEJDtSmWVArHW23Pmpx1h2r/Kmgp/Z/j38Qo+?=
 =?us-ascii?Q?TrK83nda7Gf0VkE1RyDnZFMo0tfm+wXNVv8sn0o5xF/jZ1ElTe0Pkamd7DYh?=
 =?us-ascii?Q?uEaXrW1P0obZ4yBL/X1H2TfCWHtcoNCIv4OpoxtLqhPyzVZZ9LAV/MdTVBex?=
 =?us-ascii?Q?s2Sbhk8i0gF/p6v6IH+rVHPTyChs4H+0If8VikNXrhueKX87K0rz1ypLsgv3?=
 =?us-ascii?Q?7J0I/WrFoorD6rcX56TUucRZZdue/CpLuAv9Uq3AgNCqNo1LIvo0NnChW2T2?=
 =?us-ascii?Q?V6jX77xm4XdqTVzw6z3zAooaBuzFlBzd6/LFGPwWv/DG5XAe0JltCKQ3g73B?=
 =?us-ascii?Q?wl6Y78s2UKegU2A+3M7oRNesYE30v6M9GkZEfDqtnpoFmbrgDx4AXvtAl6h1?=
 =?us-ascii?Q?YNljiZDoeHkuh2TeB28kRhmUgg7xZ3yqMLR+Ggra0Ef1NfbLB0v7PatHB4lQ?=
 =?us-ascii?Q?c+cdbwFjfsGhuVGBIP7aDAq68cXK25TSC5w4EojgzxRMh6JscbEw8cdveUKc?=
 =?us-ascii?Q?xFkHyJ6RpZ7jxE0e3K1/PZOZxZTBsQuCEHRIyYi6oKkBqfGRGOJLKTWGDB+x?=
 =?us-ascii?Q?Gu+8AgVImQeZ1NMNzgib0dvzx7MB1n5O014V2Z4oEulMXoLVaVhTdDWfTqzy?=
 =?us-ascii?Q?hDM2d28Dmq+/vL4hzrsZUg6zTmcF3ErR3kaw6fceFHBPcMXN3DAbQfHBZcFx?=
 =?us-ascii?Q?mhrEso1DzurwxHG2/ogLjunedbXljx8lmOeYwrxbtC9sA9JqRDc+CUihzwyi?=
 =?us-ascii?Q?tymxjRFy4gDMs7/mE79mPHd6E8TBdfIvaQhekrurMh7wpgC+62WJ8fhAY0OJ?=
 =?us-ascii?Q?5tLfaqSTQZaN7xQudm2CAKmtJoaGMVGDuzz96952iHkICCsfM+iIojX3bpWY?=
 =?us-ascii?Q?pK5t3LoNwsZcpffYYkoXCGM6q4Fy4LtAaYaD3LEI+QHebpm4nImLznC8tu67?=
 =?us-ascii?Q?53Glb5ibV1ctMu8R7G4qxZq9w21m9rp+YOaPJdmtvGWeTVTh3Lay1QS1RX06?=
 =?us-ascii?Q?BIMSh9fvD8R5cKoyXenCBsUez+o+MhT5V5stUFppuRqDW3Go/KzMTy0/EbP6?=
 =?us-ascii?Q?HZoiuqvHE2Hq5/8g6xuzhxA+9cZAJjncOAePQ1fLAioeb8dJHWkngchQfmx/?=
 =?us-ascii?Q?BMcJso9Z9LdUa31hFHpYe+tsiUuhIr38v6phRjGlZdDzW3cqlva4/vnFRqZG?=
 =?us-ascii?Q?vw8BZwYMIj3Ov4qNx+xQ/iguAAeH3S/rnI8rgM433JD5aF8hryxnC0Ap3BDe?=
 =?us-ascii?Q?LeknQWYlh0xwFaPO5dWPP/iWP5UxJKpOSjNFROMsbw5sukCXTIBQgyKEJQmz?=
 =?us-ascii?Q?zA6k6ryQlUfVicxm6UO7IQ5w8mf62V/QIxLmKcuMQps/kgC2VbDN6KHraSUS?=
 =?us-ascii?Q?eTGRb+X44OlJT3TJW/cTcYuy7YQ5qgwipO8W?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB11947.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(52116014)(7416014)(376014)(1800799024)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4rIuD0i1GG+3EZyIUn5KKdILkH+LdQ4yasjim5gcUxiw+fPrHeEfBz5gMXuZ?=
 =?us-ascii?Q?kD/D7AgDvLaPI/b4moxhSUZWsUQhiFjBMYrvAAI+uo9ApaSOIn/cesVJnSgY?=
 =?us-ascii?Q?/3Zocqk0EO8g+2O5x2fOzhPl9C3R6gmghsIAr/a0pY+oxi5F449O+jtU88lg?=
 =?us-ascii?Q?jadVY6NYQVxHdmfMr8YxB7VenL2poHbnRfQMq3aUkqu6qzsbYjcXaL9CPTlE?=
 =?us-ascii?Q?2J0Zh9XiMa//XXjh49g9z9bma7ua/z4iYd2Jo1kxqKR7Sg02nEPFeSEiLQDI?=
 =?us-ascii?Q?kPBA980IIm7/DS/GWFFnV/W5jn3XZvqWpyonCrO7nDtNzoKOhGiIuQJzhSED?=
 =?us-ascii?Q?nSb2D00Y19URF0Hx0QXL8t3yZVnhrTT2oKRQYKdHaT2K/P4XChfCKu82GFHv?=
 =?us-ascii?Q?aMZTlq3XCmXANLXtQVuqEFzNiAxsgOSFmpmAYcEY+rPOyNSaP70ox+UMZrj5?=
 =?us-ascii?Q?XRMvStWOEjxo0hgGcQ6a9tKnqsQpqBM72thkgdIUBeq+lG0VvLI7sMQUKUsW?=
 =?us-ascii?Q?R6A6o9Iej/PlBKAJTp/Ba8ftuvvOfTsDMaEpExRUjhSkNDsTK/a2xgkmr9ZG?=
 =?us-ascii?Q?0tvpDv/+bChDGdMa1LxpGUe/0tCGQ36UYJWGVEWROOwtvQp4RaUnwi7WxvKw?=
 =?us-ascii?Q?ybIfdK9xejEZR6qY5wRUrVeB0xm9eionCatXG8yoE4YDOaqU7dH4mv7AA0/f?=
 =?us-ascii?Q?uOXeuZFJbRSoeG7jp5vzONtWruyKNKHIA9AAqwKOyptSC4zWc+ThV/wOh+A+?=
 =?us-ascii?Q?wThc5qJ20OGpxWoJI3vfwpt+EXt1BMOdWKjuwrJvGEmD4f/9qftCKyESvakE?=
 =?us-ascii?Q?wJrL2W7ILq8py1g+nZiDs4ZhtVA/wBUkVo+xKoZHabTMO5v7CyYefEFL9z/u?=
 =?us-ascii?Q?3/AjtpCYc5XwQDFY612gpTeziwSjLdEgMO+XC3Vdo5vdxQ4IX0jKYpgnE4Kh?=
 =?us-ascii?Q?YuQTabaz++KbAcC4h+hlsta1fdvbSoSmtNegihiD9p6pi+OAPS/MNdKTR0CB?=
 =?us-ascii?Q?vecofrdKCx1IJwSzBV6I5i+TpabkEfplrepEEQOuRJxJ6lOeHXsbeQ7+u7+m?=
 =?us-ascii?Q?T2TjQhpn4jS94zdOJV5DLbPJM7QLkPnhb3Ix8SWtODTQoinv545D9BdNCxvV?=
 =?us-ascii?Q?c8Uv3HdUVo+uSajc1UeMqLPvji0ICfi58VQ78qkXhaYdVnszjj9MZgXYOChE?=
 =?us-ascii?Q?kEu5nKwlUEZvJrkTYfH1IRRw255l1u77avRwdDGMYx+d3y3omDIhHGYTf7eV?=
 =?us-ascii?Q?KuxxoMopz56jxJAgqXt3wusjCufg9NYjb3rxaApWd/0t38CVufKQrjPjuUGr?=
 =?us-ascii?Q?kqOSv4zPn686qErrpIIqoaVsuj3NYzELhCgntUfPvbzdn2M8OQxPX1nKwWjQ?=
 =?us-ascii?Q?FKZTl5sBzgOIKv2O6S9kzdvWhsLX2EtOEl/D7zNjmA2Cjw8v4SOQ2dN/qC7F?=
 =?us-ascii?Q?qiE1aM038xRqBg0qlCwMZaAeh2+j9mwBMOu1vLOJWsRe4MRIxKZUuTSSLk7Z?=
 =?us-ascii?Q?wVgZFN6Dl+AxEKJrSMq+M8VlDwY11OcXmbJxo9jKRew9havjSN4/pq1oHir8?=
 =?us-ascii?Q?Yku3TYTh/xew/3ThZP+ouneP439bHZrC7E0dOOGBWDRzw6tSuht2c1LwNiuI?=
 =?us-ascii?Q?l222lenj8nrrQlUWwdbLiHM=3D?=
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 108d0faf-8cb5-4bc2-2baa-08de2910b18e
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB11947.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2025 15:14:41.1711
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cluupvnIVPmW1ZMUJ+neepXrhQF24H8Vo/W8ZLMGfhHincrqLZHoEAoVdjjspzv6KD5K9MY7v89LrOx5JLHzNDqT26UeyfftJd7Yx4CYukH2bFiG+UMU2YvUN4j+ljeF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS7PR01MB16954
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251121_071443_862314_62C8C549 
X-CRM114-Status: UNSURE (   9.55  )
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

Document USB2.0 phy bindings for RZ/G3E ("R9A09G047") SoC.

The RZ/G3E USB2.0 phy is functionally identical to the one found
on the RZ/V2H(P), so no driver changes are needed. The existing
"renesas,usb2-phy-r9a09g057" will be used as a fallback compatible for
this IP.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
---
v3->v4:
 - No changes

v2->v3:
 - No changes

v1->v2:
 - Collected CDooley tag

 Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index 448da30757f2..9740e5b335f9 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -41,7 +41,9 @@ properties:
           - const: renesas,rzg2l-usb2-phy
 
       - items:
-          - const: renesas,usb2-phy-r9a09g056 # RZ/V2N
+          - enum:
+              - renesas,usb2-phy-r9a09g047 # RZ/G3E
+              - renesas,usb2-phy-r9a09g056 # RZ/V2N
           - const: renesas,usb2-phy-r9a09g057
 
       - const: renesas,usb2-phy-r9a09g077 # RZ/T2H
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
