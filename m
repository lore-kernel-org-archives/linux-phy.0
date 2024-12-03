Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89649E6C610
	for <linux-phy@archiver.kernel.org>; Tue,  3 Dec 2024 07:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FVcP4oW7XJu9aClVV/VX7cR8sd98Lrks6Ew4fBjYKjc=; b=H4Iv95Xgm4nRV0
	qpjKKPMElhQnQ9t9EbTRpA914dSn7q3LHUfP3Ra9pOymMxlcAFmyRMpbbxje/sKm2jH0IQxjAE3Eh
	js884zKSQJS5nNO5RYB64PtvEtOx5AKZ4YHbNwtTJdUigCP46062mf03+voQ4b9SXyKzZEOqZdrAD
	a3Jq/r8soOOrRagqiOCc2SRtM+QCOSDeohrTwruMcCOMS5edAhKv8l4zMD0NvlMAlXFliJQfL2j+5
	Seb2ETBjXFf1JAXtav9VGHEnCluWs/GbS0ZbvFRvNIqV7LqPvBGJ3J2OB9slxPHDTN+NpgVPOIkOh
	KpM9+TyfPYJuHXCrvXOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tINY1-00000008YZQ-2j1A;
	Tue, 03 Dec 2024 07:42:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tINXz-00000008YYr-243A
	for linux-phy@lists.infradead.org;
	Tue, 03 Dec 2024 07:42:16 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B373dY7031023;
	Tue, 3 Dec 2024 07:42:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iHnc1l0YpCh8KNyPY+LZmpCKvM4O8DE/NokifUNNwt0=; b=JEo43xnvdfC4duyA
	sD1c/RQnr6HUVckU3xD9c0AGtAbSyBxmDvkHjhTOl9zm6ugJfvC94y4otx+Ag0wt
	17rjQoBNQvF0/Y6P2snPJpP9T78cLwaHzrBVmaSQlipNYPSkEgB9TmckN9d9JdTT
	N4FwVBT/FjnTxAP/Be2ACpkIWHbdU53KEev5tU3od+qxD4dATN3SdxEGFkFhxNNO
	DlN1LpvWYbdgPZXARlBC0YoDs2kmq5UHX6kXcECwDwCfAeSrzx3zzsvpyBRw65yt
	XIkh86WIYn4cZbW1Ke5g+ZSq3Qe/h+2V3sZkguBPaPuzQyClFFkAs9GYtcW2FkP5
	WF2IoQ==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 439w90r316-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 03 Dec 2024 07:42:05 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4B37g4Lf004198
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 3 Dec 2024 07:42:04 GMT
Received: from [10.64.16.135] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 2 Dec 2024
 23:41:56 -0800
Message-ID: <86b9a8be-8972-4c19-af0c-da6b3667cbf4@quicinc.com>
Date: Tue, 3 Dec 2024 15:41:53 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/8] drm/msm/dp: Add maximum width limitation for modes
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
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-6-09a4338d93ef@quicinc.com>
 <CAA8EJpprTGRTxO+9BC6GRwxE4A3CuvmySsxS2Nh4Tqj0nDRT_Q@mail.gmail.com>
 <95a78722-8266-4d5d-8d2f-e8efa1aa2e87@quicinc.com>
 <CAA8EJpo-1o9i4JhZgdbvRxvoYQE2v18Lz_8dVg=Za7a_pk5EDA@mail.gmail.com>
From: Xiangxu Yin <quic_xiangxuy@quicinc.com>
In-Reply-To: <CAA8EJpo-1o9i4JhZgdbvRxvoYQE2v18Lz_8dVg=Za7a_pk5EDA@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Q1qP-vfrtkvEYCb2L1IbQAc1v8C0dnsc
X-Proofpoint-GUID: Q1qP-vfrtkvEYCb2L1IbQAc1v8C0dnsc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=655 bulkscore=0
 impostorscore=0 phishscore=0 suspectscore=0 adultscore=0 mlxscore=0
 spamscore=0 clxscore=1015 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412030065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_234215_651321_A4AB4644 
X-CRM114-Status: GOOD (  13.21  )
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

CgpPbiAxMi8yLzIwMjQgNTozMiBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiBNb24s
IDIgRGVjIDIwMjQgYXQgMTE6MDUsIFhpYW5neHUgWWluIDxxdWljX3hpYW5neHV5QHF1aWNpbmMu
Y29tPiB3cm90ZToKPj4KPj4KPj4KPj4gT24gMTEvMjkvMjAyNCA5OjUyIFBNLCBEbWl0cnkgQmFy
eXNoa292IHdyb3RlOgo+Pj4gT24gRnJpLCAyOSBOb3YgMjAyNCBhdCAwOTo1OSwgWGlhbmd4dSBZ
aW4gPHF1aWNfeGlhbmd4dXlAcXVpY2luYy5jb20+IHdyb3RlOgo+Pj4+Cj4+Pj4gSW50cm9kdWNl
IGEgbWF4aW11bSB3aWR0aCBjb25zdHJhaW50IGZvciBtb2RlcyBkdXJpbmcgdmFsaWRhdGlvbi4g
VGhpcwo+Pj4+IGVuc3VyZXMgdGhhdCB0aGUgbW9kZXMgYXJlIGZpbHRlcmVkIGJhc2VkIG9uIGhh
cmR3YXJlIGNhcGFiaWxpdGllcywKPj4+PiBzcGVjaWZpY2FsbHkgYWRkcmVzc2luZyB0aGUgbGlu
ZSBidWZmZXIgbGltaXRhdGlvbnMgb2YgaW5kaXZpZHVhbCBwaXBlcy4KPj4+Cj4+PiBUaGlzIGRv
ZXNuJ3QgZGVzY3JpYmUsIHdoeSB0aGlzIGlzIG5lY2Vzc2FyeS4gV2hhdCBkb2VzICJidWZmZXIK
Pj4+IGxpbWl0YXRpb25zIG9mIGluZGl2aWR1YWwgcGlwZXMiIG1lYW4/Cj4+PiBJZiB0aGUgcGxh
dGZvcm1zIGhhdmUgaHcgY2FwYWJpbGl0aWVzIGxpa2UgYmVpbmcgdW5hYmxlIHRvIHN1cHBvcnQg
OGsKPj4+IG9yIDEwaywgaXQgc2hvdWxkIGdvIHRvIHBsYXRmb3JtIGRhdGEKPj4+Cj4+IEl0J3Mg
U1NQUCBsaW5lIGJ1ZmZlciBsaW1pdGF0aW9uIGZvciB0aGlzIHBsYXRmb3JtIGFuZCBvbmx5IHN1
cHBvcnQgdG8gMjE2MCBtb2RlIHdpZHRoLgo+PiBUaGVuLCBzaGFsbCBJIGFkZCBtYXhfd2lkdGgg
Y29uZmlnIHRvIHN0cnVjdCBtc21fZHBfZGVzYyBpbiBuZXh0IHBhdGNoPyBmb3Igb3RoZXIgcGxh
dGZvcm0gd2lsbCBzZXQgZGVmdWFsdCB2YWx1ZSB0byDigJhEUF9NQVhfV0lEVEggNzY4MCcKPiAK
PiBTU1BQIGxpbmUgYnVmZmVyIGxpbWl0YXRpb25zIGFyZSB0byBiZSBoYW5kbGVkIGluIHRoZSBE
UFUgZHJpdmVyLiBUaGUKPiBEUCBkcml2ZXIgc2hvdWxkbid0IGNhcmUgYWJvdXQgdGhvc2UuCj4g
Ck9rLCBXaWxsIGRyb3AgdGhpcyBwYXJ0IGluIG5leHQgcGF0Y2guCj4+Pj4KPj4+PiBTaWduZWQt
b2ZmLWJ5OiBYaWFuZ3h1IFlpbiA8cXVpY194aWFuZ3h1eUBxdWljaW5jLmNvbT4KPj4+PiAtLS0K
Pj4+PiAgZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9kaXNwbGF5LmMgfCAgMyArKysKPj4+PiAg
ZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9kaXNwbGF5LmggfCAgMSArCj4+Pj4gIGRyaXZlcnMv
Z3B1L2RybS9tc20vZHAvZHBfcGFuZWwuYyAgIHwgMTMgKysrKysrKysrKysrKwo+Pj4+ICBkcml2
ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX3BhbmVsLmggICB8ICAxICsKPj4+PiAgNCBmaWxlcyBjaGFu
Z2VkLCAxOCBpbnNlcnRpb25zKCspCj4gCj4gCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
