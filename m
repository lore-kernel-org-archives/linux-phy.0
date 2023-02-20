Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80D39C636CC
	for <linux-phy@archiver.kernel.org>; Mon, 20 Feb 2023 14:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/gtzE7jIhOGDK9iQLS/2EQN6ecV/69rXNyaC5v4T3N8=; b=SkmK44gLHJ9koX
	+I5fkwYDqaU73ggSngQCWKWTaNIMyQPqSbjNFde3yGvPaFc8EARCJAG1qz7GT1D5vdAN3hfaqxjQ9
	AnFTm5Rt+0n5SDP4+MexESZLzgtlESqQ5o99F16xdB8i/TfHduPw3DKT7VSUpvwNOZq1p1W493L5K
	ljyabormdFG46kv4qTUgiMxTVIQtOLGL5WVbEXlAHcTjfdKGfFzGzO7z6lQ1RIOEQpMo/umYH0kLQ
	oOtoM98g7VITlRlJX2d+gxAd/6SSjuj6qBDbisKxJ71qJLPPBYSmWqUPgnDtHu2tGFtAY6gh8zzrI
	90mR4OkJpcCDN90O6T0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU7Wg-004MMP-L7; Mon, 20 Feb 2023 14:52:22 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU7Wc-004MKm-Rn
	for linux-phy@lists.infradead.org; Mon, 20 Feb 2023 14:52:21 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31KDVO6m028002;
	Mon, 20 Feb 2023 14:52:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=GxL44HibsOb/aqsssO8yBpFiepI9D0VQUTJB74dPhmA=;
 b=clwle24F9z5zbcXfRhZdWDmEHAmwvCYZmZu57WAU+KcEY8YYFvVZ18xQB+OyxiZlb85/
 bXMFRhJ3eyjXiCxn0bgcOTFrACBuNVgcwAPSC7qbuJAEK0UENQmxRJveVEtb40mjj9EQ
 WdbnetxGGIdh6j/f3/+1zdufwW/7ZmNV/jCKh4J91QXxjH+HfB2KvQAR48M10f11bYSu
 7a2Ma1XRQKLW8xHpe9/DTxgjLIowPJXblvqV6nUeyohw3nhV4rcEcAs5gq/mxY7fP0YS
 /4AH8cU7ug/FZ8ojM7DrT0aNCwSGHIWUZbjNLDbIdtqJwEGLY0tX4zMUNZbILLrH64kf uA== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ntm1vdncx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 20 Feb 2023 14:52:08 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 31KEq617023258
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 20 Feb 2023 14:52:06 GMT
Received: from [10.50.13.218] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Mon, 20 Feb
 2023 06:51:56 -0800
Message-ID: <184a38a0-f2de-dd63-a8af-f4784c61365a@quicinc.com>
Date: Mon, 20 Feb 2023 20:21:53 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 2/7] PCI: qcom: Add IPQ9574 PCIe support
Content-Language: en-US
To: Devi Priya <quic_devipriy@quicinc.com>,
        Sricharan Ramabadhran
	<quic_srichara@quicinc.com>,
        <agross@kernel.org>, <andersson@kernel.org>,
        <konrad.dybcio@linaro.org>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <robh@kernel.org>, <bhelgaas@google.com>,
        <krzysztof.kozlowski+dt@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <mani@kernel.org>, <p.zabel@pengutronix.de>, <svarbanov@mm-sol.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-clk@vger.kernel.org>
CC: <quic_gokulsri@quicinc.com>, <quic_sjaganat@quicinc.com>,
        <quic_arajkuma@quicinc.com>, <quic_anusha@quicinc.com>
References: <20230214164135.17039-1-quic_devipriy@quicinc.com>
 <20230214164135.17039-3-quic_devipriy@quicinc.com>
 <6ea43d8d-7b9c-5a11-097f-906e10ac3627@quicinc.com>
 <c766648f-c3a5-b842-2164-c3f480dee129@quicinc.com>
From: Kathiravan T <quic_kathirav@quicinc.com>
In-Reply-To: <c766648f-c3a5-b842-2164-c3f480dee129@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: dPgA47UCWpdMvfRaaHia2A8PgwjyOqZg
X-Proofpoint-GUID: dPgA47UCWpdMvfRaaHia2A8PgwjyOqZg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-20_12,2023-02-20_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 phishscore=0
 bulkscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0 mlxlogscore=999
 suspectscore=0 adultscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2302200136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230220_065219_069601_5BD73252 
X-CRM114-Status: GOOD (  23.38  )
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

Ck9uIDIvMjAvMjAyMyA3OjExIFBNLCBEZXZpIFByaXlhIHdyb3RlOgo+IEhpIFNyaSwKPiBUaGFu
a3MgZm9yIHRha2luZyB0aW1lIHRvIHJldmlldyB0aGUgcGF0Y2ghCj4KPiBPbiAyLzE2LzIwMjMg
NTowOCBQTSwgU3JpY2hhcmFuIFJhbWFiYWRocmFuIHdyb3RlOgo+PiBIaSBEZXZpLAo+Pgo+PiBP
biAyLzE0LzIwMjMgMTA6MTEgUE0sIERldmkgUHJpeWEgd3JvdGU6Cj4+PiBBZGRpbmcgUENJZSBz
dXBwb3J0IGZvciBJUFE5NTc0IFNvQwo+Pj4KPj4+IENvLWRldmVsb3BlZC1ieTogQW51c2hhIFJh
byA8cXVpY19hbnVzaGFAcXVpY2luYy5jb20+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBBbnVzaGEgUmFv
IDxxdWljX2FudXNoYUBxdWljaW5jLmNvbT4KPj4+IFNpZ25lZC1vZmYtYnk6IERldmkgUHJpeWEg
PHF1aWNfZGV2aXByaXlAcXVpY2luYy5jb20+Cj4+PiAtLS0KPj4+IMKgIGRyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jIHwgMTE5IAo+Pj4gKysrKysrKysrKysrKysrKysrKysr
KysrKwo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDExOSBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jIAo+Pj4gYi9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYwo+Pj4gaW5kZXggYTIzMmIwNGFm
MDQ4Li41NzYwNmMxMTNkNDUgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9wY2llLXFjb20uYwo+Pj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
ZS1xY29tLmMKPj4+IEBAIC0xOTMsNiArMTkzLDEyIEBAIHN0cnVjdCBxY29tX3BjaWVfcmVzb3Vy
Y2VzXzJfOV8wIHsKPj4+IMKgwqDCoMKgwqAgc3RydWN0IHJlc2V0X2NvbnRyb2wgKnJzdDsKPj4+
IMKgIH07Cj4+PiArc3RydWN0IHFjb21fcGNpZV9yZXNvdXJjZXNfMV8yN18wIHsKPj4+ICvCoMKg
wqAgc3RydWN0IGNsa19idWxrX2RhdGEgKmNsa3M7Cj4+PiArwqDCoMKgIHN0cnVjdCByZXNldF9j
b250cm9sICpyc3Q7Cj4+PiArwqDCoMKgIGludCBudW1fY2xrczsKPj4+ICt9Owo+Pj4gKwo+Pj4g
wqAgdW5pb24gcWNvbV9wY2llX3Jlc291cmNlcyB7Cj4+PiDCoMKgwqDCoMKgIHN0cnVjdCBxY29t
X3BjaWVfcmVzb3VyY2VzXzFfMF8wIHYxXzBfMDsKPj4+IMKgwqDCoMKgwqAgc3RydWN0IHFjb21f
cGNpZV9yZXNvdXJjZXNfMl8xXzAgdjJfMV8wOwo+Pj4gQEAgLTIwMSw2ICsyMDcsNyBAQCB1bmlv
biBxY29tX3BjaWVfcmVzb3VyY2VzIHsKPj4+IMKgwqDCoMKgwqAgc3RydWN0IHFjb21fcGNpZV9y
ZXNvdXJjZXNfMl80XzAgdjJfNF8wOwo+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgcWNvbV9wY2llX3Jl
c291cmNlc18yXzdfMCB2Ml83XzA7Cj4+PiDCoMKgwqDCoMKgIHN0cnVjdCBxY29tX3BjaWVfcmVz
b3VyY2VzXzJfOV8wIHYyXzlfMDsKPj4+ICvCoMKgwqAgc3RydWN0IHFjb21fcGNpZV9yZXNvdXJj
ZXNfMV8yN18wIHYxXzI3XzA7Cj4+PiDCoCB9Owo+Pj4gwqAgc3RydWN0IHFjb21fcGNpZTsKPj4+
IEBAIC0xNDA5LDYgKzE0MTYsMTA0IEBAIHN0YXRpYyBpbnQgcWNvbV9wY2llX3Bvc3RfaW5pdF8y
XzlfMChzdHJ1Y3QgCj4+PiBxY29tX3BjaWUgKnBjaWUpCj4+PiDCoMKgwqDCoMKgIHJldHVybiAw
Owo+Pj4gwqAgfQo+Pj4gK3N0YXRpYyBpbnQgcWNvbV9wY2llX2dldF9yZXNvdXJjZXNfMV8yN18w
KHN0cnVjdCBxY29tX3BjaWUgKnBjaWUpCj4+PiArewo+Pj4gK8KgwqDCoCBzdHJ1Y3QgcWNvbV9w
Y2llX3Jlc291cmNlc18xXzI3XzAgKnJlcyA9ICZwY2llLT5yZXMudjFfMjdfMDsKPj4+ICvCoMKg
wqAgc3RydWN0IGR3X3BjaWUgKnBjaSA9IHBjaWUtPnBjaTsKPj4+ICvCoMKgwqAgc3RydWN0IGRl
dmljZSAqZGV2ID0gcGNpLT5kZXY7Cj4+PiArCj4+PiArwqDCoMKgIHJlcy0+bnVtX2Nsa3MgPSBk
ZXZtX2Nsa19idWxrX2dldF9hbGwoZGV2LCAmcmVzLT5jbGtzKTsKPj4+ICvCoMKgwqAgaWYgKHJl
cy0+Y2xrcyA8IDApCj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHJlcy0+bnVtX2Nsa3M7Cj4+
PiArCj4+PiArwqDCoMKgIHJlcy0+cnN0ID0gZGV2bV9yZXNldF9jb250cm9sX2FycmF5X2dldF9l
eGNsdXNpdmUoZGV2KTsKPj4+ICvCoMKgwqAgaWYgKElTX0VSUihyZXMtPnJzdCkpCj4+PiArwqDC
oMKgwqDCoMKgwqAgcmV0dXJuIFBUUl9FUlIocmVzLT5yc3QpOwo+Pj4gKwo+Pj4gK8KgwqDCoCBy
ZXR1cm4gMDsKPj4+ICt9Cj4+PiArCj4+PiArc3RhdGljIHZvaWQgcWNvbV9wY2llX2RlaW5pdF8x
XzI3XzAoc3RydWN0IHFjb21fcGNpZSAqcGNpZSkKPj4+ICt7Cj4+PiArwqDCoMKgIHN0cnVjdCBx
Y29tX3BjaWVfcmVzb3VyY2VzXzFfMjdfMCAqcmVzID0gJnBjaWUtPnJlcy52MV8yN18wOwo+Pj4g
Kwo+Pj4gK8KgwqDCoCBjbGtfYnVsa19kaXNhYmxlX3VucHJlcGFyZShyZXMtPm51bV9jbGtzLCBy
ZXMtPmNsa3MpOwo+Pj4gK30KPj4+ICsKPj4+ICtzdGF0aWMgaW50IHFjb21fcGNpZV9pbml0XzFf
MjdfMChzdHJ1Y3QgcWNvbV9wY2llICpwY2llKQo+Pj4gK3sKPj4+ICvCoMKgwqAgc3RydWN0IHFj
b21fcGNpZV9yZXNvdXJjZXNfMV8yN18wICpyZXMgPSAmcGNpZS0+cmVzLnYxXzI3XzA7Cj4+PiAr
wqDCoMKgIHN0cnVjdCBkZXZpY2UgKmRldiA9IHBjaWUtPnBjaS0+ZGV2Owo+Pj4gK8KgwqDCoCBp
bnQgcmV0Owo+Pj4gKwo+Pj4gK8KgwqDCoCByZXQgPSByZXNldF9jb250cm9sX2Fzc2VydChyZXMt
PnJzdCk7Cj4+PiArwqDCoMKgIGlmIChyZXQpIHsKPj4+ICvCoMKgwqDCoMKgwqDCoCBkZXZfZXJy
KGRldiwgInJlc2V0IGFzc2VydCBmYWlsZWQgKCVkKVxuIiwgcmV0KTsKPj4+ICvCoMKgwqDCoMKg
wqDCoCByZXR1cm4gcmV0Owo+Pj4gK8KgwqDCoCB9Cj4+PiArCj4+PiArwqDCoMKgIC8qCj4+PiAr
wqDCoMKgwqAgKiBEZWxheSBwZXJpb2RzIGJlZm9yZSBhbmQgYWZ0ZXIgcmVzZXQgZGVhc3NlcnQg
YXJlIHdvcmtpbmcgCj4+PiB2YWx1ZXMKPj4+ICvCoMKgwqDCoCAqIGZyb20gZG93bnN0cmVhbSBD
b2RlYXVyb3JhIGtlcm5lbAo+Pj4gK8KgwqDCoMKgICovCj4+PiArwqDCoMKgIHVzbGVlcF9yYW5n
ZSgyMDAwLCAyNTAwKTsKPj4+ICsKPj4+ICvCoMKgwqAgcmV0ID0gcmVzZXRfY29udHJvbF9kZWFz
c2VydChyZXMtPnJzdCk7Cj4+PiArwqDCoMKgIGlmIChyZXQpIHsKPj4+ICvCoMKgwqDCoMKgwqDC
oCBkZXZfZXJyKGRldiwgInJlc2V0IGRlYXNzZXJ0IGZhaWxlZCAoJWQpXG4iLCByZXQpOwo+Pj4g
K8KgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+PiArwqDCoMKgIH0KPj4+ICsKPj4+ICvCoMKg
wqAgdXNsZWVwX3JhbmdlKDIwMDAsIDI1MDApOwo+Pj4gKwo+Pj4gK8KgwqDCoCByZXR1cm4gY2xr
X2J1bGtfcHJlcGFyZV9lbmFibGUocmVzLT5udW1fY2xrcywgcmVzLT5jbGtzKTsKPj4+ICt9Cj4+
PiArCj4+PiArc3RhdGljIGludCBxY29tX3BjaWVfcG9zdF9pbml0XzFfMjdfMChzdHJ1Y3QgcWNv
bV9wY2llICpwY2llKQo+Pj4gK3sKPj4+ICvCoMKgwqAgc3RydWN0IGR3X3BjaWUgKnBjaSA9IHBj
aWUtPnBjaTsKPj4+ICvCoMKgwqAgdTE2IG9mZnNldCA9IGR3X3BjaWVfZmluZF9jYXBhYmlsaXR5
KHBjaSwgUENJX0NBUF9JRF9FWFApOwo+Pj4gK8KgwqDCoCB1MzIgdmFsOwo+Pj4gK8KgwqDCoCBp
bnQgaTsKPj4+ICsKPj4+ICvCoMKgwqAgd3JpdGVsKDB4ODAwMDAwMCwgcGNpZS0+cGFyZiArIAo+
Pj4gUENJRTIwX3YzX1BBUkZfU0xWX0FERFJfU1BBQ0VfU0laRSk7CgoKRGV2aSwKCgpBYm92ZSBz
dGF0ZW1lbnQgYWxzbyBkaWZmZXJzLiBZb3UgbmVlZCB0byBjb25zaWRlciB0aGlzIGFsc28gd2hl
biB5b3UgCnVzZSB0aGUgMl85XzAgb3BzLgoKClRoYW5rcywKCgo+Pj4gKwo+Pj4gK8KgwqDCoCB2
YWwgPSByZWFkbChwY2llLT5wYXJmICsgUENJRTIwX1BBUkZfUEhZX0NUUkwpOwo+Pj4gK8KgwqDC
oCB2YWwgJj0gfkJJVCgwKTsKPj4+ICvCoMKgwqAgd3JpdGVsKHZhbCwgcGNpZS0+cGFyZiArIFBD
SUUyMF9QQVJGX1BIWV9DVFJMKTsKPj4+ICsKPj4+ICvCoMKgwqAgd3JpdGVsKDAsIHBjaWUtPnBh
cmYgKyBQQ0lFMjBfUEFSRl9EQklfQkFTRV9BRERSKTsKPj4+ICsKPj4+ICvCoMKgwqAgd3JpdGVs
KERFVklDRV9UWVBFX1JDLCBwY2llLT5wYXJmICsgUENJRTIwX1BBUkZfREVWSUNFX1RZUEUpOwo+
Pj4gK8KgwqDCoCB3cml0ZWwoQllQQVNTIHwgTVNUUl9BWElfQ0xLX0VOIHwgQUhCX0NMS19FTiwK
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCBwY2llLT5wYXJmICsgUENJRTIwX1BBUkZfTUhJX0NM
T0NLX1JFU0VUX0NUUkwpOwo+Pj4gK8KgwqDCoCB3cml0ZWwoR0VOM19SRUxBVEVEX09GRl9SWEVR
X1JHUkRMRVNTX1JYVFMgfAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIEdFTjNfUkVMQVRFRF9P
RkZfR0VOM19aUlhEQ19OT05DT01QTCwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCBwY2ktPmRi
aV9iYXNlICsgR0VOM19SRUxBVEVEX09GRik7Cj4+PiArCj4+PiArwqDCoMKgIHdyaXRlbChNU1Rf
V0FLRVVQX0VOIHwgU0xWX1dBS0VVUF9FTiB8IE1TVFJfQUNMS19DR0NfRElTIHwKPj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoCBTTFZfQUNMS19DR0NfRElTIHwgQ09SRV9DTEtfQ0dDX0RJUyB8Cj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgQVVYX1BXUl9ERVQgfCBMMjNfQ0xLX1JNVl9ESVMgfCBM
MV9DTEtfUk1WX0RJUywKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCBwY2llLT5wYXJmICsgUENJ
RTIwX1BBUkZfU1lTX0NUUkwpOwo+Pj4gKwo+Pj4gK8KgwqDCoCB3cml0ZWwoMCwgcGNpZS0+cGFy
ZiArIFBDSUUyMF9QQVJGX1EyQV9GTFVTSCk7Cj4+PiArCj4+PiArwqDCoMKgIGR3X3BjaWVfZGJp
X3JvX3dyX2VuKHBjaSk7Cj4+PiArwqDCoMKgIHdyaXRlbChQQ0lFX0NBUF9TTE9UX1ZBTCwgcGNp
LT5kYmlfYmFzZSArIG9mZnNldCArIAo+Pj4gUENJX0VYUF9TTFRDQVApOwo+Pj4gKwo+Pj4gK8Kg
wqDCoCB2YWwgPSByZWFkbChwY2ktPmRiaV9iYXNlICsgb2Zmc2V0ICsgUENJX0VYUF9MTktDQVAp
Owo+Pj4gK8KgwqDCoCB2YWwgJj0gflBDSV9FWFBfTE5LQ0FQX0FTUE1TOwo+Pj4gK8KgwqDCoCB3
cml0ZWwodmFsLCBwY2ktPmRiaV9iYXNlICsgb2Zmc2V0ICsgUENJX0VYUF9MTktDQVApOwo+Pj4g
Kwo+Pj4gK8KgwqDCoCB3cml0ZWwoUENJX0VYUF9ERVZDVEwyX0NPTVBfVE1PVVRfRElTLCBwY2kt
PmRiaV9iYXNlICsgb2Zmc2V0ICsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCBQQ0lfRVhQX0RF
VkNUTDIpOwo+Pj4gKwo+Pj4gK8KgwqDCoCBmb3IgKGkgPSAwOyBpIDwgMjU2OyBpKyspCj4+PiAr
wqDCoMKgwqDCoMKgwqAgd3JpdGVsKDAsIHBjaWUtPnBhcmYgKyBQQ0lFMjBfUEFSRl9CREZfVE9f
U0lEX1RBQkxFX04gKyAoNCAKPj4+ICogaSkpOwo+Pj4gKwo+Pj4gK8KgwqDCoCByZXR1cm4gMDsK
Pj4+ICt9Cj4+PiArCj4+PiDCoCBzdGF0aWMgaW50IHFjb21fcGNpZV9saW5rX3VwKHN0cnVjdCBk
d19wY2llICpwY2kpCj4+PiDCoCB7Cj4+PiDCoMKgwqDCoMKgIHUxNiBvZmZzZXQgPSBkd19wY2ll
X2ZpbmRfY2FwYWJpbGl0eShwY2ksIFBDSV9DQVBfSURfRVhQKTsKPj4+IEBAIC0xNjIwLDYgKzE3
MjUsMTUgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBxY29tX3BjaWVfb3BzIG9wc18yXzlfMCA9IHsK
Pj4+IMKgwqDCoMKgwqAgLmx0c3NtX2VuYWJsZSA9IHFjb21fcGNpZV8yXzNfMl9sdHNzbV9lbmFi
bGUsCj4+PiDCoCB9Owo+Pj4gKy8qIFFjb20gSVAgcmV2LjogMS4yNy4wIFN5bm9wc3lzIElQIHJl
di46IDUuODBhICovCj4+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBxY29tX3BjaWVfb3BzIG9wc18x
XzI3XzAgPSB7Cj4+PiArwqDCoMKgIC5nZXRfcmVzb3VyY2VzID0gcWNvbV9wY2llX2dldF9yZXNv
dXJjZXNfMV8yN18wLAo+Pj4gK8KgwqDCoCAuaW5pdCA9IHFjb21fcGNpZV9pbml0XzFfMjdfMCwK
Pj4+ICvCoMKgwqAgLnBvc3RfaW5pdCA9IHFjb21fcGNpZV9wb3N0X2luaXRfMV8yN18wLAo+Pj4g
K8KgwqDCoCAuZGVpbml0ID0gcWNvbV9wY2llX2RlaW5pdF8xXzI3XzAsCj4+PiArwqDCoMKgIC5s
dHNzbV9lbmFibGUgPSBxY29tX3BjaWVfMl8zXzJfbHRzc21fZW5hYmxlLAo+Pj4gK307Cj4+PiAr
Cj4+PiDCoCBzdGF0aWMgY29uc3Qgc3RydWN0IHFjb21fcGNpZV9jZmcgY2ZnXzFfMF8wID0gewo+
Pj4gwqDCoMKgwqDCoCAub3BzID0gJm9wc18xXzBfMCwKPj4+IMKgIH07Cj4+PiBAQCAtMTY1Miw2
ICsxNzY2LDEwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcWNvbV9wY2llX2NmZyBjZmdfMl85XzAg
PSB7Cj4+PiDCoMKgwqDCoMKgIC5vcHMgPSAmb3BzXzJfOV8wLAo+Pj4gwqAgfTsKPj4+ICtzdGF0
aWMgY29uc3Qgc3RydWN0IHFjb21fcGNpZV9jZmcgY2ZnXzFfMjdfMCA9IHsKPj4+ICvCoMKgwqAg
Lm9wcyA9ICZvcHNfMV8yN18wLAo+Pj4gK307Cj4+PiArCj4+PiDCoCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGR3X3BjaWVfb3BzIGR3X3BjaWVfb3BzID0gewo+Pj4gwqDCoMKgwqDCoCAubGlua191cCA9
IHFjb21fcGNpZV9saW5rX3VwLAo+Pj4gwqDCoMKgwqDCoCAuc3RhcnRfbGluayA9IHFjb21fcGNp
ZV9zdGFydF9saW5rLAo+Pj4gQEAgLTE4MjksNiArMTk0Nyw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3Qgb2ZfZGV2aWNlX2lkIAo+Pj4gcWNvbV9wY2llX21hdGNoW10gPSB7Cj4+PiDCoMKgwqDCoMKg
IHsgLmNvbXBhdGlibGUgPSAicWNvbSxwY2llLWlwcTgwNjQtdjIiLCAuZGF0YSA9ICZjZmdfMl8x
XzAgfSwKPj4+IMKgwqDCoMKgwqAgeyAuY29tcGF0aWJsZSA9ICJxY29tLHBjaWUtaXBxODA3NCIs
IC5kYXRhID0gJmNmZ18yXzNfMyB9LAo+Pj4gwqDCoMKgwqDCoCB7IC5jb21wYXRpYmxlID0gInFj
b20scGNpZS1pcHE4MDc0LWdlbjMiLCAuZGF0YSA9ICZjZmdfMl85XzAgfSwKPj4+ICvCoMKgwqAg
eyAuY29tcGF0aWJsZSA9ICJxY29tLHBjaWUtaXBxOTU3NCIsIC5kYXRhID0gJmNmZ18xXzI3XzAg
fSwKPj4KPj4gwqDCoCBJIGRvIG5vdCBzZWUgbXVjaCBkaWZmZXJlbmNlIGJldHdlZW4gMl85XzAg
YW5kIDFfMjdfMC4gSXMgdGhpcyBwYXRjaAo+PiDCoMKgIHJlYWxseSByZXF1aXJlZC4gQ2FuIHlv
dSBjaGVjayBpZiBpdCB3b3JrcyB3aXRoIDJfOV8wIGl0c2VsZiA/Cj4gWWVzIHJpZ2h0IFNyaSwg
T25seSB0aGUgY2xvY2tzIHNlZW0gdG8gZGlmZmVyIGJldHdlZW4gMl85XzAgYW5kIDFfMjdfMC4K
PiBXaWxsIHVwZGF0ZSAyXzlfMCBvcHMgdG8gZ2V0IHRoZSBjbG9ja3MgZnJvbSB0aGUgRFQgYW5k
IHVzZSB0aGUgc2FtZSAKPiBmb3IgaXBxOTU3NCBpbiB0aGUgbmV4dCBzcGluLgo+Cj4gQmVzdCBS
ZWdhcmRzLAo+IERldmkgUHJpeWEKPj4KPj4gUmVnYXJkcywKPj4gwqDCoFNyaWNoYXJhbgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
