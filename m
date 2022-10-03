Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E79CAC433F5
	for <linux-phy@archiver.kernel.org>; Mon,  3 Oct 2022 12:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oZgBuFN5TKMmHYbyi7beTTBUIMRVw9mr39/WSo4TOCI=; b=Yr4096d+PKgHql
	nFbTRQmsA0Jaq+9wgyuXgdvWvID6s+UmJ9+Mbf7E8OX7E25fSuoTeKZJuEeMEGYHJ5lio+khBtnvP
	Ea6CaHXcPX0kFeo+6YLqih6t931EDKojoL4SwqsQMyybHNWLUOY6PW2ZgXTaPOPV4ZJ2K7rl2xw6Z
	eMreJS5PRXxUw5xIQshJf5CuyYfopoFsDuxJfbIvpkbHRIHFEALuFtT3ENJRFoJY046aLLFXODy/b
	nXMsJ9La25sLKlj/3YpDaYaTgWgOS1jTtZKTX3mNn1QdoHkpfcmzdq/XjuIv5JtDgrmvVU4zguavq
	nr/lFk7zHUG+i+QllGHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofKHa-005cil-Bl; Mon, 03 Oct 2022 12:10:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofKHX-005chM-2M
	for linux-phy@lists.infradead.org; Mon, 03 Oct 2022 12:10:49 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 293Bj0j4003422;
	Mon, 3 Oct 2022 12:10:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=TmtMV5g53OuRHxbjrDV5hTm21YfygvGwXjD9bGOD3uQ=;
 b=nEYOt2KYsyW2KbUiLhb1W1cVf2VuQyeR8W49TUPHHQbsUwzCp3XoSbFQ/t21cCXXSvNr
 uUdSQBqXq90Fd/lwDXM7OzFe1/HowLMYGHT/gCKN2aSGTx+96wPdRaWyZlgD4bC/IG0G
 Hxiosh2zjICBxhU6qk2NTUMVWOTKeUWIRw/zstZZgt8bJ80t86kd+zInCMWybwNA+/j+
 y6W+SkBgbJRK6oib/lXTWk03BjorLegzOQ26YasqGcPcHkqeXag1ZP5i1nj+CbDAWvRR
 Bnk7f8tAJB7i4gHe6MPCgLMomI0FYhzFGQEriI8bGZYwUYpTiYm+j0DeWkDf8mqRKGuz wA== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3jxeugku90-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 03 Oct 2022 12:10:35 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 293CAYBJ025065
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 3 Oct 2022 12:10:34 GMT
Received: from [10.216.56.234] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.29; Mon, 3 Oct 2022
 05:10:24 -0700
Message-ID: <f1b079c9-d0b8-6d4d-bf3d-dee45731ee88@quicinc.com>
Date: Mon, 3 Oct 2022 17:40:21 +0530
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
References: <20220929185305.GA1912842@bhelgaas>
From: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>
In-Reply-To: <20220929185305.GA1912842@bhelgaas>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: cM67SiMoHe_n5yZttNth0pK7TbGcJQ3q
X-Proofpoint-ORIG-GUID: cM67SiMoHe_n5yZttNth0pK7TbGcJQ3q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-10-03_02,2022-09-29_03,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=733 spamscore=0
 mlxscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 clxscore=1011
 malwarescore=0 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2209130000 definitions=main-2210030075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221003_051047_144767_5C9237C6 
X-CRM114-Status: GOOD (  34.52  )
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

Ck9uIDkvMzAvMjAyMiAxMjoyMyBBTSwgQmpvcm4gSGVsZ2FhcyB3cm90ZToKPiBPbiBNb24sIFNl
cCAyNiwgMjAyMiBhdCAwOTowMDoxMVBNICswNTMwLCBLcmlzaG5hIENoYWl0YW55YSBDaHVuZHJ1
IHdyb3RlOgo+PiBPbiA5LzIzLzIwMjIgNzo1NiBQTSwgQmpvcm4gSGVsZ2FhcyB3cm90ZToKPj4+
IE9uIEZyaSwgU2VwIDIzLCAyMDIyIGF0IDA3OjI5OjMxQU0gKzA1MzAsIEtyaXNobmEgQ2hhaXRh
bnlhIENodW5kcnUgd3JvdGU6Cj4+Pj4gT24gOS8yMy8yMDIyIDEyOjEyIEFNLCBCam9ybiBIZWxn
YWFzIHdyb3RlOgo+Pj4+PiBPbiBUaHUsIFNlcCAyMiwgMjAyMiBhdCAwOTowOToyOFBNICswNTMw
LCBLcmlzaG5hIENoYWl0YW55YSBDaHVuZHJ1IHdyb3RlOgo+Pj4+Pj4gT24gOS8yMS8yMDIyIDEw
OjI2IFBNLCBCam9ybiBIZWxnYWFzIHdyb3RlOgo+Pj4+Pj4+IE9uIFdlZCwgU2VwIDIxLCAyMDIy
IGF0IDAzOjIzOjM1UE0gKzA1MzAsIEtyaXNobmEgQ2hhaXRhbnlhIENodW5kcnUgd3JvdGU6Cj4+
Pj4+Pj4+IE9uIDkvMjAvMjAyMiAxMTo0NiBQTSwgQmpvcm4gSGVsZ2FhcyB3cm90ZToKPj4+Pj4+
Pj4+IE9uIFR1ZSwgU2VwIDIwLCAyMDIyIGF0IDAzOjUyOjIzUE0gKzA1MzAsIEtyaXNobmEgY2hh
aXRhbnlhIGNodW5kcnUgd3JvdGU6Cj4+Pj4+Pj4+Pj4gSW4gcWNvbSBwbGF0Zm9ybSBQQ0llIHJl
c291cmNlcyggY2xvY2tzLCBwaHkgZXRjLi4pIGNhbgo+Pj4+Pj4+Pj4+IHJlbGVhc2VkIHdoZW4g
dGhlIGxpbmsgaXMgaW4gTDFzcyB0byByZWR1Y2UgdGhlIHBvd2VyCj4+Pj4+Pj4+Pj4gY29uc3Vt
cHRpb24uIFNvIGlmIHRoZSBsaW5rIGlzIGluIEwxc3MsIHJlbGVhc2UgdGhlIFBDSWUKPj4+Pj4+
Pj4+PiByZXNvdXJjZXMuIEFuZCB3aGVuIHRoZSBzeXN0ZW0gcmVzdW1lcywgZW5hYmxlIHRoZSBQ
Q0llCj4+Pj4+Pj4+Pj4gcmVzb3VyY2VzIGlmIHRoZXkgcmVsZWFzZWQgaW4gdGhlIHN1c3BlbmQg
cGF0aC4KPj4+Pj4+Pj4+IFdoYXQncyB0aGUgY29ubmVjdGlvbiB3aXRoIEwxLng/ICBMaW5rcyBl
bnRlciBMMS54IGJhc2VkIG9uCj4+Pj4+Pj4+PiBhY3Rpdml0eSBhbmQgdGltaW5nLiAgVGhhdCBk
b2Vzbid0IHNlZW0gbGlrZSBhIHJlbGlhYmxlCj4+Pj4+Pj4+PiBpbmRpY2F0b3IgdG8gdHVybiBQ
SFlzIG9mZiBhbmQgZGlzYWJsZSBjbG9ja3MuCj4+Pj4+Pj4+IFRoaXMgaXMgYSBRY29tIFBIWS1z
cGVjaWZpYyBmZWF0dXJlIChyZXRhaW5pbmcgdGhlIGxpbmsgc3RhdGUgaW4KPj4+Pj4+Pj4gTDEu
eCB3aXRoIGNsb2NrcyB0dXJuZWQgb2ZmKS4gIEl0IGlzIHBvc3NpYmxlIG9ubHkgd2l0aCB0aGUg
bGluawo+Pj4+Pj4+PiBiZWluZyBpbiBsMS54LiBQSFkgY2FuJ3QgcmV0YWluIHRoZSBsaW5rIHN0
YXRlIGluIEwwIHdpdGggdGhlCj4+Pj4+Pj4+IGNsb2NrcyB0dXJuZWQgb2ZmIGFuZCB3ZSBuZWVk
IHRvIHJlLXRyYWluIHRoZSBsaW5rIGlmIGl0J3MgaW4gTDIKPj4+Pj4+Pj4gb3IgTDMuIFNvIHdl
IGNhbiBzdXBwb3J0IHRoaXMgZmVhdHVyZSBvbmx5IHdpdGggTDEueC4gIFRoYXQgaXMKPj4+Pj4+
Pj4gdGhlIHJlYXNvbiB3ZSBhcmUgdGFraW5nIGwxLnggYXMgdGhlIHRyaWdnZXIgdG8gdHVybiBv
ZmYgY2xvY2tzCj4+Pj4+Pj4+IChpbiBvbmx5IHN1c3BlbmQgcGF0aCkuCj4+Pj4+Pj4gVGhpcyBk
b2Vzbid0IGFkZHJlc3MgbXkgcXVlc3Rpb24uICBMMS54IGlzIGFuIEFTUE0gZmVhdHVyZSwgd2hp
Y2gKPj4+Pj4+PiBtZWFucyBoYXJkd2FyZSBtYXkgZW50ZXIgb3IgbGVhdmUgTDEueCBhdXRvbm9t
b3VzbHkgYXQgYW55IHRpbWUKPj4+Pj4+PiB3aXRob3V0IHNvZnR3YXJlIGludGVydmVudGlvbi4g
IFRoZXJlZm9yZSwgSSBkb24ndCB0aGluayByZWFkaW5nIHRoZQo+Pj4+Pj4+IGN1cnJlbnQgc3Rh
dGUgaXMgYSByZWxpYWJsZSB3YXkgdG8gZGVjaWRlIGFueXRoaW5nLgo+Pj4+Pj4gQWZ0ZXIgdGhl
IGxpbmsgZW50ZXJzIHRoZSBMMS54IGl0IHdpbGwgY29tZSBvdXQgb25seSBpZiB0aGVyZSBpcwo+
Pj4+Pj4gc29tZSBhY3Rpdml0eSBvbiB0aGUgbGluay4gIEFTIHN5c3RlbSBpcyBzdXNwZW5kZWQg
YW5kIE5WTWUgZHJpdmVyCj4+Pj4+PiBpcyBhbHNvIHN1c3BlbmRlZCggcXVldWVzIHdpbGzCoCBm
cmVlemUgaW4gc3VzcGVuZCkgd2hvIGVsc2UgY2FuCj4+Pj4+PiBpbml0aWF0ZSBhbnkgZGF0YS4K
Pj4+Pj4gSSBkb24ndCB0aGluayB3ZSBjYW4gYXNzdW1lIHRoYXQgbm90aGluZyB3aWxsIGhhcHBl
biB0byBjYXVzZSBleGl0Cj4+Pj4+IGZyb20gTDEueC4gIEZvciBpbnN0YW5jZSwgUENJZSBNZXNz
YWdlcyBmb3IgSU5UeCBzaWduYWxpbmcsIExUUiwgT0JGRiwKPj4+Pj4gUFRNLCBldGMuLCBtYXkg
YmUgc2VudCBldmVuIHRob3VnaCB3ZSB0aGluayB0aGUgZGV2aWNlIGlzIGlkbGUgYW5kCj4+Pj4+
IHRoZXJlIHNob3VsZCBiZSBubyBsaW5rIGFjdGl2aXR5Lgo+Pj4+IEkgZG9uJ3QgdGhpbmsgYWZ0
ZXIgdGhlIGxpbmsgZW50ZXJzIGludG8gTDEueCB0aGVyZSB3aWxsIHNvbWUKPj4+PiBhY3Rpdml0
eSBvbiB0aGUgbGluayBhcyB5b3UgbWVudGlvbmVkLCBleGNlcHQgZm9yIFBDSWUgbWVzc2FnZXMg
bGlrZQo+Pj4+IElOVHgvTVNJL01TSVguIFRoZXNlIG1lc3NhZ2VzIGFsc28gd2lsbCBub3QgY29t
ZSBiZWNhdXNlIHRoZSBjbGllbnQKPj4+PiBkcml2ZXJzIGxpa2UgTlZNZSB3aWxsIGtlZXAgdGhl
aXIgZGV2aWNlIGluIHRoZSBsb3dlc3QgcG93ZXIgbW9kZS4KPj4+Pgo+Pj4+IFRoZSBsaW5rIHdp
bGwgY29tZSBvdXQgb2YgTDEueCBvbmx5IHdoZW4gdGhlcmUgaXMgY29uZmlnIG9yIG1lbW9yeQo+
Pj4+IGFjY2VzcyBvciBzb21lIG1lc3NhZ2VzIHRvIHRyaWdnZXIgdGhlIGludGVycnVwdHMgZnJv
bSB0aGUgZGV2aWNlcy4KPj4+PiBXZSBhcmUgYWxyZWFkeSBtYWtpbmcgc3VyZSB0aGlzIGFjY2Vz
cyB3aWxsIG5vdCBiZSB0aGVyZSBpbiBTMy4gIElmCj4+Pj4gdGhlIGxpbmsgaXMgaW4gTDAgb3Ig
TDBzIHdoYXQgeW91IHNhaWQgaXMgZXhwZWN0ZWQgYnV0IG5vdCBpbiBMMS54Cj4+PiBGb3JnaXZl
IG1lIGZvciBiZWluZyBza2VwdGljYWwsIGJ1dCB3ZSBqdXN0IHNwZW50IGEgZmV3IG1vbnRocwo+
Pj4gdW50YW5nbGluZyB0aGUgZmFjdCB0aGF0IHNvbWUgc3dpdGNoZXMgc2VuZCBQVE0gcmVxdWVz
dCBtZXNzYWdlcyBldmVuCj4+PiB3aGVuIHRoZXkncmUgaW4gYSBub24tRDAgc3RhdGUuICBXZSBl
eHBlY3RlZCB0aGF0IGRldmljZXMgaW4gRDNob3QKPj4+IHdvdWxkIG5vdCBzZW5kIHN1Y2ggbWVz
c2FnZXMgYmVjYXVzZSAid2h5IHdvdWxkIHRoZXk/IiAgQnV0IGl0IHR1cm5zCj4+PiBvdXQgdGhl
IHNwZWMgYWxsb3dzIHRoYXQsIGFuZCB0aGV5IGFjdHVhbGx5ICpkbyouCj4+Pgo+Pj4gSSBkb24n
dCB0aGluayBpdCdzIHJvYnVzdCBpbnRlcm9wZXJhYmxlIGRlc2lnbiBmb3IgYSBQQ0kgY29udHJv
bGxlcgo+Pj4gZHJpdmVyIGxpa2UgcWNvbSB0byBhc3N1bWUgYW55dGhpbmcgYWJvdXQgUENJIGRl
dmljZXMgdW5sZXNzIGl0J3MKPj4+IHJlcXVpcmVkIGJ5IHRoZSBzcGVjLgo+PiAgRnJvbSBwY2kg
c3BlYyA0LCBpbiBzZWMgNS41Cj4+ICJQb3J0cyB0aGF0IHN1cHBvcnQgTDEgUE0gU3Vic3RhdGVz
IG11c3Qgbm90IHJlcXVpcmUgYSByZWZlcmVuY2UgY2xvY2sgd2hpbGUKPj4gaW4gTDEgUE0gU3Vi
c3RhdGVzCj4+IG90aGVyIHRoYW4gTDEuMCIuCj4+IElmIHRoZXJlIGlzIG5vIHJlZmVyZW5jZSBj
bGsgd2UgY2FuIHNheSB0aGVyZSBpcyBubyBhY3Rpdml0eSBvbiB0aGUgbGluay4KPj4gSWYgYW55
dGhpbmcgbmVlZHMgdG8gYmUgc2VudCAoc3VjaCBhcyBMVFIsIG9yIHNvbWUgbWVzc2FnZXMgKSwg
dGhlIGxpbmsKPj4gbmVlZHMgdG8gYmUgYmFjayBpbiBMMCBiZWZvcmUgaXQKPj4gc2VuZHMgdGhl
IHBhY2tldCB0byB0aGUgbGluayBwYXJ0bmVyLgo+Pgo+PiBUbyBleGl0IGZyb20gTDEueCBjbGty
ZXEgcGluIHNob3VsZCBiZSBhc3NlcnRlZC4KPj4KPj4gSW4gc3VzcGVuZCBhZnRlciB0dXJuaW5n
IG9mZiBjbG9ja3MgYW5kIHBoeSB3ZSBjYW4gZW5hYmxlIHRvIHRyaWdnZXIgYW4KPj4gaW50ZXJy
dXB0IHdoZW5ldmVyIHRoZSBjbGsgcmVxIHBpbiBhc3NlcnRzLgo+PiBJbiB0aGF0IGludGVycnVw
dCBoYW5kbGVyLCB3ZSBjYW4gZW5hYmxlIHRoZSBwY2llIHJlc291cmNlcyBiYWNrLgo+ICBGcm9t
IHRoZSBwb2ludCBvZiB2aWV3IG9mIHRoZSBlbmRwb2ludCBkcml2ZXIsIEFTUE0gc2hvdWxkIGJl
Cj4gaW52aXNpYmxlIC0tIG5vIHNvZnR3YXJlIGludGVydmVudGlvbiByZXF1aXJlZC4gIEkgdGhp
bmsgeW91J3JlCj4gc3VnZ2VzdGluZyB0aGF0IHRoZSBQQ0llIGNvbnRyb2xsZXIgZHJpdmVyIGNv
dWxkIGhlbHAgZXhpdCBMMS54IGJ5Cj4gaGFuZGxpbmcgYSBjbGsgcmVxIGludGVycnVwdCBhbmQg
ZW5hYmxpbmcgY2xvY2sgYW5kIFBIWSB0aGVuLgo+Cj4gQnV0IGRvZXNuJ3QgTDEueCBleGl0IGFs
c28gaGF2ZSB0byBoYXBwZW4gd2l0aGluIHRoZSB0aW1lIHRoZSBlbmRwb2ludAo+IGNhbiB0b2xl
cmF0ZT8gIEUuZy4sIEkgdGhpbmsgTDEuMiBleGl0IGhhcyB0byBoYXBwZW4gd2l0aGluIHRoZSBM
VFIKPiB0aW1lIGFkdmVydGlzZWQgYnkgdGhlIGVuZHBvaW50IChQQ0llIHI2LjAsIHNlYyA1LjUu
NSkuICBIb3cgY2FuIHdlCj4gZ3VhcmFudGVlIHRoYXQgaWYgc29mdHdhcmUgaXMgaW52b2x2ZWQ/
Ckl0IGlzIHRydWUgdGhhdCBpdCBpcyBkaWZmaWN1bHQgdG8gZ3VhcmFudGVlIHRob3NlIGRlbGF5
cy4gT24gb3VyIGludGVybmFsCmJvYXJkcywgd2UgYXJlIGFibGUgdG8gYWNoaWV2ZSB0aGlzIGJ1
dCB0aGF0IGlzIG5vdCB3aXRoIGxpbnV4IGtlcm5lbC4KCldpdGggTlZNZSBhdHRhY2ggd2UgaGF2
ZSBjb25uZWN0ZWQgdGhlIHByb3RvY29sIGFuYWx5emVyIGFuZCB0cmllZCB0byBzZWUgaWYKdGhl
cmUgYXJlIGFueSB0cmFuc2FjdGlvbnMgb3ZlciB0aGUgbGluay4gV2UgZm91bmQgdGhlcmUgYXJl
IG5vIHRyYW5zYWN0aW9ucwpvbiB0aGUgbGluayBvbmNlIHRoZSBsaW5rIGVudGVycyBMMS54IHRp
bGwgd2UgcmVzdW1lIHRoZSBzeXN0ZW0uIEFzIHRoZSBOVk1lCmlzIGEgcGFzc2l2ZSBzeXN0ZW0g
aXQgaXMgbm90IGluaXRpYXRpbmcgYW55IHRyYW5zYWN0aW9ucy4KClRoaXMgd2hvbGUgcmVxdWly
ZW1lbnQgY2FtZSBmcm9tIHRoZSBOVk1lIGRyaXZlciwgaXQgcmVxdWlyZXMga2VlcGluZyAKdGhl
IGxpbmsKYWN0aXZlIHN0YXRlIHdoZW4gdGhlIHN5c3RlbSBpcyBzdXNwZW5kZWQuCgpUaGVyZSBh
cmUgb25seSB0d28gdGhpbmdzIHdlIGNhbiBpbiBkbyBpbiBQQ0llIHN1c3BlbmQgYXMgd2UgaGF2
ZSB0byAKdHVybiBvZmYKUENJZSBjbG9ja3MgdG8gYWxsb3cgdGhlIHN5c3RlbSB0byB0aGUgbG93
ZXN0IHBvc3NpYmxlIHBvd2VyIHN0YXRlLgoxKSBLZWVwIHRoZSBkZXZpY2UgaW4gRDMgY29sZCBh
bmQgdHVybiBvZmYgYWxsIHRoZSBjbG9ja3MgYW5kIHBoeSBldGMuKCAKSXQgaXMgbm90CmFuIGlk
ZWFsIG9uZSBhcyB0aGlzIGRlY3JlYXNlcyB0aGUgTlZNZSBsaWZldGltZSBiZWNhdXNlIGxpbmst
ZG93biBhbmQgCmxpbmstdXAKaXMgdHJlYXRlZCBhcyBhIHBvd2VyIGN5Y2xlIGJ5IGEgZmV3IE5W
TWUgZGV2aWNlcykuCjIpIFRoaXMgaXMgdGhlIG9uZSB3ZSBhcmUgcHJvcG9zaW5nIHdoZXJlIHdl
IHR1cm4gb2ZmIHRoZSBjbG9ja3MsIHBoeSAKb25jZSB0aGUKbGluayBlbnRlcnMgTDFzcy4KCkNh
biB5b3UgcGxlYXNlIHN1Z2dlc3QgdXMgYW55IG90aGVyIHBvc3NpYmxlIHNvbHV0aW9ucyB0byBt
ZWV0IE5WTWUgCnJlcXVpcmVtZW50CihUaGF0IGlzIHRvIGtlZXAgdGhlIGxpbmsgYWN0aXZlIGR1
cmluZyBzdXNwZW5kKSBhbmQgdGhlIFFjb20gcGxhdGZvcm0KcmVxdWlyZW1lbnQgKHRoYXQgaXMg
dG8gdHVybiBvZmYgYWxsIHRoZSBjbG9ja3MgdG8gYWxsb3cgYSBsb3dlciBwb3NzaWJsZQpwb3dl
ciBzdGF0ZSk/IFFjb20gUENJZSBjb250cm9sbGVyIGlzIGNvbXBhdGlibGUgd2l0aCB2My4xIHNw
ZWNpZmljYXRpb24gCm9ubHkuCgoKVGhhbmtzICYgUmVnYXJkcywKS3Jpc2huYSBDaGFpdGFueWEu
CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
