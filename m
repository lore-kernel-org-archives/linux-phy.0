Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E9F5CFD2F6
	for <linux-phy@archiver.kernel.org>; Thu, 27 Nov 2025 11:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Es73ksDRgvNRdRNjtMzGTp7jGbm7bLx8uEaJxLpsdF0=; b=tMDD4k9S6EBxSQ
	B/xhT6MT21dFuZ973oNQ8nQ4/fCzYXURWwUrddYPejYwRJ8sW3FF+YuMVqqzFWqvLs50F49Fyh6To
	Zk8A/6Qw7MZ9xmzbGGQUpXdPvlLnI/ch8F+qEt1Hx2Xf5TSjooim/ghMaF9t18YcHa5hZGXqsFJ0s
	8boGQuCMFhk9b42hjfSswEOaBWCGsFnTwLd54L+s2pKbT9Mr23xAV4NjS19W0cJvuTPJJ2l5GJbNC
	gUKNz3agX7xTfjhK6twJhY2T/U419xlsLovALjIEyYZ91BO3ZmEd+8YLsuhbuezhX8PdKyoQf526c
	qjoKNy0+AXIUx6Kp51Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOaVd-0000000GUgD-3rvY;
	Thu, 27 Nov 2025 11:50:01 +0000
Received: from mail-japanwestazon11010055.outbound.protection.outlook.com ([52.101.228.55] helo=OS0P286CU011.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOaVb-0000000GUeo-3VWG
	for linux-phy@lists.infradead.org;
	Thu, 27 Nov 2025 11:50:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BIuiDGw+GWd38NkLsV3mTX5VoLzZubz6GWp9+dGMEmsQbWsl/eb07gL697mkvd+u/TMrO0V+esl9C0LTwketibO/cRk4rymWbG34V2Y+jQOaAzab9dD/WLM5wJSD2Phjb7qPbYhOLEaPZoya5ju+qwcIDDiO2AwzQ3WD5ZTYeRb5V/u5AkTEiHQTGHOOsm/YcjaiV1w8tcykNV7qU1++PIf+b6Q/NvwK0YD5C97MVWEYyeprdy1xD04qsxJCPF1zOOjPdfULA4TM+SNcz6sVtsWHYLj14L3D6BST7h0oxcrcESM/q13NR+wtGs07zgBtGM7bhAaitVD4uXf4r7rPxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jg2CWsOqPYhxCUSU5Ss/b3R4csWqOOklDoDbbUCv3LY=;
 b=KU4gMY6dLjHIdERVSDCoeJaySLtsu5pn6dy0J5/1o4lcRJQ1XECcJiY+Fx0or3BkFDAUltncpleHm1dEWazeChfQX+Tq6N3aYoj/UWWrXdyrI0r+k825BXuNEFeILE8TlirLrUNx8iA77gm0YLuJ5yWQTI4vOjWmea8TWDnXH+c00QP7WSxKsBfSD49C+qnHvjMHyAAkMNzuJg0SF/VazqrX5Q8rqEDzuRfP72aJQc2nkMb4iYggwa6Y6J0qV0YaM0JeFiOINVc7zKDvH0l97xO7177SevNthorgudZT+/rTRtbts+ZB6qQidvrTP0FuYy/fYbpi/5IlvsC6FiabIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jg2CWsOqPYhxCUSU5Ss/b3R4csWqOOklDoDbbUCv3LY=;
 b=iwfLzrANlvpGOybaJBDEDdFjMLzHcINhHjCSgdEEdHG7+YRPE/iBxNnkWovXSmN2OnGDpg9vFm5QYIJKJfmrfkVdBhzDfiC2QGw1Z18VyFV8Ae/qXFaeGm6uGcOHVt2oYo/HW0/tZYwf1cEkl8hqVzErzb5QTSdGdM64qKJLGyI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
 by OSZPR01MB9632.jpnprd01.prod.outlook.com (2603:1096:604:1d7::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.14; Thu, 27 Nov
 2025 11:49:54 +0000
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::33f1:f7cd:46be:e4d8]) by TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::33f1:f7cd:46be:e4d8%5]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 11:49:54 +0000
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
	Guenter Roeck <linux@roeck-us.net>,
	Mark Brown <broonie@kernel.org>,
	Jonathan Cameron <jonathan.cameron@huawei.com>,
	Georgi Djakov <djakov@kernel.org>,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v5 03/22] phy: renesas: rcar-gen3-usb2: Factor out VBUS control logic
Date: Thu, 27 Nov 2025 12:48:30 +0100
Message-ID: <808ee9faa0fc6d92aee2db68b090d5a76b54e56e.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
References: <cover.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
X-ClientProxiedBy: FR0P281CA0187.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ab::17) To TYCPR01MB11947.jpnprd01.prod.outlook.com
 (2603:1096:400:3e1::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB11947:EE_|OSZPR01MB9632:EE_
X-MS-Office365-Filtering-Correlation-Id: de066a05-3262-4903-b86a-08de2dab147e
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?O6XGhKj1J0olr6kDUcjXDP8pwfE7XWImL5SaWq74LK2q5bZCWkMtYC6Atrkp?=
 =?us-ascii?Q?dMVBuH6QCcNXTryy6EouLDg8MJgZo1+GSwRd4vRtlUCfvQbTiU8FPLDknr32?=
 =?us-ascii?Q?mRIfwn35SMZH4ne6qvK0YaaNHw2P+lHfHOJ10DL2DtocdRV0hMtga8znKnzk?=
 =?us-ascii?Q?dOBb6BiOnxsHHqLNglorXSLVnzQXp6uym0IfVjIzo2Q2t20tXOkxEYVmR5Uh?=
 =?us-ascii?Q?PfeJzpmgW3ee6U1mTfudHUDP9UNz/rgDNp6Met42VwsYHQgy4CYKId5NHgyd?=
 =?us-ascii?Q?i+ie4fq5ZBPXyIWAfdSO2dz685F9tKMpgmv8SviqVDHkO9r4518xtYm/NfE+?=
 =?us-ascii?Q?o9hjRTnJtBxqMEGL9QfCt66Cj19xlJ5wVMKBOIDAjEk9DZkd/exjgOmEg9mC?=
 =?us-ascii?Q?3zQsIHej6wpvylcBekcC/AorsPKIjBhRy50L8D0eI/kld28SiMeAxV2jy7Y9?=
 =?us-ascii?Q?t9z0hNn9r1qO2LBEHICe32Qsfv41/frvOh6BSLyniI2qNctnJfaSxxpuLuOZ?=
 =?us-ascii?Q?421t+qtyRtADT1vW6uocxrO9yJjE0hDzaCMUJClDehlqOew98ybyfyEok/l6?=
 =?us-ascii?Q?oUfT2LTA/1lQy9oKztLrV6OpiFSzq9IAJyuvQ8AAv2rq+fngj6YDPveP6LMO?=
 =?us-ascii?Q?3zz0HZ5jQlLYSJS5W2m3/uusa6eHzXL3yfqVtSi9+w9l1qqosDs7tVczuXYv?=
 =?us-ascii?Q?cdlW1jloKNvh971SkhZuP+T69RudrY/Bh68Sa8JRPQiRse2yzVpd3kXDDRVW?=
 =?us-ascii?Q?CloweBFajXitQOsw4BWc3N/V2LImlCJ9LAU0ggsPSkCqGqZfWpztCc5dkeI/?=
 =?us-ascii?Q?wfEnmJ6+YGhPXZgdWAFzVXK0w04UTWGD6n4JXYSYteiNHjkK5Q6gFATqEiCl?=
 =?us-ascii?Q?d430Ao/aytj1GuIiNjF0MY25vS+6w6wKyFpRnoycCP4Gj6sixNooseXiHOs1?=
 =?us-ascii?Q?7Nvc5dlbmFe4ws6KrTMqrUpmlf0arRO+Wc1HCtHGHKWPv07eNDsyA758d/8q?=
 =?us-ascii?Q?BAhyODZH5ENTnxPga5o5IWEVLj6dl+ZBcc8Vrr8vENbocQRX3285V3jW7Isg?=
 =?us-ascii?Q?iHGDD2LeYzY1nzAeEqZ/C2w5zDOfM8pDN+7y1db/tPiJMXuEbMijacff0B6U?=
 =?us-ascii?Q?hhbdRLWUOsLcdKjnI6hk+71wTJp7PqvQQFYUHiD3cPA3co65oT1gomMdAhQs?=
 =?us-ascii?Q?15l0KhSjwZwaOrTwW5+KbDLq6ps69AgIEDmk0XZM5o/YHPA0gsv7Az/Cer80?=
 =?us-ascii?Q?yYlJlAtGZCiMptjch5YOTsyht5+CDK/bu0O1R9wDwFMc0juWDO71z8SQNFMx?=
 =?us-ascii?Q?m4+IjT1fkof938m6IeGs6GexmBZBsuZqplOB57RrUQBkVpCGTg5LUGplMCu2?=
 =?us-ascii?Q?TeGuMS901StbrvukS6qiJuja26wjYphzmyXmho7rG3/lv9y8er7edcxepbOr?=
 =?us-ascii?Q?9JtPOE9NdSUyAnKZ34pXNzMW5UYcZ6lPpwWiBnxaMSMJoerX1E4tfTieeIPm?=
 =?us-ascii?Q?pmI/1NYrUUsaEdJnIQML2MsbNXuaRiOUSxF7?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB11947.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014)(52116014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4Bk304NimSjjFCPUqD8fzzCaffD+6eUnol/5nLIjwKPtTYX2/j/mJW/h9Mr7?=
 =?us-ascii?Q?z6mB2nUTN4CIVON9CLZ9b+VmTc81KyIfJZ7REytLVMg1c61T7trR0U///uyw?=
 =?us-ascii?Q?7+gxn2kW1n25xzy+mP6Jsbt5rD9YKGZkNeM5iWllC0H+65OhCG2XvkNQ6ODp?=
 =?us-ascii?Q?kGirJtWGC3CDFanJ1IFdyP3be2Rv9vvVd1yB4TBtwMZUkm+qwpW75U/Dh9Si?=
 =?us-ascii?Q?7nGdTms9JjrLt/Sgzo7j9mzuI9iKEYYArIeEVN/sU22x3rfGTlr3nFjkdraZ?=
 =?us-ascii?Q?0rz5rf2DsupT/KMuTGXQKLEaE/fNHZ7724zr4FdEQDuCzxVAv00RE/3XJL2H?=
 =?us-ascii?Q?CHwu4eVCHJuxElq0NiB/OvtTDV/EHbZwy5QwLPmi4ibwrO1xja6Qmm2VH1iV?=
 =?us-ascii?Q?pjgoKoMjuJFgc5EBiRq/BT9mJkf4WL1yAQ7ZcLJV02GlAMsSAnanYemN8RYT?=
 =?us-ascii?Q?o/U60veOakOiMOijPMat2Pp4fT0lZfuMcunhdpB0OLIQv3idWfYDEX3MDAiI?=
 =?us-ascii?Q?5rph5EDtFbV6P/ffn7WYeEjZLrj5B3XiGSFazITzwaM1tB1Zf9CQdLdUTozx?=
 =?us-ascii?Q?aQBeA8KSdrpCKpDLdcwLS9skyMb5t8FTjvuLx6b4hwkt8kjJWFJtxscdrbPv?=
 =?us-ascii?Q?SyIxa+zl3oceuUHr8XCr6KK10YXeiLviDE9ieX3Y+FNVRy4dXXZKAQeaxxwb?=
 =?us-ascii?Q?NJokXm/wKVKFacsdidMbp78P6o8b9iBxnRxuGwkLbuKvicBOgNgxrU5jN6Eu?=
 =?us-ascii?Q?rksLoAYek/BbA2hwvtrSZo7UCSQJBCYzbnLaNUHjX4Vg1Edk8aDd42AufMtb?=
 =?us-ascii?Q?JFMqNkBxgDgZWzHR4M9SROeSXQQrPqYRvRqHisQAremjHkHghLxe/rmNr7PD?=
 =?us-ascii?Q?iDqQqHr5OzIYPOFl9bVhDQQc+BeAdVsa1qOOqyNRan98NinYWZHI0ZqkUolF?=
 =?us-ascii?Q?Xk73vkMlwaTRSyw8OwEjn2hVOFPxOtbYOvsOEP2DQhBAtI9VWvZZxqpb3sgD?=
 =?us-ascii?Q?8/O1f+mk+HLPLFQtYop5DPuFgbvti/Hg5SA4sQHsu1ql4+SkQsXzs3V7Ar89?=
 =?us-ascii?Q?dAbt+Ai/F3Zi9wYPoqYNxP75J9sPmQvIzREQgzkL6hbEapBM0zLOdCSgqrmk?=
 =?us-ascii?Q?u3HmQa0TGLQIJNt0jEft4zoz5bPRTH7o6BVYNf58syGgEQngbkkbLOgX+wkf?=
 =?us-ascii?Q?Wp+eMApna+++tRlnQnKQmv72Kggx2hLQlwAeo8Jand67rKM2Gh7LHG//RHG3?=
 =?us-ascii?Q?dhjATxyEEJPraLYqOpafRhktdcopsTLc6+b9wMZQG4bVhgyy3rg20TOco+hl?=
 =?us-ascii?Q?+FrQ7aArB5J2qJkqkNrrEEJdsdB5hfRoyQx1ynaBcn4B3ESFTLMee2rXbcoj?=
 =?us-ascii?Q?p5f+HKz9FTCw35vdnNrsnJGwQdIlflRuf1aNZtZ1dbfnMTSzK6X65bliYQVi?=
 =?us-ascii?Q?BiQV9UB6FoU5Rq4w/U2L5Nto4fmIBkJkF48sNU1Ya7njscPxfhnI+eH5PdKU?=
 =?us-ascii?Q?AM7o/2q7SF/C3Hl9PM5eeUbYf+mdOc281PCQkoZgRHgDZkRrgndAk1ioVM/c?=
 =?us-ascii?Q?h/C+/R6Wje0Pakp3YggoTVlDfrQp6kjxAS+sdLL+7guiQZApHFbTp3GDjmlv?=
 =?us-ascii?Q?xNpxipKBzDgKg5mc5J51lDk=3D?=
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de066a05-3262-4903-b86a-08de2dab147e
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB11947.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 11:49:54.2920
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 93FBdldVqAXv2g+Oc1NrvtwEh4m540WfVH5Xk58/W83JycdttVRJvsUSMqQtVXXjCuAm1+Su+2O/yqbuavHThNkErd5dtqX5otB9yquy9fKLkSHp1mpkQsYZ+NZ0gUUG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSZPR01MB9632
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_034959_877587_DA3F2D83 
X-CRM114-Status: GOOD (  10.90  )
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

Refactor the VBUS control logic into a new helper function to improve
code clarity and reduce duplication. This makes it easier to handle
different VBUS control register cases and aids future maintenance.

Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
---
v4->v5:
 - No changes

v3->v4:
 - No changes

v2->v3:
 - No changes

v1->v2:
 - No changes

 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 34 +++++++++++++++---------
 1 file changed, 22 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 41e0c818ae34..94a4521d7187 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -204,28 +204,38 @@ static void rcar_gen3_set_linectrl(struct rcar_gen3_chan *ch, int dp, int dm)
 	writel(val, usb2_base + USB2_LINECTRL1);
 }
 
-static void rcar_gen3_enable_vbus_ctrl(struct rcar_gen3_chan *ch, int vbus)
+static void rcar_gen3_phy_usb2_set_vbus(struct rcar_gen3_chan *ch,
+					u32 vbus_ctrl_reg,
+					u32 vbus_ctrl_val,
+					bool enable)
 {
 	void __iomem *usb2_base = ch->base;
-	u32 vbus_ctrl_reg = USB2_ADPCTRL;
-	u32 vbus_ctrl_val = USB2_ADPCTRL_DRVVBUS;
 	u32 val;
 
+	val = readl(usb2_base + vbus_ctrl_reg);
+	if (enable)
+		val |= vbus_ctrl_val;
+	else
+		val &= ~vbus_ctrl_val;
+	writel(val, usb2_base + vbus_ctrl_reg);
+
+	dev_vdbg(ch->dev, "%s: reg=0x%08x, val=%08x, enable=%d\n",
+		 __func__, vbus_ctrl_reg, val, enable);
+}
+
+static void rcar_gen3_enable_vbus_ctrl(struct rcar_gen3_chan *ch, int vbus)
+{
 	if (ch->phy_data->no_adp_ctrl || ch->phy_data->vblvl_ctrl) {
 		if (ch->vbus)
 			regulator_hardware_enable(ch->vbus, vbus);
 
-		vbus_ctrl_reg = USB2_VBCTRL;
-		vbus_ctrl_val = USB2_VBCTRL_VBOUT;
+		rcar_gen3_phy_usb2_set_vbus(ch, USB2_VBCTRL,
+					    USB2_VBCTRL_VBOUT, vbus);
+		return;
 	}
 
-	val = readl(usb2_base + vbus_ctrl_reg);
-	if (vbus)
-		val |= vbus_ctrl_val;
-	else
-		val &= ~vbus_ctrl_val;
-	dev_vdbg(ch->dev, "%s: %08x, %d\n", __func__, val, vbus);
-	writel(val, usb2_base + vbus_ctrl_reg);
+	rcar_gen3_phy_usb2_set_vbus(ch, USB2_ADPCTRL,
+				    USB2_ADPCTRL_DRVVBUS, vbus);
 }
 
 static void rcar_gen3_control_otg_irq(struct rcar_gen3_chan *ch, int enable)
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
