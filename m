Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 426F2C021B3
	for <linux-phy@archiver.kernel.org>; Sat, 22 Feb 2025 02:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=URzDQ4IVMEYyxhQSCrALe8cXYB1EAEOiImEyLaNRecQ=; b=yiHL2dxJI+5gcA
	IUJV4m3Sxx3GNCKHJQnMq3udxpAxQ/KpWmGLA160pUJIfj4XWPIx6nlbwyuPL/zK+baeV20djirUi
	2dxdjT8W12Uq/zf3HngP5+7po0zUIJ7KSON4TR90NWjqsj+K74Qs+W7WnxKqBUk6TEh6Ya1qhK9u5
	3FqJcTcfacUKHlV3LMON//bizCk6IW2ntjHueqJDwvdTx+Uan86b7YoE41S1gIs6r16PZYexD895d
	o8iE2+lzjhASti8/Cl/+76qixmOX+26EnCOyUbsLlw5xAwJ340hLcqAX8NJgVcMfBOt02i8tLFPYk
	dYar8GdEPfJ7k2TBYyjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlfUm-00000007MeA-06ft;
	Sat, 22 Feb 2025 02:44:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlfUj-00000007Mdj-0U4m;
	Sat, 22 Feb 2025 02:43:58 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51LENIcO018624;
	Sat, 22 Feb 2025 02:43:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/5JXNaGoZMNtbXMEENPAY7OCDcNRrfJyKX+EmaXnets=; b=kdUueTMtgroxZBFf
	fTmXhXHh4drEB6LM6bnd9XE0bIaCa1QlOFX6g0HlmncYp/VzJkv4lhcUxinZplh2
	vtyU1PPu5ABr4FJwtMl+U/OJT75qkiuFq55hRoGCnp4z+QH6Om0TUBY3oxNxDn0o
	X/jdUS+HaWUeJBxE4K5+0ImWvTt8TbzF2qNRWK8OD41DfW9DHK5QAXcq6UMhYtTu
	6YX5sU6kL1r50IgJN7KI+1HuWqEwJod70FXt5oA/loejau9yeSLbGZdO8Xeq+HlW
	e0+IsTP7wKs7z3qZCPEJO2YS/I25eUv+QgGI//Nlf/+tNeGp6+3gSjIkzcke6SPi
	LwFm1A==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44xm3rk1j2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 22 Feb 2025 02:43:47 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 51M2hkmK029246
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 22 Feb 2025 02:43:46 GMT
Received: from [10.71.115.190] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 21 Feb
 2025 18:43:45 -0800
Message-ID: <8c48de90-3dda-40c8-8f7a-01102f7360a3@quicinc.com>
Date: Fri, 21 Feb 2025 18:43:45 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/7] phy: qcom: qmp-combo: Add new PHY sequences for
 SM8750
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel
	<p.zabel@pengutronix.de>,
        Catalin Marinas <catalin.marinas@arm.com>,
        "Will
 Deacon" <will@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        "Konrad
 Dybcio" <konradybcio@kernel.org>,
        Satya Durga Srinivasu Prabhala
	<quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
References: <20250113-sm8750_usb_master-v1-0-09afe1dc2524@quicinc.com>
 <20250113-sm8750_usb_master-v1-4-09afe1dc2524@quicinc.com>
 <tcm2hn7rpzaazntp5r7ag466ynacexnke43e6ypm4q5mrrlkdb@nem3gzib2l2v>
 <0ec95cca-45ed-4805-8ebd-03563d55627e@quicinc.com>
 <ofaioilki5qxdq2x5fpbpuk6mid6i6slpyqzwol4e2s4cwdwsf@lgpqy2zil4j6>
Content-Language: en-US
From: Wesley Cheng <quic_wcheng@quicinc.com>
In-Reply-To: <ofaioilki5qxdq2x5fpbpuk6mid6i6slpyqzwol4e2s4cwdwsf@lgpqy2zil4j6>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: WRhjRbagWZ2vMdPfyVMbTuz3MG-98Xjh
X-Proofpoint-GUID: WRhjRbagWZ2vMdPfyVMbTuz3MG-98Xjh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-21_09,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxscore=0
 suspectscore=0 mlxlogscore=999 phishscore=0 bulkscore=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502220020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250221_184357_279425_CFBB12F4 
X-CRM114-Status: GOOD (  22.89  )
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

CgpPbiAyLzQvMjAyNSA2OjU5IEFNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIE1vbiwg
RmViIDAzLCAyMDI1IGF0IDA3OjMxOjI5UE0gLTA4MDAsIFdlc2xleSBDaGVuZyB3cm90ZToKPj4K
Pj4gT24gMS8xNC8yMDI1IDI6MjMgQU0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+PiBPbiBN
b24sIEphbiAxMywgMjAyNSBhdCAwMTo1MjoxMFBNIC0wODAwLCBNZWxvZHkgT2x2ZXJhIHdyb3Rl
Ogo+Pj4+IEZyb206IFdlc2xleSBDaGVuZyA8cXVpY193Y2hlbmdAcXVpY2luYy5jb20+Cj4+Pj4K
Pj4+PiBBZGQgbmV3IHJlZ2lzdGVyIG9mZnNldHMgYW5kIFBIWSB2YWx1ZXMgZm9yIFNNODc1MC4g
U29tZSBvZiB0aGUgcHJldmlvdXMKPj4+PiBkZWZpbml0aW9ucyBjYW4gYmUgbGV2ZXJhZ2VkIGZy
b20gb2xkZXIgUEhZIHZlcnNpb25zIGFzIG9mZnNldHMgd2l0aGluCj4+Pj4gcmVnaXN0ZXJzIGhh
dmUgbm90IGNoYW5nZWQuIFRoaXMgYWxzbyB1cGRhdGVzIHRoZSBQSFkgc2VxdWVuY2UgdGhhdCBp
cwo+Pj4+IHJlY29tbWVuZGVkIGFmdGVyIHJ1bm5pbmcgaGFyZHdhcmUgY2hhcmFjdGVyaXphdGlv
bi4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IFdlc2xleSBDaGVuZyA8cXVpY193Y2hlbmdAcXVp
Y2luYy5jb20+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogTWVsb2R5IE9sdmVyYSA8cXVpY19tb2x2ZXJh
QHF1aWNpbmMuY29tPgo+Pj4+IC0tLQo+Pj4+ICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1xbXAtY29tYm8uYyB8IDE5OCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4+PiAg
MSBmaWxlIGNoYW5nZWQsIDE5OCBpbnNlcnRpb25zKCspCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMgYi9kcml2ZXJzL3BoeS9x
dWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYwo+Pj4+IGluZGV4IGIwOWZhMDBlOWZlN2RiOGQ5
N2I3MTc5ZWUxNWQzZjA3ZmU1NzhiMGMuLjgyM2E2MDAyOWVhNmFjYmQxZjBmOGM3ZDI3YWFhNThk
ZTM5ZWQ3NTggMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20t
cW1wLWNvbWJvLmMKPj4+PiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAt
Y29tYm8uYwo+Pj4+IEBAIC0xNDcxLDYgKzE0NzEsMTM5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
cW1wX3BoeV9pbml0X3RibCB4MWU4MDEwMF91c2I0M2RwX3Bjc190YmxbXSA9IHsKPj4+PiAgCVFN
UF9QSFlfSU5JVF9DRkcoUVBIWV9WNl9ONF9QQ1NfRVFfQ09ORklHNSwgMHgxMCksCj4+Pj4gIH07
Cj4+Pj4gIAo+Pj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9waHlfaW5pdF90Ymwgc204NzUw
X3VzYjNfc2VyZGVzX3RibFtdID0gewo+Pj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2
X0NPTV9TU0NfU1RFUF9TSVpFMV9NT0RFMSwgMHhjMCksCj4+Pj4gKwlRTVBfUEhZX0lOSVRfQ0ZH
KFFTRVJERVNfVjZfQ09NX1NTQ19TVEVQX1NJWkUyX01PREUxLCAweDAxKSwKPj4+PiArCVFNUF9Q
SFlfSU5JVF9DRkcoUVNFUkRFU19WNl9DT01fQ1BfQ1RSTF9NT0RFMSwgMHgwMiksCj4+Pj4gKwlR
TVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjZfQ09NX1BMTF9SQ1RSTF9NT0RFMSwgMHgxNiksCj4+
Pj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjZfQ09NX1BMTF9DQ1RSTF9NT0RFMSwgMHgz
NiksCj4+Pj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjZfQ09NX0NPUkVDTEtfRElWX01P
REUxLCAweDA0KSwKPj4+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19WNl9DT01fTE9DS19D
TVAxX01PREUxLCAweDE2KSwKPj4+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19WNl9DT01f
TE9DS19DTVAyX01PREUxLCAweDQxKSwKPj4+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19W
Nl9DT01fREVDX1NUQVJUX01PREUxLCAweDQxKSwKPj4+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNF
UkRFU19WNl9DT01fREVDX1NUQVJUX01TQl9NT0RFMSwgMHgwMCksCj4+Pj4gKwlRTVBfUEhZX0lO
SVRfQ0ZHKFFTRVJERVNfVjZfQ09NX0RJVl9GUkFDX1NUQVJUMV9NT0RFMSwgMHg1NSksCj4+Pj4g
KwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjZfQ09NX0RJVl9GUkFDX1NUQVJUMl9NT0RFMSwg
MHg3NSksCj4+Pj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjZfQ09NX0RJVl9GUkFDX1NU
QVJUM19NT0RFMSwgMHgwMSksCj4+Pj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjZfQ09N
X0hTQ0xLX1NFTF8xLCAweDAxKSwKPj4+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19WNl9D
T01fVkNPX1RVTkUxX01PREUxLCAweDI1KSwKPj4+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRF
U19WNl9DT01fVkNPX1RVTkUyX01PREUxLCAweDAyKSwKPj4+PiArCVFNUF9QSFlfSU5JVF9DRkco
UVNFUkRFU19WNl9DT01fQklOX1ZDT0NBTF9DTVBfQ09ERTFfTU9ERTEsIDB4NWMpLAo+Pj4+ICsJ
UU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X0NPTV9CSU5fVkNPQ0FMX0NNUF9DT0RFMl9NT0RF
MSwgMHgwZiksCj4+Pj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjZfQ09NX0JJTl9WQ09D
QUxfQ01QX0NPREUxX01PREUwLCAweDVjKSwKPj4+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRF
U19WNl9DT01fQklOX1ZDT0NBTF9DTVBfQ09ERTJfTU9ERTAsIDB4MGYpLAo+Pj4+ICsJUU1QX1BI
WV9JTklUX0NGRyhRU0VSREVTX1Y2X0NPTV9TU0NfU1RFUF9TSVpFMV9NT0RFMCwgMHhjMCksCj4+
Pj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjZfQ09NX1NTQ19TVEVQX1NJWkUyX01PREUw
LCAweDAxKSwKPj4+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19WNl9DT01fQ1BfQ1RSTF9N
T0RFMCwgMHgwMiksCj4+Pj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjZfQ09NX1BMTF9S
Q1RSTF9NT0RFMCwgMHgxNiksCj4+Pj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjZfQ09N
X1BMTF9DQ1RSTF9NT0RFMCwgMHgzNiksCj4+Pj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNf
VjZfQ09NX0xPQ0tfQ01QMV9NT0RFMCwgMHgwOCksCj4+Pj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFT
RVJERVNfVjZfQ09NX0xPQ0tfQ01QMl9NT0RFMCwgMHgxYSksCj4+Pj4gKwlRTVBfUEhZX0lOSVRf
Q0ZHKFFTRVJERVNfVjZfQ09NX0RFQ19TVEFSVF9NT0RFMCwgMHg0MSksCj4+Pj4gKwlRTVBfUEhZ
X0lOSVRfQ0ZHKFFTRVJERVNfVjZfQ09NX0RFQ19TVEFSVF9NU0JfTU9ERTAsIDB4MDApLAo+Pj4+
ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X0NPTV9ESVZfRlJBQ19TVEFSVDFfTU9ERTAs
IDB4NTUpLAo+Pj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X0NPTV9ESVZfRlJBQ19T
VEFSVDJfTU9ERTAsIDB4NzUpLAo+Pj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X0NP
TV9ESVZfRlJBQ19TVEFSVDNfTU9ERTAsIDB4MDEpLAo+Pj4+ICsJUU1QX1BIWV9JTklUX0NGRyhR
U0VSREVTX1Y2X0NPTV9WQ09fVFVORTFfTU9ERTAsIDB4MjUpLAo+Pj4+ICsJUU1QX1BIWV9JTklU
X0NGRyhRU0VSREVTX1Y2X0NPTV9WQ09fVFVORTJfTU9ERTAsIDB4MDIpLAo+Pj4+ICsJUU1QX1BI
WV9JTklUX0NGRyhRU0VSREVTX1Y2X0NPTV9CR19USU1FUiwgMHgwYSksCj4+Pj4gKwlRTVBfUEhZ
X0lOSVRfQ0ZHKFFTRVJERVNfVjZfQ09NX1NTQ19FTl9DRU5URVIsIDB4MDEpLAo+Pj4+ICsJUU1Q
X1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X0NPTV9TU0NfUEVSMSwgMHg2MiksCj4+Pj4gKwlRTVBf
UEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjZfQ09NX1NTQ19QRVIyLCAweDAyKSwKPj4+PiArCVFNUF9Q
SFlfSU5JVF9DRkcoUVNFUkRFU19WNl9DT01fU1lTQ0xLX0JVRl9FTkFCTEUsIDB4MGMpLAo+Pj4+
ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X0NPTV9TWVNDTEtfRU5fU0VMLCAweDFhKSwK
Pj4+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19WNl9DT01fTE9DS19DTVBfQ0ZHLCAweDE0
KSwKPj4+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19WNl9DT01fVkNPX1RVTkVfTUFQLCAw
eDA0KSwKPj4+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19WNl9DT01fQ09SRV9DTEtfRU4s
IDB4MjApLAo+Pj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X0NPTV9DTU5fQ09ORklH
XzEsIDB4MTYpLAo+Pj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X0NPTV9BVVRPX0dB
SU5fQURKX0NUUkxfMSwgMHhiNiksCj4+Pj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjZf
Q09NX0FVVE9fR0FJTl9BREpfQ1RSTF8yLCAweDRhKSwKPj4+PiArCVFNUF9QSFlfSU5JVF9DRkco
UVNFUkRFU19WNl9DT01fQVVUT19HQUlOX0FESl9DVFJMXzMsIDB4MzYpLAo+Pj4gVGhlIG9ubHkg
ZGlmZmVyZW5jZSBmcm9tIHNtODU1MF91c2IzX3NlcmRlc190YmwsIGl0IGhhcyAweDM3IGhlcmUu
Cj4+IE5vdCBzdXJlIHdoYXQgdGhlIHN1Z2dlc3Rpb24gaXMgaGVyZS7CoCBJIHRoaW5rIGluIGdl
bmVyYWwgSSB3b3VsZCB3YW50IHRvIGhhdmUgYSBzZXBhcmF0ZSB0YWJsZSBmb3IgZWFjaCBjaGlw
c2V0LCBjb25zaWRlcmluZyB0aGF0IHNldHRpbmdzIG1heSBjaGFuZ2UvZXZvbHZlLsKgIEN1cnJl
bnRseSwgaWYgeW91J3JlIGFza2luZyB0byByZS11c2UgdGhlIHNtODU1MCB0YWJsZSB0byBhdm9p
ZCByZS1kZWZpbmluZyB0aGlzIHNlcXVlbmNlLCBJIHRoaW5rIGl0J2xsIGJlIGNvbmZ1c2luZyB0
byBmb2xrcyB3aGVuIHRoZXkgcmVmZXIgdG8gdGhpcyBTT0MncyBQSFkgc2V0dGluZ3MuCj4gCj4g
Cj4gTm8gc3VnZ2VzdGlvbiwgbWVyZWx5IGEgcXVlc3Rpb24gaWYgYm90aCB0YWJsZXMgYXJlIGNv
cnJlY3Qgb3Igbm90Lgo+IAo+Pj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X0NPTV9B
RERJVElPTkFMX01JU0MsIDB4MGMpLAo+Pj4+ICt9Owo+Pj4+ICsKPj4+IFsuLi5dCj4+Pgo+Pj4+
IEBAIC0xNzgxLDYgKzE5MTQsMjIgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfY29tYm9fb2Zm
c2V0cyBxbXBfY29tYm9fb2Zmc2V0c192NSA9IHsKPj4+PiAgCS5kcF9kcF9waHkJPSAweDIyMDAs
Cj4+Pj4gIH07Cj4+Pj4gIAo+Pj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9jb21ib19vZmZz
ZXRzIHFtcF9jb21ib19vZmZzZXRzX3Y4ID0gewo+Pj4gV2h5IGlzIGl0IHY4PyBJcyB0aGUgYWN0
dWFsIFBIWSBhbHNvIHY4IHJhdGhlciB0aGFuIHY2Pwo+PiBZZXMsIGFjdHVhbCBRTVAgUEhZIG1h
am9yIHJldiBpcyB2OC7CoCBJZiB3ZSB3YW50IHRvLCBJIGNhbiBnZW5lcmF0ZSBhIHNlcGFyYXRl
IHY4IGJhc2VkIGhlYWRlciBmaWxlcyBpZiB0aGF0IGlzIGJldHRlci7CoCBIb3dldmVyLCBtb3N0
IG9mIHRoZSBvZmZzZXRzIGZvciB0aGUgcmVnaXN0ZXJzIHdlJ3JlIHRha2luZyBhZHZhbnRhZ2Ug
b2YgaW4gdGhlIGFjdHVhbCBkcml2ZXIgaGFzIHRoZSBzYW1lIG9mZnNldHMgYXMgcHJldmlvdXMg
cmV2aXNpb25zLgo+IAo+IElmIGFsbCByZWdpc3RlcnMgb2YgYSBwYXJ0aWN1bGFyIHNldCAoUVNF
UkRFLCBUWC9SWCwgUENTKSBhcmUgdGhlIHNhbWUsCj4gdGhlbiBpdCBzaG91bGQgYmUgZmluZSB0
byByZXVzZSB0aG9zZSAoYWx0aG91Z2ggaXQgY3JlYXRlcyBzb21lCj4gcXVlc3Rpb25zKS4gSWYg
dGhlIG1ham9yaXR5IGlzIHRoZSBzYW1lLCBidXQgdGhlcmUgYXJlIHNvbWUgZGlmZmVyZW5jZXMs
Cj4gcGxlYXNlIGNyZWF0ZSBuZXcgaGVhZGVyIGZpbGUuIEl0IGlzIGRlZmluaXRlbHkgZWFzaWVy
IHRvIHZlcmlmeSB0aGF0Cj4gdGhlIHBhdGNoIGlzIGNvcnJlY3QgaWYgZXZlcnkgcGllY2UgaGFz
IHRoZSBzYW1lIHZlcnNpb24uCj4gCgpIaSBEbWl0cnksCgpJIHJldmlld2VkIHRoZSBkaWZmZXJl
bmNlcyBpbiB0aGUgcmVnaXN0ZXIgc2V0cywgYW5kIHRoZXJlIGFyZSBuZXcgYWRkdGlvbnMKaW4g
dGhlIHY4IFFNUCBQSFksIGhvd2V2ZXIsIHdlIGRvIG5vdCB1c2Ugb3IgcHJvZ3JhbSB0aG9zZSBy
ZWdpc3RlcnMgYXMgb2YKbm93LiAgSSBub3RpY2VkIGFzIHdlbGwgaW4gcHJldmlvdXMgdmVyc2lv
bnMsIHdlIG9ubHkgY2FwdHVyZSByZWdpc3RlcgpkZWZpbmVzIGlmIHRoZXkgYXJlIHVzZWQgaW4g
YW55IG9mIHRoZSBpbml0IHNlcXVlbmNlcy4gIEFzc3VtaW5nIHRoaXMKYXBwbGllcyBpbiB0aGlz
IHNjZW5hcmlvLCBpdHMgcHJvYmFibHkgb2sgdG8ga2VlcCB0aGUgdjYgdmVyc2lvbiB1bnRpbCB3
ZQphY3R1YWxseSBuZWVkIHRvIGFkZCBhbnkgc2V0dGluZ3MgZm9yIHRoZSBuZXcgcmVnaXN0ZXJz
LgoKVGhhbmtzCldlc2xleSBDaGVuZwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
