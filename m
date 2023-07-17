Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1B2FC001B0
	for <linux-phy@archiver.kernel.org>; Mon, 17 Jul 2023 08:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=50mLc6xu12j7dDiLCIMlrxVUUhiDtTW8kswMjeZJj08=; b=yg0wFqz5NofejZ
	A1FGavwImaN0BJSFdgSHzrdfQ5RiFgOXS1O4okJ0XUOdjZnoLERKUW2dSZeEpHH4/tpe4XKxiZppz
	d2lALTyeYvNThYD4/GO4z8AUWnsNtbTmyPQhB7xI3lq9uXlkZu+0uoHee2r1ygrPizQ15NfsBgwxo
	yP0YFrtOtnXorck35DL3DT1vIIuuEtyfHjzGAMOwdLk3ejXxqGV9odCjzEuIhARxcpgFG5KfaNaux
	+31VH1ZFgnFo0/d3ZiPZ2N32L5qi1PmWiK9NXa4vISQ/VV1S1gjwmdp/bHKPwUfBWN4cz1SQ0pC4N
	SM/uH+he5Sf423Lv8Mbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLJE7-003Oow-16;
	Mon, 17 Jul 2023 08:05:04 +0000
Received: from mail-dbaeur03on20619.outbound.protection.outlook.com ([2a01:111:f400:fe1a::619] helo=EUR03-DBA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLJDr-003OkR-1m;
	Mon, 17 Jul 2023 08:05:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SoFPMjL4znpgk3DKkqD/OBYusQMI7SB+Tw0BsZb/RlF1HMj6Jv8Fkdy4ChH5VYtF63U4+mrsxnqmBq2hV77Mm5HgDwtmmtpoBlJ4lR+Uv0eLuX05UOnGHFvZxQx+DTbtpv2DAgSE8qwCZIUtCH5d2oWhIW2Fi+bKIF39CDFBp9JRWQuGKfo5YxYJ8jfsQClC0JG0unJRoMcMCfSBIaqmEYDk/vRtIka2x+XYrIB0T0JIWIHX1fFJfBlnH8ZUq3A2Ec+xSg40xXlR5pA1p+0OA2DD5uMawDDm0bpWgrd96/mZfMuFwc5+W+HGjomm+pm1O3HA4xJe+moQi437EgMm5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N70qR7/+sUxx0rPRMt6agsbSolM4bHlO9MnxMZ0T+lE=;
 b=U0N3khTBwOpK6NxgFuqu6JEIy/014RqZCFUjqq2Xpc1J+OrLX1j5kJDgqk7rc4czCAbNku7yJ/rDVPTw0hz4XWKjN6S/w97RyiLwZT65VJBSV1Funx1OpLFU9y0B7qykJj8G/Ehd8XVRmavQZZ1FsVQ37s++adk1AeOfR8SIFun7v54owgfkS86vX4gWl/RbATN7emZAxZpOK440xhujU8zd+z24WKy98FQXvG+zg+kulcgf49bU6FnUiOb7C9b5XEvyTlzqpqDCrE9moY0kFOIYgHpkybYPrEULGjqdf/zO0dbjWGp1UXfLhxEnku32MxY/+khO6E612uk7fWkysw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N70qR7/+sUxx0rPRMt6agsbSolM4bHlO9MnxMZ0T+lE=;
 b=VA0ybkAr6sWui2GaVr1yIS2RQ5QNMb0Ds+gvnszKbsHy+o+1oUZ7YzzxgJ48pXCsdPA3XL5UPzDNvPFkT/ggZP4VReugPsHlHnG5X6fXa+h/gR+ylYERi/AGDRP2+aXLblaXCxJqzRSyRy/GoRrXcsUE8uh4jvWUINIGAdYETJU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB9448.eurprd04.prod.outlook.com (2603:10a6:102:2b1::21)
 by DB9PR04MB9234.eurprd04.prod.outlook.com (2603:10a6:10:372::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Mon, 17 Jul
 2023 08:04:39 +0000
Received: from PAXPR04MB9448.eurprd04.prod.outlook.com
 ([fe80::3505:c499:96d4:1429]) by PAXPR04MB9448.eurprd04.prod.outlook.com
 ([fe80::3505:c499:96d4:1429%4]) with mapi id 15.20.6588.031; Mon, 17 Jul 2023
 08:04:39 +0000
From: Sandor Yu <Sandor.yu@nxp.com>
To: andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	airlied@gmail.com,
	daniel@ffwll.ch,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	festevam@gmail.com,
	vkoul@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: kernel@pengutronix.de,
	linux-imx@nxp.com,
	Sandor.yu@nxp.com,
	oliver.brown@nxp.com,
	alexander.stein@ew.tq-group.com,
	sam@ravnborg.org
Subject: [PATCH v7 0/7] Initial support Cadence MHDP8501(HDMI/DP) for i.MX8MQ
Date: Mon, 17 Jul 2023 16:03:46 +0800
Message-Id: <cover.1689580812.git.Sandor.yu@nxp.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: SI2P153CA0030.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:190::15) To PAXPR04MB9448.eurprd04.prod.outlook.com
 (2603:10a6:102:2b1::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9448:EE_|DB9PR04MB9234:EE_
X-MS-Office365-Filtering-Correlation-Id: 77ca9b17-3d42-4011-e701-08db869c7840
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ygUmhunsCMUFPHZz8A7ETBS177gdQA+2HrKUSmbMPQef7tmOQBNghWfa++rFsXfslJCHfY+eR3JmdWbFb4l0/5UPSLYupB99x8zxY69MtFFyQ9rcqWHWPWpH8ky3y1JzAFE9kS7vz7ZwkSIGMp5kzzYOXf1JoqxKk4b5wgDapFdZJuygPiWqmrw1AFsDP87xazymVobuvQ3cGfRhzkhLdM7AfDwc2hsagE9IKqFSFaQVjJRVwfkZsuw3ttQU2Y7PwWexPEqoY3OVXt9Vghus8hn9u+cwvQkeycE+FEkyFQjEg+mWYOFcT5Z1rIYHx4cBMvytEd/kjb8EY0ifm4Bu9p+gUbCjrX6k5Ym8+++Z2a3xzLTQp4UmN6UUBuslJcsJytOLW8uvUFCibsYh92XDuDsZJff4Q41PtmKbYYmxxrCaD+BxktE80sZNrindly/wSXDs9yu11CHRd+Trvdd/6cHKrLjYQUU6hHUJQC6ltafrLOhxlBj2iK/MLWgVGYC712/D4F/L+6LwULP4sPsyfw2zg3la2V62CWKYwTR3OKNIc46rCcIglkPrHy4fq0qU4B5O8w+A/OIgl2hbnLqJh/10jNqqZHQWUG60HqKPTkkG1ptNqaKY48wD/cPoJwzs
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9448.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(396003)(376002)(366004)(39860400002)(346002)(451199021)(6666004)(6486002)(52116002)(921005)(478600001)(7416002)(5660300002)(8936002)(8676002)(2906002)(36756003)(86362001)(4326008)(38350700002)(38100700002)(66946007)(66476007)(66556008)(41300700001)(316002)(6506007)(26005)(83380400001)(186003)(2616005)(6512007)(966005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MENJZU9NS1Z6OXRhRDcxczJUTnQ2TjNsTzFDeDREcnE5MVYySnBqWVUrMGoy?=
 =?utf-8?B?all5Q1B4ZkFZQWdPNzlDZ2w4eHdCQUZTQ2hSZVJDUnhNSTY0NzZrc09hMUV1?=
 =?utf-8?B?S0MwWUszNzQ3T2pSdDJ5U2JRd3QwSkFqaVBDY1UxY2FEckZNN0toYyt1R0pa?=
 =?utf-8?B?aDU3dXp4RXhGcnBEdTBzZ1FycFQrYnJPWkYzMFowT01CTDJLZ3hpTnVHeHZk?=
 =?utf-8?B?bjdwQ1V0WnZhVkRJbXFMUExLampwc0pacWNNUkpMQXd0YnJwVHJqUjlQdjND?=
 =?utf-8?B?R21qRUJDVXhyai91aitEL2MxdVNiSlVoamJrbFNBQlJwODhSSDByaUtBRThx?=
 =?utf-8?B?d082SlZUd1R3ZE8zWVM2RldUcUVuRkFyWTY5Uk1MWmcvaE9xZitEUXZVT0Z3?=
 =?utf-8?B?UVBIZXZpN05sSndkU29qdU5EdzQwR0x6Rm9nbGRHQUJEaCtQbyt3aHlSMEFR?=
 =?utf-8?B?Y1FpelYybSt3N1NiUXBMSi9GY0VYUmpOUktIWktvam42NUxUMEpSVnYxYyti?=
 =?utf-8?B?MFFKSWZ6RnFKd29JZ1pyYVR0YVM0UWhiN0hDLzFDNDJiRk5zNVJ1TFhyL3FO?=
 =?utf-8?B?MnlHUm1wVVVqQ2JCOXFXTFFCMVhTT2pRY3pUeENFNkQ4RTRNS3Y5Y0xQSXlq?=
 =?utf-8?B?dXZEeFhucHdsMnRaQ0hGTHdpZ1VCK0hCcHZxYjYxRWNVeDVVb2RxRVJXK1F3?=
 =?utf-8?B?QkZXRlVvWUNjQWt2V1BxMStsYmtjWEluMkVnMnVYNVNFbHVna29rQ0FnT2xT?=
 =?utf-8?B?cmV3Nnc5NnFBQ01EVTJ1bTVVcGRJVjFqeVZzV1JVZENraVZpNmlHMkFQT3dh?=
 =?utf-8?B?Y1pyK05SYXRFT0RwcmVUVjRjS0hXUTd1dVZmd2dyVmh4ZlFpWEo5UDBlNlZY?=
 =?utf-8?B?L01WUTlaUW84azd0S1hzRlFaSlF3TEpsV2hhLzEzdjdlOU0xanJuUVNSa0dX?=
 =?utf-8?B?eDM4Ymo2Nkx4djYzMmMwQXpjWElVTjVDY3JxM2VIQXVZQ3hhL0pPdk9WeHhV?=
 =?utf-8?B?S3loeXNURDRoN1pvVE5OR2FnajJuM3l3bEtnR1BjQ2lTVnpkYUFKcngzK0Jx?=
 =?utf-8?B?OXlJRG1hWXZrZm5BUlcrbTZtWGZnZm9UY01nRVd2cGJOMmFwVFkrQTVnY3Av?=
 =?utf-8?B?M3FVWFljb2lZd3N4VFc2dnNod3dGVk5YRlZZcWNXWkNST2Vub1pHN3lqRUJP?=
 =?utf-8?B?b1hsRHNBOUdqei9TRzgvdmZ3Qnh1MHVQNmJadWlEWk9jTEEraXdUYlpRUzc2?=
 =?utf-8?B?NXNBOGo1OWdBQk5NbldSNmxJOEZyY2RmOHFrdTdURXV5S0NVdmdQa0tmV1lo?=
 =?utf-8?B?dDVmd3RUUEpxeEtIK3VXenpOMU5Hc3FPWUlTbnE4OThIL0dqV0tTamo2L3ha?=
 =?utf-8?B?aXlnUWlWZ3gxYUhoOHpKc1VYdklZSXhwQkd5WDZtYXlpTTl1NnpnOVBhTlJZ?=
 =?utf-8?B?K2JVUG5RVm12V3VOaFcxTGs4eTR5bENVVjBLOFhYMzVMQ3YxTk5mWXB5dmxL?=
 =?utf-8?B?Wjh5V3NXaVoydTd5OTgyNURiT1JzazVENWhDUlhpMjlXOVZaZDNDMVBkNEov?=
 =?utf-8?B?akJrR1dPUlR4NXQvZDFwdEFxazVWWEZHNXBacU9pemJNZ2RWNjNUdDZCbUVI?=
 =?utf-8?B?Ry9ia0twVnYxa1hiUldoeWxSMk1Lb3ZobWpKZ3YxbjViVUZNV2ZXSHpEMDRY?=
 =?utf-8?B?K0JmNkxHRkE1RmpOdDJzVE9mZFBTekV2ZzZFbGFqS1RXS0tKd1AwYUJtQWp5?=
 =?utf-8?B?U1pTM25EUURIby9aM1FXK3IvZG03S0RsT1BXSnNQcVdObjZHRGprMVdPc3Z4?=
 =?utf-8?B?OXpNMFZuRDczTjUxMFFMQlYrQ2lkZ0VUclplUDdxLyt3UHc3VjFzVGNxTGRH?=
 =?utf-8?B?djVFZi84V2llMWdHSkpCYjRtdGYwVkdQRFlOVERUU2RENWZNUGFsNEdhMzcv?=
 =?utf-8?B?T3pnc3o2cEp4ZDVJdTFMMW1HMEF5aUNiN1JvWkR3bGY4UzB2VzRMcThrTDhR?=
 =?utf-8?B?cGJDMk5EUWVBOHY0alI4TFV5LzczekxGTjcrVFJ1MGtpWjVqL29VUld2M21G?=
 =?utf-8?B?L0ZmanpQWEQ5dE5Lazh5U3FCMEVObEszS2ZmcnA0RTJ0eHZnSnU1TXMwSUZw?=
 =?utf-8?Q?zf668rg6b2DSqDY79LE4UZCTC?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77ca9b17-3d42-4011-e701-08db869c7840
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9448.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2023 08:04:39.5265
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UPm7or/JSs4kun/yQNvhAPNy3zdrcFjT1K92QPra3iCDLtO7o+1zNvttNHMbZbZZzDKgvL/1Eo37cAeKwzy99A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9234
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230717_010447_593466_4A08133C 
X-CRM114-Status: GOOD (  16.28  )
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

VGhlIHBhdGNoIHNldCBpbml0aWFsIHN1cHBvcnQgQ2FkZW5jZSBNSERQODUwMShIRE1JL0RQKSBE
Uk0gYnJpZGdlCmRyaXZlcnMgYW5kIENhZGVuY2UgSERQLVRYIFBIWShIRE1JL0RQKSBkcml2ZXJz
IGZvciBGcmVlc2NhbGUgaS5NWDhNUS4KClRoZSBwYXRjaCBzZXQgY29tcG9zZSBvZiBEUk0gYnJp
ZGdlIGRyaXZlcnMgYW5kIFBIWSBkcml2ZXJzLgoKQm90aCBvZiB0aGVtIG5lZWQgdGhlIGZvbGxv
d2VkIHR3byBwYXRjaGVzIHRvIHBhc3MgYnVpbGQuCiAgZHJtOiBicmlkZ2U6IENhZGVuY2U6IGNv
bnZlcnQgbWFpbGJveCBmdW5jdGlvbnMgdG8gbWFjcm8gZnVuY3Rpb25zCiAgcGh5OiBBZGQgSERN
SSBjb25maWd1cmF0aW9uIG9wdGlvbnMKCkRSTSBicmlkZ2VzIGRyaXZlciBwYXRjaGVzOgogIGR0
LWJpbmRpbmdzOiBkaXNwbGF5OiBicmlkZ2U6IEFkZCBDYWRlbmNlIE1IRFA4NTAKICBkcm06IGJy
aWRnZTogQ2FkZW5jZTogQWRkIE1IRFA4NTAxIERQL0hETUkgZHJpdmVyCgpQSFkgZHJpdmVyIHBh
dGNoZXM6CiAgZHQtYmluZGluZ3M6IHBoeTogQWRkIEZyZWVzY2FsZSBpTVg4TVEgRFAgYW5kIEhE
TUkgUEhZCiAgcGh5OiBmcmVlc2NhbGU6IEFkZCBEaXNwbGF5UG9ydCBQSFkgZHJpdmVyIGZvciBp
Lk1YOE1RCiAgcGh5OiBmcmVlc2NhbGU6IEFkZCBIRE1JIFBIWSBkcml2ZXIgZm9yIGkuTVg4TVEK
CnY2LT52NzoKTUhEUDg1MDEgSERNSS9EUDoKLSBDb21iaW5lIEhETUkgYW5kIERQIGRyaXZlciBp
bnRvIG9uZSBtaGRwODUwMSBkcml2ZXIuCiAgVXNlIHRoZSBjb25uZWN0b3IgdHlwZSB0byBsb2Fk
IHRoZSBjb3JyZXNwb25kaW5nIGZ1bmN0aW9ucy4KLSBSZW1vdmUgY29ubmVjdG9yIGluaXQgZnVu
Y3Rpb25zLgotIEFkZCA8bGludXgvaGRtaS5oPiBpbiBwaHlfaGRtaS5oIHRvIHJldXNlIOKAmGVu
dW0gaGRtaV9jb2xvcnNwYWNl4oCZLgoKSERNSS9EUCBQSFk6Ci0gTG93ZXJjYXNlIGhleCB2YWx1
ZXMKLSBGaXggcGFyYW1ldGVycyBpbmRlbnQgaXNzdWUgb24gc29tZSBmdW5jdGlvbnMKLSBSZXBs
YWNlIOKAmHVkZWxheeKAmSB3aXRoIOKAmHVzbGVlcF9yYW5nZeKAmQoKdjUtPnY2OgpIRE1JL0RQ
IGJyaWRnZSBkcml2ZXIKLSA4NTAxIGlzIHRoZSBwYXJ0IG51bWJlciBvZiBDYWRlbmNlIE1IRFAg
b24gaS5NWDhNUS4KICBVc2UgTUhEUDg1MDEgdG8gbmFtZSBoZG1pL2RwIGRyaXZlcnMgYW5kIGZp
bGVzLiAKLSBBZGQgY29tcGF0aWJsZSAiZnNsLGlteDhtcS1taGRwODUwMS1kcCIgZm9yIGkuTVg4
TVEgRFAgZHJpdmVyCi0gQWRkIGNvbXBhdGlibGUgImZzbCxpbXg4bXEtbWhkcDg1MDEtaGRtaSIg
Zm9yIGkuTVg4TVEgSERNSSBkcml2ZXIKLSBDb21iaW5lIEhETUkgYW5kIERQIGR0LWJpbmRpbmdz
IGludG8gb25lIGZpbGUgY2RucyxtaGRwODUwMS55YW1sCi0gRml4IEhETUkgc2NyYW1ibGluZyBp
cyBub3QgZW5hYmxlIGlzc3VlIHdoZW4gZHJpdmVyIHdvcmtpbmcgaW4gNEtwNjAKICBtb2RlLgot
IEFkZCBIRE1JL0RQIFBIWSBBUEkgbWFpbGJveCBwcm90ZWN0LgoKSERNSS9EUCBQSFkgZHJpdmVy
OgotIFJlbmFtZSBEUCBhbmQgSERNSSBQSFkgZmlsZXMgYW5kIG1vdmUgdG8gZm9sZGVyIHBoeS9m
cmVlc2NhbGUvCi0gUmVtb3ZlIHByb3BlcnRpZXMgbnVtX2xhbmVzIGFuZCBsaW5rX3JhdGUgZnJv
bSBEUCBQSFkgZHJpdmVyLgotIENvbWJpbmUgSERNSSBhbmQgRFAgZHQtYmluZGluZ3MgaW50byBv
bmUgZmlsZSBmc2wsaW14OG1xLWRwLWhkbWktcGh5LnlhbWwKLSBVcGRhdGUgY29tcGF0aWJsZSBz
dHJpbmcgdG8gImZzbCxpbXg4bXEtZHAtcGh5Ii4KLSBVcGRhdGUgY29tcGF0aWJsZSBzdHJpbmcg
dG8gImZzbCxpbXg4bXEtaGRtaS1waHkiLgoKdjQtPnY1OgotIERyb3AgImNsayIgc3VmZml4IGlu
IGNsb2NrIG5hbWUuCi0gQWRkIG91dHB1dCBwb3J0IHByb3BlcnR5IGluIHRoZSBleGFtcGxlIG9m
IGhkbWkvZHAuCgp2My0+djQ6CmR0LWJpbmRpbmdzOgotIENvcnJlY3QgZHQtYmluZGluZ3MgY29k
aW5nIHN0eWxlIGFuZCBhZGRyZXNzIHJldmlldyBjb21tZW50cy4KLSBBZGQgYXBiX2NsayBkZXNj
cmlwdGlvbi4KLSBBZGQgb3V0cHV0IHBvcnQgZm9yIEhETUkvRFAgY29ubmVjdG9yClBIWToKLSBB
bHBoYWJldGljYWxseSBzb3J0ZWQgaW4gS2NvbmZpZyBhbmQgTWFrZWZpbGUgZm9yIERQIGFuZCBI
RE1JIFBIWQotIFJlbW92ZSB1bnVzZWQgcmVnaXN0ZXJzIGRlZmluZSBmcm9tIEhETUkgYW5kIERQ
IFBIWSBkcml2ZXJzLgotIE1vcmUgZGVzY3JpcHRpb24gaW4gcGh5X2hkbWkuaC4KLSBBZGQgYXBi
X2NsayB0byBIRE1JIGFuZCBEUCBwaHkgZHJpdmVyLgpIRE1JL0RQOgotIFVzZSBnZXRfdW5hbGln
bmVkX2xlMzIoKSB0byByZXBsYWNlIGhhcmRjb2RlIHR5cGUgY29udmVyc2lvbgogIGluIEhETUkg
QVZJIGluZm9mcmFtZSBkYXRhIGZpbGwgZnVuY3Rpb24uCi0gQWRkIG1haWxib3ggbXV0ZXggbG9j
ayBpbiBIRE1JL0RQIGRyaXZlciBmb3IgcGh5IGZ1bmN0aW9ucwogIHRvIHJlc2xvdmUgcmFjZSBj
b25kaXRpb25zIGJldHdlZW4gSERNSS9EUCBhbmQgUEhZIGRyaXZlcnMuCi0gQWRkIGFwYl9jbGsg
dG8gYm90aCBIRE1JIGFuZCBEUCBkcml2ZXIuCi0gUmVuYW1lIHNvbWUgZnVuY3Rpb24gbmFtZXMg
YW5kIGFkZCBwcmVmaXggd2l0aCAiY2Ruc19oZG1pL2NkbnNfZHAiLgotIFJlbW92ZSBicGMgMTIg
YW5kIDE2IG9wdGlvbmFsIHRoYXQgbm90IHN1cHBvcnRlZC4KCnYyLT52MzoKQWRkcmVzcyBjb21t
ZW50cyBmb3IgZHQtYmluZGluZ3MgZmlsZXMuCi0gQ29ycmVjdCBkdHMtYmluZGluZ3MgZmlsZSBu
YW1lcyAKICBSZW5hbWUgcGh5LWNhZGVuY2UtaGRwdHgtZHAueWFtbCB0byBjZG5zLG1oZHAtaW14
OG1xLWRwLnlhbWwKICBSZW5hbWUgcGh5LWNhZGVuY2UtaGRwdHgtaGRtaS55YW1sIHRvIGNkbnMs
bWhkcC1pbXg4bXEtaGRtaS55YW1sCi0gRHJvcCByZWR1bmRhbnQgd29yZHMgYW5kIGRlc2NyaXB0
aW9ucy4KLSBDb3JyZWN0IGhkbWkvZHAgbm9kZSBuYW1lLgoKdjIgaXMgYSBjb21wbGV0ZWx5IGRp
ZmZlcmVudCB2ZXJzaW9uIGNvbXBhcmVkIHRvIHYxLgpQcmV2aW91cyB2MSBjYW4gYmUgYXZhaWxh
YmxlIGhlcmUgWzFdLgoKdjEtPnYyOgotIFJldXNlIENhZGVuY2UgbWFpbGJveCBhY2Nlc3MgZnVu
Y3Rpb25zIGZyb20gbWhkcDg1NDYgaW5zdGVhZCBvZgogIHJvY2tjaGlwIERQLgotIE1haWxib3gg
YWNjZXNzIGZ1bmN0aW9ucyBiZSBjb252ZXJ0IHRvIG1hcmNvIGZ1bmN0aW9ucwogIHRoYXQgd2ls
bCBiZSByZWZlcmVuY2VkIGJ5IEhEUC1UWCBQSFkoSERNSS9EUCkgZHJpdmVyIHRvby4KLSBQbGFp
biBicmlkZ2UgaW5zdGVhZCBvZiBjb21wb25lbnQgZHJpdmVyLgotIFN0YW5kYWxvbmUgQ2FkZW5j
ZSBIRFAtVFggUEhZKEhETUkvRFApIGRyaXZlci4KLSBBdWRpbyBkcml2ZXIgYXJlIHJlbW92ZWQg
ZnJvbSB0aGUgcGF0Y2ggc2V0LCBpdCB3aWxsIGJlIGFkZCBpbiBhbm90aGVyCiAgcGF0Y2ggc2V0
IGxhdGVyLgoKWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1y
b2NrY2hpcC9jb3Zlci9jb3Zlci4xNTkwOTgyODgxLmdpdC5TYW5kb3IueXVAbnhwLmNvbS8KClNh
bmRvciBZdSAoNyk6CiAgZHJtOiBicmlkZ2U6IENhZGVuY2U6IGNvbnZlcnQgbWFpbGJveCBmdW5j
dGlvbnMgdG8gbWFjcm8gZnVuY3Rpb25zCiAgcGh5OiBBZGQgSERNSSBjb25maWd1cmF0aW9uIG9w
dGlvbnMKICBkdC1iaW5kaW5nczogZGlzcGxheTogYnJpZGdlOiBBZGQgQ2FkZW5jZSBNSERQODUw
CiAgZHJtOiBicmlkZ2U6IENhZGVuY2U6IEFkZCBNSERQODUwMSBEUC9IRE1JIGRyaXZlcgogIGR0
LWJpbmRpbmdzOiBwaHk6IEFkZCBGcmVlc2NhbGUgaU1YOE1RIERQIGFuZCBIRE1JIFBIWQogIHBo
eTogZnJlZXNjYWxlOiBBZGQgRGlzcGxheVBvcnQgUEhZIGRyaXZlciBmb3IgaS5NWDhNUQogIHBo
eTogZnJlZXNjYWxlOiBBZGQgSERNSSBQSFkgZHJpdmVyIGZvciBpLk1YOE1RCgogLi4uL2Rpc3Bs
YXkvYnJpZGdlL2NkbnMsbWhkcDg1MDEueWFtbCAgICAgICAgIHwgMTA1ICsrCiAuLi4vYmluZGlu
Z3MvcGh5L2ZzbCxpbXg4bXEtZHAtaGRtaS1waHkueWFtbCAgfCAgNTMgKwogZHJpdmVycy9ncHUv
ZHJtL2JyaWRnZS9jYWRlbmNlL0tjb25maWcgICAgICAgIHwgIDE1ICsKIGRyaXZlcnMvZ3B1L2Ry
bS9icmlkZ2UvY2FkZW5jZS9NYWtlZmlsZSAgICAgICB8ICAgMiArCiAuLi4vZHJtL2JyaWRnZS9j
YWRlbmNlL2NkbnMtbWhkcDg1MDEtY29yZS5jICAgfCAzMTMgKysrKysrCiAuLi4vZHJtL2JyaWRn
ZS9jYWRlbmNlL2NkbnMtbWhkcDg1MDEtY29yZS5oICAgfCA0MTAgKysrKysrKysKIC4uLi9ncHUv
ZHJtL2JyaWRnZS9jYWRlbmNlL2NkbnMtbWhkcDg1MDEtZHAuYyB8IDc4MCArKysrKysrKysrKysr
KysKIC4uLi9kcm0vYnJpZGdlL2NhZGVuY2UvY2Rucy1taGRwODUwMS1oZG1pLmMgICB8IDY3NCAr
KysrKysrKysrKysrCiAuLi4vZHJtL2JyaWRnZS9jYWRlbmNlL2NkbnMtbWhkcDg1NDYtY29yZS5j
ICAgfCAxOTUgKy0tLQogLi4uL2RybS9icmlkZ2UvY2FkZW5jZS9jZG5zLW1oZHA4NTQ2LWNvcmUu
aCAgIHwgICAxIC0KIGRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9LY29uZmlnICAgICAgICAgICAgICAg
ICB8ICAxOCArCiBkcml2ZXJzL3BoeS9mcmVlc2NhbGUvTWFrZWZpbGUgICAgICAgICAgICAgICAg
fCAgIDIgKwogZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OG1xLWRwLmMgICAgIHwg
Njk4ICsrKysrKysrKysrKysrCiBkcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4bXEt
aGRtaS5jICAgfCA5MDcgKysrKysrKysrKysrKysrKysrCiBpbmNsdWRlL2RybS9icmlkZ2UvY2Ru
cy1taGRwLW1haWxib3guaCAgICAgICAgfCAyNDAgKysrKysKIGluY2x1ZGUvbGludXgvcGh5L3Bo
eS1oZG1pLmggICAgICAgICAgICAgICAgICB8ICAyNCArCiBpbmNsdWRlL2xpbnV4L3BoeS9waHku
aCAgICAgICAgICAgICAgICAgICAgICAgfCAgIDcgKy0KIDE3IGZpbGVzIGNoYW5nZWQsIDQyNDgg
aW5zZXJ0aW9ucygrKSwgMTk2IGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9jZG5zLG1oZHA4NTAx
LnlhbWwKIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGh5L2ZzbCxpbXg4bXEtZHAtaGRtaS1waHkueWFtbAogY3JlYXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvZ3B1L2RybS9icmlkZ2UvY2FkZW5jZS9jZG5zLW1oZHA4NTAxLWNvcmUuYwogY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvY2FkZW5jZS9jZG5zLW1oZHA4NTAx
LWNvcmUuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvY2FkZW5j
ZS9jZG5zLW1oZHA4NTAxLWRwLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0v
YnJpZGdlL2NhZGVuY2UvY2Rucy1taGRwODUwMS1oZG1pLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4bXEtZHAuYwogY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS1oZG1pLmMKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBpbmNsdWRlL2RybS9icmlkZ2UvY2Rucy1taGRwLW1haWxib3guaAogY3JlYXRl
IG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvcGh5L3BoeS1oZG1pLmgKCi0tIAoyLjM0LjEKCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
