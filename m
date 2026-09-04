Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A9BEC624D3
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 23:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YyZPf7/8VBaWuf/Wf/DrWn9s+WkpSXxMQGAPRkoI+Dk=; b=gz6ZBWmQXYaQRp
	hwSrRYeAThJ1OWcpTCKYITSv6PIiueW2MYFEXHvF9AlYQkm/2T1QkzuA3Mm1uhVMCazJxvgQ0kgNr
	ZSL2Mw7Pl0MgwYa3YHQQa4GKCjGlqaKm/xfHmW/3x5q0gF8fGUeVX/7U8Y9T7dux4CyHds3i5rHOE
	kqPiP5sL5ZyRSq6Dnu5bV3p57HRjRLuVsN7zLn+OORRjoelBkQTWMCEZQpruZD01R0ZtS1BdPqCYW
	taaeLvrUIoWmOJob6rPnaxNfTYzn3XkbhbBrzHi8aasIudD8S/6XQdYMiQspSgLW5tnQmyju2c3J9
	5VZWwsaWZ7v00luseKyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2d0v-00000003SRu-3NND;
	Fri, 04 Sep 2026 23:08:05 +0000
Received: from mx0b-00230701.pphosted.com ([148.163.158.9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2d0t-00000003SQy-1BHe
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 23:08:04 +0000
Received: from pps.filterd (m0297265.ppops.net [127.0.0.1])
	by mx0a-00230701.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 684Kckca1143255;
	Fri, 4 Sep 2026 16:07:58 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com; h=
	cc:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	pfptdkimsnps; bh=DLF0X1SeWhkUgFl/BY6aBOtHXYJoKBfOs8CkSN6TPAo=; b=
	qrJ9kir78pZY2DelHGTzRlyuRLQkIMfiLQSNnaW/g3jp+uD8njEfhB/1deC5Fn11
	uS6xSviYES1mRyWCKS1Zg7IwtqHQTYmp6HE8K/mtg2MP4CfFK8efHdHkBFQKlxFV
	xNkWQFJk75mSPrwf0NfsOyuzc6pSqaySFvxBlCKy+FmHdmYbsacH+jibOuyW11Mt
	70UWcWB2fY3EuRmjdhywQHTWxdmT01lHC+agHvGUhH2xo3hEV5v+uSpVfChPLstt
	Obrnt/m1IyDNZFLVJafFOKhsGsh2q1aBXj5N6FXa+7Q4Mt4/10HEVMmMwc8EdanK
	5kjAgddH3OXjaOfarBNOKA==
Received: from smtprelay-out1.synopsys.com (smtprelay-out1.synopsys.com [149.117.73.133])
	by mx0a-00230701.pphosted.com (PPS) with ESMTPS id 4gfrm1am90-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 04 Sep 2026 16:07:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
	t=1788563277; bh=DLF0X1SeWhkUgFl/BY6aBOtHXYJoKBfOs8CkSN6TPAo=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=LzLw8kwe0XTreLS3K6i/cJJ+m+T8yHea10GLm3pvXeCcReAVTjpizOpd54xBWpp1o
	 k9BkHmgMHm0oMSORk3L5lzk7yil0vTuA3T5GqXsPjBu17NMD4InT20pkKsMpxWg5Xk
	 uK25FJQUsvgAih/OkegGAMudJgi32WPHutNNFrfTjMZ3Fc0qfKOuel//l1lY3L7tCs
	 7BrVzzvGvdK4zI1jtJLvDbaG59wYHtU24M3L1hQyFRFbjvfsyEpQwkLH4iAALkrgpF
	 sbXxU0f4cEQx+MTTxmNPLK6TehrNQAWKhgHedRytLP0nJQb1Z6xyNbd9sp6yF1Eg++
	 Syl7bMrqhECDQ==
Received: from mailhost.synopsys.com (sv1-mailhost2.synopsys.com [10.205.2.132])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "mailhost.synopsys.com", Issuer "SNPSica2" (verified OK))
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id E7E7B4013D;
	Fri,  4 Sep 2026 23:07:56 +0000 (UTC)
Received: from o365relay-in.synopsys.com (sv2-o365relay1.synopsys.com [10.202.1.137])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "o365relay-in.synopsys.com", Issuer "Sectigo Public Server Authentication CA OV R36" (not verified))
	by mailhost.synopsys.com (Postfix) with ESMTPS id BD02BA069E;
	Fri,  4 Sep 2026 23:07:56 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com; dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com; spf=pass smtp.mailfrom=synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
	dkim=pass (1024-bit key; unprotected) header.d=synopsys.com header.i=@synopsys.com header.a=rsa-sha256 header.s=selector1 header.b=O7BXN8KJ;
	dkim-atps=neutral
Received: from BL0PR07CU001.outbound.protection.outlook.com (mail-bl0pr07cu00101.outbound.protection.outlook.com [40.93.4.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest SHA256
	 client-signature RSA-PSS (2048 bits) client-digest SHA256)
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert SHA2 Secure Server CA" (not verified))
	by o365relay-in.synopsys.com (Postfix) with ESMTPS id A48104019F;
	Fri,  4 Sep 2026 23:07:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P9wzY8gpVAnb8Bz/fApzHunx5u3iq86GbYLScs9p55Ye2LTHSJuTk7m/o64m0ugwzCO+y+7EEpoa0MUpN13CBAPHOKnoUSDJn8za2wBdpeKMgIId0RQLfDfKSYSLPDBR3lEy5lV5HKN3k6aM/0b8lwrTvKD72hniVAPwAokddvdlhRJmfEq+IBHeZiDaNsZzkfczbQnI6BohAkf7U36BXd9qOqIr4vGzk/in9Iq/UKZx4fHYBPB04r6BWONDcvdk7pVfuGqIco2ZQy3DIqec5gV25aDDv2qQ9mo9ubb4GowtJIyNCr6NeN1IY3u7LaIBUTYyZdW3sPZFyvtHIDmGaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DLF0X1SeWhkUgFl/BY6aBOtHXYJoKBfOs8CkSN6TPAo=;
 b=MjT2Mw+EGLB4Mr1H/+FzoieX9OsMWMyMHtoDzj7Tzg5i6b7JBqFAStZQETGYezJVdTfB5bjZEo7SYyC+N/33G6pCuWteUP/i/TMZTVbiL1yDEDDjby2pGMkAsXFHKG1yYSJbk3IjPr47r1haVJ+ejGoJmY6ttsqA4Yo9a23FLwWVE8YkXrJic+zYBp3e+u7cFnus0Z7lv4ayGAjT4a9MvvLpihfJDFYInDvxeSR/nkiwsk9ijcd2Qqn2qszuo4TLObddJOkQcAtLaGBq4GRh66G8ngP84hbZOD9MmOvYVZcDLQc5q4B9HNwN4wkoxcKRbIRb7sNVrfdu89xsMhhtkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DLF0X1SeWhkUgFl/BY6aBOtHXYJoKBfOs8CkSN6TPAo=;
 b=O7BXN8KJO7WSfWl+hy3N+lSA8cO4SR01VAKyyM6mUkx2sL1we+3SpvXPCBDnTLqzgpfo/WhSTVtEWVr+gVBetCMNIwaiYy9HzND4pvePK8NL/g5D0pZcp3s1MrUTvXtKaltjrVE64QqT/jaW2CDQ/KoI8546NpGHwFe1Q3lSAQQ=
Received: from PH0PR12MB7486.namprd12.prod.outlook.com (2603:10b6:510:1e9::6)
 by CH1PR12MB9669.namprd12.prod.outlook.com (2603:10b6:610:2af::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.360.13; Fri, 4 Sep
 2026 23:07:47 +0000
Received: from PH0PR12MB7486.namprd12.prod.outlook.com
 ([fe80::7df9:b25e:9216:f109]) by PH0PR12MB7486.namprd12.prod.outlook.com
 ([fe80::7df9:b25e:9216:f109%6]) with mapi id 15.21.0360.008; Fri, 4 Sep 2026
 23:07:47 +0000
X-SNPS-Relay: synopsys.com
From: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Konrad Dybcio
	<konrad.dybcio@oss.qualcomm.com>
CC: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
        "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
Subject: Re: [PATCH v6 5/5] usb: dwc3: qcom: Modify interrupt handling for
 eUSB2 Phy targets
Thread-Topic: [PATCH v6 5/5] usb: dwc3: qcom: Modify interrupt handling for
 eUSB2 Phy targets
Thread-Index: AQHdNXzjqsxfeETEmUSg4BZVWvy+4ba7IMAAgAP4qwA=
Date: Fri, 4 Sep 2026 23:07:47 +0000
Message-ID: <aptOOZxuRzUy4kHT@vbox>
References: <20260826-eusb2-interrupt-v6-v6-0-ae2601cfa80c@oss.qualcomm.com>
 <20260826-eusb2-interrupt-v6-v6-5-ae2601cfa80c@oss.qualcomm.com>
 <3d31f750-750b-4561-96a3-d265b632da6d@oss.qualcomm.com>
In-Reply-To: <3d31f750-750b-4561-96a3-d265b632da6d@oss.qualcomm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR12MB7486:EE_|CH1PR12MB9669:EE_
x-ms-office365-filtering-correlation-id: 81994104-c722-44d6-637f-08df0ad955de
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|7416014|23010399003|1800799024|366016|38070700021|6133799003|4143699003|11063799006|10067099003|22082099003|18002099003|56012099006;
x-microsoft-antispam-message-info: 9tbetORYkaIc91oZHbQcbLrVXrzFT2EZv1iPyWAGq58tkckiQrRG7Uw3fLMqM7TH0QUDyElIdoXZRyQgPAHOKqZcrdFobJRA1vqCYbcmlXi42jvJQT4tgKEINZpllh04Fz14tYQCmwSxY4dOl9nuJuJgnAOhVmbbyW882nv66fE/pRnUfh5ODVLB/A94JASOwkWV0bEQnllzAUWSaYgC3FMAvGAsPAQd3NsxSW6PP8+ZVJm0NRNhY5d5jdG2IK/cunjNDB1rMEKWC1kU4IYAr14xbiNmMb43Lu18tU3s2eXOVBJ0PoMAN1vymbuEEJkOy2Pxx5PyTUemEQ/EgXTZ/hWA6nCLvHcW5ZAjrkzMYa5QfJ7csmVsXf2rtjal3I7gRBGtLQqrZcLdiWaUdtUaPMFJJUdBS6paNcIncjTAH1GPmgv04V3eFbNQ//TtWccn8SDuhcmj6clGoActkOjTDvSTDanR7NaVR61iT0j4CJL6GUqMEyzi4aQKdWrmYg53hZJ8ERotK/IUWalu95RCgQ2zvrKXxLpQ4Ku9moO8TlN2MBN0I9QposeSo0aJMynWMJZZ9L6EYLxvStCbym19Vq/XJdhXqCg6r4LsjhZ8y6znb/StBw16jhfZhbKzLyLDb8G78fWCI540w5Mckealk1ygqkKx9R0/3B4Kl0bABN1SH5mX8QAqgqqOwFmKYwDyE9p/bOf4nsPhy9xh0I096Om7QiJUgeoukNKpKleDsRY=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR12MB7486.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(23010399003)(1800799024)(366016)(38070700021)(6133799003)(4143699003)(11063799006)(10067099003)(22082099003)(18002099003)(56012099006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NVNEaEVSNDUraGhsYWRWc0dTeTJ5RGtyeVJwUjdBdU84aTVidXV5UDRpeU5Q?=
 =?utf-8?B?TzhzSVE1NU5iYk1aS2M2MmtRMUxBUk5MM2RlVE9wemNUcVFaaWV6Nno0WmYr?=
 =?utf-8?B?UzFEZHJwazVWdDlPTTJlMURHSXpseW9wVG5Ic2djcUxZR3NsNVA3Mlg3RERQ?=
 =?utf-8?B?alVGWlBjMGVOOGJDQlBLQm1Eb2dMTmV0R21ma2hIUlBmNW5URWNSbTZnZkdn?=
 =?utf-8?B?UEZvaW5wR1Z0cTVrU0xSNUVmanlFKzlxR3JjOGNPTWd4NGVSbGIvYWVCV0tW?=
 =?utf-8?B?bDZ5VmZHeDJRSEpvcjltS0E2TEpaMWhnR283QVJLQloxckJIOHRHNVdCYnZk?=
 =?utf-8?B?aUdHclNUSWtXRXNxM0hLQ3kvNjY2UURQZDk2SCtvdWNzS2pndXA1ZXRpL3JT?=
 =?utf-8?B?bUVhZ2cwWlg5N3VrMEp5dXoraFVYbmFBek9PWVR2WWsza3JRM1ArcHZxS0gz?=
 =?utf-8?B?R2Z2VytBTk5wQ0xKemR3cUFvQ2M1K2tHWThsZ2FKUlJVZFdQM1RLZHN3bW0r?=
 =?utf-8?B?L0xlTll3QUtiMjFTZEhLR0dSRFpPRGM3bHp6VWVZTlJPMGxzMTdoSWZDamFy?=
 =?utf-8?B?Z3ZUWHh5MDh3ZEdZQlI5YkpZWWdhYnpjeFlHWjhJV2tyQi9WYXN2TTcraGFU?=
 =?utf-8?B?dmhxQ1ZZMFh6cEg5N2pyMUcxWnVsREUwazNJWUs4dGdVcHF6bi9LbGZoaVI3?=
 =?utf-8?B?N1NmRFpydEd0NWM5YUI2RXlhcHgwRnRTOWV2SFI0aElDU2NCL3VrZHVaUXll?=
 =?utf-8?B?MkdQQWVQNW10M04xaGdxWkxLL3VXU2E0bHRsSkhSZFZhVDNNOXk5ZmN4dzNK?=
 =?utf-8?B?Q3M2dE5JWDUyY3hIUGcwaGp3KzBoWVdGbmFWMWpMK3dtRVNuZUpLNnhWRmpV?=
 =?utf-8?B?L3MxMk9kWEN0UUxkUkRnMnQrS1dSZ0JGc0lPekF0WXRTTy9hWFVWVzZycDgw?=
 =?utf-8?B?cnV4TisrTzJMcWlKMW1DWFlNRklXalFkVTBkbnh0bVI5dThrem1VYUdIbENm?=
 =?utf-8?B?UzN5NVNBV3c3c1R5QlEwNUU2NDB5NkJHcjUyMlR3SndnWk1DVWhkb2tRbE9w?=
 =?utf-8?B?WTQ5M0h5YWN5OXNBQ2NuaEFwTWFPTHJyR2NwUkR5SzhvajY3UkhwdDl5amNq?=
 =?utf-8?B?Uzc3OTdleDBsY3hzR3Rib2IyR0EzczBUNHVZL1c5QlFaT2pXcTRvYVpzTnQz?=
 =?utf-8?B?T3JEMUxkcGRZYUUwNlBwRUYvcFFXL1NPNFB5WEVrZWptdGtYWkFUQmttRUFF?=
 =?utf-8?B?RFM5b1F0MGJRZnRFaVZFT0V1UmFac3NOa0l0aVlldE1qcy9FYm1FQXA2bGg3?=
 =?utf-8?B?cWdjU2JhZ05uRmtOUEtYcERIWHJ3dW5LNVl5d1FTTVdlci9UK1lmdHNxN0di?=
 =?utf-8?B?SElmaUJHaWxSUjZWRUJ4b1c3UVhtUTBnWE1NRUM2VEYwVDkyUFJIVTJzRXRF?=
 =?utf-8?B?dUlOWlhtaW1UMTZqaytRQXgvd2dLeXhHYUJ4SVpYOWN1WkFtcXNUZ0NZTytE?=
 =?utf-8?B?Tzh2M1NEMmhkekttbWJWK09HTVQ3cjVEYzFZZWVoN0d5M29DY0pzSmpMb1Jh?=
 =?utf-8?B?Q1JGMlZ3dDg1SHE0WXhJbDRiZ3pKZ3M4bXIrWW82K1U5OUt0MEJLNk9maE1n?=
 =?utf-8?B?Tm9VWTM5Z3RUWVBpTU8yWmwvc2Zpbk5kdk5VZCttV28xeHRWUU5xQ1dPS1VU?=
 =?utf-8?B?M3diYUczT2lvQ0s5NEdndkh2QnV3REZIdmxiLzdyMzRBUHppeXV2eklhZGxT?=
 =?utf-8?B?RGRlREV3ampiRytyQUF2UHZiSCtsV2FQSEdET05zTjZFSTBKM2VPUDFlOVR4?=
 =?utf-8?B?SEhObU90ZENCWVdMTmVFdXR2NWtlMXUvaUlCeFg5T0U1bi9IQnhQeWExdmtF?=
 =?utf-8?B?SlJJMU9FN3BWcGNNRDJjbjcrcnB4WnpSc3ByZ3k0Uk9aek1mY3ZCbWRVaTdH?=
 =?utf-8?B?UUFWNXpjalNmWHBDWEM5dkNDQW9KVXppSy96WXBrbHJlYnBJL3JwcXR0Qkgr?=
 =?utf-8?B?Mkk2b0FNWDNZc1psVmRBZXYyeCtmQk12dXRMS0xZSGxwV1pIUHF6djh0MUpZ?=
 =?utf-8?B?dkNDaDJ5dnBsdEhRODNVSlFjdkRJaEJoaXJ2dEltRm9QNWxkZXdieFhqUm9B?=
 =?utf-8?B?TExVL3Q0VEdNcGt5ZEtHL2kvaDZhMVdyT1JwLzN4Zy9IR2tRcytCUTUwRkEw?=
 =?utf-8?B?ZlpDT1YxTEdhTGlVaW12ODBkdHJNQXhkYUxoY2V2TWhuTlMrODZnSmUzMWVC?=
 =?utf-8?B?VnA4YS9YYWNmSGxEVmhUQmM0WkJ4bjJxN1NBc2NYMkZvaks4WHFVbHNEd3ND?=
 =?utf-8?B?WHNTcGJtNldRU3haVUl1eTZhNUhxN3FiczNIZVdHeHFCa3lZZ3JZdz09?=
Content-ID: <1C5DE72EBA77ED488E9C4505BDAC59CA@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 1ItvVtsNeIRD2Ez1ssOFgMVxq8Jo8gCuDCA3QeHlTDcqqVbck118g+tSf1xJ7BakbqURBbkC0dYTjeoeOLw5F1+qaxPN6FZn8fP9LBpOtZJsSDKZFxPdD8ZV8s8l+lj8KdDb94shNyVnu+m5q9Qo4kfp34ihCsA0NpDDZaEOZ4F4jNoU+18OvOZj7vmsi/MJAVGNZPLljbdwT76RkfM+08673dhAayyJ4a6nS4nSrvmEbYjgQIN2bP629Gax+3pFmxHRkLMkbO5KF75LlKW7mCHbe4wXwUhyVmxlNsqF5kh0N5yWiopTHzQdWZVsYd9X7AHwOUayFt2G5yJiA7KBog==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: wYAjKHdMlE4U9dtd8yzGWs5y8Lp1HJAwqzgoI7hAh/I1JpPS7HN6KerjlEvwzxX4eBmV/jWaBBpTPtLiO4IV9FT0Gkq2ZiMAlHcke43zuKn69E4k6NJKid6oK3N6BqAjyv9ymmcI5ezSo6aBGHfftYgSFKiKJimiiiF1rwYl1X52GlzTXxR+1eAQZ7UfKoOiqGrk61/h0Jat6bJsvYSm8EoLm7Wk/kCWkiEz40N7OGauXgcl+UwDsapt87ZTpq1LQUD61UA+N19BHE+hCumhHnKoTTWWPvrJ8pEe4OxCHiMgHFTYYMakPVhyZzIYKNwE482HE8nZjj11V+3qlyIVko3a/lh2+cHCQhZEY6wRSbUEdFheP1iJl+F7ATQuh3lcWKvm72jY07MWZhK7OW2Cf42/5ylcB2lVtjbEjuo7CfxSENM34R3/3bpQVWF4fYCuVGNh++ATwkE2gRjQH4uhHz8e6aEEH/sKJOuL78f+teoHtCkEAtd3oyYLFSH87lT3pIw4RhJ5l6plqyYLKr0d5s3Wd4fkFprBDb52WLrJyQKOHstGVjyIPAJmdUSOc+YNGDcBK6nHPO4lU85MOVYcAZPSgWT+QMEFJXECh+DI5QyDu+lIC9gDHU00p4i7Wev+SAN7MRISVpSBXw/QDT61mw==
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81994104-c722-44d6-637f-08df0ad955de
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2026 23:07:47.4428
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z3SM3cL912t4jJ4AcsE1AZZN+2E6tQeU/B6RQ2BXwm5RQxEVoyr+QeOf9WQG1KVEEn8sTxvOcFH9SyTg5LCFQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH1PR12MB9669
X-Proofpoint-ORIG-GUID: hmCSEXFEziT8jWtRd9MKwUMg39xHJEX0
X-Authority-Analysis: v=2.4 cv=L88theT8 c=1 sm=1 tr=0 ts=6a9b4f4e cx=c_pps
 a=8EbXvwLXkpGsT4ql/pYRAw==:117 a=8EbXvwLXkpGsT4ql/pYRAw==:17
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=qPHU084jO2kA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=tU_645BZ7FZt8VqRJtHG:22 a=-4-sGo8i1FcW4KD7_GeR:22
 a=EUspDBNiAAAA:8 a=jIQo8A4GAAAA:8 a=bfaBfnu7VjR_BTuXi1MA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: hmCSEXFEziT8jWtRd9MKwUMg39xHJEX0
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA0MDIxNCBTYWx0ZWRfX2qfW1dbSUnTb
 vWcEZxvBHFue6elipHCaE74eJ/VV3J0n88BveJrxjaDpnPXVfXMAivHfMJDWIBbf5JUb1+AZ5hM
 W6rOUA0G8ET3T7twadG+2f2k27P4j2c=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA0MDIxNCBTYWx0ZWRfX9hT5HNCPyaiN
 ayBJB8TLIpl8wmJHuF46bWduCciW6rfz5bjVXMfHmYXcoPgAmCFX4Vy+hwNKEU87leCK7YU1izn
 vhbM1asB6ifVmLFiQSvR2LCo0JsNFDwT62mhzfeq4+MBk60cXrdbe400W2rqekQEoHbl1aBhf5C
 WIR83SUUZsKJiJ4a4emZ2V49AOwO2y0HW1I/tmfhR/UdC/73fiBr+ifOwO4XV2cJwnZHHQd1gY3
 1hO9KWkh45n25eo95RV2S/u7Tbfu2CTiS5c0SsHuTkecZ5sDXlDKujARSZ9E6T1y0W7mhN6ltyP
 yL7AgaTBpokSNNTs1WF/DTyGDsbZ/RW0p6TwB7hkL79zWh1GqKeZC9xLxhwHnT6bWucpqAAsrtC
 8mLgBanJZZNyANTRNpsEGPiQ2mN9Ar6KEEOzsLgZYs39Sz4o/Mv60NdHhKjdvXF2KjqPzQRiOgC
 TkVumwO6xwb5OL1cq/A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-04_06,2026-09-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_active_cloned_notspam
 policy=outbound_active_cloned score=0 lowpriorityscore=0 adultscore=0
 clxscore=1015 malwarescore=0 spamscore=0 impostorscore=0 suspectscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.22.0-2606150000 definitions=main-2609040214
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_160803_453388_1394FB14 
X-CRM114-Status: UNSURE (   8.31  )
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

On Wed, Sep 02, 2026, Konrad Dybcio wrote:
> On 8/26/26 7:02 PM, Krishna Kurapati wrote:
> > eUSB2 targets handle wakeup interrupts differently depending on device
> > speed when operating in host mode.
> > 
> > According to the eUSB2 specification, remote wakeup signaling in host
> > mode is detected via different data-line assertions based on the
> > connected device speed.
> > 
> > When a low-speed device is connected, the host repeater drives eD+ to
> > logic '1' upon detecting a K-state on the USB lines during remote wakeup
> > (eUSB2 specification, Section 5.5.14).
> > 
> > When a full-speed or high-speed device is connected, the host repeater
> > drives eD- to logic '1' upon detecting a K-state on the USB line during
> > remote wakeup (eUSB2 specification, Sections 5.5.15 and 5.5.18).
> > 
> > Since the eUSB2 PHY's "DP" and "DM" interrupt lines monitor the eD+ and
> > eD- line states, query the phy type and configure the wakeup interrupts
> > accordingly.
> > 
> > Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> > ---
> 
> [...]
> 
> > +	phy = devm_of_phy_get_by_index(dev, dev->of_node, 0);
> > +	if (IS_ERR(phy)) {
> > +		if (PTR_ERR(phy) != -ENODEV) {
> > +			ret = dev_err_probe(dev, PTR_ERR(phy),
> > +					    "failed to get usb2 phy\n");
> > +			goto clk_disable;
> > +		}
> > +		phy = NULL;
> > +	}
> 
> Looks like we don't have a devm_of_phy_optional_get_by_index()..
> 
> > +	qcom->has_eusb2_phy = phy && (phy_get_type(phy) == PHY_TYPE_EUSB2);
> 
> phy_get_type() and generally all PHY APIs accept nullptrs just fine,
> no need for the first check
> 

Also, there may be merge conflict. Can you rebase this change on top of
Greg's usb-testing branch. Other than that, it looks good to me.

After applying the change and rebase, you can add this:

Acked-by: Thinh Nguyen <Thinh.Nguyen@synopsys.com>

Thanks,
Thinh
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
