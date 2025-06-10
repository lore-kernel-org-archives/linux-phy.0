Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B857C5B552
	for <linux-phy@archiver.kernel.org>; Tue, 10 Jun 2025 01:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:References:Message-ID
	:In-Reply-To:From:Subject:Cc:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3la71ywyeRRy5ETfqqnSPu4yGxAoCnA+IjoVigvQokk=; b=o1XQj9oY7rStqx
	om2f262PaIQ+GqbOU311Fc6Cc+2y+d9bQlzV6Xvklgtt2klrTwJH4agKK8LboG8yVXGnlC82s/R6y
	skQ9tO83dJ7/YKHbtm9pgj4oQxm1Z2snuYdTM4rcGx3mHMib87rbxObRxZUQQJxf5iXzJDcqJsCQr
	K7cnQ7V3U1XaRZjVUTBW93Isw42QlaCRMaKOHXw8ihjgyMEn7EosY629aV9CtB75/9YAuDogJR/2l
	G5i/rfpDanTdwo2tuvxCtvhIM9Lwgqx1M9rz6icvnu/3qVAOK1J2D+Wwnmb2V6mSl00dqoL3BbLHy
	jDmzLqfmeRaOgoYPB6TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOo34-00000005Zwv-3q48;
	Tue, 10 Jun 2025 01:45:10 +0000
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOo32-00000005ZwM-13o3
	for linux-phy@lists.infradead.org;
	Tue, 10 Jun 2025 01:45:09 +0000
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 559FfEWQ000614;
	Tue, 10 Jun 2025 01:44:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=corp-2025-04-25; bh=+dSj0/JmDRF3AEstiu
	Q7ThHc65aIPtAYKK5aoMOXVz8=; b=cEDu4GaSwuM9QW5mwSeSioVoDTvuNLqVik
	QBQD9qCRYi1GVSTa+ty2OZjc/nohnq/cjCZhA6nlBV5BQ2lAa/f3W4wkAfc29kp8
	4rP/1n14lFElJcOJveUciF4HvIb/YcNZzsSe1FqnJCfXTf1/eWgoahHxzujB+Y8c
	Wk1y/Mq2tScrKNvX4mEdI+QFEp2wWXJDn1LskVLEmwfiGp7GHOY7LLJCWusPX2Tk
	99v0byDP6kSygfGirKUVzUNJoYt58dqXZ0L5jh1PHG7DhVuxDzQzMZseetqLgbk2
	IwsLlZkkHlN54/sdkCr1bg6RWEzQ+t6VKhLvkfwVVuCSA6uHj0lQ==
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 474d1v38vu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 10 Jun 2025 01:44:49 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 55A0PfJg020395;
	Tue, 10 Jun 2025 01:44:48 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12on2055.outbound.protection.outlook.com [40.107.243.55])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 474bvebwhe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 10 Jun 2025 01:44:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HH8DNQyJz4JvEhWSZ9ExFgfXF+SQs4o44c5KtNGOIDNQZq5H8UVJiJ5oA9oxSp476DHIDYdAbj1Agsc0cao4E3JVFMQdWdKxSimp+TCHxXbhZnzEr+e3CobciKuH+RUqzoNSTLNDghutRW4s0WvpYo/L+x7q9Xh0ViDxJlgFLZRZ+CNajyx+ASyeoBDI58i1cE1T6KB96of+RC8iJrPhyjVsYBlMBPihBe9JDaFq+hn+pYeRjpp5xlGN92FIkENlh4FmJU91oxyGUeFg7B/aUu4WJjdLc6l6mW5yRlhCTwwriHbVlNt9JGs2K9cF+0xjOtwNVsWjoEXCAaYpeD5+4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+dSj0/JmDRF3AEstiuQ7ThHc65aIPtAYKK5aoMOXVz8=;
 b=mU41p3TgpIiIacPjjCZlsTmUsFmEM2dSkxF3Zj6thvgnrUaWH3Iwk20TBf1n9jHzilFpCKvcm2Pll7Nlth4ddRQcfug3HckuwzEpCCZyS5ceTsy/aZBkjfGZBrVLbUjwTDJ3iwuTy4Kyi/sWkEa2uRYLWlqysw4M8v8oHCfW36xyQRMimu5FuvmrtieqqF033WhqFcEahtiaEtdfkFMLQlIgGu0+upETAZI2loSbiWW51TFpYMaplIhUrrA7365ycSDwhJ3tSwI/wa9eIY/9zSielETAqZAQ35eh7ZaFWa89b9+29WL0e5WSJEqNY0ZAi4koVf2riX/SbbWWI4jgCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+dSj0/JmDRF3AEstiuQ7ThHc65aIPtAYKK5aoMOXVz8=;
 b=HO3Q5Andtu9aFPJhTZHHPjphff7bzYaPFH89okwUzHJL1MIWlb9FW6M88REcBdzuY1xiZ6rW1peO0EmytknEtBIkMwqsPfmUA2/ZxWKjLzCGIi7/xrPY+CbJF7mfp0jDw2EtHXMd5Pqtx7vyIjLlwi5EccHz5+AYIVEIo3fTGos=
Received: from CH0PR10MB5338.namprd10.prod.outlook.com (2603:10b6:610:cb::8)
 by SA2PR10MB4793.namprd10.prod.outlook.com (2603:10b6:806:110::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.24; Tue, 10 Jun
 2025 01:44:46 +0000
Received: from CH0PR10MB5338.namprd10.prod.outlook.com
 ([fe80::5cca:2bcc:cedb:d9bf]) by CH0PR10MB5338.namprd10.prod.outlook.com
 ([fe80::5cca:2bcc:cedb:d9bf%7]) with mapi id 15.20.8813.024; Tue, 10 Jun 2025
 01:44:45 +0000
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
        Vinod Koul
 <vkoul@kernel.org>, <kishon@kernel.org>,
        <manivannan.sadhasivam@linaro.org>,
        <James.Bottomley@HansenPartnership.com>, <bvanassche@acm.org>,
        <andersson@kernel.org>, <neil.armstrong@linaro.org>,
        <konrad.dybcio@oss.qualcomm.com>, <dmitry.baryshkov@oss.qualcomm.com>,
        <quic_rdwivedi@quicinc.com>, <quic_cang@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <linux-scsi@vger.kernel.org>
Subject: Re: [PATCH V6 00/10] Refactor ufs phy powerup sequence
From: "Martin K. Petersen" <martin.petersen@oracle.com>
In-Reply-To: <c2b9dfbf-9163-4df5-bd0d-25c5bb43cfb5@quicinc.com> (Nitin Rawat's
	message of "Wed, 4 Jun 2025 13:07:15 +0530")
Organization: Oracle Corporation
Message-ID: <yq1cybc74lw.fsf@ca-mkp.ca.oracle.com>
References: <20250526153821.7918-1-quic_nitirawa@quicinc.com>
	<yq1a56xiir9.fsf@ca-mkp.ca.oracle.com>
	<c2b9dfbf-9163-4df5-bd0d-25c5bb43cfb5@quicinc.com>
Date: Mon, 09 Jun 2025 21:44:43 -0400
X-ClientProxiedBy: SJ0PR13CA0237.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::32) To CH0PR10MB5338.namprd10.prod.outlook.com
 (2603:10b6:610:cb::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR10MB5338:EE_|SA2PR10MB4793:EE_
X-MS-Office365-Filtering-Correlation-Id: 74c0d758-8b92-41ee-27a0-08dda7c060bf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?gxSeZCGioCCAGNPTk9x/D2IwCuW50b76BwcZGFCNJCB2l7+IEKEYHAuMPlKO?=
 =?us-ascii?Q?16Daf1K+taHoTJFZlN5DwsNmAnEQ2do8pwZ148Mkdgc2EgIhIboNTGGN8ltC?=
 =?us-ascii?Q?0kuDM2L7NaPOnIbqz3jwem5DNJmYv5Xj2tQiKFHo6AWVLmtixtDpxSl1Vq06?=
 =?us-ascii?Q?RuCzg2fDDPyvXjFwlbyTbbSbifWKsUrYJMbd5YjF+8Shk5c3c9DXyQHkKh3x?=
 =?us-ascii?Q?qzNL4n2549i4pHWNLI+SoMaUi72ZkxDhZ6aAPBQM1FTH/yFb2kAnebxqoZe7?=
 =?us-ascii?Q?EQjjtzowNvlb33HTDfnrEA92qNGF/3z9yULMzwFSjnSbV/9ZEV1p0y8oUhqK?=
 =?us-ascii?Q?Vc8uMp13x1+oGQ4/idW/O8aHuA4j73ZHw3H1NsIPx24iR/9Ij22DGu9G/DDI?=
 =?us-ascii?Q?kDuybTP7qMjK+wfntoU+3pqySXpLrnDoMGN4dvI0sFc57sqQSS8a/sdRVGME?=
 =?us-ascii?Q?z7krYKjX3XtDhUtStKeIDexvO/UUNl3eARJT0aRPtrL/wIMPHClNnBtBSkP8?=
 =?us-ascii?Q?PQFWCLcUWuXBG5NmCiwdofWX6JgFsfteR2ZT0NOrKsePT9Go3Ra1HdetBL6T?=
 =?us-ascii?Q?7wepXcp6WqexysUdbDmz6gF9+Lh4t3nKQMEzFpnHS4/owlV87rS8J1ZyQuw7?=
 =?us-ascii?Q?OeTsmkoXM6+ARrnwmgA2AeUbSvQ1HFI2NQHPNrwNmC9Q+p+kw2EHvHpvCNz5?=
 =?us-ascii?Q?DZGcdkAHZ2H2zlNNEKZYYvQwfRAi0xL5oCWnjxD6cQijIkzuNzLXKKpfJ5XE?=
 =?us-ascii?Q?u5uUaFVEht2ipiJi8zNPPcCrNdbMnXw731dpZguKWF0hMWziOEy/MmoA3gXu?=
 =?us-ascii?Q?OpvLTqe0Gyaxmco+mFnQuJ6LnHcys4Eh94HVzAqKBsFjLMuZ5xX5lls1YBTh?=
 =?us-ascii?Q?ngTURP/ia+CQXmQYuh+loDGrVZqfP1SVNH0vHaT77SuiGZiEbSRyAgvzTHkr?=
 =?us-ascii?Q?WGvEbK0SiiG5VEN5NvmwjSGxzhySi1Sj25yIl6wqJW8MnjwZ25niXI4YWO08?=
 =?us-ascii?Q?UenvnT5xUe+1QRV6UcttaSPxU28D/5A1o0Wtk1L1ER5IxpYXzz5K/pInCdqk?=
 =?us-ascii?Q?RtJmhbFnW9kPRevk3K/FbGJl3NmNcLuzhk95y/4TVLc8dp2RVyHSpUjHnkIa?=
 =?us-ascii?Q?NUdnusq65VpEMknIOfhqu+Suv0VQgktv4lbMyLaZjwJd8TLqMGQAHViqKO1q?=
 =?us-ascii?Q?6hyIe0Z6PU280NMqGSn2Ig387Ztj15DEynulDVnq2vAywP02CjKYN9q2IvxF?=
 =?us-ascii?Q?pTBkm85XR1HYnPolPUN+CDqMVEJsiKPkljmcVI4TmWGb+94yVi+BHlRphj5R?=
 =?us-ascii?Q?B8RcbR9fClYgRRF5ydbxVKbnHOWDIuWLHunxIxHOaadfjJyAk9+/oV1BWACN?=
 =?us-ascii?Q?Yb3DPfYFY8ujSALu+4yzvniNamVEIgg5leajP9EyjBaw+vxJ/QPwWHMmQE9c?=
 =?us-ascii?Q?2lTbp+d7IDo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR10MB5338.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KNwHtRhF9xyeR6aQvVtc6xjCJRxTOKi59OZv1iP7CAdUedwjUc/nE19xOgdg?=
 =?us-ascii?Q?Ou6xNaWi0z0AMnp57PRY15i5GOyH1enFMuM638TdN3Iv1x1C0oY465h3HLrF?=
 =?us-ascii?Q?8I2ZHIsNoWZ4V1BZiQ1btuhjb82eFmnDQQwIfHz/bbhML2Pur9zldUl+F0u/?=
 =?us-ascii?Q?kFZ6fG+VTKViOOLrpndgHWDXGh5gAEJZIOmCXa6XUlqZt4kg2Y/e9GGojDsn?=
 =?us-ascii?Q?fUJRr8uqDHo6XfUWCTMgGBUm7ARLCXJn6nmjDWe7/cfYDOditXcSyFGhKyHG?=
 =?us-ascii?Q?ESPn1LVwuATqAp6iJMydg+dGOpGR25pDdtK3uu9RPyztUUUw6CQUn/hKFeag?=
 =?us-ascii?Q?6ijlQmN35dREPvUBvUuUoPCiXPyAoOUh67QHqHJA61cYacXskN35lYjteZL1?=
 =?us-ascii?Q?x/cUzDzRXNDTWIQl9T+PRSCxWtiqlLb/TxKnT9tZxUY6cbXBP81JTE/lES28?=
 =?us-ascii?Q?3O2v3LyU/CHhFRzyWazwjrJr9APROdXOOK0cUGNenaAMWEXSP5bytMVr6HfR?=
 =?us-ascii?Q?ZSRAiYWdBP74p5BhTmXrSrihev1y512tQTvVZvn8NcHHrP+kbnLf0EcA+HMI?=
 =?us-ascii?Q?iI0ON1/Rm/Gj8bsfCpJVwSsQ/hsWZahNh1O2rZG+X1g8xIY2nCrGkqgopzDn?=
 =?us-ascii?Q?p85ZasE8Occ2Ew6s43bzpRnQuMZJ+0Pf9cSuvK14YaiqJX8LJC9vr5oNpOUS?=
 =?us-ascii?Q?IbhQ7SdZkOiMempaXsmMKYdlwapnTpuqH4Xp1KE8IBR+5R1zgECC4Jx2xmJc?=
 =?us-ascii?Q?fFsdVH6W6F9dGQINGb0y5NbKw1E1yq/nu6M5DUSU4Xrf1tHliLtvarwEf2cv?=
 =?us-ascii?Q?yITJ+E2euNFzEhIOGq17piomTpBau76mwH3AMcWQB+kTT3XNikgqRyRb+71v?=
 =?us-ascii?Q?XRvwdlFmLm421o5ZAT3wsVTgVrRKLdY6IaOuWMGrXAmb4wxIRClDwWz+ACAB?=
 =?us-ascii?Q?ZHI9Qbmm1xgRc4xXk0apEu2aBCKK+hCkRMweuu1YIEs+38UQgdyGSEMxiSEA?=
 =?us-ascii?Q?tFuAA2SDvFRbmxUo7e64E76nBQIoP7IgOS9hCsCmD5qfPuISrksH+WH7K8We?=
 =?us-ascii?Q?jnux4/4dKxg+I5sig0btrDczXFq6B5LSB7SKXLSGGFGcgbaq6NcRfm1Gc89o?=
 =?us-ascii?Q?ofjkzUWeXCj04YQmZvsxPfLwC8yhAM1NaGXsBD6gYS5yeRa8SAdR5tFHHnnd?=
 =?us-ascii?Q?vFzuMkXsNjwpyd1RJEwGh0G8yeC1O6b8Be2BoPEHXGeMpZfss2v+xc8wNAk7?=
 =?us-ascii?Q?uTNp3kXfxDUl0pBmMIwhDOf47otxLEkopSie52xkWR1MvQG+b/IlK9QNGDvC?=
 =?us-ascii?Q?UK9WIlbOStCWlBqDnA0LUJT9vyGCniRQOq34auppvfXsE4ybnw14xUdbN2cS?=
 =?us-ascii?Q?DmuRHePMoF5MYTGJX0ErK4A2XcN22xQTemdg+GwUFX4AX1TJqqq6+BbxFDCV?=
 =?us-ascii?Q?dvSjs+oa/BMkCCFT6zq5rmbvBbQLOkKjUPkn490+dTzmeAmclBBHRwMTIPbg?=
 =?us-ascii?Q?e1+ORvoKG3zOB6xnAkZx9EKSoifN1vk5AlMtYR5TUuukMSB+VnvTESW8P8Vw?=
 =?us-ascii?Q?Z3qTXbgXG+WcGZKm6ZqPBJJ5+LCjZC1pzZoHt5FyazPP6ntPyDfQIz7n4M1L?=
 =?us-ascii?Q?0A=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: +yryV8emP1nDs3xXqPR9OJnc8v1qD/Nk+pVrjTN5Oym628jcvHcVTv7MJdN4eTjIxnysqv/XqhxiOwXhu5iik/INcFHvCQSOelLz/hGcNITNj81ZvYerJL8pE5QHla53B8OHmGpIyRX3HQlAoZ+7PuZULMqmVTLJY9CFvFcVU41T4dzQC+CZW5pob/bcpJZkAODub0wcELVjjDqwSJDkkt0ZNw3Ok+G0tcc0wPSu0HE1AEW1pOs63sqABPR4F3jYClWdNsRflH1m1mvB+hPBPNOqjj2LUDooO0GaZYNXH67Ri3yoP3Z3gGv6N6f+/EK5ZB/1f065N/oNi9HRkKxC+2omGey+NpPgpX+U4tFDXRxMl59myZWjLkIXAomGkskusmuu1IJMSNdOI6YLe7qX7bOLLxyqrBefhMxkfo3L45PHmkQ5Ir2r/S9s747MLZGD7967p6p0++iEQ9dkBRzXOgpemIlVEtNiIpvaj1q3EucqBUcHLrTxEXrClyE/smV6lLqJc4j/HoLy6RxM1BbP79MVf2wed1A0zGqfVyMhdDUJf7D/iv97o7ajLw1u28jCwGhaHytquPtiiqIuAiHnIWvChnEemJVvMMFg3750Hpk=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74c0d758-8b92-41ee-27a0-08dda7c060bf
X-MS-Exchange-CrossTenant-AuthSource: CH0PR10MB5338.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2025 01:44:45.7152
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fFmjb5yy1iJhxjSTTKW+IfAi4BJuyeIqEh4OiWuXok+8/o3eNvsIw6FbuJj7xkdnhgvrfH+JJxhHBzqeViXb9TksP2qx5M6dOKKPl1wQkwI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR10MB4793
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-09_10,2025-06-09_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxscore=0 mlxlogscore=999
 bulkscore=0 adultscore=0 suspectscore=0 malwarescore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2505160000
 definitions=main-2506100012
X-Proofpoint-GUID: a24W_xFWOlzPEBRCcHBe5zXuCQABGWda
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDAxMiBTYWx0ZWRfX2Pjj+c19t86r +QAbO+tZ9BiBwjhW3fLr9/8oMQd8RfO78WAxaPWPmOV8v7r1p0VlSgS8WDGkLHYP6iESPf59EiO jb5lF+ogADe5vvlbmQxQhfCBcMCa/Ux1MM3M4C3hBX8FfBKtMK+eGdBR05nfbpCb1nsTWu0Ckmw
 fgf0OP/PvM8w6czTgp7QGyaG2tmzflBo77ScTdNtwsRrJVLTK1/NPdvGzGuDTkpshu9dk/ihBQo ogRGf+bY3GWLig5znVBsS7fEipXE4pf9pa+iMMFZDi9ElqyLKBsPUHFM+3qf4BzN/0v2fYglEBU vrHSVfIIqj4PEFlO343aaenz9QmnuF5UOCaYmZAAC2wOrNRM/+B0C+xqcM1Nj3gIXF41fry6KUI
 zMZ7FHhjuXV+bUgeWkulUdxXliojLgeKcXnDYGGUF3Gg7v4/q6mTE1wOL9bE4Qpf9V28hUpF
X-Proofpoint-ORIG-GUID: a24W_xFWOlzPEBRCcHBe5zXuCQABGWda
X-Authority-Analysis: v=2.4 cv=d731yQjE c=1 sm=1 tr=0 ts=68478e11 b=1 cx=c_pps a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=6IFa9wvqVegA:10 a=GoEa3M9JfhUA:10 a=yPCof4ZbAAAA:8 a=5bH7z0BLeiDiQMqUfeQA:9 a=MTAcVbZMd_8A:10 cc=ntf awl=host:13207
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250609_184508_440404_51007F55 
X-CRM114-Status: UNSURE (   7.52  )
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


Nitin,

> For the remaining patches (Patch 2 - Patch 10), since Patch 2 (SCSI
> Patch) depends on PHY patches, can these patches be merged through the
> PHY tree?

Fine with me.

Acked-by: Martin K. Petersen <martin.petersen@oracle.com>

-- 
Martin K. Petersen

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
