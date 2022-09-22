Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB05CC6FA82
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 15:54:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=50j1ltovNvk3/pLzswM67QeT/cIW1fzJ80xdirYNMnI=; b=Cxm8A2izAkFDyC
	8I82G+fDvi3dHRCbV9oX51Qpv+Dy0+SNfUODNut+54ovbYNfggdin1z3cd9MHMj4YpeuExPPmlIDW
	fYwDfehynohHP7tv2jmGPb+kgcIHSEtM1dolXpn0K5HcnX/mVMA8C3UuoDvdC5btspGbCWzIBL2Fx
	cNudkZp7QGChMHpUm7YS0L+b76zQ6pXhdgJu7obRTVBx6YwbDhwpqpoLRZ16Npe435rPs0wNpv4gV
	AZIajKyJiLUeJxZ77Idlx+jWPam/L1fc6ZHS2XMBVNxZEk4vm61EyT8lt8NQTOywoJ3xiehdK5iqa
	CgqEU/zF0K9k2sLFnfoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obOWi-00GYud-Uf; Thu, 22 Sep 2022 15:54:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obOWe-00GYsT-VI
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 15:54:10 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28MDUWSf021785;
	Thu, 22 Sep 2022 15:53:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=US13UxSFNQuHhq+dXkWL+HohYUtp82gPRRe3BJERysc=;
 b=bW9R+CkuNVB1UiU5dGGV+QIz0uWebcQlh1VDjZWXJBHXrem21bKtzbkrOalUGn+C2Mv7
 Z5eLrziimecoCYpopS/mqyqxqJVKjl337Ck4KH+Jp0DRT+p7smmiPfBceer+J/T5JDd8
 hMKWvM9lXKA081F0OwFYQo7HFnRQGn+ibBHtTsRM/HqSVlyR2Mz5ATPq6oWN3C4g0rgs
 761mz/XCkTalhFAtDjJBIQvnlCY7ANbvHIU16RxwTUgqDHeKMpJ5PJ8IB7wjE4H/nH0I
 4nSXKqaLTGqX95pERQchzVpend5D62mPn2YYPJrIVAPAcJOxOZfs6tVzReQIV0xefFZX xQ== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3jrq4r8kn6-3
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 22 Sep 2022 15:53:56 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 28MFdfXI025772
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 22 Sep 2022 15:39:41 GMT
Received: from [10.216.47.110] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.29; Thu, 22 Sep
 2022 08:39:31 -0700
Message-ID: <807730f9-0220-d297-dffd-929dde30d513@quicinc.com>
Date: Thu, 22 Sep 2022 21:09:28 +0530
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
References: <20220921165601.GA1215223@bhelgaas>
From: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>
In-Reply-To: <20220921165601.GA1215223@bhelgaas>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: qy6KnT5DFSRzCuruOAI_w_U-p6xqbqlO
X-Proofpoint-ORIG-GUID: qy6KnT5DFSRzCuruOAI_w_U-p6xqbqlO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-22_08,2022-09-22_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 adultscore=0
 mlxlogscore=999 bulkscore=0 suspectscore=0 phishscore=0 mlxscore=0
 priorityscore=1501 malwarescore=0 clxscore=1011 impostorscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2209220106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_085409_060441_F8BBF1F9 
X-CRM114-Status: GOOD (  33.87  )
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

Ck9uIDkvMjEvMjAyMiAxMDoyNiBQTSwgQmpvcm4gSGVsZ2FhcyB3cm90ZToKPiBbK2NjIFJhZmFl
bCwgbGludXgtcG0gc2luY2UgdGhpcyBpcyByZWFsIHBvd2VyIG1hbmFnZW1lbnQgbWFnaWMsCj4g
YmVnaW5uaW5nIG9mIHRocmVhZDoKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMTY2MzY2
OTM0Ny0yOTMwOC0xLWdpdC1zZW5kLWVtYWlsLXF1aWNfa3JpY2hhaUBxdWljaW5jLmNvbS8KPiBm
dWxsIHBhdGNoIHNpbmNlIEkgdHJpbW1lZCB0b28gbXVjaCBvZiBpdDoKPiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9hbGwvMTY2MzY2OTM0Ny0yOTMwOC0yLWdpdC1zZW5kLWVtYWlsLXF1aWNfa3Jp
Y2hhaUBxdWljaW5jLmNvbS9dCj4KPiBPbiBXZWQsIFNlcCAyMSwgMjAyMiBhdCAwMzoyMzozNVBN
ICswNTMwLCBLcmlzaG5hIENoYWl0YW55YSBDaHVuZHJ1IHdyb3RlOgo+PiBPbiA5LzIwLzIwMjIg
MTE6NDYgUE0sIEJqb3JuIEhlbGdhYXMgd3JvdGU6Cj4+PiBPbiBUdWUsIFNlcCAyMCwgMjAyMiBh
dCAwMzo1MjoyM1BNICswNTMwLCBLcmlzaG5hIGNoYWl0YW55YSBjaHVuZHJ1IHdyb3RlOgo+Pj4+
IEFkZCBzdXNwZW5kIGFuZCByZXN1bWUgc3lzY29yZSBvcHMuCj4+Pj4KPj4+PiBGZXcgUENJZSBl
bmRwb2ludHMgbGlrZSBOVk1lIGFuZCBXTEFOcyBhcmUgYWx3YXlzIGV4cGVjdGluZyB0aGUgZGV2
aWNlCj4+Pj4gdG8gYmUgaW4gRDAgc3RhdGUgYW5kIHRoZSBsaW5rIHRvIGJlIGFjdGl2ZSAob3Ig
aW4gbDFzcykgYWxsIHRoZSB0aW1lCj4+Pj4gKGluY2x1ZGluZyBpbiBTMyBzdGF0ZSkuCj4+PiBX
aGF0IGRvZXMgdGhpcyBoYXZlIHRvIGRvIHdpdGggdGhlIHBhdGNoPyAgSSBkb24ndCBzZWUgYW55
IE5WTWUgb3IKPj4+IFdMQU4gcGF0Y2hlcyBoZXJlLgo+PiBFeGlzdGluZyBOVk1lIGRyaXZlciBl
eHBlY3RpbmcgTlZNZSBkZXZpY2UgdG8gYmUgaW4gRDAgZHVyaW5nIFMzIGFsc28uIElmIHdlCj4+
IHR1cm4gb2ZmIHRoZSBsaW5rIGluCj4+IHN1c3BlbmQsIHRoZSBOVk1lIHJlc3VtZSBwYXRoIGlz
IGJyb2tlbiBhcyB0aGUgc3RhdGUgbWFjaGluZSBpcyBnZXR0aW5nCj4+IHJlc2V0IGluIHRoZSBO
Vk1lIGRldmljZS4KPj4gRHVlIHRvIHRoaXMsIHRoZSBob3N0IGRyaXZlciBzdGF0ZSBtYWNoaW5l
IGFuZCB0aGUgZGV2aWNlIHN0YXRlIG1hY2hpbmUgYXJlCj4+IGdvaW5nIG91dCBvZiBzeW5jLCBh
bmQgYWxsIE5WTWUgY29tbWFuZHMKPj4gYWZ0ZXIgcmVzdW1lcyBhcmUgZ2V0dGluZyB0aW1lZCBv
dXQuCj4+Cj4+IElJUkMsIFRlZ3JhIGlzIGFsc28gZmFjaW5nIHRoaXMgaXNzdWUgd2l0aCBOVk1l
Lgo+Pgo+PiBUaGlzIGlzc3VlIGhhcyBiZWVuIGRpc2N1c3NlZCBiZWxvdyB0aHJlYWRzOgo+Pgo+
PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvWWwrNlYzcFd1eVJZdVZWOEBpbmZyYWRlYWQu
b3JnL1QvCj4+Cj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW52bWUvMjAyMjAyMDEx
NjUwMDYuMzA3NDYxNS0xLWtidXNjaEBrZXJuZWwub3JnLwo+IFRoZSBwcm9ibGVtIGlzIHRoYXQg
dGhpcyBjb21taXQgbG9nIGRvZXNuJ3QgZXhwbGFpbiB0aGUgcHJvYmxlbSBhbmQKPiBkb2Vzbid0
IGdpdmUgdXMgYW55dGhpbmcgdG8gY29ubmVjdCB0aGUgTlZNZSBhbmQgV0xBTiBhc3N1bXB0aW9u
cyB3aXRoCj4gdGhpcyBzcGVjaWFsIGRyaXZlciBiZWhhdmlvci4gIFRoZXJlIG5lZWRzIHRvIGJl
IHNvbWUgZXhwbGljaXQKPiBwcm9wZXJ0eSBvZiBOVk1lIGFuZCBXTEFOIHRoYXQgdGhlIFBNIGNv
cmUgb3IgZHJpdmVycyBsaWtlIHFjb20gY2FuCj4gdXNlIHRvIHRlbGwgd2hldGhlciB0aGUgY2xv
Y2tzIGNhbiBiZSB0dXJuZWQgb2ZmLgpOb3Qgb25seSB0aGF0IE5WTWUgaXMgZXhwZWN0aW5nIHRo
ZSBkZXZpY2Ugc3RhdGUgdG8gYmUgYWx3YXlzIGluIEQwLiBTbyAKYW55IFBDSWUKZHJpdmVycyBz
aG91bGQgbm90IHR1cm4gb2ZmIHRoZSBsaW5rIGluIHN1c3BlbmQgYW5kIGRvIGxpbmsgcmV0cmFp
bmluZyAKaW4gdGhlIHJlc3VtZS4KQXMgdGhpcyBpcyBjb25zaWRlcmVkIGEgcG93ZXIgY3ljbGUg
YnkgdGhlIE5WTWUgZGV2aWNlIGFuZCBldmVudHVhbGx5IAppbmNyZWFzZXMgdGhlCndlYXIgb2Yg
dGhlIE5WTWUgZmxhc2guCgpXZSBhcmUgdHJ5aW5nIHRvIGtlZXAgdGhlIGRldmljZSBpbiBEMCBh
bmQgYWxzbyByZWR1Y2UgdGhlIHBvd2VyIApjb25zdW1wdGlvbiB3aGVuIHRoZSBzeXN0ZW0KaXMg
aW4gUzMgYnkgdHVybmluZyBvZmYgY2xvY2tzIGFuZCBwaHkgd2l0aCB0aGlzIHBhdGNoIHNlcmll
cy4KPgo+Pj4+IEluIHFjb20gcGxhdGZvcm0gUENJZSByZXNvdXJjZXMoIGNsb2NrcywgcGh5IGV0
Yy4uKSBjYW4gcmVsZWFzZWQKPj4+PiB3aGVuIHRoZSBsaW5rIGlzIGluIEwxc3MgdG8gcmVkdWNl
IHRoZSBwb3dlciBjb25zdW1wdGlvbi4gU28gaWYgdGhlIGxpbmsKPj4+PiBpcyBpbiBMMXNzLCBy
ZWxlYXNlIHRoZSBQQ0llIHJlc291cmNlcy4gQW5kIHdoZW4gdGhlIHN5c3RlbSByZXN1bWVzLAo+
Pj4+IGVuYWJsZSB0aGUgUENJZSByZXNvdXJjZXMgaWYgdGhleSByZWxlYXNlZCBpbiB0aGUgc3Vz
cGVuZCBwYXRoLgo+Pj4gV2hhdCdzIHRoZSBjb25uZWN0aW9uIHdpdGggTDEueD8gIExpbmtzIGVu
dGVyIEwxLnggYmFzZWQgb24gYWN0aXZpdHkKPj4+IGFuZCB0aW1pbmcuICBUaGF0IGRvZXNuJ3Qg
c2VlbSBsaWtlIGEgcmVsaWFibGUgaW5kaWNhdG9yIHRvIHR1cm4gUEhZcwo+Pj4gb2ZmIGFuZCBk
aXNhYmxlIGNsb2Nrcy4KPj4gVGhpcyBpcyBhIFFjb20gUEhZLXNwZWNpZmljIGZlYXR1cmUgKHJl
dGFpbmluZyB0aGUgbGluayBzdGF0ZSBpbiBMMS54IHdpdGgKPj4gY2xvY2tzIHR1cm5lZCBvZmYp
Lgo+PiBJdCBpcyBwb3NzaWJsZSBvbmx5IHdpdGggdGhlIGxpbmsgYmVpbmcgaW4gbDEueC4gUEhZ
IGNhbid0IHJldGFpbiB0aGUgbGluawo+PiBzdGF0ZSBpbiBMMCB3aXRoIHRoZQo+PiBjbG9ja3Mg
dHVybmVkIG9mZiBhbmQgd2UgbmVlZCB0byByZS10cmFpbiB0aGUgbGluayBpZiBpdCdzIGluIEwy
IG9yIEwzLiBTbwo+PiB3ZSBjYW4gc3VwcG9ydCB0aGlzIGZlYXR1cmUgb25seSB3aXRoIEwxLngu
Cj4+IFRoYXQgaXMgdGhlIHJlYXNvbiB3ZSBhcmUgdGFraW5nIGwxLnggYXMgdGhlIHRyaWdnZXIg
dG8gdHVybiBvZmYgY2xvY2tzIChpbgo+PiBvbmx5IHN1c3BlbmQgcGF0aCkuCj4gVGhpcyBkb2Vz
bid0IGFkZHJlc3MgbXkgcXVlc3Rpb24uICBMMS54IGlzIGFuIEFTUE0gZmVhdHVyZSwgd2hpY2gK
PiBtZWFucyBoYXJkd2FyZSBtYXkgZW50ZXIgb3IgbGVhdmUgTDEueCBhdXRvbm9tb3VzbHkgYXQg
YW55IHRpbWUKPiB3aXRob3V0IHNvZnR3YXJlIGludGVydmVudGlvbi4gIFRoZXJlZm9yZSwgSSBk
b24ndCB0aGluayByZWFkaW5nIHRoZQo+IGN1cnJlbnQgc3RhdGUgaXMgYSByZWxpYWJsZSB3YXkg
dG8gZGVjaWRlIGFueXRoaW5nLgpBZnRlciB0aGUgbGluayBlbnRlcnMgdGhlIEwxLnggaXQgd2ls
bCBjb21lIG91dCBvbmx5IGlmIHRoZXJlIGlzIHNvbWUgCmFjdGl2aXR5IG9uIHRoZSBsaW5rLgpB
UyBzeXN0ZW0gaXMgc3VzcGVuZGVkIGFuZCBOVk1lIGRyaXZlciBpcyBhbHNvIHN1c3BlbmRlZCgg
cXVldWVzIHdpbGzCoCAKZnJlZXplIGluIHN1c3BlbmQpCndobyBlbHNlIGNhbiBpbml0aWF0ZSBh
bnkgZGF0YS4gQXMgbG9uZyB0aGUgbGluayBzdGF5cyBpbiBMMXNzIHdlIGNhbiAKdHVybiBvZmYg
Y2xvY2tzIGFuZCBwaHkuCldoZW4gdGhlIHN5c3RlbSByZXN1bWVzIHdlIHR1cm4gb2ZmIGNsb2Nr
cyBhbmQgcGh5IGJlZm9yZSByZXN1bWluZyB0aGUgCk5WTWUsIHRoaXMgbWFrZXMgc3VyZQp0aGUg
Y2xvY2tzIGFuZCBwaHkgYXJlIHVwIGJlZm9yZSB0aGVyZSBpcyBhbnkgYWN0aXZpdHkgdG8gYnJp
bmcgdXAgdGhlIApsaW5rIGJhY2sgdG8gTDAgc3RhdGUgZnJvbSBMMS54Lgo+Cj4+IC4uLgo+Pj4+
IEl0cyBvYnNlcnZlZCB0aGF0IGFjY2VzcyB0byBFcCBQQ0llIHNwYWNlIHRvIG1hc2sgTVNJL01T
SVggaXMgaGFwcGVuaW5nCj4+Pj4gYXQgdGhlIHZlcnkgbGF0ZSBzdGFnZSBvZiBzdXNwZW5kIHBh
dGggKGFjY2VzcyBieSBhZmZpbml0eSBjaGFuZ2VzIHdoaWxlCj4+Pj4gbWFraW5nIENQVXMgb2Zm
bGluZSBkdXJpbmcgc3VzcGVuZCwgdGhpcyB3aWxsIGhhcHBlbiBhZnRlciBkZXZpY2VzIGFyZQo+
Pj4+IHN1c3BlbmRlZCAoYWZ0ZXIgYWxsIHBoYXNlcyBvZiBzdXNwZW5kIG9wcykpLiBJZiB3ZSB0
dXJuIG9mZiBjbG9ja3MgaW4KPj4+PiBhbnkgUE0gY2FsbGJhY2ssIGFmdGVyd2FyZHMgcnVubmlu
ZyBpbnRvIGNyYXNoZXMgZHVlIHRvIHVuLWNsb2NrZWQgYWNjZXNzCj4+Pj4gZHVlIHRvIGFib3Zl
IG1lbnRpb25lZCBNU0kvTVNJeCBhY2Nlc3MuCj4+Pj4gU28sIHdlIGFyZSBtYWtpbmcgdXNlIG9m
IHN5c2NvcmUgZnJhbWV3b3JrIHRvIHR1cm4gb2ZmIHRoZSBQQ0llIGNsb2Nrcwo+Pj4+IHdoaWNo
IHdpbGwgYmUgY2FsbGVkIGFmdGVyIG1ha2luZyBDUFVzIG9mZmxpbmUuCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
