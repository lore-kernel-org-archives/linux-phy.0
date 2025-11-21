Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95233CFC283
	for <linux-phy@archiver.kernel.org>; Fri, 21 Nov 2025 15:15:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TDM2hGWvzd6VRLPwyHPbPUEXgfsrPp8xBZ7HMnDF8NA=; b=XZkv7rJ7rD8wno
	CN8iM5aE0D/FlcdmVp7A1B9wO7VATpJueQB3iUt9L+wo2NTevmGJiawcIZ/TRDsj97RUAssoFe46h
	PuLLOQnZEBB+hS3U8lmDar0QRxaBmCQRt55zEksCPBqpICLknxPO09vaQA1lacQoMzHBfcFHEDqn7
	s/hbElVPxGtLBQWheUQ09jPL0UX3HMkhjmuYf3HeeMUf9CkIY5SfffViE0hCT8jdhWrpH8Mztm0OP
	iOqUwTVJ8VD554nAdr240VWYNc0pBNtk03TtudZvG6JmlwHgqRaDErwvclzztjYujlE5W5hMYV8PX
	GKlCujdKjrid5Mga9D4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMSqv-00000008bAd-1VxI;
	Fri, 21 Nov 2025 15:15:13 +0000
Received: from mail-japanwestazlp170110001.outbound.protection.outlook.com ([2a01:111:f403:c407::1] helo=OS0P286CU010.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMSqs-00000008b9f-2UNi
	for linux-phy@lists.infradead.org;
	Fri, 21 Nov 2025 15:15:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JE1/WQo14j5kNZkf/0Dz1SL1G+GGnWuc5FF0JP0zW0VrjMSqshB3X3cl+R/FMZ4qb+3dPFf32AW4bAem3zQLzFZ+LzENQOfllBV1MSL78VDvRkZSkbIrbKZ/DQxwbYvMBw0QHvKgQ9DIXQ1SQj7Ts/bGH4UtbSH37Iz3ge0VQwGwFMqV+XytjKf1lIl3jEaAQh3DYdSFNYQDVUF0Iy0lQBiZb9Q90o6wQJlRjNhV70OPD+P0PpbF1GqeT//DbSRHdCPIwmimeFC3WuoWv65rfK76m6DpmAWaO9N3yDIcUZtghsKl+ycgkhksCHIbMKTF2zlHz5m4V9gr+cIc92ZTrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8YhBPXsb87hu6yahDbIdrokowt4SkTvE6BmAponvMdQ=;
 b=ivEMpZfhek7t4fzAdW9VOGX1TixgmI/RTP6spfz+2KAlXCvDGRqad4J8KeELcYVtUF1PFX5AK0T/mzWCZnvXTenxVEeCLUbULmU7S2JsqRfKtGQEHdNfsn19xdusiAfpb6lpNUYPblwfdGqzPv13X5SnKIe//BYDt5DkjpD4o1YsdXFlgx44orumGd3sWZsMm+Yo5P6JRJbshijQmJ2c7ZwkkGQhtiEM+CCm07CioCbYylKXnu/3zt6EXWKvE8kyaay5V8eXBx0acB5hHXU+aVjoc4xCg3u2sTeD59yodUcuX9bW/wL/+LUcDN+ImzBnKt9zvD6oQxMRSu28rMIVLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8YhBPXsb87hu6yahDbIdrokowt4SkTvE6BmAponvMdQ=;
 b=USjZ/eQWVSs9oLAMwm1gSie5zTS6Ul3IO8gB9bDM4xaFlHgdQlyR/Sj9BfUOkjNQG9S21N9sUYorv4IvA27lCYWA6P9BTCRQcmqAHV+B5VeY59iPK8Ql/qieV8chfUOVUnugr/lzCEHdXnyGYScu9utd0p11xyw8Csvk7X+oTyk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
 by OS7PR01MB16954.jpnprd01.prod.outlook.com (2603:1096:604:41e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.11; Fri, 21 Nov
 2025 15:15:07 +0000
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::33f1:f7cd:46be:e4d8]) by TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::33f1:f7cd:46be:e4d8%5]) with mapi id 15.20.9343.011; Fri, 21 Nov 2025
 15:15:07 +0000
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
	linux-phy@lists.infradead.org
Subject: [PATCH v4 16/22] arm64: dts: renesas: r9a09g056: Add USB2.0 VBUS_SEL mux-controller support
Date: Fri, 21 Nov 2025 16:12:05 +0100
Message-ID: <37ad8139626308a761b72d70525c2d58a7272f7d.1763737324.git.tommaso.merciai.xr@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1763737324.git.tommaso.merciai.xr@bp.renesas.com>
References: <cover.1763737324.git.tommaso.merciai.xr@bp.renesas.com>
X-ClientProxiedBy: FRYP281CA0015.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::25)
 To TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB11947:EE_|OS7PR01MB16954:EE_
X-MS-Office365-Filtering-Correlation-Id: d02db8ef-13a3-4773-b88a-08de2910c16d
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|52116014|7416014|376014|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?zmhsZAiP7fgQaFEGyJI0NpBwhF4YphA57o9Kugw4wh/BzTuZSoG817yVi9/5?=
 =?us-ascii?Q?muthhKPqfMsxJCkd2v7FqzyHTVqU3/TJzCIwyc6S62Ee1CpLSxotayhMBT1p?=
 =?us-ascii?Q?yLJB0NXRFAf7UHFd2T1hmpZQ6WlavYr7H1ikyyRQvOR9Q2CBnK+ZBS6nQYAl?=
 =?us-ascii?Q?4YYYBbaXvOWkNHuWl/gJAw4zk2Nlr98z63RHIevOZdKbiRAQbzOCc02P1FJT?=
 =?us-ascii?Q?V+o6R+XuHC8LZx4RobHT7xZX9ZPUj8E58LWIbHXafnjoP/zG2FCpPDRgC5GD?=
 =?us-ascii?Q?HBuIOywnftN9QNtDDCutY0M0oZzsk9NQmpEg5N3SESctlEU/49myzl/vh9PR?=
 =?us-ascii?Q?755L8p+ZyM16x6EZgW3x4vg9d+8GFgTSLd8QJRYot7rduyT2IJ2a9pJI7ouA?=
 =?us-ascii?Q?fKXD7K/nkNgXpaK4SYCgL4HEGhONf+FcvHGI2v4wQlj2qh3A5iJjtfmx1y9d?=
 =?us-ascii?Q?BxpdGmp/a4n8AnddgKGDcix8wXHmJF/OlKAfqU3EfvrabdasWclNaDhLkwog?=
 =?us-ascii?Q?kUVkcZ7dxlskXtVxmdsZ9YemZ87uYDvOJ0IdyGUKUnat9g+mIp2iAtqIXCUK?=
 =?us-ascii?Q?BHDst8wih9bx+YC+R4fyVIy9APhQq6CSZMCR68ZLyjS3e5cWwuiiZ0dH9mrw?=
 =?us-ascii?Q?w/TgZ5zCP8vD4yqzh2R2YTo6m4ftSE7rRqhOij61HYJF3IFnbU5YOpx8tbYy?=
 =?us-ascii?Q?+mMcldgyDKGpgKunbywJQ7p+190P3XRxjKZOLSn2O7npbc0uVDvYZX9k2r0T?=
 =?us-ascii?Q?MZBSW58u3lRmm9kGunidjFhs1ydjHJB4gKdLZ479fT5GMBAQDZMeDm7rmhde?=
 =?us-ascii?Q?SdaBInJsKXHvcW9KrjQ700ntPdx211OUN8Bhk1nl6sqGXAcjgkYuZVZeDGiH?=
 =?us-ascii?Q?tLzhf9rs6CzSHJynarNx3bsgMhBysio5H50ArbgF4AlLdZYMsc1yTO00EW5C?=
 =?us-ascii?Q?HYAX64844Q9Eg6Cn+R0EmbyPXz3q9QJ3X1ElScIP/ZpdDluzMm3SBZmuEBzX?=
 =?us-ascii?Q?gGKzXuC0AOkugTGHBi13L+1FZv4GEVSKWKYRyPPE10gN6vaUYiIlFq1Uj4O9?=
 =?us-ascii?Q?mBcBNUFuZ0Z6lpb6rm4WsePHHtVq7ur1jd7hJULcu/4Dj7+rtQpBBI64fx76?=
 =?us-ascii?Q?S7Qu6bLvsB1+zz2EFsKw9U7UYpn0br2D3z2s5dwi7l22d+YUOsJmZ8TG7r9/?=
 =?us-ascii?Q?tSbWgWHr8Fz3kbqX/omgOM5xrAzxz++K1kWpLcPBkWBlMgA/dVoFvOEIwK/L?=
 =?us-ascii?Q?DgUAcfvW73NSotvA9RP4yAWN0v3Frgirof9fMJmRvkJzqcZ2R1x09jns13dC?=
 =?us-ascii?Q?MS75U9EZh8qcYf9mqUnUZIeqYqNl8LA+NR12K4d4MSSdqkQ8gBLFOgizVSrS?=
 =?us-ascii?Q?oAHN4CTkySQr6faV6uFSnQVpTBSJeR6hNqzePor8CK4TGJuoG+1sQnsP6Dic?=
 =?us-ascii?Q?6dl/VmAWo5+qbX68ObLev1MAbKPRqZK4GRIwkuKVXi3OFvCybNvbDwJa2a6G?=
 =?us-ascii?Q?UdpszqkEk+mzfF726SzDYPJzPr4H62oLD/m1?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB11947.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(52116014)(7416014)(376014)(1800799024)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DacGEheEDRg+k20cjumqhvyWds5XF+dyR7CVyUl4qsnuvlRZjYqfys2BSI8T?=
 =?us-ascii?Q?k4ZUVr28PorX48RaslgTkZ2pL+iHrPVvh1jhiuRAVw41ZU9uhCKq6KiXiJiV?=
 =?us-ascii?Q?U+ccmBRM91IHTpiIOfhjVeJccN2yJFEBfxD65l8OQsKz4UfWoCF5+KX5IAqK?=
 =?us-ascii?Q?/Uga6iQrRJf+5KTBMIhP4OVXRJyiYBABhBhXKIFr4ojjcwdbl8O2R1wJN7tR?=
 =?us-ascii?Q?nAVqpJvHjJ2AGzs8Nz69PkPuC47gss2Pd9tdzu38aY+t1VQEnSlkZzWEjXuT?=
 =?us-ascii?Q?2qUO6bCIT1M3LMC4xEkrc4DSRkGqo+3eg3XmqjsATx4oGQR8sooRuJ+TtQfS?=
 =?us-ascii?Q?Zr1Rofb7TvVw9w+N/FNBeVm7Dcv+o8aLM89RtRODL+2Mn0/NsW2ubiyZ7pET?=
 =?us-ascii?Q?F7Ld89WoGMoOM2yeF+uZURICSpZVNgQJuFsWv7FoCVATPmgYdPGukEW6/NUo?=
 =?us-ascii?Q?OdFnNHB65mEm/KM+H7BEvReneWmveP/i8ix3rTF1LlYLfLdw1m0vFuTMVfgf?=
 =?us-ascii?Q?nlTTx23GfXugp1NhRWyVMmVC0XRfFxfA+WAXIYovzg0cQV2XxVF2SK1N5BnN?=
 =?us-ascii?Q?tLMMmmHxpkc01Pwza2beNFEQqsU6ZF6Ey5YEmC7B/t0oc3B/7sK9bs60wRYv?=
 =?us-ascii?Q?PHs8h3JDMTbg70UVQf1Lgr0rEY3JrS7RgDiyqFXiM7FdTlT06IYCdXPJ4cTN?=
 =?us-ascii?Q?M9aqWLb8q20hSsKxTSe+lBY8Pl06ClqKyuPMTyzBGyKE7Wz5/26vZu2KBWm+?=
 =?us-ascii?Q?eH7JxB5FP1xnlroRgEW8IunjLmGRoJYbZnhO6jVs8Oozc3qTZlPTQfj2IkcA?=
 =?us-ascii?Q?yBzt91zeR0QAFq8M4SXiteHZcpspLGgQXqRALA9TbX32YXSsnHI19lfgVUTi?=
 =?us-ascii?Q?NXempmNnA8A4h9tr7L6Ui8X7ZmWO13VFAqHOqo7FB6HADaYe9qXgykDPXkha?=
 =?us-ascii?Q?yZqmaAhEy/oQ25qQKQ4zX77FgcVeQ6WSnQE5orc2i5JV3qHfkG0HE3JzDlm7?=
 =?us-ascii?Q?0aX1JRZuRPD3ikdX11ITRJEUK6WWmQqEZZeXmh+LaSJzpjnXsOUgUgkmdww4?=
 =?us-ascii?Q?IsZxYVL7kOICyClztyra3lS3kcZBm9+V6rKjFxhqo3hCkdFcIzZpsfzZHFJy?=
 =?us-ascii?Q?zVHo90SMuCJE+Y5yIZK9efMQTe+xw3nq/AJoA3F2QUISo+Jah3DAhMJ+gLEz?=
 =?us-ascii?Q?LoDNwq35CqXyic4AM2IhIDQbxqetWwBZQAaLzjRfftI3FfUpL4OECg5ixcBg?=
 =?us-ascii?Q?6Xn5OGHga5S1b+Dt/lgebBKtafO2UP3QlNhV8NHrOIOVaDbPywsNA/HP5gQa?=
 =?us-ascii?Q?kpIPE1Xq7dVLGyoZSxSeWNcKZWaXnC2s03he7MnNy8mcouALiMFPt2lD9DRO?=
 =?us-ascii?Q?y2jggvGPmFGdRreYp6sAgxtCQbPRTx7vOKp1uL3ZoQSg9NlTYK6grgzPj4t0?=
 =?us-ascii?Q?dTS3aXtbV5+MWIRhNiJHS78Xfed0Ung4qGHHLIHdb7U9Z0tc6CHuTLrX0ALr?=
 =?us-ascii?Q?w3VYutHLNSbbKOoQfp9nNfmN6fMZCVFjkaTwfjX2degOG1Gg3PtAjY0cjijn?=
 =?us-ascii?Q?OV61z5khx2nmqf4S+voPo1h0kHWKt7ILuUKeIkU3yfdiKBPcZvr0YfkiUnpO?=
 =?us-ascii?Q?CyXBeweTKLWJs6rMQUQv8HE=3D?=
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d02db8ef-13a3-4773-b88a-08de2910c16d
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB11947.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2025 15:15:07.8240
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jB78YMgnEKtJ/SY6Q3KCk0eQfd+D+eGzO8iU4UyIIJrrG9O6DA1MiWlOIdU34zPrJNtMXaMb9UYZVRkNOiYRGldvMAQD614d8UHuuYHX/x7xc70mdh6upxQbpx37hZZr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS7PR01MB16954
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251121_071510_642976_E2EB95E9 
X-CRM114-Status: UNSURE (   9.41  )
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

Enable control of USB2.0 VBUSEN via the VBUS_SEL bit in the VBENCTL
register. According to the RZ/V2N SoC hardware manual, OTG channel
require VBUS_SEL set.

Add `#mux-state-cells` to the usb20phyrst reset node to expose
them as mux controllers.

Set the required mux-states in usb2_phy0 (OTG: state 1) node.

This enables proper VBUSEN management for OTG channel.

Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
---
v3->v4:
 - Switch back to v2 implementation.
 - Improve commit body.

v2->v3:
 - No changes

v1->v2:
 - No changes

 arch/arm64/boot/dts/renesas/r9a09g056.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
index 8781c2fa7313..fd2b72caeceb 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
@@ -663,6 +663,7 @@ usb2_phy0: usb-phy@15800200 {
 			resets = <&usb20phyrst>;
 			#phy-cells = <1>;
 			power-domains = <&cpg>;
+			mux-states = <&usb20phyrst 1>;
 			status = "disabled";
 		};
 
@@ -691,6 +692,7 @@ usb20phyrst: usb20phy-reset@15830000 {
 			resets = <&cpg 0xaf>;
 			power-domains = <&cpg>;
 			#reset-cells = <0>;
+			#mux-state-cells = <1>;
 			status = "disabled";
 		};
 
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
