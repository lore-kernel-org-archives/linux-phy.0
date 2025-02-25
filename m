Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3965CC021B2
	for <linux-phy@archiver.kernel.org>; Tue, 25 Feb 2025 08:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z/OnyAxdriQtBwrmgzfNoKTOipNQTc+Ds5LaBynU9JQ=; b=sFjbHyImWI3F3h
	heqf/72rFLJYJG0xwDfHHn0063S3DSLcl972kXT0Pf2KKYN+qxwmNHCHP4xKwd5CwJAFuEVBIZWyg
	9gHujK9eOLaHjRurgBU9hB+hNXEifc8IfSqPKQrWbUAT86CV/brPQHRoycyZG+/7QYKTR+YtsdDRv
	OPq5xWzxtFbWAiXS9pR9nLKoKYsVFzI93qOLptEFrr7T1SK6hSXALHm/y1gOaW6F7jnyk1DquhWep
	4BywJFmt3wjRb79/Ui3Z4q36NH72YefO/i0mQp4O/eZCmLHafu+agEPhC+yJr1kLJMJahFXnPaBgB
	FTLYs8zCeDj8ZqRiDVWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmq5J-0000000GL2R-3WVy;
	Tue, 25 Feb 2025 08:14:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmpxV-0000000GJtU-0VhH
	for linux-phy@lists.infradead.org;
	Tue, 25 Feb 2025 08:06:30 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51OKOYRu010037;
	Tue, 25 Feb 2025 08:06:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5O68Mj+7dFmG6ZMWG24pX3oU3pJbZ3qlRJlq0dxmRLk=; b=TiNpYwCRISTP0hn1
	oHcyOtzTB+YDPJAXv7bHpSBwZelaQmM0WuhiH5fbCFvnemUbIsqJmiltlsAC9n6K
	dNNqqRaPMqnw6BBTSt5pRXxdMNGodVeBkf+2smhD+JdqU7uZYX/odFImlbGV9QAe
	uAXe5l9c2rmTNzqxIeKYzlmFtumBihJdyz6oz7KNgIlSYt92xCaDmQQkzl7s4b25
	v2pWLMN+E49EXk3ucTU2Ryd9l65lVUAMpDbNqjTCWtBge59vpIwxd7H0U1EUGvVw
	UfuB78l3jqVwuc90qDxIdowSOu+8qASwXa1znsm7FUdq7D8b6pfKwIcDHTm/GKE6
	Zk5ovw==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44y3xnga4w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 25 Feb 2025 08:06:23 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 51P86MEc008205
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 25 Feb 2025 08:06:22 GMT
Received: from [10.233.19.224] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Tue, 25 Feb
 2025 00:06:19 -0800
Message-ID: <eea55dfa-3dd3-488b-958c-cd20e18a7d7d@quicinc.com>
Date: Tue, 25 Feb 2025 16:06:16 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] phy: qcom: qmp-pcie: Add PHY register retention
 support
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Konrad Dybcio
	<konrad.dybcio@oss.qualcomm.com>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <p.zabel@pengutronix.de>,
        <dmitry.baryshkov@linaro.org>, <abel.vesa@linaro.org>,
        <quic_qianyu@quicinc.com>, <neil.armstrong@linaro.org>,
        <quic_devipriy@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20250220102253.755116-1-quic_wenbyao@quicinc.com>
 <20250220102253.755116-3-quic_wenbyao@quicinc.com>
 <20250224073301.aqbw3gxjnupbejfy@thinkpad>
 <7ffb09cd-9c77-4407-9087-3e789cd8bf44@quicinc.com>
 <ea5de507-1252-4ff3-9b18-40981624afea@oss.qualcomm.com>
 <20250224122439.njrcoyrfsisddoer@thinkpad>
Content-Language: en-US
From: "Wenbin Yao (Consultant)" <quic_wenbyao@quicinc.com>
In-Reply-To: <20250224122439.njrcoyrfsisddoer@thinkpad>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: aJUzIFz9JneBG7BE_VGzNqbmuREjOsMs
X-Proofpoint-GUID: aJUzIFz9JneBG7BE_VGzNqbmuREjOsMs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-25_03,2025-02-24_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 bulkscore=0
 suspectscore=0 mlxscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 spamscore=0 malwarescore=0 phishscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2502250053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_000629_276408_80224B62 
X-CRM114-Status: GOOD (  20.99  )
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

T24gMi8yNC8yMDI1IDg6MjQgUE0sIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPiBPbiBN
b24sIEZlYiAyNCwgMjAyNSBhdCAxMjo0Njo0NFBNICswMTAwLCBLb25yYWQgRHliY2lvIHdyb3Rl
Ogo+PiBPbiAyNC4wMi4yMDI1IDk6NDYgQU0sIFdlbmJpbiBZYW8gKENvbnN1bHRhbnQpIHdyb3Rl
Ogo+Pj4gT24gMi8yNC8yMDI1IDM6MzMgUE0sIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToK
Pj4+PiBPbiBUaHUsIEZlYiAyMCwgMjAyNSBhdCAwNjoyMjo1M1BNICswODAwLCBXZW5iaW4gWWFv
IHdyb3RlOgo+Pj4+PiBGcm9tOiBRaWFuZyBZdSA8cXVpY19xaWFueXVAcXVpY2luYy5jb20+Cj4+
Pj4+Cj4+Pj4+IFNvbWUgUUNPTSBQQ0llIFBIWXMgc3VwcG9ydCBub19jc3IgcmVzZXQuIFVubGlr
ZSBCQ1IgcmVzZXQgd2hpY2ggcmVzZXRzIHRoZQo+Pj4+PiB3aG9sZSBQSFkgKGhhcmR3YXJlIGFu
ZCByZWdpc3RlciksIG5vX2NzciByZXNldCBvbmx5IHJlc2V0cyBQSFkgaGFyZHdhcmUKPj4+Pj4g
YnV0IHJldGFpbnMgcmVnaXN0ZXIgdmFsdWVzLCB3aGljaCBtZWFucyBQSFkgc2V0dGluZyBjYW4g
YmUgc2tpcHBlZCBkdXJpbmcKPj4+Pj4gUEhZIGluaXQgaWYgUENJZSBsaW5rIGlzIGVuYWJsZWQg
aW4gYm9vbHRsb2FkZXIgYW5kIG9ubHkgbm9fY3NyIGlzIHRvZ2dsZWQKPj4+Pj4gYWZ0ZXIgdGhh
dC4KPj4+Pj4KPj4+Pj4gSGVuY2UsIGRldGVybWluZSB3aGV0aGVyIHRoZSBQSFkgaGFzIGJlZW4g
ZW5hYmxlZCBpbiBib290bG9hZGVyIGJ5Cj4+Pj4+IHZlcmlmeWluZyBRUEhZX1NUQVJUX0NUUkwg
cmVnaXN0ZXIuIElmIGl0J3MgcHJvZ3JhbW1lZCBhbmQgbm9fY3NyIHJlc2V0IGlzCj4+Pj4+IGF2
YWlsYWJsZSwgc2tpcCBCQ1IgcmVzZXQgYW5kIFBIWSByZWdpc3RlciBzZXR0aW5nIHRvIGVzdGFi
bGlzaCB0aGUgUENJZQo+Pj4+PiBsaW5rIHdpdGggYm9vdGxvYWRlciAtIHByb2dyYW1tZWQgUEhZ
IHNldHRpbmdzLgo+Pj4+Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBRaWFuZyBZdSA8cXVpY19xaWFu
eXVAcXVpY2luYy5jb20+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFdlbmJpbiBZYW8gPHF1aWNfd2Vu
Ynlhb0BxdWljaW5jLmNvbT4KPj4+PiBTb21lIG5pdHBpY2tzIGJlbG93Lgo+Pj4+Cj4+Pj4+IC0t
LQo+PiBbLi4uXQo+Pgo+Pj4+PiArwqDCoMKgwqAgKiBJbiB0aGlzIHdheSwgbm8gbWF0dGVyIHdo
ZXRoZXIgdGhlIFBIWSBzZXR0aW5ncyB3ZXJlIGluaXRpYWxseQo+Pj4+PiArwqDCoMKgwqAgKiBw
cm9ncmFtbWVkIGJ5IGJvb3Rsb2FkZXIgb3IgUEhZIGRyaXZlciBpdHNlbGYsIHdlIGNhbiByZXVz
ZSB0aGVtCj4+Pj4gSXQgaXMgcmVhbGx5IHBvc3NpYmxlIHRvIGhhdmUgYm9vdGxvYWRlciBub3Qg
cHJvZ3JhbW1pbmcgdGhlIGluaXQgc2VxdWVuY2UgZm9yCj4+Pj4gbm9fY3NyIHJlc2V0IHBsYXRm
b3Jtcz8gVGhlIGNvbW1lbnQgc291bmRzIGxpa2UgaXQgaXMgcG9zc2libGUuIEJ1dCBJIGhlYXJk
IHRoZQo+Pj4+IG9wcG9zaXRlLgo+Pj4gUENJZTMgb24gWDFFODAxMDAgUUNQIGlzIGRpc2FibGVk
IGJ5IGRlZmF1bHQgaW4gVUVGSS4gV2UgbmVlZCB0byBlbmFibGUgaXQKPj4+IG1hbnVhbGx5IGlu
IFVFRkkgc2hlbGwgaWYgd2Ugd2FudC4KPj4gSUlVQyB0aGlzIHdpbGwgbm90IGJlIGEgY29uY2Vy
biBnb2luZyBmb3J3YXJkLCBhbmQgdGhpcyBpcyBhIHNwZWNpYWwgY2FzZQo+Pgo+IEknbSB3b25k
ZXJpbmcgaG93IG1hbnkgKnNwZWNpYWwqIGNhc2VzIHdlIG1heSBoYXZlIHRvIGRlYWwgd2l0aCBn
b2luZyBmb3J3YXJkLgo+IEFueWhvdywgSSB3b3VsZCBwcm9wb3NlIHRvIGF0bGVhc3QgdGhyb3cg
YW4gZXJyb3IgYW5kIGZhaWwgcHJvYmUoKSBpZjoKPgo+ICogdGhlIHBsYXRmb3JtIGhhcyBub19j
c3IgcmVzZXQgQU5ECj4gKiBib290bG9hZGVyIGhhcyBub3QgaW5pdGlhbGl6ZWQgdGhlIFBIWSBB
TkQKPiAqIHRoZXJlIGFyZSBubyBpbml0IHNlcXVlbmNlcyBpbiB0aGUga2VybmVsCj4KPiAtIE1h
bmkKCkhtbW0sIHJlZ2FyZGxlc3Mgb2Ygd2hldGhlciBpdCdzIGEgc3BlY2lhbCBjYXNlLCB3ZSBj
YW4ndCBhc3N1bWUgdGhhdCBVRUZJCndpbGwgZW5hYmxlIHRoZSBQSFkgc3VwcG9ydGluZyBub19j
c3IgcmVzZXQgb24gYWxsIHBsYXRmb3Jtcy4gSXQncyBhIGJpdApyaXNreS4gSWYgd2UgbWFrZSBz
dWNoIGFuIGFzc3VtcHRpb24sIHdlIGFsc28gd29uJ3QgbmVlZCB0byBjaGVjayB3aGV0aGVyCnRo
ZSBQSFkgaXMgZW5hYmxlZCBieSBVRUZJIGR1cmluZyBwb3dlcmluZyBvbi4gV2UganVzdCBuZWVk
IHRvIGNoZWNrCndoZXRoZXIgbm9fY3NyIHJlc2V0IGlzIGF2YWlsYWJsZS4KCkJ1dCBpdCBtYWtl
cyBzZW5zZSB0byBjaGVjayB0aGUgZXhzaXRlbmNlIG9mIFBIWSBzZW5xdWVuY2UuIEhvdyBhYm91
dAphZGRpbmcgdGhlIGNoZWNrIGluIHFtcF9wY2llX2luaXQsIGlmIGEgUEhZIHN1cHBvcnRzIG5v
X2NzciByZXNldCBhbmQgaXNuJ3QKaW5pdGlhbGl6ZWQgaW4gVUVGSSBhbmQgdGhlcmUgaXMgbm8g
Y2ZnLT50YmxzLCByZXR1cm4gZXJyb3IgYW5kIHByaW50IHNvbWUKZXJyb3IgbG9nIHNvIHRoYXQg
dGhlIFBDSWUgY29udHJvbGxlciB3aWxsIGZhaWwgdG8gcHJvYmUuCgotLSAKV2l0aCBiZXN0IHdp
c2hlcwpXZW5iaW4KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
