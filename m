Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9179EC02192
	for <linux-phy@archiver.kernel.org>; Tue,  4 Feb 2025 03:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hLnTKRln933IJ17OVanAqXamfiB7VtMAz5L6wI97pKg=; b=hc3mA5aokkJsCw
	GLkmDPT5v5hUvqZMx+eJUh0B6vRFwbTjxGEWTloTxqizI294DeYdnfPzJb0J4zqJmchfI4cDVob82
	XhAaTHry7HYAFKNzqKvEJv0KbTdUKdFC7kfYfh7a6grVPCwwr48WRkWUQSuk8zZvnBeU7lo3hjv0n
	u7FHIjViB+ru3VrKsHPdSAcP12RYYZru2f+E/IXLiDTX+7wB1F4NLHRWFTPJkFHXnQuQUPQSEjz58
	oAYgFSMMpqXvi8LsVBCRRur+mZZ6uiPZ2xK+4jMHrfru+bm9YGNbMD7itB47PIZhb6lAHX8I7D2hr
	7J1JCf5nbbGLtL9Z1yTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tf9Vy-0000000HA6j-3SfD;
	Tue, 04 Feb 2025 03:22:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tf9Vw-0000000HA6F-3UF4;
	Tue, 04 Feb 2025 03:22:18 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 513GFHMu011894;
	Tue, 4 Feb 2025 03:22:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HAqS3bI/nZNWijByPRTKJVUN97hHHkCl5lQJzeIb+ao=; b=WLi4VETtAWct4DCY
	e0865jVE7ezCdHQKwZTkQKcc71eTsKLHt98yk01nMYHfw/ZZRvZPx4x35nigG5yE
	RK0KDwJwiMmj8RgwX7zGNYfvvpxH9D3lHv5QxwnfKi/fZGUuP//1SbKl3io/3y7P
	FFUz+oaAQ1xmSxprk1p9ghQQ7MUwy/kgMUl0qID4b9lonDyuCLTw5Ti2UHHMY8+U
	fzF1ljB0hIK9kwtQB3TkLV36axTj88YGg5jnAUSRh0BiCUsMb0/p744Y+FhVvHhr
	o5YyUeSOlhCareh7abe0rt46/+FPLdhnR/uGV6GdDSqAKUTVyzaUZ7ouTltNT+jU
	btYM2w==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44k159h94t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 04 Feb 2025 03:22:01 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 5143M0SN003203
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 4 Feb 2025 03:22:00 GMT
Received: from [10.110.45.144] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 3 Feb 2025
 19:21:59 -0800
Message-ID: <4a18ddb1-a7f4-41ae-b115-516b1710cbde@quicinc.com>
Date: Mon, 3 Feb 2025 19:21:52 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/7] arm64: dts: qcom: sm8750: Add USB support to SM8750
 platforms
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Melody Olvera
	<quic_molvera@quicinc.com>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        "Catalin Marinas" <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        "Bjorn Andersson" <andersson@kernel.org>,
        Konrad Dybcio
	<konradybcio@kernel.org>,
        Satya Durga Srinivasu Prabhala
	<quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
References: <20250113-sm8750_usb_master-v1-0-09afe1dc2524@quicinc.com>
 <20250113-sm8750_usb_master-v1-7-09afe1dc2524@quicinc.com>
 <lk26ltslmijj7tj2kst2wsvd6d2hyj3zjzcwavwl63evjhcgdh@ewqliiijispu>
Content-Language: en-US
From: Wesley Cheng <quic_wcheng@quicinc.com>
In-Reply-To: <lk26ltslmijj7tj2kst2wsvd6d2hyj3zjzcwavwl63evjhcgdh@ewqliiijispu>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: Zy9C0otC3fT2aMT_4_uaNVuK6dCyJmDa
X-Proofpoint-ORIG-GUID: Zy9C0otC3fT2aMT_4_uaNVuK6dCyJmDa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-04_01,2025-01-31_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 impostorscore=0 spamscore=0 mlxlogscore=999 phishscore=0 clxscore=1011
 mlxscore=0 bulkscore=0 lowpriorityscore=0 adultscore=0 suspectscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502040024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_192216_988077_9990D4B0 
X-CRM114-Status: GOOD (  17.18  )
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

Ck9uIDEvMTQvMjAyNSAyOjM4IEFNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIE1vbiwg
SmFuIDEzLCAyMDI1IGF0IDAxOjUyOjEzUE0gLTA4MDAsIE1lbG9keSBPbHZlcmEgd3JvdGU6Cj4+
IEZyb206IFdlc2xleSBDaGVuZyA8cXVpY193Y2hlbmdAcXVpY2luYy5jb20+Cj4+Cj4+IEVuYWJs
ZSBVU0Igc3VwcG9ydCBvbiBTTTg3NTAgTVRQIGFuZCBRUkQgdmFyaWFudHMuIFNNODc1MCBoYXMg
YSBRTVAgY29tYm8KPj4gUEhZIGZvciB0aGUgU1NVU0IgcGF0aCwgYW5kIGEgTTMxIGVVU0IyIFBI
WSBmb3IgdGhlIEhTVVNCIHBhdGguCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFdlc2xleSBDaGVuZyA8
cXVpY193Y2hlbmdAcXVpY2luYy5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IE1lbG9keSBPbHZlcmEg
PHF1aWNfbW9sdmVyYUBxdWljaW5jLmNvbT4KPj4gLS0tCj4+ICBhcmNoL2FybTY0L2Jvb3QvZHRz
L3Fjb20vc204NzUwLW10cC5kdHMgfCAgMjQgKysrKysrCj4+ICBhcmNoL2FybTY0L2Jvb3QvZHRz
L3Fjb20vc204NzUwLXFyZC5kdHMgfCAgMjQgKysrKysrCj4+ICBhcmNoL2FybTY0L2Jvb3QvZHRz
L3Fjb20vc204NzUwLmR0c2kgICAgfCAxMzQgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysKPiBTZXBhcmF0ZSBTb0MgYW5kIGJvYXJkIHBhdGNoZXMuCj4KPj4gIDMgZmlsZXMgY2hhbmdl
ZCwgMTgyIGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcWNvbS9zbTg3NTAtbXRwLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zbTg3NTAt
bXRwLmR0cwo+PiBpbmRleCA5ZTNhYWNhZDdiZGFiNjg0OGU4NmY4ZTQ1ZTA0OTA3ZTFjNzUyYTA3
Li4wNTllY2NiYmMzZmIwNWZjODgwNmUzNmQzNWRjNDY5ZDQ0NDQzYTI2IDEwMDY0NAo+PiAtLS0g
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc204NzUwLW10cC5kdHMKPj4gKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9xY29tL3NtODc1MC1tdHAuZHRzCj4+IEBAIC03OTIsMyArNzkyLDI3IEBA
ICZ0bG1tIHsKPj4gICZ1YXJ0NyB7Cj4+ICAJc3RhdHVzID0gIm9rYXkiOwo+PiAgfTsKPj4gKwo+
PiArJnVzYl8xIHsKPj4gKwlzdGF0dXMgPSAib2theSI7Cj4+ICt9Owo+PiArCj4+ICsmdXNiXzFf
ZHdjMyB7Cj4+ICsJZHJfbW9kZSA9ICJwZXJpcGhlcmFsIjsKPj4gK307Cj4+ICsKPj4gKyZ1c2Jf
MV9oc3BoeSB7Cj4+ICsJdmRkLXN1cHBseSA9IDwmdnJlZ19sMmRfMHA4OD47Cj4+ICsJdmRkYTEy
LXN1cHBseSA9IDwmdnJlZ19sM2dfMXAyPjsKPj4gKwo+PiArCXBoeXMgPSA8JnBtaWgwMTA4X2V1
c2IyX3JlcGVhdGVyPjsKPj4gKwo+PiArCXN0YXR1cyA9ICJva2F5IjsKPj4gK307Cj4+ICsKPj4g
KyZ1c2JfZHBfcW1wcGh5IHsKPj4gKwl2ZGRhLXBoeS1zdXBwbHkgPSA8JnZyZWdfbDNnXzFwMj47
Cj4+ICsJdmRkYS1wbGwtc3VwcGx5ID0gPCZ2cmVnX2wyZF8wcDg4PjsKPj4gKwo+PiArCXN0YXR1
cyA9ICJva2F5IjsKPj4gK307Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fj
b20vc204NzUwLXFyZC5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc204NzUwLXFyZC5k
dHMKPj4gaW5kZXggZjc3ZWZhYjBhZWY5YmFiNzUxYTk0NzE3M2JjZGNjMjdkZjcyOTVhOC4uMDFj
MGFmNjQzNjI2OTE3NjE0ZmJkNjhjZjg5NjJlZjk0N2NhNjU0OCAxMDA2NDQKPj4gLS0tIGEvYXJj
aC9hcm02NC9ib290L2R0cy9xY29tL3NtODc1MC1xcmQuZHRzCj4+ICsrKyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcWNvbS9zbTg3NTAtcXJkLmR0cwo+PiBAQCAtNzkwLDMgKzc5MCwyNyBAQCAmdGxt
bSB7Cj4+ICAmdWFydDcgewo+PiAgCXN0YXR1cyA9ICJva2F5IjsKPj4gIH07Cj4+ICsKPj4gKyZ1
c2JfMSB7Cj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+PiArfTsKPj4gKwo+PiArJnVzYl8xX2R3YzMg
ewo+PiArCWRyX21vZGUgPSAicGVyaXBoZXJhbCI7Cj4+ICt9Owo+PiArCj4+ICsmdXNiXzFfaHNw
aHkgewo+PiArCXZkZC1zdXBwbHkgPSA8JnZyZWdfbDJkXzBwODg+Owo+PiArCXZkZGExMi1zdXBw
bHkgPSA8JnZyZWdfbDNnXzFwMj47Cj4+ICsKPj4gKwlwaHlzID0gPCZwbWloMDEwOF9ldXNiMl9y
ZXBlYXRlcj47Cj4+ICsKPj4gKwlzdGF0dXMgPSAib2theSI7Cj4+ICt9Owo+PiArCj4+ICsmdXNi
X2RwX3FtcHBoeSB7Cj4+ICsJdmRkYS1waHktc3VwcGx5ID0gPCZ2cmVnX2wzZ18xcDI+Owo+PiAr
CXZkZGEtcGxsLXN1cHBseSA9IDwmdnJlZ19sMmRfMHA4OD47Cj4+ICsKPj4gKwlzdGF0dXMgPSAi
b2theSI7Cj4+ICt9Owo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3Nt
ODc1MC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NtODc1MC5kdHNpCj4+IGluZGV4
IDNiYmQ3ZDE4NTk4ZWUwYTNhMGQ1MTMwYzAzYTMxNjZlMWZjMTRkODIuLjU0NTIyZmQzZDBlMTFj
M2NmZjAyYmVhZjFkMjQ5ZmU2NTRjYWNjMGYgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcWNvbS9zbTg3NTAuZHRzaQo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20v
c204NzUwLmR0c2kKPj4gQEAgLTEwLDYgKzEwLDcgQEAKPj4gICNpbmNsdWRlIDxkdC1iaW5kaW5n
cy9pbnRlcmNvbm5lY3QvcWNvbSxpY2MuaD4KPj4gICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRl
cmNvbm5lY3QvcWNvbSxzbTg3NTAtcnBtaC5oPgo+PiAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2lu
dGVycnVwdC1jb250cm9sbGVyL2FybS1naWMuaD4KPj4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9w
aHkvcGh5LXFjb20tcW1wLmg+Cj4+ICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcG93ZXIvcWNvbSxy
cG1ocGQuaD4KPj4gICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9wb3dlci9xY29tLXJwbXBkLmg+Cj4+
ICAjaW5jbHVkZSA8ZHQtYmluZGluZ3Mvc29jL3Fjb20scnBtaC1yc2MuaD4KPj4gQEAgLTE5NjYs
NiArMTk2NywxMzkgQEAgbHBhc3NfbHBpY3hfbm9jOiBpbnRlcmNvbm5lY3RANzQyMDAwMCB7Cj4+
ICAJCQkjaW50ZXJjb25uZWN0LWNlbGxzID0gPDI+Owo+PiAgCQl9Owo+PiAgCj4+ICsJCXVzYl8x
X2hzcGh5OiBwaHlAODhlMzAwMCB7Cj4+ICsJCQljb21wYXRpYmxlID0gInFjb20sc204NzUwLW0z
MS1ldXNiMi1waHkiOwo+PiArCQkJcmVnID0gPDB4MCAweDg4ZTMwMDAgMHgwIDB4MjljPjsKPj4g
Kwo+PiArCQkJY2xvY2tzID0gPCZ0Y3NyY2MgVENTUl9VU0IyX0NMS1JFRl9FTj47Cj4+ICsJCQlj
bG9jay1uYW1lcyA9ICJyZWYiOwo+PiArCj4+ICsJCQlyZXNldHMgPSA8JmdjYyBHQ0NfUVVTQjJQ
SFlfUFJJTV9CQ1I+Owo+PiArCj4+ICsJCQkjcGh5LWNlbGxzID0gPDA+Owo+PiArCj4+ICsJCQlz
dGF0dXMgPSAiZGlzYWJsZWQiOwo+PiArCQl9Owo+PiArCj4+ICsJCXVzYl9kcF9xbXBwaHk6IHBo
eUA4OGU4MDAwIHsKPj4gKwkJCWNvbXBhdGlibGUgPSAicWNvbSxzbTg3NTAtcW1wLXVzYjMtZHAt
cGh5IjsKPj4gKwkJCXJlZyA9IDwweDAgMHgwODhlODAwMCAweDAgMHgzMDAwPjsKPj4gKwo+PiAr
CQkJY2xvY2tzID0gPCZnY2MgR0NDX1VTQjNfUFJJTV9QSFlfQVVYX0NMSz4sCj4+ICsJCQkJIDwm
cnBtaGNjIFJQTUhfQ1hPX0NMSz4sCj4+ICsJCQkJIDwmZ2NjIEdDQ19VU0IzX1BSSU1fUEhZX0NP
TV9BVVhfQ0xLPiwKPj4gKwkJCQkgPCZnY2MgR0NDX1VTQjNfUFJJTV9QSFlfUElQRV9DTEs+Owo+
PiArCQkJY2xvY2stbmFtZXMgPSAiYXV4IiwKPj4gKwkJCQkgICAgICAicmVmIiwKPj4gKwkJCQkg
ICAgICAiY29tX2F1eCIsCj4+ICsJCQkJICAgICAgInVzYjNfcGlwZSI7Cj4+ICsKPj4gKwkJCXJl
c2V0cyA9IDwmZ2NjIEdDQ19VU0IzX1BIWV9QUklNX0JDUj4sCj4+ICsJCQkJIDwmZ2NjIEdDQ19V
U0IzX0RQX1BIWV9QUklNX0JDUj47Cj4+ICsJCQlyZXNldC1uYW1lcyA9ICJwaHkiLAo+PiArCQkJ
CSAgICAgICJjb21tb24iOwo+PiArCj4+ICsJCQlwb3dlci1kb21haW5zID0gPCZnY2MgR0NDX1VT
QjNfUEhZX0dEU0M+Owo+PiArCj4+ICsJCQkjY2xvY2stY2VsbHMgPSA8MT47Cj4+ICsJCQkjcGh5
LWNlbGxzID0gPDE+Owo+IE1pc3Npbmcgb3JpZW50YXRpb24tc3dpdGNoIGFuZCBwb3J0c3t9IGRl
c2NyaXB0aW9uLgoKQXQgbGVhc3QgZm9yIHRoaXMgaW5pdGlhbCBzdWJtaXNzaW9uL3Nlcmllcywg
d2UgaGF2ZW4ndCB5ZXQgZGVmaW5lZCB0aGUgUE1JQyBHTElOSyBjb25uZWN0aW9ucyB5ZXQsIHNv
IGRvZXMgaXQgbWFrZSBzZW5zZSB0byBpbmNsdWRlIHRoZXNlIG5vdz/CoCBCYXNpY2FsbHksIGV2
ZW4gaWYgd2UgZGVmaW5lIHRoYXQgY29ubmVjdGlvbiwgc2luY2UgSSdtIG5vdCBhd2FyZSBpZiB0
aGUgZW5hYmxlbWVudCBvZiBQTUlDIEdMSU5LIGhhcyBiZWVuIGFkZGVkLCBpdCB3b3VsZCBiZSBu
aWwsIGFzIGl0IHdvdWxkIGJlIHRoZSBvbmUgcmVzcG9uc2libGUgZm9yIHJlZ2lzdGVyaW5nIHRo
ZSB0eXBlIEMgcG9ydC7CoAoKPj4gKwo+PiArCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPj4gKwkJ
fTsKPj4gKwo+PiArCQl1c2JfMTogdXNiQGE2Zjg4MDAgewo+PiArCQkJY29tcGF0aWJsZSA9ICJx
Y29tLHNtODc1MC1kd2MzIiwgInFjb20sZHdjMyI7Cj4+ICsJCQlyZWcgPSA8MHgwIDB4MGE2Zjg4
MDAgMHgwIDB4NDAwPjsKPj4gKwkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+ICsJCQkjYWRkcmVz
cy1jZWxscyA9IDwyPjsKPj4gKwkJCSNzaXplLWNlbGxzID0gPDI+Owo+PiArCQkJcmFuZ2VzOwo+
PiArCj4+ICsJCQljbG9ja3MgPSA8JmdjYyBHQ0NfQ0ZHX05PQ19VU0IzX1BSSU1fQVhJX0NMSz4s
Cj4+ICsJCQkJIDwmZ2NjIEdDQ19VU0IzMF9QUklNX01BU1RFUl9DTEs+LAo+PiArCQkJCSA8Jmdj
YyBHQ0NfQUdHUkVfVVNCM19QUklNX0FYSV9DTEs+LAo+PiArCQkJCSA8JmdjYyBHQ0NfVVNCMzBf
UFJJTV9TTEVFUF9DTEs+LAo+PiArCQkJCSA8JmdjYyBHQ0NfVVNCMzBfUFJJTV9NT0NLX1VUTUlf
Q0xLPiwKPj4gKwkJCQkgPCZ0Y3NyY2MgVENTUl9VU0IzX0NMS1JFRl9FTj47Cj4+ICsJCQljbG9j
ay1uYW1lcyA9ICJjZmdfbm9jIiwKPj4gKwkJCQkgICAgICAiY29yZSIsCj4+ICsJCQkJICAgICAg
ImlmYWNlIiwKPj4gKwkJCQkgICAgICAic2xlZXAiLAo+PiArCQkJCSAgICAgICJtb2NrX3V0bWki
LAo+PiArCQkJCSAgICAgICJ4byI7Cj4+ICsKPj4gKwkJCWFzc2lnbmVkLWNsb2NrcyA9IDwmZ2Nj
IEdDQ19VU0IzMF9QUklNX01PQ0tfVVRNSV9DTEs+LAo+PiArCQkJCQkgIDwmZ2NjIEdDQ19VU0Iz
MF9QUklNX01BU1RFUl9DTEs+Owo+PiArCQkJYXNzaWduZWQtY2xvY2stcmF0ZXMgPSA8MTkyMDAw
MDA+LCA8MjAwMDAwMDAwPjsKPj4gKwo+PiArCQkJaW50ZXJydXB0cy1leHRlbmRlZCA9IDwmaW50
YyBHSUNfU1BJIDEzMCBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPj4gKwkJCQkJCSAgPCZpbnRjIEdJ
Q19TUEkgMTMxIElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+PiArCQkJCQkgICAgICA8JnBkYyAxNCBJ
UlFfVFlQRV9FREdFX0JPVEg+LAo+PiArCQkJCQkgICAgICA8JnBkYyAxNSBJUlFfVFlQRV9FREdF
X0JPVEg+LAo+PiArCQkJCQkgICAgICA8JnBkYyAxNyBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPj4g
KwkJCWludGVycnVwdC1uYW1lcyA9ICJwd3JfZXZlbnQiLAo+PiArCQkJCQkgICJoc19waHlfaXJx
IiwKPj4gKwkJCQkJICAiZHBfaHNfcGh5X2lycSIsCj4+ICsJCQkJCSAgImRtX2hzX3BoeV9pcnEi
LAo+PiArCQkJCQkgICJzc19waHlfaXJxIjsKPj4gKwo+PiArCQkJcG93ZXItZG9tYWlucyA9IDwm
Z2NjIEdDQ19VU0IzMF9QUklNX0dEU0M+Owo+PiArCQkJcmVxdWlyZWQtb3BwcyA9IDwmcnBtaHBk
X29wcF9ub20+Owo+PiArCj4+ICsJCQlyZXNldHMgPSA8JmdjYyBHQ0NfVVNCMzBfUFJJTV9CQ1I+
Owo+PiArCj4+ICsJCQlpbnRlcmNvbm5lY3RzID0gPCZhZ2dyZTFfbm9jIE1BU1RFUl9VU0IzXzAg
MCAmbWNfdmlydCBTTEFWRV9FQkkxIDA+LAo+PiArCQkJCQk8JmdlbV9ub2MgTUFTVEVSX0FQUFNT
X1BST0MgMCAmY29uZmlnX25vYyBTTEFWRV9VU0IzXzAgMD47Cj4+ICsJCQlpbnRlcmNvbm5lY3Qt
bmFtZXMgPSAidXNiLWRkciIsICJhcHBzLXVzYiI7Cj4+ICsKPj4gKwkJCXVzYl8xX2R3YzM6IHVz
YkBhNjAwMDAwIHsKPj4gKwkJCQljb21wYXRpYmxlID0gInNucHMsZHdjMyI7Cj4+ICsJCQkJcmVn
ID0gPDB4MCAweDBhNjAwMDAwIDB4MCAweGUwMDA+Owo+PiArCj4+ICsJCQkJaW50ZXJydXB0cyA9
IDxHSUNfU1BJIDEzMyBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPj4gKwo+PiArCQkJCWlvbW11cyA9
IDwmYXBwc19zbW11IDB4NDAgMHgwPjsKPj4gKwo+PiArCQkJCXBoeXMgPSA8JnVzYl8xX2hzcGh5
PiwgPCZ1c2JfZHBfcW1wcGh5IFFNUF9VU0I0M0RQX1VTQjNfUEhZPjsKPj4gKwkJCQlwaHktbmFt
ZXMgPSAidXNiMi1waHkiLCAidXNiMy1waHkiOwo+PiArCj4+ICsJCQkJc25wcyxoaXJkLXRocmVz
aG9sZCA9IC9iaXRzLyA4IDwweDA+Owo+PiArCQkJCXNucHMsdXNiMi1nYWRnZXQtbHBtLWRpc2Fi
bGU7Cj4+ICsJCQkJc25wcyxkaXNfdTJfc3VzcGh5X3F1aXJrOwo+PiArCQkJCXNucHMsZGlzX2Vu
YmxzbHBtX3F1aXJrOwo+PiArCQkJCXNucHMsZGlzLXUxLWVudHJ5LXF1aXJrOwo+PiArCQkJCXNu
cHMsZGlzLXUyLWVudHJ5LXF1aXJrOwo+PiArCQkJCXNucHMsaXMtdXRtaS1sMS1zdXNwZW5kOwo+
PiArCQkJCXNucHMsdXNiM19scG1fY2FwYWJsZTsKPj4gKwkJCQlzbnBzLHVzYjItbHBtLWRpc2Fi
bGU7Cj4+ICsJCQkJc25wcyxoYXMtbHBtLWVycmF0dW07Cj4+ICsJCQkJdHgtZmlmby1yZXNpemU7
Cj4+ICsKPj4gKwkJCQlkcl9tb2RlID0gInBlcmlwaGVyYWwiOwo+IFRoaXMgZ29lcyB0byB0aGUg
Ym9hcmQgZmlsZXMuCj4KPj4gKwo+PiArCQkJCWRtYS1jb2hlcmVudDsKPj4gKwo+PiArCQkJCXBv
cnRzIHsKPj4gKwkJCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4+ICsJCQkJCSNzaXplLWNlbGxz
ID0gPDA+Owo+PiArCj4+ICsJCQkJCXBvcnRAMCB7Cj4+ICsJCQkJCQlyZWcgPSA8MD47Cj4+ICsK
Pj4gKwkJCQkJCXVzYl8xX2R3YzNfaHM6IGVuZHBvaW50IHsKPj4gKwkJCQkJCX07Cj4+ICsJCQkJ
CX07Cj4+ICsKPj4gKwkJCQkJcG9ydEAxIHsKPj4gKwkJCQkJCXJlZyA9IDwxPjsKPj4gKwo+PiAr
CQkJCQkJdXNiXzFfZHdjM19zczogZW5kcG9pbnQgewo+IFFNUCBlbmRwb2ludC4KClNhbWUgYXMg
YWJvdmUgY29tbWVudC4KClRoYW5rcwoKV2VzbGV5IENoZW5nCgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
