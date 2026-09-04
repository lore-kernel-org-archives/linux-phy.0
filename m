Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 538B6C79F82
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 23:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SzQ0mKeGFt6bGRJ52eDTEGz6n5AcKlygRd52Hf+zTnQ=; b=KlFFeK0e4rr+c2
	D3tTS9z9lq5sN8FdAHcGPXr7iNCRAsHuuSeaR+zHFXctfd86AoW97kQ2M/VeFjZseC2rLzQQ1hzKE
	5+h17VxMA1YQqi37w1xC0mN1VR1fZt0xk5LF3LP7o0mcYkgWbPlgNpD+vkqrKWle/I/GbJBwHZv4N
	6LNZNmk0whDDObmQVy0blFW3sJFxulsjhzi4Im4bvUxJwrB03+Q+up1j7rd8s3bdSn9/s7vyrGg3n
	1cnxR9dMtqs7b1RuWV1Y6ErqJ9Lyp7+5vOmHir2Ir7viKBI6Gb3WPpgy+LJ6qimZza3qChQn8QLUc
	Po57xrwBSJnvhX9ZllAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2cv1-00000003S4A-2wr1;
	Fri, 04 Sep 2026 23:01:59 +0000
Received: from mx0b-00230701.pphosted.com ([148.163.158.9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2cux-00000003S3g-0HML
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 23:01:58 +0000
Received: from pps.filterd (m0297265.ppops.net [127.0.0.1])
	by mx0a-00230701.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 684Kckbr1143255;
	Fri, 4 Sep 2026 16:01:44 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com; h=
	cc:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	pfptdkimsnps; bh=4+/UPCKtd6WwRpaGhmXVKxQQosWhPzpVnaCIxYp6vPg=; b=
	E+xgRtdqbA0vx33FcHTq4ps+uUepdi8Tf/AqJbyByEqUehd2A7NKm778tJc4AWQX
	WZ+LDrAunNV3FsdsasU+it1S9Kzp7deYIStSjWeBu518G6hU8CFQXmiwYNtDlO1W
	t+vT/5fl6Z00T7xtE77bGcAzyGbu3os+vFJqGCTaWw26AAgmTVTOjvBRrRESwpnm
	TaMyB2+209XB5Q1DrUNa4MUgr1Rfyg9Gkprbkw/Sy4volx7L/qrGISJR7WKPUQUL
	Ziy4QTQMiiZhzJxkyeiDv5unDvQQXa59ynnHyN8ZiHwRnsgBZjTN4n7KiDs7t9ZL
	1MNIE1XjMfa+0By2HFzFhg==
Received: from smtprelay-out1.synopsys.com (smtprelay-out1.synopsys.com [149.117.73.133])
	by mx0a-00230701.pphosted.com (PPS) with ESMTPS id 4gfrm1akaf-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 04 Sep 2026 16:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
	t=1788562903; bh=4+/UPCKtd6WwRpaGhmXVKxQQosWhPzpVnaCIxYp6vPg=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=UXpOJEIEn8S9JgqEyrbAc2S0rSDI3VX/MdxqKUGJJS7tUgeyrMUGw9Obn8vbC2ld3
	 v82VgdBp/aw/rvPuQWGPlebDcW3uXft4hbbau5WF33IiwqXdMU2+CtO/SMKcB9btpF
	 kbDUoXmJvyzgTSATxyNZpnMpVoN6gtcDdrgrSpCIY/toAhPd70Qqxk9Ny48sWz6ieD
	 ktbjSVDoB3lvHosd9QVjHC91EBIuvSCTLxf+SSGc+xc0V+fu4RLS+yxtMSmqBHeS72
	 Gfssr2mkFnuQnApmM25yLDeYBE0GfcLRFsxTrHPgLes/tWG6VKDrJbq17DJ33eB1KY
	 /+D/pnxTKQGiQ==
Received: from mailhost.synopsys.com (sv1-mailhost2.synopsys.com [10.205.2.132])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "mailhost.synopsys.com", Issuer "SNPSica2" (verified OK))
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id D4EB84013D;
	Fri,  4 Sep 2026 23:01:41 +0000 (UTC)
Received: from o365relay-in.synopsys.com (us03-o365relay1.synopsys.com [10.4.161.137])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "o365relay-in.synopsys.com", Issuer "Sectigo Public Server Authentication CA OV R36" (not verified))
	by mailhost.synopsys.com (Postfix) with ESMTPS id 6B42BA069F;
	Fri,  4 Sep 2026 23:01:41 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com; dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com; spf=pass smtp.mailfrom=synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
	dkim=pass (1024-bit key; unprotected) header.d=synopsys.com header.i=@synopsys.com header.a=rsa-sha256 header.s=selector1 header.b=KkC/zkda;
	dkim-atps=neutral
Received: from BL0PR07CU001.outbound.protection.outlook.com (mail-bl0pr07cu00100.outbound.protection.outlook.com [40.93.4.0])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest SHA256
	 client-signature RSA-PSS (2048 bits) client-digest SHA256)
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert SHA2 Secure Server CA" (not verified))
	by o365relay-in.synopsys.com (Postfix) with ESMTPS id 19A9F4011A;
	Fri,  4 Sep 2026 23:01:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=he7KXTap+tcgZDd22sAiOJ+mwU3dFE8U47l82t/GE+wRUZ/RC6wB9aiKDEK2pFEqZ3eYsBOOs7qXDqVYPgODrPUkg1CZ6PC8v6G+mXl1yNKAzhR6qGOmlG3zzrPu3p6zAX9/P4SWJF34+BRXWdQJGvWGMdO2bO0/tRei9uZ4W/zi24J097cdjRfmaTDHGkZY7uqTIiYUCILvDCR/xkTx6QUXSJvdMjinwrM/xgR62bxYv0Re0GHDdypzh88OwdBtaXd4ZwAEKviBcK3DXDZ+AFHrAGLBmJusS8whNOvgOsamUiVlBmzxRo7obRoTvHlhwQLSRUwuO9H/Og6uK/ZVxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4+/UPCKtd6WwRpaGhmXVKxQQosWhPzpVnaCIxYp6vPg=;
 b=oXPPVmuZtiWno452WG9wS0Y5S0J66l35lt7xHa/xo9YVIHzvGr0LfLkLDBqjWLdjPti2fsGZtfNeRhmZFbYppsAwD5Ak4Kn74hDJ421+WUVfqcun8RteZ+iU8DI/jETFpcH4rQyhxVe/HJpxc8BWJhL8uj6GF9xJFtx83Gv6N88hW/OfLqTvvFlh+B0VWaqmZHN55xCDqXKtkmduWD+ayqYfJSbuX8OI0UUXvfB8YQMBW3H6I7Aa9N+ClTnOKaghev9r0TXGk5p4xzsz1Z/SqTR+d3qcFqQ/bqbwYUPnVXxPZ+114wlR5sStjZfjTiyFM+NsyTg8RT3mc9APbkh4Lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4+/UPCKtd6WwRpaGhmXVKxQQosWhPzpVnaCIxYp6vPg=;
 b=KkC/zkdaaGsFMHMpBM3PpoRsioDlJ0Rbjt9jldhqhx7gOLKRLLqMftTn/c6zX48CWuYhVL3kcD5Ga1NKA42Oyd08Jbi+IEeCb3p+eIU35z1UiWm+VHcH5DZbnPAyt8dDwl8B2YzaamOgHB7yhGq6XGhCu1smv6MHcw1ew1dX3r8=
Received: from PH0PR12MB7486.namprd12.prod.outlook.com (2603:10b6:510:1e9::6)
 by CH1PR12MB9669.namprd12.prod.outlook.com (2603:10b6:610:2af::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.360.13; Fri, 4 Sep
 2026 23:01:34 +0000
Received: from PH0PR12MB7486.namprd12.prod.outlook.com
 ([fe80::7df9:b25e:9216:f109]) by PH0PR12MB7486.namprd12.prod.outlook.com
 ([fe80::7df9:b25e:9216:f109%6]) with mapi id 15.21.0360.008; Fri, 4 Sep 2026
 23:01:33 +0000
X-SNPS-Relay: synopsys.com
From: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
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
Subject: Re: [PATCH v6 2/5] include: linux: phy: Add phy attribute "type" and
 associated helpers
Thread-Topic: [PATCH v6 2/5] include: linux: phy: Add phy attribute "type" and
 associated helpers
Thread-Index: AQHdNXzkKDwscU13SECrUYJ24wnpzra/F6yA
Date: Fri, 4 Sep 2026 23:01:33 +0000
Message-ID: <aptNoEZnS8GlucbX@vbox>
References: <20260826-eusb2-interrupt-v6-v6-0-ae2601cfa80c@oss.qualcomm.com>
 <20260826-eusb2-interrupt-v6-v6-2-ae2601cfa80c@oss.qualcomm.com>
In-Reply-To: <20260826-eusb2-interrupt-v6-v6-2-ae2601cfa80c@oss.qualcomm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR12MB7486:EE_|CH1PR12MB9669:EE_
x-ms-office365-filtering-correlation-id: bf96b8db-eae0-455c-45ec-08df0ad876e0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|7416014|23010399003|1800799024|366016|38070700021|4143699003|11063799006|10067099003|22082099003|18002099003|56012099006;
x-microsoft-antispam-message-info: b9ijblQaGOUi9VXu2ubfcHKtrrRGbKWowcsx/L7snmvEDSXfJTfUColNjudLQ70UTPzoyx2jkU/jkn21MF/rLdfPztZMF6a8KVSIN01pBYissZJgU1KdBNOm8MPyrw+V78E7DjhtFMvirZtMponXOWQwrntJc88Klbbzvs2sCMmPEURRNVlmeUpZjBVexfGK1NUYX8T+N+rfLbRNnr7vHN1xHFcssTud1Dm3omSDO7eEwm6ZHNMaMStc91Cpx2FVNQQswCUfvA0F7MW4eXzP0x3G86jCx0L7uMEmS5N+taesHmEaUFVReBZr+cNJXZuUH6cr4xP4RrqzVJM2ZVo2sswx4zfl1ShQSi3EwcJ/UlbvlHA63HYbPBxnPXbzOhTmuUsrk5gOfZbXo40eW4g0JlOQEkqpZ6z83+7iDUncScOxnLvcrUhxi26MYfNzZ+lu22NbnB67NY3CpPzecHF9kuI5H/diRD6SaCVWMw3cC7/sAAswk8XIHjOzh8PZuPH6ihACPSlOuzS2i9+YkLhpxpwC4JVoYUvaiLiTKcUxhdwxpU/lqD0hxNBHn9Q85dHFjvVvFe892XvTR9MzoiOXZKNdA02raqkjOSnZugWOF6so5st0dHr0tqG1BQyi1tXXjV1VvQekYW/wmCTsaJ3TkVDpDVtg0LP7NpHzKSNabuqXx67JbLp8P/jKhgYPRo9VpfQ6t+/9hYSVr60NK5pXHlVo6EVytqp0HFp+u2XEego=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR12MB7486.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(23010399003)(1800799024)(366016)(38070700021)(4143699003)(11063799006)(10067099003)(22082099003)(18002099003)(56012099006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V0x4ZVBuSU5sQzRlRXQ5aTM0ODgyZWFQMVREbTFPbUxxd3pZMTBueTI1U0tq?=
 =?utf-8?B?V0pTam9reGFWT0tJTUtKc3dUMTdJL3RTQmpGNjZaaFYxTkl4WkhNeHlDRThF?=
 =?utf-8?B?ekpSVzBxMGpid1ExamN1WnlxNW8yc0VrZmVRajhVMGU1OVlQb2MrS3E1NnZo?=
 =?utf-8?B?aHJFNVo2TWxYMXRTaWZpTkpoU29IdHMyT1BQUnZubWd3LzJIUEFpbk10aTBV?=
 =?utf-8?B?WFdIeHZRYlBOS3I5SjNPTWJYWWNGUXJmSkF3bk9lR3V6eFFxSmkxcGFlbG5o?=
 =?utf-8?B?amVUcDk3SEN1QzdEUkx4OTBtcXRSSXhNcW5wS2hJdytoY1U1d1JkSC9xRDJ4?=
 =?utf-8?B?YlNOQVhKWXU5dDI2dG04b05teWdYSEVvK0FGSVJPTlVRMlN6VzZsMFhCZ2lN?=
 =?utf-8?B?MFV6SlEyZEVkUzN3SWxlSmk4MXhsQ01xSWRyS294ZE15SnpZc3lma3Rwbm1p?=
 =?utf-8?B?aFBDQzlKaHNkdHNkaE5DVDY0YTB6cmdJNWV1b05WcG1STVduYnd0ckZNMWxp?=
 =?utf-8?B?S1RibzFkL2RkUDRmQng3UGZBWFV1S2U3TVE4OVd2R3ZDRUlrdFZwOHFITWNR?=
 =?utf-8?B?MEF5NWpodXlrUTkxbk5FS29QaW5ZZ2RGaElKeGtWVDFQWFFDTHlTUnRBUCs1?=
 =?utf-8?B?SW1yaXdIS1dLcklUM3p6cDdGOVRIK1pCamorSWo4ZU5qUHdIMVRJbVRHd0Vr?=
 =?utf-8?B?ODhSQzNHMm5tL0FmVU54UnRxWkZSbklNTDhvL3RleTUzMk5Kc1NYNVZnNzhv?=
 =?utf-8?B?UjZhUm1CcHo2NHlMa3ZtN0VlMjZFZVdGM2V3NUo3ZTdzb3BCL1pNai9aMlh6?=
 =?utf-8?B?YU5BZzBveFlJRm8rSnBJcWRzZytOYWM4WU5MZVQ1dGg1dXYydWtNZ1BrWWta?=
 =?utf-8?B?ODEzcTRCZjlWVWRZdVJVMmJBNEpaUnBYTU1RK2xrcEVXWFRodS9STDZQbXdU?=
 =?utf-8?B?dUVVZzJPdDlmcndvZFZXQ2l4bFNBemRtUzZnaDZPenNFcFd6aGppMEZ2UW1l?=
 =?utf-8?B?S0V6VVViVml3djY4dUpEKzBVOGFDcnRWWDBFU1hGb1dmcGcrNGZ2Q2xtN0hR?=
 =?utf-8?B?MW1mKzlmcHV0bTljYkY0enVwQjZPeGJRcWVucWJyKzNWRWJSMmZ4b3d6Vmtq?=
 =?utf-8?B?MCtkTFh3cVN4UmlmdDdIR2lYbWkxK2VTOXhZUEZkWXZPamM5REcyV0p1cmdK?=
 =?utf-8?B?dW40U2FDWndwZUtrLzhDcXRJbXhpV3UwWnVlZFZ5bXVTRXVzRU54eEhabG1N?=
 =?utf-8?B?NTVhNWxaRHo0NmgvUk8vOUxDY2lKT3lnZyt4allVQ3pVWlI3QTFNemN5L2NY?=
 =?utf-8?B?NytFMXdUMDNLQ3NyaWI1cE9KOHdnK3dlNWhGemJQQjN2ZDhFcWV1clRFbkFT?=
 =?utf-8?B?WjNLcVV6a3pGazlMWnUrVGtydmYxanFZS1o4UWlKcmNEQlZFb3ZZTm9OTDFW?=
 =?utf-8?B?azdsU0c4SDJKSVdSWDIxNndselFhZVBObElFdmJyNmVkRkFKbkE2ZzkyUEJh?=
 =?utf-8?B?amFWK2RScm4wamJmdHdYUDN6bEZSUTAyWU5pVXNkZ2p6NTJQNWJYbmFYQm1i?=
 =?utf-8?B?SFVDaVB5NWhWZkh2VE94cTBwT0JXMHhaRG9mRW9zcVJkNXM3QzA2QUF3MUpJ?=
 =?utf-8?B?Tmw5RjRYUnF1ZWs2UWRNSmVKSHdpZTBSWU84SU1ISDZkUGdiVzAxWGhxN1oy?=
 =?utf-8?B?Um0rSmNBaDU1YnJqRTFwbWRrQzlTNXZrLzlCbThQdDZJSkRMVlF0cXRpYWJi?=
 =?utf-8?B?YU1SSFk0TlBiV3hSNnc2aXhCcUpia0FhZTdvOU5tZ2swZzlmM2ZMYzVqOE11?=
 =?utf-8?B?TnVWbFJiWmEzZGdhUGpWMHc3YUcxZzVWZVl2bGN5cTdMV0dkdVljQk5BbXR4?=
 =?utf-8?B?ejNaT2hGV20wdHNDY1o2b3E4ZTZHVzMyYjdKUDBmRGE3dVNPYWNseU92RjlF?=
 =?utf-8?B?WVZoazBnQVEwRldQZlZCVGY3RkdtaFJVNVM1NVhlTy9oWklnNlo3NTRpSElD?=
 =?utf-8?B?RTNQek5xbzF2MFgyaStpZlY5STVMQzRoeUhFd1QzRi9KRUlrSWRGbytUbnVS?=
 =?utf-8?B?d3hHVklVejljbisvRFMvamxLRCtYS1NqSS9Zc2dqNlRmYUhRa3BHQnp2aTk2?=
 =?utf-8?B?dkdaYWNjQUpZNGNxVjRabWZrK3ZDU0FNN01NNG1hRnVLdmVXM2NZVmgvS0xZ?=
 =?utf-8?B?bVlTWktSTFhUaitQNDFLMnV6VUxZbkRFaThYRUU0Yk1oYnNHeW1YcnM1NTdy?=
 =?utf-8?B?eVZPUVE2dTRSMjVrRDBrTXJPd3I2SzNDOW5HZ2huQll5aElrNlJLMnh6dGRx?=
 =?utf-8?B?VkY2aDJ0dmhUcWhldXhoYTA5cmJ1VCs2ckhVTUg4SDNCS2JhS2pKZz09?=
Content-ID: <53695882C0566F4DB5DEDE8C489945FF@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: gG8gSTzA2y1IyhZwAy0Hv4vtq4Y4r0s9pPv+AJGfIc+hhuZ2auQEm/L+92MCdq9gXRLWuTd6LLrycZ/ikxhyQdhO7ooXy7cvfjl6ayLskFYfyNzSSy246vkdfbktWSozwywCYrhhD703BGJcjvghAwZJCJNLm9Pdm/lsDVpyz+4xehbfjB4t+v+g7tlxSaXmqJaWGaS5e2l7rqQDVOxYZ8ON+CdmtSEb7avL82X3tchdVvj2GJLgha0z3JcqL81efg0aVpkN2TyvNTxraW3EeeSVUCX2J/Po8rxPVAAlMWVaFuCxlL1EG+UruObgwhfhxDmuq2jM8tuTUuy4gCm/Ug==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: Odg9ytT5tRKI+umxgT1w9JlgPkODgC1CMQ7vkhSj6pWfYNcy1jzi/QzvowUTl4HLO2KjkYmEkVafBmh49w2iA74ucsBiQ5bwKHbRFrmcsY1XTf2b/8f8i0KdDAU6u/xswDg7xMZgEPe8K/ogUUpL9rgiY4qmx34e+AaAHV7SmTzBrl6xC0kuEKRpk3XrngodofAG+LFNcdSHqTVAVcBieW/vGKwrCAZwsJovYmGr88YrOu0rhrBlqtxbuThSTKAZgbDAOh3yp9Wp1pjUo0fDjjXA7CXnSQsPYVOweA8CRd3iXmt+ImXLzS/c9pcPjkfwzBLSOsyUu1j6eUw7qyxa7wrOIwLeW/zfUUQMs3lca6BvPD0CMxCYZ4rldV8KHTlNCGdsslTB3dTqniV0QiT1KApOB/e/CizvCkksCwD03p25gelHulMp5ufPCTJp4DaiOKPn+h7ymfR2xdekCI0Lc4XuzcdX38R6vlD8PVYVXqZiwvuEO8vr0+qD+pa9z2unfoXmsVEbiX+lOZVKnPam3KeULMY66GEhWg8e24UMjRTMDk3Uf43adwLnJxAMne6VkUMHVoxvrS0uO9i7pEjnjYiaowtOHpW2fUDe/xG7UtsbUUmEFL+FqvdIj5uqVRTYu+ttvDriiGBp6wn2lAMsZA==
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf96b8db-eae0-455c-45ec-08df0ad876e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2026 23:01:33.2913
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c05xrxjRNT8jhvxFjogVUJUgiXWgDYXNg3+Bc4aU7O6oKlS0768Hn92tBSc+tkNkLjxiChhDubCV33sXXumHMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH1PR12MB9669
X-Proofpoint-ORIG-GUID: 5akOn228QN7cVY9UYMAeehKxXo0PsOT5
X-Authority-Analysis: v=2.4 cv=L88theT8 c=1 sm=1 tr=0 ts=6a9b4dd8 cx=c_pps
 a=8EbXvwLXkpGsT4ql/pYRAw==:117 a=8EbXvwLXkpGsT4ql/pYRAw==:17
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=qPHU084jO2kA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=tU_645BZ7FZt8VqRJtHG:22 a=-4-sGo8i1FcW4KD7_GeR:22
 a=EUspDBNiAAAA:8 a=jIQo8A4GAAAA:8 a=BurAdWewO2j0G9cDjYoA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: 5akOn228QN7cVY9UYMAeehKxXo0PsOT5
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA0MDIxNCBTYWx0ZWRfX4JOckZxmElcD
 qLbmNaFbfytBUO6T/9IMPGPo/Unbhtu1dtWIlVOsf1KapQW9ckr6lABYoGSAUWUBhk7m6U3TOvT
 5bUluJkMCmopL2ZN6nSpth21vGCOS/s=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA0MDIxNCBTYWx0ZWRfX//qUMLky/AqJ
 V0DZlxLbTPUnihSxxqcJcgAtsO7jt4BYb0juPCp8Gx4++g9DRASxUGSeRP9QmTj60qacCCGtP8q
 Dn4Uwg8RliwcCQF/4F0GKWYjWtsmQtUM4Gh4pREQd7V3RZv7S9RRyepzkaokG6np8+vkHz4+Hdk
 8J1cjXS+a2SOIhNAS0ErS7z8jHJn9pmY5zVK7tHngwkVkZjEkqhzl8zax5CaHNTHkMqvr5dO/b4
 aAqZ0oK4YxkfKN3wO5iKECpfVamOXDACxqk917frQ2FlcTKWAh+Ac4yqjXSwS2q8WTeiskrDgH4
 5ZVFbwrgfmaaNRNP5WWH9qsw767BR2AS/8vhxhyVIxsgkEQ12pBYS87Qr96mJU0SxGCMrb8iLqY
 E5sDKn3BqaknYu2AFf7fcisZtgeCSpsJv1TfuYEpe2RoyaqmRqCei38hebPe5XucRepZSsZFGNS
 jVjvkiN1MvEIDlLtMCA==
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
X-CRM114-CacheID: sfid-20260904_160155_242307_11872B1B 
X-CRM114-Status: UNSURE (   9.15  )
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

On Wed, Aug 26, 2026, Krishna Kurapati wrote:
> In cases like USB High-speed phys which can be either USB2 or EUSB2, it is
> required to know the type of phy (rather than the operating mode) because
> DP and DM interrupt lines need to be configured differently for each of
> them.
> 
> Add support to cache the PHY_TYPE and add the following helpers:
> 
> - phy_set_type() for the phy drivers (like m31_eusb2 or snps-eusb2) to
> declare what type of PHY they are (in this case PHY_TYPE_EUSB2).
> 
> - phy_get_type() for the consumers (like USB controllers) to query the
> type of phy connected to them.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  include/linux/phy/phy.h | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index ea47975e288a..038c2b58bbe1 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -21,6 +21,8 @@
>  #include <linux/phy/phy-lvds.h>
>  #include <linux/phy/phy-mipi-dphy.h>
>  
> +#include <dt-bindings/phy/phy.h>
> +
>  struct phy;
>  
>  enum phy_mode {
> @@ -152,11 +154,13 @@ struct phy_ops {
>   * @bus_width: Data path width implemented by PHY
>   * @max_link_rate: Maximum link rate supported by PHY (units to be decided by producer and consumer)
>   * @mode: PHY mode
> + * @type: PHY type
>   */
>  struct phy_attrs {
>  	u32			bus_width;
>  	u32			max_link_rate;
>  	enum phy_mode		mode;
> +	int			type;
>  };
>  
>  /**
> @@ -262,6 +266,20 @@ static inline enum phy_mode phy_get_mode(struct phy *phy)
>  {
>  	return phy->attrs.mode;
>  }
> +
> +static inline int phy_get_type(struct phy *phy)
> +{
> +	if (phy)
> +		return phy->attrs.type;
> +
> +	return PHY_NONE;
> +}
> +
> +static inline void phy_set_type(struct phy *phy, int type)
> +{
> +	phy->attrs.type = type;
> +}
> +
>  int phy_reset(struct phy *phy);
>  int phy_calibrate(struct phy *phy);
>  int phy_notify_connect(struct phy *phy, int port);
> @@ -393,6 +411,15 @@ static inline enum phy_mode phy_get_mode(struct phy *phy)
>  	return PHY_MODE_INVALID;
>  }
>  
> +static inline int phy_get_type(struct phy *phy)
> +{
> +	return PHY_NONE;
> +}
> +
> +static inline void phy_set_type(struct phy *phy, int type)
> +{
> +}
> +
>  static inline int phy_reset(struct phy *phy)
>  {
>  	if (!phy)
> 
> -- 
> 2.34.1
> 

Reviewed-by: Thinh Nguyen <Thinh.Nguyen@synopsys.com>

BR,
Thinh
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
