Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E816C07E9D
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 15:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+yjuTm5hWKvT0cIRXzen50130xZ1FCePGliVkSy1ZZM=; b=UoTPot6p8K4Ruq
	WRd03GRcaQs20uBeHHawsA5WroWNPtnzhQA5SVOylnS8eiT4vWOvHljRAs45/4gKQPc+JJrKD2QeB
	Q5etaAs3JbsBkf/4AjszNNA3zcIZ4wuVIaUDumqHHTgllIWpYQxSZph4BFEFBWFf0BjGyBk9ugb00
	XjCDNGL1sqTnBFzkmgINDCkrdR4WEWjVS/8mcaPR5rmxe25dZ3NiWUXow8sVlfJxupODXQDBaOUYj
	nAy7/0MvyuheGv0dEzXiioP8eiVtRKILXAyo+eYrGzh64HVmGzfyCKUZEMPK70Bhur6QrzqBdirvd
	RbXqvBj9NtdOoaWhYVRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocq4A-005eo4-UK; Mon, 26 Sep 2022 15:30:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocq47-005eli-Im
	for linux-phy@lists.infradead.org; Mon, 26 Sep 2022 15:30:41 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28QCTm1b014930;
	Mon, 26 Sep 2022 15:30:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=kU9b44Kdwow6VsO17G9gwzumrAY2ZBNpSNpGbjF/zH4=;
 b=RI+HrIF2XEwlfwxLOCKPrTTQDQy9mbiKRbYAVZl7KTsQBidVMTQKSR0W5qtWdGTn3YmS
 JctChUnKX8OJS6OkhlJU2eKMjnTnsJxKXYQUolwWg2XK9KSB15Tq5ztAHOAEFEE7445p
 y8raaVlXHAACazORPiIK6qFPQpYY/CLmaPOmxATiYVVPQcoXOkpt0WwI6UumHsklq8zb
 XMQ+hxhs0A+8Vcnp4pXbXUfK25cp7DZhLDMk9WXfpJgWn69P2wFRutR4pL/yYj8VpOVN
 gck8zPw8WOHBAQr9AMc/3FrlC9D79g11Zrm6TpBuW9A26H5/ZMsu0eFcSZTIizja43Pv RQ== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3jua2us08g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 26 Sep 2022 15:30:26 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 28QFUPQ8023317
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 26 Sep 2022 15:30:26 GMT
Received: from [10.216.15.146] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.29; Mon, 26 Sep
 2022 08:30:16 -0700
Message-ID: <5d2f7167-818a-a655-9885-b71a3e91733e@quicinc.com>
Date: Mon, 26 Sep 2022 21:00:11 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v7 1/5] PCI: qcom: Add system suspend and resume support
Content-Language: en-US
To: Bjorn Helgaas <helgaas@kernel.org>
CC: <linux-pci@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <mka@chromium.org>,
        <quic_vbadigan@quicinc.com>, <quic_hemantk@quicinc.com>,
        <quic_nitegupt@quicinc.com>, <quic_skananth@quicinc.com>,
        <quic_ramkri@quicinc.com>, <manivannan.sadhasivam@linaro.org>,
        <swboyd@chromium.org>, <dmitry.baryshkov@linaro.org>,
        <svarbanov@mm-sol.com>, <agross@kernel.org>, <andersson@kernel.org>,
        <konrad.dybcio@somainline.org>, <lpieralisi@kernel.org>,
        <robh@kernel.org>, <kw@linux.com>, <bhelgaas@google.com>,
        <linux-phy@lists.infradead.org>, <vkoul@kernel.org>, <kishon@ti.com>,
        <mturquette@baylibre.com>, <linux-clk@vger.kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        "Rafael J. Wysocki"
	<rafael@kernel.org>, <linux-pm@vger.kernel.org>
References: <20220923142611.GA1389970@bhelgaas>
From: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>
In-Reply-To: <20220923142611.GA1389970@bhelgaas>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: MFrFhmIF7fAJ5ZdhzBXjWbyopZnBZq11
X-Proofpoint-ORIG-GUID: MFrFhmIF7fAJ5ZdhzBXjWbyopZnBZq11
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-26_08,2022-09-22_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=489 clxscore=1015
 malwarescore=0 phishscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 mlxscore=0 lowpriorityscore=0 spamscore=0 impostorscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2209130000
 definitions=main-2209260098
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_083039_671500_3CC6BCD1 
X-CRM114-Status: GOOD (  26.65  )
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

Ck9uIDkvMjMvMjAyMiA3OjU2IFBNLCBCam9ybiBIZWxnYWFzIHdyb3RlOgo+IE9uIEZyaSwgU2Vw
IDIzLCAyMDIyIGF0IDA3OjI5OjMxQU0gKzA1MzAsIEtyaXNobmEgQ2hhaXRhbnlhIENodW5kcnUg
d3JvdGU6Cj4+IE9uIDkvMjMvMjAyMiAxMjoxMiBBTSwgQmpvcm4gSGVsZ2FhcyB3cm90ZToKPj4+
IE9uIFRodSwgU2VwIDIyLCAyMDIyIGF0IDA5OjA5OjI4UE0gKzA1MzAsIEtyaXNobmEgQ2hhaXRh
bnlhIENodW5kcnUgd3JvdGU6Cj4+Pj4gT24gOS8yMS8yMDIyIDEwOjI2IFBNLCBCam9ybiBIZWxn
YWFzIHdyb3RlOgo+Pj4+PiBPbiBXZWQsIFNlcCAyMSwgMjAyMiBhdCAwMzoyMzozNVBNICswNTMw
LCBLcmlzaG5hIENoYWl0YW55YSBDaHVuZHJ1IHdyb3RlOgo+Pj4+Pj4gT24gOS8yMC8yMDIyIDEx
OjQ2IFBNLCBCam9ybiBIZWxnYWFzIHdyb3RlOgo+Pj4+Pj4+IE9uIFR1ZSwgU2VwIDIwLCAyMDIy
IGF0IDAzOjUyOjIzUE0gKzA1MzAsIEtyaXNobmEgY2hhaXRhbnlhIGNodW5kcnUgd3JvdGU6Cj4+
Pj4+Pj4+IEluIHFjb20gcGxhdGZvcm0gUENJZSByZXNvdXJjZXMoIGNsb2NrcywgcGh5IGV0Yy4u
KSBjYW4KPj4+Pj4+Pj4gcmVsZWFzZWQgd2hlbiB0aGUgbGluayBpcyBpbiBMMXNzIHRvIHJlZHVj
ZSB0aGUgcG93ZXIKPj4+Pj4+Pj4gY29uc3VtcHRpb24uIFNvIGlmIHRoZSBsaW5rIGlzIGluIEwx
c3MsIHJlbGVhc2UgdGhlIFBDSWUKPj4+Pj4+Pj4gcmVzb3VyY2VzLiBBbmQgd2hlbiB0aGUgc3lz
dGVtIHJlc3VtZXMsIGVuYWJsZSB0aGUgUENJZQo+Pj4+Pj4+PiByZXNvdXJjZXMgaWYgdGhleSBy
ZWxlYXNlZCBpbiB0aGUgc3VzcGVuZCBwYXRoLgo+Pj4+Pj4+IFdoYXQncyB0aGUgY29ubmVjdGlv
biB3aXRoIEwxLng/ICBMaW5rcyBlbnRlciBMMS54IGJhc2VkIG9uCj4+Pj4+Pj4gYWN0aXZpdHkg
YW5kIHRpbWluZy4gIFRoYXQgZG9lc24ndCBzZWVtIGxpa2UgYSByZWxpYWJsZQo+Pj4+Pj4+IGlu
ZGljYXRvciB0byB0dXJuIFBIWXMgb2ZmIGFuZCBkaXNhYmxlIGNsb2Nrcy4KPj4+Pj4+IFRoaXMg
aXMgYSBRY29tIFBIWS1zcGVjaWZpYyBmZWF0dXJlIChyZXRhaW5pbmcgdGhlIGxpbmsgc3RhdGUg
aW4KPj4+Pj4+IEwxLnggd2l0aCBjbG9ja3MgdHVybmVkIG9mZikuICBJdCBpcyBwb3NzaWJsZSBv
bmx5IHdpdGggdGhlIGxpbmsKPj4+Pj4+IGJlaW5nIGluIGwxLnguIFBIWSBjYW4ndCByZXRhaW4g
dGhlIGxpbmsgc3RhdGUgaW4gTDAgd2l0aCB0aGUKPj4+Pj4+IGNsb2NrcyB0dXJuZWQgb2ZmIGFu
ZCB3ZSBuZWVkIHRvIHJlLXRyYWluIHRoZSBsaW5rIGlmIGl0J3MgaW4gTDIKPj4+Pj4+IG9yIEwz
LiBTbyB3ZSBjYW4gc3VwcG9ydCB0aGlzIGZlYXR1cmUgb25seSB3aXRoIEwxLnguICBUaGF0IGlz
Cj4+Pj4+PiB0aGUgcmVhc29uIHdlIGFyZSB0YWtpbmcgbDEueCBhcyB0aGUgdHJpZ2dlciB0byB0
dXJuIG9mZiBjbG9ja3MKPj4+Pj4+IChpbiBvbmx5IHN1c3BlbmQgcGF0aCkuCj4+Pj4+IFRoaXMg
ZG9lc24ndCBhZGRyZXNzIG15IHF1ZXN0aW9uLiAgTDEueCBpcyBhbiBBU1BNIGZlYXR1cmUsIHdo
aWNoCj4+Pj4+IG1lYW5zIGhhcmR3YXJlIG1heSBlbnRlciBvciBsZWF2ZSBMMS54IGF1dG9ub21v
dXNseSBhdCBhbnkgdGltZQo+Pj4+PiB3aXRob3V0IHNvZnR3YXJlIGludGVydmVudGlvbi4gIFRo
ZXJlZm9yZSwgSSBkb24ndCB0aGluayByZWFkaW5nIHRoZQo+Pj4+PiBjdXJyZW50IHN0YXRlIGlz
IGEgcmVsaWFibGUgd2F5IHRvIGRlY2lkZSBhbnl0aGluZy4KPj4+PiBBZnRlciB0aGUgbGluayBl
bnRlcnMgdGhlIEwxLnggaXQgd2lsbCBjb21lIG91dCBvbmx5IGlmIHRoZXJlIGlzCj4+Pj4gc29t
ZSBhY3Rpdml0eSBvbiB0aGUgbGluay4gIEFTIHN5c3RlbSBpcyBzdXNwZW5kZWQgYW5kIE5WTWUg
ZHJpdmVyCj4+Pj4gaXMgYWxzbyBzdXNwZW5kZWQoIHF1ZXVlcyB3aWxswqAgZnJlZXplIGluIHN1
c3BlbmQpIHdobyBlbHNlIGNhbgo+Pj4+IGluaXRpYXRlIGFueSBkYXRhLgo+Pj4gSSBkb24ndCB0
aGluayB3ZSBjYW4gYXNzdW1lIHRoYXQgbm90aGluZyB3aWxsIGhhcHBlbiB0byBjYXVzZSBleGl0
Cj4+PiBmcm9tIEwxLnguICBGb3IgaW5zdGFuY2UsIFBDSWUgTWVzc2FnZXMgZm9yIElOVHggc2ln
bmFsaW5nLCBMVFIsIE9CRkYsCj4+PiBQVE0sIGV0Yy4sIG1heSBiZSBzZW50IGV2ZW4gdGhvdWdo
IHdlIHRoaW5rIHRoZSBkZXZpY2UgaXMgaWRsZSBhbmQKPj4+IHRoZXJlIHNob3VsZCBiZSBubyBs
aW5rIGFjdGl2aXR5Lgo+PiBJIGRvbid0IHRoaW5rIGFmdGVyIHRoZSBsaW5rIGVudGVycyBpbnRv
IEwxLnggdGhlcmUgd2lsbCBzb21lCj4+IGFjdGl2aXR5IG9uIHRoZSBsaW5rIGFzIHlvdSBtZW50
aW9uZWQsIGV4Y2VwdCBmb3IgUENJZSBtZXNzYWdlcyBsaWtlCj4+IElOVHgvTVNJL01TSVguIFRo
ZXNlIG1lc3NhZ2VzIGFsc28gd2lsbCBub3QgY29tZSBiZWNhdXNlIHRoZSBjbGllbnQKPj4gZHJp
dmVycyBsaWtlIE5WTWUgd2lsbCBrZWVwIHRoZWlyIGRldmljZSBpbiB0aGUgbG93ZXN0IHBvd2Vy
IG1vZGUuCj4+Cj4+IFRoZSBsaW5rIHdpbGwgY29tZSBvdXQgb2YgTDEueCBvbmx5IHdoZW4gdGhl
cmUgaXMgY29uZmlnIG9yIG1lbW9yeQo+PiBhY2Nlc3Mgb3Igc29tZSBtZXNzYWdlcyB0byB0cmln
Z2VyIHRoZSBpbnRlcnJ1cHRzIGZyb20gdGhlIGRldmljZXMuCj4+IFdlIGFyZSBhbHJlYWR5IG1h
a2luZyBzdXJlIHRoaXMgYWNjZXNzIHdpbGwgbm90IGJlIHRoZXJlIGluIFMzLiAgSWYKPj4gdGhl
IGxpbmsgaXMgaW4gTDAgb3IgTDBzIHdoYXQgeW91IHNhaWQgaXMgZXhwZWN0ZWQgYnV0IG5vdCBp
biBMMS54Cj4gRm9yZ2l2ZSBtZSBmb3IgYmVpbmcgc2tlcHRpY2FsLCBidXQgd2UganVzdCBzcGVu
dCBhIGZldyBtb250aHMKPiB1bnRhbmdsaW5nIHRoZSBmYWN0IHRoYXQgc29tZSBzd2l0Y2hlcyBz
ZW5kIFBUTSByZXF1ZXN0IG1lc3NhZ2VzIGV2ZW4KPiB3aGVuIHRoZXkncmUgaW4gYSBub24tRDAg
c3RhdGUuICBXZSBleHBlY3RlZCB0aGF0IGRldmljZXMgaW4gRDNob3QKPiB3b3VsZCBub3Qgc2Vu
ZCBzdWNoIG1lc3NhZ2VzIGJlY2F1c2UgIndoeSB3b3VsZCB0aGV5PyIgIEJ1dCBpdCB0dXJucwo+
IG91dCB0aGUgc3BlYyBhbGxvd3MgdGhhdCwgYW5kIHRoZXkgYWN0dWFsbHkgKmRvKi4KPgo+IEkg
ZG9uJ3QgdGhpbmsgaXQncyByb2J1c3QgaW50ZXJvcGVyYWJsZSBkZXNpZ24gZm9yIGEgUENJIGNv
bnRyb2xsZXIKPiBkcml2ZXIgbGlrZSBxY29tIHRvIGFzc3VtZSBhbnl0aGluZyBhYm91dCBQQ0kg
ZGV2aWNlcyB1bmxlc3MgaXQncwo+IHJlcXVpcmVkIGJ5IHRoZSBzcGVjLgo+Cj4gQmpvcm4KIEZy
b20gcGNpIHNwZWMgNCwgaW4gc2VjIDUuNQoiUG9ydHMgdGhhdCBzdXBwb3J0IEwxIFBNIFN1YnN0
YXRlcyBtdXN0IG5vdCByZXF1aXJlIGEgcmVmZXJlbmNlIGNsb2NrIAp3aGlsZSBpbiBMMSBQTSBT
dWJzdGF0ZXMKb3RoZXIgdGhhbiBMMS4wIi4KSWYgdGhlcmUgaXMgbm8gcmVmZXJlbmNlIGNsayB3
ZSBjYW4gc2F5IHRoZXJlIGlzIG5vIGFjdGl2aXR5IG9uIHRoZSBsaW5rLgpJZiBhbnl0aGluZyBu
ZWVkcyB0byBiZSBzZW50IChzdWNoIGFzIExUUiwgb3Igc29tZSBtZXNzYWdlcyApLCB0aGUgbGlu
ayAKbmVlZHMgdG8gYmUgYmFjayBpbiBMMCBiZWZvcmUgaXQKc2VuZHMgdGhlIHBhY2tldCB0byB0
aGUgbGluayBwYXJ0bmVyLgoKVG8gZXhpdCBmcm9tIEwxLnggY2xrcmVxIHBpbiBzaG91bGQgYmUg
YXNzZXJ0ZWQuCgpJbiBzdXNwZW5kIGFmdGVyIHR1cm5pbmcgb2ZmIGNsb2NrcyBhbmQgcGh5IHdl
IGNhbiBlbmFibGUgdG8gdHJpZ2dlciBhbiAKaW50ZXJydXB0IHdoZW5ldmVyIHRoZSBjbGsgcmVx
IHBpbiBhc3NlcnRzLgpJbiB0aGF0IGludGVycnVwdCBoYW5kbGVyLCB3ZSBjYW4gZW5hYmxlIHRo
ZSBwY2llIHJlc291cmNlcyBiYWNrLgoKV2hhdCBhcmUgeW91ciB0aG91Z2h0cyBvbiB0aGlzPwoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
