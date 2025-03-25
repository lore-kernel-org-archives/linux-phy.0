Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56478C36002
	for <linux-phy@archiver.kernel.org>; Tue, 25 Mar 2025 03:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gr/KK/n5DiqvIvbt4HY1xxcZH44lwYHJY+zFS0QbxAI=; b=1xvM7ByRDuRBSt
	F4kZRzpgqE3mDOFNjHqjc9ssZVJ0TXZ6l7EqgRYNnJC3PSvxM8cyDVOHa1svmiqEZTuEHntTFyd4T
	30anD3n4MTrdMN0EBHa7DvYc6NNfEFgzMLN9d/4Oks2812h1RE2iHxqEyz2sJIYw0yPuFoVOvRnsy
	Re76KNbhohYtM4xa1XOGHdx+0wSS+/aZoFeYEs4dT5/2f2C3eCOCDsGB9KGp9rtTfZcvyvOubHpFj
	wHLnSEpQUv4jESpjQAjVbXSC/i7hkW5ycxrS8QSPNCgakGKSVRYbhSU+/2YegE+IWSMxjGGbif0rw
	nFyU3/CbrWkJpgg6Jyqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twuj4-00000004jqo-3p6S;
	Tue, 25 Mar 2025 03:13:14 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twuj1-00000004jqK-3e8w
	for linux-phy@lists.infradead.org;
	Tue, 25 Mar 2025 03:13:13 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52OIlWkq025925;
	Tue, 25 Mar 2025 03:12:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rQ7cgtzuqO4DhE1RlYh2UYPnVaMrrglIVihyRrbs1zA=; b=MC4e9bUxUv+eNk8l
	bcxILeTNQ81165jcKPnncsZ6FhWnU9g2hsomTd622n1/h6L7c5jKjggwCDctqWBL
	ct5H8vM9UTjM9kFI4IXJIGsZq0RR+cHDrtzVMR8QiNSXypdkooZzZR0I5jD+QnTE
	tUO5SYhiU1Sa8jsdnMbUNj+a5qR1Wd/0zo+MQAUG3thYP6/swpn1qN/HRryaVvoS
	Mmbv8HIisu2jYCo3pLhUISfV41w4JAY/BLh3Pgzzx9VjBiH6h8pN89xF9jsdONAG
	n1geKYSUyhuN8tVC3FvzbZ68wG0aKziuMZjMC12bDQWVq37jw7o6pVW67D6POTBm
	kqt8WQ==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45hjjnphqt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 25 Mar 2025 03:12:53 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 52P3Cquu016163
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 25 Mar 2025 03:12:52 GMT
Received: from [10.216.37.30] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 24 Mar
 2025 20:12:45 -0700
Message-ID: <430ed11c-0490-45be-897b-27cad9682371@quicinc.com>
Date: Tue, 25 Mar 2025 08:42:42 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] phy: qcom-qmp-ufs: Add PHY Configuration support
 for sm8750
To: <neil.armstrong@linaro.org>, Melody Olvera <quic_molvera@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Satya Durga Srinivasu Prabhala
	<quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-scsi@vger.kernel.org>, Manish Pandey <quic_mapa@quicinc.com>,
        "Linux
 regressions mailing list" <regressions@lists.linux.dev>
References: <20250310-sm8750_ufs_master-v2-0-0dfdd6823161@quicinc.com>
 <20250310-sm8750_ufs_master-v2-2-0dfdd6823161@quicinc.com>
 <1526d8a4-9606-4fb3-bb86-79bd8eb8a789@linaro.org>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <1526d8a4-9606-4fb3-bb86-79bd8eb8a789@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=fNc53Yae c=1 sm=1 tr=0 ts=67e21f35 cx=c_pps a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=qC_FGOx9AAAA:8 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8
 a=vcR0Wi4gQSUtL0Q4ZNYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=fsdK_YakeE02zTmptMdW:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: RKjLOZTbSq54X9vtTLN_7PzxMYE2-NJY
X-Proofpoint-GUID: RKjLOZTbSq54X9vtTLN_7PzxMYE2-NJY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-25_01,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 impostorscore=0
 lowpriorityscore=0 mlxlogscore=999 priorityscore=1501 mlxscore=0
 adultscore=0 spamscore=0 bulkscore=0 suspectscore=0 phishscore=0
 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503250021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_201312_030164_A0A173E4 
X-CRM114-Status: GOOD (  17.33  )
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

CgpPbiAzLzI0LzIwMjUgMTE6NDAgUE0sIE5laWwgQXJtc3Ryb25nIHdyb3RlOgo+IEhpLAo+IAo+
IE9uIDEwLzAzLzIwMjUgMjI6MTIsIE1lbG9keSBPbHZlcmEgd3JvdGU6Cj4+IEZyb206IE5pdGlu
IFJhd2F0IDxxdWljX25pdGlyYXdhQHF1aWNpbmMuY29tPgo+Pgo+PiBBZGQgU004NzUwIHNwZWNp
ZmljIHJlZ2lzdGVyIGxheW91dCBhbmQgdGFibGUgY29uZmlncy4gVGhlIHNlcmRlcwo+PiBUWCBS
WCByZWdpc3RlciBvZmZzZXQgaGFzIGNoYW5nZWQgZm9yIFNNODc1MCBhbmQgaGVuY2Uga2VlcCBV
RlMKPj4gc3BlY2lmaWMgc2VyZGVzIG9mZnNldHMgaW4gYSBkZWRpY2F0ZWQgaGVhZGVyIGZpbGUu
Cj4+Cj4+IFJldmlld2VkLWJ5OiBOZWlsIEFybXN0cm9uZyA8bmVpbC5hcm1zdHJvbmdAbGluYXJv
Lm9yZz4KPj4gQ28tZGV2ZWxvcGVkLWJ5OiBNYW5pc2ggUGFuZGV5IDxxdWljX21hcGFAcXVpY2lu
Yy5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IE1hbmlzaCBQYW5kZXkgPHF1aWNfbWFwYUBxdWljaW5j
LmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogTml0aW4gUmF3YXQgPHF1aWNfbml0aXJhd2FAcXVpY2lu
Yy5jb20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcXNl
cmRlcy1jb20tdjYuaCB8wqDCoCA3ICsKPj4gwqAgLi4uL3F1YWxjb21tL3BoeS1xY29tLXFtcC1x
c2VyZGVzLXR4cngtdWZzLXY3LmjCoMKgwqAgfMKgIDY3ICsrKysrKysrCj4+IMKgIGRyaXZlcnMv
cGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11ZnMuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAx
ODAgKysrKysrKysrKysgCj4+ICsrKysrKysrKy0KPj4gwqAgMyBmaWxlcyBjaGFuZ2VkLCAyNDYg
aW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPj4KPiAKPiA8c25pcD4KPiAKPiBUaGlzIGNo
YW5nZSBicmVha3MgVUZTIG9uIHRoZSBTTTg1NTAtSERLOgo+IAo+IFvCoMKgwqAgNy40MTgxNjFd
IHFjb20tcW1wLXVmcy1waHkgMWQ4MDAwMC5waHk6IHBoeSBpbml0aWFsaXphdGlvbiB0aW1lZC1v
dXQKPiBbwqDCoMKgIDcuNDI3MDIxXSBwaHkgcGh5LTFkODAwMDAucGh5LjA6IHBoeSBwb3dlcm9u
IGZhaWxlZCAtLT4gLTExMAo+IFvCoMKgwqAgNy40OTM1MTRdIHVmc2hjZC1xY29tIDFkODQwMDAu
dWZzaGM6IEVuYWJsaW5nIHRoZSBjb250cm9sbGVyIGZhaWxlZAo+IC4uLgoKSGkgTmVpbCwKClRo
YW5rcyBmb3IgdGVzdGluZyBhbmQgcmVwb3J0aW5nLgpJIGRpZCB0ZXN0ZWQgdGhpcyBwYXRjaCBv
biBTTTg3NTAgTVRQLCBTTTg3NTAgUVJELCBTTTg2NTAgTVRQLCBTTTg1NTAgCk1UUCBhbmQgU004
ODUwIFFSRCBhbGwgb2YgdGhlc2UgaGF2ZSByYXRlIEIgYW5kIGhlbmNlIG5vIGlzc3VlLgoKVW5m
b3J0dW5hdGVseSBvbmx5IFNNODU1MCBIREsgcGxhdGZvcm0gd2hpY2ggVUZTNC4wIGFuZCBSYXRl
QSBjb3VsZG4ndCAKZ2V0IHRlc3RlZC4gQXMgd2Uga25vdyBTTTg1NTAgd2l0aCBnZWFyIDUgb25s
eSBzdXBwb3J0IHJhdGUgQS4KCkkgd2FzIGFwcGx5aW5nIHJhdGUgQiBzZXR0aW5nIHdpdGhvdXQg
Y2hlY2tpbmcgZm9yIG1vZGUgdHlwZS4gU2luY2UKU004NTUwIGlzIG9ubHkgcGxhdGZvcm0gd2hp
Y2ggc3VwcG9ydCBvbmx5IHJhdGUgQSB3aXRoIFVGUzQuMCAuIEhlbmNlCnRoaXMgY291bGQgYmUg
dGhlIGlzc3VlLgoKTWVhbndoaWxlIGNhbiB5b3UgaGVscCB0ZXN0IGF0IHlvdXIgZW5kIHdpdGgg
YmVsb3cgY2hhbmdlIGFuZCBsZXQgbWUgaWYgCml0IHJlc29sdmVzIGZvciB5b3UuIEkgd2lsbCBh
bHNvIHRyeSBhdCBteSBlbmQgdG8gdGVzdCBhcyB3ZWxsLgoKPT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0K
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11ZnMuYyAKYi9k
cml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMKaW5kZXggNDViM2I3OTI2OTZl
Li5iMzNlMmUyYjUwMTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29t
LXFtcC11ZnMuYworKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMK
QEAgLTE3NTQsNyArMTc1NCw4IEBAIHN0YXRpYyB2b2lkIHFtcF91ZnNfaW5pdF9yZWdpc3RlcnMo
c3RydWN0IHFtcF91ZnMgCipxbXAsIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZwogICAgICAgICAg
ICAgICAgIHFtcF91ZnNfaW5pdF9hbGwocW1wLCAmY2ZnLT50YmxzX2hzX292ZXJsYXlbaV0pOwog
ICAgICAgICB9CgotICAgICAgIHFtcF91ZnNfaW5pdF9hbGwocW1wLCAmY2ZnLT50YmxzX2hzX2Ip
OworICAgICAgIGlmIChxbXAtPm1vZGUgPT0gUEhZX01PREVfVUZTX0hTX0IpCisgICAgICAgICAg
ICAgICBxbXBfdWZzX2luaXRfYWxsKHFtcCwgJmNmZy0+dGJsc19oc19iKTsKICB9Cgo9PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT0KCgpUaGFua3MsCk5pdGluCgo+IAo+IEdJVCBiaXNlY3QgcG9pbnRz
IHRvOgo+IGIwMmNjOWExNzY3OTNiMjA3ZTk1OTcwMWFmMWVjMjYyMjIwOTNiMDUgaXMgdGhlIGZp
cnN0IGJhZCBjb21taXQKPiBBdXRob3I6IE5pdGluIFJhd2F0IDxxdWljX25pdGlyYXdhQHF1aWNp
bmMuY29tPgo+IERhdGU6wqDCoCBNb24gTWFyIDEwIDE0OjEyOjMwIDIwMjUgLTA3MDAKPiAKPiAg
wqDCoMKgIHBoeTogcWNvbS1xbXAtdWZzOiBBZGQgUEhZIENvbmZpZ3VyYXRpb24gc3VwcG9ydCBm
b3Igc204NzUwCj4gCj4gYmlzZWN0IGxvZzoKPiBnaXQgYmlzZWN0IHN0YXJ0ICdmZjdmOWIxOTll
M2YnICd2Ni4xNC1yYzEnCj4gZ2l0IGJpc2VjdCBnb29kIDM2YzE4YzU2Mjg0NjMwMGQ0ZTU5ZjFh
NjUwMDg4MDBiNzg3ZjRmZTQKPiBnaXQgYmlzZWN0IGdvb2QgODVjZjAyOTNjM2E3NTcyNmU3YmM1
NGQzZWZkYzVkYzc4M2RlYmMwNwo+IGdpdCBiaXNlY3QgZ29vZCBiMmNkNzNlMThjZWM3NWY5MTdk
MTRiOTE4OGY4MmEyZmRlZjY0ZWJlCj4gZ2l0IGJpc2VjdCBiYWQgYjI0NzYzOWQzM2FkMTZlYTc2
Nzk3MjY4ZmQwZWVmMDhkODAyN2RmZAo+IGdpdCBiaXNlY3QgZ29vZCA5YjNmMmRmZGFkMWNjMGFi
OTBhMGZhMzcxYzhjYmVlMDhiMjQ0NmUzCj4gZ2l0IGJpc2VjdCBiYWQgOGRjMzBjM2U0Y2Y4YzRl
MzcwY2YwOGJkMDllYjg3YjBkZWNjZDNkZQo+IGdpdCBiaXNlY3QgYmFkIDEwMGFlYjAzYTQzN2Yz
MDMwMDg5NDA5MTYyN2U0NDA2NjA1ZWUzY2IKPiBnaXQgYmlzZWN0IGJhZCBiMmExYTJhZTc4MThj
OWQ4ZGExMmJmN2IxOTgzYzhiOWY1ZmI3MTJiCj4gZ2l0IGJpc2VjdCBnb29kIDhmODMxZjI3MmI0
Yzg5YWExM2I0NWJkMDEwYzJjMThhZDk3YTNmMWIKPiBnaXQgYmlzZWN0IGdvb2QgZTQ1Y2M2MmMy
MzQyOGVlZmJhZTE4YTliNGQ4OGQxMDc0OTc0MWJkZAo+IGdpdCBiaXNlY3QgYmFkIGViZjE5OGYx
N2I1YWM5NjdkYjYyNTZmNDA4M2JiY2JkY2MyYTMxMDAKPiBnaXQgYmlzZWN0IGdvb2QgMTIxODVi
YzM4Zjc2NjdiMWQ4OTViMjE2NWE4YTQ3MzM1YTRjZjMxYgo+IGdpdCBiaXNlY3QgYmFkIGU0NmU1
OWI3N2E5ZTZmMzIyZWYxYWQwOGE4ODc0MjExZjM4OWNmNDcKPiBnaXQgYmlzZWN0IGJhZCBiMDJj
YzlhMTc2NzkzYjIwN2U5NTk3MDFhZjFlYzI2MjIyMDkzYjA1Cj4gCj4gQ0kgcnVuOiBodHRwczov
L2dpdC5jb2RlbGluYXJvLm9yZy9saW5hcm8vcWNvbWx0L2NpL3N0YWdpbmcvY2RiYS0gCj4gdGVz
dGVyLy0vam9icy8yMjk4ODAjTDEyODEKPiAKPiAjcmVnemJvdCBpbnRyb2R1Y2VkOiBiMDJjYzlh
MTc2NzkKPiAKPiBOZWlsCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
