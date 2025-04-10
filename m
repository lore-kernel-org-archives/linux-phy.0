Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BCA6C369A6
	for <linux-phy@archiver.kernel.org>; Thu, 10 Apr 2025 11:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=60YvqiLapR+UVpAdTOKxJIJo/Rwc/EA36qz+HJoOek4=; b=hQtIup+LNhmw4z
	b1kQz0WLb00NZlmbyLyUiZeBGkn9/JcCADXuDJBY3y2BlL9hPFIR9mpm9A8xods/FzDsauFnURk5j
	OQsr9u2Klszf+q9sVFTyXXQZFpawL7l+7pm6l5egwZ6Z0K22YJew13kCcIEeWTQA1sANz1DhgYxc0
	VDNFxcrRBqT+peCu0C73jaZ8HY9x2UIJ0zy4idJ6NAckf+9XjklFmx1vZpwonJ6Db1F6NLsj0uV2U
	FT9UjHGETeJQfQJGGAcnuCpZ1/gtP6q7Y7XWRFDkJtY8zYNbL7TFvO9V5wV1OjmELN+C0SGSuBoJ0
	bH24IuzkO1gS3/LIdy8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2ptI-0000000ABsa-3zKV;
	Thu, 10 Apr 2025 11:16:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2nuY-00000009ssd-1LRl
	for linux-phy@lists.infradead.org;
	Thu, 10 Apr 2025 09:09:28 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53A75NZT016340;
	Thu, 10 Apr 2025 09:09:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8fxVd34HCVlbqhp+YxoQnEBVeBKAahRy/Oc+q7zRfq8=; b=IgM3YHiwnu0t0s9j
	PoTA84LNP4I0Rh26mb6BJh7z9og7Gt//3MxcEk78xn8IYHm+qsijCnv4otW5aqTf
	4b5TxAzypKZklsjqGhcpqL+Iup0x+d8XRgPDdzjis9nFJKYxcAoF5dzr6l2vgCMI
	C42xxDyw4E7/X9ovwwJwj2/0G3yttHTz2TkMsdkG5txu8j7E9DPsUAcXkpAq5OvM
	2nHmvYvqUX5+HDZvc7DAs6IQKHEiNBo6KcRhIQb79rpWpFqpb6wq/CbJ4KLEmHPm
	/DzCLEkEx8+hmqBZnuNMP4o8yifb3IVNstru5gPFCUzKmjk01NAwEb5x9OSbxXeU
	33OnlQ==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twc1p5au-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Apr 2025 09:09:21 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 53A99KKV009799
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Apr 2025 09:09:20 GMT
Received: from [10.218.7.247] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Thu, 10 Apr
 2025 02:09:15 -0700
Message-ID: <6bcd4f78-b0d5-45d0-b023-452ce11dad17@quicinc.com>
Date: Thu, 10 Apr 2025 14:39:13 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 3/6] phy: qcom-qmp-ufs: Refactor UFS PHY reset
To: <neil.armstrong@linaro.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <manivannan.sadhasivam@linaro.org>,
        <James.Bottomley@HansenPartnership.com>, <martin.petersen@oracle.com>,
        <konrad.dybcio@oss.qualcomm.com>
CC: <quic_rdwivedi@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-scsi@vger.kernel.org>
References: <20250318144944.19749-1-quic_nitirawa@quicinc.com>
 <20250318144944.19749-4-quic_nitirawa@quicinc.com>
 <c2d692a4-826e-4186-955a-41286c99de3f@linaro.org>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <c2d692a4-826e-4186-955a-41286c99de3f@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: ULsN_riN_epKF4ocxuNrvxU32fhP9cYs
X-Authority-Analysis: v=2.4 cv=KtdN2XWN c=1 sm=1 tr=0 ts=67f78ac1 cx=c_pps a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=obqVeH_2SAdrduneaCUA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: ULsN_riN_epKF4ocxuNrvxU32fhP9cYs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-10_01,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 spamscore=0
 malwarescore=0 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504100068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_020926_492659_1FD2CE02 
X-CRM114-Status: GOOD (  20.02  )
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

CgpPbiAzLzE4LzIwMjUgODo0MyBQTSwgbmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZyB3cm90ZToK
PiBPbiAxOC8wMy8yMDI1IDE1OjQ5LCBOaXRpbiBSYXdhdCB3cm90ZToKPj4gUmVmYWN0b3IgdGhl
IFVGUyBQSFkgcmVzZXQgaGFuZGxpbmcgdG8gcGFyc2UgdGhlIHJlc2V0IGxvZ2ljIG9ubHkgb25j
ZQo+PiBkdXJpbmcgcHJvYmUsIGluc3RlYWQgb2YgZXZlcnkgcmVzdW1lLgo+Pgo+PiBNb3ZlIHRo
ZSBVRlMgUEhZIHJlc2V0IHBhcnNpbmcgbG9naWMgZnJvbSBxbXBfcGh5X3Bvd2VyX29uIHRvCj4+
IHFtcF91ZnNfcHJvYmUgdG8gYXZvaWQgdW5uZWNlc3NhcnkgcGFyc2luZyBkdXJpbmcgcmVzdW1l
Lgo+Pgo+PiBDby1kZXZlbG9wZWQtYnk6IFJhbSBLdW1hciBEd2l2ZWRpIDxxdWljX3Jkd2l2ZWRp
QHF1aWNpbmMuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBSYW0gS3VtYXIgRHdpdmVkaSA8cXVpY19y
ZHdpdmVkaUBxdWljaW5jLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogTml0aW4gUmF3YXQgPHF1aWNf
bml0aXJhd2FAcXVpY2luYy5jb20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL3BoeS9xdWFsY29tbS9w
aHktcWNvbS1xbXAtdWZzLmMgfCAxMDQgKysrKysrKysrKysrLS0tLS0tLS0tLS0tCj4+IMKgIDEg
ZmlsZSBjaGFuZ2VkLCA1MCBpbnNlcnRpb25zKCspLCA1NCBkZWxldGlvbnMoLSkKPj4KPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11ZnMuYyBiL2RyaXZl
cnMvcGh5LyAKPj4gcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jCj4+IGluZGV4IDAwODllZTgw
Zjg1Mi4uM2E4MGMyYzExMGQyIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9w
aHktcWNvbS1xbXAtdWZzLmMKPj4gKysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20t
cW1wLXVmcy5jCj4+IEBAIC0xNzU3LDMyICsxNzU3LDYgQEAgc3RhdGljIHZvaWQgcW1wX3Vmc19p
bml0X3JlZ2lzdGVycyhzdHJ1Y3QgCj4+IHFtcF91ZnMgKnFtcCwgY29uc3Qgc3RydWN0IHFtcF9w
aHlfY2ZnCj4+IMKgwqDCoMKgwqAgcW1wX3Vmc19pbml0X2FsbChxbXAsICZjZmctPnRibHNfaHNf
Yik7Cj4+IMKgIH0KPj4KPj4gLXN0YXRpYyBpbnQgcW1wX3Vmc19jb21faW5pdChzdHJ1Y3QgcW1w
X3VmcyAqcW1wKQo+PiAtewo+PiAtwqDCoMKgIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyAqY2Zn
ID0gcW1wLT5jZmc7Cj4+IC3CoMKgwqAgdm9pZCBfX2lvbWVtICpwY3MgPSBxbXAtPnBjczsKPj4g
LcKgwqDCoCBpbnQgcmV0Owo+PiAtCj4+IC3CoMKgwqAgcmV0ID0gcmVndWxhdG9yX2J1bGtfZW5h
YmxlKGNmZy0+bnVtX3ZyZWdzLCBxbXAtPnZyZWdzKTsKPj4gLcKgwqDCoCBpZiAocmV0KSB7Cj4+
IC3CoMKgwqDCoMKgwqDCoCBkZXZfZXJyKHFtcC0+ZGV2LCAiZmFpbGVkIHRvIGVuYWJsZSByZWd1
bGF0b3JzLCBlcnI9JWRcbiIsIHJldCk7Cj4+IC3CoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+
PiAtwqDCoMKgIH0KPj4gLQo+PiAtwqDCoMKgIHJldCA9IGNsa19idWxrX3ByZXBhcmVfZW5hYmxl
KHFtcC0+bnVtX2Nsa3MsIHFtcC0+Y2xrcyk7Cj4+IC3CoMKgwqAgaWYgKHJldCkKPj4gLcKgwqDC
oMKgwqDCoMKgIGdvdG8gZXJyX2Rpc2FibGVfcmVndWxhdG9yczsKPj4gLQo+PiAtwqDCoMKgIHFw
aHlfc2V0Yml0cyhwY3MsIGNmZy0+cmVnc1tRUEhZX1BDU19QT1dFUl9ET1dOX0NPTlRST0xdLCBT
V19QV1JETik7Cj4+IC0KPj4gLcKgwqDCoCByZXR1cm4gMDsKPj4gLQo+PiAtZXJyX2Rpc2FibGVf
cmVndWxhdG9yczoKPj4gLcKgwqDCoCByZWd1bGF0b3JfYnVsa19kaXNhYmxlKGNmZy0+bnVtX3Zy
ZWdzLCBxbXAtPnZyZWdzKTsKPj4gLQo+PiAtwqDCoMKgIHJldHVybiByZXQ7Cj4+IC19Cj4+IC0K
Pj4gwqAgc3RhdGljIGludCBxbXBfdWZzX2NvbV9leGl0KHN0cnVjdCBxbXBfdWZzICpxbXApCj4+
IMKgIHsKPj4gwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmcgKmNmZyA9IHFtcC0+
Y2ZnOwo+PiBAQCAtMTgwMCw0MSArMTc3NCwyNyBAQCBzdGF0aWMgaW50IHFtcF91ZnNfcG93ZXJf
b24oc3RydWN0IHBoeSAqcGh5KQo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IHFtcF91ZnMg
KnFtcCA9IHBoeV9nZXRfZHJ2ZGF0YShwaHkpOwo+PiDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBx
bXBfcGh5X2NmZyAqY2ZnID0gcW1wLT5jZmc7Cj4+ICvCoMKgwqAgdm9pZCBfX2lvbWVtICpwY3Mg
PSBxbXAtPnBjczsKPj4gwqDCoMKgwqDCoCBpbnQgcmV0Owo+PiAtwqDCoMKgIGRldl92ZGJnKHFt
cC0+ZGV2LCAiSW5pdGlhbGl6aW5nIFFNUCBwaHlcbiIpOwo+PiAtCj4+IC3CoMKgwqAgaWYgKGNm
Zy0+bm9fcGNzX3N3X3Jlc2V0KSB7Cj4+IC3CoMKgwqDCoMKgwqDCoCAvKgo+PiAtwqDCoMKgwqDC
oMKgwqDCoCAqIEdldCBVRlMgcmVzZXQsIHdoaWNoIGlzIGRlbGF5ZWQgdW50aWwgbm93IHRvIGF2
b2lkIGEKPj4gLcKgwqDCoMKgwqDCoMKgwqAgKiBjaXJjdWxhciBkZXBlbmRlbmN5IHdoZXJlIFVG
UyBuZWVkcyBpdHMgUEhZLCBidXQgdGhlIFBIWQo+PiAtwqDCoMKgwqDCoMKgwqDCoCAqIG5lZWRz
IHRoaXMgVUZTIHJlc2V0Lgo+PiAtwqDCoMKgwqDCoMKgwqDCoCAqLwo+PiAtwqDCoMKgwqDCoMKg
wqAgaWYgKCFxbXAtPnVmc19yZXNldCkgewo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBxbXAt
PnVmc19yZXNldCA9Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGV2bV9yZXNl
dF9jb250cm9sX2dldF9leGNsdXNpdmUocW1wLT5kZXYsCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJ1ZnNwaHkiKTsK
Pj4gLQo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoSVNfRVJSKHFtcC0+dWZzX3Jlc2V0
KSkgewo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldCA9IFBUUl9FUlIocW1w
LT51ZnNfcmVzZXQpOwo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRldl9lcnIo
cW1wLT5kZXYsCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiZmFp
bGVkIHRvIGdldCBVRlMgcmVzZXQ6ICVkXG4iLAo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgcmV0KTsKPj4gLQo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHFtcC0+dWZzX3Jlc2V0ID0gTlVMTDsKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCByZXR1cm4gcmV0Owo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+IC3CoMKgwqDC
oMKgwqDCoCB9Cj4+Cj4+IC3CoMKgwqDCoMKgwqDCoCByZXQgPSByZXNldF9jb250cm9sX2Fzc2Vy
dChxbXAtPnVmc19yZXNldCk7Cj4+IC3CoMKgwqDCoMKgwqDCoCBpZiAocmV0KQo+PiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+PiArwqDCoMKgIHJldCA9IHJlZ3VsYXRvcl9i
dWxrX2VuYWJsZShjZmctPm51bV92cmVncywgcW1wLT52cmVncyk7Cj4+ICvCoMKgwqAgaWYgKHJl
dCkgewo+PiArwqDCoMKgwqDCoMKgwqAgZGV2X2VycihxbXAtPmRldiwgImZhaWxlZCB0byBlbmFi
bGUgcmVndWxhdG9ycywgZXJyPSVkXG4iLCByZXQpOwo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJu
IHJldDsKPj4gwqDCoMKgwqDCoCB9Cj4+Cj4+IC3CoMKgwqAgcmV0ID0gcW1wX3Vmc19jb21faW5p
dChxbXApOwo+PiArwqDCoMKgIHJldCA9IGNsa19idWxrX3ByZXBhcmVfZW5hYmxlKHFtcC0+bnVt
X2Nsa3MsIHFtcC0+Y2xrcyk7Cj4+IMKgwqDCoMKgwqAgaWYgKHJldCkKPj4gLcKgwqDCoMKgwqDC
oMKgIHJldHVybiByZXQ7Cj4+ICvCoMKgwqDCoMKgwqDCoCBnb3RvIGVycl9kaXNhYmxlX3JlZ3Vs
YXRvcnM7Cj4+ICsKPj4gK8KgwqDCoCBxcGh5X3NldGJpdHMocGNzLCBjZmctPnJlZ3NbUVBIWV9Q
Q1NfUE9XRVJfRE9XTl9DT05UUk9MXSwgU1dfUFdSRE4pOwo+Pgo+PiDCoMKgwqDCoMKgIHJldHVy
biAwOwo+PiArCj4+ICtlcnJfZGlzYWJsZV9yZWd1bGF0b3JzOgo+PiArwqDCoMKgIHJlZ3VsYXRv
cl9idWxrX2Rpc2FibGUoY2ZnLT5udW1fdnJlZ3MsIHFtcC0+dnJlZ3MpOwo+PiArCj4+ICvCoMKg
wqAgcmV0dXJuIHJldDsKPj4gwqAgfQo+IAo+IFRoaXMgY2hhbmdlIGlzIHRvbyBmdXp6eSwgcGxl
YXNlIGludHJvZHVjZSBxbXBfdWZzX2dldF9waHlfcmVzZXQoKQo+IGluIGEgcGF0Y2gsIG1vdmUg
cW1wX3Vmc19jb21faW5pdCgpIGlubGluZSBpbiBxbXBfdWZzX3Bvd2VyX29uKCkKPiBpbiBhIHNl
Y29uZCB0aW1lLCBhbmQgZmluYWxseSBtb3ZlIHJlc2V0X2NvbnRyb2xfYXNzZXJ0KCkgdG8KPiBj
YWxpYnJhdGUgaW4gYSB0aGlyZCBwYXRjaCAoYW5kIGV4cGxhaW4gd2h5KS4KClRoYW5rcyBmb3Ig
dGhlIGNvbW1lbnQuIEkgaGF2ZSB0YWtlbiBjYXJlIG9mIHRoaXMgYnkgc2VwYXJhdGluZyAKcW1w
X3Vmc19nZXRfcGh5X3Jlc2V0IGFuZCBpbmxpbmluZyBxbXBfdWZzX2NvbV9pbml0IGluIDIgc2Vw
YXJhdGUgcGF0Y2hlcy4KClRoYW5rcywKTml0aW4KCj4gCj4gVGhhbmtzLAo+IE5laWwKPiAKPj4K
Pj4gwqAgc3RhdGljIGludCBxbXBfdWZzX3BoeV9jYWxpYnJhdGUoc3RydWN0IHBoeSAqcGh5KQo+
PiBAQCAtMTg0Niw2ICsxODA2LDEwIEBAIHN0YXRpYyBpbnQgcW1wX3Vmc19waHlfY2FsaWJyYXRl
KHN0cnVjdCBwaHkgKnBoeSkKPj4gwqDCoMKgwqDCoCB1bnNpZ25lZCBpbnQgdmFsOwo+PiDCoMKg
wqDCoMKgIGludCByZXQ7Cj4+Cj4+ICvCoMKgwqAgcmV0ID0gcmVzZXRfY29udHJvbF9hc3NlcnQo
cW1wLT51ZnNfcmVzZXQpOwo+PiArwqDCoMKgIGlmIChyZXQpCj4+ICvCoMKgwqDCoMKgwqDCoCBy
ZXR1cm4gcmV0Owo+PiArCj4+IMKgwqDCoMKgwqAgcW1wX3Vmc19pbml0X3JlZ2lzdGVycyhxbXAs
IGNmZyk7Cj4+Cj4+IMKgwqDCoMKgwqAgcmV0ID0gcmVzZXRfY29udHJvbF9kZWFzc2VydChxbXAt
PnVmc19yZXNldCk7Cj4+IEBAIC0yMDg4LDYgKzIwNTIsMzQgQEAgc3RhdGljIGludCBxbXBfdWZz
X3BhcnNlX2R0KHN0cnVjdCBxbXBfdWZzICpxbXApCj4+IMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+
IMKgIH0KPj4KPj4gK3N0YXRpYyBpbnQgcW1wX3Vmc19nZXRfcGh5X3Jlc2V0KHN0cnVjdCBxbXBf
dWZzICpxbXApCj4+ICt7Cj4+ICvCoMKgwqAgY29uc3Qgc3RydWN0IHFtcF9waHlfY2ZnICpjZmcg
PSBxbXAtPmNmZzsKPj4gK8KgwqDCoCBpbnQgcmV0Owo+PiArCj4+ICvCoMKgwqAgaWYgKCFjZmct
Pm5vX3Bjc19zd19yZXNldCkKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAwOwo+PiArCj4+ICvC
oMKgwqAgLyoKPj4gK8KgwqDCoMKgICogR2V0IFVGUyByZXNldCwgd2hpY2ggaXMgZGVsYXllZCB1
bnRpbCBub3cgdG8gYXZvaWQgYQo+PiArwqDCoMKgwqAgKiBjaXJjdWxhciBkZXBlbmRlbmN5IHdo
ZXJlIFVGUyBuZWVkcyBpdHMgUEhZLCBidXQgdGhlIFBIWQo+PiArwqDCoMKgwqAgKiBuZWVkcyB0
aGlzIFVGUyByZXNldC4KPj4gK8KgwqDCoMKgICovCj4+ICvCoMKgwqAgaWYgKCFxbXAtPnVmc19y
ZXNldCkgewo+PiArwqDCoMKgwqDCoMKgwqAgcW1wLT51ZnNfcmVzZXQgPQo+PiArwqDCoMKgwqDC
oMKgwqAgZGV2bV9yZXNldF9jb250cm9sX2dldF9leGNsdXNpdmUocW1wLT5kZXYsICJ1ZnNwaHki
KTsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKElTX0VSUihxbXAtPnVmc19yZXNldCkpIHsK
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0gUFRSX0VSUihxbXAtPnVmc19yZXNldCk7
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRldl9lcnIocW1wLT5kZXYsICJmYWlsZWQgdG8g
Z2V0IFBIWSByZXNldDogJWRcbiIsIHJldCk7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHFt
cC0+dWZzX3Jlc2V0ID0gTlVMTDsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHJl
dDsKPj4gK8KgwqDCoMKgwqDCoMKgIH0KPj4gK8KgwqDCoCB9Cj4+ICsKPj4gK8KgwqDCoCByZXR1
cm4gMDsKPj4gK30KPj4gKwo+PiDCoCBzdGF0aWMgaW50IHFtcF91ZnNfcHJvYmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKPj4gwqAgewo+PiDCoMKgwqDCoMKgIHN0cnVjdCBkZXZpY2Ug
KmRldiA9ICZwZGV2LT5kZXY7Cj4+IEBAIC0yMTE0LDYgKzIxMDYsMTAgQEAgc3RhdGljIGludCBx
bXBfdWZzX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgCj4+ICpwZGV2KQo+PiDCoMKgwqDC
oMKgIGlmIChyZXQpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+Pgo+PiArwqDC
oMKgIHJldCA9IHFtcF91ZnNfZ2V0X3BoeV9yZXNldChxbXApOwo+PiArwqDCoMKgIGlmIChyZXQp
Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+PiArCj4+IMKgwqDCoMKgwqAgLyogQ2hl
Y2sgZm9yIGxlZ2FjeSBiaW5kaW5nIHdpdGggY2hpbGQgbm9kZS4gKi8KPj4gwqDCoMKgwqDCoCBu
cCA9IG9mX2dldF9uZXh0X2F2YWlsYWJsZV9jaGlsZChkZXYtPm9mX25vZGUsIE5VTEwpOwo+PiDC
oMKgwqDCoMKgIGlmIChucCkgewo+PiAtLSAKPj4gMi40OC4xCj4+Cj4+Cj4gCgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
