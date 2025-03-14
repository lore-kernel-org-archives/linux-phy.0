Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63CBAC28B30
	for <linux-phy@archiver.kernel.org>; Fri, 14 Mar 2025 05:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=md5CiqAgCi8LwxD5Z1orvNpFe9Z3gHX0GuSUi+EjulA=; b=TMRIFDtYZxs1YJ
	tT7FbRyyZL+Xzj1ac9RxiuC3mTtIWqseXQraai0ysId6ShhY+NU01gdnyve94GJ6pM4wUhYKqcMLK
	bZfPwho0ic2iud8xfPPKyJuDKC9U9rQdJddkT4vYlUw7iJZ8tUtDhF1gch3/VhUGxku8jefhjnn56
	A0rUXDCP2PqeeUcoH4C3nmqRbFSIx7QaP63yvXH3gsDNsBxzH4Isl4w39BIPAHF+PE/xz9NbzK4VH
	OaXk4+bPcX8n04vP37YiFHNgJcIq4nUaHc+76A+Xe179C1KgZsmINhsrC+HPqFCdUuQKnh4bj4Chn
	WoHvcCz05OpTdw08064A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsy2r-0000000D8uh-0arp;
	Fri, 14 Mar 2025 05:57:21 +0000
Received: from mail-dm6nam10olkn20816.outbound.protection.outlook.com ([2a01:111:f403:2c13::816] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsy2p-0000000D8tw-3Txm
	for linux-phy@lists.infradead.org;
	Fri, 14 Mar 2025 05:57:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UaIyY9mGT3BpmbRNRWZroXNcwbK6DXQDlrD99PkXz3maVw2RzlgB5WZlhX4dRXiJ0DUbqnon2eXrmmt6keHla0OD2RlbdfCpaiBw4zOMgyNl/4j6pRV/g1lYt5LIgRSyAr+8vdTMFO5zz6L6i9R57OlKFTaNGEkKy1U5obkqeUQpKgWtv9PyyimsTnu+ZNfNpdTExBSm96Gc0g3+ChS4ZZh3PwSXzSCLo8V9fAkZILbyPnD/4bG2/WTrpQH43UCv35zEnZ8JSzKksq6iENh8Qnlnvc9JmoCsqAOeqr6sDBB70/NJsWOnZMSCHzY3zp3ECVH3cEtLJHg9yiUwnsZnfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P3M7QFUKvFMtsQRYNeo7J9SMwPaW0oD+7pY7y5BjIvs=;
 b=wVdQbleMzjHSbwh4nGtyY9x9BYmjiNq35EBrkMYeMzrYnmy2MPq6go86xdhJLgHN7pCewvSBjcG8qisAWOdylyWGhgobPXMPkuBghZsu1GTCeR5DF/n4wnWGpQISUe7QVlhc/iWFttaCi4J+TMBoHlMggfyEGF4MJEZaCspKw/gjHFK6T6Q5l/qy/v5RCR476XzXrEEpwaq7hzNLQt5LSXl3Zj8Y6hLyIiri21E0kyjn1WRZZZSp7eWqjNeb+23qwpt9o/s6XLwz+J1qmq1uiecf00+CRWH6JGw4Cyspc+g+8orsc6VOXTdJU0YGV42HkFE9u2G4JhjUbQtZz6AzWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P3M7QFUKvFMtsQRYNeo7J9SMwPaW0oD+7pY7y5BjIvs=;
 b=lHCWmBwERdJb5TsFJnv3DCPAi/4JazTQ5Z1WLgDnZ1I/rtjhDzjWt/i0jJ3E7l+4OoyfQl0swKQ1WM2kQMEs/tmhU/kcTZXpFKB5j0BjkRywlwe5GDKCl5rTQlkYnsLiaAaZdxG+4SGxZoGFkMbafjciWQGaj1nDlXdMmFANXYEDUCDsv04Au3YmPRQOYWc3UzKiVGW0tod8rq84FVFZ7Y763QpSGxepjBXDhl+nk3kpNjn2h6f6vvA9VZUveAVXb97iAh/nTiT34+DA1vrUIdr2DBGJdLL2eUvynUlsuJvrRZVmIyZ+Z/71RgK/H5qdQloWimQJ8RPqbrlyyB/yJw==
Received: from DS7PR19MB8883.namprd19.prod.outlook.com (2603:10b6:8:253::16)
 by SA3PR19MB7795.namprd19.prod.outlook.com (2603:10b6:806:300::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Fri, 14 Mar
 2025 05:57:16 +0000
Received: from DS7PR19MB8883.namprd19.prod.outlook.com
 ([fe80::e0c2:5b31:534:4305]) by DS7PR19MB8883.namprd19.prod.outlook.com
 ([fe80::e0c2:5b31:534:4305%6]) with mapi id 15.20.8534.027; Fri, 14 Mar 2025
 05:57:16 +0000
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
Subject: [PATCH v4 4/6] PCI: qcom: Add support for IPQ5018
Date: Fri, 14 Mar 2025 09:56:42 +0400
Message-ID: <DS7PR19MB88839949D4F429A8D21EAB809DD22@DS7PR19MB8883.namprd19.prod.outlook.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250314055644.32705-1-george.moussalem@outlook.com>
References: <DS7PR19MB8883F2538AA7D047E13C102B9DD22@DS7PR19MB8883.namprd19.prod.outlook.com>
 <20250314055644.32705-1-george.moussalem@outlook.com>
X-ClientProxiedBy: DX0P273CA0029.AREP273.PROD.OUTLOOK.COM
 (2603:1086:300:5b::20) To DS7PR19MB8883.namprd19.prod.outlook.com
 (2603:10b6:8:253::16)
X-Microsoft-Original-Message-ID: <20250314055644.32705-4-george.moussalem@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR19MB8883:EE_|SA3PR19MB7795:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c29dd96-756b-4f5e-3edc-08dd62bd12aa
X-Microsoft-Antispam: BCL:0;ARA:14566002|5072599009|15080799006|8060799006|19110799003|461199028|7092599003|3412199025|440099028|1710799026;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?cIhFpYPCqxhn6/b9Wz1PKuRDEyyG/FZ1673hYiXe9PrESmpfKfhCvRkpL/Ws?=
 =?us-ascii?Q?IqbWmTxnE7FKfbOSB5XCK3H1iHugAFzb73YulrBY485oZyt/inTeR8aAugSN?=
 =?us-ascii?Q?u5AmhLd/be6d9RCdt4nS/Y8asAacLyuYJjN3rGdFyeehcHVPKtaP49dpcIGM?=
 =?us-ascii?Q?R3JOa9/Z6jjajoLCPat4GjmoAU2jloc4iMzq3PqWmYS7JaJQDR74g82QLl2G?=
 =?us-ascii?Q?id5vAeSv0Xo2n1vY/3gZA+6in0appneqh5K98IBn4q/QpTjLZyNHJSlJi/q7?=
 =?us-ascii?Q?HPtb6dM2MusDpKNPdCkkLvQNknK3oZvUdwDKSMhSD05+OkTk64JItH/KZ7Ex?=
 =?us-ascii?Q?hvV0dn1HnTAWfXzo1hKuUXn3nvIk4k7sxdHylibfmDyGYzavDCLBDZph3kRk?=
 =?us-ascii?Q?yJNAxT8+g23Aqswm5eh1U1o+Z2G6gotBSkaeekAIeTUHkF9G2UBzkZzbAL3u?=
 =?us-ascii?Q?QCbGl54hxCrtue2LmRG0K6OV8ntsnyfsdkc9A9+8GK5VIjkJ1sb5FY1MZaF8?=
 =?us-ascii?Q?D7IUsTppud54IXMNhKwwURSLLptwEf5pxmCXUmDq9u4iVxVm2iCbHT/t1E5h?=
 =?us-ascii?Q?eSkhfhk1rzU+QvJjsdg8gfrnPpHCoZH66tD0AvxfdmuL2Tc8tC2LXXoNIJYZ?=
 =?us-ascii?Q?7DxNR0bv/n3QyB9P5kIk9pSTpi1orNB5uNcDheN8LASUAnxmufK8OnioAtVS?=
 =?us-ascii?Q?sV7e/I2psneJwMKSoyaXgJhOk2OgZThGwQEkCeLd/hhT1sbyIEC7iRaDqLPF?=
 =?us-ascii?Q?9x79KLSXLk2DFTdyTxEw5cfgTj2SbPwdyGczdfgodWowMK51aaRzSVIvQhfn?=
 =?us-ascii?Q?wAd/lIE6YxG9gS5SHYJ1fjbvOMYZmSnIRfbcfvtkeT9Zz+rUmw52OkUurQgV?=
 =?us-ascii?Q?LRn3zwUOcrt10672j08y/ctk0F4S12fkL/fB3K22gq2PKBVIrURjvb9xfZGs?=
 =?us-ascii?Q?Jc3iaKtDJdJlCUBpkWK+MviZleMSjnkSKlWyvikSQkwnN4z0O7K+3vg2An9M?=
 =?us-ascii?Q?zGdGyT2knHWm3g5j74/4II3Y90I21ic8drbJmWCBQsal3eklIKSnoe0/NYPz?=
 =?us-ascii?Q?kafHdIr8GeeXNfh7lCLn7Uf6ndgYc21SzwOrB++D/pGJhKWoeu8=3D?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KIrxdP0/ZOEsM+fdOk+dEURCWcjlfM3Mkf0t6oIAIYheTH/MEQnTxvPL5kC+?=
 =?us-ascii?Q?a5sqjNn2Ojok7ij6rd55XIle/AUYDP6Yh55eKZGtMmde40dyuzNOh4lpVdAn?=
 =?us-ascii?Q?TGMDuh0vi9ZVkJWmdzDijH3uIVzMbe98EfTY7TrJMUkSarSyADRXXLU+pH2U?=
 =?us-ascii?Q?yT6Qda6aucsbA5DI7oDfHIinJ0r6MraJb703rqxiRDtKhUd1hsm4tgCHr518?=
 =?us-ascii?Q?1EOz8DMzG49uWGqvsRRRVDFM2K05Ur9pCfLGW2aH99PuHQw2nDP/WvgNYvPU?=
 =?us-ascii?Q?Lz6wySVnJ/QW4duggtOP8x4QcLV/b+fWBSxw5Jz73XYbdQq5WCA+aL7gMwYA?=
 =?us-ascii?Q?ig6UnD4BWYct9i1ADW6rKmWt4+WhSbXMNtHnEa+usdiXa6FdWmCvfq3FVcLl?=
 =?us-ascii?Q?FaADJdZa3B7nla8RLkynapOcaYVGeVFZFT70RQjD/xg6FTJfVImNtkdenwop?=
 =?us-ascii?Q?/lHLFDItTKk3SBsG+8gdl+ofg2Kn166WF21Up6YaVQt5rmTN/hxZ6w4fUnot?=
 =?us-ascii?Q?fOmqGVkczP2ON4SYe3ap9a2psvR/Ir6qV8zgUuVpYU1EOPhWqZDgSSoZEknt?=
 =?us-ascii?Q?LH8Q56Y6nhVet36WZ6hu6D3jZvS3efTaBiDz5tiSLy8UFEITD//uSUfJgKwy?=
 =?us-ascii?Q?ed/D/NcZqBQAv+1BpUkd2Jtu1Wj585Iyjok5W6RVyyH2OQaRjk7/wuhTdNrV?=
 =?us-ascii?Q?HRkdR1+ESZNZKet1mcyH8UZ5dBhyYW/KX5gUV8Qf16NIKsoqXRV+ged/CLUv?=
 =?us-ascii?Q?SptLEtk9FGvWzcp/5/r1IJgcFPZrdSXqSmfOBOxlEGpBwa9JPdnz+bQPR0lI?=
 =?us-ascii?Q?ChCU1bzTSxsZCvO28FkHMJ1tusBCcOojM8EhLgZ33K+ZBFmdihsAZ1VBrwDi?=
 =?us-ascii?Q?j9QLWl2/KZtr6h8Ujwy0SxcrEV/va4BEIcErhYcS6hco0chXso+H1ATYlMvG?=
 =?us-ascii?Q?AWs4SK1i5Q2E7DxcxoA0S0dNPEDueoVj9QXiLTKM99aXpk463kJlQvkP6rbV?=
 =?us-ascii?Q?SH2ztFOPIwYAQo1qYbLIM8ISF8yBkV5Tuq6qh9WtgylghQDb1WQlIh6Fpo0O?=
 =?us-ascii?Q?OJF1x6jXm+EeybyJzbyy0tLPu/pXlJTWC733tpfH2EVgC9WH2/GGf+QZe7JC?=
 =?us-ascii?Q?7RMD6L9G9UUjDds3FCoZ19n4o4YnA175yD+m1DeOLuto6Y2W/YzFiP0yalZ8?=
 =?us-ascii?Q?qxkPIuVxHmUAka7Op9QRJLtm520vILu0xycVuw/OxcMt7Rjag2gwdsqAW1bA?=
 =?us-ascii?Q?A/PE4Kps/gSZErHyWuLj?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c29dd96-756b-4f5e-3edc-08dd62bd12aa
X-MS-Exchange-CrossTenant-AuthSource: DS7PR19MB8883.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2025 05:57:16.2189
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR19MB7795
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_225719_868578_13433D70 
X-CRM114-Status: UNSURE (   7.23  )
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

Add IPQ5018 platform with is based on Qcom IP rev. 2.9.0
and Synopsys IP rev. 5.00a.

The platform itself has two PCIe Gen2 controllers: one single-lane and
one dual-lane. So let's add the IPQ5018 compatible and re-use 2_9_0 ops.

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
Signed-off-by: Sricharan R <quic_srichara@quicinc.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index e4d3366ead1f..94800c217d1d 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1840,6 +1840,7 @@ static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-apq8064", .data = &cfg_2_1_0 },
 	{ .compatible = "qcom,pcie-apq8084", .data = &cfg_1_0_0 },
 	{ .compatible = "qcom,pcie-ipq4019", .data = &cfg_2_4_0 },
+	{ .compatible = "qcom,pcie-ipq5018", .data = &cfg_2_9_0 },
 	{ .compatible = "qcom,pcie-ipq6018", .data = &cfg_2_9_0 },
 	{ .compatible = "qcom,pcie-ipq8064", .data = &cfg_2_1_0 },
 	{ .compatible = "qcom,pcie-ipq8064-v2", .data = &cfg_2_1_0 },
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
