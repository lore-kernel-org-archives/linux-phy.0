Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEE5CFD8FCB
	for <linux-phy@archiver.kernel.org>; Thu, 26 Feb 2026 15:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vVmS05ERU6L3Mh22I0attK/DcUh8ouizFhpVMKCTa3Q=; b=yMv5brSabkUEwS
	qw1Ejjoq8KFjs2fflnHHlG6KlbNJiYjufs+jC87Qucwjk4F5L+D521su1ajJESuTxWK33GWWtu4/g
	j4Y3X5Gln91++GUgrMcpEotVoMHIDR7PKWcMkVuZeQSYIZQjbOHbb62s8Q1npG5GAA86vl+Wt/kp5
	WKVpAOyWgQdJMx1vhf3upnH96fNS+FU7iFNd8eX5sj+xHD3lS8Kt4q6lp3I+O2PAkPNNZANdEGcnX
	9Q7b77tKVV6/C9OeLNPUUIskJ9XOJTTUwaz+bg/+kKTACcpEoqu1NPhlIJzkv2gZHUAsCIerAAsZw
	zrj1m5f28VPUXEaYtNUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvdMx-00000006WEv-0xnn;
	Thu, 26 Feb 2026 15:33:39 +0000
Received: from mail-northeuropeazon11012032.outbound.protection.outlook.com ([52.101.66.32] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvdMv-00000006WEL-04OJ
	for linux-phy@lists.infradead.org;
	Thu, 26 Feb 2026 15:33:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KKXFbdtdEdI0OAAwS8mwkwbN/81rWpSpHzpIzh2UnzjEPl/QOcmmgSjvlNWp35rrlNqGxPAtQwIKEy/471CwAZozUYJPHaTPzj/K3qxEoWGDtk3kK65o+RV8uuKT9Uza3GKBxoic0M0SbKb/FC153rCIQFKfsm14/zuTji5NXdmrh670Hw6XI7LT+rlUjpj4XtsDpS4a9jzFvCg9l0p/PM0XIjlKTPg/hPSeHpqmA374kmlpoS7BjhI9hIDprBmh6V42WGQx2qZMHcZ/f3s1zcBuVV3fgmnTIcjiDLqBThb6RxDkDRkJDX4lmQjNS9CAFhtK7wrfiOOrkyKsXHBNVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g8k/kM4TMdu33X7sPFRbiFMjPv283eSpxh3H7EP+1hA=;
 b=QrgYwfu/Ibu4iZmUQGFvJ/VyIccOUdVmY9WytxsidO7xukyGtuGiHQkqxcypL4v/OlZXg/jq6VTKCd9IgCb6mD8K/KwA2ppDrBfvfH5fQQ/eM/LI02h1AS9CBq5zFIhOoD6Z3egYUFE4HyU/JS+W87yP30aK2e5e25dZwKUQmjzBftonfDSq8rGDnpPD4mxOxChWsOKE/MfQD4fUy/3/LCM6twjz88EAWlUM6NG7mhLNCvoGRfxWJl7sS//XB+fmW1FjljIUao2z96gYncfMsGt2/RcmgZ2Fmvfu3um7vVF7nH094lIJEB88W3wbgvD9v/WBzbsbfdrxfUgaH1G5yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g8k/kM4TMdu33X7sPFRbiFMjPv283eSpxh3H7EP+1hA=;
 b=QWj7uqQ89sMKvGpk+dkw4cGb9NK2DhEhy5sgTLvqWTK2oPutoqlmRkQyvTsALRT1vCHWjJ+WhsvHfxKErRpuGMuubMYWPYIcw/8TeZuIlXNGxJ1xH+aXpZGtCwXJOMDVTvAJhHEEGhxZ7UKyA8zSKyScIUvT30H9hbrYCXSSRuBwSa/dzcv7TWwNg6flUDY2JwT9lT0VwqfW7OpTwOWtOVr3lxVa0TFWOdhJu6jnvoIQ34b/eDcq/s+l1rCpopzHXt+jNM0tl75fHMS/Il8AaAEijKze8XXF7nog6XKOzf7pgdnI0g69mNK2vCH1BUa7CvVlHq7OHFrdHYPTl0ro1A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by PAXPR04MB8157.eurprd04.prod.outlook.com (2603:10a6:102:1cf::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.16; Thu, 26 Feb
 2026 15:33:32 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::f010:fca8:7ef:62f4]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::f010:fca8:7ef:62f4%4]) with mapi id 15.20.9632.017; Thu, 26 Feb 2026
 15:33:32 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Vladimir Oltean <vladimir.oltean@nxp.com>,
	=?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH phy-fixes] phy: make PHY_COMMON_PROPS Kconfig symbol conditionally user-selectable
Date: Thu, 26 Feb 2026 17:33:15 +0200
Message-ID: <20260226153315.3530378-1-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.43.0
X-ClientProxiedBy: VI1PR0102CA0012.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::25) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|PAXPR04MB8157:EE_
X-MS-Office365-Filtering-Correlation-Id: 08a35e22-2db2-4934-f9a4-08de754c65d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|10070799003|19092799006|52116014|376014|1800799024;
X-Microsoft-Antispam-Message-Info: vz0kNrurqv1WKqtJpmUV51ZZ98/CdXAOSUm3lgQj8j+sSVRzu3j3HuED7+caX3u3L9REy8L97gr0/kXxKVOqd16w64WniU74t1iZfPlvhnf2E7pZWPb+pOsg7BTtRN89iSj/7GMaGwA/vUS2JRVuIxtkMnO4UXOCeDbezgpfuDN1U280zThY5rzU/6gVBqWgwCIdeVQ4dfH0FuAwddGEbiG3rbekfTVTWbi4OpmxkPDOvqQUn+yxAOPGjR2TsYaplC0gtNjpY14kYOHrL5awRkViFnjaBhlL2MkJ+sci3KUqE7bJPDa6UJU4wIqTpssqPPCVpXMwF8uoMbjgC3VOQyje+6AuB/peqNKrMHEPVnCN7j6t5K+07wTFuKatu5A0GqjTKFN3BxU7nPMaq/hReQ8dXoRx16diDDbRxqzURkE4Y9M0bo0Gv4BVf0+trv9Lba8D9vNK51IT3kJrXP+8AB294pps+e0S3Y80hQ8FcugiysbIq6a3Vu7DqJ+1muQCZrMjC80CNHJwZn8MX5atbygcC8U8dWv/XgGVf0+pcdg2JxT9co0xchOH/zXyG0a21u/Tl6owkRdjcAIuoZyHhZP6+MsxxwPVlT/DUXUN9HwhKmO7FtZbtlgXK+qo5XhIku6KqfJS7T2i8z0MbiPXoH59ti7XGSfzZ0rIbPBx4f8okMejUa4GZ0kF+KRrhzvn
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(10070799003)(19092799006)(52116014)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WaQReezzEUPdEUHtx+EmzAPw5wbQH3L96RGe7K/07tpTqWjX6GV9KEe/TAhF?=
 =?us-ascii?Q?bioUbMvgKuXmvf4ZFwZHnvbaNGqFPmKfKL5wOia8dW7R2K2W0n35BdZmLI3r?=
 =?us-ascii?Q?ca4v9krzBJaDA23EYtsjjpKZFewkTKTqstfeTIt78kVCnioXLh/9QMWcbwsD?=
 =?us-ascii?Q?Ljf8GiAs6vVg+cEzCBgXDhnHOERMPuqfF3XqZQC3gszjDwdUZv+n6xbloZbB?=
 =?us-ascii?Q?fNlFZDhoemFiXkwryy3vdBaUaM5TOEcAqyZM3E/Kgs6vi6kPMMZq/SSS2LAl?=
 =?us-ascii?Q?iUKuBqpfz5Sfx6fclbYMT6efd0iAyqVSkcTfDzi8OXlt58IiNZTYNFBRv8dH?=
 =?us-ascii?Q?3DFLtriQNSaPZqF/6JTiO982Q2aQaR4UFLsjhuYQnCSx8W1QJ9/Dvm0vjqsP?=
 =?us-ascii?Q?8I8Hf4u171GKQFO6Wxm2KzpMeT/GNbzku+Cpd2yilr/FwKpY+ljaZ4YOcLZc?=
 =?us-ascii?Q?0c0sZh5503heRVHnJlTXvt7qo7X4btdVO8eEKjBfs6YslQbpOz/k7uqjPwDD?=
 =?us-ascii?Q?VJN1XRDHbfnYof5yAt7q5RxjT/sTUwOM/cvFSsNIP1hMqDqVilMDhUsAqHgf?=
 =?us-ascii?Q?TWEeP7kN83SRqnbFvURDuK6ewkDUig7mQp8gI7QO6/NCWKON4KxNt7BBdMEO?=
 =?us-ascii?Q?/RNNED34PWiBUVO15X8/46fnmbnroWZSXyGQKj19ybSL39P4VhUaXqz/yiru?=
 =?us-ascii?Q?jMyFGRvVgCoWvng20MwkTqzVqkjVQ4IKh/xcxp9QFPSUO2mQWm60u/b2y7Ju?=
 =?us-ascii?Q?C6Rwv7B1FV7f2UxIR86+E0PUjE9RGEgRrWn1TGNRhzWK+rI8D3hEGOvbehzX?=
 =?us-ascii?Q?GscYJKqzhOCW++MyiEmBmLMw66CO39g8ERJHbPS/RF9LTfHSxNX38xGG4qZu?=
 =?us-ascii?Q?SaXwSVK/kdOMjI/G+KcfrFPzn7LtCuUQe9mRoxXNj1RebfF6hqw2k2TGP741?=
 =?us-ascii?Q?o9hsstvGgGhaVvxVfIu6AwTvUb/mj15g39Av7cmi3m60tZ+L0y0SBxZ1WZOh?=
 =?us-ascii?Q?r0T7Rg7J0LwJZzzNxy0UUahJcbYVfR2wXCxhnRdhjGdrEsyPeEzRXvlLMSPH?=
 =?us-ascii?Q?ZWvBCk7SQ3MGYCbpo/7EtvWTCgEh4Z2Vs4PFI+FU+aY/vxRwiV4gAA5HNw8r?=
 =?us-ascii?Q?U4UqgQk/V0fFcsi/RPMyABAGLHrlP8FVx1sj1KGPB70JUSgu5zMlcqD+dfHG?=
 =?us-ascii?Q?unKmpfUl91NDfgoiBaqTWa6C5bJf2r8zz/+FxoRKKw8CIMnYO9R7yypnazEb?=
 =?us-ascii?Q?Zf8FJnPW3E/VzQw7PDKj18sJ7s7J+lUDKKYMSYxfP220FKYGiTmmna1m5/1a?=
 =?us-ascii?Q?wGs5Zb21DcUDeC1qY/4HLCAkNsr9xsv8wLETA+K5Kr8kxaJGetbK/et1xk8g?=
 =?us-ascii?Q?s1s6G5wgzQSUPcqFYuar00TcT39vZmrk1fhrOaHMxMJ4FPCPCLSoG3OsrvX+?=
 =?us-ascii?Q?vEOsSuU9JnYbqU/Fb1ciH27n5fboBKSzIWBAyqMgjCaoCWJjo3TAeAqELoVK?=
 =?us-ascii?Q?eSkFg5hn5ZOiwl4Drrd2W/CZ1raNZUnGXIx2HtA9Ku4eObuL8XWH9Cr9kC9W?=
 =?us-ascii?Q?1XKqBmLZ4O7hAobt11nvumqSZB46LSL86GuhVjpK+Fqtz783sa6M3teVvbLA?=
 =?us-ascii?Q?MKhDpjh3at1I5S4dAfk7w/cm/lERWsZObwc51lljLeRA4ny3ZxNZx1i0Bkw3?=
 =?us-ascii?Q?EVORRma2VQyxNMY4/do7/v4YUUHBg5qyGrGbutojtQpXn55R3Bu0+rIs4NNL?=
 =?us-ascii?Q?OualleFiXViba4xRz6zgxw/8Avtb+550AEt6MVJd7AVmcSxppreHaKMXkf82?=
X-MS-Exchange-AntiSpam-MessageData-1: FspeGrJPh8Fjfa4IelaJeTCbzxKJR7UuetY=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08a35e22-2db2-4934-f9a4-08de754c65d3
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2026 15:33:32.4331
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yMDWeOmjvi+Xcq0E1u8EN40ZQ3QwM36C8Gl24h4NHeDwEAOl6fZSnyRjiTCA1t212gaTqOqru0KxKfF4kaxSCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8157
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_073337_055293_FBF6AE4D 
X-CRM114-Status: GOOD (  10.36  )
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

Geert reports that enabling CONFIG_KUNIT_ALL_TESTS shouldn't enable
features that aren't enabled without it. That isn't what "*all* tests"
means, but as the prompt puts it, "All KUnit tests with satisfied
dependencies".

The impact is that enabling CONFIG_KUNIT_ALL_TESTS brings features which
cannot be disabled as built-in into the kernel.

Keep the pattern where consumer drivers have to "select PHY_COMMON_PROPS",
but if KUNIT_ALL_TESTS is enabled, also make PHY_COMMON_PROPS user
selectable, so it can be turned off.

Modify PHY_COMMON_PROPS_TEST to depend on PHY_COMMON_PROPS rather than
select it.

Fixes: e7556b59ba65 ("phy: add phy_get_rx_polarity() and phy_get_tx_polarity()")
Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
Closes: https://lore.kernel.org/linux-phy/CAMuHMdUBaoYKNj52gn8DQeZFZ42Cvm6xT6fvo0-_twNv1k3Jhg@mail.gmail.com/
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/phy/Kconfig | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index 02467dfd4fb0..1875d5b784f6 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -6,7 +6,7 @@
 menu "PHY Subsystem"
 
 config PHY_COMMON_PROPS
-	bool
+	bool "PHY common properties" if KUNIT_ALL_TESTS
 	help
 	  This parses properties common between generic PHYs and Ethernet PHYs.
 
@@ -16,8 +16,7 @@ config PHY_COMMON_PROPS
 
 config PHY_COMMON_PROPS_TEST
 	tristate "KUnit tests for PHY common props" if !KUNIT_ALL_TESTS
-	select PHY_COMMON_PROPS
-	depends on KUNIT
+	depends on KUNIT && PHY_COMMON_PROPS
 	default KUNIT_ALL_TESTS
 	help
 	  This builds KUnit tests for the PHY common property API.
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
