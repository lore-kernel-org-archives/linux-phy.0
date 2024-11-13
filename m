Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95233D41C20
	for <linux-phy@archiver.kernel.org>; Wed, 13 Nov 2024 09:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J9HU4OaLJwFUYc+QucV9HY5eqJZ9+tzA37LPK1+luAs=; b=R9v6bIjn2ruTsW
	1jfoAXq7l2N9tlwryhyw7M+Pw8Ro183cngyZM5dO1yE/U4x1sAHoV/Z7PATT+OVMrDfRweOp1QPmB
	nETDMS0dvbEJrNOgMsTF5olePPt0oI7zAgmG8ajwYMuGiYdgNS2NWQ8VnVHZmqWEn1D9tLa+U1D/D
	op/hI8oqDH8E9LvGUlrdhwboGLtTfR9BfpQ08OmvJqtkqUSOBxaV+yWgH13Qltwvz8LIABrKwcQKT
	D3iLqQLdyAGS+ICGljhfpTU3lLejYrI+iEe+qutNtHPSgN7FuKlukbZvXTVwOnmLcUsNLxB9VfnKx
	acGXk8SuhKnWZw1Cot5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tB9Z2-00000006E3U-0qJq;
	Wed, 13 Nov 2024 09:21:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tB9Xu-00000006DuY-3bqu
	for linux-phy@lists.infradead.org;
	Wed, 13 Nov 2024 09:20:21 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AD70dmN019298;
	Wed, 13 Nov 2024 09:19:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+jlEdp9U4UAYgw1Y7c/ImZvXJkE28m4D+/dF8fc7XOk=; b=J248sb7cFUl1nTDA
	sMFNX95fX4RZflfyRqUmFQEcVPvBHI+MFTWFvjkzinGzvEJ2ycnBKcmlXS5EosRj
	Niqh2WvFC93d00VJgozbYf+aZ0734bjyW3AqHFeNYIYVUoT7/N1S36aVxP7n51vI
	/ieeHdAawpNACvAQZkCFFW9OH4SixAwAY9d9jt3cWPJdCAvNNvGcvtur65UQ13Ys
	aQYpyVVDj3zQpSdSTvJKFWmWtNCtERmNRWvc8eIVifoEw1XVGAoTGcMmJIeD3W/S
	CtbYoEtICLlVZcUiKBw8hCjLGAoP7IwSUGys3/vIdlOj4CbGJS+MFuwW52O3URm/
	Y/34Sg==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42vqbm0bdd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 13 Nov 2024 09:19:59 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AD9Jwvu004597
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 13 Nov 2024 09:19:58 GMT
Received: from [10.64.68.72] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 13 Nov
 2024 01:19:52 -0800
Message-ID: <28069114-9893-486b-a8d8-4c8b9ada1b0c@quicinc.com>
Date: Wed, 13 Nov 2024 17:19:49 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/4] arm64: dts: qcom: qcs615: add UFS node
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Herring
	<robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-scsi@vger.kernel.org>, <quic_jiegan@quicinc.com>,
        <quic_aiquny@quicinc.com>, <quic_tingweiz@quicinc.com>,
        <quic_sayalil@quicinc.com>
References: <20241017042300.872963-1-quic_liuxin@quicinc.com>
 <20241017042300.872963-4-quic_liuxin@quicinc.com>
 <5fe37609-ed58-4617-bd5f-90edc90f5d8b@oss.qualcomm.com>
From: Xin Liu <quic_liuxin@quicinc.com>
In-Reply-To: <5fe37609-ed58-4617-bd5f-90edc90f5d8b@oss.qualcomm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: bi-SqTW8PKTJtqASsU22B0m18Sor4LXa
X-Proofpoint-GUID: bi-SqTW8PKTJtqASsU22B0m18Sor4LXa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 impostorscore=0 priorityscore=1501 mlxlogscore=999
 spamscore=0 bulkscore=0 suspectscore=0 malwarescore=0 adultscore=0
 clxscore=1011 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411130081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_012019_061764_6225D40A 
X-CRM114-Status: GOOD (  17.37  )
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

CgrlnKggMjAyNC8xMC8yNiAzOjI0LCBLb25yYWQgRHliY2lvIOWGmemBkzoKPiBPbiAxNy4xMC4y
MDI0IDY6MjIgQU0sIFhpbiBMaXUgd3JvdGU6Cj4+IEZyb206IFNheWFsaSBMb2toYW5kZSA8cXVp
Y19zYXlhbGlsQHF1aWNpbmMuY29tPgkKPj4gCQo+PiBBZGQgdGhlIFVGUyBIb3N0IENvbnRyb2xs
ZXIgbm9kZSBhbmQgaXRzIFBIWSBmb3IgUUNTNjE1IFNvQy4KPj4KPj4gU2lnbmVkLW9mZi1ieTog
U2F5YWxpIExva2hhbmRlIDxxdWljX3NheWFsaWxAcXVpY2luYy5jb20+Cj4+IENvLWRldmVsb3Bl
ZC1ieTogWGluIExpdSA8cXVpY19saXV4aW5AcXVpY2luYy5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6
IFhpbiBMaXUgPHF1aWNfbGl1eGluQHF1aWNpbmMuY29tPgo+PiAtLS0KPiAKPiArIFRhbml5YSAo
c2VlIGJlbG93KQo+IAo+PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M2MTUuZHRzaSB8
IDc0ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4gICAxIGZpbGUgY2hhbmdlZCwgNzQg
aW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29t
L3FjczYxNS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3FjczYxNS5kdHNpCj4+IGlu
ZGV4IGZjYmE4M2ZjYTdjZi4uNjg5NDE4NDY2ZGMyIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3Fjb20vcWNzNjE1LmR0c2kKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9x
Y29tL3FjczYxNS5kdHNpCj4+IEBAIC00NTgsNiArNDU4LDgwIEBAIG1tc3Nfbm9jOiBpbnRlcmNv
bm5lY3RAMTc0MDAwMCB7Cj4+ICAgCQkJcWNvbSxiY20tdm90ZXJzID0gPCZhcHBzX2JjbV92b3Rl
cj47Cj4+ICAgCQl9Owo+PiAgIAo+PiArCQl1ZnNfbWVtX2hjOiB1ZnNAMWQ4NDAwMCB7Cj4gCj4g
dWZzaGNAIHdvdWxkIGJlIGNvbnNpc3RlbnQgd2l0aCBvdGhlciBmaWxlcyBpbiBkdHMvcWNvbQo+
IApJIHJlZmVycmVkIHRvIHFjb20gZmlsZXMgc3VjaCBhcyBzYTg3NzVwL3NtODU1MC9zbTg2NTAg
ZXRjLkFsbCB1c2UgdWZzQAo+IAo+PiArCQkJY29tcGF0aWJsZSA9ICJxY29tLHFjczYxNS11ZnNo
YyIsICJxY29tLHVmc2hjIiwgImplZGVjLHVmcy0yLjAiOwo+PiArCQkJcmVnID0gPDB4MCAweDAx
ZDg0MDAwIDB4MCAweDMwMDA+LCA8MHgwIDB4MDFkOTAwMDAgMHgwIDB4ODAwMD47Cj4+ICsJCQly
ZWctbmFtZXMgPSAic3RkIiwgImljZSI7Cj4gCj4gT25lIHBlciBsaW5lLCBwbGVhc2UKVGhhbmsg
eW91LCBJIHdpbGwgZml4IGl0IG5leHQgdmVyc2lvbi4KPiAKPj4gKwkJCWludGVycnVwdHMgPSA8
R0lDX1NQSSAyNjUgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4+ICsJCQlwaHlzID0gPCZ1ZnNfbWVt
X3BoeT47Cj4+ICsJCQlwaHktbmFtZXMgPSAidWZzcGh5IjsKPj4gKwkJCWxhbmVzLXBlci1kaXJl
Y3Rpb24gPSA8MT47Cj4+ICsJCQkjcmVzZXQtY2VsbHMgPSA8MT47Cj4+ICsJCQlyZXNldHMgPSA8
JmdjYyBHQ0NfVUZTX1BIWV9CQ1I+Owo+PiArCQkJcmVzZXQtbmFtZXMgPSAicnN0IjsKPj4gKwo+
PiArCQkJcG93ZXItZG9tYWlucyA9IDwmZ2NjIFVGU19QSFlfR0RTQz47Cj4+ICsJCQlyZXF1aXJl
ZC1vcHBzID0gPCZycG1ocGRfb3BwX25vbT47Cj4+ICsKPj4gKwkJCWlvbW11cyA9IDwmYXBwc19z
bW11IDB4MzAwIDB4MD47Cj4+ICsJCQlkbWEtY29oZXJlbnQ7Cj4+ICsKPj4gKwkJCWludGVyY29u
bmVjdHMgPSA8JmFnZ3JlMV9ub2MgTUFTVEVSX1VGU19NRU0gUUNPTV9JQ0NfVEFHX0FMV0FZUwo+
PiArCQkJCQkgJm1jX3ZpcnQgU0xBVkVfRUJJMSBRQ09NX0lDQ19UQUdfQUxXQVlTPiwKPj4gKwkJ
CQkJPCZnZW1fbm9jIE1BU1RFUl9BUFBTU19QUk9DIFFDT01fSUNDX1RBR19BTFdBWVMKPj4gKwkJ
CQkJICZjb25maWdfbm9jIFNMQVZFX1VGU19NRU1fQ0ZHIFFDT01fSUNDX1RBR19BTFdBWVM+Owo+
PiArCQkJaW50ZXJjb25uZWN0LW5hbWVzID0gInVmcy1kZHIiLAo+PiArCQkJCQkgICAgICJjcHUt
dWZzIjsKPj4gKwo+PiArCQkJY2xvY2tzID0gPCZnY2MgR0NDX1VGU19QSFlfQVhJX0NMSz4sCj4+
ICsJCQkJIDwmZ2NjIEdDQ19BR0dSRV9VRlNfUEhZX0FYSV9DTEs+LAo+PiArCQkJCSA8JmdjYyBH
Q0NfVUZTX1BIWV9BSEJfQ0xLPiwKPj4gKwkJCQkgPCZnY2MgR0NDX1VGU19QSFlfVU5JUFJPX0NP
UkVfQ0xLPiwKPj4gKwkJCQkgPCZycG1oY2MgUlBNSF9DWE9fQ0xLPiwKPj4gKwkJCQkgPCZnY2Mg
R0NDX1VGU19QSFlfVFhfU1lNQk9MXzBfQ0xLPiwKPj4gKwkJCQkgPCZnY2MgR0NDX1VGU19QSFlf
UlhfU1lNQk9MXzBfQ0xLPiwKPj4gKwkJCQkgPCZnY2MgR0NDX1VGU19QSFlfSUNFX0NPUkVfQ0xL
PjsKPj4gKwkJCWNsb2NrLW5hbWVzID0gImNvcmVfY2xrIiwKPj4gKwkJCQkgICAgICAiYnVzX2Fn
Z3JfY2xrIiwKPj4gKwkJCQkgICAgICAiaWZhY2VfY2xrIiwKPj4gKwkJCQkgICAgICAiY29yZV9j
bGtfdW5pcHJvIiwKPj4gKwkJCQkgICAgICAicmVmX2NsayIsCj4+ICsJCQkJICAgICAgInR4X2xh
bmUwX3N5bmNfY2xrIiwKPj4gKwkJCQkgICAgICAicnhfbGFuZTBfc3luY19jbGsiLAo+PiArCQkJ
CSAgICAgICJpY2VfY29yZV9jbGsiOwo+PiArCQkJZnJlcS10YWJsZS1oeiA9IDw1MDAwMDAwMCAy
MDAwMDAwMDA+LAo+PiArCQkJCQk8MCAwPiwKPj4gKwkJCQkJPDAgMD4sCj4+ICsJCQkJCTwzNzUw
MDAwMCAxNTAwMDAwMDA+LAo+PiArCQkJCQk8MCAwPiwKPj4gKwkJCQkJPDAgMD4sCj4+ICsJCQkJ
CTwwIDA+LAo+PiArCQkJCQk8NzUwMDAwMDAgMzAwMDAwMDAwPjsKPiAKPiBQbGVhc2UgdHJ5IHRv
IG1hdGNoIHRoZSBvcmRlciBvZiBwcm9wZXJ0aWVzIHByZXNlbnQgaW4gc204NjUwLmR0c2kKVGhh
bmsgeW91LCBJIHdpbGwgZml4IGl0IG5leHQgdmVyc2lvbi4KPiAKPiBBbmQgcGxlYXNlIHVzZSBh
biBPUFAgdGFibGUgaW5zdGVhZCBvZiBmcmVxLXRhYmxlLWh6IChzZWUgc204KjUqNTAuZHRzaSkK
VGhhbmsgeW91LCBJIHdpbGwgZml4IGl0IG5leHQgdmVyc2lvbi4KPiAKPj4gKwo+PiArCQkJc3Rh
dHVzID0gImRpc2FibGVkIjsKPj4gKwkJfTsKPj4gKwo+PiArCQl1ZnNfbWVtX3BoeTogcGh5QDFk
ODcwMDAgewo+PiArCQkJY29tcGF0aWJsZSA9ICJxY29tLHFjczYxNS1xbXAtdWZzLXBoeSIsICJx
Y29tLHNtNjExNS1xbXAtdWZzLXBoeSI7Cj4+ICsJCQlyZWcgPSA8MHgwIDB4MDFkODcwMDAgMHgw
IDB4ZTAwPjsKPiAKPiBUaGlzIHJlZ2lzdGVyIHJlZ2lvbiBpcyBhIGJpdCBsb25nZXIKSSBqdXN0
IGNvbmZpcm1lZCBhZ2FpbiwgdGhlcmUncyBubyBwcm9ibGVtIGhlcmUuCj4gCj4+ICsJCQljbG9j
a3MgPSA8JnJwbWhjYyBSUE1IX0NYT19DTEs+LAo+PiArCQkJCSA8JmdjYyBHQ0NfVUZTX1BIWV9Q
SFlfQVVYX0NMSz4sCj4+ICsJCQkJIDwmZ2NjIEdDQ19VRlNfTUVNX0NMS1JFRl9DTEs+Owo+PiAr
CQkJY2xvY2stbmFtZXMgPSAicmVmIiwKPj4gKwkJCQkgICAgICAicmVmX2F1eCIsCj4+ICsJCQkJ
ICAgICAgInFyZWYiOwo+PiArCj4+ICsJCQlwb3dlci1kb21haW5zID0gPCZnY2MgVUZTX1BIWV9H
RFNDPjsKPj4gKwo+PiArCQkJcmVzZXRzID0gPCZ1ZnNfbWVtX2hjIDA+Owo+PiArCQkJcmVzZXQt
bmFtZXMgPSAidWZzcGh5IjsKPj4gKwo+PiArCQkJI2Nsb2NrLWNlbGxzID0gPDE+Owo+IAo+IFRo
ZSBQSFkgaXMgYSBjbG9jayBwcm92aWRlci4gTm9ybWFsbHksIGl0J3MgYSBwYXJlbnQgb2YKPiBn
Y2NfdWZzX3BoeV9bcnRdeF9zeW1ib2xfbiBjbG9ja3MuCj4gCj4gVGFuaXlhLCBjb3VsZCB5b3Ug
cGxlYXNlIHdpcmUgdGhhdCB1cCBpbiB5b3VyIHBhdGNoc2V0Pwo+IAo+IEtvbnJhZAoKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
