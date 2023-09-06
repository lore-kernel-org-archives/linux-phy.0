Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F02CEB8FB3
	for <linux-phy@archiver.kernel.org>; Wed,  6 Sep 2023 05:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:CC:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RnRXkiLAzQo+E1ovM+02IxMePhwZxNC4P2ecGqLpd9I=; b=TYBjB1lPP/G6iL
	nE8fnKZsOOSA6jTHGrkZ3oGwSlRwIfXQoZLIFAsdGarw46kPjJb9AHaiRbbjvR9prajuXtmp0ilVH
	sbZGuTCw2C0WiSo6/WbRJVoYKNGmZK7+tSlUdD7L9pzJta0x19uCDYC7526B4s7d7g3qRF+uw4v6U
	eE6V4aKiGGw5vc6REvXEjo47fOntMjgWo9MCXQo12yXrsm032f9dBOEqn9F4lJ1+vE++2zCP7Lxih
	G7z57SypvlNdyNaZh8tmQkSMLtG1yziQNrgORdvfvD3ad8q22Rx4yeVoFQ5EFTHWmoxftFndnp+32
	b/Kv7v8BTFo6ySyrq7Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdl3d-007I8A-2u;
	Wed, 06 Sep 2023 05:26:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdl3a-007I7o-0A
	for linux-phy@lists.infradead.org;
	Wed, 06 Sep 2023 05:26:27 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3865ALQ4012812;
	Wed, 6 Sep 2023 05:26:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : from : to : cc : references : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=EMHKGw7FOa3vEJGGc37bTqoMMu9Jp5jr8eYVYzNesdw=;
 b=cBHMhJkIAXJQC3db3p1Prtyftd7Js4XWvJwz5JR6mJmGgV0lTTlAZKuUVHqLIVgo00cK
 eZPfNHY79NWfI30n7hoOawvKXaUc6w4xStVcAnP2f5Z/aBJ8N/kneXnqA0fawsvLjjf4
 iJnjtN0/8VVGNTo6/F8G7Lfj3jD5dwsqCK55/6cn0fE84NnmZrs0mG+Zdd9OzfTiMJtk
 caBEw+4TcOMtEB6+DQfJQIpMzy4LRoNH3e4MTzCi95QNn02JsFigtR1ejr55UPYrRqdw
 YKshCfL78lSOZoLAL8nYD9+nZ8MM25u2sn/lUiRCzTVmF7eDeGyT80pqc7uEwoHXMRyY vw== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3sxhbhg6ya-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 06 Sep 2023 05:26:17 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3865QG7r026091
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 6 Sep 2023 05:26:16 GMT
Received: from [10.214.66.58] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Tue, 5 Sep
 2023 22:26:09 -0700
Message-ID: <1838845b-9586-6f8c-a4d6-ef052e0a12db@quicinc.com>
Date: Wed, 6 Sep 2023 10:56:05 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH v2 2/5] dt-bindings: phy: qcom,qmp-usb: Add SDX75 USB3 PHY
Content-Language: en-US
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
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
 <ea9df6f3-dfde-ea7a-af22-2a0839d82d32@quicinc.com>
In-Reply-To: <ea9df6f3-dfde-ea7a-af22-2a0839d82d32@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: ZVzo4nNmGSmBtXDRaQi-OqPleqZiiq1g
X-Proofpoint-ORIG-GUID: ZVzo4nNmGSmBtXDRaQi-OqPleqZiiq1g
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-05_13,2023-09-05_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 clxscore=1011 malwarescore=0
 impostorscore=0 phishscore=0 mlxscore=0 mlxlogscore=999 adultscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2309060049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_222626_102005_2209EF5F 
X-CRM114-Status: GOOD (  18.10  )
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

Ck9uIDkvNi8yMDIzIDEwOjUyIEFNLCBSb2hpdCBBZ2Fyd2FsIHdyb3RlOgo+Cj4gT24gOS82LzIw
MjMgMjowNCBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4gT24gMDUvMDkvMjAyMyAxMzoz
MCwgUm9oaXQgQWdhcndhbCB3cm90ZToKPj4+IEFkZCBkdC1iaW5kaW5ncyBmb3IgVVNCMyBQSFkg
Zm91bmQgb24gUXVhbGNvbW0gU0RYNzUuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogUm9oaXQgQWdh
cndhbCA8cXVpY19yb2hpYWdhckBxdWljaW5jLmNvbT4KPj4+IC0tLQo+Pj4gwqAgLi4uL3BoeS9x
Y29tLHNjODI4MHhwLXFtcC11c2IzLXVuaS1waHkueWFtbMKgwqDCoMKgwqDCoMKgIHwgNDAgCj4+
PiArKysrKysrKysrKysrKysrKysrKy0tCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMzcgaW5zZXJ0
aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IAo+Pj4gYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLXVzYjMtdW5p
LXBoeS55YW1sIAo+Pj4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fj
b20sc2M4MjgweHAtcW1wLXVzYjMtdW5pLXBoeS55YW1sIAo+Pj4KPj4+IGluZGV4IGY5OWZiYmMu
LjU3MjU2MjAgMTAwNjQ0Cj4+PiAtLS0gCj4+PiBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtdXNiMy11bmktcGh5LnlhbWwKPj4+ICsrKyAK
Pj4+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNjODI4MHhw
LXFtcC11c2IzLXVuaS1waHkueWFtbAo+Pj4gQEAgLTIwLDYgKzIwLDcgQEAgcHJvcGVydGllczoK
Pj4+IMKgwqDCoMKgwqDCoMKgIC0gcWNvbSxxY20yMjkwLXFtcC11c2IzLXBoeQo+Pj4gwqDCoMKg
wqDCoMKgwqAgLSBxY29tLHNhODc3NXAtcW1wLXVzYjMtdW5pLXBoeQo+Pj4gwqDCoMKgwqDCoMKg
wqAgLSBxY29tLHNjODI4MHhwLXFtcC11c2IzLXVuaS1waHkKPj4+ICvCoMKgwqDCoMKgIC0gcWNv
bSxzZHg3NS1xbXAtdXNiMy11bmktcGh5Cj4+Cj4+IEkgdGhpbmsgdGhlIGlkZW50IGlzIHdyb25n
IGhlcmUuCj4KPiBTYW1lLiBTb21laG93LCB5b3VyIHJlcGx5IGhhcyB0aGUgaXNzdWUgYnV0IG9y
aWdpbmFsIG5vdCBhYmxlIHRvIHNlZS4KPgo+Pgo+Pj4gwqDCoMKgwqDCoMKgwqAgLSBxY29tLHNt
NjExNS1xbXAtdXNiMy1waHkKPj4+IMKgIMKgwqDCoCByZWc6Cj4+PiBAQCAtMzgsOSArMzksNyBA
QCBwcm9wZXJ0aWVzOgo+Pj4gwqDCoMKgwqDCoCBtYXhJdGVtczogMgo+Pj4gwqAgwqDCoMKgIHJl
c2V0LW5hbWVzOgo+Pj4gLcKgwqDCoCBpdGVtczoKPj4+IC3CoMKgwqDCoMKgIC0gY29uc3Q6IHBo
eQo+Pj4gLcKgwqDCoMKgwqAgLSBjb25zdDogcGh5X3BoeQo+Pj4gK8KgwqDCoCBtYXhJdGVtczog
Mgo+Pj4gwqAgwqDCoMKgIHZkZGEtcGh5LXN1cHBseTogdHJ1ZQo+Pj4gwqAgQEAgLTc1LDYgKzc0
LDcgQEAgYWxsT2Y6Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnRhaW5zOgo+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW51bToKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAtIHFjb20saXBxOTU3NC1xbXAtdXNiMy1waHkKPj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAtIHFjb20sc2R4NzUtcW1wLXVzYjMtdW5pLXBoeQo+Pj4gwqDCoMKgwqDCoCB0
aGVuOgo+Pj4gwqDCoMKgwqDCoMKgwqAgcHJvcGVydGllczoKPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oCBjbG9jay1uYW1lczoKPj4+IEBAIC0xMjIsNiArMTIyLDQwIEBAIGFsbE9mOgo+Pj4gwqDCoMKg
wqDCoMKgwqAgcmVxdWlyZWQ6Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgLSBwb3dlci1kb21haW5z
Cj4+PiDCoCArwqAgLSBpZjoKPj4+ICvCoMKgwqDCoMKgIHByb3BlcnRpZXM6Cj4+PiArwqDCoMKg
wqDCoMKgwqAgY29tcGF0aWJsZToKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAgY29udGFpbnM6Cj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbnVtOgo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIC0gcWNvbSxpcHE5NTc0LXFtcC11c2IzLXBoeQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIC0gcWNvbSxxY20yMjkwLXFtcC11c2IzLXBoeQo+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIC0gcWNvbSxzYTg3NzVwLXFtcC11c2IzLXVuaS1waHkKPj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAtIHFjb20sc2M4MjgweHAtcW1wLXVzYjMtdW5pLXBoeQo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcWNvbSxzbTYxMTUtcW1wLXVzYjMtcGh5Cj4+
PiArwqDCoMKgIHRoZW46Cj4+PiArwqDCoMKgwqDCoCBwcm9wZXJ0aWVzOgo+Pj4gK8KgwqDCoMKg
wqDCoMKgIHJlc2V0czoKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAgbWF4SXRlbXM6IDIKPj4+ICvC
oMKgwqDCoMKgwqDCoCByZXNldC1uYW1lczoKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAgaXRlbXM6
Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiBwaHkKPj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIC0gY29uc3Q6IHBoeV9waHkKPj4+ICsKPj4+ICvCoCAtIGlmOgo+Pj4gK8Kg
wqDCoMKgwqAgcHJvcGVydGllczoKPj4+ICvCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlOgo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoCBjb250YWluczoKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGVudW06Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBxY29tLHNkeDc1LXFtcC11
c2IzLXVuaS1waHkKPj4+ICvCoMKgwqAgdGhlbjoKPj4+ICvCoMKgwqDCoMKgIHByb3BlcnRpZXM6
Cj4+PiArwqDCoMKgwqDCoMKgwqAgcmVzZXRzOgo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoCBtYXhJ
dGVtczogMgo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJlc2V0LW5hbWVzOgo+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoCBpdGVtczoKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IHBoeQo+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogY29tbW9uCj4+Cj4+IENvdWxkIHlv
dSBwbGVhc2UgcG9pbnQgdXMgdG8gdGhlIGFjdHVhbCBEVFMgcGF0Y2ggYWRkaW5nIHRoaXMgUEhZ
PyAKPj4gSSdkIHNheSwgaXQgaXMgaGlnaGx5IGxpa2VseSB0aGF0IHlvdSBhcmUgdHJ5aW5nIHRv
IGJyaW5nIGluIHRoZSAKPj4gdW5uZWNlc3NhcnkgY2hhbmdlLgo+IEkgaGF2ZSBub3QgcG9zdGVk
IHRoZSBkdCBwYXRjaGVzIHlldC4gQnV0IHNkeDc1IHVzZXMgdGhlc2UgcmVzZXRzLgo+IEdDQ19V
U0IzUEhZX1BIWV9CQ1IsIEdDQ19VU0IzX1BIWV9CQ1IKPgo+IFRoZXNlIGFyZSBzYW1lIGFzIHNk
eDY1IGFuZCBzZHg1NS4KT2sgSSBzZWUgaW4geW91ciBwYXRjaCAKaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvbGludXgtcGh5LzIwMjMwODI0MjExOTUyLjEzOTc2OTktMTctZG1pdHJ5LmJhcnlzaGtv
dkBsaW5hcm8ub3JnLwp5b3UgYXJlIHVwZGF0aW5nIHRoZSByZXNldHMgbmFtZS4gRmluZSwgdGhp
cyBjaGFuZ2UgYmVjb21lcyB1bm5lY2Vzc2FyeS4KV2lsbCByZWJhc2UgbXkgY2hhbmdlIG9uIHlv
dXIgcGF0Y2hlcy4KClRoYW5rcywKUm9oaXQuCj4KPiBUaGFua3MsCj4gUm9oaXQuCj4KPj4KPj4+
ICsKPj4+IMKgIGFkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQo+Pj4gwqAgwqAgZXhhbXBsZXM6
Cj4+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
