Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19DC2C7EE23
	for <linux-phy@archiver.kernel.org>; Thu, 27 Apr 2023 03:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qU4Kb9eOwL9j8qT+3W3ewCtu0NxwH3LratU/9hx8L80=; b=5GH7o0zUWyYrJr
	3LjuNnS+hkEHBJDaVos6VGqqTuFJrtaHuQW4EivWrmj7mWI878ITYXek3H0nfKiPUPfAoqYquJ/6N
	eSntMgvQwEBPvTgoxJ/W3zd7j5cpXeJ6ZP8pCLQDMB5hcezcHOyZQrPU++94wLQ3JEbpe/Bz+vHvv
	otMqGCDTLcjofBnUZHWohWGOe9N6h0Ym2xprMHd3Vai3r676KgGQrv1+xouuRI1CAuEQ709+WnyM7
	dnAwS4ZKWG3QgPliFubrCZidzbkEOB8GmpPPVE8KJTQxAqIYeH9LUHO+FqVJYI2FuAae3ZEe/JhNW
	YT5/UxIKM1RgzJIGpaeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prrxA-005K4g-1i;
	Thu, 27 Apr 2023 03:05:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prrx7-005K3T-16
	for linux-phy@lists.infradead.org;
	Thu, 27 Apr 2023 03:05:51 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33R2xOk3019904;
	Thu, 27 Apr 2023 03:05:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=GNAlciDU+GX06s6Be7pZZX94vMNRxyGA7OeWiEL2XXg=;
 b=Us/P1zd74/aMxdwbW25Ka4Tcn6qDWMjGHVO4jV4lrFskecJK/LtXBdcuwNejq/zISXuH
 Y/I0g/I0WPtjqPO8izhhhPCs1zQeMJCTn63dWMsMhoqwxiA7K8YI9EZV+T9Jubfr92wR
 4qhw6HRoZ/8tLCXK8GYlkYCY42omnlK8RiKOt/IlU2HPtggjhYGePBB3R3xQpWP4n5IG
 482UpRfIKSSKKbeAtRpkpWaJuGdLBCD6Rwi3/jsVF0j+7Fn90UA0gMNd8SsiU5SpEQQl
 qrT6bgZ4K1LJamqg77Pz5dSOKzoHcCzqPt3yYFp7GuP44e6aJ0haFI9TagKEYEGM3pOA dw== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3q75jyhdfs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 27 Apr 2023 03:05:42 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 33R35fkx021035
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 27 Apr 2023 03:05:41 GMT
Received: from [10.216.27.110] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42; Wed, 26 Apr
 2023 20:05:36 -0700
Message-ID: <9606b8db-ab16-763f-f9df-d059dcc4e4d0@quicinc.com>
Date: Thu, 27 Apr 2023 08:35:33 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v1 0/6] arm64: qcom: sa8775p: add support for USB
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
        Adrien Thierry
	<athierry@redhat.com>
CC: <agross@kernel.org>, <andersson@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        "Kishon
 Vijay Abraham I" <kishon@kernel.org>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>
References: <20230421133922.8520-1-quic_shazhuss@quicinc.com>
 <ZEcEGJiikEC2wIVE@fedora> <ac49075d-439e-da46-9ef6-0b0828f8e072@linaro.org>
From: Shazad Hussain <quic_shazhuss@quicinc.com>
In-Reply-To: <ac49075d-439e-da46-9ef6-0b0828f8e072@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: UyzYc6VkwfNEB-4TZKtjJ7LlrgmdFIkr
X-Proofpoint-ORIG-GUID: UyzYc6VkwfNEB-4TZKtjJ7LlrgmdFIkr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-27_01,2023-04-26_03,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 suspectscore=0
 mlxlogscore=623 malwarescore=0 clxscore=1015 adultscore=0 spamscore=0
 mlxscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304270027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230426_200549_389919_05BF48A1 
X-CRM114-Status: GOOD (  20.61  )
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

CgpPbiA0LzI3LzIwMjMgNToxMiBBTSwgS29ucmFkIER5YmNpbyB3cm90ZToKPiAKPiBPbiA0LzI0
LzIzIDIzOjM1LCBBZHJpZW4gVGhpZXJyeSB3cm90ZToKPj4gSGkgU2hhemFkLAo+Pgo+PiBPbiBG
cmksIEFwciAyMSwgMjAyMyBhdCAwNzowOToxNVBNICswNTMwLCBTaGF6YWQgSHVzc2FpbiB3cm90
ZToKPj4+IFVwZGF0ZSByZWxhdmVudCBEVCBiaW5kaW5ncyBmb3IgVVNCLCBhZGQgbmV3IGNvbmZp
ZyB0byB0aGUgcGh5IGRyaXZlciwKPj4+IGFkZCBVU0IgYW5kIFBIWSBub2RlcyB0byB0aGUgLmR0
c2kgYW5kIGVuYWJsZSB0aGVtIGluIHRoZSBib2FyZCAuZHRzCj4+PiBmb3IgdGhlIHNhODc3NXAt
cmlkZSBwbGF0Zm9ybS4KPj4+Cj4+PiBTaGF6YWQgSHVzc2FpbiAoNik6Cj4+PiDCoMKgIGR0LWJp
bmRpbmdzOiB1c2I6IHFjb20sZHdjMzogQWRkIGJpbmRpbmdzIGZvciBTQTg3NzVQCj4+PiDCoMKg
IGR0LWJpbmRpbmdzOiBwaHk6IHFjb20sdXNiLXNucHMtZmVtdG8tdjI6IEFkZCBiaW5kaW5ncyBm
b3IgU0E4Nzc1UAo+Pj4gwqDCoCBkdC1iaW5kaW5nczogcGh5OiBxY29tLHNjODI4MHhwLXFtcC11
c2IzLXVuaTogQWRkIFNBODc3NVAgVVNCIFBIWQo+Pj4gwqDCoMKgwqAgYmluZGluZwo+Pj4gwqDC
oCBwaHk6IHFjb20tcW1wOiBBZGQgU0E4Nzc1UCBVU0IzIFVOSSBwaHkKPj4+IMKgwqAgYXJtNjQ6
IGR0czogcWNvbTogc2E4Nzc1cDogYWRkIFVTQiBub2Rlcwo+Pj4gwqDCoCBhcm02NDogZHRzOiBx
Y29tOiBzYTg3NzVwLXJpZGU6IGVuYWJsZSBVU0Igbm9kZXMKPj4+Cj4+PiDCoCAuLi4vcGh5L3Fj
b20sc2M4MjgweHAtcW1wLXVzYjMtdW5pLXBoeS55YW1swqDCoCB8wqDCoCAxICsKPj4+IMKgIC4u
Li9iaW5kaW5ncy9waHkvcWNvbSx1c2Itc25wcy1mZW10by12Mi55YW1swqAgfMKgwqAgMSArCj4+
PiDCoCAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvcWNvbSxkd2MzLnlhbWzCoMKgwqAgfMKg
wqAgNSArCj4+PiDCoCBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2E4Nzc1cC1yaWRlLmR0c8Kg
wqDCoMKgIHzCoCA5MiArKysrKysrCj4+PiDCoCBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2E4
Nzc1cC5kdHNpwqDCoMKgwqDCoMKgwqDCoCB8IDIzOSArKysrKysrKysrKysrKysrKy0KPj4+IMKg
IGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11c2IuY8KgwqDCoMKgwqDCoCB8wqAg
NDUgKysrKwo+Pj4gwqAgNiBmaWxlcyBjaGFuZ2VkLCAzODEgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKPj4+Cj4+PiAtLSAKPj4+IDIuMTcuMQo+Pj4KPj4gVGhhbmtzIGZvciBwb3N0aW5n
IHRoaXMuIEkgdGVzdGVkIHRoZSBzZXJpZXMgb24gdGhlIHNhODc3NXAsIGFuZCBpdCBzZWVtcwo+
PiBpbml0aWFsaXphdGlvbiBmb3IgdGhlIGNvbnRyb2xsZXIgYXQgYTQwMDAwMCBzb21ldGltZXMg
ZmFpbHMgd2l0aCBhCj4+IHRpbWVvdXQgKC0xMTApIGVycm9yOgo+Pgo+PiDCoMKgwqDCoCBkd2Mz
IGE0MDAwMDAudXNiOiBBZGRpbmcgdG8gaW9tbXUgZ3JvdXAgMgo+PiDCoMKgwqDCoCB4aGNpLWhj
ZCB4aGNpLWhjZC4wLmF1dG86IHhIQ0kgSG9zdCBDb250cm9sbGVyCj4+IMKgwqDCoMKgIHhoY2kt
aGNkIHhoY2ktaGNkLjAuYXV0bzogbmV3IFVTQiBidXMgcmVnaXN0ZXJlZCwgYXNzaWduZWQgYnVz
IAo+PiBudW1iZXIgMQo+PiDCoMKgwqDCoCB4aGNpLWhjZCB4aGNpLWhjZC4wLmF1dG86IGNhbid0
IHNldHVwOiAtMTEwCj4+IMKgwqDCoMKgIHhoY2ktaGNkIHhoY2ktaGNkLjAuYXV0bzogVVNCIGJ1
cyAxIGRlcmVnaXN0ZXJlZAo+PiDCoMKgwqDCoCB4aGNpLWhjZDogcHJvYmUgb2YgeGhjaS1oY2Qu
MC5hdXRvIGZhaWxlZCB3aXRoIGVycm9yIC0xMTAKPj4gwqDCoMKgwqAgZHdjMyBhNjAwMDAwLnVz
YjogQWRkaW5nIHRvIGlvbW11IGdyb3VwIDMKPj4gwqDCoMKgwqAgZHdjMyBhODAwMDAwLnVzYjog
QWRkaW5nIHRvIGlvbW11IGdyb3VwIDQKPj4gwqDCoMKgwqAgeGhjaS1oY2QgeGhjaS1oY2QuMS5h
dXRvOiB4SENJIEhvc3QgQ29udHJvbGxlcgo+PiDCoMKgwqDCoCB4aGNpLWhjZCB4aGNpLWhjZC4x
LmF1dG86IG5ldyBVU0IgYnVzIHJlZ2lzdGVyZWQsIGFzc2lnbmVkIGJ1cyAKPj4gbnVtYmVyIDEK
Pj4gwqDCoMKgwqAgeGhjaS1oY2QgeGhjaS1oY2QuMS5hdXRvOiBoY2MgcGFyYW1zIDB4MDExMGZm
YzUgaGNpIHZlcnNpb24gMHgxMTAgCj4+IHF1aXJrcyAweDAwMDAwMDAwMDAwMTAwMTAKPj4gwqDC
oMKgwqAgeGhjaS1oY2QgeGhjaS1oY2QuMS5hdXRvOiBpcnEgMTYyLCBpbyBtZW0gMHgwYTgwMDAw
MAo+PiDCoMKgwqDCoCB4aGNpLWhjZCB4aGNpLWhjZC4xLmF1dG86IHhIQ0kgSG9zdCBDb250cm9s
bGVyCj4+IMKgwqDCoMKgIHhoY2ktaGNkIHhoY2ktaGNkLjEuYXV0bzogbmV3IFVTQiBidXMgcmVn
aXN0ZXJlZCwgYXNzaWduZWQgYnVzIAo+PiBudW1iZXIgMgo+PiDCoMKgwqDCoCB4aGNpLWhjZCB4
aGNpLWhjZC4xLmF1dG86IEhvc3Qgc3VwcG9ydHMgVVNCIDMuMSBFbmhhbmNlZCBTdXBlclNwZWVk
Cj4+IMKgwqDCoMKgIGh1YiAxLTA6MS4wOiBVU0IgaHViIGZvdW5kCj4+IMKgwqDCoMKgIGh1YiAx
LTA6MS4wOiAxIHBvcnQgZGV0ZWN0ZWQKPj4gwqDCoMKgwqAgdXNiIHVzYjI6IFdlIGRvbid0IGtu
b3cgdGhlIGFsZ29yaXRobXMgZm9yIExQTSBmb3IgdGhpcyBob3N0LCAKPj4gZGlzYWJsaW5nIExQ
TS4KPj4gwqDCoMKgwqAgaHViIDItMDoxLjA6IFVTQiBodWIgZm91bmQKPj4gwqDCoMKgwqAgaHVi
IDItMDoxLjA6IDEgcG9ydCBkZXRlY3RlZAo+Pgo+PiBJbiB0aGlzIGNhc2UsIG9ubHkgdXNiIGRl
dmljZXMgZm9yIGE4MDAwMDAgYXJlIHNob3dpbmc6Cj4+Cj4+IMKgwqDCoMKgIGRyYWN1dDovIyBs
cyAtYWxoIC9zeXMvYnVzL3VzYi9kZXZpY2VzCj4+IMKgwqDCoMKgIHRvdGFsIDAKPj4gwqDCoMKg
wqAgZHJ3eHIteHIteCAyIHJvb3Qgcm9vdCAwIEZlYiAyNyAwMDowMCAuCj4+IMKgwqDCoMKgIGRy
d3hyLXhyLXggNCByb290IHJvb3QgMCBGZWIgMjcgMDA6MDAgLi4KPj4gwqDCoMKgwqAgbHJ3eHJ3
eHJ3eCAxIHJvb3Qgcm9vdCAwIEZlYiAyNyAwMDowMCAxLTA6MS4wIC0+IAo+PiAuLi8uLi8uLi9k
ZXZpY2VzL3BsYXRmb3JtL3NvY0AwL2E4Zjg4MDAudXNiL2E4MDAwMDAudXNiL3hoY2ktaGNkLjEu
YXV0by91c2IxLzEtMDoxLjAKPj4gwqDCoMKgwqAgbHJ3eHJ3eHJ3eCAxIHJvb3Qgcm9vdCAwIEZl
YiAyNyAwMDowMCAyLTA6MS4wIC0+IAo+PiAuLi8uLi8uLi9kZXZpY2VzL3BsYXRmb3JtL3NvY0Aw
L2E4Zjg4MDAudXNiL2E4MDAwMDAudXNiL3hoY2ktaGNkLjEuYXV0by91c2IyLzItMDoxLjAKPj4g
wqDCoMKgwqAgbHJ3eHJ3eHJ3eCAxIHJvb3Qgcm9vdCAwIEZlYiAyNyAwMDowMCB1c2IxIC0+IAo+
PiAuLi8uLi8uLi9kZXZpY2VzL3BsYXRmb3JtL3NvY0AwL2E4Zjg4MDAudXNiL2E4MDAwMDAudXNi
L3hoY2ktaGNkLjEuYXV0by91c2IxCj4+IMKgwqDCoMKgIGxyd3hyd3hyd3ggMSByb290IHJvb3Qg
MCBGZWIgMjcgMDA6MDAgdXNiMiAtPiAKPj4gLi4vLi4vLi4vZGV2aWNlcy9wbGF0Zm9ybS9zb2NA
MC9hOGY4ODAwLnVzYi9hODAwMDAwLnVzYi94aGNpLWhjZC4xLmF1dG8vdXNiMgo+Pgo+PiBUaGlz
IGhhcHBlbnMgYXBwcm94aW1hdGVseSAxIG91dCBvZiAyIHJlYm9vdHMuIEhlcmUncyB0aGUga2Vy
bmVsIG91dHB1dAo+PiB3aGVuIGluaXRpYWxpemF0aW9uIHN1Y2NlZWRzOgo+Pgo+PiDCoMKgwqDC
oCBkd2MzIGE2MDAwMDAudXNiOiBBZGRpbmcgdG8gaW9tbXUgZ3JvdXAgMgo+PiDCoMKgwqDCoCBk
d2MzIGE4MDAwMDAudXNiOiBBZGRpbmcgdG8gaW9tbXUgZ3JvdXAgMwo+PiDCoMKgwqDCoCB4aGNp
LWhjZCB4aGNpLWhjZC4wLmF1dG86IHhIQ0kgSG9zdCBDb250cm9sbGVyCj4+IMKgwqDCoMKgIHho
Y2ktaGNkIHhoY2ktaGNkLjAuYXV0bzogbmV3IFVTQiBidXMgcmVnaXN0ZXJlZCwgYXNzaWduZWQg
YnVzIAo+PiBudW1iZXIgMQo+PiDCoMKgwqDCoCB4aGNpLWhjZCB4aGNpLWhjZC4wLmF1dG86IGhj
YyBwYXJhbXMgMHgwMTEwZmZjNSBoY2kgdmVyc2lvbiAweDExMCAKPj4gcXVpcmtzIDB4MDAwMDAw
MDAwMDAxMDAxMAo+PiDCoMKgwqDCoCB4aGNpLWhjZCB4aGNpLWhjZC4wLmF1dG86IGlycSAxNjEs
IGlvIG1lbSAweDBhODAwMDAwCj4+IMKgwqDCoMKgIHhoY2ktaGNkIHhoY2ktaGNkLjAuYXV0bzog
eEhDSSBIb3N0IENvbnRyb2xsZXIKPj4gwqDCoMKgwqAgeGhjaS1oY2QgeGhjaS1oY2QuMC5hdXRv
OiBuZXcgVVNCIGJ1cyByZWdpc3RlcmVkLCBhc3NpZ25lZCBidXMgCj4+IG51bWJlciAyCj4+IMKg
wqDCoMKgIHhoY2ktaGNkIHhoY2ktaGNkLjAuYXV0bzogSG9zdCBzdXBwb3J0cyBVU0IgMy4xIEVu
aGFuY2VkIFN1cGVyU3BlZWQKPj4gwqDCoMKgwqAgaHViIDEtMDoxLjA6IFVTQiBodWIgZm91bmQK
Pj4gwqDCoMKgwqAgaHViIDEtMDoxLjA6IDEgcG9ydCBkZXRlY3RlZAo+PiDCoMKgwqDCoCB1c2Ig
dXNiMjogV2UgZG9uJ3Qga25vdyB0aGUgYWxnb3JpdGhtcyBmb3IgTFBNIGZvciB0aGlzIGhvc3Qs
IAo+PiBkaXNhYmxpbmcgTFBNLgo+PiDCoMKgwqDCoCBodWIgMi0wOjEuMDogVVNCIGh1YiBmb3Vu
ZAo+PiDCoMKgwqDCoCBodWIgMi0wOjEuMDogMSBwb3J0IGRldGVjdGVkCj4+IMKgwqDCoMKgIGR3
YzMgYTQwMDAwMC51c2I6IEFkZGluZyB0byBpb21tdSBncm91cCA0Cj4+IMKgwqDCoMKgIHhoY2kt
aGNkIHhoY2ktaGNkLjEuYXV0bzogeEhDSSBIb3N0IENvbnRyb2xsZXIKPj4gwqDCoMKgwqAgeGhj
aS1oY2QgeGhjaS1oY2QuMS5hdXRvOiBuZXcgVVNCIGJ1cyByZWdpc3RlcmVkLCBhc3NpZ25lZCBi
dXMgCj4+IG51bWJlciAzCj4+IMKgwqDCoMKgIHhoY2ktaGNkIHhoY2ktaGNkLjEuYXV0bzogVVNC
MyByb290IGh1YiBoYXMgbm8gcG9ydHMKPj4gwqDCoMKgwqAgeGhjaS1oY2QgeGhjaS1oY2QuMS5h
dXRvOiBoY2MgcGFyYW1zIDB4MDIyMGZlNjUgaGNpIHZlcnNpb24gMHgxMTAgCj4+IHF1aXJrcyAw
eDAwMDAwMDAwMDAwMTAwMTAKPj4gwqDCoMKgwqAgeGhjaS1oY2QgeGhjaS1oY2QuMS5hdXRvOiBp
cnEgMTYyLCBpbyBtZW0gMHgwYTQwMDAwMAo+PiDCoMKgwqDCoCBodWIgMy0wOjEuMDogVVNCIGh1
YiBmb3VuZAo+PiDCoMKgwqDCoCBodWIgMy0wOjEuMDogMSBwb3J0IGRldGVjdGVkCj4+Cj4+IEFu
ZCB0aGUgbGlzdCBvZiB1c2IgZGV2aWNlczoKPj4KPj4gwqDCoMKgwqAgZHJhY3V0Oi8jIGxzIC1h
bGggL3N5cy9idXMvdXNiL2RldmljZXMKPj4gwqDCoMKgwqAgdG90YWwgMAo+PiDCoMKgwqDCoCBk
cnd4ci14ci14IDIgcm9vdCByb290IDAgRmViIDI3IDAwOjAwIC4KPj4gwqDCoMKgwqAgZHJ3eHIt
eHIteCA0IHJvb3Qgcm9vdCAwIEZlYiAyNyAwMDowMCAuLgo+PiDCoMKgwqDCoCBscnd4cnd4cnd4
IDEgcm9vdCByb290IDAgRmViIDI3IDAwOjAwIDEtMDoxLjAgLT4gCj4+IC4uLy4uLy4uL2Rldmlj
ZXMvcGxhdGZvcm0vc29jQDAvYThmODgwMC51c2IvYTgwMDAwMC51c2IveGhjaS1oY2QuMC5hdXRv
L3VzYjEvMS0wOjEuMAo+PiDCoMKgwqDCoCBscnd4cnd4cnd4IDEgcm9vdCByb290IDAgRmViIDI3
IDAwOjAwIDItMDoxLjAgLT4gCj4+IC4uLy4uLy4uL2RldmljZXMvcGxhdGZvcm0vc29jQDAvYThm
ODgwMC51c2IvYTgwMDAwMC51c2IveGhjaS1oY2QuMC5hdXRvL3VzYjIvMi0wOjEuMAo+PiDCoMKg
wqDCoCBscnd4cnd4cnd4IDEgcm9vdCByb290IDAgRmViIDI3IDAwOjAwIDMtMDoxLjAgLT4gCj4+
IC4uLy4uLy4uL2RldmljZXMvcGxhdGZvcm0vc29jQDAvYTRmODgwMC51c2IvYTQwMDAwMC51c2Iv
eGhjaS1oY2QuMS5hdXRvL3VzYjMvMy0wOjEuMAo+PiDCoMKgwqDCoCBscnd4cnd4cnd4IDEgcm9v
dCByb290IDAgRmViIDI3IDAwOjAwIHVzYjEgLT4gCj4+IC4uLy4uLy4uL2RldmljZXMvcGxhdGZv
cm0vc29jQDAvYThmODgwMC51c2IvYTgwMDAwMC51c2IveGhjaS1oY2QuMC5hdXRvL3VzYjEKPj4g
wqDCoMKgwqAgbHJ3eHJ3eHJ3eCAxIHJvb3Qgcm9vdCAwIEZlYiAyNyAwMDowMCB1c2IyIC0+IAo+
PiAuLi8uLi8uLi9kZXZpY2VzL3BsYXRmb3JtL3NvY0AwL2E4Zjg4MDAudXNiL2E4MDAwMDAudXNi
L3hoY2ktaGNkLjAuYXV0by91c2IyCj4+IMKgwqDCoMKgIGxyd3hyd3hyd3ggMSByb290IHJvb3Qg
MCBGZWIgMjcgMDA6MDAgdXNiMyAtPiAKPj4gLi4vLi4vLi4vZGV2aWNlcy9wbGF0Zm9ybS9zb2NA
MC9hNGY4ODAwLnVzYi9hNDAwMDAwLnVzYi94aGNpLWhjZC4xLmF1dG8vdXNiMwo+Pgo+PiBIYXZl
IHlvdSBhbHNvIGVuY291bnRlcmVkIHRoaXM/Cj4gCj4gSSd2ZSBoYWQgc29tZSBpc3N1ZXMgd2l0
aCBRTVBQSFkgbm90IChzb21ldGltZXM/KSBwcm9iaW5nIGluIHRpbWUgb24gCj4gU002MTE1IG9u
bHkgd2hlbiBidWlsdCBhcyBhIG1vZHVsZS4uIHBlcmhhcHMgaXQnZCBiZSB3b3J0aCBjaGVja2lu
ZyBvdXQgCj4gb2YgaXQgd29ya3MgZmluZSB3aXRoID15Pwo+IAoKSW4gbXkgc2V0dXAgSSB0cmll
ZCBrZWVwaW5nIFFNUFBIWSBhcyA9eSBvbmx5IGFuZCBkaWQgbm90IHNlZSB0aGUgaXNzdWUKCndp
dGggMTAgcmVib290cy4KPiAKPiBLb25yYWQKPiAKPj4KPj4gQmVzdCwKPj4KPj4gQWRyaWVuCj4+
Ci0tLQpTaGF6YWQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
