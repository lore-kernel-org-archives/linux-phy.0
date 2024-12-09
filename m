Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C85F5E7717D
	for <linux-phy@archiver.kernel.org>; Mon,  9 Dec 2024 20:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rZOJBq2vgh2FS0YONXJR66TNGZDkZmeKMWVLrYSZxqc=; b=AyuXTpBXJwQoTG
	oiiL6TMd6E8wt6Q/LrWFoBzR2+LQtRV0hgNCDQnKHIWrJK6cRsAi/RWYB1MNZx/HLUhwH92i+c6xz
	R4eUCNgwBwqVUWKG46Znx0ipHwI9beT0IyXUgARTS0JM/OIhDVf0ijaAB01JTcDqo0QL2ljbQPQ2j
	Ad757eAWuilY3yA3SFJp+KMs0U/65h//c6sVIbga3MttiMnodbEtr/UeFR/dc9xmGg0tAdaleNoiw
	YNYm16AZCBQcXMimbXEsYZi81/QM6afYelbWxjThwGH3rAWqvopPOgJTLdAHPFblEdOJIKF8cngnc
	N2zOsKPNu/tbo7nOVsLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKkDb-000000099mS-3uK2;
	Mon, 09 Dec 2024 20:18:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKkDZ-000000099lE-0xkW
	for linux-phy@lists.infradead.org;
	Mon, 09 Dec 2024 20:18:58 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B9E6kHS006931;
	Mon, 9 Dec 2024 20:18:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EbMyNtDxooo6rHnhUiB7v/jMrrTSDUYZJmIjsmUNZGk=; b=dQoCNGGHmCG1pQAq
	NyaEq4eQIleCYk9XFq8aPxgpmqDNkhDrYwxqALjLxGEhB27VTNQa/jqPDKDQhTOK
	C/Vyh/IoVwc+8LbsyVohkVTvc+ky+Sevsz8bFyyU0oatonl9rFd2dmHTubUhpwav
	vhzp9lr5lse6WVXhnFYGXr6rUBkvfaA1DTwymH6o+k4B5Lq6YXr3FxCF32yymDJX
	6wZISGXoastZ4HMPYKFTvgSebSyBAjRJN5VU6VOS4mMmUeJ3nkYdfw6AtfDfS7jJ
	JdLBb0fZUJq6YqtHOkrj1sBbR8S1jKENlTw7PsRbeZJhJiHuLaVDg9rL2MPD2dVb
	YVx9XQ==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43e21bh2jn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 09 Dec 2024 20:18:47 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4B9KIlGm024851
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 9 Dec 2024 20:18:47 GMT
Received: from [10.134.71.247] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 9 Dec 2024
 12:18:43 -0800
Message-ID: <e7dafea3-2dc6-4737-b257-1dac6d7ce65f@quicinc.com>
Date: Mon, 9 Dec 2024 12:18:42 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/8] drm/msm/dp: Add maximum width limitation for modes
To: Xiangxu Yin <quic_xiangxuy@quicinc.com>,
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
 <5cdd9f7a-2c28-4ac2-a4da-304d25efbca3@quicinc.com>
Content-Language: en-US
From: Abhinav Kumar <quic_abhinavk@quicinc.com>
In-Reply-To: <5cdd9f7a-2c28-4ac2-a4da-304d25efbca3@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: SehKFPSmVCqQ_Px7chkZwuF6fzktwkaO
X-Proofpoint-ORIG-GUID: SehKFPSmVCqQ_Px7chkZwuF6fzktwkaO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 clxscore=1015
 malwarescore=0 lowpriorityscore=0 mlxlogscore=647 priorityscore=1501
 spamscore=0 impostorscore=0 adultscore=0 bulkscore=0 phishscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412090157
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_121857_268815_5C372685 
X-CRM114-Status: GOOD (  20.10  )
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

CgpPbiAxMi84LzIwMjQgNTo1NyBQTSwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4gCj4gCj4gT24gMTIv
Ny8yMDI0IDQ6MTMgQU0sIEFiaGluYXYgS3VtYXIgd3JvdGU6Cj4+Cj4+Cj4+IE9uIDEyLzMvMjAy
NCA1OjU4IEFNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+Pj4gT24gVHVlLCBEZWMgMDMsIDIw
MjQgYXQgMDM6NDE6NTNQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4+Pj4KPj4+Pgo+Pj4+
IE9uIDEyLzIvMjAyNCA1OjMyIFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+Pj4+PiBPbiBN
b24sIDIgRGVjIDIwMjQgYXQgMTE6MDUsIFhpYW5neHUgWWluIDxxdWljX3hpYW5neHV5QHF1aWNp
bmMuY29tPiB3cm90ZToKPj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IE9uIDExLzI5LzIwMjQg
OTo1MiBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4+Pj4+PiBPbiBGcmksIDI5IE5vdiAy
MDI0IGF0IDA5OjU5LCBYaWFuZ3h1IFlpbiA8cXVpY194aWFuZ3h1eUBxdWljaW5jLmNvbT4gd3Jv
dGU6Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IEludHJvZHVjZSBhIG1heGltdW0gd2lkdGggY29uc3RyYWlu
dCBmb3IgbW9kZXMgZHVyaW5nIHZhbGlkYXRpb24uIFRoaXMKPj4+Pj4+Pj4gZW5zdXJlcyB0aGF0
IHRoZSBtb2RlcyBhcmUgZmlsdGVyZWQgYmFzZWQgb24gaGFyZHdhcmUgY2FwYWJpbGl0aWVzLAo+
Pj4+Pj4+PiBzcGVjaWZpY2FsbHkgYWRkcmVzc2luZyB0aGUgbGluZSBidWZmZXIgbGltaXRhdGlv
bnMgb2YgaW5kaXZpZHVhbCBwaXBlcy4KPj4+Pj4+Pgo+Pj4+Pj4+IFRoaXMgZG9lc24ndCBkZXNj
cmliZSwgd2h5IHRoaXMgaXMgbmVjZXNzYXJ5LiBXaGF0IGRvZXMgImJ1ZmZlcgo+Pj4+Pj4+IGxp
bWl0YXRpb25zIG9mIGluZGl2aWR1YWwgcGlwZXMiIG1lYW4/Cj4+Pj4+Pj4gSWYgdGhlIHBsYXRm
b3JtcyBoYXZlIGh3IGNhcGFiaWxpdGllcyBsaWtlIGJlaW5nIHVuYWJsZSB0byBzdXBwb3J0IDhr
Cj4+Pj4+Pj4gb3IgMTBrLCBpdCBzaG91bGQgZ28gdG8gcGxhdGZvcm0gZGF0YQo+Pj4+Pj4+Cj4+
Pj4+PiBJdCdzIFNTUFAgbGluZSBidWZmZXIgbGltaXRhdGlvbiBmb3IgdGhpcyBwbGF0Zm9ybSBh
bmQgb25seSBzdXBwb3J0IHRvIDIxNjAgbW9kZSB3aWR0aC4KPj4+Pj4+IFRoZW4sIHNoYWxsIEkg
YWRkIG1heF93aWR0aCBjb25maWcgdG8gc3RydWN0IG1zbV9kcF9kZXNjIGluIG5leHQgcGF0Y2g/
IGZvciBvdGhlciBwbGF0Zm9ybSB3aWxsIHNldCBkZWZ1YWx0IHZhbHVlIHRvIOKAmERQX01BWF9X
SURUSCA3NjgwJwo+Pj4+Pgo+Pj4+PiBTU1BQIGxpbmUgYnVmZmVyIGxpbWl0YXRpb25zIGFyZSB0
byBiZSBoYW5kbGVkIGluIHRoZSBEUFUgZHJpdmVyLiBUaGUKPj4+Pj4gRFAgZHJpdmVyIHNob3Vs
ZG4ndCBjYXJlIGFib3V0IHRob3NlLgo+Pj4+Pgo+Pj4+IE9rLCBXaWxsIGRyb3AgdGhpcyBwYXJ0
IGluIG5leHQgcGF0Y2guCj4+Pgo+Pj4gSWYgeW91IGRyb3AgaXQsIHdoYXQgd2lsbCBiZSBsZWZ0
IGZyb20gdGhlIHBhdGNoIGl0c2VsZj8KPj4+Cj4+Cj4+IFllcyBhZ3JlZSB3aXRoIERtaXRyeSwg
bWF4X3dpZHRoIGlzIHJlYWxseSBub3QgYSBEUCByZWxhdGVkIHRlcm1pbm9sb2d5Lgo+Pgo+PiBU
aGlzIHBhdGNoIHNob3VsZCBiZSBkcm9wcGVkLgo+Pgo+PiBTbyB0aGVyZSB3ZXJlIHR3byBpc3N1
ZXMsIG92ZXJhbGwgaW4gdGhpcyBzZXJpZXMgY2F1c2luZyB0aGlzIHBhdGNoOgo+Pgo+PiAxKSBJ
biBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvNjI1ODIyLywgaW5zdGVh
ZCBvZiB1c2luZyBWSUdfU0RNODQ1X01BU0ssIHdlIHNob3VsZCBiZSB1c2luZyBWSUdfU0RNODQ1
X01BU0tfU0RNQS4gV2l0aG91dCB0aGF0IGV2ZW4gMmsgd2lsbCBub3Qgd29yaywgd2lsbCBsZWF2
ZSBhIGNvbW1lbnQgdGhlcmUuCj4+Cj4+IDIpIDRrIHdpbGwgc3RpbGwgZmFpbC4gSSBkb250IHRo
aW5rIHdlIGNhbiBldmVuIHN1cHBvcnQgNGsgb24gUUNTNjE1IGJ1dCB0aGUgbW9kZXMgc2hvdWxk
IGJlIGZpbHRlcmVkIG91dCBiZWNhdXNlIHRoZXJlIGlzIG5vIDNkbXV4Lgo+Pgo+PiBJIGhhdmUg
c3VibWl0dGVkIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC82Mjc2OTQv
IHRvIGFkZHJlc3MgdGhpcy4KPj4KPj4gWGlhbmd4dSwgcGxlYXNlIGxldCBtZSBrbm93IGlmIHRo
YXQgd29ya3MgZm9yIHlvdS4KPj4KPj4gVGhhbmtzCj4+Cj4+IEFiaGluYXYKPiBUaGFua3MgZm9y
IHlvdXIgcGF0Y2hzZXRzLAo+IEFmdGVyIGFwcGx5IHBhdGNoIDYyNTgyMiAmIDYyNzY5NO+8jG1v
ZGUgZmlsdGVyIHdvcmtzIGNvcnJlY3RseSBvbiBRQ1M2MTUgcGxhdGZvcm0gd2l0aCBib3RoIDRr
IGFuZCAyayBtb25pdG9yLgo+IHdvcms+Pj4+Pj4+CgpUaGFua3MuIElmIHlvdSBjYW4gZ2l2ZSB5
b3VyIFRlc3RlZC1ieSBvbiAKaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNo
LzYyNzk2Ny8sIHRoYXQgd291bGQgYmUgZ3JlYXQuCgo+Pj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBY
aWFuZ3h1IFlpbiA8cXVpY194aWFuZ3h1eUBxdWljaW5jLmNvbT4KPj4+Pj4+Pj4gLS0tCj4+Pj4+
Pj4+ICDCoCBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2Rpc3BsYXkuYyB8wqAgMyArKysKPj4+
Pj4+Pj4gIMKgIGRyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfZGlzcGxheS5oIHzCoCAxICsKPj4+
Pj4+Pj4gIMKgIGRyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfcGFuZWwuY8KgwqAgfCAxMyArKysr
KysrKysrKysrCj4+Pj4+Pj4+ICDCoCBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX3BhbmVsLmjC
oMKgIHzCoCAxICsKPj4+Pj4+Pj4gIMKgIDQgZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygr
KQo+Pj4+Pgo+Pj4+Pgo+Pj4+Cj4+Pgo+IAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
