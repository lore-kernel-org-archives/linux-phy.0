Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FB5BC32771
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 14:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:CC:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cRHyz04cS6AieE7RXKz3wT/FJqv8Ttool46WwChhQAc=; b=HbJg8r+giCLCKO
	ik1BrQPNJ88XTXp2ty+y1mYbstguoVOt8FoQwMZdaxZ+nvbkdL5cKfYZVCNVRzh2yPE8pZw8C4P6w
	VM5C1/aGh6923EnVc6A8Bv2mtZugOmnaettiDcYQ0JoYkFqsplcPWpoUjLeCykO81qWzQTgmSvPdQ
	qyeRm8d7j7nBd7qO50y5dAIC/0GxCg3kJLa5dvXxTX24s0HwJobj8ZhD8cv/cxYLbbRbsPNKs6/JR
	n3y3nrasfKZYu+pXRlGns16cX7XPEVYOpT6Ht3kr6U7NrQ4ul6Coin3LBKdUhEdiYGL3k+3CsdUlY
	AbyHBeFtZB51E9PAuWpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odY7Y-00Gh6X-Lf; Wed, 28 Sep 2022 14:33:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odY7V-00Gh5P-Cm
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 14:33:07 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28SCvNcj010676;
	Wed, 28 Sep 2022 14:32:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : from : to : cc : references : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=+7FsEsmSzmHPrpkQKjyZG1T0NwZSFVJVfMS6Ktray90=;
 b=g5727hPnuJs6+VZIk7PC03ipq3r7aJXPWXiz4cYyxTy2TD72TrRTioJLUshP8eb5S3jp
 T/e0fZoTLEzHT5M7GUKckHSY5ee44pZUXUNNeP7oDqVSfjHIxGiG3XzZefJ7i66qLI3U
 s2EBfRfyATRcknRkTmdhxeZNSaPnn3YW7dBgPT9IhvPK8qbxZHH47hL0xTo18F9W7hBS
 MMBx83dYnOiX4XqzRwN7rDwrf5OLq0/WNsFehkfKv0rzSWHdfbGDdpZ0Z8CfRJFKrn4i
 mfY447+fcki8BQ5o5SzXxZKErWjDJjI/Xs9gczGhxH9y7BRmqFdQcl/gOxLTkNVLSusG CA== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3jvm758g4d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 28 Sep 2022 14:32:46 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 28SEWj0V029305
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 28 Sep 2022 14:32:45 GMT
Received: from [10.216.15.146] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.29; Wed, 28 Sep
 2022 07:32:35 -0700
Message-ID: <35e82a1b-7a36-d460-5a98-1378175836f1@quicinc.com>
Date: Wed, 28 Sep 2022 20:02:32 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v7 1/5] PCI: qcom: Add system suspend and resume support
Content-Language: en-US
From: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>
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
References: <20220923142611.GA1389970@bhelgaas>
 <5fb1e6d9-00c0-33f2-753e-2338010da352@quicinc.com>
In-Reply-To: <5fb1e6d9-00c0-33f2-753e-2338010da352@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: LAKEQkVTk4y8zDCqOoNMJY_kDv9VaNpk
X-Proofpoint-GUID: LAKEQkVTk4y8zDCqOoNMJY_kDv9VaNpk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-28_06,2022-09-28_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 bulkscore=0
 phishscore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0
 mlxlogscore=474 adultscore=0 priorityscore=1501 mlxscore=0 impostorscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2209280086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_073305_600942_EFCBB770 
X-CRM114-Status: GOOD (  25.42  )
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

Ck9uIDkvMjUvMjAyMiA3OjIzIEFNLCBLcmlzaG5hIENoYWl0YW55YSBDaHVuZHJ1IHdyb3RlOgo+
Cj4gT24gOS8yMy8yMDIyIDc6NTYgUE0sIEJqb3JuIEhlbGdhYXMgd3JvdGU6Cj4+IE9uIEZyaSwg
U2VwIDIzLCAyMDIyIGF0IDA3OjI5OjMxQU0gKzA1MzAsIEtyaXNobmEgQ2hhaXRhbnlhIENodW5k
cnUgCj4+IHdyb3RlOgo+Pj4gT24gOS8yMy8yMDIyIDEyOjEyIEFNLCBCam9ybiBIZWxnYWFzIHdy
b3RlOgo+Pj4+IE9uIFRodSwgU2VwIDIyLCAyMDIyIGF0IDA5OjA5OjI4UE0gKzA1MzAsIEtyaXNo
bmEgQ2hhaXRhbnlhIENodW5kcnUgCj4+Pj4gd3JvdGU6Cj4+Pj4+IE9uIDkvMjEvMjAyMiAxMDoy
NiBQTSwgQmpvcm4gSGVsZ2FhcyB3cm90ZToKPj4+Pj4+IE9uIFdlZCwgU2VwIDIxLCAyMDIyIGF0
IDAzOjIzOjM1UE0gKzA1MzAsIEtyaXNobmEgQ2hhaXRhbnlhIAo+Pj4+Pj4gQ2h1bmRydSB3cm90
ZToKPj4+Pj4+PiBPbiA5LzIwLzIwMjIgMTE6NDYgUE0sIEJqb3JuIEhlbGdhYXMgd3JvdGU6Cj4+
Pj4+Pj4+IE9uIFR1ZSwgU2VwIDIwLCAyMDIyIGF0IDAzOjUyOjIzUE0gKzA1MzAsIEtyaXNobmEg
Y2hhaXRhbnlhIAo+Pj4+Pj4+PiBjaHVuZHJ1IHdyb3RlOgo+Pj4+Pj4+Pj4gSW4gcWNvbSBwbGF0
Zm9ybSBQQ0llIHJlc291cmNlcyggY2xvY2tzLCBwaHkgZXRjLi4pIGNhbgo+Pj4+Pj4+Pj4gcmVs
ZWFzZWQgd2hlbiB0aGUgbGluayBpcyBpbiBMMXNzIHRvIHJlZHVjZSB0aGUgcG93ZXIKPj4+Pj4+
Pj4+IGNvbnN1bXB0aW9uLiBTbyBpZiB0aGUgbGluayBpcyBpbiBMMXNzLCByZWxlYXNlIHRoZSBQ
Q0llCj4+Pj4+Pj4+PiByZXNvdXJjZXMuIEFuZCB3aGVuIHRoZSBzeXN0ZW0gcmVzdW1lcywgZW5h
YmxlIHRoZSBQQ0llCj4+Pj4+Pj4+PiByZXNvdXJjZXMgaWYgdGhleSByZWxlYXNlZCBpbiB0aGUg
c3VzcGVuZCBwYXRoLgo+Pj4+Pj4+PiBXaGF0J3MgdGhlIGNvbm5lY3Rpb24gd2l0aCBMMS54P8Kg
IExpbmtzIGVudGVyIEwxLnggYmFzZWQgb24KPj4+Pj4+Pj4gYWN0aXZpdHkgYW5kIHRpbWluZy7C
oCBUaGF0IGRvZXNuJ3Qgc2VlbSBsaWtlIGEgcmVsaWFibGUKPj4+Pj4+Pj4gaW5kaWNhdG9yIHRv
IHR1cm4gUEhZcyBvZmYgYW5kIGRpc2FibGUgY2xvY2tzLgo+Pj4+Pj4+IFRoaXMgaXMgYSBRY29t
IFBIWS1zcGVjaWZpYyBmZWF0dXJlIChyZXRhaW5pbmcgdGhlIGxpbmsgc3RhdGUgaW4KPj4+Pj4+
PiBMMS54IHdpdGggY2xvY2tzIHR1cm5lZCBvZmYpLsKgIEl0IGlzIHBvc3NpYmxlIG9ubHkgd2l0
aCB0aGUgbGluawo+Pj4+Pj4+IGJlaW5nIGluIGwxLnguIFBIWSBjYW4ndCByZXRhaW4gdGhlIGxp
bmsgc3RhdGUgaW4gTDAgd2l0aCB0aGUKPj4+Pj4+PiBjbG9ja3MgdHVybmVkIG9mZiBhbmQgd2Ug
bmVlZCB0byByZS10cmFpbiB0aGUgbGluayBpZiBpdCdzIGluIEwyCj4+Pj4+Pj4gb3IgTDMuIFNv
IHdlIGNhbiBzdXBwb3J0IHRoaXMgZmVhdHVyZSBvbmx5IHdpdGggTDEueC4gVGhhdCBpcwo+Pj4+
Pj4+IHRoZSByZWFzb24gd2UgYXJlIHRha2luZyBsMS54IGFzIHRoZSB0cmlnZ2VyIHRvIHR1cm4g
b2ZmIGNsb2Nrcwo+Pj4+Pj4+IChpbiBvbmx5IHN1c3BlbmQgcGF0aCkuCj4+Pj4+PiBUaGlzIGRv
ZXNuJ3QgYWRkcmVzcyBteSBxdWVzdGlvbi7CoCBMMS54IGlzIGFuIEFTUE0gZmVhdHVyZSwgd2hp
Y2gKPj4+Pj4+IG1lYW5zIGhhcmR3YXJlIG1heSBlbnRlciBvciBsZWF2ZSBMMS54IGF1dG9ub21v
dXNseSBhdCBhbnkgdGltZQo+Pj4+Pj4gd2l0aG91dCBzb2Z0d2FyZSBpbnRlcnZlbnRpb24uwqAg
VGhlcmVmb3JlLCBJIGRvbid0IHRoaW5rIHJlYWRpbmcgdGhlCj4+Pj4+PiBjdXJyZW50IHN0YXRl
IGlzIGEgcmVsaWFibGUgd2F5IHRvIGRlY2lkZSBhbnl0aGluZy4KPj4+Pj4gQWZ0ZXIgdGhlIGxp
bmsgZW50ZXJzIHRoZSBMMS54IGl0IHdpbGwgY29tZSBvdXQgb25seSBpZiB0aGVyZSBpcwo+Pj4+
PiBzb21lIGFjdGl2aXR5IG9uIHRoZSBsaW5rLsKgIEFTIHN5c3RlbSBpcyBzdXNwZW5kZWQgYW5k
IE5WTWUgZHJpdmVyCj4+Pj4+IGlzIGFsc28gc3VzcGVuZGVkKCBxdWV1ZXMgd2lsbMKgIGZyZWV6
ZSBpbiBzdXNwZW5kKSB3aG8gZWxzZSBjYW4KPj4+Pj4gaW5pdGlhdGUgYW55IGRhdGEuCj4+Pj4g
SSBkb24ndCB0aGluayB3ZSBjYW4gYXNzdW1lIHRoYXQgbm90aGluZyB3aWxsIGhhcHBlbiB0byBj
YXVzZSBleGl0Cj4+Pj4gZnJvbSBMMS54LsKgIEZvciBpbnN0YW5jZSwgUENJZSBNZXNzYWdlcyBm
b3IgSU5UeCBzaWduYWxpbmcsIExUUiwgT0JGRiwKPj4+PiBQVE0sIGV0Yy4sIG1heSBiZSBzZW50
IGV2ZW4gdGhvdWdoIHdlIHRoaW5rIHRoZSBkZXZpY2UgaXMgaWRsZSBhbmQKPj4+PiB0aGVyZSBz
aG91bGQgYmUgbm8gbGluayBhY3Rpdml0eS4KPj4+IEkgZG9uJ3QgdGhpbmsgYWZ0ZXIgdGhlIGxp
bmsgZW50ZXJzIGludG8gTDEueCB0aGVyZSB3aWxsIHNvbWUKPj4+IGFjdGl2aXR5IG9uIHRoZSBs
aW5rIGFzIHlvdSBtZW50aW9uZWQsIGV4Y2VwdCBmb3IgUENJZSBtZXNzYWdlcyBsaWtlCj4+PiBJ
TlR4L01TSS9NU0lYLiBUaGVzZSBtZXNzYWdlcyBhbHNvIHdpbGwgbm90IGNvbWUgYmVjYXVzZSB0
aGUgY2xpZW50Cj4+PiBkcml2ZXJzIGxpa2UgTlZNZSB3aWxsIGtlZXAgdGhlaXIgZGV2aWNlIGlu
IHRoZSBsb3dlc3QgcG93ZXIgbW9kZS4KPj4+Cj4+PiBUaGUgbGluayB3aWxsIGNvbWUgb3V0IG9m
IEwxLnggb25seSB3aGVuIHRoZXJlIGlzIGNvbmZpZyBvciBtZW1vcnkKPj4+IGFjY2VzcyBvciBz
b21lIG1lc3NhZ2VzIHRvIHRyaWdnZXIgdGhlIGludGVycnVwdHMgZnJvbSB0aGUgZGV2aWNlcy4K
Pj4+IFdlIGFyZSBhbHJlYWR5IG1ha2luZyBzdXJlIHRoaXMgYWNjZXNzIHdpbGwgbm90IGJlIHRo
ZXJlIGluIFMzLsKgIElmCj4+PiB0aGUgbGluayBpcyBpbiBMMCBvciBMMHMgd2hhdCB5b3Ugc2Fp
ZCBpcyBleHBlY3RlZCBidXQgbm90IGluIEwxLngKPj4gRm9yZ2l2ZSBtZSBmb3IgYmVpbmcgc2tl
cHRpY2FsLCBidXQgd2UganVzdCBzcGVudCBhIGZldyBtb250aHMKPj4gdW50YW5nbGluZyB0aGUg
ZmFjdCB0aGF0IHNvbWUgc3dpdGNoZXMgc2VuZCBQVE0gcmVxdWVzdCBtZXNzYWdlcyBldmVuCj4+
IHdoZW4gdGhleSdyZSBpbiBhIG5vbi1EMCBzdGF0ZS7CoCBXZSBleHBlY3RlZCB0aGF0IGRldmlj
ZXMgaW4gRDNob3QKPj4gd291bGQgbm90IHNlbmQgc3VjaCBtZXNzYWdlcyBiZWNhdXNlICJ3aHkg
d291bGQgdGhleT8iwqAgQnV0IGl0IHR1cm5zCj4+IG91dCB0aGUgc3BlYyBhbGxvd3MgdGhhdCwg
YW5kIHRoZXkgYWN0dWFsbHkgKmRvKi4KPj4KPj4gSSBkb24ndCB0aGluayBpdCdzIHJvYnVzdCBp
bnRlcm9wZXJhYmxlIGRlc2lnbiBmb3IgYSBQQ0kgY29udHJvbGxlcgo+PiBkcml2ZXIgbGlrZSBx
Y29tIHRvIGFzc3VtZSBhbnl0aGluZyBhYm91dCBQQ0kgZGV2aWNlcyB1bmxlc3MgaXQncwo+PiBy
ZXF1aXJlZCBieSB0aGUgc3BlYy4KPj4KPj4gQmpvcm4KPiBXZSB3aWxsIGNoZWNrIHRoZSBzcGVj
IG9uY2UgYW5kIHdpbGwgY29tZSBiYWNrIHRvIHlvdSwKIEZyb20gcGNpIHNwZWMgNCwgaW4gc2Vj
IDUuNQoiUG9ydHMgdGhhdCBzdXBwb3J0IEwxIFBNIFN1YnN0YXRlcyBtdXN0IG5vdCByZXF1aXJl
IGEgcmVmZXJlbmNlIGNsb2NrIAp3aGlsZSBpbiBMMSBQTSBTdWJzdGF0ZXMKb3RoZXIgdGhhbiBM
MS4wIi4KSWYgdGhlcmUgaXMgbm8gcmVmZXJlbmNlIGNsayB3ZSBjYW4gc2F5IHRoZXJlIGlzIG5v
IGFjdGl2aXR5IG9uIHRoZSBsaW5rLgpJZiBhbnl0aGluZyBuZWVkcyB0byBiZSBzZW50IChzdWNo
IGFzIExUUiwgb3Igc29tZSBtZXNzYWdlcyApLCB0aGUgbGluayAKbmVlZHMgdG8gYmUgYmFjayBp
biBMMCBiZWZvcmUgaXQKc2VuZHMgdGhlIHBhY2tldCB0byB0aGUgbGluayBwYXJ0bmVyLgoKVG8g
ZXhpdCBmcm9tIEwxLnggY2xrcmVxIHBpbiBzaG91bGQgYmUgYXNzZXJ0ZWQuCgpJbiBzdXNwZW5k
IGFmdGVyIHR1cm5pbmcgb2ZmIGNsb2NrcyBhbmQgcGh5IHdlIGNhbiBlbmFibGUgdG8gdHJpZ2dl
ciBhbiAKaW50ZXJydXB0IHdoZW5ldmVyIHRoZSBjbGsgcmVxIHBpbiBhc3NlcnRzLgpJbiB0aGF0
IGludGVycnVwdCBoYW5kbGVyLCB3ZSBjYW4gZW5hYmxlIHRoZSBwY2llIHJlc291cmNlcyBiYWNr
LgoKV2hhdCBhcmUgeW91ciB0aG91Z2h0cyBvbiB0aGlzPwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
