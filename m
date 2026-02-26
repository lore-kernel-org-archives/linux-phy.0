Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF0BFFD8FF9
	for <linux-phy@archiver.kernel.org>; Thu, 26 Feb 2026 18:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D5m1bdEzKNjvebAQWxHhRnRAie7ZJoF4wojOYG1DVJQ=; b=vUvexeK9v/WS2k
	Ajo8ZnBIopWj0PjwEHCwP9JfUA/JH/DOuyqUjWma0CMyQ8QFjBQnBCZjksa+uQtuTwM0avUeZUx7S
	bAk+/EDP7bmdMrjh/zktGZ9gVsWy9wEwIPBrh3/CpVaOM+9bzJmdv336EE6OHY/iS4fL3S5vAfX4n
	9Hbi8OOOt5Fbd6dKHQNptV0IEOg83pu0cc7nnE2QEwBZR4X4Kbs0fivQwVBx9XFMqdPqC7VgcCfz1
	sB7EF3YQ1CKL+WaOhCXNjymjj99qhEg9qR7ynRrlcMlcQSbP15wcdWNDhu5Zh5KrtDUrbjIYfI7BF
	tXynGl6Py3DyeyZSX2HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvg6x-00000006xwQ-1nCO;
	Thu, 26 Feb 2026 18:29:20 +0000
Received: from mail-northeuropeazon11010011.outbound.protection.outlook.com ([52.101.84.11] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvg6u-00000006xvl-40zI
	for linux-phy@lists.infradead.org;
	Thu, 26 Feb 2026 18:29:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oKF4h1wv1QOxpQN+j1/mDf2GLZLz92MZKEC1tAy4RvYfEUKwcsEznOjDE9Xqu8dWAiN+pdKx6AYSwBUT//Bpam7lohG+tsF+ztfEJMjztXqIaGtKcDUWjxBTqDZvAZvBCEA2TIyE/4luB912nxErihZVQfr2t1iaOe7N44V73O2KjliEK/LRSpQQvb+cQdKWiPbLcacg1RL2S8J9B/3EC1wOEnrGIFcxVOLBNF0aPWrS7Zqi0QplO1VjfmaJP13fWMmAJU3cdwFBcCJE58DHUZ3vHxWB5lYtol9pEtDIdCXc1B4K8CxmMmMqQdfGNgvladcnPdvIL5J4RL7mPvlrRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=34eOvBGYwGLhRxQK8v//mmzTC2MsT+YGoCqDcHIfB2M=;
 b=wQm+VULT+rLsrTU0XDi+D3FGlCg+hA4OVu1DGc+bcZ7euYnxka3VdBOBQeBDlN80rQSJWLqvxHK2zfq7CUhLK50HpOPOARoe7f2+aIW0v8NRKS0esxAKDQokuOSgUomTMJtEHMcOnqJjX+CJ7vfruynze3HYHC2EKAgj3WEdC4M0jSuN+GSj5i5BfxpFEvVlyBg4lBUsCaLpiRvDX0jrJG/EANYx81THo2gYINUuK5+xpbiDxOnQsvkXCT+kHbp1IKJSSO+3YNTeawqERo9xa/o2o4f/65f7e2936RFvyKEnExEpSOwLlXBLNlXZGps8NIONtGtDH1lO0zsHPhkRyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=34eOvBGYwGLhRxQK8v//mmzTC2MsT+YGoCqDcHIfB2M=;
 b=AGC2CM6mvXJbd++z7t2imJRd+ApkjEhF+Hc1fMNeuqlKmblPHgVYF8aNXIHgNAJepwhZvSicOlxZR+rEOnDQI7YNXdExqinwxGRr/I55DIM+2jViscLfnQP/F00SwQoL14xCAStxMcygNJwj2mX/WmtjSuEJf+ryg0sk+81NE55IlflIZfvZNsY/owMZVBPggN58reJwRsq0AWsjrRSAbjyW1ZqEwbfM1YRzbyt5WZWzk2JBMvIq/QQvciWxPKhjfG36gn8fG9Vuf8xbvcOkxmltd88XyTXJY6iFkMq7q5dm1sjCeQP6SYCNcOcu1AHpk0Z3JO8QgB0f7RO7uHizww==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by AS8PR04MB8070.eurprd04.prod.outlook.com (2603:10a6:20b:3f2::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.13; Thu, 26 Feb
 2026 18:29:11 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::f010:fca8:7ef:62f4]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::f010:fca8:7ef:62f4%4]) with mapi id 15.20.9632.017; Thu, 26 Feb 2026
 18:29:11 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH phy-fixes] phy: lynx-28g: skip CDR lock workaround for lanes disabled in the device tree
Date: Thu, 26 Feb 2026 20:28:53 +0200
Message-ID: <20260226182853.1103616-1-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.43.0
X-ClientProxiedBy: VIYP296CA0003.AUTP296.PROD.OUTLOOK.COM
 (2603:10a6:800:29d::9) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|AS8PR04MB8070:EE_
X-MS-Office365-Filtering-Correlation-Id: 51d58d3c-33cd-4aa6-77a8-08de7564effe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|10070799003|52116014|376014|366016|19092799006|1800799024;
X-Microsoft-Antispam-Message-Info: Km2tDwGNAid36bHwK+C87Bse2cYu19iKa7U5HCMRCz6FZpfv+5ZE4EOpGceAts5jd6atGkkFsyQd8vEw4Jkh3NLpHHU5snpIf/UjRDMigm0DskatkGr/vtj5c/8N0q28HYrWgJwAHyvU5IVagI6SdBxV7cCRc9RrH1BwmkTtsXkH5Vgvqy85JRGGZbXE64OFpnhAQAAeJEhpNgCEA95lT9OC2APPWLKWCgzr3F9rQBH9coVCxHQkizuhtOe+po/f/f1HW+y0nBLlrjvfPVRn411tqFlzxXSMoQe4AyAcgoOs+9mUCXleYlyo5uV5jYpMOuhAka+us6+YXqoF9cTCtBSqMt0QwhqDETBATcBhO3uGN4WogOv/wfbz2a55uHMGqT/hJPtCAgVoZvqlOanAVzg7MF4YpbjgRzChxLcGD2J4SOMtubnP+vf05PqaWvHtPVBKbbNgeO1xa55JYD/+OwAKWWco6qE6NLnCXq+gHWZ8INvrQjzlvpDlrufKauyOy8q3JJuaF2rr9fGOu2oqYegHXQldzhB0Kyf1QgVeY2KYPs1wAGH7wvILpPS/ZO9/E8v/dTIOzseS/YpmqOQ5dHoRPRn9pK/wRI/VSh/tUpNa9A4NesYimD2/etll2cGEkYiJ4E0IXFjIBD4fCQo+X22BDdkXFHzE/ev1R1zTKHG2CzctNde2uHyuE3Zol7iy
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(52116014)(376014)(366016)(19092799006)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Msslffa8MFkZBk6ss33u165dRIoykcnIn4YbCqMMcrOoCMpzolBkx0z+1ZvF?=
 =?us-ascii?Q?SOeTlUlP7pFX0HliEDia9no+AP+9HMJP7c1GDqfwP2+qVipw0jnOX6dRLa3A?=
 =?us-ascii?Q?dqBKem8Fve72vgfbDj4cTFhL7uofz9F664nPk1p9CJ3MYr6dyxd819BX8vgy?=
 =?us-ascii?Q?E0GUVyO4Owpohk4PGusJxNwszgvMjWgUqvx0nVtndmXbQUFPxfrBCoLljkvC?=
 =?us-ascii?Q?eRtZuTMCyKak/Z7+2AhitzHn7FjW3zsJ7+/y0EPedncBm6QZO9hLeIv1vqM8?=
 =?us-ascii?Q?+sSSCOUJBvBaK19xKXnL1pLchfVxj2mDDW6o4WVX4SWFhrH310MB0knK3zhg?=
 =?us-ascii?Q?CH0gYGu8h7aqINYlX7bxccazF+jFxpXWd0gVKxfpAxMTzYrFfpH80lEYyc54?=
 =?us-ascii?Q?a9/8HQW9m7KLw7Y13lcJbcejqM1srT1LIvBrOmJ5bq6MVXqNQyEqE6VNpkfv?=
 =?us-ascii?Q?5brkL1ylNS0PiyMO5lum5Zc4MYXStResju3TR46Myfu+y68a4nRMaQ4lCB6p?=
 =?us-ascii?Q?KNXx0nEtrLmIcPtB+BVcoot3UJWq+PAk5Vtdb/KbngNCl0j477s+Urki6FUU?=
 =?us-ascii?Q?hKO3hoEXZqpu0o51z5XaSsSIabuyV4UmeXyxO4fvAh9iDawRpwueDiYnDfi7?=
 =?us-ascii?Q?cR+GxZDv3dvOAqCdaNsSSh3XWZoZoeFRwkEA060XLy8e7Nfanj3hJ9tfsHtq?=
 =?us-ascii?Q?oJwC3a1KTVjNyD4syoAGJc1OpIV8SQFhJbjdMEGh59vfJXWCR5W6qAecsj7B?=
 =?us-ascii?Q?VKrUvMC7U+qp7efhGCmTEeysTUrz0IjgW10/UxkOnHHg8mc8CnGpPL7JE3U3?=
 =?us-ascii?Q?JLYiDrbuhg9qkfbEiVBje40gN3MFFbdzIuRzI/eHLQOLwSlU5B8PRjRX//wL?=
 =?us-ascii?Q?zCgZ/nJkNheZPqqjZDHil/UyIuEw3/DxIHNB6b6OT+o0fqN1RvygkFP46Cvi?=
 =?us-ascii?Q?Q0RHt3/g8+Z20BPOZu8YBhjAxZOUTs08hXCxxa4+UW+9QFynhlQDwLGauG0o?=
 =?us-ascii?Q?uvIlKUT9MszfIQElCf5VhPjoOoDPkrlKg5Gw8Xv6HpuyRwHJxKCLZxQHGo3n?=
 =?us-ascii?Q?nRUnVZ40nwDn9mBzZy0C2G0b8CJzNzrIh39birqrYLpbdCUROFyaK9FcPdJY?=
 =?us-ascii?Q?ox/LvNNrBPsYE+Fc2bY9mKIbX5v/ge92gFqwUNSzTSZwo96B27Ucb+hLU4oJ?=
 =?us-ascii?Q?JeKlau4N01TEeYF0mql5TP5ziuoA9Auno28hHglj5GP+6Y5TpJFNcCostjCT?=
 =?us-ascii?Q?IP6SJtlngN5NkoW+5TYi2EU+Xr+qaiOCaJDyrB4w/NtoXEWAqY9jkwMxXX7G?=
 =?us-ascii?Q?4JoUBKIXwOEPL5GYMeQWktyKfBbL5p1c4fknYv7hKwclKdsRVjHyJgBsbDVy?=
 =?us-ascii?Q?Ql6KR/ioQPyOVDTk4P8LI6z1cx9w0IiDuuOHePiyMeWo8p7t9KpgrGRWig44?=
 =?us-ascii?Q?sa0sneUNMJt5f9ppT9b8sVwlqGOjHGRnoUNu4EHoxHQ5eEDI8RnF+jR1EX+z?=
 =?us-ascii?Q?2UK9cTcamVzWh2uZV/zfl0N7DcQSYsxoAOn+kCo8gsDVlFUzCeaJayvk2SK4?=
 =?us-ascii?Q?FJS1Fl+UgdR/U0lkK/667J+m5rsBjDjb5WkahO93EIie2f9IN6i7OasNY1F/?=
 =?us-ascii?Q?lfCrpU6vxYPlpsJOX09y4fAFkhQBah13C2X4UcdE8jl3qoZENSKxXI6hmGUk?=
 =?us-ascii?Q?HXMOY5P+FhUyttk+8+AL8uvlz+GjFR8RuHp2KsMeB0YhjR2FWVtPg6yOXU3a?=
 =?us-ascii?Q?QJuAqola4c8OW8LVpKf4yQsaZaHP3IS7tdXLxwhNBl93HlRtwR2LRDJXqwPA?=
X-MS-Exchange-AntiSpam-MessageData-1: EAOKnmUxCCWWphgRiNfaJ01XfAFbubHBHL8=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51d58d3c-33cd-4aa6-77a8-08de7564effe
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2026 18:29:11.8853
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0EJFbaCzJeunDvYSfLE8dP/onAO7DUzkfBMBOOfLiJgeqyqCWKUnL1m04N8KGCTSZ8mjNSMfJFuSzWTe4gL+Lw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_102917_019750_127C3217 
X-CRM114-Status: GOOD (  13.81  )
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

The blamed commit introduced support for specifying individual lanes as
OF nodes in the device, and these can have status = "disabled".

When that happens, for_each_available_child_of_node() skips them and
lynx_28g_probe_lane() -> devm_phy_create() is not called, so lane->phy
will be NULL. Yet it will be dereferenced in lynx_28g_cdr_lock_check(),
resulting in a crash.

This used to be well handled in v3 of that patch:
https://lore.kernel.org/linux-phy/20250926180505.760089-14-vladimir.oltean@nxp.com/
but until v5 was merged, the logic to support per-lane OF nodes was
split into a separate change, and the per-SoC compatible strings patch
was deferred to a "part 2" set. The splitting was done improperly, and
that handling of NULL lane->phy pointers was not integrated into the
proper commit.

Fixes: 7df7d58abbd6 ("phy: lynx-28g: support individual lanes as OF PHY providers")
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
This is a resend of patch 1/8 from:
https://patchwork.kernel.org/project/linux-phy/patch/20260114152111.625350-2-vladimir.oltean@nxp.com/
which was a fix for code which was in linux-phy/next at the time.

The merge window has passed, so it is now for linux-phy/fixes.

Note that further linux-phy/next changes depend on this, so please make
a note to merge 'fixes' into 'next' after the PR containing this gets
accepted.

Thanks!

 drivers/phy/freescale/phy-fsl-lynx-28g.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 0fcc0354e76b..518720b61539 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -1069,6 +1069,8 @@ static void lynx_28g_cdr_lock_check(struct work_struct *work)
 
 	for (i = 0; i < LYNX_28G_NUM_LANE; i++) {
 		lane = &priv->lane[i];
+		if (!lane->phy)
+			continue;
 
 		mutex_lock(&lane->phy->mutex);
 
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
