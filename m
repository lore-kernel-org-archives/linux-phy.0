Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71AA6D10DCF
	for <linux-phy@archiver.kernel.org>; Mon,  2 Dec 2024 09:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H2lktCL12dp8BRfmdRQfXa4cIke41klAxBCM+S9HGx0=; b=qf2UdPnruJF7Km
	FO/XnhtkcOqSutNFza7RyjKIdjbFowCzmoBs1arhypwXPtcSjrpTOUrun5UjTOA+8gzEvOKXHD7Xp
	oL6grAd2aIaxDfFbwYAFfasrYTfB3URe15vjO2PGqHxTkjfB7MFx2B2XS6JaRCk2kx186SuFPsyg5
	JN7v+wEqCDDTyFuOYCPOwG/bIpnaUkZ1XJ1RtC+qjX4LmOFWXIzCkjys2pCU7RiHxmhNC9oyZBFmH
	xc/dV4px/cY4iDoIi/L8KV5IyF3rzitf2F8mkYnCYLC9H8UykD0cEQlLEOOOSquoW5mNKVfo4250n
	UGz73Wo11+wc3ekTJpnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI2NY-00000005VTa-0x24;
	Mon, 02 Dec 2024 09:06:04 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI2NV-00000005VRg-1p9U
	for linux-phy@lists.infradead.org;
	Mon, 02 Dec 2024 09:06:02 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B290TwE010338;
	Mon, 2 Dec 2024 09:05:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q+PjIrCert+/x3e/5SEkFOVcd9o7Q54etqy826imJuw=; b=Lvk0Nskf1gPfvfDw
	6oiXQJKJretf1FbX6tCF65Oin00bzsNqPMVLSqto5EjPwoOpWEPYgs+gRxPnYPvJ
	OugShnOB3gSM79fEDqRmEQ8XPhpWD3KqT1LC5gxg6NKa8wQee/sdLBKJLOJl84Ml
	z+puN4qOi2uAEjJAArl7BULURcrB2m5egdBKKGFp/IT0RtKVgs+rMAS1BZAtm56/
	9edM3NsNnYyqQnpTLI6H7otEPojliXVkq7xuuxMSf5t+cW/0HXwfYHh0sttMSi+0
	OipxLk/k6/UWv5z098AG+rtXMIaiTw8GXzuHuhrR3+ki+ByzTzCeacU2DFtjVHIh
	9ZfvvQ==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437v07m479-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 02 Dec 2024 09:05:52 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4B295qEj015760
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 2 Dec 2024 09:05:52 GMT
Received: from [10.64.16.135] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 2 Dec 2024
 01:05:45 -0800
Message-ID: <95a78722-8266-4d5d-8d2f-e8efa1aa2e87@quicinc.com>
Date: Mon, 2 Dec 2024 17:05:37 +0800
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
From: Xiangxu Yin <quic_xiangxuy@quicinc.com>
In-Reply-To: <CAA8EJpprTGRTxO+9BC6GRwxE4A3CuvmySsxS2Nh4Tqj0nDRT_Q@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: GJp2ATP3aUD-3hgyB8FaFF86sI5EXzVQ
X-Proofpoint-GUID: GJp2ATP3aUD-3hgyB8FaFF86sI5EXzVQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 phishscore=0
 adultscore=0 mlxlogscore=999 bulkscore=0 suspectscore=0 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 spamscore=0 mlxscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412020079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_010601_478921_32442B24 
X-CRM114-Status: GOOD (  18.66  )
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

CgpPbiAxMS8yOS8yMDI0IDk6NTIgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gT24gRnJp
LCAyOSBOb3YgMjAyNCBhdCAwOTo1OSwgWGlhbmd4dSBZaW4gPHF1aWNfeGlhbmd4dXlAcXVpY2lu
Yy5jb20+IHdyb3RlOgo+Pgo+PiBJbnRyb2R1Y2UgYSBtYXhpbXVtIHdpZHRoIGNvbnN0cmFpbnQg
Zm9yIG1vZGVzIGR1cmluZyB2YWxpZGF0aW9uLiBUaGlzCj4+IGVuc3VyZXMgdGhhdCB0aGUgbW9k
ZXMgYXJlIGZpbHRlcmVkIGJhc2VkIG9uIGhhcmR3YXJlIGNhcGFiaWxpdGllcywKPj4gc3BlY2lm
aWNhbGx5IGFkZHJlc3NpbmcgdGhlIGxpbmUgYnVmZmVyIGxpbWl0YXRpb25zIG9mIGluZGl2aWR1
YWwgcGlwZXMuCj4gCj4gVGhpcyBkb2Vzbid0IGRlc2NyaWJlLCB3aHkgdGhpcyBpcyBuZWNlc3Nh
cnkuIFdoYXQgZG9lcyAiYnVmZmVyCj4gbGltaXRhdGlvbnMgb2YgaW5kaXZpZHVhbCBwaXBlcyIg
bWVhbj8KPiBJZiB0aGUgcGxhdGZvcm1zIGhhdmUgaHcgY2FwYWJpbGl0aWVzIGxpa2UgYmVpbmcg
dW5hYmxlIHRvIHN1cHBvcnQgOGsKPiBvciAxMGssIGl0IHNob3VsZCBnbyB0byBwbGF0Zm9ybSBk
YXRhCj4gCkl0J3MgU1NQUCBsaW5lIGJ1ZmZlciBsaW1pdGF0aW9uIGZvciB0aGlzIHBsYXRmb3Jt
IGFuZCBvbmx5IHN1cHBvcnQgdG8gMjE2MCBtb2RlIHdpZHRoLgpUaGVuLCBzaGFsbCBJIGFkZCBt
YXhfd2lkdGggY29uZmlnIHRvIHN0cnVjdCBtc21fZHBfZGVzYyBpbiBuZXh0IHBhdGNoPyBmb3Ig
b3RoZXIgcGxhdGZvcm0gd2lsbCBzZXQgZGVmdWFsdCB2YWx1ZSB0byDigJhEUF9NQVhfV0lEVEgg
NzY4MCcKPj4KPj4gU2lnbmVkLW9mZi1ieTogWGlhbmd4dSBZaW4gPHF1aWNfeGlhbmd4dXlAcXVp
Y2luYy5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9kaXNwbGF5LmMg
fCAgMyArKysKPj4gIGRyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfZGlzcGxheS5oIHwgIDEgKwo+
PiAgZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9wYW5lbC5jICAgfCAxMyArKysrKysrKysrKysr
Cj4+ICBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX3BhbmVsLmggICB8ICAxICsKPj4gIDQgZmls
ZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL21zbS9kcC9kcF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2Rp
c3BsYXkuYwo+PiBpbmRleCA0YzgzNDAyZmM3ZTBkNDFjYjc2MjFmYTJlZmRhMDQzMjY5ZDBhNjA4
Li5lYjZmYjc2YzY4ZTUwNWZhZmJlYzU2MzQ0MGU5Nzg0ZjUxZTE4OTRiIDEwMDY0NAo+PiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2Rpc3BsYXkuYwo+PiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vbXNtL2RwL2RwX2Rpc3BsYXkuYwo+PiBAQCAtOTQ0LDYgKzk0NCw5IEBAIGVudW0gZHJt
X21vZGVfc3RhdHVzIG1zbV9kcF9icmlkZ2VfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2JyaWRnZSAq
YnJpZGdlLAo+PiAgICAgICAgIG1zbV9kcF9kaXNwbGF5ID0gY29udGFpbmVyX29mKGRwLCBzdHJ1
Y3QgbXNtX2RwX2Rpc3BsYXlfcHJpdmF0ZSwgbXNtX2RwX2Rpc3BsYXkpOwo+PiAgICAgICAgIGxp
bmtfaW5mbyA9ICZtc21fZHBfZGlzcGxheS0+cGFuZWwtPmxpbmtfaW5mbzsKPj4KPj4gKyAgICAg
ICBpZiAobW9kZS0+aGRpc3BsYXkgPiBtc21fZHBfZGlzcGxheS0+cGFuZWwtPm1heF9kcF93aWR0
aCkKPj4gKyAgICAgICAgICAgICAgIHJldHVybiBNT0RFX0JBRDsKPj4gKwo+PiAgICAgICAgIGlm
IChkcm1fbW9kZV9pc180MjBfb25seSgmZHAtPmNvbm5lY3Rvci0+ZGlzcGxheV9pbmZvLCBtb2Rl
KSAmJgo+PiAgICAgICAgICAgICBtc21fZHBfZGlzcGxheS0+cGFuZWwtPnZzY19zZHBfc3VwcG9y
dGVkKQo+PiAgICAgICAgICAgICAgICAgbW9kZV9wY2xrX2toeiAvPSAyOwo+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9kaXNwbGF5LmggYi9kcml2ZXJzL2dwdS9kcm0v
bXNtL2RwL2RwX2Rpc3BsYXkuaAo+PiBpbmRleCBlY2JjMmQ5MmY1NDZhMzQ2ZWU1M2FkY2YxYjA2
MDkzM2U0ZjU0MzE3Li43YTExZjdlZWI2OTE5NzZmMDZhZmM3YWZmNjc2NTAzOTdkN2RlYjkwIDEw
MDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2Rpc3BsYXkuaAo+PiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2Rpc3BsYXkuaAo+PiBAQCAtMTEsNiArMTEsNyBA
QAo+PiAgI2luY2x1ZGUgImRpc3AvbXNtX2Rpc3Bfc25hcHNob3QuaCIKPj4KPj4gICNkZWZpbmUg
RFBfTUFYX1BJWEVMX0NMS19LSFogICA2NzUwMDAKPj4gKyNkZWZpbmUgRFBfTUFYX1dJRFRIICAg
NzY4MAo+Pgo+PiAgc3RydWN0IG1zbV9kcCB7Cj4+ICAgICAgICAgc3RydWN0IGRybV9kZXZpY2Ug
KmRybV9kZXY7Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX3BhbmVs
LmMgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX3BhbmVsLmMKPj4gaW5kZXggODY1NDE4MGFh
MjU5MjM0YmJkNDFmNGY4OGMxM2M0ODVmOTc5MWIxZC4uMTA1MDFlMzAxYzVlMDczZDhkMzQwOTNi
ODZhMTVkNzJlNjQ2YTAxZiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21zbS9kcC9k
cF9wYW5lbC5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfcGFuZWwuYwo+PiBA
QCAtNCw2ICs0LDcgQEAKPj4gICAqLwo+Pgo+PiAgI2luY2x1ZGUgImRwX3BhbmVsLmgiCj4+ICsj
aW5jbHVkZSAiZHBfZGlzcGxheS5oIgo+PiAgI2luY2x1ZGUgImRwX3V0aWxzLmgiCj4+Cj4+ICAj
aW5jbHVkZSA8ZHJtL2RybV9jb25uZWN0b3IuaD4KPj4gQEAgLTQ1NSw2ICs0NTYsMTYgQEAgc3Rh
dGljIHUzMiBtc21fZHBfcGFuZWxfbGlua19mcmVxdWVuY2llcyhzdHJ1Y3QgZGV2aWNlX25vZGUg
Km9mX25vZGUpCj4+ICAgICAgICAgcmV0dXJuIGZyZXF1ZW5jeTsKPj4gIH0KPj4KPj4gK3N0YXRp
YyB1MzIgbXNtX2RwX3BhbmVsX21heF93aWR0aChzdHJ1Y3QgZGV2aWNlX25vZGUgKm9mX25vZGUp
Cj4+ICt7Cj4+ICsgICAgICAgdTMyIG1heF93aWR0aCA9IDA7Cj4+ICsKPj4gKyAgICAgICBpZiAo
b2ZfcHJvcGVydHlfcmVhZF91MzIob2Zfbm9kZSwgIm1heC13aWR0aCIsICZtYXhfd2lkdGgpKQo+
PiArICAgICAgICAgICAgICAgbWF4X3dpZHRoID0gRFBfTUFYX1dJRFRIOwo+PiArCj4+ICsgICAg
ICAgcmV0dXJuIG1heF93aWR0aDsKPiAKPiBtc21fZHBfcGFuZWwtPm1heF9kcF93aWR0aCA9IERQ
X01BWF9XSURUSDsKPiBvZl9wcm9wZXJ0eV9yZWFkX3UzMihvZl9ub2RlLCAibWF4LXdpZHRoIiwg
Jm1zbV9kcF9wYW5lbC0+bWF4X2RwX3dpZHRoKTsKPiAKPj4gK30KPj4gKwo+PiAgc3RhdGljIGlu
dCBtc21fZHBfcGFuZWxfcGFyc2VfZHQoc3RydWN0IG1zbV9kcF9wYW5lbCAqbXNtX2RwX3BhbmVs
KQo+PiAgewo+PiAgICAgICAgIHN0cnVjdCBtc21fZHBfcGFuZWxfcHJpdmF0ZSAqcGFuZWw7Cj4+
IEBAIC00OTAsNiArNTAxLDggQEAgc3RhdGljIGludCBtc21fZHBfcGFuZWxfcGFyc2VfZHQoc3Ry
dWN0IG1zbV9kcF9wYW5lbCAqbXNtX2RwX3BhbmVsKQo+PiAgICAgICAgIGlmICghbXNtX2RwX3Bh
bmVsLT5tYXhfZHBfbGlua19yYXRlKQo+PiAgICAgICAgICAgICAgICAgbXNtX2RwX3BhbmVsLT5t
YXhfZHBfbGlua19yYXRlID0gRFBfTElOS19SQVRFX0hCUjI7Cj4+Cj4+ICsgICAgICAgbXNtX2Rw
X3BhbmVsLT5tYXhfZHBfd2lkdGggPSBtc21fZHBfcGFuZWxfbWF4X3dpZHRoKG9mX25vZGUpOwo+
PiArCj4+ICAgICAgICAgcmV0dXJuIDA7Cj4+ICB9Cj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vbXNtL2RwL2RwX3BhbmVsLmggYi9kcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX3Bh
bmVsLmgKPj4gaW5kZXggNzYwM2I5MmMzMjkwMmJkM2Q0NDg1NTM5YmQ2MzA4NTM3ZmY3NWEyYy4u
NjE1MTM2NDQxNjEyMDljMjQzYmJiNjIzZWU0ZGVkOTUxYjJhMDU5NyAxMDA2NDQKPj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9wYW5lbC5oCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9tc20vZHAvZHBfcGFuZWwuaAo+PiBAQCAtNTEsNiArNTEsNyBAQCBzdHJ1Y3QgbXNtX2RwX3Bh
bmVsIHsKPj4gICAgICAgICB1MzIgbGFuZV9tYXBbRFBfTUFYX05VTV9EUF9MQU5FU107Cj4+ICAg
ICAgICAgdTMyIG1heF9kcF9sYW5lczsKPj4gICAgICAgICB1MzIgbWF4X2RwX2xpbmtfcmF0ZTsK
Pj4gKyAgICAgICB1MzIgbWF4X2RwX3dpZHRoOwo+Pgo+PiAgICAgICAgIHUzMiBtYXhfYndfY29k
ZTsKPj4gIH07Cj4+Cj4+IC0tCj4+IDIuMjUuMQo+Pgo+IAo+IAoKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
