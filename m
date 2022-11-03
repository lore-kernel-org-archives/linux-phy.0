Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5504C4321E
	for <linux-phy@archiver.kernel.org>; Thu,  3 Nov 2022 10:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1HyaOPJhAV/9/kzbvlK43tf0SS8ZAaFKwdeTaEZWN4=; b=ifzWuxiYo0TvfZ
	oyqRHrvFuZWFnt18GrOcZLv2UercwLfsVulh7wXgpNw2XDbhMdGYV3N4hY4M0owfXUxSHF6rJVvH9
	7U4plUeg73C8STa/3nNvVBOvlhOxD7eag7pv0LChyRk3ZTsQYKnK+IIasDsM1idt1bD6G0LaZdcXD
	ziCXPDT+SZUwB8m82XqegE9n9i1kgU4T2Uxs6Ab/uwRNHLMdNrsQMJfcLlWJOzY3XNiJWkkIByjrr
	rY9anlc9+pJPK+HpXyZmYKJ5wpVwxz+QphjQV3fBVcSZAmyZsu7TRxX25b0Zx7mtHa4QHOrGRgJqJ
	o7gjJ6yUekySFmejZjTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqXad-00H72b-8n
	for linux-phy@archiver.kernel.org; Thu, 03 Nov 2022 10:36:51 +0000
Received: from mail-bn7nam10on2040.outbound.protection.outlook.com ([40.107.92.40] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqXaa-00H71s-9M
	for linux-phy@lists.infradead.org; Thu, 03 Nov 2022 10:36:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cVUraGacgndWs6y8PdXNQsyLehXJEUfVcxHhyu/ApdpaBJMG8bphNHg/0um11E+ouponTt39PaUB9YQQ96cbUqROvWjlm++hoEb/YHldS9VfK3Bb5VzWYEMqjZrAOhqA5N6dh76y7nC/BbMB+zRH2mOwhTkWgAfXgOS4cMxp1sxXj2K/fduUjO0imuJImU4Bhm7lX1ZtplpKnLaiirstV+BUfHD11dohoUya/ICG5Wv/CaDsa2FwELcvzkfBdjbGyiP1aln1C2c6bbFeHcObPhd0TwjP+C/LFdbzFo8V01MVytpzStLOqg5M22QQi7V7i6QFnLlnXgty4uFT7C+Lyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E7mpgQ9mcpc+vQSFk8LBb2AV/bzfoTBi8kVt9Vlq4NU=;
 b=T6VSXv8Sn3wMbJYaRuXjbJ0Dz5pzDkUISkU9omp4XCdjB4J1DQPyxuivmdoydJ7ZQvIqhV0fVxD3GQC/bcStdXGVV4H2vLaqEKg8IQbl+JFItdl6aXhlhD8Y8lKV42x9yZelolwqbLVSg+uqLXIMw2+d55pPKZ2soU/ZY7SlNpoHdDrdLDXeaZmokEhvMM5RMBgsjzsoc71BpPDO9noIAQb0O34jfhG6dIU0BZmAeRCqQa/v3rJVRRWqTM+EBNXOyAhZF1N/vyP8f+yUgRb5mzpljNOQ79uvxuPzTJkB58aXphs5k1umRGQj0nYloesVVRiMTDEWFmTPEAXgkrApKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E7mpgQ9mcpc+vQSFk8LBb2AV/bzfoTBi8kVt9Vlq4NU=;
 b=Ba1VSQrYH9sFdlv0d97Ab7EvfXOTiA3ZpD6iQwqkI3m6gAbPOHWGUKQ2UI8shtueFyVCF9zeyu3opiFTdZM0t3n9ySvXByO09kQA+l9HUcgLK6pWTvxsZQJzNjXsG2Mj3U94K6xGF/ehlKdpDM1D5/nKMvfV8DND4CiVVZy/036PUvmTmCN7whDR+llntOwRj9TK1bLkhoZJ4rSuiLBE1XnYGOrgT602IMhP8J3ivlftmBzQfNeYTXb2OexbvcBgCUWw11tFlVAnppaAoauNbyFrjihAXC09ltDhysnh8rcEGnw4qV02uvit7XsaliR2wY3YF3hZY0z02UicRf/u+w==
Received: from PH0PR12MB5500.namprd12.prod.outlook.com (2603:10b6:510:ef::8)
 by SN7PR12MB6813.namprd12.prod.outlook.com (2603:10b6:806:267::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.21; Thu, 3 Nov
 2022 10:36:42 +0000
Received: from PH0PR12MB5500.namprd12.prod.outlook.com
 ([fe80::ac8c:eada:77a0:e2f0]) by PH0PR12MB5500.namprd12.prod.outlook.com
 ([fe80::ac8c:eada:77a0:e2f0%2]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 10:36:42 +0000
From: Wayne Chang <waynec@nvidia.com>
To: Rob Herring <robh@kernel.org>
CC: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	Thierry Reding <treding@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>,
	"thierry.reding@gmail.com" <thierry.reding@gmail.com>,
	"heikki.krogerus@linux.intel.com" <heikki.krogerus@linux.intel.com>, Ajay
 Gupta <ajayg@nvidia.com>, "kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org"
	<vkoul@kernel.org>, "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	"balbi@kernel.org" <balbi@kernel.org>, "mathias.nyman@intel.com"
	<mathias.nyman@intel.com>, Jui Chang Kuo <jckuo@nvidia.com>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Sing-Han Chen
	<singhanc@nvidia.com>, "linux-i2c@vger.kernel.org"
	<linux-i2c@vger.kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-tegra@vger.kernel.org"
	<linux-tegra@vger.kernel.org>
Subject: Re: [PATCH 01/11] dt-bindings: usb: tegra-xudc: Add Tegra234 XUSB
 controller support
Thread-Topic: [PATCH 01/11] dt-bindings: usb: tegra-xudc: Add Tegra234 XUSB
 controller support
Thread-Index: AQHY53wQnDjvju/CBECRVhiE3Sqmja4fwvAAgA1OaYA=
Date: Thu, 3 Nov 2022 10:36:42 +0000
Message-ID: <159abbc5-495b-4329-0b44-858fbcca7124@nvidia.com>
References: <20221024074128.1113554-1-waynec@nvidia.com>
 <20221024074128.1113554-2-waynec@nvidia.com>
 <20221025232440.GA3430479-robh@kernel.org>
In-Reply-To: <20221025232440.GA3430479-robh@kernel.org>
Accept-Language: en-US, zh-TW
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR12MB5500:EE_|SN7PR12MB6813:EE_
x-ms-office365-filtering-correlation-id: ddb609fc-7110-41cd-4ef9-08dabd874c72
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  He+rZmyt0DyhpDLsllk6lM4XHwhQA1/WpOVfS01lEawiIEE/FiwmzDMQ2Qrost0bo9/O2p8itdTn15Q1JOLgOmrlxfvpsa6RAdvuCf+cZBja/cxEQ3LY6PkPBvADPkiKIyITt0XoCugoW+v635FTNaSmVK5kJztaZxVRVdF44iO0X3dAvik6QBZiBXSZsALnpxXjX+0v/u/YTUDxjZ3NZAp5eL75ya+PzFD+Rnf7DsPYyTiOKMUE24uxVN4ALysIyXyTsISoRCI+rnHVMOVo6G94jbxPlZy2Po80XG7ux8HJHbWwNlScBuVP1rEd5oki0DOG5OIzRoPazYDeE6dEKgt0jhOngo6Jx823Q55/cbqsWe1TcnmGfi6liZ2aJGIloSBevsAQ8KX5NmWhuW5A+BWsCRzc7ATJVrynSkvUHOk/bnf0y/DjxekKBOqx6fFe23yaqRVs7297mUV527+yqEMrk0kCrYF0JLn39TaeIrH6zRw63M57kXa0PRiatiN4yd4p5iuF9UItCQls+RwxL+H4XGkiXL7KVRnq6+ghi2GswPyaKUJTCLCRUJH1PmaaVeZjRW+em0VhJ7adr7c4unqw3WngrYFcnsRrlZHQ+tvmire/u+a1mFQowHkkupMaZrRH7c/nfZ7BT9FzhxbrLTT7xMkk0C4stZXW4QLXnjCUwsedQVA6NPzskBngHl1g61bUB0JC5p/axUas3x8Ls+gdzL2Z+WBcYeflOwqzITnQVXmsPynshPLVgBvEUUZiHjyEGSgJpUCBVInE4gIxYPCfzNCifv8sd39ZMTfStoMysLa2HrldeHs3YI/LWK+SDvZ5zorVQXcxXf9xOE8dHA==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR12MB5500.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(346002)(136003)(39860400002)(396003)(376002)(451199015)(71200400001)(478600001)(6486002)(38100700002)(122000001)(31686004)(38070700005)(54906003)(6916009)(2906002)(316002)(8676002)(186003)(4326008)(66446008)(86362001)(91956017)(66556008)(76116006)(66476007)(66946007)(6512007)(26005)(36756003)(31696002)(53546011)(6506007)(64756008)(7416002)(41300700001)(8936002)(2616005)(5660300002)(83380400001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?utf-8?B?ZUZUQmZLVVE3OXNWUVN2TVBmK1d6bk9kOFliTUEzNDBZNTBhMXpic2QxMGll?=
 =?utf-8?B?VzY5NXdvRWprbS9aTXBSWWlqVEVDQndoazJ0aU5kYW5qNnNickRpN0RoWWU0?=
 =?utf-8?B?YS9CN2U1MlNOT1FNbmM2c0RVdklwVGFZS3dreXdwMUVQQzIvL2I2NGRVU0lu?=
 =?utf-8?B?MzNrbzhvNGliUHZnc3o1VEtwWUtxZUI4MEF4aWxsOEEwZytwcjJnemo1ZUkr?=
 =?utf-8?B?ZXBVNWlIalBQcC8xT1plRVQ2ckluN0tqWVdMbGhGWFdSaFdQUExRRkhhUnlT?=
 =?utf-8?B?dTQ3dkhCYk9PNWVob2JEZnNMNVFwWXNBTDJzRmhCc2RMWlFEL0JCbG5FdUFT?=
 =?utf-8?B?QzNlWXIxc2RMbCtMMExVdmZ3Q1ZDR1YzQStIRWpSRFBNcUpwMkh6aEFDS1Bh?=
 =?utf-8?B?YTZNRzJITmVHajNtYkRvaWNWdHFPSFJTcVZmaDJOUnNPZFd3US9TbnlUMWxH?=
 =?utf-8?B?dUM0aFMvYURGTkNwcUcxY2JwN1JhNkQxNmhCSm80VG4zREhUNjBSQlJFMkFh?=
 =?utf-8?B?eFJjcm9DV21lWmR3VE83K3Bnekczdi8wUlpuaFAwQ2NrVkU1THlEOU55RnJE?=
 =?utf-8?B?ZVcvaTBuN1pzZWtwN0J3NzM0dktIZUg2WHlzS1RKZEZWYVBYa0hzM2EwSzdY?=
 =?utf-8?B?ZFZlcmtOSkxhL1dtZnlIbndrcEJkTm9BUFNYM1ZYRTRoZS9aNkp1TzhZVlQ4?=
 =?utf-8?B?Tjk3eVM0UTEvU1djVEVBcVZXQnFJVVhnVnp6eERCN3ZrMDllMjBXa3l5SGNy?=
 =?utf-8?B?eUZyY1dLTjBYRnhzNjd0dTdmY0UyNnc3ajV3RWNJdVRJcFRsbXdBZXFYeHIv?=
 =?utf-8?B?OUdUV1BMMUcwRU50QjZ4anljMUZHR2M1dE9tdmxjQW53bGJSamNVQ09Oby96?=
 =?utf-8?B?bUs0NDlTRVRIUDdLUkRRaE1GSHc2OWUrYVFUczdWQVk0VDdCVmMybnNrWlhy?=
 =?utf-8?B?bHZDSlpIMDNYRWFXQ2x5T1Q4OEkwR1FBTVp5aXZPbHRIY1pvbWQweGFZSlds?=
 =?utf-8?B?WlBzbTdhOTZ0cUU0WHVZaEJ3MWVNRStoR3lqbllNRUdaQjZ0eHNzbG50SHFo?=
 =?utf-8?B?MjJmTStFdnRMMXMwU0hjQjkwVmt0Q2liRmRmeEsxYUE4b3M5SW1DanI2WEl0?=
 =?utf-8?B?UkVkaUtHQ1lpMUVFSzF5RXVtWHVHenhNVXdqQXdaREVnNU5xWHlFVHBaRXpT?=
 =?utf-8?B?RTZKS1F2cmIwSFdxZ3dibExRdVBmMkFqZ0MyMHFuMWdEWkgrOHJzdXcxNHhT?=
 =?utf-8?B?RjJ6OUhURThhS21nZVQrRjVteVVTTjhsMzJlMnpyd0w3VUx3MnBhdllxTXJK?=
 =?utf-8?B?RDVRMmdCd1A4MEVaQitiV1JYdXptbFppU2FWYTF3enc0N0w3ekxzb3BPbWhL?=
 =?utf-8?B?dmFTY0ZKSmdvYnNsUTFmMHp1WUNhcjQ3MldKdFl0N0xta2tmaThRbUh6ekd5?=
 =?utf-8?B?Z2V6U1VTRncybUtaQU1naWIxNW4vZ21TOUZCZjlqcGluaVBtQ0tWc3RxcUcz?=
 =?utf-8?B?MGgzSWV6eFpZNVJYdTZlVWFIcDUwdmpXOVZUY3JiOWFjbGsyNG9iQlJGeU5q?=
 =?utf-8?B?dzNjMWpMelRFSW5tMSt5WUNWTVZ0QXhvL1FvaGlxSGdqVWpIN05sVlBLaGFW?=
 =?utf-8?B?TWgvRUtKSFh1SUJXQkZwSGlTNzR1WmdWTm1IZkhPWnhXWDJQRUdyN0srOXpp?=
 =?utf-8?B?dUpacGp4RklCMk10SGJMNTZwbFY5cGxuMjdaRGhKdjgwOVhqT1NROTZLb3M2?=
 =?utf-8?B?SjN5TW5sUzBlTlhmL3pNL1RQYXJWRjJwcXYrMFArTjhBN0FqRElYT01rTkV1?=
 =?utf-8?B?cVAvQnRWUnY5amM4VjZXamVqY3NPVEh3NlJNYlQ0TU1Rd0VBNjYvZ0pMTEk4?=
 =?utf-8?B?dk9QZWtxLys3RkN5REhoRVBUblIwN1RQRWxkSnNFbldKR2txZ0dabEVWREkz?=
 =?utf-8?B?cnpJbWxKNzdST0J0d1czcVgvak5nMGhCZ1NNREkrMHNEL0tJdkRMT3NVbkF0?=
 =?utf-8?B?QlBpVVVVL2pCdmVrUkpkeDN1bXdqc2dOVldFQ241ZS92eW4zMXpnck1YcW4w?=
 =?utf-8?B?SHo5OGdaUDBSQlV4eW9iYWxXTTgrWWhpZ0ZxaVJEampzYllROXNBK3ltbWtY?=
 =?utf-8?Q?Qg5RA6apQR+J/QGKriw7qXRIV?=
Content-ID: <D4155ADC02B2F4468881E2B82B6D25B0@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB5500.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ddb609fc-7110-41cd-4ef9-08dabd874c72
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2022 10:36:42.6984
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PVQlaSiLsUfg6JMUhjeUaOZ/AYRVwvHuSATQpQR7BA/GQwZQX0s+2VJyWSxObPs1Xz3Adj5NWHkFkAg3mpraOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB6813
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221103_033648_356370_A9549A49 
X-CRM114-Status: GOOD (  16.76  )
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



On 10/26/22 07:24, Rob Herring wrote:
> External email: Use caution opening links or attachments
> 
> 
> On Mon, Oct 24, 2022 at 03:41:18PM +0800, Wayne Chang wrote:
>> Extend the Tegra XUSB controller device tree binding with Tegra234
>> support.
>>
>> Signed-off-by: Wayne Chang <waynec@nvidia.com>
>> ---
>>   .../bindings/usb/nvidia,tegra-xudc.yaml       | 24 ++++++++++++-------
>>   1 file changed, 16 insertions(+), 8 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml b/Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml
>> index fd6e7c81426e..517fb692f199 100644
>> --- a/Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml
>> +++ b/Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml
>> @@ -22,6 +22,7 @@ properties:
>>             - nvidia,tegra210-xudc # For Tegra210
>>             - nvidia,tegra186-xudc # For Tegra186
>>             - nvidia,tegra194-xudc # For Tegra194
>> +          - nvidia,tegra234-xudc # For Tegra234
>>
>>     reg:
>>       minItems: 2
>> @@ -90,21 +91,27 @@ properties:
>>
>>     phys:
>>       minItems: 1
>> +    maxItems: 8
>>       description:
>>         Must contain an entry for each entry in phy-names.
>>         See ../phy/phy-bindings.txt for details.
>>
>>     phy-names:
>>       minItems: 1
>> +    maxItems: 8
>>       items:
>> -      - const: usb2-0
>> -      - const: usb2-1
>> -      - const: usb2-2
>> -      - const: usb2-3
>> -      - const: usb3-0
>> -      - const: usb3-1
>> -      - const: usb3-2
>> -      - const: usb3-3
>> +      anyOf:
>> +        - const: usb2-0
>> +        - const: usb2-1
>> +        - const: usb2-2
>> +        - const: usb2-3
>> +        - const: usb3-0
>> +        - const: usb3-1
>> +        - const: usb3-2
>> +        - const: usb3-3
> 
> items:
>    pattern: '^usb[23]-[0-3]$'
> 
> And an explanation why you need any random order. If it is just
> different for Tegra234, then you need an if/then schema for this.

Thanks for the review.
We need to pick up one or more for the corresponding phys of the USB ports.
It should be a common settings among all the chips.
Adding anyOf here for the reason above and passing the dtb check.

Please let me know If I have any misunderstanding here.

thanks,
Wayne.

> 
>> +
>> +  dma-coherent:
>> +    type: boolean
>>
>>     avddio-usb-supply:
>>       description: PCIe/USB3 analog logic power supply. Must supply 1.05 V.
>> @@ -153,6 +160,7 @@ allOf:
>>               enum:
>>                 - nvidia,tegra186-xudc
>>                 - nvidia,tegra194-xudc
>> +              - nvidia,tegra234-xudc
>>       then:
>>         properties:
>>           reg:
>> --
>> 2.25.1
>>
>>
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
