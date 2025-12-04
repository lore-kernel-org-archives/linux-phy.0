Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 681E3D29FAE
	for <linux-phy@archiver.kernel.org>; Thu,  4 Dec 2025 19:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Cc:
	To:Subject:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WjvG+QvZ09NcsqUQZSUiXJ1L9PrL6MjmN1WF9Nr0of0=; b=r+gwqKbnk2WIyE
	2qIyKZoCJSX6MtT/IhVf11cGnN1EFfaaCTTBxxDrYPRXxATcnVd6ZsyygDh07hYPu4D2e0Q1L0gXE
	pRR7m2rNOZ90Rj+RIdN0uRw35y1Y25xFJnpNLgWoTOkWRkzx4pmozIeMqd0VDYdz3ZnbKpLjPUzE+
	2iLD1W/aIpt8bsegE+T6n2UFIU6OFUXYING95KMdpIVzNr1zCM5npjUw6d9BURGC6yOKdXm9OZO8O
	0dpyQg3O8d77QPOwRLl677RGtNgpSNL8qdwIaSX3s4vIIMQblNg7VHXgUcCupvX4YcOBFm3DjJCNr
	ohUysL/zQeIKzc4nDyeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vREZv-00000008TQv-2maO;
	Thu, 04 Dec 2025 19:01:23 +0000
Received: from mx07-0057a101.pphosted.com ([205.220.184.10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vREZs-00000008TPi-1XvX
	for linux-phy@lists.infradead.org;
	Thu, 04 Dec 2025 19:01:22 +0000
Received: from pps.filterd (m0214197.ppops.net [127.0.0.1])
	by mx07-0057a101.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B4J1EVv3186476;
	Thu, 4 Dec 2025 20:01:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=westermo.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=270620241; bh=
	mcgTMWcQI1CU6CaewBANYurODiCG2ReulI3U5DGiVZI=; b=FlDA6GHYBR6nsDtv
	NDHVF+ueiRMzadNDpC/O6thwixzKvutauaElVK33I8fkufhty5c/Va/zVUQL4pZy
	Jyu4mKC7MnYurSe94IfR4tVBJiDxeb4dIzq0laiFOcdN+EcflbsCtBeOmer9yMnJ
	rjljFGGEe+Cz5+g5jX856Qaaki500glUfhiLwY7O2NDMVNFNnE66MTqPEFfqrtkg
	w0un51D6z9wnCoXEPiZyK1EBWHgXy37xxBwXAmVHVL0Qp7+QZomZMKcioTYfZ7Fh
	scnCXy4n7JP+yHOh5a3fpxXRV8rUNg9QFlk3PFv/izRxbcoQJYXRiFIncQmLiCa0
	TR0v0A==
Received: from du2pr03cu002.outbound.protection.outlook.com (mail-northeuropeazon11021102.outbound.protection.outlook.com [52.101.65.102])
	by mx07-0057a101.pphosted.com (PPS) with ESMTPS id 4au8wy8d5e-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Thu, 04 Dec 2025 20:01:13 +0100 (CET)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DpnB0JTr7WgfZeY7w4Y6MaCcV8PPk22pg0tcy2Fq0DPSg2F3h/vDgQcn5FKMSPzLnGaHWyiJS5aZQX8h17Mt8Poz0Ktl2Zz/owErfFmkydgUDSZhZOuEWvX4kGKH/NBvEnMC8haAmPQlvbEsdIsiBLLe2GMkiFQWtKoefomVMOH6QG2LPGgO/i76I4+2T+vUK74P/2AXrDXnioVPboiCeBHo8NycYlLsDbu+z8bcq+nL5yC3X1OVZmTamCPpJ5Xpp33VhG8ro3enLY3qYmSs8n9P9RanXaxe6QG82nSrL4/f7CixWAI6/tWXnsNYDGSjjfaXCgZTQMM0l5PrZyJtRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mcgTMWcQI1CU6CaewBANYurODiCG2ReulI3U5DGiVZI=;
 b=CwwTa1GIPT4Lyg6SLSu2jRtsDMDe5nCK6fHQwBIr5e6pZM59NOv4FJTfXfO265bwJMvs/Le2o51zWs+2AWo5ZM1kIvRQeVSozK+aA2/fSGNhBBqmuLZla/2NXNfGVWTxjevkPHlVePrPwXVS9zb324GN+6jhup9Km/enAMGTN4nvlUSLO5rgcj8EJ51hn61KgLYdEK7Bf+uuLd/x9YfpcToCuvUXOVvZBBJxarmrQpBtA+C44NddmZfY+qt/uMyQTyfEdA/VyuwuKQsmK2AOahkoMJMIz98bk/PZQOPxSb5w7CTf+jPbUvdZMKfyif8bb7bpFGOILFQDnTT+SP+EOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mcgTMWcQI1CU6CaewBANYurODiCG2ReulI3U5DGiVZI=;
 b=JAt1rl7GJUou5UJfQdUKDwshdlANiQeH73xEe2UtMoodWGfZveaYHTKYFOftpocpd5vAU/qviFPMPxLJXEjJtvcQRhLvuTlg4FFkYjHFU1tOvLf8qV3GemXe+GxlNERCzEJRVS1uiBQJ1HOnOSSiTivXeJhmN+pB+Bk/xweHeA4=
Received: from DU0P192MB2856.EURP192.PROD.OUTLOOK.COM (2603:10a6:10:5a2::5) by
 FRWP192MB2908.EURP192.PROD.OUTLOOK.COM (2603:10a6:d10:178::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9366.17; Thu, 4 Dec 2025 19:01:11 +0000
Received: from DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
 ([fe80::2fe7:101c:b862:7313]) by DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
 ([fe80::2fe7:101c:b862:7313%5]) with mapi id 15.20.9388.009; Thu, 4 Dec 2025
 19:01:11 +0000
Message-ID: <2f74aaae-1dc1-4657-9436-1f445d28ad66@westermo.com>
Date: Thu, 4 Dec 2025 20:01:10 +0100
User-Agent: Mozilla Thunderbird
From: Tanjeff Moos <Tanjeff.Moos@westermo.com>
Subject: Re: Lynx 10G SerDes Driver on my kernel
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Sean Anderson <sean.anderson@seco.com>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
References: <a95dcad3-c684-4c2d-834c-07e92132eb85@westermo.com>
 <20251202162919.ow53dn7c3x2lguqr@skbuf>
 <a1dc8a14-56f2-4082-8081-0e29e2dbe35c@westermo.com>
 <20251203122601.72cwwpsp6loqpkpj@skbuf>
 <4287097e-a906-438f-b3a1-33e374477367@westermo.com>
 <20251203180022.adhggfqgfj4wsoqi@skbuf>
Content-Language: en-US
In-Reply-To: <20251203180022.adhggfqgfj4wsoqi@skbuf>
X-ClientProxiedBy: FR4P281CA0429.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:d1::10) To DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:10:5a2::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0P192MB2856:EE_|FRWP192MB2908:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c9f911a-181d-41c2-426b-08de33677da5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|10070799003|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZFZKOXlzUXVKNE1NNFBUam1YUVVSdVVGd0YvZUpkRVk0OHc1cm9FRmcyRnpS?=
 =?utf-8?B?UFZyUE5Fa1lUWHFMVzhpSFV0NWRkZHVOQ0R6QU9NbHJ1L2ZaUDFFTHJ0S2Qv?=
 =?utf-8?B?cUU3VTkrMXpoazRqS2o0K0hNUzNXRy9kWDlLS3pvNXNKSGYxeEJSZVBWL1lV?=
 =?utf-8?B?ejN6YU9LbTE2cStQUmk2UnlYSHNMK2N0cFZtOE0yZDJHM3pGbnZnOUExRGl1?=
 =?utf-8?B?VDJpdDcyQm0xYitLOFdGbTN4QWI2OC9kNmJaWllDWDRoelFuSjU4cnQ3My9w?=
 =?utf-8?B?N1VlZUNkSkkzVUx0SUptNGN3ZWh1Q2U2Wk5XeThYS1JHWUMyQUVoVFJ1Tk9o?=
 =?utf-8?B?ZVV4c1dEUnRYcVRDbU1vSlk0Yk5HS0FhYk94WjFyMGlpSFNXVnZZZS90K3VJ?=
 =?utf-8?B?d2krQWY2bW1HMDJCd0lEZmVyVXU3L0cwRWJTTTlzQi9RZ3FOZVAxQk1wV3Nr?=
 =?utf-8?B?dlR3TGNybXNKM1kyZXlXVkM1TzhicmJKdmh1ZzJxZ3FLMmREdytwWFlsRkJu?=
 =?utf-8?B?d1g0ZkNFcWZkTS9sak4rUXJzU2p1SDd5Z3AwVkRGL1BadkFCVVFMY2tYVC93?=
 =?utf-8?B?ZDRiMkYvdDI3RU41NGkyeXhjd2VZV09ScEEwN2xTZWNtQkt3T2FUTW9FYmNw?=
 =?utf-8?B?ZEpMbGlJVE5kNlc1V3NHUTVIdE9NbUtXWGYzWmtQK1g5c2xaQWoyeTFHcUtl?=
 =?utf-8?B?dXB3S2JHbVFBUHgrRW5hM2ovdjBINzZDN3l0cmN4ZVZDcWtJNDd6WWRZTmtO?=
 =?utf-8?B?SFQwS2U5RC9HL25XRnFJYWkyYVlnUUtody95a0ZEOGxPL3MvakFoaWx4S2U1?=
 =?utf-8?B?VU8rQzhEc1lXREg1ZmhnaFpDRjFoMy8za25McFc3SE1xQzBoc25qSnAwMXdt?=
 =?utf-8?B?K0ZGczkxbHBQUTV1cmNyT2MrR3JZaUpaWEFWeEJFUW5HNWNFb2lsSXVURy9x?=
 =?utf-8?B?dG9WZHJiWldYQnUxT2MxQ252ZEdRLzFuYnBHU2xVcFdMOTR5eGJrOU1OL0lI?=
 =?utf-8?B?eWIxdE1Yc25zcFJFOEs3YmptU2k3ZmMzaEQrNGZsNmZBQTZXTk9PTkN6UkZQ?=
 =?utf-8?B?d0ljV1ZEaXFHVnAzbnV4UnFmSkRDbWxaQXhXM1V3VFlUUzVPdXZ4VHY1UzN3?=
 =?utf-8?B?WHBCU1ZhaEMwdjBkRFEwbmJUU3hmZDlqM0NrMVpoakFQV1AxUUN3MHNFajRp?=
 =?utf-8?B?VE9oWUZ1OG1pV1YzOU9RNmczVFlwYldjUnN1cnVMc3BocjZaVkhoRkcvOVVF?=
 =?utf-8?B?WWJlaVdFN01ISzhkRnVXeVVhUE9MNmNwVzdDaUwzQjR4OHNLbjhMdjI4RVBi?=
 =?utf-8?B?aHpPTkpEYWx4YmhVOWpMcUFyQTl0N2pvdmF4RytFU1g0Nzc3alZEY2x0REp6?=
 =?utf-8?B?clJTSGpCdUIweEI0MThTSE53bS8rZE8wdkFYdjk1L3R3ZFJIN1gzT29jMkpp?=
 =?utf-8?B?Y3VYb0ZMUTU3dVZjY2tncXA4UE9memlIdFJxVVFleisyTGxhTkRMenJWeDRn?=
 =?utf-8?B?TlZvWEdmOFZZMS85SFIwZ2dRWjRTTmVSeWlxMk51Uzlwb001NHNLcFp5SjZo?=
 =?utf-8?B?anNjb2NpNWF3cVE3VWM0MHpaWGRKWFZqTnpQdXBocTc3cFhhVS9XeExHR1B3?=
 =?utf-8?B?QVdrZ21lbEdiWTM0aGNkM2QwdE9hQ3d3UmJlK1BIVmExdjFqaGM2UFNBMjNn?=
 =?utf-8?B?RnFMSFNSN1lud1NjQUVKbWdLSmVPVjJKNXNvbldINWYrNXpJQzZGMmtvelYv?=
 =?utf-8?B?WXZDNHE1UTVJWlFMRVlKeGVHOEpJVFVDYzdTR09YR2VlNzI0MXNoR01ESkdR?=
 =?utf-8?B?Yy9EeGtJMDF1bUlmZVE1dTVITkJUZFZOcWJqenZJbjBkUU9PVEc4Y3ZwZ2Zi?=
 =?utf-8?B?OG9RRThaRE5BdjRUMExuN2lpREY5Yk5uNTFaV1Y2TlF2L1E9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0P192MB2856.EURP192.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(376014)(1800799024)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SndlaDB4b2lobjB2TVpodXpXSHNUTlJUcGx2RTdnNnBpVVpyOFRVbmFtdkRM?=
 =?utf-8?B?NHZzbWNPTlpjL3p0eVVuNHFjZEcyNWFqbkYzQm5DUlVuY0UzZDVFV3M2UTZU?=
 =?utf-8?B?UW11aXdzaFJlNVpncllKYm5tSlFHMFpOOVdyUmNrZk5NcTBPNUdVVVdBSnV6?=
 =?utf-8?B?NGl3T1Q3L3lLWmE1QWZKM3ZnS2g4R0N6bFdkWDNZdnFNai9SY3dkMTZPdmJG?=
 =?utf-8?B?b2NaR2VKdFNFQ1VTYU11QnczVGNpczlCWlpMWjQ0K3EyU2tnNksxLzBjaEU4?=
 =?utf-8?B?U2FuNTI1eEo0YlkrczZnOEFZUUdqYkVZZlZOY0hydkhkRzJoaXFBRklrcUVO?=
 =?utf-8?B?bHBWTytXWE1uVGkwUUlHV1U4NHFZM3gxNHozR3BXN2tmbWRVcy9kVHBkN25k?=
 =?utf-8?B?N0tQTkZTVTJzZ2svbTFaWDJuaVNnM1ZsVkhtbUY4eFdGc2R3WW8rMjZrRW1a?=
 =?utf-8?B?WTAwRTdvamt6alM1L2pPeGF1UklHVE80RFMyMlU2L3V2US85clNYdFdBR0xW?=
 =?utf-8?B?N3I2dnEwWENFYmQrZS85Rnh0NXNncnp1VEIyaC84eFFFRjBQTUVzTkNuZXhC?=
 =?utf-8?B?ZTR4TFVJL21DMUZsYjZsbjE2bm0zaHQyWEF5REZ1aEJNVjluNUNGLzB2Sm0z?=
 =?utf-8?B?Wi8rTmFHQkdLQ1B4WDdMWTdncG96Nm12aFRPNGlNNFh6Tm15SloxU0N4SzZY?=
 =?utf-8?B?eFExZXlGWkFHZjNWTnNWTTJ2S0lwcUhxMlVHVnlhdzgyM1JVV1llM3lheEVO?=
 =?utf-8?B?S2d5L0dHRnR4d1lQbEJvQnBUSlcwZ2xhdUJoQmpEOE44a2dQdUVQay9ZNVln?=
 =?utf-8?B?REFmZmR5cEdxRTd5YVpjR2RJSVBodi96akhvSkhmbFEyN214NFpaU0NDWEdY?=
 =?utf-8?B?TUtZUDR1ZEtwYmRMSHhvSURWeUVGTUpzQk4yQjg1eXlRNEhnWnArakRLSzhL?=
 =?utf-8?B?eHFvNkF2OWdzTGZlbXNuaUJ4L1VMeXZISFE3TnMxU1pvN09lMVJnRXVMZFAz?=
 =?utf-8?B?NWp5UUJFcE1PZmZHM3RwT1VlNFFtSjBGZHc2UC9BQVNUZk0xaW0xMHlOcjVz?=
 =?utf-8?B?b3AvcTY5dk9qV3N2SFphQ0IxNmdBcGpiWTl2OWRReC9MODRwWWhZL3lTUW1I?=
 =?utf-8?B?SlZlVTFkZ2hqc0Z4MWFEMnNQYkZaSDI4SFZxb05ndkpsMkt4WkVMRFdURmsr?=
 =?utf-8?B?dWo5QkF4cTM3cERScnVnbmR4VWtjbEh3RFVIK2x2K3BNYUY0OTBEYkxtYUFU?=
 =?utf-8?B?RHE2UCtoWkxoT0E0eTNDSWR3NkpSWXdqamEwVTc3ZXJseVowMTQ0bnVLZnFr?=
 =?utf-8?B?TkNjWmJhUDE3TkhYNkUwVUpocG9VbzFMdlZPeXh3ZzM3QlBRaXVZa0plYUFw?=
 =?utf-8?B?TVlXOXg1Ry9Ga0t4S2xZeHBFOXQzMTh0aHQ5SjdhYjVDVUlycnZ2Zk96VFkz?=
 =?utf-8?B?c2VZTSs1MWFJenc3VndMMEQzVEsybjAyck1vTTAwUDRXaW5CVWNiU0VjK0Fh?=
 =?utf-8?B?a2pTdU1vcGlZckw2UndXWnlCSGxoMXRQcjQ4VDZORXQrTmlSeDRyQUgxaThI?=
 =?utf-8?B?enBxT0YyaGZVNDBieHhzUGxpWGRjSW1GSmw1bjVGZGRlK0JxYk1ndHlGdGtR?=
 =?utf-8?B?UG55Ym5GS0dGQ3JIYUZvKzRaZVUwK1B2bE53RTI3TXljL2NzY1BFbU5saVJJ?=
 =?utf-8?B?ZDVHNnZQSHdKd0EvdXdZVC9pV05CdjJTdjNhRXZMRU1XbU9YMW1rYTEzb21x?=
 =?utf-8?B?aElnUjZNVmxrdmFUa0gvcDY5ZFZXVFltbzBRVUJjQ2pIWUV3QVdPQVJ1Zllp?=
 =?utf-8?B?V0EwL1NIVmRWN2pvOHF5bEp5OHhiM08xcFhkMll1MXFnd1dwL3Bjak42dVNz?=
 =?utf-8?B?d2IrZWZ6bndHYlRHVUczdkxvTFRoYjBrMzJUY3dFSGJ2NlFGcyt1YjM4U29D?=
 =?utf-8?B?dTJMbWN1Qks4RitIYlBHUG40MnZYYTRBdXU2eSs2a1AwS0t0dmVSM05ScWlm?=
 =?utf-8?B?YVg1b2M4SXBXL1VtR1BBM0UyVjlzMUNPZmprOWxvRmg2MFpaZzFGZWlqbU9W?=
 =?utf-8?B?dXpzZ1lLZDlXU2lZQ2duRnJERWIwSEQvRk1Mc0FPb1VlbEJWSFkrVkdEbWJm?=
 =?utf-8?B?a09XOTlUd0xBRUQ0NFAweCsxQ0JNRGc1a2JhdkdNNTVLRERFcFIwUGN6ZmNk?=
 =?utf-8?Q?bS+WM1jMc7ZfwBnY5x9yKky5aIInL3lyu3urdW1GRu16?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: wowfrEfPvENSEFIKU3+HE3FWwXaqdlG/LGQ9C0g67c8xzPM0S8v8IvAd47NsikcvpnbvrpBpKVN+EnXHy37E3uCrCA1u4AtOdV1Dk4v8wVPPNdM0Ts6n+hcdohsnx+wtZvH03Jz9uZU5RlJ79FPDuK8ncUEoAB2CLPCpXwJhSKuxV5z2Dvdirp0vwnNLHttldLtZ8ec3HWwi3WHs9+ht14wxx+ODUdcVqxyigQY4SwFgsM/emLzNnHBJUjMWFyJaXslnA9EXJ2HUcUdfrBkSQe0R4A9NhuIznpPAdurCaPdW1F5ydTBfaWAaWwoq1DS14xqdKvQRwIncsj/fmT4Rk78iekzeBGJe/P85lOMIB0X6aQjTaqkqyddgMJAyd3m2YQm6EgYFUrKvCIp06OFvhoBvTDaTAjIMIUdWktfvG97osD5McynDi7iQOmpEbMmVc3n5cwNe7ExrLewLuNtDSKmbqB2DN17PPYpFPWfTXYsb7wp34slTQ9lUoJt0uoac+rcySzIWjEJt3TAKIF3xOqs9xJ2ENVJ88cgDhUxWg/VG+bbTYgVFznYwurpILXIbauPUjv1N91Jp1lElGFXxLJtdu+yseuvkqMGoBizK3C27/I9UU3Y4UgBPD2B+bYqo
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c9f911a-181d-41c2-426b-08de33677da5
X-MS-Exchange-CrossTenant-AuthSource: DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2025 19:01:11.6785
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uzQNbUN4h/T5DzWeTAU/rRxF29eK72a62zQ4AL7MRjFb3WxrcAFCAxdC0XZzvxUAbEVpC0Z1Gi8Lppfr3adQNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FRWP192MB2908
X-MS-Exchange-CrossPremises-AuthSource: DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossPremises-AuthAs: Internal
X-MS-Exchange-CrossPremises-AuthMechanism: 14
X-MS-Exchange-CrossPremises-Mapi-Admin-Submission: 
X-MS-Exchange-CrossPremises-MessageSource: StoreDriver
X-MS-Exchange-CrossPremises-BCC: 
X-MS-Exchange-CrossPremises-OriginalClientIPAddress: 2a02:3100:607c:2801:9ce5:f507:ac4f:14e1
X-MS-Exchange-CrossPremises-TransportTrafficType: Email
X-MS-Exchange-CrossPremises-Antispam-ScanContext: DIR:Originating;SFV:NSPM;SKIP:0;
X-MS-Exchange-CrossPremises-SCL: 1
X-MS-Exchange-CrossPremises-Processed-By-Journaling: Journal Agent
X-OrganizationHeadersPreserved: FRWP192MB2908.EURP192.PROD.OUTLOOK.COM
X-Authority-Analysis: v=2.4 cv=Vokuwu2n c=1 sm=1 tr=0 ts=6931da7a cx=c_pps
 a=BPyiTBNeHcKPZawmafFddQ==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=8gLI3H-aZtYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=IpzHyhw8AAAA:20 a=qyQpKsYFL2BymLek4o0A:9
 a=QEXdDO2ut3YA:10 a=bA3UWDv6hWIuX7UZL3qL:22
X-Proofpoint-ORIG-GUID: xK2pQbznKQpgxt7eD8pjvyw8ou_OoBmK
X-Proofpoint-GUID: xK2pQbznKQpgxt7eD8pjvyw8ou_OoBmK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDE1NCBTYWx0ZWRfXxdKE/MoLdMAb
 nivtOQQ/RRSNxiTnhUDJChJuNhloRRzLUBs/Fpu/XM08IoRz41X4e3aKPbeXFsuItebxf4sJZeJ
 58p98ojgzS65ToGrPqlwGr4I0BBP2RbQBLFlqMLw4ApuI2Xxv3hgdBYnKGE+DAvfeFK7J/EVINl
 PmxwebKZdssEa6vKMgwi/FPULqMK2SqrEwclXpJDIPHnAlYz6Oq7cR9/m0b5UQWaoEikMK/7Q8j
 X7Hbq75FKvhl+SrI6M8vWIZ3jLnTqcRSi+T5c+w7FwsJpRfjXQ93pbENJyEH1YCdQctWgOil8AC
 LnWRMyt8hs7xTUjBQlmri1Lcg93JpitIF2C3KjZ2v+V57fbjo1UMCN2d0HRtGorW7PLRgfR3D/W
 6YdJbqYIdu+5J4RT2BXMg7XwnTzubw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251204_110120_720739_0F129001 
X-CRM114-Status: GOOD (  16.44  )
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

On 12/3/25 19:00, Vladimir Oltean wrote:
> On Wed, Dec 03, 2025 at 05:25:46PM +0100, Tanjeff Moos wrote:
>>> Each SerDes protocol requires a different clock net frequency:
>>> - LANE_MODE_1000BASEX_SGMII requires PLLnCR0_FRATE_5G
>>> - LANE_MODE_2500BASEX requires PLLnCR0_FRATE_3_125G
>>> - LANE_MODE_10GBASER requires PLLnCR0_FRATE_5_15625G
>>> https://urldefense.com/v3/__https://github.com/nxp-qoriq/linux/blob/lf-6.12.34-2.1.0/drivers/phy/freescale/phy-fsl-lynx-10g.c*L2273-L2298__;Iw!!I9LPvj3b!C2MhsRe43DSJeXGT0xpGpqZ8TOnWlFtW1VY2DPka6a9H7t5QWgCMneu8mRvQGeR1ZcaSQidiREblHfFkXcKclJkqX_1ePg$ 
>>
>> According to LS1046ARM [1] SGMII requires 1.25 Gbps. I don't understand
>> where the 5 GHz comes from. I believe I am missing some knowledge here.
> 
> The clock net is an internal frequency provided by the PLL for lanes.
> It is given by PLLnCR0[FRATE_SEL]. I said that the lane can further
> divide or multiply it using a power of 2 factor.
> 
> Indeed SGMII wants a 1.25 Gbps baud rate, and it gets that by dividing
> the 5 GHz clock net provided by the PLL (PLLnCR0_FRATE_5G) by 4 (it uses
> RAT_SEL_QUARTER for LNaGCR0_TRAT_SEL and LNaGCR0_RRAT_SEL).
> 
> Because we _know_ that lanes can divide the 5 GHz clock net frequency by
> 4 to get 1.25, we say that a PLL which uses PLLnCR0_FRATE_5G is good for
> SGMII.
> 
>>> The problem is that 2 PLLs can't provide 3 distinct clock net frequencies.
>>> So you can either support 1G and 2.5G, or 1G and 10G, or 2.5G and 10G.
1G and 10G is sufficient. 1G (SGMII) also supports 100M. 10G (XFI) also supports
2.5G and 5G via rate limiting.

>>
>> According to table 31-4 "Valid SerDes RCW Encodings and Reference Clocks"
>> (page 1919):
>> - SGMII can be used with PLL=100 MHz or PLL=125 MHZ
>> - 2.5G SGMII can be used with PLL=125 MHz or PLL=156.25 MHZ
>> - XFI can be used with PLL=156.25 MHZ
>> My clocks receive the following frequencies (on all devices, "fast" and
>> "slow"):
>> - PLL 1: 125 MHz
>> - PLL 2: 156.25 MHz
>> By choosing the right PLL I can use SGMII, 2.5G SGMII or XFI, which I
>> actually do. It is possible to freely assign PLL 1 or PLL 2 to any lane
>> using LNxGCR0[RPLL_LES].
> 
> Oof, this is hard to explain, let me try. The short summary is: you can
> use the 125 MHz PLL refclk for both SGMII and 2.5G SGMII, but not at the
> same time.
> 
> The clock net frequency is derived from the PLL reference clock, but
> they are not one and the same thing. Their relationship is:
> - From one reference clock you can provide one of two clock net
>   frequencies.
> - One clock net frequency can be provided from different reference clock
>   frequencies.
> 
> The entity that loads the RCW configures the SerDes PLLs in this way.
> 
> It knows the SerDes protocols per lane, and their respective mappings to
> a PLL or the other, through RCW[SRDS_PRTCL_S1].
> 
> 1. It looks at PLLF. Based on which SerDes protocols are mapped to it, it
> programs the clock net frequency (PLLnCR0[FRATE_SEL]) at the right value
> for those protocols. It is a *fact* that SGMII requires an FRATE_SEL of
> 5 GHz, 2500Base-X of 3.125 GHz, etc etc.
> 
> 2. Then, the RCW loader asks itself - how do I obtain this PLLnCR0[FRATE_SEL]?
> 
> As you say: SGMII (aka the 5 GHz clock net frequency) can be obtained
> from 100 MHz or 125 MHz reference clock. This information sits in the
> RCW[SRDS_PLL_REF_CLK_SEL_S1] field. If 1, it will try to obtain the
> clock net from the higher frequency for that protocol. If 0, from the
> lower reference clock frequency.
> 
> So applied to the particular case of SGMII from step 1, you are telling
> it in the RCW to generate 5 GHz clock net from the higher reference
> clock, aka 125 MHz. This translates into a write to PLLnCR0[RFCLK_SEL]
> of 001b (aka 125 MHz).
> 
> This is all to say - when you use SGMII from the 125 MHz refclk, you
> have to use RCW[SRDS_PLL_REF_CLK_SEL_S1]=1, and when you use 2500Base-X
> from the same refclk, you have to set RCW[SRDS_PLL_REF_CLK_SEL_S1]=0.
> 
> What happens under the hood is that these 2 settings result in different
> clock net frequencies produced by that PLL, incompatible with each other.
> You can either produce one, or the other, at any given time.
Wow, this was an elaborate explanation which pushed my understanding one level
up. Thank you for investing your time!

For clarity, I like to re-state my PLL configuration:

- "slow" devices:
  - RCW[SRDS_PRTCL_S1] = 0x2233
  - RCW[SRDS_PLL_REF_CLK_SEL_S1] = 0b11
  - PLL 1:     5 GHz (derived from external 125 MHz)
  - PLL 2: 3.125 GHz (derived from external 156.25 MHz)

- "fast" devices:
  - RCW[SRDS_PRTCL_S1] = 0x1133
  - RCW[SRDS_PLL_REF_CLK_SEL_S1] = 0b11
  - PLL 1:       5 GHz (derived from external 125 MHz)
  - PLL 2: 5.15625 GHz (derived from external 156.25 MHz)

My patch never reconfigures the PLLs or their clock net frequencies. It 
assigns lanes to PLL 1 (for SGMII) or PLL 2 (for 2.5SGMII). This is only
done on "slow" devices. The "fast" devices always use XFI (PLL 2).

> 
> In Linux we don't change the PLL refclk and clock net selection that was
> made by the RCW. Doing so would mean powering down all lanes that use
> that PLL, and unbinding and rebinding the Ethernet driver (because the
> supported_interfaces mask will change, and the phylink instances need to
> be destroyed and re-created to pick up that change). It is a very
> invasive operation.
The lynx-10g driver seems to alter PLL assignment in lynx_10g_lane_set_pll().
That means that a lane could be operated in SGMII or 2.5SGMII mode by assigning
the correct PLL (given that the PLLs are properly pre-configured via RCW).

But it also means that in theory I could configure PLL1 = 5 GHz and PLL2 = 5.15625 GHz
and then switch between SGMII (100M/1G) and XFI (2.5G / 5G / 10G via rate limiting).
This way all media speeds would be possible.

However, switching to another PLL isn't enough, I also have to switch the lane's protocol.
This worked for SGMII and 2.5SGMII, but I never managed to switch between SGMII to XFI.

> 
>>> You are just requesting to support the 10G, 5G and 2.5G media speeds via
>>> LANE_MODE_10GBASER (with pause-based rate adaptation in the Ethernet PHY),
>>> and the 1G and 100M media speeds via LANE_MODE_1000BASEX_SGMII.
>>
>> Yes, that is my minimum target. I hoped that the "fast" device can support
>> all speeds, but it's not mandatory.
> 
> What do you mean "can support all speeds", do you mean the media side
> speeds?
Yes, indeed.

> By switching from 10GBase-R to SGMII it would support them all,
> wouldn't it?
I don't think so. SGMII does only support 100M and 1G. Tell me if I'm wrong.

> Above I'm just re-explaining why you can't support 3 SerDes
> protocols which require different clock net frequencies when architecturally
> we have just 2 PLLs.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
