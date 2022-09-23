Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DF5FC54EE9
	for <linux-phy@archiver.kernel.org>; Fri, 23 Sep 2022 02:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=14bgctyY3DkQbQ/wdVIX6zXL8LZWJyaQzlqP9+T3BLo=; b=hRlR/gGklLsAn2
	ebUkJAuHhb7sV9+KZlemseOC1rr+18Ea+evVmd7qAxpnMzlGSiqF+lf5cWk0euD5SJ/+ZkboPi1ht
	wanJmVshnPgAW/6m+VHQ65GkKJZObCxeTE6RAaX+DZTnbTLJKl4yn/rR1F/HBINKOgT6/OdSQtCAa
	rFSRYiFepsGlqzVOKtuSqO4/sWpjmYwXy5xSitXcR4ULLNEK9tGZbRCW0od4fBbaHDLRTsiRpMvu0
	pyB2EpXw5sxJYvKwoY83gfQrsiDwSyH8y1wlRQvDvTpsRESc794LPjO7oekYXUB5ixWGNHvetRA+X
	Y8aZs0fdeKjJe9AYDc9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obXz2-0018yS-Ih; Fri, 23 Sep 2022 02:00:04 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obXyx-0018wK-KZ
	for linux-phy@lists.infradead.org; Fri, 23 Sep 2022 02:00:01 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28N1cIVJ029694;
	Fri, 23 Sep 2022 01:59:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=fIilf/Rdf+6cocDi7rtmOOlCg2Um91x3yLyfyYicYSY=;
 b=IxJXlYElg+LOlhzG4iYqzlY6srE1u3FXL7Sf/z+uQ3E9cI05gOYriaKgiPy7tiq6ghnE
 duskBrqQcPtSqkYwuQWbAutEA2ql7WZ36SSLxT7tOteuf6x3jBN0ymhYZSVoVd4K4qWY
 Q8oRLxDTrmxp7M0B3dNYzXnJsMyuP0qo81GywR9/CzqsHWETEk46UTYKEIZXMlP++5OB
 O/eDoj3/VC4G14kMsLoRHDKfEN5zYSBlq7AFmXoOhtL/nvuZHqdQAfwBdsGsk/whkSzc
 AXFcl4rVK72VNW/WV4th2q1CwXfMMiefHSmcqgiLjml9/KfbubfhBVxjA+oyztUqGe5z FQ== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3jrmnf2gjn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 23 Sep 2022 01:59:48 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 28N1xlfA019261
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 23 Sep 2022 01:59:47 GMT
Received: from [10.216.47.110] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.29; Thu, 22 Sep
 2022 18:59:36 -0700
Message-ID: <95e4e9d9-3f39-6cf4-0739-967c7e568697@quicinc.com>
Date: Fri, 23 Sep 2022 07:29:31 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v7 1/5] PCI: qcom: Add system suspend and resume support
Content-Language: en-US
To: Bjorn Helgaas <helgaas@kernel.org>
CC: <linux-pci@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <mka@chromium.org>,
        <quic_vbadigan@quicinc.com>, <quic_hemantk@quicinc.com>,
        <quic_nitegupt@quicinc.com>, <quic_skananth@quicinc.com>,
        <quic_ramkri@quicinc.com>, <manivannan.sadhasivam@linaro.org>,
        <swboyd@chromium.org>, <dmitry.baryshkov@linaro.org>,
        <svarbanov@mm-sol.com>, <agross@kernel.org>, <andersson@kernel.org>,
        <konrad.dybcio@somainline.org>, <lpieralisi@kernel.org>,
        <robh@kernel.org>, <kw@linux.com>, <bhelgaas@google.com>,
        <linux-phy@lists.infradead.org>, <vkoul@kernel.org>, <kishon@ti.com>,
        <mturquette@baylibre.com>, <linux-clk@vger.kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        "Rafael J. Wysocki"
	<rafael@kernel.org>, <linux-pm@vger.kernel.org>
References: <20220922184240.GA1326211@bhelgaas>
From: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>
In-Reply-To: <20220922184240.GA1326211@bhelgaas>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: WwJCSZEJnh-0vScMQvg7cP251S8Gru8D
X-Proofpoint-ORIG-GUID: WwJCSZEJnh-0vScMQvg7cP251S8Gru8D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-22_16,2022-09-22_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 spamscore=0 bulkscore=0 mlxlogscore=999 mlxscore=0 malwarescore=0
 priorityscore=1501 suspectscore=0 clxscore=1015 adultscore=0 phishscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2209230011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_185959_730136_67B4D8E9 
X-CRM114-Status: GOOD (  35.83  )
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

Ck9uIDkvMjMvMjAyMiAxMjoxMiBBTSwgQmpvcm4gSGVsZ2FhcyB3cm90ZToKPiBPbiBUaHUsIFNl
cCAyMiwgMjAyMiBhdCAwOTowOToyOFBNICswNTMwLCBLcmlzaG5hIENoYWl0YW55YSBDaHVuZHJ1
IHdyb3RlOgo+PiBPbiA5LzIxLzIwMjIgMTA6MjYgUE0sIEJqb3JuIEhlbGdhYXMgd3JvdGU6Cj4+
PiBbK2NjIFJhZmFlbCwgbGludXgtcG0gc2luY2UgdGhpcyBpcyByZWFsIHBvd2VyIG1hbmFnZW1l
bnQgbWFnaWMsCj4+PiBiZWdpbm5pbmcgb2YgdGhyZWFkOgo+Pj4gaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvYWxsLzE2NjM2NjkzNDctMjkzMDgtMS1naXQtc2VuZC1lbWFpbC1xdWljX2tyaWNoYWlA
cXVpY2luYy5jb20vCj4+PiBmdWxsIHBhdGNoIHNpbmNlIEkgdHJpbW1lZCB0b28gbXVjaCBvZiBp
dDoKPj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8xNjYzNjY5MzQ3LTI5MzA4LTItZ2l0
LXNlbmQtZW1haWwtcXVpY19rcmljaGFpQHF1aWNpbmMuY29tL10KPj4+Cj4+PiBPbiBXZWQsIFNl
cCAyMSwgMjAyMiBhdCAwMzoyMzozNVBNICswNTMwLCBLcmlzaG5hIENoYWl0YW55YSBDaHVuZHJ1
IHdyb3RlOgo+Pj4+IE9uIDkvMjAvMjAyMiAxMTo0NiBQTSwgQmpvcm4gSGVsZ2FhcyB3cm90ZToK
Pj4+Pj4gT24gVHVlLCBTZXAgMjAsIDIwMjIgYXQgMDM6NTI6MjNQTSArMDUzMCwgS3Jpc2huYSBj
aGFpdGFueWEgY2h1bmRydSB3cm90ZToKPj4+Pj4+IEFkZCBzdXNwZW5kIGFuZCByZXN1bWUgc3lz
Y29yZSBvcHMuCj4+Pj4+Pgo+Pj4+Pj4gRmV3IFBDSWUgZW5kcG9pbnRzIGxpa2UgTlZNZSBhbmQg
V0xBTnMgYXJlIGFsd2F5cyBleHBlY3RpbmcgdGhlIGRldmljZQo+Pj4+Pj4gdG8gYmUgaW4gRDAg
c3RhdGUgYW5kIHRoZSBsaW5rIHRvIGJlIGFjdGl2ZSAob3IgaW4gbDFzcykgYWxsIHRoZSB0aW1l
Cj4+Pj4+PiAoaW5jbHVkaW5nIGluIFMzIHN0YXRlKS4KPj4+Pj4gV2hhdCBkb2VzIHRoaXMgaGF2
ZSB0byBkbyB3aXRoIHRoZSBwYXRjaD8gIEkgZG9uJ3Qgc2VlIGFueSBOVk1lIG9yCj4+Pj4+IFdM
QU4gcGF0Y2hlcyBoZXJlLgo+Pj4+IEV4aXN0aW5nIE5WTWUgZHJpdmVyIGV4cGVjdGluZyBOVk1l
IGRldmljZSB0byBiZSBpbiBEMCBkdXJpbmcgUzMgYWxzby4gSWYgd2UKPj4+PiB0dXJuIG9mZiB0
aGUgbGluayBpbgo+Pj4+IHN1c3BlbmQsIHRoZSBOVk1lIHJlc3VtZSBwYXRoIGlzIGJyb2tlbiBh
cyB0aGUgc3RhdGUgbWFjaGluZSBpcyBnZXR0aW5nCj4+Pj4gcmVzZXQgaW4gdGhlIE5WTWUgZGV2
aWNlLgo+Pj4+IER1ZSB0byB0aGlzLCB0aGUgaG9zdCBkcml2ZXIgc3RhdGUgbWFjaGluZSBhbmQg
dGhlIGRldmljZSBzdGF0ZSBtYWNoaW5lIGFyZQo+Pj4+IGdvaW5nIG91dCBvZiBzeW5jLCBhbmQg
YWxsIE5WTWUgY29tbWFuZHMKPj4+PiBhZnRlciByZXN1bWVzIGFyZSBnZXR0aW5nIHRpbWVkIG91
dC4KPj4+Pgo+Pj4+IElJUkMsIFRlZ3JhIGlzIGFsc28gZmFjaW5nIHRoaXMgaXNzdWUgd2l0aCBO
Vk1lLgo+Pj4+Cj4+Pj4gVGhpcyBpc3N1ZSBoYXMgYmVlbiBkaXNjdXNzZWQgYmVsb3cgdGhyZWFk
czoKPj4+Pgo+Pj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9ZbCs2VjNwV3V5Ull1VlY4
QGluZnJhZGVhZC5vcmcvVC8KPj4+Pgo+Pj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4
LW52bWUvMjAyMjAyMDExNjUwMDYuMzA3NDYxNS0xLWtidXNjaEBrZXJuZWwub3JnLwo+Pj4gVGhl
IHByb2JsZW0gaXMgdGhhdCB0aGlzIGNvbW1pdCBsb2cgZG9lc24ndCBleHBsYWluIHRoZSBwcm9i
bGVtIGFuZAo+Pj4gZG9lc24ndCBnaXZlIHVzIGFueXRoaW5nIHRvIGNvbm5lY3QgdGhlIE5WTWUg
YW5kIFdMQU4gYXNzdW1wdGlvbnMgd2l0aAo+Pj4gdGhpcyBzcGVjaWFsIGRyaXZlciBiZWhhdmlv
ci4gIFRoZXJlIG5lZWRzIHRvIGJlIHNvbWUgZXhwbGljaXQKPj4+IHByb3BlcnR5IG9mIE5WTWUg
YW5kIFdMQU4gdGhhdCB0aGUgUE0gY29yZSBvciBkcml2ZXJzIGxpa2UgcWNvbSBjYW4KPj4+IHVz
ZSB0byB0ZWxsIHdoZXRoZXIgdGhlIGNsb2NrcyBjYW4gYmUgdHVybmVkIG9mZi4KPj4gTm90IG9u
bHkgdGhhdCBOVk1lIGlzIGV4cGVjdGluZyB0aGUgZGV2aWNlIHN0YXRlIHRvIGJlIGFsd2F5cyBp
biBEMC4KPj4gU28gYW55IFBDSWUgZHJpdmVycyBzaG91bGQgbm90IHR1cm4gb2ZmIHRoZSBsaW5r
IGluIHN1c3BlbmQgYW5kIGRvCj4+IGxpbmsgcmV0cmFpbmluZyBpbiB0aGUgcmVzdW1lLiAgQXMg
dGhpcyBpcyBjb25zaWRlcmVkIGEgcG93ZXIgY3ljbGUKPj4gYnkgdGhlIE5WTWUgZGV2aWNlIGFu
ZCBldmVudHVhbGx5IGluY3JlYXNlcyB0aGUgd2VhciBvZiB0aGUgTlZNZQo+PiBmbGFzaC4KPiBJ
IGNhbid0IHF1aXRlIHBhcnNlIHRoaXMuICBBcmUgeW91IHNheWluZyB0aGF0IGFsbCBQQ0kgZGV2
aWNlcyBzaG91bGQKPiBzdGF5IGluIEQwIHdoZW4gdGhlIHN5c3RlbSBpcyBpbiBTMz8KTm90IGFs
bCBQQ0kgZGV2aWNlc8KgIHNvbWUgUENJIGRldmljZXMgbGlrZSBOVk1lLiBUaGUgTlZNZSBkcml2
ZXIgaXMgCmV4cGVjdGluZyB0aGUgZGV2aWNlIHRvIHN0YXkgaW4gRDAgb25seS4KPgo+PiBXZSBh
cmUgdHJ5aW5nIHRvIGtlZXAgdGhlIGRldmljZSBpbiBEMCBhbmQgYWxzbyByZWR1Y2UgdGhlIHBv
d2VyCj4+IGNvbnN1bXB0aW9uIHdoZW4gdGhlIHN5c3RlbSBpcyBpbiBTMyBieSB0dXJuaW5nIG9m
ZiBjbG9ja3MgYW5kIHBoeQo+PiB3aXRoIHRoaXMgcGF0Y2ggc2VyaWVzLgo+IFRoZSBkZWNpc2lv
biB0byBrZWVwIGEgZGV2aWNlIGluIEQwIGlzIG5vdCB1cCB0byBxY29tIG9yIGFueSBvdGhlciBQ
Q0kKPiBjb250cm9sbGVyIGRyaXZlci4KWWVzLCBpdCBpcyB0aGUgTlZNZSBkcml2ZXIgd2hvIGlz
IGRlY2lkaW5nIHRvIGtlZXAgdGhlIGRldmljZSBpbiBEMC4gT3VyIApRQ09NClBDSSBDb250cm9s
bGVyIGRyaXZlciBpcyB0cnlpbmcgdG8ga2VlcCB0aGUgZGV2aWNlIGluIHRoZSBzYW1lIHN0YXRl
IGFzIAp0aGUgY2xpZW50IGRyaXZlciBpcwpleHBlY3RpbmcgYW5kIGFsc28gdHJ5aW5nIHRvIHJl
ZHVjZSBwb3dlciBjb25zdW1wdGlvbi4KPgo+Pj4+Pj4gSW4gcWNvbSBwbGF0Zm9ybSBQQ0llIHJl
c291cmNlcyggY2xvY2tzLCBwaHkgZXRjLi4pIGNhbgo+Pj4+Pj4gcmVsZWFzZWQgd2hlbiB0aGUg
bGluayBpcyBpbiBMMXNzIHRvIHJlZHVjZSB0aGUgcG93ZXIKPj4+Pj4+IGNvbnN1bXB0aW9uLiBT
byBpZiB0aGUgbGluayBpcyBpbiBMMXNzLCByZWxlYXNlIHRoZSBQQ0llCj4+Pj4+PiByZXNvdXJj
ZXMuIEFuZCB3aGVuIHRoZSBzeXN0ZW0gcmVzdW1lcywgZW5hYmxlIHRoZSBQQ0llCj4+Pj4+PiBy
ZXNvdXJjZXMgaWYgdGhleSByZWxlYXNlZCBpbiB0aGUgc3VzcGVuZCBwYXRoLgo+Pj4+PiBXaGF0
J3MgdGhlIGNvbm5lY3Rpb24gd2l0aCBMMS54PyAgTGlua3MgZW50ZXIgTDEueCBiYXNlZCBvbgo+
Pj4+PiBhY3Rpdml0eSBhbmQgdGltaW5nLiAgVGhhdCBkb2Vzbid0IHNlZW0gbGlrZSBhIHJlbGlh
YmxlCj4+Pj4+IGluZGljYXRvciB0byB0dXJuIFBIWXMgb2ZmIGFuZCBkaXNhYmxlIGNsb2Nrcy4K
Pj4+PiBUaGlzIGlzIGEgUWNvbSBQSFktc3BlY2lmaWMgZmVhdHVyZSAocmV0YWluaW5nIHRoZSBs
aW5rIHN0YXRlIGluCj4+Pj4gTDEueCB3aXRoIGNsb2NrcyB0dXJuZWQgb2ZmKS4gIEl0IGlzIHBv
c3NpYmxlIG9ubHkgd2l0aCB0aGUgbGluawo+Pj4+IGJlaW5nIGluIGwxLnguIFBIWSBjYW4ndCBy
ZXRhaW4gdGhlIGxpbmsgc3RhdGUgaW4gTDAgd2l0aCB0aGUKPj4+PiBjbG9ja3MgdHVybmVkIG9m
ZiBhbmQgd2UgbmVlZCB0byByZS10cmFpbiB0aGUgbGluayBpZiBpdCdzIGluIEwyCj4+Pj4gb3Ig
TDMuIFNvIHdlIGNhbiBzdXBwb3J0IHRoaXMgZmVhdHVyZSBvbmx5IHdpdGggTDEueC4gIFRoYXQg
aXMKPj4+PiB0aGUgcmVhc29uIHdlIGFyZSB0YWtpbmcgbDEueCBhcyB0aGUgdHJpZ2dlciB0byB0
dXJuIG9mZiBjbG9ja3MKPj4+PiAoaW4gb25seSBzdXNwZW5kIHBhdGgpLgo+Pj4gVGhpcyBkb2Vz
bid0IGFkZHJlc3MgbXkgcXVlc3Rpb24uICBMMS54IGlzIGFuIEFTUE0gZmVhdHVyZSwgd2hpY2gK
Pj4+IG1lYW5zIGhhcmR3YXJlIG1heSBlbnRlciBvciBsZWF2ZSBMMS54IGF1dG9ub21vdXNseSBh
dCBhbnkgdGltZQo+Pj4gd2l0aG91dCBzb2Z0d2FyZSBpbnRlcnZlbnRpb24uICBUaGVyZWZvcmUs
IEkgZG9uJ3QgdGhpbmsgcmVhZGluZyB0aGUKPj4+IGN1cnJlbnQgc3RhdGUgaXMgYSByZWxpYWJs
ZSB3YXkgdG8gZGVjaWRlIGFueXRoaW5nLgo+PiBBZnRlciB0aGUgbGluayBlbnRlcnMgdGhlIEwx
LnggaXQgd2lsbCBjb21lIG91dCBvbmx5IGlmIHRoZXJlIGlzCj4+IHNvbWUgYWN0aXZpdHkgb24g
dGhlIGxpbmsuICBBUyBzeXN0ZW0gaXMgc3VzcGVuZGVkIGFuZCBOVk1lIGRyaXZlcgo+PiBpcyBh
bHNvIHN1c3BlbmRlZCggcXVldWVzIHdpbGzCoCBmcmVlemUgaW4gc3VzcGVuZCkgd2hvIGVsc2Ug
Y2FuCj4+IGluaXRpYXRlIGFueSBkYXRhLgo+IEkgZG9uJ3QgdGhpbmsgd2UgY2FuIGFzc3VtZSB0
aGF0IG5vdGhpbmcgd2lsbCBoYXBwZW4gdG8gY2F1c2UgZXhpdAo+IGZyb20gTDEueC4gIEZvciBp
bnN0YW5jZSwgUENJZSBNZXNzYWdlcyBmb3IgSU5UeCBzaWduYWxpbmcsIExUUiwgT0JGRiwKPiBQ
VE0sIGV0Yy4sIG1heSBiZSBzZW50IGV2ZW4gdGhvdWdoIHdlIHRoaW5rIHRoZSBkZXZpY2UgaXMg
aWRsZSBhbmQKPiB0aGVyZSBzaG91bGQgYmUgbm8gbGluayBhY3Rpdml0eS4KPgo+IEJqb3JuCkkg
ZG9uJ3QgdGhpbmsgYWZ0ZXIgdGhlIGxpbmsgZW50ZXJzIGludG8gTDEueCB0aGVyZSB3aWxsIHNv
bWUgYWN0aXZpdHkgCm9uIHRoZSBsaW5rIGFzIHlvdSBtZW50aW9uZWQsCmV4Y2VwdCBmb3IgUENJ
ZSBtZXNzYWdlcyBsaWtlIElOVHgvTVNJL01TSVguIFRoZXNlIG1lc3NhZ2VzIGFsc28gd2lsbCAK
bm90IGNvbWUgYmVjYXVzZSB0aGUKY2xpZW50IGRyaXZlcnMgbGlrZSBOVk1lIHdpbGwga2VlcCB0
aGVpciBkZXZpY2UgaW4gdGhlIGxvd2VzdCBwb3dlciBtb2RlLgoKVGhlIGxpbmsgd2lsbCBjb21l
IG91dCBvZiBMMS54IG9ubHkgd2hlbiB0aGVyZSBpcyBjb25maWcgb3IgbWVtb3J5IAphY2Nlc3Mg
b3Igc29tZSBtZXNzYWdlcwp0byB0cmlnZ2VyIHRoZSBpbnRlcnJ1cHRzIGZyb20gdGhlIGRldmlj
ZXMuIFdlIGFyZSBhbHJlYWR5IG1ha2luZyBzdXJlIAp0aGlzIGFjY2VzcyB3aWxsIG5vdCBiZSB0
aGVyZSBpbiBTMy4KSWYgdGhlIGxpbmsgaXMgaW4gTDAgb3IgTDBzIHdoYXQgeW91IHNhaWQgaXMg
ZXhwZWN0ZWQgYnV0IG5vdCBpbiBMMS54CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
