Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9530C3ABA3
	for <linux-phy@archiver.kernel.org>; Fri,  2 May 2025 09:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iBg2U6ikowZjCxs1YjSqB+c8aHn8vi02urCzFgYXYbc=; b=H1523Q/A7LSWKM
	0+JJI79okSH4Maf7m5TJw2w3PA0o6cGJmO0gArXsshyku7sLvQsOrJbNo9rT1EEim9MuhEDdKIegY
	9LF2T4qIvo4w1rRTVA7x5pteWAMo9NZvR/eyaQfHu5QnxxgtVEa96y2L+Wax6BBlGshrcEY0lC6t3
	j57riin7iKEdWd4lGM7l1sIYxPL2rssBK8u7jWPIsbf+CVpz6qJXB5ABe+R5EWTpaFlK9djna7wNx
	CLiiTw+XdjCFvepSosjLUF4SSLX832Xnh0dqCeuwQ1ewRd5FZf6A82s/8lZXs68pEksy0VJb+mlyZ
	h35MQo1gT3Bn3lwikyfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAmnx-00000001Mbj-21YZ;
	Fri, 02 May 2025 09:35:37 +0000
Received: from mail-mw2nam10on20615.outbound.protection.outlook.com ([2a01:111:f403:2412::615] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAmf7-00000001Lcx-48s3
	for linux-phy@lists.infradead.org;
	Fri, 02 May 2025 09:26:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MrdY7jUAOwuF3uU/FiASi7Bes+sCINSy3aQjngplKPz/kG7l7Dmtq1upQxqC4GQLngyuuPPX6pllqy3qePJMpnfS0IyMZKnz7iwhDVXGP8htqeC4F6+MqPsVYreJVZf5csrdNVevHKutqXd6pEw3lWFCMN1iuHKtqVpdHfGIpJ8PFklDaR9zbFDesCCZrfOKoXibMILjn8Sjp0p3hiCFQJGk6vRV+S0mNU65pKDh7d9Q7eQU9CG0EWrRQ1EmDYL5COrNZz9jpnbk+b626FCbressBwj6CZ7CQJDOy44vTeXKONVxTvPlUO9NHJJpQRrrhFUO7hub/zEdFwKkBiekpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ShFh+PcuR1SZ+qHDgcXzgLNMEO6Rpfg01tqiEyGP8sY=;
 b=NSDZZ09hqrM/dwhXSkfJotrFw4C6BhPps2AhApauJFfVVXSk68s+nPqAJxBIBNkWzDQyjZ/SGJoR9j6sS99VbsAfx3ztASvl3zC8Slv9mKV4PWsvmvXs6CrDnT3xE8az+KeacOJKKHgwYIbiKouKP/g7AtPbdAL+vPN2wA8dJS/ocGYrf++57HuVZrGuLlU8VQU9tm+6ztHwR9CVORxYY0GMwdmGXTfIEAHuwwTMHv2xia9z7L+Y48btHHH1/iq9ocLtMTHqMQeLblNFyEWyqQNSMKtJ1Kugyc+bmX0u6mGiq8lStm7Vfyp7hD7VCvcf2zQDp4dlGeoScAFMyAmm/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.233) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ShFh+PcuR1SZ+qHDgcXzgLNMEO6Rpfg01tqiEyGP8sY=;
 b=rTbwbgs+JnPUL7sOJzTlOVY1bJsqB0yR96fPwtGnlQKU7wbthHcaKg7MUXzqhjFEW5oTo6y+lkQE5zZxetI9E6Vqk7nC7ba1MhFrJGu8tQmUrRNOJpZn1NR/2H0FCCLic8dA4NWhYr0BQPr9F1Ql6/ItBuyOVNwb9KHJ8r52aPPwTAqLtmcSkjj3lyiiE00epiRLPV+b9MHmhQHM7+xeofgWrDuw+mWo77hU5MMfwZvead3NTW1g39qIJdvdLtOmfCvW0Z/Yc7/JxHY4UaswwF4fwbCQ1QndVcTsqB6ZYaE7Mp/Uw0gMufExSR8eXPC3F7leB0FVFbLTXc8+FP+2tQ==
Received: from PH7P220CA0176.NAMP220.PROD.OUTLOOK.COM (2603:10b6:510:33b::29)
 by SJ5PPF0C60B25BF.namprd12.prod.outlook.com (2603:10b6:a0f:fc02::98a) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.33; Fri, 2 May
 2025 09:26:23 +0000
Received: from MWH0EPF000A6734.namprd04.prod.outlook.com
 (2603:10b6:510:33b:cafe::35) by PH7P220CA0176.outlook.office365.com
 (2603:10b6:510:33b::29) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8655.42 via Frontend Transport; Fri,
 2 May 2025 09:26:23 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.233)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.233 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.233; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.233) by
 MWH0EPF000A6734.mail.protection.outlook.com (10.167.249.26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8699.20 via Frontend Transport; Fri, 2 May 2025 09:26:22 +0000
Received: from drhqmail201.nvidia.com (10.126.190.180) by mail.nvidia.com
 (10.127.129.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Fri, 2 May 2025
 02:26:14 -0700
Received: from drhqmail201.nvidia.com (10.126.190.180) by
 drhqmail201.nvidia.com (10.126.190.180) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 2 May 2025 02:26:13 -0700
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.126.190.180) with Microsoft SMTP Server id 15.2.1544.14
 via Frontend Transport; Fri, 2 May 2025 02:26:12 -0700
From: Wayne Chang <waynec@nvidia.com>
To: <waynec@nvidia.com>, <jckuo@nvidia.com>, <vkoul@kernel.org>,
	<kishon@kernel.org>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>
CC: <linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <stable@vger.kernel.org>
Subject: [PATCH 1/1] phy: tegra: xusb: Fix unbalanced regulator disable in UTMI PHY mode
Date: Fri, 2 May 2025 17:26:06 +0800
Message-ID: <20250502092606.2275682-1-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-NVConfidentiality: public
X-NV-OnPremToCloud: AnonymousSubmission
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWH0EPF000A6734:EE_|SJ5PPF0C60B25BF:EE_
X-MS-Office365-Filtering-Correlation-Id: b886f8f7-1660-41a5-c53c-08dd895b679d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|376014|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?VvwUB1mfMVcaQquMFM587qdL4NQa3oMZi/8SG3EAgcdCCqiJHLxsdPoBLmmF?=
 =?us-ascii?Q?zz0L98Z3ITYFotbJZPUvcoOJp7h+YhwP5Uzt3HXUIDo2cLBDQL7LogacB0i9?=
 =?us-ascii?Q?L3dbaiESJQgUq4JzDhd0btUndL+8lut4VGdTKyBm+q//apvqGzsRYT7KvuKL?=
 =?us-ascii?Q?HNaLxXwkXcBfWk/qfq+ooqeI+R0TaGvzVQa5oqolWId7buEDUE4c28Td7O6q?=
 =?us-ascii?Q?SMVJ4Oof9gcXCeJpSPljHV/n/cMdCvU5mEx30X4oRmP6nkxpTJAxzj70aG0h?=
 =?us-ascii?Q?8451+0yGKn7WghXcxYiOXCXJcc/33yFaXMcS44/KDxcDLyI2svLwRv5K+skF?=
 =?us-ascii?Q?O/oVVDIWoViZYJ3pxQ8KA0oZzN/drujDNY7uXy2ZbbfgDXw49n6phhVf3Ldw?=
 =?us-ascii?Q?8nn4eUdL6Ps+pP7SrZJCtIEI99O5Gr5HBx6zufKMSfnHHZi/L5vjiTb+SHAl?=
 =?us-ascii?Q?5oLu1IVjN3rZbuFCDCO2nbX/6k65zGwCnOfAubbro3zvxsdBP0eD49U7cfMd?=
 =?us-ascii?Q?8vMkIUt4YInta+yZuK8HLj3MqMmI/1/OmLqoVrXYbfXlk43UK6vv00Hr8GG3?=
 =?us-ascii?Q?94cpiXkq1qrpcRLz6Hb4XgysxqdrUhyRqGtswOB5AsJCO/X/eQs4hgm0yXKZ?=
 =?us-ascii?Q?Jw9DvTj+oRJOd6XSbV6lvhen25Es1vb3POGHfY75r0jcB85VvKNJmQq6WUiN?=
 =?us-ascii?Q?6btkUc70xaVjg+/TCzK8sh2wzm0m1/veDQKQkrnlXpxmvrs1Af7cXLHv+Zib?=
 =?us-ascii?Q?2lTXGAAfbWjRavT+4Oied1tD6fFSvBQbI+5pIsUThTtkVlKYPsk3dq9CuoHP?=
 =?us-ascii?Q?wYrj1PomyDlKb5SErgZKzGtAB9oj+aE2iCzrOMQO24kjsWsKaA7Cgtl8CSem?=
 =?us-ascii?Q?oTXXBwVgM14tDEeJcHAv1XeRA8H/KvE4WMJyFinOeYTyvxNTrMN5zeQSUixp?=
 =?us-ascii?Q?ncR5TQ56B+FbhTyOE+vM978jvwdWw/tF7w0Ki/st70Je4S/bFa3dVIUUmpJE?=
 =?us-ascii?Q?SfK4ORCKbJumTy3QQw/uCIRvTQlko6iVEP84ahkD21YGirYk+nkXbJU6AO1d?=
 =?us-ascii?Q?GR7jWUuQmhs1CztKo0Ui8fFOeMuU6sUZheGjk2d6PuqeoJAnz8R2UDUSrLno?=
 =?us-ascii?Q?zmwdVscwIJ9J57d1kFnv38kD0rKJbBuIdD7yJfxRqpmSwdvGCVG6RYGBCujy?=
 =?us-ascii?Q?zSvUKf6v9/9m7iG888w6AWi7C4XDWuvvwqR24XozBP745Evjbx+8S4ABQHiP?=
 =?us-ascii?Q?MDTZqr7m9sznAnOdUTxmFzqk4yqesWD1UTLre4bC+ZpOpUKbfrvd9vzcKr+/?=
 =?us-ascii?Q?eWTHoyBx+UuTJQmBrWiNuOrSRsYZt4yUStPohtDiJgwSEeACJK7FHDFKkqeo?=
 =?us-ascii?Q?XXcVO5MEW3jiSEKNAS0nyn5rBl4B2hnky/9ulcMjiWvsJIuSAiClBK8lTA+7?=
 =?us-ascii?Q?Bm7rZA6tRxF9RwL9ozgnTtOZ70YwWteblLurpelj50uC5cdGAnEHo+o4GRE2?=
 =?us-ascii?Q?YDukGqGsGl32kJBVgxINiqpToHpb6xjxJiEM?=
X-Forefront-Antispam-Report: CIP:216.228.118.233;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge2.nvidia.com;CAT:NONE;SFS:(13230040)(82310400026)(376014)(36860700013)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2025 09:26:22.8935
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b886f8f7-1660-41a5-c53c-08dd895b679d
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.233];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: MWH0EPF000A6734.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF0C60B25BF
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250502_022630_047071_5AB63F03 
X-CRM114-Status: GOOD (  16.80  )
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

When transitioning from USB_ROLE_DEVICE to USB_ROLE_NONE, the code
assumed that the regulator should be disabled. However, if the regulator
is marked as always-on, regulator_is_enabled() continues to return true,
leading to an incorrect attempt to disable a regulator which is not
enabled.

This can result in warnings such as:

[  250.155624] WARNING: CPU: 1 PID: 7326 at drivers/regulator/core.c:3004
_regulator_disable+0xe4/0x1a0
[  250.155652] unbalanced disables for VIN_SYS_5V0

To fix this, we move the regulator control logic into
tegra186_xusb_padctl_id_override() function since it's directly related
to the ID override state. The regulator is now only disabled when the role
transitions from USB_ROLE_HOST to USB_ROLE_NONE, by checking the VBUS_ID
register. This ensures that regulator enable/disable operations are
properly balanced and only occur when actually transitioning to/from host
mode.

Fixes: 49d46e3c7e59 ("phy: tegra: xusb: Add set_mode support for UTMI phy on Tegra186")
Cc: stable@vger.kernel.org
Signed-off-by: Wayne Chang <waynec@nvidia.com>
---
 drivers/phy/tegra/xusb-tegra186.c | 59 +++++++++++++++++++------------
 1 file changed, 37 insertions(+), 22 deletions(-)

diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
index fae6242aa730..1b35d50821f7 100644
--- a/drivers/phy/tegra/xusb-tegra186.c
+++ b/drivers/phy/tegra/xusb-tegra186.c
@@ -774,13 +774,15 @@ static int tegra186_xusb_padctl_vbus_override(struct tegra_xusb_padctl *padctl,
 }
 
 static int tegra186_xusb_padctl_id_override(struct tegra_xusb_padctl *padctl,
-					    bool status)
+					    struct tegra_xusb_usb2_port *port, bool status)
 {
-	u32 value;
+	u32 value, id_override;
+	int err = 0;
 
 	dev_dbg(padctl->dev, "%s id override\n", status ? "set" : "clear");
 
 	value = padctl_readl(padctl, USB2_VBUS_ID);
+	id_override = value & ID_OVERRIDE(~0);
 
 	if (status) {
 		if (value & VBUS_OVERRIDE) {
@@ -791,15 +793,35 @@ static int tegra186_xusb_padctl_id_override(struct tegra_xusb_padctl *padctl,
 			value = padctl_readl(padctl, USB2_VBUS_ID);
 		}
 
-		value &= ~ID_OVERRIDE(~0);
-		value |= ID_OVERRIDE_GROUNDED;
+		if (id_override != ID_OVERRIDE_GROUNDED) {
+			value &= ~ID_OVERRIDE(~0);
+			value |= ID_OVERRIDE_GROUNDED;
+			padctl_writel(padctl, value, USB2_VBUS_ID);
+
+			err = regulator_enable(port->supply);
+			if (err) {
+				dev_err(padctl->dev, "Failed to enable regulator: %d\n", err);
+				return err;
+			}
+		}
 	} else {
-		value &= ~ID_OVERRIDE(~0);
-		value |= ID_OVERRIDE_FLOATING;
+		if (id_override == ID_OVERRIDE_GROUNDED) {
+			/*
+			 * The regulator is disabled only when the role transitions
+			 * from USB_ROLE_HOST to USB_ROLE_NONE.
+			 */
+			err = regulator_disable(port->supply);
+			if (err) {
+				dev_err(padctl->dev, "Failed to disable regulator: %d\n", err);
+				return err;
+			}
+
+			value &= ~ID_OVERRIDE(~0);
+			value |= ID_OVERRIDE_FLOATING;
+			padctl_writel(padctl, value, USB2_VBUS_ID);
+		}
 	}
 
-	padctl_writel(padctl, value, USB2_VBUS_ID);
-
 	return 0;
 }
 
@@ -818,27 +840,20 @@ static int tegra186_utmi_phy_set_mode(struct phy *phy, enum phy_mode mode,
 
 	if (mode == PHY_MODE_USB_OTG) {
 		if (submode == USB_ROLE_HOST) {
-			tegra186_xusb_padctl_id_override(padctl, true);
-
-			err = regulator_enable(port->supply);
+			err = tegra186_xusb_padctl_id_override(padctl, port, true);
+			if (err)
+				goto out;
 		} else if (submode == USB_ROLE_DEVICE) {
 			tegra186_xusb_padctl_vbus_override(padctl, true);
 		} else if (submode == USB_ROLE_NONE) {
-			/*
-			 * When port is peripheral only or role transitions to
-			 * USB_ROLE_NONE from USB_ROLE_DEVICE, regulator is not
-			 * enabled.
-			 */
-			if (regulator_is_enabled(port->supply))
-				regulator_disable(port->supply);
-
-			tegra186_xusb_padctl_id_override(padctl, false);
+			err = tegra186_xusb_padctl_id_override(padctl, port, false);
+			if (err)
+				goto out;
 			tegra186_xusb_padctl_vbus_override(padctl, false);
 		}
 	}
-
+out:
 	mutex_unlock(&padctl->lock);
-
 	return err;
 }
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
