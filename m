Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C88F6C282E5
	for <linux-phy@archiver.kernel.org>; Wed,  5 Mar 2025 15:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XgQTQP9UfRIAzNhsvuoGONOvNAPQVM52aRCrngeDF4c=; b=uO6meYTfUAQIsI
	+fxxjW557XW/G0wQQisGCxMuibdeSFB3xxKghd0n/jM1ytzGqeeZJBmrjkecS1zXZCb9YJcSOoO1H
	h+IppG6+ygwDnsvGZBh8AusE+HoNty2MhAbE/83BbT1zcUD5t3E21Ng9pQzaLxj+EbeJYcei+IdZj
	Tfo9R8ok/Cp65U6U6s8jYMsiti6DOUwr7y5KZP9dtMmaiclY0382Emkqfnu300a+hTjNZU+piKEQg
	3puhIhIM1DkfZA51kWLbs8Rv8g8cCuyEMtlHiOQLo3rumonca+IbwVBp1/+Cjvas18vq9pltsqk65
	/NZjocJ0+3QCaECqN3ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpqHo-00000008Sbu-2EiU;
	Wed, 05 Mar 2025 15:03:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpp1u-00000008DzG-1dyD
	for linux-phy@bombadil.infradead.org;
	Wed, 05 Mar 2025 13:43:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Type:
	Content-Transfer-Encoding:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Sender:Reply-To:Content-ID:Content-Description;
	bh=I/DI2RvyPhYYODxX676R7MR2x6Ci3fbYFIRvY+mbSRU=; b=dsmvNQ1as5k+5rJcm6b0Gjo6Sn
	mauyglncUFWTg2CJqmOZUOePfQ2dzY8p6LXgV+cgqzzeJADIrmL6dby7X6WLLO2Jfh8rnCn2zRJjL
	i7I5FjL5ysFdCqsqSAZQsQBQF7FEkRecyh8MXhfD4MRR7QoyaxiUsIikBhqAKVMcN8R4v3pTncBQP
	sR6YGlPmVEo+cer3WhqGNEsFN+5awVsy6zMImtgdIbH278I2mKliO60BhXPFGfTGvNe4mtbvpq8yN
	3BizMOHHQH+1qriBuVBfsSCnFj6z+dDa3USkeLsj0gD3Oys3/9+XvSm+c5TSy9gpQvuSDx8etUkgc
	UkicXdEg==;
Received: from mail-bn7nam10olkn2080a.outbound.protection.outlook.com ([2a01:111:f403:2804::80a] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpp1r-00000000Yjs-1v9Z
	for linux-phy@lists.infradead.org;
	Wed, 05 Mar 2025 13:43:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qroAIlJGPeUOSTKNM0HaslM4R/zHLSZes1Fdr9TS339oFDCI65ovPjTczLuneVu8Dw3f40DtaVp9h73ZT/yq+GXpdka3XuX1hxeC37SUtcSFFClJ1ModS831hPhPcZAmf1Qr1+Rm04IE2cVWd+klCBhD4uVKRQ48xztrQRiADkkGFcYh5fM4X35D+uYtgfOZExW5qCev6cvoUAMj9UF+gbCEEfXLS6od0su9mkfy0CTkTabsLe0iZkvWLHEhFfTNK+LjTF9i8JK2iaHfD5506CS43jBdVBqt/eNUiu2NE5SjWy/2bqdGe83g7BTV66i9uzpeOmHkLZxIM3eXmETxgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I/DI2RvyPhYYODxX676R7MR2x6Ci3fbYFIRvY+mbSRU=;
 b=LlQ0PdyMqe37COc9a2VHwDpdIlZ4RM5uhJD3Hbq4ZXrZ0tyBi6Ro4B+xneEzV4OKIuWwyfdxOC2V5SeWKKo2e2IOp64ieWPqvlQn2nSQKkBDueQH3i+r62wwpA4p9uF//BLnQRW3MGFFUhhIFF/ILhuuD67yEmH7YeBSRDy1DoJ4Ao2j+G7RqJYtVncng8EydgWh8VQHCUxsAssVaf7L8J1Nd497bV7LnnTZQtX7b2kth+YN3RnP7A/AXQRdj3G0DuLJbOlagtlcU5p7bMrIYzjh4wieV91RmZjeGO4pnVB1GSKddvNKUuOKu8SuYuqIOl7mYK5XU6LfQdSpoAG85A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I/DI2RvyPhYYODxX676R7MR2x6Ci3fbYFIRvY+mbSRU=;
 b=kfq1LeoeRhZzGpZwwYEV5KkE0GH77XpBfTOM1JZqpLMGt0AgIqbks8XrgYC24Cusbmt2iYWnzEYW5xHzKCwBi1ZcwvkPoGDq7kEaoYfRiJekVZKs0nG+lRNa3rce1NPinxB0rqOg+Da+lHTNO3+UD/kR7j0c+fkYA5bCWsfT9cL8sBEUssDTT/mEjxpvLtyPAyVAZ7JyyCb1qpAmn5TEFJuHaM0jQm40aW0wqzIgN/qWlAdG3ox94j/wp7JoYuHJm/JXet9ykyxbV9xFSFQoUM3W8ng589XFXRoDllfEtmiBW69OhUa8yAMZ9CC8eA6Gr6Z7ZYS7dLPE586oQ3tvBg==
Received: from DS7PR19MB8883.namprd19.prod.outlook.com (2603:10b6:8:253::16)
 by CH2PR19MB8895.namprd19.prod.outlook.com (2603:10b6:610:283::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.27; Wed, 5 Mar
 2025 13:43:12 +0000
Received: from DS7PR19MB8883.namprd19.prod.outlook.com
 ([fe80::e0c2:5b31:534:4305]) by DS7PR19MB8883.namprd19.prod.outlook.com
 ([fe80::e0c2:5b31:534:4305%6]) with mapi id 15.20.8489.025; Wed, 5 Mar 2025
 13:43:12 +0000
From: George Moussalem <george.moussalem@outlook.com>
To: linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	andersson@kernel.org,
	bhelgaas@google.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
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
	vkoul@kernel.org
Cc: quic_srichara@quicinc.com,
	George Moussalem <george.moussalem@outlook.com>
Subject: [PATCH v3 1/6] dt-bindings: phy: qcom: uniphy-pcie: Add ipq5018 compatible
Date: Wed,  5 Mar 2025 17:41:26 +0400
Message-ID: <DS7PR19MB8883C5887FE954B51DD7E4989DCB2@DS7PR19MB8883.namprd19.prod.outlook.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250305134239.2236590-1-george.moussalem@outlook.com>
References: <20250305134239.2236590-1-george.moussalem@outlook.com>
X-ClientProxiedBy: DX0P273CA0042.AREP273.PROD.OUTLOOK.COM
 (2603:1086:300:58::13) To DS7PR19MB8883.namprd19.prod.outlook.com
 (2603:10b6:8:253::16)
X-Microsoft-Original-Message-ID: <20250305134239.2236590-3-george.moussalem@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR19MB8883:EE_|CH2PR19MB8895:EE_
X-MS-Office365-Filtering-Correlation-Id: dc1c79b0-35b7-4a66-60d0-08dd5bebac31
X-Microsoft-Antispam: BCL:0;ARA:14566002|7092599003|8060799006|19110799003|5072599009|461199028|15080799006|440099028|3412199025|1710799026;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?8cQ0LX2wGmzNwbFDhhoLFPyxJlA6ldzXlt0onnab7xnbgsq9w1FkyDe7WWW7?=
 =?us-ascii?Q?ycZ031dh3W5aESx7dJuNfdZuRuK9NbJ/mxlFObdhJVXOidz4QzNtWe9M/zPg?=
 =?us-ascii?Q?p7IRK2e7XsApiYOamYB88hCTVuuQ2n4ZifoTsmH/6t/Xzx2wPDx2I2OFrfNj?=
 =?us-ascii?Q?keJ46Dhy3evtvLsefAw9V7eWd0xhXtc03tAJVxhL6GxMOy7taKoNk3FuS18x?=
 =?us-ascii?Q?svOJM/Dsp2TGZtMw3qqb+3XD70U8wY2QlXPeQGd45Nlxl8pRKGYdQFalKfLA?=
 =?us-ascii?Q?88OR2HAMG2zCN2/RUgG7RVeNVqiqHMXpVeG31pRiTG3aceC3PNtHn3hgQkXg?=
 =?us-ascii?Q?ImCUFZ5bGiuC1FQs6LaADXbzmnDNa1r7WLc2UaOVSFZ4IbxqI4qGVWtJQ+Oy?=
 =?us-ascii?Q?iHxoflbdANJeDQ2FSsQtRy7V6dX9zwGzayoKtkPiwjzYT7ZxntbS3Th4TXZf?=
 =?us-ascii?Q?eeaizr67piHsfNjn9OaGDu9vS0oW5ate4ircBKmT923HO2oUn1YRByA7r/vg?=
 =?us-ascii?Q?tviN8gYz+g2qcRuiJZPJaK0vf+mpdriQ3/bkd9yIulbvigyXmLV4AvNSuMGe?=
 =?us-ascii?Q?P+U/BXVXpOTa7Rvw60YQBDxn592smgU6jQI+g9mlm/jjIULdohYNDN58H2tr?=
 =?us-ascii?Q?vnqDrkgwqYqB5NYIxPgWdeinFDvZZhyU68JqvZFxHu1lYfhPHFvEMJqXMAOh?=
 =?us-ascii?Q?awXLiuKr4zRsijgrbyLG9znY9O9dySAt1XYmiiahyJDYBOWwghZsr4rMDSyz?=
 =?us-ascii?Q?c9Ds5bYOU+oOztcuN6k+r1554l6MGoRq4ToKGtfp9VL7WZYuPsP0lNGS0zEF?=
 =?us-ascii?Q?/bE4hvy/1QERpJ+00HFu+F8q9X8DnOW3Q7vkpuazDmxpNOMzs3h4Cx1Cim+3?=
 =?us-ascii?Q?XRuQK2oKlfyp3iYBHBZU7sqlG+0Tazs33mYTFe1ErWrAVP+I2yrhV08Mc45v?=
 =?us-ascii?Q?Ew+FSHgwNZNFGI90fSvnzT5ATCVxfpBGBctH3X6NV1v4I4N1wnAhYNzblh4b?=
 =?us-ascii?Q?+CulJGhtlWAKVmY/6U7y/tQtY9t/ggKM7/9GLnK+0GCU+8sdHAEL6Mfy+viO?=
 =?us-ascii?Q?Dvkdo+iWzI3UZI3eaDfoizw8pp9EDZLbTuPz5xRTY2oQ7Kl5ekE=3D?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JKSsd90+toBWav8JpdUhzotLRKwR6z5LGokCwkz3Wd8c0vdYZiakF82bDlzI?=
 =?us-ascii?Q?tL0VL2qo8Iv+da/hUKfW/1d4S8TkWu+nzWLyVhJVyJyQ/BCxDS4TsRtwhQET?=
 =?us-ascii?Q?X8/wFI2EOk1MAcKlLwLATSXCvWnm4AH8Ab3DJAdzzcKFbPHmyw1qrqk7w5hL?=
 =?us-ascii?Q?mMqzSYaB7kYMZXlG8uX3UcjuuQ7uYSJ9f3Exc6xZLJt106iDOQyN1o7Pyzb+?=
 =?us-ascii?Q?koszFWIu0lx/i2LBYzHj2xE9x1RHYMB0Zb5eD2qRXrMa6hwC6Po2gkJvif4U?=
 =?us-ascii?Q?zpU3+dYGpv71VSgQFnrFD2WzGfy0K8C7vQ2xdYWQDV28yf642nbEWeOBxeTH?=
 =?us-ascii?Q?Iil0FoGn/pD3P9ilshbMlUpvLkplHk9NwrJ2VHGKmfv5kMMr2HgW72GwKHSN?=
 =?us-ascii?Q?KZtOWMhqMDKFqtUMZiMKPikAV37JIftdSkKjBaK8PplrFulo5uKLUSWvMUcR?=
 =?us-ascii?Q?de2lDGC7CE1jnIIwsO1L1v/SEF5UJnkuNdsj59d0ztuqbJuI+nF+IzHppDe5?=
 =?us-ascii?Q?aDX7nhcQkCEO4CNYi5waI+0102heP4FIWajiua3GyV4shjD4DheqMk73R85m?=
 =?us-ascii?Q?f1izcbgyHMZuplvMInllRVeSomeBbdcIq1X4+wMwZPNDFU9zJdVRuzw1Rncw?=
 =?us-ascii?Q?hI3uZdphI0HHC/iaawG8/SKLruguiK/AHNTX0+Qr6WrYZP3S6S82Td7n+gW4?=
 =?us-ascii?Q?0LLjndCDN5ZHX7jaHxyykTtMV1C2HO3DLXffVuhfNAT4fC9gvXiAEQ+P9dwT?=
 =?us-ascii?Q?MhLoWl0jKwqx8hRoRVDNJv+dxOB5lmnq5ZcqtAO7TglQFZ7HcpVEMAlWe1di?=
 =?us-ascii?Q?01Ctxm/lOiZoaGOs4DMKHSFFaXmL5iLAJT4IBjjxTpJOp3VaVd7W1sPXeF5I?=
 =?us-ascii?Q?IRX/TScQow/ri7GRVWpbSmGaVHwWbB666cv8I27qUaqgi5xtUGD4OPOGkCBF?=
 =?us-ascii?Q?dKciYgWddfxZ9KlqroHjV8jBA38MfXd2kU5wMUqkTOYaeYGHiDC/Hc8RWkqr?=
 =?us-ascii?Q?qGjaPnEaOvBfxOvHLRBbdOuzVnPzOw7byOwXkRbol9VRI4/aRbtP9nbXNT4d?=
 =?us-ascii?Q?bE59yADcqscm/fDDfFQbHE5EgNz8VRoBGdbxopvNgfeGIsqcIhl7p6+MrrKB?=
 =?us-ascii?Q?tkoFDp9oFE+UAn4rQkkwXefZfIBPmjEhxEKz8gIeOA63bodsUS/1UIOjl11H?=
 =?us-ascii?Q?S9NFvaiNlvZEfMiNUCvRgAE8uQVvPK5Te+dqdj5w5WoyUqB0ZTdIe0n4edtc?=
 =?us-ascii?Q?Fk2Tr0uoIeoz1KQrato1?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc1c79b0-35b7-4a66-60d0-08dd5bebac31
X-MS-Exchange-CrossTenant-AuthSource: DS7PR19MB8883.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2025 13:43:12.6602
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR19MB8895
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_134319_576985_9F07162B 
X-CRM114-Status: UNSURE (   6.70  )
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

From: Sricharan Ramabadhran <quic_srichara@quicinc.com>

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
