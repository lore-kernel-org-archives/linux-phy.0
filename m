Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2300606A327
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 16:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=j2XTeoi4;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.a=rsa-sha256 header.s=selector1-NXP1-onmicrosoft-com header.b=vBFSsHlD
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=KDobNDktv3UsOXMA7VYBgoA2nlyQb+IubTqVcwk/RBE=; b=j2XTeoi44AfFOGwVa1rz1F/UdD
	KjwjX5PlzMHeduhWHcPAh5XsHTMS+IDUQGNTHBN6I1FLuu0EPylAe/aZAW0WMl7lOFHVIH3RMylq4
	OuSdsw80EuLYtAe7NFlUASxWxiGtXwrTgYldXCgeyzMUWaESgZeA/0gfvfBmdQDTh8OVSARYcbU0A
	WzPybl4jbzw8sTGu+0bHUq2nvILHJGBDUfZKXN+EvsUStqROuomV/RQuXiy+NDGU1uwIQsfUUSJHO
	bxukkn+DGALAnFJJ/nboDewJS+Qmon5JjLAE9C9uLmB9Jc0pjEio7TaBnBzddueGuEL5M0D86GoUv
	UzXWRJZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVXLC-00000004GhE-2iXf;
	Mon, 23 Nov 2026 16:56:30 +0000
Received: from mail-northeuropeazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c200::5] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVXL4-00000004Gdt-1umM
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 16:56:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x7NGxfT6RYlBPMdGH8M/pBzhNa4PGzBe6IG3WqMGwxO5hZrSyJBofevWmskuusG47LRzpaiMGNBV0Qri4MI13y53x/cpgPhv7u9RdnlVgFxLmwsOIeXikbqwSuz/RudcIL1heh+xLcPBwyTf6vP8HG91fu7tjMo9VkOQBdybMhnXBcezwbUl0Mlt5YOGX4hxuXqD5xtK90nEIDxniBzLMttLZyrJJg0qHvQhIaDTuv93IboeusuWXJkX3Rc52F4Q+DfaqNrDo1bB/7xixsqfZjAVNOWPXijKSmBOHjJQgXRKjDicorqGs2z8F7Wtj4Csfwm/0fyrdMc5iMZxkiqn/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FV4g8wxHUrsaxZ8fea1wrl/W1FjlSngRQABDNLf4fFI=;
 b=hKGw89F/x+QTcQrQivkkJMovcCX50NQ+XNegkf10kIZj+va/MQ/ODgV/tSzB13P/h6DkGAIm0l6BXvnvxG7gaG9mP+0DLQ5FBMbr8W8sW5P4jTUdzQ4a1neUwREs0PKwYv5ZdsrEct7e4DA7//tMTbHG3bf91ZCbDlEBuAeEjZDjhnYQJtCOSw0v9wRmb+Bee+jTxaUWngzPjX06/aQRh2jOoMSL4gdQrny8WnkhHghwEy5HW6L6d5b62ecutnsrn5g6hNbkjzOmXnGHCCeJwdUE/b7sQL/arKoEzJ+LTiaNqWMrEnHu1si31GQByWSCHKEuiSdbf9cq7HhksvrPuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FV4g8wxHUrsaxZ8fea1wrl/W1FjlSngRQABDNLf4fFI=;
 b=vBFSsHlDXXRJPBvJ9JBXvaCPok6gjT0veAeUxHqDL4w6gPgNXXZ8QvCqaHCZCxVXu+epighlnoe7UiXL34bLdMTEDMJHK2RaIdtqfv7O4nW7aRN7gzxAx3xii0eQWbdoMPz/SZ1I1nugYMyRNiKdheNuV9ceLl9lKjKyPI1FAhN3tHmiVCAq9OWgeEMUrlfqKjNRoH7uodzg86NH+JwBHECfj7T37aYeDm3Q2+VAR79Ww1tZl+NEOdZp3gRkMqFIef9YaMKqd83V4T2DRAHr5toVYd1MQ5cTHyDaAOYn+tCtyVsG4sX/RwnATRjLD5ix1gpu2CX28GRV8cngsu0ynw==
Authentication-Results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from MI3PR04MB12438.eurprd04.prod.outlook.com (2603:10a6:290:76::14)
 by AM0PR04MB12001.eurprd04.prod.outlook.com (2603:10a6:20b:73f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.639.14; Mon, 23 Nov
 2026 16:56:18 +0000
Received: from MI3PR04MB12438.eurprd04.prod.outlook.com
 ([fe80::c715:c32:8bb1:b70b]) by MI3PR04MB12438.eurprd04.prod.outlook.com
 ([fe80::c715:c32:8bb1:b70b%4]) with mapi id 15.21.0639.012; Mon, 23 Nov 2026
 16:56:17 +0000
Date: Mon, 23 Nov 2026 10:56:06 -0600
From: Frank Li <Frank.li@oss.nxp.com>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
	Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Frank Li <Frank.Li@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Niklas Cassel <cassel@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Abel Vesa <abelvesa@kernel.org>, mhi@lists.linux.dev,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 05/11] phy: qcom: qmp-pcie: Add PCIe endpoint mode support
Message-ID: <awRwJi0Wflbuox6i@SMW015318>
References: <20261122-nord_ep-v1-0-6d8839ffa9aa@oss.qualcomm.com>
 <20261122-nord_ep-v1-5-6d8839ffa9aa@oss.qualcomm.com>
Content-Disposition: inline
In-Reply-To: <20261122-nord_ep-v1-5-6d8839ffa9aa@oss.qualcomm.com>
X-ClientProxiedBy: PH8P221CA0028.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:510:2d8::28) To MI3PR04MB12438.eurprd04.prod.outlook.com
 (2603:10a6:290:76::14)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MI3PR04MB12438:EE_|AM0PR04MB12001:EE_
X-MS-Office365-Filtering-Correlation-Id: f7a70988-4684-4215-57ef-08df4982b12c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|19092799006|23010399003|1800799024|366016|376014|7416014|261102123227099003|261028144727099003|261021121427099003|261021123027099003|261022105027099003|261022075727099003|261026121527099003|11063799006|261026140227099003|4143699003|56012099006|10067099003|22082099003|18002099003|6133799003|261009223027099003;
X-Microsoft-Antispam-Message-Info: /9LYR1PgXWUk+hRt2X+R/qjyzeEeVwQGN/wO70VInPIn7YNl6HHIbksdBlSVCVDgXMPNEA1Mshr0hT9MUBNeEB/3uvE5uyEW5WiSotO4W53AeLkHlAlfbDXSobQNmn6KKpsrnmdsViAxKqWGmDun8DpPvakJ3XJ1n9mDqyp2GjJ3HOAx8ypZC5t02w8QfK3JYtEZ6IcHEWp7oiK5mil5aa6O2Vt5rfaoyEI+ji0WElPg1mPRh4qbuoTNPY8XJzDTpE1THImN81Y9MqOJ2I4S/fI2oUoRCKbemNUdUMhDI6Pqrmm+o7jzRziUCa1MqNN6elv6gz1LPywNY3XMeO12KrQ8eIlxzF9o8N2ZewCgev6VR81uIP3KEZJvVt6Su5CjKoJJDqj3FdEFTTlnJXOb2jRcazP2pcyADQvo2I9+qQwuflF68OOeqBBUz0vS7YcROoTtinv0TIcXjqXk8D/Hise9+lBn4e9z+GeNsx/mZVenls9ci46rKZJoFoP0uoNa1bsJiRS9hhH7GbDfFUrlMoJs7Ic/eqp7/cWo1Kvx6Y/qDuaG/IKhAypkbZViENExSHrfB7KSFvbKs9WQ5hhwyow6fMO/Ay+QlpTrqJGeuaGRtMWIlsnQakJd1QkuxJtnUr8+UKgIWPH4Az9ZC7STroFm+RImWMHLBKZU9SRiCNE=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MI3PR04MB12438.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(23010399003)(1800799024)(366016)(376014)(7416014)(261102123227099003)(261028144727099003)(261021121427099003)(261021123027099003)(261022105027099003)(261022075727099003)(261026121527099003)(11063799006)(261026140227099003)(4143699003)(56012099006)(10067099003)(22082099003)(18002099003)(6133799003)(261009223027099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1qFkDgoq93nUS4US3WiYna0QFp7V5r0A56k/hFKwZjyVQm/Hf2qms1R3umbr?=
 =?us-ascii?Q?JZk+eP3fIKBOQrBg4i9vw7Y97S2CNOiCuRJBE7HTdiH+PMf5wboNSBXl0pT/?=
 =?us-ascii?Q?8I8xwzYOE5ytBivFobaSJWKEm4NRsohqg9bIxUfNS6kf3bMUPnf/xAdcFwvW?=
 =?us-ascii?Q?qnKeCw641gdueZiB0RIFKrBL9Tr8LMgWVvD8NVg1yHb+H9ZV+omx/qdUsymN?=
 =?us-ascii?Q?0kEiDlY7HqL/fdqAgel0ZztU90hwE4vAUQyLfxZ7fnfUBDXRhr7LbYssykni?=
 =?us-ascii?Q?qerwLAoh5Txr0ehOfzM3+C0B054u87PolgQVjqMPr3HD1kXC8nb0f6qSeJpe?=
 =?us-ascii?Q?EsOZcv8mml4B701lmTzxQ+Sdcwkun1ChvhU7R90R7Tkfoy3DQxbhI8l5ChIU?=
 =?us-ascii?Q?GCB/MSegcFq9jtaaMxRsbkyRcNBviSXkMRgCy3FzonqJPhm0cnp+NdcTFsx2?=
 =?us-ascii?Q?5YRphxcgHtE6eU/7CBB7RCV1dnVe23e584H3wy/UvsimvsHGC3RgWMyXudTD?=
 =?us-ascii?Q?ogtYAZCUL/YXaONtjS5pxaFHlJeFqnj9mywPufP4gk/2y2L7s6zXt48eO0lX?=
 =?us-ascii?Q?CX8ebsJOxBxV8/fWtsd+4EtSiR9hC1XaXEsuxDv+w0KF4ajCJqzPV1zk43Ql?=
 =?us-ascii?Q?az0ghXkZ3216/QV82OmuSXNUFroKkQmXydbE7osuQZ5SkjgBfE5ODuoy2QrS?=
 =?us-ascii?Q?Zq231ihvVF4raOO+P2uc2wzfJ6K/Q2xlSOD/nbaW0C7D8BZHHpgU3SlCM1lZ?=
 =?us-ascii?Q?V+LJYbcT7W7PxZseyIinrJYRPXBkXOajdY4LpewVPo/Iv89OlCLlRztnvroM?=
 =?us-ascii?Q?7KzlDdHwxG3i8nRr+bFauCziFUD/3OnA2ojCjiWtk2iottO9ZshxSB74iYDm?=
 =?us-ascii?Q?NVYITR7EauHLjwK8NXTyK8dYgPg+ZR9gto3tEM/pegViwpQWqVZp5WQS5ZpD?=
 =?us-ascii?Q?ieNoK6w1ysJOGdg+D9eMlUdp51GA28rOKiFEMAuSTTz5D5x4H/HbmQzmPw+L?=
 =?us-ascii?Q?D/nWjj6Q85z/p/RWKNpypZQ55Wa1/CYiJ4h0Fl0w3nAvPKJJXigYdXLD2kz3?=
 =?us-ascii?Q?h6axW8PbJB5+lfMAfjA0MOKltjJXtiyj+IRfRKgt0sDzanlVscGwrKWMGUQ/?=
 =?us-ascii?Q?/n0tVTSzUshZ4TH5PSGSqTof9GbaHSmCuLA+uK93RV+wIuj56VB1QQaduvW4?=
 =?us-ascii?Q?3/zp+q3+S7TFhQ0v1T9ouxeOpv1ZVQvWmap11j/EVkJyXuLAtIDmNzXhgkr8?=
 =?us-ascii?Q?CysvP+RxOdh8MZKgxhtKNVrafUHPF97ue4g6VavB+C0Zwc9lLF2WwQBxgRiY?=
 =?us-ascii?Q?7nr4CWamYJr0x16ge7yaHTdM/8i+d1Y3mc9yp6P9mV1kNwV30+DoZ2XY81Ry?=
 =?us-ascii?Q?i9bBPJIcuK8bKXUSiGuw9OaUTgTtfhbpMx3jfpSMc566eA8ihiuh0qkKEsYs?=
 =?us-ascii?Q?JJOy1RwbSJ+QXzwRanKHwLC/4fksyD4x+xDv2yzyPYa84KbmXYK08p3qKkWL?=
 =?us-ascii?Q?O8Nn4yg/mAbZAXlaDYTflqvEnr9N00GhbCnaTDXZ4S/sp9+OUIH3YzRMJZWj?=
 =?us-ascii?Q?qaVh9pz9cxBUN/HjM7QVVW5D7jQrPe6VV8P9vlGfWkJiXt6LbifEw3ED00JE?=
 =?us-ascii?Q?/tCQBLAoC70X1993bCBfV8+jBxhu9QIm05Kw6v3EIxJZHdkdOiZRzyVQ1UcJ?=
 =?us-ascii?Q?hDavVCOQJhrb1J60x8Y6mMgT6uc/LxH1P3rvZoNwodqHxkvOLfGdFQdxGWaE?=
 =?us-ascii?Q?aqtZ5xrSf4Mt0ll/JJAR4d17JwN8L9ov5OJqm6rEuMWNN4kypIWO?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7a70988-4684-4215-57ef-08df4982b12c
X-MS-Exchange-CrossTenant-AuthSource: MI3PR04MB12438.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2026 16:56:17.9078
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vnf0VF3nxXwlD/weRncj+JzNO0O1xMmKWTU9j0ehxqYKf0DDTOyzP4NCrTOZ77CP5xghqYyAKDxczsB2kf39/f/F5whonK6hom+3Hbphsg8ix/bEXAma4Ccg+AwYK1cY
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB12001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_085622_536184_F638D76D 
X-CRM114-Status: GOOD (  22.20  )
X-Spam-Score: 0.0 (/)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Sun, Nov 22, 2026 at 08:26:18AM +0530, Krishna Chaitanya Chundru wrote:
>
> The register initialization sequence differs slightly between root
> complex and endpoint mode. Add a .set_mode() op that records the
> requested PCIe submode, and an optional per-config tbls_ep delta that is
> applied as a second qmp_configure() pass over the pll_common/txrxz/pcs
> blocks when the PHY was put into endpoint mode before power-on.
>
> Configs that do not provide tbls_ep are unaffected and continue to
> program only the root-complex tables.
>
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c | 26 +++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c
> index ccdb7748a9e1..21cf6adf7d60 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c
> @@ -13,6 +13,7 @@
>  #include <linux/mfd/syscon.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> +#include <linux/phy/pcie.h>
>  #include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
>  #include <linux/pm_domain.h>
> @@ -89,6 +90,7 @@ struct qmp_phy_cfg_tbls {
>  struct qmp_phy_cfg {
>         const struct qmp_pcie_offsets *offsets;
>         const struct qmp_phy_cfg_tbls tbls;
> +       const struct qmp_phy_cfg_tbls *tbls_ep;
>         const struct qmp_phy_init_tbl * const *pll_tbls;
>         const int *pll_nums;
>         bool port_split;
> @@ -121,6 +123,7 @@ struct qmp_pcie {
>         struct reset_control_bulk_data *nocsr_resets;
>         struct regulator_bulk_data *vregs;
>         struct device **pd_devs;
> +       bool is_ep;
>  };
>
>  struct qmp_pcie_multiphy {
> @@ -930,6 +933,7 @@ static void qmp_pcie_init_port_registers(struct qmp_pcie *qmp)
>         const struct qmp_phy_cfg *cfg = qmp->cfg;
>         const struct qmp_pcie_offsets *offs = cfg->offsets;
>         const struct qmp_phy_cfg_tbls *tbls = &cfg->tbls;
> +       const struct qmp_phy_cfg_tbls *ep_tbls = qmp->is_ep ? cfg->tbls_ep : NULL;
>         int i;
>
>         for (i = 0; i < cfg->num_regs; i++) {
> @@ -957,6 +961,15 @@ static void qmp_pcie_init_port_registers(struct qmp_pcie *qmp)
>                 qmp_configure(qmp->dev, port + offs->pcs_lanez,
>                               tbls->pcs_lanez, tbls->pcs_lanez_num);
>
> +               if (ep_tbls) {
> +                       qmp_configure(qmp->dev, port + offs->pll,
> +                                     ep_tbls->pll_common, ep_tbls->pll_common_num);
> +                       qmp_configure(qmp->dev, port + offs->txrxz,
> +                                     ep_tbls->txrxz, ep_tbls->txrxz_num);
> +                       qmp_configure(qmp->dev, port + offs->pcs,
> +                                     ep_tbls->pcs, ep_tbls->pcs_num);
> +               }
> +
>                 if (cfg->port_split)
>                         qmp_configure(qmp->dev, port + offs->txrxz,
>                                       tbls->port_split_post_cfg, tbls->port_split_post_cfg_num);
> @@ -1179,9 +1192,22 @@ static int qmp_pcie_disable(struct phy *phy)
>         return qmp_pcie_exit(phy);
>  }
>
> +static int qmp_pcie_set_mode(struct phy *phy, enum phy_mode mode, int submode)
> +{
> +       struct qmp_pcie *qmp = phy_get_drvdata(phy);
> +
> +       if (mode != PHY_MODE_PCIE)
> +               return -EINVAL;
> +
> +       qmp->is_ep = (submode == PHY_MODE_PCIE_EP);

feel direct save cfg->tbls_ep to qmp is simpler

	  qmp->tbls_ep = submode == PHY_MODE_PCIE_EP ? cfg->tbls_ep : NULL;;

Frank

> +
> +       return 0;
> +}
> +
>  static const struct phy_ops qmp_pcie_phy_ops = {
>         .power_on       = qmp_pcie_enable,
>         .power_off      = qmp_pcie_disable,
> +       .set_mode       = qmp_pcie_set_mode,
>         .owner          = THIS_MODULE,
>  };
>
>
> --
> 2.34.1
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
