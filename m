Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EF9BC02196
	for <linux-phy@archiver.kernel.org>; Tue,  4 Feb 2025 03:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ExK+kLbaxyXLsFAyZG63mZJ/wf/8KzX99N7U8bjIFA0=; b=2AbE+zAJcF6GLZ
	yfghiFxIxB4Qp2V6eok4McOUmj96uDHq7tKIAIssPno86Fymt8ZzL7GzLL8PnhFuK7BnR26DBe90Y
	6aQa1Jb92gN3urZ5Efd+JbXpmDTkO5IilLF+Iu4e27QOC2mi5QBUVAvP+gLcYFSGcG0PolNUxgrGy
	uP8V100Gj6nX5xO/8d87jSvOx99WX4wZh3q3evZvYjBn98VL1R42DIcK5gUI6Oh6uK4/Xjd5velil
	mbBOFbDfNNR1PMXjrsNTyQ+w+zBrTthIwNaL/6SDFWN29TwPyBZxGWBFtYQK4tzJlxnUe0akLRLCP
	7EMS0pknrXrQY9Wmi9/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tf9fw-0000000HAig-05il;
	Tue, 04 Feb 2025 03:32:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tf9fI-0000000HAee-0Ke2;
	Tue, 04 Feb 2025 03:31:57 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5141boqj005319;
	Tue, 4 Feb 2025 03:31:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SYGs+oOrt9/tkOKhBTiYPbbc8sioi3ceD+boUWkOygM=; b=hJv0ULNXz/d7ll+t
	XlpXdfCTKy00n2/cr2bu4N6iJ+aBwN31L/XOtgolbTZnK/J59To8bIpU7Y0Q+Fw+
	Kagoarpf3WJjYto1ATepyOHjPqq49/YHZJj4AVCz8p1cYxAKjnLaV0LGLtoutvug
	s97S9wDJKhjObIsU/Xwj4txm7sVasd/6RpRkxEa24r9Yso+zDUhjjo7S+0uv+9Aa
	dwaZf85b6UyzGB6a7F24xmUSR0WQEDi9j61u0KzJofB5xkEXPmgjsOVXkQQV43N9
	1F2VTMfz3Dz0S/XLz/RBJI1Y0kaCMw5CjGGFL/ju2xTK9RjxbYMz7tmGnYVKEja8
	aYHbeg==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44k9cn05wr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 04 Feb 2025 03:31:41 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 5143Ve21017734
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 4 Feb 2025 03:31:40 GMT
Received: from [10.110.45.144] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 3 Feb 2025
 19:31:33 -0800
Message-ID: <0ec95cca-45ed-4805-8ebd-03563d55627e@quicinc.com>
Date: Mon, 3 Feb 2025 19:31:29 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/7] phy: qcom: qmp-combo: Add new PHY sequences for
 SM8750
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
 <20250113-sm8750_usb_master-v1-4-09afe1dc2524@quicinc.com>
 <tcm2hn7rpzaazntp5r7ag466ynacexnke43e6ypm4q5mrrlkdb@nem3gzib2l2v>
Content-Language: en-US
From: Wesley Cheng <quic_wcheng@quicinc.com>
In-Reply-To: <tcm2hn7rpzaazntp5r7ag466ynacexnke43e6ypm4q5mrrlkdb@nem3gzib2l2v>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 6CZ12yG9laqlC6280Q6qRDyqXtceBvnD
X-Proofpoint-ORIG-GUID: 6CZ12yG9laqlC6280Q6qRDyqXtceBvnD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-04_01,2025-01-31_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 mlxscore=0
 spamscore=0 bulkscore=0 mlxlogscore=999 clxscore=1015 phishscore=0
 suspectscore=0 priorityscore=1501 adultscore=0 malwarescore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502040025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_193156_123646_6F3C6A4D 
X-CRM114-Status: GOOD (  16.24  )
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

Ck9uIDEvMTQvMjAyNSAyOjIzIEFNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIE1vbiwg
SmFuIDEzLCAyMDI1IGF0IDAxOjUyOjEwUE0gLTA4MDAsIE1lbG9keSBPbHZlcmEgd3JvdGU6Cj4+
IEZyb206IFdlc2xleSBDaGVuZyA8cXVpY193Y2hlbmdAcXVpY2luYy5jb20+Cj4+Cj4+IEFkZCBu
ZXcgcmVnaXN0ZXIgb2Zmc2V0cyBhbmQgUEhZIHZhbHVlcyBmb3IgU004NzUwLiBTb21lIG9mIHRo
ZSBwcmV2aW91cwo+PiBkZWZpbml0aW9ucyBjYW4gYmUgbGV2ZXJhZ2VkIGZyb20gb2xkZXIgUEhZ
IHZlcnNpb25zIGFzIG9mZnNldHMgd2l0aGluCj4+IHJlZ2lzdGVycyBoYXZlIG5vdCBjaGFuZ2Vk
LiBUaGlzIGFsc28gdXBkYXRlcyB0aGUgUEhZIHNlcXVlbmNlIHRoYXQgaXMKPj4gcmVjb21tZW5k
ZWQgYWZ0ZXIgcnVubmluZyBoYXJkd2FyZSBjaGFyYWN0ZXJpemF0aW9uLgo+Pgo+PiBTaWduZWQt
b2ZmLWJ5OiBXZXNsZXkgQ2hlbmcgPHF1aWNfd2NoZW5nQHF1aWNpbmMuY29tPgo+PiBTaWduZWQt
b2ZmLWJ5OiBNZWxvZHkgT2x2ZXJhIDxxdWljX21vbHZlcmFAcXVpY2luYy5jb20+Cj4+IC0tLQo+
PiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMgfCAxOTggKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrCj4+ICAxIGZpbGUgY2hhbmdlZCwgMTk4IGluc2VydGlv
bnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFt
cC1jb21iby5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMKPj4g
aW5kZXggYjA5ZmEwMGU5ZmU3ZGI4ZDk3YjcxNzllZTE1ZDNmMDdmZTU3OGIwYy4uODIzYTYwMDI5
ZWE2YWNiZDFmMGY4YzdkMjdhYWE1OGRlMzllZDc1OCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9w
aHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMKPj4gKysrIGIvZHJpdmVycy9waHkvcXVh
bGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMKPj4gQEAgLTE0NzEsNiArMTQ3MSwxMzkgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2luaXRfdGJsIHgxZTgwMTAwX3VzYjQzZHBfcGNzX3Ri
bFtdID0gewo+PiAgCVFNUF9QSFlfSU5JVF9DRkcoUVBIWV9WNl9ONF9QQ1NfRVFfQ09ORklHNSwg
MHgxMCksCj4+ICB9Owo+PiAgCj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9waHlfaW5pdF90
Ymwgc204NzUwX3VzYjNfc2VyZGVzX3RibFtdID0gewo+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNF
UkRFU19WNl9DT01fU1NDX1NURVBfU0laRTFfTU9ERTEsIDB4YzApLAo+PiArCVFNUF9QSFlfSU5J
VF9DRkcoUVNFUkRFU19WNl9DT01fU1NDX1NURVBfU0laRTJfTU9ERTEsIDB4MDEpLAo+PiArCVFN
UF9QSFlfSU5JVF9DRkcoUVNFUkRFU19WNl9DT01fQ1BfQ1RSTF9NT0RFMSwgMHgwMiksCj4+ICsJ
UU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X0NPTV9QTExfUkNUUkxfTU9ERTEsIDB4MTYpLAo+
PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19WNl9DT01fUExMX0NDVFJMX01PREUxLCAweDM2
KSwKPj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjZfQ09NX0NPUkVDTEtfRElWX01PREUx
LCAweDA0KSwKPj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjZfQ09NX0xPQ0tfQ01QMV9N
T0RFMSwgMHgxNiksCj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X0NPTV9MT0NLX0NN
UDJfTU9ERTEsIDB4NDEpLAo+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19WNl9DT01fREVD
X1NUQVJUX01PREUxLCAweDQxKSwKPj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjZfQ09N
X0RFQ19TVEFSVF9NU0JfTU9ERTEsIDB4MDApLAo+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRF
U19WNl9DT01fRElWX0ZSQUNfU1RBUlQxX01PREUxLCAweDU1KSwKPj4gKwlRTVBfUEhZX0lOSVRf
Q0ZHKFFTRVJERVNfVjZfQ09NX0RJVl9GUkFDX1NUQVJUMl9NT0RFMSwgMHg3NSksCj4+ICsJUU1Q
X1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X0NPTV9ESVZfRlJBQ19TVEFSVDNfTU9ERTEsIDB4MDEp
LAo+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19WNl9DT01fSFNDTEtfU0VMXzEsIDB4MDEp
LAo+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19WNl9DT01fVkNPX1RVTkUxX01PREUxLCAw
eDI1KSwKPj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjZfQ09NX1ZDT19UVU5FMl9NT0RF
MSwgMHgwMiksCj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X0NPTV9CSU5fVkNPQ0FM
X0NNUF9DT0RFMV9NT0RFMSwgMHg1YyksCj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2
X0NPTV9CSU5fVkNPQ0FMX0NNUF9DT0RFMl9NT0RFMSwgMHgwZiksCj4+ICsJUU1QX1BIWV9JTklU
X0NGRyhRU0VSREVTX1Y2X0NPTV9CSU5fVkNPQ0FMX0NNUF9DT0RFMV9NT0RFMCwgMHg1YyksCj4+
ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X0NPTV9CSU5fVkNPQ0FMX0NNUF9DT0RFMl9N
T0RFMCwgMHgwZiksCj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X0NPTV9TU0NfU1RF
UF9TSVpFMV9NT0RFMCwgMHhjMCksCj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X0NP
TV9TU0NfU1RFUF9TSVpFMl9NT0RFMCwgMHgwMSksCj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VS
REVTX1Y2X0NPTV9DUF9DVFJMX01PREUwLCAweDAyKSwKPj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFT
RVJERVNfVjZfQ09NX1BMTF9SQ1RSTF9NT0RFMCwgMHgxNiksCj4+ICsJUU1QX1BIWV9JTklUX0NG
RyhRU0VSREVTX1Y2X0NPTV9QTExfQ0NUUkxfTU9ERTAsIDB4MzYpLAo+PiArCVFNUF9QSFlfSU5J
VF9DRkcoUVNFUkRFU19WNl9DT01fTE9DS19DTVAxX01PREUwLCAweDA4KSwKPj4gKwlRTVBfUEhZ
X0lOSVRfQ0ZHKFFTRVJERVNfVjZfQ09NX0xPQ0tfQ01QMl9NT0RFMCwgMHgxYSksCj4+ICsJUU1Q
X1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X0NPTV9ERUNfU1RBUlRfTU9ERTAsIDB4NDEpLAo+PiAr
CVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19WNl9DT01fREVDX1NUQVJUX01TQl9NT0RFMCwgMHgw
MCksCj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X0NPTV9ESVZfRlJBQ19TVEFSVDFf
TU9ERTAsIDB4NTUpLAo+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19WNl9DT01fRElWX0ZS
QUNfU1RBUlQyX01PREUwLCAweDc1KSwKPj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjZf
Q09NX0RJVl9GUkFDX1NUQVJUM19NT0RFMCwgMHgwMSksCj4+ICsJUU1QX1BIWV9JTklUX0NGRyhR
U0VSREVTX1Y2X0NPTV9WQ09fVFVORTFfTU9ERTAsIDB4MjUpLAo+PiArCVFNUF9QSFlfSU5JVF9D
RkcoUVNFUkRFU19WNl9DT01fVkNPX1RVTkUyX01PREUwLCAweDAyKSwKPj4gKwlRTVBfUEhZX0lO
SVRfQ0ZHKFFTRVJERVNfVjZfQ09NX0JHX1RJTUVSLCAweDBhKSwKPj4gKwlRTVBfUEhZX0lOSVRf
Q0ZHKFFTRVJERVNfVjZfQ09NX1NTQ19FTl9DRU5URVIsIDB4MDEpLAo+PiArCVFNUF9QSFlfSU5J
VF9DRkcoUVNFUkRFU19WNl9DT01fU1NDX1BFUjEsIDB4NjIpLAo+PiArCVFNUF9QSFlfSU5JVF9D
RkcoUVNFUkRFU19WNl9DT01fU1NDX1BFUjIsIDB4MDIpLAo+PiArCVFNUF9QSFlfSU5JVF9DRkco
UVNFUkRFU19WNl9DT01fU1lTQ0xLX0JVRl9FTkFCTEUsIDB4MGMpLAo+PiArCVFNUF9QSFlfSU5J
VF9DRkcoUVNFUkRFU19WNl9DT01fU1lTQ0xLX0VOX1NFTCwgMHgxYSksCj4+ICsJUU1QX1BIWV9J
TklUX0NGRyhRU0VSREVTX1Y2X0NPTV9MT0NLX0NNUF9DRkcsIDB4MTQpLAo+PiArCVFNUF9QSFlf
SU5JVF9DRkcoUVNFUkRFU19WNl9DT01fVkNPX1RVTkVfTUFQLCAweDA0KSwKPj4gKwlRTVBfUEhZ
X0lOSVRfQ0ZHKFFTRVJERVNfVjZfQ09NX0NPUkVfQ0xLX0VOLCAweDIwKSwKPj4gKwlRTVBfUEhZ
X0lOSVRfQ0ZHKFFTRVJERVNfVjZfQ09NX0NNTl9DT05GSUdfMSwgMHgxNiksCj4+ICsJUU1QX1BI
WV9JTklUX0NGRyhRU0VSREVTX1Y2X0NPTV9BVVRPX0dBSU5fQURKX0NUUkxfMSwgMHhiNiksCj4+
ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X0NPTV9BVVRPX0dBSU5fQURKX0NUUkxfMiwg
MHg0YSksCj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X0NPTV9BVVRPX0dBSU5fQURK
X0NUUkxfMywgMHgzNiksCj4gVGhlIG9ubHkgZGlmZmVyZW5jZSBmcm9tIHNtODU1MF91c2IzX3Nl
cmRlc190YmwsIGl0IGhhcyAweDM3IGhlcmUuCk5vdCBzdXJlIHdoYXQgdGhlIHN1Z2dlc3Rpb24g
aXMgaGVyZS7CoCBJIHRoaW5rIGluIGdlbmVyYWwgSSB3b3VsZCB3YW50IHRvIGhhdmUgYSBzZXBh
cmF0ZSB0YWJsZSBmb3IgZWFjaCBjaGlwc2V0LCBjb25zaWRlcmluZyB0aGF0IHNldHRpbmdzIG1h
eSBjaGFuZ2UvZXZvbHZlLsKgIEN1cnJlbnRseSwgaWYgeW91J3JlIGFza2luZyB0byByZS11c2Ug
dGhlIHNtODU1MCB0YWJsZSB0byBhdm9pZCByZS1kZWZpbmluZyB0aGlzIHNlcXVlbmNlLCBJIHRo
aW5rIGl0J2xsIGJlIGNvbmZ1c2luZyB0byBmb2xrcyB3aGVuIHRoZXkgcmVmZXIgdG8gdGhpcyBT
T0MncyBQSFkgc2V0dGluZ3MuCj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X0NPTV9B
RERJVElPTkFMX01JU0MsIDB4MGMpLAo+PiArfTsKPj4gKwo+IFsuLi5dCj4KPj4gQEAgLTE3ODEs
NiArMTkxNCwyMiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9jb21ib19vZmZzZXRzIHFtcF9j
b21ib19vZmZzZXRzX3Y1ID0gewo+PiAgCS5kcF9kcF9waHkJPSAweDIyMDAsCj4+ICB9Owo+PiAg
Cj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9jb21ib19vZmZzZXRzIHFtcF9jb21ib19vZmZz
ZXRzX3Y4ID0gewo+IFdoeSBpcyBpdCB2OD8gSXMgdGhlIGFjdHVhbCBQSFkgYWxzbyB2OCByYXRo
ZXIgdGhhbiB2Nj8KWWVzLCBhY3R1YWwgUU1QIFBIWSBtYWpvciByZXYgaXMgdjguwqAgSWYgd2Ug
d2FudCB0bywgSSBjYW4gZ2VuZXJhdGUgYSBzZXBhcmF0ZSB2OCBiYXNlZCBoZWFkZXIgZmlsZXMg
aWYgdGhhdCBpcyBiZXR0ZXIuwqAgSG93ZXZlciwgbW9zdCBvZiB0aGUgb2Zmc2V0cyBmb3IgdGhl
IHJlZ2lzdGVycyB3ZSdyZSB0YWtpbmcgYWR2YW50YWdlIG9mIGluIHRoZSBhY3R1YWwgZHJpdmVy
IGhhcyB0aGUgc2FtZSBvZmZzZXRzIGFzIHByZXZpb3VzIHJldmlzaW9ucy4KClRoYW5rcwoKV2Vz
bGV5IENoZW5nCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
