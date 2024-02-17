Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E85E1C48BC3
	for <linux-phy@archiver.kernel.org>; Sat, 17 Feb 2024 12:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZuxoGbz44q7r171MeDzKX9tLYpHHp6eyMFqidyfQ2zQ=; b=wB1m0dsrR3Vj5kRVHOkzsljule
	Pcp28e4NP2WcahjFdiWsd5kj++2lVk460IXhCFos7lnGShfmfWQwNHNEziw9UswiZ2OBW0gdnpSoM
	i8YCiiAVNnRa+QYedIiNIoH3yQwQVJHgtbxOmqPlmiQI5mRi1nsfJZ7xJRUOqVXtWQbIwBRRsKv7N
	SQwy6cDnMuFcp9vRk/jgRR9qPPpd/HtLhHUCX27scYlHgJb5po4vSKo6ud7AhMM9j5QbLfbXRv9Y4
	PjLvqRFO975r+4SuFElsRQEpVCuRff0X9Cvi4YsJVFfsNAu8ubXKznC84w+GV8noVkd9T6EZa1dlD
	tsMNPZvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbJQE-00000005cS3-1hlT;
	Sat, 17 Feb 2024 12:03:58 +0000
Received: from mail-psaapc01olkn20810.outbound.protection.outlook.com ([2a01:111:f400:feae::810] helo=APC01-PSA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbILl-00000005U1r-3HUj
	for linux-phy@lists.infradead.org;
	Sat, 17 Feb 2024 10:55:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JIUk6WyP7AW+g5NXPtIDjikkdv8ALa+wh5OZYtw7RfgTMJkRKxsjWZtNAKPRgVhfu5xLG2EoKk05InRrJapDkhLDaiesJgP0Jf8cD3XDunE6lJWVQocfubXkFajxeNe+GywNmd/F++BSSlYy6y/miRSeOTcfBiO0VlrJRpkvK0gddhkJmM2y40GDfg9yWEpsTpGd8SsY7MxJ+tXRm3U876Shdmg1/BRZ8zfenikp5P8G+pn0i+EhxYFXZ5/ymK6O3y0ZUu4haoXKqJ4CKtYt2fzCX5rpc9hChXo8zOFFgQpQEy4n8eQk6KrO1Ny7O3GK6OrkjlTwd/2YRAJ999+w+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=006XMk2+JqPsh4jUaxhbYljxwjoQO/qVRZkWLQqI11I=;
 b=aBYbo6Yj1X68JRtJSAKCwlfBxK3Gan9p9yO0C1zpZB4Nor2zOGOOEzA17bUwJQ7U/7JbPHQyhslGZtz9GG5Y+bkjwzJtfAaFacmdSh2HdrzTU0UWjMujKUVLJ+X62S2mq6pZLhJWQqRG39IXuOAGAO43fJEmDVt9B9o8oUOv2m/Mv+hhAunolR6WMhVBVsj4/AzOqIxmwdTUUUy6J+WiQp7qGwGEfS3d5DWncNyQ5njSUq9DS4EIAWI1Hc8acVXTXbYlBICuNXx7h+0xvWOtXLcjgu6tw9Y3rdv4bubmLXwo+MJqEGecCM3HwHhgA7VzTo0y8nPMVUifkxRVycopRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=006XMk2+JqPsh4jUaxhbYljxwjoQO/qVRZkWLQqI11I=;
 b=ptSS6jaUUHs+bS4gRqTzs8yQqmRURM8M7SCvo+iioau9oHcubOrw3S5GuncwsDK3661qOS1bpEDTktWA0TsP4KJoCdiwCUwJZK1MO8U0OljYLBn+gh/ruqjFaGZaTkOe5Q3DQihYanLOJ5HRR57WKkbwvNh63glRQ4ipAW2lhGwPdgRcBzKoIvbmkrH4XsqipzJHQCCQcLVqGYrRIEU9oCviegJUYeXTCxS/SmacCs6nx22iogRC7fTsB+CVCMW5o1A8QTcyRyAaTOEpRtISMVydtns24zUpy0e6LHc6tK7SiC9A/Ld31gw52CXvhmH+gmi8Jkf3CSzPw6P6YtKH9A==
Received: from SEZPR06MB6959.apcprd06.prod.outlook.com (2603:1096:101:1ed::14)
 by TYZPR06MB4015.apcprd06.prod.outlook.com (2603:1096:400:28::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Sat, 17 Feb
 2024 10:54:57 +0000
Received: from SEZPR06MB6959.apcprd06.prod.outlook.com
 ([fe80::9a6b:d813:8f4b:cba1]) by SEZPR06MB6959.apcprd06.prod.outlook.com
 ([fe80::9a6b:d813:8f4b:cba1%4]) with mapi id 15.20.7292.029; Sat, 17 Feb 2024
 10:54:57 +0000
Message-ID: <SEZPR06MB695983231D04A2E1947AF61896532@SEZPR06MB6959.apcprd06.prod.outlook.com>
Date: Sat, 17 Feb 2024 18:54:51 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 1/4] dt-binding: phy: hisi-inno-usb2: convert to YAML
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Jiancheng Xue <xuejiancheng@hisilicon.com>,
 Pengcheng Li <lpc.li@hisilicon.com>, Shawn Guo <shawn.guo@linaro.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 David Yang <mmyangfl@gmail.com>
References: <20240216-inno-phy-v1-0-1ab912f0533f@outlook.com>
 <20240216-inno-phy-v1-1-1ab912f0533f@outlook.com>
 <63b3eff6-49eb-46f3-a6d9-878eddf6de53@linaro.org>
 <SEZPR06MB69593B898A42192D134B01A896532@SEZPR06MB6959.apcprd06.prod.outlook.com>
 <dfecd473-dcc1-4977-901d-6c7bb615bc97@linaro.org>
From: Yang Xiwen <forbidden405@outlook.com>
In-Reply-To: <dfecd473-dcc1-4977-901d-6c7bb615bc97@linaro.org>
X-TMN: [IqiqGNqid1tLkGOdQaN89cEQ+BVwRyXWxYGJWuFu39eBYuhhmOCnso1iRMEoOhw8TFh7fGiPPK0=]
X-ClientProxiedBy: TYAPR01CA0080.jpnprd01.prod.outlook.com
 (2603:1096:404:2c::20) To SEZPR06MB6959.apcprd06.prod.outlook.com
 (2603:1096:101:1ed::14)
X-Microsoft-Original-Message-ID: <23cbbf47-6234-4883-9660-15a667ac725f@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB6959:EE_|TYZPR06MB4015:EE_
X-MS-Office365-Filtering-Correlation-Id: b170a110-85f4-404d-fc6f-08dc2fa6e16c
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mnC3LzyfC8RN6UcZpQih9Oac3G8F+bKOaXAqZqTrdsvFbnzrWuPe8Pmf0DwW56X4Z3ccKqJVb4C1JvoAz1tx3JeVhK8VBHD6BWrf5lQEj9Ls2I7AMglYHxCFgwAPk9qXOZUQps0urXQiZBE0tAbFwS6QuvKXBuauV8tGslKFccjWokOWpQHhztOxFV2vajrJn66LzQFoF1DVkikzkEUM59EDAfHxW03udOLC3bwu52VBvIIemS4fk2YUIPjg0Fvu6myVFjZDD/jC8Sxv1jVoSZsMbUVEr2Mw+L6GLVhxMGsij90fU4FSsmBXHz4pElXd/qUIn8X0TENSAUIcGZD3tIpAiVaevTOEJaD9D3ZUfIGx7ERXOTrAExr6bOKKTakBHO91ebd1rQy6o9Pw4Xx+kqDZ35u2XU/XLXpHYqnzLkEpWZYKCNuupFpv7GMIH5o28F9S+KY1uvmsXUC/9CUqHUMmnkkYKblfk6pgUtdXxCvbsM2EVUX1TkMQg0AfcB7zBmnSANPlEUvUyCvGDO2/g5238yozXxRkzwqB5487kc611WhqIgm8KuA0kaQSUl+I
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2doS1hqU2t5bnR4eWNXalBtMGlKWmVFVjVZdkJUbkg3T2huZU9nWTBORHNq?=
 =?utf-8?B?aU9ZZGFTYmlhTTdsTzhqQ0RxT1RxWFVxd3VGQTRpOVFydC8zaXZIVWRiN1ow?=
 =?utf-8?B?WnhCbVpvU0duNGhMVVVDdFJpOHVGblhKWmpRZ2VybHlKYkc1V1Y3U2FtUlRS?=
 =?utf-8?B?SUNsYXJsU2UxbDEyTzA1OXcrdFZqZ2c3SGdTK3VCYThuTXFsMzU3SDhFUWQ1?=
 =?utf-8?B?K3pON0dmeWlzc3ZrVklYblVJcjBuS3gxNjBEYTBXSE9XazFYK01oYW0rKzA5?=
 =?utf-8?B?SjlKNGFBUVlsWVMyWE1vTlZvaXZjd3ZBb1FlUTVPaEM4dHU1d3hvSnNkQ2ds?=
 =?utf-8?B?RmJiY3pyK0FoTjZmT1A4MzlWbi9Tc3lOZldrSWJyNXhXU09IbTdWeXlHNUN5?=
 =?utf-8?B?R1k1WC9CbWFSQ1ZVd0VDTlRUTEFlSDIxblRvTlJuU2RuaTI3d0RyL20rbHh4?=
 =?utf-8?B?TVZqd3Mzcy8xYWY0dUR0eCtOc2ZHTE9zaTI5RDF4eW05ZFRIWWUrTHova2E2?=
 =?utf-8?B?dlk4bWdLQStvUkNEMkkwaU0vaXRiTjQ4ZlU3ZkRpR3BPV0pYeU1YQzVIU1o2?=
 =?utf-8?B?R096SWpYSGM4THRHMTlMUWNwVGZHR0FOTjNSMENQY2Nqc3Nxd3Z2L1A0aUxJ?=
 =?utf-8?B?R2hPbEp3UlUyc0RpeGt1RFZaYm93azF3aGNPRmlEZFlIM1RiaXA2Mjg2WkQr?=
 =?utf-8?B?NXM2ZVZwNkZTYVB5UENmcGpHT3Iyb2VseWx2b0VaOFhOdWMwWFZockxVbUJp?=
 =?utf-8?B?U05EKzdFcXRnNjNZTHdUc2tYdUxmejZ6SnFpdTJjV1YrSHR0NDR2QXk2SXVQ?=
 =?utf-8?B?TmV6dUs5djBOaEtXamUzVWwrcE04eHV5R1YvLzVadHJYQXA2SDdZQVg0enQr?=
 =?utf-8?B?eUZSOU03dVZTSkk1bGpRMXh6a2VHZTRxZzUyQS9ER1p0NWJVVmVoWG5HWkNR?=
 =?utf-8?B?dkFzQlRSOFZoVDNXSUFIeS9DV3BOVksySHFNVHBMamVGUGFacTI3ckxTSU8v?=
 =?utf-8?B?d0JGd0lNU0QrMW5McC9KWjYveG95M2lHanJUb3NKYitxb1lYZkRpM29RRlpy?=
 =?utf-8?B?YmJkU1hlSUdqZEppRjhXdUl2ejI1SmRidzN1THlRaXV1OEFXSmhwdmFGaWs1?=
 =?utf-8?B?UFJmUjlGOHZMNWxyeTV6SGV5VENVVjVQajNGRE1Tc0t3N2Z2dGo1UjJwdlBp?=
 =?utf-8?B?QnpqZEo4em5vR0tDb0p0eFJkdTlrZG50QWNMU1RXQmJab2hka3JUcjVOZEd4?=
 =?utf-8?B?QU1YakQycWdrUzNZYXl2cElqdmdNMFBJNjgvVlJrUnFiZzJkaUtDNnhPNWRC?=
 =?utf-8?B?MUNOZ2UvR3QrRWZLN0V4amRjRjJiWTZZOG9SZlBLMDk2RTlJZ09WWkZzTmt6?=
 =?utf-8?B?T0szR0k0SmFIYjdLZkx6dkU5TzkwUmFaQnNnb3FDRDg3bTJGdisxbU5qZ2Jv?=
 =?utf-8?B?L040UkJ4WWZQNXllbjRFZ1kvYmg4TlhGY3dUWHlpQTdOTjlDY05YdERiNUxT?=
 =?utf-8?B?TytpaUNxU2FhR0laemRtTXRwWTgzS1hYUFc5ejh4SFNuVlQ1YSs4RWd4Tk9Q?=
 =?utf-8?B?eG1SSUhtQUxPR1hpclM1OGdRb3VOR0MxRzlrc2xIZkM4VzRBQmMzVTJuaERE?=
 =?utf-8?B?VHd5ZFVmV1FOVktJdXF2ajg3bTBKSUlPWnNDMDRtZjZGUS9wa3N4UkdPT1NF?=
 =?utf-8?B?WklmanlQQndyanlIbjMvS0NldHlwUG50WkphbGhaVGFYQ2VzanhFSXdiTkIz?=
 =?utf-8?Q?jUiCErj9dUDk+FGeySDmHKnjiSwUWSoRa1Wu49m?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b170a110-85f4-404d-fc6f-08dc2fa6e16c
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB6959.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2024 10:54:57.4350
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR06MB4015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_025517_840714_F970C5B2 
X-CRM114-Status: GOOD (  12.82  )
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

T24gMi8xNy8yMDI0IDY6MjkgUE0sIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24gMTcv
MDIvMjAyNCAxMToyNCwgWWFuZyBYaXdlbiB3cm90ZToKPgo+Pj4+ICsKPj4+PiArZXhhbXBsZXM6
Cj4+Pj4gKyAgLSB8Cj4+Pj4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svaGlzdGIt
Y2xvY2suaD4KPj4+PiArCj4+Pj4gKyAgICBwZXJpcGhlcmFsLWNvbnRyb2xsZXJAOGEyMDAwMCB7
Cj4+Pj4gKyAgICAgICAgY29tcGF0aWJsZSA9ICJoaXNpbGljb24saGkzNzk4Y3YyMDAtcGVyaWN0
cmwiLCAic3lzY29uIiwgInNpbXBsZS1tZmQiOwo+Pj4+ICsgICAgICAgIHJlZyA9IDwweDhhMjAw
MDAgMHgxMDAwPjsKPj4+PiArICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsKPj4+PiArICAg
ICAgICAjc2l6ZS1jZWxscyA9IDwxPjsKPj4+PiArICAgICAgICByYW5nZXMgPSA8MHgwIDB4OGEy
MDAwMCAweDEwMDA+Owo+Pj4gRHJvcCB0aGUgbm9kZSwgbm90IHJlbGF0ZWQgdG8gdGhpcyBiaW5k
aW5nLiBJZiB0aGlzIGJpbmRpbmcgaXMgc3VwcG9zZWQKPj4+IHRvIGJlIHBhcnQgb2Ygb3RoZXIg
ZGV2aWNlIGluIGNhc2Ugb2YgTUZEIGRldmljZXMgb3Igc29tZSB0aWdodGx5Cj4+PiBjb3VwbGVk
IG9uZXMsIHRoZW4gY291bGQgYmUgaW5jbHVkZWQgaW4gdGhlIGV4YW1wbGUgdGhlcmUuCj4+IEZv
ciBDVjIwMCwgdGhpcyBiaW5kaW5nIGlzIHN1cHBvc2VkIHRvIGJlIGFsd2F5cyBpbnNpZGUgdGhl
IHBlcmljdHJsCj4+IGRldmljZS4gVGhlIFBIWSBhZGRyZXNzIHNwYWNlIGFyZSBhY2Nlc3NlZCBm
cm9tIGEgYnVzIGltcGxlbWVudGVkIGJ5Cj4+IHBlcmljdHJsLgo+IEV2ZXJ5IG5vZGUgaXMgc3Vw
cG9zZXMgdG8gYmUgc29tZXdoZXJlIGluIHNvbWV0aGluZywgc28gd2l0aCB0aGlzIGxvZ2ljCj4g
eW91IHdvdWxkIHN0YXJ0IGZyb20gc29jQC4gV2hhdCdzIHdyb25nIGluIHB1dHRpbmcgaXQgaW4g
cGFyZW50IHNjaGVtYT8KCldoZW4gdGhlIHBvcnRzIHJlZyBwcm9wZXJ0eSBvbmx5IGhhcyBhbiBk
dW1teSBhZGRyZXNzIChubyBzaXplKSwgaXQgbXVzdCAKYmUgaW5zaWRlIHRoZSBwZXJpY3RybCBu
b2RlLCBhY2Nlc3NlZCBmcm9tIHRoZSBidXMgaW1wbGVtZW50ZWQgYnkgcGVyaWN0cmwuCgpCdXQg
d2hlbiB0aGUgcG9ydHMgaGFzIGl0cyBvd24gTU1JTyBhZGRyZXNzIHNwYWNlIChtdjIwMCksIGl0
IHNob3VsZCBiZSAKbG9jYXRlZCB1bmRlciBhIHNpbXBsZS1idXMgbm9kZSBpbnN0ZWFkLgoKU28g
aXQncyBlaXRoZXI6CgpwZXJpY3RybEA4YTIwMDAwIHsKCiDCoMKgwqAgdXNiMi1waHlAMTIwOiB7
CgogwqDCoMKgIMKgwqDCoCByZWcgPSA8MHgxMjAgMHg0PjsgLy8gdGhpcyBpcyB0aGUgcmVnaXN0
ZXIgdGhhdCBjb250cm9scyB3cml0ZXMgCmFuZCByZWFkcyB0byB0aGUgcGh5LCBpbXBsZW1lbnRl
ZCBieSBwZXJpY3RybC4gKGp1c3QgbGlrZSBTUEkvSTJDKQoKIMKgwqDCoCDCoMKgwqAgcGh5QDA6
IHsKCiDCoMKgwqAgwqDCoMKgIMKgwqDCoCByZWcgPSA8MD47IC8vIHRoZSByZWcgaXMgdXNlZCBh
cyBhbiBpbmRleAoKIMKgwqDCoCDCoMKgwqAgfTsKCiDCoMKgwqAgfTsKCn07CgpvcjoKCnNvY0Aw
IHsKCiDCoMKgwqAgdXNiMi1waHlAZjk4NjUwMDAgeyAvLyBNTUlPCgogwqDCoMKgIMKgwqDCoCBy
ZWcgPSA8MHhmOTg2NTAwMCAweDEwMDA+CgogwqDCoMKgIMKgwqDCoCBwb3J0MEAwIHsKCiDCoMKg
wqAgwqDCoMKgIMKgwqDCoCByZWcgPSA8MHgwIDB4NDAwPjsgLy8gdXNlZCBhcyBNTUlPIGFkZHJl
c3Mgc3BhY2UKCiDCoMKgwqAgwqDCoMKgIH07CgogwqDCoMKgIH07Cgp9OwoKU28gaGVyZSBpcyB3
aHkgaSBpbmNsdWRlIHBlcmljdHJsIG5vZGUgaW4gdGhlIGV4YW1wbGUuIElmIHRoZSBwb3J0cyBh
cmUgCm5vdCBtbWlvLCB0aGUgcGh5IG11c3QgYmUgdW5kZXIgYSBwZXJpY3RybCBub2RlLiBPciBp
ZiB0aGUgcG9ydHMgaGFzIGl0cyAKb3duIGFkZHJlc3Mgc3BhY2UsIGl0IHNob3VsZCBub3QgYmUg
dW5kZXIgYSBwZXJpY3RybCBub2RlLCBidXQgcmF0aGVyIGFuIApzaW1wbGUtYnVzIG5vZGUuCgo+
Cj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgo+CgotLSAKUmVnYXJkcywKWWFuZyBYaXdlbgoK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
