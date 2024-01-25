Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E17AC46CD2
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jan 2024 03:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HjkUDGR139Vb0N+0JVpfCtM2rc6M5kKXfOCrlWN8kuw=; b=zddwtD4BojhgbM
	z/9MHEHDbmCAIQbWuhq3aoNqQm+2UsOX3WseJn3vEzgyw99Bth0f0fHFHvTloYU4eOtCwmwj2Nb8Q
	GWIzu8DS7Om5t16/w6lCC83Dm/DeWrtAIhRLOCYBuu+6Rchk4F7KxcVvmeETZl0hTf8hTbb8ZsKdM
	9rZN+DS1UtuQ9lljvbY0wPg+S9iqhDGeLhKq3T/bZimYM9u7LTea7Azqugo45pgX3/do8F7URd9u+
	q6Q5W7VEsh98sHm0T9jtcUkpJKkyyGnpc54L2xASn7/ea2vytSFJ267V28RfWmVqYO7h1wmk5yIAE
	++u+fwRKChBYGCKfyi0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSpyF-005xDw-2G;
	Thu, 25 Jan 2024 03:00:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSpyC-005xDL-04
	for linux-phy@lists.infradead.org;
	Thu, 25 Jan 2024 03:00:01 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 40P2ktLR015835;
	Thu, 25 Jan 2024 02:59:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=P0bdtGkJXJ10AYPIH4XmGaFlRnPnceLPtZRfk+9/dvs=; b=Qb
	Md3ANxdwA9ak8p0Fu2rcnbgQOx8Dyt5tksj9xzYsGUWsrCdFLfP4FBDzAFCUBb3C
	UqPEjpvEzHl2oS8paF6RMCWgNxXuA7NQmqejbjjMFKbYcqN+U/UBb4Cg9U2G9bR6
	EFvAS/MHiZCSwSAqMPYctJnM8wfBkW9pg62Q5Hkjrxg6ggX0QVqqzgJBFzzHFo+j
	fy4GWrU9erx1ZbvUbpXH6eXyGs9PjJj9IvnsLTyCnkkGMGG3L3K77cY6tJ3cJpgd
	nZzvo/fmi4n8+DygC6DJU+GCbHj5G8Kb4k4xlFPe4kLpVEfI7lomBQEQTqMVG+ld
	npC0LNOtqDpfXa/L1GaQ==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3vu99b0pt0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 25 Jan 2024 02:59:53 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 40P2xqlW019041
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 25 Jan 2024 02:59:52 GMT
Received: from [10.239.34.220] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Wed, 24 Jan
 2024 18:59:49 -0800
Message-ID: <0a3f486d-0135-454e-9da6-b888e516a39e@quicinc.com>
Date: Thu, 25 Jan 2024 10:59:32 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] phy: qcom: qmp-pcie: Update PCIe PHY settings for
 SM8550
To: <neil.armstrong@linaro.org>, <agross@kernel.org>, <andersson@kernel.org>,
        <konrad.dybcio@linaro.org>, <vkoul@kernel.org>, <kishon@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <quic_cang@quicinc.com>,
        <quic_mrana@quicinc.com>
References: <1703742157-69840-1-git-send-email-quic_qianyu@quicinc.com>
 <e6b8befb-82e8-4803-929c-32e86d1e825a@linaro.org>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <e6b8befb-82e8-4803-929c-32e86d1e825a@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: QvtK0XzjqVZl3qlEtnNQuGk1Yb5P-uMV
X-Proofpoint-ORIG-GUID: QvtK0XzjqVZl3qlEtnNQuGk1Yb5P-uMV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-24_12,2024-01-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501 mlxscore=0
 mlxlogscore=441 impostorscore=0 spamscore=0 suspectscore=0 malwarescore=0
 lowpriorityscore=0 clxscore=1011 adultscore=0 phishscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2401190000
 definitions=main-2401250020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_190000_204648_5582225C 
X-CRM114-Status: GOOD (  10.24  )
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

Ck9uIDEvMjQvMjAyNCA0OjU4IFBNLCBuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnIHdyb3RlOgo+
IE9uIDI4LzEyLzIwMjMgMDY6NDIsIFFpYW5nIFl1IHdyb3RlOgo+PiBBbGlnbiBQQ0llMC9QQ0ll
MSBQSFkgc2V0dGluZ3Mgd2l0aCBTTTg1NTAgbGF0ZXN0IFBDSWUgUEhZIEhhcmR3YXJlCj4+IFBy
b2dyYW1taW5nIEd1aWRlLgo+Pgo+PiBDYW4gR3VvICgxKToKPj4gwqDCoCBwaHk6IHFjb206IHFt
cC1wY2llOiBVcGRhdGUgUENJZTEgUEhZIHNldHRpbmdzIGZvciBTTTg1NTAKPj4KPj4gUWlhbmcg
WXUgKDEpOgo+PiDCoMKgIHBoeTogcWNvbTogcW1wLXBjaWU6IFVwZGF0ZSBQQ0llMCBQSFkgc2V0
dGluZ3MgZm9yIFNNODU1MAo+Pgo+PiDCoCBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1x
bXAtcGNpZS5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMjAgCj4+ICsrKysrKysrKysrKysr
LS0tLS0tCj4+IMKgIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY3MtcGNpZS12
Ni5owqDCoMKgwqDCoCB8wqAgMiArKwo+PiDCoCBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1xbXAtcGNzLXBjaWUtdjZfMjAuaMKgwqAgfMKgIDIgKysKPj4gwqAgZHJpdmVycy9waHkvcXVh
bGNvbW0vcGh5LXFjb20tcW1wLXBjcy12Nl8yMC5owqDCoMKgwqDCoMKgwqAgfMKgIDEgKwo+PiDC
oCAuLi4vcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1xc2VyZGVzLXR4cngtdjZfMjAuaMKgwqAg
fMKgIDIgKysKPj4gwqAgNSBmaWxlcyBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCA2IGRlbGV0
aW9ucygtKQo+Pgo+Cj4gLSBPbiBTTTg1NTAtSERLOgo+ICMgbHNwY2kKPiAwMDAwOjAwOjAwLjAg
UENJIGJyaWRnZTogUXVhbGNvbW0gRGV2aWNlIDAxMTMKPiAwMDAwOjAxOjAwLjAgTmV0d29yayBj
b250cm9sbGVyOiBRdWFsY29tbSBEZXZpY2UgMTEwNyAocmV2IDAxKQo+IDAwMDE6MDA6MDAuMCBQ
Q0kgYnJpZGdlOiBRdWFsY29tbSBEZXZpY2UgMDExMwo+IDAwMDE6MDE6MDAuMCBOb24tVm9sYXRp
bGUgbWVtb3J5IGNvbnRyb2xsZXI6IFBoaXNvbiBFbGVjdHJvbmljcyAKPiBDb3Jwb3JhdGlvbiBF
MTIgTlZNZSBDb250cm9sbGVyIChyZXYgMDEpCj4KPgo+ICMgbHNwY2kgLW52dgo+IDAwMDA6MDA6
MDAuMCAwNjA0OiAxN2NiOjAxMTMgKHByb2ctaWYgMDAgW05vcm1hbCBkZWNvZGVdKQo+IMKgwqDC
oMKgwqDCoMKgIExua0NhcDrCoMKgwqAgUG9ydCAjMCwgU3BlZWQgOEdUL3MsIFdpZHRoIHgyLCBB
U1BNIEwwcyBMMSwgRXhpdCAKPiBMYXRlbmN5IEwwcyA8NHVzLCBMMSA8OHVzCj4gwqDCoMKgwqDC
oMKgwqAgTG5rU3RhOsKgwqDCoCBTcGVlZCA1R1QvcywgV2lkdGggeDIKPiAwMDAxOjAwOjAwLjAg
MDYwNDogMTdjYjowMTEzIChwcm9nLWlmIDAwIFtOb3JtYWwgZGVjb2RlXSkKPiDCoMKgwqDCoMKg
wqDCoCBMbmtDYXA6wqDCoMKgIFBvcnQgIzAsIFNwZWVkIDE2R1QvcywgV2lkdGggeDIsIEFTUE0g
TDBzIEwxLCBFeGl0IAo+IExhdGVuY3kgTDBzIDw0dXMsIEwxIDw4dXMKPiDCoMKgwqDCoMKgwqDC
oCBMbmtTdGE6wqDCoMKgIFNwZWVkIDhHVC9zLCBXaWR0aCB4Mgo+Cj4gVGVzdGVkLWJ5OiBOZWls
IEFybXN0cm9uZyA8bmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZz4gIyBvbiBTTTg1NTAtSERLCj4K
PiAtIE9uIFNNODU1MC1RUkQ6Cj4gIyBsc3BjaQo+IDAwOjAwLjAgUENJIGJyaWRnZTogUXVhbGNv
bW0gRGV2aWNlIDAxMTMKPiAwMTowMC4wIE5ldHdvcmsgY29udHJvbGxlcjogUXVhbGNvbW0gRGV2
aWNlIDExMDcgKHJldiAwMSkKPgo+ICMgbHNwY2kgLW52dgo+IMKgwqDCoMKgwqDCoMKgIExua0Nh
cDrCoMKgwqAgUG9ydCAjMCwgU3BlZWQgOEdUL3MsIFdpZHRoIHgyLCBBU1BNIEwwcyBMMSwgRXhp
dCAKPiBMYXRlbmN5IEwwcyA8NHVzLCBMMSA8OHVzCj4gwqDCoMKgwqDCoMKgwqAgTG5rU3RhOsKg
wqDCoCBTcGVlZCA1R1QvcywgV2lkdGggeDIKPgo+IFRlc3RlZC1ieTogTmVpbCBBcm1zdHJvbmcg
PG5laWwuYXJtc3Ryb25nQGxpbmFyby5vcmc+ICMgb24gU004NTUwLVFSRAo+Cj4gVGhhbmtzLAo+
IE5laWwKCkhpIE5laWwsCgpUaGFua3MgZm9yIHRlc3RpbmcgdGhpcyBwYXRjaC4gSSB2ZXJpZmll
ZCBvbiBhaW0zMDAsIGRpZCBub3Qgc2VlIHNwZWVkIApkb3duZ3JhZGUuIExldCBtZSBoYXZlIGEg
dHJ5IG9uIEhESzg1NTAuCgpUaGFua3MsClFpYW5nCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
