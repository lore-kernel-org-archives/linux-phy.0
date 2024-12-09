Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB2BDE77173
	for <linux-phy@archiver.kernel.org>; Mon,  9 Dec 2024 01:57:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y9XvUjYBDI/suLez6RMItxDZXd9mL0Ga/ugLQGPrLxw=; b=4FMXzcnrvWUMSx
	xbW7+2kt7DgLMadkmFM1IDeLlzRGAvKkRb3CKkB9grkhY2/6rf6G54/5kV+9R5GydKqnP5RuNJV+9
	4+S8tRw7wcnbWi20M2/wk+sSzXeP2INgOywlFkKBFcSzlJ8aGvex7L0cWGo9wEuQajfx0WRrZhnKa
	IMT+xJ+cxdat9p9U6JKBneHPTZX3Pgl2VRLSWrcR2py+I/U+/kZyVN7VVSeiZmt9yIcw9fGudfSDz
	28gkG/6QaqDWYNIRkROLXd7vAILd9SYVxrSxV6+MRHxtH7zwwxzvFIlvL9TFJEX3BZmza47JzlUtZ
	EdJgA/2H6qW39WMZa63g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKT25-00000006APq-0MAV;
	Mon, 09 Dec 2024 01:57:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKT22-00000006APF-0ocb
	for linux-phy@lists.infradead.org;
	Mon, 09 Dec 2024 01:57:55 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B90QGVn020262;
	Mon, 9 Dec 2024 01:57:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CG8II9ztrbXAFXn/IH/2hf7r1GGna+rqHK57zUB/bNU=; b=aYVL/QDI5hRBCESG
	gYYAxB1Jr0qodPz2M2xbt/JMNcoRoBNZs8xC1V3uwoq+Jf5P+cWv2D0SU1UQR0/M
	T2eLohmOtOyA2bFSvoz123IpkZOeURYCf/nIfYwjVwv7eQAyXZDZ5SCRtJr0SBng
	IXT3p1usNWdSsO1rXlSYeeyZJkabKG8rxnEgZIoI8gDFj189N7VQ+kb/PZA8iBMJ
	xdJaUjqCZOymB7MLaSm/ISPhx/oeXiftwxMpDfoDtjq/rH0umXmv1xD7IP9w9UD4
	KYv5rP+18JY4MYCm+Fy6ZR5eaJ4O8abTulwPAzZohbPvopy/cJQRwjQeFg6bXXYH
	h0Jcmg==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43cc2eb7p3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 09 Dec 2024 01:57:43 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4B91vgCk012972
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 9 Dec 2024 01:57:42 GMT
Received: from [10.64.16.135] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Sun, 8 Dec 2024
 17:57:35 -0800
Message-ID: <5cdd9f7a-2c28-4ac2-a4da-304d25efbca3@quicinc.com>
Date: Mon, 9 Dec 2024 09:57:33 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/8] drm/msm/dp: Add maximum width limitation for modes
To: Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov
	<dmitry.baryshkov@linaro.org>
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
 <3e7660b3-934a-4b11-82a3-48137d63ea5d@quicinc.com>
From: Xiangxu Yin <quic_xiangxuy@quicinc.com>
In-Reply-To: <3e7660b3-934a-4b11-82a3-48137d63ea5d@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Uka-izgVnq1gjnLi7O1BlO94c-l0rngb
X-Proofpoint-GUID: Uka-izgVnq1gjnLi7O1BlO94c-l0rngb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxscore=0
 mlxlogscore=710 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 adultscore=0 malwarescore=0 clxscore=1015 suspectscore=0 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412090014
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241208_175754_239775_6507AB67 
X-CRM114-Status: GOOD (  22.75  )
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

CgpPbiAxMi83LzIwMjQgNDoxMyBBTSwgQWJoaW5hdiBLdW1hciB3cm90ZToKPiAKPiAKPiBPbiAx
Mi8zLzIwMjQgNTo1OCBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4gT24gVHVlLCBEZWMg
MDMsIDIwMjQgYXQgMDM6NDE6NTNQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4+Pgo+Pj4K
Pj4+IE9uIDEyLzIvMjAyNCA1OjMyIFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+Pj4+IE9u
IE1vbiwgMiBEZWMgMjAyNCBhdCAxMTowNSwgWGlhbmd4dSBZaW4gPHF1aWNfeGlhbmd4dXlAcXVp
Y2luYy5jb20+IHdyb3RlOgo+Pj4+Pgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBPbiAxMS8yOS8yMDI0IDk6
NTIgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+Pj4+PiBPbiBGcmksIDI5IE5vdiAyMDI0
IGF0IDA5OjU5LCBYaWFuZ3h1IFlpbiA8cXVpY194aWFuZ3h1eUBxdWljaW5jLmNvbT4gd3JvdGU6
Cj4+Pj4+Pj4KPj4+Pj4+PiBJbnRyb2R1Y2UgYSBtYXhpbXVtIHdpZHRoIGNvbnN0cmFpbnQgZm9y
IG1vZGVzIGR1cmluZyB2YWxpZGF0aW9uLiBUaGlzCj4+Pj4+Pj4gZW5zdXJlcyB0aGF0IHRoZSBt
b2RlcyBhcmUgZmlsdGVyZWQgYmFzZWQgb24gaGFyZHdhcmUgY2FwYWJpbGl0aWVzLAo+Pj4+Pj4+
IHNwZWNpZmljYWxseSBhZGRyZXNzaW5nIHRoZSBsaW5lIGJ1ZmZlciBsaW1pdGF0aW9ucyBvZiBp
bmRpdmlkdWFsIHBpcGVzLgo+Pj4+Pj4KPj4+Pj4+IFRoaXMgZG9lc24ndCBkZXNjcmliZSwgd2h5
IHRoaXMgaXMgbmVjZXNzYXJ5LiBXaGF0IGRvZXMgImJ1ZmZlcgo+Pj4+Pj4gbGltaXRhdGlvbnMg
b2YgaW5kaXZpZHVhbCBwaXBlcyIgbWVhbj8KPj4+Pj4+IElmIHRoZSBwbGF0Zm9ybXMgaGF2ZSBo
dyBjYXBhYmlsaXRpZXMgbGlrZSBiZWluZyB1bmFibGUgdG8gc3VwcG9ydCA4awo+Pj4+Pj4gb3Ig
MTBrLCBpdCBzaG91bGQgZ28gdG8gcGxhdGZvcm0gZGF0YQo+Pj4+Pj4KPj4+Pj4gSXQncyBTU1BQ
IGxpbmUgYnVmZmVyIGxpbWl0YXRpb24gZm9yIHRoaXMgcGxhdGZvcm0gYW5kIG9ubHkgc3VwcG9y
dCB0byAyMTYwIG1vZGUgd2lkdGguCj4+Pj4+IFRoZW4sIHNoYWxsIEkgYWRkIG1heF93aWR0aCBj
b25maWcgdG8gc3RydWN0IG1zbV9kcF9kZXNjIGluIG5leHQgcGF0Y2g/IGZvciBvdGhlciBwbGF0
Zm9ybSB3aWxsIHNldCBkZWZ1YWx0IHZhbHVlIHRvIOKAmERQX01BWF9XSURUSCA3NjgwJwo+Pj4+
Cj4+Pj4gU1NQUCBsaW5lIGJ1ZmZlciBsaW1pdGF0aW9ucyBhcmUgdG8gYmUgaGFuZGxlZCBpbiB0
aGUgRFBVIGRyaXZlci4gVGhlCj4+Pj4gRFAgZHJpdmVyIHNob3VsZG4ndCBjYXJlIGFib3V0IHRo
b3NlLgo+Pj4+Cj4+PiBPaywgV2lsbCBkcm9wIHRoaXMgcGFydCBpbiBuZXh0IHBhdGNoLgo+Pgo+
PiBJZiB5b3UgZHJvcCBpdCwgd2hhdCB3aWxsIGJlIGxlZnQgZnJvbSB0aGUgcGF0Y2ggaXRzZWxm
Pwo+Pgo+IAo+IFllcyBhZ3JlZSB3aXRoIERtaXRyeSwgbWF4X3dpZHRoIGlzIHJlYWxseSBub3Qg
YSBEUCByZWxhdGVkIHRlcm1pbm9sb2d5Lgo+IAo+IFRoaXMgcGF0Y2ggc2hvdWxkIGJlIGRyb3Bw
ZWQuCj4gCj4gU28gdGhlcmUgd2VyZSB0d28gaXNzdWVzLCBvdmVyYWxsIGluIHRoaXMgc2VyaWVz
IGNhdXNpbmcgdGhpcyBwYXRjaDoKPiAKPiAxKSBJbiBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvcGF0Y2gvNjI1ODIyLywgaW5zdGVhZCBvZiB1c2luZyBWSUdfU0RNODQ1X01BU0ss
IHdlIHNob3VsZCBiZSB1c2luZyBWSUdfU0RNODQ1X01BU0tfU0RNQS4gV2l0aG91dCB0aGF0IGV2
ZW4gMmsgd2lsbCBub3Qgd29yaywgd2lsbCBsZWF2ZSBhIGNvbW1lbnQgdGhlcmUuCj4gCj4gMikg
NGsgd2lsbCBzdGlsbCBmYWlsLiBJIGRvbnQgdGhpbmsgd2UgY2FuIGV2ZW4gc3VwcG9ydCA0ayBv
biBRQ1M2MTUgYnV0IHRoZSBtb2RlcyBzaG91bGQgYmUgZmlsdGVyZWQgb3V0IGJlY2F1c2UgdGhl
cmUgaXMgbm8gM2RtdXguCj4gCj4gSSBoYXZlIHN1Ym1pdHRlZCBodHRwczovL3BhdGNod29yay5m
cmVlZGVza3RvcC5vcmcvcGF0Y2gvNjI3Njk0LyB0byBhZGRyZXNzIHRoaXMuCj4gCj4gWGlhbmd4
dSwgcGxlYXNlIGxldCBtZSBrbm93IGlmIHRoYXQgd29ya3MgZm9yIHlvdS4KPiAKPiBUaGFua3MK
PiAKPiBBYmhpbmF2ClRoYW5rcyBmb3IgeW91ciBwYXRjaHNldHMsCkFmdGVyIGFwcGx5IHBhdGNo
IDYyNTgyMiAmIDYyNzY5NO+8jG1vZGUgZmlsdGVyIHdvcmtzIGNvcnJlY3RseSBvbiBRQ1M2MTUg
cGxhdGZvcm0gd2l0aCBib3RoIDRrIGFuZCAyayBtb25pdG9yLgp3b3JrPj4+Pj4+Pgo+Pj4+Pj4+
IFNpZ25lZC1vZmYtYnk6IFhpYW5neHUgWWluIDxxdWljX3hpYW5neHV5QHF1aWNpbmMuY29tPgo+
Pj4+Pj4+IC0tLQo+Pj4+Pj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfZGlzcGxheS5j
IHzCoCAzICsrKwo+Pj4+Pj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfZGlzcGxheS5o
IHzCoCAxICsKPj4+Pj4+PiDCoCBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX3BhbmVsLmPCoMKg
IHwgMTMgKysrKysrKysrKysrKwo+Pj4+Pj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBf
cGFuZWwuaMKgwqAgfMKgIDEgKwo+Pj4+Pj4+IMKgIDQgZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0
aW9ucygrKQo+Pj4+Cj4+Pj4KPj4+Cj4+CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
