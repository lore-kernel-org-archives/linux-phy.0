Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1B10C10F1A
	for <linux-phy@archiver.kernel.org>; Sun, 12 May 2024 08:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/DfA2iAVbCwXdOCi5cXyCdGDHfLEq8kCPfWlXu1uRdU=; b=Y6lUUHp082Xu7UBP6mehOtu2aY
	Xv38EWhwq71RDdrTTyiAVcg2IeXEUw1MELAzSMhe7plXas95f4QsWfmvm4XIPxmHjq4Wga9dI8cKU
	awX0YO6FLpiF0ijSikVqRsnsSBUX9GMxfs5i9XZrHLXtgTYzQyy5GmxvRcGZA7EpaIMZPw2x6K095
	YULWnr85IIPIC7LvJkgY4fXsVtgQF0ysDkL6/ti+EpHuagRRvQAaYNjlMfUePNDr3FlRbL6Fjdz3c
	IZdLglTl2uJGwo9gRLtr4WwoSn3I1pXGeh+ARmTP5OW+gbGusdnRFqdvvtWXGNY7bCkOKYOtxzfi1
	d2uRATQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s64gS-00000009acb-1GiF;
	Sun, 12 May 2024 08:35:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s64gP-00000009abq-1TRl
	for linux-phy@lists.infradead.org;
	Sun, 12 May 2024 08:35:51 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 44C7l93p030917;
	Sun, 12 May 2024 08:35:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=Fofzy2llsdid6StBXTMQNjdLNqsuy2vO0XIxoDRwRQU=; b=as
	koPFk3XB0DgMlPA3842tl2FyFadbf596uEyEaiLHR5ngGr/aASQZKrCFs05ftQ+e
	KzbPe9I2HsPbKoR+VOZ5yDNGNFjCGkvNdmlAWsxU4aZEdC879A3sck6vU4PM+1Oi
	0tYGF/aC0AtV1AxkrnNl3pXQuaMMvwlrQof7OlQasOhZroN5/XGMwyxMuFI8P1eT
	uAMqk4SYI8pSTIjk2MD70BEpH+vTPzsu2rHYWkd+1/vd3YCIYQtjAJM3Z3Nx4RsM
	vQMk08W4oeBwGZuf7jmC+swHPCj3mU5l/a6ZIZXZHguU8mq8CQcb25ZeXaTuUCm5
	eYpPg9NlT3UmjjCh9ukA==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3y20rt9gyw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 12 May 2024 08:35:35 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 44C8ZY6A015767
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 12 May 2024 08:35:34 GMT
Received: from [10.216.17.219] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Sun, 12 May
 2024 01:35:26 -0700
Message-ID: <d283bf55-8b7b-4873-b2e3-aade4231dc78@quicinc.com>
Date: Sun, 12 May 2024 14:05:18 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 RESEND 0/8] ipq9574: Enable PCI-Express support
To: <mr.nuke.me@gmail.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad
 Dybcio <konrad.dybcio@linaro.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Rob Herring
	<robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul
	<vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Michael
 Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-clk@vger.kernel.org>
References: <20240501042847.1545145-1-mr.nuke.me@gmail.com>
 <569087fe-e675-41a4-b975-2d01d95b6d3c@quicinc.com>
 <c3f99ece-7f66-4c6f-a262-4d8894154ae9@gmail.com>
Content-Language: en-US
From: Devi Priya <quic_devipriy@quicinc.com>
In-Reply-To: <c3f99ece-7f66-4c6f-a262-4d8894154ae9@gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: aATPM805tWjekuvXtQyCUttm-CIsjzFz
X-Proofpoint-GUID: aATPM805tWjekuvXtQyCUttm-CIsjzFz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-12_05,2024-05-10_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 suspectscore=0 bulkscore=0 clxscore=1015 mlxscore=0 malwarescore=0
 adultscore=0 spamscore=0 priorityscore=1501 phishscore=0 mlxlogscore=999
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2405010000 definitions=main-2405120064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240512_013549_534477_0A534B59 
X-CRM114-Status: GOOD (  20.92  )
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

CgpPbiA1LzgvMjAyNCAxMDo0MCBQTSwgbXIubnVrZS5tZUBnbWFpbC5jb20gd3JvdGU6Cj4gT24g
NS84LzI0IDE6MTYgQU0sIERldmkgUHJpeWEgd3JvdGU6Cj4+Cj4+Cj4+IE9uIDUvMS8yMDI0IDk6
NTggQU0sIEFsZXhhbmRydSBHYWduaXVjIHdyb3RlOgo+Pj4gVGhlcmUgYXJlIGZvdXIgUENJZSBw
b3J0cyBvbiBJUFE5NTc0LCBwY2llMCB0aHJ1IHBjaWUzLiBUaGlzIHNlcmllcwo+Pj4gYWRkcmVz
c2VzIHBjaWUyLCB3aGljaCBpcyBhIGdlbjN4MiBwb3J0LiBUaGUgYm9hcmQgSSBoYXZlIG9ubHkg
dXNlcwo+Pj4gcGNpZTIsIGFuZCB0aGF0J3MgdGhlIG9ubHkgb25lIGVuYWJsZWQgaW4gdGhpcyBz
ZXJpZXMuIHBjaWUzIGlzIGFkZGVkCj4+PiBhcyBhIHNwZWNpYWwgcmVxdWVzdCwgYnV0IGlzIHVu
dGVzdGVkLgo+Pj4KPj4+IEkgYmVsaWV2ZSB0aGlzIG1ha2VzIHNlbnNlIGFzIGEgbW9ub2xpdGhp
YyBzZXJpZXMsIGFzIHRoZSBpbmRpdmlkdWFsCj4+PiBwaWVjZXMgYXJlIG5vdCB0aGF0IHVzZWZ1
bCBieSB0aGVtc2VsdmVzLgo+Pgo+PiBIaSBBbGV4YW5kcnUsCj4+Cj4+IEFzIERtaXRyeSBzdWdn
ZXN0ZWQsIHdlIGFyZSB3b3JraW5nIG9uIGVuYWJsaW5nIHRoZSBQQ0llIE5PQyBjbG9ja3MKPj4g
dmlhIEludGVyY29ubmVjdC4gV2Ugd2lsbCBiZSBwb3N0aW5nIHRoZSBQQ0llIHNlcmllcyB3aXRo
Cj4+IEludGVyY29ubmVjdCBzdXBwb3J0IFsxXSBzaG9ydGx5Lgo+IAo+IEkgYW0gZ2VuZXJhbGx5
IHZlcnkgaGVzaXRhbnQgdG8gZGVwZW5kIG9uIHVubWVyZ2VkIHNlcmllcywgYXMgdGhpcyBjYW4g
Cj4gY2F1c2UgdW5kdWUgZGVsYXlzLiBJbiB0aGlzIHBhcnRpY3VsYXIgY2FzZSwgSSBjb25zaWRl
cmVkIHRoYXQgYm90aCAKPiBzZXJpZXMgY2FuIGNvbnRpbnVlIHRvIHN0YXkgaW5kZXBlbmRlbnQs
IHdpdGggdGhlIGFiaWxpdHkgdG8gY29udmVydCB0aGUgCj4gUENJZSB1c2VycyB0byB0aGUgbmV3
IGNsb2NrIHNjaGVtZSB3aGVuIHRoZSB0aW1lIGlzIHJpZ2h0Lgo+IAo+PiBbMV0gLSAKPj4gaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtYXJtLW1zbS8yMDI0MDQzMDA2NDIxNC4yMDMwMDEz
LTEtcXVpY192YXJhZGFAcXVpY2luYy5jb20vCj4gCj4gV2hhdCBjaGFuZ2VzIHdvdWxkIGJlIG5l
ZWRlZCB0byB0aGlzIHNlcmllcyB0byBtYWtlIHVzZSBvZiB0aGlzPyBIb3cgCj4gZG9lcyBvbmUg
dXNlIHRoZSAiaW50ZXJjb25uZWN0ZWQiIGNsb2Nrcz8KPiAKPiBBbGV4CkhpIEFsZXgsCgpQbGVh
c2UgcmVmZXIgdG8gdGhlIGxhdGVzdCBQQ0llIHNlcmllcyB3aGljaCBhZGRzIHN1cHBvcnQgZm9y
IGVuYWJsaW5nCnRoZSBOb0MgY2xvY2tzIHZpYSBpbnRlcmNvbm5lY3QuCgpodHRwczovL2xvcmUu
a2VybmVsLm9yZy9saW51eC1hcm0tbXNtLzIwMjQwNTEyMDgyODU4LjE4MDY2OTQtMS1xdWljX2Rl
dmlwcml5QHF1aWNpbmMuY29tLwoKVGhhbmtzICYgUmVnYXJkcywKUy5EZXZpIFByaXlhCj4gCj4+
IFRoYW5rcywKPj4gUy5EZXZpIFByaXlhCj4+Pgo+Pj4gSW4gdjIsIEkndmUgaGFkIHNvbWUgaXNz
dWVzIHJlZ2FyZGluZyB0aGUgZHQgc2NoZW1hIGNoZWNrcy4gRm9yCj4+PiB0cmFuc3BhcmVuY3ks
IEkgdXNlZCB0aGUgZm9sbG93aW5nIHRlc3QgaW52b2NhdGlvbnMgdG8gdGVzdDoKPj4+Cj4+PiDC
oMKgwqDCoMKgwqAgbWFrZSBkdF9iaW5kaW5nX2NoZWNrIAo+Pj4gRFRfU0NIRU1BX0ZJTEVTPXFj
b20scGNpZS55YW1sOnFjb20saXBxODA3NC1xbXAtcGNpZS1waHkueWFtbAo+Pj4gwqDCoMKgwqDC
oMKgIG1ha2UgZHRic19jaGVjayAKPj4+IERUX1NDSEVNQV9GSUxFUz1xY29tLHBjaWUueWFtbDpx
Y29tLGlwcTgwNzQtcW1wLXBjaWUtcGh5LnlhbWwKPj4+Cj4+PiBDaGFuZ2VzIHNpbmNlIHYzOgo+
Pj4gwqAgLSAiY29uc3QiaWZ5IC5ody5pbml0IGZpZWxkcyBmb3IgdGhlIFBDSUUgcGlwZSBjbG9j
a3MKPj4+IMKgIC0gVXNlZCBwY2llcGh5X3Y1X3JlZ3NfbGF5b3V0IGluc3RlYWQgb2YgdjQgaW4g
cGh5LXFjb20tcW1wLXBjaWUuYwo+Pj4gwqAgLSBJbmNsdWRlZCBNYW5pdmFubmFuJ3MgcGF0Y2gg
Zm9yIHFjb20tcGNpZS5jIGNsb2Nrcwo+Pj4gwqAgLSBEcm9wcGVkIHJlZHVuZGFudCBjb21tZW50
cyBpbiAicmFuZ2VzIiBhbmQgImludGVycnVwdC1tYXAiIG9mIHBjaWUyLgo+Pj4gwqAgLSBBZGRl
ZCBwY2llMyBhbmQgcGNpZTNfcGh5IGR0cyBub2Rlcwo+Pj4gwqAgLSBNb3ZlZCBzbm9jIGFuZCBh
bm9jIGNsb2NrcyB0byBQQ0llIGNvbnRyb2xsZXIgZnJvbSBQSFkKPj4+Cj4+PiBDaGFuZ2VzIHNp
bmNlIHYyOgo+Pj4gwqAgLSByZXdvcmtlZCByZXNldHMgaW4gcWNvbSxwY2llLnlhbWwgdG8gcmVz
b2x2ZSBkdCBzY2hlbWEgZXJyb3JzCj4+PiDCoCAtIGNvbnN0cmFpbmVkICJyZWciIGluIHFjb20s
cGNpZS55YW1sCj4+PiDCoCAtIHJld29ya2VkIG1pbi9tYXggaW50ZW1zIGluIHFjb20saXBxODA3
NC1xbXAtcGNpZS1waHkueWFtbAo+Pj4gwqAgLSBkcm9wcGVkIG1zaS1wYXJlbnQgZm9yIHBjaWUg
bm9kZSwgYXMgaXQgaXMgaGFuZGxlZCBieSAibXNpIiBJUlEKPj4+Cj4+PiBDaGFuZ2VzIHNpbmNl
IHYxOgo+Pj4gwqAgLSB1cGRhdGVkIG5ldyB0YWJsZXMgaW4gcGh5LXFjb20tcW1wLXBjaWUuYyB0
byB1c2UgbG93ZXJjYXNlIGhleCAKPj4+IG51bWJlcnMKPj4+IMKgIC0gcmVvcmdhbml6ZWQgcWNv
bSxpcHE4MDc0LXFtcC1wY2llLXBoeS55YW1sIHRvIHVzZSBhIHNpbmdsZSBsaXN0IAo+Pj4gb2Yg
Y2xvY2tzCj4+PiDCoCAtIHJlb3JnYW5pemVkIHFjb20scGNpZS55YW1sIHRvIGluY2x1ZGUgY2xv
Y2tzK3Jlc2V0cyBwZXIgY29tcGF0aWJsZQo+Pj4gwqAgLSBSZW5hbWVkICJwY2llMl9xbXBfcGh5
IiBsYWJlbCB0byAicGNpZTJfcGh5Igo+Pj4gwqAgLSBtb3ZlZCAicmFuZ2VzIiBwcm9wZXJ0eSBv
ZiBwY2llQDIwMDAwMDAwIGhpZ2hlciB1cAo+Pj4KPj4+IEFsZXhhbmRydSBHYWduaXVjICg3KToK
Pj4+IMKgwqAgZHQtYmluZGluZ3M6IGNsb2NrOiBBZGQgUENJZSBwaXBlIHJlbGF0ZWQgY2xvY2tz
IGZvciBJUFE5NTc0Cj4+PiDCoMKgIGNsazogcWNvbTogZ2NjLWlwcTk1NzQ6IEFkZCBQQ0llIHBp
cGUgY2xvY2tzCj4+PiDCoMKgIGR0LWJpbmRpbmdzOiBQQ0k6IHFjb206IEFkZCBJUFE5NTc0IFBD
SWUgY29udHJvbGxlcgo+Pj4gwqDCoCBQQ0k6IHFjb206IEFkZCBzdXBwb3J0IGZvciBJUFE5NTc0
Cj4+PiDCoMKgIGR0LWJpbmRpbmdzOiBwaHk6IHFjb20saXBxODA3NC1xbXAtcGNpZTogYWRkIGlw
cTk1NzQgZ2VuM3gyIFBIWQo+Pj4gwqDCoCBwaHk6IHFjb20tcW1wLXBjaWU6IGFkZCBzdXBwb3J0
IGZvciBpcHE5NTc0IGdlbjN4MiBQSFkKPj4+IMKgwqAgYXJtNjQ6IGR0czogcWNvbTogaXBxOTU3
NDogYWRkIFBDSWUyIGFuZCBQQ0llMyBub2Rlcwo+Pj4KPj4+IE1hbml2YW5uYW4gU2FkaGFzaXZh
bSAoMSk6Cj4+PiDCoMKgIFBDSTogcWNvbTogU3dpdGNoIHRvIGRldm1fY2xrX2J1bGtfZ2V0X2Fs
bCgpIEFQSSB0byBnZXQgdGhlIGNsb2Nrcwo+Pj4gwqDCoMKgwqAgZnJvbSBEZXZpY2V0cmVlCj4+
Pgo+Pj4gwqAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS55YW1swqDCoMKg
IHzCoCAzNyArKysrCj4+PiDCoCAuLi4vcGh5L3Fjb20saXBxODA3NC1xbXAtcGNpZS1waHkueWFt
bMKgwqDCoMKgwqDCoMKgIHzCoMKgIDEgKwo+Pj4gwqAgYXJjaC9hcm02NC9ib290L2R0cy9xY29t
L2lwcTk1NzQuZHRzacKgwqDCoMKgwqDCoMKgwqAgfCAxNzggKysrKysrKysrKysrKysrKystCj4+
PiDCoCBkcml2ZXJzL2Nsay9xY29tL2djYy1pcHE5NTc0LmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfMKgIDc2ICsrKysrKysrCj4+PiDCoCBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3
Yy9wY2llLXFjb20uY8KgwqDCoMKgwqDCoMKgIHwgMTY0ICsrKy0tLS0tLS0tLS0tLS0KPj4+IMKg
IGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmPCoMKgwqDCoMKgIHwgMTM2
ICsrKysrKysrKysrKy0KPj4+IMKgIC4uLi9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjcy1w
Y2llLXY1LmjCoMKgIHzCoCAxNCArKwo+Pj4gwqAgaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9x
Y29tLGlwcTk1NzQtZ2NjLmjCoCB8wqDCoCA0ICsKPj4+IMKgIDggZmlsZXMgY2hhbmdlZCwgNDY5
IGluc2VydGlvbnMoKyksIDE0MSBkZWxldGlvbnMoLSkKPj4+CgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
