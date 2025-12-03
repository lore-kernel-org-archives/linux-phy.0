Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FBB5D15DAF
	for <linux-phy@archiver.kernel.org>; Wed,  3 Dec 2025 16:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Cc:To:Subject:
	From:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hWQwml0BQ673L1A1U6rvxDFLi05XAkTNsSLpXRbqiq8=; b=Tf5hqe9qHzP7g+MsXERawbPaKY
	5SQ9aDGKHwKZx63bMij96cmutRmO0Bc93FcXJz2mOQyYxBlGyWvULm6Gw9yllxkQCuFk8U19WY8LI
	linyXqgDoSRr/lQG5zu/kkd3rglFZzI7dzhWku2px41JGF/ez4f/zB2QBkbG+gZB0qvUN3FKnXkhS
	Xr6DD6wymTEoYPFb6E5AvaT0SQS1jPhzHcCBl6BJLTZ7ucfvempvzUaTp8scxEAiWtBL8hpUxeR0R
	sdpaQaszRKsh6Y3Wem3RAk3VVtj7OHc9Y9SqRGZDtJt8RDLGr19p/U2sgOZ/oDb04uPA3dPn/RqA3
	WlSiVKjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQpfy-00000006nqc-0vWK;
	Wed, 03 Dec 2025 16:25:58 +0000
Received: from mx08-0057a101.pphosted.com ([185.183.31.45])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQpfu-00000006npj-2YfE
	for linux-phy@lists.infradead.org;
	Wed, 03 Dec 2025 16:25:56 +0000
Received: from pps.filterd (m0214196.ppops.net [127.0.0.1])
	by mx07-0057a101.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B3FvJ4t3977645;
	Wed, 3 Dec 2025 17:25:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=westermo.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=270620241; bh=
	O4rg8k9O8T0v/4iC72iHrqPUnpTvTjqCwjqFVdfOCek=; b=mVW2M2dcR7pAmP5R
	wfcSHRrCZwJ2EISSOIdymqm7c4+VhJfKJQa08vn8t1vm2RhGTCWdM/n3qx3vXONc
	37FDIdSVGAgQpBii+ZsoVdmsIq++YzryRvjKR6A0xnlbcjYo0X9/R9X3yz2QSE0i
	oKMIhvRonDmZP2PTioUnO3YJtYYe9h5f9RmWVkN/W6ZIpSRGvC8ZJdwppEo2iKFQ
	aC3zrLMlPhnpciO5gFScAWFIXKGO5Qd/RSN6HErW3tOp3rb7PND1B2cu5ow+LinX
	/ntaz22v3ANSrYqcBhUfVF6q4szlurSGLsLMs3VGAVzCYCXC4sQGnPNTInVzVbtp
	cOTtIA==
Received: from duzpr83cu001.outbound.protection.outlook.com (mail-northeuropeazon11022090.outbound.protection.outlook.com [52.101.66.90])
	by mx07-0057a101.pphosted.com (PPS) with ESMTPS id 4atmra8743-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 03 Dec 2025 17:25:52 +0100 (CET)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pgYJfeCcCQu2panhWZBMcTjiDW1dB+vJacF96cWhEM5aCfVCekyDekgN3Ea8zLT/ILJBTlrLrSWzjY7geuSBha6tH8Sa7Tokc89Tr2PdB+ICAenUMCWkAnlClhq5fBeTNsOVxqg1vtU5sjIQqqbhoCLxT64GrRQNXZtOdkxLjnDmp6m1jVJhaNygrd655l07D6bVSGt/f9xLVMQvevoli4i3aD97kU6dcV3bW8E4GxgaSUzHzxduyt2lgksctRVFAG4zSXIDZ098LQdZwiqwjCInSY5aqiF4a2scuutBj5yUnQvJpftK4TK2S/jrKrcRXVbpltOrsKG8uycyG4C+Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O4rg8k9O8T0v/4iC72iHrqPUnpTvTjqCwjqFVdfOCek=;
 b=GkrCWKZLef+EDtAFeDIjL/SsKYS9Yr9xtUCUwlm7VP4Veo3voUjZKQtBQ2qsW2vgwdOJSiVYjOk6ay6IeLcB7FnqwXt8xFC/oOWaigAXhq0YbAgQ53NUDdz7PhJ0sUJSbG5mdHg8Zjq6QUPo+nj1ytrdfu6R4LwrQI7Ai+Wys8+rizXOCeLR5ZUVabCXcOfe5mWvSbF536cuGMacAHoSuJ4cOv1ymJ7aBzrjiOmbiMBqFZe1y/MIQ46+P2F3WtabNintMhpdPb+WlOgbZApJsZRgUMsgGCItxAanutZEy8it36TYEdcSTRLG4nAo1EhnR5kvERD1c3pFk6kqDrnFdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O4rg8k9O8T0v/4iC72iHrqPUnpTvTjqCwjqFVdfOCek=;
 b=u4kMbnoax4ko10h22S3vEmjfskBfXhlyQpThWWuvsNDWNAbMtBSXJ6SFROctqJLcQNOF9ZXRtHkDHMKp97do2rSH2QMRAKfi8u4U/593CvJedkQdQvwvI6Tn2xA/AX6bgaW2UX/8lAhKYoR5/2XbqfhZVMa6d/wzlNKx5gKM0vw=
Received: from DU0P192MB2856.EURP192.PROD.OUTLOOK.COM (2603:10a6:10:5a2::5) by
 DU0P192MB1497.EURP192.PROD.OUTLOOK.COM (2603:10a6:10:345::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9388.9; Wed, 3 Dec 2025 16:25:50 +0000
Received: from DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
 ([fe80::2fe7:101c:b862:7313]) by DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
 ([fe80::2fe7:101c:b862:7313%5]) with mapi id 15.20.9366.012; Wed, 3 Dec 2025
 16:25:50 +0000
Message-ID: <4287097e-a906-438f-b3a1-33e374477367@westermo.com>
Date: Wed, 3 Dec 2025 17:25:46 +0100
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
Content-Language: en-US
In-Reply-To: <20251203122601.72cwwpsp6loqpkpj@skbuf>
X-ClientProxiedBy: GV3PEPF00002E6A.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::38) To DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:10:5a2::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0P192MB2856:EE_|DU0P192MB1497:EE_
X-MS-Office365-Filtering-Correlation-Id: 260fb013-a491-4516-1e1f-08de32889f0c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R3d1aWRrR3FVNEttRjN4b3QwNmI1cEk2SE5wOUZ0d09tVE41Zzk1WG5TWHdu?=
 =?utf-8?B?OFdRekVLYmcxWTZqWHg0TUpUZ1h5OWJYZCtFUHRKUE8xUmxaSkdsbjVYdDBO?=
 =?utf-8?B?Q2J2d2lnTUJVdjBES3pJZ1pkRzJNMjBzQllwSGZOdURZSDkwVTAzNGd1UU91?=
 =?utf-8?B?ZVFkVWxlTCtNM1FJbGFEVkQvMzRHb29pQTFYeXFsUmQ5NXRyb1hhVnM2Smhy?=
 =?utf-8?B?OEFUb1RJSXBjYWExWTl5L0dXUVBZcXNYZldnUGhmSzVlTFJPeDlJYmRYL0lK?=
 =?utf-8?B?NytlMUwyZURZUHdzazdId2RhZ0JLRGpIT2VzRHhVb1JGU1ByZE10T01Wcitm?=
 =?utf-8?B?MDBYU0Joc3c0UHM0YVJKVUZnUG8yTkIwMTV5dGIvajNmZDBjZnAyVm9JT0dn?=
 =?utf-8?B?c2RPWE9mVnFPRjRSdUFqaGw5ZjljdWtwbUxmTzNxTUMyTXZzRjJIUWdtNlJH?=
 =?utf-8?B?a2J0K0UxSTdDV0xsUVlVTWhZY1lETVd5VzlPaVhWbmVqbTNlaGsrOFFiNG51?=
 =?utf-8?B?VkxjUnRFS2E5dStIVmwxckpxcDJHeGRpSEoyWEkzUDJ1bjU1OHRTa3NjZ3Bi?=
 =?utf-8?B?RlZJT3kvNTlXbnUwR3V0L1VqcXdQUEh4bTY4OVh4R0JFRFdmdHFRL2Y4R0Ru?=
 =?utf-8?B?QXd3NHBzWFJwdHdTL1ZidVdpbVZLdFpWWHNEQTdxUkRUdEJaczl1b0RuTnpH?=
 =?utf-8?B?VlVibjZlNk5sM1dYalBKeGQxcUZCbUJOSXk2ajhTaXIveUYzYUl5WlRQUDRP?=
 =?utf-8?B?V21XVS9uanU2QURxbHljdFN3WjZZNmtrejV2aGNhOFlqWjVTMjRhN0hCNmZS?=
 =?utf-8?B?UmpoQW1TY2ZCRHJESVNpK2M1YytmajNsLy9iWWhHekVWNm1reVFjTzFoWUxI?=
 =?utf-8?B?UHdtZTFnZEhZN0JRWVgwT0ljd1FBTnlVSUJxQURkY01qZzZqRXkrRlIxSFpn?=
 =?utf-8?B?UklVblNJSEt1SGpYMktLemkwTjZEUTBPeFNwMHNaNFJKS0ttVm9WMjVuUDU3?=
 =?utf-8?B?bVJIVTI2VkhZcHhucDhoQWJDQWwyMWp4QkQzMWVGUDhwa2hFSE4zUGpiRWl4?=
 =?utf-8?B?MzRjZlNQVUhXZnVmUGR2RTF1SGhjU3I3bzZjK0ZiR1FKUjRrZ3lPZ3JHLzht?=
 =?utf-8?B?THVHcWF1ZVB1SDBXSmFnOEFrVjVoTGVOQmt0aFY1d216OUxGZ0tTWDJybTVV?=
 =?utf-8?B?N0l0eEpSVEVDb1FJdThLbjdPYXRVYk9MNzV2ZEFMY0FYMjBFNGR4VmlKTGIz?=
 =?utf-8?B?MCs1SnhaRzVQQjdrR2ZWOHhlMmN2MTRBMWJLNE5kd1dOeWZ1YjRnZ05yWnFv?=
 =?utf-8?B?aGlVL2VYOU1MZ0c5VStjdXJXMUhlWURVVTJNSTFXdTNNdlJ0Ylo2bDJicWwz?=
 =?utf-8?B?ckJGYVZiMDRsNmdNcjc4eHVocXowNEg1ODdTTkRNcmlqbko1Z1hFSk9pOXpn?=
 =?utf-8?B?UlRYbWFOSFlnM0cxTW84SzZTem16UHl5aHpvZ0JRSlc5dGNmUzU1V2JneHZU?=
 =?utf-8?B?RGFIcHd1SytOT0dDNkR4eURDSEhTZFVSYSs2NitRejUwRlIxNWx3Kzk4K1Fp?=
 =?utf-8?B?YWk4R1pGZ0diYi9zTU1ub0IzR2VHRk5hT0tYL2FGTjlRRmw2cjUxTncrWUhu?=
 =?utf-8?B?K0NpVmpYREU0NzBYWFJRd0VxU3VUNG00ckhyd0tZMHMzV3NscHdHd1dsZExD?=
 =?utf-8?B?TE5XWE9YTW54NTFJNXlEbEVQdFZGdTVackNBNTVRb1BBY3p1TFNZMFdFbFo3?=
 =?utf-8?B?clEvM3ZaL3ZvK2IrUmlKNGpCbWJpUmx2eWdKU08zNENFcHRzYk5GMmR4SnZM?=
 =?utf-8?B?SzF6ZGlLemQ5KzVoMld2bGg3U21LU0JxN0R1TUpEbjYzUFUwT1c2QUQwZW5M?=
 =?utf-8?B?Y3NQZGNWeDdEM2JGN1oxZFZUeE9rWjFwZU9UdWgyVk85WVE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0P192MB2856.EURP192.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VzVKRUxyQUl2UU42R1hPRjlDZStsMHh3K3R2dFpBeDhlWXlJSmF1R0RKTVI1?=
 =?utf-8?B?dWZaNVlXQnIwcVVSRVhPUnRBWHZaMGllREgrRXU2Q2tlWk5VVGpQcWY5NDF1?=
 =?utf-8?B?T3pCRjJqeFdJUTg1bkRHQURCVnBtaGhTMER5UUg3NVl5bmdNVFBxRURuUUdh?=
 =?utf-8?B?Zkd6bFc0RGcvS2xEWnZEUElLN0FDUDBCejUzenFzTnAzdmpHd1YzVGNTN2tw?=
 =?utf-8?B?Z04yUk1XZllqeW1kemgvRTVqWTNzbTh2T2FQTkN2amcxbTEvM0hXZFhOc3pN?=
 =?utf-8?B?dUZFQ1g0YXF2RzJSc0Z6SUovaWVNTk84aFVqZk5MRzM4YTI1T0hBRXJhZHlC?=
 =?utf-8?B?a2hYc0tqbG5zMnI5dmV0eG9WbFN3TlZVL0VPbzkxL1pnemxCZ3c5NWFSVFNl?=
 =?utf-8?B?UWdVRkR5dm1vV1kySFdjdkFTTEhabGdBOFZSM1JtMnRxNTM3V2pGRXhSZlVx?=
 =?utf-8?B?UGdTdWRNMkRpQUhZYkFWOEtVSVg5dnhVT3RIOEFCamQ3bDZCY2JvZDllY2xZ?=
 =?utf-8?B?T3BYQktxMWJKUUo4SzRicTc5NWNRMzdBOGU1ekplRUlHMzNGQ0lmNkw3dHBy?=
 =?utf-8?B?UWFoeGl3TzRYTHZNTVRnNTc1WG1mSmFCamRwUXdSSVE2bVB1Wi96SjUvQ0FW?=
 =?utf-8?B?aG5xWTNlQVlWMkJ6cFU4Qnpjd0drK3YxbVhLbE9YTFE5OW9hNCtEZ1dMQ3JK?=
 =?utf-8?B?N2lqVkdXU3RMTUcyVkZ5d3gwa205QUx1azRtcHh4bWt0LzFYd3JUMWpxOGVj?=
 =?utf-8?B?c1JqbXRMVkpJSndMYWY1dG1LVzhQdmg4R1VxY09zOUQxRVlCTjdMczRGZ0ZH?=
 =?utf-8?B?ZWlDNURSUnBaeEJpUmZjdHNNeURaTzF0QWpiTmFiRzl3a2FCcHdxelh1aFMz?=
 =?utf-8?B?RU8wUHV2dFVLWTl4bWhXbzluU3BQNlo0VG10T3p6MnRKcUJraGxHcHdCVGlz?=
 =?utf-8?B?SXljRmdWb2tyOFlnQk8rOGdDWGVBMnpEbWxTc1ZSZGVJVkd0aVF2eXZhZlJY?=
 =?utf-8?B?TFB6RWRMeXVxblZYSHBicWROeC9nY1JpN0ovSEQ1UWV5TFc3VFJMU0N4ZUQx?=
 =?utf-8?B?TXVKYmhHSUFtbGk0QkJOZEdIdjFaZVF5ellNaUR3b3ZTcS9ja20xbWttMGc5?=
 =?utf-8?B?aUp2RE91MysxMHR5Q0toTzJ3b1RqOXRNQ3c3VUp2dW8xTnQ1cm42Wmt1Yk1H?=
 =?utf-8?B?cWtlMzE2S0hjVnJ0M3JZY3d5RVgvOXhJY1JNVVVTUnRyVk4ySFVHTktrbmla?=
 =?utf-8?B?TWFUUzBKaHc5ejZJQ0JkL0t1WjliTStwUm9Ibjg3b1RwT3RUd25OSUk4cDh5?=
 =?utf-8?B?a1VVRFlkbVplUitveCtuZjFGQXY1NFVnUEYzaGlXYlBZVDFPeEViYmppZnE5?=
 =?utf-8?B?UURpazhaaXMwUEJtUmcvaEozWUpKOXJ6R0diRzlXSnlLbG1qdEoyZU00Q245?=
 =?utf-8?B?ZVJ2WFRNUFNRS1dveEJwSmxoMVk4UzdWZXd4WVJwUlZQUTAvR2t0Q3MzMHlM?=
 =?utf-8?B?YmZaTnduejdENklzNVZyRVpNcE1rNXdHNmlUUW1UeVl1WStEUWpxL3dOUjU3?=
 =?utf-8?B?MFIzRnJhZFJQYzJLZ1BIdHdZRVl4Nzh1UlB4a05WREFhLzRtOUQra3hNcm9F?=
 =?utf-8?B?MDA5WmN1WVBaU3ZaUXp5K1pKS0k1aXkzYmh3ay9rMjZNdmFmVjdmVTcwL1Bi?=
 =?utf-8?B?Vk85bHhUSjVLak9VdlpWVEFXeGFhR1pFdnRsYy9mUFBBYWMyV2RFL2k0WEU5?=
 =?utf-8?B?TVZCZVEzUmxhSnk2YVpOUUJvMzFsa29KdnBtS1R3TG9uWE1sODN1aFZEQlhV?=
 =?utf-8?B?Ymgxc0dZdzVxd3NreEN6Znd1V1dEMVFZK08zbC9kcldXYjVnR1JaNmNhM2ND?=
 =?utf-8?B?SXhSV3dHTUhJQnBINXJ2VUN1S3N0YU16cG5yRE9BeldYREIyd0xGTis1RG90?=
 =?utf-8?B?NnR6R0M3UDVmTEVPbmVYdjFCMFVPNGxMQXR2YzFsbW14Z2l0bDE5am1hSHc3?=
 =?utf-8?B?SENHOWJPQzg3b0NraUhhVkN0SDJpV0lyclNMV3VSNXhGVFV3ZnVFekZMS2Ni?=
 =?utf-8?B?cTc5ZDdZZmtLVnRtVkVuRzFxVmNqRFczaENoTnpib2Q2MnJ4MlJ6KzRXMVlo?=
 =?utf-8?Q?dcSz8kAv3H0NzIWVFKnPI4aAE?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: DS4DlM9kI5XLEqI6wKnKtJQ7u8JOE0mdoOMFmvzu9qOUfCALWOu+m7uFnRe7Sz32DZN1lwmUHYGjPw8KtYtrCRi06VhCf2PEFH9LtKow6ZPYxwzmQqFs5aqutDWg8rckU/8SsAwtaIRkVkddZUbX/0diXk/ZjtrhSm+tUVOLHYRqEw15rUxnYlKQWIyt1V/xXghJBEvkHK0bpXb4Zq1Bk2BALayKyUNbt4HWhYaunLCamU7G4AR3Fdzw2++3s8Alo+OluM+YNfnj41DcRXai/y6OqomFjV9NtDOUx3rzmGspCAt9V/4/0QAvn096907V+hwzoOLza3z2yrZBHCJdd6igv6HqGNC1qXLXnqOHoUP2xWqpTrSiXxVDX60+Q7iBvC3psMsGRxtzmIFfonavS9QAGlIkOHR4xltaxNnxwQ2PK3AWXboQdYgKixPzGpejZHg0kSt6Fthw6s0BO7oVzyrc3WZvBNQskDCOOVbYVfUP9CLEY69IK0HURrvnMbmFjiJcPYztNgyuGPem6NmfRs9ZpoPMfq1TMu3bzqcqHLds0GstC7801pcygknSvijUNPKelJJT815ILprI2YCmDMVYNICFgzc9OxW5uXwpvD6Cd/mVB9w0bN/vkz4AwRZZ
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 260fb013-a491-4516-1e1f-08de32889f0c
X-MS-Exchange-CrossTenant-AuthSource: DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2025 16:25:49.9446
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TkZhNtU0K13bd/Uu1JXY0duKqtt6e/A/pmSy1Pj7U6+pPohr5w5Ut8nE/etuy7ax5o0BQD9hueMjg3KKQHjLtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0P192MB1497
X-MS-Exchange-CrossPremises-AuthSource: DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossPremises-AuthAs: Internal
X-MS-Exchange-CrossPremises-AuthMechanism: 14
X-MS-Exchange-CrossPremises-Mapi-Admin-Submission: 
X-MS-Exchange-CrossPremises-MessageSource: StoreDriver
X-MS-Exchange-CrossPremises-BCC: 
X-MS-Exchange-CrossPremises-OriginalClientIPAddress: 104.151.95.196
X-MS-Exchange-CrossPremises-TransportTrafficType: Email
X-MS-Exchange-CrossPremises-Antispam-ScanContext: DIR:Originating;SFV:NSPM;SKIP:0;
X-MS-Exchange-CrossPremises-SCL: 1
X-MS-Exchange-CrossPremises-Processed-By-Journaling: Journal Agent
X-OrganizationHeadersPreserved: DU0P192MB1497.EURP192.PROD.OUTLOOK.COM
X-Proofpoint-ORIG-GUID: KKpjMmd7ZLyzJGJAjn7T0TOZHcuxcCx3
X-Proofpoint-GUID: KKpjMmd7ZLyzJGJAjn7T0TOZHcuxcCx3
X-Authority-Analysis: v=2.4 cv=W7I1lBWk c=1 sm=1 tr=0 ts=69306490 cx=c_pps
 a=iLBBpmpEAL8KygvK/tCCQQ==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=8gLI3H-aZtYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=IpzHyhw8AAAA:20 a=xzwO87cbZYTAhQMcfd0A:9
 a=QEXdDO2ut3YA:10 a=bA3UWDv6hWIuX7UZL3qL:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDExMiBTYWx0ZWRfX6NxmX/WLy8Hy
 XDLCCPCjNWYG1Zh8x9EuS15jmdQ9i1o+V3nqQXbg1X/wovZW8GETk2mJDU2hQnhAj25w4/Rzrxw
 TMVDaAcVhAUussMw7fOI1jsK1eGvbunBGMmHCamlgPd6pnnKV91LNv5FqIRe2Md9j5bz9nLgIqJ
 9ZmpS4gfXHN08t0s9aYSjgkYA/xW3d+sgzzeey+xEXsZC/9SCawWGOnfCjnDNs2UoA1EjBN2H1X
 YDdWTAGcwpPh6WJ3FgTiHqrz0OSBF4p82ULIsBdflYah2xD12aV9z+VOAkukJnl0GDWG6Mfo7+L
 yC6oRZ3NMRtyav/s1a2/QLuZdntAW+e9yIUbk9p3n+hANiylp5okbkbVWDD6wzcW8Bq2/XzOXrZ
 dmpexiD+LRGVuYAf9YRAmF711YFNnA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_082554_928903_E1A9B069 
X-CRM114-Status: GOOD (  19.92  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 12/3/25 13:26, Vladimir Oltean wrote:
> On Wed, Dec 03, 2025 at 12:41:16PM +0100, Tanjeff Moos wrote:
>> I created the patches for kernel 5.15.167, and they do not apply on
>> v6.6.110. Instead of reworking my patch, I'd rather use your work, which
>> is much cleaner. Also I hope that it supports switching between SGMII
>> and XFI, which would allow our "fast" variant to support all speeds from
>> 100M to 10G.
> 
> The intention, based on hardware capabilities, is for the SerDes driver
> to read the PLL clock net frequencies at probe time, and build for each
> of the 2 PLLs a list of supported SerDes protocols.
> 
> The phy_validate() API function is supposed to return which SerDes protocols
> can be used on a particular lane. Phylink in particular uses this
> information to build its phylink_config :: supported_interfaces map.
> 
> In the SerDes, each lane can be reconfigured to use the clock net
> provided by PLLF or PLLS ("F" = first, "S" - second), further divided or
> multiplied by a configurable power of 2 factor.
> 
> Furthermore, each lane may support only a subset of SerDes protocols
> that its PLL selection can support (depending which protocol converters
> are instantiated on it).
> 
> For LS1046A, lanes 2 and 3 have all the required protocol converters to
> support LANE_MODE_1000BASEX_SGMII, LANE_MODE_2500BASEX and LANE_MODE_10GBASER:
> https://github.com/nxp-qoriq/linux/blob/lf-6.12.34-2.1.0/drivers/phy/freescale/phy-fsl-lynx-10g.c#L774-L790
>
> but there is an incompatibility between your use case and the PLL frequencies.
> Each SerDes protocol requires a different clock net frequency:
> - LANE_MODE_1000BASEX_SGMII requires PLLnCR0_FRATE_5G
> - LANE_MODE_2500BASEX requires PLLnCR0_FRATE_3_125G
> - LANE_MODE_10GBASER requires PLLnCR0_FRATE_5_15625G
> https://github.com/nxp-qoriq/linux/blob/lf-6.12.34-2.1.0/drivers/phy/freescale/phy-fsl-lynx-10g.c#L2273-L2298
According to LS1046ARM [1] SGMII requires 1.25 Gbps. I don't understand 
where the 5 GHz comes from. I believe I am missing some knowledge here.

> The problem is that 2 PLLs can't provide 3 distinct clock net frequencies.
> So you can either support 1G and 2.5G, or 1G and 10G, or 2.5G and 10G.
According to table 31-4 "Valid SerDes RCW Encodings and Reference 
Clocks" (page 1919):
- SGMII can be used with PLL=100 MHz or PLL=125 MHZ
- 2.5G SGMII can be used with PLL=125 MHz or PLL=156.25 MHZ
- XFI can be used with PLL=156.25 MHZ
My clocks receive the following frequencies (on all devices, "fast" and 
"slow"):
- PLL 1: 125 MHz
- PLL 2: 156.25 MHz
By choosing the right PLL I can use SGMII, 2.5G SGMII or XFI, which I 
actually do. It is possible to freely assign PLL 1 or PLL 2 to any lane 
using LNxGCR0[RPLL_LES].

> Reading your message carefully, it seems that you aren't requesting the
> "fast" Ethernet device to support the 2.5G media speed via LANE_MODE_2500BASEX,
> because that isn't going to be possible.
Correct.

> You are just requesting to support the 10G, 5G and 2.5G media speeds via
> LANE_MODE_10GBASER (with pause-based rate adaptation in the Ethernet PHY),
> and the 1G and 100M media speeds via LANE_MODE_1000BASEX_SGMII.
Yes, that is my minimum target. I hoped that the "fast" device can 
support all speeds, but it's not mandatory.

> That second case *is* going to be possible, provided that your PLL clock
> net frequencies are properly provisioned.
>
> Look at the output from lynx_10g_pll_dump() to avoid any unpleasant
> surprises. It should tell you that PLLF supports LANE_MODE_1000BASEX_SGMII,
> and PLLS supports LANE_MODE_10GBASER. If it doesn't, you need to make
> changes to your hardware design.
I will, thank you.

Kind regards, Tanjeff

[1] LS1046A Reference Manual, LS1046ARM, Rev. 3, 08/2021

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
