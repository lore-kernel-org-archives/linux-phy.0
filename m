Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E75AEB8FA5
	for <linux-phy@archiver.kernel.org>; Wed,  6 Sep 2023 05:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5kzoZI64sJl7EeSTTrrAtBzJK1zUwzu1ZaXQVDyTRrk=; b=u1lJ7XR939f0Uj
	kcXfqMElhdG4XTWHflaL/8bUmiNjwbKlcg9H09JzZ+mPJFYpc0uXJRThMEkw1kgpL3ZXMu83Dnx6I
	W+Pn6yF3gWjXnpk+Bh/GdC1bmHSUcDGNWcEXe773sN3gfER4KRtcK/qzBLkaLMfeeZk5xnmlss5kD
	0BAy+Ygf0d2pdzGJjyv1xRkRbLfRy62PMZGzPVXH1c+L3Kw0fGBLXZYs+tuzkBDo4VErxmnaAoSpz
	seCliTOKkcLNy24PaGm8PcV+d9MSwgd6FaR3LTjECap2aoyLpO/W0C5PYtdJsLN7RNcoHDJzrD7jb
	LfChzDtwHK44kAbuk/dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdkzp-007HyI-2p;
	Wed, 06 Sep 2023 05:22:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdkzm-007Hxx-0M
	for linux-phy@lists.infradead.org;
	Wed, 06 Sep 2023 05:22:31 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3864vB6B027994;
	Wed, 6 Sep 2023 05:22:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=2Iwmui/d3PTVj6EACylA8nFvESLyAAPkXByXQ5OjRT4=;
 b=h5PMkl+S6AFRB1KWa17zG9drihYGXUtNcP65n30TN54NJzHIcmnvarPFJKrbYtJpnKUj
 jHmC7fQ/bRfHZE0GqaiThbdNTtJq94zxsAdPC92/WpXDBt3ULL6rYCW4LN9XyzhVKpRH
 /UNZF+h3rE00vATssDkSaLrWqRMu/ukcJIxmdQhfHYDIwFCqxrjRFI4OUgUk78bDGfAw
 rrOSQKQuZwynVBYgF8KsMVd1By8zsIe3rP/r0+BLlqDf3BWNL20G4lliKQIpd/0IkAdU
 6Wc8/6s5KM3qBXosE7Z3//tHaofzSDdOIelepRE/kcKzZkIQp4cvfL78fN0LPVSj8Hp9 Dg== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3sxhrag4hs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 06 Sep 2023 05:22:23 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3865MMDX020360
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 6 Sep 2023 05:22:22 GMT
Received: from [10.214.66.58] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Tue, 5 Sep
 2023 22:22:13 -0700
Message-ID: <ea9df6f3-dfde-ea7a-af22-2a0839d82d32@quicinc.com>
Date: Wed, 6 Sep 2023 10:52:10 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH v2 2/5] dt-bindings: phy: qcom,qmp-usb: Add SDX75 USB3 PHY
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <abel.vesa@linaro.org>,
        <quic_wcheng@quicinc.com>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <kernel@quicinc.com>
References: <1693909838-6682-1-git-send-email-quic_rohiagar@quicinc.com>
 <1693909838-6682-3-git-send-email-quic_rohiagar@quicinc.com>
 <37fe0c7e-60ad-4c27-b40f-471cc3d92e1c@linaro.org>
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
In-Reply-To: <37fe0c7e-60ad-4c27-b40f-471cc3d92e1c@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: m4iFn3KeyP7EJtPG6cWoOGJtyVIok5Gl
X-Proofpoint-GUID: m4iFn3KeyP7EJtPG6cWoOGJtyVIok5Gl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-05_13,2023-09-05_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 bulkscore=0 clxscore=1015 suspectscore=0 adultscore=0 impostorscore=0
 mlxscore=0 mlxlogscore=999 phishscore=0 malwarescore=0 priorityscore=1501
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2309060048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_222230_283641_B4029E4B 
X-CRM114-Status: GOOD (  16.80  )
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

Ck9uIDkvNi8yMDIzIDI6MDQgQU0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gT24gMDUvMDkv
MjAyMyAxMzozMCwgUm9oaXQgQWdhcndhbCB3cm90ZToKPj4gQWRkIGR0LWJpbmRpbmdzIGZvciBV
U0IzIFBIWSBmb3VuZCBvbiBRdWFsY29tbSBTRFg3NS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogUm9o
aXQgQWdhcndhbCA8cXVpY19yb2hpYWdhckBxdWljaW5jLmNvbT4KPj4gLS0tCj4+IMKgIC4uLi9w
aHkvcWNvbSxzYzgyODB4cC1xbXAtdXNiMy11bmktcGh5LnlhbWzCoMKgwqDCoMKgwqDCoCB8IDQw
IAo+PiArKysrKysrKysrKysrKysrKysrKy0tCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAzNyBpbnNl
cnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IAo+PiBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtdXNiMy11bmkt
cGh5LnlhbWwgCj4+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29t
LHNjODI4MHhwLXFtcC11c2IzLXVuaS1waHkueWFtbCAKPj4KPj4gaW5kZXggZjk5ZmJiYy4uNTcy
NTYyMCAxMDA2NDQKPj4gLS0tIAo+PiBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9waHkvcWNvbSxzYzgyODB4cC1xbXAtdXNiMy11bmktcGh5LnlhbWwKPj4gKysrIAo+PiBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtdXNi
My11bmktcGh5LnlhbWwKPj4gQEAgLTIwLDYgKzIwLDcgQEAgcHJvcGVydGllczoKPj4gwqDCoMKg
wqDCoMKgwqAgLSBxY29tLHFjbTIyOTAtcW1wLXVzYjMtcGh5Cj4+IMKgwqDCoMKgwqDCoMKgIC0g
cWNvbSxzYTg3NzVwLXFtcC11c2IzLXVuaS1waHkKPj4gwqDCoMKgwqDCoMKgwqAgLSBxY29tLHNj
ODI4MHhwLXFtcC11c2IzLXVuaS1waHkKPj4gK8KgwqDCoMKgwqAgLSBxY29tLHNkeDc1LXFtcC11
c2IzLXVuaS1waHkKPgo+IEkgdGhpbmsgdGhlIGlkZW50IGlzIHdyb25nIGhlcmUuCgpTYW1lLiBT
b21laG93LCB5b3VyIHJlcGx5IGhhcyB0aGUgaXNzdWUgYnV0IG9yaWdpbmFsIG5vdCBhYmxlIHRv
IHNlZS4KCj4KPj4gwqDCoMKgwqDCoMKgwqAgLSBxY29tLHNtNjExNS1xbXAtdXNiMy1waHkKPj4g
wqAgwqDCoMKgIHJlZzoKPj4gQEAgLTM4LDkgKzM5LDcgQEAgcHJvcGVydGllczoKPj4gwqDCoMKg
wqDCoCBtYXhJdGVtczogMgo+PiDCoCDCoMKgwqAgcmVzZXQtbmFtZXM6Cj4+IC3CoMKgwqAgaXRl
bXM6Cj4+IC3CoMKgwqDCoMKgIC0gY29uc3Q6IHBoeQo+PiAtwqDCoMKgwqDCoCAtIGNvbnN0OiBw
aHlfcGh5Cj4+ICvCoMKgwqAgbWF4SXRlbXM6IDIKPj4gwqAgwqDCoMKgIHZkZGEtcGh5LXN1cHBs
eTogdHJ1ZQo+PiDCoCBAQCAtNzUsNiArNzQsNyBAQCBhbGxPZjoKPj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBjb250YWluczoKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW51bToKPj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcWNvbSxpcHE5NTc0LXFtcC11c2IzLXBo
eQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBxY29tLHNkeDc1LXFtcC11c2IzLXVu
aS1waHkKPj4gwqDCoMKgwqDCoCB0aGVuOgo+PiDCoMKgwqDCoMKgwqDCoCBwcm9wZXJ0aWVzOgo+
PiDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2stbmFtZXM6Cj4+IEBAIC0xMjIsNiArMTIyLDQwIEBA
IGFsbE9mOgo+PiDCoMKgwqDCoMKgwqDCoCByZXF1aXJlZDoKPj4gwqDCoMKgwqDCoMKgwqDCoMKg
IC0gcG93ZXItZG9tYWlucwo+PiDCoCArwqAgLSBpZjoKPj4gK8KgwqDCoMKgwqAgcHJvcGVydGll
czoKPj4gK8KgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGU6Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAg
Y29udGFpbnM6Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVudW06Cj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAtIHFjb20saXBxOTU3NC1xbXAtdXNiMy1waHkKPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIC0gcWNvbSxxY20yMjkwLXFtcC11c2IzLXBoeQo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBxY29tLHNhODc3NXAtcW1wLXVzYjMtdW5pLXBoeQo+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBxY29tLHNjODI4MHhwLXFtcC11c2IzLXVuaS1w
aHkKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcWNvbSxzbTYxMTUtcW1wLXVzYjMt
cGh5Cj4+ICvCoMKgwqAgdGhlbjoKPj4gK8KgwqDCoMKgwqAgcHJvcGVydGllczoKPj4gK8KgwqDC
oMKgwqDCoMKgIHJlc2V0czoKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoCBtYXhJdGVtczogMgo+PiAr
wqDCoMKgwqDCoMKgwqAgcmVzZXQtbmFtZXM6Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAgaXRlbXM6
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IHBoeQo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAtIGNvbnN0OiBwaHlfcGh5Cj4+ICsKPj4gK8KgIC0gaWY6Cj4+ICvCoMKgwqDC
oMKgIHByb3BlcnRpZXM6Cj4+ICvCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlOgo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgIGNvbnRhaW5zOgo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbnVtOgo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBxY29tLHNkeDc1LXFtcC11c2IzLXVuaS1w
aHkKPj4gK8KgwqDCoCB0aGVuOgo+PiArwqDCoMKgwqDCoCBwcm9wZXJ0aWVzOgo+PiArwqDCoMKg
wqDCoMKgwqAgcmVzZXRzOgo+PiArwqDCoMKgwqDCoMKgwqDCoMKgIG1heEl0ZW1zOiAyCj4+ICvC
oMKgwqDCoMKgwqDCoCByZXNldC1uYW1lczoKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoCBpdGVtczoK
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogcGh5Cj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIC0gY29uc3Q6IGNvbW1vbgo+Cj4gQ291bGQgeW91IHBsZWFzZSBwb2ludCB1cyB0
byB0aGUgYWN0dWFsIERUUyBwYXRjaCBhZGRpbmcgdGhpcyBQSFk/IEknZCAKPiBzYXksIGl0IGlz
IGhpZ2hseSBsaWtlbHkgdGhhdCB5b3UgYXJlIHRyeWluZyB0byBicmluZyBpbiB0aGUgCj4gdW5u
ZWNlc3NhcnkgY2hhbmdlLgpJIGhhdmUgbm90IHBvc3RlZCB0aGUgZHQgcGF0Y2hlcyB5ZXQuIEJ1
dCBzZHg3NSB1c2VzIHRoZXNlIHJlc2V0cy4KR0NDX1VTQjNQSFlfUEhZX0JDUiwgR0NDX1VTQjNf
UEhZX0JDUgoKVGhlc2UgYXJlIHNhbWUgYXMgc2R4NjUgYW5kIHNkeDU1LgoKVGhhbmtzLApSb2hp
dC4KCj4KPj4gKwo+PiDCoCBhZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKPj4gwqAgwqAgZXhh
bXBsZXM6Cj4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
