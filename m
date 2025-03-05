Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97E79C19F32
	for <linux-phy@archiver.kernel.org>; Wed,  5 Mar 2025 12:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qT+B5v6sw4QQWGw8O3dzr0uAOnJc+Bbs5UupknW4cHo=; b=yDjAXOKs7SM1be
	TqCuLXi++smAn2uICRo/J6R/E/z/ioYtNt7eaaiMWIrnSHNTxg5737eOQ/wHKYDTjitXhud0J4b6U
	v9g10jhurmZ8RjaBC21LJ0GBVj+4nn87RiACi4Y6PZ+XXK+rSKubZyZ3Npb97XAjtpIBxnTXx8mRB
	Q8W0QrXNOfkjEkULCgSTkxW7Q1tabPQvbkV0EGj+0AeiK9IzfCFDesglFAXdDiLX9wAbVBhi8LRqn
	VkaBWfhilmtIXRFdt0LH2LMEnEHfYSKccf4W1g+zFynw/kyzIUbWe2Ws2H40t09XLi2AeyuSJWR+R
	T2MIE2Pf1xjzoGIohYLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpnTP-00000007wWV-1Sfc;
	Wed, 05 Mar 2025 12:03:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tplsF-00000007f2f-1FdW
	for linux-phy@lists.infradead.org;
	Wed, 05 Mar 2025 10:21:12 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 524N9vor012465;
	Wed, 5 Mar 2025 10:20:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+ROcKvUblyM/oecfiHr/sopXV3L5MwWZxt5566wETFk=; b=B8S6wrjoJnL3Kufd
	x4hMdJukTjzGSOwZhbsWIhxbNoStYsP4fXUTuyMMqIyJcg4T+QkFVN70e8GpeWku
	JEEiTDpuhnZ1Tr51IO48SJoGpz1gTRVvPjEnCjrev7bbL54JE4fWPEYaKYQWTgWq
	lHbp8kuBzfHGj/+2yL9BiE+tf5TIY0AIYHg8hCk93p0M/QC9/y4i8zxC/zTss9ji
	6zBPjGRqympcB9RPK39BkqZLjl70dSt+cBs9ovPPu4QWpXTRstXq/WNxt5BiSqI0
	wuXVCTv3cqMgClSf6a77r21TBEdfoE2cxWXG8oE2csVpHFxoVrMKBUl5GXlyKKpR
	rkZ7nA==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 455p6wmwne-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 05 Mar 2025 10:20:56 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 525AKtQk014188
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 5 Mar 2025 10:20:55 GMT
Received: from [10.64.16.135] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 5 Mar 2025
 02:20:47 -0800
Message-ID: <4c06aeec-161d-4e67-9a64-ac74991a0f73@quicinc.com>
Date: Wed, 5 Mar 2025 18:20:45 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/8] phy: qcom: qmp-usbc: Add DP phy mode support on
 QCS615
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar
	<quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten
	<marijn.suijten@somainline.org>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Kuogee
 Hsieh" <quic_khsieh@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>,
        "Kishon
 Vijay Abraham I" <kishon@kernel.org>,
        Linus Walleij
	<linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>, <quic_lliu6@quicinc.com>,
        <quic_fangez@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>, <freedreno@lists.freedesktop.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-gpio@vger.kernel.org>
References: <20241129-add-displayport-support-for-qcs615-platform-v1-3-09a4338d93ef@quicinc.com>
 <CAA8EJppOR_UXoVpMt-dhfWdCz3UNfsXGdz8X9NqpaSmYj3AZDg@mail.gmail.com>
 <5ea14162-567b-462d-be02-b73b954b7507@quicinc.com>
 <5whv4z7u6fkfwlv5muox5dmv6fow4mga76ammapw7wph7vwv3f@xibcjdfqorgf>
 <iqcofcntirmlwcpyfr4yabymqfcgyrij57bibf337tmxpa73t6@npkt6wquenf6>
 <527baded-f348-48a8-81cd-3f84c0ff1077@quicinc.com>
 <t5vcjlf44fhae4f2h75cfs3f7r6tdstw4ysmkapvvawj6xp23x@xnxqnxvyhshe>
 <d5151b82-5f05-4826-99b4-e925c20550b4@quicinc.com>
 <7vdaasc3flhpabnorjty5qjorlbp22honuscgpbteakgagg2tq@frqa6flk2mmv>
 <df1a4457-129e-452c-8089-ee1e6f9a3e12@quicinc.com>
 <jdw3xuknq2atcowl5xboimp3fol56t5nilefrxzpbdpwdoo5oc@pggif3lysjhh>
From: Xiangxu Yin <quic_xiangxuy@quicinc.com>
In-Reply-To: <jdw3xuknq2atcowl5xboimp3fol56t5nilefrxzpbdpwdoo5oc@pggif3lysjhh>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=EZcyQOmC c=1 sm=1 tr=0 ts=67c82588 cx=c_pps a=JYp8KDb2vCoCEuGobkYCKw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=g_gWVRsLUC6QYS0Rm0QA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: T5Scpoiq5Hu68qu9Zq7NdwV2CxK3fPes
X-Proofpoint-ORIG-GUID: T5Scpoiq5Hu68qu9Zq7NdwV2CxK3fPes
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-05_04,2025-03-05_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 mlxlogscore=999 suspectscore=0 bulkscore=0
 clxscore=1015 priorityscore=1501 spamscore=0 impostorscore=0
 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503050082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_022111_473935_9DF2AEE0 
X-CRM114-Status: GOOD (  34.91  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CgpPbiAxMi8yMC8yMDI0IDg6MDEgQU0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gT24gV2Vk
LCBEZWMgMTgsIDIwMjQgYXQgMDg6NTU6NTRQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4+
Cj4+Cj4+IE9uIDEyLzEyLzIwMjQgMzoxNSBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4+
IE9uIFdlZCwgRGVjIDExLCAyMDI0IGF0IDA4OjUwOjAyUE0gKzA4MDAsIFhpYW5neHUgWWluIHdy
b3RlOgo+Pj4+Cj4+Pj4KPj4+PiBPbiAxMi8xMS8yMDI0IDU6NDYgUE0sIERtaXRyeSBCYXJ5c2hr
b3Ygd3JvdGU6Cj4+Pj4+IE9uIFdlZCwgRGVjIDExLCAyMDI0IGF0IDA4OjQ2OjE2QU0gKzA4MDAs
IFhpYW5neHUgWWluIHdyb3RlOgo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBPbiAxMi8xMC8yMDI0IDEx
OjA5IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+Pj4+Pj4+IE9uIFRodSwgRGVjIDA1LCAy
MDI0IGF0IDA4OjMxOjI0UE0gKzAyMDAsIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+Pj4+Pj4+
IE9uIFRodSwgRGVjIDA1LCAyMDI0IGF0IDA5OjI2OjQ3UE0gKzA4MDAsIFhpYW5neHUgWWluIHdy
b3RlOgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBPbiAxMS8yOS8yMDI0IDEwOjMzIFBN
LCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+Pj4+Pj4+Pj4+IE9uIEZyaSwgMjkgTm92IDIwMjQg
YXQgMDk6NTksIFhpYW5neHUgWWluIDxxdWljX3hpYW5neHV5QHF1aWNpbmMuY29tPiB3cm90ZToK
Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4gRXh0ZW5kZWQgRFAgc3VwcG9ydCBmb3IgUUNTNjE1IFVT
QiBvciBEUCBwaHkuIERpZmZlcmVudGlhdGVkIGJldHdlZW4KPj4+Pj4+Pj4+Pj4gVVNCQyBhbmQg
RFAgUEhZIHVzaW5nIHRoZSBtYXRjaCB0YWJsZeKAmXMgdHlwZSwgZHluYW1pY2FsbHkgZ2VuZXJh
dGluZwo+Pj4+Pj4+Pj4+PiBkaWZmZXJlbnQgdHlwZXMgb2YgY2ZnIGFuZCBsYXlvdXQgYXR0cmli
dXRlcyBkdXJpbmcgaW5pdGlhbGl6YXRpb24gYmFzZWQKPj4+Pj4+Pj4+Pj4gb24gdGhpcyB0eXBl
LiBTdGF0aWMgdmFyaWFibGVzIGFyZSBzdG9yZWQgaW4gY2ZnLCB3aGlsZSBwYXJzZWQgdmFsdWVz
Cj4+Pj4+Pj4+Pj4+IGFyZSBvcmdhbml6ZWQgaW50byB0aGUgbGF5b3V0IHN0cnVjdHVyZS4KPj4+
Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IFdlIGRpZG4ndCBoYXZlIGFuIHVuZGVyc3RhbmRpbmcgLyBjb25j
bHVzaW9uIHdoZXRoZXIKPj4+Pj4+Pj4+PiBxY29tLHVzYi1zc3BoeS1xbXAtdXNiMy1vci1kcCBQ
SFlzIGFyZSBhY3R1YWxseSBhIHNpbmdsZSBkZXZpY2UgLyBQSFkKPj4+Pj4+Pj4+PiBvciB0d28g
UEhZcyBiZWluZyBwbGFjZWQgbmV4dCB0byBlYWNoIG90aGVyLiBDb3VsZCB5b3UgcGxlYXNlIHN0
YXJ0Cj4+Pj4+Pj4+Pj4geW91ciBjb21taXQgbWVzc2FnZSBieSBleHBsYWluaW5nIGl0PyBPciBl
dmVuIGJldHRlciwgbWFrZSB0aGF0IGEgcGFydAo+Pj4+Pj4+Pj4+IG9mIHRoZSBjb3ZlciBsZXR0
ZXIgZm9yIGEgbmV3IHNlcmllcyB0b3VjaGluZyBqdXN0IHRoZSBVU0JDIFBIWQo+Pj4+Pj4+Pj4+
IGRyaXZlci4gRFAgY2hhbmdlcyBkb24ndCBoYXZlIGFueXRoaW5nIGluIGNvbW1vbiB3aXRoIHRo
ZSBQSFkgY2hhbmdlcywKPj4+Pj4+Pj4+PiBzbyB5b3UgY2FuIHNwbGl0IHRoZSBzZXJpZXMgaW50
byB0d28uCj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IEJlZm9yZSBpbXBsZW1lbnQgRFAgZXh0ZW5zaW9u
LCB3ZSBoYXZlIGRpc2N1c3NlZCB3aXRoIGFiaGluYXYgYW5kIGtyaXNobmEgYWJvdXQgd2hldGhl
ciB1c2UgY29tYm8sIHVzYmMgb3Igc2VwYXJhdGUgcGh5Lgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBXaGF0
IGlzICJEUCBleHRlbnNpb24iPwo+Pj4+Pj4+Pgo+Pj4+Pj4gSSdtIHNvcnJ5IGNvbmZ1c2lvbiBj
YXN1ZWQgYnkgbXkgZGVzY3JpcHRpb24uIEl0J3MgbWVhbnMgZXh0ZW5kIERQIGltcGxlbW50IGZv
ciBVU0JDIHBoeSBkcml2ZXIuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gV2UgaWRlbnRpZmllZCB0aGF0
IERQIGFuZCBVU0Igc2hhcmUgc29tZSBjb21tb24gY29udHJvbHMgZm9yIHBoeV9tb2RlIGFuZCBv
cmllbnRhdGlvbi4KPj4+Pj4+Pj4+IFNwZWNpZmljYWxseSwgJ1RDU1JfVVNCM18wX0RQX1BIWU1P
REUnIGNvbnRyb2xzIHdobyBtdXN0IHVzZSB0aGUgbGFuZXMgLSBVU0Igb3IgRFAsCj4+Pj4+Pj4+
PiB3aGlsZSBQRVJJUEhfU1NfVVNCMF9VU0IzUEhZX1BDU19NSVNDX1RZUEVDX0NUUkwgY29udHJv
bHMgdGhlIG9yaWVudGF0aW9uLgo+Pj4+Pj4+Pj4gSXQgd291bGQgYmUgbW9yZSBlZmZpY2llbnQg
Zm9yIGEgc2luZ2xlIGRyaXZlciB0byBtYW5hZ2UgdGhlc2UgY29udHJvbHMuIAo+Pj4+Pj4+Pgo+
Pj4+Pj4+PiBUaGUgcXVlc3Rpb24gaXMgYWJvdXQgdGhlIGhhcmR3YXJlLCBub3QgYWJvdXQgdGhl
IGRyaXZlci4KPj4+Pj4+Pj4KPj4+Pj4+Pj4+IEFkZGl0aW9uYWxseSwgdGhpcyBQSFkgZG9lcyBu
b3Qgc3VwcG9ydCBBbHQgTW9kZSwgYW5kIHRoZSB0d28gY29udHJvbCByZWdpc3RlcnMgYXJlIGxv
Y2F0ZWQgaW4gc2VwYXJhdGUgYWRkcmVzcyBzcGFjZXMuIAo+Pj4+Pj4+Pj4gVGhlcmVmb3JlLCBl
dmVuIHRob3VnaCB0aGUgb3JpZW50YXRpb24gZm9yIERQIG9uIHRoaXMgcGxhdGZvcm0gaXMgYWx3
YXlzIG5vcm1hbCBhbmQgY29ubmVjdGVkIHRvIHRoZSB2aWRlbyBvdXRwdXQgYm9hcmQsIAo+Pj4+
Pj4+Pj4gd2Ugc3RpbGwgZGVjaWRlZCB0byBiYXNlIGl0IG9uIHRoZSBVU0JDIGV4dGVuc2lvbi4K
Pj4+Pj4+Pj4KPj4+Pj4+Pj4gQ291bGQgeW91IHBsZWFzZSBjbGFyaWZ5LCBkbyB1c2IzLW9yLWRw
IFBIWXMgc3VwcG9ydCBEUC1vdmVyLVVTQi1DPyBJCj4+Pj4+Pj4+IHRob3VnaHQgdGhhdCB1c2Jj
LW9yLWRwIHBsYXRmb3JtcyBzdXBwb3J0IHRoYXQsIGJ1dCB0aGV5IGRvbid0Cj4+Pj4+Pj4+IHN1
cHBvcnQgRFArVVNCIHBpbiBjb25maWd1cmF0aW9uLiBOb3RlLCB0aGUgcXVlc3Rpb24gaXMgYnJv
YWRlciB0aGFuCj4+Pj4+Pj4+IGp1c3QgUUNTNjE1LCBpdCBjb3ZlcnMgdGhlIFBIWSB0eXBlIGl0
c2VsZi4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gQWxzbywgaXMgVENTUiBjb25maWd1cmF0aW9uIHJlYWQv
d3JpdGUgb3IgcmVhZC1vbmx5PyBBcmUgd2Ugc3VwcG9zZWQgdG8KPj4+Pj4+Pj4gc2V0IHRoZSBy
ZWdpc3RlciBmcm9tIE9TIG9yIGFyZSB3ZSBzdXBwb3NlZCB0byByZWFkIGl0IGFuZCB0aHVzIGRl
dGVtaW5lCj4+Pj4+Pj4+IHRoZSBQSFkgbW9kZT8KPj4+Pj4+Pgo+Pj4+Pj4+IEFueSB1cGRhdGVz
IG9uIHRoZXNlIHR3byB0b3BpY3M/Cj4+Pj4+Pj4KPj4+Pj4+IFN0aWxsIGNvbmZpcm1pbmcgZGV0
YWlsIGluZm8gd2l0aCBIVyAmIGRlc2lnbiB0ZWFtLgo+Pj4+Pj4gSeKAmWxsIHVwZGF0ZSB0aGUg
aW5mb3JtYXRpb24gdGhhdCBoYXMgYmVlbiBjb25maXJtZWQgc28gZmFyLgo+Pj4+Pj4gVGhpcyBw
aHkgc3VwcG9ydCBEUC1vdmVyLVVTQi1DLGJ1dCBpdCdzIG5vdCBzdXBwb3J0IGFsdC1tb2RlIHdo
aWNoIDIgbGFuZSB3b3JrIGZvciBEUCwgb3RoZXIgMiBsYW5lIHdvcmsgZm9yIFVTQi4KPj4+Pj4+
IFRDU1IgcGh5IG1vZGUgaXMgcmVhZC93cml0ZSByZWcgYW5kIHdlIGNhbiByZWFkIGZvciBkZXRl
cm1pbmUgcGh5IG1vZGUuCj4+Pj4+Cj4+Pj4+IE9rLCB0aGFua3MgZm9yIHRoZSBleHBsYW5hdGlv
bi4gRnJvbSBteSBwb2ludCBvZiB2aWV3Ogo+Pj4+Pgo+Pj4+PiAtIEltcGxlbWVudCB0aGUgRFAg
UEhZIHRvIGJlIGEgcGFydCBvZiB0aGUgc2FtZSBkcml2ZXIuIEVhY2ggZGV2aWNlCj4+Pj4+ICAg
c3VwcG9ydGVkIGJ5IHRoZSB1c2JjIGRyaXZlciBzaG91bGQgZ2V0IGJvdGggUEhZcy4KPj4+Pj4K
Pj4+Pj4gLSBNYWtlIHN1cmUgbm90IHRvIGJyZWFrIHRoZSBBQkk6ICNwaHktY2VsbHMgPSA8MD4g
c2hvdWxkIHN0aWxsIHdvcmsgYW5kCj4+Pj4+ICAgcmV0dXJuIFVTQiBQSFksIGtlZXBpbmcgYmFj
a3dhcmRzIGNvbXBhdGliaWxpdHkuIE5ld2VyIGRldmljZXMgb3IKPj4+Pj4gICB1cGdyYWRlZCBE
VCBmb3Igb2xkIGRldmljZXMgc2hvdWxkIHJldHVybiBVU0IgUEhZIGZvciA8Li4uIDA+IGFuZCBE
UAo+Pj4+PiAgIFBIWSBmb3IgPC4uLiAxPi4KPj4+Pj4KPj4+PiBZZXMsIGN1cnJlbnRseSB3ZSBo
YXZlIGltcGxlbWVudGVkIGxpa2UgeW91ciBkZXNjcmlwdGlvbiwKPj4+PiBFYWNoIGRlaXZjZSBz
aG91ZCBnZXQgYm90aCBQSFlzLCBEUCBQSFkgZm9yIDwuLi4gMT4gYW5kIFVTQiBQSFkgZm9yIDwu
Li4gMD4uCj4+Pgo+Pj4gUGxlYXNlIG5vdGUgdGhlIGJhY2t3YXJkcyBjb21wYXRpYmlsaXR5IGNs
YXVzZS4KPj4+Cj4+IEZvciB0aGUgVVNCIG5vZGUsIHdlIGtlcHQgdGhlIHNhbWUgaW1wbGVtZW50
YXRpb24gYXMgdGhlIG9yaWdpbmFsIGZ1bmN0aW9uIGludGVyZmFjZSwgYW5kIHRoZSBkZXZpY2V0
cmVlIG5vZGUgZGVmaW5pdGlvbiBhbHNvIHJlbWFpbnMgdW5jaGFuZ2VkLgo+PiBJbiBzdWJzZXF1
ZW50IHBhdGNoZXMsIEkgd2lsbCBmb2xsb3cgS3J6eXN6dG9m4oCZcyBzdWdnZXN0aW9uIHRvIHVz
ZSBhIHNlcGFyYXRlIERULWJpbmRpbmcgdG8gZGVzY3JpYmUgdGhlIERQIFBIWSBjb25maWd1cmF0
aW9uLCAKPj4gd2l0aG91dCBtYWtpbmcgY2hhbmdlcyB0byB0aGUgVVNCIGRldmljZXRyZWUgYW5k
IERULWJpbmRpbmcgaW1wbGVtZW50YXRpb24uCj4+Pj4+IC0gSSdtIG5vdCBzaHVyZSBob3cgdG8g
aGFuZGxlIHRoZSBVU0IgYW5kIERQIGNvZXhpc3RlbmNlLCBlc3BlY2lhbGx5IGluCj4+Pj4+ICAg
eW91ciBjYXNlIG9mIHRoZSBVU0Itb3ItRFAgUEhZLgo+Pj4+Pgo+Pj4+IEZvciBjb2V4aXN0ZW5j
ZSBwcm9jZXNzOgo+Pj4+Cj4+Pj4gV2hlbiB3ZSBzdGFydCBpbXBsZW1lbnQgRFAgcGFydCwgdXNi
IGRyaXZlciB0ZWFtIHNhaWQgb25seSBuZWVkIGNvbmZpZyBUQ1NSIHBoeSBtb2RlIGFuZCBvcmll
bnRhdGlvbiBkdXJpbmcgc3dpdGNoIGluIFVTQi1DIHBvcnQuCj4+Pj4gQmFzZWQgb24geW91ciBw
cmV2aW91cyBjb21tZW50cyBhdm91dCBTV19QV1JETiwgSSdtIGNvbmZpcm1pbmcgd2l0aCB0aGUg
VVNCIHRlYW0gd2hldGhlciBTV19SRVNUL1NXUFdSRE4vU1RBUlRfQ1RSTCByZWdpc3RlcnMgbWln
aHQgYWZmZWN0IERQLgo+Pj4KPj4+IFRoYW5rcyEKPj4+Cj4+Pj4gQW55d2F5LCBldmVuIHRob3Vn
aCB0aGUgb3JpZ2luYWwgU29DIGRlc2lnbiBzdXBwb3J0cyBEUCBvciBVU0Igb3ZlciBUeXBlLUPv
vIwKPj4+PiBidXQgb24gUUNTNjE1IEFEUCBBSVIgcGxhdGZvcm0sIHRoZXJlIGFyZSBvbmx5IGZv
dXIgVVNCLUEgcG9ydCB3aGljaCB3b3JrcyB3aXRoICdxY3M2MTUtcW1wLXVzYjMtcGh5JyBkcml2
ZXIsIGFuZCBubyBVU0ItQyBwb3J0Lgo+Pj4+IERQIHBvcnQgaXMgbWFwcHBlZCBmcm9tIHVzYiBw
aW4gdG8gdGhlIHZpZGVvIG91dCBzdWItYm9hcmQuCj4+Pj4gc28gd2UgYXJlIHVuYWJsZSB0byB2
ZXJpZnkgdGhlIHN3aXRjaGluZyBjYXNlIGJldHdlZW4gRFAgYW5kIFVTQiBkZXZpY2VzIHVuZGVy
IFVTQi1DLgo+Pj4KPj4+IFRoYXQncyBhbHNvIGZpbmUuIFdlIHdpbGwgZ2V0IHRvIHRoYXQgcG9p
bnQgb25jZSBNU004OTk4IC8gU0RNNjYwCj4+PiBnZXQgVVNCLUMgc3VwcG9ydCAodGhlIG9ubHkg
Y3VycmVudCBibG9ja2VyIGlzIHRoZSBzdXBwb3J0IGZvciB0aGUKPj4+IFRZUEVDIGJsb2NrIG9m
IHRoZSBQTUk4OTk4KS4KPj4+Cj4+IEkgY2FuJ3QgYWNjZXNzIE1TTTg5OTggLyBTRE02NjAgZG9j
dW1lbnRzIG5vdywgYnV0IEkgaGF2ZSBjb25maXJtZWQgZGV0YWlsIGluZm8gYWJvdXQgVVNCICYg
RFAgcGh5IGRlc2lnbiBmb3Igc202MTUwLgo+Pgo+PiBUaGUgJ3VzYi1zc3BoeS1xbXAtdXNiMy1v
ci1kcCBQSFknIG9uIHRoZSBjdXJyZW50IHBsYXRmb3JtIGlzIGVzc2VudGlhbGx5IGNvbXBvc2Vk
IG9mIHRocmVlIHN1Yi1QSFlzLCAKPj4gd2hpY2ggY2FuIGV2ZW4gYmUgY29uc2lkZXJlZCBhcyB0
aHJlZSBzZXBhcmF0ZSBQSFlzOiBVU0IzIHByaW1hcnkgUEhZLCBVU0IzIHNlY29uZGFyeSBQSFks
IGFuZCBVU0IzIERQIFBIWS4KPiAKPiBJJ3ZlIGxvb2tlZCBhdCBzbTYxNTAtdXNiLmR0c2kgYW5k
IG5vdyBJJ20gY29tcGxldGVseSBwdXp6bGVkIGJ5IHlvdXIKPiBhbnN3ZXIuIFRoZSBtc20tNC4x
NCBrZXJuZWwgbGlzdHMgYSBzaW5nbGUgVVNCIFFNUCBQSFkgYXQgMHg4OGU2MDAwLAo+IHVzZWQg
Zm9yIHRoZSBwcmltYXJ5IFVTQjMgaG9zdC4gSXQgaXQgZGVmaW5lZCBhcwo+IHFjb20sdXNiLXNz
cGh5LXFtcC11c2IzLW9yLWRwLiBTZWNvbmRhcnkgVVNCIGhvc3QgaXMgbGlzdGVkIGFzIFVTQiAy
LjAKPiBvbmx5LiBTbyB3aGF0IGRvIHlvdSBtZWFuIGJ5IHRoZSBVU0IzIHNlY29uZGFyeSBQSFk/
IFdoaWNoIFBIWSBhbmQgd2hpY2gKPiBwaW5zIGFyZSBjb25uZWN0ZWQgdG8geW91ciB2aWRlby1v
dXQgYm9hcmQ/Cj4gCkZpdmUgUEhZcyBhcmUgaW50ZWdyYXRlZCBpbnRvIFRhbG9zIFNvQzogdHdv
IFVTQjIgUEhZcywgdHdvIFVTQjMgUEhZcywgYW5kIG9uZSBEUCBQSFkuClBFUklQSF9TU19RVVNC
MlBIWV9QUklNX1FVU0IyUEhZX1BSSU1fQ01fUVVTQjJfTFFfMUVYICgweDA4OEUyMDAwKQpQRVJJ
UEhfU1NfUVVTQjJQSFlfU0VDX1FVU0IyUEhZX1NFQ19DTV9RVVNCMl9MUV8xRVggKDB4MDg4RTMw
MDApClBFUklQSF9TU19VU0IwX1VTQjNQSFlfVVNCMF9VU0IzUEhZX0NNX1VTQjNfU1cgKDB4MDg4
RTYwMDApClBFUklQSF9TU19VU0IxX1VTQjNQSFlfVVNCMV9VU0IzUEhZX0NNX1VTQjNfU1cgKDB4
MDg4RTgwMDApClBFUklQSF9TU19EUF9QSFlfRFBfUEhZX0NNX0RQXzRMTl9TVyAoMHgwODhFOTAw
MCkKClRoZSBVU0IzIHNlY29uZGFyeSBQSFkoMHgwODhFODAwMCkgaXMgdGhlIG9uZSBtdXR1YWxs
eSBleGNsdXNpdmUgd2l0aCB0aGUgRFAgUEhZLCB3aGljaCBjb250cm9sbGVkIGJ5IHRoZSBUQ1NS
IHN3aXRjaC4KVVNCMyBzZWNvbmRhcnkgUEhZIGlzIG5vdCBjb25maWdlZCBpbiBxY3M2MTUgZHRz
aS4KCkluIFJpZGUsIERQIFBIWSwgRFAgbGFuZSAwfjMgYW5kIERQIGF1eCBwaW5zIGFyZSBjb25u
ZWN0ZWQgdG8gdmlkZW8tb3V0IGJvYXJkLgo+Pgo+PiBPbiB0aGUgUUNTNjE1LCB0aGUgVVNCIHBy
aW1hcnkgUEhZIGlzIGN1cnJlbnRseSB1c2VkIHRvIGhhbmRsZSBVU0IgMy4wIGNvbW11bmljYXRp
b24gZm9yIHRoZSBwcmV2aW91c2x5IG1lbnRpb25lZCBmb3VyIFVTQiBUeXBlLUEgcG9ydHMsIAo+
PiB3aGlsZSB0aGUgVVNCMyBzZWNvbmRhcnkgUEhZIGFuZCBVU0IzIERQIFBIWSBhcmUgdXNlZCBm
b3IgdGhlIG91dHB1dCBvZiB0aGUgVHlwZS1DIHBvcnQsCj4+IGJ1dCBzaW5jZSB0aGUgVHlwZS1D
IHBvcnQgaXMgZm9yY2libHkgcGluLXRvLXBpbiBjb25maWd1cmVkIHRvIHRoZSB2aWRlbyBvdXQg
Ym9hcmQsIHRoZSBUeXBlLUMgcG9ydCB3aWxsIGFsd2F5cyBjb25maWd1cmUgYXMgRFAgUEhZLgo+
Pgo+PiBUaGUgaW50ZXJuYWwgcmVnaXN0ZXJzIG9mIHRoZXNlIHRocmVlIFBIWXMgYXJlIGluZGVw
ZW5kZW50IG9mIGVhY2ggb3RoZXIsIE5laXRoZXIgdGhlaXIgcmVzcGVjdGl2ZSBTV1BXUl9ETiBu
b3IgU1dSU1Qgd2lsbCBhZmZlY3QgdGhlIG90aGVyIHR3byBQSFlzLgo+PiBBZGRpdGlvbmFsbHks
IHRoZXJlIHdhcyBhIG1pc3VuZGVyc3RhbmRpbmcgYWJvdXQgdGhlIG9yaWVudGF0aW9uIHByZXZp
b3VzbHkuCj4+IFRoZSBVU0Igb3JpZW50YXRpb24gc2V0dGluZyBvbmx5IGFmZmVjdHMgdGhlIGN1
cnJlbnQgUEhZIGFuZCBkb2VzIG5vdCBpbXBhY3QgdGhlIERQIFBIWS4gVGhlIERQIFBIWSBpcyBj
b25maWd1cmVkIGluIHRoZSBEUF9QSFlfQ0ZHXzEuCj4+Cj4+IFRTQ1JfUEhZX01PREUgY2FuIHNw
ZWNpZnkgd2hpY2ggUEhZIG91dHB1dHMgdG8gdGhlIFR5cGUtQyBwb3J0LCBhbmQgdGhlIGdsb2Jh
bCByZXNldCB3aWxsIHNpbXVsdGFuZW91c2x5IHJlc2V0IHRoZSB0d28gYXNzb2NpYXRlZCBQSFlz
LiAKPj4gVGhlcmVmb3JlLCB0aGUgY29ycmVjdCBzd2l0Y2hpbmcgcHJvY2VzcyBpcyBhcyBmb2xs
b3dzLgo+PiBXaGVuIHN3aXRjaGluZyB0aGUgaW5zZXJ0ZWQgZGV2aWNlOgo+PiAJMS5JZGVudGlm
eSB0aGUgUEhZIHR5cGUuCj4+IAkyLkVuYWJsZSB0aGUgcmVndWxhdG9yLgo+PiAJMy5UcmlnZ2Vy
IGEgcmVzZXQuCj4+IAk0LkVuYWJsZSB0aGUgY2xvY2suCj4+IAk1LkNvbmZpZ3VyZSBQSFkgdHlw
ZSByZWxhdGVkIG9yaWVudGF0aW9uCj4+IAk2LnN3aXRjaCB0aGUgVENTUiBQSFkgbW9kZS4KPj4g
CTcuQ29uZmlndXJlIHRoZSByZWdpc3RlcnMgb2YgUEhZLgo+PiBEdXJpbmcgcmVsZWFzZToKPj4g
CTEuUmVzZXQuCj4+IAkyLkRpc2FibGUgdGhlIGNsb2NrLgo+PiAJMy5EaXNhYmxlIHRoZSByZWd1
bGF0b3IuCj4+Cj4+IE91ciBjdXJyZW50IGRlc2lnbiBvdmVyYWxsIGNvbXBsaWVzIHdpdGggdGhp
cyBwcm9jZXNzLCBidXQgaXQgbGFja3MgdGhlIGNvbmZpZ3VyYXRpb24gZm9yIERQX1BIWV9DRkdf
MS4KPj4KPj4gU2hhbGwgd2UgY29udGludWUgdGhlIGRpc2N1c3Npb24gdG8gY2xhcmlmeSByZW1h
aW4gY29tbWVudHMgb2YgdGhlIFVTQkMgZHJpdmVyPwo+Pgo+Pj4+IEhvd2V2ZXIsIEknbSBhbHNv
IGNvbmZpcm1pbmcgd2hldGhlciBhbnl0aGluZyBvdGhlciB3aWxsIGFmZmVjdCBVU0IgYW5kIERQ
IGVhY2ggb3RoZXIuCj4+Pgo+Pgo+IAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
