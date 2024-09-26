Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FB38CCFA17
	for <linux-phy@archiver.kernel.org>; Thu, 26 Sep 2024 05:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:CC:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pj08L3gm4R9p0GfMVn/sE8EG/CLcPhk7jyZOyv5yfFc=; b=mdiXr7+1c41r/9
	LGOXAWe0H4fJG6qO7bExpl1TnwL7AHciaaBbp8HGTv/ic7ODeVf+k4tpHQdAFQ/YSMmxOAfv8hprN
	QuFv3nHx8J5L/QrgoqC9/Wr10vlaBntAQhAt+44eFXruOFveIO5fxI2sL0U/YqbQkCw2Z9jBhcWwB
	5fdmSwHgKTjJedubjeb+csYG6AmYglLAGtQG/5CBZAmjPLlpayqH0JvNk9oMjHlxd2eZmOYBZmfpO
	oXVej5vqTr2rkzyjhZ/TUpVe/JvQ3x6Ilh81dpvuFZ1G7ZPE56fIygobxKzMh7Irg5mfIHIu5GHLr
	caJzKqUhx2iw1LT00rtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stgum-00000007Dxy-0E6s;
	Thu, 26 Sep 2024 05:19:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stguj-00000007DxM-1uHs
	for linux-phy@lists.infradead.org;
	Thu, 26 Sep 2024 05:19:42 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48PH5V7h008857;
	Thu, 26 Sep 2024 05:19:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nAQEOeLb4xsWLNw3Ood9u49cD3boLEhU8f1VROmEwSU=; b=IoRhMtzJQpZr1tEt
	izypl9/CUn6AJQkdsk46SHTulTIBeID0T7bG29V/1zy3EwD0YsJzbI67aY8zxTCw
	vzgRGUtY3O15VJgcNCegvm/50T0yslMHUKYgaaFJyK9yt04swZH1ioY7Xa7A3rQ6
	cNID579Hu31dL/VzFnxFfSUDUb9gLw7rSRPTf6rNTRT5em6lfvjKfq4u4bwQMebm
	UXwsfjgsxMte7CYRkocmt1I4pU0Q/OmKckDajK+kRUx3PjLMwQHfIQMlZKZqK/iG
	6xuy9yHZ08gS54b0cQfJio+nelqz/emGlfcU+gMZgE51NecjcwSotQpm2O1eSuF/
	Tykbhg==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41snfh6j81-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 Sep 2024 05:19:28 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 48Q5JQbV019378
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 Sep 2024 05:19:26 GMT
Received: from [10.239.29.179] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 25 Sep
 2024 22:19:21 -0700
Message-ID: <fb40afe3-eb27-4136-8942-26a40fb395a7@quicinc.com>
Date: Thu, 26 Sep 2024 13:19:18 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/6] PCI: qcom: Add support for X1E80100 SoC
From: Qiang Yu <quic_qianyu@quicinc.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
CC: Johan Hovold <johan@kernel.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <robh@kernel.org>, <andersson@kernel.org>, <konradybcio@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <mturquette@baylibre.com>,
        <sboyd@kernel.org>, <abel.vesa@linaro.org>, <quic_msarkar@quicinc.com>,
        <quic_devipriy@quicinc.com>, <dmitry.baryshkov@linaro.org>,
        <kw@linux.com>, <lpieralisi@kernel.org>, <neil.armstrong@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-clk@vger.kernel.org>
References: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
 <20240924101444.3933828-6-quic_qianyu@quicinc.com>
 <20240924135021.ybpyoahlpuvedma5@thinkpad>
 <ZvLX_wkh7_y7sjPZ@hovoldconsulting.com>
 <4368503f-fb33-4e6a-bef4-517e2b959400@quicinc.com>
 <20240925080724.vgkgmnqc44aoiarv@thinkpad>
 <1419ba07-5163-4126-8869-2213eea6c492@quicinc.com>
Content-Language: en-US
In-Reply-To: <1419ba07-5163-4126-8869-2213eea6c492@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: APgLvk1rAOYnLStnfvnDml0VwlQ2ZubS
X-Proofpoint-GUID: APgLvk1rAOYnLStnfvnDml0VwlQ2ZubS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 priorityscore=1501 malwarescore=0 mlxscore=0
 suspectscore=0 impostorscore=0 spamscore=0 phishscore=0 mlxlogscore=999
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409260032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_221941_663737_FD16C3C4 
X-CRM114-Status: GOOD (  20.93  )
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

Ck9uIDkvMjYvMjAyNCAxMToyOCBBTSwgUWlhbmcgWXUgd3JvdGU6Cj4KPiBPbiA5LzI1LzIwMjQg
NDowNyBQTSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+PiBPbiBXZWQsIFNlcCAyNSwg
MjAyNCBhdCAxMTo0NzowMkFNICswODAwLCBRaWFuZyBZdSB3cm90ZToKPj4+IE9uIDkvMjQvMjAy
NCAxMToxNyBQTSwgSm9oYW4gSG92b2xkIHdyb3RlOgo+Pj4+IE9uIFR1ZSwgU2VwIDI0LCAyMDI0
IGF0IDAzOjUwOjIxUE0gKzAyMDAsIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPj4+Pj4g
T24gVHVlLCBTZXAgMjQsIDIwMjQgYXQgMDM6MTQ6NDNBTSAtMDcwMCwgUWlhbmcgWXUgd3JvdGU6
Cj4+Pj4+PiBYMUU4MDEwMCBoYXMgUENJZSBwb3J0cyB0aGF0IHN1cHBvcnQgdXAgdG8gR2VuNCB4
OCBiYXNlZCBvbiAKPj4+Pj4+IGhhcmR3YXJlIElQCj4+Pj4+PiB2ZXJzaW9uIDEuMzguMC4KPj4+
Pj4+Cj4+Pj4+PiBDdXJyZW50bHkgdGhlIG9wc18xXzlfMCB3aGljaCBpcyBiZWluZyB1c2VkIGZv
ciBYMUU4MDEwMCBoYXMgCj4+Pj4+PiBjb25maWdfc2lkCj4+Pj4+PiBjYWxsYmFjayB0byBjb25m
aWcgQkRGIHRvIFNJRCB0YWJsZS4gSG93ZXZlciwgdGhpcyBjYWxsYmFjayBpcyBub3QKPj4+Pj4+
IHJlcXVpcmVkIGZvciBYMUU4MDEwMCBiZWNhdXNlIGl0IGhhcyBzbW11djMgc3VwcG9ydCBhbmQg
QkRGIHRvIAo+Pj4+Pj4gU0lEIHRhYmxlCj4+Pj4+PiB3aWxsIGJlIG5vdCBwcmVzZW50Lgo+Pj4+
Pj4KPj4+Pj4+IEhlbmNlIGFkZCBzdXBwb3J0IGZvciBYMUU4MDEwMCBieSBpbnRyb2R1Y2luZyBh
IG5ldyBvcHMgYW5kIGNmZyAKPj4+Pj4+IHN0cnVjdHVyZXMKPj4+Pj4+IHRoYXQgZG9uJ3QgcmVx
dWlyZSB0aGUgY29uZmlnX3NpZCBjYWxsYmFjay4gVGhpcyBjb3VsZCBiZSByZXVzZWQgCj4+Pj4+
PiBieSB0aGUKPj4+Pj4+IGZ1dHVyZSBwbGF0Zm9ybXMgYmFzZWQgb24gU01NVXYzLgo+Pj4+Pj4K
Pj4+Pj4gT29wcy4uLiBJIGNvbXBsZXRlbHkgb3Zlcmxvb2tlZCB0aGF0IHlvdSBhcmUgbm90IGFk
ZGluZyB0aGUgU29DIAo+Pj4+PiBzdXBwb3J0IGJ1dAo+Pj4+PiBmaXhpbmcgdGhlIGV4aXN0aW5n
IG9uZSA6KCBTb3JyeSBmb3Igc3VnZ2VzdGluZyBhIGNvbW1pdCBtZXNzYWdlIAo+Pj4+PiB0aGF0
IGNoYW5nZWQKPj4+Pj4gdGhlIGNvbnRleHQuCj4+Pj4+Cj4+Pj4+IEZvciB0aGlzLCB5b3UgY2Fu
IGhhdmUgc29tZXRoaW5nIGxpa2U6Cj4+Pj4+Cj4+Pj4+ICJQQ0k6IHFjb206IEZpeCB0aGUgb3Bz
IGZvciBYMUU4MDEwMCBTb0MKPj4+Pj4KPj4+Pj4gWDFFODAxMDAgU29DIGlzIGJhc2VkIG9uIFNN
TVV2MywgaGVuY2UgaXQgZG9lc24ndCBuZWVkIHRoZSBCREYyU0lEIAo+Pj4+PiBtYXBwaW5nCj4+
Pj4+IHByZXNlbnQgaW4gdGhlIGV4aXN0aW5nIGNmZ18xXzlfMCBvcHMuIFRoaXMgaXMgZml4ZWQg
YnkgCj4+Pj4+IGludHJvZHVjaW5nIG5ldyBvcHMKPj4+Pj4gJ29wc18xXzM4XzAnIGFuZCBjZmcg
J2NmZ18xXzM4XzAnIHN0cnVjdHVyZXMuIFRoZXNlIGFyZSBleGFjdGx5IAo+Pj4+PiBzYW1lIGFz
IHRoZQo+Pj4+PiAxXzlfMCBvbmVzLCBidXQgdGhleSBkb24ndCBoYXZlIHRoZSAnY29uZmlnX3Np
ZCgpJyBjYWxsYmFjayB0aGF0IAo+Pj4+PiBoYW5kbGVzIHRoZQo+Pj4+PiBCREYyU0lEIG1hcHBp
bmcgaW4gdGhlIGhhcmR3YXJlLiBUaGVzZSBuZXcgc3RydWN0dXJlcyBjb3VsZCBhbHNvIAo+Pj4+
PiBiZSB1c2VkIGJ5IHRoZQo+Pj4+PiBmdXR1cmUgU29DcyBtYWtpbmcgdXNlIG9mIFNNTVV2My4i
Cj4+Pj4gRG9uJ3Qgd2UgbmVlZCBzb21ldGhpbmcgbGlrZSB0aGlzIGZvciBzYzgyODB4cCBhbmQg
b3RoZXIgcGxhdGZvcm1zIAo+Pj4+IHVzaW5nCj4+Pj4gU01NVXYzIGFzIHdlbGw/Cj4+PiDCoEZy
b20gd2hhdCBJIGtub3csIHNjODI4MHhwIGFuZCBvdGhlciBxY29tIHBsYXRmb3JtcyBhcmUgbm90
IHVzaW5nIAo+Pj4gU01NVXYzLgo+PiBzYzgyODB4cCBpbmRlZWQgaGFzIFNNTVV2MyBmb3IgUENJ
ZSwgYnV0IEknbSBub3Qgc3VyZSBob3cgaXQgaXMgCj4+IGNvbmZpZ3VyZWQuIFNvCj4+IG5vdCBj
b21wbGV0ZWx5IHN1cmUgd2hldGhlciB3ZSBjYW4gYXZvaWQgdGhlIG1hcHBpbmcgdGFibGUgb3Ig
bm90Lgo+Pgo+PiBRaWFuZywgcGxlYXNlIGNoZWNrIHdpdGggdGhlIGh3IHRlYW0gYW5kIGxldCB1
cyBrbm93Lgo+IFN1cmUsIHdpbGwgdXBkYXRlIG9uY2UgSSBnZXQgYW55IHJlc3BvbnNlIGZyb20g
aHcgdGVhbS4KSFcgdGVhbSBjb25maXJtZWQgc2M4MjgweHAgdXNlcyBzbW12MyBmb3IgUENJZSBh
bmQgZG9lc24ndCBzdXBwb3J0IEJERjJTSUQKbWFwLgoKQmVzaWRlcywgQWJlbCBvbmNlIGdvdCBj
b25maXJtYXRpb24gZnJvbSBKb2UgdGhhdCB3ZSBhbHNvIG5lZWQgdG8gZGlzYWJsZQpMMHMgZm9y
IFgxRTgwMTAwLiBTbyBjYW4gd2UgdXNlIGNmZ19zYzgyODB4cCBmb3IgYm90aCBYMUU4MDEwMCBh
bmQgU0M4MjgwWFAKYW5kIGNoYW5nZSBpdHMgb3BzIHRvIG9wc18xXzM4XzA/CgpUaGFua3MsClFp
YW5nCj4KPiBUaGFua3MsCj4gUWlhbmcKPj4KPj4gLSBNYW5pCj4+CgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
