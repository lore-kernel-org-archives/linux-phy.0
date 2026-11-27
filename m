Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5C83606A31E
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 11:06:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ZXZVLCCt
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=e0YTMzC8Getb+O52/9N+lH8ZJipeg6qffq6mQ9NuM0M=; b=ZXZVLCCtdJyr00HAUd2TRLn1Re
	N5CAVVcQVClPEHOhiVJsjAY6lGHI28oCX+TdMapv8I/dcEd4dKDH1Hxap67p/n6trzRyiNwhO8rON
	Ip8T6qdrKq7uCDKvskbPR6JUYp7tce/SpiWTxebIXjReKpySD0C5E5OzXo6qNk6bjt9ME5jxzQ0lX
	0THr+zMdewxrMOai6VsJtyTdziltoquC+ItG2agsM6T2cNTkqbXjjBwOc5t9spZmuP9Xj/yt7thDF
	tYVhlUwOQxws/kBylT1RKqueoeU5CYbQXIYQSAusBAyjMamCDA3MIOshdCoRPMiumnANesdJ1v14S
	0rzMQ7Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWtmp-0000000Fjpg-29Nn;
	Fri, 27 Nov 2026 11:06:39 +0000
Received: from mail-koreacentralazon11023104.outbound.protection.outlook.com ([40.107.44.104] helo=SEYPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWtmk-0000000Fjna-0sWq;
	Fri, 27 Nov 2026 11:06:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lU24OW37P8oigIqEU6IQank9dJ34Y+QLys6FoI+rv2slC5IXBlP3xxVb5z/fRdGERBp8bWEk+Kz54WZti2RR/iGDUFcXhnfFk9YrYPitkt89+BWCrquUp1rqMN3fu5hhyC+LyFNfd2P+ATZJKsgCQqQpXJ2TrPw2n8IetqjCQh5rN0437zsn4qJrdnfN3nIHw+zIA8mi3X3YrwvbasNrkpQOubGH88pETN8YpdrTu+d1cpjDYmLcANlSdDLuQqbV/zptJlU/fAKp+dRX0kw20q3WSSLRnaHBp7Gr2M8NIYgMqyGXSucwSAUZM73ciDnHodg1TxYc8IPtDIxT3miIrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eXxs9F16RtEuu0k6jHE3yLvGrvYM8FFLkPv2vMXkRAw=;
 b=T/r5q1CyEDB26CIBjlLXvalQjVVgBjTKjrMgfzYOITkYf4bln5E3WQA5vJQYI9o7tUlVefIXoVcjt/wHbqsTnjRUN+NV/ckByRcbdy38CiieQ0FSQFPqO6rNCA5EGZ/D1OBXe20r2jiX5cFTpfloO2Sy2tWWlT6X5Eo58hMY3mA9b7kdn5cdV68u5fMJnCFmpkbi4lAQy1xCTisy2Z9i7o0tfYdcTny1e5PpszVEhYOtG/rOuMp+lPaPw9hfd/3nRHyUoSnVmc7iwuXXdOTAbMyEpxv7iiFm8y5TAKhUmy2ClmWUNUFbZrU1piT9Y4zPGRvny+qO+Cozjppv6XNB1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from SI2PR01CA0037.apcprd01.prod.exchangelabs.com
 (2603:1096:4:193::9) by SEZPR06MB5716.apcprd06.prod.outlook.com
 (2603:1096:101:ae::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.688.4; Fri, 27 Nov
 2026 11:06:23 +0000
Received: from SG2PEPF000B66CC.apcprd03.prod.outlook.com
 (2603:1096:4:193:cafe::2c) by SI2PR01CA0037.outlook.office365.com
 (2603:1096:4:193::9) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.662.9 via Frontend Transport; Fri, 27
 Nov 2026 11:06:23 +0000
X-MS-Exchange-Authentication-Results: mx.microsoft.com 1; spf=pass (sender IP
 is 222.71.101.198) smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 SG2PEPF000B66CC.mail.protection.outlook.com (10.167.240.25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.688.5 via Frontend Transport; Fri, 27 Nov 2026 11:06:22 +0000
Received: from gary-System-Product-Name (unknown [172.16.66.27])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id 006D2427EFCE;
	Fri, 27 Nov 2026 19:06:21 +0800 (CST)
Date: Fri, 27 Nov 2026 19:06:20 +0800
From: Gary Yang <gary.yang@cixtech.com>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fugang Duan <fugang.duan@cixtech.com>,
	Luo Liu <Luo.Liu@cixtech.com>,
	CIX Linux Kernel Upstream Group <cix-kernel-upstream@cixtech.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] phy: cix: add Sky1 USB/DP combo PHY support
Message-ID: <awlkLCRQaKtD_pIV@gary-System-Product-Name>
References: <20261102082112.2306326-1-gary.yang@cixtech.com>
 <20261117083434.3414417-1-gary.yang@cixtech.com>
 <179577695532.3421.8058975724074009117.b4-reply@b4>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <179577695532.3421.8058975724074009117.b4-reply@b4>
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SG2PEPF000B66CC:EE_|SEZPR06MB5716:EE_
X-MS-Office365-Filtering-Correlation-Id: f0ce93b2-72d3-4bf8-e50f-08df4c7678db
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|1800799024|376014|7416014|36860700016|23010399003|22082099003|18002099003|56012099006|4143699003|261026121527099003|261026140227099003|261022075727099003|261022105027099003|261028144727099003|261009223027099003|10067099003;
X-Microsoft-Antispam-Message-Info: GuOuqcA/rKPkZ3VoLcd1RqxHg0s7qI9MQEO+phZIKo4qXMtjjatom7hmSEHxH9aqSt7srjZFZXMNHqbvWeKVHo8gLpBw0p4kCEMUNX8kx/dYKXuF7oJPaaSghzWyCiPCXMbCk7/rc5Bad2jcxnhlg/tG5V52s+/6yE/K8k0r8HeVQUfQaZvyxTAAYjLCcQlQd8kSJSjY9Rml5F99b1RR3jlDIvZU6dls7OgwE69RKvVrPGA+/mjb+aIcw3xSIOjEff89seFilkARHgw37memuerVFG7ex1GNrceoBRQQ9TVr6qaJg2XD1ejTojK/MROpQoNZx8eCfzb+0GgilwIiYN50QLTwpV9YRhdWNohp95jQVg6I5O5+GI9AgYWSG/KPJw0Nhv0VEaWlJufxe1gIaS06H4BF+Gt6REqhOaddJDZe7XQnNUCz1I6sfdQxRCNGlBw1EvEVbpY3UK3WcmTpaLEosRtQQMSyPPfvqp3KMZGU29oX9QceToZhZri7HRcgpz8qwZh5BUfP5DAzVksFJSNQomzqSlP/EQynGnVY+kqLEYU/nvinU0/HDEEIlY4QDIIJo2IM5JxmQb00UpXvPVmMQ1xbmA38QSOqWn0lAldIYEijfhVuM08Yx9EnfsX0O9cZWjzKYhxSkuO4Etfxqv0rXuQVY5aOQcfc75MQpz4=
X-Forefront-Antispam-Report: CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(376014)(7416014)(36860700016)(23010399003)(22082099003)(18002099003)(56012099006)(4143699003)(261026121527099003)(261026140227099003)(261022075727099003)(261022105027099003)(261028144727099003)(261009223027099003)(10067099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: eAJYl6OQUTuhTsrtRuEYH3QeR/gx3LqIxCx8qgIWnffLks8AmW+fiUI2d/YqlYmT8Leqg+FwYcxGMyKDrtMtUsMZXgOJ+NW9/DwhbAOz1fxxItbQkTbDclxHOKtzhrjzpG5G7eWtGKDNTDzWPssY64KrO4fR92CWeLb27jLn6B1A0op2xmRl+ZCUEz1CS/JRf/FeF/uORbojDYU42+Pb+QKI+5xLd9K8QVbw54/+mZkoRhsPjlkeEbjqempzKVExRpWqHpSjFqf0cwQdDU6mNhAoJd+rSKM6y7I6MSZgQp4goICm52HsDjr4HtT0826Fv7fLYBXkcMf6BawLS4msZ0HFr1qBd2zzutmK+uLgnWqH0mYSHUi87JQ2GO4AjEFYWFD0I0uKs4E/h7YQRRoU7TKM+Vzn/AMXYHaMPoLN12YsiEriSVyyC+FiW8zRstn0
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2026 11:06:22.5732
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f0ce93b2-72d3-4bf8-e50f-08df4c7678db
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource: SG2PEPF000B66CC.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR06MB5716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_030634_248397_0EC432B5 
X-CRM114-Status: GOOD (  20.23  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMjAyNi0xMS0yNyAxNjoyNSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgoKPiBbU29t
ZSBwZW9wbGUgd2hvIHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBkb24ndCBvZnRlbiBnZXQgZW1haWwg
ZnJvbSBtYW5pQGtlcm5lbC5vcmcuIExlYXJuIHdoeSB0aGlzIGlzIGltcG9ydGFudCBhdCBodHRw
czovL2FrYS5tcy9MZWFybkFib3V0U2VuZGVySWRlbnRpZmljYXRpb24gXQo+IAo+IEVYVEVSTkFM
IEVNQUlMCj4gCj4gT24gMjAyNi0xMS0xNyAxNjozNCArMDgwMCwgR2FyeSBZYW5nIHdyb3RlOgo+
ID4gVGhpcyBzZXJpZXMgYWRkcyBzdXBwb3J0IGZvciB0aGUgVVNCL0RQIGNvbWJvIFBIWSBvZiB0
aGUgQ0lYIFNreTEgU29DLgo+ID4gRWFjaCBQSFkgaW5zdGFuY2UgZHJpdmVzIG9uZSBTdXBlclNw
ZWVkUGx1cyBVU0IgbGFuZSBhbmQgdXAgdG8gZm91cgo+ID4gRGlzcGxheVBvcnQgbGFuZXMgb2Yg
YSBVU0IgVHlwZS1DIHBvcnQuIFRoZSBVU0IgYW5kIHRoZSBEUCBjb250cm9sbGVyIGdldAo+ID4g
dGhlaXIgb3duIFBIWSB0aHJvdWdoIHRoZSBQSFlfVFlQRV9VU0IzIGFuZCBQSFlfVFlQRV9EUCBj
ZWxscy4gUGx1Zwo+ID4gb3JpZW50YXRpb24gYW5kIHRoZSBVU0IvRFAgbW9kZSBkZWNpc2lvbiBh
cmUgdGFrZW4gYnkgdGhlIFR5cGUtQyBjb25uZWN0b3IKPiA+IGRyaXZlcjsgdGhlIFBIWSBjb25z
dW1lcyB0aGVtIHRocm91Z2ggdGhlIFR5cGUtQyBzd2l0Y2ggYW5kIG11eCBBUEkuCj4gPgo+ID4g
VGhlIFVTQiBhbmQgdGhlIERpc3BsYXlQb3J0IGNvbnRyb2xsZXJzIGFuZCB0aGUgVHlwZS1DIGNv
bm5lY3RvciBhcmUgbm90Cj4gPiB5ZXQgZGVzY3JpYmVkIGluIHRoZSBDSVggZGV2aWNlIHRyZWVz
LiBUaGUgZ3JhcGggbGlua3MgYW5kIHRoZSBjb25zdW1lcnMKPiA+IHdpbGwgYmUgYWRkZWQgdG9n
ZXRoZXIgd2l0aCB0aGVtLgo+ID4KPiA+IFBhdGNoIDEgYWRkcyB0aGUgYmluZGluZyBhbmQgcGF0
Y2ggMiB0aGUgZHJpdmVyLiBUaGUgU29DIGFuZCBib2FyZCBub2Rlcwo+ID4gYXJlIHNlbnQgc2Vw
YXJhdGVseSBhcyBhIGZvbGxvdy11cCwgc2luY2UgdGhleSBnbyB0aHJvdWdoIHRoZSBTb0MgdHJl
ZS4KPiA+Cj4gPiBQYXRjaCAyIGJ1aWxkcyBvbiBMdW8gTGl1J3MgIkFkZCBTa3kxIERpc3BsYXlQ
b3J0IFBIWSBzdXBwb3J0IiBzZXJpZXM6Cj4gPgo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
bGludXgtcGh5LzIwMjYxMTAyMDMwNDI1LjE5NTc1ODUtMS1MdW8uTGl1QGNpeHRlY2guY29tCj4g
Pgo+ID4gVGhhdCBzZXJpZXMgY3JlYXRlcyBkcml2ZXJzL3BoeS9jaXgvIHRvZ2V0aGVyIHdpdGgg
dGhlIFBIWV9DSVhfRFAgS2NvbmZpZwo+ID4gc3ltYm9sIGFuZCB0aGUgQ0lYIFNLWTEgRElTUExB
WVBPUlQgUEhZIERSSVZFUiBNQUlOVEFJTkVSUyBlbnRyeS4gVGhpcwo+ID4gc2VyaWVzIGFkZHMg
dGhlIFBIWV9DSVhfVVNCRFAgc3ltYm9sIGFuZCB0aGUgbmV3IGJpbmRpbmcsIGFuZCByZW5hbWVz
IHRoZQo+ID4gZW50cnkgdG8gQ0lYIFNLWTEgUEhZIERSSVZFUlMuIEl0IHNob3VsZCBiZSBhcHBs
aWVkIG9uIHRvcCBvZiBMdW8ncyBzZXJpZXMKPiA+IHRvIGF2b2lkIGNvbmZsaWN0cyBpbiBkcml2
ZXJzL3BoeS9jaXgve0tjb25maWcsTWFrZWZpbGV9IGFuZCBNQUlOVEFJTkVSUy4KPiA+Cj4gCj4g
UGxlYXNlIGRvIG5vdCBzZW5kIG5ldyB2ZXJzaW9ucyBhcyBhIHJlcGx5IHRvIHRoZSBwcmV2aW91
cyB2ZXJzaW9uLiBJdCBtYWtlcyBpdAo+IGhhcmRlciB0byBzcG90IG5ldyByZXZpc2lvbnMuCj4g
CgpTb3JyeSwgSSBtYWRlIGEgc3R1cGlkICBtaXN0YWtlLiBBcyBzb29uIGFzIEkgcmVhbGl6ZWQg
aXQsIApJIHNlbnQgb3V0IGEgUkVTRU5EIHBhdGNoc2V0IGltbWVkaWF0ZWx5IOKAlCB3b3VsZCB5
b3UgbWluZCByZXZpZXdpbmcgaXQ/Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2MTEx
ODAxNTE0MC4zNTU5MzMxLTEtZ2FyeS55YW5nQGNpeHRlY2guY29tLwoKQmVzdCBSZWdhcmRzCkdh
cnkKCj4gLSBNYW5pCj4gCj4gCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
