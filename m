Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34A2CE65D29
	for <linux-phy@archiver.kernel.org>; Fri, 22 Nov 2024 06:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pcJ4j8LUsww/R2AgiHx63iD8wBMFeH0359KLv3Ojbng=; b=lpZwbatYeP63rv
	PoWJ3ylxwsx+zMSNeg1SQ777K6l1wBh9I6RS51u8RNEZymITarzSb3/ibNwch8qBgLr3QpKqUkmcP
	YD563eedilf6fJslOO+M/c4cOD8i0A09lu212DP6fL6Ag4ZpY65r88GIjVR/4z6n//geynZtFU1lF
	4UxbEAS8HfdsX3IFvnUz+vZMAK+P2DoYLL0Z9EQoSIhH6JPs4btKyLTBgtvHsOMc2ski09gqPY9om
	4RMSQv1h0vWE6y1PaLU9OURKNOSwVlqEnjx68UMxniYoqsub5ufvD3/zIY4xU9z13M0xrkKy36Wbu
	jfgfaARBon6wRwiQItwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEMpT-00000001hkJ-1C8E;
	Fri, 22 Nov 2024 06:07:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEMpP-00000001hjt-17LY
	for linux-phy@lists.infradead.org;
	Fri, 22 Nov 2024 06:07:41 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AM2Muil027713;
	Fri, 22 Nov 2024 06:07:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	S/AWrFKiGjI5jrs0RclHK9dtitiixWc5tMJZ/QlOQTs=; b=NMiR9sQ1gv0x2ar2
	cvIUbsw/wFNxaAIGXcGqYyvk4zg1IfNdB/8L47Pz48kDY4tGmPD3YFcA8kqi58Zf
	UCy1RkH2lB/N/vIgpQfhh4nolSDMIVEt1+ruZzcBIZOca0iRch4EYobHwyH+WN1F
	IvItZ1Q43UUr3d6u/hsTmggsL3CICfJnuyCOr+Fs15V7IerGZQrc9WL5SkeB3Qp0
	F4xXoV/EEFa5uuDjbLdTzgFmt2n7lNdF/fcY+OMlRo7U78tTYxreq/bas1QrVqw9
	Wfvhbq122y8Mzg5M781OCTbEFqFZqk6Qm60RB/yuhT+bJtFVaysZsgD2wBkdIR0U
	u7EK0w==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 432h4dre63-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Nov 2024 06:07:17 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AM67GPf029964
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Nov 2024 06:07:16 GMT
Received: from [10.64.68.72] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Thu, 21 Nov
 2024 22:07:10 -0800
Message-ID: <c9971277-bc93-4e53-b20a-a6aac6df9023@quicinc.com>
Date: Fri, 22 Nov 2024 14:07:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: qcs615: add UFS node
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        "Kishon Vijay Abraham I" <kishon@kernel.org>,
        Alim Akhtar
	<alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche
	<bvanassche@acm.org>,
        "Andy Gross" <agross@kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
        <quic_jiegan@quicinc.com>, <quic_aiquny@quicinc.com>,
        <quic_tingweiz@quicinc.com>, <quic_sayalil@quicinc.com>
References: <20241119022050.2995511-1-quic_liuxin@quicinc.com>
 <20241119022050.2995511-3-quic_liuxin@quicinc.com>
 <45cb4thpg6mrtxiwdb333w2jxgtpw426akik2l3f7qv57dvwmm@kma6vrglbrjh>
From: Xin Liu <quic_liuxin@quicinc.com>
In-Reply-To: <45cb4thpg6mrtxiwdb333w2jxgtpw426akik2l3f7qv57dvwmm@kma6vrglbrjh>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Q3ijIbtUjn_N8OD4cNVIln5lLAvnoS0E
X-Proofpoint-GUID: Q3ijIbtUjn_N8OD4cNVIln5lLAvnoS0E
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 clxscore=1011 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 mlxlogscore=999 spamscore=0 adultscore=0 mlxscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411220049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241121_220739_962937_F4176174 
X-CRM114-Status: GOOD (  14.59  )
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

CgrlnKggMjAyNC8xMS8yMiAxOjAwLCBEbWl0cnkgQmFyeXNoa292IOWGmemBkzoKPiBPbiBUdWUs
IE5vdiAxOSwgMjAyNCBhdCAxMDoyMDo0OUFNICswODAwLCBYaW4gTGl1IHdyb3RlOgo+PiBGcm9t
OiBTYXlhbGkgTG9raGFuZGUgPHF1aWNfc2F5YWxpbEBxdWljaW5jLmNvbT4KPj4KPj4gQWRkIHRo
ZSBVRlMgSG9zdCBDb250cm9sbGVyIG5vZGUgYW5kIGl0cyBQSFkgZm9yIFFDUzYxNSBTb0MuCj4+
Cj4+IFNpZ25lZC1vZmYtYnk6IFNheWFsaSBMb2toYW5kZSA8cXVpY19zYXlhbGlsQHF1aWNpbmMu
Y29tPgo+PiBDby1kZXZlbG9wZWQtYnk6IFhpbiBMaXUgPHF1aWNfbGl1eGluQHF1aWNpbmMuY29t
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBYaW4gTGl1IDxxdWljX2xpdXhpbkBxdWljaW5jLmNvbT4KPj4g
LS0tCj4+ICAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3FjczYxNS5kdHNpIHwgMTEyICsrKysr
KysrKysrKysrKysrKysrKysrKysrKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxMTIgaW5zZXJ0aW9u
cygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3FjczYxNS5k
dHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3FjczYxNS5kdHNpCj4+IGluZGV4IDU5MGJl
YjM3ZjQ0MS4uY2VjZWFmYjJlNzFmIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3Fjb20vcWNzNjE1LmR0c2kKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3FjczYx
NS5kdHNpCj4+IEBAIC00NTgsNiArNDU4LDExOCBAQCBtbXNzX25vYzogaW50ZXJjb25uZWN0QDE3
NDAwMDAgewo+PiAgIAkJCXFjb20sYmNtLXZvdGVycyA9IDwmYXBwc19iY21fdm90ZXI+Owo+PiAg
IAkJfTsKPj4gICAKPj4gKwkJdWZzX21lbV9oYzogdWZzaGNAMWQ4NDAwMCB7Cj4+ICsJCQljb21w
YXRpYmxlID0gInFjb20scWNzNjE1LXVmc2hjIiwgInFjb20sdWZzaGMiLCAiamVkZWMsdWZzLTIu
MCI7Cj4+ICsJCQlyZWcgPSA8MHgwIDB4MDFkODQwMDAgMHgwIDB4MzAwMD4sIDwweDAgMHgwMWQ5
MDAwMCAweDAgMHg4MDAwPjsKPiAKPiBQbGVhc2UgY29uc2lkZXIgc3BsaXR0aW5nIHRvIGhhdmUg
b25lIGVudHJ5IHBlciBsaW5lIChhbmQgcmVnLW5hbWVzCj4gdG9vKS4KVGhhbmsgeW91IGZvciB5
b3VyIGNvbW1lbnRzLiBJIHdpbGwgZml4IGl0IG5leHQgdmVyc2lvbi4KPiAKPj4gKwkJCXJlZy1u
YW1lcyA9ICJzdGQiLCAiaWNlIjsKPj4gKwo+PiArCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDI2
NSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPj4gKwo+PiArCQkJY2xvY2tzID0gPCZnY2MgR0NDX1VG
U19QSFlfQVhJX0NMSz4sCj4+ICsJCQkJIDwmZ2NjIEdDQ19BR0dSRV9VRlNfUEhZX0FYSV9DTEs+
LAo+PiArCQkJCSA8JmdjYyBHQ0NfVUZTX1BIWV9BSEJfQ0xLPiwKPj4gKwkJCQkgPCZnY2MgR0ND
X1VGU19QSFlfVU5JUFJPX0NPUkVfQ0xLPiwKPj4gKwkJCQkgPCZnY2MgR0NDX1VGU19QSFlfSUNF
X0NPUkVfQ0xLPiwKPj4gKwkJCQkgPCZycG1oY2MgUlBNSF9DWE9fQ0xLPiwKPj4gKwkJCQkgPCZn
Y2MgR0NDX1VGU19QSFlfVFhfU1lNQk9MXzBfQ0xLPiwKPj4gKwkJCQkgPCZnY2MgR0NDX1VGU19Q
SFlfUlhfU1lNQk9MXzBfQ0xLPjsKPj4gKwkJCWNsb2NrLW5hbWVzID0gImNvcmVfY2xrIiwKPj4g
KwkJCQkgICAgICAiYnVzX2FnZ3JfY2xrIiwKPj4gKwkJCQkgICAgICAiaWZhY2VfY2xrIiwKPj4g
KwkJCQkgICAgICAiY29yZV9jbGtfdW5pcHJvIiwKPj4gKwkJCQkJICAiY29yZV9jbGtfaWNlIiwK
PiAKPiBXcm9uZyBpbmRlbnRhdGlvbgo+IAo+IE90aGVyIHRoYW4gdGhhdCBMR1RNLgo+IApUaGFu
ayB5b3UgZm9yIHlvdXIgY29tbWVudHMuIEkgd2lsbCBmaXggaXQgbmV4dCB2ZXJzaW9uLgo+IAo+
PiArCQkJCSAgICAgICJyZWZfY2xrIiwKPj4gKwkJCQkgICAgICAidHhfbGFuZTBfc3luY19jbGsi
LAo+PiArCQkJCSAgICAgICJyeF9sYW5lMF9zeW5jX2NsayI7Cj4+ICsKPj4gKwkJCXJlc2V0cyA9
IDwmZ2NjIEdDQ19VRlNfUEhZX0JDUj47Cj4+ICsJCQlyZXNldC1uYW1lcyA9ICJyc3QiOwo+PiAr
Cj4+ICsJCQlvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZ1ZnNfb3BwX3RhYmxlPjsKPj4gKwkJCWlu
dGVyY29ubmVjdHMgPSA8JmFnZ3JlMV9ub2MgTUFTVEVSX1VGU19NRU0gUUNPTV9JQ0NfVEFHX0FM
V0FZUwo+PiArCQkJCQkgJm1jX3ZpcnQgU0xBVkVfRUJJMSBRQ09NX0lDQ19UQUdfQUxXQVlTPiwK
Pj4gKwkJCQkJPCZnZW1fbm9jIE1BU1RFUl9BUFBTU19QUk9DIFFDT01fSUNDX1RBR19BTFdBWVMK
Pj4gKwkJCQkJICZjb25maWdfbm9jIFNMQVZFX1VGU19NRU1fQ0ZHIFFDT01fSUNDX1RBR19BTFdB
WVM+Owo+PiArCQkJaW50ZXJjb25uZWN0LW5hbWVzID0gInVmcy1kZHIiLAo+PiArCQkJCQkgICAg
ICJjcHUtdWZzIjsKPj4gKwo+PiArCQkJcG93ZXItZG9tYWlucyA9IDwmZ2NjIFVGU19QSFlfR0RT
Qz47Cj4+ICsJCQlyZXF1aXJlZC1vcHBzID0gPCZycG1ocGRfb3BwX25vbT47Cj4+ICsKPj4gKwkJ
CWlvbW11cyA9IDwmYXBwc19zbW11IDB4MzAwIDB4MD47Cj4+ICsJCQlkbWEtY29oZXJlbnQ7Cj4+
ICsKPj4gKwkJCWxhbmVzLXBlci1kaXJlY3Rpb24gPSA8MT47Cj4+ICsKPj4gKwkJCXBoeXMgPSA8
JnVmc19tZW1fcGh5PjsKPj4gKwkJCXBoeS1uYW1lcyA9ICJ1ZnNwaHkiOwo+PiArCj4+ICsJCQkj
cmVzZXQtY2VsbHMgPSA8MT47Cj4+ICsKPj4gKwkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+ICsK
Pj4gKwkJCXVmc19vcHBfdGFibGU6IG9wcC10YWJsZSB7Cj4+ICsJCQkJY29tcGF0aWJsZSA9ICJv
cGVyYXRpbmctcG9pbnRzLXYyIjsKPj4gKwo+PiArCQkJCW9wcC01MDAwMDAwMCB7Cj4+ICsJCQkJ
CW9wcC1oeiA9IC9iaXRzLyA2NCA8NTAwMDAwMDA+LAo+PiArCQkJCQkJIC9iaXRzLyA2NCA8MD4s
Cj4+ICsJCQkJCQkgL2JpdHMvIDY0IDwwPiwKPj4gKwkJCQkJCSAvYml0cy8gNjQgPDM3NTAwMDAw
PiwKPj4gKwkJCQkJCSAvYml0cy8gNjQgPDc1MDAwMDAwPiwKPj4gKwkJCQkJCSAvYml0cy8gNjQg
PDA+LAo+PiArCQkJCQkJIC9iaXRzLyA2NCA8MD4sCj4+ICsJCQkJCQkgL2JpdHMvIDY0IDwwPjsK
Pj4gKwkJCQkJcmVxdWlyZWQtb3BwcyA9IDwmcnBtaHBkX29wcF9sb3dfc3ZzPjsKPj4gKwkJCQl9
Owo+PiArCj4+ICsJCQkJb3BwLTEwMDAwMDAwMCB7Cj4+ICsJCQkJCW9wcC1oeiA9IC9iaXRzLyA2
NCA8MTAwMDAwMDAwPiwKPj4gKwkJCQkJCSAvYml0cy8gNjQgPDA+LAo+PiArCQkJCQkJIC9iaXRz
LyA2NCA8MD4sCj4+ICsJCQkJCQkgL2JpdHMvIDY0IDw3NTAwMDAwMD4sCj4+ICsJCQkJCQkgL2Jp
dHMvIDY0IDwxNTAwMDAwMDA+LAo+PiArCQkJCQkJIC9iaXRzLyA2NCA8MD4sCj4+ICsJCQkJCQkg
L2JpdHMvIDY0IDwwPiwKPj4gKwkJCQkJCSAvYml0cy8gNjQgPDA+Owo+PiArCQkJCQlyZXF1aXJl
ZC1vcHBzID0gPCZycG1ocGRfb3BwX3N2cz47Cj4+ICsJCQkJfTsKPj4gKwo+PiArCQkJCW9wcC0y
MDAwMDAwMDAgewo+PiArCQkJCQlvcHAtaHogPSAvYml0cy8gNjQgPDIwMDAwMDAwMD4sCj4+ICsJ
CQkJCQkgL2JpdHMvIDY0IDwwPiwKPj4gKwkJCQkJCSAvYml0cy8gNjQgPDA+LAo+PiArCQkJCQkJ
IC9iaXRzLyA2NCA8MTUwMDAwMDAwPiwKPj4gKwkJCQkJCSAvYml0cy8gNjQgPDMwMDAwMDAwMD4s
Cj4+ICsJCQkJCQkgL2JpdHMvIDY0IDwwPiwKPj4gKwkJCQkJCSAvYml0cy8gNjQgPDA+LAo+PiAr
CQkJCQkJIC9iaXRzLyA2NCA8MD47Cj4+ICsJCQkJCXJlcXVpcmVkLW9wcHMgPSA8JnJwbWhwZF9v
cHBfbm9tPjsKPj4gKwkJCQl9Owo+PiArCQkJfTsKPj4gKwkJfTsKPj4gKwo+PiArCQl1ZnNfbWVt
X3BoeTogcGh5QDFkODcwMDAgewo+PiArCQkJY29tcGF0aWJsZSA9ICJxY29tLHFjczYxNS1xbXAt
dWZzLXBoeSIsICJxY29tLHNtNjExNS1xbXAtdWZzLXBoeSI7Cj4+ICsJCQlyZWcgPSA8MHgwIDB4
MDFkODcwMDAgMHgwIDB4ZTAwPjsKPj4gKwkJCWNsb2NrcyA9IDwmcnBtaGNjIFJQTUhfQ1hPX0NM
Sz4sCj4+ICsJCQkJIDwmZ2NjIEdDQ19VRlNfUEhZX1BIWV9BVVhfQ0xLPiwKPj4gKwkJCQkgPCZn
Y2MgR0NDX1VGU19NRU1fQ0xLUkVGX0NMSz47Cj4+ICsJCQljbG9jay1uYW1lcyA9ICJyZWYiLAo+
PiArCQkJCSAgICAgICJyZWZfYXV4IiwKPj4gKwkJCQkgICAgICAicXJlZiI7Cj4+ICsKPj4gKwkJ
CXBvd2VyLWRvbWFpbnMgPSA8JmdjYyBVRlNfUEhZX0dEU0M+Owo+PiArCj4+ICsJCQlyZXNldHMg
PSA8JnVmc19tZW1faGMgMD47Cj4+ICsJCQlyZXNldC1uYW1lcyA9ICJ1ZnNwaHkiOwo+PiArCj4+
ICsJCQkjY2xvY2stY2VsbHMgPSA8MT47Cj4+ICsJCQkjcGh5LWNlbGxzID0gPDA+Owo+PiArCj4+
ICsJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+PiArCQl9Owo+PiArCj4+ICAgCQl0Y3NyX211dGV4
OiBod2xvY2tAMWY0MDAwMCB7Cj4+ICAgCQkJY29tcGF0aWJsZSA9ICJxY29tLHRjc3ItbXV0ZXgi
Owo+PiAgIAkJCXJlZyA9IDwweDAgMHgwMWY0MDAwMCAweDAgMHgyMDAwMD47Cj4+IC0tIAo+PiAy
LjM0LjEKPj4KPj4KPj4gLS0gCj4+IGxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKPj4gbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cj4gCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
