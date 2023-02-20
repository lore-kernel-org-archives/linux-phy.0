Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40FEBC636CC
	for <linux-phy@archiver.kernel.org>; Mon, 20 Feb 2023 15:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y2WQ7pSB6GyxU5KsxF6+RMkuQr52xAfRZpztRc+fYSg=; b=RiN3Tc0WXgmX+u
	DEdaEJEwCiRT/eQzw4HR9oein/UzL6xsYEnNOda4858LJOi4UVdMGjudsSNfgLIBmo5Fn5vV65PyP
	HG/IH/d0qkWjBzt6ECNnATh5jSO8nooPNEHxlKNexdcd1S8vnyiB9vPON8cjQ+NFMZhEqd2ClikfT
	GTES/1CHvjs3sqF5ZhklRGLpuk+UaZomk2PxD1/rvoowuCehYFYEzxk2MoM+5n0njBU+0Rg10mvSo
	MnnnckdrU4GRoNByWNoBdfcF3R1ZxKlQXZnsBcfkZbCgz7B4UU9bO3Esij6cwyAtx63fSB5N07OSi
	P03zaPFc2eo6DGYn7L9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU8Oj-004kim-0Y; Mon, 20 Feb 2023 15:48:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU82q-004Zcp-HZ
	for linux-phy@lists.infradead.org; Mon, 20 Feb 2023 15:25:38 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31KDuHHh029277;
	Mon, 20 Feb 2023 15:25:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=OQHfhbFp2rqrgd2ruKS+ejVr693oIrb4khbUXHUSsMg=;
 b=X3BasCXdN9+IxRcCBpqRZlnu3xiMRKgZypqWau/gAS304nUgTe4ih8mrNnh0q45LHbbb
 2TwP7GUHt2TJKwwd1TVXP+eFm4tCYbAe88kW47ujuGcKHb7VR0n3al1ZXgMlGRrmCDdV
 PGLqBxqGIuZ4nsO9p1kr36JFfbtO1+14I4yJOHDvaShtzgzdYNvq1kNJj2UzNHtvYJT7
 SDSVKZfq1gv//VNP33cK0ACnaWOZSb5Ru+7kupQ68EiG7JPYboXWXyINahmn1XlTL+ly
 MkiHl0Uq6DaXT9eSa+9gVJzrzrmlXp050PAN8rlYwdQ29IVH5gKuZT8lv9xJKDKp6kIS Cw== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ntmcm5dmj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 20 Feb 2023 15:25:26 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 31KFPOmT001071
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 20 Feb 2023 15:25:24 GMT
Received: from [10.216.11.20] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Mon, 20 Feb
 2023 07:25:16 -0800
Message-ID: <a95c132b-2caf-5be3-fcf5-15d92391d40b@quicinc.com>
Date: Mon, 20 Feb 2023 20:55:13 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 2/7] PCI: qcom: Add IPQ9574 PCIe support
Content-Language: en-US
To: Kathiravan T <quic_kathirav@quicinc.com>,
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
 <184a38a0-f2de-dd63-a8af-f4784c61365a@quicinc.com>
From: Devi Priya <quic_devipriy@quicinc.com>
In-Reply-To: <184a38a0-f2de-dd63-a8af-f4784c61365a@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: SGm6yOCcqlWTNSWstRhhHbdMM4MyZu7x
X-Proofpoint-GUID: SGm6yOCcqlWTNSWstRhhHbdMM4MyZu7x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-20_12,2023-02-20_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501 mlxscore=0
 phishscore=0 clxscore=1015 bulkscore=0 impostorscore=0 malwarescore=0
 lowpriorityscore=0 spamscore=0 mlxlogscore=985 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2302200141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230220_072536_626079_E20E95FD 
X-CRM114-Status: GOOD (  22.84  )
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

CgpPbiAyLzIwLzIwMjMgODoyMSBQTSwgS2F0aGlyYXZhbiBUIHdyb3RlOgo+IAo+IE9uIDIvMjAv
MjAyMyA3OjExIFBNLCBEZXZpIFByaXlhIHdyb3RlOgo+PiBIaSBTcmksCj4+IFRoYW5rcyBmb3Ig
dGFraW5nIHRpbWUgdG8gcmV2aWV3IHRoZSBwYXRjaCEKPj4KPj4gT24gMi8xNi8yMDIzIDU6MDgg
UE0sIFNyaWNoYXJhbiBSYW1hYmFkaHJhbiB3cm90ZToKPj4+IEhpIERldmksCj4+Pgo+Pj4gT24g
Mi8xNC8yMDIzIDEwOjExIFBNLCBEZXZpIFByaXlhIHdyb3RlOgo+Pj4+IEFkZGluZyBQQ0llIHN1
cHBvcnQgZm9yIElQUTk1NzQgU29DCj4+Pj4KPj4+PiBDby1kZXZlbG9wZWQtYnk6IEFudXNoYSBS
YW8gPHF1aWNfYW51c2hhQHF1aWNpbmMuY29tPgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEFudXNoYSBS
YW8gPHF1aWNfYW51c2hhQHF1aWNpbmMuY29tPgo+Pj4+IFNpZ25lZC1vZmYtYnk6IERldmkgUHJp
eWEgPHF1aWNfZGV2aXByaXlAcXVpY2luYy5jb20+Cj4+Pj4gLS0tCj4+Pj4gwqAgZHJpdmVycy9w
Y2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMgfCAxMTkgCj4+Pj4gKysrKysrKysrKysrKysr
KysrKysrKysrKwo+Pj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxMTkgaW5zZXJ0aW9ucygrKQo+Pj4+
Cj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5j
IAo+Pj4+IGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMKPj4+PiBpbmRl
eCBhMjMyYjA0YWYwNDguLjU3NjA2YzExM2Q0NSAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL3Bj
aS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYwo+Pj4+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4+Pj4gQEAgLTE5Myw2ICsxOTMsMTIgQEAgc3RydWN0IHFj
b21fcGNpZV9yZXNvdXJjZXNfMl85XzAgewo+Pj4+IMKgwqDCoMKgwqAgc3RydWN0IHJlc2V0X2Nv
bnRyb2wgKnJzdDsKPj4+PiDCoCB9Owo+Pj4+ICtzdHJ1Y3QgcWNvbV9wY2llX3Jlc291cmNlc18x
XzI3XzAgewo+Pj4+ICvCoMKgwqAgc3RydWN0IGNsa19idWxrX2RhdGEgKmNsa3M7Cj4+Pj4gK8Kg
wqDCoCBzdHJ1Y3QgcmVzZXRfY29udHJvbCAqcnN0Owo+Pj4+ICvCoMKgwqAgaW50IG51bV9jbGtz
Owo+Pj4+ICt9Owo+Pj4+ICsKPj4+PiDCoCB1bmlvbiBxY29tX3BjaWVfcmVzb3VyY2VzIHsKPj4+
PiDCoMKgwqDCoMKgIHN0cnVjdCBxY29tX3BjaWVfcmVzb3VyY2VzXzFfMF8wIHYxXzBfMDsKPj4+
PiDCoMKgwqDCoMKgIHN0cnVjdCBxY29tX3BjaWVfcmVzb3VyY2VzXzJfMV8wIHYyXzFfMDsKPj4+
PiBAQCAtMjAxLDYgKzIwNyw3IEBAIHVuaW9uIHFjb21fcGNpZV9yZXNvdXJjZXMgewo+Pj4+IMKg
wqDCoMKgwqAgc3RydWN0IHFjb21fcGNpZV9yZXNvdXJjZXNfMl80XzAgdjJfNF8wOwo+Pj4+IMKg
wqDCoMKgwqAgc3RydWN0IHFjb21fcGNpZV9yZXNvdXJjZXNfMl83XzAgdjJfN18wOwo+Pj4+IMKg
wqDCoMKgwqAgc3RydWN0IHFjb21fcGNpZV9yZXNvdXJjZXNfMl85XzAgdjJfOV8wOwo+Pj4+ICvC
oMKgwqAgc3RydWN0IHFjb21fcGNpZV9yZXNvdXJjZXNfMV8yN18wIHYxXzI3XzA7Cj4+Pj4gwqAg
fTsKPj4+PiDCoCBzdHJ1Y3QgcWNvbV9wY2llOwo+Pj4+IEBAIC0xNDA5LDYgKzE0MTYsMTA0IEBA
IHN0YXRpYyBpbnQgcWNvbV9wY2llX3Bvc3RfaW5pdF8yXzlfMChzdHJ1Y3QgCj4+Pj4gcWNvbV9w
Y2llICpwY2llKQo+Pj4+IMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+Pj4gwqAgfQo+Pj4+ICtzdGF0
aWMgaW50IHFjb21fcGNpZV9nZXRfcmVzb3VyY2VzXzFfMjdfMChzdHJ1Y3QgcWNvbV9wY2llICpw
Y2llKQo+Pj4+ICt7Cj4+Pj4gK8KgwqDCoCBzdHJ1Y3QgcWNvbV9wY2llX3Jlc291cmNlc18xXzI3
XzAgKnJlcyA9ICZwY2llLT5yZXMudjFfMjdfMDsKPj4+PiArwqDCoMKgIHN0cnVjdCBkd19wY2ll
ICpwY2kgPSBwY2llLT5wY2k7Cj4+Pj4gK8KgwqDCoCBzdHJ1Y3QgZGV2aWNlICpkZXYgPSBwY2kt
PmRldjsKPj4+PiArCj4+Pj4gK8KgwqDCoCByZXMtPm51bV9jbGtzID0gZGV2bV9jbGtfYnVsa19n
ZXRfYWxsKGRldiwgJnJlcy0+Y2xrcyk7Cj4+Pj4gK8KgwqDCoCBpZiAocmVzLT5jbGtzIDwgMCkK
Pj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHJlcy0+bnVtX2Nsa3M7Cj4+Pj4gKwo+Pj4+ICvC
oMKgwqAgcmVzLT5yc3QgPSBkZXZtX3Jlc2V0X2NvbnRyb2xfYXJyYXlfZ2V0X2V4Y2x1c2l2ZShk
ZXYpOwo+Pj4+ICvCoMKgwqAgaWYgKElTX0VSUihyZXMtPnJzdCkpCj4+Pj4gK8KgwqDCoMKgwqDC
oMKgIHJldHVybiBQVFJfRVJSKHJlcy0+cnN0KTsKPj4+PiArCj4+Pj4gK8KgwqDCoCByZXR1cm4g
MDsKPj4+PiArfQo+Pj4+ICsKPj4+PiArc3RhdGljIHZvaWQgcWNvbV9wY2llX2RlaW5pdF8xXzI3
XzAoc3RydWN0IHFjb21fcGNpZSAqcGNpZSkKPj4+PiArewo+Pj4+ICvCoMKgwqAgc3RydWN0IHFj
b21fcGNpZV9yZXNvdXJjZXNfMV8yN18wICpyZXMgPSAmcGNpZS0+cmVzLnYxXzI3XzA7Cj4+Pj4g
Kwo+Pj4+ICvCoMKgwqAgY2xrX2J1bGtfZGlzYWJsZV91bnByZXBhcmUocmVzLT5udW1fY2xrcywg
cmVzLT5jbGtzKTsKPj4+PiArfQo+Pj4+ICsKPj4+PiArc3RhdGljIGludCBxY29tX3BjaWVfaW5p
dF8xXzI3XzAoc3RydWN0IHFjb21fcGNpZSAqcGNpZSkKPj4+PiArewo+Pj4+ICvCoMKgwqAgc3Ry
dWN0IHFjb21fcGNpZV9yZXNvdXJjZXNfMV8yN18wICpyZXMgPSAmcGNpZS0+cmVzLnYxXzI3XzA7
Cj4+Pj4gK8KgwqDCoCBzdHJ1Y3QgZGV2aWNlICpkZXYgPSBwY2llLT5wY2ktPmRldjsKPj4+PiAr
wqDCoMKgIGludCByZXQ7Cj4+Pj4gKwo+Pj4+ICvCoMKgwqAgcmV0ID0gcmVzZXRfY29udHJvbF9h
c3NlcnQocmVzLT5yc3QpOwo+Pj4+ICvCoMKgwqAgaWYgKHJldCkgewo+Pj4+ICvCoMKgwqDCoMKg
wqDCoCBkZXZfZXJyKGRldiwgInJlc2V0IGFzc2VydCBmYWlsZWQgKCVkKVxuIiwgcmV0KTsKPj4+
PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHJldDsKPj4+PiArwqDCoMKgIH0KPj4+PiArCj4+Pj4g
K8KgwqDCoCAvKgo+Pj4+ICvCoMKgwqDCoCAqIERlbGF5IHBlcmlvZHMgYmVmb3JlIGFuZCBhZnRl
ciByZXNldCBkZWFzc2VydCBhcmUgd29ya2luZyAKPj4+PiB2YWx1ZXMKPj4+PiArwqDCoMKgwqAg
KiBmcm9tIGRvd25zdHJlYW0gQ29kZWF1cm9yYSBrZXJuZWwKPj4+PiArwqDCoMKgwqAgKi8KPj4+
PiArwqDCoMKgIHVzbGVlcF9yYW5nZSgyMDAwLCAyNTAwKTsKPj4+PiArCj4+Pj4gK8KgwqDCoCBy
ZXQgPSByZXNldF9jb250cm9sX2RlYXNzZXJ0KHJlcy0+cnN0KTsKPj4+PiArwqDCoMKgIGlmIChy
ZXQpIHsKPj4+PiArwqDCoMKgwqDCoMKgwqAgZGV2X2VycihkZXYsICJyZXNldCBkZWFzc2VydCBm
YWlsZWQgKCVkKVxuIiwgcmV0KTsKPj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHJldDsKPj4+
PiArwqDCoMKgIH0KPj4+PiArCj4+Pj4gK8KgwqDCoCB1c2xlZXBfcmFuZ2UoMjAwMCwgMjUwMCk7
Cj4+Pj4gKwo+Pj4+ICvCoMKgwqAgcmV0dXJuIGNsa19idWxrX3ByZXBhcmVfZW5hYmxlKHJlcy0+
bnVtX2Nsa3MsIHJlcy0+Y2xrcyk7Cj4+Pj4gK30KPj4+PiArCj4+Pj4gK3N0YXRpYyBpbnQgcWNv
bV9wY2llX3Bvc3RfaW5pdF8xXzI3XzAoc3RydWN0IHFjb21fcGNpZSAqcGNpZSkKPj4+PiArewo+
Pj4+ICvCoMKgwqAgc3RydWN0IGR3X3BjaWUgKnBjaSA9IHBjaWUtPnBjaTsKPj4+PiArwqDCoMKg
IHUxNiBvZmZzZXQgPSBkd19wY2llX2ZpbmRfY2FwYWJpbGl0eShwY2ksIFBDSV9DQVBfSURfRVhQ
KTsKPj4+PiArwqDCoMKgIHUzMiB2YWw7Cj4+Pj4gK8KgwqDCoCBpbnQgaTsKPj4+PiArCj4+Pj4g
K8KgwqDCoCB3cml0ZWwoMHg4MDAwMDAwLCBwY2llLT5wYXJmICsgCj4+Pj4gUENJRTIwX3YzX1BB
UkZfU0xWX0FERFJfU1BBQ0VfU0laRSk7Cj4gCj4gCj4gRGV2aSwKPiAKPiAKPiBBYm92ZSBzdGF0
ZW1lbnQgYWxzbyBkaWZmZXJzLiBZb3UgbmVlZCB0byBjb25zaWRlciB0aGlzIGFsc28gd2hlbiB5
b3UgCj4gdXNlIHRoZSAyXzlfMCBvcHMuCj4gClN1cmUsIHRoYW5rcyBrYXRoaXIuIFdpbGwgdGFr
ZSBjYXJlIG9mIHRoaXMgYXMgd2VsbAo+IApCZXN0IFJlZ2FyZHMsCkRldmkgUHJpeWEKCj4gVGhh
bmtzLAo+IAo+IAo+Pj4+ICsKPj4+PiArwqDCoMKgIHZhbCA9IHJlYWRsKHBjaWUtPnBhcmYgKyBQ
Q0lFMjBfUEFSRl9QSFlfQ1RSTCk7Cj4+Pj4gK8KgwqDCoCB2YWwgJj0gfkJJVCgwKTsKPj4+PiAr
wqDCoMKgIHdyaXRlbCh2YWwsIHBjaWUtPnBhcmYgKyBQQ0lFMjBfUEFSRl9QSFlfQ1RSTCk7Cj4+
Pj4gKwo+Pj4+ICvCoMKgwqAgd3JpdGVsKDAsIHBjaWUtPnBhcmYgKyBQQ0lFMjBfUEFSRl9EQklf
QkFTRV9BRERSKTsKPj4+PiArCj4+Pj4gK8KgwqDCoCB3cml0ZWwoREVWSUNFX1RZUEVfUkMsIHBj
aWUtPnBhcmYgKyBQQ0lFMjBfUEFSRl9ERVZJQ0VfVFlQRSk7Cj4+Pj4gK8KgwqDCoCB3cml0ZWwo
QllQQVNTIHwgTVNUUl9BWElfQ0xLX0VOIHwgQUhCX0NMS19FTiwKPj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcGNpZS0+cGFyZiArIFBDSUUyMF9QQVJGX01ISV9DTE9DS19SRVNFVF9DVFJMKTsK
Pj4+PiArwqDCoMKgIHdyaXRlbChHRU4zX1JFTEFURURfT0ZGX1JYRVFfUkdSRExFU1NfUlhUUyB8
Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIEdFTjNfUkVMQVRFRF9PRkZfR0VOM19aUlhEQ19O
T05DT01QTCwKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGNpLT5kYmlfYmFzZSArIEdFTjNf
UkVMQVRFRF9PRkYpOwo+Pj4+ICsKPj4+PiArwqDCoMKgIHdyaXRlbChNU1RfV0FLRVVQX0VOIHwg
U0xWX1dBS0VVUF9FTiB8IE1TVFJfQUNMS19DR0NfRElTIHwKPj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqAgU0xWX0FDTEtfQ0dDX0RJUyB8IENPUkVfQ0xLX0NHQ19ESVMgfAo+Pj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoCBBVVhfUFdSX0RFVCB8IEwyM19DTEtfUk1WX0RJUyB8IEwxX0NMS19STVZf
RElTLAo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCBwY2llLT5wYXJmICsgUENJRTIwX1BBUkZf
U1lTX0NUUkwpOwo+Pj4+ICsKPj4+PiArwqDCoMKgIHdyaXRlbCgwLCBwY2llLT5wYXJmICsgUENJ
RTIwX1BBUkZfUTJBX0ZMVVNIKTsKPj4+PiArCj4+Pj4gK8KgwqDCoCBkd19wY2llX2RiaV9yb193
cl9lbihwY2kpOwo+Pj4+ICvCoMKgwqAgd3JpdGVsKFBDSUVfQ0FQX1NMT1RfVkFMLCBwY2ktPmRi
aV9iYXNlICsgb2Zmc2V0ICsgCj4+Pj4gUENJX0VYUF9TTFRDQVApOwo+Pj4+ICsKPj4+PiArwqDC
oMKgIHZhbCA9IHJlYWRsKHBjaS0+ZGJpX2Jhc2UgKyBvZmZzZXQgKyBQQ0lfRVhQX0xOS0NBUCk7
Cj4+Pj4gK8KgwqDCoCB2YWwgJj0gflBDSV9FWFBfTE5LQ0FQX0FTUE1TOwo+Pj4+ICvCoMKgwqAg
d3JpdGVsKHZhbCwgcGNpLT5kYmlfYmFzZSArIG9mZnNldCArIFBDSV9FWFBfTE5LQ0FQKTsKPj4+
PiArCj4+Pj4gK8KgwqDCoCB3cml0ZWwoUENJX0VYUF9ERVZDVEwyX0NPTVBfVE1PVVRfRElTLCBw
Y2ktPmRiaV9iYXNlICsgb2Zmc2V0ICsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgUENJX0VY
UF9ERVZDVEwyKTsKPj4+PiArCj4+Pj4gK8KgwqDCoCBmb3IgKGkgPSAwOyBpIDwgMjU2OyBpKysp
Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHdyaXRlbCgwLCBwY2llLT5wYXJmICsgUENJRTIwX1BBUkZf
QkRGX1RPX1NJRF9UQUJMRV9OICsgKDQgCj4+Pj4gKiBpKSk7Cj4+Pj4gKwo+Pj4+ICvCoMKgwqAg
cmV0dXJuIDA7Cj4+Pj4gK30KPj4+PiArCj4+Pj4gwqAgc3RhdGljIGludCBxY29tX3BjaWVfbGlu
a191cChzdHJ1Y3QgZHdfcGNpZSAqcGNpKQo+Pj4+IMKgIHsKPj4+PiDCoMKgwqDCoMKgIHUxNiBv
ZmZzZXQgPSBkd19wY2llX2ZpbmRfY2FwYWJpbGl0eShwY2ksIFBDSV9DQVBfSURfRVhQKTsKPj4+
PiBAQCAtMTYyMCw2ICsxNzI1LDE1IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcWNvbV9wY2llX29w
cyBvcHNfMl85XzAgPSB7Cj4+Pj4gwqDCoMKgwqDCoCAubHRzc21fZW5hYmxlID0gcWNvbV9wY2ll
XzJfM18yX2x0c3NtX2VuYWJsZSwKPj4+PiDCoCB9Owo+Pj4+ICsvKiBRY29tIElQIHJldi46IDEu
MjcuMCBTeW5vcHN5cyBJUCByZXYuOiA1LjgwYSAqLwo+Pj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0
IHFjb21fcGNpZV9vcHMgb3BzXzFfMjdfMCA9IHsKPj4+PiArwqDCoMKgIC5nZXRfcmVzb3VyY2Vz
ID0gcWNvbV9wY2llX2dldF9yZXNvdXJjZXNfMV8yN18wLAo+Pj4+ICvCoMKgwqAgLmluaXQgPSBx
Y29tX3BjaWVfaW5pdF8xXzI3XzAsCj4+Pj4gK8KgwqDCoCAucG9zdF9pbml0ID0gcWNvbV9wY2ll
X3Bvc3RfaW5pdF8xXzI3XzAsCj4+Pj4gK8KgwqDCoCAuZGVpbml0ID0gcWNvbV9wY2llX2RlaW5p
dF8xXzI3XzAsCj4+Pj4gK8KgwqDCoCAubHRzc21fZW5hYmxlID0gcWNvbV9wY2llXzJfM18yX2x0
c3NtX2VuYWJsZSwKPj4+PiArfTsKPj4+PiArCj4+Pj4gwqAgc3RhdGljIGNvbnN0IHN0cnVjdCBx
Y29tX3BjaWVfY2ZnIGNmZ18xXzBfMCA9IHsKPj4+PiDCoMKgwqDCoMKgIC5vcHMgPSAmb3BzXzFf
MF8wLAo+Pj4+IMKgIH07Cj4+Pj4gQEAgLTE2NTIsNiArMTc2NiwxMCBAQCBzdGF0aWMgY29uc3Qg
c3RydWN0IHFjb21fcGNpZV9jZmcgY2ZnXzJfOV8wID0gewo+Pj4+IMKgwqDCoMKgwqAgLm9wcyA9
ICZvcHNfMl85XzAsCj4+Pj4gwqAgfTsKPj4+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBxY29tX3Bj
aWVfY2ZnIGNmZ18xXzI3XzAgPSB7Cj4+Pj4gK8KgwqDCoCAub3BzID0gJm9wc18xXzI3XzAsCj4+
Pj4gK307Cj4+Pj4gKwo+Pj4+IMKgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHdfcGNpZV9vcHMgZHdf
cGNpZV9vcHMgPSB7Cj4+Pj4gwqDCoMKgwqDCoCAubGlua191cCA9IHFjb21fcGNpZV9saW5rX3Vw
LAo+Pj4+IMKgwqDCoMKgwqAgLnN0YXJ0X2xpbmsgPSBxY29tX3BjaWVfc3RhcnRfbGluaywKPj4+
PiBAQCAtMTgyOSw2ICsxOTQ3LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQg
Cj4+Pj4gcWNvbV9wY2llX21hdGNoW10gPSB7Cj4+Pj4gwqDCoMKgwqDCoCB7IC5jb21wYXRpYmxl
ID0gInFjb20scGNpZS1pcHE4MDY0LXYyIiwgLmRhdGEgPSAmY2ZnXzJfMV8wIH0sCj4+Pj4gwqDC
oMKgwqDCoCB7IC5jb21wYXRpYmxlID0gInFjb20scGNpZS1pcHE4MDc0IiwgLmRhdGEgPSAmY2Zn
XzJfM18zIH0sCj4+Pj4gwqDCoMKgwqDCoCB7IC5jb21wYXRpYmxlID0gInFjb20scGNpZS1pcHE4
MDc0LWdlbjMiLCAuZGF0YSA9ICZjZmdfMl85XzAgfSwKPj4+PiArwqDCoMKgIHsgLmNvbXBhdGli
bGUgPSAicWNvbSxwY2llLWlwcTk1NzQiLCAuZGF0YSA9ICZjZmdfMV8yN18wIH0sCj4+Pgo+Pj4g
wqDCoCBJIGRvIG5vdCBzZWUgbXVjaCBkaWZmZXJlbmNlIGJldHdlZW4gMl85XzAgYW5kIDFfMjdf
MC4gSXMgdGhpcyBwYXRjaAo+Pj4gwqDCoCByZWFsbHkgcmVxdWlyZWQuIENhbiB5b3UgY2hlY2sg
aWYgaXQgd29ya3Mgd2l0aCAyXzlfMCBpdHNlbGYgPwo+PiBZZXMgcmlnaHQgU3JpLCBPbmx5IHRo
ZSBjbG9ja3Mgc2VlbSB0byBkaWZmZXIgYmV0d2VlbiAyXzlfMCBhbmQgMV8yN18wLgo+PiBXaWxs
IHVwZGF0ZSAyXzlfMCBvcHMgdG8gZ2V0IHRoZSBjbG9ja3MgZnJvbSB0aGUgRFQgYW5kIHVzZSB0
aGUgc2FtZSAKPj4gZm9yIGlwcTk1NzQgaW4gdGhlIG5leHQgc3Bpbi4KPj4KPj4gQmVzdCBSZWdh
cmRzLAo+PiBEZXZpIFByaXlhCj4+Pgo+Pj4gUmVnYXJkcywKPj4+IMKgwqBTcmljaGFyYW4KCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
