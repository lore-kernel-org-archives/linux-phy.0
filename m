Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABDEACA0EEB
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 03:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bsMEbyVr99uqFo9hzyIdd2ddSVCgw6d7Ogn2ZkwYDoY=; b=I+2nmD0gFJGKKs
	XkZVJfAEZ61vvgeRsMqL32kzTpxn7TW+gS7JqEl+o3WmtqCtM/HpDSlGTZGxVOrh9uNiYui4yg2sU
	MFuYyXBrrMfKqTSMwT467qquyAaSdrTC42M2D903axeePgNXH28KHGdOULHB2dCVFgyUvENLOHUbs
	b6//dFURzHSuP9u6tuP/QyTPXJNTCy5trkgBe9BX2kKIm5Cm5SEZyb6q655AqHLS1fkdgwk7ND1pN
	Aiza1FBKv6OR8iNY4gPEVPMabkvdhpa4580OzTZ1qEJg2fUx0Tn19WIQIB03xBiCvhMKTr4CTA6iN
	NxWY0dTwTso1VuF2M9bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upIWc-00000001Oau-1mNa;
	Fri, 22 Aug 2025 03:33:10 +0000
Received: from mx0b-00230701.pphosted.com ([148.163.158.9])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upDcw-00000000j1l-1BDb;
	Thu, 21 Aug 2025 22:19:24 +0000
Received: from pps.filterd (m0297265.ppops.net [127.0.0.1])
	by mx0a-00230701.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57LH2jdB014164;
	Thu, 21 Aug 2025 15:18:56 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com; h=
	cc:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	pfptdkimsnps; bh=yhlVjT0yuKkTnvuqY2BPymMuUmQfk+SaFLmmEkokogo=; b=
	PO8p7P/6Z4h8RAAouF1RXbrniqb3U+NL5Q+0SihUT9a6EZpMLlkaI2QUY8ZEcrsT
	IZc5d2FKHClG/VoU9Ho9M0K1g1F3NFGzXXCXLOzDVQiHMI51bWigxNgX8/3hcvRq
	mHRC5ENWNQ+YrA6rztYEgmNjiRTrqb5lz35gUzgwf9XnVDI8xq1TlDpwcSxid+5S
	WBYNGycgNEpK5K7g7bAcBqrLgWh/TkiU//dxMr9ZvMrOo638zC7gmtnvOAyrAP3e
	nvSQe6Zd18M+/dyWdu3ysKISvc99PQEH9g/2GZjlGkW1hjpDox3GCaXiAbg9e+ON
	WY/p5Dh3TTPYd/874Y7+bA==
Received: from smtprelay-out1.synopsys.com (smtprelay-out1.synopsys.com [149.117.87.133])
	by mx0a-00230701.pphosted.com (PPS) with ESMTPS id 48p2graxhq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Aug 2025 15:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
	t=1755814734; bh=yhlVjT0yuKkTnvuqY2BPymMuUmQfk+SaFLmmEkokogo=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=in9wz63LUcDYrijzZwu2NAWyzoZQV32N8WSvqz+54+bW/kRngTIJN3OrycP7MxlGX
	 QENvKpW+UNq+TTSkClhS59zaT3AcGIeo1hBP8HRqy3qyICBrO8BmaEMhPNlk14E7Ym
	 9TyC8zo9NGGiMbK+J6TnTAOaSQFLaWawkUpLpGWRl18aAMHJQuJXR6T+EVKSQeoSzi
	 2O9IBXshb7fQvpofkfThXlHDMAeFo7QBUrOk7AuT/qByvYh5wag8B1chXIVHxQsO1p
	 +2VAaVC2EFrTWcWjobETYtTgRkzeSUIp/t+VAgQx87uVNtEDQPml/NmVk9pJ1h35DZ
	 gahAi4XfHJlYg==
Received: from mailhost.synopsys.com (sv2-mailhost2.synopsys.com [10.205.2.134])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "mailhost.synopsys.com", Issuer "SNPSica2" (verified OK))
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 0E8F74035D;
	Thu, 21 Aug 2025 22:18:51 +0000 (UTC)
Received: from o365relay-in.synopsys.com (us03-o365relay3.synopsys.com [10.4.161.139])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(Client CN "o365relay-in.synopsys.com", Issuer "Entrust Certification Authority - L1K" (not verified))
	by mailhost.synopsys.com (Postfix) with ESMTPS id D9063A00C0;
	Thu, 21 Aug 2025 22:18:50 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com; dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com; spf=pass smtp.mailfrom=synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
	dkim=pass (1024-bit key; unprotected) header.d=synopsys.com header.i=@synopsys.com header.a=rsa-sha256 header.s=selector1 header.b=k/9Yg/Yl;
	dkim-atps=neutral
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (mail-mw2nam04lp2170.outbound.protection.outlook.com [104.47.73.170])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest SHA256
	 client-signature RSA-PSS (2048 bits) client-digest SHA256)
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert Cloud Services CA-1" (verified OK))
	by o365relay-in.synopsys.com (Postfix) with ESMTPS id BBF45401C2;
	Thu, 21 Aug 2025 22:18:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hXX3WewxCFvHcA+N98SHKAzZMyDTqZ+xfeDGwurr2iJ5bsy2sD1He5okhewgT6TMCcJfLtGZ7C59j/eFe7IhBT3XUNGUD8tKRzYW66Af+rhBXYVcF7/RL6Lp7Z7D1lklWbYRw8ds/b/j744+oQTH7t5BAnUzOrKxM6RQwBnmZ3Uo1wloSVYkCVEMtwsfmR9DmirCb7j43IMPvf3Ztt10AY3C/kDd9g/WqQC/FwvVP7kryq6EcjNWkHAIknTjB/j5Rulm28ABhtzQ99hKt6Er3hjZQUEUgNMzbzsEv27BMRquDqMO82cvi0hqNdjIfTKJmEvRBYXafoZOEu42n1cDxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yhlVjT0yuKkTnvuqY2BPymMuUmQfk+SaFLmmEkokogo=;
 b=m6yX00hwdQfH/aD/itV6bcFUhAIxQIg55YYmTvao3yooW71AIDfoNkD3wp52oN/t0UJ8655jtgSmHofiPMbOT26HehKODchv82r4D7TUGoySsAtrZwyZSWyUcbHrWW8oVnrhKTDpA9riki35AeiMuc66CG3rNBUmkb/4RYtcbvoG3A7/sQjjMbmeXvmImiZ2bhXAX67JEcYUS9fJtjAh1nvEmMcX9fjzC8KEpMSXRwP4PL7PeoWHPChuKd2yx2z17BvwSSjN7/HOL3+yohjbb9fHGomi2Xm592IYTtEKoEFCLrX+Zf52Zdu0/2Q/A7ABTHPHI/dSO/w6MN8SKjsQZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yhlVjT0yuKkTnvuqY2BPymMuUmQfk+SaFLmmEkokogo=;
 b=k/9Yg/YlGpyzl7OrhllL5FBW3HeBbuMMo3YBhUDlPLVEtEqaW6KfHAmD5vJ5qqeLFheY54w2+Covu0o764Qk5GelJp3FhIx9KaCzg03CnNs4iMK9cIHf/cgxc+NDDuHQCp1it597u4kTDcidRZFmRUKVwGYjuJlm/iapWUXeHvQ=
Received: from LV2PR12MB5990.namprd12.prod.outlook.com (2603:10b6:408:170::16)
 by DS0PR12MB8765.namprd12.prod.outlook.com (2603:10b6:8:14e::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.25; Thu, 21 Aug
 2025 22:18:42 +0000
Received: from LV2PR12MB5990.namprd12.prod.outlook.com
 ([fe80::3d09:f15f:d888:33a8]) by LV2PR12MB5990.namprd12.prod.outlook.com
 ([fe80::3d09:f15f:d888:33a8%3]) with mapi id 15.20.9052.014; Thu, 21 Aug 2025
 22:18:42 +0000
X-SNPS-Relay: synopsys.com
From: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
To: Sven Peter <sven@kernel.org>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>,
        Janne Grunau <j@jannau.net>, Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Neal Gompa <neal@gompa.dev>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "asahi@lists.linux.dev" <asahi@lists.linux.dev>,
        "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
        Hector Martin <marcan@marcan.st>
Subject: Re: [PATCH RFC 07/22] usb: dwc3: apple: Adjust vendor-specific
 registers during init
Thread-Topic: [PATCH RFC 07/22] usb: dwc3: apple: Adjust vendor-specific
 registers during init
Thread-Index: AQHcErHi2Now8OYB4E+7dzV5JFuJ0LRtraoA
Date: Thu, 21 Aug 2025 22:18:42 +0000
Message-ID: <20250821221832.zsn4rk7nomsbgytx@synopsys.com>
References: <20250821-atcphy-6-17-v1-0-172beda182b8@kernel.org>
 <20250821-atcphy-6-17-v1-7-172beda182b8@kernel.org>
In-Reply-To: <20250821-atcphy-6-17-v1-7-172beda182b8@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV2PR12MB5990:EE_|DS0PR12MB8765:EE_
x-ms-office365-filtering-correlation-id: c1c0eaa6-a346-4160-a041-08dde100afec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?NW1qM2dteUJWVVY3RVBrYTVOWXJEMHBNc0MvR0xzRUM3TFZodkpaY1lZWlFq?=
 =?utf-8?B?NVM0ZmVZUlF1RGw5RnVYQVd2MFZJYVZ5dzNuM3VnemVOOGlNcUhTeHBkYmJx?=
 =?utf-8?B?U0ZHZmMvc0JhVWQ5c3Q5RytOU1o1T0EyM1Nha1BuRUVRQTIwZ0dDUS9sZE9a?=
 =?utf-8?B?VHFIM0lHR1QxOGRScGozR3Q0V2JBS1dwS01lbnlWWjBZSG5UYlN4ajNqUWg4?=
 =?utf-8?B?Q1RmT3pHYzRZRUVndWpYR0w2Rzk0SmR1OGk5dGlDNk1wUloxUWx0OWtlQ0RR?=
 =?utf-8?B?OTZPQzdXSnM0M1J5cytpSGFyTVVhZmx0LytQbXNOcytXZGZLZTFBUjFPcmhy?=
 =?utf-8?B?WFlza2R3ZzdUaFhmSlBhQ3N6OTIrODIvU3hjRzJkRmJvRFJXeUMrY0RKUzF6?=
 =?utf-8?B?bjlFU004YTRpQ2hwR1gyenAyRTZpbkF0L2J5YTYwaHZxOWVuWS9xa1NsR0tw?=
 =?utf-8?B?aCtMdThCejdZaElpcTFuYkFPM2NVdnBkZHQ4c3hScTVxWmRjZzIramxsRFZk?=
 =?utf-8?B?OXlLMTB5dVJoVFBkYm1QZnRKVmtBd1RyZjV2TEk0SmoweWFZSjNmR3czMTM2?=
 =?utf-8?B?NE5VQ1AycFBzRVgxNXM0QXJIcjFkVXpnQWZFUmREc1pzQ0cwUmZpUS9LemIz?=
 =?utf-8?B?OTNKc1lXdXN0Tm9jZHRTSVJZWmZObkdCaGFKc3ZTSEFBdEorUjRraWptYkR6?=
 =?utf-8?B?aHRkY3lHSERXS1N0Ykxhbm9nUUZXVVB6S1FUY0tMSXFRaGt3TFlPS2RBQ05k?=
 =?utf-8?B?cklKOENoQmdEOTA1d0ZGeFNBdE11cG8yQnY0SFVHRE1EM2lyMUcyMFlRb3Fu?=
 =?utf-8?B?UXVkUWtWRGYrb3J0V2c3dUp3ZTl0SlBSWUFOakdsY0hhclhVbkFJdjNJMU9t?=
 =?utf-8?B?TW05SU05VWJIcm5KOVBHbmh5MS9Kd1RaaVNWU3UxaU5BTkY3Q1VheklCRmpQ?=
 =?utf-8?B?ejQ1d21KTy9KbzN0UXFIb0twN3VXR2Z4OXovWHlOblJxZ0lsU2dCT0JkZEhZ?=
 =?utf-8?B?RC8zS2hiUXlRVTMxdWxraStaWGhaWkxuWmVzZHRDeGorcHJxMkhJc25CY1dt?=
 =?utf-8?B?bkxNYVZWVmpTV1lpb002YkZidWVGbERibGcxZlhBSG1abXgvVWdLSmtoK2tP?=
 =?utf-8?B?cUp2RlFMWVFTeEMyQ0FHNXVEMVhwWXZqekpJeUdsMWI0dVhNZmNYUDYvbUVQ?=
 =?utf-8?B?UElmckNDclhMaVBXUm4rUGdWdHR6MGlvek5JV3BYWmxIaWdLYkJ3U0w2dVBs?=
 =?utf-8?B?dldMaDVNQ1hyZlUxYkR6WUVNV1dUaEN2d3puYVBaL0FCMVo1WnNQd2dqOFl4?=
 =?utf-8?B?UktzOVVma3pYVjdtK1RteFN0QXo5WmJoS0hXY2pJOHRLc1JlbExqUDRvVi9D?=
 =?utf-8?B?UGVmVXJnN2RhcG5CbWtZYllLQU01YnRweTBoQUozTVhxYmpXTEF0ZEErZzMz?=
 =?utf-8?B?SmZiN05qc29pTHRFNG9LRHIzQmJ6QjJRcWJrY3dtemM2QzBkT0kxd2tUWjhM?=
 =?utf-8?B?cC92OFl3bnhTOGx3Zk16QVV4b25WL0lQM3ZzKzY5VlBGY0JiNjNrVGd2dDRo?=
 =?utf-8?B?RnNBSXdBSzNTM1RhNVpLaVE5dDI5NThtOFlMTGFpd2FuM3N3K3ZhVWhTTjc0?=
 =?utf-8?B?TmluOUVOdjZ6ZExka0ZlS3pGRHV6bkZwdVQ1YzR2bndCKzJGak1YenA1ZU85?=
 =?utf-8?B?YXNzYVFhMW9wUkJRREVYWisyODdiV0cwSmR0RHFrQ1dSbWY5TGhCRysxYXVR?=
 =?utf-8?B?QkVJbVFyYmhINkJYRWZRczZyQnUwZUUxcHJIdUtDOGtqSnFGaDM3MXozbTdB?=
 =?utf-8?B?VjY5aWxwQWQvT1JJdEF0dTdLSWoraHhiNVc2UzNJVXJ3SXJ2cFNURHhFVlVn?=
 =?utf-8?B?UTNwTE80VEY5RndNOWUvSEkwK01MMHVPNW9ZVm1NU2R6blIrN2RMeHM4UmtU?=
 =?utf-8?B?aGp6bVlXZWhBeldWWEd5Z1VRNGplSEM1WTI5WkdwQzUwejlaRUpxODZuWlFE?=
 =?utf-8?B?QmszaG1RNVV3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV2PR12MB5990.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UThxNHR2Smw5VG15VlNKcVVvRWt0WCtYblRQMjlpV2JEU2JjZzFzTHhsd09w?=
 =?utf-8?B?QjJESlFXZHhhTXh1bDJTUXUxNW1kZjBITFdEVUIxWlJNR3c1ZDB6OXM5SzN1?=
 =?utf-8?B?OUtXaWF0NnFRYnBmOVVmcS9ZZW1yNXhwNWxQazVWdVR1TnpjTDJQR3lwbXY2?=
 =?utf-8?B?bjZYb0ora05FakJ2WDlsTm5NcjkzTGg3bUhsdktUZXN6TENsUnFHSjVwQVRk?=
 =?utf-8?B?bVUzNktnTFBaSGc4R3BDTTErUzNVcWZMWmFXblFDczl6dzFmTS9rY2wwVXBk?=
 =?utf-8?B?SGtJa2h2azVHb3RlTy9ENEFuSzU4MG44ZW5HVmNjTmVsTWtYK3hMSkFSM2ta?=
 =?utf-8?B?bDgzL05USXpWazB5bkNPT0N6WWtQeUhhRXJEQ08yUkp6TjNmVWNyREZGSWx2?=
 =?utf-8?B?L1pMMitUY2p2ZzZub3ljZ0xJMzNCZ1N5R2tJV1ROY0ZSaElRczRMNjhFZHJo?=
 =?utf-8?B?SWNoWkZrbTA1a25aVXJoVW5iOE9sRUJDZWRMRGxuVkZuUnpQUFdPYzdHcEZp?=
 =?utf-8?B?REFFa3huL0RBcDhIRFFhT09mQkRGS2NPUWh4dmlDVVorU0ZXTUNQL1BaN2Uw?=
 =?utf-8?B?ZVBpd3hsZWZERXBiZ0Z1TmdFajF2UzdDTDVGVHVlbTFXOGJJVm1BemlycEV0?=
 =?utf-8?B?Ym9WNFJoTHRqQmdibDkwWG1PS2pTT2MxU1ZiOWJuNDE2Z1ZtWjNnaGczQ3pu?=
 =?utf-8?B?WnMvcmN6c3VhZ3dnN2pHL1VNcHZOUCtUbXZkYkhodStNNkVocE5ndzR3NlN1?=
 =?utf-8?B?UjliQ0dMcEQ1TXdOcmoxZG1PSS9KcG11SE9zZENyMkVrQWJodmJHdzVrczB6?=
 =?utf-8?B?VlhGUjBnNWtNZVExb3hnbUNQaUJFUnpyK2pQL2JlalZvaXYvMmNXdldDMmcy?=
 =?utf-8?B?dFVBWUR1L0Y5ZlhRUGxTUGxyZEdnc3BkY0gzNXk0Y2VVMWdvRmprM28zUjJm?=
 =?utf-8?B?dHdXMVVzNTdzZFZSd2d1VDVTSmQ0V3Azb214ZzBuTnhhd2UzdmEvNDNMdHY2?=
 =?utf-8?B?UWtBV0NsZktjUmRDVFNxR0VIRmZZUjRPYjhGalgyQmxLWlc4OTVlbUNRQUsx?=
 =?utf-8?B?SGdwa3lHYm1HaXltZVdKZ0Z6TDRyaGoyc1p0YUIyWHNWS29RUTU2SU9DQkRE?=
 =?utf-8?B?SHNlYmtod0puRVNiQW5sTHpWa1kyZElISklwc2Z2SEJYczBNWU9IZzlDQ3Mz?=
 =?utf-8?B?THJsc09FbEZRSDRqaGR4OU1HSVRQczBaZlNyZFhyUFFRWkhKeFl3RGk5akFk?=
 =?utf-8?B?bHk4V3RqT3UwR1BIa1l4c0IwL0VNY0lYT1NVTUdwRXZSSFBjbkNYVG5vTzk2?=
 =?utf-8?B?aEQwampiek1ySDlZaU8rZTBGdm1kL3dOeWRoWGh5U1RwS05LUzNYaHY3UjVr?=
 =?utf-8?B?NUhTczRGL1JWNTJtYTJFaU9YYUo3VEJ1eU9qRjBXZEM5ZGNEVWlLSDNoRDUw?=
 =?utf-8?B?akYwUlRSL0FiZ2dqMDk2QkVsVUkyZkNIdTJYclR2UTk5WFFKUDBkRDd1SUtS?=
 =?utf-8?B?NGpUSGV3ajJWVnhBdEc2eTd6L0EyNlpHZkVmdXdNMkNpMzU5Y1J2QXR5MDUz?=
 =?utf-8?B?R1lyOTVmeEZnaUdwdVZDcXRpRXMzOUNzbWpXT2h5Qkk4djFMQk5xYmozcjVM?=
 =?utf-8?B?Z0JEcFhSbm4wZkJwYklzR09YQU5PNndyQko2Ukc2NXh1NzdiMjV2dWt4Ymtm?=
 =?utf-8?B?c2w2YkwzZWlHL3Z0VzQ2eHh4ZGdoZkN5STFsTGk3RjArZy9XUkNoYlU2bHo4?=
 =?utf-8?B?QllNQWFlSjk3VFdzQXQ3T2R6cWNyaFdkeUdmNEc0WXdiMDkwYmlNQkxuT3p6?=
 =?utf-8?B?RWVWUE9Ga003MHNRU1lodlYwYk1LU1lYZGVQZVFlUEVVT2h5TkN3UFZKSkN4?=
 =?utf-8?B?WkYyUW9BbnUxeGRKeGpGb3lkRVpxWVJWZjVtNnNLUWZ1bGc0d3hLcWtxSStK?=
 =?utf-8?B?cTRZcllQeW5ZSHV6NXRFUnZvUkJMbnpVcDdvVnJNTTNEekxnZXdCL3d1aFVx?=
 =?utf-8?B?NC96ZFdHWEpOeFhSQVFwOWNGMmQrVzY3Y2Q0Y1VnMWNoZHlNeWs0T2wzWVNx?=
 =?utf-8?B?SUlwcnhmTzBHUkJlckUwNFA2b296NEdFODVaeEd5OHdEZCtvbDF6QTR0akZ5?=
 =?utf-8?Q?TLWrmbWz3F+oMXeP6crkI5BOY?=
Content-ID: <22F60715B63E5C4BA29415DC844A5443@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: gidhEV9Nmmgnlj9zRJkjhiIg8XsD4x2OB5UtwyCdXDmE3jParXRNSB9D4KIcC64xkRTEoG8vAW4aF76rYFn4Kq1cmcSNZl30zZ9mjusnJ643WFPJcYasqjuZjGg5FmEkBwNG0TG/deOCL2rBfDtYxSv4sET3y9/nn0rIb+DBLNCdGDdlMU6jcqPk62KcXt3Rpw4vOW4NFPFpXuhm8Dvr1fKDxZYGqMHOrQ0OiGHDgoEvs2J27E31zPv1rK4ZvdfGN+SVrgFjJkifQ9Ryxjtf98p6VEcJ9O3vMT7XbFBpkrRcMPI+dKxUDNNY58E9sFKHS6y93olKKU6pCxGhETU2lB1cGj/zuZ2GKjJTckiHdc40BmJ2UenJM7QSkyXvMVNO1twoDOpLgJK2ISp76l4JNi26camseND7wYpEKhW0UFCvfNPekEa6AqJyxuw13F04tbCuNACGGzBpQCUZIx2FC1EvsQ25VhplU2PWnb+csbKRV3aTwHSkTM1jWYslBtdIn6TXopx3GjL00zld2VzBkR6jB730JQz9QUXPBfEhTOs2qaU3ER7gnVThUBwxME1h17K2G41TrDnc57xo1PzGG320z7zUQ32PKlO7KA65dSxnCzyciF9PzWUVGPoDIEZWBJavko9coZV1xZcRJXhaPg==
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV2PR12MB5990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1c0eaa6-a346-4160-a041-08dde100afec
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2025 22:18:42.3656
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AtbFkxx+t0lWpD0tPk/YZWTQGmVLHn1vz8s6cAZuYjTe/yxl4dOca+cJzOwwE8mzYJPnEcL2VBgGiN+yt7Hzcw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB8765
X-Proofpoint-GUID: 9VQzFCL0YEO0ED_oif1dkQdEqzNANUfr
X-Proofpoint-ORIG-GUID: 9VQzFCL0YEO0ED_oif1dkQdEqzNANUfr
X-Authority-Analysis: v=2.4 cv=SOEblOvH c=1 sm=1 tr=0 ts=68a79b4f cx=c_pps
 a=t4gDRyhI9k+KZ5gXRQysFQ==:117 a=t4gDRyhI9k+KZ5gXRQysFQ==:17
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=qPHU084jO2kA:10
 a=VwQbUJbxAAAA:8 a=gJIMpQMuwHCoSmPD9cAA:9 a=QEXdDO2ut3YA:10
 a=HhbK4dLum7pmb74im6QT:22 a=nl4s5V0KI7Kw-pW0DWrs:22 a=Z5ABNNGmrOfJ6cZ5bIyy:22
 a=bWyr8ysk75zN3GCy5bjg:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIxMDA5MCBTYWx0ZWRfX6YlRoMrZpWpY
 IASU9xVBcFE+TDFnIIYaIYMkl9pPiSw5V5wVd//hXpI5vCdOaTt1sMoNfgLX8VraTPOg4OzKYhj
 UsKzrhycnAimZbtDAxDTkRF4ZFpBrwKc7T7hxc83nPAbvP3hcMkWOojttyB2YS2CKObCGJkM2LJ
 CCNaWdMlnXa7ehyP2Z4qTUDYvHKozg8MMmsfRC0Kt/Zzuqe9i0vlHNq3YO3T0POgR94qN4Er2+b
 lfbbllXI3y6IJbH6KKL7s7lc+MP90OH8vlVdhkbQ0jwATAwduSd8ec61JMtH/2acZEscNgtz3ul
 9h+5vv8Anjju03a0sGuAdzptIcICHLGFSJ9LOv8p9t1pWJ8OJmDrlT8DKptRXScvYt6U1lakcTR
 2zggEdFnq61qUsv1z3ziJ5QeViRW4g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_04,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_active_cloned_notspam
 policy=outbound_active_cloned score=0 priorityscore=1501 phishscore=0
 adultscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0 spamscore=0
 bulkscore=0 clxscore=1011 suspectscore=0 classifier=typeunknown authscore=0
 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2508110000 definitions=main-2508210090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_151922_468659_FAD70C46 
X-CRM114-Status: GOOD (  10.14  )
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

Hi,

On Thu, Aug 21, 2025, Sven Peter wrote:
> From: Hector Martin <marcan@marcan.st>
> 
> When tracing Apple's dwc3 driver under our hypervisor and comparing its
> MMIO access with their kernel debug output these vendor-specific
> registers have been identified. We don't know exactly what these do
> or why they are required but without changing these parameters sometimes
> USB3 devices don't work or take an additional 5 seconds to be recognized.
> 
> Signed-off-by: Hector Martin <marcan@marcan.st>
> Co-developed-by: Sven Peter <sven@kernel.org>
> Signed-off-by: Sven Peter <sven@kernel.org>
> ---
>  drivers/usb/dwc3/core.c | 17 +++++++++++++++++
>  drivers/usb/dwc3/core.h | 18 ++++++++++++++++++
>  2 files changed, 35 insertions(+)
> 
> diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
> index f8013ba2bdc22fa5e719df0841b12b84d9465b62..e018e80778cf39a9981d438c7e54534b26cddf63 100644
> --- a/drivers/usb/dwc3/core.c
> +++ b/drivers/usb/dwc3/core.c
> @@ -1366,6 +1366,23 @@ static int dwc3_core_init(struct dwc3 *dwc)
>  	 */
>  	dwc3_writel(dwc->regs, DWC3_GUID, LINUX_VERSION_CODE);
>  
> +	/* Apply Apple quirks */
> +	if (of_device_is_compatible(dwc->dev->of_node, "apple,t8103-dwc3")) {
> +		dwc3_writel(dwc->regs,
> +			    APPLE_DWC3_CIO_LFPS_OFFSET,
> +			    APPLE_DWC3_CIO_LFPS_OFFSET_VALUE);
> +		dwc3_writel(dwc->regs,
> +			    APPLE_DWC3_CIO_BW_NGT_OFFSET,
> +			    APPLE_DWC3_CIO_BW_NGT_OFFSET_VALUE);
> +
> +		u32 link_timer = dwc3_readl(dwc->regs, APPLE_DWC3_CIO_LINK_TIMER);
> +
> +		link_timer &= ~APPLE_DWC3_CIO_PENDING_HP_TIMER;
> +		link_timer |= FIELD_PREP(APPLE_DWC3_CIO_PENDING_HP_TIMER,
> +					 APPLE_DWC3_CIO_PENDING_HP_TIMER_VALUE);
> +		dwc3_writel(dwc->regs, APPLE_DWC3_CIO_LINK_TIMER, link_timer);
> +	}
> +
>  	ret = dwc3_phy_setup(dwc);
>  	if (ret)
>  		return ret;
> diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
> index 98e748cc348dfd9de1962c93fcf9f6a6690c2388..1caa46ca8b2ffb74dd3e58b174122e8f8216dd48 100644
> --- a/drivers/usb/dwc3/core.h
> +++ b/drivers/usb/dwc3/core.h
> @@ -181,6 +181,24 @@
>  
>  #define DWC3_LLUCTL(n)		(0xd024 + ((n) * 0x80))
>  
> +/*
> + * Apple Silicon dwc3 vendor-specific registers
> + *
> + * These registers were identified by tracing XNU's memory access patterns
> + * and correlating them with debug output over serial to determine their names.
> + * We don't exactly know what these do but without these USB3 devices sometimes
> + * don't work.
> + */
> +#define APPLE_DWC3_CIO_LFPS_OFFSET 0xcd38
> +#define APPLE_DWC3_CIO_LFPS_OFFSET_VALUE 0xf800f80
> +
> +#define APPLE_DWC3_CIO_BW_NGT_OFFSET 0xcd3c
> +#define APPLE_DWC3_CIO_BW_NGT_OFFSET_VALUE 0xfc00fc0
> +
> +#define APPLE_DWC3_CIO_LINK_TIMER 0xcd40
> +#define APPLE_DWC3_CIO_PENDING_HP_TIMER GENMASK(23, 16)
> +#define APPLE_DWC3_CIO_PENDING_HP_TIMER_VALUE 0x14
> +
>  /* Bit fields */
>  
>  /* Global SoC Bus Configuration INCRx Register 0 */
> 
> -- 
> 2.34.1
> 
> 

This is really great that you got to this point!

For this patch, however, I'd prefer these vendor-specific settings to be
in their own glue driver. I can only imagine more changes will be
introduced in the future with this vendor. See if we can use the new
glue interface in glue.h (some call this the new "flatten" model) when
creating a glue driver.

Thanks,
Thinh
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
