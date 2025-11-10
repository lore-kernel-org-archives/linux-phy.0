Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E603BCCFA13
	for <linux-phy@archiver.kernel.org>; Mon, 10 Nov 2025 12:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZetrYpkgK9FU/SIQHvDOdF/1DBOWneU5KZb1J6SBpVU=; b=ViB41rpR34m5rg
	ZKDPKG0EK0Wvl7BnTqNihF7svNSzM22EKOo9+LLvdlMlrPmpWJp/0TWN0OM4DXjI6/uRG+oXftSCG
	StloTOpGB8YAhvmkbWqfpSrgFdcXAEMJNFiSgpKqp5YBp5wzIpaiRFsNlem6ErmMw8rcmB32Q4g+6
	McZ41BNov3v64EnU5xLmm2V9QxPBXe737B7wZaKHqjXzNuEpmq9XvYUumCVMiLEtjL676UuOAuPN2
	aLOz4RBfIX5A2AzkZnXYiEj6xpgvMOQQ3fa0Ww19V4EXFz9bwFq0YqH0URLfThWbwvUH1BZxJhule
	7TfVGwXVYt4GvBi3VoKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIQj3-00000005Nf8-2pxZ;
	Mon, 10 Nov 2025 12:10:25 +0000
Received: from mail-japanwestazon11011054.outbound.protection.outlook.com ([40.107.74.54] helo=OS0P286CU010.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIQiz-00000005NeV-11zb
	for linux-phy@lists.infradead.org;
	Mon, 10 Nov 2025 12:10:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lkDtlnYfEEKT4HjwG0PV2EmEGK13pIdgRNHp/SOuLCXkmc8JKBNbeJ/P2ssBIxKothSbreXnguYFVnTQt8gpbmUQkvc+F9ou8UNKED3yQTTZ7N9yRvi8I52Zt7GPM/sOslQq0mn8LAu60FcMZdp/LOp5JCqrJidmHHwHzQYNvxQvW7mINZ0kF+gtQXUSMIudj2zP6pRhdKBRhwGsRANYrZ5WYm2RD4OQI9dw3YEA5hsjBxTfLFVRIaEKoIH6puStZnMwgYLRwXN5/KkXrzyxUE2EfqgDDbV/8G4Id3Jg77FP3RNYJXnY9OdRNWi3SbxZoTaWNmlHvJrsPLHDjfB4PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FhUppFb8syF1swX9vprfi4zYRoZ0aazAOeLUbXG4F2k=;
 b=kmnywdQJRjB1N3Vts+eV1RQpVxXOQMDl51Am2yTWH05gdTFPMwzvJLB31seV/JU9t4+6/WDTIMEQMZ7qa879Xdr6tGyUH5r4bNdziS9ilximVCppZ6w5AAtwtyz4IuKEeAljW9bhfWXMnxs6+xB6ieTStzB9wPvpyTuRuiLf06+1CstJAOZ27AoVSy6N2uUxPF2k4qHYgTJj/Mpu/fHCqeafCOP0XbD8uFSeWeBHm3w284mBYBiSvl260b5N/0w3S/IOmrTkZBwgRbjHvtbtFTPF/ndF0XfGhV86EpcSB1tR+IxnFJJDQF+xXNsrXeL4ORHLhZetpvy3n8BPnzT19Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FhUppFb8syF1swX9vprfi4zYRoZ0aazAOeLUbXG4F2k=;
 b=HplBRI8kK/uq+R9J3pprjrH56oZtnm/7S98XVyhQne7cw6EGS6TnDp01hk8ItvPNcXq7GvO2lUSByxSyGFwdgfCiA0Ob2QZrEeDmzB6aUokt8X3gZ4TlQVBUuvddEobLDciVB/MVeMmk3t+cGzqPvHzDCWysiS6RxvWuygpvlIk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
 by OSZPR01MB8436.jpnprd01.prod.outlook.com (2603:1096:604:189::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.14; Mon, 10 Nov
 2025 12:10:17 +0000
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31]) by TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31%6]) with mapi id 15.20.9320.013; Mon, 10 Nov 2025
 12:10:17 +0000
From: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
To: tomm.merciai@gmail.com
Cc: linux-renesas-soc@vger.kernel.org,
	biju.das.jz@bp.renesas.com,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Peter Rosin <peda@axentia.se>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 11/21] dt-bindings: usb: renesas,usbhs: Add RZ/G3E SoC support
Date: Mon, 10 Nov 2025 13:08:11 +0100
Message-ID: <7661ee127657c1031221650fce5c5e3685d40726.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
References: <cover.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
X-ClientProxiedBy: MR2P264CA0176.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501::15)
 To TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB11947:EE_|OSZPR01MB8436:EE_
X-MS-Office365-Filtering-Correlation-Id: b53c1f71-dd2c-4de3-97e0-08de20521c44
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?IpK4hYo5RVXZeIdD442fP3XilULKaw1tNWZZWdWR9rIWW9ns2fNiTq9IpmvM?=
 =?us-ascii?Q?oewprhVBgiobssZZGS+OOI3MxbFmQhB8rh0USmIT7mDw1DG4YSGsKuzoE3J2?=
 =?us-ascii?Q?CA1V6EcF858N2i8VkZAO4+H2vvdUCqWcf2ZTPzn7SM8UE0p6iOVN5Vy1TZif?=
 =?us-ascii?Q?ksvE+mGJk5r4qnZF0whfUnWJRfvO4eRWvIEgYn09mhZ3WREdWH6b+jHOpLf+?=
 =?us-ascii?Q?UL8WAuS3jGKq+q5fXkzlbIZHUfCeUOgKmTGUEEj/7HpFktbdLyesdEspDkYx?=
 =?us-ascii?Q?DzVfsAtH8oIGXpPXmpAztMbcPSODu+WNSOABdVatIqFgnN6s7Xy4H2SWlHpn?=
 =?us-ascii?Q?c0E84GKlFnbXXeuhtxlQ13/t40svnQobO3axM98Vnuch9QD6Jzxm9aN8UhhO?=
 =?us-ascii?Q?z2o/EzpjJjzC8zbM624vBLYHv0FQ47uncZsy/UC4sbie0lZDcJvObhY+9kOm?=
 =?us-ascii?Q?cwxkKHQIj0Gdcp6RjlRn+j/Un+nyMATDdpSgSzoLaUhjLM11x6qn6wdmgHbb?=
 =?us-ascii?Q?YaKiptmfg30iImk2rPZSVBM2hC7cvnz9CKRSeU7YzT9zV8W78IDavuqEwke2?=
 =?us-ascii?Q?wfXS9IJtbyhM5owrTf6pX3m3YsSTsIlHW69NDSHpyyLROu/VxLjY4ivgJC8g?=
 =?us-ascii?Q?u0JdY+lzPm2mEjy29j3nSVQdC581pTW/MtAeyHsui9yzrxENDouTCP7jRpS4?=
 =?us-ascii?Q?vW4r7WCXxSCtRREq6JLIC3qQmco06uVZjlI6q6nF6MTxUvvuctVCMa4hV/FF?=
 =?us-ascii?Q?aB2JpxI99lVZmjx+ei1445z9u6A9/XJhPdM+xHEah52NXcjuLPg56vlu0mDV?=
 =?us-ascii?Q?XHsaNG0kEQBlfqS6fHiXOF1vKcmLD4l0UvwkCL+ixirZ1hjnJtRkNcx0XUx1?=
 =?us-ascii?Q?Qm7JuHG6vZAYzyy2FVYNUBdnoMw5gv3IGjOmRmcbybeltesOKkpdHAXeDIcf?=
 =?us-ascii?Q?UCakkG0ZFLLO4x2dbsFLd0KyQypHkp67UVb+5KFMMqAvfpimFBUXY3/liwR6?=
 =?us-ascii?Q?7qlZ5/bYtMz3bFem+4idTl+rDQBEjbR6Ysi5kCGfJQ3KR1c2Jb/CkrhZDJLe?=
 =?us-ascii?Q?+ksazfOUgtSz0NDGoRt8+NjcDO5pkj82gy8A8i//M6AQOdZvORCo6tOzMrqd?=
 =?us-ascii?Q?G5zvS0Y+RK0eVFW1b3JrTMfpQ6qS1EHYoGLR2Rx+0qO4bH2U6LcOcSPzrryD?=
 =?us-ascii?Q?kXLiDkgDvY7M2iLlEZC/w1oWdi4YXtCKN0f3VERo63G07LnCgvOeMbmHywDD?=
 =?us-ascii?Q?Hnpga7H99nBvR3wxw1KU988vjkmVqAOSG4qaNVkhOXbCOtntx+4UVZvSEZYf?=
 =?us-ascii?Q?o0zxOVUPqZODoR3grKOBpE1CSLnS8r5VQAnhXnvpUyUukaGdWGMPgT2DyHiR?=
 =?us-ascii?Q?2C4CJ+HJr4NXlm9nqwSX8o0rMkwJQk2j1c3upPsXeVKYLa/qY5bXazCbzkAp?=
 =?us-ascii?Q?LwRKpu4JmiKLDBew2baXXuY8YEE8ktcEu0KIwX6PPI5UAd54joReMaV9aJB0?=
 =?us-ascii?Q?72iq3E9HgKzYjndR8tZSDK7QBm5AFVMbQdjc?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB11947.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014)(52116014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8CkUeDGr9u4EizsCugBPNsmJ7Y/1n+KEOT4pwhpc7GlLfY8X6wcbgvuaUArg?=
 =?us-ascii?Q?I5netlF8wqgP0begofI6AvW/AafLnZExRalPBqCMBjikC7QijKjtA6LhgY/7?=
 =?us-ascii?Q?Nag7h5SCw7CaUIYAHxe/6yhclg6YbOY4m4icQtZWBdtS6d1txjKMV7y28+Eb?=
 =?us-ascii?Q?UbkpypiFR+X7x61U8kbAAhfxTqTkpUUlZ9ZV66fpMt9qfSrXqialSGBh8ODq?=
 =?us-ascii?Q?F9cJn92eS9Eq9VVUQhxOxwQMch1SHjbGlVxQHeDs0B0Ujy0yARlZCnvOhXOr?=
 =?us-ascii?Q?AqIuL5z8UJ488TJj+Y7YulrIrPTcAh+PIzeP1ZI6wOZyaSgp8ZdMLRQDNSYW?=
 =?us-ascii?Q?GN9NCDAzWsJU4j7dcgrTHWr7086fxMJpuha6WWxRLJAPReC1OevJCUPwO/Ou?=
 =?us-ascii?Q?3iJ3UeF2ZfJ++v+bk6fFKdcxT9915f2U97g8YleIlIvM/35rdUGeUkoME5bj?=
 =?us-ascii?Q?UBtvoOvw2v4kLDW6xf13Caq61CGo+MfVUFijQbc53SZRfHKHRpsVcpHNxz5c?=
 =?us-ascii?Q?UdklWLBuJbmdAeF1s2kJ+uadWeJ/0F9vNh+hw5cZDcVC+GKlzN0OeaFO1pt4?=
 =?us-ascii?Q?VfPLxBydbJ0+LLeF46ghXo6BbZa4cWxl7Po6DKzvuX0rR2dscnhe3FrGUwgN?=
 =?us-ascii?Q?mZiByoy30wtAXLnuO9+p1Lf7kxqTCod0a3hY4inDUgkIPGu6kOuj3699wjJU?=
 =?us-ascii?Q?rGLQ2YoXwVxmZhQGO0qXxUhmLgTKqdgmHm/FyM0BR9slRzOHttDEecqthqVa?=
 =?us-ascii?Q?3p2Dvpn8g9JFjVI03oOOIPhqOp86Gw2SMD3Q6WSaFWvcUQz/ARp4aEEuw6Qg?=
 =?us-ascii?Q?0kafuGCXWmRUkwJHpZh2QC7pHWkrqXvJGjXL+mMJsf3Uj/2HgNxwLyQZPl5H?=
 =?us-ascii?Q?NrISo7GbiG25zeyQ6bMePzl9Af1DUr/S4h4yL/XIeHIuiQtZ+p/kS3aegLMt?=
 =?us-ascii?Q?KfZsGeB1joNFBFw7yayO06FSg5Of8iWddPsQQswXKSwH7H+ZLozlNCWjG+tJ?=
 =?us-ascii?Q?hDH+ioGgMBYWY0QlgzuiUrnZhF107ACVkrpazAneUOOm+5dv6zj6m1eZT3+W?=
 =?us-ascii?Q?qp1momJI6/g6nrer9+NIZmEfuzlLz7q+WYYP2Vt1C/C+5tdIBcWBFPRzzNAf?=
 =?us-ascii?Q?i2E8Y8m/spg1Ejr34WaYFdBuhtVQypW6i2ZrVMWL9yjPij8/OnsRGRhbhbKa?=
 =?us-ascii?Q?/ovIaqOSGC3BaLWudJ8nj/GaQTN3knDogD5xAi+x/3j0Mw4UYOVH1TLKRUQ1?=
 =?us-ascii?Q?w1aFXI5y7SYzLLVTRnN0aNOCDV2f963RFmwu8zrAwvcTsvbYkbYOI5guUOvn?=
 =?us-ascii?Q?+NXllXoETPuMGiZF7rmBBnB8rp7tSgtlFPpz5e5Aa/a/V0gmy4mRWu9KEX5X?=
 =?us-ascii?Q?s/7UWRjk9wPnDgGmUN8GqV0/vJs7422hheFCvou19jslqwzTxgSRAINeadRY?=
 =?us-ascii?Q?CYP2L4fK4jaKCAT7rYNPh1EOK3+HYQfaxWTqAzIptKZSltcQN3wVVhLZg0qV?=
 =?us-ascii?Q?FDlT6gT2TJtuYiVbdG5xVyH//4GHXu+t6WgRb2z0EaLSwruxYhbwoFiod3Zr?=
 =?us-ascii?Q?agCSK/99AOyye1C1PdLLOJHVrbBw+hKxbFvC78vKAPurQuCR+aiQoBWOB9XA?=
 =?us-ascii?Q?mOPok6QKVJIh0tyIEqFCGpQ=3D?=
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b53c1f71-dd2c-4de3-97e0-08de20521c44
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB11947.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2025 12:10:17.0249
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u7csfUvInh2oUkuB1fJN85FE682jJEO0ifwaiIhgnLN/84g8bmuwKtwiWqx6lcvu6Kz1/KrIFxf3icmH3V2OSG8OgcoO9Pj6p9Y/Y2bLXKUCUoDCSpNRkSDvnxRmybeG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSZPR01MB8436
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_041021_286284_5F1E6039 
X-CRM114-Status: GOOD (  10.17  )
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

Document the Renesas USBHS controller found on the Renesas RZ/G3E SoC.
The USBHS block on RZ/G3E is functionally identical to the one found
on the RZ/G2L family, so no driver changes are needed. The existing
"renesas,rzg2l-usbhs" fallback compatible will continue to be used for
handling this IP.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
---
v2->v3:
 - No changes

v1->v2:
 - Collected CDooley tag

 Documentation/devicetree/bindings/usb/renesas,usbhs.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/renesas,usbhs.yaml b/Documentation/devicetree/bindings/usb/renesas,usbhs.yaml
index 0b8b90dd1951..dc74e70f1b92 100644
--- a/Documentation/devicetree/bindings/usb/renesas,usbhs.yaml
+++ b/Documentation/devicetree/bindings/usb/renesas,usbhs.yaml
@@ -27,6 +27,7 @@ properties:
               - renesas,usbhs-r9a07g044 # RZ/G2{L,LC}
               - renesas,usbhs-r9a07g054 # RZ/V2L
               - renesas,usbhs-r9a08g045 # RZ/G3S
+              - renesas,usbhs-r9a09g047 # RZ/G3E
               - renesas,usbhs-r9a09g056 # RZ/V2N
               - renesas,usbhs-r9a09g057 # RZ/V2H(P)
           - const: renesas,rzg2l-usbhs
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
