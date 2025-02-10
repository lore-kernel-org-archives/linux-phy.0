Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35868C0219E
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 11:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LcvpDE6k4v1GF4QvSPbtHRmGFOPn60vFTMlhEKqXMcQ=; b=ncZ7Eitz0QhJCA
	C5GjUp92W+F/JeB6G4bb8IC3B4MW6TscA1DbH5s4yDWW8rz4RSGldRGkWha5NjzzSXsjHGkpKj2PH
	Gw6PJE1E12G0jWxCznwb13vts7H4LEBJSCiSDwCtK2IaiSfAS3by3eqiAV68bZzrQiV9PybMID++D
	YYTpWTeUmjhojC3MX+TOGtYgOfKMvMEIYLqrEGYrGIbpp/EvBBIKQ8ubv5ednlilfDQHnUv+gBLwT
	CldJetFY1zgvmnSotlcMVh9lQjVmhQZqMPGA6FWDFwFULD0OhKgZQqq5Ao98y2wscd6Y//EpNLCfr
	OHIP8/EF56zSZinieLQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thS4n-0000000HF5x-2NVD;
	Mon, 10 Feb 2025 11:35:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thRlR-0000000HB9D-01BY
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 11:15:46 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51A76Cuk010407;
	Mon, 10 Feb 2025 11:15:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bwV0O+olVTuwBu36jiuSKcfz1/+C1/1A8aX/BMtVtnE=; b=Dk8ZtkTT11SKYTcl
	wtE2MyB5lmPCCFcegrm2E3dbyFtxL4iCjjVRGRZJBCOaj95C1mekJcZHZY4SBMHR
	B2RFcYjd5ZPS2KoLhRTL121vVYOCeko1MGH3cZb8H4HDwk4ZV3d7a/w5pZ8z4I/b
	E8wNkKMPljPaHltayNkYZj9ea7M4T6xLTyHsVxYOVF/MoQxzldizry0enA3/Rj58
	2r7qt/FOzc1TAa+jyl4fqEVz9MrzkPPMPP3VsMYVoN52VSqoIZ3znS/IX1fFtENc
	uMkGa2GHjoiL9mOKKiWNIQCLAZv8pYW+HOIH8ulB+bVaMC7o4fYstCyE1YfcltSV
	G6mInA==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44qcs58r6d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Feb 2025 11:15:36 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 51ABFZWF013481
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Feb 2025 11:15:35 GMT
Received: from [10.218.7.247] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 10 Feb
 2025 03:15:27 -0800
Message-ID: <92e77d82-7c76-4cc4-8e7d-7b72b57ab416@quicinc.com>
Date: Mon, 10 Feb 2025 16:45:24 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] Add UFS support for SM8750
To: <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        Konrad Dybcio
	<konrad.dybcio@oss.qualcomm.com>
CC: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        "Satya Durga Srinivasu Prabhala" <quic_satyap@quicinc.com>,
        Trilok Soni
	<quic_tsoni@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
        Manish Pandey
	<quic_mapa@quicinc.com>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <c6352263-8329-4409-b769-a22f98978ac8@oss.qualcomm.com>
 <20250209152140.cyry6g7ltccxcmyj@thinkpad>
 <ae9ba351-53c8-4389-b13b-7b23926a8390@linaro.org>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <ae9ba351-53c8-4389-b13b-7b23926a8390@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: DmIkOamB9RlxLWlGNq2rO4zHHm3xhCRP
X-Proofpoint-GUID: DmIkOamB9RlxLWlGNq2rO4zHHm3xhCRP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-10_05,2025-02-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 impostorscore=0
 mlxlogscore=999 phishscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0
 adultscore=0 clxscore=1011 mlxscore=0 priorityscore=1501 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2501170000
 definitions=main-2502100094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_031545_161791_7E866B05 
X-CRM114-Status: GOOD (  23.04  )
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

CgpPbiAyLzEwLzIwMjUgMzowOSBQTSwgbmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZyB3cm90ZToK
PiBPbiAwOS8wMi8yMDI1IDE2OjIxLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4+IE9u
IEZyaSwgRmViIDA3LCAyMDI1IGF0IDExOjQ3OjEyUE0gKzAxMDAsIEtvbnJhZCBEeWJjaW8gd3Jv
dGU6Cj4+PiBPbiAxMy4wMS4yMDI1IDEwOjQ2IFBNLCBNZWxvZHkgT2x2ZXJhIHdyb3RlOgo+Pj4+
IEFkZCBVRlMgc3VwcG9ydCBmb3IgU004NzUwIFNvQ3MuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5
OiBNZWxvZHkgT2x2ZXJhIDxxdWljX21vbHZlcmFAcXVpY2luYy5jb20+Cj4+Pj4gLS0tCj4+Pj4g
Tml0aW4gUmF3YXQgKDUpOgo+Pj4+IMKgwqDCoMKgwqDCoCBkdC1iaW5kaW5nczogcGh5OiBxY29t
LHNjODI4MHhwLXFtcC11ZnMtcGh5OiBEb2N1bWVudCB0aGUgCj4+Pj4gU004NzUwIFFNUCBVRlMg
UEhZCj4+Pj4gwqDCoMKgwqDCoMKgIHBoeTogcWNvbS1xbXAtdWZzOiBBZGQgUEhZIENvbmZpZ3Vy
YXRpb24gc3VwcG9ydCBmb3IgU004NzUwCj4+Pj4gwqDCoMKgwqDCoMKgIGR0LWJpbmRpbmdzOiB1
ZnM6IHFjb206IERvY3VtZW50IHRoZSBTTTg3NTAgVUZTIENvbnRyb2xsZXIKPj4+PiDCoMKgwqDC
oMKgwqAgYXJtNjQ6IGR0czogcWNvbTogc204NzUwOiBBZGQgVUZTIG5vZGVzIGZvciBTTTg3NTAg
U29DCj4+Pj4gwqDCoMKgwqDCoMKgIGFybTY0OiBkdHM6IHFjb206IHNtODc1MDogQWRkIFVGUyBu
b2RlcyBmb3IgU004NzUwIFFSRCBhbmQgCj4+Pj4gTVRQIGJvYXJkcwo+Pj4KPj4+IFlvdSBzdGls
bCBuZWVkIHRoZSBzYW1lIHdvcmthcm91bmQgODU1MC84NjUwIGhhdmUgaW4gdGhlIFVGUyBkcml2
ZXIKPj4+IChVRlNIQ0RfUVVJUktfQlJPS0VOX0xTREJTX0NBUCkgZm9yIGl0IHRvIHdvcmsgcmVs
aWFibHksIG9yIGF0IGxlYXN0Cj4+PiB0aGF0IHdhcyB0aGUgY2FzZSBmb3IgbWUgb24gYSA4NzUw
IFFSRC4KPj4+Cj4+PiBQbGVhc2UgY2hlY2sgd2hldGhlciB3ZSBjYW4gbWFrZSB0aGF0IHF1aXJr
IGFwcGx5IGJhc2VkIG9uIGN0cmwKPj4+IHZlcnNpb24gb3Igc28sIHNvIHRoYXQgd2UgZG9uJ3Qg
aGF2ZSB0byBrZWVwIGdyb3dpbmcgdGhlIGNvbXBhdGlibGUKPj4+IGxpc3QgaW4gdGhlIGRyaXZl
ci4KPj4+Cj4+Cj4+IFRoYXQgd291bGQgYmUgYSBiaXphcnJlLiBXaGVuIEkgYWRkZWQgdGhlIHF1
aXJrLCBJIHdhcyB0b2xkIHRoYXQgaXQgCj4+IHdvdWxkIGFmZmVjdAo+PiBvbmx5IFNNODU1MCBh
bmQgU004NjUwICh0aGlzIG9uZSBJIGxlYXJuZWQgbGF0ZXIpLiBJJ20gbm90IGFnYWluc3QgCj4+
IGFwcGx5aW5nIHRoZQo+PiBxdWlyayBiYXNlZCBvbiBVRlNIQyB2ZXJzaW9uIGlmIHRoZSBidWcg
aXMgY2FycmllZCBmb3J3YXJkLCBidXQgdGhhdCAKPj4gd291bGQgYmUgYW4KPj4gaW5kaWNhdGlv
biBvZiBiYWQgZGVzaWduLgo+IAo+IElzbid0IDg3NTAgY2FwYWJsZSBvZiB1c2luZyBNQ1Egbm93
ID8gYmVjYXVzZSB0aGlzIGlzIHRoZSB3aG9sZSBpc3N1ZSAKPiBiZWhpbmQKPiB0aGlzIFVGU0hD
RF9RVUlSS19CUk9LRU5fTFNEQlNfQ0FQLCBpdCdzIHN1cHBvc2VkIHRvIHVzZSBNQ1EgYnkgCj4g
ZGVmYXVsdC4uLiBidXQKPiB3ZSBkb24ndC4KPiAKPiBJcyB0aGVyZSBhbnkgbmV3cyBhYm91dCB0
aGF0ID8gSXQncyBhIGNsZWFyIHJlZ3Jlc3Npb24gYWdhaW5zdCAKPiBkb3duc3RyZWFtLCBub3QK
PiBoYXZpbmcgTUNRIG1ha2VzIHRoZSBVRlMgZHJpdmVyIHN0cnVnZ2xlIHRvIHJlYWNoIGhpZ2gg
YmFuZHdpZHRoIHdoZW4gCj4gdGhlIHN5c3RlbQo+IGlzIGJ1c3kgYmVjYXVzZSB3ZSBjYW4ndCBz
cHJlYWQgdGhlIGxvYWQgb3ZlciBhbGwgQ1BVcyBhbmQgd2UgaGF2ZSBvbmx5IAo+IHNpbmdsZQo+
IHF1ZXVlIHRvIHN1Ym1pdCByZXF1ZXN0cy4KCkhpIE5laWwsCgpUaGVyZSBpcyBubyByZWxhdGlv
biBiL3cgTFNEQlNfQ0FQIFJlZ2lzdGVyIGFuZCBNQ1Egc3VwcG9ydC4KVGhhdCByZWdpc3RlcnMg
anVzdCBpbmRpY2F0ZSB3aGVuIE1DUSBzdXBwb3J0IGlzIHByZXNlbnQgb24gYW55IFNPQywKd2hl
dGhlciBTaW5nbGUgcXVldWUgbW9kZSBpcyBzdXBwb3J0ZWQgb3Igbm90IG9uIHRoYXQgU09DLgoK
SW4gU004NjUwIGFuZCBTTTg2NTUwLCBqdXN0IHRoZSBwb3JlZCB2YWx1ZSBvZiB0aGF0IHJlZ2lz
dGVyIHdhcyAKaW5jb3JyZWN0IHdoaWNoIHdhcyBmaXhlZCBieSBXQSBidXQgYWN0dWFsbHkgZnVu
Y3Rpb25hbGl0eSB3YXMgcHJlc2VudCAKYW5kIHdvcmtpbmcgZmluZS4KClBvcmVkIHZhbHVlIG9m
IHRoYXQgcmVnaXN0ZXIgaGFzIGJlZW4gZml4ZWQgZnJvbSBTTTg3NTAgb253YXJkcy4KClJlZ2Fy
ZHMsCk5pdGluCgo+IAo+IE5laWwKPiAKPj4KPj4gLSBNYW5pCj4+Cj4gCgoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
