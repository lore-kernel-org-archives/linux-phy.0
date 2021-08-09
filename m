Return-Path: <SRS0=DrSA=NA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C49AC4338F
	for <linux-phy@archiver.kernel.org>; Mon,  9 Aug 2021 22:13:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CB51860EB5
	for <linux-phy@archiver.kernel.org>; Mon,  9 Aug 2021 22:13:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CB51860EB5
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=synopsys.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SrqlxmKgHed44BXjNKdytcK6tkQzH7VHM0bNujl4Zow=; b=K9c1XluwUYT4jC
	H//zaB32eQ+xFRMCuCs4aWFDTAoiq8aaxnMS4Qe+7bQVR6c70ylD3Y0lucRNFx+AHb836wJJCO1bD
	rVKr8IrWQPT/Upj402pvwEl/897Pqhh/up9H5tTNiTMPRaFH3P8jnvGjNLO6S+IZAkKuPJnxXkTy9
	36gq/GWvLFxIOuM9nZdfZVAJyrOEQViuOyXVGP01DraH/C/lHNlJbj2fhCTPjSk4US7TkhIAynomh
	aKIXdOlkKQAJp5ajJyjcPQvtGx5EmDI3qRatLyBBAJFOyUTF9//4gzmnRt+SJVLGUNuHPsMt5QoGP
	Kw8OmuL7gPJ69gbUvR7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mDDWh-0023em-3Q; Mon, 09 Aug 2021 22:13:43 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDDWP-0023dm-Tw; Mon, 09 Aug 2021 22:13:29 +0000
Received: from mailhost.synopsys.com (badc-mailhost3.synopsys.com
 [10.192.0.81])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (Client CN "mailhost.synopsys.com", Issuer "SNPSica2" (verified OK))
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 95EACC016A;
 Mon,  9 Aug 2021 22:13:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1628547202; bh=Xk9kMArQcg/mxqZloK9YawUwa+XgAzc0Kg0/uhSkJJg=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=ixTAtmCIFuoCGkKzfXQDCUkGOJFwK+MuAJAN+8c5OXXaakcHQ2iHTOK3btf7AHuE5
 FLEyT7e9dXYlvl+6ZerCMtm3eKmaufG1CiCMCgYM4la0/Q/HgR4nXkTcJ/a7McZ+ZR
 QTZmaS8MkEPF5lSZp8V3a+o36+07Wi6xeqRngPkXIhNWwp4yjs0a9GNfPfADXVKpmV
 zHXUa/zWPFLkfbp8JnmUd/pJwbuC0wMDUYhQWtKA0oYGJqVq416rmAeA55ML68OXh+
 juWPVWuItZihKnkmY4KEHgGUnPmXLFg9c085uKRVrha0ePWeeTUqQAx4kmWdvKaFpD
 01XFqoENp0j5g==
Received: from o365relay-in.synopsys.com (sv2-o365relay3.synopsys.com
 [10.202.1.139])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (Client CN "o365relay-in.synopsys.com",
 Issuer "Entrust Certification Authority - L1K" (verified OK))
 by mailhost.synopsys.com (Postfix) with ESMTPS id C066BA007A;
 Mon,  9 Aug 2021 22:13:18 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2175.outbound.protection.outlook.com [104.47.58.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "mail.protection.outlook.com",
 Issuer "DigiCert Cloud Services CA-1" (verified OK))
 by o365relay-in.synopsys.com (Postfix) with ESMTPS id 8D96D40079;
 Mon,  9 Aug 2021 22:13:16 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com;
 dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
 spf=pass smtp.mailfrom=thinhn@synopsys.com
Authentication-Results: o365relay-in.synopsys.com; dkim=pass (1024-bit key;
 unprotected) header.d=synopsys.com header.i=@synopsys.com header.b="dpj1jWbP";
 dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ki0qfropWjzpdJlZBtzWlTDO/bii4Qxg+sEx+X6qa3ARbaK/5hjpGhwv286y5aWiNclue9EH/A4+MoZdrZdYyp5FK/W3LE6yT//CT+JCeahXMgYtcza54up+cRnw+kxjxiuFqRcqZsojF21XzmWTfwwBI49GhwA92cH3Hq+VFjll2h2gRIi2yhn7aJPlO7Jq1lhAqsqMK1fO5xhOB2xdGZSaMcGEr9lCASMSQbaQyVHq4eNpp1aqWKwCJ5hmlm0TV/qChIWen5/4rNXbzBRexlb3QrWCcBrS2eX7RMSVSgS9WQCatufSI9k6zKC24Qil/S0BibWPMcThgsFLR3grGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xk9kMArQcg/mxqZloK9YawUwa+XgAzc0Kg0/uhSkJJg=;
 b=TJjf/rhxVBKDu7uujPS7CTHuOlWAWnhTIEKCeKIv7VvtShv1wHlQtMg871lXMf34CKmSd1tIytG0nzj0GYyagQuV1H/Y4cdOkpapS5Dpe+BQau+MZwaBDzY5aGYaMBteWh5YfjF8bqtB+MDohaY2ZQgcQ+ZLyM8Vf22w+lvHushkB6+edBIj4rzNsHaaxFcKgVXhaaBDXeTZt4ImgT6IDHfS4jLO0mswvjfpK3nH8Yr8wWWXAs60mDzNY6JD54KI2F3iT1iRIifr5lSk6qjPwsXcTa6TaH7qeiAZJp+tLfsyt89TVKFP4pWJ0kM3UlGe8ZUl/LCcWHDBgo/U2c/qDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xk9kMArQcg/mxqZloK9YawUwa+XgAzc0Kg0/uhSkJJg=;
 b=dpj1jWbPmISKvcb1CXT0SMNTqzGjIKOZZaAnoUdiKXaLzEkm4a0TTTgektFgVmUmL6gdIooauzzL8Yd9wjOJ83XQ3z7t1zJ+C7kdGL3i03EfV1jI1oQpHsaaR9cvSIy7OrQN+TrRRKeZ74O2NFxvr8zOH6EjC4RoLmKs6DLaGrU=
Received: from BYAPR12MB4791.namprd12.prod.outlook.com (2603:10b6:a03:10a::12)
 by BY5PR12MB4019.namprd12.prod.outlook.com (2603:10b6:a03:1a8::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.16; Mon, 9 Aug
 2021 22:13:13 +0000
Received: from BYAPR12MB4791.namprd12.prod.outlook.com
 ([fe80::163:f142:621e:3db9]) by BYAPR12MB4791.namprd12.prod.outlook.com
 ([fe80::163:f142:621e:3db9%7]) with mapi id 15.20.4394.023; Mon, 9 Aug 2021
 22:13:13 +0000
X-SNPS-Relay: synopsys.com
From: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
To: Felipe Balbi <balbi@kernel.org>, Baruch Siach <baruch@tkos.co.il>
CC: Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Balaji Prakash J <bjagadee@codeaurora.org>,
 Kathiravan T <kathirav@codeaurora.org>, Jack Pham <jackp@codeaurora.org>,
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH v2 4/6] usb: dwc3: reference clock period configuration
Thread-Topic: [PATCH v2 4/6] usb: dwc3: reference clock period configuration
Thread-Index: AQHXiTnt/GO+HkNUgkeAoESR7uPeE6tjYusAgAAC7oCAAAJOAIAIXOCA
Date: Mon, 9 Aug 2021 22:13:13 +0000
Message-ID: <33aaae91-3833-d88c-361f-ac9d62e26ccc@synopsys.com>
References: <3d86f45004fe2fcbae0a2cd197df81a1fd076a1e.1628085910.git.baruch@tkos.co.il>
 <0e99e3d453547ad2a8f4541090a03f3c80b80332.1628085910.git.baruch@tkos.co.il>
 <87lf5h5mc2.fsf@kernel.org> <87v94lxpb0.fsf@tarshish>
 <87im0l5lj1.fsf@kernel.org>
In-Reply-To: <87im0l5lj1.fsf@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=synopsys.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bcaa4b48-5c6a-45a9-587a-08d95b82e198
x-ms-traffictypediagnostic: BY5PR12MB4019:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR12MB4019530A57DFDF320C2CDBC1AAF69@BY5PR12MB4019.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5T7bkDptX1IA71eYP76nnwOxoDh60BihCF3Vk91HP9WgVquU3/549smFirTfgV703JpDGxBQHVTF+Jmj4kqfBbbwIzWapRn+/rpmrmW7NNGmw7SnQESnNDzifa7f43+gyEBXRjUzWJdfRnZH65obJzKQ6LCLQhjeOI5hKG3K4zWSaMO41TSuRXYJTqbNqlL9m81V8IENBPeIzAi7EGDaP3dgeUMFpIIYRolS9Z9US1m/Usgg9C4dO0nPxzgKso4IZJ8qtJIBH0l60hCLsqGKYUc2rdT+KiXzZ7NG76jhE240t0lnKim+KRFIikpwpKckib50IpvyG4GEAhKVJPktt4ipcJgr4Iwtg0PEiYjUhVa1sR7wMu5p1xC0eKOLlJ44axYITiGJD7evfs+mMBVDi7315WqdV1nfJ7p63WxFr+XxJeBmOITN9MyGpP2yV7qremSTWdwnMf70XmkGUwMUNqxtpya/vMvcr+Y1aFOAcCvDX+77vW8tAKU61iB0OsYOdavYO1Wp3+PdufKw3IFkTG6lN1g+Yv52ImDUf9KbjD//K5l96vV1ZmiNSM+Z7V19l64Xj4f+nzcfjC1oUXNLmxNqsB93XTf7RehxGBpET8jhcix2Dd/uMM+eyXjvHUroEC8lNsw4QigYkEDZbIBKipIJDbZaMFFMI6WDk/grH1tWCgNVQJc3KtMON+aBYW7WZi0taJQOiMyvhR41ZuBh5+y4r1ebpf4M/hh+DQHgJPnaDY+YxpNTYuhqSyS65fY6381mvWVY5HRQ24bZluLUZw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB4791.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(396003)(136003)(376002)(346002)(366004)(71200400001)(31696002)(478600001)(36756003)(2616005)(6506007)(26005)(316002)(4326008)(186003)(86362001)(54906003)(110136005)(2906002)(76116006)(5660300002)(6512007)(38070700005)(8936002)(8676002)(83380400001)(31686004)(6486002)(66946007)(7416002)(122000001)(66446008)(38100700002)(66476007)(66556008)(64756008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QXdvbzM1WDI5b2tKNGlNZFcwd0tOdmFwMk1ZelRYWFEzdlhzcHVwaHFsbnFM?=
 =?utf-8?B?M2RjbUM4d3VEY3Bwb3dKcGpudjc3Wi9YQ3VMY1JLR3RNbTI1MEllTEtOc05N?=
 =?utf-8?B?bUFkVitCZG5ORzdRZ2lVQzN3KzFpWnZOckdCYWs5K0p6TTJ5MElzWlAzd1FV?=
 =?utf-8?B?Q01SRUFKYWE4U2ZjaHZrYllGbVl6QlZFUmZYZERmMkxqMmg3U0NpdzlWTkRJ?=
 =?utf-8?B?NlY4ZE9SQVVCZEd5ODRRZ29KZC92OUtndjlJTmI0MHo3ZGJSOXQzaGZDS01G?=
 =?utf-8?B?MlhtcjlMazk5VTlNUmFzQlVxQW5VVFUxQXV3UHhuSk5BdXNrdHBDYUtKaTVE?=
 =?utf-8?B?eHZKeW1uK1pvOXFpbzVrUWlvTW9WM3B3NXRETkY2Z2JWeFhtVThNVG9RNUxx?=
 =?utf-8?B?K1J5QW9BaHo0cGVPWjhGTXl3Z0VCVUN0MWJjTHQ0K0dWN2xpTkN0WnpGUk9s?=
 =?utf-8?B?UXhwOFpoWGVoRjQ0S0NBMElLOWQ2NDJPUG1TRVNHS0Z5cXVoaWd3djlXSnhG?=
 =?utf-8?B?ODQ5b0ZhNWRDSlJ6T1RCbndoVmFqa01mK2dLeWt4N2pxbERCTEVNVkNMK0VS?=
 =?utf-8?B?R3NWeFN4V2JJc2NjQTMvdzg4V3JLMUtTbkVxZlZWTzVUNG1QTHVhb3JXcnNZ?=
 =?utf-8?B?R3hORk55N0pkZUhOOUJ5ZFBSSjFycExsVkppQTFCei9oRXNTTDByUVhleDBh?=
 =?utf-8?B?Rm10eGxVTVZ1alY1RUdlYmhQUExaelY0S1d4cXJ3cHpOdVZMa3l5Z0wwbU0r?=
 =?utf-8?B?eGllQmRhVjIzZXMwU09YNVJtQVUveFZEbmFTVkRIYmExbk5RZ1o1QmNNdUxS?=
 =?utf-8?B?WUxuWno3VHJqQjVKYThCQWVVaHpCTHhncG5MdFVRaW10cG1ab0pxdmVKSVRr?=
 =?utf-8?B?b1BGd2RKejdWRjhCbkFUNnp0Mm5nT3NMNC9yQWN6L1N2blBsbXZiSVJNSHE3?=
 =?utf-8?B?bHU5bHAwZC9LQWNvUWRlNXh3MlQwRXVocWJINCtvaFFVQ2Z5V2tXZnlIeHJX?=
 =?utf-8?B?K2lPTi95bU1vYXRhRkpYMXJCcUprcXRZZXBPcnpYUmdlWlVMYzdhOFpWWG53?=
 =?utf-8?B?a3ZQdXRkdW9UNnlEQzJmU1FPb3YwZjN5RFYxdHRWSnVWdzVRVlAzbjNOYkQ2?=
 =?utf-8?B?SjdwOHBFUFJ6Y3MzalI2VEc0c3ZYWGF3TFpyaklJOHAyTXNBRUdzRFcxcmsz?=
 =?utf-8?B?NWNheVRlU0hnWHYwNjRXUEJ3aC9XT2xvVGwydFI4RjlvWmM3ZVVQeWkvYlhB?=
 =?utf-8?B?SjRkbGhhL0NOZ2VQa0kwR0p1OUhLMmVxKzV0RFIyQkZqenJDRUxJNlVxK1kw?=
 =?utf-8?B?ZkYzN2o3eXBTclVldkRzS3pBdXVCMytKSUtCR0hlSFExRWZwNDZHdDF0Uzdl?=
 =?utf-8?B?WkJTczNtUEgwdGRxSmRCeFpqWGd1SWVvT0dFWjdua2w3ODhsZXlYSXVKbGZ3?=
 =?utf-8?B?ZTZTMkJQTU4vTzFkdjVlaWl3N281OEJzbEF5cFNKRjB0d2FFUndQdk1Xa0I2?=
 =?utf-8?B?dWk3Nmw4ZlNwTmpBMkgwTHkydFQwZFJiZFVOSHJpMk16YmM5dk9PZ1BLT3h0?=
 =?utf-8?B?cVhKRnI3R1ZENlEzdUNTNDdXU1lBeFZXTnZYRnhtaXMydkJnWnRnNW9taGVP?=
 =?utf-8?B?eXhCWHlSRTJ6azR1bHdCVDlBVzV1WEdQclJ1S0d0QkdiSjJsSU44WitraXdu?=
 =?utf-8?B?ZlFna0pMbjF5WjcrT3MwLzdiWUowa3UvVTJ4aGxSV0NmYmFQUUtlZmM0R29h?=
 =?utf-8?Q?vnfgCjdw5FtE2BY2Ew=3D?=
Content-ID: <9AA660E8B8A2DF43BCFCFD5C9D004DB8@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB4791.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcaa4b48-5c6a-45a9-587a-08d95b82e198
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2021 22:13:13.6120 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fDhDU42diGwMUnzqrAUdDCfbLryVQH5Tal2fR8RZVQGBdDN/b1UoC+X7gUPFTB/QF/6Cdkvv/0dzbQos2Lj6AQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210809_151326_049755_1DEE626E 
X-CRM114-Status: GOOD (  16.71  )
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

Felipe Balbi wrote:
> 
> Hi,
> 
> Baruch Siach <baruch@tkos.co.il> writes:
>> Hi Felipe,
>>
>> On Wed, Aug 04 2021, Felipe Balbi wrote:
>>> Baruch Siach <baruch@tkos.co.il> writes:
>>>> @@ -1371,6 +1398,8 @@ static void dwc3_get_properties(struct dwc3 *dwc)
>>>>  				    &dwc->hsphy_interface);
>>>>  	device_property_read_u32(dev, "snps,quirk-frame-length-adjustment",
>>>>  				 &dwc->fladj);
>>>> +	device_property_read_u32(dev, "snps,ref-clock-period",
>>>> +				 &dwc->ref_clk_per);
>>>
>>> I wonder if it would make more sense to pass an actual clock reference
>>> here. If valid, then reconfigure the period to the value returned by
>>> clk_get_rate(). It would avoid yet another DT binding. If we make the
>>> clock optional, then we won't affect any other platforms. The clock
>>> itself could be a regular fixed clock node.
>>
>> Thinh Nguyen asked to add a dedicated DT property. He explained that
>> clk_get_rate() does not work for PCI hosted dwc3. This is the most
>> complete summary of the discussion:
> 
> Hence the "optional" :-)
> 
> Or, perhaps, Thinh wants to use this for internal FPGA-based validation?
> 
> In that case, I'm okay with the property.
> 

We do use it for internal FPGA validation, but it should help for other
dwc3 PCI devices also.

BR,
Thinh
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
