Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A89C1E7718A
	for <linux-phy@archiver.kernel.org>; Thu, 19 Dec 2024 10:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lyLPLmuIdHRwRHI1SAwmVsDOc6OkMU7jrUQ0Oyh9o6I=; b=08udUiekJuz6cn
	s6yWLgiO3lbPv+TBOzwLY0cfPiI5+dgMD9VebIiEdd99OOYh9dJrlLEv8T5uIYqNnjX1r7HAyQhWT
	zaKo1Sm/UFzzU0NFr7Fh3pxcg5QUoch5KMmyrR7JBMOvKmUfl3sj+HaQuQXtV2gvAq91oZUCtpcOO
	vilIjLjzw6Z+FQK87CIDhQe3ZBYg5n4EbH4CoMD2VBrKX3NQZALN4Hj6yUT/wePWBnxAXgxkcYeIC
	lUYmBqGARZB/lhlUCmMmkYOHvNljjgditUL5OyrAgQgF7Lk/VNBJ3XSgsr1qZZPh+83sZs8TsAJ/V
	SzEwIc+kesRyhLWAdvJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tODtt-00000001Yju-34eq;
	Thu, 19 Dec 2024 10:37:01 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tODtr-00000001YjG-0aWI
	for linux-phy@lists.infradead.org;
	Thu, 19 Dec 2024 10:37:00 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BJ8eudY012641;
	Thu, 19 Dec 2024 10:36:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pCrif/Wig+0ouaXxxKWwhGq+PeMSEo0hXVQU6kifTJU=; b=KA+4sjqqUw/LncAL
	8GfLTZzvUwDmSLAZDpjiGqlk8JksbvRQSX9MREg0yTVPyjJaUT4D4elk1omvrEv+
	uXaD7MjqGtgX1vx5BGVdzp7P7T+WrYMMs/gCPeAxw2bvSvbd6iEQU4CGHA0bM3f+
	IicV23B01u6P+LF9tlsD/JJkDIL0rOBpKwyQz7LS1kd8em34SlCPbv3k2M3+YBIz
	g9J7UAyEWIpJ1pM+pDKJOXQv5P/HGDnFNmUfA9kJx6dbuKozJPiataP1hIN6oLT/
	r7i/GhMMC2qQAqQ1BaMLhdgLMw8fT00PJQG45+fpjNq5EmVzemj0nAJO7VYIsIDm
	irCMVg==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43mg6hr9tq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Dec 2024 10:36:49 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4BJAam1B004914
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Dec 2024 10:36:48 GMT
Received: from [10.64.16.135] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Thu, 19 Dec
 2024 02:36:41 -0800
Message-ID: <e647d143-dc6e-483d-ac81-2733fb526fc3@quicinc.com>
Date: Thu, 19 Dec 2024 18:36:38 +0800
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
From: Xiangxu Yin <quic_xiangxuy@quicinc.com>
In-Reply-To: <CAA8EJprAFYD6ykN10-r=JwHM4A4XeDDcZVcVWYp_5A5FP-=RyA@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: wxzrlFx43WZNn-Zm0bSs9-eoV8Sr55IG
X-Proofpoint-GUID: wxzrlFx43WZNn-Zm0bSs9-eoV8Sr55IG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 spamscore=0
 malwarescore=0 priorityscore=1501 suspectscore=0 phishscore=0
 mlxlogscore=999 clxscore=1015 impostorscore=0 adultscore=0
 lowpriorityscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2412190086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_023659_330733_FF9DC47C 
X-CRM114-Status: GOOD (  30.84  )
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

CgpPbiAxMi81LzIwMjQgNzo0MCBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiBUaHUs
IDUgRGVjIDIwMjQgYXQgMTM6MjgsIFhpYW5neHUgWWluIDxxdWljX3hpYW5neHV5QHF1aWNpbmMu
Y29tPiB3cm90ZToKPj4KPj4KPj4KPj4gT24gMTIvMi8yMDI0IDY6NDYgUE0sIERtaXRyeSBCYXJ5
c2hrb3Ygd3JvdGU6Cj4+PiBPbiBNb24sIERlYyAwMiwgMjAyNCBhdCAwNDo0MDowNVBNICswODAw
LCBYaWFuZ3h1IFlpbiB3cm90ZToKPj4+Pgo+Pj4+Cj4+Pj4gT24gMTEvMjkvMjAyNCA5OjUwIFBN
LCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+Pj4+PiBPbiBGcmksIDI5IE5vdiAyMDI0IGF0IDA5
OjU5LCBYaWFuZ3h1IFlpbiA8cXVpY194aWFuZ3h1eUBxdWljaW5jLmNvbT4gd3JvdGU6Cj4+Pj4+
Pgo+Pj4+Pj4gQWRkIHRoZSBhYmlsaXR5IHRvIGNvbmZpZ3VyZSBsYW5lIG1hcHBpbmcgZm9yIHRo
ZSBEUCBjb250cm9sbGVyLiBUaGlzIGlzCj4+Pj4+PiByZXF1aXJlZCB3aGVuIHRoZSBwbGF0Zm9y
bSdzIGxhbmUgbWFwcGluZyBkb2VzIG5vdCBmb2xsb3cgdGhlIGRlZmF1bHQKPj4+Pj4+IG9yZGVy
ICgwLCAxLCAyLCAzKS4gVGhlIG1hcHBpbmcgcnVsZXMgYXJlIG5vdyBjb25maWd1cmFibGUgdmlh
IHRoZQo+Pj4+Pj4gYGRhdGEtbGFuZWAgcHJvcGVydHkgaW4gdGhlIGRldmljZXRyZWUuIFRoaXMg
cHJvcGVydHkgZGVmaW5lcyB0aGUKPj4+Pj4+IGxvZ2ljYWwtdG8tcGh5c2ljYWwgbGFuZSBtYXBw
aW5nIHNlcXVlbmNlLCBlbnN1cmluZyBjb3JyZWN0IGxhbmUKPj4+Pj4+IGFzc2lnbm1lbnQgZm9y
IG5vbi1kZWZhdWx0IGNvbmZpZ3VyYXRpb25zLgo+Pj4+Pj4KPj4+Pj4+IFNpZ25lZC1vZmYtYnk6
IFhpYW5neHUgWWluIDxxdWljX3hpYW5neHV5QHF1aWNpbmMuY29tPgo+Pj4+Pj4gLS0tCj4+Pj4+
PiAgZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9jYXRhbG9nLmMgfCAxMSArKysrKy0tLS0tLQo+
Pj4+Pj4gIGRyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfY2F0YWxvZy5oIHwgIDIgKy0KPj4+Pj4+
ICBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2N0cmwuYyAgICB8ICAyICstCj4+Pj4+PiAgZHJp
dmVycy9ncHUvZHJtL21zbS9kcC9kcF9wYW5lbC5jICAgfCAxMyArKysrKysrKysrLS0tCj4+Pj4+
PiAgZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9wYW5lbC5oICAgfCAgMyArKysKPj4+Pj4+ICA1
IGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQo+Pj4+Pj4K
Pj4+Cj4+Pj4+PiBAQCAtNDYxLDYgKzQ2MCw3IEBAIHN0YXRpYyBpbnQgbXNtX2RwX3BhbmVsX3Bh
cnNlX2R0KHN0cnVjdCBtc21fZHBfcGFuZWwgKm1zbV9kcF9wYW5lbCkKPj4+Pj4+ICAgICAgICAg
c3RydWN0IG1zbV9kcF9wYW5lbF9wcml2YXRlICpwYW5lbDsKPj4+Pj4+ICAgICAgICAgc3RydWN0
IGRldmljZV9ub2RlICpvZl9ub2RlOwo+Pj4+Pj4gICAgICAgICBpbnQgY250Owo+Pj4+Pj4gKyAg
ICAgICB1MzIgbGFuZV9tYXBbRFBfTUFYX05VTV9EUF9MQU5FU10gPSB7MCwgMSwgMiwgM307Cj4+
Pj4+Pgo+Pj4+Pj4gICAgICAgICBwYW5lbCA9IGNvbnRhaW5lcl9vZihtc21fZHBfcGFuZWwsIHN0
cnVjdCBtc21fZHBfcGFuZWxfcHJpdmF0ZSwgbXNtX2RwX3BhbmVsKTsKPj4+Pj4+ICAgICAgICAg
b2Zfbm9kZSA9IHBhbmVsLT5kZXYtPm9mX25vZGU7Cj4+Pj4+PiBAQCAtNDc0LDEwICs0NzQsMTcg
QEAgc3RhdGljIGludCBtc21fZHBfcGFuZWxfcGFyc2VfZHQoc3RydWN0IG1zbV9kcF9wYW5lbCAq
bXNtX2RwX3BhbmVsKQo+Pj4+Pj4gICAgICAgICAgICAgICAgIGNudCA9IGRybV9vZl9nZXRfZGF0
YV9sYW5lc19jb3VudChvZl9ub2RlLCAxLCBEUF9NQVhfTlVNX0RQX0xBTkVTKTsKPj4+Pj4+ICAg
ICAgICAgfQo+Pj4+Pj4KPj4+Pj4+IC0gICAgICAgaWYgKGNudCA+IDApCj4+Pj4+PiArICAgICAg
IGlmIChjbnQgPiAwKSB7Cj4+Pj4+PiArICAgICAgICAgICAgICAgc3RydWN0IGRldmljZV9ub2Rl
ICplbmRwb2ludDsKPj4+Pj4+ICsKPj4+Pj4+ICAgICAgICAgICAgICAgICBtc21fZHBfcGFuZWwt
Pm1heF9kcF9sYW5lcyA9IGNudDsKPj4+Pj4+IC0gICAgICAgZWxzZQo+Pj4+Pj4gKyAgICAgICAg
ICAgICAgIGVuZHBvaW50ID0gb2ZfZ3JhcGhfZ2V0X2VuZHBvaW50X2J5X3JlZ3Mob2Zfbm9kZSwg
MSwgLTEpOwo+Pj4+Pj4gKyAgICAgICAgICAgICAgIG9mX3Byb3BlcnR5X3JlYWRfdTMyX2FycmF5
KGVuZHBvaW50LCAiZGF0YS1sYW5lcyIsIGxhbmVfbWFwLCBjbnQpOwo+Pj4+Pj4gKyAgICAgICB9
IGVsc2Ugewo+Pj4+Pj4gICAgICAgICAgICAgICAgIG1zbV9kcF9wYW5lbC0+bWF4X2RwX2xhbmVz
ID0gRFBfTUFYX05VTV9EUF9MQU5FUzsgLyogNCBsYW5lcyAqLwo+Pj4+Pj4gKyAgICAgICB9Cj4+
Pj4+Cj4+Pj4+IFdoeT8gVGhpcyBzb3VuZHMgbW9yZSBsaWtlIGRwX2NhdGFsb2cgb3IgKGFmdGVy
IHRoZSByZWZhY3RvcmluZyBhdAo+Pj4+PiBbMV0pIGRwX2N0cmwuIEJ1dCBub3QgdGhlIGRwX3Bh
bmVsLgo+Pj4+Pgo+Pj4+PiBbMV0gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3By
b2plY3QvZnJlZWRyZW5vL3Nlcmllcy8/b3JkZXJpbmc9LWxhc3RfdXBkYXRlZAo+Pj4+Pgo+Pj4+
IFdlIGFyZSB1c2VkIHRoZSBzYW1lIHByb3AgJ2RhdGEtbGFuZXMgPSA8MyAyIDAgMT4nIGluIG1k
c3NfZHBfb3V0IHRvIGtlZXAgc2ltaWxhciBiZWhhdmlvdXIgd2l0aCBkc2lfaG9zdF9wYXJzZV9s
YW5lX2RhdGEuCj4+Pj4gRnJvbSB0aGUgbW9kdWxlcyB1c2VkLCBjYXRhbG9nIHNlZW1zIG1vcmUg
YXBwcm9wcmlhdGUsIGJ1dCBzaW5jZSB0aGUgbWF4X2RwX2xhbmVzIGlzIHBhcnNlZCBhdCBkcF9w
YW5lbCwgaXQgaGFzIGJlZW4gcGxhY2VkIGhlcmUuCj4+Pj4gU2hvdWxkIGxhbmVfbWFwIHBhcnNp
bmcgaW4gbXNtX2RwX2NhdGFsb2dfZ2V0LCBhbmQga2VlcCBtYXhfZHBfbGFuZXMgcGFyc2luZyBh
dCB0aGUgZHBfcGFuZWw/Cj4+Pgo+Pj4gbXNtX2RwX2NhdGFsb2dfZ2V0KCkgaXMgZ29pbmcgdG8g
YmUgcmVtb3ZlZC4gU2luY2UgdGhlIGZ1bmN0aW9ucyB0aGF0Cj4+PiBhcmUgZ29pbmcgdG8gdXNl
IGl0IGFyZSBpbiBkcF9jdHJsIG1vZHVsZSwgSSB0aG91Z2h0IHRoYXQgZHBfY3RybC5jIGlzCj4+
PiB0aGUgYmVzdCBwbGFjZS4gQSBiZXR0ZXIgb3B0aW9uIG1pZ2h0IGJlIHRvIG1vdmUgbWF4X2Rw
X2xhbmVzIGFuZAo+Pj4gbWF4X2RwX2xpbmtfcmF0ZSB0byBkcF9saW5rLmMgYXMgdGhvc2UgYXJl
IGxpbmsgcGFyYW1zLiBUaGVuCj4+PiBsYW5lX21hcHBpbmcgYWxzbyBsb2dpY2FsbHkgYmVjb21l
cyBhIHBhcnQgb2YgZHBfbGluayBtb2R1bGUuCj4+Pgo+Pj4gQnV0IG5vdyBJIGhhdmUgYSBtb3Jl
IGltcG9ydGFudCBxdWVzdGlvbiAodHJpZ2dlcmVkIGJ5IEtyaXNobmEncyBlbWFpbAo+Pj4gYWJv
dXQgU0FSMjEzMFAncyBVU0IpOiBpZiB0aGUgbGFuZXMgYXJlIHN3YXBwZWQsIGRvZXMgVVNCIDMg
d29yayBvbiB0aGF0Cj4+PiBwbGF0Zm9ybT8gT3IgaXMgaXQgYmVpbmcgZGVtb3RlZCB0byBVU0Ig
MiB3aXRoIG5vYm9keSBub3RpY2luZyB0aGF0Pwo+Pj4KPj4+IElmIGxhbmVzIDAvMSBhbmQgMi8z
IGFyZSBzd2FwcGVkLCBzaG91bGRuJ3QgaXQgYmUgaGFuZGxlZCBpbiB0aGUgUU1QCj4+PiBQSFks
IHdoZXJlIHdlIGhhbmRsZSBsYW5lcyBhbmQgb3JpZW50YXRpb24gc3dpdGNoaW5nPwo+Pj4KPj4g
SSBoYXZlIGNoZWNrZWQgdGhlIERQIGhhcmR3YXJlIHByb2dyYW1taW5nIGd1aWRlIGFuZCBhbHNv
IGRpc2N1c3NlZCBpdCB3aXRoIEtyaXNobmEuCj4+Cj4+IEFjY29yZGluZyB0byB0aGUgSFBHIHNl
Y3Rpb24gJzMuNC4yIFBOIGFuZCBMYW5lIFN3YXA6IFBIWSBzdXBwb3J0cyBQTiBzd2FwIGZvciBt
YWlubGluayBhbmQgQVVYLCBidXQgaXQgZG9lc24ndCBzdXBwb3J0IGxhbmUgc3dhcCBmZWF0dXJl
LicKPj4KPj4gVGhlIGxhbmUgc3dhcCBtYWlubHkgcmVmZXJzIHRvIHRoZSBsb2dpY2FsIHRvIHBo
eXNpY2FsIG1hcHBpbmcgYmV0d2VlbiB0aGUgRFAgY29udHJvbGxlciBhbmQgdGhlIERQIFBIWS4g
VGhlIFBIWSBoYW5kbGVzIHBvbGFyaXR5IGludmVyc2lvbiwgYW5kIHRoZSBsYW5lIG1hcCBkb2Vz
IG5vdCBhZmZlY3QgVVNCIGJlaGF2aW9yLgo+Pgo+PiBPbiB0aGUgUUNTNjE1IHBsYXRmb3JtLCB3
ZSBoYXZlIGFsc28gdGVzdGVkIHdoZW4gRFAgd29ya3Mgd2l0aCBsYW5lIHN3YXAsIG90aGVyIFVT
QiAzLjAgcG9ydHMgY2FuIHdvcmtzIG5vcm1hbGx5IGF0IHN1cGVyIHNwZWVkLgo+IAo+ICJPdGhl
ciBVU0IgMy4wIHBvcnRzIj8gV2hhdCBkb2VzIHRoYXQgbWVhbj8gUGxlYXNlIGNvcnJlY3QgbWUg
aWYgSSdtCj4gd3JvbmcsIHlvdSBzaG91bGQgaGF2ZSBhIFVTQitEUCBjb21ibyBwb3J0IHRoYXQg
aXMgYmVpbmcgbWFuYWdlZCB3aXRoCj4gY29tYm8gUEhZLiBEb2VzIFVTQiAzIHdvcmsgb24gdGhh
dCBwb3J0Pwo+IAo+IEluIG90aGVyIHdvcmRzLCB3aGVyZSB0aGUgb3JkZXIgb2YgbGFuZXMgaXMg
YWN0dWFsbHkgaW52ZXJ0ZWQ/IEJldHdlZW4KPiBEUCBhbmQgY29tYm8gUEhZPyBXaXRoaW4gY29t
Ym8gUEhZPyBCZXR3ZWVuIHRoZSBQSFkgYW5kIHRoZSBwaW5vdXQ/Cj4gR3JhbnRlZCB0aGF0IFNN
NjE1MCB3YXMgc3VwcG9ydGVkIGluIG1zbS00LjE0IGNvdWxkIHlvdSBwb3NzaWJseSBwb2ludAo+
IG91dCBhIGNvcnJlc3BvbmRpbmcgY29tbWl0IG9yIGEgc2V0IG9mIGNvbW1pdHMgZnJvbSB0aGF0
IGtlcm5lbD8KPiAKRm9yICJPdGhlciBVU0IgMy4wIHBvcnRzIiwgYXMgcmVwbGllZCBpbiBVU0JD
IGRyaXZlciwgVVNCMyBwcmltYXJ5IHBoeSB3b3JrcyBmb3Igb3RoZXIgZm91ciBVU0IgdHlwZS1B
IHBvcnQuCgpUaGUgUkVHX0RQX0xPR0lDQUwyUEhZU0lDQUxfTEFORV9NQVBQSU5HIG1hcHBpbmcg
ZGV0ZXJtaW5lcyBob3cgbG9naWNhbCBsYW5lcyAoMCwgMSwgMiwgMykgbWFwIHRvIHBoeXNpY2Fs
IGxhbmVzIHNlbnQgdG8gdGhlIFBIWS4KVGhpcyBlbnN1cmVzIGFsaWdubWVudCB3aXRoIGhhcmR3
YXJlIHJlcXVpcmVtZW50cy4KVGhlIFBIWeKAmXMgcG9sYXJpdHkgaW52ZXJzaW9uIG9ubHkgYWRq
dXN0cyBzaWduYWwgcG9sYXJpdHkgYW5kIGRvZXNu4oCZdCBhZmZlY3QgbGFuZSBtYXBwaW5nLgpC
b3RoIERQIGN0cmwgYW5kIFBIWSBsYW5lIHJlbGF0ZWQgY29uZmlnIHdpbGwgbm90IGFmZmVjdCBV
U0IgcGh5LgoKV2l0aG91dCBleHRyYSBUeXBlLUMgbWFwcGluZywgdGhlIERQIGNvbnRyb2xsZXLi
gJlzIG1hcHBpbmcgaW5kaXJlY3RseSBkZWNpZGVzIGhvdyBzaWduYWxzIGFyZSB0cmFuc21pdHRl
ZCB0aHJvdWdoIFR5cGUtQy4KTWFwcGluZyBlbnN1cmVzIHByb3BlciBkYXRhIHRyYW5zbWlzc2lv
biBhbmQgY29tcGF0aWJpbGl0eSBhY3Jvc3MgaW50ZXJmYWNlcy4KCldlIG9ubHkgZm91bmQgc202
MTUwIG5lZWQgdGhpcyBsYW5lIG1hcHBpbmcgY29uZmlnLCAKRm9yIG1zbSA0LjE0LCBwbGVhc2Ug
cmVmZXIgdGhlc2UgbGlua3MsCmh0dHBzOi8vYW5kcm9pZC5nb29nbGVzb3VyY2UuY29tL2tlcm5l
bC9tc20vKy9hZjAzZWVmN2Q0YzNjYmQxZmUyNmM2N2Q0ZjE5MTViMDVkMGMxNDg4L2FyY2gvYXJt
NjQvYm9vdC9kdHMvcWNvbS9zbTYxNTAtc2RlLmR0c2kgKHFjb20sbG9naWNhbDJwaHlzaWNhbC1s
YW5lLW1hcCkKaHR0cHM6Ly9hbmRyb2lkLmdvb2dsZXNvdXJjZS5jb20va2VybmVsL21zbS8rL2Fm
MDNlZWY3ZDRjM2NiZDFmZTI2YzY3ZDRmMTkxNWIwNWQwYzE0ODgvZHJpdmVycy9ncHUvZHJtL21z
bS9kcC9kcF9wYXJzZXIuYyAoZHBfcGFyc2VyX21pc2MpCmh0dHBzOi8vYW5kcm9pZC5nb29nbGVz
b3VyY2UuY29tL2tlcm5lbC9tc20vKy9hZjAzZWVmN2Q0YzNjYmQxZmUyNmM2N2Q0ZjE5MTViMDVk
MGMxNDg4L2RyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfY2F0YWxvZ192MjAwLmMgKGRwX2NhdGFs
b2dfY3RybF9sYW5lX21hcHBpbmdfdjIwMCkKCklmIG5lZWQgcHJvY2VzcyBvcmllbnRhdGlvbiBp
bmZvIGxpa2UgZHBfY2F0YWxvZ19jdHJsX2xhbmVfbWFwcGluZ192MjAwLCAKdGhlbiAKaWYgaW1w
bGVtZW50IGluIERQIHBoeSwgdGhlbiB3ZSBuZWVkIGNvbmZpZyBkcF9saW5rIHJlZ2lzdGVyIGlu
IFBIWSwKaWYgaW1wbGVtZW50IGluIERQIGxpbmssIHRoZW4gd2UgbmVlZCBwYXNzIG9yaWVudGF0
aW9uIGluZm8gdG8gRFAgZHJpdmVyLCBwZXJoYXBzIHdlIGNvdWxkIGFkZCBhIG5ldyBhdHRyaWJ1
dGUgdG8gdGhlIHBoeV9jb25maWd1cmVfb3B0c19kcCBzdHJ1Y3R1cmUgdG8gcGFzcyB0aGlzLgpE
byB5b3UgaGF2ZSBhbnkgc3VnZ2VzdGlvbnM/Cgo+Pgo+PiBBZGRpdGlvbmFsbHksIGlmIGl0IHdl
cmUgcGxhY2VkIG9uIHRoZSBQSFkgc2lkZSwgdGhlIFBIWSB3b3VsZCBuZWVkIGFjY2VzcyB0byBk
cF9saW5r4oCZcyBkb21haW4gd2hpY2ggY2FuIGFjY2VzcyBSRUdfRFBfTE9HSUNBTDJQSFlTSUNB
TF9MQU5FX01BUFBJTkcuCj4gCj4gSSB3YXMgdGhpbmtpbmcgYWJvdXQgaW52ZXJ0aW5nIHRoZSBT
V19QT1JUU0VMX1ZBTCBiaXQuCj4gCj4+IFRoZXJlZm9yZSwgd2UgYmVsaWV2ZSB0aGF0IHRoZSAg
bWF4X2RwX2xpbmtfcmF0ZSxtYXhfZHBfbGFuZXMgYW5kIGxhbmVfbWFwIG1vdmUgdG8gZHBfbGlu
ayBzaWRlIGlzIGJldHRlci4KPj4KPj4+Pj4+ICsKPj4+Pj4+ICsgICAgICAgbWVtY3B5KG1zbV9k
cF9wYW5lbC0+bGFuZV9tYXAsIGxhbmVfbWFwLCBtc21fZHBfcGFuZWwtPm1heF9kcF9sYW5lcyAq
IHNpemVvZih1MzIpKTsKPj4+Pj4+Cj4+Pj4+PiAgICAgICAgIG1zbV9kcF9wYW5lbC0+bWF4X2Rw
X2xpbmtfcmF0ZSA9IG1zbV9kcF9wYW5lbF9saW5rX2ZyZXF1ZW5jaWVzKG9mX25vZGUpOwo+Pj4+
Pj4gICAgICAgICBpZiAoIW1zbV9kcF9wYW5lbC0+bWF4X2RwX2xpbmtfcmF0ZSkKPj4+Pj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX3BhbmVsLmggYi9kcml2ZXJzL2dw
dS9kcm0vbXNtL2RwL2RwX3BhbmVsLmgKPj4+Pj4+IGluZGV4IDBlOTQ0ZGIzYWRmMmYxODdmMzEz
NjY0ZmU4MGNmNTQwZWM3YTE5ZjIuLjc2MDNiOTJjMzI5MDJiZDNkNDQ4NTUzOWJkNjMwODUzN2Zm
NzVhMmMgMTAwNjQ0Cj4+Pj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX3BhbmVs
LmgKPj4+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfcGFuZWwuaAo+Pj4+Pj4g
QEAgLTExLDYgKzExLDggQEAKPj4+Pj4+ICAjaW5jbHVkZSAiZHBfYXV4LmgiCj4+Pj4+PiAgI2lu
Y2x1ZGUgImRwX2xpbmsuaCIKPj4+Pj4+Cj4+Pj4+PiArI2RlZmluZSBEUF9NQVhfTlVNX0RQX0xB
TkVTICAgIDQKPj4+Pj4+ICsKPj4+Pj4+ICBzdHJ1Y3QgZWRpZDsKPj4+Pj4+Cj4+Pj4+PiAgc3Ry
dWN0IG1zbV9kcF9kaXNwbGF5X21vZGUgewo+Pj4+Pj4gQEAgLTQ2LDYgKzQ4LDcgQEAgc3RydWN0
IG1zbV9kcF9wYW5lbCB7Cj4+Pj4+PiAgICAgICAgIGJvb2wgdmlkZW9fdGVzdDsKPj4+Pj4+ICAg
ICAgICAgYm9vbCB2c2Nfc2RwX3N1cHBvcnRlZDsKPj4+Pj4+Cj4+Pj4+PiArICAgICAgIHUzMiBs
YW5lX21hcFtEUF9NQVhfTlVNX0RQX0xBTkVTXTsKPj4+Pj4+ICAgICAgICAgdTMyIG1heF9kcF9s
YW5lczsKPj4+Pj4+ICAgICAgICAgdTMyIG1heF9kcF9saW5rX3JhdGU7Cj4+Pj4+Pgo+Pj4+Pj4K
Pj4+Pj4+IC0tCj4+Pj4+PiAyLjI1LjEKPj4+Pj4+Cj4+Pj4+Cj4+Pj4+Cj4+Pj4KPj4+Pgo+Pj4+
IC0tCj4+Pj4gbGludXgtcGh5IG1haWxpbmcgbGlzdAo+Pj4+IGxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCj4+Pj4gaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cj4+Pgo+Pgo+IAo+IAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
