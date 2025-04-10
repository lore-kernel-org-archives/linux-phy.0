Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 438B0C3601E
	for <linux-phy@archiver.kernel.org>; Thu, 10 Apr 2025 11:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AtZTAxjKdfw434RM+G++wuVGyoAw24U95bwjXVk30Oo=; b=tphxRTPtwgdJO/
	CYaaF3RjmpwHuejJrMb39GxVnxbfwqXGPPl+dSpiyEgo/KANi6zS03icQG5Jjf7sDRZcTHnIZhr3G
	ATE25zW/WPHtI3go2SkagH307EUom7Y7M66VJKDsbSKz5PBx/nK4QOyM8mZndPmR1nKNuNDoKaH93
	n0Db832WRhYSW2aEZSvxsaxPI/ERkztIDZghT8eSVUbBz+0OH6ObjM0KJ6fjYlAagbcN2CfBjuEVZ
	qgRZtDiNNkzktZpry8udJspBZ91X/wYrszm+znP/jojJwV5/qUhdR/q646spGZyUPKHPMp2NjigSC
	ksPbjS3n/Wk0XhzIQ/Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2ptP-0000000AC6z-3bDu;
	Thu, 10 Apr 2025 11:16:23 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2nz3-00000009tnH-2kPz
	for linux-phy@lists.infradead.org;
	Thu, 10 Apr 2025 09:14:07 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53A75ev1000699;
	Thu, 10 Apr 2025 09:14:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hGY4uTpYXd/tDtQK+UKGjzRPs1W7kXS1Z0P2dmPWfy0=; b=oQethw0oeF7fFMd2
	9KqbCsVJ+sMNhuBQE2ol3DcJYx+kNyWDlGhRgrF+enEVX1/BP9OlQ2R/EA4ZqZ/r
	Zg2uvwbIGB8gP9U247WyRfNYawqZbGwNmlJGo4WHNylhJATarsox0NvX5AIBdwao
	5Saigm1U4g/6QwilmQGtWtabP2qBRXOzZAYQumhRduP9PCrhk4EJMvPbZPucvxrQ
	veDTgm2WDrXVkmMji4u0XLyvUOoTpHPXQu3JvsQ5mgDFNUjkxRq+ed0zT+Q45LTS
	o9L8qYb72Y0PnYpViR/d7CvUt06GfKSx8fTx91+4aKj/hBNWeJNvCqhATuwJdKVT
	WKJLcA==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twd2xa9n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Apr 2025 09:14:00 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 53A9E0sA024266
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Apr 2025 09:14:00 GMT
Received: from [10.218.7.247] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Thu, 10 Apr
 2025 02:13:55 -0700
Message-ID: <c35c37c9-ff5b-43cc-afdd-fff509415ca6@quicinc.com>
Date: Thu, 10 Apr 2025 14:43:52 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 2/6] phy: qcom-qmp-ufs: Refactor phy_power_on and
 phy_calibrate callbacks
To: <neil.armstrong@linaro.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <manivannan.sadhasivam@linaro.org>,
        <James.Bottomley@HansenPartnership.com>, <martin.petersen@oracle.com>,
        <konrad.dybcio@oss.qualcomm.com>
CC: <quic_rdwivedi@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-scsi@vger.kernel.org>, Can Guo <quic_cang@quicinc.com>
References: <20250318144944.19749-1-quic_nitirawa@quicinc.com>
 <20250318144944.19749-3-quic_nitirawa@quicinc.com>
 <ab3639e0-61bb-46f0-9e54-f1bbd034b939@linaro.org>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <ab3639e0-61bb-46f0-9e54-f1bbd034b939@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Ia17VMEn0O_RUNO79BLfP3RTUNvzsWg4
X-Proofpoint-GUID: Ia17VMEn0O_RUNO79BLfP3RTUNvzsWg4
X-Authority-Analysis: v=2.4 cv=NaLm13D4 c=1 sm=1 tr=0 ts=67f78bd8 cx=c_pps a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=RY7zYqXbgaIDV70ltDMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-10_01,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 impostorscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 mlxlogscore=999 clxscore=1015 phishscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504100068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_021405_698714_72F3C089 
X-CRM114-Status: GOOD (  18.75  )
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

CgpPbiAzLzE4LzIwMjUgODozOSBQTSwgbmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZyB3cm90ZToK
PiBPbiAxOC8wMy8yMDI1IDE1OjQ5LCBOaXRpbiBSYXdhdCB3cm90ZToKPj4gQ29tbWl0IDA1MjU1
M2FmNmEzMSAoInVmcy9waHk6IHFjb206IFJlZmFjdG9yIHRvIHVzZSBwaHlfaW5pdCBjYWxsIikK
Pj4gcHV0cyBlbmFibGluZyByZWd1bGF0b3JzICYgY2xrcywgY2FsaWJyYXRpbmcgVUZTIFBIWSwg
c3RhcnRpbmcgc2VyZGVzCj4+IGFuZCBwb2xsaW5nIFBDUyByZWFkeSBzdGF0dXMgaW50byBwaHlf
cG93ZXJfb24uCj4+Cj4+IEluIEN1cnJlbnQgY29kZSByZWd1bGF0b3JzIGVuYWJsZSwgY2xrcyBl
bmFibGUsIGNhbGlicmF0aW5nIFVGUyBQSFksCj4+IHN0YXJ0X3NlcmRlcyBhbmQgcG9sbGluZyBQ
Q1NfcmVhZHlfc3RhdHVzIGFyZSBwYXJ0IG9mIHBoeV9wb3dlcl9vbi4KPj4KPj4gVUZTIFBIWSBy
ZWdpc3RlcnMgYXJlIHJldGFpbmVkIGFmdGVyIHBvd2VyIGNvbGxhcHNlLCBtZWFuaW5nIGNhbGli
cmF0aW5nCj4+IFVGUyBQSFksIHN0YXJ0X3NlcmRlcyBhbmQgcG9sbGluZyBQQ1NfcmVhZHlfc3Rh
dHVzIGNhbiBiZSBkb25lIG9ubHkgd2hlbgo+PiBoYmEgaXMgcG93ZXJlZF9vbiwgYW5kIG5vdCBu
ZWVkZWQgZXZlcnkgdGltZSB3aGVuIHBoeV9wb3dlcl9vbiBpcyBjYWxsZWQKPj4gZHVyaW5nIHJl
c3VtZS4gSGVuY2Uga2VlcCB0aGUgY29kZSB3aGljaCBlbmFibGVzIFBIWSdzIHJlZ3VsYXRvcnMg
JiBjbGtzCj4+IGluIHBoeV9wb3dlcl9vbiBhbmQgbW92ZSB0aGUgcmVzdCBzdGVwcyBpbnRvIHBo
eV9jYWxpYnJhdGUgZnVuY3Rpb24uCj4+Cj4+IFJlZmFjdG9yIHRoZSBjb2RlIHRvIHJldGFpbiBQ
SFkgcmVndWxhdG9ycyAmIGNsa3MgaW4gcGh5X3Bvd2VyX29uIGFuZAo+PiBtb3ZlIG91dCByZXN0
IG9mIHRoZSBjb2RlIHRvIG5ldyBwaHlfY2FsaWJyYXRlIGZ1bmN0aW9uLgo+Pgo+PiBDby1kZXZl
bG9wZWQtYnk6IENhbiBHdW8gPHF1aWNfY2FuZ0BxdWljaW5jLmNvbT4KPj4gU2lnbmVkLW9mZi1i
eTogQ2FuIEd1byA8cXVpY19jYW5nQHF1aWNpbmMuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBOaXRp
biBSYXdhdCA8cXVpY19uaXRpcmF3YUBxdWljaW5jLmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMv
cGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11ZnMuYyB8IDE4ICsrLS0tLS0tLS0tLS0tLS0tLQo+
PiDCoCAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKPj4K
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11ZnMuYyBi
L2RyaXZlcnMvcGh5LyAKPj4gcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jCj4+IGluZGV4IGJi
ODM2YmMwZjczNi4uMDA4OWVlODBmODUyIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFs
Y29tbS9waHktcWNvbS1xbXAtdWZzLmMKPj4gKysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5
LXFjb20tcW1wLXVmcy5jCj4+IEBAIC0xNzk2LDcgKzE3OTYsNyBAQCBzdGF0aWMgaW50IHFtcF91
ZnNfY29tX2V4aXQoc3RydWN0IHFtcF91ZnMgKnFtcCkKPj4gwqDCoMKgwqDCoCByZXR1cm4gMDsK
Pj4gwqAgfQo+Pgo+PiAtc3RhdGljIGludCBxbXBfdWZzX2luaXQoc3RydWN0IHBoeSAqcGh5KQo+
PiArc3RhdGljIGludCBxbXBfdWZzX3Bvd2VyX29uKHN0cnVjdCBwaHkgKnBoeSkKPj4gwqAgewo+
PiDCoMKgwqDCoMKgIHN0cnVjdCBxbXBfdWZzICpxbXAgPSBwaHlfZ2V0X2RydmRhdGEocGh5KTsK
Pj4gwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmcgKmNmZyA9IHFtcC0+Y2ZnOwo+
PiBAQCAtMTg5OCwyMSArMTg5OCw2IEBAIHN0YXRpYyBpbnQgcW1wX3Vmc19leGl0KHN0cnVjdCBw
aHkgKnBoeSkKPj4gwqDCoMKgwqDCoCByZXR1cm4gMDsKPj4gwqAgfQo+Pgo+PiAtc3RhdGljIGlu
dCBxbXBfdWZzX3Bvd2VyX29uKHN0cnVjdCBwaHkgKnBoeSkKPj4gLXsKPj4gLcKgwqDCoCBpbnQg
cmV0Owo+PiAtCj4+IC3CoMKgwqAgcmV0ID0gcW1wX3Vmc19pbml0KHBoeSk7Cj4+IC3CoMKgwqAg
aWYgKHJldCkKPj4gLcKgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+IC0KPj4gLcKgwqDCoCBy
ZXQgPSBxbXBfdWZzX3BoeV9jYWxpYnJhdGUocGh5KTsKPj4gLcKgwqDCoCBpZiAocmV0KQo+PiAt
wqDCoMKgwqDCoMKgwqAgcW1wX3Vmc19leGl0KHBoeSk7Cj4+IC0KPj4gLcKgwqDCoCByZXR1cm4g
cmV0Owo+PiAtfQo+PiAtCj4+IMKgIHN0YXRpYyBpbnQgcW1wX3Vmc19kaXNhYmxlKHN0cnVjdCBw
aHkgKnBoeSkKPj4gwqAgewo+PiDCoMKgwqDCoMKgIGludCByZXQ7Cj4+IEBAIC0xOTQyLDYgKzE5
MjcsNyBAQCBzdGF0aWMgaW50IHFtcF91ZnNfc2V0X21vZGUoc3RydWN0IHBoeSAqcGh5LCAKPj4g
ZW51bSBwaHlfbW9kZSBtb2RlLCBpbnQgc3VibW9kZSkKPj4gwqAgc3RhdGljIGNvbnN0IHN0cnVj
dCBwaHlfb3BzIHFjb21fcW1wX3Vmc19waHlfb3BzID0gewo+PiDCoMKgwqDCoMKgIC5wb3dlcl9v
bsKgwqDCoCA9IHFtcF91ZnNfcG93ZXJfb24sCj4+IMKgwqDCoMKgwqAgLnBvd2VyX29mZsKgwqDC
oCA9IHFtcF91ZnNfZGlzYWJsZSwKPj4gK8KgwqDCoCAuY2FsaWJyYXRlwqDCoMKgID0gcW1wX3Vm
c19waHlfY2FsaWJyYXRlLAo+IAo+IE9rIHNvIHRoaXMgd2lsbCBicmVhayB0aGUgVUZTIHVudGls
IHBhdGNoIDUgaXMgYXBwbGllZCwKPiBicmVha2luZyBiaXNlY3RhYmlsaXR5Lgo+IAo+IE1ha2Ug
c3VyZSBVRlMgaG9zdCBkcml2ZXIgY2FsbHMgY2FsaWJyYXRlIGZpcnN0LCBhbmQgdGhlbgo+IGRv
IHRoZSByZWZhY3RvciBpbiB0aGUgUEhZIGRyaXZlci4KCkhpIE5laWwuCgpUaGFua3MgZm9yIHRo
ZSByZXZpZXcuIEkgaGF2ZSB0YWtlbiBjYXJlIG9mIGJpc2VjYXRhYmxpdHkKY29tcGxpYW5jZSBi
eSBtYWtpbmcgVUZTIGhvc3QgZHJpdmVyIGNhbGxzIGNhbGlicmF0ZSBmaXJzdAppbiBsYXRlc3Qg
cGF0Y2ggc2V0LgoKUmVnYXJkcywKTml0aW4KCgoKPiAKPiBBbmQgZWl0aGVyIGFsbCB3b3VsZCBn
byBpbiBhIHNpbmdsZSB0cmVlIG9yIGVpdGhlciBQSFkKPiBvciBTQ1NJIG1haW50YWluZXIgd291
bGQgbmVlZCB0byBwcm92aWRlIGFuIGltbXV0YWJsZQo+IGJyYW5jaCBmb3IgdGhlIGZpbmFsIG1l
cmdlLgo+IAo+PiDCoMKgwqDCoMKgIC5zZXRfbW9kZcKgwqDCoCA9IHFtcF91ZnNfc2V0X21vZGUs
Cj4+IMKgwqDCoMKgwqAgLm93bmVywqDCoMKgwqDCoMKgwqAgPSBUSElTX01PRFVMRSwKPj4gwqAg
fTsKPj4gLS0gCj4+IDIuNDguMQo+Pgo+Pgo+IAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
