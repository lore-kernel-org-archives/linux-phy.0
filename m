Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EC80C43219
	for <linux-phy@archiver.kernel.org>; Mon,  7 Nov 2022 10:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CgbJ0hZQ4qhzJ7ueQQED8vkOB4j4l+ZjcUAA2inQlLo=; b=1HdpGjs28pxgVr
	HMTVzlQYvJIxwxMlFNSQDK4iq4QKfIrhfvbO7H7yh+q1Y4vOAUVVtuqAQQzGK3QmP8rVMUPyc+1va
	GKYoBJHpKpoCIofjD2dC3BN67PwT5ly/ktF/SOKSSs4X4+S7q7chbGVv88R8oxtANTffV3fS3NDW2
	V1VG0Wta3Yg0Jj9qJXLXKMRA5hOesDAHWg4GjaE7cSBnp2+St1zmzHBX8NpIeOD289VPQlqnpCJHs
	90DyIilORO/99olnsP4jtOKhO1AGV1hJAzclOeNLoQm8c+IEjH/Fgba8UyNm2JS87OnAkiEGke8f6
	+ophKyp+Ekf7SC/38Gmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orzVY-00DlmU-0C; Mon, 07 Nov 2022 10:37:36 +0000
Received: from mail-bn8nam04on2055.outbound.protection.outlook.com ([40.107.100.55] helo=NAM04-BN8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orzVU-00DljR-1T
	for linux-phy@lists.infradead.org; Mon, 07 Nov 2022 10:37:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cWA5cPw7138dDriUeJJEA/0Uj48GKATNhSuqfA4GN5mzBraHUH0mmVnRyXUknZx71WwS2f93zM+fzh8Y+zsMCir5QwBSDuXHI6nRvs6qxqFiuG+Fnri+zBRsZEVJqhtRzBDp1/UI5W1HShblF4mSwPhjdl4QT3+Gv5//0X9ObeduBUa7PL7dPdZRun4W6i8Bn9Rbmd21DnR2S3bEkicUUxJR9XIPV7nbJ33MQ7BoNY0JEe7kIa8U+hg9e0pe//EFSno+kVm2ifkA3yt+M1m7lusLthK3mC6BI8JPHVjGL3SoBESmpTpfP9sYWp5TDNLBWx7bToE8dnvJQFeyv5/zqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+/ksKtxMJGxHmr7ws2kzE9FR5kvtwcMn4aBBn+ivn1k=;
 b=CuL0/iYlo//dyu1voDO6ITYpbiJgpHzDhV5x7TnpidSNERIzEWG/H1svF4SZ7knjW45EyTzObO36xS4sBl1D+Jgfk/nNLM8yXFme8dpzhxR6l9Aj3lC3Cn6TGo2fUScHju70F+vqJKysFGdqBrhAXGZG7ejRNSr0YCzt5MhiRgWOp11+yt177i7sGdJxOHt3gLfZqwO7veMTwfe2771ynfD+KfZp4VIHRfLv8neuy2zcZb3cU/m3/IBXBObbNr+T44YiRNhGpWo0Y4zkDcthNRMzjvkfd+if0dD91wOR1fr9lfCWaS+XDl3n/vgZVqBAKzo/HC3dXxRaSFQM8Yq8Ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+/ksKtxMJGxHmr7ws2kzE9FR5kvtwcMn4aBBn+ivn1k=;
 b=A3VPC5Btbz+4X7gJQwXNLeTLT+CUTtrppBXvo4AS2Rjhy4JRuu/YLRy2ooE3KyY1g1QwE6AYDH7vfMiLKYRL8rh4ykQgGps9J4fR1y23bnTZspn3UJqZSo8WCDOM/9s6WCJFkhhqY5CsxV7zbdYJprD0eO9awOPz0WXSasgW/+g9XUXhNztI8KwZsoFo64QnASo1jR6LUolboXZf+TAMJFVj+VnhEmRuEfVIVZFDxUNAqGe/2P8X+fSPCr+SFkIp/3iSrzfa7hI84gz1jDP53fXYK2BNL0JEiHyYfJ76lLAyBUjcPtR5Az3a6g1TDcaV30PGM3pUWwqjNDy7KPihyQ==
Received: from PH0PR12MB5500.namprd12.prod.outlook.com (2603:10b6:510:ef::8)
 by DM4PR12MB5309.namprd12.prod.outlook.com (2603:10b6:5:390::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.26; Mon, 7 Nov
 2022 10:37:24 +0000
Received: from PH0PR12MB5500.namprd12.prod.outlook.com
 ([fe80::ac8c:eada:77a0:e2f0]) by PH0PR12MB5500.namprd12.prod.outlook.com
 ([fe80::ac8c:eada:77a0:e2f0%2]) with mapi id 15.20.5791.026; Mon, 7 Nov 2022
 10:37:24 +0000
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
Subject: Re: [PATCH 08/11] phy: tegra: xusb: Disable trk clk when not using
Thread-Topic: [PATCH 08/11] phy: tegra: xusb: Disable trk clk when not using
Thread-Index: AQHY53wmctHnk5VjgESBQkiad0Zfaa4wfy+AgALbr4A=
Date: Mon, 7 Nov 2022 10:37:24 +0000
Message-ID: <10ebde49-2729-4950-a770-97ef026030f0@nvidia.com>
References: <20221024074128.1113554-1-waynec@nvidia.com>
 <20221024074128.1113554-9-waynec@nvidia.com> <Y2Z6Gzd3RmmxMaXO@matsya>
In-Reply-To: <Y2Z6Gzd3RmmxMaXO@matsya>
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
x-ms-office365-filtering-correlation-id: 8f36b501-4c2b-4829-2fb2-08dac0ac0ef5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  qvNDUU76wqaPkbLzq4MqMzaUPgFxiyKvPUY6/r97NPzAs9eVce9NiegG/PhiZcfZ4ttiJsHN7OwCVap9i/3PdligsGpjw88eZ4uAaRxqLg7/BsaGyXjjXsUAuHgLTd1W5DNMihojWoyqhh0cbTNPEjrm4OOeRSXuFaY64LaYPf03oA8I2c1p4/fd0pzXS+RmnROdN3P091DFQK40TNy+gSPlYERGDCzjT7HDFxGmsX17p+HOc6FdNSmQFfLlhGSzEsJfmVtVs7D4BRvrpDa8Je7U6O2k/r3/RdT7TyKnyOouZCcKCr+shd3Opj3ycFLQCOOLIteQsjlNCnUF9f3z0TM2x4khR0GunwwDLc+iSmsCgfGaFGg3+UKI7q0xNR9QGTHlIme4NA9DqCCzXs4eFu2mQe+hgcWAlccMCOgd/U01O/SSpP6RYzeybGN8/6drFwyroTXT/MPfbF1wpB4eLXDEbKxlp7D1vtQrLA20uQXIktwjTY9EfRrQ63NC+HkvZL9IqYVHoixBKXv2Ew6BQN1ggS1No35w6lo2LivXlWJxR3irzPGeS3m3pshIXj2M9WiZ7B1awqLn4htdGJ6ogaCDw4i8+EsJoP+V3tYliGwVTGR9V/R1Vq5doG2vlmZhbFc/K4T2EWGQGzCtZltqK9ZEwUitWauHv2Sxm/X9wfGnzgjHwTCpugtXHEukmNIIbejznHH/ijLLPCBbBQD3HltR2meiF0TwDlqGulQyOaWY4v0qQsIiQ8PzsiSEWUoG4l0sAFGbTV7cdbMLhZQayMHRcWgsf5eYkjxaHGsN/+IA/cV+XplsbLKxs+MkK6Go+AR1vgQXhN6PrbiVGSV3AA==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR12MB5500.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(376002)(346002)(396003)(366004)(39860400002)(451199015)(36756003)(31686004)(86362001)(31696002)(38070700005)(2906002)(2616005)(53546011)(186003)(6512007)(26005)(122000001)(83380400001)(6506007)(4326008)(66476007)(66946007)(66556008)(66446008)(8676002)(64756008)(54906003)(6916009)(478600001)(316002)(7416002)(91956017)(8936002)(76116006)(71200400001)(6486002)(5660300002)(41300700001)(38100700002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?utf-8?B?Qmk3bXY3RmdHenFDQ3hkcHV1c2syeFM4TXBWZ3ZCZktnWHV0MVhzMGtFSXd3?=
 =?utf-8?B?Y3h6SFNyb3BvZ1J6K0sxVFZuNEpES1daK0d3Z0xFUHZPYnEwMk1qRnFHUWlY?=
 =?utf-8?B?SzBiU2ExdUhuUHlxaWViaDZGc2Fjdm5hZXpNZ2NSb0lmdDJLMGtpNnV4OSsy?=
 =?utf-8?B?bkhmbVFZVEdsakV2Nk1PcCtUa1FmTndvbXhlVkJDZWxUc2RBL2R1TG9iQnYr?=
 =?utf-8?B?aVVPQ3BpWXNPcjFBTTd6V0h1ajVOT2I5U0Q5bWFjekUxaDZWOGVRamVLdk03?=
 =?utf-8?B?YTFVdjdHQTV1Y3A5bmNRU2FtbkliekJpdzBaQ2FCdFFYb1BBbkl2K3BCUXFJ?=
 =?utf-8?B?RW1HODZhQ2w5OER0ZU13Z1V6NjJBNDVoSW5BRHlOMlcwMS9qMEhTMXZKTmEv?=
 =?utf-8?B?SzB4b0FPTXJRa21McXV5VnJOT3NKQStBdHNod1ZjWTUxcGdMVjdoR0RnbTlL?=
 =?utf-8?B?QkFiZWJhVFAxeHZKNmtuWVRQL2JCQWZDU0tUVnlPY1ZTcDJUcTB1b0I3VFZJ?=
 =?utf-8?B?andKc3dMNERvZVRmWG9rZXdxbDhERThHbFJkZGYweXRNTGt1Q3dXWXRscFZo?=
 =?utf-8?B?VGVOT2QrZTA3WXVsSDE4ZzM1a01BVllUZG95ZHVCdmwvN09QTFh0aGdhRzd0?=
 =?utf-8?B?WElEMEhmNXBLMDNwdXVDRnZLMVBSVWVYRjFna0trMDBhZjFPSmNzcU9NcUFx?=
 =?utf-8?B?R1ljT1ZBUjNCSWRwSGlMSC9POFVFS2RLSFNFRTNFdnZzbWdkV1U0dHJCbTht?=
 =?utf-8?B?VE10WFJwZVZGcnRiUHRRbkpVWEZjTjV2a0pXQnFCckxwT2NiZnJXMDNzUnE0?=
 =?utf-8?B?Q1prR1BsUzl5L0Z6WVJKRk9OL0xHbVl3MFRXNGZ4a051eG9kOGUrck1YTVJG?=
 =?utf-8?B?MFFkR3B4dmo1RWpvem9iUGJreG1kVXhld3A5ckh5Y0IvMnczQVFBTkw2QjJR?=
 =?utf-8?B?azcvRnlXL0dYK1BzTzRkU1E3VEswUThlaWlsVm8vbGF2V3FQOUFoUmlNSTdY?=
 =?utf-8?B?S2xCOHlCR1dKU3pyMldoYzBwZnBDNERraVl0ZlY1U1RSZ2VXR3N2ZXNScHI4?=
 =?utf-8?B?UW92TGI4RTh3Uy92TmVhNkNMRVN0OVBKWkg4N29QMENYWkkyRC9GSVBxOHo3?=
 =?utf-8?B?TnVKdmpqRWxaVnpDaHdydjB4dHVaZmdJT1ZoZEQvay9Ydm9UZnd5RmZOSFQy?=
 =?utf-8?B?STNIN0xjdWZwZ2tmZHJsTW01SEJOajlmRjBaMDlTOWhLeU0va2YwbmRjVkJQ?=
 =?utf-8?B?bVpxSnQ5L2lHUWJhV2ZIR1RDd3JWM3Voa1g0QWMwejZRaWpQOEJSOEF5dXow?=
 =?utf-8?B?OGlvT2FkczVwWktucnVZcjZLSkNGanhIbU5TM3AyUUFyMmNpalVzai9FS3JI?=
 =?utf-8?B?Y0Zxa0NUaFdvV3pQaW5IZGRLdnhsYlExNWEvSjhmbkhDWWNielFOOWRmY29o?=
 =?utf-8?B?WkhGZTRUYTlMenFTaUdqVzU2WklxL253c3dwL3lNUVlPWkp6K21tZU1UQytH?=
 =?utf-8?B?QnQ4bTIreDlweTlEYWxSQmRlQTBCeG12endkUklib1dJZXB2NllVRnFyQU0x?=
 =?utf-8?B?UjQxb1VYamF5QysySUdFZ1A3VFg1OEg1RXhUZit1dTB3cWd1Zk5UWXNHSDV2?=
 =?utf-8?B?dUZTSlBPcm9VbE1ta2szV3Y2bXF2L1FURzcrbVRxbS9JTnZESUJueitweU5N?=
 =?utf-8?B?RzRUMTM2RkwydDdKRGljdHgrTUxsWm5UUFk2cDF1UkZFT21FaXFuRzgyMy9o?=
 =?utf-8?B?bnplWDR4YzYwbGlkYVVvbHo2bkREaFJDbUo4cjh1UWdxY1RoOU9LR2p0WFln?=
 =?utf-8?B?NXdXMUpGaWh2R0cwcC9UZHBkN0ZBT0xlSWNWMWFqU09XM0dWUkpNUUtITTFh?=
 =?utf-8?B?WXg1VTVBSVkzMFFVWk9KbFJUSzZ3Q3VOWFVKZkdsY3c4R2tMUWVYNEtSd1Js?=
 =?utf-8?B?bTBxNCs4N1FjU3U2bE42N1hySmlIamtXTDdRNkNRaXFDSGpUNGlKS1JiaUdZ?=
 =?utf-8?B?Si9xVWJOSFRlajRES0lwekgvVXI4WHllVzZoczlPL3FGWVcxWmsvcVBRNXEx?=
 =?utf-8?B?T2I5NEFFd3c3YzdkMlAyNzRWTG0vUmJqL2kxK3kxL0haZUM3a1JIc20zaUJB?=
 =?utf-8?Q?PxlFKIqebC8sl4OgWV6sVkmTs?=
Content-ID: <388539951E8A7F439083CBF7B924D6EC@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB5500.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f36b501-4c2b-4829-2fb2-08dac0ac0ef5
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2022 10:37:24.3578
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2xMlXxu/ZGmcWgasinKCn3O36H0cgFU55rAxCHlsyt+6vJb2GkDuhFyYqNKzWkVMWJS/r3mlX4Us9HL7GoG4Ww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5309
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_023732_131017_290084FF 
X-CRM114-Status: GOOD (  18.03  )
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



On 11/5/22 22:58, Vinod Koul wrote:
> External email: Use caution opening links or attachments
> 
> 
> On 24-10-22, 15:41, Wayne Chang wrote:
> 
> Consider revision of title to: "Disable trk clk when not in use"
> 
>> The change fixes an issue that the pad tracking is a one-time calibration
>> for Tegra186 and Tegra194. We should disable the clk when it is done.
>> The 100us delay is for HW recording the calibration value.
> 
> Consider:
> 
> "pad tracking is a one-time calibration for Tegra186 and Tegra194. clk
> should be disabled after calibration.
> 
> Disable clk after claibration.
> 
> While at it add 100us delay  HW recording the calibration
> 

Thanks for the review.
I'll update the title and commit message in the next patch series.

thanks,
Wayne.

>>
>> Signed-off-by: Wayne Chang <waynec@nvidia.com>
>> ---
>>   drivers/phy/tegra/xusb-tegra186.c | 6 ++++--
>>   1 file changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
>> index 0996ede63387..f121b4ffbbfd 100644
>> --- a/drivers/phy/tegra/xusb-tegra186.c
>> +++ b/drivers/phy/tegra/xusb-tegra186.c
>> @@ -609,6 +609,10 @@ static void tegra186_utmi_bias_pad_power_on(struct tegra_xusb_padctl *padctl)
>>        value &= ~USB2_PD_TRK;
>>        padctl_writel(padctl, value, XUSB_PADCTL_USB2_BIAS_PAD_CTL1);
>>
>> +     udelay(100);
>> +
>> +     clk_disable_unprepare(priv->usb2_trk_clk);
>> +
>>        mutex_unlock(&padctl->lock);
>>   }
>>
>> @@ -633,8 +637,6 @@ static void tegra186_utmi_bias_pad_power_off(struct tegra_xusb_padctl *padctl)
>>        value |= USB2_PD_TRK;
>>        padctl_writel(padctl, value, XUSB_PADCTL_USB2_BIAS_PAD_CTL1);
>>
>> -     clk_disable_unprepare(priv->usb2_trk_clk);
>> -
>>        mutex_unlock(&padctl->lock);
>>   }
>>
>> --
>> 2.25.1
> 
> --
> ~Vinod
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
