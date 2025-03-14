Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5807AC28B2F
	for <linux-phy@archiver.kernel.org>; Fri, 14 Mar 2025 05:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZtDgdZFs+300rbyfu+O9TiNbDzZzK/S3MaPSuo92+eA=; b=QBm1epjAp79sgo
	7ZRrUacqeJzzsIjeCI975PuyMQ0XBuJ5uyry1j3JwqZwz9nrF1TSN+FiGO540G2uS0kR/9y6EAGTl
	uoQQ6FdQ+okhg8zbsLmXcjfc8RLr934svlgE9m2lJkkkB0yfeNVmhLvycQIoEterpm/DHTiatBYYT
	MxL1Vjdnp5OTQbP7GgMKnhEGYf6fKweQm9hNtdvR56lXUXIk1oI2Id56PzWpRRy+8+/5PZlFEhJjA
	T3phZ522KmEEEd7LhCQQ46cEyoquU8zimi7W4IXxpJc27LGSBS9zdMuH+HNkN3Bl3d64qY1A+wQ84
	fla0az9h3hmnBUf+1S1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsy2W-0000000D8oi-0SIF;
	Fri, 14 Mar 2025 05:57:00 +0000
Received: from mail-mw2nam10olkn20819.outbound.protection.outlook.com ([2a01:111:f403:2c12::819] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsy2U-0000000D8oQ-1DTr
	for linux-phy@lists.infradead.org;
	Fri, 14 Mar 2025 05:56:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r6PfBGDF3Yt0cvVKOiZXN2Tt7CewqSGR7Y2Zd47UivrCXwdbbaZzRlE0ob339X3iVEtTMfKc68afRXzdXPE+HI0lMxuKcpjGlJPR5QQgFAkRFoLcu54wo6YKxZTZZJzLvrcx8VwrGLVaxyWUDqMSMgouBikpLdSzcnw72cZGhL3Bz+mQgwLCWmmcRQrxLEqxDgTiX3/0jNBBZKxmmISpp4hecjdwG2SDEUrw3SEaoYKbXmrTZ5MCfASwSSFbXMwVIBitORSv9XqTeYzCK62C4C2x7BDG29lrJfnqZ43CVGsYkBWBVU/tW24/UpjXrT+MUBThh4A7zHqkLVGKdPHeMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KSYTB0HlHKa1uCDKMWfBr2oMX6vXpaRiLFHCFsWoKMQ=;
 b=GZdDUJkYFWVJ12z/0g2g9aKio9EoZnw8nRZetKN4IQUVDhrqi9V4c4EoLhgi7t36sfk41O03mpHuAVhES0P1SDhSTq0ZeUGfK5ET/1Q+Yw/FGRz2gbHeJcdVGWEV8qLyCFUCDaYczHVzcgBhXV/q9CTNgPXXDDWAFwSBO6nHuoF/6MiXcCrVvE8IcP+Zf4IQuJu2aSqjERYG9I+eEkkaLSfi07Zt5e7Ym/7euuKTB/GVWjEDM57kU+Vz1CZc5rvvO66A4nf46FczuF4BwkPyxA9jkrfIE1uOcMjKLSJGkK/Afw5xoB/34KAPnGOz5hh3FIZJy9TaKuPmGxwnXaKmww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KSYTB0HlHKa1uCDKMWfBr2oMX6vXpaRiLFHCFsWoKMQ=;
 b=ZFr2pdEJZzpi/FPcYaHGfrPExxr2fdCyMLNyNixneM0p2kbaO8MfantbKgHyrf7AJLawqJ6knBVsPtiCqX4bbr8uhPKo5YbhJ/0yQgPV+5lg0OD5teQjp8uH381WLo78c8J0IHm6QwHfe112ib5UoNPhJiEb5ryjFCQzw9e0BgZzgYdy8XegYZjcGFdMsTLHSu38+N+TQ57ec+TZ+nkO/pFiDtkhs+KGcJDrCPUzzXQWZ/5Mv2DjXFSNLu9AMxls2Ymb/np5y9hq/5KGrENApsltcYjauv7sCSzTgn+5epclE5mQu1z7TytTxfP7rhCO3HXZz1rb4feToyoBMlvMMA==
Received: from DS7PR19MB8883.namprd19.prod.outlook.com (2603:10b6:8:253::16)
 by SA3PR19MB7795.namprd19.prod.outlook.com (2603:10b6:806:300::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Fri, 14 Mar
 2025 05:56:54 +0000
Received: from DS7PR19MB8883.namprd19.prod.outlook.com
 ([fe80::e0c2:5b31:534:4305]) by DS7PR19MB8883.namprd19.prod.outlook.com
 ([fe80::e0c2:5b31:534:4305%6]) with mapi id 15.20.8534.027; Fri, 14 Mar 2025
 05:56:54 +0000
From: George Moussalem <george.moussalem@outlook.com>
To: linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	andersson@kernel.org,
	bhelgaas@google.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	lumag@kernel.org,
	kishon@kernel.org,
	konradybcio@kernel.org,
	krzk+dt@kernel.org,
	kw@linux.com,
	lpieralisi@kernel.org,
	manivannan.sadhasivam@linaro.org,
	p.zabel@pengutronix.de,
	quic_nsekar@quicinc.com,
	robh@kernel.org,
	robimarko@gmail.com,
	vkoul@kernel.org,
	george.moussalem@outlook.com
Cc: quic_srichara@quicinc.com
Subject: [PATCH v4 1/6] dt-bindings: phy: qcom: uniphy-pcie: Add ipq5018 compatible
Date: Fri, 14 Mar 2025 09:56:39 +0400
Message-ID: <DS7PR19MB88835F541CBC60C97A818B3A9DD22@DS7PR19MB8883.namprd19.prod.outlook.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <DS7PR19MB8883F2538AA7D047E13C102B9DD22@DS7PR19MB8883.namprd19.prod.outlook.com>
References: <DS7PR19MB8883F2538AA7D047E13C102B9DD22@DS7PR19MB8883.namprd19.prod.outlook.com>
X-ClientProxiedBy: FR3P281CA0039.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::11) To DS7PR19MB8883.namprd19.prod.outlook.com
 (2603:10b6:8:253::16)
X-Microsoft-Original-Message-ID: <20250314055644.32705-1-george.moussalem@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR19MB8883:EE_|SA3PR19MB7795:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b210326-8ab6-4987-ecf1-08dd62bd058a
X-Microsoft-Antispam: BCL:0;ARA:14566002|5072599009|15080799006|8060799006|19110799003|461199028|7092599003|3412199025|440099028|1710799026;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?1z5UeEyaawEe+yoz/HuLDpOt3+1DFOCPAtpkoYjhNQ5BWXKTNnav8dlWX898?=
 =?us-ascii?Q?p/gI2CUCmUpNZ1b5RNOpoMZQLR3CAhCoKq6Bu+bqiflAKPXcPquHhIGFnGd7?=
 =?us-ascii?Q?EvGOTm8qLGZ9jRFjsrGsxY2Bhs2xRSIA7MNlExjnDinqHXfXWg+LV3Fd/j2U?=
 =?us-ascii?Q?PU8+ws+LP2DtRlztUL+Tn71EN8H61q+ltYzJ4/Pa2fAU+qtBE3k7Ex3vK5xC?=
 =?us-ascii?Q?KdUa1tEfzRff/mffNilrMhanVGuqJJftYtcCOd7iOos1bE8L8Xn4TubTEiTO?=
 =?us-ascii?Q?A8OmRAuqFNWsa8kwR7beWLO4xtYXPofkSFwajty6a1CLhPxviIYTW1pNtvdB?=
 =?us-ascii?Q?nY5rN8ULtgIUPya25GWJS/tDEnXpM4C4tT9h1TxEORMTKc556C2RbEaRavIJ?=
 =?us-ascii?Q?6sTdoCP2oLNCT5TxQ+GWcH7ShlSZ7qe2awr8+2NcCTVbTqmNvrLSROtq0s1t?=
 =?us-ascii?Q?Gmnw7fz/4jKpL490nwiykA+RxN8vSa2E56u6SFr3OrYtyhlrW0jZDO+Dz5ha?=
 =?us-ascii?Q?fBrLwjlPYWnwk6YaJp7ER/izlJLMmQXNB16PicYYLTGZjFJUyszVu9iGlDr4?=
 =?us-ascii?Q?kUELO+tL/7mTn2E2llJG/cdr0AdUjChAOiwlSbExpBdnLgVO1p18K8IuS2+o?=
 =?us-ascii?Q?aTZQT7wJbq/vM/xu9Ufd6gAx09aXlvLQjUTZY2Njhydf2MK4nhLohzmAmwl6?=
 =?us-ascii?Q?q7EtztDEPerGbjKrsgc1sGOmdZHFKYkIe7S41Xa3ZJ5OsY6yoLJ1xTvoK0uq?=
 =?us-ascii?Q?sfh91U+AjqyBxsh7z1ApzruuDHbWwO7ve25vy8Tiy8OBWF1TiFhpgJpHAPIj?=
 =?us-ascii?Q?gIUipXSjApEa2PRG6EkX9moONIOI1vHNEM5n4PpRN4a0XWnQSF3So55icuwH?=
 =?us-ascii?Q?/QqDd/KzbY0pb3HFvVZRSKebDwg4t9VwXAVddduqukifouHwTW1H9b9VyAGR?=
 =?us-ascii?Q?QGe+27vZpt4+MEy/l1V2tAiuns0nw7yFtJSnhDwxQEEmZQ1ixaLMJeH+L3BB?=
 =?us-ascii?Q?1qHT4EJVhDiVFn7QgAfbcEDbjfxPXvGwk0x0HfTK+qmUHUrG0RuIn/Iag9Yi?=
 =?us-ascii?Q?gCuUmrzINiSh0rwSYy8Id9Y/DdRwt20vMZJJb13Ia6ckcqAH5Ak=3D?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wgmhk7W9cvzqO7u+BsOYT5z59nT5MUPMokwRUz6KpSRKtFDbxZxxc271qXhd?=
 =?us-ascii?Q?CZacCo9cuJn3maOKkE7fbweDXbDzI+0fzm+R1YsZzicSukJ5fc8+U8CHGHF0?=
 =?us-ascii?Q?YViGjtNOaSUlJTFjyazCkdQDhyQJGRLhPd+gkw6tT9+T6Z2v7Zm+yVbcTIfd?=
 =?us-ascii?Q?tttph7M86Ymmj4tzO+3YRv64jnrt8lKHLOLvWnb2K0RLkSVNS33KgvK1C9JR?=
 =?us-ascii?Q?P4+OPF3kd6VM0eNlztXmf4799cjs6gl5hSMEujEDAy777BJ7q0xmPp5N58DP?=
 =?us-ascii?Q?Xhi/LrtrSVBco3XMk7trDkPdHAWC8H6+Tlsn9jwVZaHA92VDZuZfpcmqbBSe?=
 =?us-ascii?Q?OGbkeQ2nHarfyrAty27OgQsA3+CSHkR5bqtaJSRiRNoIpBDZV8UMNXHqqVP+?=
 =?us-ascii?Q?EpXVIJz1n7thm9aUvS0gZV+j7uxKHKPAInIvta9bt1eAkttpMjzQziVR4xsp?=
 =?us-ascii?Q?N78MnP4yqlo2mz24DJuNhG/8sLuo6IaTKRGYcL3mKLacGCEZeGGLO50euOhx?=
 =?us-ascii?Q?oOWDNCwHJ7IC6n7eDov6E+Gce3GnGQt9KKmlpE3qhczpf/gfP/YQiPjs4Ncu?=
 =?us-ascii?Q?78VFUmwz3RFiUI51MX07bVqcdUF5XtGVdmxoWioRw48BuOCk23ucatmAdlRP?=
 =?us-ascii?Q?YIVWvJauDPdS1mvObS3ADoYR4Ls2CVyjgz3EqZjvIDrc1sCimC+Pead5+o/c?=
 =?us-ascii?Q?Y8JezxQO7b6UbxY8/1ukeMamDeexM+VHvX9ATKx9rOsHKDastsO6nr54Rbw3?=
 =?us-ascii?Q?TGCxssWr/buf0a8fhx0QoSB2gAMbTS9jX2avynUDokXOhufQ9McwffNmCk1y?=
 =?us-ascii?Q?rr40cgqtEjVdwwp1mLQ18CigHXdOuXa6IkL15H3tXaDRp+GL92HzqcfU3ETg?=
 =?us-ascii?Q?O+U6AZ1HyOyVADcYETV/ZTS7QUd/OCyxo+h52HsQaxlHutgVGDUWSuPYooco?=
 =?us-ascii?Q?uOnkm547xcq1BWyEavbwIcscDvfeF38dyDKxi7oi7//KIenlMJD/2v3PM8EN?=
 =?us-ascii?Q?Td2waEuZXaSRfizIiGLwv+2UieKG1MEjK+w/ZkUICCOpmvCFSvR+WdR1CkWy?=
 =?us-ascii?Q?Xb9SsAOgYzkgcoboL7v/Wq9SDtACdMK4agLnMZudF6odX5qTJtqh0cfnypLh?=
 =?us-ascii?Q?bBjU8yo5lW780mmKirgdjvt79XOzvESdwMHMiZxA8nqPPRfKhoiCdMEBFIyl?=
 =?us-ascii?Q?tdLMttd49i6QP1rxo5un+kV9EyeSVybF1EMBhnTfu+mve6kUYdhF0Dhs7a+6?=
 =?us-ascii?Q?11NOLghllRw2jgxTl513?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b210326-8ab6-4987-ecf1-08dd62bd058a
X-MS-Exchange-CrossTenant-AuthSource: DS7PR19MB8883.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2025 05:56:54.2154
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR19MB7795
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_225658_329085_D0DDE0B9 
X-CRM114-Status: UNSURE (   6.68  )
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

From: Nitheesh Sekar <quic_nsekar@quicinc.com>

The IPQ5018 SoC contains a Gen2 1 and 2-lane PCIe UNIPHY which is the
same as the one found in IPQ5332. As such, add IPQ5018 compatible.

Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 .../devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml  | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml
index e39168d55d23..bdfa3417069c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml
@@ -11,11 +11,12 @@ maintainers:
   - Varadarajan Narayanan <quic_varada@quicinc.com>
 
 description:
-  PCIe and USB combo PHY found in Qualcomm IPQ5332 SoC
+  PCIe and USB combo PHY found in Qualcomm IPQ5018 & IPQ5332 SoCs
 
 properties:
   compatible:
     enum:
+      - qcom,ipq5018-uniphy-pcie-phy
       - qcom,ipq5332-uniphy-pcie-phy
 
   reg:
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
