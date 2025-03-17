Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46F6EC35FF3
	for <linux-phy@archiver.kernel.org>; Mon, 17 Mar 2025 05:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2fRAI9mt2qn1TvBFAh97fsvm+LAI2Xn6YYsz0PjKy/c=; b=WdB9MANk3ajvHE/6cBaCTFbe/k
	nPHCO4lKcoon0+9I0EgPdylNEiNAIj8g3JGLiCA1DjobFO1tIr/Vru6GWwqSXD99k4imKQnlKN4ea
	ieS4wyZNTqpIFV0TqGvhlT2pQneGG7QTHggSYvRSXnAOtcA6qrWyLUngQZ/l2m1PtRv+A44+uAvkF
	2uV9VuLY1wzjQwtF4o16kR/MNQA1yC86tJ7DiW+NrfzhulQVTCPQCARqWnSBah4Fvb9XznuUpoZ77
	Zj6fCJOexkbm66gTMsAznx/d4PP6qXiBxlmGKjoKN7X+Pj4V7dsmuN6V9manuKMRqtM1q+9cxEBjh
	TI896XmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu3ME-00000001J1Q-4C1Y;
	Mon, 17 Mar 2025 05:49:51 +0000
Received: from mail-mw2nam12olkn2082f.outbound.protection.outlook.com ([2a01:111:f403:2805::82f] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu3MC-00000001Iza-0lmh
	for linux-phy@lists.infradead.org;
	Mon, 17 Mar 2025 05:49:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UaWbSEjVL73STVpjELq2d9ttRWgKsCGU7I1CnFzpo7PLKOsbWycXc/eh9VbpaajP6CRh8NaS+cGRHo5gFUM8b75DdHwTVnyhYHKNRAJJGRwloKGVr+5g6LGFF6MTqCXldX6c/yhu2huNwjOlLQZxV2gwbOeD6yDTY9eoERzGSCsLoBkU6ODaUpA07yFTyq1fyakOnQRVFBH/SbI9X6368tP/hHwLRtgy162Dk1R6er80Z2RXAe8AqeNsJZWRp+eOZf+ZAcVALU7EIVZqCFvUvBD7NeYph88PH6Wj2QsR225UG/nEmsjJvw3oovORvQrUH/qTOvTakaaIUGHVeg6rAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AgYY/ZDYc8XogsHgmWgGI3FauF/mxZh61Ue07cQ1Xxs=;
 b=mDSTiZS5soswHWhJmeIdk5gmvCKhMbKkU6ZM+DibvcoyWTxusDApDp3X0jmQsusP4ySRIdZzHXMzQ90qrVKurq6P3I8sg1rmyi7a+i3xvIE72AL5ty896o3u5Y0qudRMxQK+OJ9n5Pyvq4wCCgd0HDHGZb7mLjh456sppUdxX3znbvdjOfL4cai03xlpspi1lP3R0tXUkrNg2bLU0EXdy81TZlD4hUfunjj91kmuJxtx3qp41ibIuWRJrF1QCGWU85XrfxS3mxh7nAwipeRx3kpOYnIziKG60LnATE+eqNfZUnNLIhRJVoBJ5eG3fLKQSL0aXPYrsEgkL4Okz2uIvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AgYY/ZDYc8XogsHgmWgGI3FauF/mxZh61Ue07cQ1Xxs=;
 b=BL/xA+AwJp/5pCk31EyOxAUxDv20CzWoYIZ8z5GjTXxo+sVXLDvGHRlVYnhu25XDIrlc49f1E+bAvVNKdcEs6n4HbnUWiBUm68IVx8pMlFVN56UeQdUHTNVkGs0vkER1mSvf9n3wHUDfORbojxn6Oq0fI2pNer0Bnuq7JxqORJwvr/M5JF4z+5/W2ykcxyHmihShvMih7EcSuhom1GdqNLzWreK5erVfWp6bCpAn96i51A0ZQteYeY5VYZTlowPvkBVLwq3tANptHciVeohoZyO1Sw3IyrqF5Vq4aBHqmFRD0+Wd+JQcygzlTNIPobLqwTBIZvWfkeKoTERx+1A4rg==
Received: from DS7PR19MB8883.namprd19.prod.outlook.com (2603:10b6:8:253::16)
 by PH0PR19MB5099.namprd19.prod.outlook.com (2603:10b6:510:75::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Mon, 17 Mar
 2025 05:49:26 +0000
Received: from DS7PR19MB8883.namprd19.prod.outlook.com
 ([fe80::e0c2:5b31:534:4305]) by DS7PR19MB8883.namprd19.prod.outlook.com
 ([fe80::e0c2:5b31:534:4305%6]) with mapi id 15.20.8534.031; Mon, 17 Mar 2025
 05:49:26 +0000
Message-ID: <DS7PR19MB8883AB849DC21D7C43DDA78A9DDF2@DS7PR19MB8883.namprd19.prod.outlook.com>
Date: Mon, 17 Mar 2025 09:49:08 +0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/6] dt-bindings: PCI: qcom: Add IPQ5018 SoC
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
 andersson@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
 devicetree@vger.kernel.org, lumag@kernel.org, kishon@kernel.org,
 konradybcio@kernel.org, krzk+dt@kernel.org, kw@linux.com,
 lpieralisi@kernel.org, manivannan.sadhasivam@linaro.org,
 p.zabel@pengutronix.de, quic_nsekar@quicinc.com, robh@kernel.org,
 robimarko@gmail.com, vkoul@kernel.org, quic_srichara@quicinc.com
References: <DS7PR19MB8883F2538AA7D047E13C102B9DD22@DS7PR19MB8883.namprd19.prod.outlook.com>
 <20250314055644.32705-1-george.moussalem@outlook.com>
 <DS7PR19MB88834CAC414A0C2B4D71D57C9DD22@DS7PR19MB8883.namprd19.prod.outlook.com>
 <20250314-greedy-tested-flamingo-59ae28@krzk-bin>
 <DS7PR19MB88839F5961CB1C0AAC1902959DD22@DS7PR19MB8883.namprd19.prod.outlook.com>
 <6843e66c-d85c-4af0-8b49-773803825381@kernel.org>
Content-Language: en-US
From: George Moussalem <george.moussalem@outlook.com>
In-Reply-To: <6843e66c-d85c-4af0-8b49-773803825381@kernel.org>
X-ClientProxiedBy: DX0P273CA0087.AREP273.PROD.OUTLOOK.COM
 (2603:1086:300:5d::9) To DS7PR19MB8883.namprd19.prod.outlook.com
 (2603:10b6:8:253::16)
X-Microsoft-Original-Message-ID: <04c4fbb0-5edc-496f-aeca-fd004e837ab3@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR19MB8883:EE_|PH0PR19MB5099:EE_
X-MS-Office365-Filtering-Correlation-Id: 5fa032df-2e68-4d13-f9bd-08dd651779ee
X-Microsoft-Antispam: BCL:0;ARA:14566002|19110799003|461199028|8060799006|5072599009|7092599003|6090799003|15080799006|10035399004|3412199025|440099028|4302099013|41001999003|1602099012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TXJJandMMnRzeFFlN3FUenJPSGM1aiszeWdmMEg5OGl1VVNrTjBhMm5CUWdX?=
 =?utf-8?B?NFFEVGNQUmJjb1pONGZaSkNkZ1BoM3J0Y3ZSQnBINVdxT1VDa1dHdmpWOUxs?=
 =?utf-8?B?RmV5VzlHRWErckVwclNRVngrRnlzT1Q2T2RyaGc1V2hSRnRhNkM4SWJrd3Nn?=
 =?utf-8?B?US9qdlFlTnA5V2ZzTmFFTy9OVjg5eSsxUkpRWTV5MmEvbUdub25hSmVpZjdR?=
 =?utf-8?B?cmI3NXl6SHV6VTJ3NFZ5b21qak95dDJKYU43ZWgxeXBxdVdNV0VXclZlemQ4?=
 =?utf-8?B?dnJBU1luQ282MFBIT2lDbjFERjF3UXdzY1dJSCthWUdxS1VUNUljeHdVakl3?=
 =?utf-8?B?MVJ1V09RWmYyVjJMVTdPTzJ3ckllL1Y4Tm1vUkZ4U0FoZnJhWFFjWkJzRTJE?=
 =?utf-8?B?bUovN3BkNm5QMU1wRExOZFhLSThNdnEyRzhlUVRBUElrSHI2YmsveGdoanYx?=
 =?utf-8?B?WHlZK2ttT3BmekhnZ3J4K3hZc0FmbmtvVkw4RE9TVTRMWFRnUUJ1RXFzcVpl?=
 =?utf-8?B?dXErSWRKV0FySXR0ZGdCVS9rcVl4L2xpWnF6dU9mQU40TFFmTmVUSkJjZFRG?=
 =?utf-8?B?L3lHaSs1SXhQRXhreG5jS09rNjl5Ri9oUjVIVVFJdGN4MkpKRnRHZ0p4L0s5?=
 =?utf-8?B?U2IwVmJpN0xHYnNidjJXbnNEUS9QcU5BdzdBNUNad0w5KytDOUNaT0kxUjhs?=
 =?utf-8?B?ak94VUU4NFlGaFBxNUdHcC80WHlTN0tQa2hGZEZkYUoybzdzbmhzMXZFeEE2?=
 =?utf-8?B?R0xVUUxRQmd5VDlpSzdLd1FyWVFEWS90TFBITlZGRFcwakhkWnZVYmhZVFQw?=
 =?utf-8?B?dGVtWWJWN3VqYmlYQ3lNSUx4ZzJKSmxFakhiZlpDMDYxS1pIdVcwRXNRQnc3?=
 =?utf-8?B?NWRtb1NDQTViWFRXVVhSTWdTTWI4eVlEeER3YVBxMFlHSmg3L0MrRklxUXZX?=
 =?utf-8?B?VGZuRktZeWF3ajhZOGd2RjlDcXVzM2lpVVdXUzdWbjRWK004QTFIVGNFdlY4?=
 =?utf-8?B?SEFmZFVGNENmU3BzQU9rRXhxVXlVTFFGejBwYmlvdjk2aS9nYllFT3luVFhj?=
 =?utf-8?B?c0QvVHo4OHNDMXJBN2IwTkM1WG5oU0M1U1VwL2dackIvU092cEF1aEVKSlg0?=
 =?utf-8?B?cEkyS25JTW01S21lZ3RlRGtNcCsvWmI5bU1WUklhS2lzOW9SZWRIRWJKUktv?=
 =?utf-8?B?TG9kdVpsc2VVTG9Tbi9vSHhyUDl0WTZzdThwSVhEbU1nSmIyZ1k2Nms0Yng4?=
 =?utf-8?B?N2JiOUhaN3NHNisxM0RFTThVVFpNOUwzTHpPQnpIdWh3QTgwRzZJcEVFSlMz?=
 =?utf-8?B?dG0zRitLNHBlZUtocGJrVjhPSTUrbXJHUUU4UTFJMjFmSmc0MmNqQ2xONnQx?=
 =?utf-8?B?NzQ2elY2bGpmUWxNS1RoTEhWb3htakNsdkJEV2tjRjJwaFhJMXQ4ZTNBWHV0?=
 =?utf-8?B?dnRTUVNxYmgwU25JOXdJOW5XTHZPVys3YmRZN0MvUWNMVFpmdXhMa3pxOEhM?=
 =?utf-8?B?bUI5SnkraFJPbVByYnNaVjNYUk43NXYxTVV5UlFJMDYyckZodVZhcGxzQXcx?=
 =?utf-8?B?a0U5UEpialgxZUpxQzZ1VVVxVWhIaW1ZNmc5N2FzUHdhSmZoU1BUOVdyTHE2?=
 =?utf-8?B?Zy96ZjhjSVI5c3ltalhzamNJbDJ5L3l4dEFDM0VsaXBQOWEyWmJtOWVheEVQ?=
 =?utf-8?B?U2NKVkxaK1BmUlNsQVRiV0dEOXNxc0tVbmxISmdvSnAwSDQ2NUMybCtXZHBW?=
 =?utf-8?B?R25nTDVQamRmaUFwQXprZW43Z0s1NnBXdFlIdWgvWWRab1YwUWVlU2d0RXdI?=
 =?utf-8?B?QUVpT0xkOThvb3lIbytOZz09?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SWJ2enZiVWx1MnZZNmgzWW1mTjBWdVM0dThqenVmUkg1ZTJiOFVFS00wTjJq?=
 =?utf-8?B?S2VKQlM1ZG9BRlJvek1uWXRTYnpJV1RwNHA3MzZwV1NQRkZtMXpwL1RwcCt2?=
 =?utf-8?B?MHdPQXNGZGNGTVI0eDNEcWFvNS9ERlA2U2FpTEoyem5sYmJ4SHRJNmJJODh3?=
 =?utf-8?B?ZkxteVV6VXp3WEZLbHp3MmlVamtiQ1hqd1A5SG5ldUY0RTNxOHJzNFdSQWJx?=
 =?utf-8?B?Zlo3TDAxSWRkdWgvbW5Ja2V5cG9kYnZsOUNGNmVrdDdzT0hoL0VSWUQwMStY?=
 =?utf-8?B?SmdhYlR4eVJ1TEZSeXhqejc5Nnp4cG1Fc3Z0Q0w1NG5lZ3hFeTkwZWRPK3VX?=
 =?utf-8?B?M0dGN2F1VXowWXRVbGtnQ1hJQ2k1ZXhDdDc5MFBIQ3pSMElIdHo4M080TXlR?=
 =?utf-8?B?alplZ3p1eUFwZjBySk5QSEtjQTIwUlpMUm11T1FUWHdnWUdOTjNMNDREQW1C?=
 =?utf-8?B?OW92eEVIZ0NqOU0vVVRuQlNxWCtqUS9KbWdrRHBZZUE3YkNTV2dyaWJyOEFF?=
 =?utf-8?B?NTg5VmR3REk4UmxMT2lpbm4zbHJyRFlZUHVBRFdBaVRSemFwK2VxVktpeU1y?=
 =?utf-8?B?eWZMSHdTK2lCVTJObHgwU2pkQWxiQW15aTVtSCt2VDAwaG94amROMzRrQTNY?=
 =?utf-8?B?TktRZGtQekN6S2dwU3k5NHNpUkhkVWxxSElNWmhrNzFYZUhjYzRBNkhhMEQx?=
 =?utf-8?B?VkZDWDVhK1BybFFpRHphZm11TysxS2VqZWtpWU1TWTI4bnhVMmk0TVlZd3FW?=
 =?utf-8?B?SFRITDhlL2RXUXdKUlFIZFBhS3c3cCtrNkVEQzhLL1RGNWlvMG9Sd01qaGc4?=
 =?utf-8?B?eXNwdFZ6SkZ4cncrNFZ2dmZiNXRacU10ck9lYXRDYUdOVWV4dk45QktRSWht?=
 =?utf-8?B?cHZ2bHlZcTdGYkxlZFQwUXFOWGhpd3hvTDVibTE0V3VNd09zMjl5YXJQNEdw?=
 =?utf-8?B?SFoyNThWOFM1dzRkNnhEQWJuZjM2M3l6T0NOQ0ZJb3Fxbm9kaDU3VXltNXpN?=
 =?utf-8?B?SGpNd2hWdTJlMk80Z292N00rZG9UckR1ZDB5MlN5b2NwWEZpV29LOGc1bFdO?=
 =?utf-8?B?enl2V1A4VWF3SFgya0JabEtvOGgwaTRuTDNjSXduTXp3Yzh3d0g0QUZtM0Zu?=
 =?utf-8?B?ODlETlJMR3lkVHZ3YUhNUHRBMkt6TndEMnIxVFk4MGZXOTVROENWeGNEbFk4?=
 =?utf-8?B?SU44Q0xXdjJjV29UOUlobjloMkdKWHVHSEFod0phTlhkeHZta2NHZ0hKTmtn?=
 =?utf-8?B?UUZiUjBlTVhoYTIzVW9BWEQ5NndtZ1lEd2h2WFllaHZLTnh3TVkrTDA3NnF2?=
 =?utf-8?B?SHEwQkpmSG5CajhYUUZoR2F6Q3BydEo0b1RrVjNJb1drc0JoRnNhcmxEMnp2?=
 =?utf-8?B?bWlrOCt4RTFvM0lmQkNOTGhaMXFkMkVLWTc1SzNVc0tVeExOR1lyMTVHNU5X?=
 =?utf-8?B?bnFPN2RWMlZsYmlCRnZZMFBzSGsrUm9VTFl3V003MzU3SmRtYTZRdE9GQXNx?=
 =?utf-8?B?d2tGL05aTlBQeW1oeG4vRjN2T2VBL0dSTGVEVEp4a2FvSk0yaUg2Rlk3enVT?=
 =?utf-8?B?M2o1V21hdXkybzhqdzQzQUhTV0pHQVBkWWVRWDk2S1l2OFhmczU0cnRzT1NS?=
 =?utf-8?B?eFdERENzNjllKzNEZUw0bnlQblVDaHUwbTNMb1FaS3pjb2ZQKy94RktKVGVU?=
 =?utf-8?Q?JjgCsTPxZ4p9VTd7jSa5?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fa032df-2e68-4d13-f9bd-08dd651779ee
X-MS-Exchange-CrossTenant-AuthSource: DS7PR19MB8883.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2025 05:49:26.7461
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR19MB5099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250316_224948_222416_90B7D80D 
X-CRM114-Status: GOOD (  11.04  )
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



On 3/14/25 13:20, Krzysztof Kozlowski wrote:
> On 14/03/2025 09:42, George Moussalem wrote:
>>>> +        reg-names:
>>>> +          items:
>>>> +            - const: parf # Qualcomm specific registers
>>>> +            - const: dbi # DesignWare PCIe registers
>>>> +            - const: elbi # External local bus interface registers
>>>> +            - const: atu # ATU address space
>>>> +            - const: config # PCIe configuration space
>>>
>>> Keep the same order as other IPQ, so dbi+elbi+atu+parf+config. Same for
>>> everything else, so standard rule applies: devices are supposed to use
>>> ordering from existing variants.
>>>
>>> There is some huge mess with IPQ PCI bindings, including things on the
>>> list. Apparently it became my job to oversee Qualcomm PCI work... well,
>>> I do not have time for that, so rather I expect contributors to
>>> cooperate in this matter.
>>>
>>> Don't throw your patches over the wall.
>>>
>>> If you need to rework the patch, take the ownership and rework it.
>>>
>>>
>>
>> Thanks Krzysztof. I did reorder them deliberately based on unit
>> addresses as discussed also in other threads about IPQ9574 and IPQ5332
>> as I thought it would be neater that way. I'll change it back, reuse
> 
> Which discusses were that? What were the reasons to start with parf?
> 

I based the reordering on this patch so assumed that was the direction 
(at that time):
https://patchwork.kernel.org/project/linux-pci/patch/20250128062708.573662-5-quic_varada@quicinc.com/

This was then reverted in subsequent version so will reorder as suggested.

> 
>> other sections in the dt as much as possible, and follow your guidance
>> instead.
> 
> Best regards,
> Krzysztof

Best regards,
George

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
