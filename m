Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD5C4CCA470
	for <linux-phy@archiver.kernel.org>; Tue,  7 Oct 2025 11:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Q9Q+SLkGAt8agL8Z86RKlDZkCqy6kAnqHlfBEN8HlM=; b=eq1NHo4mR42AF7
	zjJBEHJd8/i5CKHsr5faaECETigMWC1BLcs4xjV0SI/dJaDEtMCE7MaimHgybMNniHzqzECF9dJSw
	+gkCCBob1l3RLz8zoT8Od/ur5BLWkxa4tAIzXF+CNSldm66tUI8B4HE8UNt4/9zFfgYgO62j7RrAT
	7dBDAcZpTt1qeYPF/M3ts95f9Hbalb0WkMBYtf+kL3NRDtGZhIY1U0WsXPReFarnpnJ5v9IL/VYJO
	q/aEZ/iA7ipL7A3fybXcrfemSAS7bNgzFzVvIkEGNfE6/BDcdeN7MmUxDU+iQg1w4Aji/hGzCpQlw
	7+jq3Y+zR5Bbh/kadwWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v65UZ-00000001pt2-1oYn;
	Tue, 07 Oct 2025 11:04:27 +0000
Received: from mail-japaneastazlp170100000.outbound.protection.outlook.com ([2a01:111:f403:c405::] helo=TY3P286CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v65UV-00000001pqr-1SZ4
	for linux-phy@lists.infradead.org;
	Tue, 07 Oct 2025 11:04:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fPpCaWdS9BfgGwqDVyjB68zdcbGcvE2/5B/vSrHTFfZUnt5rt6Y8MgGmGA7TTI/vYIxmDrrRfnNNS54dAheM25OAzjt2bTinDKR34CIDMtN5o3N9uhULv4aPs4KDa6YekRzRWL4ExW2V+PIM/i8pgAg0xiBO4yPuYjIs4RsErtsvy5WYpq7a3tnugkH1E3HrtAlJROrJciN0SHAVIKKWTxNWQSPDZLTpIUSh7d5SdWUD1QjvUQq+iLypSxytlgB37DiVHQviEieoEoN7mkETa/bmxKISNtWeP+8sZTRnX2zYKkCM1Rn99rg4oDttS2irUIbiTNkZHSuqJGdPmgPkgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gU+t33jiy/7KajsdaxofgF79KZ+ZreZZICwAIt3pkV0=;
 b=sAVeMwzulGjIVXzcvnfo9kxfn29NvCDb4b4ghg/z9+QJV8WqX6Gkft/5X4Kd23Z1OQ19squ4cYopS8mfdYMQeFl6djOh+l0WTr3aMapPbTYXaA1lPkOoofCi+P5nDcK0srLrVW09wN6/yhJuTKrEcIv0gb4H+gYshfUYIf7wKCRZcjszp/GcJpysa41JxM5ofr6q1EchQMVrsGgmMaLuTnxWAkMyUrJQcUXoUJU7h+lEKq0BPsINz7M22XPw+FcbrQSvUJZSkkJLF4mXoYXAe7CBJj29bmQLsVLgy/xD4pgHGrJkUoHz7OlKzyKZfl6F5ECQYKe6Rc/oBFR82+WqDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gU+t33jiy/7KajsdaxofgF79KZ+ZreZZICwAIt3pkV0=;
 b=PiUQOwXdPkOvbxNtuZpeydL4Ez4zoePFXMoDIi5zmjEYx8iyW/EEoyN07Uorx4wUNFGNuj2zERFrvEqciF/Ig8EB5sUfgNpqOkLDuzwMm+Cb4rXCZNjEJkdFK/SVSu/TkfGs+FSP51OkffAiEIhM9qmgoyzrAYzoKE5AcAqmsmM=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by TYRPR01MB15695.jpnprd01.prod.outlook.com (2603:1096:405:2d7::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.9; Tue, 7 Oct
 2025 11:04:04 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1%4]) with mapi id 15.20.9203.007; Tue, 7 Oct 2025
 11:04:04 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, Tommaso Merciai
	<tommaso.merciai.xr@bp.renesas.com>, Tommaso Merciai <tomm.merciai@gmail.com>
CC: "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Vinod Koul
	<vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Geert
 Uytterhoeven <geert+renesas@glider.be>, magnus.damm <magnus.damm@gmail.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Prabhakar Mahadev Lad
	<prabhakar.mahadev-lad.rj@bp.renesas.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 04/18] reset: rzv2h-usb2phy: Set VBENCTL register for OTG
 mode
Thread-Topic: [PATCH 04/18] reset: rzv2h-usb2phy: Set VBENCTL register for OTG
 mode
Thread-Index: AQHcNt66G8TP9Ee94kC0LXwMMOw9YrS2DljwgABhwgCAAAaEkA==
Date: Tue, 7 Oct 2025 11:04:04 +0000
Message-ID: <TY3PR01MB1134623A14F4F313986F631ED86E0A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20251001212709.579080-1-tommaso.merciai.xr@bp.renesas.com>
		 <20251001212709.579080-5-tommaso.merciai.xr@bp.renesas.com>
	 <593eb851ae6ce0ec03ddeacf436180b6538fdd1e.camel@pengutronix.de>
	 <TY3PR01MB1134635745721CC005B35702286E0A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <01fc3101ab2e3898932afeaaaf060a6676cdf323.camel@pengutronix.de>
In-Reply-To: <01fc3101ab2e3898932afeaaaf060a6676cdf323.camel@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|TYRPR01MB15695:EE_
x-ms-office365-filtering-correlation-id: 493cb019-9b2f-42cd-ac24-08de05913a8d
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?enJOWWxZa3VudG1UMVJwWmdwc0NBb1A3eVFxQVkzY0FKSGdVbWRlWDVYU0dv?=
 =?utf-8?B?bnVRczlTTlhwRk9qNTRxZVJieVZOVmE3dGJiVnlIdEVIZGtMY1B0UzBHa042?=
 =?utf-8?B?dVd5eU9jeVZZajNFdEdvYXd0TzAyTm8wclpxYWpVaHNzVWhTTkFtbGNlNVow?=
 =?utf-8?B?RVlyaFpuNTdEV2wyN2hjWE5DUlJEcm9yTHFyT0lTUHNrZy9pVXQ4b3lkakQy?=
 =?utf-8?B?R2pkMVZ5WXhqS3VEYmh1TTVDS1hReVNRenN0L0FtUXFyNmxoMlpEMEdFa3Fu?=
 =?utf-8?B?NHlrVGNTQVlmajllL3ZhVWxlRjkyMkF0UmVGYUtyMUd2NStTTGhDVmdxaTJ4?=
 =?utf-8?B?QndGZlgrbnVGcVFrSlhwelJRdjY4Z1pBQVI0emt5OFFqRlZ1anM0RjZvdG5M?=
 =?utf-8?B?N1FFUXdmaTh1YTVDUG1uU2JndUdNc1hPeENWWjJYL0dmeFFyMHQ1RzBWZGw2?=
 =?utf-8?B?b1Vpc09aWkUxcXlZVXZqbVJJbURXMElvWW1kcWxxS2ZmT3FNODIxVm55aEgy?=
 =?utf-8?B?Zlp4ZFFCcncxWFlNUXE2cm90aisxb2NwV0FhT0NKTnB4V3h0Q2QrTWpnUCtQ?=
 =?utf-8?B?YXZsaFlQS1REYmpiUkxyYkd2STFYZDRTTi9ScEUzeUIvclFTRnREdzhqZ080?=
 =?utf-8?B?VXprYzZxTWxBNThES2MxTCtYeTVWZ3ZvOWo2MlRGbXQxRUtrVTV0azdJSytL?=
 =?utf-8?B?UWYyU0tPY3Q1ejdoTHhrRmhuYW9LakREcVVBMFVaWkpzejllZUt0ZzYxWWQ4?=
 =?utf-8?B?VjBJMGUvSXR6L1hZNVFVaThVdCt6SExmOGcvekFFNVRLTmNQdVhRN1lEMHZS?=
 =?utf-8?B?WEZUNW02cC9vRUZaTm8xak5rOGx2VDFsMVFXK3BaWnJjMXg4ZHBaSTROQ1pt?=
 =?utf-8?B?QVlKTEdLU2dCeWNCTG0yMHNoZHBvRTU4YWtOaWZuN01XMHlnbnlGSjFyZDdV?=
 =?utf-8?B?b0xpeTI5UEtwcTlzeUprb0xKR3FTa2tza2lsa09wekhKdWlscndsb29zUkk5?=
 =?utf-8?B?WWN3ZVdaT1JxQWMxZ3o3ay9iYWlFU21OY1RrZVN5amg1SW1pVTIxSWlXSVUr?=
 =?utf-8?B?eS9pSWQ3YmVOWUtidUVDSUxyNzE1dW1iMERnODdkZDJYRnVjVTV2QTEwUGR0?=
 =?utf-8?B?Uk1ibG95OEJ1QURtVTFnTTI2TkM2Nk40V1FsVU9lRkhvTS8zRkptelpkMkJ6?=
 =?utf-8?B?VmMvaEFCZVZWYWJxb28yc0VCcEJSWS9BaGs5VDF0Um1pejJPa0lma1BScVlN?=
 =?utf-8?B?cUl0dkNoOWJtbWVLRkxaRTgrWnhOYXRieVFERlZzNGJoMkI3TjNIakJoRVhu?=
 =?utf-8?B?SlZQL0RDdWd6WkFlOWlZMTJiNXJmYmNTZURaclZGSXpVWnRhdXdZdzNkTUJZ?=
 =?utf-8?B?RDIrK1BoMklhVmNLL0UzbFE3eGtNOFVQc0d6ekNTaG5tdGd1YmZRTXRiSWNU?=
 =?utf-8?B?TG1NSGF0Nm5HZTZNVUErSnQvZXdlY2ljZmJIazI4V3daTm1pZG1YUlJtWDFO?=
 =?utf-8?B?Szg1OXF5SDk0UE1wdHhScG5mYnNhRFk3UTJWMkJ2UkVDcmdNbG5LV0xtUk5T?=
 =?utf-8?B?eXREUnV2N0NVKzN6NkY1VEFOMFlMcXpGdmdhVzVSTHhCbDNhQ2tDSzdzdzFn?=
 =?utf-8?B?OTdZMzcvRHlMQzBCQVRoRG1xV2FzNkxCQTFBNytOTW5EWGZ3dkl6bTRuMzB1?=
 =?utf-8?B?cjBNRXBEaXM1d0hwQnVMUjRuMnJEWldBL2l2L3owbEYybjAwSGRTWmdtNzMz?=
 =?utf-8?B?WmFOUWdTWi82MFIzc2xZNnpRNlFTQ29GYU9HekExejQya1Rmc05rN0Vxdmtp?=
 =?utf-8?B?a3RRUUhLUTdMamRJS2JUSjIzdDYrSFVOSjJMUnB2MzVWTjVUSjBwSUh0Uzdj?=
 =?utf-8?B?MUw2RGxNb2wwQ25ReFN3emd5RDFxSnBoekp2VGhWMlowQk9IOW1GTjRRNTRV?=
 =?utf-8?B?VDI4MnVoV2N0d1NvSnN0djFhSnB2VndtR0FHSTdKdnBuSTZieWtYYktQSU9R?=
 =?utf-8?B?YURrMjE4U1ZEZHVwY0t2cXFRSDR6b2V1R1ljUFJwVWw5cUxzdk52U1VXRUgr?=
 =?utf-8?Q?4RTQCl?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eVFqWnAzcXZPdmVmZlErOURDbjdlN1hvaFl4a3lnOGVMVlI1cWJtUk94VVBZ?=
 =?utf-8?B?czJLWkdSRG1GTU9KaXFIZU5lVWxYN0tocUhuTXhseVFsU2ZSM2xpcndCNGxU?=
 =?utf-8?B?N1EyOGJjVklON3YwZXczVDU4Z2plSnRzaHlhTUk0VGdLc2FVNVRNMitXQ3NS?=
 =?utf-8?B?VlFKMkRJSkgvbkJ2NWpqQjRkV29RRGZxOXBiQ1kwcHZUSk9uaTRMcWlMQ1Bo?=
 =?utf-8?B?bE1NUzVqVXZUd3VyaVJ3UWNEV1NMRHR0R2hzci9xeE9wZCttdVMvOUJQVTNp?=
 =?utf-8?B?Zm80WFZqUXg4N2F2U1RtclNWYjZGd29pSDBOSXBodjgrZVVHU05ic3Jma1Vs?=
 =?utf-8?B?dTNFT0xEU1ArYm5vNzdvYXpITktVRTlORWI2RDNaaTJzTVVlSFhDZzNYNFVx?=
 =?utf-8?B?V3FDRGNOSUhTcjNweXdkdkpyaUpWczE2YUl3SlBVZjhGRjdRWkVtMVYveWxU?=
 =?utf-8?B?Vng4Y1FtNGJVVFJVTnFlRjZacHJhdzVJQTArVFk2YmlsWlBlRWVGSkdOK3ll?=
 =?utf-8?B?Q3JYalJ1eDdYRGI1Z1h5ZFFXUDQySUN3MWNWelc1NmVVOTczUXBPeDRiMTkz?=
 =?utf-8?B?c3dKWGpEZWhOREl0eGN0VThRVVYyUHhEZHRuVm1FcVIyMTJpWnNRenFKMExF?=
 =?utf-8?B?dEt5a3VmUFgxRTFJc0xxUVdRYmZXQ0UzZUxRZERsdlRjajZLVmEyeENRd2hl?=
 =?utf-8?B?QWIxUGdGZGYvRWFZaURHMXZCaEU5OVZBVkZyWDgyejFMUWpiTW9hdUNuZWVu?=
 =?utf-8?B?SlNzbElaWWRYdUdUa0huSHV4YW41cVlQUHN3bk91b2NqbnlSTlA4SWpGTW1m?=
 =?utf-8?B?N1RQanN1VE9aRzNjR05TTGxSSDlpNTZYalJrN3NrbXluTFdJZmFwT3lMWVZ5?=
 =?utf-8?B?RlZKckt6cHRjQVJvUDlIbHBmVlRGOEZubTF1aWExTmJjYW1zRFpkcGlyOG9H?=
 =?utf-8?B?SEdyNG1ob2RPQ0NsSnJEbDJaNGlEVDRSREtkU28zMTg0aGpoSjd2c0M3UkdD?=
 =?utf-8?B?RGc4QTRxYkFDSWt6YVdQYjBBblFJRjYrS05qVFZkTlZKc0toTUxDd0lYdk5X?=
 =?utf-8?B?YTBBT2ViakRrNW1KTmUrekkxeGRlWTdXYW82ZFJHZjJWck1LUnZ5RWE5YmVt?=
 =?utf-8?B?ck1sTmlHMUZteWJNYWl2OW1DbnVvak11cVpWT0pOeEZOREFJbmJEcTl5MWsy?=
 =?utf-8?B?b3N4U21kOWlKc3ZybThVcEpMSktyeTVHY0V1K2YxbmtESVBxY25pc2Rld3ZP?=
 =?utf-8?B?cGNMakM3Z1QreWhYeWhydnlHMlV1bnFldHh4REZEdWxVR3VDTnZ0YTVheUhl?=
 =?utf-8?B?K05meVhkZGNINitHSVc4bW5WNEJZdnphWi9keHc4WDNNVlRJTkxqZmFTM0Fp?=
 =?utf-8?B?eTI1SDVIbjIycHhUNUtyNHNRTGVUOGZHZEhTd1FCQVRFRDhqN21RSXh6Uk1L?=
 =?utf-8?B?TVk3M2QwN2Q4Qjd1NVpOQ3FPdWYwWGRUcVE4a1JJa0ZqaE9saEtsLy9reURU?=
 =?utf-8?B?SEJqVFE2ZkE4R0tnNnJKRUNLckUzWi9GakNZWXJOSHJ2Tzk4Ny9rcHBWb3lP?=
 =?utf-8?B?TFNmc1M0VjlvY3Q4TGpuZnppVTNyMjJLU0tsSlZMb01IQU8vd1J3eEVkcGk1?=
 =?utf-8?B?MGhOVHhVRUE2Sm1ZMWRUWGhPN0taWUpOcEdkWmYvVk82T1J3SE1sZng1MnRK?=
 =?utf-8?B?RTd0RHovVWNHNjVjbEM1eTdaNm04VTVyQzNKaFRiMHZRL2hyQ2w3ckpTaU9J?=
 =?utf-8?B?ZlZZY2VBc0VKUjlmcWF6QW1qM3M4Wk11bXN6L2FadGhPZzBPdVZKNnRDcmQx?=
 =?utf-8?B?cjdPU2Y0WDdXMFFrYUJwd0QwWTAyRmo1WlFyTlphUHVjM1hNNUpKTWRjNGU2?=
 =?utf-8?B?cjg0S1pZeEdsZ3ZGdVFpOTNibzZoR0owa2RLdTExVk54KzFlck1kNzU4WjJx?=
 =?utf-8?B?b3lPWXcweGUvYmQ4eTg0Q0lEZVo4WXRWS3JpZW9tRi9oMG1lMGNaWUJ2WkdY?=
 =?utf-8?B?T0NPSmlUNDFzUGxtd0tpUThuQTZ5dGxJSDlaOFMrdGw2OFRGdjhiLy83WWpr?=
 =?utf-8?B?NFpTUTRadmxqbGJOSjUzUFBESS8vVmNmNnAxVUVzaDBqNFo5UHJnRDVLcnpa?=
 =?utf-8?Q?tcIlKyvrJoOB0q4t0luXEyJuj?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 493cb019-9b2f-42cd-ac24-08de05913a8d
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2025 11:04:04.3592
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wdYyyBNk7AymHyoOA/ieZNBhhJY78ONFe+ERp4x2uBfVzh7xF3NrurXyEuLuCOGczhjjOCq9eMQ/0rtjMY5JgCQ9eNNsXs68XZ0089dOQzk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYRPR01MB15695
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_040423_577779_1AA17676 
X-CRM114-Status: GOOD (  26.07  )
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

Hi Philipp,

> -----Original Message-----
> From: Philipp Zabel <p.zabel@pengutronix.de>
> Sent: 07 October 2025 10:44
> Subject: Re: [PATCH 04/18] reset: rzv2h-usb2phy: Set VBENCTL register for OTG mode
> 
> Hi Biju,
> 
> On Di, 2025-10-07 at 04:02 +0000, Biju Das wrote:
> > Hi Philipp,
> >
> > Thanks for the feedback.
> >
> > > -----Original Message-----
> > > From: Philipp Zabel <p.zabel@pengutronix.de>
> > > Sent: 06 October 2025 17:32
> > > Subject: Re: [PATCH 04/18] reset: rzv2h-usb2phy: Set VBENCTL
> > > register for OTG mode
> > >
> > > On Mi, 2025-10-01 at 23:26 +0200, Tommaso Merciai wrote:
> > > > Add logic to set the VBENCTL register when the USB controller
> > > > operates in OTG mode. This is required to ensure proper USB
> > > > transceiver behavior when the device is configured as OTG.
> > > >
> > > > Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
> > >
> > > I had reservations about this driver before, because of the opaque
> > > register initialization sequence, and I was told that no, this is a reset driver alright [1].
> >
> > The latest hardware manual document about VBENCTRL register which sets source for VBUS selection.
> > s
> 
> I still can't look at this, right? The USB2PHY control register space appears to be documented in
> the "RZ/V2H Group User's Manual: Hardware (Additional document)" (under NDA).	

It is documented here[1], Page 2177, USB2PHY Control Register (USB2m_PHY_VBENCTL)

[1]
https://www.renesas.com/en/document/mah/rzg3e-group-users-manual-hardware?r=25574493


> 
> > > Can you please try to find a proper abstraction for this, because
> > > drivers/reset is not the correct place for USB OTG mode handling.
> >
> > Sorry for the confusion. This driver is not handling USB OTG mode. It
> > just configures VBENCTRL(one time setting) that selects the source for
> > VBUS_SEL. Actual USB OTG mode handling is done USB PHY driver which sets host/device mode based on
> ID detection.
> 
> So this is a mux for the VBUS_SEL signal?

Yes, Please find the bit definition.

0 VBUS_SEL 0h RW Select VBUSEN control
0b: Output PP controlled by PORTSC1 register of the Host Controller as VBUSEN.
1b: Output VBOUT controlled by VBCTRL register of the Host Controller as VBUSEN.

We have USB PHY control driver(This driver)-> USB PHY driver->| USB HOST(Generic ehci/ohci)
                                                       	  | USB function (renesas usbhs)

We plan to set 1b for this IP in this driver for OTG channel during probe.
After that using VBOUT register the PHY driver can switch between Host and device.

> 
> Why don't the USB host controller drivers parse their "dr_mode"
> property themselves and control USB2PHY VBENCTRL via the mux API, for example?

Currently for OTG channel, based ID detection IRQ, the USB PHY driver switches between host
and device. We use method2 below for the host operation.

For Host operation:
Method1: USB2m_PHY_VBENCTL.VBUS_SEL=0
or
method2: USB2m_PHY_VBENCTL.VBUS_SEL=1 and USB_HOST_VBCTRL.VBOUT = 1

For device operation:
USB2m_PHY_VBENCTL.VBUS_SEL=1 and USB_HOST_VBCTRL.VBOUT = 0

Are you suggesting to use method1(mux) for host operation?

Currently this is one time configuration. If we plan to
use mux, then it becomes dynamic.

How we can we make use of PHY driver using mux API to select the mux register(VBUS_SEL)
in USB PHY control Driver?

Cheers,
Biju





 








-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
