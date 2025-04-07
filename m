Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3A50C3601E
	for <linux-phy@archiver.kernel.org>; Mon,  7 Apr 2025 12:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sbMXEkp4/jPBGJ00oXuoxA0T4eY/IxKENnrjCSz+R9o=; b=brZqRXqVSTvObz
	pAQTowUGHHbE1O50tH82KPoYSw83CwsnK6GsZ7oK5bPU3sqXA819FPoJeOvM47em+KEgdMNHGISLR
	c+8w1FPRfGOR2M960VE9z6rc5sfi60yQ2ddhlzmykWeJBCmiUIOmYAqKyk6bBRB0J2dVBnd+pJ4Oz
	MjmyhRiXhhs5n/ATJGd4eIn9c6/pUgNoYgDQJR3QDCBprk4x4lFQD51HbcCWnD3CUXoy942Uykd+E
	IVtTMu9siXs2hFoTi9XaAZnXZ1atY3vzj3ATeP1yV+fICqTCq3iQze8nvNbo6h2dOlXYNfz6NhYnB
	exRLq3BYSpYa06Y5jILA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1lod-00000000KGN-1h4L;
	Mon, 07 Apr 2025 12:43:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1lNz-00000000Cgu-3TXR
	for linux-phy@lists.infradead.org;
	Mon, 07 Apr 2025 12:15:33 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5378doqU017417;
	Mon, 7 Apr 2025 12:15:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lpKXWdbZ6uDIt0ao6qPO3cTRr0H9W284LRqjSX/AeZ8=; b=OaJDKY/RLDzcQL0p
	8FfQUF4idUJD+fa1rIkq22jFHszLuGd1MxtfZFbfHAnnG3MNd9Ix1UecjjP+xNgA
	HrEk82CIIEg341gEBc+F/Lx/FX2GlYnzer1CxcyLeD/Qu2lLy23PutjNMEm+UOT2
	8U497EJkHVREywRPNMrRALVllTMhrnMA9jXSU7uQAXsYLWe/UnIbY/Q+jU/4V9t0
	LTPfKpbpKXf1jXeNZT6gXyYSCDcyuP4YXGD2ZN2f305rIW+JbadRXidjA6larizf
	OPN+BnSSABdyHeKDO3P0qQuJ0iOm80HvqzOJjlGEP610F6m1NJpn0EidU9OhQq05
	BkMgoA==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twg3c4gf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 07 Apr 2025 12:15:11 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 537CFASi026799
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 7 Apr 2025 12:15:10 GMT
Received: from [10.218.7.247] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 7 Apr 2025
 05:15:04 -0700
Message-ID: <d92c40bd-80e4-4001-beec-d25684217718@quicinc.com>
Date: Mon, 7 Apr 2025 17:45:00 +0530
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
 <7b08c860-e5f1-4665-8e5e-2a6a3e26a2fa@quicinc.com>
 <58471b67-98ab-4452-8508-d6276d47695e@linaro.org>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <58471b67-98ab-4452-8508-d6276d47695e@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: pD71VMtoaa71k-ZBT0D462_dEvIZrDD7
X-Proofpoint-ORIG-GUID: pD71VMtoaa71k-ZBT0D462_dEvIZrDD7
X-Authority-Analysis: v=2.4 cv=I/9lRMgg c=1 sm=1 tr=0 ts=67f3c1cf cx=c_pps a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=qC_FGOx9AAAA:8 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8
 a=dZRP316qtkZ-GG2u8pwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=fsdK_YakeE02zTmptMdW:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-07_03,2025-04-03_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxscore=0
 phishscore=0 suspectscore=0 mlxlogscore=999 lowpriorityscore=0 spamscore=0
 clxscore=1015 malwarescore=0 adultscore=0 priorityscore=1501
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504070086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_051531_989926_F8865751 
X-CRM114-Status: GOOD (  17.19  )
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

CgpPbiA0LzcvMjAyNSAxMjo1MiBQTSwgbmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZyB3cm90ZToK
PiBIaSwKPiAKPiBPbiAyNS8wMy8yMDI1IDA4OjM3LCBOaXRpbiBSYXdhdCB3cm90ZToKPj4KPj4K
Pj4gT24gMy8yNS8yMDI1IDE6MDQgUE0sIG5laWwuYXJtc3Ryb25nQGxpbmFyby5vcmcgd3JvdGU6
Cj4+PiBIaSwKPj4+Cj4+PiBPbiAyNS8wMy8yMDI1IDA0OjEyLCBOaXRpbiBSYXdhdCB3cm90ZToK
Pj4+Pgo+Pj4+Cj4+Pj4gT24gMy8yNC8yMDI1IDExOjQwIFBNLCBOZWlsIEFybXN0cm9uZyB3cm90
ZToKPj4+Pj4gSGksCj4+Pj4+Cj4+Pj4+IE9uIDEwLzAzLzIwMjUgMjI6MTIsIE1lbG9keSBPbHZl
cmEgd3JvdGU6Cj4+Pj4+PiBGcm9tOiBOaXRpbiBSYXdhdCA8cXVpY19uaXRpcmF3YUBxdWljaW5j
LmNvbT4KPj4+Pj4+Cj4+Pj4+PiBBZGQgU004NzUwIHNwZWNpZmljIHJlZ2lzdGVyIGxheW91dCBh
bmQgdGFibGUgY29uZmlncy4gVGhlIHNlcmRlcwo+Pj4+Pj4gVFggUlggcmVnaXN0ZXIgb2Zmc2V0
IGhhcyBjaGFuZ2VkIGZvciBTTTg3NTAgYW5kIGhlbmNlIGtlZXAgVUZTCj4+Pj4+PiBzcGVjaWZp
YyBzZXJkZXMgb2Zmc2V0cyBpbiBhIGRlZGljYXRlZCBoZWFkZXIgZmlsZS4KPj4+Pj4+Cj4+Pj4+
PiBSZXZpZXdlZC1ieTogTmVpbCBBcm1zdHJvbmcgPG5laWwuYXJtc3Ryb25nQGxpbmFyby5vcmc+
Cj4+Pj4+PiBDby1kZXZlbG9wZWQtYnk6IE1hbmlzaCBQYW5kZXkgPHF1aWNfbWFwYUBxdWljaW5j
LmNvbT4KPj4+Pj4+IFNpZ25lZC1vZmYtYnk6IE1hbmlzaCBQYW5kZXkgPHF1aWNfbWFwYUBxdWlj
aW5jLmNvbT4KPj4+Pj4+IFNpZ25lZC1vZmYtYnk6IE5pdGluIFJhd2F0IDxxdWljX25pdGlyYXdh
QHF1aWNpbmMuY29tPgo+Pj4+Pj4gLS0tCj4+Pj4+PiDCoCBkcml2ZXJzL3BoeS9xdWFsY29tbS9w
aHktcWNvbS1xbXAtcXNlcmRlcy1jb20tdjYuaCB8wqDCoCA3ICsKPj4+Pj4+IMKgIC4uLi9xdWFs
Y29tbS9waHktcWNvbS1xbXAtcXNlcmRlcy10eHJ4LXVmcy12Ny5owqDCoMKgIHzCoCA2NyArKysr
KysrKwo+Pj4+Pj4gwqAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB8IDE4MCArKysrKysrIAo+Pj4+Pj4gKysgKysgKysrKysrKysr
LQo+Pj4+Pj4gwqAgMyBmaWxlcyBjaGFuZ2VkLCAyNDYgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlv
bnMoLSkKPj4+Pj4+Cj4+Pj4+Cj4+Pj4+IDxzbmlwPgo+Pj4+Pgo+Pj4+PiBUaGlzIGNoYW5nZSBi
cmVha3MgVUZTIG9uIHRoZSBTTTg1NTAtSERLOgo+Pj4+Pgo+Pj4+PiBbwqDCoMKgIDcuNDE4MTYx
XSBxY29tLXFtcC11ZnMtcGh5IDFkODAwMDAucGh5OiBwaHkgaW5pdGlhbGl6YXRpb24gCj4+Pj4+
IHRpbWVkLW91dAo+Pj4+PiBbwqDCoMKgIDcuNDI3MDIxXSBwaHkgcGh5LTFkODAwMDAucGh5LjA6
IHBoeSBwb3dlcm9uIGZhaWxlZCAtLT4gLTExMAo+Pj4+PiBbwqDCoMKgIDcuNDkzNTE0XSB1ZnNo
Y2QtcWNvbSAxZDg0MDAwLnVmc2hjOiBFbmFibGluZyB0aGUgY29udHJvbGxlciAKPj4+Pj4gZmFp
bGVkCj4+Pj4+IC4uLgo+Pj4+Cj4+Pj4gSGkgTmVpbCwKPj4+Pgo+Pj4+IFRoYW5rcyBmb3IgdGVz
dGluZyBhbmQgcmVwb3J0aW5nLgo+Pj4+IEkgZGlkIHRlc3RlZCB0aGlzIHBhdGNoIG9uIFNNODc1
MCBNVFAsIFNNODc1MCBRUkQsIFNNODY1MCBNVFAsIAo+Pj4+IFNNODU1MCBNVFAgYW5kIFNNODg1
MCBRUkQgYWxsIG9mIHRoZXNlIGhhdmUgcmF0ZSBCIGFuZCBoZW5jZSBubyBpc3N1ZS4KPj4+Pgo+
Pj4+IFVuZm9ydHVuYXRlbHkgb25seSBTTTg1NTAgSERLIHBsYXRmb3JtIHdoaWNoIFVGUzQuMCBh
bmQgUmF0ZUEgCj4+Pj4gY291bGRuJ3QgZ2V0IHRlc3RlZC4gQXMgd2Uga25vdyBTTTg1NTAgd2l0
aCBnZWFyIDUgb25seSBzdXBwb3J0IHJhdGUgQS4KPj4+Pgo+Pj4+IEkgd2FzIGFwcGx5aW5nIHJh
dGUgQiBzZXR0aW5nIHdpdGhvdXQgY2hlY2tpbmcgZm9yIG1vZGUgdHlwZS4gU2luY2UKPj4+PiBT
TTg1NTAgaXMgb25seSBwbGF0Zm9ybSB3aGljaCBzdXBwb3J0IG9ubHkgcmF0ZSBBIHdpdGggVUZT
NC4wIC4gSGVuY2UKPj4+PiB0aGlzIGNvdWxkIGJlIHRoZSBpc3N1ZS4KPj4+Pgo+Pj4+IE1lYW53
aGlsZSBjYW4geW91IGhlbHAgdGVzdCBhdCB5b3VyIGVuZCB3aXRoIGJlbG93IGNoYW5nZSBhbmQg
bGV0IG1lIAo+Pj4+IGlmIGl0IHJlc29sdmVzIGZvciB5b3UuIEkgd2lsbCBhbHNvIHRyeSBhdCBt
eSBlbmQgdG8gdGVzdCBhcyB3ZWxsLgo+Pj4+Cj4+Pj4gPT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPj4+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jIGIv
ZHJpdmVycy9waHkvIAo+Pj4+IHF1YWxjb21tL3BoeS1xY29tLXFtcC11ZnMuYwo+Pj4+IGluZGV4
IDQ1YjNiNzkyNjk2ZS4uYjMzZTJlMmI1MDE0IDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLXFtcC11ZnMuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxj
b21tL3BoeS1xY29tLXFtcC11ZnMuYwo+Pj4+IEBAIC0xNzU0LDcgKzE3NTQsOCBAQCBzdGF0aWMg
dm9pZCBxbXBfdWZzX2luaXRfcmVnaXN0ZXJzKHN0cnVjdCAKPj4+PiBxbXBfdWZzICpxbXAsIGNv
bnN0IHN0cnVjdCBxbXBfcGh5X2NmZwo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHFtcF91ZnNfaW5pdF9hbGwocW1wLCAmY2ZnLT50YmxzX2hzX292ZXJsYXlbaV0pOwo+Pj4+
IMKgwqDCoMKgwqDCoMKgwqAgfQo+Pj4+Cj4+Pj4gLcKgwqDCoMKgwqDCoCBxbXBfdWZzX2luaXRf
YWxsKHFtcCwgJmNmZy0+dGJsc19oc19iKTsKPj4+PiArwqDCoMKgwqDCoMKgIGlmIChxbXAtPm1v
ZGUgPT0gUEhZX01PREVfVUZTX0hTX0IpCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcW1wX3Vmc19pbml0X2FsbChxbXAsICZjZmctPnRibHNfaHNfYik7Cj4+Pj4gwqDCoH0KPj4+
Pgo+Pj4+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+Pj4KPj4+IFdpdGggdGhpcyBjaGFuZ2Ug
dGhlIFVGUyB3b3JrcyBhZ2Fpbi4KPj4KPj4gVGhhbmtzIE5laWwgZm9yIHF1aWNrIHJldmVydC4g
SSdsbCByYWlzZSB0aGUgb2ZmaWNpYWwgY2hhbmdlLgo+IAo+IEFueSBuZXdzIG9mIGEgZml4IGhl
cmUgPwoKSGkgTmVpbCwKU29ycnkgZm9yIGRlbGF5LiBJIGp1c3QgcG9zdGVkIHRoZSBwYXRjaC4K
ClRoYW5rcywKTml0aW4KCj4gCj4gVGhhbmtzLAo+IE5laWwKPiAKPj4KPj4gUmVnYXJkcywKPj4g
bml0aW4KPj4KPj4+Cj4+PiBUaGFua3MsCj4+PiBOZWlsCj4+Pgo+Pj4+Cj4+Pj4KPj4+PiBUaGFu
a3MsCj4+Pj4gTml0aW4KPj4+Pgo+Pj4+Pgo+Pj4+PiBHSVQgYmlzZWN0IHBvaW50cyB0bzoKPj4+
Pj4gYjAyY2M5YTE3Njc5M2IyMDdlOTU5NzAxYWYxZWMyNjIyMjA5M2IwNSBpcyB0aGUgZmlyc3Qg
YmFkIGNvbW1pdAo+Pj4+PiBBdXRob3I6IE5pdGluIFJhd2F0IDxxdWljX25pdGlyYXdhQHF1aWNp
bmMuY29tPgo+Pj4+PiBEYXRlOsKgwqAgTW9uIE1hciAxMCAxNDoxMjozMCAyMDI1IC0wNzAwCj4+
Pj4+Cj4+Pj4+IMKgwqDCoMKgIHBoeTogcWNvbS1xbXAtdWZzOiBBZGQgUEhZIENvbmZpZ3VyYXRp
b24gc3VwcG9ydCBmb3Igc204NzUwCj4+Pj4+Cj4+Pj4+IGJpc2VjdCBsb2c6Cj4+Pj4+IGdpdCBi
aXNlY3Qgc3RhcnQgJ2ZmN2Y5YjE5OWUzZicgJ3Y2LjE0LXJjMScKPj4+Pj4gZ2l0IGJpc2VjdCBn
b29kIDM2YzE4YzU2Mjg0NjMwMGQ0ZTU5ZjFhNjUwMDg4MDBiNzg3ZjRmZTQKPj4+Pj4gZ2l0IGJp
c2VjdCBnb29kIDg1Y2YwMjkzYzNhNzU3MjZlN2JjNTRkM2VmZGM1ZGM3ODNkZWJjMDcKPj4+Pj4g
Z2l0IGJpc2VjdCBnb29kIGIyY2Q3M2UxOGNlYzc1ZjkxN2QxNGI5MTg4ZjgyYTJmZGVmNjRlYmUK
Pj4+Pj4gZ2l0IGJpc2VjdCBiYWQgYjI0NzYzOWQzM2FkMTZlYTc2Nzk3MjY4ZmQwZWVmMDhkODAy
N2RmZAo+Pj4+PiBnaXQgYmlzZWN0IGdvb2QgOWIzZjJkZmRhZDFjYzBhYjkwYTBmYTM3MWM4Y2Jl
ZTA4YjI0NDZlMwo+Pj4+PiBnaXQgYmlzZWN0IGJhZCA4ZGMzMGMzZTRjZjhjNGUzNzBjZjA4YmQw
OWViODdiMGRlY2NkM2RlCj4+Pj4+IGdpdCBiaXNlY3QgYmFkIDEwMGFlYjAzYTQzN2YzMDMwMDg5
NDA5MTYyN2U0NDA2NjA1ZWUzY2IKPj4+Pj4gZ2l0IGJpc2VjdCBiYWQgYjJhMWEyYWU3ODE4Yzlk
OGRhMTJiZjdiMTk4M2M4YjlmNWZiNzEyYgo+Pj4+PiBnaXQgYmlzZWN0IGdvb2QgOGY4MzFmMjcy
YjRjODlhYTEzYjQ1YmQwMTBjMmMxOGFkOTdhM2YxYgo+Pj4+PiBnaXQgYmlzZWN0IGdvb2QgZTQ1
Y2M2MmMyMzQyOGVlZmJhZTE4YTliNGQ4OGQxMDc0OTc0MWJkZAo+Pj4+PiBnaXQgYmlzZWN0IGJh
ZCBlYmYxOThmMTdiNWFjOTY3ZGI2MjU2ZjQwODNiYmNiZGNjMmEzMTAwCj4+Pj4+IGdpdCBiaXNl
Y3QgZ29vZCAxMjE4NWJjMzhmNzY2N2IxZDg5NWIyMTY1YThhNDczMzVhNGNmMzFiCj4+Pj4+IGdp
dCBiaXNlY3QgYmFkIGU0NmU1OWI3N2E5ZTZmMzIyZWYxYWQwOGE4ODc0MjExZjM4OWNmNDcKPj4+
Pj4gZ2l0IGJpc2VjdCBiYWQgYjAyY2M5YTE3Njc5M2IyMDdlOTU5NzAxYWYxZWMyNjIyMjA5M2Iw
NQo+Pj4+Pgo+Pj4+PiBDSSBydW46IGh0dHBzOi8vZ2l0LmNvZGVsaW5hcm8ub3JnL2xpbmFyby9x
Y29tbHQvY2kvc3RhZ2luZy9jZGJhLSAKPj4+Pj4gdGVzdGVyLy0vam9icy8yMjk4ODAjTDEyODEK
Pj4+Pj4KPj4+Pj4gI3JlZ3pib3QgaW50cm9kdWNlZDogYjAyY2M5YTE3Njc5Cj4+Pj4+Cj4+Pj4+
IE5laWwKPj4+Pgo+Pj4KPj4KPiAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
