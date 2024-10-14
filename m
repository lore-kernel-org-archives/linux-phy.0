Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BD37D1812A
	for <linux-phy@archiver.kernel.org>; Mon, 14 Oct 2024 15:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=elr+xt0XIexBRmoeskRAMLFKB/nCGf/l6j+Nq2KHllY=; b=ctUMHzO8UMrSdg
	Rl/19JNXiLHp2SRfbrbA85ls5hwl8Dbf+PUn1Izssd6LgRThC4e0aqipxueXxaQFHqroOGhv9CmF1
	wwohfynvyQObJIYy3yF+zVr+yqucyQXWezlAsBBTAr8MqrxDf92sMN1CIJKsCRp7ICGPGx5bXSUwc
	wBhTAXNF7s1hPd0AZ/iAFUDkv/YNY5ue11r1Q/5OhZoCG2uKPR1kck+j1Uuvtx8KmdkMcgmsSIHBa
	/l8i70fX7nVVe/RVNnZ49wDJVE+wTMOjVdkV11gvQlnai0OpfU2J+iJag/cxFHZLMXlgttsWbi/xR
	G4o99fMhd8n5tmB26yxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0N5l-00000005fcq-12Bq;
	Mon, 14 Oct 2024 15:34:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0KsH-00000005Dad-2U86
	for linux-phy@lists.infradead.org;
	Mon, 14 Oct 2024 13:13:08 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49EBNHqF013174;
	Mon, 14 Oct 2024 13:09:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	e3SuHs/ftC65uHNR5RtQxXpgy6EP0Kdb+DVlw9heaHw=; b=aLkNruy32o9al6hE
	DqbGEVYCJzkp37+vUikjWfQbj7t1dQdy719I/LLEXEdDkOyr5WPwXuNT+bkeKW91
	ZxA1/xjs3ZFDPZeYq2Jgn1cpfT7RS2lHCEylEQPtTfEs8U9BqkDntLpn1VDW9fXL
	40p4egZENfl6Gy7CMwpDz8iBDGQCzlhJWa0fi1GrE92makb4zyd8anSqITUoB0tO
	EbZmuDqJ7ZdOSoYzN7ZaoVJiwxkyBGY97cocWcoLjXnCCLK9/953tDIqFWTsnOwV
	6dimCu2Blvs1UJ1b4/PHtTH2siyyCxIjzMhEMXC/0Y2BvR1nHGXqxjvysgksR3aO
	irKFfw==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 427hvfvbet-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 14 Oct 2024 13:09:28 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 49ED9RDx032375
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 14 Oct 2024 13:09:27 GMT
Received: from [10.253.10.174] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 14 Oct
 2024 06:09:21 -0700
Message-ID: <75b22700-e4de-43fd-8e16-1961703bb708@quicinc.com>
Date: Mon, 14 Oct 2024 21:09:18 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/8] dt-bindings: PCI: qcom,pcie-x1e80100: Add 'global'
 interrupt
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        "Krzysztof
 Kozlowski" <krzk@kernel.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <andersson@kernel.org>, <konradybcio@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <abel.vesa@linaro.org>, <quic_msarkar@quicinc.com>,
        <quic_devipriy@quicinc.com>, <dmitry.baryshkov@linaro.org>,
        <kw@linux.com>, <lpieralisi@kernel.org>, <neil.armstrong@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-clk@vger.kernel.org>
References: <20241011104142.1181773-1-quic_qianyu@quicinc.com>
 <20241011104142.1181773-4-quic_qianyu@quicinc.com>
 <eyxkgcmgv5mejjifzsevkzm2yqdknilizrvhwryd745pkfalgk@kau4lq4cd7g3>
 <4802B12B-BAC1-4E99-BDFE-A2340F4A8F24@linaro.org>
 <3d1d0822-da66-44c8-a328-69804210123c@kernel.org>
 <65B34B14-76C3-491D-8A58-6D0887889018@linaro.org>
 <df6379c6-662a-4b35-a919-13c695a869c7@kernel.org>
 <20241014090251.r4sfaaxtasokv4oi@thinkpad>
 <ea7c1390-7ead-4c17-9ae3-cdcc9866332a@kernel.org>
 <B716D0B8-2B9C-4FA2-94F3-038F1C634244@linaro.org>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <B716D0B8-2B9C-4FA2-94F3-038F1C634244@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: LfnxdWDOyju9HWf5eiUdlaFtkSZPqfEW
X-Proofpoint-ORIG-GUID: LfnxdWDOyju9HWf5eiUdlaFtkSZPqfEW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 phishscore=0 bulkscore=0 mlxlogscore=832 malwarescore=0 mlxscore=0
 clxscore=1015 adultscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410140095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_061237_851739_3C9AEFFA 
X-CRM114-Status: GOOD (  19.16  )
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

Ck9uIDEwLzE0LzIwMjQgNTo0MSBQTSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+Cj4g
T24gT2N0b2JlciAxNCwgMjAyNCAyOjU2OjU4IFBNIEdNVCswNTozMCwgS3J6eXN6dG9mIEtvemxv
d3NraSA8a3J6a0BrZXJuZWwub3JnPiB3cm90ZToKPj4gT24gMTQvMTAvMjAyNCAxMTowMiwgTWFu
aXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+Pj4gT24gRnJpLCBPY3QgMTEsIDIwMjQgYXQgMDY6
MDY6MDJQTSArMDIwMCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4+PiBPbiAxMS8xMC8y
MDI0IDE3OjUxLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4+Pj4+Cj4+Pj4+IE9uIE9j
dG9iZXIgMTEsIDIwMjQgOToxNDozMSBQTSBHTVQrMDU6MzAsIEtyenlzenRvZiBLb3psb3dza2kg
PGtyemtAa2VybmVsLm9yZz4gd3JvdGU6Cj4+Pj4+PiBPbiAxMS8xMC8yMDI0IDE3OjQyLCBNYW5p
dmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4+Pj4+Pj4KPj4+Pj4+PiBPbiBPY3RvYmVyIDExLCAy
MDI0IDg6MDM6NTggUE0gR01UKzA1OjMwLCBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Pj4+Pj4+PiBPbiBGcmksIE9jdCAxMSwgMjAyNCBhdCAwMzo0MTozN0FN
IC0wNzAwLCBRaWFuZyBZdSB3cm90ZToKPj4+Pj4+Pj4+IERvY3VtZW50ICdnbG9iYWwnIFNQSSBp
bnRlcnJ1cHQgYWxvbmcgd2l0aCB0aGUgZXhpc3RpbmcgTVNJIGludGVycnVwdHMgc28KPj4+Pj4+
Pj4+IHRoYXQgUUNPTSBQQ0llIFJDIGRyaXZlciBjYW4gbWFrZSB1c2Ugb2YgaXQgdG8gZ2V0IGV2
ZW50cyBzdWNoIGFzIFBDSWUKPj4+Pj4+Pj4+IGxpbmsgc3BlY2lmaWMgZXZlbnRzLCBzYWZldHkg
ZXZlbnRzLCBldGMuCj4+Pj4+Pj4+IERlc2NyaWJlIHRoZSBoYXJkd2FyZSwgbm90IHdoYXQgdGhl
IGRyaXZlciB3aWxsIGRvLgo+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gVGhvdWdoIGFkZGluZyBhIG5ldyBp
bnRlcnJ1cHQgd2lsbCBicmVhayB0aGUgQUJJLCBpdCBpcyByZXF1aXJlZCB0bwo+Pj4+Pj4+Pj4g
YWNjdXJhdGVseSBkZXNjcmliZSB0aGUgaGFyZHdhcmUuCj4+Pj4+Pj4+IFRoYXQncyBwb29yIHJl
YXNvbi4gSGFyZHdhcmUgd2FzIGRlc2NyaWJlZCBhbmQgbWlzc2luZyBvcHRpb25hbCBwaWVjZQo+
Pj4+Pj4+PiAoYmVjYXVzZSBhY2NvcmRpbmcgdG8geW91ciBkZXNjcmlwdGlvbiBhYm92ZSBldmVy
eXRoaW5nIHdhcyB3b3JraW5nCj4+Pj4+Pj4+IGZpbmUpIGlzIG5vdCBuZWVkZWQgdG8gYnJlYWsg
QUJJLgo+Pj4+Pj4+Pgo+Pj4+Pj4+IEhhcmR3YXJlIHdhcyBkZXNjcmliZWQgYnV0IG5vdCBjb21w
bGV0ZWx5LiAnZ2xvYmFsJyBJUlEgbGV0J3MgdGhlIGNvbnRyb2xsZXIgZHJpdmVyIHRvIGhhbmRs
ZSBQQ0llIGxpbmsgc3BlY2lmaWMgZXZlbnRzIGxpa2UgTGluayB1cCwgTGluayBkb3duIGV0Yy4u
LiBUaGV5IGltcHJvdmUgdXNlciBleHBlcmllbmNlIGxpa2UgdGhlIGRyaXZlciBjYW4gdXNlIHRo
b3NlIGludGVycnVwdHMgdG8gc3RhcnQgYnVzIGVudW1lcmF0aW9uIG9uIGl0cyBvd24uIFNvIGJy
ZWFraW5nIHRoZSBBQkkgZm9yIGdvb2QgaW4gdGhpcyBjYXNlLgo+Pj4+Pj4+Cj4+Pj4+Pj4+IFNv
cnJ5LCBpZiB5b3VyIGRyaXZlciBjaGFuZ2VzIHRoZSBBQkkgZm9yIHRoaXMgcG9vciByZWFzb24u
Cj4+Pj4+Pj4+Cj4+Pj4+Pj4gSXMgdGhlIGFib3ZlIHJlYXNvbmluZyBzdWZmaWNpZW50Pwo+Pj4+
Pj4gSSB0cmllZCB0byBsb29rIGZvciBjb3JyZXNwb25kaW5nIGRyaXZlciBjaGFuZ2UsIGJ1dCBj
b3VsZCBub3QsIHNvIG1heWJlCj4+Pj4+PiB0aGVyZSBpcyBubyBBQkkgYnJlYWsgaW4gdGhlIGZp
cnN0IHBsYWNlLgo+Pj4+PiBIZXJlIGl0IGlzOgo+Pj4+Pgo+Pj4+PiBodHRwczovL2dpdC5rZXJu
ZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvY29tbWl0
Lz9pZD00NTgxNDAzZjY3OTI5ZDAyYzE5N2NiMTg3YzRlMWU4MTFjOWU3NjJhCj4+Pj4+Cj4+Pj4+
ICAgQWJvdmUgZXhwbGFuYXRpb24gaXMgZ29vZCwgYnV0Cj4+Pj4+PiBzdGlsbCBmZWVscyBsaWtl
IGltcHJvdmVtZW50IGFuZCBkZXZpY2UgY291bGQgd29yayB3aXRob3V0IGdsb2JhbCBjbG9jay4K
Pj4+PiBTbyB0aGVyZSBpcyBubyBBQkkgYnJlYWsgaW4gdGhlIGZpcnN0IHBsYWNlLi4uIENvbW1p
dCBpcyBtaXNsZWFkaW5nLgo+Pj4+Cj4+PiBJdCBpbmNyZWFzZXMgdGhlICdtaW5JdGVtcycgdG8g
OSBmcm9tIDgsIGhvdyBjb21lIGl0IGlzIG5vdCBhbiBBQkkgYnJlYWs/Cj4+IEludGVyZmFjZSBj
aGFuZ2VkIGJ1dCBhbGwga25vd24gdXNlcnMgYXJlIHN0aWxsIHdvcmtpbmcsIHJpZ2h0PyAiQnJl
YWsiCj4+IG1lYW5zIHNvbWV0aGluZyBkb2VzIG5vdCB3b3JrLCBzb21ldGhpbmcgaXMgYWZmZWN0
ZWQuCj4gSG1tLiBJIHRob3VnaHQgeW91IHdlcmUgcmVmZXJyaW5nIHRvIHRoZSBEVFMgd2Fybmlu
Z3MgKGZvciBvbGQgRFRTKSB0aGF0IGNvbWUgb3V0IG9mIHRoZXNlIGNoYW5nZXMuIEJ1dCBmb3Ig
a2VybmVsIEFCSSwgeWVzIHRoZXJlIGlzIG5vIGJyZWFrYWdlLgpJIHJlYWxseSBzZWUgZHRzIHdh
cm5pbmcgYWZ0ZXIgZHRicyBjaGVja2luZyBhbmQgc2luY2UgZ2xvYmFsIGlycSBpcyB0bwppbXBy
b3ZlIHVzZXIgZXhwZXJpZW5jZSBhbmQgZGV2aWNlIGNvdWxkIHN0aWxsIHdvcmsgd2l0aG91dCBp
dCwgd2lsbAprZWVwIHRoZSAnbWluSXRlbXMnIGFzIDggYW5kIHNldCAnbWF4SXRlbXMnIGFzIDku
CgpUaGFua3MKUWlhbmcKPgo+IFNvcnJ5IGZvciB0aGUgY29uZnVzaW9uLgo+Cj4gLSBNYW5pCj4K
Pj4gSSBtaWdodCBiZSBtaXNzaW5nCj4+IGhlcmUgc29tZXRoaW5nLCBvZiBjb3Vyc2UsIGJ1dCBJ
IHNpbXBseSBkbyBub3Qgc2VlIGFueSBhZmZlY3RlZCB1c2VyIGhlcmUuCj4+Cj4+IEJlc3QgcmVn
YXJkcywKPj4gS3J6eXN6dG9mCj4+Cj4+Cj4g4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCu
muCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
