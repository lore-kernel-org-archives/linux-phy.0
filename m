Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30916C43217
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 12:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1iI0RsQ3KnK11tHWX+aSwGIHTOW8sVtknPTz0VaB36Y=; b=dNXshm8MAMH5mg
	YlUB/XhN2XOgqia0ZK5qI5RnWznXkWmbUavC6n6HC/qOBh2HbD+qxGqKAXLRRdXL23mrt8hXpvPVZ
	qS7aT7Qi+jw5/9plBK9meV48xqHi3utGxHwa6+V+A8lLn5aUo94RU2pqN9v+I7zSqw3HEIlG+v04H
	cJNvllbs1sKaLlg3ezLrnNIfSlEUJUi3jsYKQsVJcAxXY3C4f7WLPu4+6rwc/ihs9bM+ZGUsjJxOj
	Hg6CJc6CrK7IHMK//OLModm4rx0m5i5EF8izFZEbQJxTX0TONOqyQjDVZoE2caHUk5R8rfvX69qBH
	MWIadX3UB9gs67yfhYFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouYmH-000rJ7-EF; Mon, 14 Nov 2022 12:41:29 +0000
Received: from mail-mw2nam10on20605.outbound.protection.outlook.com ([2a01:111:f400:7e89::605] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouYmE-000rHJ-NU
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 12:41:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q7Vscf+MFzZwDVt+BTGKDCNdCiWo2vEcKobvodUxuhDCqrxu5+tksfqRucAra7f7EyGza84AXLaECC/DMg2hRK1OPuzoTZEhZxIUmHgIL4+Bwkq7UOWCIWhKKI53ANr3oEeEh013VU6jvII36gk4R4v33qKbY+D+SrhN6aiDcL3bD8Ud8+QHPfjbNlgeXXYwVbML0z7Z1Lx6PuT+ZuVAWZo7B4KBqnTnIPqOCcwfj7ecaELDWgCZWlcNUF+STbeiy74U/nN7KVJQTdlJQ1HwciX7ecfvjeljPEvlLvOybm0aO9Qwh6aOPr+aFykUbZBO7DM4RCAFcW1OceUkgwj/Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J0ZQZ2J4ZCZ+q9t9NeKfke1u9CPG6vht03r6vW6WcO0=;
 b=LAs9twgdE4k+IV0tfW/vmXlfsV23sKXQlgRcCZGlftO2sG5WAVLwEaMg24MuB+NT2YgO6bOfoFz4iTgYV6Gc4zuYRxnFNuPu1OelqlXX11ug1lnqltwnfQzYu+B2R6uKU5oZTQv1lgkFuHEg0fLBFgEusXiVdrgGrEXfKZR347OMVmIJCjzam+UHvngmxj6j/Xkni7kv5Tivo6UZtSEzu6RC2h7FglzYEpbz4GkJkjsrjbLQCBKFcM2yx5HUPZKkZa2BLHgIIEJQgnRnaOLqHlwoe1+0fcO6oTus2/orGdsW1JXoMeOq4DbCIyceNb373NC6W4jf1ynqhlKXKcje8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=linuxfoundation.org
 smtp.mailfrom=nvidia.com; dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J0ZQZ2J4ZCZ+q9t9NeKfke1u9CPG6vht03r6vW6WcO0=;
 b=Jps1dGqyh8tgvYK1vM95oBZnmygHEibWze+ZJkkyrvLA5VZPNja/c7XO1DnP8Dzj2oK9WgUX1Uyqqp88UpsxHkld/VMfHKb5WYykyz2pyT6P3TRsf2rp1L/V88/E04iYP1/yh0e+l6ltQvcVq5mtMbztdJzZjyQp5RR6Ux+i5/5Fx7dOy0i+sZnyn8Ej8iJNgcCXWru3RoKWG1KIaTOGC63pA1K1MySIDZ7BxnGYBp9VYuhVmA67oHUmCOANRGXR+I2JTFRDwtZN2CpmUurGZxgxoMYckFaK+Zsoul3DcoRxIsfbhrdwsGx5Wnye7zzNFnutVHhlcIqirwN/Kv/HUA==
Received: from BN9PR03CA0248.namprd03.prod.outlook.com (2603:10b6:408:ff::13)
 by SJ0PR12MB6944.namprd12.prod.outlook.com (2603:10b6:a03:47b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Mon, 14 Nov
 2022 12:41:17 +0000
Received: from BL02EPF0000EE3C.namprd05.prod.outlook.com
 (2603:10b6:408:ff:cafe::48) by BN9PR03CA0248.outlook.office365.com
 (2603:10b6:408:ff::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17 via Frontend
 Transport; Mon, 14 Nov 2022 12:41:16 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 BL02EPF0000EE3C.mail.protection.outlook.com (10.167.241.132) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5813.11 via Frontend Transport; Mon, 14 Nov 2022 12:41:16 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Mon, 14 Nov
 2022 04:40:59 -0800
Received: from rnnvmail202.nvidia.com (10.129.68.7) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Mon, 14 Nov
 2022 04:40:59 -0800
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.129.68.7) with Microsoft SMTP Server id 15.2.986.36 via
 Frontend Transport; Mon, 14 Nov 2022 04:40:55 -0800
From: Wayne Chang <waynec@nvidia.com>
To: <gregkh@linuxfoundation.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <treding@nvidia.com>,
	<jonathanh@nvidia.com>, <thierry.reding@gmail.com>,
	<heikki.krogerus@linux.intel.com>, <ajayg@nvidia.com>, <vkoul@kernel.org>,
	<p.zabel@pengutronix.de>, <balbi@kernel.org>, <mathias.nyman@intel.com>,
	<jckuo@nvidia.com>
CC: <waynec@nvidia.com>, <linux-usb@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<singhanc@nvidia.com>, <linux-i2c@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>
Subject: [PATCH v3 00/13] Enable USB host and device functions on Jetson
Date: Mon, 14 Nov 2022 20:40:40 +0800
Message-ID: <20221114124053.1873316-1-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-NVConfidentiality: public
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF0000EE3C:EE_|SJ0PR12MB6944:EE_
X-MS-Office365-Filtering-Correlation-Id: 52f8c09f-e25e-45a7-7378-08dac63d85e1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	pcnPuaKZZSpUKWbNz/ejS2sF8R4R1Jb4mQRbcc/nySaL5BA8wdZ413ILhGx/OwJAg6RZrIvj6VVw4vjYf9KbgzgM9b+8zae5vKJOB8+JilpFZx+tUt8aNSLAXkGSj+vPmngKRXvstgfsqqWTKtv2pzoHGxz0PU/raFkZyD+xjkjtG7A73vdaFayJJhB39FPU3SdD1622bRWfMKWXRqskdvcagCuGyssyevw8s0/2P7nh/b2TAaCUTGXAIJSfuxFXKhYOhizFXzNsicknwXN1j69uQ5NTaMzZ7B5T1qr0YkG/JhkD2/+/wzW5hbJbXaIx4+Dc/WKqsmHk6OIP+KX+oWVL0KmTuqmhNrd7YmGV/9ZRqvNAyWqVQPNfWksvvkepYFXYa4Ik2g85E/5T0QX8Ga2J8EBlxMZ+48ZSw3IuFrVRx+pwk6GyBMZI3YhiDBk3DNDf5XipjJFUX3CBRKpAme7Gf3aCWafukbGGZQQI/wYnGCiiQigSh5lHPHn6e0bGkaPMIT4ZnT651aH1bKmR6DbOrDfsek62DA7iBdklHhzcZ+iRpsmSpWcCuFnPZPvw2zqSbk7fhuHcpGu1U3m+IvKJU1o2ihBe6ykEWmz3Ga3dkCOLaRqv+qrG5Pcg5+par8w69OYHVGhRHVrYEQldbt97Om4M8WsZ5R55op2N2EL3StOqdE6rrCFcwOPU5a91ZsS586btuuYdbrByCrpGb+hMAImvMEkjfQgDBCjG1r66+d0uWQI3w38WYg9iGvpsrAoLFf6b7oKRT4jGmNL9TB7bso25gsIm3Ab/9vhe6RQDXoI3L/gpH5yioKURmZ/O7EjqUfJidTUKnuTZJoosKQDK671AsM64bUESKGPQUcWqoloRb7AQ2DFsYgG+mrVp
X-Forefront-Antispam-Report: 	CIP:216.228.117.160;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge1.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(376002)(39860400002)(136003)(346002)(396003)(451199015)(40470700004)(46966006)(36840700001)(6666004)(478600001)(36860700001)(40480700001)(54906003)(6636002)(110136005)(966005)(186003)(426003)(2616005)(7416002)(8936002)(36756003)(41300700001)(336012)(2906002)(26005)(7696005)(5660300002)(47076005)(70586007)(70206006)(316002)(4326008)(8676002)(40460700003)(921005)(83380400001)(1076003)(86362001)(82740400003)(356005)(7636003)(82310400005);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2022 12:41:16.5764
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 52f8c09f-e25e-45a7-7378-08dac63d85e1
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.160];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	BL02EPF0000EE3C.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB6944
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_044126_791278_15C9FEC7 
X-CRM114-Status: UNSURE (   7.55  )
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

The patch series enable the USB host and devie functions on Jetson AGX Orin
and depend on the following change
https://lore.kernel.org/all/20221003125141.123759-1-jonathanh@nvidia.com/

Sing-Han Chen (3):
  phy: tegra: xusb: Add Tegra234 support
  usb: host: xhci-tegra: Add Tegra234 XHCI support
  usb: gadget: tegra-xudc: Add Tegra234 support

Wayne Chang (10):
  dt-bindings: usb: tegra-xudc: Add Tegra234 XUSB controller support
  dt-bindings: usb: Add NVIDIA Tegra234 XUSB host controller binding
  dt-bindings: usb: Add binding for Cypress cypd4226 I2C driver
  arm64: tegra: Enable XUSB host and device on Jetson AGX Orin
  usb: typec: ucsi_ccg: Add OF support
  usb: typec: ucsi_ccg: Add cypress,firmware-build as a well-known regex
  i2c: nvidia-gpu: Add cypress,firmware-build as a well-known regex
  usb: typec: ucsi_ccg: Remove ccgx,firmware-build property
  i2c: nvidia-gpu: Remove ccgx,firmware-build property
  phy: tegra: xusb: Disable trk clk when not in use

 .../bindings/usb/cypress,cypd4226.yaml        |  86 ++++++
 .../bindings/usb/nvidia,tegra-xudc.yaml       |  24 +-
 .../bindings/usb/nvidia,tegra234-xusb.yaml    | 159 +++++++++++
 .../boot/dts/nvidia/tegra234-p3701-0000.dtsi  |  48 ++++
 .../nvidia/tegra234-p3737-0000+p3701-0000.dts | 175 ++++++++++++
 arch/arm64/boot/dts/nvidia/tegra234.dtsi      | 170 +++++++++++
 drivers/i2c/busses/i2c-nvidia-gpu.c           |   4 +-
 drivers/phy/tegra/Makefile                    |   1 +
 drivers/phy/tegra/xusb-tegra186.c             |  64 ++++-
 drivers/phy/tegra/xusb.c                      |   6 +
 drivers/phy/tegra/xusb.h                      |  22 ++
 drivers/usb/gadget/udc/tegra-xudc.c           |  17 ++
 drivers/usb/host/xhci-tegra.c                 | 270 +++++++++++++++---
 drivers/usb/typec/ucsi/ucsi_ccg.c             |  22 +-
 14 files changed, 1014 insertions(+), 54 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/usb/cypress,cypd4226.yaml
 create mode 100644 Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.yaml


base-commit: 094226ad94f471a9f19e8f8e7140a09c2625abaa
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
