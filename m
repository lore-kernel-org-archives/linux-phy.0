Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E619C48BC3
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 09:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WjNeZ0TkexGLuE5nXf8IAORnbZTTv7KAPQhPyUpKXYQ=; b=dovqvmZQcJq6K1OHHsTmh3QDw2
	+ZkszV+STIqCEQPbxH9VJBWWv4d01oPex6f11A55B2FPa8OATZbvEslL0WamqI2fOS2AA7yA4wQZp
	9Yo/z5osIH/bY6wykx2lZR/E2kSENtoCbvS5kvWXYTck3BAxFKSYTMuWQ9fQejnB4A69aPBSW0IuZ
	ImYKVfzRpo4hAOT1g5ou/AY5KTOOphlA/kcxwe5dzeXdu4eSrtcPdKPake8oZ/jb9OjSikMZ5Qmuz
	6V9r6BDmLC603Ruk5zeVwtwVtYLJsCugbVk+pxyp/1q+i8GnlifHeeIU2/mIPkZL4ZHnT0bIjhthm
	rJJFwIdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMNL-0000000DxVo-03qt;
	Tue, 20 Feb 2024 09:25:19 +0000
Received: from mail-sgaapc01olkn2082d.outbound.protection.outlook.com ([2a01:111:f400:feab::82d] helo=APC01-SG2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMNI-0000000DxUp-19ii
	for linux-phy@lists.infradead.org;
	Tue, 20 Feb 2024 09:25:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SO6YkG76uB1azRvT+2FExTlG8svVNqN5/aJc+CG87jV3sA0fh86FjaK06TXbBiR6E2j0ryAd7dHHclB8hCPgHqElZPt+xfa4X4AX/PYU5B1HCSNb3ezoFR4G0PA+HV+UhbvzBkL0u5Bv2fJYarvdnc9ufr1ogHpcHM9EMt8j1HDlEYcM1n/Ucm8ul0Shg/2BWCn6ic1/CI+DUjT4ZS01DW0iKSgyj3r3jvWod52YWl+hTwm3BIyjR8EtTRFeeN6WiLPcQrhoqfCy3hBhiSBxbZjm/7dnVDUPuaZ+OcM30+kxpUO27cQdkw1EnwI1ZMazWMIuF6F2k6KDfE0+4XVjMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CMAjvnf5/2THGdBm2IkBS8NVUiNOoadku4YwMbaen8Y=;
 b=ZHGp978TezxYi0DmlsMTwWaa5ccKfbIdTkamBjVbWpuM40YVfWqwyYNFCb9keXE4t0qM5d5NmrCebf3LdR3mebhlr7BwnxYlt7z9UDi7POJrsR/VXiMDgyuxC2v42e600GCbAk5O76Q+6CGKr+EgCLUCsZaVQwpVKOFcypCsJStrmuhDpW0ey/rQ5xf1DD0pd4upHnAMbGz8BEljpM+4k34+QeZR1Qp6scC9pNKnaRgxr8qRMo2iCf2COdVHzCrMNtA4kX3Bn8twHHNpHiAnqjWphjZsI5hR4EpWRpkVLdKZzPLFUjBUS5jtblRG1s5QH6D+7mD/fwohDnt0A0RuwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CMAjvnf5/2THGdBm2IkBS8NVUiNOoadku4YwMbaen8Y=;
 b=ebWh/gym9s7cuRAWpV4BxVvmMQ2lsdl8F9axvAW9WCIYJI4a1VGaSnM7S1YR9N52yc2WCmZ/wxpgNCS25qRG84ZRtsoUpOlog1b19UO1ZQoVtnI/SAzo/DiNZjBjVdjdUEENuWw+wKNaT7aw4zukIyg+kh8FHrGqzB9Dlyi6fvfzAICELtgKmbxez2LR4Qj0QrMQDRx1clqvLmpJkcOO7W5dHxpJ6IB/NldtVHFDnXYMgOSYz79+uzhMi5P2ZGrE72W5kXiBHcgBE9OYvrks+nSm2MLLsCEpvDC/K7QNz02m8LD92s5Xoo+6iIeI569O+UAvOmfq5jjvaPj68BX14g==
Received: from SEZPR06MB6959.apcprd06.prod.outlook.com (2603:1096:101:1ed::14)
 by SEYPR06MB5791.apcprd06.prod.outlook.com (2603:1096:101:b3::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.32; Tue, 20 Feb
 2024 09:25:05 +0000
Received: from SEZPR06MB6959.apcprd06.prod.outlook.com
 ([fe80::53da:a8a:83cb:b9ad]) by SEZPR06MB6959.apcprd06.prod.outlook.com
 ([fe80::53da:a8a:83cb:b9ad%4]) with mapi id 15.20.7292.036; Tue, 20 Feb 2024
 09:25:05 +0000
Message-ID: <SEZPR06MB6959EB3E02967ECDB986AE5696502@SEZPR06MB6959.apcprd06.prod.outlook.com>
Date: Tue, 20 Feb 2024 17:25:00 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v3 5/5] dt-bindings: phy: hisi-inno-usb2: add
 compatible of hisilicon,hi3798mv200-usb2-phy
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Jiancheng Xue <xuejiancheng@hisilicon.com>, Shawn Guo
 <shawn.guo@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 David Yang <mmyangfl@gmail.com>
References: <20240220-inno-phy-v3-0-893cdf8633b4@outlook.com>
 <20240220-inno-phy-v3-5-893cdf8633b4@outlook.com>
 <d69b3fd0-2799-4cf7-90fd-d22e6c24bdc3@linaro.org>
From: Yang Xiwen <forbidden405@outlook.com>
In-Reply-To: <d69b3fd0-2799-4cf7-90fd-d22e6c24bdc3@linaro.org>
X-TMN: [EI7S5TZzg3qzN3JRCCz+mQ1vG1YuV4PCnHlxPwQBsQyc/rN7HyQHboAoZhiEKn8Q]
X-ClientProxiedBy: TYCP286CA0203.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:385::16) To SEZPR06MB6959.apcprd06.prod.outlook.com
 (2603:1096:101:1ed::14)
X-Microsoft-Original-Message-ID: <c91c82b0-c4b2-4a6c-9f1e-911b4abc67b2@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB6959:EE_|SEYPR06MB5791:EE_
X-MS-Office365-Filtering-Correlation-Id: 15565e33-4092-47c7-605b-08dc31f5d27d
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mK5b7BA+AUy8ae1UO3kRk/gP624kQ81uBQN2SnGTNXYfBH7uskRNy2MwTyRf3gv7i5qz/bz9jeS5II2inuaLOZD7eCt2t1ieDeOwkAvcsF46HGkFrkjJNQ/SnpqsSpsqZscGnYF5eEIcbo4mYUDleyQcHs0moVG8RQz7ZwoXN9Wl6MEvfW5x5H0T7GjZ4DMsi4U4z190m6OFiHy/Q8sqf8fqe1u4k5VWPVJaDhqngrcd0nu7m7LY5uUxDTBvSdiQdpauRUY3KS89cznc/oSVuzwjfcPrdsNVSgpAaQ5cSPfcegBD4aexsNCH/QITHM6pz0deI8ued0rnLsFGPt0+el/ylbjfe6ok83e4woIY9EbhERRdjaXFnjMe5TZBhkfMlmU5URsYNr1UPBFc8t70LkOYTROYwLfdn+har1NhpMQxxeKG1hy4JdWsM8zUa074Hek89eU3jr6eOoa+ACtHWBWRap/BU16YIMhuWSsVUbazIkakW97/9CoHcCfhWHFLUlachO2Rf15gmi3tLkRvzm+cL5rFClGB1/gJj4iwQ7p9nv8lf+OyyUB6z+684Fhz
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ek92aEcvcEQ4bjA1eHRDY3kydjFUQ1ZTbythL1ZQU0pZL3VPVnB5YzJKN0t6?=
 =?utf-8?B?c3hlN2psekQrTHFxbTF1VkI3WnRPV3BGTGtFWTY0UEpZMWdTM0liZUkxTldt?=
 =?utf-8?B?NmpMSHFoL2JmTjJDZGNVb2ViNk1ESGhMN1d5SmJ5ekt3T3RrWE5uLzNYUWR2?=
 =?utf-8?B?YmVEVGhFRkFjUUdZeUlGa3dvZkFJd0hHT29nZlJMaE1xYmFSMVVlZm85WExq?=
 =?utf-8?B?ZDR5cEVlL2NSSWh1WHlCaExuQjBhTDhReHdRbkFIQ25xVVVLcHhqOG44cDFF?=
 =?utf-8?B?OFo4ZG9jUTN2NHhaekR6c3Y2RnZ0eDVjTVE1cWJBWVpFejV5QmtKN2hRTVVT?=
 =?utf-8?B?Mm9nQ3c4aXBRWVVWQjh5Zis5SGRsZkphT1JxdHBtdURndng5blFvcHE5VjFz?=
 =?utf-8?B?QUhtQ1hFai9ZUzdHZXphcU8xNEF3dm5PUFdXUTA3Y0RYTWpaSmZkQzF2c0FD?=
 =?utf-8?B?cWx3Rm5MTnRWOFJXNjlRbWZid25pQXNHSnBueXNDeGxHWEJhV29VK013RjI3?=
 =?utf-8?B?NjhZUVpQVVNmbEhaWFFYMGxOWFcyQVFKQmNsamRCcEdZSG1zanZoZkkvOGNk?=
 =?utf-8?B?eUdTUEhIMldoZ2l5S1BncGVZbGZMdDlWSEJzY0liM3ljbXdyY0JMVEY4d2JK?=
 =?utf-8?B?WjU4ZzVwU1dJR0FOR0pNQnJxUU9WZVZUMkMzeUdocm1IeDV3b1p1YzdDSy9Y?=
 =?utf-8?B?OXlBZmRLSEx1NTQ0SDJiUFF3MXNIbW1UakN2d2FSbGU0ZjBNcE5UTkh4cDQr?=
 =?utf-8?B?Q1NLWmMxa1RjN2dlSU5rM0JTajgraEdRVWU5bXpuNHl5YUl4WUpKYWovQWhy?=
 =?utf-8?B?ajBYLytpbHU0eFFaTllDdmhBQ3Boa0g2dThGTElTTDM1emUvcFNsaUR5c1dn?=
 =?utf-8?B?S1FHZDk5UEJjcG0zdzZyTmFLanh3bGExUjZoTlYvWklLZ1UzekJNeTM2R3Zk?=
 =?utf-8?B?T1dTVXhhU3QwdnZDcExVWVhNQnYxRHRqQ1YxdmpYWERyeG1Jbm1abWJ0SXRa?=
 =?utf-8?B?WDI2UVZEb2ZXb2pqcjVHS1lJRWIvakpkNkpYQTMzckFpTUEzKzdRaXE1ZHZq?=
 =?utf-8?B?UGI0cEJiQUN4Nmo5NHI3TGlFZDNnMXpIQksxdE1hdGhpL2pXVUwxeHNrcytL?=
 =?utf-8?B?QzNtWEJJaC9Da2hwYUwxbyt3UTg4V2M4T2krdnpBNkxqY3hjSnVCNEdicW43?=
 =?utf-8?B?dlg2VCtBaWM1NFAyeGVDZXZLWElid1RhUXlVa3RMRHZibU1rV3VRMGxGMU9s?=
 =?utf-8?B?ME9WeVoxdGE5QVlvNEtQZWhOQXNwa0owZTEwYmE0d0lQY0l1UFlEaWVZdkcr?=
 =?utf-8?B?bHZBU1YrdHNSNzFpellYNFhPWDUxVHFDQjJ2cjZ1QjBEdjFLWHFyWkppZEQw?=
 =?utf-8?B?TVh6ZDEvNFRDREFmSjRDNnZ5Wkx3UnFaZEFmMDBVQktSMEswL29TTnhLU2tC?=
 =?utf-8?B?SmF5UEVscFhwbG5rMkRZelRJUkVzT3d2dHd2TysvSGR3V0NtQW9MNDB6Qm5j?=
 =?utf-8?B?ckNiS1Q1eFE0UmJkVkxIVUt1dDZuSUpvTmRpN29VZTVoSjMrVkZaNlk0NTR5?=
 =?utf-8?B?SGx3T1puVzVMWjBDYVNtb2crTTlNYWx6RnJUYVIyVXJFQzVDVmZhaHNzdXV0?=
 =?utf-8?B?Q1dqZ25aSEcrQVB4YTRMQ2h6OXd2cUw1VEY0NnBmbTFmQnFzMHNaRmY2VllQ?=
 =?utf-8?B?cWtkSStoNEg1UzZUMFowMWhWSzdNaVMveDl5ZWorQk9BTm1NZ3BhbWxPejg1?=
 =?utf-8?Q?PzxnN6WpF+kzMmf8Dlc2sLgcUntPXY1Y5OLutmy?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15565e33-4092-47c7-605b-08dc31f5d27d
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB6959.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2024 09:25:05.0120
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR06MB5791
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_012516_362638_8F64021E 
X-CRM114-Status: UNSURE (   7.49  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 2/20/2024 4:18 PM, Krzysztof Kozlowski wrote:
> On 19/02/2024 22:28, Yang Xiwen via B4 Relay wrote:
>>   
>>     resets:
>> -    maxItems: 1
>> +    minItems: 1
>> +    maxItems: 2
>> +
>> +  reset-names:
>> +    items:
>> +      - const: port
>> +      - const: test
> Why old device now gets two resets? You need to constrain it per variant.
I only make reset-names mandatory for mv200. For other models, this 
property is not allowed. I'll add constraint for resets too in next version.
>
> Best regards,
> Krzysztof
>

-- 
Regards,
Yang Xiwen


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
