Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D4BDC9EC6D
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jan 2026 10:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MiOOxehBReSiYbS6l8rhA8gGRIoUtDe6il/oqIcvxAg=; b=C2Gue281OouYoo
	fNRg7G+u04/0927r3ne6uKn4UXq6bFiL+7smY+kWRJo+Ju55MwsbgSH9TqYx13VuzvH58giv19Oe/
	WIu1QokGRoTENDOlF9YKSu0YhTR5R1xgdKfCkNWqY5cwRJuMTuIpkqDeFW+c0vR7BlAGoTQcJx7M7
	LIuLQ+G3G8TeyCUIdQYeguGraFl/WShmYzDffOWC8ik/AMKq338+9eIAlJHT7VQCgVUu1/rkZnuWS
	zSJbFUe0Bn81IxoXJIir2cwGOVCKF3zmK0zpjtY0e0I2h7Iqpat6jjIE0riqaPBwi8QkFmb+qevd8
	1/LFT9xsDeG86gRx0XKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfFe0-00000005D3O-2h5t;
	Mon, 12 Jan 2026 10:59:32 +0000
Received: from mail-norwayeastazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c20f::7] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfFdy-00000005D2z-1FmY;
	Mon, 12 Jan 2026 10:59:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=prqSR6regcLGluGKS9z/BtmAyg7OnvfCvxDZ6Z6wfhmAlazKNfqODDreUjI1DKQaeZYVtV17WqUm1aBAwwUeJ6WgVpCkvTAlxtcTkBVStgI+huf/Y8GlpLBAi6Kd88B4CIKUwEp4m5LPO9BesnWFgP2vSd23ayWH3NGeaFwX5ZcaUO7Ub8aXzRSE5c8xVif3hFWlNsVmIObu12khfHIJ3U8kys+3rthTakTXdud/UWIa5ONqz0OtV2DRxvIcyk/qfghb5XA6qsQ51CRkapOyJ3iA3g0gq/VrA8/HMWPhQkU1cTHg/oJzUnoTffkaLNh0VnoxQ7P5yYn+QrxC3SMftg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Aa5v9RCeX5gHVCfH5bN87TaRxORBjug0gy3Jp6/WlkQ=;
 b=vw08gTV2QxtNDs9xbfRlzHhID57P5FDMCQMyHEiLnInTmyxCKnPPYDgkL14SRat4X8Y/ONljz3PHk2+HRlG2KX6pFqu9EQf5+egsVDR5LmE5HK1AHkKT37xmRLCUdeXnN0Njgcyl98uohTqwS7HRtl0vpVHQJfSkDNwoUD80SO9+5xLdm94rJqknpjw+NOn3KW8GTVmfu8y+IfCW19MzAGz1RaSxl8e+sR/HIKA+i0fvdarDdzaLAe34siW8W26Zcei/jbqbc4nif9bqIRA3IPwwBbr8tSfeDVpI4Kt59dgBsBdwawgG7h5ntjOcs3Q4KdCVUA7kHRROA0+UZFlrtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Aa5v9RCeX5gHVCfH5bN87TaRxORBjug0gy3Jp6/WlkQ=;
 b=kvw0G1RwZJ+5mmkwuVXvDgQchL8mNWoHGSQ+iImNZWPaOWnZZoNOZcP72Elsc3Fxs+VUIUVGAdLUGQ9ByoKVZnUsNov79ABtfVkkw7FgT1bTvTH6tVeUTxGa8oN9v99NpTh6tBxHhv3ODlhdV0xfg4G3ephVP1v15bh7rrM4lpzLpyiU0fbjbseO4huAcXT3J1s1TEPrBUi5xTQ3opdqBqisUSiAFX530a2gEuUVKL9mq7uRQiT+zwNUW2024cES2JbsrFKi2fEA0HlMnPTuYp3lRBKv6TqUh84oFXChkw9k+bB3ViLJitTKkQwDzWVni54MKBgqaUvT2kDLXcAckw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com (2603:10a6:10:2e1::11)
 by GV2PR04MB11634.eurprd04.prod.outlook.com (2603:10a6:150:2cb::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Mon, 12 Jan
 2026 10:59:25 +0000
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::c67b:71cd:6338:9dce]) by DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::c67b:71cd:6338:9dce%5]) with mapi id 15.20.9478.004; Mon, 12 Jan 2026
 10:59:25 +0000
Date: Mon, 12 Jan 2026 18:52:10 +0800
From: Xu Yang <xu.yang_2@nxp.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, shawnguo@kernel.org, 
	kernel@pengutronix.de, festevam@gmail.com, jun.li@nxp.com, Frank.Li@nxp.com, 
	linux-phy@lists.infradead.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] phy: fsl-imx8mq-usb: add debugfs to access control
 register
Message-ID: <q5h62kleg6uqzbnde3qsrjokhtiorrubatrkf5dopj3q7bhtwm@scv2qudg7feh>
References: <20251224111716.2925597-1-xu.yang_2@nxp.com>
 <9870fd41-bafb-4ab0-91ff-8fcea53ca0a9@lunn.ch>
 <7bbvfiy5wceantklz6lav5rwak53yhasfvzddtsirqorcylrf6@rbcrocqftznj>
 <0b61c962-9aa1-4275-a40a-220f6d7f1210@lunn.ch>
 <6j2yhzqt6x3k55vrqjrol2k2qrhqmobvwjedkujyet4loyajxa@vy55aajfuvxk>
Content-Disposition: inline
In-Reply-To: <6j2yhzqt6x3k55vrqjrol2k2qrhqmobvwjedkujyet4loyajxa@vy55aajfuvxk>
X-ClientProxiedBy: SI2P153CA0029.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:190::16) To DU2PR04MB8822.eurprd04.prod.outlook.com
 (2603:10a6:10:2e1::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8822:EE_|GV2PR04MB11634:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f10855a-ccea-434f-8c6c-08de51c9a5fd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|52116014|376014|7416014|1800799024|366016|19092799006|38350700014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?blA0aE5rY0tyeHhqNEhadEZuQ1piNytOOGVRdlFMdjVKd0ovclZNaDdnQjV3?=
 =?utf-8?B?S0pjNjVDZUhrbnhXUnVjdTlHY2dNZzAwQXBQNFUzNHdDOFlzb0FERlRCNDB0?=
 =?utf-8?B?RzhhLytaZzJ6TGdSSHQwR3RmTC83a25TUGF1c1pOTngrRTl3b0ZEYm1HS081?=
 =?utf-8?B?YWpUb2dUS0sxYm85eGpqKzY0bDNTRDVHMlBPRUdHbWxsbDRYZUh2ejVvMU50?=
 =?utf-8?B?ZzZMeTk2bDBEelY3a2RCVldaYVFTU1dnY1U1QXdJWEo1amtJY1JXdFBxMFRS?=
 =?utf-8?B?aS9KSXl3a2xPTW9ONTJnTmd5eG1UdG1rcGpLVzNuSWd2Vzk4bmROR3g5QUR3?=
 =?utf-8?B?UnV6VXpPNWt5ZWRhSGVVeURDRzFoeUtrVExEVUJPMzJ0T3krMnVRVnliS1I0?=
 =?utf-8?B?K2JWWHNjajNQbWhsbWM5ejBvMEdPREUwQnZsR1hnSVRkb3lFb3ZyVjRVT1RQ?=
 =?utf-8?B?TFROcEdvYkJacFVvT2ZFbzZyZGR0UXgrNHVVQWlkVk9Ob0NrRXJ5SDFRamlK?=
 =?utf-8?B?eU10Qi9LampaTVBYTGYvQWJwUUZLYUdXNlkxNStmVzJzRVN1Z0JzclRXdWt2?=
 =?utf-8?B?TWNhYkxDeEhOaU1oZno1SWdkZFNqWFZ6MkQ5NmhtK0srQXVic1BBLzlkYVI1?=
 =?utf-8?B?b2JGSUxmQWVhTEswRFB1WWJJZ24wTnBSd1VXaUNDYmp0dHFIZldTRmVXVVFt?=
 =?utf-8?B?MlhhSjJaK2JXVVo3YkZzSHNyVVd3bDlOdCtUVTVoVXpWQ24zaHNTUVd6dTl6?=
 =?utf-8?B?QS9WYnlKNGRvekhkUTZJajh5QXZJYWN2R1U2RVd4eHlPL1RzLzFnVENFdFBr?=
 =?utf-8?B?d0FNK3BuUHpBN0dITmpBc0x6b3BIKzd5S1YvQjhweFBBZHFEdEVMK0IyY1Ri?=
 =?utf-8?B?WWVCR3NtK2RiRG1DQWpjZ0hSdTBFWlJPbVRUc1U1UkpqQ2pucXY2QnR0MkR4?=
 =?utf-8?B?YittKzFndzVWNll1RHpqUi9qOSs4eFA5U3ZDRXlHSmlubXhSeFc3OU1QVTZV?=
 =?utf-8?B?WVNhVUY0OTZzNUJ1WmpNbHF2dXI2amptODdHeEdXdlY5T0Q5TmdSQnpRUmo4?=
 =?utf-8?B?SVRQbVB0SEJ0SVI5ZEVZRUVOanU4Nm9BUFVDdUJLaUwrUGVNTitiOUFXQmpI?=
 =?utf-8?B?MXFiS2kzZkt4RW14NHhFeUVqM28reUs5WWo3WXNReFAzMnhSY0ZWMVp2MVlh?=
 =?utf-8?B?TTNvdGNCMURkSTJtcUg1c2YxUFZiWVJQNXpJNzY3VmJybnBxQVZMZERKZGxR?=
 =?utf-8?B?VkRLRjY4UVJ6aUFOWjBmR3NTSG1sTWplVXZ4OW1aeTFHUi9yK0FHbVJ3ekJB?=
 =?utf-8?B?aFpDbTlLNGVtcnRsUUZSK1JMSkJCaWpWUjJzRUdaUmJnYngzSy9uZzgyVEFS?=
 =?utf-8?B?aFlJcVZKbzFXekw0a2kxR1drZDVrMjBRTVpTdTFYNmJtWHJTUWRlL3VTMGVh?=
 =?utf-8?B?K25WQTU5S3hDVE1iUXpjTGdxUktCempOcU9PM0tBOGFxVEJ3RE0wK0M4dHkw?=
 =?utf-8?B?Wi9heGxlMkxuaTJrNEVGeEtpRSs0ZjZsakUvckVoL1ppanREam90TGNVQUxM?=
 =?utf-8?B?T2N0VStyREVLSzQwaGVRazVMRmlUMkVBS0F3eVNNb2lVODlYU25GelVqbytI?=
 =?utf-8?B?M0ZORGl0QXNFOElFSTdhVjNQUXUwdjZVWFUvaTcxcEhkOURNV2dmTkY3Wm9G?=
 =?utf-8?B?K1BEdHYxQmVXV3NRQVZ3Q1dEYTB1YzEwaEtOZlV3cXE0amNaQ2I4ZmpFa21I?=
 =?utf-8?B?U0lYTUgrNEkrN05MWjlzejdaTThEb25mNmtRNU9hN09LU09hcThNUUlESkF3?=
 =?utf-8?B?dTZCaDNnTEx5R05WSUY0VzFGeUVVUk50eFkveXZLajNUOVJOL0p4WXNvZWQ4?=
 =?utf-8?B?bEFSZzZFVk5kWlpKUTR1QWV4QUVuTlJmcFNraVFnamtHY1RoS1RKSVd4dGVJ?=
 =?utf-8?B?dUMwd1FYcEVmV2VHWjNLYmlqV2JWTUdJOVVPc2hyNGFNQ1dzM2NSbVNqMFBp?=
 =?utf-8?B?bnZiM2gyQTZIdWhER0swZW11OWE3WEd2dkRHdXhUWGNncG1hRGhyWXFUeW8y?=
 =?utf-8?Q?EZqD8U?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8822.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(52116014)(376014)(7416014)(1800799024)(366016)(19092799006)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WTg2RVJzekZSb1lQZWtQRWJNZUEwZG5Fczg1WkRBem1KVGhjdGpGWEduY2l3?=
 =?utf-8?B?dFAyZlNGcVVaOGhTMWw5R3QyQllZSkI1WlhCdnZyekM4c3p2TFBKL2hvY1Nv?=
 =?utf-8?B?OEVBbjhCWUdYR0tYWWFzOWRVckVKODRQSWw4UW5pMU5Qa0xiQTdoc0loazZJ?=
 =?utf-8?B?SEVCWDd6OEJ0VS9EZ05wRnp6NThIYmNwYWkyOGorendONGxmY1hNNnFHeXkx?=
 =?utf-8?B?RXJmTGIvS0J2aDFwY0xBdVp0Zzg3b2Yva2lJTVV6cXkwL3pIek5IdkRRK0Zu?=
 =?utf-8?B?SEpaUFVERVFWZmhGOTR0eThyVlB0YU03TWE0YSthK1NtbDMrSHVQRldvb3FM?=
 =?utf-8?B?MW1kdUNxRGM4aG5WNkxvYy9na3paS2oydElndURMbkNzeXJSMWp3TWV5Y2ha?=
 =?utf-8?B?N2tYcXpwbTlrV00xUkQ4ZlFETGFWTDIrOU0yczhtSmI1WTUvNkVQV3dHUFpZ?=
 =?utf-8?B?cTE2SGxXaHY1L1ppeUdOeU1jeWtpa2ZEOFRJbnpFTVh0SjI2Tm5wb015M2Zy?=
 =?utf-8?B?TWZXV0k4cFVJa0ozUmloUkYwR0VLM0lkVkpVbzJ3K0crN0VORzM5UUJXajRP?=
 =?utf-8?B?ZitPYjZLTzJrQUs5SnFMeDhxbFo2RjdKLzduS3ZpTHNBU0daOWtUL1NJMTFz?=
 =?utf-8?B?cmtDdUd6ZG1KSGtTTmxYNkVvNHN6bWFRMk5tZ3F6WlNCNUtvNmZRODQwSXRR?=
 =?utf-8?B?SFRiODZSSnVubXJ6VXF3eVNRcFJsRUJuOHE4VExveFhSN0g4aDV3S3VGVlRP?=
 =?utf-8?B?TGtRN2xreDJqUmtlVEsrVlZjWS8xcDV2VUd3di9Fdmw1blFCNmVYdS9qRVZo?=
 =?utf-8?B?d1hlais4ZWdXdHRvVnJ6WlJ3b1hEbVVvcFdoemVlVVg3dGhRd0V0L1lxQnNp?=
 =?utf-8?B?WXozeTU3eGFYekxvQ21mUHVQOW5halhVL1k0bCtMancvOFdmSTJaQzZ6aGVj?=
 =?utf-8?B?UmwxSFhETW9CbjJGZThrOWgzUHNIK3FmMk9QZy9jaWtBMy9ZR3Q1NXJOTG1H?=
 =?utf-8?B?SkkvbUsrZnhZRUZmSGdqNzB1VjFkaENQYkJJVkJXTDlYUWpSTjd6b3lpV255?=
 =?utf-8?B?aW4xV2ZidXdZUnlCZGg3SWhTb2ZkMGEweXlDZmJSOHBFUXVPUWVOTnhrQzQy?=
 =?utf-8?B?TmlmOFdLWVhIU3d6ZjNqNWdNU1VZd2F5eGhQWnpoTUtsMzdXeVBRRDJvb0tX?=
 =?utf-8?B?c1pPOEszRmhXS3FHUWpIcUZXN3BhTUNTVHlvN3YzdGdsRVJOVkg2bmFzSlli?=
 =?utf-8?B?UUtZRndXUnF5QnhnenVMY0Z0WTBNRnl6YjBKc0x1UGNPNnl2QjUwdjZVL21v?=
 =?utf-8?B?bTJoSDI1TUV0YTRiWkhWL3doTjJ6cVE4YVFRdVowWGwrdVVteUxsUVNYTjB4?=
 =?utf-8?B?SFV4eng1MFJDTzB1a2VaNFd6QmJWRVdHNkh4eERTQTlxRnErb0FGaE9tRFNi?=
 =?utf-8?B?aWZRZjY2YnI1NzFkZFZYUmZIaHBQamYreGpQZ3paeEJ1MFZZVWx2ZXpzenA1?=
 =?utf-8?B?N3AxK2pKNndCK3BoNzRHdVRFYkk5RUs5aGVYM3ZpY2NCa3VJek8reVd6bS9q?=
 =?utf-8?B?V25sOVB5SHZpTFRDOXhCK3FVaElRSytDdWwrbXMvMldMMHNtNzlnZlN6czZi?=
 =?utf-8?B?RnlmT1dwU2VLZFJzZjlvbkdUalBSWUxtSmlDcVhVK3ZNMGQyNUM3a1VySUR4?=
 =?utf-8?B?MnhHSnFMa3dSUHBPb3YzTDZselc1Z2loSmQxSjh6Q2FpQStSR3UrRmdoQ0p6?=
 =?utf-8?B?Qy9TVVk1UDNDWWVBNjBPZ2l4K3NUSW9laUQvcExyOE82M2c5d0xhYU10S29M?=
 =?utf-8?B?bW9STlhVQ2xPUXJuZExGdHAzVWtDWjZRc1I0MG54SGo2K1dXRnpXZEZVRE9U?=
 =?utf-8?B?bFFLYlJrcysrN240em5RY1hLR2JnejR6UXA0YWNwalZIYzlLZFJWY1BCYjlB?=
 =?utf-8?B?WXJvd2RiOUVZQ1RHZ09WR2JtN0VNWW4wRjRPSHM1N0xiTjQrM3NicDJSb09q?=
 =?utf-8?B?TkhiZVVjVys5cjRJcWZ4YUVXUkUyS1JBbXM0QUFBNTRNb1JXSklNUHhKWlBr?=
 =?utf-8?B?YktIdTN5SlJJRk40Rk43NWFQSHRwRDR2WDNYdk5GN1JBdlJWbmpucEE0TXd1?=
 =?utf-8?B?VzVSY3FYVkFRbWVBYm1RNnRWOXY1UXhDVHZpaUVRUUFieXpzbHlBMmZ2b0w4?=
 =?utf-8?B?ZS9EMitpM2dwR3pNSktoMWJBNjM3bDJzOGNkYkh3VFhKeGNjRm9OWnhzY2Yv?=
 =?utf-8?B?L2ZNNG9GTHYvcmoxRXhQUitMemlDRTUwd0ltYVdGd2VFWjA5T1M2aFNHZ0J4?=
 =?utf-8?B?RnpBclNXMHE5VWgrVy9wcDNoQjJZNFZlVlRIRVlCbzVMQmp5TCtIQT09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f10855a-ccea-434f-8c6c-08de51c9a5fd
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8822.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2026 10:59:25.0988
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Go7HHtSVNGCdKEr2+zvRFoq7QojOqSQ44Dl1uzdIWSK+MOdgfN1d6ASQ3+YzcAfMLk4f+5/6TmNGbW9+9QnRSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR04MB11634
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_025930_377555_44F9E022 
X-CRM114-Status: GOOD (  34.51  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBKYW4gMTIsIDIwMjYgYXQgMDY6MzU6MzlQTSArMDgwMCwgWHUgWWFuZyB3cm90ZToK
PiBPbiBUaHUsIEphbiAwOCwgMjAyNiBhdCAwMzo0NzoxN1BNICswMTAwLCBBbmRyZXcgTHVubiB3
cm90ZToKPiA+IE9uIFRodSwgSmFuIDA4LCAyMDI2IGF0IDA0OjIyOjI0UE0gKzA4MDAsIFh1IFlh
bmcgd3JvdGU6Cj4gPiA+IE9uIFdlZCwgRGVjIDI0LCAyMDI1IGF0IDAyOjUxOjExUE0gKzAxMDAs
IEFuZHJldyBMdW5uIHdyb3RlOgo+ID4gPiA+IE9uIFdlZCwgRGVjIDI0LCAyMDI1IGF0IDA3OjE3
OjE2UE0gKzA4MDAsIFh1IFlhbmcgd3JvdGU6Cj4gPiA+ID4gPiBUaGUgQ1IgcG9ydCBpcyBhIHNp
bXBsZSAxNi1iaXQgZGF0YS9hZGRyZXNzIHBhcmFsbGVsIHBvcnQgdGhhdCBpcwo+ID4gPiA+ID4g
cHJvdmlkZWQgZm9yIG9uLWNoaXAgYWNjZXNzIHRvIHRoZSBjb250cm9sIHJlZ2lzdGVycyBpbnNp
ZGUgdGhlCj4gPiA+ID4gPiBVU0IgMy4wIGZlbXRvUEhZLiBXaGlsZSBhY2Nlc3MgdG8gdGhlc2Ug
cmVnaXN0ZXJzIGlzIG5vdCByZXF1aXJlZAo+ID4gPiA+ID4gZm9yIG5vcm1hbCBQSFkgb3BlcmF0
aW9uLCB0aGlzIGludGVyZmFjZSBlbmFibGVzIHlvdSB0byBhY2Nlc3MKPiA+ID4gPiA+IHNvbWUg
b2YgdGhlIFBIWeKAmXMgZGlhZ25vc3RpYyBmZWF0dXJlcyBkdXJpbmcgbm9ybWFsIG9wZXJhdGlv
biBvcgo+ID4gPiA+ID4gdG8gb3ZlcnJpZGUgc29tZSBiYXNpYyBQSFkgY29udHJvbCBzaWduYWxz
Lgo+ID4gPiA+ID4gCj4gPiA+ID4gPiAzIGRlYnVnZnMgZmlsZXMgYXJlIGNyZWF0ZWQgdG8gcmVh
ZCBhbmQgd3JpdGUgY29udHJvbCByZWdpc3RlcnMsCj4gPiA+ID4gPiBhbGwgdXNlIGhleGFkZWNp
bWFsIGZvcm1hdDoKPiA+ID4gPiA+IGN0cmxfcmVnX2Jhc2U6IHRoZSByZWdpc3RlciBvZmZzZXQg
dG8gd3JpdGUsIG9yIHRoZSBzdGFydCBvZmZzZXQKPiA+ID4gPiA+ICAgICAgICAgICAgICAgIHRv
IHJlYWQuCj4gPiA+ID4gPiBjdHJsX3JlZ19jb3VudDogaG93IG1hbnkgY29udGludW91cyByZWdp
c3RlcnMgdG8gYmUgcmVhZC4KPiA+ID4gPiA+IGN0cmxfcmVnX3ZhbHVlOiByZWFkIHRvIHNob3cg
dGhlIGNvbnRpbnVvdXMgcmVnaXN0ZXJzIHZhbHVlIGZyb20KPiA+ID4gPiA+ICAgICAgICAgICAg
ICAgICB0aGUgb2Zmc2V0IGluIGN0cmxfcmVnX2Jhc2UsIHRvIGN0cmxfcmVnX2Jhc2UKPiA+ID4g
PiA+ICAgICAgICAgICAgICAgICArIGN0cmxfcmVnX2NvdW50IC0gMSwgb25lIGxpbmUgZm9yIG9u
ZSByZWdpc3Rlci4KPiA+ID4gPiA+ICAgICAgICAgICAgICAgICB3aGVuIHdyaXRlLCBvdmVycmlk
ZSB0aGUgcmVnaXN0ZXIgYXQgY3RybF9yZWdfYmFzZSwKPiA+ID4gPiA+ICAgICAgICAgICAgICAg
ICBvbmUgdGltZSBjYW4gb25seSBjaGFuZ2Ugb25lIDE2Yml0cyByZWdpc3Rlci4KPiA+ID4gPiAK
PiA+ID4gPiBBcmUgdGhlIHJlZ2lzdGVycyBvcGVubHkgZG9jdW1lbnRlZCBzb21ld2hlcmU/IENv
dWxkIHlvdSBpbmNsdWRlIGEKPiA+ID4gPiBsaW5rIGluIHRoZSBjb21taXQgbWVzc2FnZS4KPiA+
ID4gCj4gPiA+IFdlIGludGVncmF0ZSBhIFNOUFMgUEhZIGluIFNvYy4gU28gdGhlIHJlZ2lzdGVy
cyBhcmUgZG9jdW1lbnRlZAo+ID4gPiBpbiBTTlBTIGRvYy4gQW55d2F5LCBJIGNhbiBhZGQgYSBs
aW5rIGZvciByZWZlcmVuY2UuCj4gPiAKPiA+IEh1bW0sIHNvIHRoZSByZWdpc3RlcnMgYXJlIGRl
ZmluZWQgYnkgYSBTeW5vcHN5cyBkYXRhYm9vaz8KPiA+IAo+ID4gU2hvdWxkbid0IHRoaXMgcGF0
Y2ggYmUgc3BsaXQgaW50byB0d28/IFRoZSBhY2Nlc3MgbWVjaGFuaXNtIHRvIHRoZQo+ID4gcmVn
aXN0ZXJzIGlzIHNwZWNpZmljIHRvIHRoZSBpbXg4bXEuIEJ1dCB0aGUgcmVnaXN0ZXJzIHRoZW1z
ZWx2ZXMKPiA+IHNob3VsZCBiZSBwYXJ0IG9mIHRoZSBnZW5lcmljIFNOUFMgUEhZIGRyaXZlciB3
aGljaCBzaG91bGQgYmUgc2hhcmVkCj4gPiBieSBhbGwgZGV2aWNlcyB1c2luZyB0aGlzIGxpY2Vu
c2VkIElQPwo+IAo+IFRoaXMgcGF0Y2ggbWFpbmx5IGNvbnRhaW4gdGhlIGFjY2VzcyBtZWNoYW5p
c20gb24gaS5NWCBTb2MsIHNvOgo+ICAtIGlteDhtcV9waHlfY3RybF9yZWdfYWRkcigpCj4gIC0g
aW14OG1xX3BoeV9jdHJsX3JlZ19yZWFkKCkKPiAgLSBpbXg4bXFfcGh5X2N0cmxfcmVnX3dyaXRl
KCkKPiAKPiBhbmQgZGVidWdmcyBmdW5jdGlvbiB0byBzaG93IHRoZW06Cj4gIC0gY3RybF9yZWdf
dmFsdWVfc2hvdygpCj4gIC0gY3RybF9yZWdfdmFsdWVfd3JpdGUoKQo+IAo+IERvIHlvdSBtZWFu
IHNwbGl0IGFib3ZlIGludG8gMiBwYXRjaGVzPyBQdXQgdGhlIGZpcnN0IHBhcnQgaW50bwo+IHBo
eS1mc2wtaW14OG1xLXVzYi5jIGFuZCB0aGUgc2Vjb25kIHBhcnQgaW50byBhIFNOUFMgZ2VuZXJp
YyBkcml2ZXI/Cj4gCj4gSWYgc28sIGRvIHlvdSBrbm93IHdoaWNoIGdlbmVyaWMgZHJpdmVyIHNo
b3VsZCBJIHVzZT8gSWYgbm8gc3VjaAo+IGRyaXZlciwgY2FuIEkgcHV0IHRoZW0gaW4gcGh5LWZz
bC1pbXg4bXEtdXNiLmMgYXQgdGhlIGJlZ2lubmluZz8KCkp1c3QgZm91bmQgdGhlIGFjY2VzcyBt
ZWNoYW5pc20gcGFydCBpcyBhbHNvIGRlc2NyaWJlZCBpbiBTTlBTIGRhdGFib290LgpTbyB0aGUg
d2hvbGUgdGhpbmcgc2hvdWxkIGJlIHRoZSBwYXJ0IG9mIHRoZSBnZW5lcmljIFNOUFMgUEhZLgoK
VGhhbmtzLApYdSBZYW5nCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
