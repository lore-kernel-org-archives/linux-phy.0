Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E791CA0EFA
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 00:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:CC:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D4ebuGqAsMAWA/AJ/t5P0edGk8cisO5gtRi89i2AfMM=; b=EZXo9jKfcL/1fW
	T5Y7CDz8Zm8NmapL2JcZCub7+eVz9Ude1oPVbCG/SmxR05CKtDT4SvMiB9zI+agatiWZ0El87c8L6
	Qnuv/KU6AS2Sw1OWVNafrvwqkJRQdmfGhCUY8SidXcL7gxpxcD8TgZQpjj/IumVwbVbBTr+Ko6PTp
	tk6l35vhf9hps1SElmgoE2nj6NR34+/HRjQbdQcPIAR2TjHycoVNSqdLkzot9IZOB92tmJeho+DN0
	ZVWuYEQH8XcoFsHulYkgb6RqCdWW+PQephtGPWGuSnBgWOixMsUJvdC+xZXYNHrTgQFdnsqlv4xQY
	O6srol30f5um1EVTr2Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upFcS-000000011Ua-04pg;
	Fri, 22 Aug 2025 00:27:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upB8P-00000000KRx-1bBo
	for linux-phy@lists.infradead.org;
	Thu, 21 Aug 2025 19:39:42 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57LI92vC003002;
	Thu, 21 Aug 2025 19:39:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eV7LdssLFhHbnCgWsJxZ4mZ8DzMg88BtHyb25ZkhDp4=; b=PnJrjt6il9djlj/J
	MmWwFryfOUQ+YcqDDDZmIdl0C0vNru2UjRaiGtzM6Y8y433p00cU8uNSHSFth/5j
	PHKQlw/ATN/rNESWDp8l87S5QWfjB7n/o1wBHh3bZaj3RP2RGo506qbdKb88whel
	FK77BTh/wpH2elsbqN4AptQfPsFlu4IuTYDeCUBEkMeolq3wukPVZ0I9TbJPC2PV
	7ZzFPhNrp/uCyUGk7AjvQbEaq5p9KCpFznFENPpUPXDtPv2IQri+ANwI9WyCperr
	pb9ZvUkItjo6es7++P0uaB/ZdWPZLYOdyV0gMKZ6RCsxqJ7ed3sNU2XGSZPNExuJ
	NNioRw==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n5296ndx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Aug 2025 19:39:37 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 57LJdb81030032
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Aug 2025 19:39:37 GMT
Received: from [10.216.47.227] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Thu, 21 Aug
 2025 12:39:33 -0700
Message-ID: <f0de58d4-3b2b-4e8d-90cf-fc6ef37dc88c@quicinc.com>
Date: Fri, 22 Aug 2025 01:09:30 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 2/2] phy: qcom-qmp-ufs: Add regulator loads for SM8650
 and SM8750
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <mani@kernel.org>,
        <andersson@kernel.org>, <konradybcio@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
References: <20250819222832.8471-1-quic_nitirawa@quicinc.com>
 <20250819222832.8471-3-quic_nitirawa@quicinc.com>
 <ger4kizeltjwalfuwu4dpfjiskrv2okgo5c7d6n3pb24yaxgfo@nkcndblyx3il>
 <b453b8ff-a460-4ccd-9019-aed746a7d52d@quicinc.com>
 <ukxv7donvkulgci2dwrokuflzxzeyh4kohoyja2vywropntxnb@qepcssbe4wpc>
 <9a38ec05-f7ab-4241-ba47-0d514b79e808@quicinc.com>
Content-Language: en-US
In-Reply-To: <9a38ec05-f7ab-4241-ba47-0d514b79e808@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: u7-aiDAj7eJbrFrs5SHzjGOaUhoQe86a
X-Proofpoint-ORIG-GUID: u7-aiDAj7eJbrFrs5SHzjGOaUhoQe86a
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfXxRW+s8QVcfnn
 vXx85Vg73YEBo4ekR7ilcMdkk20CKE70iY9XCk0XeghUHAYTh0cJFvQ+nnsDu+pmUsXBHToEm6+
 7DixIw4sRn7KTOVIJb1hNJANJ4Kboawb5IdzLPBasKTV+RYHGlHj7HAv/ef7cImzp2LwYc+x9B5
 VuuMfh8Q7L/YudUz6tBubTtO8eWMPid7VEOgCUPlNlzuP6Pqf2qlfDThTvYglUdP5/YbvcOkTmX
 5ZthTzG6y23FXI9CdraT7J8HwcPPjGGjphM+KmsSHTR+Yn4JLXwDR3XK8fp0rtJrPha5bfJo+9o
 LLfJw4YoaPhmolNKmDTHp+tIH/Kucc13lBP0IdFQAVVXYMIj8Vm1v853NQEogy8TZGy5GcWPJF8
 Xf+RarLxDq97XuW8w/iVnhZ5gofEqQ==
X-Authority-Analysis: v=2.4 cv=SPkblOvH c=1 sm=1 tr=0 ts=68a775f9 cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10
 a=LfbFHgk6GMyTBLOash0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=cPQSjfK2_nFv0Q5t_7PE:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 phishscore=0
 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_123941_426574_B04D537B 
X-CRM114-Status: GOOD (  20.94  )
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

CgpPbiA4LzIxLzIwMjUgOTozMiBQTSwgTml0aW4gUmF3YXQgd3JvdGU6Cj4gCj4gCj4gT24gOC8y
MC8yMDI1IDU6MjQgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+IE9uIFdlZCwgQXVnIDIw
LCAyMDI1IGF0IDEyOjA3OjU3UE0gKzA1MzAsIE5pdGluIFJhd2F0IHdyb3RlOgo+Pj4KPj4+Cj4+
PiBPbiA4LzIwLzIwMjUgNjoxOSBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4+PiBPbiBX
ZWQsIEF1ZyAyMCwgMjAyNSBhdCAwMzo1ODoyNkFNICswNTMwLCBOaXRpbiBSYXdhdCB3cm90ZToK
Pj4+Pj4gQWRkIHJlZ3VsYXRvciBsb2FkIHZvdGluZyBzdXBwb3J0IGZvciBTTTg2NTAgYW5kIFNN
ODc1MCBwbGF0Zm9ybXMgYnkKPj4+Pj4gaW50cm9kdWNpbmcgZGVkaWNhdGVkIHJlZ3VsYXRvciBi
dWxrIGRhdGEgYXJyYXlzIHdpdGggdGhlaXIgbG9hZAo+Pj4+PiB2YWx1ZXMuCj4+Pj4+Cj4+Pj4+
IFRoZSBsb2FkIHJlcXVpcmVtZW50cyBhcmU6Cj4+Pj4+IC0gU004NjUwOiB2ZGRhLXBoeSAoMjA1
bUEpLCB2ZGRhLXBsbCAoMTcuNW1BKQo+Pj4+PiAtIFNNODc1MDogdmRkYS1waHkgKDIxM21BKSwg
dmRkYS1wbGwgKDE4LjNtQSkKPj4+Pj4KPj4+Pj4gVGhpcyBlbnN1cmVzIHN0YWJsZSBvcGVyYXRp
b24gYW5kIHByb3BlciBwb3dlciBtYW5hZ2VtZW50IGZvciB0aGVzZQo+Pj4+PiBwbGF0Zm9ybXMg
d2hlcmUgcmVndWxhdG9ycyBhcmUgc2hhcmVkIGJldHdlZW4gdGhlIFFNUCBVU0IgUEhZIGFuZAo+
Pj4+PiBvdGhlciBJUCBibG9ja3MgYnkgc2V0dGluZyBhcHByb3ByaWF0ZSByZWd1bGF0b3IgbG9h
ZCBjdXJyZW50cyAKPj4+Pj4gZHVyaW5nIFBIWQo+Pj4+PiBvcGVyYXRpb25zLgo+Pj4+Pgo+Pj4+
PiBDb25maWd1cmF0aW9ucyB3aXRob3V0IHNwZWNpZmljIGxvYWQgcmVxdWlyZW1lbnRzIHdpbGwg
Y29udGludWUgdG8gCj4+Pj4+IHdvcmsKPj4+Pj4gdW5jaGFuZ2VkLCBhcyBpbml0X2xvYWRfdUEg
cmVtYWlucyB6ZXJvLWluaXRpYWxpemVkIHdoZW4gLmluaXRfbG9hZF91QQo+Pj4+PiBpcyBub3Qg
cHJvdmlkZWQuCj4+Pj4KPj4+PiBDYW4gd2UgcGxlYXNlIGdldCBjb25maWd1cmF0aW9uIGZvciB0
aGUgcmVzdCBvZiB0aGUgcGxhdGZvcm1zPwo+Pj4KPj4+IEhpIERtaXRyeSwKPj4+Cj4+PiBJZiB5
b3UncmUgb2theSB3aXRoIGl0LCBjYW4gSSBtZXJnZSB0aGUgY29uZmlndXJhdGlvbiBmb3IgdGhl
IHJlbWFpbmluZwo+Pj4gcGxhdGZvcm1zIGluIHRoZSBuZXh0IHBhdGNoIHNlcmllcyBhZnRlciBJ
IGNvbXBsZXRlIHRlc3Rpbmcgb24gYWxsIAo+Pj4gcmVtYWluaW5nCj4+PiBwbGF0Zm9ybXMuCj4+
Cj4+IFlvdSBkb24ndCBuZWVkIHRvIHRlc3QsIGZpbmRpbmcgTVNNODk5NiBvciA5OCBtaWdodCBi
ZSB0cm91Ymxlc29tZS4gSnVzdAo+PiBmaWxsIGluIHRoZSB2YWx1ZXMgZnJvbSB0aGUgaGFyZHdh
cmUgZG9jdW1lbnRhdGlvbi4KPiAKPiBIaSBEbWl0cnksCj4gCj4gV2hpbGUgaW1wbGVtZW50aW5n
IGNoYW5nZXMgZm9yIGFsbCByZW1haW5pbmcgcGxhdGZvcm0sIEkgbm90aWNlZCB0aGF0IAo+IHRo
ZSAicmVndWxhdG9yLWFsbG93LXNldC1sb2FkIiBwcm9wZXJ0eSBpcyBkZWZpbmVkIG9ubHkgZm9y
IFNNODc1MCBhbmQgCj4gU004ODUwIHdpdGhpbiB0aGUgUE1JQyBQSFkgYW5kIFBMTCBkZXZpY2Ug
dHJlZSBub2RlcyB3aGljaCBtZWFucyB0aGF0IAo+IGV2ZW4gaWYgdGhlIFVGUyBQSFkgZHJpdmVy
IGlzIHVwZGF0ZWQgdG8gdm90ZSBmb3IgdGhpcyBjb25maWd1cmF0aW9uIG9uIAo+IG90aGVyIHBs
YXRmb3JtcywgaXQgd2lsbCBoYXZlIG5vIGltcGFjdC4KPiAKPiBTaG91bGQgSSBzdGlsbCBwcm9j
ZWVkIHdpdGggYXBwbHlpbmcgdGhlIGNoYW5nZSBhY3Jvc3MgYWxsIHBsYXRmb3JtLCBvciAKPiBs
aW1pdCBpdCB0byBqdXN0IHRoZSBTTTg3NTAgYW5kICpTTTg4NTAqIGRyaXZlcnM/IFdoYXTigJlz
IHlvdXIgcmVjb21tZW5kYXRpb24/CgpTb3JyeSBmb3IgdGhlIHR5cG8uIEl0J3MgU004NjUwIGFu
ZCBTTTg3NTAuCgo+IAo+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+IC8vIERldmljZSB0cmVlOgo+IHZy
ZWdfbDFqXzBwOTE6IGxkbzEgewo+ICDCoMKgwqAgcmVndWxhdG9yLW5hbWUgPSAidnJlZ19sMWpf
MHA5MSI7Cj4gIMKgwqDCoCByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw4ODAwMDA+Owo+ICDC
oMKgwqAgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8OTIwMDAwPjsKPiAgwqDCoMKgIHJlZ3Vs
YXRvci1pbml0aWFsLW1vZGUgPSA8UlBNSF9SRUdVTEFUT1JfTU9ERV9IUE0+Owo+ICDCoMKgwqAg
cmVndWxhdG9yLWFsbG93LXNldC1sb2FkOwo+ICDCoMKgwqAgcmVndWxhdG9yLWFsbG93ZWQtbW9k
ZXMgPSA8UlBNSF9SRUdVTEFUT1JfTU9ERV9MUE0gCj4gUlBNSF9SRUdVTEFUT1JfTU9ERV9IUE0+
Owo+IH07Cj4gCj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Cj4gZHJpdmVycy9yZWd1bGF0b3Ivb2ZfcmVn
dWxhdG9yLmMKPiAKPiAKPiBpZiAob2ZfcHJvcGVydHlfcmVhZF9ib29sKG5wLCAicmVndWxhdG9y
LWFsbG93LXNldC1sb2FkIikpCj4gIMKgwqDCoMKgwqDCoMKgIGNvbnN0cmFpbnRzLT52YWxpZF9v
cHNfbWFzayB8PSBSRUdVTEFUT1JfQ0hBTkdFX0RSTVM7Cj4gCj4gPT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
Cj4gLy9kcml2ZXJzL3JlZ3VsYXRvci9jb3JlLmMKPiBzdGF0aWMgaW50IGRybXNfdUFfdXBkYXRl
KHN0cnVjdCByZWd1bGF0b3JfZGV2ICpyZGV2KQo+IHsKPiAgwqDCoMKgIC4uLgo+ICDCoMKgwqAg
aWYgKCFyZWd1bGF0b3Jfb3BzX2lzX3ZhbGlkKHJkZXYsIFJFR1VMQVRPUl9DSEFOR0VfRFJNUykp
IHsKPiAgwqDCoMKgwqDCoMKgwqAgcmRldl9kYmcocmRldiwgIkRSTVMgb3BlcmF0aW9uIG5vdCBh
bGxvd2VkXG4iKTsKPiAgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4gIMKgwqDCoCB9Cj4gIMKg
wqDCoCAuLi4KPiB9Cj4gCj4gCj4gUmVnYXJkcywKPiBOaXRpbgo+IAo+IAo+IAo+IAo+Pgo+IAoK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
