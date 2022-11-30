Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3850C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 30 Nov 2022 15:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=llOL18xRtIcZZdU1Z/+jzyKSBs5+5M6erptPJ7lj9OI=; b=H23I26BED/C8KGRvgXDIjiSmWm
	UQZA3zn5lXScZ5lAygFtrCETnanzrrhpVbDS9YSGuUYkvOO8KnLdU1NSzuj0+Bfmbq7CUE6OiBJsO
	Efu26UMawu9qrz1YNk+4pGUOcqrxMUK+eBBHDPqWnonMKYRCF9H4cz0t/k9vQXOiEjQPAADQVshVN
	2g0vVYyYM1UVitkB6G1TDUboTZxWWABTRPD+FheGq3zowPshng9DvzAAmpROSFUw/Fu1xNmM3x9aC
	wcHaOXQhaXiSK8ov579K05LNslZa9+1MyHsYhjY379yCy25LLHS4gOwHWO3jofJy2IEnHn9NUYdOi
	SQ3eMBaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0OkO-00HGe2-1k; Wed, 30 Nov 2022 15:11:40 +0000
Received: from mail-dm3nam02on20612.outbound.protection.outlook.com ([2a01:111:f400:7e83::612] helo=NAM02-DM3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0OkL-00HGbX-HF
	for linux-phy@lists.infradead.org; Wed, 30 Nov 2022 15:11:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mQ/tpMcbjH48EkBZdDzmooUCPywAD9w9RtXlVtoJ3QajvLkc8pcaAZEOTxxoagEeSH4QIPvMLOTnB5VYJ9MhSYrovRzn6m9KuWv50EkGKfpkBTEJkvacboMwvny6Pm6o+GWA9dLhJZTo6t3LuOnT02HwupcWEp6VuLNbd2NiAi3xXxtWLhRMvpLR4kA3Pu23YyjzL+pp/HkNVIMfRcAGGSj/kf1wv+NyLul/PMtWAh2/GGCIGk11boobaBSmzcmgA8lbs2njzJgr6KrscZuFIE/Zvl7IT8L3je/y2nF/4g/pGwBV6AJnAuB/1pS8ajMBfOfhrLs8xc9tdWFuCunFog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iYCiNCLBu1a0lSxJk9MOM6Nf5wxlmeKjlThgkLGgxkY=;
 b=etWkRoKzmMQKmO1QWt3RSi4C7Bf+04U5SRrPUQgMVB5+bITSEwBzGNYGwlS5mllKihkZ9ZGhie6b8UPu2kZoQu+UxzO+4K4406y4Rl5dG+XsqFnyrEl6yLf78n9VzvFgbZXgk9H8+SRn8AaaX+u5HS2t9mOHIBdGSpRsk/dfNJNpSz9ONzOg7X+P0uB0X8qdH2TG2wFyoeKWgsPTXYQdOqklbjju1ylZ/s2lJRT0gH/sG5q1eZCYcYbnSIvwegBSa6OWYSh+o3hrkSH7cGnB43yh/IRnSA0eXBkzchjONzv05ctlPEfIZqCX9/5NX53COPVUNyGxUTUPs/AlTb9m8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iYCiNCLBu1a0lSxJk9MOM6Nf5wxlmeKjlThgkLGgxkY=;
 b=rboXjHSiotofU1qkwKpz47zBXPQRDJGOMFJMGoHBTEORLJwCI+UtU+z9TV8fcw17MU5L3WQajegmRxmR8Fww6zhQDW62dVZyphau1+nTU1G/ifRicWGgViA9qIthkGKL8hXAPOYfXuspVVLU5X2DYngQeCGEWdv4uVC2yjWYMmZfXjQ0sIprnEAEpNI1NUXnu9zSuOmupoIepAdmw5SMkSzpsaGRmuFJrFaWDhOrcW8Fi6U21zkW/lb0veNWcV+QxDKJXaKD/T2GfPAt3uV29IlBMB3UgUmPde9fGI6SQvZXuianaORbhO/sWhZiFNlY67mqK9pdn5YN18ySv8m18g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DM6PR12MB3356.namprd12.prod.outlook.com (2603:10b6:5:38::11) by
 DS7PR12MB6045.namprd12.prod.outlook.com (2603:10b6:8:86::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5857.23; Wed, 30 Nov 2022 15:11:30 +0000
Received: from DM6PR12MB3356.namprd12.prod.outlook.com
 ([fe80::c267:3c38:d5bb:db3b]) by DM6PR12MB3356.namprd12.prod.outlook.com
 ([fe80::c267:3c38:d5bb:db3b%3]) with mapi id 15.20.5857.023; Wed, 30 Nov 2022
 15:11:30 +0000
Message-ID: <b81c69e0-13a2-6a25-21c7-c0d8804f9c3b@nvidia.com>
Date: Wed, 30 Nov 2022 20:41:14 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 1/3] dt-bindings: PHY: P2U: Add PCIe lane margining
 support
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, vkoul@kernel.org,
 kishon@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 thierry.reding@gmail.com, jonathanh@nvidia.com, vidyas@nvidia.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, bhelgaas@google.com, lpieralisi@kernel.org,
 nkristam@nvidia.com
References: <20221124083510.3008139-1-mmaddireddy@nvidia.com>
 <20221124083510.3008139-2-mmaddireddy@nvidia.com>
 <0b203c11-851c-fd6c-faeb-e283b158f1c8@linaro.org>
X-Nvconfidentiality: public
From: Manikanta Maddireddy <mmaddireddy@nvidia.com>
In-Reply-To: <0b203c11-851c-fd6c-faeb-e283b158f1c8@linaro.org>
X-ClientProxiedBy: MA0PR01CA0071.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::11) To DM6PR12MB3356.namprd12.prod.outlook.com
 (2603:10b6:5:38::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR12MB3356:EE_|DS7PR12MB6045:EE_
X-MS-Office365-Filtering-Correlation-Id: 8922ede7-55ad-4832-567d-08dad2e52896
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	uEu+I9vbfL1f1kgbEmZPHfF1aN0wFa1lPrEHMRcWkIABIngew1pB5hRc9P9FBwk3MQCuguebXyBOMEbwP5kGAQZvBaFD91jlnnIwagmNdpPQs8AbCtKHOCVKE0hERA7HYd6o1WMAAz5OVtMmXnaMWxW7e0xgvUF3oaVCLxyjSg1JKIT87RGYAfhq+qF65GlZwItHtGSE+w9RFejBL+1+shSWE3gofnjunPCJhhad7Vv0Oxo052v2n4gyNlw7O+3DD7twayoK8v9gPdpmbQXUWQhDUWG+c4Pg5lKfm7FYWlf129fAThOl3V06Iz6Z/rnF6X8kQymEhMo9zBdpI1KWRSQGHGPPZZ0povFEvoEQx3v92c+83mmNc11Vq01vDMDct9toFnI729vQ1Oq7fNxNnWuXMUcpktlNdd5YiRIlkl7ZU097faNbNXKeG0CqzTYfkWJ05WUqk+yAXjgGd+YN3l4FC1mufo5i6QLTxQRAJnfp8nrlnW1EVGM8W9ktEp/2zzokYXINUMA7xbZnKFW0NALepPNJMZGcYzrUvYwT7W2jO5PELntF8PFKG718pN/q0nyzIqV6mI4Ji/0e7AQQeF91jjMy3LqTGYMxosa3l4syJLPAV41Zp6jyvIjEGmNdZ0yFRJvcWks3feZlfKQCsXbOORFDfo7NybKpt6EkyWocvHlKuDmOX00WBlxINBADQOFFo7vdQDmo6GJQRJZ5DLIZpA2yfL4budWu4BqMo+T59NgIRurh7Q3tVunUFJK5uG8bcx+NGWRtTinEv+ohwDWeCQC/XlH0Xng1EN9L1n0RM38yE8v4dhkFBQUw0f/B
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR12MB3356.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(136003)(396003)(376002)(39860400002)(346002)(451199015)(2906002)(36756003)(107886003)(6666004)(86362001)(7416002)(6486002)(31696002)(478600001)(966005)(41300700001)(26005)(316002)(66556008)(66946007)(6636002)(5660300002)(66476007)(8676002)(8936002)(6506007)(4326008)(6512007)(2616005)(186003)(83380400001)(38100700002)(53546011)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?cy93VG5Za1RpeWhmb1QvTCtuOWxvOVJpTWFaNWNUbjVlK0hvSzhGSmo3dTFh?=
 =?utf-8?B?dTNlS0FnSFpNY1l2R1lqcG5uclNucXU0VVh0V1NqYVpKWSszcFB1bmwxU3BS?=
 =?utf-8?B?Ym92UEZja0J2aVRCTHNXZEFvTWViWHIxU2VIR0pyOEhDRXROaU9zS1NHeEJX?=
 =?utf-8?B?R3hOOWNpWmRhUkJCWURnR00vZWdNdFo5VTZIT0pDaUdHSGtWSWdRcTgrUTFt?=
 =?utf-8?B?cERoWWl1b0wvcHhTQ3YrZkFJYkVyN3lWZHd0STdWdDBBcldzc1NqVHpicnBm?=
 =?utf-8?B?S3RGRnFzYVQvY0oza3d2Rjlud1p0aFNkaVBGc3hPV3lydjJVUWc4bkRxWEti?=
 =?utf-8?B?WFNydmdmOWhQZzBkODNldC83eTJwKy9SM2RMTmtwZDcrbWpDREZMbzBoTjVW?=
 =?utf-8?B?RWpqcGMyRnRTM21TNER2WUxXTTh0QTZaT1QrZzlrcTVsWklXZDhYb0dRRmt0?=
 =?utf-8?B?K1FoZFhtVFhhNUEzam03MzU0QnR6VWdaOVhJeUVHR1krQ0NuN2t1QjhzY3Jv?=
 =?utf-8?B?KzV2UDZObDFGeTZEbm9XV0tuSzRBemkrdFJ6TkE1eU5hd3pxM1Y4Yk5MU0dt?=
 =?utf-8?B?dWtrVFIwb0pQZnZSZFYzNWpUeUVGRWd4V3FEOE82bmU2UzNWUFhMdyszTDYv?=
 =?utf-8?B?dWtLV1FUYUlYOEhrOGhPeTM0RXFKM1VINDlnVHNvaERTWVZ3QzhLVklCK0Jr?=
 =?utf-8?B?TmVDTHptSDQ1ZVd1R2EvVUlHUW05NlVFRE1vVFEvaHg0N1pwK1g0ZFI0TEhn?=
 =?utf-8?B?aXR3a09nbFkwa09FTEx4QWkwT01HcFRQcnRxSVZhV0NZbVZFT2VqSUMrQ0dm?=
 =?utf-8?B?ZDBtbzNIeTlxR0FRTExvUHBHVWtybkZISW8zRWkrcG9Cb2dlVElZdU5tNTRL?=
 =?utf-8?B?cU41RjlQeDg0MU1UczhLWHBBRUFLRWh0ZzZmYTJYMWw2djVUUEVuRkFUNms3?=
 =?utf-8?B?anc5dVNpM0x0VVNnZlRxeExEVE9Pb2NleUluT2JiSzF4ajllbG5vYmZuS2dC?=
 =?utf-8?B?RlFVa0xmc0UxRVBIdnVOVUpxLzJ4ZkY3K0pXdVBuUlhSZk5abWVuZXcxaHVW?=
 =?utf-8?B?cUtiYnlDQ0FONlBSdmhvMjJDRSt4WDZ0dHpROERuRGJDL2xjYjQ1L25iejYw?=
 =?utf-8?B?RGFUekE2KzZxT0EyOTRCK2pXdUtmZmhIay9TWHhIbkNQVy9WVE1vUDhDbXM4?=
 =?utf-8?B?OFZGNk1rbEFqYVl1VEU2QklPOTFYYVdqN0lOMTd2alVDNWNkcHpqM05MYUNZ?=
 =?utf-8?B?aE9obldnaGtnNnVESHAraCtjOUlBVEtJYmQ3a1g0SGpLS0h6YVc2VjQ0VFFC?=
 =?utf-8?B?Y2ZFZnREOXpWTG90K3UwTWVFZ0p2YThOMkVXV01ON1pkMkF1N01vM3p0RCs3?=
 =?utf-8?B?bnV4Y1loTnhGT1ZsUk9wVDQ5ejlKZlNUaE0vL0FzZnlWOWw2cjZldnBka1Ji?=
 =?utf-8?B?M2Y2RnEycXNubDRkcnpWY3BKU2JSa09mMU5JUlZlWUFtV0hYOXFzWFc3VGVY?=
 =?utf-8?B?VXFUQ1ZGZjJ2SGczSXlkdGJpbXB2cTgzaGxIVXFwYmZYSm5QMGhGYXc4c0R5?=
 =?utf-8?B?SjEwZk4rZHovZkR3UHpsRTI4QmYybG9IYXhwa0pCa3JZRzdSczBGVnRIaFNC?=
 =?utf-8?B?anVESnhBRkc5OXY1cThNaHl1ckpXNXkxOFZtekxBc3lFTHUzRDB4S1U1YjBF?=
 =?utf-8?B?UlNHb1FKcGhEa2JBcE5tRStUV3pJVHRoK29qZWJOMHQ4a0ZYblA4cVF1Rjhk?=
 =?utf-8?B?MVJ5K0R5aHFJUTNRMHhnWjJVWDNVZFpmeldKY2piNFBKVEh1N0Vtc3JaY1hv?=
 =?utf-8?B?d3ZlTW5JMlVPTjlLcWJXSlltMjcraFR1a0t6UEVkSUNkYzc4aUppVVBzRFJm?=
 =?utf-8?B?TGNLS3MxQjhSNHF1RU80V1N0cnd2Vnd6ek93N3A0L1NLK0FqQiswNW5rWDlD?=
 =?utf-8?B?WGhUSHF3d1g2YVEvUEV3QjFBcEZuK3U3TUIxaHhFK0c5eHhva0N3bUlUMnU1?=
 =?utf-8?B?Q0d0aXdlKzBmMkVUa2hJYkY0SXFxTEVWU0p1d2M0ZEdzTFpLcFRZOUY4eWhy?=
 =?utf-8?B?TU1RSEhVZzhReWxqQkxITFBPYld0SzV4bTcySTNiS0xxT1c1VVYvd0V3NzMz?=
 =?utf-8?B?ZWZ5WUVCMU5Tc1p5YXorWmQyUjc2NFhSTTQ4eDZmR0djMk1rMFFsdzQ3bnU0?=
 =?utf-8?B?eXc9PQ==?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8922ede7-55ad-4832-567d-08dad2e52896
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB3356.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2022 15:11:30.1943
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HgIkxqvtEPqZwdWVMh2enSGvRudNoslXVP69KNHjqzQHjSFu9VII3W8c4fvOG1olTlvsKuPclamVm1ru8QvF+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB6045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221130_071137_796251_10F14D90 
X-CRM114-Status: GOOD (  20.06  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciBxdWljayByZXZpZXcuIEkgd2lsbCB3YWl0IGZvciBvdGhlciByZXZpZXdl
cnMgdG8gcmV2aWV3IApwYXRjaCAyICYgMy4KSSB3aWxsIGFkZHJlc3MgYWxsIHJldmlldyBjb21t
ZW50cyBhbmQgc2VuZG5ldyByZXZpc2lvbi4KCk9uIDExLzI0LzIwMjIgMjoxNSBQTSwgS3J6eXN6
dG9mIEtvemxvd3NraSB3cm90ZToKPiBFeHRlcm5hbCBlbWFpbDogVXNlIGNhdXRpb24gb3Blbmlu
ZyBsaW5rcyBvciBhdHRhY2htZW50cwo+Cj4KPiBPbiAyNC8xMS8yMDIyIDA5OjM1LCBNYW5pa2Fu
dGEgTWFkZGlyZWRkeSB3cm90ZToKPj4gVGVncmEyMzQgc3VwcG9ydHMgUENJZSBsYW5lIG1hcmdp
bmluZy4gUDJVIEhXIGFjdHMgYXMgYSByZWxheSB0byBleGNoYW5nZQo+IHR5cG86IG1lcmdpbmc/
Ckl0IGlzIG5vdCB0eXBvLCBpdCBpcyBQQ0llIGZlYXR1cmUgbGFuZSBtYXJnaW5pbmcuCmh0dHBz
Oi8vcGNpc2lnLmNvbS9wdXNoaW5nLWxpbWl0cy11bmRlcnN0YW5kaW5nLWxhbmUtbWFyZ2luaW5n
LXBjaWUlQzIlQUUKPgo+PiBtYXJnaW4gY29udHJvbCBkYXRhIGFuZCBtYXJnaW4gc3RhdHVzIGJl
dHdlZW4gUENJZSBjb250cm9sbGVyIGFuZCBVUEhZLgo+IFBsZWFzZSB1c2Ugc2NyaXB0cy9nZXRf
bWFpbnRhaW5lcnMucGwgdG8gZ2V0IGEgbGlzdCBvZiBuZWNlc3NhcnkgcGVvcGxlCj4gYW5kIGxp
c3RzIHRvIENDLiAgSXQgbWlnaHQgaGFwcGVuLCB0aGF0IGNvbW1hbmQgd2hlbiBydW4gb24gYW4g
b2xkZXIKPiBrZXJuZWwsIGdpdmVzIHlvdSBvdXRkYXRlZCBlbnRyaWVzLiAgVGhlcmVmb3JlIHBs
ZWFzZSBiZSBzdXJlIHlvdSBiYXNlCj4geW91ciBwYXRjaGVzIG9uIHJlY2VudCBMaW51eCBrZXJu
ZWwuCkkgdmVyaWZpZWQgdGhlc2UgcGF0Y2hlcyBvbiA2LjAuMC1yYzYga2VybmVsIGFuZCBleGVj
dXRlZCBnZXRfbWFpbnRhaW5lcnMucGwKc2NyaXB0IG9uIGl0LiBEaWQgSSBtaXNzIGFueW9uZSBo
ZXJlPwo+Cj4KPj4gU2lnbmVkLW9mZi1ieTogTWFuaWthbnRhIE1hZGRpcmVkZHkgPG1tYWRkaXJl
ZGR5QG52aWRpYS5jb20+Cj4+IC0tLQo+PiAgIC4uLi9iaW5kaW5ncy9waHkvcGh5LXRlZ3JhMTk0
LXAydS55YW1sICAgICAgICB8IDUwICsrKysrKysrKysrKysrKysrKysKPj4gICAxIGZpbGUgY2hh
bmdlZCwgNTAgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktdGVncmExOTQtcDJ1LnlhbWwgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3BoeS10ZWdyYTE5NC1wMnUueWFtbAo+PiBpbmRl
eCA0ZGM1MjA1ZDg5M2IuLjBiYTNmNmEwYjQ3NCAxMDA2NDQKPj4gLS0tIGEvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktdGVncmExOTQtcDJ1LnlhbWwKPj4gKysrIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktdGVncmExOTQtcDJ1Lnlh
bWwKPj4gQEAgLTQwLDYgKzQwLDUxIEBAIHByb3BlcnRpZXM6Cj4+ICAgICAnI3BoeS1jZWxscyc6
Cj4+ICAgICAgIGNvbnN0OiAwCj4+Cj4+ICsgIGludGVycnVwdHM6Cj4+ICsgICAgaXRlbXM6Cj4+
ICsgICAgICBkZXNjcmlwdGlvbjogUDJVIGludGVycnVwdCBmb3IgR2VuNCBsYW5lIG1hcmdpbmlu
ZyBmdW5jdGlvbmFsaXR5Lgo+IHR5cG86IG1lcmdpbmc/Ckl0IGlzIG5vdCB0eXBvLCBpdCBpcyBQ
Q0llIGZlYXR1cmUgbGFuZSBtYXJnaW5pbmcuCmh0dHBzOi8vcGNpc2lnLmNvbS9wdXNoaW5nLWxp
bWl0cy11bmRlcnN0YW5kaW5nLWxhbmUtbWFyZ2luaW5nLXBjaWUlQzIlQUUKPgo+PiArCj4+ICsg
IGludGVycnVwdC1uYW1lczoKPj4gKyAgICBpdGVtczoKPj4gKyAgICAgIC0gY29uc3Q6IGludHIK
PiBEcm9wIGVudGlyZSBwcm9wZXJ0eSwgbm90IHJlYWxseSB1c2VmdWwuCkluIGRyaXZlciwgSSBh
bSB1c2luZyBwbGF0Zm9ybV9nZXRfaXJxX2J5bmFtZSgpLCBJIHdpbGwgY2hhbmdlIGl0IHRvIApw
bGF0Zm9ybV9nZXRfaXJxKCkKYW5kIGRyb3AgdGhpcyBwcm9wZXJ0eS4KPgo+PiArCj4+ICsgIG52
aWRpYSxicG1wOgo+PiArICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25z
L3BoYW5kbGUtYXJyYXkKPj4gKyAgICBkZXNjcmlwdGlvbjogTXVzdCBjb250YWluIGEgcGFpciBv
ZiBwaGFuZGxlcyB0byBCUE1QIGNvbnRyb2xsZXIgbm9kZSBmb2xsb3dlZCBieSBQMlUgSUQuCj4+
ICsgICAgaXRlbXM6Cj4+ICsgICAgICAtIGl0ZW1zOgo+PiArICAgICAgICAgIC0gZGVzY3JpcHRp
b246IHBoYW5kbGUgdG8gQlBNUCBjb250cm9sbGVyIG5vZGUKPj4gKyAgICAgICAgICAtIGRlc2Ny
aXB0aW9uOiBQMlUgaW5zdGFuY2UgSUQKPj4gKyAgICAgICAgICAgIG1heGltdW06IDI0Cj4+ICsK
Pj4gK2FsbE9mOgo+PiArICAtIGlmOgo+PiArICAgICAgcHJvcGVydGllczoKPj4gKyAgICAgICAg
Y29tcGF0aWJsZToKPj4gKyAgICAgICAgICBjb250YWluczoKPj4gKyAgICAgICAgICAgIGVudW06
Cj4+ICsgICAgICAgICAgICAgIC0gbnZpZGlhLHRlZ3JhMTk0LXAydQo+PiArICAgIHRoZW46Cj4+
ICsgICAgICByZXF1aXJlZDoKPj4gKyAgICAgICAgLSByZWcKPj4gKyAgICAgICAgLSByZWctbmFt
ZXMKPj4gKyAgICAgICAgLSAnI3BoeS1jZWxscycKPiBUaGF0J3Mgbm90IGhvdyBpdCBzaG91bGQg
YmUgZG9uZS4gWW91IGhhdmUgb25seSB0d28gdmFyaWFudHMgaGVyZSwgc28KPiBhZGQgYSAicmVx
dWlyZWQ6IiBibG9jayB3aXRoIGFib3ZlIGFuZCBvbmx5IG9uZSBpZjp0aGVuOiBjbGF1c2UgZm9y
Cj4gaW50ZXJydXB0cyBhbmQgbnZpZGlhLGJwbXAuCj4KPiBSZXF1aXJpbmcgcmVnL3JlZy1uYW1l
cy9waHktY2VsbHMgc2hvdWxkIGJlIGluIHNlcGFyYXRlIHBhdGNoIHdpdGggaXRzCj4gb3duIHJl
YXNvbmluZy4KT2ssIEkgd2lsbCBjcmVhdGUgdHdvIHNlcGFyYXRlIHBhdGNoZXMgYW5kIGFkZCBp
Zjp0aGVuIGNsYXVzZSBvbmx5IGZvciAKdGVncmEyMzQuCkFzIHBlciB1bmRlcnN0YW5kaW5nIGZp
bmFsIGNoYW5nZSB3aWxsIGxvb2sgbGlrZSBiZWxvdywgcmlnaHQ/CgoKcmVxdWlyZWQ6CiDCoCAt
IHJlZwogwqAgLSByZWctbmFtZXMKIMKgIC0gJyNwaHktY2VsbHMnCgphbGxPZjoKIMKgIC0gaWY6
CiDCoMKgwqDCoMKgIHByb3BlcnRpZXM6CiDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlOgogwqDC
oMKgwqDCoMKgwqDCoMKgIGNvbnRhaW5zOgogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbnVtOgog
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBudmlkaWEsdGVncmEyMzQtcDJ1CiDCoMKgwqAg
dGhlbjoKIMKgwqDCoMKgwqAgcmVxdWlyZWQ6CiDCoMKgwqDCoMKgwqDCoCAtIGludGVycnVwdHMK
IMKgwqDCoMKgwqDCoMKgIC0gbnZpZGlhLGJwbXAKCj4KPgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5
c3p0b2YKPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
