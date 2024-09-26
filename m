Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2723CCFA10
	for <linux-phy@archiver.kernel.org>; Thu, 26 Sep 2024 03:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+/vTgyiUr5GgUOt7kM+/k27eHwbIwfNt7LXV+5PamF0=; b=CXKV2SiktWxMJ7
	V81YKnzISwVfUDU+UQAoXB6K2ASUvcjjDiqfDk+K6s2j8oFKSgIXi8nPSaXFU3KXW5sayjA1E2hbV
	0nBvQsU66sccN3lG4F0SSOC7ipwIocffOzK4RBgc89rGbrUUAssj+9RCjpJR9wBusufkLhOeUOqbC
	KN+nR8CLrhV+B6gc+HBEanZ5HBoiO7CjdK7pXNhmJhKA1RO3Ik2QCZwZuvuv3X30cMmNsJ2mdE9h1
	6aPZOYJhETQJNYPJGFQuAO71K/MWKe4UT3B/bLUY/dVmYhKMWf66ptOkxtZCyUjmY7Zl2E4E0fMVm
	ENaGQ8HPPSnFgdEAMuIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stezx-000000073k0-0yyp;
	Thu, 26 Sep 2024 03:16:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stez2-000000073dl-2eGz
	for linux-phy@lists.infradead.org;
	Thu, 26 Sep 2024 03:16:03 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48PH579S013184;
	Thu, 26 Sep 2024 03:15:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CzfN0rwmVw6/7b8Y2EWgGLi8n8HdqtF7GPY1P+QEZYQ=; b=CYDMfuPb7CtLsMDq
	ODEbR5C2Aez6Nlga6qukQj9LQmOO5uW78/5quXHoPus3XfPZoIQgCbO0g0+/CdPy
	wNUySMtvql7VSrY5uCwWI31d2XU83iQ1gEDO47N18uoIERnxB4s5P1gF+uSWY9RH
	j8TUhsij4wUQvEjknCBYrooby3Rz/09TplIVqnn27LJ2Aya0jX83gFDHt0WCDaTc
	F74HGMsR5K7A4GMaU/lK8MHUbjFFywT48XqMcgxiV5De4UV90ABTU5wreB9PDFqr
	QuV2NGnoqW/TtIZ2LVDjOmaIXeUMCxKQNMZ36qJZeghBhLDsDgHR1wdJBkmwzgcx
	TiWpZQ==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41snqyp5w1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 Sep 2024 03:15:46 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 48Q3FiEr003271
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 Sep 2024 03:15:44 GMT
Received: from [10.239.29.179] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 25 Sep
 2024 20:15:39 -0700
Message-ID: <1c6bf1a9-a781-4152-a7a1-7992c6f15829@quicinc.com>
Date: Thu, 26 Sep 2024 11:15:34 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 6/6] arm64: dts: qcom: x1e80100: Add support for PCIe3
 on x1e80100
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Konrad Dybcio
	<konradybcio@kernel.org>
CC: Johan Hovold <johan+linaro@kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh@kernel.org>, <andersson@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <mturquette@baylibre.com>,
        <sboyd@kernel.org>, <abel.vesa@linaro.org>, <quic_msarkar@quicinc.com>,
        <quic_devipriy@quicinc.com>, <dmitry.baryshkov@linaro.org>,
        <kw@linux.com>, <lpieralisi@kernel.org>, <neil.armstrong@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-clk@vger.kernel.org>
References: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
 <20240924101444.3933828-7-quic_qianyu@quicinc.com>
 <9a692c98-eb0a-4d86-b642-ea655981ff53@kernel.org>
 <20240925080522.qwjeyrpjtz64pccx@thinkpad>
 <4ee4d016-9d68-4925-9f49-e73a4e7fa794@kernel.org>
 <2731e17d-c1ad-4fb4-ab60-82ceafeffbaf@kernel.org>
 <20240925125224.53g6rw46qufxsw6m@thinkpad>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <20240925125224.53g6rw46qufxsw6m@thinkpad>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: qi2jcvq2zChZ5GtIcAm04MQlgpYr8sDZ
X-Proofpoint-ORIG-GUID: qi2jcvq2zChZ5GtIcAm04MQlgpYr8sDZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 adultscore=0 bulkscore=0 phishscore=0 mlxlogscore=999
 spamscore=0 lowpriorityscore=0 clxscore=1011 mlxscore=0 malwarescore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409260020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_201601_065098_333388CC 
X-CRM114-Status: GOOD (  23.86  )
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

Ck9uIDkvMjUvMjAyNCA4OjUyIFBNLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gT24g
V2VkLCBTZXAgMjUsIDIwMjQgYXQgMTE6NDY6MzVBTSArMDIwMCwgS29ucmFkIER5YmNpbyB3cm90
ZToKPj4gT24gMjUuMDkuMjAyNCAxMTozMCBBTSwgS29ucmFkIER5YmNpbyB3cm90ZToKPj4+IE9u
IDI1LjA5LjIwMjQgMTA6MDUgQU0sIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPj4+PiBP
biBUdWUsIFNlcCAyNCwgMjAyNCBhdCAwNDoyNjozNFBNICswMjAwLCBLb25yYWQgRHliY2lvIHdy
b3RlOgo+Pj4+PiBPbiAyNC4wOS4yMDI0IDEyOjE0IFBNLCBRaWFuZyBZdSB3cm90ZToKPj4+Pj4+
IERlc2NyaWJlIFBDSWUzIGNvbnRyb2xsZXIgYW5kIFBIWS4gQWxzbyBhZGQgcmVxdWlyZWQgc3lz
dGVtIHJlc291cmNlcyBsaWtlCj4+Pj4+PiByZWd1bGF0b3JzLCBjbG9ja3MsIGludGVycnVwdHMg
YW5kIHJlZ2lzdGVycyBjb25maWd1cmF0aW9uIGZvciBQQ0llMy4KPj4+Pj4+Cj4+Pj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBRaWFuZyBZdSA8cXVpY19xaWFueXVAcXVpY2luYy5jb20+Cj4+Pj4+PiBSZXZp
ZXdlZC1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtvdkBsaW5hcm8ub3JnPgo+
Pj4+Pj4gLS0tCj4+Pj4+IFFpYW5nLCBNYW5pCj4+Pj4+Cj4+Pj4+IEkgaGF2ZSBhIFJUUzUyNjEg
bW1jIGNoaXAgb24gUENJZTMgb24gdGhlIFN1cmZhY2UgTGFwdG9wLgo+Pj4+IElzIGl0IGJhc2Vk
IG9uIHgxZTgwMTAwPwo+Pj4gWW91IHdvdWxkIHRoaW5rIHNvIDpQCj4+Pgo+Pj4+PiBBZGRpbmcg
dGhlIGdsb2JhbCBpcnEgYnJlYWtzIHNkY2FyZCBkZXRlY3Rpb24gKHRoZSBjaGlwIHN0aWxsIGNv
bWVzCj4+Pj4+IHVwIGZpbmUpIHNvbWVob3cuIFJlbW92aW5nIHRoZSBpcnEgbWFrZXMgaXQgd29y
ayBhZ2FpbiA6fAo+Pj4+Pgo+Pj4+PiBJJ3ZlIGNvbmZpcm1lZCB0aGF0IHRoZSBpcnEgbnVtYmVy
IGlzIGNvcnJlY3QKPj4+Pj4KPj4+PiBZZWFoLCBJIGRpZCBzZWUgc29tZSBpc3N1ZXMgd2l0aCBN
U0kgb24gU004MjUwIChSQjUpIHdoZW4gZ2xvYmFsIGludGVycnVwdHMgYXJlCj4+Pj4gZW5hYmxl
ZCBhbmQgSSdtIHdvcmtpbmcgd2l0aCB0aGUgaHcgZm9sa3MgdG8gdW5kZXJzdGFuZCB3aGF0IGlz
IGdvaW5nIG9uLiBCdXQKPj4+PiBJIGRpZG4ndCBzZWUgdGhlIHNhbWUgaXNzdWVzIG9uIG5ld2Vy
IHBsYXRmb3JtcyAoc2E4Nzc1cCBldGMuLi4pLgo+Pj4+Cj4+Pj4gQ2FuIHlvdSBwbGVhc2UgY29u
ZmlybSBpZiB0aGUgaXNzdWUgaXMgZHVlIHRvIE1TSSBub3QgYmVpbmcgcmVjZWl2ZWQgZnJvbSB0
aGUKPj4+PiBkZXZpY2U/IENoZWNraW5nIHRoZSAvcHJvYy9pbnRlcnJ1dHBzIGlzIGVub3VnaC4K
Pj4+IFRoZXJlJ3Mgbm8gbXNpLW1hcCBmb3IgUENJZTMuIEkgcmVjYWxsICtKb2hhbiB0YWxraW5n
IGFib3V0IHNvbWUgc29ydCBvZgo+Pj4gYSBidWcgdGhhdCBwcmV2ZW50cyB1cyBmcm9tIGFkZGlu
ZyBpdD8KPiBZZWFoLCB0aGF0J3MgZm9yIHVzaW5nIEdJQy1JVFMgdG8gcmVjZWl2ZSBNU0lzLiBC
dXQgdGhlIGRlZmF1bHQgb25lIGlzIHRoZQo+IGludGVybmFsIE1TSSBjb250cm9sbGVyIGluIERX
Qy4KPgo+PiBVbmxlc3MgeW91IGp1c3QgbWVhbnQgdGhlIG1zaTAuLj03IGludGVycnVwdHMsIHRo
ZW4geWVhaCwgSSBvbmx5IGdldCBvbmUgaXJxCj4+IGV2ZW50IHdpdGggImdsb2JhbCIgaW4gcGxh
Y2UgYW5kIGl0IHNlZW1zIHRvIG5ldmVyIGdldCBtb3JlCj4+Cj4gT2suIFRoZW4gbW9zdCBsaWtl
bHkgdGhlIHNhbWUgaXNzdWUgSSBzYXcgb24gU004MjUwIGFzIHdlbGwuIEJ1dCBJJ20gY29uZnVz
ZWQKPiB3aHkgUWlhbmcgZGlkbid0IHNlZSB0aGUgaXNzdWUuIEkgc3BlY2lmaWNhbGx5IGFza2Vk
IGhpbSB0byBhZGQgdGhlIGdsb2JhbAo+IGludGVycnVwdCBhbmQgdGVzdCBpdCB3aXRoIHRoZSBl
bmRwb2ludCB0byBjaGVjayBpZiB0aGUgaXNzdWUgYXJpc2VzIG9yIG5vdC4KPgo+IFFpYW5nLCBj
YW4geW91IHBsZWFzZSBjb25maXJtPwpTb3JyeSwgSSBtaXN1bmRlcnN0b29kIHdoYXQgeW91IG1l
YW4uIEkgb25seSB2ZXJpZmllZCBpZiBsaW5rIHdhcyB1cCBidXQgCmlnbm9yZWQgdGhlIHN0YXR1
cyBvZiBlcCBkZXZpY2UKZHJpdmVyLgoKQnV0IGxvb2sgbGlrZSB0aGlzIGlzc3VlIGlzIGJlY2F1
c2Ugc25wc3lzIE1TSSBpcnEgaXMgbXNrZWQgZHVyaW5nIHByb2JlLgpDYW4geW91IHBsZWFzZSBh
bHNvIHVubWFzayBCSVQoMjMpIC0gQklUKDMwKSB3aGVuIHVubWFzayAKUEFSRl9JTlRfQUxMX0xJ
TktfVVAsCmxpa2UgdGhpcwoKQEAgLTE3NzIsNyArMTc3Miw4IEBAIHN0YXRpYyBpbnQgcWNvbV9w
Y2llX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgCipwZGV2KQogwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIGVycl9ob3N0X2RlaW5pdDsKIMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9CgotwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB3cml0ZWxfcmVsYXhlZChQQVJGX0lOVF9BTExfTElOS19VUCwgcGNpZS0+cGFyZiArIApQ
QVJGX0lOVF9BTExfTUFTSyk7CivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHdyaXRlbF9y
ZWxheGVkKFBBUkZfSU5UX0FMTF9MSU5LX1VQIHwgR0VOTUFTSygzMCwgMjMpLCAKcGNpZS0+cGFy
ZiArIFBBUkZfSU5UX0FMTF9NQVNLKTsKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGV2
X2VycihkZXYsICJJTlRfQUxMX01BU0s6IDB4JXhcbiIsIApyZWFkbF9yZWxheGVkKHBjaWUtPnBh
cmYgKyBQQVJGX0lOVF9BTExfTUFTSykpOwogwqDCoMKgwqDCoMKgwqAgfQoKQWZ0ZXIgdGhhdCwg
dGhpcyBpc3N1ZSBpcyBmaXhlZCBvbiBteSBzZXR1cC4KClRoYW5rcywKUWlhbmcKPgo+IC0gTWFu
aQo+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
