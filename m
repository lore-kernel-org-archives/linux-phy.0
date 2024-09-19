Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 646A5CF3944
	for <linux-phy@archiver.kernel.org>; Thu, 19 Sep 2024 14:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e7FTXkifrMkzIiBvdmtSqTkn2NWD1EhvPnGplED3OpY=; b=mVreFLSpK0ZDaj
	2Upqx1tAhpbcKvVA8no0x9RKNvVHw8aZyDrgFtroo/PJvy/i9wOBBAo+MF1v78oM7S5xIOegJF7p8
	SDDgqy68HlpJfzUv7OAwx7rYu3t1Rx3mtfRtkP6GuHF2JjkxovpClk+tWtOfG9jFGGg3JmeFyGKsH
	wOMGcwMdR4SHIEpIhVMi63haxbMy80UQAeyznYRdvXwMT8hUhHKv9PMO2ZvZRkzmsuNlCuBxo7BQX
	07BuPiaf7HFXWin9JaL5q0J/+MxPnHLftClUeIQPmS9CRNwoWCwWuDRZRyds5j/U3aaCQ2Y1cNKzs
	iXY+BbS63KvS5uasjXJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srHvf-0000000AQBE-4BLG;
	Thu, 19 Sep 2024 14:14:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1srHvc-0000000AQAq-2sQ2
	for linux-phy@lists.infradead.org;
	Thu, 19 Sep 2024 14:14:42 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48J6ui9d024651;
	Thu, 19 Sep 2024 14:14:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nb+2JDRR/I2mRpqjg1Du/MQPJZAJ7gRJ9cmY1nhoiC0=; b=MpkRbTIe1KYoNk6G
	l+OvWA1NytZxLP35PZEjl99uCCEkkMiNbnGgeJNUwzS9Q1yAmrsi4jwTaO1hotWf
	gYcOKPy6VwA05nfrQ/yDRY//EPCO7Ka99z0gN/yQpwuC2RFI7e/H0foRoPcQEpf8
	Yem9T/9WSnjKlPdDhpi6aC/8LyMiSE3rbGudA6EV2ZcSpCm35lcDxLngw3MG+PtQ
	rnTlutEf4myt00w4+j16pHvRP44fpNRAfsllDZlcxDCxdLJm/gfqZLfNFJzY4mNV
	n4eXJ7tPR01vwLZPhDoLdVnKkFrDnlV71k7mWERZBdQ0aIw7Pzbuc/82vvx3bLOj
	P+NmgQ==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41n4hhdknw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Sep 2024 14:14:15 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 48JEEDbB029992
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Sep 2024 14:14:13 GMT
Received: from [10.253.37.179] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Thu, 19 Sep
 2024 07:14:08 -0700
Message-ID: <6f1118eb-89cf-4fd4-a35d-e8b98b0b7a8d@quicinc.com>
Date: Thu, 19 Sep 2024 22:14:06 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/5] Add support for PCIe3 on x1e80100
To: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>,
        <manivannan.sadhasivam@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh@kernel.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>, <abel.vesa@linaro.org>,
        <quic_msarkar@quicinc.com>, <quic_devipriy@quicinc.com>
CC: <dmitry.baryshkov@linaro.org>, <kw@linux.com>, <lpieralisi@kernel.org>,
        <neil.armstrong@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-clk@vger.kernel.org>
References: <20240913083724.1217691-1-quic_qianyu@quicinc.com>
 <36bd9f69-e263-08a1-af07-45185ea03671@quicinc.com>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <36bd9f69-e263-08a1-af07-45185ea03671@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: _mdC1IH3zYXwxrLCQBtGo18Z4GNH8Uo0
X-Proofpoint-ORIG-GUID: _mdC1IH3zYXwxrLCQBtGo18Z4GNH8Uo0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 adultscore=0 impostorscore=0 phishscore=0 priorityscore=1501 clxscore=1015
 mlxlogscore=999 mlxscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2408220000
 definitions=main-2409190093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240919_071440_872482_F6609D52 
X-CRM114-Status: GOOD (  22.87  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Ck9uIDkvMTQvMjAyNCAxMTo1OSBBTSwgS3Jpc2huYSBDaGFpdGFueWEgQ2h1bmRydSB3cm90ZToK
PiBIaSBxaWFuZywKPgo+IEluIG5leHQgc2VyaWVzIGNhbiB5b3UgYWRkIGxvZ2ljIGluIGNvbnRy
b2xsZXIgZHJpdmVyCj4gdG8gaGF2ZSBuZXcgb3BzIGZvciB0aGlzIHgxZTgwMTAwIHNpbmNlIHRo
aXMgaGFyZHdhcmUKPiBoYXMgc21tdXYzIHN1cHBvcnQgYnV0IGN1cnJlbnRseSB0aGUgb3BzXzFf
OV8wIG9wcyB3aGljaAo+IGlzIGJlaW5nIHVzZWQgaGFzIGNvbmZpZ3VyaW5nIGJkZiB0byBzaWQg
dGFibGUgd2hpY2ggd2lsbAo+IGJlIG5vdCBwcmVzZW50IGZvciB0aGlzIGRldmljZXMuCj4KU3Vy
ZSwgYmRmMnNpZCBtYXAgaXMgbm90IHN1cHBvcnRlZCBhbmQgcmVxdWlyZWQgc2luY2Ugd2UgdXNl
IHNtbXV2MyBmb3IKcGNpZSBvbiB4MWU4MDEwMC4gQ2FuIEkgYWRkIGEgbmV3IG9wcyB3aGljaCBp
cyBzYW1lIGFzIG9wc18xXzlfMCBiYXNpY2FsbHkKYW5kIG9ubHkgY29uZmlnX3NpZCBjYWxsYmFj
ayBpcyByZW1vdmVkLiBPciBhZGQgYSBuZXcgZmxhZyB0byBkZXRlcm1pbmUgaWYKd2UgbmVlZCB0
byBjb25maWcgYmRmMnNpZCBtYXAgbGlrZSBub19sMHMuCgpIaSBNYW5pLCB3aGF0IGRvIHlvdSB0
aGluayBhYm91dCB0aGlzPwoKVGhhbmtzLApRaWFuZwo+Cj4gLSBLcmlzaG5hIENoYWl0YW55YS4K
Pgo+IE9uIDkvMTMvMjAyNCAyOjA3IFBNLCBRaWFuZyBZdSB3cm90ZToKPj4gVGhpcyBzZXJpZXMg
YWRkIHN1cHBvcnQgZm9yIFBDSWUzIG9uIHgxZTgwMTAwLgo+Pgo+PiBQQ0llMyBuZWVkcyBhZGRp
dGlvbmFsIHNldCBvZiBjbG9ja3MsIHJlZ3VsYXRvcnMgYW5kIG5ldyBzZXQgb2YgUENJZSBRTVAK
Pj4gUEhZIGNvbmZpZ3VyYXRpb24gY29tcGFyZSBvdGhlciBQQ0llIGluc3RhbmNlcyBvbiB4MWU4
MDEwMC4gSGVuY2UgYWRkCj4+IHJlcXVpcmVkIHJlc291cmNlIGNvbmZpZ3VyYXRpb24gYW5kIHVz
YWdlIGZvciBQQ0llMy4KPj4KPj4gdjItPnYxOgo+PiAxLiBTcXVhc2ggW1BBVENIIDEvOF0sIFtQ
QVRDSCAyLzhdLFtQQVRDSCAzLzhdIGludG8gb25lIHBhdGNoIGFuZCAKPj4gbWFrZSB0aGUKPj4g
wqDCoMKgIGluZGVudGF0aW9uIGNvbnNpc3RlbnQuCj4+IDIuIFB1dCBkdHMgcGF0Y2ggYXQgdGhl
IGVuZCBvZiB0aGUgcGF0Y2hzZXQuCj4+IDMuIFB1dCBkdC1iaW5kaW5nIHBhdGNoIGF0IHRoZSBm
aXJzdCBvZiB0aGUgcGF0Y2hzZXQuCj4+IDQuIEFkZCBhIG5ldyBwYXRjaCB3aGVyZSBvcHAtdGFi
bGUgaXMgYWRkZWQgaW4gZHQtYmluZGluZyB0byBhdm9pZCBkdGJzCj4+IMKgwqDCoCBjaGVja2lu
ZyBlcnJvci4KPj4gNS4gUmVtb3ZlIEdDQ19QQ0lFXzNfQVVYX0NMSywgUlBNSF9DWE9fQ0xLLCBw
dXQgaW4gCj4+IFRDU1JfUENJRV84TF9DTEtSRUZfRU4KPj4gwqDCoMKgIGFzIHJlZi4KPj4gNi4g
UmVtb3ZlIGxhbmVfYnJvYWRjYXN0aW5nLgo+PiA3LiBBZGQgNjQgYml0IGJhciwgUmVtb3ZlIEdD
Q19QQ0lFXzNfUElQRV9DTEtfU1JDLAo+PiDCoMKgwqAgR0NDX0NGR19OT0NfUENJRV9BTk9DX1NP
VVRIX0FIQl9DTEsgaXMgY2hhbmdlZCB0bwo+PiDCoMKgwqAgR0NDX0NGR19OT0NfUENJRV9BTk9D
X05PUlRIX0FIQl9DTEsuCj4+IDguIEFkZCBSZXZpZXdlZC1ieSB0YWcuCj4+IDkuIFJlbW92ZSBb
UEFUQ0ggNy84XSwgW1BBVENIIDgvOF0uCj4+Cj4+IFFpYW5nIFl1ICg1KToKPj4gwqDCoCBkdC1i
aW5kaW5nczogcGh5OiBxY29tLHNjODI4MHhwLXFtcC1wY2llLXBoeTogRG9jdW1lbnQgdGhlIFgx
RTgwMTAwCj4+IMKgwqDCoMKgIFFNUCBQQ0llIFBIWSBHZW40IHg4Cj4+IMKgwqAgZHQtYmluZGlu
Z3M6IFBDSTogcWNvbTogQWRkIE9QUCB0YWJsZSBmb3IgWDFFODAxMDAKPj4gwqDCoCBwaHk6IHFj
b206IHFtcDogQWRkIHBoeSByZWdpc3RlciBhbmQgY2xrIHNldHRpbmcgZm9yIHgxZTgwMTAwIFBD
SWUzCj4+IMKgwqAgY2xrOiBxY29tOiBnY2MteDFlODAxMDA6IEZpeCBoYWx0X2NoZWNrIGZvciBw
aXBlZGl2MiBjbG9ja3MKPj4gwqDCoCBhcm02NDogZHRzOiBxY29tOiB4MWU4MDEwMDogQWRkIHN1
cHBvcnQgZm9yIFBDSWUzIG9uIHgxZTgwMTAwCj4+Cj4+IMKgIC4uLi9iaW5kaW5ncy9wY2kvcWNv
bSxwY2llLXgxZTgwMTAwLnlhbWzCoMKgwqDCoMKgIHzCoMKgIDQgKwo+PiDCoCAuLi4vcGh5L3Fj
b20sc2M4MjgweHAtcW1wLXBjaWUtcGh5LnlhbWzCoMKgwqDCoMKgwqAgfMKgwqAgMyArCj4+IMKg
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS94MWU4MDEwMC5kdHNpwqDCoMKgwqDCoMKgwqAgfCAy
MDIgKysrKysrKysrKysrKysrKy0KPj4gwqAgZHJpdmVycy9jbGsvcWNvbS9nY2MteDFlODAxMDAu
Y8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDEwICstCj4+IMKgIGRyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmPCoMKgwqDCoMKgIHwgMjExICsrKysrKysrKysr
KysrKysrKwo+PiDCoCAuLi4vcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjcy1wY2llLXY2XzMwLmjC
oMKgwqAgfMKgIDI1ICsrKwo+PiDCoCBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAt
cGNzLXY2XzMwLmggfMKgIDE5ICsrCj4+IMKgIDcgZmlsZXMgY2hhbmdlZCwgNDY4IGluc2VydGlv
bnMoKyksIDYgZGVsZXRpb25zKC0pCj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3Bo
eS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNzLXBjaWUtdjZfMzAuaAo+PiDCoCBjcmVhdGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjcy12Nl8zMC5oCj4+
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
