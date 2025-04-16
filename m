Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 397F1C369C4
	for <linux-phy@archiver.kernel.org>; Wed, 16 Apr 2025 10:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MIkieie0koG44NO8rPejo+nS6QktosNd38lv11/teZo=; b=GLtA2rz4+5mrjc
	V1hYgubi+ub6vy6hyvv2+8SPc8Zz74Q+/w3SoIZ2DmlneD85396rZU1Z/JRom8O9arvdBDObtWMi3
	H9OdOpXlE9WhSvWtDpS5cDvJ/uzTsErWgYdJF3UK8YZYRZKVBjYfcFb1s7ylh7eFuB2gOFSptSYG5
	svvvIY5JZRBH8sSxkn2WcLW84hQOa9xkwS+c/YDJJORyOtpyNo2mrEjKzmFt71xlAMOYE3pGHK2h/
	yLYZDMXKk/5lUDiXqGS4/K9izAqUNZ24WXBJVxqVq+N5Cu/ZD14O7bpfAlEcTEDayMh2ia2O2nsDK
	hJkOZBVqp3xjbvfHVMpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u503T-000000099xd-2KNn;
	Wed, 16 Apr 2025 10:31:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4ylQ-00000008vR6-0wsC
	for linux-phy@lists.infradead.org;
	Wed, 16 Apr 2025 09:09:01 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53G7Jqxk003482;
	Wed, 16 Apr 2025 09:08:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AVNSHHWbl8mdqUD40GAezRu9QUwIuSmoYMdmG6aQeuc=; b=NJ48zDBAhX3vuUQN
	DM0TRT9pMMq+vSIu57LWiPwl0yhriJYd2fk9Atl2ErYYV7GO0AcjmPguUS6PGfpN
	A8j9G/GflWIQqRtwqGXkAN/wNkkYn/nMmYUEDWNDFlJExFCEJ4c5KRyaz8AiqrEY
	qZzN4AyjgAFRCMoSagB6Niz3idRjyuhk618KseZyvRRIzrWdJWoiMCUi1oJ0qyam
	CZHtyY6KUPjBSuNRZrP+jSdO21H6c8XdJlmihPEDr29Qkya1c7M85xGjtzvReeSc
	B6iC2OSFzp2y2yFBKRvdnyPY8cvl1e7HFqJtNZ6Ofim7xkLDdOwx7tbuoiv7yY4Y
	3wPKIw==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yg8wjych-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 16 Apr 2025 09:08:41 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 53G98eum001994
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 16 Apr 2025 09:08:40 GMT
Received: from [10.218.7.247] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 16 Apr
 2025 02:08:36 -0700
Message-ID: <a24ff510-2afd-4aa7-a026-199fb6d87287@quicinc.com>
Date: Wed, 16 Apr 2025 14:38:32 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 4/9] phy: qcom-qmp-ufs: Refactor UFS PHY reset
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
CC: <vkoul@kernel.org>, <kishon@kernel.org>,
        <manivannan.sadhasivam@linaro.org>,
        <James.Bottomley@hansenpartnership.com>, <martin.petersen@oracle.com>,
        <bvanassche@acm.org>, <bjorande@quicinc.com>,
        <neil.armstrong@linaro.org>, <konrad.dybcio@oss.qualcomm.com>,
        <quic_rdwivedi@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-scsi@vger.kernel.org>
References: <20250410090102.20781-1-quic_nitirawa@quicinc.com>
 <20250410090102.20781-5-quic_nitirawa@quicinc.com>
 <pur4y63xhfmqlyymg4pehk37ry4gg22h24zceoqjbsxp3hj4yf@4kptase3c4qp>
 <317faeaa-3130-4e28-8c5d-441a76aa79b4@quicinc.com>
 <CAO9ioeXnnbNzriVOYPUeBiWdrPfYUcMk+pVWYv0vZpJbFeByoQ@mail.gmail.com>
 <2820908b-4548-4e0a-94b2-6065cb5ff1f3@quicinc.com>
 <c2ec6b7c-421d-43c3-8c0a-de4f7bdd867c@oss.qualcomm.com>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <c2ec6b7c-421d-43c3-8c0a-de4f7bdd867c@oss.qualcomm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=E9TNpbdl c=1 sm=1 tr=0 ts=67ff739a cx=c_pps a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=4vh3ibDLHFHjjJMVvK0A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: kbJF3o6xxtz7UL9pi4T1ulOmAu021lmX
X-Proofpoint-GUID: kbJF3o6xxtz7UL9pi4T1ulOmAu021lmX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-16_03,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 mlxscore=0 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 suspectscore=0 mlxlogscore=999 spamscore=0 priorityscore=1501
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504160074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_020900_398095_E0740129 
X-CRM114-Status: GOOD (  28.94  )
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

CgpPbiA0LzE1LzIwMjUgMjo1OSBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiAxNC8w
NC8yMDI1IDIzOjM0LCBOaXRpbiBSYXdhdCB3cm90ZToKPj4KPj4KPj4gT24gNC8xMS8yMDI1IDQ6
MzggUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+PiBPbiBGcmksIDExIEFwciAyMDI1IGF0
IDEzOjUwLCBOaXRpbiBSYXdhdCA8cXVpY19uaXRpcmF3YUBxdWljaW5jLmNvbT4gCj4+PiB3cm90
ZToKPj4+Pgo+Pj4+Cj4+Pj4KPj4+PiBPbiA0LzExLzIwMjUgMTozOCBBTSwgRG1pdHJ5IEJhcnlz
aGtvdiB3cm90ZToKPj4+Pj4gT24gVGh1LCBBcHIgMTAsIDIwMjUgYXQgMDI6MzA6NTdQTSArMDUz
MCwgTml0aW4gUmF3YXQgd3JvdGU6Cj4+Pj4+PiBSZWZhY3RvciB0aGUgVUZTIFBIWSByZXNldCBo
YW5kbGluZyB0byBwYXJzZSB0aGUgcmVzZXQgbG9naWMgb25seSAKPj4+Pj4+IG9uY2UKPj4+Pj4+
IGR1cmluZyBwcm9iZSwgaW5zdGVhZCBvZiBldmVyeSByZXN1bWUuCj4+Pj4+Pgo+Pj4+Pj4gTW92
ZSB0aGUgVUZTIFBIWSByZXNldCBwYXJzaW5nIGxvZ2ljIGZyb20gcW1wX3BoeV9wb3dlcl9vbiB0
bwo+Pj4+Pj4gcW1wX3Vmc19wcm9iZSB0byBhdm9pZCB1bm5lY2Vzc2FyeSBwYXJzaW5nIGR1cmlu
ZyByZXN1bWUuCj4+Pj4+Cj4+Pj4+IEhvdyBkaWQgeW91IHNvbHZlIHRoZSBjaXJjdWxhciBkZXBl
bmRlbmN5IGlzc3VlIGJlaW5nIG5vdGVkIGJlbG93Pwo+Pj4+Cj4+Pj4gSGkgRG1pdHJ5LAo+Pj4+
IEFzIHBhcnQgb2YgbXkgcGF0Y2gsIEkgbW92ZWQgdGhlIHBhcnNpbmcgbG9naWMgZnJvbSBxbXBf
cGh5X3Bvd2VyX29uIHRvCj4+Pj4gcW1wX3Vmc19wcm9iZSB0byBhdm9pZCB1bm5lY2Vzc2FyeSBw
YXJzaW5nIGR1cmluZyByZXN1bWUuIEknbSB1bmNlcnRhaW4KPj4+PiBhYm91dCB0aGUgY2lyY3Vs
YXIgZGVwZW5kZW5jeSBpc3N1ZSBhbmQgd2hldGhlciBpZiBpdCBzdGlsbCBleGlzdHMuCj4+Pgo+
Pj4gSXQgc3VyZWx5IGRvZXMuIFRoZSByZXNldCBjb250cm9sbGVyIGlzIHJlZ2lzdGVyZWQgaW4g
dGhlIGJlZ2lubmluZyBvZgo+Pj4gdWZzX3Fjb21faW5pdCgpIGFuZCB0aGUgUEhZIGlzIGFjcXVp
cmVkIG9ubHkgYSBmZXcgbGluZXMgYmVsb3cuIEl0Cj4+PiBjcmVhdGVzIGEgdmVyeSBzbWFsbCB3
aW5kb3cgZm9yIFBIWSBkcml2ZXIgdG8gcHJvYmUuCj4+PiBXaGljaCBtZWFucywgTkFLLCB0aGlz
IHBhdGNoIGRvZXNuJ3QgbG9vayBhY2NlcHRhYmxlLgo+Pgo+PiBIaSBEbWl0cnksCj4+Cj4+IFRo
YW5rcyBmb3IgcG9pbnRpbmcgdGhpcyBvdXQuIEkgYWdyZWUgdGhhdCBpdCBsZWF2ZXMgdmVyeSBs
aXR0bGUgdGltZSAKPj4gZm9yIHRoZSBQSFkgdG8gcHJvYmUsIHdoaWNoIG1heSBjYXVzZSBpc3N1
ZXMgd2l0aCB0YXJnZXRzIHdoZXJlIAo+PiBub19wY3Nfc3dfcmVzZXQgaXMgc2V0IHRvIHRydWUu
Cj4+Cj4+IEFzIGFuIGV4cGVyaW1lbnQsIEkga2VwdCBub19wY3Nfc3dfcmVzZXQgc2V0IHRvIHRy
dWUgZm9yIHRoZSBTTTg3NTAsIAo+PiBhbmQgaXQgY2F1c2VkIGJvb3R1cCBwcm9iZSBpc3N1ZXMg
aW4gc29tZSBvZiB0aGUgaXRlcmF0aW9ucyBJIHJhbi4KPj4KPj4gVG8gYWRkcmVzcyB0aGlzLCBJ
IHByb3Bvc2UgdXBkYXRpbmcgdGhlIHBhdGNoIHRvIG1vdmUgdGhlIAo+PiBxbXBfdWZzX2dldF9w
aHlfcmVzZXQgY2FsbCB0byBwaHlfY2FsaWJyYXRlLCBqdXN0IGJlZm9yZSB0aGUgCj4+IHJlc2V0
X2NvbnRyb2xfYXNzZXJ0IGNhbGwuCj4gCj4gV2lsbCBpdCBjYXVzZSBhbiBpc3N1ZSBpZiB3ZSBt
b3ZlIGl0IHRvIHBoeV9pbml0KCkgaW5zdGVhZCBvZiAKPiBwaHlfY2FsaWJyYXRlKCk/CgpIaSBE
bWl0cnksCgpUaGFua3MgZm9yIHN1Z2dlc3Rpb24uClBoeV9pbml0IGlzIGludm9rZWQgYmVmb3Jl
IHBoeV9zZXRfbW9kZV9leHQgYW5kIHVmc19xY29tX3BoeV9wb3dlcl9vbiwgCndoZXJlYXMgY2Fs
aWJyYXRlIGlzIGNhbGxlZCBhZnRlciB1ZnNfcWNvbV9waHlfcG93ZXJfb24uIEtlZXBpbmcgdGhl
IFVGUyAKUEhZIHJlc2V0IGluIHBoeV9jYWxpYnJhdGUgaW50cm9kdWNlcyByZWxhdGl2ZWx5IG1v
cmUgZGVsYXksIHByb3ZpZGluZyAKbW9yZSBidWZmZXIgdGltZSBmb3IgdGhlIFBIWSBkcml2ZXIg
cHJvYmUsIGVuc3VyaW5nIHRoZSBVRlMgUEhZIHJlc2V0IGlzIApoYW5kbGVkIGNvcnJlY3RseSB0
aGUgZmlyc3QgdGltZS4KCk1vdmluZyB0aGUgY2FsaWJyYXRpb24gdG8gcGh5X2luaXQgc2hvdWxk
bid0IGNhdXNlIGFueSBpc3N1ZXMuIEhvd2V2ZXIsIApzaW5jZSB3ZSBjdXJyZW50bHkgZG9uJ3Qg
aGF2ZSBhbiBpbml0aWFsaXphdGlvbiBvcGVyYXRpb25zIHJlZ2lzdGVyZWQgCmZvciBpbml0LCB3
ZSB3b3VsZCBuZWVkIHRvIGFkZCBhIG5ldyBQSFkgaW5pdGlhbGl6YXRpb24gb3BzIGlmIHdlIGRl
Y2lkZSAKdG8gbW92ZSBpdCB0byBwaHlfaW5pdC4KClBsZWFzZSBsZXQgbWUga25vdyBpZiB0aGlz
IGxvb2tzIGZpbmUgdG8geW91LCBvciBpZiB5b3UgaGF2ZSBhbnkgCnN1Z2dlc3Rpb25zLiBJIGFt
IG9wZW4gdG8geW91ciBzdWdnZXN0aW9ucy4KClJlZ2FyZHMsCk5pdGluCgoKPiAKPj4KPj4gVGhp
cyBjaGFuZ2Ugd2lsbCBkZWxheSB0aGUgVUZTIFBIWSByZXNldCBhcyBtdWNoIGFzIHBvc3NpYmxl
IGluIHRoZSAKPj4gY29kZS4gQWRkaXRpb25hbGx5LCBtb3ZpbmcgaXQgZnJvbSBwaHlfcG93ZXJf
b24gdG8gY2FsaWJyYXRlIHdpbGwgCj4+IGVuc3VyZSB0aGF0IHFtcF91ZnNfZ2V0X3BoeV9yZXNl
dCBpcyBjYWxsZWQgb25seSBvbmNlIGR1cmluZyBib290LCAKPj4gcmF0aGVyIHRoYW4gZHVyaW5n
IGVhY2ggcGh5X3Bvd2VyX29uIGNhbGwuCj4+Cj4+IFBsZWFzZSBsZXQgbWUga25vdyB5b3VyIHRo
b3VnaHRzLgo+PiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+
PiDCoMKgc3RhdGljIGludCBxbXBfdWZzX3BoeV9jYWxpYnJhdGUoc3RydWN0IHBoeSAqcGh5KQo+
PiDCoMKgewo+PiDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBxbXBfdWZzICpxbXAgPSBwaHlfZ2V0
X2RydmRhdGEocGh5KTsKPj4gQEAgLTE3OTMsNiArMTgyNiwxMiBAQCBzdGF0aWMgaW50IHFtcF91
ZnNfcGh5X2NhbGlicmF0ZShzdHJ1Y3QgcGh5ICpwaHkpCj4+IMKgwqDCoMKgwqDCoMKgwqAgdW5z
aWduZWQgaW50IHZhbDsKPj4gwqDCoMKgwqDCoMKgwqDCoCBpbnQgcmV0Owo+Pgo+PiArwqDCoMKg
wqDCoMKgIHByX2VycigiJXMgJWRcbiIsIF9fZnVuY19fLCBfX0xJTkVfXyk7Cj4+ICsKPj4gK8Kg
wqDCoMKgwqDCoCByZXQgPSBxbXBfdWZzX2dldF9waHlfcmVzZXQocW1wKTsKPj4gK8KgwqDCoMKg
wqDCoMKgIGlmIChyZXQpCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJu
IHJldDsKPj4gKwo+PiDCoMKgwqDCoMKgwqDCoMKgIHJldCA9IHJlc2V0X2NvbnRyb2xfYXNzZXJ0
KHFtcC0+dWZzX3Jlc2V0KTsKPj4gwqDCoMKgwqDCoMKgwqDCoCBpZiAocmV0KQo+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+PiBAQCAtMTgxNyw3ICsxODU2
LDcgQEAgc3RhdGljIGludCBxbXBfdWZzX3BoeV9jYWxpYnJhdGUoc3RydWN0IHBoeSAqcGh5KQo+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfZXJyKHFtcC0+ZGV2LCAicGh5
IGluaXRpYWxpemF0aW9uIHRpbWVkLW91dFxuIik7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09Cj4+Cj4+Cj4+IFJlZ2FyZHMuCj4+IE5pdGluCj4+Pgo+Pj4+Cj4+Pj4gUmVn
YXJkcywKPj4+PiBOaXRpbgo+Pj4+Cj4+Pj4KPj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBDby1kZXZlbG9w
ZWQtYnk6IFJhbSBLdW1hciBEd2l2ZWRpIDxxdWljX3Jkd2l2ZWRpQHF1aWNpbmMuY29tPgo+Pj4+
Pj4gU2lnbmVkLW9mZi1ieTogUmFtIEt1bWFyIER3aXZlZGkgPHF1aWNfcmR3aXZlZGlAcXVpY2lu
Yy5jb20+Cj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBOaXRpbiBSYXdhdCA8cXVpY19uaXRpcmF3YUBx
dWljaW5jLmNvbT4KPj4+Pj4+IC0tLQo+Pj4+Pj4gwqDCoCBkcml2ZXJzL3BoeS9xdWFsY29tbS9w
aHktcWNvbS1xbXAtdWZzLmMgfCA2MSArKysrKysrKysrKysgCj4+Pj4+PiArLS0tLS0tLS0tLS0t
Cj4+Pj4+PiDCoMKgIDEgZmlsZSBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCspLCAyOCBkZWxldGlv
bnMoLSkKPj4+Pj4+Cj4+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5
LXFjb20tcW1wLXVmcy5jIGIvZHJpdmVycy8gCj4+Pj4+PiBwaHkvIHF1YWxjb21tL3BoeS1xY29t
LXFtcC11ZnMuYwo+Pj4+Pj4gaW5kZXggNjM2ZGMzZGMzZWE4Li4xMmRhZDI4Y2MxYmQgMTAwNjQ0
Cj4+Pj4+PiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMKPj4+
Pj4+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11ZnMuYwo+Pj4+Pj4g
QEAgLTE3OTksMzggKzE3OTksMTEgQEAgc3RhdGljIGludCBxbXBfdWZzX2NvbV9leGl0KHN0cnVj
dCBxbXBfdWZzIAo+Pj4+Pj4gKnFtcCkKPj4+Pj4+IMKgwqAgc3RhdGljIGludCBxbXBfdWZzX3Bv
d2VyX29uKHN0cnVjdCBwaHkgKnBoeSkKPj4+Pj4+IMKgwqAgewo+Pj4+Pj4gwqDCoMKgwqDCoCBz
dHJ1Y3QgcW1wX3VmcyAqcW1wID0gcGh5X2dldF9kcnZkYXRhKHBoeSk7Cj4+Pj4+PiAtwqDCoMKg
IGNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyAqY2ZnID0gcW1wLT5jZmc7Cj4+Pj4+PiDCoMKgwqDC
oMKgIGludCByZXQ7Cj4+Pj4+PiDCoMKgwqDCoMKgIGRldl92ZGJnKHFtcC0+ZGV2LCAiSW5pdGlh
bGl6aW5nIFFNUCBwaHlcbiIpOwo+Pj4+Pj4KPj4+Pj4+IC3CoMKgwqAgaWYgKGNmZy0+bm9fcGNz
X3N3X3Jlc2V0KSB7Cj4+Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvKgo+Pj4+Pj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIEdldCBVRlMgcmVzZXQsIHdoaWNoIGlzIGRlbGF5ZWQg
dW50aWwgbm93IHRvIGF2b2lkIGEKPj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBj
aXJjdWxhciBkZXBlbmRlbmN5IHdoZXJlIFVGUyBuZWVkcyBpdHMgUEhZLCBidXQgCj4+Pj4+PiB0
aGUgUEhZCj4+Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogbmVlZHMgdGhpcyBVRlMg
cmVzZXQuCj4+Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICovCj4+Pj4+PiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBpZiAoIXFtcC0+dWZzX3Jlc2V0KSB7Cj4+Pj4+PiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcW1wLT51ZnNfcmVzZXQgPQo+Pj4+Pj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZt
X3Jlc2V0X2NvbnRyb2xfZ2V0X2V4Y2x1c2l2ZShxbXAtIAo+Pj4+Pj4gPmRldiwKPj4+Pj4+IC0g
InVmc3BoeSIpOwo+Pj4+Pj4gLQo+Pj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGlmIChJU19FUlIocW1wLT51ZnNfcmVzZXQpKSB7Cj4+Pj4+PiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldCA9IFBUUl9F
UlIocW1wLT51ZnNfcmVzZXQpOwo+Pj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfZXJyKHFtcC0+ZGV2LAo+Pj4+Pj4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgImZhaWxlZCB0byBnZXQgVUZTIHJlc2V0OiAlZFxuIiwKPj4+Pj4+IC3CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHJldCk7Cj4+Pj4+PiAtCj4+Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHFtcC0+dWZzX3Jlc2V0ID0gTlVMTDsKPj4+Pj4+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
cmV0dXJuIHJldDsKPj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB9Cj4+Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+Pj4+PiAtwqDCoMKgIH0KPj4+
Pj4+IC0KPj4+Pj4+IMKgwqDCoMKgwqAgcmV0ID0gcW1wX3Vmc19jb21faW5pdChxbXApOwo+Pj4+
Pj4gLcKgwqDCoCBpZiAocmV0KQo+Pj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJu
IHJldDsKPj4+Pj4+IC0KPj4+Pj4+IC3CoMKgwqAgcmV0dXJuIDA7Cj4+Pj4+PiArwqDCoMKgIHJl
dHVybiByZXQ7Cj4+Pj4+PiDCoMKgIH0KPj4+Pj4+Cj4+Pj4+PiDCoMKgIHN0YXRpYyBpbnQgcW1w
X3Vmc19waHlfY2FsaWJyYXRlKHN0cnVjdCBwaHkgKnBoeSkKPj4+Pj4+IEBAIC0yMDg4LDYgKzIw
NjEsMzQgQEAgc3RhdGljIGludCBxbXBfdWZzX3BhcnNlX2R0KHN0cnVjdCBxbXBfdWZzIAo+Pj4+
Pj4gKnFtcCkKPj4+Pj4+IMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+Pj4+PiDCoMKgIH0KPj4+Pj4+
Cj4+Pj4+PiArc3RhdGljIGludCBxbXBfdWZzX2dldF9waHlfcmVzZXQoc3RydWN0IHFtcF91ZnMg
KnFtcCkKPj4+Pj4+ICt7Cj4+Pj4+PiArwqDCoMKgIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyAq
Y2ZnID0gcW1wLT5jZmc7Cj4+Pj4+PiArwqDCoMKgIGludCByZXQ7Cj4+Pj4+PiArCj4+Pj4+PiAr
wqDCoMKgIGlmICghY2ZnLT5ub19wY3Nfc3dfcmVzZXQpCj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCByZXR1cm4gMDsKPj4+Pj4+ICsKPj4+Pj4+ICvCoMKgwqAgLyoKPj4+Pj4+ICvCoMKg
wqDCoCAqIEdldCBVRlMgcmVzZXQsIHdoaWNoIGlzIGRlbGF5ZWQgdW50aWwgbm93IHRvIGF2b2lk
IGEKPj4+Pj4+ICvCoMKgwqDCoCAqIGNpcmN1bGFyIGRlcGVuZGVuY3kgd2hlcmUgVUZTIG5lZWRz
IGl0cyBQSFksIGJ1dCB0aGUgUEhZCj4+Pj4+PiArwqDCoMKgwqAgKiBuZWVkcyB0aGlzIFVGUyBy
ZXNldC4KPj4+Pj4+ICvCoMKgwqDCoCAqLwo+Pj4+Pj4gK8KgwqDCoCBpZiAoIXFtcC0+dWZzX3Jl
c2V0KSB7Cj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBxbXAtPnVmc19yZXNldCA9Cj4+
Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0X2V4Y2x1
c2l2ZShxbXAtPmRldiwgInVmc3BoeSIpOwo+Pj4+Pgo+Pj4+PiBTdHJhbmdlIGluZGVudGF0aW9u
Lgo+Pj4+Pgo+Pj4+Pj4gKwo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKElTX0VS
UihxbXAtPnVmc19yZXNldCkpIHsKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCByZXQgPSBQVFJfRVJSKHFtcC0+dWZzX3Jlc2V0KTsKPj4+Pj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfZXJyKHFtcC0+ZGV2LCAiZmFpbGVk
IHRvIGdldCBQSFkgcmVzZXQ6IAo+Pj4+Pj4gJWRcbiIsIHJldCk7Cj4+Pj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcW1wLT51ZnNfcmVzZXQgPSBOVUxMOwo+Pj4+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+
Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+Pj4+PiArwqDCoMKgIH0KPj4+Pj4+ICsK
Pj4+Pj4+ICvCoMKgwqAgcmV0dXJuIDA7Cj4+Pj4+PiArfQo+Pj4+Pj4gKwo+Pj4+Pj4gwqDCoCBz
dGF0aWMgaW50IHFtcF91ZnNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4+
Pj4+IMKgwqAgewo+Pj4+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+
ZGV2Owo+Pj4+Pj4gQEAgLTIxMTQsNiArMjExNSwxMCBAQCBzdGF0aWMgaW50IHFtcF91ZnNfcHJv
YmUoc3RydWN0IAo+Pj4+Pj4gcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+Pj4+Pj4gwqDCoMKgwqDC
oCBpZiAocmV0KQo+Pj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHJldDsK
Pj4+Pj4+Cj4+Pj4+PiArwqDCoMKgIHJldCA9IHFtcF91ZnNfZ2V0X3BoeV9yZXNldChxbXApOwo+
Pj4+Pj4gK8KgwqDCoCBpZiAocmV0KQo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIHJldDsKPj4+Pj4+ICsKPj4+Pj4+IMKgwqDCoMKgwqAgLyogQ2hlY2sgZm9yIGxlZ2FjeSBi
aW5kaW5nIHdpdGggY2hpbGQgbm9kZS4gKi8KPj4+Pj4+IMKgwqDCoMKgwqAgbnAgPSBvZl9nZXRf
bmV4dF9hdmFpbGFibGVfY2hpbGQoZGV2LT5vZl9ub2RlLCBOVUxMKTsKPj4+Pj4+IMKgwqDCoMKg
wqAgaWYgKG5wKSB7Cj4+Pj4+PiAtLSAKPj4+Pj4+IDIuNDguMQo+Pj4+Pj4KPj4+Pj4KPj4+Pgo+
Pj4KPj4+Cj4+Cj4gCj4gCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
