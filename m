Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B838EC433FE
	for <linux-phy@archiver.kernel.org>; Mon,  7 Nov 2022 10:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2as7mXvw9YjJXwgL9NLRGAYn0gpgIl6/ws2QJ1GTe0Q=; b=xpM5/+caS6Emoc
	qfo/c0qCUqPBg9J1fWuZzZQ6Lu4p0C7qJqVjpW1tIKlQ9o8E8Y8TUasZPavP804geJzcwC6sMOUqC
	6vMaDSEGnyEQr5yPLYblYm+HPeU9e8vdiCPH7NnIWVi/vkcqo2k+RC64bPrY7fujDBhzFtkSzuDgf
	6wtId0hY5Zv05cwjpE0yh/OSxJHg9UlK/YzUr2u+iwssYI9EoHSBgmg1cCL3fpsjs9//OzcMEE9A6
	c609G4uplaIDmzhBVKVgcVC2YCb6y/UzFq8m82GWfDJGUqJ6KSU140fFoOdzX+GN8sOEJr4Ef/UGm
	ml5dLT6+FMjd1xXBRY7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orzUD-00DlBA-RJ; Mon, 07 Nov 2022 10:36:14 +0000
Received: from mail-bn8nam04on2061.outbound.protection.outlook.com ([40.107.100.61] helo=NAM04-BN8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orzU9-00Dl7s-Ue
	for linux-phy@lists.infradead.org; Mon, 07 Nov 2022 10:36:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SsRY+fQ6lV9Cu0cSjdhtDumhGN/1FzdNtCFwquIZEgVStwP1ELcZt34BD2+6T23eCeh26p0f/kkxr8N5fTLzsMKDps/MmqfxPACLnlfoGzo3yNfgItN3YOB6/CTbx1wwK1fCxCaYY7Nf6iE5Sh0TIMdWfXGqgga7oehC8/hdrjkPcrlXOoxlccgNwOLNeIvv3Kh9SjZ4oQt4XlGtpr0TEn+4aAnpLT/dsyX2bYiAc+78okrS/GC+PCXK+rOXLzSq5ktmsDcdC1srNCr3fC49YzXZej7Tfvylg4t2lTQa/d/hbJMWmJcx2gq06e2YEXwBAHOuLrFHHefBqTcg5Bcc+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ixiEc8JC9t4KoX0i+Yicd7zdg0d8loOZQfVqmNwyl48=;
 b=AAQijj8Fxipo0wmL362WpjBFMk89ZWiQfzwfDWNbY/5daJUf+zeyLriU4oJ7b2DItdN5dAB9hFC9iaPf51NkBvTH8cvfYQ6rRdurXQt/pSRDCFEwRUh5p3jUwmB65688qqsHCJ85StuQDGco8hRY4iUPnqUPveYYp6zyn0HPG+r1FqwpwROADdpzJxpsldqiDFkFY8pLR0yTLTRYID0Ty/DJm+4+FZzffbvZncZ8j1oGsPidghs3EuBSfZCxhANeggS3ogTjz0quba00B602YQkUQWdxFuHyMpiATIlhZItJWMH38j0/ZQSeryCcgacbP1OjgsSa8XsQHLtkxvDtXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ixiEc8JC9t4KoX0i+Yicd7zdg0d8loOZQfVqmNwyl48=;
 b=MKGu2tR+Z+Nw7tN326v2quYHG0S04QuyWI4ughch/Ayt78ZqE4Fd/N5z3FmdU6cZqhChywePKBvbade3YXQfW6dRKiHOdIpTEqdsmxnAikx0clYGRX2yWzWKN+u7Xpb2NUn0jd2JNH+s756QFfH7cQn2utt+aXtZhDxeQ2FMBnC7ljEyiSSffG7MBTN12GjFrp0z4zhwgor8KWDqL/DTo2ISYBGgm63W8oqwYJlKHAPDPE99yLyLXXt63n84JRSlJcj3O356wqoJBRpO3cY0R65k50nl+bhqrZQIMDuHF3HxfNPFNAzy3nWfKPTfqymL7L/x8AKLrJwslvbFsXZqJA==
Received: from PH0PR12MB5500.namprd12.prod.outlook.com (2603:10b6:510:ef::8)
 by DM4PR12MB5309.namprd12.prod.outlook.com (2603:10b6:5:390::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.26; Mon, 7 Nov
 2022 10:36:05 +0000
Received: from PH0PR12MB5500.namprd12.prod.outlook.com
 ([fe80::ac8c:eada:77a0:e2f0]) by PH0PR12MB5500.namprd12.prod.outlook.com
 ([fe80::ac8c:eada:77a0:e2f0%2]) with mapi id 15.20.5791.026; Mon, 7 Nov 2022
 10:36:05 +0000
From: Wayne Chang <waynec@nvidia.com>
To: Vinod Koul <vkoul@kernel.org>
CC: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	Thierry Reding <treding@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>,
	"thierry.reding@gmail.com" <thierry.reding@gmail.com>,
	"heikki.krogerus@linux.intel.com" <heikki.krogerus@linux.intel.com>, Ajay
 Gupta <ajayg@nvidia.com>, "kishon@ti.com" <kishon@ti.com>,
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, "balbi@kernel.org"
	<balbi@kernel.org>, "mathias.nyman@intel.com" <mathias.nyman@intel.com>, Jui
 Chang Kuo <jckuo@nvidia.com>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, Sing-Han Chen <singhanc@nvidia.com>,
	"linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>
Subject: Re: [PATCH 09/11] phy: tegra: xusb: Add Tegra234 support
Thread-Topic: [PATCH 09/11] phy: tegra: xusb: Add Tegra234 support
Thread-Index: AQHY53wnn6Y1wFaZgEa22emDiBKXH64wgBKAgALabgA=
Date: Mon, 7 Nov 2022 10:36:05 +0000
Message-ID: <57209c2c-0b1e-ffa5-4a09-ccb03136ab95@nvidia.com>
References: <20221024074128.1113554-1-waynec@nvidia.com>
 <20221024074128.1113554-10-waynec@nvidia.com> <Y2Z62Ua1DDWx9YwS@matsya>
In-Reply-To: <Y2Z62Ua1DDWx9YwS@matsya>
Accept-Language: en-US, zh-TW
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR12MB5500:EE_|DM4PR12MB5309:EE_
x-ms-office365-filtering-correlation-id: e56ed162-bb96-4371-e70d-08dac0abdfd2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  RyFptRpktxl9TdSzDsc/fik77guEVQGkuT7xORzqCq8cjdXKYARwvfRER7nvVSZFbPRZduPPreGP56Qsu/oNaEQjpRiFSjklESis5ND2ndp+zYbUnz67UW3xW7GdrpW6ZkYTj6YNIG5mHZIHLW+NB6/fXd+eCn9EBz9nsZu0eGmt6/jviRJR2gBeCn36venq6aMaH8W7bnLqvHJj37sOIlQ6+NUVPhKBZNrlVatLnKX69/hXgSwgbFCKbhQ64/k6LWKbUcNFYbDt4RgSPkMGVR9DXDnwE/EUtS6tVHX00sUAt3EucSdzRVjFvFyThkt0YWsTussEu7Qvn7JFgiqn6AyYRjB0RXL879FhwS2LAXhmhS02GXwrrdvK+PAbvayxMO1gKE74RCZEjmQ+m8eb0JXg+yLAxcUQvgFUuOQDuc+dBiGjV3ZfkjpNtNPQVzFBBp27qJATUM5ZI9m1Gm+SQeA5Nstt2tFXcbQ+a24z9gmrkm6LJZt0rmzg7v0iieF2dzaRMXXkgvs5GEO1qtTGNGmuVmqNabEPJR8aJvP59tiR4hKTMSM5+jiMf4CzGEmxJNo41VCWEQ/5IRnQVV+ZIu9deSeOnnYpD/wTlVMS9NkjnfMJ6Sa6BZApq8WqZOIX8HTWM7pw9EJ0iR10lTbyVY5ZuI0M8nJGPjciyZbUP2a+vS0qaDvKo0jx5juPnbEps5L+mYCG/nASYkWDeb7hCP5ph3V7IgHBIq82QUv2OF39PNtuW45aB2j/9r5piGSNcR/ikQumwdWeVBRl+zRgoNOv7R0iqe+hM6eI1cvH2uS+TCYBpf85Gf1MFvZEMVLAuc7qvcq1pUXhR6KJJ6R7yA==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR12MB5500.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(376002)(346002)(396003)(366004)(39860400002)(451199015)(36756003)(31686004)(86362001)(31696002)(38070700005)(2906002)(2616005)(53546011)(186003)(6512007)(26005)(122000001)(83380400001)(6506007)(4326008)(66476007)(66946007)(66556008)(66446008)(8676002)(64756008)(54906003)(6916009)(478600001)(316002)(7416002)(91956017)(8936002)(76116006)(71200400001)(6486002)(5660300002)(41300700001)(38100700002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?utf-8?B?RHNXTTNLNDdaTDNraWhaMkVVVTAzZ2hxRmMySm5BNkFweEt2Y2VlTHVadzJl?=
 =?utf-8?B?UEdLZ1RrNDVTUm4rUWU5Qmt2QmhMdzBxV3lwYWUxc0hzRE9BTVZJSXFKWTBs?=
 =?utf-8?B?Z3BVL3U4UUFCdW1LN0l3SVg5NlNyTXNvbjRDOG9iYzdyR0dzRUJ4NzdHS1VR?=
 =?utf-8?B?NnlrSUN6VFBIOWUvVkMyWk9DOVEvN2pyQ3ZqRjRIRWtPM0pWV0YydXliYlh2?=
 =?utf-8?B?MlRTQWxnTDlQbWhvT2tCUXJUdk4vNmFVeitpbDBmVmFaYkszblVNZjZ2M3hP?=
 =?utf-8?B?NTJIeWhxS3ZQQytXcXpWanJmTmF1eVErb1hGSmZ1RE9aSVI3Y0VqeG5mNE1q?=
 =?utf-8?B?cFZkNC8wbGhjVG9HSEJGVy9Tc2FoOTIvZTR3QlFwdFRGbThVQ1oyOEhudTBl?=
 =?utf-8?B?WkhncUFSM2w5Vk1Qdi81emZESi9zNDlNcmUvb0ZFRFJrVmhZY1kxenRna0JT?=
 =?utf-8?B?ditGcXl4TU5hcGE3VG41MlVvUjRrZ0NPdWdDbzAzL2l2VFVBQ0R1aXI0NEZN?=
 =?utf-8?B?VFZkRTA4YjBqSFkvb2VNUGhrV0Zaak80eGxQUFMyMlR2dnRhZFdnNEVxRGxQ?=
 =?utf-8?B?OW8zNlhocnVnZWFIY0JtM2V4ZWp0RGlsSS9HbW4vVHNWenNnVmRVWllUR1dG?=
 =?utf-8?B?SEU1WEhHQzAwYkFKeEp6OUtESXg4WVAvWEJnU09IcjhiaURJRUkzbzBrTHBD?=
 =?utf-8?B?aDlJRUsxMmk4U284UlNXcStrMjRTMUgvalRUT0NXclpIUml2TlVFaDhGQ2VK?=
 =?utf-8?B?d0dWSTUrd0FtcHdSQ2lldFhrK3hzRFpFUVJDWFhpOUNDa0VpS1hwSnZkOXc4?=
 =?utf-8?B?Q09wcXRRUzNLWDV3ZjY5S0hwZWNhN3g0N0JGdUltaE56aU81NTJQSUlsdDUy?=
 =?utf-8?B?eTg4TXc3eWJNRkptdVRQVndIeFRxbUtSakpSRDdzUm5kNHFUVngzZU51MGVy?=
 =?utf-8?B?TnEycmlCVTlIaUlGbHFadjYxa0M5UmgrT21aRTFPcXZMYUsyMUFaV1lFaWdG?=
 =?utf-8?B?YUVaYUJ1czFwdFRTa3E3NkU0Vm5lb0Q3NmxNS3NWYlNkbGJYdC9KbjJGekd1?=
 =?utf-8?B?V2g5ZzJQMTEwQzliVVRrcWd2dlRNSWlzbFZVU3dEencwMXVJMHZZTlpKK2py?=
 =?utf-8?B?NlVIQVVCN3pLdVUzYWJhcVRVd0Z0WlB3OFBPVGN3Y3k3MytVemJGM3drT0p2?=
 =?utf-8?B?Sjg4cXY0WGx5WjA1RFFrVzF3L2UvU3hiQ3FJQk9xc0VXZFZyV1JxTk80WVc0?=
 =?utf-8?B?VjBKSUFSTkFPK1VxK0pyVTlvWmxOSWZtbjhRUWZwV3VvaWJlS0taS2tJQmxx?=
 =?utf-8?B?SXdoM2pqbEVyOG80VlYvS3BiTVFLSzh3MDUzQzh6Q0RkODRTamx2ME8waVZF?=
 =?utf-8?B?WGh0QW5mVVUyVkk5ZWx3ejFHVk5VdDg3RlRiWGNxVlVYaTlpM0Y5UkVCWkFh?=
 =?utf-8?B?enBIWDV4dDg3djdsdXNSZ0VMWktDQ2FzSy9RRlVSN0thMk14b2NrS0FSTDZk?=
 =?utf-8?B?Lzd1bHNKSzEwcFAzVEFiOEkzWG8walNodXk4WlFpOGJ6VWhRdFRIUm1WY2Fq?=
 =?utf-8?B?ejRRMDNLd0tDUlp3ODlpWG51eTZkMjlkRE44cDQzQjlRZzUyZFN2NlFTMGFZ?=
 =?utf-8?B?ZDA2RytMdjAvQUp4bmJtOG5rdnZsYjRUWElwZ09PSkNBS3RFdG1kOURBMkdI?=
 =?utf-8?B?a25OWkx6T1lOZ2c4R2RrU1ovMnhsayswM2U2ZVgwZnUwZzQ0bjNHL1BCY1BP?=
 =?utf-8?B?QlVSS2laS29Md0F3cHozNjMweUxqRmJoVXQ1NTJ1N216NDNBYzBrdEN4RlhX?=
 =?utf-8?B?QmQrRmQ0emJBV2dmK3F3TzIxSXh6YWJ3eUtMeHZMVUtieGtWeWF3RGlLRkd0?=
 =?utf-8?B?Yy9vYWhOdVRSZGJvRVR2dzlIclR2UGY5b2QvU1lMVjBSSkhMbHFXdSt5eHJx?=
 =?utf-8?B?THZNS255VkpPRnRXUkROM202SkJ4alN6TU5NU0hBeSt4RlhEVUFMM29hTmk0?=
 =?utf-8?B?RktDV0tsS3ZUc243NlhsL2xkRi82TjBlODFrYlJsU3hoaXBqUmd3VGVPUXpm?=
 =?utf-8?B?OVcvNDRaeDdpVmVJNWlpSmo5U1FDQzlaT0R1SHZwZWxCajZZaThLR24vVXBl?=
 =?utf-8?Q?XJISLkIuF7ondlGF1C+RqXvnR?=
Content-ID: <7B4DEFD1351915488D233AB2E77AD68F@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB5500.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e56ed162-bb96-4371-e70d-08dac0abdfd2
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2022 10:36:05.2803
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GWvTX+vFUFMjHYXp+JuTQmZutuA/Z9uUqL/8ckHnTu5ZkiatEFnwYxFKA2fGL+nLAIj3B4NI7Vc9AS8AKUlHSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5309
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_023610_134501_11781EE6 
X-CRM114-Status: GOOD (  22.54  )
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



On 11/5/22 23:01, Vinod Koul wrote:
> External email: Use caution opening links or attachments
> 
> 
> On 24-10-22, 15:41, Wayne Chang wrote:
>> From: Sing-Han Chen <singhanc@nvidia.com>
>>
>> Add support for the XUSB pad controller found on Tegra234 SoCs. It is
>> mostly similar to the same IP found on Tegra194, because most of
>> the Tegra234 XUSB PADCTL registers definition and programming sequence
>> are the same as Tegra194, Tegra234 XUSB PADCTL can share the same
>> driver with Tegra186 and Tegra194 XUSB PADCTL.
>>
>> Introduce a new feature, USB2 HW tracking, for Tegra234.
>> The feature is to enable HW periodical PAD tracking which measure
>> and capture the electric parameters of USB2.0 PAD.
> 
> why cant this patch be sent separately, are phy patches dependent on
> rest..? If not consider splitting per subsystem and sending
> independently..
> 

Thanks for the review.
Yes, tegra234_xusb_padctl_soc is added to enable Tegra234 features.
If we do not enable USB2 HW tracking, then we shall not have this change 
and reuse tegra194_xusb_padctl_soc as well.

The feature is new added for Tegra234 pad control against Tegra194.

>>
>> Signed-off-by: Sing-Han Chen <singhanc@nvidia.com>
>> Co-developed-by: Wayne Chang <waynec@nvidia.com>
>> Signed-off-by: Wayne Chang <waynec@nvidia.com>
>> ---
>>   drivers/phy/tegra/Makefile        |  1 +
>>   drivers/phy/tegra/xusb-tegra186.c | 65 +++++++++++++++++++++++++++++--
>>   drivers/phy/tegra/xusb.c          |  6 +++
>>   drivers/phy/tegra/xusb.h          | 23 +++++++++++
>>   4 files changed, 92 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/phy/tegra/Makefile b/drivers/phy/tegra/Makefile
>> index 89b84067cb4c..eeeea72de117 100644
>> --- a/drivers/phy/tegra/Makefile
>> +++ b/drivers/phy/tegra/Makefile
>> @@ -7,4 +7,5 @@ phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_132_SOC) += xusb-tegra124.o
>>   phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_210_SOC) += xusb-tegra210.o
>>   phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_186_SOC) += xusb-tegra186.o
>>   phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_194_SOC) += xusb-tegra186.o
>> +phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_234_SOC) += xusb-tegra186.o
>>   obj-$(CONFIG_PHY_TEGRA194_P2U) += phy-tegra194-p2u.o
>> diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
>> index f121b4ffbbfd..cc02cea65a21 100644
>> --- a/drivers/phy/tegra/xusb-tegra186.c
>> +++ b/drivers/phy/tegra/xusb-tegra186.c
>> @@ -89,6 +89,11 @@
>>   #define  USB2_TRK_START_TIMER(x)             (((x) & 0x7f) << 12)
>>   #define  USB2_TRK_DONE_RESET_TIMER(x)                (((x) & 0x7f) << 19)
>>   #define  USB2_PD_TRK                         BIT(26)
>> +#define  USB2_TRK_COMPLETED                  BIT(31)
>> +
>> +#define XUSB_PADCTL_USB2_BIAS_PAD_CTL2               0x28c
>> +#define  USB2_TRK_HW_MODE                    BIT(0)
>> +#define  CYA_TRK_CODE_UPDATE_ON_IDLE         BIT(31)
>>
>>   #define XUSB_PADCTL_HSIC_PADX_CTL0(x)                (0x300 + (x) * 0x20)
>>   #define  HSIC_PD_TX_DATA0                    BIT(1)
>> @@ -609,9 +614,32 @@ static void tegra186_utmi_bias_pad_power_on(struct tegra_xusb_padctl *padctl)
>>        value &= ~USB2_PD_TRK;
>>        padctl_writel(padctl, value, XUSB_PADCTL_USB2_BIAS_PAD_CTL1);
>>
>> -     udelay(100);
>> +     if (padctl->soc->poll_trk_completed) {
>> +             err = padctl_readl_poll(padctl, XUSB_PADCTL_USB2_BIAS_PAD_CTL1,
>> +                                     USB2_TRK_COMPLETED, USB2_TRK_COMPLETED, 100);
>> +             if (err) {
>> +                     /* The failure with polling on trk complete will not
>> +                      * cause the failure of powering on the bias pad.
>> +                      */
>> +                     dev_warn(dev, "failed to poll USB2 trk completed: %d\n",
>> +                             err);
> 
> Single line.. should this be dev_err
Thanks, I'll make it a single line.
The failure with polling on trk complete will not cause the failure of 
powering on the bias pad and thus we put it warning here.

thanks,
Wayne.

> 
>> +             }
>>
>> -     clk_disable_unprepare(priv->usb2_trk_clk);
>> +             value = padctl_readl(padctl, XUSB_PADCTL_USB2_BIAS_PAD_CTL1);
>> +             value |= USB2_TRK_COMPLETED;
>> +             padctl_writel(padctl, value, XUSB_PADCTL_USB2_BIAS_PAD_CTL1);
>> +     } else {
>> +             udelay(100);
>> +     }
>> +
>> +     if (padctl->soc->trk_hw_mode) {
>> +             value = padctl_readl(padctl, XUSB_PADCTL_USB2_BIAS_PAD_CTL2);
>> +             value |= USB2_TRK_HW_MODE;
>> +             value &= ~CYA_TRK_CODE_UPDATE_ON_IDLE;
>> +             padctl_writel(padctl, value, XUSB_PADCTL_USB2_BIAS_PAD_CTL2);
>> +     } else {
>> +             clk_disable_unprepare(priv->usb2_trk_clk);
>> +     }
>>
>>        mutex_unlock(&padctl->lock);
>>   }
>> @@ -637,6 +665,13 @@ static void tegra186_utmi_bias_pad_power_off(struct tegra_xusb_padctl *padctl)
>>        value |= USB2_PD_TRK;
>>        padctl_writel(padctl, value, XUSB_PADCTL_USB2_BIAS_PAD_CTL1);
>>
>> +     if (padctl->soc->trk_hw_mode) {
>> +             value = padctl_readl(padctl, XUSB_PADCTL_USB2_BIAS_PAD_CTL2);
>> +             value &= ~USB2_TRK_HW_MODE;
>> +             padctl_writel(padctl, value, XUSB_PADCTL_USB2_BIAS_PAD_CTL2);
>> +             clk_disable_unprepare(priv->usb2_trk_clk);
>> +     }
>> +
>>        mutex_unlock(&padctl->lock);
>>   }
>>
>> @@ -1560,7 +1595,8 @@ const struct tegra_xusb_padctl_soc tegra186_xusb_padctl_soc = {
>>   EXPORT_SYMBOL_GPL(tegra186_xusb_padctl_soc);
>>   #endif
>>
>> -#if IS_ENABLED(CONFIG_ARCH_TEGRA_194_SOC)
>> +#if IS_ENABLED(CONFIG_ARCH_TEGRA_194_SOC) || \
>> +     IS_ENABLED(CONFIG_ARCH_TEGRA_234_SOC)
>>   static const char * const tegra194_xusb_padctl_supply_names[] = {
>>        "avdd-usb",
>>        "vclamp-usb",
>> @@ -1616,8 +1652,31 @@ const struct tegra_xusb_padctl_soc tegra194_xusb_padctl_soc = {
>>        .supply_names = tegra194_xusb_padctl_supply_names,
>>        .num_supplies = ARRAY_SIZE(tegra194_xusb_padctl_supply_names),
>>        .supports_gen2 = true,
>> +     .poll_trk_completed = true,
>>   };
>>   EXPORT_SYMBOL_GPL(tegra194_xusb_padctl_soc);
>> +
>> +const struct tegra_xusb_padctl_soc tegra234_xusb_padctl_soc = {
>> +     .num_pads = ARRAY_SIZE(tegra194_pads),
>> +     .pads = tegra194_pads,
>> +     .ports = {
>> +             .usb2 = {
>> +                     .ops = &tegra186_usb2_port_ops,
>> +                     .count = 4,
>> +             },
>> +             .usb3 = {
>> +                     .ops = &tegra186_usb3_port_ops,
>> +                     .count = 4,
>> +             },
>> +     },
>> +     .ops = &tegra186_xusb_padctl_ops,
>> +     .supply_names = tegra194_xusb_padctl_supply_names,
>> +     .num_supplies = ARRAY_SIZE(tegra194_xusb_padctl_supply_names),
>> +     .supports_gen2 = true,
>> +     .poll_trk_completed = true,
>> +     .trk_hw_mode = true,
>> +};
>> +EXPORT_SYMBOL_GPL(tegra234_xusb_padctl_soc);
>>   #endif
>>
>>   MODULE_AUTHOR("JC Kuo <jckuo@nvidia.com>");
>> diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
>> index 95091876c422..23d179b1a5b5 100644
>> --- a/drivers/phy/tegra/xusb.c
>> +++ b/drivers/phy/tegra/xusb.c
>> @@ -71,6 +71,12 @@ static const struct of_device_id tegra_xusb_padctl_of_match[] = {
>>                .compatible = "nvidia,tegra194-xusb-padctl",
>>                .data = &tegra194_xusb_padctl_soc,
>>        },
>> +#endif
>> +#if defined(CONFIG_ARCH_TEGRA_234_SOC)
>> +     {
>> +             .compatible = "nvidia,tegra234-xusb-padctl",
>> +             .data = &tegra234_xusb_padctl_soc,
>> +     },
>>   #endif
>>        { }
>>   };
>> diff --git a/drivers/phy/tegra/xusb.h b/drivers/phy/tegra/xusb.h
>> index 8cfbbdbd6e0c..ec0b5b023ad1 100644
>> --- a/drivers/phy/tegra/xusb.h
>> +++ b/drivers/phy/tegra/xusb.h
>> @@ -8,6 +8,7 @@
>>   #define __PHY_TEGRA_XUSB_H
>>
>>   #include <linux/io.h>
>> +#include <linux/iopoll.h>
>>   #include <linux/mutex.h>
>>   #include <linux/workqueue.h>
>>
>> @@ -433,6 +434,8 @@ struct tegra_xusb_padctl_soc {
>>        unsigned int num_supplies;
>>        bool supports_gen2;
>>        bool need_fake_usb3_port;
>> +     bool poll_trk_completed;
>> +     bool trk_hw_mode;
>>   };
>>
>>   struct tegra_xusb_padctl {
>> @@ -475,6 +478,23 @@ static inline u32 padctl_readl(struct tegra_xusb_padctl *padctl,
>>        return value;
>>   }
>>
>> +static inline u32 padctl_readl_poll(struct tegra_xusb_padctl *padctl,
>> +     unsigned long offset, u32 val, u32 mask, int us)
>> +{
>> +     u32 regval;
>> +     int err;
>> +
>> +     err = readl_poll_timeout_atomic(padctl->regs + offset, regval,
>> +                                      (regval & mask) == val, 1, us);
>> +     dev_dbg(padctl->dev, "%08lx poll > %08x\n", offset, regval);
>> +     if (err) {
>> +             dev_err(padctl->dev, "%08lx poll timeout > %08x\n", offset,
>> +                     regval);
>> +     }
>> +
>> +     return err;
>> +}
>> +
>>   struct tegra_xusb_lane *tegra_xusb_find_lane(struct tegra_xusb_padctl *padctl,
>>                                             const char *name,
>>                                             unsigned int index);
>> @@ -491,5 +511,8 @@ extern const struct tegra_xusb_padctl_soc tegra186_xusb_padctl_soc;
>>   #if defined(CONFIG_ARCH_TEGRA_194_SOC)
>>   extern const struct tegra_xusb_padctl_soc tegra194_xusb_padctl_soc;
>>   #endif
>> +#if defined(CONFIG_ARCH_TEGRA_234_SOC)
>> +extern const struct tegra_xusb_padctl_soc tegra234_xusb_padctl_soc;
>> +#endif
>>
>>   #endif /* __PHY_TEGRA_XUSB_H */
>> --
>> 2.25.1
> 
> --
> ~Vinod
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
