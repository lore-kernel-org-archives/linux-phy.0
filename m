Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26BD7C282DC
	for <linux-phy@archiver.kernel.org>; Wed,  5 Mar 2025 10:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UeiHPAQmxFW4TLszwmKWQZX2SDeH+TI/sch4gFirMZA=; b=iw4Ue8ENrczdFp
	/hmeNqQ4uf4JYHf9+qfOkmRYrk13TlZHvsRBdUIiItSQUucWTTxG8mpoCdcSa5Io5WrBBq8adSUx5
	ulWDZACO2Nx6WEfShVvjerM7h1aYpLIXySG8ZQIe6fX+Fd7oD9n/BY7ahHsD2frOf9UsDhJzj6WsC
	s8Lpeu5QEGHs807PF/FoNDl/RWq9zU0QUVKDeunsERNPLc/fplb/b2JSRm30wRLHXvTkzqrHGtHB1
	EDYzGVw5ihOWIqchp9kOTZ+I+45trQcRAclRxEDU3rSSWwOcPOXadiVEjA7STue3qY9vc3YAab3ir
	CQyvdhi0xNqwE+8FGbgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpmKW-00000007kES-1Vvz;
	Wed, 05 Mar 2025 10:50:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tploS-00000007eQj-2OOH
	for linux-phy@bombadil.infradead.org;
	Wed, 05 Mar 2025 10:17:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:CC:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=lQZjIkh0Rb6Q4LITU2aPSTBOhbpnSxFczFX8aIYNweY=; b=aOwic3OrGE9/XEkc3rJ9VF+ebT
	wkLZWuWjpJTXSq0CZBePlm/zYOSFdqYAj3+bgWU7L3IRe31kOyUMgNdYmqOu2Hrm1gpsy+bhTCoHJ
	0cPkld61RaYsa6oEwvFDbWRF7036Ea3Ie51LaS9Qw2TFeuz8IVvWB8CxhSEzeBJt6DrGSUVvEDhoG
	35c7T/63FtUc/EZZPH/YhjiwEsXmKCmW5G5sanOOjitXCW25qoB1ZuOUCuWiVI1H2Xi6JzOOSwTuF
	keN/LmSKlQekxmJfQIUSVQQsGj4nMJwRmLHtwFOEKR4oSLhYWcfPOWJPMwQ2G+y+GoUbZvRLVhk9M
	raIXYmIA==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tploP-00000000Som-07SC
	for linux-phy@lists.infradead.org;
	Wed, 05 Mar 2025 10:17:15 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 524NA1Bw031245;
	Wed, 5 Mar 2025 10:16:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lQZjIkh0Rb6Q4LITU2aPSTBOhbpnSxFczFX8aIYNweY=; b=evv4pIbcH+S5KRO9
	ef/dWzmnbSRlq8GY/Up/2910Ew1KAmhh1InVoa4W+hLg3U4SFBfQC8D++FhjU0LC
	CNMvrZlvJlVA09u/16dD0A4c4xa22KbqF3l1LkVOUHmOgl2/nXMalr56DEXaWBLK
	0mgR9Bsh8Q2U9rV88fXrfms1fjeFQz0fl7OkiVr70IRAgP7xE/u5VNjQOf/J7Ku2
	hiDA/c40B5gCcqQy7OPJU8BS1UeF8cVCDN0mTqnP1gdHtgK9cUGN7WrtzhM5LfCD
	9PikQi7FC3mWnQWITL8yhWyY97bm9k5Odso2nYnPdWeeHhemRSM/PrQfZ1ufdIt9
	kibRsA==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 455p6t4yrd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 05 Mar 2025 10:16:55 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 525AGt2G005786
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 5 Mar 2025 10:16:55 GMT
Received: from [10.64.16.135] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 5 Mar 2025
 02:16:47 -0800
Message-ID: <9fb34496-d823-414a-b7dc-54b4677829e5@quicinc.com>
Date: Wed, 5 Mar 2025 18:16:45 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/8] drm/msm/dp: Add support for lane mapping
 configuration
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
 <20241129-add-displayport-support-for-qcs615-platform-v1-5-09a4338d93ef@quicinc.com>
 <CAA8EJpoY8hySQd00yODGeHjSpVZpEBLjF3aBiKGJPUhpr-2mgw@mail.gmail.com>
 <d2a3cd6f-1077-4edb-9f0c-0c940a639050@quicinc.com>
 <zvapsvfftai4fp6vwrn33edqsyuuprq2pxz6spij6j7t4y6xmn@zzgp7gbsivbk>
 <93ddb63c-42da-43c8-9a77-c517ca5d6432@quicinc.com>
 <CAA8EJprAFYD6ykN10-r=JwHM4A4XeDDcZVcVWYp_5A5FP-=RyA@mail.gmail.com>
 <e647d143-dc6e-483d-ac81-2733fb526fc3@quicinc.com>
 <h6tmbuv26tdv633udphttsydpbvnwownulvglcxktdaxqdhtvw@ereftfs5hiso>
From: Xiangxu Yin <quic_xiangxuy@quicinc.com>
In-Reply-To: <h6tmbuv26tdv633udphttsydpbvnwownulvglcxktdaxqdhtvw@ereftfs5hiso>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: aKatwj6BJQyRYbP4xVAYI6QwH_7jJYG2
X-Authority-Analysis: v=2.4 cv=KfMosRYD c=1 sm=1 tr=0 ts=67c82497 cx=c_pps a=JYp8KDb2vCoCEuGobkYCKw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=e5mUnYsNAAAA:8 a=Oh2cFVv5AAAA:8 a=JfrnYn6hAAAA:8
 a=COk6AnOGAAAA:8 a=BOJ6RS-tu9LrgQTqqMAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=Vxmtnl_E_bksehYqCbjh:22 a=7KeoIwV6GZqOttXkcoxL:22 a=1CNFftbPRP8L7MoqJWF3:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: aKatwj6BJQyRYbP4xVAYI6QwH_7jJYG2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-05_04,2025-03-05_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 lowpriorityscore=0
 spamscore=0 suspectscore=0 phishscore=0 malwarescore=0 clxscore=1011
 priorityscore=1501 impostorscore=0 mlxlogscore=999 adultscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503050082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_101713_437720_24BACA74 
X-CRM114-Status: GOOD (  36.15  )
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

CgpPbiAxMi8yMC8yMDI0IDU6NDUgQU0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gT24gVGh1
LCBEZWMgMTksIDIwMjQgYXQgMDY6MzY6MzhQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4+
Cj4+Cj4+IE9uIDEyLzUvMjAyNCA3OjQwIFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+Pj4g
T24gVGh1LCA1IERlYyAyMDI0IGF0IDEzOjI4LCBYaWFuZ3h1IFlpbiA8cXVpY194aWFuZ3h1eUBx
dWljaW5jLmNvbT4gd3JvdGU6Cj4+Pj4KPj4+Pgo+Pj4+Cj4+Pj4gT24gMTIvMi8yMDI0IDY6NDYg
UE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+Pj4+IE9uIE1vbiwgRGVjIDAyLCAyMDI0IGF0
IDA0OjQwOjA1UE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+
PiBPbiAxMS8yOS8yMDI0IDk6NTAgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+Pj4+Pj4g
T24gRnJpLCAyOSBOb3YgMjAyNCBhdCAwOTo1OSwgWGlhbmd4dSBZaW4gPHF1aWNfeGlhbmd4dXlA
cXVpY2luYy5jb20+IHdyb3RlOgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBBZGQgdGhlIGFiaWxpdHkgdG8g
Y29uZmlndXJlIGxhbmUgbWFwcGluZyBmb3IgdGhlIERQIGNvbnRyb2xsZXIuIFRoaXMgaXMKPj4+
Pj4+Pj4gcmVxdWlyZWQgd2hlbiB0aGUgcGxhdGZvcm0ncyBsYW5lIG1hcHBpbmcgZG9lcyBub3Qg
Zm9sbG93IHRoZSBkZWZhdWx0Cj4+Pj4+Pj4+IG9yZGVyICgwLCAxLCAyLCAzKS4gVGhlIG1hcHBp
bmcgcnVsZXMgYXJlIG5vdyBjb25maWd1cmFibGUgdmlhIHRoZQo+Pj4+Pj4+PiBgZGF0YS1sYW5l
YCBwcm9wZXJ0eSBpbiB0aGUgZGV2aWNldHJlZS4gVGhpcyBwcm9wZXJ0eSBkZWZpbmVzIHRoZQo+
Pj4+Pj4+PiBsb2dpY2FsLXRvLXBoeXNpY2FsIGxhbmUgbWFwcGluZyBzZXF1ZW5jZSwgZW5zdXJp
bmcgY29ycmVjdCBsYW5lCj4+Pj4+Pj4+IGFzc2lnbm1lbnQgZm9yIG5vbi1kZWZhdWx0IGNvbmZp
Z3VyYXRpb25zLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBYaWFuZ3h1IFlpbiA8
cXVpY194aWFuZ3h1eUBxdWljaW5jLmNvbT4KPj4+Pj4+Pj4gLS0tCj4+Pj4+Pj4+ICBkcml2ZXJz
L2dwdS9kcm0vbXNtL2RwL2RwX2NhdGFsb2cuYyB8IDExICsrKysrLS0tLS0tCj4+Pj4+Pj4+ICBk
cml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2NhdGFsb2cuaCB8ICAyICstCj4+Pj4+Pj4+ICBkcml2
ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2N0cmwuYyAgICB8ICAyICstCj4+Pj4+Pj4+ICBkcml2ZXJz
L2dwdS9kcm0vbXNtL2RwL2RwX3BhbmVsLmMgICB8IDEzICsrKysrKysrKystLS0KPj4+Pj4+Pj4g
IGRyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfcGFuZWwuaCAgIHwgIDMgKysrCj4+Pj4+Pj4+ICA1
IGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQo+Pj4+Pj4+
Pgo+Pj4+Pgo+Pj4+Pj4+PiBAQCAtNDYxLDYgKzQ2MCw3IEBAIHN0YXRpYyBpbnQgbXNtX2RwX3Bh
bmVsX3BhcnNlX2R0KHN0cnVjdCBtc21fZHBfcGFuZWwgKm1zbV9kcF9wYW5lbCkKPj4+Pj4+Pj4g
ICAgICAgICBzdHJ1Y3QgbXNtX2RwX3BhbmVsX3ByaXZhdGUgKnBhbmVsOwo+Pj4+Pj4+PiAgICAg
ICAgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqb2Zfbm9kZTsKPj4+Pj4+Pj4gICAgICAgICBpbnQgY250
Owo+Pj4+Pj4+PiArICAgICAgIHUzMiBsYW5lX21hcFtEUF9NQVhfTlVNX0RQX0xBTkVTXSA9IHsw
LCAxLCAyLCAzfTsKPj4+Pj4+Pj4KPj4+Pj4+Pj4gICAgICAgICBwYW5lbCA9IGNvbnRhaW5lcl9v
Zihtc21fZHBfcGFuZWwsIHN0cnVjdCBtc21fZHBfcGFuZWxfcHJpdmF0ZSwgbXNtX2RwX3BhbmVs
KTsKPj4+Pj4+Pj4gICAgICAgICBvZl9ub2RlID0gcGFuZWwtPmRldi0+b2Zfbm9kZTsKPj4+Pj4+
Pj4gQEAgLTQ3NCwxMCArNDc0LDE3IEBAIHN0YXRpYyBpbnQgbXNtX2RwX3BhbmVsX3BhcnNlX2R0
KHN0cnVjdCBtc21fZHBfcGFuZWwgKm1zbV9kcF9wYW5lbCkKPj4+Pj4+Pj4gICAgICAgICAgICAg
ICAgIGNudCA9IGRybV9vZl9nZXRfZGF0YV9sYW5lc19jb3VudChvZl9ub2RlLCAxLCBEUF9NQVhf
TlVNX0RQX0xBTkVTKTsKPj4+Pj4+Pj4gICAgICAgICB9Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IC0gICAg
ICAgaWYgKGNudCA+IDApCj4+Pj4+Pj4+ICsgICAgICAgaWYgKGNudCA+IDApIHsKPj4+Pj4+Pj4g
KyAgICAgICAgICAgICAgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqZW5kcG9pbnQ7Cj4+Pj4+Pj4+ICsK
Pj4+Pj4+Pj4gICAgICAgICAgICAgICAgIG1zbV9kcF9wYW5lbC0+bWF4X2RwX2xhbmVzID0gY250
Owo+Pj4+Pj4+PiAtICAgICAgIGVsc2UKPj4+Pj4+Pj4gKyAgICAgICAgICAgICAgIGVuZHBvaW50
ID0gb2ZfZ3JhcGhfZ2V0X2VuZHBvaW50X2J5X3JlZ3Mob2Zfbm9kZSwgMSwgLTEpOwo+Pj4+Pj4+
PiArICAgICAgICAgICAgICAgb2ZfcHJvcGVydHlfcmVhZF91MzJfYXJyYXkoZW5kcG9pbnQsICJk
YXRhLWxhbmVzIiwgbGFuZV9tYXAsIGNudCk7Cj4+Pj4+Pj4+ICsgICAgICAgfSBlbHNlIHsKPj4+
Pj4+Pj4gICAgICAgICAgICAgICAgIG1zbV9kcF9wYW5lbC0+bWF4X2RwX2xhbmVzID0gRFBfTUFY
X05VTV9EUF9MQU5FUzsgLyogNCBsYW5lcyAqLwo+Pj4+Pj4+PiArICAgICAgIH0KPj4+Pj4+Pgo+
Pj4+Pj4+IFdoeT8gVGhpcyBzb3VuZHMgbW9yZSBsaWtlIGRwX2NhdGFsb2cgb3IgKGFmdGVyIHRo
ZSByZWZhY3RvcmluZyBhdAo+Pj4+Pj4+IFsxXSkgZHBfY3RybC4gQnV0IG5vdCB0aGUgZHBfcGFu
ZWwuCj4+Pj4+Pj4KPj4+Pj4+PiBbMV0gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Byb2plY3QvZnJlZWRyZW5vL3Nlcmllcy8/b3JkZXJpbmc9LWxhc3RfdXBkYXRlZAo+Pj4+Pj4+
Cj4+Pj4+PiBXZSBhcmUgdXNlZCB0aGUgc2FtZSBwcm9wICdkYXRhLWxhbmVzID0gPDMgMiAwIDE+
JyBpbiBtZHNzX2RwX291dCB0byBrZWVwIHNpbWlsYXIgYmVoYXZpb3VyIHdpdGggZHNpX2hvc3Rf
cGFyc2VfbGFuZV9kYXRhLgo+Pj4+Pj4gRnJvbSB0aGUgbW9kdWxlcyB1c2VkLCBjYXRhbG9nIHNl
ZW1zIG1vcmUgYXBwcm9wcmlhdGUsIGJ1dCBzaW5jZSB0aGUgbWF4X2RwX2xhbmVzIGlzIHBhcnNl
ZCBhdCBkcF9wYW5lbCwgaXQgaGFzIGJlZW4gcGxhY2VkIGhlcmUuCj4+Pj4+PiBTaG91bGQgbGFu
ZV9tYXAgcGFyc2luZyBpbiBtc21fZHBfY2F0YWxvZ19nZXQsIGFuZCBrZWVwIG1heF9kcF9sYW5l
cyBwYXJzaW5nIGF0IHRoZSBkcF9wYW5lbD8KPj4+Pj4KPj4+Pj4gbXNtX2RwX2NhdGFsb2dfZ2V0
KCkgaXMgZ29pbmcgdG8gYmUgcmVtb3ZlZC4gU2luY2UgdGhlIGZ1bmN0aW9ucyB0aGF0Cj4+Pj4+
IGFyZSBnb2luZyB0byB1c2UgaXQgYXJlIGluIGRwX2N0cmwgbW9kdWxlLCBJIHRob3VnaHQgdGhh
dCBkcF9jdHJsLmMgaXMKPj4+Pj4gdGhlIGJlc3QgcGxhY2UuIEEgYmV0dGVyIG9wdGlvbiBtaWdo
dCBiZSB0byBtb3ZlIG1heF9kcF9sYW5lcyBhbmQKPj4+Pj4gbWF4X2RwX2xpbmtfcmF0ZSB0byBk
cF9saW5rLmMgYXMgdGhvc2UgYXJlIGxpbmsgcGFyYW1zLiBUaGVuCj4+Pj4+IGxhbmVfbWFwcGlu
ZyBhbHNvIGxvZ2ljYWxseSBiZWNvbWVzIGEgcGFydCBvZiBkcF9saW5rIG1vZHVsZS4KPj4+Pj4K
Pj4+Pj4gQnV0IG5vdyBJIGhhdmUgYSBtb3JlIGltcG9ydGFudCBxdWVzdGlvbiAodHJpZ2dlcmVk
IGJ5IEtyaXNobmEncyBlbWFpbAo+Pj4+PiBhYm91dCBTQVIyMTMwUCdzIFVTQik6IGlmIHRoZSBs
YW5lcyBhcmUgc3dhcHBlZCwgZG9lcyBVU0IgMyB3b3JrIG9uIHRoYXQKPj4+Pj4gcGxhdGZvcm0/
IE9yIGlzIGl0IGJlaW5nIGRlbW90ZWQgdG8gVVNCIDIgd2l0aCBub2JvZHkgbm90aWNpbmcgdGhh
dD8KPj4+Pj4KPj4+Pj4gSWYgbGFuZXMgMC8xIGFuZCAyLzMgYXJlIHN3YXBwZWQsIHNob3VsZG4n
dCBpdCBiZSBoYW5kbGVkIGluIHRoZSBRTVAKPj4+Pj4gUEhZLCB3aGVyZSB3ZSBoYW5kbGUgbGFu
ZXMgYW5kIG9yaWVudGF0aW9uIHN3aXRjaGluZz8KPj4+Pj4KPj4+PiBJIGhhdmUgY2hlY2tlZCB0
aGUgRFAgaGFyZHdhcmUgcHJvZ3JhbW1pbmcgZ3VpZGUgYW5kIGFsc28gZGlzY3Vzc2VkIGl0IHdp
dGggS3Jpc2huYS4KPj4+Pgo+Pj4+IEFjY29yZGluZyB0byB0aGUgSFBHIHNlY3Rpb24gJzMuNC4y
IFBOIGFuZCBMYW5lIFN3YXA6IFBIWSBzdXBwb3J0cyBQTiBzd2FwIGZvciBtYWlubGluayBhbmQg
QVVYLCBidXQgaXQgZG9lc24ndCBzdXBwb3J0IGxhbmUgc3dhcCBmZWF0dXJlLicKPj4+Pgo+Pj4+
IFRoZSBsYW5lIHN3YXAgbWFpbmx5IHJlZmVycyB0byB0aGUgbG9naWNhbCB0byBwaHlzaWNhbCBt
YXBwaW5nIGJldHdlZW4gdGhlIERQIGNvbnRyb2xsZXIgYW5kIHRoZSBEUCBQSFkuIFRoZSBQSFkg
aGFuZGxlcyBwb2xhcml0eSBpbnZlcnNpb24sIGFuZCB0aGUgbGFuZSBtYXAgZG9lcyBub3QgYWZm
ZWN0IFVTQiBiZWhhdmlvci4KPj4+Pgo+Pj4+IE9uIHRoZSBRQ1M2MTUgcGxhdGZvcm0sIHdlIGhh
dmUgYWxzbyB0ZXN0ZWQgd2hlbiBEUCB3b3JrcyB3aXRoIGxhbmUgc3dhcCwgb3RoZXIgVVNCIDMu
MCBwb3J0cyBjYW4gd29ya3Mgbm9ybWFsbHkgYXQgc3VwZXIgc3BlZWQuCj4+Pgo+Pj4gIk90aGVy
IFVTQiAzLjAgcG9ydHMiPyBXaGF0IGRvZXMgdGhhdCBtZWFuPyBQbGVhc2UgY29ycmVjdCBtZSBp
ZiBJJ20KPj4+IHdyb25nLCB5b3Ugc2hvdWxkIGhhdmUgYSBVU0IrRFAgY29tYm8gcG9ydCB0aGF0
IGlzIGJlaW5nIG1hbmFnZWQgd2l0aAo+Pj4gY29tYm8gUEhZLiBEb2VzIFVTQiAzIHdvcmsgb24g
dGhhdCBwb3J0Pwo+Pj4KPj4+IEluIG90aGVyIHdvcmRzLCB3aGVyZSB0aGUgb3JkZXIgb2YgbGFu
ZXMgaXMgYWN0dWFsbHkgaW52ZXJ0ZWQ/IEJldHdlZW4KPj4+IERQIGFuZCBjb21ibyBQSFk/IFdp
dGhpbiBjb21ibyBQSFk/IEJldHdlZW4gdGhlIFBIWSBhbmQgdGhlIHBpbm91dD8KPj4+IEdyYW50
ZWQgdGhhdCBTTTYxNTAgd2FzIHN1cHBvcnRlZCBpbiBtc20tNC4xNCBjb3VsZCB5b3UgcG9zc2li
bHkgcG9pbnQKPj4+IG91dCBhIGNvcnJlc3BvbmRpbmcgY29tbWl0IG9yIGEgc2V0IG9mIGNvbW1p
dHMgZnJvbSB0aGF0IGtlcm5lbD8KPj4+Cj4+IEZvciAiT3RoZXIgVVNCIDMuMCBwb3J0cyIsIGFz
IHJlcGxpZWQgaW4gVVNCQyBkcml2ZXIsIFVTQjMgcHJpbWFyeSBwaHkgd29ya3MgZm9yIG90aGVy
IGZvdXIgVVNCIHR5cGUtQSBwb3J0Lgo+IAo+IFNvIGlmIHRoYXQncyB0aGUgVVNCMyBwcmltYXJ5
LCB0aGVuIHdoeSBkbyB5b3UgbWVudGlvbiBoZXJlIGF0IGFsbD8gV2UKPiBhcmUgdGFsaW5nIGFi
b3V0IHRoZSBzZWNvbmRhcnkgVVNCMyArIERQLgo+IApPSywgc29ycnkgZm9yIGNvbmZ1c2luZyB5
b3UuCj4+IFRoZSBSRUdfRFBfTE9HSUNBTDJQSFlTSUNBTF9MQU5FX01BUFBJTkcgbWFwcGluZyBk
ZXRlcm1pbmVzIGhvdyBsb2dpY2FsIGxhbmVzICgwLCAxLCAyLCAzKSBtYXAgdG8gcGh5c2ljYWwg
bGFuZXMgc2VudCB0byB0aGUgUEhZLgo+PiBUaGlzIGVuc3VyZXMgYWxpZ25tZW50IHdpdGggaGFy
ZHdhcmUgcmVxdWlyZW1lbnRzLgo+PiBUaGUgUEhZ4oCZcyBwb2xhcml0eSBpbnZlcnNpb24gb25s
eSBhZGp1c3RzIHNpZ25hbCBwb2xhcml0eSBhbmQgZG9lc27igJl0IGFmZmVjdCBsYW5lIG1hcHBp
bmcuCj4+IEJvdGggRFAgY3RybCBhbmQgUEhZIGxhbmUgcmVsYXRlZCBjb25maWcgd2lsbCBub3Qg
YWZmZWN0IFVTQiBwaHkuCj4gCj4gUHJvYmFibHkgd2UgbWlzdW5kZXJzYW5kIGVhY2ggb3RoZXIu
IFRoZSBEUCBQSFkgc2hvdWxkIGhhdmUgb3JpZW50YXRpb24KPiBzd2l0Y2ggcmVnaXN0ZXIsIHdo
aWNoIGNvbnRyb2xzIHdoZXRoZXIgMi1sYW5lIERQIHVzZXMgbGFuZXMgMC8xIG9yIDIvMy4KPiBD
YW4geW91IHVzZSB0aGF0IHJlZ2lzdGVyPwo+IApZZXMsIERQIFBIWSBoYXZlIG9yaWVudGF0aW9u
IHJlZ2lzdGVyIGFzIGJlbG93LgpEUF9QSFlfRFBfUEhZX0NGR18xKDB4ODhlOTAxNCkgYml0KDcp
IFNXX1BPUlRTRUxFQ1QKPiBBbHNvLCBjb3VsZCB5b3UgX3BsZWFzZV8gYW5zd2VyIHRoZSBxdWVz
dGlvbiB0aGF0IEkgaGF2ZSBhc2tlZD8gSXMgdGhlCj4gb3JkZXIgb2YgbGFuZXMgaW52ZXJ0ZWQg
YmV0d2VlbiB0aGUgRFAgY29udHJvbGxlciBhbmQgRFAgUEhZPyBPciBiZXR3ZWVuCj4gRFAgUEhZ
IGFuZCB0aGUgRFAgY29ubmVjdG9yPyBJZiBvbmUgdXNlcyBVU0IzIHNpZ25hbHMgY29taW5nIGZy
b20gdGhpcwo+IHBvcnQgKHllcywgb24gdGhlIG90aGVyIGJvYXJkLCBub3Qgb24gdGhlIFJpZGUp
LCB3b3VsZCB0aGV5IGFsc28gbmVlZCB0bwo+IHN3aXRjaCB0aGUgb3JkZXIgb2YgVVNCMyBsYW5l
cz8gSWYgb25lIHVzZXMgYSBEUC1vdmVyLVVTQi1DLCBhcmUgRFAKPiBsYW5lcyBhcmUgc3dhcHBl
ZD8KPiAKSXQncyBpbnZlcnRlZCBiZXR3ZWVuIHRoZSBEUCBjb250cm9sbGVyIGFuZCBEUCBQSFku
CklmIG90aGVyIHVzZSBVU0IzIG9uIHRoZSBvdGhlciBib2FyZCwgd2lsbCBub3QgbmVlZCBzd2l0
Y2ggb3JkZXIgb2YgVVNCMyBsYW5lcywKSWYgb25lIHVzZSBEUC1vdmVyLVVTQi1DLCB0aGVuIG5l
ZWQgRFAgbGFuZXMgc3dhcC4KPj4gV2l0aG91dCBleHRyYSBUeXBlLUMgbWFwcGluZywgdGhlIERQ
IGNvbnRyb2xsZXLigJlzIG1hcHBpbmcgaW5kaXJlY3RseSBkZWNpZGVzIGhvdyBzaWduYWxzIGFy
ZSB0cmFuc21pdHRlZCB0aHJvdWdoIFR5cGUtQy4KPj4gTWFwcGluZyBlbnN1cmVzIHByb3BlciBk
YXRhIHRyYW5zbWlzc2lvbiBhbmQgY29tcGF0aWJpbGl0eSBhY3Jvc3MgaW50ZXJmYWNlcy4KPj4K
Pj4gV2Ugb25seSBmb3VuZCBzbTYxNTAgbmVlZCB0aGlzIGxhbmUgbWFwcGluZyBjb25maWcsIAo+
PiBGb3IgbXNtIDQuMTQsIHBsZWFzZSByZWZlciB0aGVzZSBsaW5rcywKPj4gaHR0cHM6Ly9hbmRy
b2lkLmdvb2dsZXNvdXJjZS5jb20va2VybmVsL21zbS8rL2FmMDNlZWY3ZDRjM2NiZDFmZTI2YzY3
ZDRmMTkxNWIwNWQwYzE0ODgvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NtNjE1MC1zZGUuZHRz
aSAocWNvbSxsb2dpY2FsMnBoeXNpY2FsLWxhbmUtbWFwKQo+PiBodHRwczovL2FuZHJvaWQuZ29v
Z2xlc291cmNlLmNvbS9rZXJuZWwvbXNtLysvYWYwM2VlZjdkNGMzY2JkMWZlMjZjNjdkNGYxOTE1
YjA1ZDBjMTQ4OC9kcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX3BhcnNlci5jIChkcF9wYXJzZXJf
bWlzYykKPj4gaHR0cHM6Ly9hbmRyb2lkLmdvb2dsZXNvdXJjZS5jb20va2VybmVsL21zbS8rL2Fm
MDNlZWY3ZDRjM2NiZDFmZTI2YzY3ZDRmMTkxNWIwNWQwYzE0ODgvZHJpdmVycy9ncHUvZHJtL21z
bS9kcC9kcF9jYXRhbG9nX3YyMDAuYyAoZHBfY2F0YWxvZ19jdHJsX2xhbmVfbWFwcGluZ192MjAw
KQo+Pgo+PiBJZiBuZWVkIHByb2Nlc3Mgb3JpZW50YXRpb24gaW5mbyBsaWtlIGRwX2NhdGFsb2df
Y3RybF9sYW5lX21hcHBpbmdfdjIwMCwgCj4+IHRoZW4gCj4+IGlmIGltcGxlbWVudCBpbiBEUCBw
aHksIHRoZW4gd2UgbmVlZCBjb25maWcgZHBfbGluayByZWdpc3RlciBpbiBQSFksCj4+IGlmIGlt
cGxlbWVudCBpbiBEUCBsaW5rLCB0aGVuIHdlIG5lZWQgcGFzcyBvcmllbnRhdGlvbiBpbmZvIHRv
IERQIGRyaXZlciwgcGVyaGFwcyB3ZSBjb3VsZCBhZGQgYSBuZXcgYXR0cmlidXRlIHRvIHRoZSBw
aHlfY29uZmlndXJlX29wdHNfZHAgc3RydWN0dXJlIHRvIHBhc3MgdGhpcy4KPj4gRG8geW91IGhh
dmUgYW55IHN1Z2dlc3Rpb25zPwo+IAo+IERvZXMgU1dfUE9SVFNFTF9WQUwgYWZmZWN0IHRoZSBE
UCBsYW5lcyBvbiB0aGlzIHBsYXRmb3JtPwo+IApTV19QT1JUU0VMX1ZBTCBmb3IgVVNCM1BIWV9Q
Q1NfTUlTQ19UWVBFQ19DVFJMIHdpbGwgbm90IGFmZmVjdCBEUCBsYW5lcyBpbiB0aGlzIERQIG9y
IFVTQjMgY2hpcCBzZXJpZXMuClVTQjMgd2lsbCB1c2UgVVNCM1BIWV9QQ1NfTUlTQ19UWVBFQ19D
VFJMKFNXX1BPUlRTRUxfVkFMIEJJVF8wKSBhbmQgRFAgd2lsbCB1c2UgRFBfUEhZX0RQX1BIWV9D
RkdfMShTV19QT1JUU0VMRUNUIEJJVF83KQo+Pgo+Pj4+Cj4+Pj4gQWRkaXRpb25hbGx5LCBpZiBp
dCB3ZXJlIHBsYWNlZCBvbiB0aGUgUEhZIHNpZGUsIHRoZSBQSFkgd291bGQgbmVlZCBhY2Nlc3Mg
dG8gZHBfbGlua+KAmXMgZG9tYWluIHdoaWNoIGNhbiBhY2Nlc3MgUkVHX0RQX0xPR0lDQUwyUEhZ
U0lDQUxfTEFORV9NQVBQSU5HLgo+Pj4KPj4+IEkgd2FzIHRoaW5raW5nIGFib3V0IGludmVydGlu
ZyB0aGUgU1dfUE9SVFNFTF9WQUwgYml0Lgo+Pj4KPj4+PiBUaGVyZWZvcmUsIHdlIGJlbGlldmUg
dGhhdCB0aGUgIG1heF9kcF9saW5rX3JhdGUsbWF4X2RwX2xhbmVzIGFuZCBsYW5lX21hcCBtb3Zl
IHRvIGRwX2xpbmsgc2lkZSBpcyBiZXR0ZXIuCj4+Pj4KPj4+Pj4+Pj4gKwo+Pj4+Pj4+PiArICAg
ICAgIG1lbWNweShtc21fZHBfcGFuZWwtPmxhbmVfbWFwLCBsYW5lX21hcCwgbXNtX2RwX3BhbmVs
LT5tYXhfZHBfbGFuZXMgKiBzaXplb2YodTMyKSk7Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+ICAgICAgICAg
bXNtX2RwX3BhbmVsLT5tYXhfZHBfbGlua19yYXRlID0gbXNtX2RwX3BhbmVsX2xpbmtfZnJlcXVl
bmNpZXMob2Zfbm9kZSk7Cj4+Pj4+Pj4+ICAgICAgICAgaWYgKCFtc21fZHBfcGFuZWwtPm1heF9k
cF9saW5rX3JhdGUpCj4+Pj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbXNtL2Rw
L2RwX3BhbmVsLmggYi9kcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX3BhbmVsLmgKPj4+Pj4+Pj4g
aW5kZXggMGU5NDRkYjNhZGYyZjE4N2YzMTM2NjRmZTgwY2Y1NDBlYzdhMTlmMi4uNzYwM2I5MmMz
MjkwMmJkM2Q0NDg1NTM5YmQ2MzA4NTM3ZmY3NWEyYyAxMDA2NDQKPj4+Pj4+Pj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL21zbS9kcC9kcF9wYW5lbC5oCj4+Pj4+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9tc20vZHAvZHBfcGFuZWwuaAo+Pj4+Pj4+PiBAQCAtMTEsNiArMTEsOCBAQAo+Pj4+Pj4+
PiAgI2luY2x1ZGUgImRwX2F1eC5oIgo+Pj4+Pj4+PiAgI2luY2x1ZGUgImRwX2xpbmsuaCIKPj4+
Pj4+Pj4KPj4+Pj4+Pj4gKyNkZWZpbmUgRFBfTUFYX05VTV9EUF9MQU5FUyAgICA0Cj4+Pj4+Pj4+
ICsKPj4+Pj4+Pj4gIHN0cnVjdCBlZGlkOwo+Pj4+Pj4+Pgo+Pj4+Pj4+PiAgc3RydWN0IG1zbV9k
cF9kaXNwbGF5X21vZGUgewo+Pj4+Pj4+PiBAQCAtNDYsNiArNDgsNyBAQCBzdHJ1Y3QgbXNtX2Rw
X3BhbmVsIHsKPj4+Pj4+Pj4gICAgICAgICBib29sIHZpZGVvX3Rlc3Q7Cj4+Pj4+Pj4+ICAgICAg
ICAgYm9vbCB2c2Nfc2RwX3N1cHBvcnRlZDsKPj4+Pj4+Pj4KPj4+Pj4+Pj4gKyAgICAgICB1MzIg
bGFuZV9tYXBbRFBfTUFYX05VTV9EUF9MQU5FU107Cj4+Pj4+Pj4+ICAgICAgICAgdTMyIG1heF9k
cF9sYW5lczsKPj4+Pj4+Pj4gICAgICAgICB1MzIgbWF4X2RwX2xpbmtfcmF0ZTsKPj4+Pj4+Pj4K
Pj4+Pj4+Pj4KPj4+Pj4+Pj4gLS0KPj4+Pj4+Pj4gMi4yNS4xCj4+Pj4+Pj4+Cj4+Pj4+Pj4KPj4+
Pj4+Pgo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiAtLQo+Pj4+Pj4gbGludXgtcGh5IG1haWxpbmcgbGlz
dAo+Pj4+Pj4gbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKPj4+Pj4+IGh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo+Pj4+Pgo+Pj4+Cj4+
Pgo+Pj4KPj4KPiAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
