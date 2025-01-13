Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7AF9E7719F
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jan 2025 09:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+KnPf13BcQMkVqUqxrAzoOmtc0HWPac73zshsI5LadY=; b=M4tjt/mcI6NuNA
	B1JPkKeadSqQb1sq9u5JuG34ij+rbdHLDtNQCZTG1ibBMZvsLa9BagLHe0ZcFo/pHcy4G3ksjHXZe
	2umLmw7+msvM6nHHXx9+uFX6160Jtr4Cf+AQTZ1cLLtBUhNaIcAbIT71w8LJ6DlzcLAd3qCe6YTqq
	H+hIUkl/M9OyDS2rrYyTlT0IH9USQN3o/srpQgHLdl99GNmCeuO/5gBf+AgoP3DQPBk5ryrzC8TCD
	KRgUyj1tfZ3U41U6O/WbQCdsNFE7YcGUWZlzrVRQrX8Us1E6Mep97Q1lxy4dN4WR9yReeEDOtrTfZ
	mmcGbj0L5hJxLF5Rslgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXH1Z-00000004gUy-2exm;
	Mon, 13 Jan 2025 09:46:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXH1W-00000004gTv-1zxl
	for linux-phy@lists.infradead.org;
	Mon, 13 Jan 2025 09:46:19 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50D05ah2005245;
	Mon, 13 Jan 2025 09:46:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ys7C1ng1Qh50wTxY9Q3dBdvQRCmH8QP3Xs0QyYBehUo=; b=bzzxJ+9rNNhE53En
	T65tyMtZ2RMIuIvDoGmHKZbrUPkmn8qLuZiSlBtz83yUMZpOw21miT4qTFmfh05Y
	fszDmK5BeaJLkbV/V4XoUITiI/rz3simAVsPBHNUq4wHJucMl9gwTV81XwjVlOZs
	ehgDiaSGgITlWzCtBvrfdLVqqZxT/tEGNffRoJ4qakqVLeluAKuw4ZZrJsd7nG7T
	hjQ2aT3PaLsdNLG6FFk0kGQp+eimprY52tji0Nj7qYPXcfYcsKJoPkky5BkYy9Hn
	eRvY6PL7ttY9oOe7L8HFFL5i/wjm1xRzj4m/OTq3vaBLaBEuNFRvnmneeZTfZleu
	8eBcVg==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 444r01s5e9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 13 Jan 2025 09:46:12 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 50D9jxqR002907
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 13 Jan 2025 09:45:59 GMT
Received: from [10.64.68.119] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 13 Jan
 2025 01:45:53 -0800
Message-ID: <07d33f82-aa6a-46ef-8e16-ce58e506c0a7@quicinc.com>
Date: Mon, 13 Jan 2025 17:45:50 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/4] Display enablement changes for Qualcomm QCS8300
 platform
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar
	<quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten
	<marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, "Simona
 Vetter" <simona@ffwll.ch>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh
	<quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        "Kishon Vijay
 Abraham I" <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
        <freedreno@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        "Krzysztof
 Kozlowski" <krzysztof.kozlowski@linaro.org>
References: <20250113-mdssdt_qcs8300-v3-0-6c8e93459600@quicinc.com>
 <qsq5so5i7fy3r7xcjtcr7aq2vtbywh57j3b3e7ddbsmmeu5qwy@pgcntgxknuul>
 <9a87724c-1906-4a9b-bf01-e603b310e47a@quicinc.com>
 <5exaup4mceoq3a3wk44csybigcg3yc2drvv7nwdndbig7edzya@5d543uzrnoxx>
Content-Language: en-US
From: Yongxing Mou <quic_yongmou@quicinc.com>
In-Reply-To: <5exaup4mceoq3a3wk44csybigcg3yc2drvv7nwdndbig7edzya@5d543uzrnoxx>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: vAlKdqco10aigTQe0yRpfJGfvJtxmn2k
X-Proofpoint-ORIG-GUID: vAlKdqco10aigTQe0yRpfJGfvJtxmn2k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 spamscore=0 suspectscore=0 clxscore=1015 malwarescore=0 priorityscore=1501
 mlxlogscore=999 impostorscore=0 lowpriorityscore=0 mlxscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501130083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_014618_522783_9F1DCA92 
X-CRM114-Status: GOOD (  22.36  )
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

CgpPbiAyMDI1LzEvMTMgMTc6MzYsIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gT24gTW9uLCBK
YW4gMTMsIDIwMjUgYXQgMDU6MjY6NTZQTSArMDgwMCwgWW9uZ3hpbmcgTW91IHdyb3RlOgo+Pgo+
Pgo+PiBPbiAyMDI1LzEvMTMgMTc6MDIsIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+PiBPbiBN
b24sIEphbiAxMywgMjAyNSBhdCAwNDowMzowN1BNICswODAwLCBZb25neGluZyBNb3Ugd3JvdGU6
Cj4+Pj4gVGhpcyBzZXJpZXMgaW50cm9kdWNlcyBzdXBwb3J0IHRvIGVuYWJsZSB0aGUgTW9iaWxl
IERpc3BsYXkgU3Vic3lzdGVtIChNRFNTKQo+Pj4+ICwgRGlzcGxheSBQcm9jZXNzaW5nIFVuaXQg
KERQVSksIERpc3BsYXlQb3J0IGNvbnRyb2xsZXIgZm9yIHRoZSBRdWFsY29tbQo+Pj4+IFFDUzgz
MDAgdGFyZ2V0LiBJdCBpbmNsdWRlcyB0aGUgYWRkaXRpb24gb2YgdGhlIGhhcmR3YXJlIGNhdGFs
b2csIGNvbXBhdGlibGUKPj4+PiBzdHJpbmcsIGFuZCB0aGVpciBZQU1MIGJpbmRpbmdzLgo+Pj4+
Cj4+Pj4gU2lnbmVkLW9mZi1ieTogWW9uZ3hpbmcgTW91IDxxdWljX3lvbmdtb3VAcXVpY2luYy5j
b20+Cj4+Pj4gLS0tCj4+Pj4gQ2hhbmdlcyBpbiB2MzpGaXhlZCByZXZpZXcgY29tbWVudHMgZnJv
bSBLcnp5c3p0b2YsIERtaXRyeS4KPj4+PiAtIEZpeCB0aGUgbWlzc2luZyBzcGFjZSBpc3N1ZSBp
biBjb21taXQgbWVzc2FnZS5bS3J6eXN6dG9mXQo+Pj4+IC0gU2VwYXJhdGUgdGhlIHBhdGNoIGZv
ciB0aGUgcGh5IGZyb20gdGhpcyBzZXJpZXMuW0RtaXRyeV0KPj4+PiAtIFJlbW92ZSB1bnVzZWQg
ZGVwZW5kZW5jaWVzIGFuZCB1cGRhdGUgaW4gdGhlIGNvdmVyIGxldHRlci5bRG1pdHJ5XVtLcnp5
c3p0b2ZdCj4+Pj4gLSBMaW5rIHRvIHYyOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjQx
MjI2LW1kc3NkdF9xY3M4MzAwLXYyLTAtYWNiYTBkYjUzM2NlQHF1aWNpbmMuY29tCj4+Pj4KPj4+
PiBDaGFuZ2VzIGluIHYyOkZpeGVkIHJldmlldyBjb21tZW50cyBmcm9tIEtyenlzenRvZiwgRG1p
dHJ5LCBSb2IuCj4+Pj4gLSBEZWNvdXBsZSB0aGUgZGV2aWNldHJlZSBjaGFuZ2VzIGZyb20gdGhp
cyBzZXJpZXMuW0RtaXRyeV1bS3J6eXN6dG9mXQo+Pj4+IC0gRHJvcCB0aGUgZHB1IGRyaXZlciBj
aGFuZ2VzIGFuZCByZXVzZSBTQTg3NzVQIERQVSBkcml2ZXIuW0RtaXRyeV0KPj4+PiAtIEZpeCBj
b21waWxhdGlvbiBpc3N1ZXMgaW4gTURTUyBiaW5kaW5ncy5bUm9iXVtLcnp5c3p0b2ZdCj4+Pj4g
LSBDb3JyZWN0IGZvcm1hdHRpbmcgZXJyb3JzIGFuZCByZW1vdmUgdW5uZWNlc3Nhcnkgc3RhdHVz
IGluIE1EU1MKPj4+PiAgICAgYmluZGluZ3MuW0tyenlzenRvZl0KPj4+PiAtIEFkZCB0aGUgdGhl
IG5lY2Vzc2FyeSBpbmZvcm1hdGlvbiBpbiBNRFNTIGNoYW5nZXMgY29tbWl0IG1zZy5bRG1pdHJ5
XQo+Pj4+IC0gUmViYXNlIE1EU1MgZHJpdmVyIGNoYW5nZXMgdG8gaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvZHJpLWRldmVsLwo+Pj4+ICAgICAyMDI0MTEyNy1tc20tbWRzcy11YndjLXYzLTAtOTc4
MmE3YzJiMDIzQGxpbmFyby5vcmcvLltEbWl0cnldCj4+Pj4gLSBQYWNrYWdlIHRoZSBEaXNwbGF5
UG9ydCBjb250cm9sbGVyIGFuZCBlRFAgUEhZIGJpbmRpbmdzIGRvY3VtZW50IHRvCj4+Pj4gICAg
IHRoaXMgcGF0Y2ggc2VyaWVzLgo+Pj4+IC0gQ29sbGVjdGluZyBNRFNTIGNoYW5nZXMgcmV2aWV3
ZC1ieSBEbWl0cnkuCj4+Pj4gLSBSZXVzZSB0aGUgc2E4Nzc1cCBlRFAgUEhZIGFzIGEgZmFsbGJh
Y2sgY29tcGF0LltEbWl0cnldCj4+Pj4gLSBSZXVzZSB0aGUgc204NjUwIERQIGNvbnRyb2xsZXIg
YXMgYSBmYWxsYmFjayBjb21wYXQuW0RtaXRyeV0KPj4+PiAtIExpbmsgdG8gdjE6IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL3IvMjAyNDExMjctbWRzc19xY3M4MzAwLXYxLTAtMjliMmMzZWU5NWI4
QHF1aWNpbmMuY29tCj4+Pj4gfgo+Pj4+Cj4+Pj4gLS0tCj4+Pj4gWW9uZ3hpbmcgTW91ICg0KToK
Pj4+PiAgICAgICAgIGR0LWJpbmRpbmdzOiBkaXNwbGF5L21zbTogRG9jdW1lbnQgdGhlIERQVSBm
b3IgUUNTODMwMAo+Pj4+ICAgICAgICAgZHQtYmluZGluZ3M6IGRpc3BsYXk6IG1zbTogZHAtY29u
dHJvbGxlcjogZG9jdW1lbnQgUUNTODMwMCBjb21wYXRpYmxlCj4+Pj4gICAgICAgICBkdC1iaW5k
aW5nczogZGlzcGxheS9tc206IERvY3VtZW50IE1EU1Mgb24gUUNTODMwMAo+Pj4KPj4+IElzIHRo
ZXJlIGFueSByZWFzb24gZm9yIG5vdCB1c2luZyBhIGNvbW1vbiBzdHlsZSBmb3IgdGhlc2UgdGhy
ZWUKPj4+IGNvbW1pdHM/Cj4+Pgo+PiBIae+8jGFjdHVhbGx5LCBmb3IgdGhlIGRwLWNvbnRyb2xs
ZXIueWFtZWwgZmlsZSwgSSBqdXN0IG5vdGljZWQgdGhhdCB0aGUKPj4gcHJldmlvdXMgcGxhdGZv
cm1zIGFkZGVkIHRoZSBkdC1iaW5kaW5nIGZpbGVzIHVzaW5nIHRoaXMgZm9ybWF0LiBTbywgSQo+
PiBmb2xsb3dlZCB0aGVpciBmb3JtYXQgdG8gd3JpdGUgdGhlIGNvbW1pdCBtZXNzYWdlLiBTdWNo
IGFzIGR0LWJpbmRpbmdzIGZvcgo+PiBzbTg2NTAvc204MTUwL3NtODI1MC4uLgo+IAo+IEkgZG9u
J3QgY2FyZSBhYm91dCBlaXRoZXIgb2YgdGhlIGZvcm1hdHMsIGJ1dCBwbGVhc2UgYmUgc2VsZi1j
b25zaXN0ZW50Lgo+IElmIG9uZSBwYXRjaCBvdXQgb2YgdGhyZWUgaGFzIGEgZGlmZmVyZW50IHN1
YmplY3QgcHJlZml4LCB0aGF0IGxvb2tzCj4gc3RyYW5nZS4KPiAKR290IGl0LCBpdCBkb2VzIHNl
ZW0gdGhhdCB3YXkuIEkgd2lsbCByZXZpc2UgdGhlIGNvbW1pdCBtZXNzYWdlIGZvcm1hdCAKaW4g
dGhlIG5leHQgdmVyc2lvbiBhbG9uZyB3aXRoIHRoZSBNRFNTIGJpbmRpbmcgcmV2aWV3IGNvbW1l
bnRzLiBUaGFua3MuCj4+Pj4gICAgICAgICBkcm0vbXNtOiBtZHNzOiBBZGQgUUNTODMwMCBzdXBw
b3J0Cj4+Pj4KPj4+PiAgICAuLi4vYmluZGluZ3MvZGlzcGxheS9tc20vZHAtY29udHJvbGxlci55
YW1sICAgICAgICB8ICAgNCArCj4+Pj4gICAgLi4uL2JpbmRpbmdzL2Rpc3BsYXkvbXNtL3Fjb20s
cWNzODMwMC1tZHNzLnlhbWwgICAgfCAyNDQgKysrKysrKysrKysrKysrKysrKysrCj4+Pj4gICAg
Li4uL2JpbmRpbmdzL2Rpc3BsYXkvbXNtL3Fjb20sc204NjUwLWRwdS55YW1sICAgICAgfCAgMTMg
Ky0KPj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9tZHNzLmMgICAgICAgICAgICAgICAg
ICAgICB8ICAxMSArCj4+Pj4gICAgNCBmaWxlcyBjaGFuZ2VkLCAyNjggaW5zZXJ0aW9ucygrKSwg
NCBkZWxldGlvbnMoLSkKPj4+PiAtLS0KPj4+PiBiYXNlLWNvbW1pdDogMmI4ODg1MWY1ODNkM2M0
ZTQwYmNkNDBjZmUxOTY1MjQxZWMyMjlkZAo+Pj4+IGNoYW5nZS1pZDogMjAyNDEyMjQtbWRzc2R0
X3FjczgzMDAtMTFiNzg4M2RjNjBiCj4+Pj4KPj4+PiBCZXN0IHJlZ2FyZHMsCj4+Pj4gLS0gCj4+
Pj4gWW9uZ3hpbmcgTW91IDxxdWljX3lvbmdtb3VAcXVpY2luYy5jb20+Cj4+Pj4KPj4+Cj4+Cj4g
CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
