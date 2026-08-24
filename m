Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3466EC5DF81
	for <linux-phy@archiver.kernel.org>; Mon, 24 Aug 2026 09:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wVBiAGfU/acIv1CHUXAjPVU4jV8sgkYRbO+RuH8/o7A=; b=eAQ0rO2xepQyPRIA9vu4hwNyGM
	hMV55y6uvUI2dRsG5tU3memIfGHjrzWBrnkc76gxo+LL4WEXaHworMHhe4B9qBo/gA4xgXhnus36/
	hultxl5GpNaOO3Yz35uyxEN/9hsuI7XAtf7ThhevcTp5itB46fpNoP56QZRqBgL5DDgVQXP60348D
	fJTGTOrOAGbH3F6qhrW1Jn34QnswB0lDdR/DYa/bDRgJtgEofS/FJuldHI4vtYJZ5tMlHKmJ5Br5/
	37j9lYM72Kg+5XMg/vZd9Uwu+y3yCCsIE3pgUCGrp7NtNtG7A4bFiHzCL3xRKGg0Ne3KKQjsWt+8f
	QPJl8b6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyQxA-0000000GJKW-3M9O;
	Mon, 24 Aug 2026 09:26:52 +0000
Received: from mail-westus2azolkn190120000.outbound.protection.outlook.com ([2a01:111:f403:d002::] helo=MW6PR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyQx5-0000000GJJl-01uu
	for linux-phy@lists.infradead.org;
	Mon, 24 Aug 2026 09:26:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FDF7Dr8+NeR8hnn6N4cc/LDLyWfm4a6tTLsJyKrHBjdU6msfyBtHZEro0yPJcc8UmvQW6Z/HErBXfy5ztAoYJu8Yknh3NF7YyY28SzVedRav6OrlMZOnoZIwwUhveGaWReIOMM3Fx9TtAxR9CIW6PfQevYHDSGURt6bt6aX7uzH1yCnO3AZALW5qsdIbAzAY2La2MRpBdCcVRedlZruJThtmSrE+z3FqNDFkburg6fwUsLZgb0xjcfy4piY3W6107AjRi/51rsPVhJiXFAqlYkahW/RRtrFM6Pw9YmZvZSZo5QAIO9+QhifaxCbHoC2jd1GiMBAoc1AH832LnKZomQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2//YU3Cf+2okyXXzEHo4DGw6IZjLz897XUlq8CfJB4A=;
 b=oDBKZ+6rTY3JT+3ys9p1Gmh+KOxWrerTl/TxRDEO5flE/oK/HBODx1QWmC33QkZPxkhuG1fNGbUlze+w5Oyy+sSc2nTsv2sewYMRW/d3OvszKztxHD3UIJyNTnEHbK8e0t5gSEzBab3KuxDK4XV1k79vr13FVZKg+ELgx4m0mSQCIJAMGmnu2v2+/CHyA4ZEcYhO6MOFflp+oXpqtKDlB2VbbIt8XrVgJg7aTQqV5XvPAs2BmwM/BtzatWtLzWEacjrCVJd1hnpBskqkxg5APHWOxkBTvxCIH9ETkFWhP+KPv2kZjX9ezz7rfvCcqVRvLISgDpH/WdgJIlgzr8wRVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2//YU3Cf+2okyXXzEHo4DGw6IZjLz897XUlq8CfJB4A=;
 b=EgHXoejfmFWKKtMVI5sKsRqjAsnMmW4ZjTpCdFuDjf7paGLk0AHWmjRo48zaKD4zFsyDDH1D9irz4Qr/s3bJCZzeEHEyGG+gjYeDfMsY37cENr/uATgvuG5GaHBqeskJglRW6PLPTNx86hv/we45Lb/cH6iQrK/1/Y0X1SW7jWNHOqZS1VXhuG2v51eys/ln0EKBWAEmSl6sByWsfN1K9Tsoby6YzGIsk7AjX1n0rfRPRHFZJjCaNvLbQz6VYQoo0t/0oUlrybw8DoqhHYgEPtI+8C7wqniwABVlkpaPcxCYiVcJyQiGGGRA7785Oq1hVcC18r4KzIaIv8SF/qca/w==
Received: from SN7PR19MB6736.namprd19.prod.outlook.com (2603:10b6:806:263::12)
 by SA3PR19MB9451.namprd19.prod.outlook.com (2603:10b6:806:49b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.339.12; Mon, 24 Aug
 2026 09:26:42 +0000
Received: from SN7PR19MB6736.namprd19.prod.outlook.com
 ([fe80::4b6c:b84f:b71c:d0a]) by SN7PR19MB6736.namprd19.prod.outlook.com
 ([fe80::4b6c:b84f:b71c:d0a%3]) with mapi id 15.21.0315.011; Mon, 24 Aug 2026
 09:26:42 +0000
Message-ID: <SN7PR19MB6736BC1B0AF80D243B8C08E99DA02@SN7PR19MB6736.namprd19.prod.outlook.com>
Date: Mon, 24 Aug 2026 13:26:31 +0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/14] arm64: dts: qcom: ipq5018: Flatten usb
 controller node
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Praveenkumar I
 <quic_ipkumar@quicinc.com>, Varadarajan Narayanan <quic_varada@quicinc.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-5-8f355d7ff0ef@outlook.com>
 <8e175474-1275-4287-9101-1c54afdfcd09@oss.qualcomm.com>
Content-Language: en-US
From: George Moussalem <george.moussalem@outlook.com>
In-Reply-To: <8e175474-1275-4287-9101-1c54afdfcd09@oss.qualcomm.com>
X-ClientProxiedBy: SI2P153CA0019.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:190::10) To SN7PR19MB6736.namprd19.prod.outlook.com
 (2603:10b6:806:263::12)
X-Microsoft-Original-Message-ID: <5cb4fa9a-f5c3-419e-93c5-f5904d0dfacc@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR19MB6736:EE_|SA3PR19MB9451:EE_
X-MS-Office365-Filtering-Correlation-Id: 13ef1c47-07d9-467c-22e8-08df01c1cea9
X-Microsoft-Antispam: BCL:0;ARA:14566002|25010399006|23021999003|5072599009|6090799003|37011999003|8060799015|19110799012|24021099003|51005399006|15080799012|3412199025|440099028|40105399003|2607281247196008;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S0xrSWcyZnl5TDRqQXpKZVhVb1J5MEF5UGFSVTJEbFNZRmVDY3lKWG9Jd1Ir?=
 =?utf-8?B?aURTZzB1OWkyL2ZrME45NmJod21kQkRvUXJHczE4TS9NMC82TTA1MXJWeG0w?=
 =?utf-8?B?YzhkNXUvK1lVT1pjUGpkMG1qbDVxaEJOL0RBWUdYemlLODAxVUI4UkJGSGhV?=
 =?utf-8?B?NGtBV1NwQk5hVkJ4RXNUK1Jla3ljTnNtTC9SeDViSS9Sak9hT1NLNFFRTlQ0?=
 =?utf-8?B?U0Y4MHJxL2JvWUFrbmRqRi9JSTl2ZkJlTkplS0hvYkxlY1FVUE04QXZGckp1?=
 =?utf-8?B?ZHVkMDNGMHFZL0R1ZDNOeXlVbzlLNllUQlljaW0wVnlDVVdjRGNBQkNaUytq?=
 =?utf-8?B?ay90NVM2eUNWSnRrS3VFeEtPcWF1VlNMQjZDQ2RueForNG4vdFV5QjRkcVdX?=
 =?utf-8?B?VG9MK0wrdzdKWVV3Y011ek1XMXdHZ29PZXE3aGRXdnBISHBuSDdyZ2RteldV?=
 =?utf-8?B?M3FlUVZWWFlEaDZINzJNUTFlVEhzQ00yV2xXVURaRWk2VUJxeGNlVG5NejJZ?=
 =?utf-8?B?YWF0Q2xvaXU5SW0xL1NUOENLaklCL3FVbnRRYUNTS0FiajR2WTNnSENuRlBh?=
 =?utf-8?B?M0hsMVE0aGZOUldqbEZ0akEyVGdqZEw4RW9RczZwZ3Qrb21yWXd0MWlBeG1p?=
 =?utf-8?B?WUNNemhqeE9JbFgwRkV3VHZHalRROVR2d1F3Wi9OMlFEelZFbDlveUV1ckFO?=
 =?utf-8?B?YnFtOWNVSHpBc2JZNFhmeERmZ3Bkc1RLYWlTZkswUFhVYkhLUEtIUllTY3VB?=
 =?utf-8?B?UUg4MXNjYzhxeHBqTlIwU294bHRObyt1ZTZRS1B6U0hLSVZGUklwczc4MW1z?=
 =?utf-8?B?WXh0eFlhT0Z3Vm44eWdUREZvNUpna2xQdWZIVkN6cXBiUGdJU2lLVFZDeUU2?=
 =?utf-8?B?bWR0VWorWjhWR2lobm9ka0RaTkRMTU1qMytSRDB4eDVvM1diOGpLVG1yL21s?=
 =?utf-8?B?bnptZkUxamdHdjBQbUw0NXp0cnpzU1UwL1k1allKMFdILzI2d0tvUGJjRVp0?=
 =?utf-8?B?S2Rtb29OclVseUJiUSs1RjZ0TWxuV2x5UjB3RDhMRlhVQmxhbWxaNTkwdHcy?=
 =?utf-8?B?Ryt0K05xT1ZhaGVrNCtXZDgzV0tKdlE4ZWlSVHNiK0FaNTQ2amVmdGxDTkkv?=
 =?utf-8?B?NEg4VnFpTXROY2orRllCb2RLaTQrWW5kWk5wMlVjN29MbmlXOTBBaUQ2NHda?=
 =?utf-8?B?QTBhOXNlRmNCVGJIdlZxUEp0YUh5YjNvb0IyRDlrcFBQMHNDT28xbHhYZlkv?=
 =?utf-8?B?Q2dnS1pTT2NKck1hUy81Rk1FVEJRVmpPcFhHeHUvWmVXV3ZXNDU2VmlJN3VP?=
 =?utf-8?Q?a+Hy9iYrdTgMl1cZtVnMLOkTKEveC6J46I?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RG5wQythVnlqRUtMbDM3YjRuSklNWVRmdER3UmgxSVBiQUFNb2h4UlNzL0dk?=
 =?utf-8?B?SDRJRkh6eGN1MXlORmRhcTBJRUg0MjVrbXAveFd5L01iTzZ2Uk9XZDdRQThu?=
 =?utf-8?B?V2w0a2VDbHdrWEFRTG40TTVrSnU4V0N1YkxrTzNIeHhNdGU4V1JhSllkNnJ5?=
 =?utf-8?B?bG4wUGJEMFdPNUNZV1RUTS81Si9sMXMwOGZEWi9xRkQ2Y1l4eEh4VlFQWkZF?=
 =?utf-8?B?UzdDL0dYZUcrY1hramFvYUZmUG51WXdMZHBDRVZ1YVVoMHgxWFA3ZlVlUlFG?=
 =?utf-8?B?SzdZL1VZRllIbzY0QzZjUEhTdzR5VWJUaFl5MWtLNUxtMlpGQ2FMeElvL3p1?=
 =?utf-8?B?M0pad3BwaWRDaytXZHF4UmdjMkFuM2M4WFJaMC9vWmhrVlRxTW5CWmc2OTRJ?=
 =?utf-8?B?MEZVUFI4enh1Z0JwUzFSUkhMV2lWWkxoeW9PL0tTQjhkNWtnRWZsdkJGcmlt?=
 =?utf-8?B?OE5LNDBXWmhxRXJzbkROb3hSaGZuanE5Mm1pUzk5R0JIWVpmN2RsTnhRVlcy?=
 =?utf-8?B?d3E3WkU4ejN3RS9UdXlPSHpWRW5lVTlWUDNtWnVnOUxuTXd5OUpVUVQwWkhn?=
 =?utf-8?B?Z1RYb04rVGlvclFIa2FmZHR5ci80eDkyMnc0ZVZrYk0zdFFVVHJWMG9JNGtU?=
 =?utf-8?B?c2JwNm5oNHovUDU1MmZKRzVKU3Q5cVczWjFEeW14MmNMVFB3cVJRUG8xcVRk?=
 =?utf-8?B?NWNiZDV1ejc5SjZlRks3cFFsQStFbVZUeFNQVTJQYnBVbjhmcTFldWdpQ0Rl?=
 =?utf-8?B?RVBHMkErQlhwVGpXbzE5WWI3aVQyRGRyemhLVmxEQWtrMDdaMFhZL096WkI0?=
 =?utf-8?B?V3VLT0h0MGRUZDR4cUlGZmMrZnF6WWV0K1FIVWt6ZEpwYXBkakFOTVJJL2N3?=
 =?utf-8?B?eDdxRXhVUjdBRTB5U09FSGo2NWcxUCtuVVU3d0loc0NrOEFqWm1LWmtueFBV?=
 =?utf-8?B?NENYZkRxV1puNXBWd3NDVGsrWFpIRTY2S3FFT1B2bTRuY2Q2dUZWQXAyRFUy?=
 =?utf-8?B?d0tXZzhTSU0vaEIzcG9PdFdRY0NxOCtsR3VuN1phOEJCc0d0Zk1XcDh5WXE1?=
 =?utf-8?B?dnhjQ2FGV3d5VU5ZTExDc3N6WkRGNytyNTZIdC9EWVF2cjkvMUlmN1dqVjhq?=
 =?utf-8?B?blpTcmNkZU40bERzeTM3WTJaRzUxWUJZcHNnN1N1SFpURjVHQ1FNRjMrcGF3?=
 =?utf-8?B?QUl1cjUwTUYzV1hVOU05ckdoN2RqNVRRYkRkUDBiQXlwd3dVdjV1aERpcXQr?=
 =?utf-8?B?MWxUd2xnQjg5eVV4VGFCVjJrYXNqaHB1OEZrQ3c5TEtuUW5rNFlER0Uyc01t?=
 =?utf-8?B?UHIvV2xCS0pkR3RjUWIzS0wyWlJSU3RkZm1saTFNQXp6dit5VWRTaFkzc3hY?=
 =?utf-8?B?c3RNL1VPWWVPa1llbWsyYVFkdXcrTEUvYmtuM0hFaFhNZEhva2NDeVVXOWlM?=
 =?utf-8?B?WGxJMFYzd0JQakFhRFVlZjE4VEphM0NMTkdPblhrNDBQcW55UjRvZGRBeUVZ?=
 =?utf-8?B?Mk5kajJPZ1pQd1BjSGdLYzF6bjhyd0wxYklqTWp5RFRtUExUT3loNmNSY1Rl?=
 =?utf-8?B?UlBQTW1hZ1pkanhIdGRHQ2pZTy9Mb1d3Q0IxWHpNNFdRNloreklKR3R0WEtS?=
 =?utf-8?B?WW9RR2hla3RTUW1aTXFMamt3TlpmZ3hGT201NjF4Z2N6RWZEcGJ2bW5SMkpZ?=
 =?utf-8?B?S0YxU2JScVhZZFpYRW1vVXc2SGJrSlhUbDZsZlFnK2hoS2l6clp1b3k4OWJT?=
 =?utf-8?B?QnVEbXR5d3FHY3BleUpycnRJYWpWQmZ0YVVzSHZxY1J2bWJldzVVbXI0RFNR?=
 =?utf-8?B?cXpIb21abnBUUk5RVjJka0hFMlhBMEVPUy90TEJyUWZQUm56cDJ1U0t0V3hS?=
 =?utf-8?B?ZEk4WWNFemZpczdybGtqT0w3K3lXV3FJM3ZRc1IvWVVuNWc9PQ==?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13ef1c47-07d9-467c-22e8-08df01c1cea9
X-MS-Exchange-CrossTenant-AuthSource: SN7PR19MB6736.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2026 09:26:42.1637
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR19MB9451
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_022649_661904_48BD7DFF 
X-CRM114-Status: UNSURE (   7.62  )
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

On 8/24/26 12:59, Konrad Dybcio wrote:
> On 8/12/26 11:34 AM, George Moussalem via B4 Relay wrote:
>> From: George Moussalem <george.moussalem@outlook.com>
>>
>> Flatten usb controller node and update to using latest bindings and
>> flattened driver approach.
>>
>> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
>> ---
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Thanks for the RB tag. There will be an update in v3 relative to the
size of the register space which should be 0xf1c00 to cover QSCRATCH
too. Do you want to review it again then or shall I keep the RB tag?

> 
> Konrad

George

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
