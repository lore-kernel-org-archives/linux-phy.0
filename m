Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D227CA0ED1
	for <linux-phy@archiver.kernel.org>; Mon, 11 Aug 2025 22:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:CC:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0GfjTMovC2C30scBUG9MCyCfuf1Lr+9iSSHVixKsEY8=; b=PH+v5DX5Cl+AY9
	xGt2J3eMCxxlhtGcy0VOmL24vi7lhYuo+vimaRD2pSaolBkjgdk0IzH7eQM3BUPOlNNS3O4c0DMC1
	kmcgYuZhjoTxemXYMfXKxbPoyhj6eApWzelywHS4Aad4JkwQAAxiyVzJ5ShYvXyX/GucrJYQS/m83
	k3XNTnHv4k+30Uw8pXDoLJZ3VgzUeHPEvmhgn4Xlcg9xzCNoSMU4hGJwM/IABB9enCQtZ8LiXrXXh
	1sG7+X6uaEHwduL9oT/WOgjF+AJAOrLcX29nxwCpX2B0jbvyj4GyJKt+6VGuts6vhIA6sXfZwaRAQ
	n9PiAyxkc5QyghUVnhOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uladG-00000009Di2-0hiw;
	Mon, 11 Aug 2025 22:04:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulYcD-00000008yqm-3xrG
	for linux-phy@bombadil.infradead.org;
	Mon, 11 Aug 2025 19:55:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:References:CC:To:Subject:From:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=KfHUeSvunMVZXW/0xTJlqcO2cDUnQhLeJQeZc2lgGmw=; b=BOEKIt6k7Qha5gzqYq1nVupOb3
	/EZH51CZ0XxoR4e5UuDDbR378PZGfkjm1URY3jC/5k3mfUmmuw0VZabdm/eaoMm+i8VSZUB4Vwfya
	Z3xcjKzc3raJVY4Qcrels3/HoJqdap/po1pqlLp7WYHalvlzhho6m0rUAaf7JANTHokIR7pa8OD/0
	eE73XT1MEIAttn3eww3BJLqYuDAu+OJDwe9+i4dv7NbzN+2fd06FnmG06ftYikFziWtNgdvCFAfhO
	/wk63HhH4j9mRK49tt6G5PaOklXOWIBIat7tPxg63pJOyFuZg6JC1TQVLwpaPx8haqZkEpTFeLvw2
	H0pw15CQ==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulYcA-0000000FVbW-1s39
	for linux-phy@lists.infradead.org;
	Mon, 11 Aug 2025 19:55:28 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57BGK2Rp005401;
	Mon, 11 Aug 2025 19:55:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KfHUeSvunMVZXW/0xTJlqcO2cDUnQhLeJQeZc2lgGmw=; b=H1soPVDTG5ZfLDqw
	4LDHTwnbU8IijG1w1qgMeIij9ZsFxOPXlkr13E0UF/uGw//5r0CZrIA4DwMv1xqV
	1ii9cTnzWwj++y/k3t+YEMeNx/89sbSrxY7HHc37DExobadRvRrNAyawyebE0Dyl
	tR6FW4JGXwsiAcl8HTZ7bqm4MCx698PKouSdAz1t2n5Vc+gT+4FeVbHvOwJYU7+x
	yz8mAQOSWFEwS7MLy/dY1ayxLlmmhXxwFVTHqbS638YCR7xBeviWegEf5JVdce0y
	CZBrFSfY9AatFO/R8OYWRH8R08W30fmDb9dWLI1N5whs/j9H9bn5LqAzJJUbrn44
	pWdEMw==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48eqhx3vsa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 11 Aug 2025 19:55:17 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 57BJtD4p018880
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 11 Aug 2025 19:55:13 GMT
Received: from [10.216.45.49] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Mon, 11 Aug
 2025 12:55:06 -0700
Message-ID: <89ab7e51-f82e-465a-aa22-1ccb8e7a0f6d@quicinc.com>
Date: Tue, 12 Aug 2025 01:25:02 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: Re: [PATCH V1 2/4] arm64: dts: qcom: sm8750: add max-microamp for UFS
 PHY and PLL supplies
To: Manivannan Sadhasivam <mani@kernel.org>
CC: Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@oss.qualcomm.com>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <conor+dt@kernel.org>, <bvanassche@acm.org>,
        <andersson@kernel.org>, <neil.armstrong@linaro.org>,
        <dmitry.baryshkov@oss.qualcomm.com>, <konradybcio@kernel.org>,
        <krzk+dt@kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-3-quic_nitirawa@quicinc.com>
 <20250808-calm-boa-of-swiftness-a4a7ce@kuoka>
 <9af71063-0629-4ccc-bc76-3fb588677bf4@oss.qualcomm.com>
 <292907f3-25d6-40d9-be6e-b6b83e646d73@kernel.org>
 <5e32be05-0dbd-4d6f-879d-8ce97fb430ba@quicinc.com>
 <rh3qxu2rijpjswfash3rpmmh6sw47l3b6j5p5upti6zffknasz@cywwm3fypghd>
Content-Language: en-US
In-Reply-To: <rh3qxu2rijpjswfash3rpmmh6sw47l3b6j5p5upti6zffknasz@cywwm3fypghd>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEwMDA1NyBTYWx0ZWRfX29LYPgOK69j7
 WPYRn8TWyz/QBNXJPO8t6uM/RXeRr22MqKeb019j7nXaACfNfubC3dg0wWwrim54I2XyHO5ExnH
 U+cr7ZdJf0byL13IJHBZ6gB/Vy56gcgk5+QKDpHQO3lxMbGqd9ynp0iHDDN7WDUtAew9F0Hr2E/
 APVvkJJpdTqK1GwORtZOP7XJR5GkLqUmi26ph2eT8mKzG4B29+85YDaMqMdbNkZ0WlOThPBA1Tq
 mkNgAZyovZ4Z5TbkAul21FxjMpbygzIj9F3DC8qP0HeoMXtlTiMiZnJ6Kced/boF9IFeWH8E+cl
 xNB/n17Qtiu0IVfG4gMM6ZbD4Nxw6douJ6tB5rR/AsJkc2q9e/fnfLuV12mSMYSFB5jQk4VBcVe
 3Z/fEKb+
X-Proofpoint-GUID: rKsQekp9N15GyyvY17td_m8XJLtGO9gB
X-Authority-Analysis: v=2.4 cv=aYNhnQot c=1 sm=1 tr=0 ts=689a4aa5 cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10
 a=ulfgkXGRXDS8zX5WHX8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: rKsQekp9N15GyyvY17td_m8XJLtGO9gB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_04,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508100057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_205527_106168_9543203D 
X-CRM114-Status: GOOD (  29.08  )
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

CgpPbiA4LzkvMjAyNSA0OjM3IFBNLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gT24g
RnJpLCBBdWcgMDgsIDIwMjUgYXQgMDg6NDk6NDVQTSBHTVQsIE5pdGluIFJhd2F0IHdyb3RlOgo+
Pgo+Pgo+PiBPbiA4LzgvMjAyNSAzOjA5IFBNLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+
Pj4gT24gMDgvMDgvMjAyNSAxMDo1OCwgS29ucmFkIER5YmNpbyB3cm90ZToKPj4+PiBPbiA4Lzgv
MjUgOToyOSBBTSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4+Pj4gT24gV2VkLCBBdWcg
MDYsIDIwMjUgYXQgMDk6MTM6MzhQTSArMDUzMCwgTml0aW4gUmF3YXQgd3JvdGU6Cj4+Pj4+PiBB
ZGQgYHZkZGEtcGh5LW1heC1taWNyb2FtcGAgYW5kIGB2ZGRhLXBsbC1tYXgtbWljcm9hbXBgIHBy
b3BlcnRpZXMgdG8KPj4+Pj4+IHRoZSBVRlMgUEhZIG5vZGUgaW4gdGhlIGRldmljZSB0cmVlLgo+
Pj4+Pj4KPj4+Pj4+IFRoZXNlIHByb3BlcnRpZXMgZGVmaW5lIHRoZSBtYXhpbXVtIGN1cnJlbnQg
KGluIG1pY3JvYW1wcykgZXhwZWN0ZWQKPj4+Pj4+IGZyb20gdGhlIFBIWSBhbmQgUExMIHJlZ3Vs
YXRvcnMuIFRoaXMgYWxsb3dzIHRoZSBQSFkgZHJpdmVyIHRvCj4+Pj4+PiBjb25maWd1cmUgcmVn
dWxhdG9yIGxvYWQgYWNjdXJhdGVseSBhbmQgZW5zdXJlIHByb3BlciByZWd1bGF0b3IKPj4+Pj4+
IG1vZGUgYmFzZWQgb24gbG9hZCByZXF1aXJlbWVudHMuCj4+Pj4+Cj4+Pj4+IFRoYXQncyBub3Qg
dGhlIHByb3BlcnR5IG9mIHBoeSwgYnV0IHJlZ3VsYXRvci4KPj4+Pj4KPj4+Pj4gQWxzbyByZWFz
b25pbmcgaXMgaGVyZSBpbmNvbXBsZXRlIC0geW91IGp1c3QgcG9zdCBkb3duc3RyZWFtIGNvZGUu
IDovCj4+Pj4KPj4+PiBUaGUgcmVhc29uIGZvciB0aGlzIGNoYW5nZSBpcyBnb29kLCBidXQgcGVy
aGFwcyBub3QgZXhwbGFpbmVkIGNsZWFybHkKPj4+Pgo+Pj4+IEFsbCBvZiB0aGVzZSB2YWx1ZXMg
cmVmZXIgdG8gdGhlIG1heGltdW0gY3VycmVudCBkcmF3IHRoYXQgbmVlZHMgdG8gYmUKPj4+PiBh
bGxvY2F0ZWQgb24gYSBzaGFyZWQgdm9sdGFnZSBzdXBwbHkgZm9yIHRoaXMgcGVyaXBoZXJhbCAo
YmVjYXVzZSB0aGUKPj4+Cj4+Pgo+Pj4gSXQgc291bmRzIHZlcnkgZGlmZmVyZW50IHRoYW4gaG93
IG11Y2ggaXQgY2FuIGJlIGRyYXduLiBIb3cgbXVjaCBjYW4gYmUKPj4+IGRyYXduIGlzIHRoZSBw
cm9wZXJ0eSBvZiB0aGUgcmVndWxhdG9yLiBUaGUgcmVndWxhdG9yIGtub3dzIGhvdyBtdWNoCj4+
PiBjdXJyZW50IGl0IGNhbiBzdXBwb3J0Lgo+Pgo+PiBDb25zdW1lcnMgYXJlIGF3YXJlIG9mIHRo
ZWlyIGR5bmFtaWMgbG9hZCByZXF1aXJlbWVudHMsIHdoaWNoIGNhbiB2YXJ5IGF0Cj4+IHJ1bnRp
bWXigJR0aGlzIGF3YXJlbmVzcyBpcyBub3QgcmVjaXByb2NhbC4gVGhlIHBvd2VyIGdyaWQgaXMg
ZGVzaWduZWQgYmFzZWQKPj4gb24gdGhlIGNvbGxlY3RpdmUgbG9hZCByZXF1aXJlbWVudHMgb2Yg
YWxsIGNsaWVudHMgc2hhcmluZyB0aGUgc2FtZSBwb3dlcgo+PiByYWlsLgo+Pgo+PiBTaW5jZSBy
ZWd1bGF0b3JzIGNhbiBvcGVyYXRlIGluIG11bHRpcGxlIG1vZGVzIGZvciBwb3dlciBvcHRpbWl6
YXRpb24sIGVhY2gKPj4gY29uc3VtZXIgaXMgZXhwZWN0ZWQgdG8gdm90ZSBmb3IgaXRzIHJ1bnRp
bWUgcG93ZXIgbmVlZHMuIFRoZXNlIHZvdGVzIGhlbHAKPj4gdGhlIHJlZ3VsYXRvciBmcmFtZXdv
cmsgbWFpbnRhaW4gdGhlIHJlZ3VsYXRvciBpbiB0aGUgYXBwcm9wcmlhdGUgbW9kZSwKPj4gZW5z
dXJpbmcgc3RhYmxlIGFuZCBlZmZpY2llbnQgb3BlcmF0aW9uIGFjcm9zcyBhbGwgY2xpZW50cy4K
Pj4KPj4KPj4gU3RhYmlsaXR5IGlzc3VlcyBjYW4gYXJpc2UgaWYgZWFjaCBjb25zdW1lciBkb2Vz
IG5vdCB2b3RlIGZvciBpdHMgb3duIGxvYWQKPj4gcmVxdWlyZW1lbnQuCj4+IEZvciBleGFtcGxl
LCBjb25zaWRlciBhIHNjZW5hcmlvIHdoZXJlIGEgc2luZ2xlIHJlZ3VsYXRvciBpcyBzaGFyZWQg
YnkgdHdvCj4+IGNvbnN1bWVycy4KPj4KPj4gSWYgdGhlIGZpcnN0IGNsaWVudCByZXF1ZXN0cyBs
b3ctcG93ZXIgbW9kZSBieSB2b3RpbmcgZm9yIHplcm8gb3IgYSBtaW5pbWFsCj4+IGxvYWQgdG8g
cmVndWxhdG9yIGZyYW1ld29yayBkdXJpbmcgaXRzIGRyaXZlcidzIExQTSBzZXF1ZW5jZSwgYW5k
IHRoZSBzZWNvbmQKPj4gY2xpZW50IChlLmcuLCBVRlMgUEhZKSBoYXMgbm90IHZvdGVkIGZvciBp
dHMgb3duIGxvYWQgcmVxdWlyZW1lbnQgdGhyb3VnaAo+PiB0aGUgcmVndWxhdG9yIGZyYW1ld29y
aywgdGhlIHJlZ3VsYXRvciBtYXkgdHJhbnNpdGlvbiB0byBsb3ctcG93ZXIgbW9kZS4KPj4gVGhp
cyBjYW4gbGVhZCB0byBpc3N1ZXMgZm9yIHRoZSBzZWNvbmQgY2xpZW50LCB3aGljaCBleHBlY3Rz
IGEgaGlnaGVyIHBvd2VyCj4+IHN0YXRlIHRvIG9wZXJhdGUgY29ycmVjdGx5Lgo+Pgo+IAo+IEkg
dGhpbmsgd2UgYWxsIGFncmVlIG9uIGNvbnN1bWVycyBzZXR0aW5nIHRoZSBsb2FkIGZvciBzaGFy
ZWQgcmVndWxhdG9ycywgYnV0Cj4gdGhlIG5hbWluZyBhbmQgZGVzY3JpcHRpb24gb2YgdGhlIERU
IHByb3BlcnR5IGlzIHdoYXQgY2F1c2luZyBjb25mdXNpb24gaGVyZS4KPiBUaGVyZSBpcyBubyB3
YXkgdGhlIGNvbnN1bWVycyBjYW4gc2V0IHRoZSAqbWF4KiBjdXJyZW50IGRyYXcgZm9yIGEgc2hh
cmVkCj4gcmVndWxhdG9yLiBUaGV5IGNhbiBvbmx5IHJlcXVlc3QgbG9hZCBhcyBwZXIgdGhlaXIg
cmVxdWlyZW1lbnQuIEJ1dCB0aGUgbWF4Cj4gY3VycmVudCBkcmF3IGlzIGEgcmVndWxhdG9yIGNv
bnN0cmFpbnQuCgpUbyBhdm9pZCBjb25mdXNpb24gd2l0aCByZWd1bGF0b3ItbGV2ZWwgY29uc3Ry
YWludHMsIEknbSBvcGVuIHRvIApyZW5hbWluZyB0aGUgcHJvcGVydHkgdmRkYS1waHktbWF4LW1p
Y3JvYW1wIHRvIHNvbWV0aGluZyBtb3JlIApkZXNjcmlwdGl2ZSwgc3VjaCBhcyB2ZGRhLXBoeS1j
bGllbnQtcGVhay1sb2FkLW1pY3JvYW1wIG9yIAp2ZGRhLXBoeS1wZWFrLWxvYWQtbWljcm9hbXAu
IEFsb25nIHdpdGggdXBkYXRpbmcgdGhlIGRlc2NyaXB0aW9uLCB0aGlzIAp3b3VsZCBiZXR0ZXIg
cmVmbGVjdCB0aGUgcHJvcGVydHkncyBhY3R1YWwgaW50ZW50OiB0byBzcGVjaWZ5IHRoZSAKbWF4
aW11bSBjdXJyZW50IGEgY2xpZW50IG1heSBkcmF3IGR1cmluZyBwZWFrIG9wZXJhdGlvbiwgcmF0
aGVyIHRoYW4gCmltcGx5aW5nIGl0IGRlZmluZXMgdGhlIHJlZ3VsYXRvcuKAmXMgbWF4aW11bSBj
YXBhYmlsaXR5LgoKCkhhdmluZyBzYWlkIHRoYXQsIEkgaGFkIGEgZm9sbG93LXVwIGRpc2N1c3Np
b24gd2l0aCB0aGUgUEhZIGRlc2lnbmVyIHRvIApjb25maXJtIHdoZXRoZXIgdGhpcyB2YWx1ZSBj
b3VsZCB2YXJ5IGF0IHRoZSBib2FyZCBsZXZlbC4gQmFzZWQgb24gdGhlaXIgCnJlc3BvbnNlLCBp
dCdzIGEgZml4ZWQgdmFsdWUgZm9yIHRoZSBTb0MgYW5kIGRvZXMgbm90IGNoYW5nZSBhY3Jvc3Mg
CmRpZmZlcmVudCBib2FyZHMoYXRsZWFzdCBmb3Igbm93KS4gVGhlcmVmb3JlLCBJIGNhbiByZW1v
dmUgZnJvbSBkZXZpY2UgCnRyZWUgYW5kIHJlcGxhY2VkIHdpdGggaGFyZGNvZGVkLCBwZXItY29t
cGF0aWJsZSBkYXRhIGluIHRoZSBkcml2ZXIuCgo+IAo+Pgo+Pj4KPj4+Cj4+Pj4gc3VwcGx5J3Mg
Y2FwYWJpbGl0aWVzIGNoYW5nZSBkZXBlbmRpbmcgb24gdGhlIG1heGltdW0gcG90ZW50aWFsIGxv
YWQKPj4+PiBhdCBhbnkgZ2l2ZW4gdGltZSwgd2hpY2ggdGhlIHJlZ3VsYXRvciBkcml2ZXIgbXVz
dCBiZSBhd2FyZSBvZikKPj4+Pgo+Pj4+IFRoaXMgaXMgYSBwcm9wZXJ0eSBvZiBhIHJlZ3VsYXRv
ciAqY29uc3VtZXIqLCBpLmUuIGlmIHdlIGhhZCBhIGNoYWluCj4+Pj4gb2YgTEVEcyBoYW5naW5n
IG9mZiBvZiB0aGlzIHN1cHBseSwgd2UnZCBuZWVkIHRvIHNwZWNpZnkgTlVNX0xFRFMgKgo+Pj4+
IE1BWF9DVVJSIHVuZGVyIHRoZSAibGVkIGNoYWluIiBkZXZpY2UsIHRvIG1ha2Ugc3VyZSB0aGF0
IGlmIHRoZQo+Pj4+IGFnZ3JlZ2F0ZWQgY3VycmVudCByZXF1aXJlbWVudHMgZ28gb3ZlciBhIGNl
cnRhaW4gdGhyZXNob2xkICh3aGljaCBpcwo+Pj4+IHVua25vd24gdG8gTGludXggYW5kIGhpZGRl
biBpbiBSUE1oIGZ3KSwgdGhlIHJlZ3VsYXRvciBjYW4gYmUKPj4+PiByZWNvbmZpZ3VyZWQgdG8g
YWxsb3cgZm9yIGEgaGlnaGVyIGN1cnJlbnQgZHJhdyAobGlrZWx5IGF0IHNvbWUKPj4+PiBkb3du
Z3JhZGUgdG8gZWZmaWNpZW5jeSkKPj4+Cj4+Pgo+Pj4gVGhlIHByb2JsZW0gaXMgdGhhdCByYXRp
b25hbGUgaXMgZG93bnN0cmVhbS4gSW5zdGVhZCBJIHdhbnQgdG8gc2VlIHNvbWUKPj4+IHJlYXNv
bjogZS5nLiBkYXRhc2hlZXRzLCBzcGVjLCB0eXBlIG9mIFVGUyBkZXZpY2UgKHRoYXQgd2FzIHRo
ZSBhcmd1bWVudAo+Pj4gaW4gdGhlIGRyaXZlciBwYXRjaCBkaXNjdXNzaW9uKS4KPj4KPj4KPj4g
VGhlIFBIWSBsb2FkIHJlcXVpcmVtZW50cyBmb3IgY29uc3VtZXJzIHN1Y2ggYXMgVUZTLCBVU0Is
IFBDSWUgYXJlIGRlZmluZWQKPj4gYnkgUXVhbGNvbW3igJlzIFBIWSBJUCBhbmQgYXJlIHdlbGwt
ZG9jdW1lbnRlZCBpbiBRdWFsY29tbeKAmXMgZGF0YXNoZWV0cyBhbmQKPj4gcG93ZXIgZ3JpZCBk
b2N1bWVudGF0aW9uLiBUaGVzZSB2YWx1ZXMgY2FuIGRlcGVuZGluZyBvbiB0aGUgcHJvY2VzcyBv
cgo+PiB0ZWNobm9sb2d5IG5vZGUsIGJvYXJkIGRlc2lnbiwgYW5kIGV2ZW4gdGhlIGNoaXAgZm91
bmRyeSB1c2VkLgo+Pgo+PiBBcyBhIHJlc3VsdCwgdGhlIGxvYWQgdmFsdWVzIGNhbiBkaWZmZXIg
YWNyb3NzIFNvQ3Mgb3IgbWF5IGJlIGV2ZW4KPj4gYm9hcmQodW5saWtlbHkgdGhvdWdoKSBkdWUg
dG8gdmFyaWF0aW9ucyBpbiBhbnkgb2YgdGhlc2UgcGFyYW1ldGVycy4KPj4KPiAKPiBPa2F5LiBU
aGlzIGdvZXMgaW50byB0aGUgY29tbWl0IG1lc3NhZ2UgYW5kIHBvc3NpYmx5IHNvbWUgcGFydCBv
ZiBpdCB0byBwcm9wZXJ0eQo+IGRlc2NyaXB0aW9uIGFsc28uCgoKCgo+IAo+IC0gTWFuaQo+IAoK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
