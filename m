Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E680C55822
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 21:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R1h4xd9vxFjHW0jKh5AxUmyMoQAwN9zHqmlZT33QrDY=; b=RXXmB08l15IF82
	jwuuB/rbvptA0sI2gnaspEkydF8DDBgnS5EF0D1NDAIzeU0Nse/FF7hl1ykYp7PVm97BblJ26hnDn
	nwlT/A2BjYKPFOvZx1gCJDWZsA8bgOgw/qi929+gl1ArhIC0j5BNx4MIs0QGKaF9cMIQ2Z5iOulAy
	xH8KElI/4PXIEqkG5pcqrQD0KLNzOKB5UxBPjDFXuYeqpaPqZiNBNa15P2Iee4HduGtOnfEBtLcWs
	ldutsSSO0wkpsml2IbguKhkzwT+YJNHGVR3hpiDLswov5Mj/oTGXTsrmFM/u9yqUuq2lPjYSDnoJY
	m4eMYxnKEoapGc4cgHtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrMuO-00000002phQ-2Fp7;
	Tue, 04 Aug 2026 21:42:48 +0000
Received: from mx0a-00230701.pphosted.com ([148.163.156.19])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrMuK-00000002pgj-46AB
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 21:42:47 +0000
Received: from pps.filterd (m0297266.ppops.net [127.0.0.1])
	by mx0a-00230701.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 674JpXmF1535178;
	Tue, 4 Aug 2026 14:42:38 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com; h=
	cc:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	pfptdkimsnps; bh=TjDj12dTPAHnDbKKSmbyrVTiGk7FprbmAiD3vSCcmTE=; b=
	cJgKb0Z1I6HSeTB3Hnz6nLPYm8b9dirjNaIwt9Lc9qNXYwfD4/EgkCAjcSrYXIRA
	bwBXbaigdnqgQSNqtgQldBNfXv3jAwYBAgFF0jmSjF6TnInH/7/WXHQnZ/Z/XQgw
	8pm2gJncNm/FdwedxkAWsUSPIsIj8+fiIiwew4lFMDQXwry5WJNxN4BPu5r/sAxS
	B976FOLEUhAZqL3oksop4/CCWsaO8BvRB9Dv8Jp9WhN0ozHGSo3g6ClPZZRgMSN4
	EgrwoawjLMLNWogSXh8bSi/sBGbqdw+mC4Hu8ew/3LJ5KW8p0EhqvYMaCxFh0SUm
	riuxrYQP1pkuyk5PFw3HLA==
Received: from smtprelay-out1.synopsys.com (smtprelay-out1.synopsys.com [149.117.87.133])
	by mx0a-00230701.pphosted.com (PPS) with ESMTPS id 4fuey35hbw-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 04 Aug 2026 14:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
	t=1785879758; bh=TjDj12dTPAHnDbKKSmbyrVTiGk7FprbmAiD3vSCcmTE=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=Pv2Zv5S27wglzLlNB1X/2IKGyUMH7epvADmugT7PbhWO0OctZH3h8bvX7kNgPpwIL
	 QSMQZeMsxvBw+2fVlVbYbFxQWhy73aH77zgT8R6XLeWEH1nwxUNfCkpHwLifxZrc1x
	 159Km6sA7DjIDSB5PxqZ8D+9wCrRzLVrpWxS8nCcxAJ0Zh2APvFwn4xh2j+W8V6Qva
	 i14dZnKE8VzKK0+qj4nPmej13S+LHxEZESt0lyMZeoW9VXuas9f2a9BlgOKQDb3pmm
	 Hdn7/W09bJCJS1HH2D5a4/L/2sAWdz5aHEpi5rdeJ6XY4Atv/1BILJKb5VFN5GvUnp
	 d6CuI1S9CMCLg==
Received: from mailhost.synopsys.com (sv1-mailhost2.synopsys.com [10.205.2.132])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "mailhost.synopsys.com", Issuer "SNPSica2" (verified OK))
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id CA479401F9;
	Tue,  4 Aug 2026 21:42:36 +0000 (UTC)
Received: from o365relay-in.synopsys.com (us03-o365relay1.synopsys.com [10.4.161.137])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "o365relay-in.synopsys.com", Issuer "Sectigo Public Server Authentication CA OV R36" (not verified))
	by mailhost.synopsys.com (Postfix) with ESMTPS id 736CAA06C7;
	Tue,  4 Aug 2026 21:42:36 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com; dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com; spf=pass smtp.mailfrom=synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
	dkim=pass (1024-bit key; unprotected) header.d=synopsys.com header.i=@synopsys.com header.a=rsa-sha256 header.s=selector1 header.b=f5xxNqQZ;
	dkim-atps=neutral
Received: from DS2PR08CU001.outbound.protection.outlook.com (mail-ds2pr08cu00101.outbound.protection.outlook.com [40.93.13.73])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert SHA2 Secure Server CA" (not verified))
	by o365relay-in.synopsys.com (Postfix) with ESMTPS id 5987D40139;
	Tue,  4 Aug 2026 21:42:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WHS3GSf/PUfiMaBVWgVQAZ72kv2Kx3q9aayh697NkBKfYL1sUMQTKQDWMj+oABjszYA8Xu2YHzU+Y7fViQaqCUqwGYCxxcwWm1JoU84sK1SixjqnjE0VeL5kUxjyuEFp9ra38uU44UwLnbzbP2/fn0raYwZT4C6DuA29v4a8dQynjQzxvVTuDEIl693N/Q3cMjHQ+fLXoGA650+sWL5R+tkkxbIkHdqqPy8gDnb+1v6LV/94dg0EJe66/CQS/aDaKq3Mu8l5nvkuCTzpdNnZART/J59ddJR/NL7A+Ty7XhSpmEmeQSGlC/sGGBOvvEJ0IkyrIpZ9ObdVBSQTxfIRjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TjDj12dTPAHnDbKKSmbyrVTiGk7FprbmAiD3vSCcmTE=;
 b=HhbIDgWSd+SR+YBCMC4yiM+N6Z3Z+3JCzFaT4vHRZHqOGq9j92IXjywOEC2fY0o3SGEF1dd80qOwVNRpvOeE8ErLCJQj6mXG2mHkAEez60lyhy1HnO3HWbpJxRpyAL9GScqKCtmQ1F/y9zHk1PJdWUEGIoZbwA63/JX9V7ZgB3vb3ciw1SiMbRWdpvWQ5RrAR/ledpXYpnC8Q4dqLX6F5BbqQ5BgFT+fb7sp6aF1Y5DCT9UBAB0aPlOL2wOGyot9HgCsRE9gxYNyRvb62u+NsU2aCq3qOGXelTIlk1zwBc0Q+onJeoc5hUxCN3Dyf9vnt4assuro08RAltNy6ZkNOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TjDj12dTPAHnDbKKSmbyrVTiGk7FprbmAiD3vSCcmTE=;
 b=f5xxNqQZn6IbQTtYDxf2UBYfI7IhgIhZb5Xgz2kw/ZCyO1WCGrk8EiHpMff8pmiIimLngNb35XK+cHUoRxwFLvsmmrJvf/jBbtXQYYv0TqQKX6Pgz9tcne8inn9fEWyxlqoPx/AFVAwAo4cTdTRiGdYX07RwLDDfDKk3J26YrAk=
Received: from PH0PR12MB7486.namprd12.prod.outlook.com (2603:10b6:510:1e9::6)
 by BL1PR12MB5993.namprd12.prod.outlook.com (2603:10b6:208:399::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.292.15; Tue, 4 Aug
 2026 21:42:28 +0000
Received: from PH0PR12MB7486.namprd12.prod.outlook.com
 ([fe80::7df9:b25e:9216:f109]) by PH0PR12MB7486.namprd12.prod.outlook.com
 ([fe80::7df9:b25e:9216:f109%6]) with mapi id 15.21.0292.013; Tue, 4 Aug 2026
 21:42:27 +0000
X-SNPS-Relay: synopsys.com
From: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
CC: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
        "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
Subject: Re: [PATCH v5 3/5] phy: snps-eusb2: Set phy type to EUSB2
Thread-Topic: [PATCH v5 3/5] phy: snps-eusb2: Set phy type to EUSB2
Thread-Index: AQHdGo+Q3rD3gTAIK0eH+V7Ef5oF97aOfymA
Date: Tue, 4 Aug 2026 21:42:27 +0000
Message-ID: <anJbvvONg4S6rh2k@vbox>
References: <20260723-eusb2-int-handling-v5-v5-0-f32ea6c1a318@oss.qualcomm.com>
 <20260723-eusb2-int-handling-v5-v5-3-f32ea6c1a318@oss.qualcomm.com>
In-Reply-To: <20260723-eusb2-int-handling-v5-v5-3-f32ea6c1a318@oss.qualcomm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR12MB7486:EE_|BL1PR12MB5993:EE_
x-ms-office365-filtering-correlation-id: c910b5dc-87f4-4bb6-4ef5-08def2714786
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|23010399003|7416014|366016|376014|1800799024|38070700021|10067099003|56012099006|4143699003|11063799006|18002099003|22082099003;
x-microsoft-antispam-message-info: jxAAa4jVBVQlvKqOIkobU74RTmiOxnhX2gV+u+yZdYx199dM2rTn+lAVezydzstqTWpA8fM4pt3SuMfqwe+iS2CxLKB4sDv6CblUtzJtzO6uH6dzFtLwZDXnHomrxmCbiiVfLiCCIsadgjTtSsUzwPjeIWj42a1HHRKLOUFZ55SCS9rO2FPpPscmSsEvB8bCNo3PEnPJOcNUWWJpmzr+I5g+semKYCN0P9noOWts5t6o32CQD037l6eURaVBbdVNiYpROOEyWsxEpE6RMiIWrTYaDxypEo410ymuqB/1nPQL77qG7VZ7qpccUqMlOz/1Z65CL9cYeKLPqUXBlu2PGixgUNiR4Xv3fAC1aWNPt906DgB1IQhuXpo3SOlX97wV5CnB+1up8aISI1/cY9JbKP9rR2ukGGBPwQi/k8nBHuKsplEm+8mvaufKJskymH8Sy+Xxkyy3r0ppK5Oy8F1PiuxjS6YlmLrG4OIgj1kCx4JmZGQWHnL6iEsjxq7YXxQLW7YLUd++bXqFYcbegLqS2YkklMP6BJDvQjdqANXvs6vaZ88VXoMworUteM5NovL+gt9hv+ikf41OZcVbF7swTt7jad1UFji2njeCYOgKxNKC/feucyuFZeRTXV5hFSkd65g9nqoQEbPk4xY7jR3JDo2WZbs8G5g9CfU58AyN7rGWQhQfaCKx3pFhlc6+7tibcpVfPc+cLGqm+uODDt300wnu/XSzp1p3MRiudWHcTzM=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR12MB7486.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(7416014)(366016)(376014)(1800799024)(38070700021)(10067099003)(56012099006)(4143699003)(11063799006)(18002099003)(22082099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R04ySGxBdGZDaGt1S1lYbVRPRnIxT3FOTE1XeEc5enRXQlFkSy9iUzJLZmJa?=
 =?utf-8?B?bTRpNTYwS0lqdDBaMEU5TXZFY0FsZjBTRWg2eHhVZEZhNmc3SW12by9DM2Mw?=
 =?utf-8?B?aGNNZDY5RElnWXJNQU92ckhYbmFUVTRyeHlxcU9hdjFGNTVEUzk3aG8wNVYv?=
 =?utf-8?B?RVhJQkVZK1pPQ2NiTUw3bWZVc2ZReVJRd3BndGZEaStKcHhqTHZhWjhCKzF0?=
 =?utf-8?B?eXNITFhESGVheE5ZOGpFY0pCYXJjN0ZEOXR0YjBjalFodGhrOU1sbDBuVVJJ?=
 =?utf-8?B?V2hNQXRobGRxY2c0WjlaREdSc2V4K2YvMXVEb1RTb0EzTFQwbWhyb0VtMUh4?=
 =?utf-8?B?ei82c2lpZjdLMG5vTzlMTVFkZDdrMW5WMmZjdnhRSytkd1FwR2tQeXp0Wm5Q?=
 =?utf-8?B?eHdteGk0dTRua09vZjRXRUpud0RSNTl4MTlaQlV3ZnVVdHRCem9ORi9iSkFi?=
 =?utf-8?B?SGRrbGJkYkhqWU5tcDlqdmFGMDNndkhwanpSV29iTFpXdG1rcGVmYzlEVWJo?=
 =?utf-8?B?bSsvK1h2bnZWUmlEMmlGQUt1V1pxTzdGaE1KbWszR1F5THpXV3I4U2lmTW9l?=
 =?utf-8?B?L0pwaDdxRzZ1MzEycXh2aGhabFJ4cnNjY3VPVFQzV090eGQ2SlRIcHNITXMx?=
 =?utf-8?B?dzRjaVhEQzJGMnJYMGloQ3lsbkF3RFNuZUJxc05SbEpOK2Y3SkpmUHRHcHV5?=
 =?utf-8?B?djhLVTR6OXVPNE1mVkxubUJPbVJIbk5RSEt3Tnhzc2lMK0tCL0QvMDNmbklJ?=
 =?utf-8?B?aEtnSUdpWDJwNS95ZDFCeVM5aXFndTAzUVBReFZjL3FIeDVTQndWL0d4c2FB?=
 =?utf-8?B?dTFraUtTaGtTcEx5eXg4TTBpbUVZdGJtL3ozYXZDWlBDY2Qwa3o5NGVjV1JE?=
 =?utf-8?B?cU16MmxReUtuUWlVc1ZxTnFrZ2hEVzkzT0luelJDeVAwNXVvL2VEZTdIcEJR?=
 =?utf-8?B?eDNVcS9SVnNNNy9wUStaSHFhWDV3ZWtTWGw2ZDZHYTBjQkYzZjJnUFVTNks3?=
 =?utf-8?B?UFo3TThOemVDL3NQN3JmK0sxY25WMllkZ2pjWm5PdjUxdTkvOEJ1UDJJU3lR?=
 =?utf-8?B?ZGZPcHJNbTVzSTdtYlN3L2dEZVhHOE43V1ZSQ2Y3ZkdvdE5GbTNRS3JnemhH?=
 =?utf-8?B?R0dMRnJZSEkxU3N0RHFiWFgyc3ZDOXMySnhzSXkybWVPSGhhSVN4V3RIMnVZ?=
 =?utf-8?B?NExpQjQzU1ZWZklpWTBjUkFpb3J0Yyt5RzlOZ0UyR1l5dUsrTmljMWl4M0dZ?=
 =?utf-8?B?WHJYOXhBNmxGQ3JMVlFST2dObmRpbmJqaTJLRnY2MlFoSFFPU3pPbm1DeUFm?=
 =?utf-8?B?N01wek9QMitwYjJCYUtpb2pKYnF3QjBFRXl3cW9YYTlQdE1HeVhERUIwaDhD?=
 =?utf-8?B?bHpXZWZ5SFJGQ1ZKRk1rRkxNYVBDdGVBKzYyQ0NxMmQ0OU13WnNtZ2YrRzZ4?=
 =?utf-8?B?WUlSeUtUc2IwLzZOTUZSa0xCR2lzWGh4eENZWDhPQVA1ODZMQkFWRDJ3S1gr?=
 =?utf-8?B?b3VmTnVBVjFhZUpJUGlGaFhjOUs4cnFGbEtRSnVhQmxmalMwSlFFVjVxMW9S?=
 =?utf-8?B?OWdMS0dQem1ta1BFaVA4ZWd4NDg2MVhWcmNlVG9UM21lZEhqWVNWN0VvVzRQ?=
 =?utf-8?B?WTErZ2w2OU1hUkhHb2NtQjVXTkE4WUVHSWh1SFFjM08rSXlLekRud3YxeUVY?=
 =?utf-8?B?KzAwMkJhbUFKREx6bmdpdnYwUjAvMFU4SnRoZHF6akZvbi9sY0Z3bkd1a1JU?=
 =?utf-8?B?RVQ4dVFMbzR1ZzNTSXVJSktqaHl4MVllem0wUFowM05pOWJMSW9KVFM5d0Nj?=
 =?utf-8?B?YkEwYXFPY21wc01qSjJQUkdLd1VVQXBtY1pMNFJVWmVOYnR6aStEdUg3Q3F2?=
 =?utf-8?B?ZUdNY2w3OUdGZDgvb1lzQ2h6bEtlTHJTM0kyQjRVcVJGeVBTZUxTT2l6UTdX?=
 =?utf-8?B?Sm8xN01ZWHNiY3R0dXJBRGZmNnB6YWhnYmZKSVVubXdBRVlyLzlqaFo1WkUr?=
 =?utf-8?B?VlRmcnpPajFzN2w3UUt1K3o0WVo3em5IWW5tck52dmQzemk1V085em5Wdm1T?=
 =?utf-8?B?N1ZnT001YWdKU1FVWEtWS0wwclJpb1JhR2ZER2NkdTlZdlNOTWZWTXh4dmdr?=
 =?utf-8?B?TllsQUFGNWwzYzZYZE5BemJUWVFGVC9QZHR6UHdaUVZMa1JnT0N0bklzc0VJ?=
 =?utf-8?B?clE1SDcrQmcxOUJ6VkRBeS8wV21xZzl4QlJNNi9ZdDQ0RFJyM3JVNllvSnhO?=
 =?utf-8?B?R1MvdmJLTnZ1Tmk3UlNNdmYrZGNyNWkwRmxIemhINDZTc1Q0d3FOcEtWZUJz?=
 =?utf-8?B?dm82eStPMGdCblI0aENUYWQ2Y1NObWIwL25ZNERuemVEUkQwcXdhZz09?=
Content-ID: <6B1DBA3E129DB244A340CA48222FC754@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: W8kmp/oafeByy3cxnRLK2HARqV4pqf1I+AaRqwf7OBUjVga0QMxMmTvQDwk9BsfoEcx7VMFor9WM8lQLAJNdwfvDM1eGL7jrmqsJHaD3Q2ONPHQp5ib1PaIplax0Bp9ase/38ykgOP3NnUtjgzLqwNR8Ii1yzTE5IjEkga2WU19NYQuLzpAQg9aZx+g1YWwA4ie2CMlnrGeGFe733eG1iKL8iHtYmGdoU46idCVphRA4H8aRzKnrzuo5BmwOgm5+h+FBBbTIuvKdXkXCdGSabY3+gqLTBQHg/lVUMC3CvhZUzrb2bpJSfUOWICVIxueoAtV0AxWQwyAI3usyeLuOFQ==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: dFQvbisdo8WLzqlzarPWdVuTr2BQMAalVK/TQ8yb0dEFkE3+HE/HVQ6PkYE8HFa+VRtDDdjpz4OGiAFX4sGWGsBzgllau1bz15atfwssfPckKoVG79Lv5ntxAK4JmbxUUSHVpxh15oM7EvGkdQt4nT5Pol1nrdWowayntUch3EKq8tAMg+VmM5aTjPouk/eUOTxpMYLebWqSAaAOi4ANN9FtAqZieiO40AyAjapsKp3Ud5qZlwm7/vaQfWqSxOLnyF1k+8ZnXmkfXL4RIX5RomXrzzKpyqHzm39e1g9Zqm90JJ/ZwClZJispEarVVAFIelE2gDVEfqUgfxBR/4yMaddm9rbojgLXdcx3Y5x/J09qN4c5JvrNgoihxFsbfwYzZ7mZtAMnZ27Gj8eNzzEtxHC2mvCjnFuc3tDtsituhTCI6CSY6b2YJsLRH/gVHeBjfy2GWO9VH2E5+z1qBMRYiELucf6+HGbr+muR7+brxzCnL+fWwhVo8pqY5dLg8o2jthKb3hfLGYYOqBL7aRk9OxypGeiMQ2+vgYnkQFZlPoygsWXfn39pwGteqwJUlZKDD5pk5lQVvIkGfMH2TrwjAjHOD6CmXbextVn+ktb4sWWYeKKsdzB15SjsUAU7uKPZ3eztBd0OQU2B648PA4OfCA==
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c910b5dc-87f4-4bb6-4ef5-08def2714786
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2026 21:42:27.7288
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: roDy449t7BiCxYlS54c67Zd5Cz7v90ALdqF1hybu252YZLt7Ciis2UC1BL5kd12P3jiViYDUHLjAcaVZmyFfYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5993
X-Proofpoint-GUID: lj7tEb8qPIvR_nKunIXekTQbAL5wip5o
X-Proofpoint-ORIG-GUID: lj7tEb8qPIvR_nKunIXekTQbAL5wip5o
X-Proofpoint-Spam-Info: AW1haW4tMjYwODA0MDE3NSBTYWx0ZWRfXyefiLn9QJRlZ
 Bv6Kviip60zL+4WpwEKTdrtpAjg45mKNNbJMqAfirH5xleFhgs3Uu7HjtuhrEuQT4QX5lN+a4ll
 OqL2WnOEG6+ZRwtzy8Y6TVmFUVP79ak=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODA0MDE3NSBTYWx0ZWRfX3o/7okgylFSB
 qodVMPJR6LIYRmz+JQuSv3vv2kAPk5fpL5ASH2F5Jy2SA34Q+4As4Xqat+rrUyJNHoETm9pv9HA
 DHoMmWW6li2VlFZG9Tj4Il8a4aIjKpuxfclY5jUruXQ1cuTR8x0CbJL5fnv+GnEvroLBoiUak2E
 li872W3FNwP8J9WjA2atKmgaYyAtGDqvU1C7u2shR0+/3utgSbYNygRMik2Fhskg3uYVyGXl4uj
 ROCQP6PzSD6iJbScuuDGfF+rp3eRieLq6xWBWsiSDwyppU9C8JombHEBZqSvhqvSbag6sajOpRW
 ie2z4VZN9BScH08lxSauTjFjFUir5pXaKUHovNFF7yxKi6grneW1dlAysuOdkwnMBaTTyPHKIES
 pUvLhqHV0tu9AhW/+RkZwSz3cKU4Gbp7nHdSKdW8JMVOibOV9iqg+4vvrkBdNXxkOU9xagnDbOR
 8lsKlaf1DCV9ZyOEXmg==
X-Authority-Analysis: v=2.4 cv=DvxmPm/+ c=1 sm=1 tr=0 ts=6a725cce cx=c_pps
 a=t4gDRyhI9k+KZ5gXRQysFQ==:117 a=t4gDRyhI9k+KZ5gXRQysFQ==:17
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=qPHU084jO2kA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=tU_645BZ7FZt8VqRJtHG:22 a=Wo6YDfOMAEstGd-0DxeT:22
 a=EUspDBNiAAAA:8 a=23XBheDOh9l64XbXjAIA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-04_05,2026-08-04_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_active_cloned_notspam
 policy=outbound_active_cloned score=0 malwarescore=0 adultscore=0
 phishscore=0 impostorscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 priorityscore=1501 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.22.0-2606150000 definitions=main-2608040175
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_144245_048377_10DF2CE7 
X-CRM114-Status: GOOD (  10.60  )
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

On Thu, Jul 23, 2026, Krishna Kurapati wrote:
> USB controllers like DWC3 are agnostic of the kind of phy (USB2/eUSB2)
> connected to it. Set the phy type to EUSB2 to let the controller know
> the phy type when queried during its probe.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  drivers/phy/phy-snps-eusb2.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
> index f90bf7e95463..e139b17bcda5 100644
> --- a/drivers/phy/phy-snps-eusb2.c
> +++ b/drivers/phy/phy-snps-eusb2.c
> @@ -13,6 +13,8 @@
>  #include <linux/regulator/consumer.h>
>  #include <linux/reset.h>
>  
> +#include <dt-bindings/phy/phy.h>

This is already included in <linux/phy/phy.h>

BR,
Thinh

> +
>  #define EXYNOS_USB_PHY_HS_PHY_CTRL_RST	(0x0)
>  #define USB_PHY_RST_MASK		GENMASK(1, 0)
>  #define UTMI_PORT_RST_MASK		GENMASK(5, 4)
> @@ -597,6 +599,8 @@ static int snps_eusb2_hsphy_probe(struct platform_device *pdev)
>  		return PTR_ERR(generic_phy);
>  	}
>  
> +	phy_set_type(generic_phy, PHY_TYPE_EUSB2);
> +
>  	dev_set_drvdata(dev, phy);
>  	phy_set_drvdata(generic_phy, phy);
>  
> 
> -- 
> 2.34.1
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
