Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 154D0C05027
	for <linux-phy@archiver.kernel.org>; Mon, 20 Feb 2023 13:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yjSALI/JpXB6P+wkmHiaGRmkdYZXcjQLols/HuDlwlA=; b=YNR9Z43NURzkD4
	CmzssW+OdNten3gCOQsekWSQ1JiZfqFno9aMVHY9NUK8volCvNx4JYYaq+y1bw6f7efLKVZSLJRwB
	x5jSCVxXlqfUgobcpouddOaOexy8qGDRYLOErjzvYVDuyWJdpXGgH93lFk9obLNtoeN583DXTU4QZ
	oFCR2pwlsfPURc1vyqUdUeT7iK7mOjBHrfZ+1gxmhfpXmAudYqu4NfFm+q/bXdP/OM2IU6zNDCkKr
	vwskat7t7Y0+F7yKOCRLGeTGAhlnlPbR40IyrNKJMpg2EFJVBYKvss3w49l2J5Zs0bgqbH+hYjU2s
	1dzGsTjoyrEHN8A+j/AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU6Qu-004Dia-Bi; Mon, 20 Feb 2023 13:42:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU6Qr-004Dhj-C0
	for linux-phy@lists.infradead.org; Mon, 20 Feb 2023 13:42:19 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31K6ZMVF028228;
	Mon, 20 Feb 2023 13:42:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=3RWo/VGRg+v2FNa6JJL7OoXML1PZm142obMtM76O3J4=;
 b=KOPX6BNyjBCfGC+90Dn+4iZn/pFu+9AJYX/Dxk/mGePVRO7Ue1bEWSZrO6HlkesfevC8
 QwnB7OxoYfLePCiR3u2rPS3HL+gPig32YFeeKMeZUEcifhu8HHkyGm2ylQGeDoNA/FZU
 mgCgohZtzhPgDvRU1wq+EG/9oggmJXBxesiruovh9Oe6a87kUTZ/w6prMD+4Nh77z5GH
 WZ2T3OBBNAqn2CDGtdXLZkB6y6ipxL4OOxhOFSsLiNYilm5nT+2jEGJ9oVwtwPrE1bVz
 l4g50a3Sb0miy9fVNfIcyxa1MSF/qBjQlTpc66uTh4VWKC2bAUGvGia12Vwn74rqvzGo pQ== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ntnn05219-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 20 Feb 2023 13:42:05 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 31KDg47c021527
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 20 Feb 2023 13:42:04 GMT
Received: from [10.216.11.20] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Mon, 20 Feb
 2023 05:41:55 -0800
Message-ID: <c766648f-c3a5-b842-2164-c3f480dee129@quicinc.com>
Date: Mon, 20 Feb 2023 19:11:52 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 2/7] PCI: qcom: Add IPQ9574 PCIe support
Content-Language: en-US
To: Sricharan Ramabadhran <quic_srichara@quicinc.com>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <lpieralisi@kernel.org>, <kw@linux.com>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzysztof.kozlowski+dt@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <mturquette@baylibre.com>,
        <sboyd@kernel.org>, <mani@kernel.org>, <p.zabel@pengutronix.de>,
        <svarbanov@mm-sol.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-clk@vger.kernel.org>
CC: <quic_gokulsri@quicinc.com>, <quic_sjaganat@quicinc.com>,
        <quic_kathirav@quicinc.com>, <quic_arajkuma@quicinc.com>,
        <quic_anusha@quicinc.com>
References: <20230214164135.17039-1-quic_devipriy@quicinc.com>
 <20230214164135.17039-3-quic_devipriy@quicinc.com>
 <6ea43d8d-7b9c-5a11-097f-906e10ac3627@quicinc.com>
From: Devi Priya <quic_devipriy@quicinc.com>
In-Reply-To: <6ea43d8d-7b9c-5a11-097f-906e10ac3627@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: RTn0JSJl0gq1xjJmiXK-RMMRyT3xAFLt
X-Proofpoint-GUID: RTn0JSJl0gq1xjJmiXK-RMMRyT3xAFLt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-20_11,2023-02-20_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 suspectscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 malwarescore=0 phishscore=0 clxscore=1015 adultscore=0 mlxscore=0
 bulkscore=0 mlxlogscore=999 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2212070000 definitions=main-2302200125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230220_054217_461033_D3EB8930 
X-CRM114-Status: GOOD (  23.18  )
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

SGkgU3JpLApUaGFua3MgZm9yIHRha2luZyB0aW1lIHRvIHJldmlldyB0aGUgcGF0Y2ghCgpPbiAy
LzE2LzIwMjMgNTowOCBQTSwgU3JpY2hhcmFuIFJhbWFiYWRocmFuIHdyb3RlOgo+IEhpIERldmks
Cj4gCj4gT24gMi8xNC8yMDIzIDEwOjExIFBNLCBEZXZpIFByaXlhIHdyb3RlOgo+PiBBZGRpbmcg
UENJZSBzdXBwb3J0IGZvciBJUFE5NTc0IFNvQwo+Pgo+PiBDby1kZXZlbG9wZWQtYnk6IEFudXNo
YSBSYW8gPHF1aWNfYW51c2hhQHF1aWNpbmMuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBBbnVzaGEg
UmFvIDxxdWljX2FudXNoYUBxdWljaW5jLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogRGV2aSBQcml5
YSA8cXVpY19kZXZpcHJpeUBxdWljaW5jLmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jIHwgMTE5ICsrKysrKysrKysrKysrKysrKysrKysrKysK
Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDExOSBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYyAKPj4gYi9kcml2ZXJzL3Bj
aS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYwo+PiBpbmRleCBhMjMyYjA0YWYwNDguLjU3NjA2
YzExM2Q0NSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1x
Y29tLmMKPj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMKPj4g
QEAgLTE5Myw2ICsxOTMsMTIgQEAgc3RydWN0IHFjb21fcGNpZV9yZXNvdXJjZXNfMl85XzAgewo+
PiDCoMKgwqDCoMKgIHN0cnVjdCByZXNldF9jb250cm9sICpyc3Q7Cj4+IMKgIH07Cj4+ICtzdHJ1
Y3QgcWNvbV9wY2llX3Jlc291cmNlc18xXzI3XzAgewo+PiArwqDCoMKgIHN0cnVjdCBjbGtfYnVs
a19kYXRhICpjbGtzOwo+PiArwqDCoMKgIHN0cnVjdCByZXNldF9jb250cm9sICpyc3Q7Cj4+ICvC
oMKgwqAgaW50IG51bV9jbGtzOwo+PiArfTsKPj4gKwo+PiDCoCB1bmlvbiBxY29tX3BjaWVfcmVz
b3VyY2VzIHsKPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgcWNvbV9wY2llX3Jlc291cmNlc18xXzBfMCB2
MV8wXzA7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IHFjb21fcGNpZV9yZXNvdXJjZXNfMl8xXzAgdjJf
MV8wOwo+PiBAQCAtMjAxLDYgKzIwNyw3IEBAIHVuaW9uIHFjb21fcGNpZV9yZXNvdXJjZXMgewo+
PiDCoMKgwqDCoMKgIHN0cnVjdCBxY29tX3BjaWVfcmVzb3VyY2VzXzJfNF8wIHYyXzRfMDsKPj4g
wqDCoMKgwqDCoCBzdHJ1Y3QgcWNvbV9wY2llX3Jlc291cmNlc18yXzdfMCB2Ml83XzA7Cj4+IMKg
wqDCoMKgwqAgc3RydWN0IHFjb21fcGNpZV9yZXNvdXJjZXNfMl85XzAgdjJfOV8wOwo+PiArwqDC
oMKgIHN0cnVjdCBxY29tX3BjaWVfcmVzb3VyY2VzXzFfMjdfMCB2MV8yN18wOwo+PiDCoCB9Owo+
PiDCoCBzdHJ1Y3QgcWNvbV9wY2llOwo+PiBAQCAtMTQwOSw2ICsxNDE2LDEwNCBAQCBzdGF0aWMg
aW50IHFjb21fcGNpZV9wb3N0X2luaXRfMl85XzAoc3RydWN0IAo+PiBxY29tX3BjaWUgKnBjaWUp
Cj4+IMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+IMKgIH0KPj4gK3N0YXRpYyBpbnQgcWNvbV9wY2ll
X2dldF9yZXNvdXJjZXNfMV8yN18wKHN0cnVjdCBxY29tX3BjaWUgKnBjaWUpCj4+ICt7Cj4+ICvC
oMKgwqAgc3RydWN0IHFjb21fcGNpZV9yZXNvdXJjZXNfMV8yN18wICpyZXMgPSAmcGNpZS0+cmVz
LnYxXzI3XzA7Cj4+ICvCoMKgwqAgc3RydWN0IGR3X3BjaWUgKnBjaSA9IHBjaWUtPnBjaTsKPj4g
K8KgwqDCoCBzdHJ1Y3QgZGV2aWNlICpkZXYgPSBwY2ktPmRldjsKPj4gKwo+PiArwqDCoMKgIHJl
cy0+bnVtX2Nsa3MgPSBkZXZtX2Nsa19idWxrX2dldF9hbGwoZGV2LCAmcmVzLT5jbGtzKTsKPj4g
K8KgwqDCoCBpZiAocmVzLT5jbGtzIDwgMCkKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiByZXMt
Pm51bV9jbGtzOwo+PiArCj4+ICvCoMKgwqAgcmVzLT5yc3QgPSBkZXZtX3Jlc2V0X2NvbnRyb2xf
YXJyYXlfZ2V0X2V4Y2x1c2l2ZShkZXYpOwo+PiArwqDCoMKgIGlmIChJU19FUlIocmVzLT5yc3Qp
KQo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIFBUUl9FUlIocmVzLT5yc3QpOwo+PiArCj4+ICvC
oMKgwqAgcmV0dXJuIDA7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyB2b2lkIHFjb21fcGNpZV9kZWlu
aXRfMV8yN18wKHN0cnVjdCBxY29tX3BjaWUgKnBjaWUpCj4+ICt7Cj4+ICvCoMKgwqAgc3RydWN0
IHFjb21fcGNpZV9yZXNvdXJjZXNfMV8yN18wICpyZXMgPSAmcGNpZS0+cmVzLnYxXzI3XzA7Cj4+
ICsKPj4gK8KgwqDCoCBjbGtfYnVsa19kaXNhYmxlX3VucHJlcGFyZShyZXMtPm51bV9jbGtzLCBy
ZXMtPmNsa3MpOwo+PiArfQo+PiArCj4+ICtzdGF0aWMgaW50IHFjb21fcGNpZV9pbml0XzFfMjdf
MChzdHJ1Y3QgcWNvbV9wY2llICpwY2llKQo+PiArewo+PiArwqDCoMKgIHN0cnVjdCBxY29tX3Bj
aWVfcmVzb3VyY2VzXzFfMjdfMCAqcmVzID0gJnBjaWUtPnJlcy52MV8yN18wOwo+PiArwqDCoMKg
IHN0cnVjdCBkZXZpY2UgKmRldiA9IHBjaWUtPnBjaS0+ZGV2Owo+PiArwqDCoMKgIGludCByZXQ7
Cj4+ICsKPj4gK8KgwqDCoCByZXQgPSByZXNldF9jb250cm9sX2Fzc2VydChyZXMtPnJzdCk7Cj4+
ICvCoMKgwqAgaWYgKHJldCkgewo+PiArwqDCoMKgwqDCoMKgwqAgZGV2X2VycihkZXYsICJyZXNl
dCBhc3NlcnQgZmFpbGVkICglZClcbiIsIHJldCk7Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4g
cmV0Owo+PiArwqDCoMKgIH0KPj4gKwo+PiArwqDCoMKgIC8qCj4+ICvCoMKgwqDCoCAqIERlbGF5
IHBlcmlvZHMgYmVmb3JlIGFuZCBhZnRlciByZXNldCBkZWFzc2VydCBhcmUgd29ya2luZyB2YWx1
ZXMKPj4gK8KgwqDCoMKgICogZnJvbSBkb3duc3RyZWFtIENvZGVhdXJvcmEga2VybmVsCj4+ICvC
oMKgwqDCoCAqLwo+PiArwqDCoMKgIHVzbGVlcF9yYW5nZSgyMDAwLCAyNTAwKTsKPj4gKwo+PiAr
wqDCoMKgIHJldCA9IHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQocmVzLT5yc3QpOwo+PiArwqDCoMKg
IGlmIChyZXQpIHsKPj4gK8KgwqDCoMKgwqDCoMKgIGRldl9lcnIoZGV2LCAicmVzZXQgZGVhc3Nl
cnQgZmFpbGVkICglZClcbiIsIHJldCk7Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+
PiArwqDCoMKgIH0KPj4gKwo+PiArwqDCoMKgIHVzbGVlcF9yYW5nZSgyMDAwLCAyNTAwKTsKPj4g
Kwo+PiArwqDCoMKgIHJldHVybiBjbGtfYnVsa19wcmVwYXJlX2VuYWJsZShyZXMtPm51bV9jbGtz
LCByZXMtPmNsa3MpOwo+PiArfQo+PiArCj4+ICtzdGF0aWMgaW50IHFjb21fcGNpZV9wb3N0X2lu
aXRfMV8yN18wKHN0cnVjdCBxY29tX3BjaWUgKnBjaWUpCj4+ICt7Cj4+ICvCoMKgwqAgc3RydWN0
IGR3X3BjaWUgKnBjaSA9IHBjaWUtPnBjaTsKPj4gK8KgwqDCoCB1MTYgb2Zmc2V0ID0gZHdfcGNp
ZV9maW5kX2NhcGFiaWxpdHkocGNpLCBQQ0lfQ0FQX0lEX0VYUCk7Cj4+ICvCoMKgwqAgdTMyIHZh
bDsKPj4gK8KgwqDCoCBpbnQgaTsKPj4gKwo+PiArwqDCoMKgIHdyaXRlbCgweDgwMDAwMDAsIHBj
aWUtPnBhcmYgKyBQQ0lFMjBfdjNfUEFSRl9TTFZfQUREUl9TUEFDRV9TSVpFKTsKPj4gKwo+PiAr
wqDCoMKgIHZhbCA9IHJlYWRsKHBjaWUtPnBhcmYgKyBQQ0lFMjBfUEFSRl9QSFlfQ1RSTCk7Cj4+
ICvCoMKgwqAgdmFsICY9IH5CSVQoMCk7Cj4+ICvCoMKgwqAgd3JpdGVsKHZhbCwgcGNpZS0+cGFy
ZiArIFBDSUUyMF9QQVJGX1BIWV9DVFJMKTsKPj4gKwo+PiArwqDCoMKgIHdyaXRlbCgwLCBwY2ll
LT5wYXJmICsgUENJRTIwX1BBUkZfREJJX0JBU0VfQUREUik7Cj4+ICsKPj4gK8KgwqDCoCB3cml0
ZWwoREVWSUNFX1RZUEVfUkMsIHBjaWUtPnBhcmYgKyBQQ0lFMjBfUEFSRl9ERVZJQ0VfVFlQRSk7
Cj4+ICvCoMKgwqAgd3JpdGVsKEJZUEFTUyB8IE1TVFJfQVhJX0NMS19FTiB8IEFIQl9DTEtfRU4s
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCBwY2llLT5wYXJmICsgUENJRTIwX1BBUkZfTUhJX0NM
T0NLX1JFU0VUX0NUUkwpOwo+PiArwqDCoMKgIHdyaXRlbChHRU4zX1JFTEFURURfT0ZGX1JYRVFf
UkdSRExFU1NfUlhUUyB8Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCBHRU4zX1JFTEFURURfT0ZG
X0dFTjNfWlJYRENfTk9OQ09NUEwsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCBwY2ktPmRiaV9i
YXNlICsgR0VOM19SRUxBVEVEX09GRik7Cj4+ICsKPj4gK8KgwqDCoCB3cml0ZWwoTVNUX1dBS0VV
UF9FTiB8IFNMVl9XQUtFVVBfRU4gfCBNU1RSX0FDTEtfQ0dDX0RJUyB8Cj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoCBTTFZfQUNMS19DR0NfRElTIHwgQ09SRV9DTEtfQ0dDX0RJUyB8Cj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoCBBVVhfUFdSX0RFVCB8IEwyM19DTEtfUk1WX0RJUyB8IEwxX0NMS19S
TVZfRElTLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGNpZS0+cGFyZiArIFBDSUUyMF9QQVJG
X1NZU19DVFJMKTsKPj4gKwo+PiArwqDCoMKgIHdyaXRlbCgwLCBwY2llLT5wYXJmICsgUENJRTIw
X1BBUkZfUTJBX0ZMVVNIKTsKPj4gKwo+PiArwqDCoMKgIGR3X3BjaWVfZGJpX3JvX3dyX2VuKHBj
aSk7Cj4+ICvCoMKgwqAgd3JpdGVsKFBDSUVfQ0FQX1NMT1RfVkFMLCBwY2ktPmRiaV9iYXNlICsg
b2Zmc2V0ICsgUENJX0VYUF9TTFRDQVApOwo+PiArCj4+ICvCoMKgwqAgdmFsID0gcmVhZGwocGNp
LT5kYmlfYmFzZSArIG9mZnNldCArIFBDSV9FWFBfTE5LQ0FQKTsKPj4gK8KgwqDCoCB2YWwgJj0g
flBDSV9FWFBfTE5LQ0FQX0FTUE1TOwo+PiArwqDCoMKgIHdyaXRlbCh2YWwsIHBjaS0+ZGJpX2Jh
c2UgKyBvZmZzZXQgKyBQQ0lfRVhQX0xOS0NBUCk7Cj4+ICsKPj4gK8KgwqDCoCB3cml0ZWwoUENJ
X0VYUF9ERVZDVEwyX0NPTVBfVE1PVVRfRElTLCBwY2ktPmRiaV9iYXNlICsgb2Zmc2V0ICsKPj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgIFBDSV9FWFBfREVWQ1RMMik7Cj4+ICsKPj4gK8KgwqDCoCBm
b3IgKGkgPSAwOyBpIDwgMjU2OyBpKyspCj4+ICvCoMKgwqDCoMKgwqDCoCB3cml0ZWwoMCwgcGNp
ZS0+cGFyZiArIFBDSUUyMF9QQVJGX0JERl9UT19TSURfVEFCTEVfTiArICg0ICogCj4+IGkpKTsK
Pj4gKwo+PiArwqDCoMKgIHJldHVybiAwOwo+PiArfQo+PiArCj4+IMKgIHN0YXRpYyBpbnQgcWNv
bV9wY2llX2xpbmtfdXAoc3RydWN0IGR3X3BjaWUgKnBjaSkKPj4gwqAgewo+PiDCoMKgwqDCoMKg
IHUxNiBvZmZzZXQgPSBkd19wY2llX2ZpbmRfY2FwYWJpbGl0eShwY2ksIFBDSV9DQVBfSURfRVhQ
KTsKPj4gQEAgLTE2MjAsNiArMTcyNSwxNSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHFjb21fcGNp
ZV9vcHMgb3BzXzJfOV8wID0gewo+PiDCoMKgwqDCoMKgIC5sdHNzbV9lbmFibGUgPSBxY29tX3Bj
aWVfMl8zXzJfbHRzc21fZW5hYmxlLAo+PiDCoCB9Owo+PiArLyogUWNvbSBJUCByZXYuOiAxLjI3
LjAgU3lub3BzeXMgSVAgcmV2LjogNS44MGEgKi8KPj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcWNv
bV9wY2llX29wcyBvcHNfMV8yN18wID0gewo+PiArwqDCoMKgIC5nZXRfcmVzb3VyY2VzID0gcWNv
bV9wY2llX2dldF9yZXNvdXJjZXNfMV8yN18wLAo+PiArwqDCoMKgIC5pbml0ID0gcWNvbV9wY2ll
X2luaXRfMV8yN18wLAo+PiArwqDCoMKgIC5wb3N0X2luaXQgPSBxY29tX3BjaWVfcG9zdF9pbml0
XzFfMjdfMCwKPj4gK8KgwqDCoCAuZGVpbml0ID0gcWNvbV9wY2llX2RlaW5pdF8xXzI3XzAsCj4+
ICvCoMKgwqAgLmx0c3NtX2VuYWJsZSA9IHFjb21fcGNpZV8yXzNfMl9sdHNzbV9lbmFibGUsCj4+
ICt9Owo+PiArCj4+IMKgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcWNvbV9wY2llX2NmZyBjZmdfMV8w
XzAgPSB7Cj4+IMKgwqDCoMKgwqAgLm9wcyA9ICZvcHNfMV8wXzAsCj4+IMKgIH07Cj4+IEBAIC0x
NjUyLDYgKzE3NjYsMTAgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBxY29tX3BjaWVfY2ZnIGNmZ18y
XzlfMCA9IHsKPj4gwqDCoMKgwqDCoCAub3BzID0gJm9wc18yXzlfMCwKPj4gwqAgfTsKPj4gK3N0
YXRpYyBjb25zdCBzdHJ1Y3QgcWNvbV9wY2llX2NmZyBjZmdfMV8yN18wID0gewo+PiArwqDCoMKg
IC5vcHMgPSAmb3BzXzFfMjdfMCwKPj4gK307Cj4+ICsKPj4gwqAgc3RhdGljIGNvbnN0IHN0cnVj
dCBkd19wY2llX29wcyBkd19wY2llX29wcyA9IHsKPj4gwqDCoMKgwqDCoCAubGlua191cCA9IHFj
b21fcGNpZV9saW5rX3VwLAo+PiDCoMKgwqDCoMKgIC5zdGFydF9saW5rID0gcWNvbV9wY2llX3N0
YXJ0X2xpbmssCj4+IEBAIC0xODI5LDYgKzE5NDcsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG9m
X2RldmljZV9pZCAKPj4gcWNvbV9wY2llX21hdGNoW10gPSB7Cj4+IMKgwqDCoMKgwqAgeyAuY29t
cGF0aWJsZSA9ICJxY29tLHBjaWUtaXBxODA2NC12MiIsIC5kYXRhID0gJmNmZ18yXzFfMCB9LAo+
PiDCoMKgwqDCoMKgIHsgLmNvbXBhdGlibGUgPSAicWNvbSxwY2llLWlwcTgwNzQiLCAuZGF0YSA9
ICZjZmdfMl8zXzMgfSwKPj4gwqDCoMKgwqDCoCB7IC5jb21wYXRpYmxlID0gInFjb20scGNpZS1p
cHE4MDc0LWdlbjMiLCAuZGF0YSA9ICZjZmdfMl85XzAgfSwKPj4gK8KgwqDCoCB7IC5jb21wYXRp
YmxlID0gInFjb20scGNpZS1pcHE5NTc0IiwgLmRhdGEgPSAmY2ZnXzFfMjdfMCB9LAo+IAo+ICDC
oCBJIGRvIG5vdCBzZWUgbXVjaCBkaWZmZXJlbmNlIGJldHdlZW4gMl85XzAgYW5kIDFfMjdfMC4g
SXMgdGhpcyBwYXRjaAo+ICDCoCByZWFsbHkgcmVxdWlyZWQuIENhbiB5b3UgY2hlY2sgaWYgaXQg
d29ya3Mgd2l0aCAyXzlfMCBpdHNlbGYgPwpZZXMgcmlnaHQgU3JpLCBPbmx5IHRoZSBjbG9ja3Mg
c2VlbSB0byBkaWZmZXIgYmV0d2VlbiAyXzlfMCBhbmQgMV8yN18wLgpXaWxsIHVwZGF0ZSAyXzlf
MCBvcHMgdG8gZ2V0IHRoZSBjbG9ja3MgZnJvbSB0aGUgRFQgYW5kIHVzZSB0aGUgc2FtZSBmb3Ig
CmlwcTk1NzQgaW4gdGhlIG5leHQgc3Bpbi4KCkJlc3QgUmVnYXJkcywKRGV2aSBQcml5YQo+IAo+
IFJlZ2FyZHMsCj4gIMKgU3JpY2hhcmFuCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
