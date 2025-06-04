Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D45C6C5B543
	for <linux-phy@archiver.kernel.org>; Wed,  4 Jun 2025 10:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7qAkKB/qPsX+7Y6EYDkryWfxp/JErYUTNYIx97ebQRg=; b=IYb3GhFsvnlrOQ
	NNlpNLqL31TJ8KNgYeVew1V3FYWFuAe43rPKM9M5/TiSf6J2GpnRhNcfXjVzhdKUGnIyptur7oHre
	/WkeHzQC4/BD1CQcCLYc5f0wYnzrlHiP1vynnZQjIZ/pIKEhxtMe/JP0kGVtmYeQoqoIGiGKPumWi
	cqJmPLUp/7KlMiBra8hN3tUp2i+8sBmls+76AhGWLNKek8ZDJwYPXAZmTEMnsqk6ohJU1ybSbrs1M
	+6l/rXqLe4PuDt65umP1abHxPt+mlTg3wQIX7j8gboLFlCo08JZa4evIw99DD/uYUWwlkSUkkYU7b
	U52xkUJtD8GpopBa3kyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMl0T-0000000D6B6-2bDb;
	Wed, 04 Jun 2025 10:06:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMl05-0000000D67D-1mph
	for linux-phy@lists.infradead.org;
	Wed, 04 Jun 2025 10:05:39 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5548d3Ql004284;
	Wed, 4 Jun 2025 10:05:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LLWn+M7Jb3tl19nO3TgCdp05g80bpe8bTMMZoETnm2Y=; b=PXU03Ir8zSvNrplc
	go2gEUMB7tWONFsOvQ4viPgwwLQCBqTeLr0ioCBXLKX7KGEwEmG9dec0lrVC+TpZ
	DFbcCqqB93ykpzgvAgiD7655+Y/IUzzlpQPDFdKMb0+vs7kdPhwYqIGkfiMd3GwV
	zfROOOuTVb/uc8jAnBkzwgnaV15H85cRjGi26wMdCg/ehBjexd2vVDMf7mOOlFA8
	y3v+TCYWPU5W2ZKJnlZREvgmVCDQy10Nqni+IU7MzZcJSrAFQAE9TDAdRxghW6ep
	TFQECwHEgF/L7h85Om1BMxo1MXUo3eys/MPN3BgUqYtooWTind0yx+oDC9B8BWwA
	WsWwoA==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8rwpja-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Jun 2025 10:05:30 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 554A5TEm005531
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 4 Jun 2025 10:05:29 GMT
Received: from [10.239.31.134] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 4 Jun 2025
 03:05:24 -0700
Message-ID: <43a6e141-adab-42e9-9966-ec54cb91a6de@quicinc.com>
Date: Wed, 4 Jun 2025 18:05:21 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/4] dt-bindings: PCI: qcom,pcie-sa8775p: document
 link_down reset
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Ziyue Zhang
	<quic_ziyuzhan@quicinc.com>
CC: <lpieralisi@kernel.org>, <kwilczynski@kernel.org>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzk+dt@kernel.org>,
        <neil.armstrong@linaro.org>, <abel.vesa@linaro.org>, <kw@linux.com>,
        <conor+dt@kernel.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <andersson@kernel.org>, <konradybcio@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <quic_krichai@quicinc.com>,
        <quic_vbadigan@quicinc.com>
References: <20250529035416.4159963-1-quic_ziyuzhan@quicinc.com>
 <20250529035416.4159963-3-quic_ziyuzhan@quicinc.com>
 <drr7cngryldptgzbmac7l2xpryugbrnydke3alq5da2mfvmgm5@nwjsqkef7ypc>
 <e8d1b60c-97fe-4f50-8ead-66711f1aa3a7@quicinc.com>
 <34dnpaz3gl5jctcohh5kbf4arijotpdlxn2eze3oixrausyev3@4qso3qg5zn4t>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <34dnpaz3gl5jctcohh5kbf4arijotpdlxn2eze3oixrausyev3@4qso3qg5zn4t>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: kr1ygYF-xldh2_nW38WLv7Xgzahp8F7z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA0MDA3NiBTYWx0ZWRfXydctOvOa9SmP
 /qo4oM6jGlGtQACfZRJfoYKTaT+0JMovEgzeaLABBzhhxSoeNFrgazYh/bLrGlaPROVjgG6VElB
 jEcJGd7ennwLg94abgN2FMZP5TaYC3ZtN08IG1fWFyaOKWQh17I1yR1Gx0ad8BCMJfFRvwf5GjP
 AIu9eD+6PMgzpGaI6DvCPzZsm+7WvqmwKd39DDeTn5jeS8dODGTJtWcaV+bjIP6Q/MqGI1l1xUI
 xnCrjAfMsaba9rtNIAjl7BRbOsnGbWrb//JpxgKl1fj0Z+8zLX3wNtR2FpdffEvDVZOhEGbCbWG
 HYV5sXx+phgwwmYtipQIaa7mKWb2pX/SLTiMntx7YU2a62RAQt+goxFDevDnC88x+c2fe66VbXz
 lfEa5xAF/86c4Ckt4viy9KwCvZjwtLfdslPcbkC44R6zEJeKkNK+9+Ixzxbogc8ckbl9jQpL
X-Authority-Analysis: v=2.4 cv=RdWQC0tv c=1 sm=1 tr=0 ts=68401a6a cx=c_pps
 a=JYp8KDb2vCoCEuGobkYCKw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=JfrnYn6hAAAA:8
 a=COk6AnOGAAAA:8 a=gDmLj3BAQhsnJV4uteAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1CNFftbPRP8L7MoqJWF3:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: kr1ygYF-xldh2_nW38WLv7Xgzahp8F7z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-04_02,2025-06-03_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 mlxscore=0 priorityscore=1501 phishscore=0
 clxscore=1011 lowpriorityscore=0 malwarescore=0 suspectscore=0
 impostorscore=0 spamscore=0 mlxlogscore=999 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506040076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_030537_469965_ADCEA463 
X-CRM114-Status: GOOD (  19.09  )
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

Ck9uIDYvNC8yMDI1IDU6MTUgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gT24gV2VkLCBK
dW4gMDQsIDIwMjUgYXQgMDM6NTg6MzNQTSArMDgwMCwgWml5dWUgWmhhbmcgd3JvdGU6Cj4+IE9u
IDYvMy8yMDI1IDk6MTEgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+PiBPbiBUaHUsIE1h
eSAyOSwgMjAyNSBhdCAxMTo1NDoxNEFNICswODAwLCBaaXl1ZSBaaGFuZyB3cm90ZToKPj4+PiBF
YWNoIFBDSWUgY29udHJvbGxlciBvbiBzYTg3NzVwIHN1cHBvcnRzICdsaW5rX2Rvd24ncmVzZXQg
b24gaGFyZHdhcmUsCj4+Pj4gZG9jdW1lbnQgaXQuCj4+PiBJIGRvbid0IHRoaW5rIGl0J3MgcG9z
c2libGUgdG8gInN1cHBvcnQiIHJlc2V0IGluIGhhcmR3YXJlLiBFaXRoZXIgaXQKPj4+IGV4aXN0
cyBhbmQgaXMgcm91dGVkLCBvciBpdCBpcyBub3QuCj4+IEhpIERtaXRyeSwKPj4KPj4gSSB3aWxs
IGNoYW5nZSB0aGUgY29tbWl0IG1zZyB0bwo+PiAnRWFjaCBQQ0llIGNvbnRyb2xsZXIgb24gc2E4
Nzc1cCBpbmNsdWRlcyAnbGlua19kb3duJ3Jlc2V0IG9uIGhhcmR3YXJlLAo+PiBkb2N1bWVudCBp
dC4nCj4+ICJTdXBwb3J0cyIgaW1wbGllcyB0aGF0IHRoZSBQQ0llIGNvbnRyb2xsZXIgaGFzIGFu
IGFjdGl2ZSByb2xlIGluIGVuYWJsaW5nCj4+IG9yIG1hbmFnaW5nIHRoZSByZXNldCBmdW5jdGlv
bmFsaXR54oCUaXQgc3VnZ2VzdHMgdGhhdCB0aGUgY29udHJvbGxlciBpcyBkZXNpZ25lZAo+PiB0
byBhY2NvbW1vZGF0ZSBvciBmYWNpbGl0YXRlIHRoaXMgZmVhdHVyZS4KPj4gICJJbmNsdWRlcyIg
c2ltcGx5IHN0YXRlcyB0aGF0IHRoZSByZXNldCBmdW5jdGlvbmFsaXR5IGlzIHByZXNlbnQgaW4g
dGhlCj4+IGhhcmR3YXJl4oCUaXQgZXhpc3RzLCB3aGV0aGVyIG9yIG5vdCBpdCdzIGFjdGl2ZWx5
IG1hbmFnZWQgb3IgY29uZmlndXJhYmxlLgo+PiBTbyBJIHRoaW5rIGNoYW5nZSBpdCB0byBpbmNs
dWRlcyB3aWxsIGJlIGJldHRlci4KPj4KPj4gQlJzCj4+IFppeXVlCj4+Cj4+Pj4gU2lnbmVkLW9m
Zi1ieTogWml5dWUgWmhhbmcgPHF1aWNfeml5dXpoYW5AcXVpY2luYy5jb20+Cj4+Pj4gLS0tCj4+
Pj4gICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLXNhODc3NXAueWFtbCAg
fCAxMyArKysrKysrKystLS0tCj4+Pj4gICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCsp
LCA0IGRlbGV0aW9ucygtKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLXNhODc3NXAueWFtbCBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLXNhODc3NXAueWFtbAo+Pj4+IGlu
ZGV4IGUzZmEyMzJkYTJjYS4uODA1MjU4Y2JjZjJmIDEwMDY0NAo+Pj4+IC0tLSBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLXNhODc3NXAueWFtbAo+Pj4+
ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLXNh
ODc3NXAueWFtbAo+Pj4+IEBAIC02MSwxMSArNjEsMTQgQEAgcHJvcGVydGllczoKPj4+PiAgICAg
ICAgIC0gY29uc3Q6IGdsb2JhbAo+Pj4+ICAgICByZXNldHM6Cj4+Pj4gLSAgICBtYXhJdGVtczog
MQo+Pj4+ICsgICAgbWluSXRlbXM6IDEKPj4+PiArICAgIG1heEl0ZW1zOiAyCj4+PiBTaG91bGRu
J3Qgd2UganVzdCB1cGRhdGUgdGhpcyB0byBtYXhJdGVtczoyIC8gbWluSXRlbXM6MiBhbmQgZHJv
cAo+Pj4gbWluSXRlbXM6MSBmcm9tIHRoZSBuZXh0IGNsYXVzZT8KPj4gSGkgRG1pdHJ5LAo+Pgo+
PiBsaW5rX2Rvd24gcmVzZXQgaXMgb3B0aW9uYWwuIEluIG1hbnkgb3RoZXIgcGxhdGZvcm1zLCBs
aWtlIHNtODU1MAo+PiBhbmQgeDFlODAxMDAsIGxpbmtfZG93biByZXNldCBpcyBkb2N1bWVudGVk
IGFzIGEgb3B0aW9uYWwgcmVzZXQuCj4+IFBDSWUgd2lsbCB3b3JrcyBmaW5lIHdpdGhvdXQgbGlu
a19kb3duIHJlc2V0LiBTbyBJIHRoaW5rIHNldHRpbmcgaXQKPj4gYXMgb3B0aW9uYWwgaXMgYmV0
dGVyLgo+IFlvdSBhcmUgZGVzY3JpYmluZyBhIGhhcmR3YXJlLiBIb3cgY2FuIGEgcmVzZXQgYmUg
b3B0aW9uYWwgaW4gdGhlCj4gX2hhcmR3YXJlXz8gSXQncyBlaXRoZXIgcm91dGVkIG9yIG5vdC4K
CkkgZmVlbCBhIGJpdCBjb25mdXNlZC4gQWNjb3JkaW5nIHRvIHRoZSB0aGVvcnkgYWJvdmUsIGV2
ZXJ5dGhpbmcgc2VlbXMgdG8KYmUgbm9uLW9wdGlvbmFsIHdoZW4gZGVzY3JpYmluZyBoYXJkd2Fy
ZSwgc3VjaCBhcyByZWdpc3RlcnMsIGNsb2NrcywKcmVzZXRzLCByZWd1bGF0b3JzLCBhbmQgaW50
ZXJydXB0c+KAlGFsbCBvZiB0aGVtIGVpdGhlciBleGlzdCBvciBkbyBub3QuCgpTZWVtcyBsaWtl
IEkgbWlzdW5kZXJzdGFuZCB0aGUgY29uY2VwdCBvZiAnb3B0aW9uYWwnPyBJcyAnb3B0aW9uYWwn
IG9ubHkKdXNlZCBmb3IgY29tcGF0aWJpbGl0eSBhY3Jvc3MgZGlmZmVyZW50IHBsYXRmb3Jtcz8K
CkFkZGl0aW9uYWxseSwgd2UgaGF2ZSBkb2N1bWVudGVkIHRoZSBQQ0llIGdsb2JhbCBpbnRlcnJ1
cHQgYXMgb3B0aW9uYWwuIEkKd2FzIHRhdWdodCB0aGF0LCBpbiB0aGUgUENJZSBkcml2ZXIsIHRo
aXMgaW50ZXJydXB0IGlzIHJldHJpZXZlZCB1c2luZyB0aGUKcGxhdGZvcm1fZ2V0X2lycV9ieW5h
bWVfb3B0aW9uYWwgQVBJLCBzbyBpdCBjYW4gYmUgZG9jdW1lbnRlZCBhcyBvcHRpb25hbC4KSG93
ZXZlciwgdGhpcyBzdGlsbCBzZWVtcyB0byBjb250cmFkaWN0IHRoZSB0aGVvcnkgbWVudGlvbmVk
IGVhcmxpZXIuCgo+PiBCUnMKPj4gWml5dWUKPj4KPj4+PiAgICAgcmVzZXQtbmFtZXM6Cj4+Pj4g
KyAgICBtaW5JdGVtczogMQo+Pj4+ICAgICAgIGl0ZW1zOgo+Pj4+IC0gICAgICAtIGNvbnN0OiBw
Y2kKPj4+PiArICAgICAgLSBjb25zdDogcGNpICMgUENJZSBjb3JlIHJlc2V0Cj4+Pj4gKyAgICAg
IC0gY29uc3Q6IGxpbmtfZG93biAjIFBDSWUgbGluayBkb3duIHJlc2V0Cj4+Pj4gICByZXF1aXJl
ZDoKPj4+PiAgICAgLSBpbnRlcmNvbm5lY3RzCj4+Pj4gQEAgLTE2MSw4ICsxNjQsMTAgQEAgZXhh
bXBsZXM6Cj4+Pj4gICAgICAgICAgICAgICBwb3dlci1kb21haW5zID0gPCZnY2MgUENJRV8wX0dE
U0M+Owo+Pj4+IC0gICAgICAgICAgICByZXNldHMgPSA8JmdjYyBHQ0NfUENJRV8wX0JDUj47Cj4+
Pj4gLSAgICAgICAgICAgIHJlc2V0LW5hbWVzID0gInBjaSI7Cj4+Pj4gKyAgICAgICAgICAgIHJl
c2V0cyA9IDwmZ2NjIEdDQ19QQ0lFXzBfQkNSPiwKPj4+PiArICAgICAgICAgICAgICAgICAgICAg
PCZnY2MgR0NDX1BDSUVfMF9MSU5LX0RPV05fQkNSPjsKPj4+PiArICAgICAgICAgICAgcmVzZXQt
bmFtZXMgPSAicGNpIiwKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAibGlua19kb3du
IjsKPj4+PiAgICAgICAgICAgICAgIHBlcnN0LWdwaW9zID0gPCZ0bG1tIDIgR1BJT19BQ1RJVkVf
TE9XPjsKPj4+PiAgICAgICAgICAgICAgIHdha2UtZ3Bpb3MgPSA8JnRsbW0gMCBHUElPX0FDVElW
RV9ISUdIPjsKPj4+PiAtLSAKPj4+PiAyLjM0LjEKPj4+Pgo+Pj4+Cj4+Pj4gLS0gCj4+Pj4gbGlu
dXgtcGh5IG1haWxpbmcgbGlzdAo+Pj4+IGxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCj4+
Pj4gaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
CgotLSAKV2l0aCBiZXN0IHdpc2hlcwpRaWFuZyBZdQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
