Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EABE0C54E41
	for <linux-phy@archiver.kernel.org>; Wed,  6 Mar 2024 16:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1RcaoegS8BoH5LwHqVhBPVbesaRomObYYR3HrS8K2qs=; b=NPpzyli8CzCozTXeTrldjq2BaM
	nA2mSULupW0illcDDLjvSRjsdTDwr5OcmIRWMWH5HZwFfswe/9qxmg7sSwYllihxkXVY0JAlhAyWE
	VI+TTusoFNwGXUwhY4p4XCZifKFJCzkki4Q5BaatHNoIKXYDFCjHhMkkveEWxzQ+KeuEFVHQlFBWa
	0rWCYD/N+qyv0Za97IUq0N3kNg9GLLemUKMWQ7U0KOW84CvnrhuBWcWMWWpzGZMQVKv3a04zF2fDM
	FnwipqhII2HCT8y9nG5/D69FY7lKepgNzWa19OLpV9LGPdL+R3WU+AwGEZvGjSfwT7nQPqfhZ51zZ
	yHDCSWdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhtk8-00000000tso-2Lyn;
	Wed, 06 Mar 2024 16:03:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhtk4-00000000trH-3u03
	for linux-phy@lists.infradead.org;
	Wed, 06 Mar 2024 16:03:42 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 426E52o6018850;
	Wed, 6 Mar 2024 16:03:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=lD+rsTRMmM5HdcVKk1OnrPnaiKBG5ZbuxzdOCW+qaRM=; b=Wh
	G9+JIw202wJxasxuFBbR0xhbldDxnj5Sp3HmRs5/dtmSrQwIVhVQK0PyDqXQvc9Z
	V30PmRiUQpdqAxYN0OyB0qypbGPHQtqrf9912Pm8vNUSEuSoS8yl+Nguq7sVEaCz
	zm+R3l/v5j4HeTMfjU7U3F+UTI4mYcD2RsYmuh2FsH/iyWAqgSfzGUkfgiJ8rPCw
	VwqNrc8Jix6O+jsycqdFmFePsG9qIffmjTI6aeR8JEDxdBPSs+v6yMLPw1+Wn0il
	yipVmAqLESdIoNEpw/twd3T1S3D19BXavFLaW6zMdYmr0wQSu15HEBkcKJtBdrp/
	+k774LhYGXPbeE5J0QyQ==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3wpsxhg9fb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 06 Mar 2024 16:03:32 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 426G3VQr001154
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 6 Mar 2024 16:03:31 GMT
Received: from [10.216.51.173] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Wed, 6 Mar
 2024 08:03:24 -0800
Message-ID: <b3304e24-90c9-4109-8d42-fad778f68758@quicinc.com>
Date: Wed, 6 Mar 2024 21:33:21 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC 3/3] arm64: dts: qcom: sa8775p-ride: Enable support for
 firmware managed resources
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>,
        <andersson@kernel.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <robh@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <gregkh@linuxfoundation.org>,
        <quic_wcheng@quicinc.com>, <Thinh.Nguyen@synopsys.com>,
        <p.zabel@pengutronix.de>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <quic_psodagud@quicinc.com>,
        <quic_nkela@quicinc.com>, <manivannan.sadhasivam@linaro.org>,
        <ulf.hansson@linaro.org>, <sudeep.holla@arm.com>,
        <quic_shazhuss@quicinc.com>, <devicetree@vger.kernel.org>
References: <1709657858-8563-1-git-send-email-quic_sriramd@quicinc.com>
 <1709657858-8563-4-git-send-email-quic_sriramd@quicinc.com>
 <b9142874-0afb-40a6-9008-b33bd8f56840@linaro.org>
 <399555e8-d8fa-46b7-8b15-3d3a4a30809b@quicinc.com>
 <a2e863e2-9c8b-47c2-b4d8-5664d954cd49@quicinc.com>
 <5736796f-061b-46a0-b4eb-ab447fac4426@linaro.org>
From: Sriram Dash <quic_sriramd@quicinc.com>
In-Reply-To: <5736796f-061b-46a0-b4eb-ab447fac4426@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: riX8b21FI9P2aNeNSalQjcm937xh3guF
X-Proofpoint-ORIG-GUID: riX8b21FI9P2aNeNSalQjcm937xh3guF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-06_10,2024-03-05_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 adultscore=0 spamscore=0 impostorscore=0
 mlxlogscore=999 priorityscore=1501 malwarescore=0 clxscore=1015 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2402120000 definitions=main-2403060129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240306_080341_125666_B82312A8 
X-CRM114-Status: GOOD (  13.82  )
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

T24gMy82LzIwMjQgMjozNyBBTSwgS29ucmFkIER5YmNpbyB3cm90ZToKPiAKPiAKPiBPbiAzLzUv
MjQgMTk6MjUsIFNyaXJhbSBEYXNoIHdyb3RlOgo+PiBPbiAzLzUvMjAyNCAxMTozMyBQTSwgU3Jp
cmFtIERhc2ggd3JvdGU6Cj4+PiBPbiAzLzUvMjAyNCAxMDozOCBQTSwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPj4+PiBPbiAwNS8wMy8yMDI0IDE3OjU3LCBTcmlyYW0gRGFzaCB3cm90ZToK
Pj4+Pj4gRXN0YWJsaXNoIHRoZSBjaGFubmVsIGFuZCBkb21haW4gbWFwcGluZyBmb3IgdGhlIHBv
d2VyIGRvbWFpbnMgdG8gCj4+Pj4+IGNvbm5lY3QKPj4+Pj4gd2l0aCBmaXJtd2FyZSwgZW5hYmxp
bmcgdGhlIGZpcm13YXJlIHRvIGhhbmRsZSB0aGUgYXNzaWduZWQgcmVzb3VyY2VzLgo+Pj4+PiBT
aW5jZSB0aGVzZSBkZWxlZ2F0ZWQgcmVzb3VyY2VzIHdpbGwgcmVtYWluIGludmlzaWJsZSB0byB0
aGUgb3BlcmF0aW5nCj4+Pj4+IHN5c3RlbSwgZW5zdXJlIHRoYXQgYW55IHJlZmVyZW5jZXMgdG8g
dGhlbSBhcmUgcmVtb3ZlZC4KPj4+Pj4KPj4+Pj4gU2lnbmVkLW9mZi1ieTogU3JpcmFtIERhc2gg
PHF1aWNfc3JpcmFtZEBxdWljaW5jLmNvbT4KPj4+Pj4gLS0tCj4+Pj4+IMKgIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvcWNvbS9zYTg3NzVwLXJpZGUuZHRzIHwgOTYgCj4+Pj4+ICsrKysrKysrKysrKysr
KysrKysrKysrKystLS0tLS0KPj4+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDc3IGluc2VydGlvbnMo
KyksIDE5IGRlbGV0aW9ucygtKQo+Pj4+Cj4+Pj4gRG8gbm90IG1peCBEVFMgcGF0Y2hlcyB3aXRo
IHN1Ym1pc3Npb25zIHRvIG5ldGRldiBvciBVU0IuCj4+Pj4KPj4+PiBQbGVhc2UgcHV0IGl0IGlu
c2lkZSB5b3VyIGludGVybmFsIGd1aWRlcywgc28geW91IHdpbGwgbm90IGJlIHJlcGVhdGluZwo+
Pj4+IHRoaXMgb3ZlciBhbmQgb3Zlci4KPj4+Pgo+Pj4KPj4+IFN1cmUuIFdpbGwgdGFrZSBjYXJl
LiBUaGFua3MuCj4+Pgo+Pj4+Pgo+Pj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0
cy9xY29tL3NhODc3NXAtcmlkZS5kdHMgCj4+Pj4+IGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29t
L3NhODc3NXAtcmlkZS5kdHMKPj4+Pj4gaW5kZXggMjZhZDA1Yi4uYjZjOWNhYyAxMDA2NDQKPj4+
Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NhODc3NXAtcmlkZS5kdHMKPj4+Pj4g
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NhODc3NXAtcmlkZS5kdHMKPj4+Pj4gQEAg
LTc2NCw4ICs3NjQsMTggQEAKPj4+Pj4gwqAgfTsKPj4+Pj4gwqAgJnVzYl8wIHsKPj4+Pj4gLcKg
wqDCoCBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+Pj4+PiAtwqDCoMKgIHBpbmN0cmwtMCA9
IDwmdXNiMF9lbl9zdGF0ZT47Cj4+Pj4+ICvCoMKgwqAgL2RlbGV0ZS1wcm9wZXJ0eS8gY2xvY2tz
Owo+Pj4+PiArwqDCoMKgIC9kZWxldGUtcHJvcGVydHkvIGNsb2NrLW5hbWVzOwo+Pj4+PiArwqDC
oMKgIC9kZWxldGUtcHJvcGVydHkvIGFzc2lnbmVkLWNsb2NrczsKPj4+Pj4gK8KgwqDCoCAvZGVs
ZXRlLXByb3BlcnR5LyBhc3NpZ25lZC1jbG9jay1yYXRlczsKPj4+Pj4gK8KgwqDCoCAvZGVsZXRl
LXByb3BlcnR5LyByZXF1aXJlZC1vcHBzOwo+Pj4+PiArwqDCoMKgIC9kZWxldGUtcHJvcGVydHkv
IHJlc2V0czsKPj4+Pj4gK8KgwqDCoCAvZGVsZXRlLXByb3BlcnR5LyBpbnRlcmNvbm5lY3RzOwo+
Pj4+PiArwqDCoMKgIC9kZWxldGUtcHJvcGVydHkvIGludGVyY29ubmVjdC1uYW1lczsKPiAKPiBU
aGlzIGlzIHRvdGFsbHkgdW5hY2NlcHRhYmxlLi4gQW5kIGVzcGVjaWFsbHkgbWFrZXMgbm8gc2Vu
c2UgZ2l2ZW4KPiByaWRlIGlzIGxpa2VseSB0aGUgb25seSBzYTg3NzUgYm9hcmQgaW4gZXhpc3Rl
bmNlLi4KPiAKClN1cmUgS29ucmFkLgpXaWxsIHVwZGF0ZSB0aGUgcGF0Y2hlcyBvbiB0b3Agb2Yg
dGhlIHNjbWkgYmFzZWQgZHQKZm9yIHNhODc3NS4KCj4+Pj4+ICsKPj4+Pj4gK8KgwqDCoCBwb3dl
ci1kb21haW5zID0gPFRPRE8+LCA8VE9ETz47Cj4+Pj4KPj4+PiBUaGlzIHdhc24ndCBldmVuIHRl
c3RlZC4KPj4+Pgo+Pj4KPj4+IFRoaXMgaXMgdGVzdGVkIHdpdGggdGhlIHNwZWNpZmljIHBvd2Vy
IGRvbWFpbnMgaW4gcGxhY2UKPj4+IG9mIDxUT0RPPi4gU0NNSSBpbnRlcmZhY2UgaXMgdXNlZCBm
b3IgdGhlIHBvd2VyIGRvbWFpbnMuCj4gCj4gSSdtIHNvcnJ5LCBidXQgImJyZWFrIGNvbXBpbGF0
aW9uIHN1Y2Nlc3NmdWxseSIgaXMgbm90IGEgdmFsaWQKPiB0ZXN0IHJlc3VsdC4uCj4gCj4gS29u
cmFkCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
