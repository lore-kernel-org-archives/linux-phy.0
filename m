Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97E5DCD98C6
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 15:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eJY0xxcOi0dkAjNRQozlk3HxPXo+w7NfCW31tYLz5BU=; b=X8oG2AVvy2upFx
	JfcYQhf5PjmYpEnJB51JDsroFMgdFeUhWi0vVSFwljfbMuGk3JktEJ/EjdA+nK+JFok67bvp9LftR
	LkAPhBtpnazo49jM372O0gwB1cmWiOodtk/LY0HPWuJyg7d9jwa2LWQr5mASlLiTUAcZz/VeQ1byW
	+Amg6aPua17/zNz9VMvXu7cUBOi3WGiAwhA5xV/xRfa+8C5Yu+3eRyz6JHMrBwxQaa+GgWLIZP92z
	PdA6P8GiK7QSiMNtYDOXmhZECkb9//aK5KO4nave2Xvta2wnYYtn/C9xJ+piSvM3Ibrj7oaBqy/x2
	7By+RlNIAvXzCw60jNxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKiu-000000080Qs-1XKh;
	Wed, 10 Jun 2026 15:20:08 +0000
Received: from mail-northeuropeazon11010036.outbound.protection.outlook.com ([52.101.84.36] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKis-000000080P4-0XSr
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 15:20:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xvE3cGvf4E/ke9Kppm+Dc7fH2RX17QJyl2VxL7HATAJAIql1HDv+AXEVNTXjA4KpA/K3F9h3NjJsw8WsAqP7t1kiBF6JKnxW54H2Y4t9AUUk6NCNsocdxO3+wD1MiRJc6NPPoDoDh8qZNoa8AZ8VWhh4bysmJ9FNaVhvA/yRU+NrW3OEdL9IMFhXYxSK0eJn1AGjlGMB1F9A8YWxHAp+UQh9vKCXJ2hzhlnstJmkTo8eTB6cL5IqLn9EDnKUeNl495r32VWvNPF3Ih0HSAJAITZeFNE9SqWfYVbqEY3JaxGZ4rDzLbfxkUIPYF3D+uBO3rLotTNUC/g6vxM5Ni5/2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3mEYo5Tk1ObQmnHTvN94j021UXlyH9LXhb9DC3xsfsM=;
 b=WF+8K5Ix5044YcnaIKx+Hfd9gbucJOWK9heYIaaAV/RataFO+nGr86uUMHtp315WuajvNy2bgSo06KG/lQxtXyXcS7ARBIRvPwRSTLLe0aDfecqTu263SDt4G412narFB3UiP4pb4sZePzfCPen5855kGH50OrzM0yVQZXC++Si+DPzHN7d06QygZd2uzDH+Ec5KX+9FVWBt425XM+KMrrja/bkPU7Wq1mJ8YjBS/CWHtau/WJG20Vzt4IIY8IZFRfgwtqcMqNumRfsiMnfcYchH8HlcSgNMdAHOGGF7kHzI0SC9uTiyVbRqFTVvE9GQz8+LMuZJmur3cycB7aiwKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3mEYo5Tk1ObQmnHTvN94j021UXlyH9LXhb9DC3xsfsM=;
 b=FSWpAnqg+W6l9UpcVjQtwPq8VcGr6/JVShpaejbAfg5aZstS6dZRdS90yk8rS0Epo6frPMsfl8vQFtlW6KQFpELFraSydBnIZPGs4/8riaKBo3aziYH6oxHKJBivdL5xueEnVoNfpTG8kK7Y3vJVCWTngVLuRS1MMWE/YkJDnOIy57aRQYkQqUg2WYWm+pQXn2brNs47KEDJ95YEFWUSJNu+1w0gruE1HWvs4zOnygXA+hTQs6GgZgFSBmP2McSVBNfD6za7wOnm8Pp1mQD6UcMrZVD4p0IVJIIFZP1fw5G51XMUJVTx5QcpHyuOzMbRFVRt16/jJnJztqdBTlXJ3A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AS4PR04MB9313.eurprd04.prod.outlook.com (2603:10a6:20b:4e4::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.11; Wed, 10 Jun
 2026 15:19:59 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0113.011; Wed, 10 Jun 2026
 15:19:59 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 phy-next 01/16] phy: lynx-28g: avoid returning NULL in of_xlate() function
Date: Wed, 10 Jun 2026 18:19:37 +0300
Message-Id: <20260610151952.2141019-2-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
References: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0P190CA0011.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:208:190::21) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AS4PR04MB9313:EE_
X-MS-Office365-Filtering-Correlation-Id: 6dbdec90-8bda-4836-d6f6-08dec703bc52
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|19092799006|23010399003|376014|366016|22082099003|18002099003|56012099006|3023799007|11063799006;
X-Microsoft-Antispam-Message-Info: FDwIaVE8lIJqEvSVHmwd91AZVWmIxCGR6qMBoAE0j9Nc08XBpEXGLOEk3sJj7WSy2LqEHqHQaY4cZ3ZJTgsriG6jDWvFJxv1YS9RrKRzlz1dGoEOi7b+mlxS//Y/bbMPc1tKJ7iJN8JXykhdl2XzoKq+ebE8Hn/EJgJnefLSDv0tu9U9mj7yIp1ursdlHqO8l+I0uXb0td1GV+9SQoNQuW57UTn2vNKHJJkJX95Ogr1LYIHaiEnIp9c3N0OLvyj4NcCRMTx1hZa5MYmN84Y1hVvJx2qsmxOErOjEP5z9RSoMF0irLsBdVEcumCfYRVU4a8YGhCX8LB8+ykngwIBuO6I/90J2CGoSFa/vUJjiLRZnuNpQmrZXcittPzTWtlBKp2UFbpKSKdrs4yIlJGxWGfi44aEgyAbQv+7R12HpAWjLtGSHWxcPkS5MBEww4flr4xH8Bwkaq88AFwujEV1+7A1sQy5B+zCMbN8cEl/DOqz0WFtOTlcE8I+Sx+suiQhw/43E7t9fMt10yGhvCPdVfVK2tEWAgyWw4oTZP3UDfcKzsfufAPqLRsF+29S0XjIkzygQDrHjkAB3Gi8kRtF/HrShvXn32eIgoFnP4UDW1e/DtHj+m9MUZZ3dKs+iAczHliRCp/7Ng9qE7HG9YjZL6dyxFX2waNepTFyfR2lOBru4nr+0+K6KUrQxcBvewgAa
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(19092799006)(23010399003)(376014)(366016)(22082099003)(18002099003)(56012099006)(3023799007)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sVmRPG8wJb4hXZ4PkX3YstYjWxZ6OGQAnBkw4JOROPLGkB7SoNbenJlTV1w8?=
 =?us-ascii?Q?z5oCPBJJkI47rrezCWOK6w1t+NPwbBue7/PEGZCUeJlid6OLQFtYMmsTi5Gv?=
 =?us-ascii?Q?i+elM2a3qixoFs1c1isohEFNuC4HFL1KMdp/EJboVWv2xQq5TWy7fY2IDMze?=
 =?us-ascii?Q?wCXQb5L+lItdHOD6jTXQhzl50oFz1N9tFdxfurYcipm9aYsGmG9wcde4PSUA?=
 =?us-ascii?Q?BdiSjlMzp1ZtJDPG66HJ30np5mfNE8ISQTPqfpPn6/wXm0Ij+KrKwwxI6fp6?=
 =?us-ascii?Q?gXg5fuHMCdjjh36c+yiRB4skfAzkOauuH4IrQsmXwKHgpjSwP1+ClnFDLHwh?=
 =?us-ascii?Q?Gvi0tcHGUocHywTVK4mpxOQ5sSCJJs4O8hb/R+deu8uci1pYHlunuHCoFmzC?=
 =?us-ascii?Q?PuW9/ztUneY87plDRIOvwDF4EnI2zdDqod7HEN+7u42R/SbiUSBHZIMKyOZb?=
 =?us-ascii?Q?G4pSBn1Pk55SQC7VM5NFt/B0bKLJM+Gs4MOvBCjo2i38ugBruI7zsdGFfYBx?=
 =?us-ascii?Q?pFHtNwWJswtXqPoNh/ooOPBrAPQqirxOZAcHjoByp+cKEh7InyNBgI2Dr+oG?=
 =?us-ascii?Q?MsjlYCn6rJfJGPz67yH0KYlqrpm+ZqqHsnucCs/b4aC/+tXZE8tCUfz2OAb2?=
 =?us-ascii?Q?XUWxzLevQoDXN8nFMza0JwBXfEWNWjlef4AlIco8TjAEYDBB9hQYIa64NyEj?=
 =?us-ascii?Q?h4pIhL9F9HfjeuQUPAnVvP5cMa9frPI7TrpA62/Rpmi62oSMBIvi5psCzDNW?=
 =?us-ascii?Q?2QOvKmUnnRf3bSdHgld+aTJMuMPmxezpX8RCzAWyUEjfXls0VJ8r7qHITMWC?=
 =?us-ascii?Q?HbLYq4QLhyJpiJGvE45muo1ZOpJN/zsowl535zenj5qD5jFBr2wJjYmE0jQ5?=
 =?us-ascii?Q?VCBfOi2E59YDj2GHE6O+1edaOVobKN6plCioExWEoWoiUnZ3vu3pAtUG69cz?=
 =?us-ascii?Q?TLIbux8esTW3sBIErRWklZqpkzvnqo0SrkeCF/xWwCxrYpglg4BcrimBvO0I?=
 =?us-ascii?Q?ULWjP6AtIEjZ1RbkkfPh2eZJ9w3EW+q1wADZqSvf6c7tyYsTazWCOzLYtGKS?=
 =?us-ascii?Q?fs4Z+WGrKNcxA2jyG2vv1IlISGuN+ChUk23nRB0EKsnfTqXSsctzrikdX/Bq?=
 =?us-ascii?Q?o7mskiecoSfU8wZSuEhoITY3ZYw5rvgjWYhWXNCgLjCfzWMKxgHNXTLDcLVg?=
 =?us-ascii?Q?l4HS0TbSWoXYZFbFWS11iznMc1qrfEm09OPMs5yHlBqs5+YYCduugDWbkKyx?=
 =?us-ascii?Q?MC2zkyPvCAEnOYRop5+ynoGBQKe2MueCYKnnXCsYVUNf/WmV+7BDT5mwZX1Y?=
 =?us-ascii?Q?J2GTw1lWY4TrUcdeLNgzqvsK8+DQ6v5mFD94lo75gXpiqMUxUad5s7zrkJZZ?=
 =?us-ascii?Q?aMs1Oq1qzJtVJj6phCggKmaubJc2uXktIRsZzyjmlJjeBO/BWKdA1IFb88kE?=
 =?us-ascii?Q?rFV/B+1nc1CDOV82O1LecwClnl7cLYLU8VjWkOp4W3x+/ur84Ky8/PQjeLVr?=
 =?us-ascii?Q?QO7jFsyNUe3NTh0ZdpBR0iOamsZzUJJmAlNKQ0XZqFvSKVi8Xoxjuw3NHP5l?=
 =?us-ascii?Q?3JjWlWJafsqtXfwsnjZWpXqFDBnzUJfc2m26QPw2Rymdi2y631zqVHIgTzUM?=
 =?us-ascii?Q?mN+b32rbDdraOBcVkHjnWBDR01g1Rto0Oy615I5hnA4akuVsNoeyNu7MNvAH?=
 =?us-ascii?Q?F4RPidPa4SZoAnzXwK6o/DUtjFgnOyrIeorhqPSbX7uCBV3Ea4K5jGXdnffj?=
 =?us-ascii?Q?zUdTxQLwFQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dbdec90-8bda-4836-d6f6-08dec703bc52
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2026 15:19:59.3200
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ayzZOROVn3QpjzBNlTFJRFM7KavNso1Z9uc0JIFiQcsKWjyHh2FzG6fI8j5TTrCseg/6L63nCWDfECcJ52UnQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR04MB9313
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_082006_169740_C5E7B8F0 
X-CRM114-Status: GOOD (  13.94  )
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

Sashiko points out that _of_phy_get() does not support a NULL returned
output from phy_provider->of_xlate(), just a valid pointer or a
pointer-encoded error.

When lynx_28g_probe() -> for_each_available_child_of_node() skips
over lanes which have OF nodes with status = "disabled", the
priv->lane[idx].phy pointer will remain NULL.

This NULL pointer may be propagated to lynx_28g_xlate() if the device
tree contains a phandle to the disabled lane AND fw_devlink did not
block probing for the consumer. In that case, the PHY core will crash
when trying to dereference the NULL phy pointer.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v4->v5:
- deliberately ignoring Sashiko feedback to address the long-standing
  issue that PHY consumers will crash if the provider simply goes away.
  This is not the time and place to address that.
v3->v4: none
v2->v3: patch is new
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 92bfc5f65e0b..cacc128dc96a 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -1435,7 +1435,7 @@ static struct phy *lynx_28g_xlate(struct device *dev,
 		    idx < priv->info->first_lane))
 		return ERR_PTR(-EINVAL);
 
-	return priv->lane[idx].phy;
+	return priv->lane[idx].phy ?: ERR_PTR(-ENODEV);
 }
 
 static int lynx_28g_probe_lane(struct lynx_28g_priv *priv, int id,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
