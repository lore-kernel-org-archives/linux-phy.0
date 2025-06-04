Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1639DC5B543
	for <linux-phy@archiver.kernel.org>; Wed,  4 Jun 2025 10:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZ2ZDl4Ql3WGJghp3y72v9khY6F6hKKGB7dBkG1ZaIQ=; b=wOWGtolKlPV1SJ
	aoAAHu3UPCjPILR7cROTHzpiNvRxPZ+09jJGqbIClwEjv1zFnFFxwkze2THvzfobe+FZAkyQLCKeD
	SXcFjFrKC0dBqAeAjUdwbBjv1wTsMSAZok0gvuOiKJ3xJ/XD2FO6I41Q/1n1gG8MrRaNiZmWegW5U
	0KQ3JavEGmzTzOwP0pwFrooDjBFuglsmiXZH/MCjQrr9z36YkSIhMMN7p4KGVxXVBT5EW8tUU9P0g
	82A+FXKiW3yujXvhNG9x+5PfyX7PPA+jYN8uo4m71QxMRD4PtF34V4GfwJ6HYty+flJcFA4bhLiyM
	xhpVZuKKbLq7q8lPM6aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMkxK-0000000D5rX-2U33;
	Wed, 04 Jun 2025 10:02:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMkxH-0000000D5rD-3GHK
	for linux-phy@lists.infradead.org;
	Wed, 04 Jun 2025 10:02:45 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 554875DU013521;
	Wed, 4 Jun 2025 10:02:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XMWU8a/DXCAez/wWFLWi1bCf9nSDlbvC+BavkR9SOYM=; b=KQ3jDaEvx5GGJ8o4
	m5n+AGbafDd5oOq98rJZgBZknQLd+eBkzYNJLIt8I7YuRe/IRyE+to8KoufHmDKp
	mzx3szcPwOkjKSy8tCQw641WLwcoBP4bP06bmek8LEpUv34/oqGl+6I70F/MsZjQ
	AdVfEQAUAtZAcBvVHUMZqtxr5+9lvRTwM9sL5ir3VnoEBke78OlAVMKS1CfWdllo
	rBEZRPHFHRJA5MECQatsw+0N0jn2cMvrtrcui96p5U63imNpsdvenDxRg0M7OwH3
	MmhDZDwUZNDrjtXoIPMtATRoxwqF31he6qowg6hJXPt77tepnHp8DqO0WqJwG8f4
	mI58IQ==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8nnmx7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Jun 2025 10:02:32 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 554A2Wh6005912
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 4 Jun 2025 10:02:32 GMT
Received: from [10.239.31.134] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 4 Jun 2025
 03:02:27 -0700
Message-ID: <772f5e33-5040-4a68-84f4-25e048aa4432@quicinc.com>
Date: Wed, 4 Jun 2025 18:02:10 +0800
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
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: M78myJrI6CB7Jy1T4BD-DqDvxKB0H3iT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA0MDA3NSBTYWx0ZWRfX5qxemDmXAipZ
 ZahAIbqzRnKjfSdtDOq9GBm9FSXMjDmVOsVEqjI0FJsT/CgS4CZyo33r37vFQ4sojv5JaIO8aJD
 XIbVLAx/5mkc2FTZMWqRgeAjA0p5+a/zI2+jKSOEU+jFjxMQubv4GrwfoSpbXmx2AtduwrPs1eL
 xMTUM2aahi+KZ+tb8qvhqM/hfyOdmbL3qNvPOL/LsjwjfmbjVcKmrR2lC2gxv/60ROjQEnvXBcI
 fLMvbfg6YgHI+cMZlxcDN1vFv4XvLuNN3ox4HW6aPELt7iommu0ThBOwgGpBcNH7YvyzZ8CBj7W
 2tPwUbXlhkHoPCUrfrwhcqwqDKiUs/7OiXLL2co7KY3ZW8UCzIUm9q2D+y6xNRfBmtlsw0g6Lqh
 oPM2XNdFd25s/sfIBC+NquMVzeNMDi3yKeD3TszK8WUNguXEqdKZjuLSuSFfM/rdPjC4hq9T
X-Proofpoint-ORIG-GUID: M78myJrI6CB7Jy1T4BD-DqDvxKB0H3iT
X-Authority-Analysis: v=2.4 cv=UphjN/wB c=1 sm=1 tr=0 ts=684019b8 cx=c_pps
 a=JYp8KDb2vCoCEuGobkYCKw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=JfrnYn6hAAAA:8
 a=COk6AnOGAAAA:8 a=gDmLj3BAQhsnJV4uteAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1CNFftbPRP8L7MoqJWF3:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-04_02,2025-06-03_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 impostorscore=0 lowpriorityscore=0
 phishscore=0 mlxlogscore=999 clxscore=1011 malwarescore=0 adultscore=0
 bulkscore=0 mlxscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506040075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_030243_820062_DE84430D 
X-CRM114-Status: GOOD (  22.19  )
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
Pgo+IEkgZmVlbCBhIGJpdCBjb25mdXNlZC4gQWNjb3JkaW5nIHRvIHRoZSB0aGVvcnkgYWJvdmUs
IGV2ZXJ5dGhpbmcgc2VlbXMgdG8KPiBiZSBub24tb3B0aW9uYWwgd2hlbiBkZXNjcmliaW5nIGhh
cmR3YXJlLCBzdWNoIGFzIHJlZ2lzdGVycywgY2xvY2tzLAo+IHJlc2V0cywgcmVndWxhdG9ycywg
YW5kIGludGVycnVwdHPigJRhbGwgb2YgdGhlbSBlaXRoZXIgZXhpc3Qgb3IgZG8gbm90Lgo+Cj4g
U2VlbXMgbGlrZSBJIG1pc3VuZGVyc3RhbmQgdGhlIGNvbmNlcHQgb2YgJ29wdGlvbmFsJz8gSXMg
J29wdGlvbmFsJyBvbmx5Cj4gdXNlZCBmb3IgY29tcGF0aWJpbGl0eSBhY3Jvc3MgZGlmZmVyZW50
IHBsYXRmb3Jtcz8KPgo+IEFkZGl0aW9uYWxseSwgd2UgaGF2ZSBkb2N1bWVudGVkIHRoZSBQQ0ll
IGdsb2JhbCBpbnRlcnJ1cHQgYXMgb3B0aW9uYWwuIEkKPiB3YXMgdGF1Z2h0IHRoYXQsIGluIHRo
ZSBQQ0llIGRyaXZlciwgdGhpcyBpbnRlcnJ1cHQgaXMgcmV0cmlldmVkIHVzaW5nIHRoZQo+IHBs
YXRmb3JtX2dldF9pcnFfYnluYW1lX29wdGlvbmFsIEFQSSwgc28gaXQgY2FuIGJlIGRvY3VtZW50
ZWQgYXMgb3B0aW9uYWwuCj4gSG93ZXZlciwgdGhpcyBzdGlsbCBzZWVtcyB0byBjb250cmFkaWN0
IHRoZSB0aGVvcnkgbWVudGlvbmVkIGVhcmxpZXIuCj4+IEJScwo+PiBaaXl1ZQo+Pgo+Pj4+ICAg
ICByZXNldC1uYW1lczoKPj4+PiArICAgIG1pbkl0ZW1zOiAxCj4+Pj4gICAgICAgaXRlbXM6Cj4+
Pj4gLSAgICAgIC0gY29uc3Q6IHBjaQo+Pj4+ICsgICAgICAtIGNvbnN0OiBwY2kgIyBQQ0llIGNv
cmUgcmVzZXQKPj4+PiArICAgICAgLSBjb25zdDogbGlua19kb3duICMgUENJZSBsaW5rIGRvd24g
cmVzZXQKPj4+PiAgIHJlcXVpcmVkOgo+Pj4+ICAgICAtIGludGVyY29ubmVjdHMKPj4+PiBAQCAt
MTYxLDggKzE2NCwxMCBAQCBleGFtcGxlczoKPj4+PiAgICAgICAgICAgICAgIHBvd2VyLWRvbWFp
bnMgPSA8JmdjYyBQQ0lFXzBfR0RTQz47Cj4+Pj4gLSAgICAgICAgICAgIHJlc2V0cyA9IDwmZ2Nj
IEdDQ19QQ0lFXzBfQkNSPjsKPj4+PiAtICAgICAgICAgICAgcmVzZXQtbmFtZXMgPSAicGNpIjsK
Pj4+PiArICAgICAgICAgICAgcmVzZXRzID0gPCZnY2MgR0NDX1BDSUVfMF9CQ1I+LAo+Pj4+ICsg
ICAgICAgICAgICAgICAgICAgICA8JmdjYyBHQ0NfUENJRV8wX0xJTktfRE9XTl9CQ1I+Owo+Pj4+
ICsgICAgICAgICAgICByZXNldC1uYW1lcyA9ICJwY2kiLAo+Pj4+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICJsaW5rX2Rvd24iOwo+Pj4+ICAgICAgICAgICAgICAgcGVyc3QtZ3Bpb3MgPSA8
JnRsbW0gMiBHUElPX0FDVElWRV9MT1c+Owo+Pj4+ICAgICAgICAgICAgICAgd2FrZS1ncGlvcyA9
IDwmdGxtbSAwIEdQSU9fQUNUSVZFX0hJR0g+Owo+Pj4+IC0tIAo+Pj4+IDIuMzQuMQo+Pj4+Cj4+
Pj4KPj4+PiAtLSAKPj4+PiBsaW51eC1waHkgbWFpbGluZyBsaXN0Cj4+Pj4gbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKPj4+PiBodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkKCi0tIApXaXRoIGJlc3Qgd2lzaGVzClFpYW5nIFl1CgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
