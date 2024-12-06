Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7245E7717B
	for <linux-phy@archiver.kernel.org>; Fri,  6 Dec 2024 20:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U9vTAbOT7W6PF/GwsZ8kHhFBkC3zZVSsuYlbKsExBTA=; b=MnOEMx4x4MZ3zt
	uOL4zmWUoDhaM25niwDizKY/Tsq1j9xxS7fJz2yegOQtu0FnqsHQ04x7asnkM7ytsFH4Cj7AYoOgP
	4eWcEiEfArRcT49Ulqs345whb8up3j6QFmr3q1mNPCpt4ebB+gleJOMq+Z4t88TJ0+NMO1hr9gV7z
	VXRyk9Ykz+/JCdZmlCzjl1hzZuhj61kn6DCVUCOcd5C9D3NQMjBg0p1onqmwgn96fquCG46+zCqeQ
	SwKoLOMev34MjvJ2+vauAmHRZQHK0yivbtafe7ajam4Xe3g2yw+qbRg+iKKr8kLoO9C8H8d7nDqfq
	cJuvdLPj3iQ4aFzpTHMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJel0-00000002fWp-1Osp;
	Fri, 06 Dec 2024 20:16:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJehn-00000002f5V-0eFv
	for linux-phy@lists.infradead.org;
	Fri, 06 Dec 2024 20:13:40 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B69SV3o016306;
	Fri, 6 Dec 2024 20:13:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sK9CAPNDZeTo2GKy/eE9+KhBdkAX/n3QL66YxJ4ZiLE=; b=l+LlE6XIvnMS4k6R
	k3rLNoqzcYI7nd1Eoy/yVTc8+jdUt/ctPOAz0JlrpT08qdd033do9RWpLBmmTYwj
	TdFhNj9X6SxANG4jHtM8A1FAf+25gLGBs3/pD0dwhy2iDHh5QZhyEhy3EVW2G/E1
	/nEaVXFcbuJzRYA4nv47Z5101CK4vJ78hhd3MIdFCDAW8vDoumlBwP3Jcat8RhIF
	z3PHSstn24PXMe/Dqkw/au5h2yRoF3awK7qJqnZeyV39VRruN7HDVxQBsvIZzket
	dJ0As5DBfO/NXObseu/fyysiqeH3I0F2jyG5m0mhthB9K1QWyYL/bkJbUyFlCgWD
	Ff+Xfw==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43bxny9mh8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 06 Dec 2024 20:13:30 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4B6KDTYh014430
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 6 Dec 2024 20:13:29 GMT
Received: from [10.110.95.46] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 6 Dec 2024
 12:13:25 -0800
Message-ID: <3e7660b3-934a-4b11-82a3-48137d63ea5d@quicinc.com>
Date: Fri, 6 Dec 2024 12:13:23 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/8] drm/msm/dp: Add maximum width limitation for modes
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Xiangxu Yin
	<quic_xiangxuy@quicinc.com>
CC: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        "Marijn
 Suijten" <marijn.suijten@somainline.org>,
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
 <86b9a8be-8972-4c19-af0c-da6b3667cbf4@quicinc.com>
 <fb6enh3wzusadc6r7clg7n7ik2jsucimoi7dnecnsstcz4r6e6@dtahvlm522jj>
Content-Language: en-US
From: Abhinav Kumar <quic_abhinavk@quicinc.com>
In-Reply-To: <fb6enh3wzusadc6r7clg7n7ik2jsucimoi7dnecnsstcz4r6e6@dtahvlm522jj>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: _ttJL0RcNHq4tleLBzgk4VqbRrdUqimV
X-Proofpoint-ORIG-GUID: _ttJL0RcNHq4tleLBzgk4VqbRrdUqimV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 mlxscore=0
 phishscore=0 spamscore=0 bulkscore=0 suspectscore=0 adultscore=0
 lowpriorityscore=0 clxscore=1011 mlxlogscore=717 malwarescore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412060152
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_121339_313029_DB830109 
X-CRM114-Status: GOOD (  17.99  )
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

CgpPbiAxMi8zLzIwMjQgNTo1OCBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiBUdWUs
IERlYyAwMywgMjAyNCBhdCAwMzo0MTo1M1BNICswODAwLCBYaWFuZ3h1IFlpbiB3cm90ZToKPj4K
Pj4KPj4gT24gMTIvMi8yMDI0IDU6MzIgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+PiBP
biBNb24sIDIgRGVjIDIwMjQgYXQgMTE6MDUsIFhpYW5neHUgWWluIDxxdWljX3hpYW5neHV5QHF1
aWNpbmMuY29tPiB3cm90ZToKPj4+Pgo+Pj4+Cj4+Pj4KPj4+PiBPbiAxMS8yOS8yMDI0IDk6NTIg
UE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+Pj4+IE9uIEZyaSwgMjkgTm92IDIwMjQgYXQg
MDk6NTksIFhpYW5neHUgWWluIDxxdWljX3hpYW5neHV5QHF1aWNpbmMuY29tPiB3cm90ZToKPj4+
Pj4+Cj4+Pj4+PiBJbnRyb2R1Y2UgYSBtYXhpbXVtIHdpZHRoIGNvbnN0cmFpbnQgZm9yIG1vZGVz
IGR1cmluZyB2YWxpZGF0aW9uLiBUaGlzCj4+Pj4+PiBlbnN1cmVzIHRoYXQgdGhlIG1vZGVzIGFy
ZSBmaWx0ZXJlZCBiYXNlZCBvbiBoYXJkd2FyZSBjYXBhYmlsaXRpZXMsCj4+Pj4+PiBzcGVjaWZp
Y2FsbHkgYWRkcmVzc2luZyB0aGUgbGluZSBidWZmZXIgbGltaXRhdGlvbnMgb2YgaW5kaXZpZHVh
bCBwaXBlcy4KPj4+Pj4KPj4+Pj4gVGhpcyBkb2Vzbid0IGRlc2NyaWJlLCB3aHkgdGhpcyBpcyBu
ZWNlc3NhcnkuIFdoYXQgZG9lcyAiYnVmZmVyCj4+Pj4+IGxpbWl0YXRpb25zIG9mIGluZGl2aWR1
YWwgcGlwZXMiIG1lYW4/Cj4+Pj4+IElmIHRoZSBwbGF0Zm9ybXMgaGF2ZSBodyBjYXBhYmlsaXRp
ZXMgbGlrZSBiZWluZyB1bmFibGUgdG8gc3VwcG9ydCA4awo+Pj4+PiBvciAxMGssIGl0IHNob3Vs
ZCBnbyB0byBwbGF0Zm9ybSBkYXRhCj4+Pj4+Cj4+Pj4gSXQncyBTU1BQIGxpbmUgYnVmZmVyIGxp
bWl0YXRpb24gZm9yIHRoaXMgcGxhdGZvcm0gYW5kIG9ubHkgc3VwcG9ydCB0byAyMTYwIG1vZGUg
d2lkdGguCj4+Pj4gVGhlbiwgc2hhbGwgSSBhZGQgbWF4X3dpZHRoIGNvbmZpZyB0byBzdHJ1Y3Qg
bXNtX2RwX2Rlc2MgaW4gbmV4dCBwYXRjaD8gZm9yIG90aGVyIHBsYXRmb3JtIHdpbGwgc2V0IGRl
ZnVhbHQgdmFsdWUgdG8g4oCYRFBfTUFYX1dJRFRIIDc2ODAnCj4+Pgo+Pj4gU1NQUCBsaW5lIGJ1
ZmZlciBsaW1pdGF0aW9ucyBhcmUgdG8gYmUgaGFuZGxlZCBpbiB0aGUgRFBVIGRyaXZlci4gVGhl
Cj4+PiBEUCBkcml2ZXIgc2hvdWxkbid0IGNhcmUgYWJvdXQgdGhvc2UuCj4+Pgo+PiBPaywgV2ls
bCBkcm9wIHRoaXMgcGFydCBpbiBuZXh0IHBhdGNoLgo+IAo+IElmIHlvdSBkcm9wIGl0LCB3aGF0
IHdpbGwgYmUgbGVmdCBmcm9tIHRoZSBwYXRjaCBpdHNlbGY/Cj4gCgpZZXMgYWdyZWUgd2l0aCBE
bWl0cnksIG1heF93aWR0aCBpcyByZWFsbHkgbm90IGEgRFAgcmVsYXRlZCB0ZXJtaW5vbG9neS4K
ClRoaXMgcGF0Y2ggc2hvdWxkIGJlIGRyb3BwZWQuCgpTbyB0aGVyZSB3ZXJlIHR3byBpc3N1ZXMs
IG92ZXJhbGwgaW4gdGhpcyBzZXJpZXMgY2F1c2luZyB0aGlzIHBhdGNoOgoKMSkgSW4gaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoLzYyNTgyMi8sIGluc3RlYWQgb2YgdXNp
bmcgClZJR19TRE04NDVfTUFTSywgd2Ugc2hvdWxkIGJlIHVzaW5nIFZJR19TRE04NDVfTUFTS19T
RE1BLiBXaXRob3V0IHRoYXQgCmV2ZW4gMmsgd2lsbCBub3Qgd29yaywgd2lsbCBsZWF2ZSBhIGNv
bW1lbnQgdGhlcmUuCgoyKSA0ayB3aWxsIHN0aWxsIGZhaWwuIEkgZG9udCB0aGluayB3ZSBjYW4g
ZXZlbiBzdXBwb3J0IDRrIG9uIFFDUzYxNSBidXQgCnRoZSBtb2RlcyBzaG91bGQgYmUgZmlsdGVy
ZWQgb3V0IGJlY2F1c2UgdGhlcmUgaXMgbm8gM2RtdXguCgpJIGhhdmUgc3VibWl0dGVkIGh0dHBz
Oi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC82Mjc2OTQvIHRvIAphZGRyZXNzIHRo
aXMuCgpYaWFuZ3h1LCBwbGVhc2UgbGV0IG1lIGtub3cgaWYgdGhhdCB3b3JrcyBmb3IgeW91LgoK
VGhhbmtzCgpBYmhpbmF2Cj4+Pj4+Pgo+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogWGlhbmd4dSBZaW4g
PHF1aWNfeGlhbmd4dXlAcXVpY2luYy5jb20+Cj4+Pj4+PiAtLS0KPj4+Pj4+ICAgZHJpdmVycy9n
cHUvZHJtL21zbS9kcC9kcF9kaXNwbGF5LmMgfCAgMyArKysKPj4+Pj4+ICAgZHJpdmVycy9ncHUv
ZHJtL21zbS9kcC9kcF9kaXNwbGF5LmggfCAgMSArCj4+Pj4+PiAgIGRyaXZlcnMvZ3B1L2RybS9t
c20vZHAvZHBfcGFuZWwuYyAgIHwgMTMgKysrKysrKysrKysrKwo+Pj4+Pj4gICBkcml2ZXJzL2dw
dS9kcm0vbXNtL2RwL2RwX3BhbmVsLmggICB8ICAxICsKPj4+Pj4+ICAgNCBmaWxlcyBjaGFuZ2Vk
LCAxOCBpbnNlcnRpb25zKCspCj4+Pgo+Pj4KPj4KPiAKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
