Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A090CA0EEB
	for <linux-phy@archiver.kernel.org>; Thu, 21 Aug 2025 22:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=skV9T785KKsT33WjR0GZWVzJw2bC/wHEPULqS9VJq1M=; b=I3wvVDDJJ5MiLz
	f66D4Z8W9JXUbl2sWc7nxfUfMooNjngH8pwS2muSreiLR42vzqzR071W9fg+tTJRwgJDSD/Rdd6cS
	xRj8q7zBdIXQ/H9sASUmzC/a+Pphg3CQmkdY9cp8JM54Msxhh5n4z6LkDNfQF4ZciHoYwqGNc07zN
	LBOy752CdpSJxtQtDFSPq9DN47oJAAu8raSqGGe5MW2JOzCT9Cky+Mit17gnUztjvIVFD+31aUZ6P
	FXzjsnT1XkIG4ANDnIY4CdeCYEfRx81MaNsm0Lz15Z/3PV+ohWZItHSTJVOAR4vN4LCwy9rqqLuBM
	9sfTp0CMc3owDNIWhS4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upDwI-00000000oWR-1iyD;
	Thu, 21 Aug 2025 22:39:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up7kW-0000000HUur-3FyJ
	for linux-phy@lists.infradead.org;
	Thu, 21 Aug 2025 16:02:50 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57L9bDaa006394;
	Thu, 21 Aug 2025 16:02:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xxPNP5AS8eEt0PeGMcjZ3CMG90P5nYV1hx2wnGBeO10=; b=VexkOBYj7mlm4V0W
	pmvoBpkPbSkKG/S57mM3jrdY7iMY7Bpt43Wdzapc+l9D3+fSDruxKbOTeH0KMsqq
	2sxkTPjP7PZqRjE1dK2S/Cet6hpyT0vptMH8m7VMHDhBfk3twwe7DyZwsGD9JraJ
	FbzfMB90aoJfgiLNkOklJkwfafX6WOyh/KJJ+ZLr2525Yxuf7jYLfBkFkGm24XNA
	Oct+hJ6sTdbgOXe1PB0vYs3kWBblvvVLyt0M2leV7VHyRledFfxOTZPrzqhHMMap
	o8fiqh1s1ECOFi7ldOtD0pV5HuEjLKbNaCoMQfBQkY49GKsmPtx2X4SFkjRQ6not
	JCG+5w==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n529626h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Aug 2025 16:02:44 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 57LG2hVJ008528
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Aug 2025 16:02:43 GMT
Received: from [10.216.47.227] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Thu, 21 Aug
 2025 09:02:39 -0700
Message-ID: <9a38ec05-f7ab-4241-ba47-0d514b79e808@quicinc.com>
Date: Thu, 21 Aug 2025 21:32:35 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 2/2] phy: qcom-qmp-ufs: Add regulator loads for SM8650
 and SM8750
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <mani@kernel.org>,
        <andersson@kernel.org>, <konradybcio@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
References: <20250819222832.8471-1-quic_nitirawa@quicinc.com>
 <20250819222832.8471-3-quic_nitirawa@quicinc.com>
 <ger4kizeltjwalfuwu4dpfjiskrv2okgo5c7d6n3pb24yaxgfo@nkcndblyx3il>
 <b453b8ff-a460-4ccd-9019-aed746a7d52d@quicinc.com>
 <ukxv7donvkulgci2dwrokuflzxzeyh4kohoyja2vywropntxnb@qepcssbe4wpc>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <ukxv7donvkulgci2dwrokuflzxzeyh4kohoyja2vywropntxnb@qepcssbe4wpc>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: LcVfzQqGIZtt7cMx1acfeeU9pxt1VbCq
X-Proofpoint-ORIG-GUID: LcVfzQqGIZtt7cMx1acfeeU9pxt1VbCq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfXy8LKfEsvyKFa
 GjvaA+veIO0BNAJLC9QgGIKJ38POqywKlcZJXwscz7zEv6To3Vi/sLbNDAdd8EQFFD1SnMMzNw3
 oy0DOsjuVnirl0HNnDzwYv3A/QSGtP9FEdacFCKteJ5j3OLEA3UrRvT3LEBFBvDf2JnEYoaDMps
 u1fJ0aIiYKzKV9CB5YNLXVdFlWSfJCYn5Yn+spM5eYFB2C6NrHCCV006wD/Gt7eqeDJv1XRVwKX
 l1RYaJ1xLbLXq0QV0hWaPzYhkf17Vx9UJxENMWkC9b7+QAMcCQdqbfecu63QAmfc95Qb9sME2z/
 wYU8lk9wbGQRGkxG59dSng/0fLTH1duOAkT9wjCN648RRNLDI8cwt8BNbjBP6QOHluUNoPz6+ub
 lddXkcYKXGyELnfr0HUvri55UEJWIw==
X-Authority-Analysis: v=2.4 cv=SPkblOvH c=1 sm=1 tr=0 ts=68a74324 cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10
 a=1y30qzyz97Y3s8v4aJsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=cPQSjfK2_nFv0Q5t_7PE:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 phishscore=0
 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_090248_921375_4871F9DA 
X-CRM114-Status: GOOD (  18.03  )
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

CgpPbiA4LzIwLzIwMjUgNToyNCBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiBXZWQs
IEF1ZyAyMCwgMjAyNSBhdCAxMjowNzo1N1BNICswNTMwLCBOaXRpbiBSYXdhdCB3cm90ZToKPj4K
Pj4KPj4gT24gOC8yMC8yMDI1IDY6MTkgQU0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+PiBP
biBXZWQsIEF1ZyAyMCwgMjAyNSBhdCAwMzo1ODoyNkFNICswNTMwLCBOaXRpbiBSYXdhdCB3cm90
ZToKPj4+PiBBZGQgcmVndWxhdG9yIGxvYWQgdm90aW5nIHN1cHBvcnQgZm9yIFNNODY1MCBhbmQg
U004NzUwIHBsYXRmb3JtcyBieQo+Pj4+IGludHJvZHVjaW5nIGRlZGljYXRlZCByZWd1bGF0b3Ig
YnVsayBkYXRhIGFycmF5cyB3aXRoIHRoZWlyIGxvYWQKPj4+PiB2YWx1ZXMuCj4+Pj4KPj4+PiBU
aGUgbG9hZCByZXF1aXJlbWVudHMgYXJlOgo+Pj4+IC0gU004NjUwOiB2ZGRhLXBoeSAoMjA1bUEp
LCB2ZGRhLXBsbCAoMTcuNW1BKQo+Pj4+IC0gU004NzUwOiB2ZGRhLXBoeSAoMjEzbUEpLCB2ZGRh
LXBsbCAoMTguM21BKQo+Pj4+Cj4+Pj4gVGhpcyBlbnN1cmVzIHN0YWJsZSBvcGVyYXRpb24gYW5k
IHByb3BlciBwb3dlciBtYW5hZ2VtZW50IGZvciB0aGVzZQo+Pj4+IHBsYXRmb3JtcyB3aGVyZSBy
ZWd1bGF0b3JzIGFyZSBzaGFyZWQgYmV0d2VlbiB0aGUgUU1QIFVTQiBQSFkgYW5kCj4+Pj4gb3Ro
ZXIgSVAgYmxvY2tzIGJ5IHNldHRpbmcgYXBwcm9wcmlhdGUgcmVndWxhdG9yIGxvYWQgY3VycmVu
dHMgZHVyaW5nIFBIWQo+Pj4+IG9wZXJhdGlvbnMuCj4+Pj4KPj4+PiBDb25maWd1cmF0aW9ucyB3
aXRob3V0IHNwZWNpZmljIGxvYWQgcmVxdWlyZW1lbnRzIHdpbGwgY29udGludWUgdG8gd29yawo+
Pj4+IHVuY2hhbmdlZCwgYXMgaW5pdF9sb2FkX3VBIHJlbWFpbnMgemVyby1pbml0aWFsaXplZCB3
aGVuIC5pbml0X2xvYWRfdUEKPj4+PiBpcyBub3QgcHJvdmlkZWQuCj4+Pgo+Pj4gQ2FuIHdlIHBs
ZWFzZSBnZXQgY29uZmlndXJhdGlvbiBmb3IgdGhlIHJlc3Qgb2YgdGhlIHBsYXRmb3Jtcz8KPj4K
Pj4gSGkgRG1pdHJ5LAo+Pgo+PiBJZiB5b3UncmUgb2theSB3aXRoIGl0LCBjYW4gSSBtZXJnZSB0
aGUgY29uZmlndXJhdGlvbiBmb3IgdGhlIHJlbWFpbmluZwo+PiBwbGF0Zm9ybXMgaW4gdGhlIG5l
eHQgcGF0Y2ggc2VyaWVzIGFmdGVyIEkgY29tcGxldGUgdGVzdGluZyBvbiBhbGwgcmVtYWluaW5n
Cj4+IHBsYXRmb3Jtcy4KPiAKPiBZb3UgZG9uJ3QgbmVlZCB0byB0ZXN0LCBmaW5kaW5nIE1TTTg5
OTYgb3IgOTggbWlnaHQgYmUgdHJvdWJsZXNvbWUuIEp1c3QKPiBmaWxsIGluIHRoZSB2YWx1ZXMg
ZnJvbSB0aGUgaGFyZHdhcmUgZG9jdW1lbnRhdGlvbi4KCkhpIERtaXRyeSwKCldoaWxlIGltcGxl
bWVudGluZyBjaGFuZ2VzIGZvciBhbGwgcmVtYWluaW5nIHBsYXRmb3JtLCBJIG5vdGljZWQgdGhh
dCAKdGhlICJyZWd1bGF0b3ItYWxsb3ctc2V0LWxvYWQiIHByb3BlcnR5IGlzIGRlZmluZWQgb25s
eSBmb3IgU004NzUwIGFuZCAKU004ODUwIHdpdGhpbiB0aGUgUE1JQyBQSFkgYW5kIFBMTCBkZXZp
Y2UgdHJlZSBub2RlcyB3aGljaCBtZWFucyB0aGF0IApldmVuIGlmIHRoZSBVRlMgUEhZIGRyaXZl
ciBpcyB1cGRhdGVkIHRvIHZvdGUgZm9yIHRoaXMgY29uZmlndXJhdGlvbiBvbiAKb3RoZXIgcGxh
dGZvcm1zLCBpdCB3aWxsIGhhdmUgbm8gaW1wYWN0LgoKU2hvdWxkIEkgc3RpbGwgcHJvY2VlZCB3
aXRoIGFwcGx5aW5nIHRoZSBjaGFuZ2UgYWNyb3NzIGFsbCBwbGF0Zm9ybSwgb3IgCmxpbWl0IGl0
IHRvIGp1c3QgdGhlIFNNODc1MCBhbmQgU004ODUwIGRyaXZlcnM/IFdoYXTigJlzIHlvdXIgcmVj
b21tZW5kYXRpb24/Cgo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KLy8gRGV2aWNlIHRyZWU6CnZyZWdfbDFq
XzBwOTE6IGxkbzEgewogICAgIHJlZ3VsYXRvci1uYW1lID0gInZyZWdfbDFqXzBwOTEiOwogICAg
IHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDg4MDAwMD47CiAgICAgcmVndWxhdG9yLW1heC1t
aWNyb3ZvbHQgPSA8OTIwMDAwPjsKICAgICByZWd1bGF0b3ItaW5pdGlhbC1tb2RlID0gPFJQTUhf
UkVHVUxBVE9SX01PREVfSFBNPjsKICAgICByZWd1bGF0b3ItYWxsb3ctc2V0LWxvYWQ7CiAgICAg
cmVndWxhdG9yLWFsbG93ZWQtbW9kZXMgPSA8UlBNSF9SRUdVTEFUT1JfTU9ERV9MUE0gClJQTUhf
UkVHVUxBVE9SX01PREVfSFBNPjsKfTsKCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQpkcml2ZXJzL3JlZ3Vs
YXRvci9vZl9yZWd1bGF0b3IuYwoKCmlmIChvZl9wcm9wZXJ0eV9yZWFkX2Jvb2wobnAsICJyZWd1
bGF0b3ItYWxsb3ctc2V0LWxvYWQiKSkKCQljb25zdHJhaW50cy0+dmFsaWRfb3BzX21hc2sgfD0g
UkVHVUxBVE9SX0NIQU5HRV9EUk1TOwoKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Ci8vZHJpdmVycy9yZWd1
bGF0b3IvY29yZS5jCnN0YXRpYyBpbnQgZHJtc191QV91cGRhdGUoc3RydWN0IHJlZ3VsYXRvcl9k
ZXYgKnJkZXYpCnsKICAgICAuLi4KICAgICBpZiAoIXJlZ3VsYXRvcl9vcHNfaXNfdmFsaWQocmRl
diwgUkVHVUxBVE9SX0NIQU5HRV9EUk1TKSkgewogICAgICAgICByZGV2X2RiZyhyZGV2LCAiRFJN
UyBvcGVyYXRpb24gbm90IGFsbG93ZWRcbiIpOwogICAgICAgICByZXR1cm4gMDsKICAgICB9CiAg
ICAgLi4uCn0KCgpSZWdhcmRzLApOaXRpbgoKCgoKPiAKCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
