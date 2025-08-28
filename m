Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FA76CA0FF7
	for <linux-phy@archiver.kernel.org>; Thu, 28 Aug 2025 18:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C7HcplhGwld18W9lafSw2b2h1cqFsePuqnZEmaB7JfQ=; b=tMZF8orHe+ebZM
	Ee3g9fGPKyRgQCaJ/uaBudo+0YWuyVZSSaxkYHIQCsRRkub+gWTDHC6otP/eEHPSnFj2D9jqYLZrN
	olt/VVfWtIFaBWABoTmzTP9hzqe/M7a1f0YntqETGyNr+z/wAINXC5LwSndatyVxlxGGo4F5GHIEv
	pKe/GdoxdSnDrueNs0MpHW37DRjnKXJje5NQI52tlRDPNR18hlETDIXEp3lHBtv7WkYS3HFkkhB2B
	yvKfJum7U+qBUwHhAnikwFT5Zbe0U1uJKUBM9sbCZ/U7Y1YXxUEEfrOFW3nI4+RGj31gHgjB3986M
	3TOESKWHuzd8OduFAr8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urhWH-00000002o8c-2yCW;
	Thu, 28 Aug 2025 18:38:45 +0000
Received: from mail-koreacentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c40f::7] helo=SEYPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urbgA-00000001XD7-3I6q
	for linux-phy@lists.infradead.org;
	Thu, 28 Aug 2025 12:24:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PuSUs6oIUJiooExTdV1TV1O+L46dukifUAI75msPg4dHbKeWYvVcWNg5rPkvdVryIEvmCFmzbv6GHUqgo3wKUexUN/+YVFlJEwcB5uR3g7lZwAE3YnmQQssyTd9Dgb/jb+m1LYBFRWlztOt7uJtHHiJxU1j7/i55V0frxeZa/CEsXgYWh+M2gb7kKBKmmdJluquBuXP+gRiKG3qfA8AbO7ziJForrSuavQTQHhMyXh6kSZRWSCNtbx1F3/Ge221VZELJim9dKlbyPh7MwjtGe2JFSgX7vfERMXbtBUtWjQfl7BdkHcZnkhEl8wviAVSo+VOVY9MtOdw3aaRyXQKXiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5sVfVo3RLdv4fv3IRNfkvaffwgRQ36YLzoA7z0QZlpI=;
 b=v+t8NAfLkmWy/NARzFkwDk3YZKbV08Xc7wqkpDXw/tsjP1rtgjVN/5OqxRHIfDsgD9Zu/5rUMRv4jLXrzb4RFOEO+jSG1K6twz6q/rt1Qo2ZMRqVOJwSVYNfK0ikld7SUxx/OjhdS5UINejQr2glTyl8gmZWsNH+P8hHIriZ+XtxWWebmLyl5tOMcDDiyBPZ5AUJRvRwT4q4FIfaIyiaj1dEJamI0Oe1WiRa3wqzg0UPc3RVOD0+cCutbSTk96qJ9t7WksP0dpBFQT8BIZB0Sumez0MODFM8acAO6lMiBX0VuQTVA0liVaQ6mxqVSE/e1hfqJ5na/BCWKBO7T9x1FA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5sVfVo3RLdv4fv3IRNfkvaffwgRQ36YLzoA7z0QZlpI=;
 b=jURoJjLQtBhLQVbne7xs79FWCHCPOkL09aplhltMQLZQ4l/SqYBXfcjGTqgK3lNhK0Hi16yiBVhe+vrTqgJdZdIybEAQgwDbf5k+/GNrbxEZ22gDvNO49AgNOPbMIb4qy9vzC+m/HTJ/GHyiNEzPBwaNkY0YgLyKQSLfC/mks3CsBgclMaojJYJvnzI/FhWoxi+lu+8HlPygg9RZGPDjCFDkdlDOsIyv897G1NOP8PEhe0wIRD6chidMigKlrrzvX/4ToUumEBNQoW+p85bwgVY8vu0TUCz8gAR3RA9O8XkO5n7uKcH105BqMgxxSRZTUjYJVoIiRyZGuchjOGO6Gw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SEZPR06MB5576.apcprd06.prod.outlook.com (2603:1096:101:c9::14)
 by KL1PR06MB7287.apcprd06.prod.outlook.com (2603:1096:820:143::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.15; Thu, 28 Aug
 2025 12:24:19 +0000
Received: from SEZPR06MB5576.apcprd06.prod.outlook.com
 ([fe80::5c0a:2748:6a72:99b6]) by SEZPR06MB5576.apcprd06.prod.outlook.com
 ([fe80::5c0a:2748:6a72:99b6%7]) with mapi id 15.20.9073.014; Thu, 28 Aug 2025
 12:24:19 +0000
From: Liao Yuanhong <liaoyuanhong@vivo.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-renesas-soc@vger.kernel.org (open list:RENESAS USB PHY DRIVER),
	linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK),
	linux-kernel@vger.kernel.org (open list)
Cc: Liao Yuanhong <liaoyuanhong@vivo.com>
Subject: [PATCH 2/3] phy: renesas: rcar-gen3-usb2: Remove redundant ternary operators
Date: Thu, 28 Aug 2025 20:23:56 +0800
Message-Id: <20250828122401.17441-3-liaoyuanhong@vivo.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250828122401.17441-1-liaoyuanhong@vivo.com>
References: <20250828122401.17441-1-liaoyuanhong@vivo.com>
X-ClientProxiedBy: TYCP286CA0127.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:2b6::9) To SEZPR06MB5576.apcprd06.prod.outlook.com
 (2603:1096:101:c9::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB5576:EE_|KL1PR06MB7287:EE_
X-MS-Office365-Filtering-Correlation-Id: 63d0a3d2-9ce4-4ca7-03c8-08dde62dcfc7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|52116014|366016|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?PmzIUnDOaOo0DzV+DHVpDbK7GlhuNzM85GR5HGVMJGr9RBLH42U9MTwDLBqs?=
 =?us-ascii?Q?MfpXc8PIdSwykPHO7SDMUkZzeLm5QpDvsUaTLIooWh7Ryd9hYsKS8HpzKYBB?=
 =?us-ascii?Q?PZVD/u1eVDIOw6sOxNnXwWw8JrEtkCaULjOW3xqtKGPo/wd6tyqMzSeN9gU8?=
 =?us-ascii?Q?Df3F1+rvt0CD6MfMYASwiyH3cEy0zVHde9OjoD9kbRQEGUdRQ8I+t4Pb5uDi?=
 =?us-ascii?Q?ukCSZG8F7AoNlDirNoiJPjgJaI+9IgB3+ueF2+/kri7o9VsRFrdM4LavcAl+?=
 =?us-ascii?Q?YXS+uoHcxUvcHEpj97u1mhBbEXrPq5AfPZX8FB6Tmaen2cxIPCV/B3ug00F0?=
 =?us-ascii?Q?kfEv9rNqeHVqxEz/tTeEiG1k/E1aeMPAKygSVC5RxPWmXBRfE13GcSFyBTEi?=
 =?us-ascii?Q?fZPfl8PDgcf51I1CDzpNAWvrqVJ+XvAinhgHRxXgyreSw33d6ysQ68P4tItD?=
 =?us-ascii?Q?8ElhiXtt+4U0CzXvec7JHdWz/N1EUiSprXbRsryQussjUjARnW9sxTICdLXe?=
 =?us-ascii?Q?09UJbmaYCPkCTKTPeiYS1ujS+T8lcPT6tqasTARo5MxnSr5igQRjTKp8axTA?=
 =?us-ascii?Q?uia4OfrZeSFkaa5+E94YQ6RPVlr4PrTPBmvkigcT/8aub1HNyeei8lz1glZF?=
 =?us-ascii?Q?KUbFi9BXbtZtOYuqUlzKrS71GtWevKmWM/bSaYV4a/7V161z1LjlD1gRU2Bl?=
 =?us-ascii?Q?kYrlg5+xeqCPN4LiZaNKpx0ZsAYaK5gcqVvGu85G4xNsgLoW+VnxBO4OhIYZ?=
 =?us-ascii?Q?inKazvNzZ3kuM2T6jryR3JHVHYxnhTDOuvp9K4R+yZYDY1fbs3361KqJwyk8?=
 =?us-ascii?Q?Sgzzx/If4+hDeIGi8FNeNCpIgrfMIYqr+l57vvqq/h1H4Bb7IKr3pA7jFBca?=
 =?us-ascii?Q?HgLXyBfke8m6Rx/3d3FCni4oFU+euXjwS9BxeOASr6rZuOmXGMxWeJXDMTVA?=
 =?us-ascii?Q?h2+ydkEgh4gndPIrT1Q/KFwI0WVFQ9ZNVbGogXp5OwLG/087Cna8SuWQvVdX?=
 =?us-ascii?Q?Drm7UsXhQfTKrrRivaZBLE9PJVLcwMxUU3Oa+ds3Zm/1g6WKD2SYSiGkTV0E?=
 =?us-ascii?Q?DlKw9x/F1g7TU16+JIVj5Y5uk3bYmr7HGNoW4nnNZOyv8cakcRmyMzenng2K?=
 =?us-ascii?Q?7fx+0RJ/erxMhhp0b5oWd3gcLmeJTaWuThLZ6KuwFEUt4mSW9J54A4s7JjJN?=
 =?us-ascii?Q?7rKyFU1Ye8HX0jqHLWgyqlDuSQxnlZpAfoAD0cdJlipncwqmdH+z9WtlIMpG?=
 =?us-ascii?Q?1SkdQZx0LdytevLmS8IH5Je+RQyI7G4opDbz8Uz8Z5sv3nivsQqw3CUCRqir?=
 =?us-ascii?Q?lt7eOQ3z3o+fDR3p8RhveoHM8mXQ5HdHb8fWrOm8ciTitLJoB0R/P26XPLBV?=
 =?us-ascii?Q?4HaeF9ax4svts+jjN+k7Xqcz3U4lasMsJUcaj6zDBxxwBIYNampyHqoWNtzs?=
 =?us-ascii?Q?lSOw8fhCPwkgYdZyufGhxJo9GA4/0gWjlYvqpD8ZuOLBQuQ+dHw2Cg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEZPR06MB5576.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(52116014)(366016)(1800799024)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vOR6wHkbw+1D/rJ+S29hKa5KgoElMuV2+WuRCXM6QD/QsDj9tLcLciNlJKdt?=
 =?us-ascii?Q?pFvv51qqShAc+zTObWtUXM7jW86YSfyqvqUpY4aOkshSRh732pWVj/v0UyYW?=
 =?us-ascii?Q?h6DJKyzKRW3HOVNUdvrvo3Jsn5zFPZl1a9N1sRh2Nilth6iHvDkeHW0+DdO2?=
 =?us-ascii?Q?rH2P1px11FX8Vx1UDB1g+TCi/j+e6s2SA9EeEUWfDTT0WGJGlkla/9XOeotC?=
 =?us-ascii?Q?ZoBAWfYNigdl557N1xFcGqucZeELWGWgMPW/aaHkGTanFh62Gkwa7iXWV+GR?=
 =?us-ascii?Q?N9xSZfBr+XHomwn4zkAyg07tKuowj7mItv4OK9h7X8rgePtU1aSCxlbrKbF1?=
 =?us-ascii?Q?5uv/AnqfcJB0g2OzP46/X4eE7+wJgIm/xIBxOtGN65cFcHav3wjC/dLY1Bui?=
 =?us-ascii?Q?lVg2NhXZqqadUJuDRhCL7hHGjwqQn77C1waV0hZDmpqiHIn5AW2jtogGqmwN?=
 =?us-ascii?Q?wP7tPIQ0hoCCpEb8eNYWQlnqkxCrnp8+OLHXbVbGkeNXS2N/qGz+14Xm1Ovp?=
 =?us-ascii?Q?eLXZGW4zlBN+mV3gE+YwsXB7fd3iw5elGYCIS1OQlpUgxL8Jlpjsnz6spapP?=
 =?us-ascii?Q?4rR5HYMmLGnX0xzwU6f5GiaMifgDbL495pVHBzJeeLptAU45Z4CstnVvAaYJ?=
 =?us-ascii?Q?crLwCQzYWmNQ/UsoPAKtPvWKeyM0oAGlBYUUSCZJD6drk/KiMPCQ+rTQu5CC?=
 =?us-ascii?Q?MyHYP7ujlI6KspinOO7X2FHLYl7kU2EJgDyCRB8WAD04hd+sj0D7kpDGzKIh?=
 =?us-ascii?Q?mm+nMzZPIKikxXm20REeiDzGCJn93K3QkYhn3Oeyl8D+UvoEqZn/m+0brZqJ?=
 =?us-ascii?Q?YrJEZ01PTQTQddi7mID4JpfVaJu9LOhTdnR5DYA6+gragtVDt3c6YoZJmBJ3?=
 =?us-ascii?Q?G3hXqzZpLg/7nVImIVVCI750dPgGT2As9caZ6buZ6g750d9h+zZ2RyL8DEx5?=
 =?us-ascii?Q?p4suO+bcWGPPghcud84BEZkKDECICDuS8955GbLK4rzoIUlho9+6/+P9tGAA?=
 =?us-ascii?Q?Yc84h3fBwmGHZiJK1sF3k73ClSE6iJs5W5qE6ooEGDiwKhj4QCYAPa42x5U3?=
 =?us-ascii?Q?CaWYYLf5b0B0OSOWVENwcM6eqj+NoVGpn9lg6qITWMVaKAz5sYAcy6T6omvR?=
 =?us-ascii?Q?5gjsppruI3TdPC7S/SQ2KYeNqVKCSLQ5EhfJQJ5+6Kkrncpp/NWH0UsFr5HB?=
 =?us-ascii?Q?WJLTUJgm19PLthJ0nuglJwGX3qqRnWn/k/HzuZHdTj+HodPytAfCjQxOsyIt?=
 =?us-ascii?Q?ASHWVKD8Qo/miJ0lYyt2d2s9wXCm+Ss5Cf4fW/Mh3mmYCEPdR58aBt948Zfc?=
 =?us-ascii?Q?bw9H4NIfgARfmPsiGlwZ9pM4/8HT3rpDA7vfkWTg3WL32OlJxYifYZwVlK1x?=
 =?us-ascii?Q?5wkIsCUnqyJKTdJPwr+wD6xoJjO86g2KiIeHdgZFoWcLTR4KEfhbJ0ufBub9?=
 =?us-ascii?Q?/keQ4f94k7hbWvZpjj+JF5TFkGpYmKR84/4e6jCOH1KsImNB2ImL3OtDbP2/?=
 =?us-ascii?Q?iazNkl0JVpPnA7Xh0W8bJdyksfOmfniyhQ/ypiZJ9QzYjNTZxHfhLiu49wj2?=
 =?us-ascii?Q?AU0zHvjLwVRv4nuJFwfb4F0HsIUKBezNGUseDYmY?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63d0a3d2-9ce4-4ca7-03c8-08dde62dcfc7
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB5576.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2025 12:24:19.2271
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MjWolVCN4Vu39pNbd2PaCxUOOWPQnBFp1vdqz2gcuVlj8QrCjvTA7q1/PdahDigJ8I0A9hmLM2J0UKWz05JP7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR06MB7287
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_052434_822370_3B91918E 
X-CRM114-Status: UNSURE (   9.15  )
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

Remove redundant ternary operators to clean up the code.

Signed-off-by: Liao Yuanhong <liaoyuanhong@vivo.com>
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 7b4a6e8b7508..bab2d4dce5b3 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -306,7 +306,7 @@ static bool rcar_gen3_check_id(struct rcar_gen3_chan *ch)
 	}
 
 	if (!ch->uses_otg_pins)
-		return (ch->dr_mode == USB_DR_MODE_HOST) ? false : true;
+		return ch->dr_mode != USB_DR_MODE_HOST;
 
 	if (ch->phy_data->no_adp_ctrl)
 		return !!(readl(ch->base + USB2_LINECTRL1) & USB2_LINECTRL1_USB2_IDMON);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
