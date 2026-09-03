Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49FB6C624A4
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 07:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Ix8M0SD+VF87vblpbAqKklyPL1SJQL6kV+2f8CGeHM=; b=j9H+jHw+hDwEnY
	9+31zQFviO5LqZTYgNhEbfdvHozvaJJbn29E0SDQc8Xdb2Z0RyVGQsA3mkXvVrQk0XeiG1HCWWSR/
	AufJpWl2PIvJvuRJdo5yLa60uK2vv1iBW9AXU+K+1XrbOvXnjBIoOLawI0BgYkt7Qn/W66Wr3adOd
	mbpuJ6g7mg62FnXtG0W1iF/QJBFYBgRk3ssaUX1ZpQ7dcGV1AIMArJyzRZIYMGUcXU7QG/sdXyV31
	XqGrLc6lbMv1Crkl977XonnpCUYHobRifXokKmG/vrq5jKSlLcFFEGXfztBvlsF2PswXx8d++DDMO
	JZT7hGlABVIzj4traHRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x21k7-0000000GYrB-4AoK;
	Thu, 03 Sep 2026 07:20:15 +0000
Received: from mail-southcentralusazon11011027.outbound.protection.outlook.com ([40.93.194.27] helo=SN4PR0501CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x21k5-0000000GYow-3UnJ
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 07:20:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HNBI4LFVCQA6es57OvMpuqOsZyVell0kG/GxcvNib7EECo10YM3jFq30azwLv9YINdLFWkuJ8x3BxQRovy/rFBe9AFoBpN5KgQjZSrPH9Rx0iTOk7gPDdd6DNRf7+pXDL8QfFj85zIBGYn9BU0b4z8GfRjBl+ZO0vNwtpKvJDGTdo86IHnuxr0sSSCIcGWex/bDDrjfru082NeUe2/VA2xaWsDjRCkyi9El5EwEVVIScp/VDuAJ1bHxxXgYtjEflGLTcqhddZYtZbxtIl6UJIhZN9ZJKoLHZYbbVDtctsSxTOTgT3kWas++DuK0hjo911ouYyGqws7oEF4J1UsBfmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f9DBKA1pjbQXpXyuFUmj752f19aaqrMjQKQEEJSGS5Q=;
 b=qSpPIWw4VYyAsrCoD3pmUc8xZ+ZkOOusp/pQ9djZZcyileOtfXuJy6VMHfRjlSMe+r6qF/p2yPSL9cM978xvXM76BvzgCdzGhMy6TDlKdjcl78iVeCv32eiZTII/Ibp/fROcqTRKgMNM9zbGec6s9TA8rgWtsFCJ+E/nxtH9A8a7BrTk1lZWmSML2+WvyIL84vIAZY92XVOH5V1KYLdX1Hs6xbV9UV7dZkUngWi8tnsOu0P8fgiZPiDvG8dl9HMiWx3Lg9cI3vnfreha2JCH5EFqMZSZBsm1UuxusAbmSRygYuRPqmjYJ/mT8npZcLbgxpZZx+m92sIc4SVtgIxMMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.232) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f9DBKA1pjbQXpXyuFUmj752f19aaqrMjQKQEEJSGS5Q=;
 b=UqVkZk4ergVHxwdXY83sUkMtL8YCX9Zflizti63aiGqppQN8VzM8Fya/gVV7BHG8bLaT9Tuthwy0sYtyVI91XuzWGYdJf25W7Q3d389McoPNBmrSyAFi2fznSn+t3SeILLv3rPx21bpRZNI/THqOINBdmJHM0U1D0g4kfR/zci8vUC/POhgZ/KAdj2l6uMnUPiKuFnM+frjh7P7WX9JwjgQDK6vacxAKnyYhE9m2TUIkt7LG01bxd853IB5AOo/oR4iIGDpK6hS3VCTXX5UI/BSUxjfZEz2DwetoCSwCpt3ks9nirBcouGKzZgiAMpq1TPem9jJm8h8Rj7jBGwrWGQ==
Received: from CH0PR04CA0072.namprd04.prod.outlook.com (2603:10b6:610:74::17)
 by MN0PR12MB6150.namprd12.prod.outlook.com (2603:10b6:208:3c6::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.360.13; Thu, 3 Sep
 2026 07:19:57 +0000
Received: from CH2PEPF00000141.namprd02.prod.outlook.com
 (2603:10b6:610:74:cafe::9) by CH0PR04CA0072.outlook.office365.com
 (2603:10b6:610:74::17) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.382.11 via Frontend Transport; Thu, 3
 Sep 2026 07:19:57 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.232)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.232 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.232; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.232) by
 CH2PEPF00000141.mail.protection.outlook.com (10.167.244.74) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.382.8 via Frontend Transport; Thu, 3 Sep 2026 07:19:57 +0000
Received: from drhqmail203.nvidia.com (10.126.190.182) by mail.nvidia.com
 (10.127.129.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.46; Thu, 3 Sep
 2026 00:19:45 -0700
Received: from drhqmail202.nvidia.com (10.126.190.181) by
 drhqmail203.nvidia.com (10.126.190.182) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.46; Thu, 3 Sep 2026 00:19:45 -0700
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.126.190.181) with Microsoft SMTP Server id 15.2.2562.46
 via Frontend Transport; Thu, 3 Sep 2026 00:19:42 -0700
From: Wayne Chang <waynec@nvidia.com>
To: Vinod Koul <vkoul@kernel.org>, JC Kuo <jckuo@nvidia.com>, Thierry Reding
	<thierry.reding@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, "Neil
 Armstrong" <neil.armstrong@linaro.org>, Manivannan Sadhasivam
	<mani@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-tegra@vger.kernel.org>, <linux-kernel@vger.kernel.org>, Wayne Chang
	<waynec@nvidia.com>
Subject: [PATCH V3 1/4] dt-bindings: phy: tegra-xusb: Add support for Tegra264
Date: Thu, 3 Sep 2026 15:19:34 +0800
Message-ID: <20260903071937.533646-2-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260903071937.533646-1-waynec@nvidia.com>
References: <20260903071937.533646-1-waynec@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-NV-OnPremToCloud: ExternallySecured
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PEPF00000141:EE_|MN0PR12MB6150:EE_
X-MS-Office365-Filtering-Correlation-Id: cf6526b9-8f71-4f67-c4ee-08df098bc286
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|36860700016|23010399003|82310400026|3023799007|10067099003|56012099006|11063799006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: jIheqVyJTQO6LTuqySi/NuAE8Llb1wjqAyap9i+UhwgMeCwgWFErxIu7t98SIowhi5t9vLWLxKl3gOz9aj6IxLlgi+5upByK7a3AzIfYhdWcRU7FMbdde41IGRnFdLWCBGiMaecT6E7Bc9uC3c2nZExIGnYwARq9QGUj6m/Q6wdJHAuIeAsapcRYP3KELNX63BIuRuuugL5yRA9vfrzoZWzWQ5zBxXwLK0EYoYZb6GyU6ypTMGY7szJmX5j1nTJrTKEaRxfmi+RS5k7lMxW0ypbL7sQp3uDqzUCY7GGwhqv9JEFiNkegjeo954c6VlgbHjpdwd0SRGQu2HItv1qwsucfpxZwWzIaiF+DWGJd+Y3shjT5lIC2jQCJR1jO2oaKQ367czqWanZPl11z11jvi6iCOV3UKhbGFFAGikq9sVuUN80ZR8gMfGdf4jvmFOAgsK+WW1E4VnAwjXqb/R4uNQFUnPjiDHrRHsFmPtxsCZYPMR6mLPzHqUpoV3K/1RkSzwJbdKzxyu4Li0+L6EO/8r5bmWtYFcqv8Fk9a2zgk6DhHwkCIPFy7nX4NjJLeYPbCZ5m6DUQYWJ79PQivd/cDYtOd+LC+KxRh+guF4Q0uf7QkhDLGbYLkiHMQ+pG2j1vaGHFpIv7dC8hiLKq+hhrBrJFEJfyZBjPpUbU6jjFWplM/knDd51My6tKB7+tw5BDkqYdp5ISangf3lBMo79OAQ==
X-Forefront-Antispam-Report: CIP:216.228.118.232;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge1.nvidia.com;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(36860700016)(23010399003)(82310400026)(3023799007)(10067099003)(56012099006)(11063799006)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: MmTZEplofnC0/bj2xAAcsW4Wbq7Rz57VLtB9Vn3bp6X6GS2zivU2jVT66QIpAJ94j5XvxKvs8njekBBU4ptDmlkOXRdvqKptqBOVZH0GT16zbiLMJJkkKH+TdWXpHQsFW60stR2rN+nwGpVC9XZQ/PZlQk697/IeB2qG4OOsa2GGiaiJILKSRo3i8rpTM2QCGS/Br/NJwQjZnEvna4qbc8DCyRKDJKt8w5Vft9NwDOYqfLpBV6zVADhhKZZ1kX74FVosxfpWDtInq5jHRl7q2fu74wk4ExE9rHSSUpIx0AQ9Ndm0Ojh2Quz2hhjM0CrPPv5xPnrlw85ehrCqeTf+chTIEGnMsCJ+iz6n8pqR6vr95mfbp9KvdNnMcOautqNoll/EuS/dbnsVoR1f7v/RFgKUKaNMhs20Vso8r6XRfFGO4reut7hJe/RHq2Beq5jj
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2026 07:19:57.7138
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: cf6526b9-8f71-4f67-c4ee-08df098bc286
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.232];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CH2PEPF00000141.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB6150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_002013_870630_8EAC5F4C 
X-CRM114-Status: GOOD (  10.42  )
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

Add the compatible string for the Tegra264 XUSB PHY.

A dedicated compatible string is used instead of falling back to
nvidia,tegra234-xusb-padctl, because Tegra264 is not
programming-compatible with Tegra234, even though they share the same
DT property set. The driver selects per-SoC data from the compatible
string, and Tegra264 differs from Tegra234 in at least:

- Tegra264 uses hardware tracking mode (trk_hw_mode), while Tegra234
  disables it.
- On Tegra234, CYA_TRK_CODE_UPDATE_ON_IDLE needs to be cleared so that
  the calibration values can be captured while the controller is
  still in reset. Tegra264 does not require this, and the
  corresponding handling is not even present for it.

A fallback of nvidia,tegra234-xusb-padctl would let an OS that only
knows about Tegra234 probe Tegra264 with the wrong programming
sequence. This is also why Tegra234 did not fall back to
nvidia,tegra194-xusb-padctl in this same binding: the DT schema is
shared, but each generation needs its own compatible.

Signed-off-by: Wayne Chang <waynec@nvidia.com>
---
V2 -> V3: Add rationale to the commit message for why Tegra264 does
not use a fallback compatible, per Krzysztof's and Conor's review.
V1 -> V2: No change
 .../devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml     | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml b/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml
index d8de900a4fce..f6fe3c90b5b0 100644
--- a/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml
+++ b/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml
@@ -45,6 +45,7 @@ properties:
     enum:
       - nvidia,tegra194-xusb-padctl
       - nvidia,tegra234-xusb-padctl
+      - nvidia,tegra264-xusb-padctl
 
   reg:
     items:
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
