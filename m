Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71ACFCA0EEB
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 03:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZzeZ1N8pO3GX93E3wxaCfexz05RfaXliH+sLlfIroQk=; b=s37hmgxKfxnwnF
	RirF8RU3DkvfI4pFjPExbWbw+rdRuY1f+Lt5pGCWOcuQLg4YvA1ftPG+rS/7FGqgj1j6yXn4yL1hD
	Azzr0z6PR5B7QEmV3JeMpp0N/1TznHzru4Z0fW484u/4kco7e8jwhTQdOylbQXBaHT+xSDLrOfbCw
	ug94OMgFc2qCDwsg/1Z58Y0/8rXXhtxkpc1R4GxJX1lZDfZ8o8/YtW4QED5+uPn3mdKf11LcCESdp
	lZiSbp9qfPP3t/kSS6OQl7SMaHNmIgLvIDqizFiayJ9BvDpAt24LrSsLtb8OZ3iEp9pFtH4ALp6V8
	1h4aRgekrf1OzQPHZy0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upIg5-00000001QJv-0rea;
	Fri, 22 Aug 2025 03:42:57 +0000
Received: from mx0b-00230701.pphosted.com ([148.163.158.9])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upEfr-00000000w2z-1e7G;
	Thu, 21 Aug 2025 23:26:29 +0000
Received: from pps.filterd (m0297265.ppops.net [127.0.0.1])
	by mx0a-00230701.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57LNMKPX007842;
	Thu, 21 Aug 2025 16:26:03 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com; h=
	cc:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	pfptdkimsnps; bh=IAcSaCsqP+xNDijQ/WfUJifB15IsbaT9axxHGhO1wAM=; b=
	UUByNlkODYCJa5HNLgMbtlgqGYS6BCkvYeXxuucXN6yqljsZEsz9gE2nWTWtAz6f
	8/Ee5T3cly52IpmaDRSpqnmHsF/EaF6W6dUI1Wh7EKKEYHmdB80HfDfqkepdfu9Z
	E3OeSTCnYIZdp8ps0drgS3RtzlC0nmD44c0kkgkBQg1aAWv/sVZzRGCBuC0vw1rW
	WdUcpXqX+dJr1rlbYbqsBAerlfmt90dMNooeDMxJnw8ciETvN+teZKRRUcsfs+rL
	qgWmjjk2gFJhgtAEGvNprZucBq0jnBIcqV8OMqaEdovlGvSQzR/JHLThHvsywN1Q
	cSoXHl1+B0He6t8WA5NDqA==
Received: from smtprelay-out1.synopsys.com (smtprelay-out1.synopsys.com [149.117.73.133])
	by mx0a-00230701.pphosted.com (PPS) with ESMTPS id 48p2grb6cr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Aug 2025 16:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
	t=1755818761; bh=IAcSaCsqP+xNDijQ/WfUJifB15IsbaT9axxHGhO1wAM=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=PtRLkpZvmnoWMtVNq3AsVdu989Qcv7bKChZ3E/txqFqwmRPSW5JDuhFOKjwNVOoJR
	 z/6Cdn8Ewb80tDJQXPywsWxU1vw1cVlFrAJ0O1TScupk7aGMcoXQHWNioK9CFhT5k5
	 EtcaRPebW4dZub75LiZAF2vKUYYMoKPOe3Sz0W18fbrv7khB9gmqZvrDCVK5sQVnx8
	 Kqhy0DRSSHTi6SvUhPGP4lDg81mNtylMLAZmiuPSaRanEGvJCweu44er7dvxyuP8DF
	 PWboJqM/yRb4zP3Wp6X+0RxNVj6Pwyz0XHFIem3HJ07e5bSXoek3y0ENAyetn4o1VS
	 TkIgD0v7sMQAg==
Received: from mailhost.synopsys.com (us03-mailhost1.synopsys.com [10.4.17.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "mailhost.synopsys.com", Issuer "SNPSica2" (verified OK))
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 55F2F4035C;
	Thu, 21 Aug 2025 23:26:01 +0000 (UTC)
Received: from o365relay-in.synopsys.com (us03-o365relay1.synopsys.com [10.4.161.137])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "o365relay-in.synopsys.com", Issuer "Entrust Certification Authority - L1K" (not verified))
	by mailhost.synopsys.com (Postfix) with ESMTPS id 64596A0073;
	Thu, 21 Aug 2025 23:26:00 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com; dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com; spf=pass smtp.mailfrom=synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
	dkim=pass (1024-bit key; unprotected) header.d=synopsys.com header.i=@synopsys.com header.a=rsa-sha256 header.s=selector1 header.b=ShjNBxb7;
	dkim-atps=neutral
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam02lp2040.outbound.protection.outlook.com [104.47.56.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert Cloud Services CA-1" (verified OK))
	by o365relay-in.synopsys.com (Postfix) with ESMTPS id 9552E40174;
	Thu, 21 Aug 2025 23:25:57 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=me4L6qqVOUR7aiZkCmkCfMb5o6126Nzm88Fts88uLmoOuBDXKs6QRSWVhRPvxmTNjBfdYDsgbuXMEf39XKOPHz8Xn5gkCeQ8bmvap9/P0oI1aioB+WnpPiLphGmVZ6kijXsWWpL7PYbHpGKnUviEdBTLBzlMBrb03HWempvQIrCyhCbYEoAKzoHvS7VfnDxg0VUYwjJoyDNm1ZFh/MVGDAoGC+G0aMgxuCVs5ORUSWsy4+Qw36vthEtcotVmy9zLWYZ13WnAisA+vudV8E3uNcpR09iEWMlAEPNEJA4NiBKFUzZGvLamAfS6nF3Q+gA7n24UFtm243WlYvChNwGcRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IAcSaCsqP+xNDijQ/WfUJifB15IsbaT9axxHGhO1wAM=;
 b=Gquxot+yPIogigIW0di61/wFVDi6D/iDePZNGuCYjFpIfkbWtPP+Qq9JP8MRSWWLmOj8XLdCxNEg6iGcsOAT8sueufO7X9/sYxsDsK3/Ove9106BZJunQCzUJJEDlJ3a+TqS79VHdWshmYDHJIf3qdOTblpeIZIkTzdHMtx0ErHM1HGe8Z20VjYffWQKGbQyKRgviLeWQK5WPAhAIQq0fbmHryk8QPmEFVq0Hk4x3J1KoPVF4g4dfeXEenWzEr7O/m92V+rWZGhnNYVRyp5teNXARfA8FjI2py2p6Pnl/Nw9shQpCXK5orVDAaP/ay67qxAybiFl4ed9Xu4Fb83V+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IAcSaCsqP+xNDijQ/WfUJifB15IsbaT9axxHGhO1wAM=;
 b=ShjNBxb7HW8cw2Lcm9hVsRlkL1Jsa0BmtO1PVCPaZEBNM1H4yljYtGxtrzKvf0M4RonF6FbsUDRoirEpCyUrpdGEwYaGauXzIvLkFgHOWpNvdvNENrx1A20S42Zx/gI06iMX+zs/IG0udRNMjWuFUNuDlrwdsscIuDzj66xcHwQ=
Received: from LV2PR12MB5990.namprd12.prod.outlook.com (2603:10b6:408:170::16)
 by PH7PR12MB7305.namprd12.prod.outlook.com (2603:10b6:510:209::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.15; Thu, 21 Aug
 2025 23:25:52 +0000
Received: from LV2PR12MB5990.namprd12.prod.outlook.com
 ([fe80::3d09:f15f:d888:33a8]) by LV2PR12MB5990.namprd12.prod.outlook.com
 ([fe80::3d09:f15f:d888:33a8%3]) with mapi id 15.20.9052.014; Thu, 21 Aug 2025
 23:25:51 +0000
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
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
Subject: Re: [PATCH RFC 04/22] usb: dwc3: apple: Reset dwc3 during role
 switches
Thread-Topic: [PATCH RFC 04/22] usb: dwc3: apple: Reset dwc3 during role
 switches
Thread-Index: AQHcErHjYWp/DJLz50yFjSgGSmwaTbRtwHSA
Date: Thu, 21 Aug 2025 23:25:51 +0000
Message-ID: <20250821232547.qzplkafogsacnbti@synopsys.com>
References: <20250821-atcphy-6-17-v1-0-172beda182b8@kernel.org>
 <20250821-atcphy-6-17-v1-4-172beda182b8@kernel.org>
In-Reply-To: <20250821-atcphy-6-17-v1-4-172beda182b8@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV2PR12MB5990:EE_|PH7PR12MB7305:EE_
x-ms-office365-filtering-correlation-id: b2af6a2b-0bd8-44c4-0d21-08dde10a11b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?RjluRjZuMUkrQzIvdEZzL09taDA3VXRiaCtUYUJGaEIrQWxXKzNSY3NLQ1Jq?=
 =?utf-8?B?dGpibTNrOStzN1B4VHpEd3gzTitLOHFyYjRPZDRidDdZL1VhVnZ2TzNJZU56?=
 =?utf-8?B?b0liZnB5cVNBTFdRaTY1Qm90NVVlclJaQm9JOWRuSFpGSlVaQkxGOTZQM2E2?=
 =?utf-8?B?d2lYVlM1VUF6bWEzMUpzL1BFVytVaEdqOVNLY2diRVBCVEF3b0ZFK0tkVDNq?=
 =?utf-8?B?R0luK2NEUjNWWGJQNEhHeVJrYWtFNkFreEs5d01HR2QyK1gvMnloMU0zdE1j?=
 =?utf-8?B?VjFrSzZSUTI0ckt1VGx3VEErSEhkOW1BNGdZUDNMbFg1eWZPakJWZmxiZFNS?=
 =?utf-8?B?bUpJMVlwSDN1RTY1UzdxYjFQTlRHaWZ5Q0pRQnBxa0VBOHpoZ01mamRVU0Qr?=
 =?utf-8?B?RTFSRWNScUxKYTJ5Mi9aaDdUSGhwVjVVRTFyeEcyYXNGMkozdnRNSGprdTR1?=
 =?utf-8?B?NFNXMDVGdnY1ZWN0VGo4dFdXYi95cjV2OXNYS21WTWxzaHR4SnJHTU9WMGhl?=
 =?utf-8?B?RkpYaEtmVkw3UEljYVloTXdQVUp3eWdMbnc3NFBFbzNXSEpQdWV3d01qU1dV?=
 =?utf-8?B?SXJIdC9JQ2xyODdzWGM4cXBSMGhGRno3cjZDN0JFMHBKcFBjYVVEcGZvbzJE?=
 =?utf-8?B?d2doK1pWdkxlamNWV3ppaW55YnRCcDcwM1FJdlE0RGRhSzRzaFF5cm85TDlM?=
 =?utf-8?B?SWhOUDk3MzFORUFDOHFOVnJUc3BKUmVjelp3bGpwZDNoZEJIMHlQZ2d1MzZF?=
 =?utf-8?B?NFJVZThwaDUrVDgvM0NTRGZhOU5yQ3R5TEpsV0FESEdEVnpRQlZuZU9PWndk?=
 =?utf-8?B?Sk9PanZUb0N0UHZNUUdqeWIrQWNTSU1MUFBhb3Z2Y1Q2bjF4dmt5a2lFMlVL?=
 =?utf-8?B?K3FXdUFDVmxQRU15R2dQWkFwY0p4TURtU1FVQS9rNTBDQjJkelJvTGtJNkhN?=
 =?utf-8?B?U2poaGdnM1RINzZTcWs5OTFTYnhTaEFKSklOWExiWjVwS0RHMG9pTEYrM0ky?=
 =?utf-8?B?MW1kbFZBd3ZBd3czU21VOEw4dTNKb2kvQUwzYkZPeEc2dER6M2NucndpQ3VR?=
 =?utf-8?B?WjlqZVpFaXJ6RXhZd2N4SkFRKzJRT3R5Y1kxdFphRlZyZHA1VEdHL0U3SXI2?=
 =?utf-8?B?S1RmTnYvSG1tYlE3QjRMWWIrMHdZOW1LaUJ0Unora3dQK29sR2xNK2xoMFI4?=
 =?utf-8?B?a1o0Yk5GMzdtVUNQRzZmVmR1dk81R09IdXp0cFNScE5GemRoNUFRVVRHQlZN?=
 =?utf-8?B?UlpTUkFNdjFXeXY0Y2I2cFl5MFRBWHVETFFtbFNBS3dsSXZvb0hWbUxHdHRC?=
 =?utf-8?B?TVRTeU5rMlJ2clgwM0JpRU9NZjJyVmFHbUw4ejBXeE1kV21YdWFwT1F6WEhn?=
 =?utf-8?B?RDFTRjdRVzZ5djNTci9weEFLSDVaZzA4aStweFNicHVsR0hqaHBkWmtkU2VF?=
 =?utf-8?B?TTh3a1Ara2ZVVEQ1aEtrRFFaZnQ0am1kcGMwZEJLSlZtN1RodmwrMEdhaWVr?=
 =?utf-8?B?cU9yOWRHWEJ3UE5ZeXpPdkw5WjUrenpKbDFra1RNTFJnT24yUDkyTTYveWlq?=
 =?utf-8?B?WVozVXFwQmhMd0FVMnB5RVliRUxiNGExLzF6aThMVFBDVHlabXkwa1dTYUxH?=
 =?utf-8?B?ZEdPMDBBby9SSkRJRENHdUhvQkhoZHZXMzZyZ0JqbmQrS0lQT0ZmN3VEYTFO?=
 =?utf-8?B?Ri9hdWtPZE5RcmkyOWtPWERUbEhYZEhyWDhOeENvNUZrZ09rRjZnUkxHR0U5?=
 =?utf-8?B?bVFaOUpVRFRRQ3NLM2JzdHZESldCM0tlcVY4YzgzTzZnbmtLSjh2b3ZYbEVD?=
 =?utf-8?B?cnkwcjIzSXZnREZwQ1A3RVVFa05FbUYvdmJZMDltQ2tHcE94Z1p2TGZxSUdp?=
 =?utf-8?B?NTVOUVBMZW1iQjFQZTU3RFZUL25JekRRODlRemx1QS9XNlZYa3p3bVJ6NWMz?=
 =?utf-8?B?RGZKMWMyL2Q0L25ySldOUU5RT3RweUN0d2dsZ09qV3M5WlAzNE9rckI0YkE1?=
 =?utf-8?Q?VnFBDMpiz+US3uI3jh64C1ZyTAr4yk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV2PR12MB5990.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RTRhNjdHUTN2QmNvZk1lV3hZcEp0SkEyRkZaUHkzUzFPM0lWWnVoeHVlN3Fu?=
 =?utf-8?B?eGJnTGY2dzNLcG9WdXh4K2laVXR5d3VjcloxMU9LOEt0S2p2YnZMMzVJdVRi?=
 =?utf-8?B?bFRGeCs4bXhFSFQ4N0dodFBMcHJiblZ0TkJodXNOSXRSN3ZwcDJ1dnpZU1l3?=
 =?utf-8?B?S3kzZGNjay9LZ0JGNHJiR0svSERrcFNCWXk5N1R0azlLWTFOUWxKZGVWU0xl?=
 =?utf-8?B?cE1malRwYmFJbEZyR3ljNGlZWE5GM1Q4QWVPN2lFUnVTREx1Unp6NkRGY2Rs?=
 =?utf-8?B?NUMzTEVPVDJJdENpYm9TdFJlUEpzai9hTW5lTnloWERWamtZb2tsSmFJQmdj?=
 =?utf-8?B?a2FDbFhsb1hmOXV5MTJBcnpEVnJYeEhZd1FOZ0xid2N4dGtxUTcvRlpyL29Z?=
 =?utf-8?B?aGxzWXZ1SEdGZCtDRjVnK3JwdUlNQndFNm1hQWI2N2NKbFIxSEhuNWY4aXor?=
 =?utf-8?B?TmNBcFJGNGgrZ0VzemdjZkQ5YklDSUk3NUk4bjQra0pEUkdibThnU1lJRGxK?=
 =?utf-8?B?VU1zVFdaQmtSeCt1eWt5dStnMHJxZXBFdS84OVl0TjRXREdRY2RhQnFzdXlt?=
 =?utf-8?B?UjFjNVVmWVlDQTJpY0c1NU5GNzFseEQ1QjlDaStwdHZzYnB5M1R6SjdBSnhY?=
 =?utf-8?B?NFJZNlJSeDEzMXkreWc1T2pEWXNWciswMFRLRTN2cTI5NlBGNE5OWHVSTlFn?=
 =?utf-8?B?Umduam5WTGY2RGNCdTlpa25mY2pDbWRzMXVJbnVTT0dEUS9ld2tEZlNwNGg3?=
 =?utf-8?B?aDdXZEttTVF5MkpnQ3MxSGxGMnF4ZjdYbXFnU2phNDJOL1hua0VCSlo5M0Fr?=
 =?utf-8?B?anFIcXRTVEJVM3NteUo1SHRCeHFaZmhSSVFpWUhCU1RMQ2FYaEt1bVBzQ083?=
 =?utf-8?B?U1NBN0twNnl5TXlKRXVENGdKUEhSN0xZSjNsamVtbVA5Q0pYS0ZnZmQ0NUxt?=
 =?utf-8?B?eUxRTTJ2UU40Zk51SG1tVkxjQUJ2MDN4S0dabmpBUnhpYm9taGdBT1p0QWMv?=
 =?utf-8?B?V1A5YUhLNitPYlV5b3ZwR2FjcUs4ekNmZkhyV05NWEZacWJ4bW91bmxUbStl?=
 =?utf-8?B?WERKT0ZDa0lhMWNHNXg3NFZKSTlia3NJZDYveGx6Y0VnamVDMyt0UTQ5M1FT?=
 =?utf-8?B?ZWMvL0V0dVFKQ2FId3llSjRoaEpxcUkra2FhV2psUWZvcWV2ZUlHMnRlMldW?=
 =?utf-8?B?QVJoSkdlQVdRMlhub3YrQ2czWEhUV2NnVVhrTzJlTVdnK2dCQTlkdXl1M0ZJ?=
 =?utf-8?B?bVoxSUV4aWtWWlJPVXoyL1VUMkc1VUEvWUIvL2RwOGloL3V6bGlIUWt5ck1j?=
 =?utf-8?B?UFJiZXpxNk9sTVhQZHowVThBR21jZEQwYTBEWnRraStLbjNBVmV3bTQ0TE9z?=
 =?utf-8?B?NW5kQUhaRkt3RWpDZDlmdlZ2b09iUUpmZzJkUTNUc09jZ004V2p0NG5wY1Zx?=
 =?utf-8?B?VG1IUGhHYmttSjdXMDhFV2t1dlM1Z0Y4WWhPSWM1RTE1TStDNW9CajRFVHJ0?=
 =?utf-8?B?aFVLUjdWeHQ2SS8zNmR6M2J6RGtSd3Z5TlZUeHFDVTVsVXNmZmlHSjU4ZzJ3?=
 =?utf-8?B?QnVZTUpXNW5CWG9Nczh4TWwrdTFrRUN2MzZzYVpsd2pGanlHREtzc0pMNXB5?=
 =?utf-8?B?ckJhazk0SHoxcXZpVUowRXY3TTVMMFJHSUIwRk51aTd6Z0piWXpwQmxPSmJj?=
 =?utf-8?B?STFVWGtqMzRrNlBEVzU1SHlHemFJd0d2cVZJcG5CWWVjaG1sWUlvUnB5YkpK?=
 =?utf-8?B?ZGswcFovOERXUkYyd290a0kvUndQc0wxeUxDT0M1OEJKM0lJSzJKVXJkREVo?=
 =?utf-8?B?WTV5R1dXbUJHUHBvbU1zZk5CaE1qRis1NHc4M2VjYU42bXRoRlMxU291UmMr?=
 =?utf-8?B?YUJGQjVFRkxwdTErdFhMMjUrZ1JSK3J5dHhFa1ZjRENaT1lSL295OWt3ekpk?=
 =?utf-8?B?K1E3NzJYRVRMUlA5ZUZVOU5yOU43NWRhMnVMZzlDalhaSEpjZ2RKYmljckdS?=
 =?utf-8?B?Y3RwVlBuaVB5LzRQQW9tTXFJSmZqZVJZVG5tOEJDRUpxNmtmcHB2RkVnY2JQ?=
 =?utf-8?B?UVJTRjhhREFWcXlqYkZHRVl6ekQzTDM5OGxPcXV0UDllZVhGMEUyUDZaWW10?=
 =?utf-8?Q?U/yfBGeN3RoWuyxJqV2I5+z5z?=
Content-ID: <9A021A47C537F241BD8888112D69BB6D@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: MsptWtOjL77r4X9zzildxPYhp8W6y7aWO35oEPoXECihAI2cSugO+MxXlNNi3aClDwilhonnbFNDmioJoonYlkp5bZU2fybqJHfAntYrCdXX+DiqpWagRXNyr9gN6Hu/b0GzryjZ01e87CgDwAmHSKLUbcXUF8eZNCNdSPtFjdB9/PdZjNgyVm/bCN/0BilXfBHgoDQMPSMRTrhhGvV/Cl1WqLUkmlly1aD/v0lT8ZcSY4pOfiC1iyslNtK3Lt+qG01S2vfnzhv3zgMcbhkUswbYbxuDj6Oc3Xdc06x/wcS8AEKd8RdFnbbe2gnhffG5FBut7vaAvooZwx9DGcPLNrFDnpRU1j1DEpsDG42KbJY16H+wXzULRoBaUIUDGNUEQM62Lo8FP6zNnG/2A3YGJhua5zOeDibtg8kuXO07GorXXyfCQG6gLzEi7vPXfwZG0mmAzdH6RUyEMSDG5WPApZgk+QTNfTQl3334ZykhT7QSItjcM/fFw/XeH287bt4St9rTM4FdY6cwAYD36J/vCER9+qP9i+QmzYA6ehT2QVJke/vnFqM9yBiqjG5osUtaMl91Pq1JQOscKKEK6Rcq3luuJ4O3fpd2voXEtcmRN15MusC8fR5OYDVEQI2rfndOsbFfUTazOvxdJXFP7hD4rw==
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV2PR12MB5990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2af6a2b-0bd8-44c4-0d21-08dde10a11b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2025 23:25:51.9253
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mu782q+kVIfvfgBvNG8HCdL4YApsa1tELCqbkzFNm/VwA63qlyzVvTmZRkrWVMKldzicEOQjgwbo0mjogfa+QQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB7305
X-Proofpoint-GUID: yZX6qioDCfr2yKUuz2jYYJ0knf42WL8I
X-Proofpoint-ORIG-GUID: yZX6qioDCfr2yKUuz2jYYJ0knf42WL8I
X-Authority-Analysis: v=2.4 cv=SOEblOvH c=1 sm=1 tr=0 ts=68a7ab0a cx=c_pps
 a=8EbXvwLXkpGsT4ql/pYRAw==:117 a=8EbXvwLXkpGsT4ql/pYRAw==:17
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=qPHU084jO2kA:10
 a=VwQbUJbxAAAA:8 a=SwCho7sAO_BpSnubJl4A:9 a=QEXdDO2ut3YA:10
 a=cPQSjfK2_nFv0Q5t_7PE:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIxMDA5MCBTYWx0ZWRfX0Sg9YRN9OPki
 0cgUhS1+57p9VfXBcY4iMeJAETJ/W1b8Hxf25bssDMc7Q8hLr0Nn8o2iDkGNRPn8dSuszYMEWw1
 7Q4FIxtPkbhh2vAVz+k9aN44Uu6Bzk2mWXx1WyGi6fmP7cX8EiOCqZLbR2qFO2WdwwqgVltICgc
 yqK855/GwhMhBFK8kGKjh+4MlVvb1KjNzhHS/899tqbhOsgmctQoQQGFgZ3uLUp8hPtdQff9vnk
 m/AagSzu8Ea/E/2jzYdVzztGg3yss94zKFcjXpd6M/RwH2xH3JQNdne2Njd7B0izMdGkDrlhbfD
 RouiVvUf+z5PX0PH4JtnEn6UDxShWM9aHjkH65gMSHItGw0ovzBq8QyFkBD4o9fBQEOdLYPtbLN
 8ui1Kn3AA1CGbaecdsGZcmbMPu/y+g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_04,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_active_cloned_notspam
 policy=outbound_active_cloned score=0 priorityscore=1501 phishscore=0
 adultscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0 spamscore=0
 bulkscore=0 clxscore=1015 suspectscore=0 classifier=typeunknown authscore=0
 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2508110000 definitions=main-2508210090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_162627_592571_31966EAA 
X-CRM114-Status: GOOD (  10.64  )
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

On Thu, Aug 21, 2025, Sven Peter wrote:
> As mad as it sounds, the dwc3 controller present on the Apple M1 must be
> reset and reinitialized whenever a device is unplugged from the root
> port or when the PHY mode is changed.
> 
> This is required for at least the following reasons:
> 
>   - The USB2 D+/D- lines are connected through a stateful eUSB2 repeater
>     which in turn is controlled by a variant of the TI TPS6598x USB PD
>     chip. When the USB PD controller detects a hotplug event it resets
>     the eUSB2 repeater. Afterwards, no new device is recognized before
>     the DWC3 core and PHY are reset as well because the eUSB2 repeater
>     and the PHY/dwc3 block disagree about the current state.
> 
>   - It's possible to completely break the dwc3 controller by switching
>     it to device mode and unplugging the cable at just the wrong time.
>     If this happens dwc3 behaves as if no device is connected.
>     CORESOFTRESET will also never clear after it has been set. The only
>     workaround is to trigger a hard reset of the entire dwc3 core with
>     its external reset line.
> 
>   - Whenever the PHY mode is changed (to e.g. transition to DisplayPort
>     alternate mode or USB4) dwc3 has to be shutdown and reinitialized.
>     Otherwise the Type-C port will not be usable until the entire SoC
>     has been reset.
> 
> All of this can be easily worked around by respecting transitions to
> USB_ROLE_NONE and making sure the external reset line is asserted when
> switching roles. We additionally have to ensure that the PHY is
> suspended during init.
> 
> Signed-off-by: Sven Peter <sven@kernel.org>
> ---
>  drivers/usb/dwc3/core.c | 61 +++++++++++++++++++++++++++++++++++++++++++++----
>  drivers/usb/dwc3/core.h |  3 +++
>  drivers/usb/dwc3/drd.c  | 11 ++++++++-
>  drivers/usb/dwc3/host.c |  3 ++-
>  4 files changed, 72 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
> index 8002c23a5a02acb8f3e87b2662a53998a4cf4f5c..26aa507a738f001409a97ef563c6561433a1cac5 100644
> --- a/drivers/usb/dwc3/core.c
> +++ b/drivers/usb/dwc3/core.c
> @@ -158,6 +158,9 @@ void dwc3_set_prtcap(struct dwc3 *dwc, u32 mode, bool ignore_susphy)
>  	dwc->current_dr_role = mode;
>  }
>  
> +static void dwc3_core_exit(struct dwc3 *dwc);
> +static int dwc3_core_init_for_resume(struct dwc3 *dwc);
> +
>  static void __dwc3_set_mode(struct work_struct *work)
>  {
>  	struct dwc3 *dwc = work_to_dwc(work);
> @@ -177,7 +180,7 @@ static void __dwc3_set_mode(struct work_struct *work)
>  	if (dwc->current_dr_role == DWC3_GCTL_PRTCAP_OTG)
>  		dwc3_otg_update(dwc, 0);
>  
> -	if (!desired_dr_role)
> +	if (!desired_dr_role && !dwc->role_switch_reset_quirk)
>  		goto out;
>  
>  	if (desired_dr_role == dwc->current_dr_role)
> @@ -205,13 +208,32 @@ static void __dwc3_set_mode(struct work_struct *work)
>  		break;
>  	}
>  
> +	if (dwc->role_switch_reset_quirk) {
> +		if (dwc->current_dr_role) {
> +			dwc->current_dr_role = 0;

The current_dr_role should not be used this way. The value of the
current_dr_role should not be cleared on the call of __dwc3_set_mode.
This will mess up suspend/resume and will be difficult to maintain.
Also, any synchronization/locking?

> +			dwc3_core_exit(dwc);
> +		}
> +
> +		if (desired_dr_role) {
> +			ret = dwc3_core_init_for_resume(dwc);

The dwc3_core_init_for_resume() is for PM, reusing this with its
current name is confusing.

> +			if (ret) {
> +				dev_err(dwc->dev,
> +				    "failed to reinitialize core\n");
> +				goto out;
> +			}
> +		} else {
> +			goto out;
> +		}
> +	}
> +
>  	/*
>  	 * When current_dr_role is not set, there's no role switching.
>  	 * Only perform GCTL.CoreSoftReset when there's DRD role switching.
>  	 */
> -	if (dwc->current_dr_role && ((DWC3_IP_IS(DWC3) ||
> +	if (dwc->role_switch_reset_quirk ||

Don't override the use of GCTL.CoreSoftReset with this quirk. Not all
controller versions should use GCTL.CoreSoftReset, the new controller
version don't even have it. What version is this vendor using?

I'm concern how this condition is needed...

> +		(dwc->current_dr_role && ((DWC3_IP_IS(DWC3) ||
>  			DWC3_VER_IS_PRIOR(DWC31, 190A)) &&
> -			desired_dr_role != DWC3_GCTL_PRTCAP_OTG)) {
> +			desired_dr_role != DWC3_GCTL_PRTCAP_OTG))) {
>  		reg = dwc3_readl(dwc->regs, DWC3_GCTL);
>  		reg |= DWC3_GCTL_CORESOFTRESET;
>  		dwc3_writel(dwc->regs, DWC3_GCTL, reg);
> @@ -1372,6 +1394,9 @@ static int dwc3_core_init(struct dwc3 *dwc)
>  	if (ret)
>  		goto err_exit_phy;
>  
> +	if (dwc->role_switch_reset_quirk)
> +		dwc3_enable_susphy(dwc, true);
> +

Why do you need to enable susphy here?

>  	dwc3_core_setup_global_control(dwc);
>  	dwc3_core_num_eps(dwc);
>  
> @@ -1635,6 +1660,18 @@ static int dwc3_core_init_mode(struct dwc3 *dwc)
>  		ret = dwc3_drd_init(dwc);
>  		if (ret)
>  			return dev_err_probe(dev, ret, "failed to initialize dual-role\n");
> +
> +		/*
> +		 * If the role switch reset quirk is required the first role
> +		 * switch notification will initialize the core such that we
> +		 * have to shut it down here. Make sure that the __dwc3_set_mode
> +		 * queued by dwc3_drd_init has completed before since it
> +		 * may still try to access MMIO.
> +		 */
> +		if (dwc->role_switch_reset_quirk) {
> +			flush_work(&dwc->drd_work);
> +			dwc3_core_exit(dwc);
> +		}
>  		break;
>  	default:
>  		dev_err(dev, "Unsupported mode of operation %d\n", dwc->dr_mode);
> @@ -2223,6 +2260,22 @@ int dwc3_core_probe(const struct dwc3_probe_data *data)
>  			goto err_put_psy;
>  	}
>  
> +	if (dev->of_node) {
> +		if (of_device_is_compatible(dev->of_node, "apple,t8103-dwc3")) {
> +			if (!IS_ENABLED(CONFIG_USB_ROLE_SWITCH) ||
> +			    !IS_ENABLED(CONFIG_USB_DWC3_DUAL_ROLE)) {
> +				dev_err(dev,
> +				    "Apple DWC3 requires role switch support.\n"
> +				    );
> +				ret = -EINVAL;
> +				goto err_put_psy;
> +			}
> +
> +			dwc->dr_mode = USB_DR_MODE_OTG;
> +			dwc->role_switch_reset_quirk = true;

Put this in your glue driver or device tree.

> +		}
> +	}
> +
>  	ret = reset_control_deassert(dwc->reset);
>  	if (ret)
>  		goto err_put_psy;
> @@ -2391,7 +2444,6 @@ static void dwc3_remove(struct platform_device *pdev)
>  	dwc3_core_remove(platform_get_drvdata(pdev));
>  }
>  
> -#ifdef CONFIG_PM
>  static int dwc3_core_init_for_resume(struct dwc3 *dwc)
>  {
>  	int ret;
> @@ -2418,6 +2470,7 @@ static int dwc3_core_init_for_resume(struct dwc3 *dwc)
>  	return ret;
>  }
>  
> +#ifdef CONFIG_PM
>  static int dwc3_suspend_common(struct dwc3 *dwc, pm_message_t msg)
>  {
>  	u32 reg;
> diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
> index d5b985fa12f4d9ee3f318ea5cce7c1b225cd3623..38f32f2a6193c1b2662ab4f38f4d20cf4b0e198d 100644
> --- a/drivers/usb/dwc3/core.h
> +++ b/drivers/usb/dwc3/core.h
> @@ -1154,6 +1154,7 @@ struct dwc3_scratchpad_array {
>   * @suspended: set to track suspend event due to U3/L2.
>   * @susphy_state: state of DWC3_GUSB2PHYCFG_SUSPHY + DWC3_GUSB3PIPECTL_SUSPHY
>   *		  before PM suspend.
> + * @role_switch_reset_quirk: set to force reinitialization after any role switch
>   * @imod_interval: set the interrupt moderation interval in 250ns
>   *			increments or 0 to disable.
>   * @max_cfg_eps: current max number of IN eps used across all USB configs.
> @@ -1392,6 +1393,8 @@ struct dwc3 {
>  	unsigned		suspended:1;
>  	unsigned		susphy_state:1;
>  
> +	unsigned		role_switch_reset_quirk:1;
> +
>  	u16			imod_interval;
>  
>  	int			max_cfg_eps;
> diff --git a/drivers/usb/dwc3/drd.c b/drivers/usb/dwc3/drd.c
> index 7977860932b142924edd19f859f7c4041d11eda6..65450db91bdea00bb30bfb368f5195ad2fd58da4 100644
> --- a/drivers/usb/dwc3/drd.c
> +++ b/drivers/usb/dwc3/drd.c
> @@ -464,6 +464,9 @@ static int dwc3_usb_role_switch_set(struct usb_role_switch *sw,
>  		break;
>  	}
>  
> +	if (dwc->role_switch_reset_quirk && role == USB_ROLE_NONE)
> +		mode = 0;
> +
>  	dwc3_set_mode(dwc, mode);
>  	return 0;
>  }
> @@ -492,6 +495,10 @@ static enum usb_role dwc3_usb_role_switch_get(struct usb_role_switch *sw)
>  			role = USB_ROLE_DEVICE;
>  		break;
>  	}
> +
> +	if (dwc->role_switch_reset_quirk && !dwc->current_dr_role)
> +		role = USB_ROLE_NONE;

Don't return USB_ROLE_NONE on role_switch get. The USB_ROLE_NONE is the
default role. The role_switch get() should return exactly which role the
controller is currently in, and the driver can figure that out.

> +
>  	spin_unlock_irqrestore(&dwc->lock, flags);
>  	return role;
>  }
> @@ -502,7 +509,9 @@ static int dwc3_setup_role_switch(struct dwc3 *dwc)
>  	u32 mode;
>  
>  	dwc->role_switch_default_mode = usb_get_role_switch_default_mode(dwc->dev);
> -	if (dwc->role_switch_default_mode == USB_DR_MODE_HOST) {
> +	if (dwc->role_switch_reset_quirk) {
> +		mode = 0;
> +	} else if (dwc->role_switch_default_mode == USB_DR_MODE_HOST) {
>  		mode = DWC3_GCTL_PRTCAP_HOST;
>  	} else {
>  		dwc->role_switch_default_mode = USB_DR_MODE_PERIPHERAL;
> diff --git a/drivers/usb/dwc3/host.c b/drivers/usb/dwc3/host.c
> index 1c513bf8002ec9ec91b41bfd096cbd0da1dd2d2e..f7a71e6f9d80aca632f1f970d900a3de8a76f0a7 100644
> --- a/drivers/usb/dwc3/host.c
> +++ b/drivers/usb/dwc3/host.c
> @@ -223,7 +223,8 @@ void dwc3_host_exit(struct dwc3 *dwc)
>  	if (dwc->sys_wakeup)
>  		device_init_wakeup(&dwc->xhci->dev, false);
>  
> -	dwc3_enable_susphy(dwc, false);
> +	if (!dwc->role_switch_reset_quirk)
> +		dwc3_enable_susphy(dwc, false);
>  	platform_device_unregister(dwc->xhci);
>  	dwc->xhci = NULL;
>  }
> 
> -- 
> 2.34.1
> 
> 

Seems there are experimental logics that may not be needed for the
platform to work properly. We need to figure out what's actually needed.

BR,
Thinh
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
