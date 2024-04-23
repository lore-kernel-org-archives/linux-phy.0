Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EC45C4345F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Apr 2024 06:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Nd6VIzyi5wjPCo3DAbVtw3/AbYLXueYV8Wh4lydFExQ=; b=IfFTzZQrcvdQ6Q2WyUId+87igO
	l+2nDdN2RONX3CidJzI8SCfBGj4HbpoWKvRPvL7IUUaCsZqU9HWKaOb4faqXZ48GbQ2NnJTQ8eZAj
	3nrnxbRyuzaloxvRV8zpBs+xIiBlPMStG92gqyPhUrIN5xDQyp3D5B5y04JHihq0DdKGUP6gZlZHV
	/sg0Diwm+zGrmu9yibgsG2fJKHkCyWbPAnzrCgvgxgZAtxfioBxLnqDlCG1ENFhA/jtd1ciqzWgYL
	pv5s9qw5n9h4frslFCLDCY8zXsBADZefSemzVdcNmua9MWkevGZZKkpjuRIYQDGo2s8aeXeeX4WyD
	P/B7eJ6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rz9NZ-0000000G6F6-0Nm1;
	Tue, 23 Apr 2024 06:11:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rz9NV-0000000G6E8-2unB
	for linux-phy@lists.infradead.org;
	Tue, 23 Apr 2024 06:11:43 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 43N4ScPH016909;
	Tue, 23 Apr 2024 06:11:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=tx5yxKtp0kmfVS31LxuwTSnEJXTe36IJzRgldANyxok=; b=Ta
	TSjEEkFxtUhCgqElvUis+oxGqi3MmrkL88jeixE+57Jed+07gPIK+74wRwMcQB9N
	VIIKjBW67ZFqp0D/0oHF04rEUSln9j4LBoPczZO4/TKnABqfEiAvh1TBfkH2VdVj
	6DnE5hkR8qPv0Mg8zG8zi3+ziFjjvJt/yJzoXVezo1xcrrvuQolYAKmJk2s3rh7P
	IK3OC1UTxuElG/gD1cmM7mwH46l3t/bkOrcBVhPB8x30OMPZ8USWzz19jlVvjuLR
	Zp+BWEiWLvu5DiLpsx8HthCxltZRhlBI2lyDVRl5HpOOnuP1UlcffxND3Tow7Q6G
	xZaTVtMBtwTBnOxrUpcw==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3xnr0mj24b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 23 Apr 2024 06:11:29 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 43N6BSmP001076
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 23 Apr 2024 06:11:28 GMT
Received: from [10.201.2.96] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 22 Apr
 2024 23:11:22 -0700
Message-ID: <b9081a61-c159-4659-a5e1-5586bb65dfce@quicinc.com>
Date: Tue, 23 Apr 2024 11:41:19 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/7] ipq9574: Enable PCI-Express support
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
References: <20240415182052.374494-1-mr.nuke.me@gmail.com>
 <4a83afeb-8e82-4f95-b44e-74d39d55f448@quicinc.com>
 <c498f5b9-df07-0802-800c-67c18dcf3e67@gmail.com>
Content-Language: en-US
From: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
In-Reply-To: <c498f5b9-df07-0802-800c-67c18dcf3e67@gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: QuHGmmjbEFMUabia_uEJdttfqNqw857e
X-Proofpoint-ORIG-GUID: QuHGmmjbEFMUabia_uEJdttfqNqw857e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-23_04,2024-04-22_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 bulkscore=0 mlxscore=0 spamscore=0 priorityscore=1501
 phishscore=0 mlxlogscore=999 lowpriorityscore=0 malwarescore=0
 adultscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2404010003 definitions=main-2404230017
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_231141_917474_3FBEB875 
X-CRM114-Status: GOOD (  19.87  )
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

CgpPbiA0LzIwLzIwMjQgMToxNyBBTSwgbXIubnVrZS5tZUBnbWFpbC5jb20gd3JvdGU6Cj4gSGkg
S2F0aGlyYXZhbiwKPiAKPiBPbiA0LzE5LzI0IDA5OjI4LCBLYXRoaXJhdmFuIFRoaXJ1bW9vcnRo
eSB3cm90ZToKPj4KPj4KPj4gT24gNC8xNS8yMDI0IDExOjUwIFBNLCBBbGV4YW5kcnUgR2Fnbml1
YyB3cm90ZToKPj4+IFRoZXJlIGFyZSBmb3VyIFBDSWUgcG9ydHMgb24gSVBROTU3NCwgcGNpZTAg
dGhydSBwY2llMy4gVGhpcyBzZXJpZXMKPj4+IGFkZHJlc3NlcyBwY2llMiwgd2hpY2ggaXMgYSBn
ZW4zeDIgcG9ydC4gVGhlIGJvYXJkIEkgaGF2ZSBvbmx5IHVzZXMKPj4+IHBjaWUyLCBhbmQgdGhh
dCdzIHRoZSBvbmx5IG9uZSBlbmFibGVkIGluIHRoaXMgc2VyaWVzLgo+Pj4KPj4+IEkgYmVsaWV2
ZSB0aGlzIG1ha2VzIHNlbnNlIGFzIGEgbW9ub2xpdGhpYyBzZXJpZXMsIGFzIHRoZSBpbmRpdmlk
dWFsCj4+PiBwaWVjZXMgYXJlIG5vdCB0aGF0IHVzZWZ1bCBieSB0aGVtc2VsdmVzLgo+Pj4KPj4+
IEluIHYyLCBJJ3ZlIGhhZCBzb21lIGlzc3VlcyByZWdhcmRpbmcgdGhlIGR0IHNjaGVtYSBjaGVj
a3MuIEZvcgo+Pj4gdHJhbnNwYXJlbmN5LCBJIHVzZWQgdGhlIGZvbGxvd2luZyB0ZXN0IGludm9j
YXRpb25zIHRvIHRlc3QgdjM6Cj4+Pgo+Pj4gwqDCoMKgwqDCoMKgIG1ha2UgZHRfYmluZGluZ19j
aGVjayAKPj4+IERUX1NDSEVNQV9GSUxFUz1xY29tLHBjaWUueWFtbDpxY29tLGlwcTgwNzQtcW1w
LXBjaWUtcGh5LnlhbWwKPj4+IMKgwqDCoMKgwqDCoCBtYWtlIGR0YnNfY2hlY2sgCj4+PiBEVF9T
Q0hFTUFfRklMRVM9cWNvbSxwY2llLnlhbWw6cWNvbSxpcHE4MDc0LXFtcC1wY2llLXBoeS55YW1s
Cj4+Pgo+Pj4KPj4KPj4gQWxleGFuZHJ1LAo+Pgo+PiBUaGFua3MgZm9yIHlvdXIgY29udHJpYnV0
aW9ucyB0byB0aGUgUXVhbGNvbW0gSVBRIGNoaXBzZXRzLgo+Pgo+PiBJIHdvdWxkIGxpa2UgdG8g
aW5mb3JtIHlvdSB0aGF0IHdlIGhhdmUgYWxzbyBzdWJtaXR0ZWQgdGhlIHBhdGNoZXMgdG8gCj4+
IGVuYWJsZSB0aGUgUENJZSBzdXBwb3J0IG9uIElQUTk1NzRbMV1bMl0gYW5kIHdhaXRpbmcgZm9y
IHRoZSBJQ0MgCj4+IHN1cHBvcnRbM10gdG8gbGFuZCB0byBlbmFibGUgdGhlIE5PQyBjbG9ja3Mu
Cj4+Cj4+IFsxXSAKPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtYXJtLW1zbS8yMDIz
MDUxOTA5MDIxOS4xNTkyNS0xLXF1aWNfZGV2aXByaXlAcXVpY2luYy5jb20vCj4+IFsyXSAKPj4g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtYXJtLW1zbS8yMDIzMDUxOTA4NTcyMy4xNTYw
MS0xLXF1aWNfZGV2aXByaXlAcXVpY2luYy5jb20vCj4+IFszXSAKPj4gaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvbGludXgtYXJtLW1zbS8yMDI0MDQxODA5MjMwNS4yMzM3NDI5LTEtcXVpY192YXJh
ZGFAcXVpY2luYy5jb20vCj4+Cj4+IFBsZWFzZSB0YWtlIGEgbG9vayBhdCB0aGVzZSBwYXRjaGVz
IGFzIHdlbGwuCj4gCj4gSSB0aGluayBJJ3ZlIHNlZW4gWzFdIGJlZm9yZSAtLSBJIHRob3VnaHQg
dGhlIHNlcmllcyB3YXMgYWJhbmRvbmVkLiAKPiBTaW5jZSB3ZSBoYXZlIHRoZSBkdC1zY2hlbWEg
YW5kIGFwcGxpY2FiaWxpdHkgb24gbWFpbmxpbmUgcmVzb2x2ZWQgaGVyZSwgCj4gZG8geW91IHdh
bnQgdG8gdXNlIHRoaXMgc2VyaWVzIGFzIHRoZSBiYXNlIGZvciBhbnkgbmV3IFBDSWUgd29yaz8K
CgpTdXJlIEFsZXguIEkgYmVsaWV2ZSBzb21lIG9mIHRoZSBjb2RlIHJldmlldyBjb21tZW50cyBh
cmUgYWxyZWFkeSAKYWRkcmVzc2VkIGluIHRoZSBzZXJpZXMgd2hpY2ggSSBwb2ludGVkIG91dC4g
SWYgeW91IGNvdWxkIGhhdmUgcGlja2VkIAp0aG9zZSBhbmQgcmUtcG9zdGVkIHRoZSBuZXh0IHZl
cnNpb24sIGl0IGNvdWxkIGhhdmUgYmVlbiBiZXR0ZXIuCgoKPiAKPiBBbGV4Cj4gCj4+IFRoYW5r
cywKPj4gS2F0aGlyYXZhbiBULgo+Pgo+Pgo+Pj4gQ2hhbmdlcyBzaW5jZSB2MjoKPj4+IMKgIC0g
cmV3b3JrZWQgcmVzZXRzIGluIHFjb20scGNpZS55YW1sIHRvIHJlc29sdmUgZHQgc2NoZW1hIGVy
cm9ycwo+Pj4gwqAgLSBjb25zdHJhaW5lZCAicmVnIiBpbiBxY29tLHBjaWUueWFtbAo+Pj4gwqAg
LSByZXdvcmtlZCBtaW4vbWF4IGludGVtcyBpbiBxY29tLGlwcTgwNzQtcW1wLXBjaWUtcGh5Lnlh
bWwKPj4+IMKgIC0gZHJvcHBlZCBtc2ktcGFyZW50IGZvciBwY2llIG5vZGUsIGFzIGl0IGlzIGhh
bmRsZWQgYnkgIm1zaSIgSVJRCj4+Pgo+Pj4gQ2hhbmdlcyBzaW5jZSB2MToKPj4+IMKgIC0gdXBk
YXRlZCBuZXcgdGFibGVzIGluIHBoeS1xY29tLXFtcC1wY2llLmMgdG8gdXNlIGxvd2VyY2FzZSBo
ZXggCj4+PiBudW1iZXJzCj4+PiDCoCAtIHJlb3JnYW5pemVkIHFjb20saXBxODA3NC1xbXAtcGNp
ZS1waHkueWFtbCB0byB1c2UgYSBzaW5nbGUgbGlzdCAKPj4+IG9mIGNsb2Nrcwo+Pj4gwqAgLSBy
ZW9yZ2FuaXplZCBxY29tLHBjaWUueWFtbCB0byBpbmNsdWRlIGNsb2NrcytyZXNldHMgcGVyIGNv
bXBhdGlibGUKPj4+IMKgIC0gUmVuYW1lZCAicGNpZTJfcW1wX3BoeSIgbGFiZWwgdG8gInBjaWUy
X3BoeSIKPj4+IMKgIC0gbW92ZWQgInJhbmdlcyIgcHJvcGVydHkgb2YgcGNpZUAyMDAwMDAwMCBo
aWdoZXIgdXAKPj4+Cj4+PiBBbGV4YW5kcnUgR2Fnbml1YyAoNyk6Cj4+PiDCoMKgIGR0LWJpbmRp
bmdzOiBjbG9jazogQWRkIFBDSWUgcGlwZSByZWxhdGVkIGNsb2NrcyBmb3IgSVBROTU3NAo+Pj4g
wqDCoCBjbGs6IHFjb206IGdjYy1pcHE5NTc0OiBBZGQgUENJZSBwaXBlIGNsb2Nrcwo+Pj4gwqDC
oCBkdC1iaW5kaW5nczogUENJOiBxY29tOiBBZGQgSVBROTU3NCBQQ0llIGNvbnRyb2xsZXIKPj4+
IMKgwqAgUENJOiBxY29tOiBBZGQgc3VwcG9ydCBmb3IgSVBROTU3NAo+Pj4gwqDCoCBkdC1iaW5k
aW5nczogcGh5OiBxY29tLGlwcTgwNzQtcW1wLXBjaWU6IGFkZCBpcHE5NTc0IGdlbjN4MiBQSFkK
Pj4+IMKgwqAgcGh5OiBxY29tLXFtcC1wY2llOiBhZGQgc3VwcG9ydCBmb3IgaXBxOTU3NCBnZW4z
eDIgUEhZCj4+PiDCoMKgIGFybTY0OiBkdHM6IHFjb206IGlwcTk1NzQ6IGFkZCBQQ0llMiBub2Rl
cwo+Pj4KPj4+IMKgIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9xY29tLHBjaWUueWFtbMKg
wqDCoCB8wqAgMzUgKysrKysKPj4+IMKgIC4uLi9waHkvcWNvbSxpcHE4MDc0LXFtcC1wY2llLXBo
eS55YW1swqDCoMKgwqDCoMKgwqAgfMKgIDM2ICsrKystCj4+PiDCoCBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL3Fjb20vaXBxOTU3NC5kdHNpwqDCoMKgwqDCoMKgwqDCoCB8wqAgOTMgKysrKysrKysrKyst
Cj4+PiDCoCBkcml2ZXJzL2Nsay9xY29tL2djYy1pcHE5NTc0LmPCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgfMKgIDc2ICsrKysrKysrKysKPj4+IMKgIGRyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvZHdjL3BjaWUtcWNvbS5jwqDCoMKgwqDCoMKgwqAgfMKgIDEzICstCj4+PiDCoCBkcml2ZXJz
L3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5jwqDCoMKgwqDCoCB8IDEzNiArKysrKysr
KysrKysrKysrKy0KPj4+IMKgIC4uLi9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjcy1wY2ll
LXY1LmjCoMKgIHzCoCAxNCArKwo+Pj4gwqAgaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9xY29t
LGlwcTk1NzQtZ2NjLmjCoCB8wqDCoCA0ICsKPj4+IMKgIDggZmlsZXMgY2hhbmdlZCwgNDAwIGlu
c2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4+PgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
