Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 637D2C35FFC
	for <linux-phy@archiver.kernel.org>; Tue, 25 Mar 2025 07:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZyuxzKzfbEayyUfoMHOJerqutrAhDBqadwfUUNOg22w=; b=LJpZkEbpZgGkgn
	oByxVRqzQCCQ1qUBvXRbTNDKEnKAxAfOWDizr5NsZzGXHxdEbP9useefdLCUk1oBIyv+WGwElfUyh
	NnmLX3sqtMHkpXgt2TmrPJKJ58HnlE3zNrLX72XWcacl3jF7URVTFyI9/Gqy19ufNNEP23MhNpGsB
	2bFMOOcD/lMEtNosjj9BDoofBW/HMIz386upAKlW1n98BNY80ysXi9Aw/YsxeaqnvE3kBPdaQbhU2
	JHihm7RMNhTyhiKd/opa5mg2d+UUA55GA5sQfFjYGGiuXbhnDy7q0fj2pw+6tqFR6SFYL2JFgnJKD
	9L5rJW30bKZgz16XdbSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twyrN-000000056r5-0Xf5;
	Tue, 25 Mar 2025 07:38:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twyrK-000000056pm-0EIh
	for linux-phy@lists.infradead.org;
	Tue, 25 Mar 2025 07:38:03 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52P5vVpH022513;
	Tue, 25 Mar 2025 07:37:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OMow6D8ixjOPzePi5u4aOLZ4okP7AbJZA1FrFIgLn3E=; b=lZp1wMYMdwr/CfJP
	272cJFxeKYDsosa2Yp7lAmte/hlZFWyjO+WEoRii/eLBm2Ibets556znOfiYI+MD
	E53+TD3JwlwcQ79ijBJEzV4xcKyWdy8maUNiFfF7vgX/miEQG6BvwGuZFg/3oK4Q
	3JQ7vpI6q74KSmJF+z9TJyskfIKmkDLC4HvbMt3ufOSaghvUN1uQwAJMNk4KrTzN
	g1k85qeqUVQDECOu9Rc/bQV3NP68rt6xwrMz9tUXDi+A0fLcXV+rWePUCmeHQ2dx
	yqvZhtKMVRFLTzQCa5l6nyeHCJuW45R7c5QDnigAhpwB1jyot4DVCb6sZhvaaaS9
	xzP3+w==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45hmt06un2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 25 Mar 2025 07:37:43 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 52P7bg0e024222
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 25 Mar 2025 07:37:42 GMT
Received: from [10.218.7.247] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Tue, 25 Mar
 2025 00:37:35 -0700
Message-ID: <7b08c860-e5f1-4665-8e5e-2a6a3e26a2fa@quicinc.com>
Date: Tue, 25 Mar 2025 13:07:32 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] phy: qcom-qmp-ufs: Add PHY Configuration support
 for sm8750
To: <neil.armstrong@linaro.org>, Melody Olvera <quic_molvera@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Satya Durga Srinivasu Prabhala
	<quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-scsi@vger.kernel.org>, Manish Pandey <quic_mapa@quicinc.com>,
        "Linux
 regressions mailing list" <regressions@lists.linux.dev>
References: <20250310-sm8750_ufs_master-v2-0-0dfdd6823161@quicinc.com>
 <20250310-sm8750_ufs_master-v2-2-0dfdd6823161@quicinc.com>
 <1526d8a4-9606-4fb3-bb86-79bd8eb8a789@linaro.org>
 <430ed11c-0490-45be-897b-27cad9682371@quicinc.com>
 <731f1ad1-8979-49a1-b168-56e24b94f4fb@linaro.org>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <731f1ad1-8979-49a1-b168-56e24b94f4fb@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: PMrtWukH1iiwMdKyachegeb5fb3oeXVh
X-Proofpoint-ORIG-GUID: PMrtWukH1iiwMdKyachegeb5fb3oeXVh
X-Authority-Analysis: v=2.4 cv=aqGyCTZV c=1 sm=1 tr=0 ts=67e25d47 cx=c_pps a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=qC_FGOx9AAAA:8 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8
 a=nFbOSJeC2IPyvr0jA-0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=fsdK_YakeE02zTmptMdW:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-25_03,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 mlxlogscore=999 bulkscore=0
 impostorscore=0 suspectscore=0 mlxscore=0 phishscore=0 adultscore=0
 spamscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503250052
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250325_003802_215698_D7D0C476 
X-CRM114-Status: GOOD (  19.78  )
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

CgpPbiAzLzI1LzIwMjUgMTowNCBQTSwgbmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZyB3cm90ZToK
PiBIaSwKPiAKPiBPbiAyNS8wMy8yMDI1IDA0OjEyLCBOaXRpbiBSYXdhdCB3cm90ZToKPj4KPj4K
Pj4gT24gMy8yNC8yMDI1IDExOjQwIFBNLCBOZWlsIEFybXN0cm9uZyB3cm90ZToKPj4+IEhpLAo+
Pj4KPj4+IE9uIDEwLzAzLzIwMjUgMjI6MTIsIE1lbG9keSBPbHZlcmEgd3JvdGU6Cj4+Pj4gRnJv
bTogTml0aW4gUmF3YXQgPHF1aWNfbml0aXJhd2FAcXVpY2luYy5jb20+Cj4+Pj4KPj4+PiBBZGQg
U004NzUwIHNwZWNpZmljIHJlZ2lzdGVyIGxheW91dCBhbmQgdGFibGUgY29uZmlncy4gVGhlIHNl
cmRlcwo+Pj4+IFRYIFJYIHJlZ2lzdGVyIG9mZnNldCBoYXMgY2hhbmdlZCBmb3IgU004NzUwIGFu
ZCBoZW5jZSBrZWVwIFVGUwo+Pj4+IHNwZWNpZmljIHNlcmRlcyBvZmZzZXRzIGluIGEgZGVkaWNh
dGVkIGhlYWRlciBmaWxlLgo+Pj4+Cj4+Pj4gUmV2aWV3ZWQtYnk6IE5laWwgQXJtc3Ryb25nIDxu
ZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPgo+Pj4+IENvLWRldmVsb3BlZC1ieTogTWFuaXNoIFBh
bmRleSA8cXVpY19tYXBhQHF1aWNpbmMuY29tPgo+Pj4+IFNpZ25lZC1vZmYtYnk6IE1hbmlzaCBQ
YW5kZXkgPHF1aWNfbWFwYUBxdWljaW5jLmNvbT4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBOaXRpbiBS
YXdhdCA8cXVpY19uaXRpcmF3YUBxdWljaW5jLmNvbT4KPj4+PiAtLS0KPj4+PiDCoCBkcml2ZXJz
L3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcXNlcmRlcy1jb20tdjYuaCB8wqDCoCA3ICsKPj4+
PiDCoCAuLi4vcXVhbGNvbW0vcGh5LXFjb20tcW1wLXFzZXJkZXMtdHhyeC11ZnMtdjcuaMKgwqDC
oCB8wqAgNjcgKysrKysrKysKPj4+PiDCoCBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1x
bXAtdWZzLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMTgwICsrKysrKysrKyAKPj4+PiArKyAr
KysrKysrKystCj4+Pj4gwqAgMyBmaWxlcyBjaGFuZ2VkLCAyNDYgaW5zZXJ0aW9ucygrKSwgOCBk
ZWxldGlvbnMoLSkKPj4+Pgo+Pj4KPj4+IDxzbmlwPgo+Pj4KPj4+IFRoaXMgY2hhbmdlIGJyZWFr
cyBVRlMgb24gdGhlIFNNODU1MC1IREs6Cj4+Pgo+Pj4gW8KgwqDCoCA3LjQxODE2MV0gcWNvbS1x
bXAtdWZzLXBoeSAxZDgwMDAwLnBoeTogcGh5IGluaXRpYWxpemF0aW9uIAo+Pj4gdGltZWQtb3V0
Cj4+PiBbwqDCoMKgIDcuNDI3MDIxXSBwaHkgcGh5LTFkODAwMDAucGh5LjA6IHBoeSBwb3dlcm9u
IGZhaWxlZCAtLT4gLTExMAo+Pj4gW8KgwqDCoCA3LjQ5MzUxNF0gdWZzaGNkLXFjb20gMWQ4NDAw
MC51ZnNoYzogRW5hYmxpbmcgdGhlIGNvbnRyb2xsZXIgZmFpbGVkCj4+PiAuLi4KPj4KPj4gSGkg
TmVpbCwKPj4KPj4gVGhhbmtzIGZvciB0ZXN0aW5nIGFuZCByZXBvcnRpbmcuCj4+IEkgZGlkIHRl
c3RlZCB0aGlzIHBhdGNoIG9uIFNNODc1MCBNVFAsIFNNODc1MCBRUkQsIFNNODY1MCBNVFAsIFNN
ODU1MCAKPj4gTVRQIGFuZCBTTTg4NTAgUVJEIGFsbCBvZiB0aGVzZSBoYXZlIHJhdGUgQiBhbmQg
aGVuY2Ugbm8gaXNzdWUuCj4+Cj4+IFVuZm9ydHVuYXRlbHkgb25seSBTTTg1NTAgSERLIHBsYXRm
b3JtIHdoaWNoIFVGUzQuMCBhbmQgUmF0ZUEgY291bGRuJ3QgCj4+IGdldCB0ZXN0ZWQuIEFzIHdl
IGtub3cgU004NTUwIHdpdGggZ2VhciA1IG9ubHkgc3VwcG9ydCByYXRlIEEuCj4+Cj4+IEkgd2Fz
IGFwcGx5aW5nIHJhdGUgQiBzZXR0aW5nIHdpdGhvdXQgY2hlY2tpbmcgZm9yIG1vZGUgdHlwZS4g
U2luY2UKPj4gU004NTUwIGlzIG9ubHkgcGxhdGZvcm0gd2hpY2ggc3VwcG9ydCBvbmx5IHJhdGUg
QSB3aXRoIFVGUzQuMCAuIEhlbmNlCj4+IHRoaXMgY291bGQgYmUgdGhlIGlzc3VlLgo+Pgo+PiBN
ZWFud2hpbGUgY2FuIHlvdSBoZWxwIHRlc3QgYXQgeW91ciBlbmQgd2l0aCBiZWxvdyBjaGFuZ2Ug
YW5kIGxldCBtZSAKPj4gaWYgaXQgcmVzb2x2ZXMgZm9yIHlvdS4gSSB3aWxsIGFsc28gdHJ5IGF0
IG15IGVuZCB0byB0ZXN0IGFzIHdlbGwuCj4+Cj4+ID09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Cj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMgYi9kcml2
ZXJzL3BoeS8gCj4+IHF1YWxjb21tL3BoeS1xY29tLXFtcC11ZnMuYwo+PiBpbmRleCA0NWIzYjc5
MjY5NmUuLmIzM2UyZTJiNTAxNCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0v
cGh5LXFjb20tcW1wLXVmcy5jCj4+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29t
LXFtcC11ZnMuYwo+PiBAQCAtMTc1NCw3ICsxNzU0LDggQEAgc3RhdGljIHZvaWQgcW1wX3Vmc19p
bml0X3JlZ2lzdGVycyhzdHJ1Y3QgCj4+IHFtcF91ZnMgKnFtcCwgY29uc3Qgc3RydWN0IHFtcF9w
aHlfY2ZnCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHFtcF91ZnNfaW5pdF9h
bGwocW1wLCAmY2ZnLT50YmxzX2hzX292ZXJsYXlbaV0pOwo+PiDCoMKgwqDCoMKgwqDCoMKgIH0K
Pj4KPj4gLcKgwqDCoMKgwqDCoCBxbXBfdWZzX2luaXRfYWxsKHFtcCwgJmNmZy0+dGJsc19oc19i
KTsKPj4gK8KgwqDCoMKgwqDCoCBpZiAocW1wLT5tb2RlID09IFBIWV9NT0RFX1VGU19IU19CKQo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBxbXBfdWZzX2luaXRfYWxsKHFtcCwgJmNm
Zy0+dGJsc19oc19iKTsKPj4gwqDCoH0KPj4KPj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Cj4g
Cj4gV2l0aCB0aGlzIGNoYW5nZSB0aGUgVUZTIHdvcmtzIGFnYWluLgoKVGhhbmtzIE5laWwgZm9y
IHF1aWNrIHJldmVydC4gSSdsbCByYWlzZSB0aGUgb2ZmaWNpYWwgY2hhbmdlLgoKUmVnYXJkcywK
bml0aW4KCj4gCj4gVGhhbmtzLAo+IE5laWwKPiAKPj4KPj4KPj4gVGhhbmtzLAo+PiBOaXRpbgo+
Pgo+Pj4KPj4+IEdJVCBiaXNlY3QgcG9pbnRzIHRvOgo+Pj4gYjAyY2M5YTE3Njc5M2IyMDdlOTU5
NzAxYWYxZWMyNjIyMjA5M2IwNSBpcyB0aGUgZmlyc3QgYmFkIGNvbW1pdAo+Pj4gQXV0aG9yOiBO
aXRpbiBSYXdhdCA8cXVpY19uaXRpcmF3YUBxdWljaW5jLmNvbT4KPj4+IERhdGU6wqDCoCBNb24g
TWFyIDEwIDE0OjEyOjMwIDIwMjUgLTA3MDAKPj4+Cj4+PiDCoMKgwqDCoCBwaHk6IHFjb20tcW1w
LXVmczogQWRkIFBIWSBDb25maWd1cmF0aW9uIHN1cHBvcnQgZm9yIHNtODc1MAo+Pj4KPj4+IGJp
c2VjdCBsb2c6Cj4+PiBnaXQgYmlzZWN0IHN0YXJ0ICdmZjdmOWIxOTllM2YnICd2Ni4xNC1yYzEn
Cj4+PiBnaXQgYmlzZWN0IGdvb2QgMzZjMThjNTYyODQ2MzAwZDRlNTlmMWE2NTAwODgwMGI3ODdm
NGZlNAo+Pj4gZ2l0IGJpc2VjdCBnb29kIDg1Y2YwMjkzYzNhNzU3MjZlN2JjNTRkM2VmZGM1ZGM3
ODNkZWJjMDcKPj4+IGdpdCBiaXNlY3QgZ29vZCBiMmNkNzNlMThjZWM3NWY5MTdkMTRiOTE4OGY4
MmEyZmRlZjY0ZWJlCj4+PiBnaXQgYmlzZWN0IGJhZCBiMjQ3NjM5ZDMzYWQxNmVhNzY3OTcyNjhm
ZDBlZWYwOGQ4MDI3ZGZkCj4+PiBnaXQgYmlzZWN0IGdvb2QgOWIzZjJkZmRhZDFjYzBhYjkwYTBm
YTM3MWM4Y2JlZTA4YjI0NDZlMwo+Pj4gZ2l0IGJpc2VjdCBiYWQgOGRjMzBjM2U0Y2Y4YzRlMzcw
Y2YwOGJkMDllYjg3YjBkZWNjZDNkZQo+Pj4gZ2l0IGJpc2VjdCBiYWQgMTAwYWViMDNhNDM3ZjMw
MzAwODk0MDkxNjI3ZTQ0MDY2MDVlZTNjYgo+Pj4gZ2l0IGJpc2VjdCBiYWQgYjJhMWEyYWU3ODE4
YzlkOGRhMTJiZjdiMTk4M2M4YjlmNWZiNzEyYgo+Pj4gZ2l0IGJpc2VjdCBnb29kIDhmODMxZjI3
MmI0Yzg5YWExM2I0NWJkMDEwYzJjMThhZDk3YTNmMWIKPj4+IGdpdCBiaXNlY3QgZ29vZCBlNDVj
YzYyYzIzNDI4ZWVmYmFlMThhOWI0ZDg4ZDEwNzQ5NzQxYmRkCj4+PiBnaXQgYmlzZWN0IGJhZCBl
YmYxOThmMTdiNWFjOTY3ZGI2MjU2ZjQwODNiYmNiZGNjMmEzMTAwCj4+PiBnaXQgYmlzZWN0IGdv
b2QgMTIxODViYzM4Zjc2NjdiMWQ4OTViMjE2NWE4YTQ3MzM1YTRjZjMxYgo+Pj4gZ2l0IGJpc2Vj
dCBiYWQgZTQ2ZTU5Yjc3YTllNmYzMjJlZjFhZDA4YTg4NzQyMTFmMzg5Y2Y0Nwo+Pj4gZ2l0IGJp
c2VjdCBiYWQgYjAyY2M5YTE3Njc5M2IyMDdlOTU5NzAxYWYxZWMyNjIyMjA5M2IwNQo+Pj4KPj4+
IENJIHJ1bjogaHR0cHM6Ly9naXQuY29kZWxpbmFyby5vcmcvbGluYXJvL3Fjb21sdC9jaS9zdGFn
aW5nL2NkYmEtIAo+Pj4gdGVzdGVyLy0vam9icy8yMjk4ODAjTDEyODEKPj4+Cj4+PiAjcmVnemJv
dCBpbnRyb2R1Y2VkOiBiMDJjYzlhMTc2NzkKPj4+Cj4+PiBOZWlsCj4+Cj4gCgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
