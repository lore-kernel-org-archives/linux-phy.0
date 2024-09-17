Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E5A3C35FF5
	for <linux-phy@archiver.kernel.org>; Tue, 17 Sep 2024 08:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Mi//ljQxUuCrnnTkeN4z/L9yIqSebrWmZ4/E71qSTA=; b=t2xyy9MxIBqLLG
	sfl5x4zJp/VASqRQlCQNDGbxgSoGe4yeU3d2KJU1rzm2Vgx1yyQqubgnWSj5dNjrkKtQG/jUns13b
	fOlGuejqABY8tDkApmAe2p4CXdBMYFr8lWLgfnOpKnc69dC8155UNKq6CBOp0dnhuG2dTC/k5DbDq
	NWryzGC32Aemom1TWY/o0F4NWn8wt9hyD5+8YAly7hZpQ9X8nbSkZic7S5XOMzOK43P1xM4xPY0h1
	VGse0Nr+ZFhaISICLvP9kP0zdlWe3lqtiDobRnsvYid1Krpocvor6Cfjvi9GyjtueLWgRZN/gYxO6
	WsMX0urHYL8jqshz1fAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqTlE-00000005i4x-2mdg;
	Tue, 17 Sep 2024 08:40:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqTlC-00000005i45-0f8l
	for linux-phy@lists.infradead.org;
	Tue, 17 Sep 2024 08:40:35 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48H7ImM1003647;
	Tue, 17 Sep 2024 08:40:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HNmVVqJ/mbN61tjwbZuFKzRaf2S3xTimJ/qqkaE6le4=; b=MsvaIlJ8nKVMp73M
	gZFoJ5kq3ThDXFvNHTLE7iG2pkTX54Tfp/2m4SVJyUyV67wt09i0J8hOM6sGJ0US
	UV26y5Vlq3Rv4+XzhAr8hh5xQD/WeC1fJ0km5TgH9CAO2/sF40faIUbZQuhv2zfS
	dJ6vsYxdqC2RbpuRUHk4GGnt++gJsspiGH71jPeMVR1LqOMAWsr1K6N+PiHzb/9k
	94zW2eBOif+1aAw2X34xxlWnsNoeHZ2BRtF3KbveocScCaG8811KDJ16t5oghEY/
	bWbmSM5zkP1EWiYhNZ3EShcylsMKmWOleu9uFcO09pMFeRS6/f4/EZCGQpajnb9V
	0UsyXw==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41n4hex8kd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 17 Sep 2024 08:40:23 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 48H8eM2a032454
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 17 Sep 2024 08:40:22 GMT
Received: from [10.204.67.70] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Tue, 17 Sep
 2024 01:40:13 -0700
Message-ID: <3ea1189b-8b06-45bb-9d60-178f69ee407d@quicinc.com>
Date: Tue, 17 Sep 2024 14:10:10 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] phy: qcom: edp: Introduce aux_cfg array for
 version specific aux settings
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <konradybcio@kernel.org>,
        <andersson@kernel.org>, <simona@ffwll.ch>, <abel.vesa@linaro.org>,
        <robdclark@gmail.com>, <quic_abhinavk@quicinc.com>, <sean@poorly.run>,
        <marijn.suijten@somainline.org>, <airlied@gmail.com>,
        <daniel@ffwll.ch>, <maarten.lankhorst@linux.intel.com>,
        <mripard@kernel.org>, <tzimmermann@suse.de>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <quic_khsieh@quicinc.com>,
        <konrad.dybcio@linaro.org>, <quic_parellan@quicinc.com>,
        <quic_bjorande@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>, <freedreno@lists.freedesktop.org>,
        <devicetree@vger.kernel.org>, <quic_riteshk@quicinc.com>,
        <quic_vproddut@quicinc.com>
References: <20240913103755.7290-1-quic_mukhopad@quicinc.com>
 <20240913103755.7290-3-quic_mukhopad@quicinc.com>
 <CAA8EJppddLmzJ9WSkLLr-nwM-qe647Sm6jV8SpHdB=0vRQT-=Q@mail.gmail.com>
From: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
In-Reply-To: <CAA8EJppddLmzJ9WSkLLr-nwM-qe647Sm6jV8SpHdB=0vRQT-=Q@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: EW7-YFs4rYSVK7VBeqBZUWpboj-UHtU3
X-Proofpoint-GUID: EW7-YFs4rYSVK7VBeqBZUWpboj-UHtU3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501 mlxscore=0
 suspectscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015
 mlxlogscore=999 adultscore=0 malwarescore=0 phishscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2408220000
 definitions=main-2409170064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240917_014034_349752_CD14FB46 
X-CRM114-Status: GOOD (  17.72  )
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

Ck9uIDkvMTMvMjAyNCA1OjEyIFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIEZyaSwg
MTMgU2VwdCAyMDI0IGF0IDEzOjM4LCBTb3V0cmlrIE11a2hvcGFkaHlheQo+IDxxdWljX211a2hv
cGFkQHF1aWNpbmMuY29tPiB3cm90ZToKPj4gSW4gb3JkZXIgdG8gc3VwcG9ydCBkaWZmZXJlbnQg
SFcgdmVyc2lvbnMsIGludHJvZHVjZSBhdXhfY2ZnIGFycmF5Cj4+IHRvIG1vdmUgdjQgc3BlY2lm
aWMgYXV4IGNvbmZpZ3VyYXRpb24gc2V0dGluZ3MuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFNvdXRy
aWsgTXVraG9wYWRoeWF5IDxxdWljX211a2hvcGFkQHF1aWNpbmMuY29tPgo+PiAtLS0KPj4gdjI6
IEZpeGVkIHJldmlldyBjb21tZW50cyBmcm9tIEJqb3JuIGFuZCBEbWl0cnkKPj4gICAgICAgICAg
LSBNYWRlIGF1eF9jZmcgYXJyYXkgYXMgY29uc3QuCj4+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLWVkcC5jIHwgMzcgKysrKysrKysrKysrKysrKysrLS0tLS0tLS0t
LS0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0p
Cj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1lZHAuYyBi
L2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWVkcC5jCj4+IGluZGV4IGRhMmIzMmZiNWI0
NS4uYmNkNWFjZWQ5ZTA2IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHkt
cWNvbS1lZHAuYwo+PiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1lZHAuYwo+
PiBAQCAtOTAsNiArOTAsNyBAQCBzdHJ1Y3QgcGh5X3Zlcl9vcHMgewo+Pgo+PiAgIHN0cnVjdCBx
Y29tX2VkcF9waHlfY2ZnIHsKPj4gICAgICAgICAgYm9vbCBpc19lZHA7Cj4+ICsgICAgICAgY29u
c3QgdTggKmF1eF9jZmc7Cj4+ICAgICAgICAgIGNvbnN0IHN0cnVjdCBxY29tX2VkcF9zd2luZ19w
cmVfZW1waF9jZmcgKnN3aW5nX3ByZV9lbXBoX2NmZzsKPj4gICAgICAgICAgY29uc3Qgc3RydWN0
IHBoeV92ZXJfb3BzICp2ZXJfb3BzOwo+PiAgIH07Cj4+IEBAIC0xODYsMTEgKzE4NywxNSBAQCBz
dGF0aWMgY29uc3Qgc3RydWN0IHFjb21fZWRwX3N3aW5nX3ByZV9lbXBoX2NmZyBlZHBfcGh5X3N3
aW5nX3ByZV9lbXBoX2NmZyA9IHsKPj4gICAgICAgICAgLnByZV9lbXBoYXNpc19oYnIzX2hicjIg
PSAmZWRwX3ByZV9lbXBfaGJyMl9oYnIzLAo+PiAgIH07Cj4+Cj4+ICtzdGF0aWMgY29uc3QgdTgg
ZWRwX3BoeV9hdXhfY2ZnX3Y0WzEwXSA9IHsKPj4gKyAgICAgICAweDAwLCAweDEzLCAweDI0LCAw
eDAwLCAweDBhLCAweDI2LCAweDBhLCAweDAzLCAweDM3LCAweDAzCj4+ICt9Owo+PiArCj4+ICAg
c3RhdGljIGludCBxY29tX2VkcF9waHlfaW5pdChzdHJ1Y3QgcGh5ICpwaHkpCj4+ICAgewo+PiAg
ICAgICAgICBzdHJ1Y3QgcWNvbV9lZHAgKmVkcCA9IHBoeV9nZXRfZHJ2ZGF0YShwaHkpOwo+PiAr
ICAgICAgIHU4IGF1eF9jZmdbMTBdOwo+IFBsZWFzZSBkZWZpbmUgMTAsIHNvIHRoYXQgdGhlcmUg
YXJlIG5vIG1hZ2ljIG51bWJlcnMgKGFuZCBsZXNzIGNoYW5jZQo+IG9mIGRhbWFnaW5nIHRoZSBz
dGFjayBpZiBpdCBnZXRzIGNoYW5nZWQgaW4gb25lIHBsYWNlIG9ubHkuCgoKU3VyZSwgd2Ugd2ls
bCB1cGRhdGUgdGhpcyBpbiB0aGUgbmV4dCB2ZXJzaW9uLgoKCj4KPj4gICAgICAgICAgaW50IHJl
dDsKPj4gLSAgICAgICB1OCBjZmc4Owo+Pgo+PiAgICAgICAgICByZXQgPSByZWd1bGF0b3JfYnVs
a19lbmFibGUoQVJSQVlfU0laRShlZHAtPnN1cHBsaWVzKSwgZWRwLT5zdXBwbGllcyk7Cj4+ICAg
ICAgICAgIGlmIChyZXQpCj4+IEBAIC0yMDAsNiArMjA1LDggQEAgc3RhdGljIGludCBxY29tX2Vk
cF9waHlfaW5pdChzdHJ1Y3QgcGh5ICpwaHkpCj4+ICAgICAgICAgIGlmIChyZXQpCj4+ICAgICAg
ICAgICAgICAgICAgZ290byBvdXRfZGlzYWJsZV9zdXBwbGllczsKPj4KPj4gKyAgICAgICBtZW1j
cHkoYXV4X2NmZywgZWRwLT5jZmctPmF1eF9jZmcsIHNpemVvZihhdXhfY2ZnKSk7Cj4+ICsKPj4g
ICAgICAgICAgd3JpdGVsKERQX1BIWV9QRF9DVExfUFdSRE4gfCBEUF9QSFlfUERfQ1RMX0FVWF9Q
V1JETiB8Cj4+ICAgICAgICAgICAgICAgICBEUF9QSFlfUERfQ1RMX1BMTF9QV1JETiB8IERQX1BI
WV9QRF9DVExfRFBfQ0xBTVBfRU4sCj4+ICAgICAgICAgICAgICAgICBlZHAtPmVkcCArIERQX1BI
WV9QRF9DVEwpOwo+PiBAQCAtMjIyLDIyICsyMjksMjAgQEAgc3RhdGljIGludCBxY29tX2VkcF9w
aHlfaW5pdChzdHJ1Y3QgcGh5ICpwaHkpCj4+ICAgICAgICAgICAqIGV2ZW4gbmVlZGVkLgo+PiAg
ICAgICAgICAgKi8KPj4gICAgICAgICAgaWYgKGVkcC0+Y2ZnLT5zd2luZ19wcmVfZW1waF9jZmcg
JiYgIWVkcC0+aXNfZWRwKQo+PiAtICAgICAgICAgICAgICAgY2ZnOCA9IDB4Yjc7Cj4+IC0gICAg
ICAgZWxzZQo+PiAtICAgICAgICAgICAgICAgY2ZnOCA9IDB4Mzc7Cj4+ICsgICAgICAgICAgICAg
ICBhdXhfY2ZnWzhdID0gMHhiNzsKPj4KPj4gICAgICAgICAgd3JpdGVsKDB4ZmMsIGVkcC0+ZWRw
ICsgRFBfUEhZX01PREUpOwo+Pgo+PiAtICAgICAgIHdyaXRlbCgweDAwLCBlZHAtPmVkcCArIERQ
X1BIWV9BVVhfQ0ZHMCk7Cj4+IC0gICAgICAgd3JpdGVsKDB4MTMsIGVkcC0+ZWRwICsgRFBfUEhZ
X0FVWF9DRkcxKTsKPj4gLSAgICAgICB3cml0ZWwoMHgyNCwgZWRwLT5lZHAgKyBEUF9QSFlfQVVY
X0NGRzIpOwo+PiAtICAgICAgIHdyaXRlbCgweDAwLCBlZHAtPmVkcCArIERQX1BIWV9BVVhfQ0ZH
Myk7Cj4+IC0gICAgICAgd3JpdGVsKDB4MGEsIGVkcC0+ZWRwICsgRFBfUEhZX0FVWF9DRkc0KTsK
Pj4gLSAgICAgICB3cml0ZWwoMHgyNiwgZWRwLT5lZHAgKyBEUF9QSFlfQVVYX0NGRzUpOwo+PiAt
ICAgICAgIHdyaXRlbCgweDBhLCBlZHAtPmVkcCArIERQX1BIWV9BVVhfQ0ZHNik7Cj4+IC0gICAg
ICAgd3JpdGVsKDB4MDMsIGVkcC0+ZWRwICsgRFBfUEhZX0FVWF9DRkc3KTsKPj4gLSAgICAgICB3
cml0ZWwoY2ZnOCwgZWRwLT5lZHAgKyBEUF9QSFlfQVVYX0NGRzgpOwo+PiAtICAgICAgIHdyaXRl
bCgweDAzLCBlZHAtPmVkcCArIERQX1BIWV9BVVhfQ0ZHOSk7Cj4+ICsgICAgICAgd3JpdGVsKGF1
eF9jZmdbMF0sIGVkcC0+ZWRwICsgRFBfUEhZX0FVWF9DRkcwKTsKPj4gKyAgICAgICB3cml0ZWwo
YXV4X2NmZ1sxXSwgZWRwLT5lZHAgKyBEUF9QSFlfQVVYX0NGRzEpOwo+PiArICAgICAgIHdyaXRl
bChhdXhfY2ZnWzJdLCBlZHAtPmVkcCArIERQX1BIWV9BVVhfQ0ZHMik7Cj4+ICsgICAgICAgd3Jp
dGVsKGF1eF9jZmdbM10sIGVkcC0+ZWRwICsgRFBfUEhZX0FVWF9DRkczKTsKPj4gKyAgICAgICB3
cml0ZWwoYXV4X2NmZ1s0XSwgZWRwLT5lZHAgKyBEUF9QSFlfQVVYX0NGRzQpOwo+PiArICAgICAg
IHdyaXRlbChhdXhfY2ZnWzVdLCBlZHAtPmVkcCArIERQX1BIWV9BVVhfQ0ZHNSk7Cj4+ICsgICAg
ICAgd3JpdGVsKGF1eF9jZmdbNl0sIGVkcC0+ZWRwICsgRFBfUEhZX0FVWF9DRkc2KTsKPj4gKyAg
ICAgICB3cml0ZWwoYXV4X2NmZ1s3XSwgZWRwLT5lZHAgKyBEUF9QSFlfQVVYX0NGRzcpOwo+PiAr
ICAgICAgIHdyaXRlbChhdXhfY2ZnWzhdLCBlZHAtPmVkcCArIERQX1BIWV9BVVhfQ0ZHOCk7Cj4+
ICsgICAgICAgd3JpdGVsKGF1eF9jZmdbOV0sIGVkcC0+ZWRwICsgRFBfUEhZX0FVWF9DRkc5KTsK
PiBSZXBsYWNlIHRoaXMgd2l0aCBhIGxvb3A/CgoKQ2FuIHdlIHVzZSBiZWxvdyBhcHByb2FjaCBm
b3IgdGhpcyA6CgojZGVmaW5lIERQX1BIWV9BVVhfQ0ZHKG4pwqDCoMKgIMKgwqDCoCAoMHgyNCAr
ICgweDA0ICogKG4pKSkKCmZvciAoaW50IGkgPSAwOyBpIDwgMTA7IGkrKykKCiDCoMKgwqAgd3Jp
dGVsKGF1eF9jZmdbaV0sIGVkcC0+ZWRwICsgRFBfUEhZX0FVWF9DRkcoaSkpOwoKCj4KPj4gICAg
ICAgICAgd3JpdGVsKFBIWV9BVVhfU1RPUF9FUlJfTUFTSyB8IFBIWV9BVVhfREVDX0VSUl9NQVNL
IHwKPj4gICAgICAgICAgICAgICAgIFBIWV9BVVhfU1lOQ19FUlJfTUFTSyB8IFBIWV9BVVhfQUxJ
R05fRVJSX01BU0sgfAo+PiBAQCAtNTE5LDE2ICs1MjQsMTkgQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBwaHlfdmVyX29wcyBxY29tX2VkcF9waHlfb3BzX3Y0ID0gewo+PiAgIH07Cj4+Cj4+ICAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBxY29tX2VkcF9waHlfY2ZnIHNjNzI4MF9kcF9waHlfY2ZnID0gewo+
PiArICAgICAgIC5hdXhfY2ZnID0gZWRwX3BoeV9hdXhfY2ZnX3Y0LAo+PiAgICAgICAgICAudmVy
X29wcyA9ICZxY29tX2VkcF9waHlfb3BzX3Y0LAo+PiAgIH07Cj4+Cj4+ICAgc3RhdGljIGNvbnN0
IHN0cnVjdCBxY29tX2VkcF9waHlfY2ZnIHNjODI4MHhwX2RwX3BoeV9jZmcgPSB7Cj4+ICsgICAg
ICAgLmF1eF9jZmcgPSBlZHBfcGh5X2F1eF9jZmdfdjQsCj4+ICAgICAgICAgIC5zd2luZ19wcmVf
ZW1waF9jZmcgPSAmZHBfcGh5X3N3aW5nX3ByZV9lbXBoX2NmZywKPj4gICAgICAgICAgLnZlcl9v
cHMgPSAmcWNvbV9lZHBfcGh5X29wc192NCwKPj4gICB9Owo+Pgo+PiAgIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgcWNvbV9lZHBfcGh5X2NmZyBzYzgyODB4cF9lZHBfcGh5X2NmZyA9IHsKPj4gICAgICAg
ICAgLmlzX2VkcCA9IHRydWUsCj4+ICsgICAgICAgLmF1eF9jZmcgPSBlZHBfcGh5X2F1eF9jZmdf
djQsCj4+ICAgICAgICAgIC5zd2luZ19wcmVfZW1waF9jZmcgPSAmZWRwX3BoeV9zd2luZ19wcmVf
ZW1waF9jZmcsCj4+ICAgICAgICAgIC52ZXJfb3BzID0gJnFjb21fZWRwX3BoeV9vcHNfdjQsCj4+
ICAgfTsKPj4gQEAgLTcwNyw2ICs3MTUsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHBoeV92ZXJf
b3BzIHFjb21fZWRwX3BoeV9vcHNfdjYgPSB7Cj4+ICAgfTsKPj4KPj4gICBzdGF0aWMgc3RydWN0
IHFjb21fZWRwX3BoeV9jZmcgeDFlODAxMDBfcGh5X2NmZyA9IHsKPj4gKyAgICAgICAuYXV4X2Nm
ZyA9IGVkcF9waHlfYXV4X2NmZ192NCwKPj4gICAgICAgICAgLnN3aW5nX3ByZV9lbXBoX2NmZyA9
ICZkcF9waHlfc3dpbmdfcHJlX2VtcGhfY2ZnLAo+PiAgICAgICAgICAudmVyX29wcyA9ICZxY29t
X2VkcF9waHlfb3BzX3Y2LAo+PiAgIH07Cj4+IC0tCj4+IDIuMTcuMQo+Pgo+CgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
