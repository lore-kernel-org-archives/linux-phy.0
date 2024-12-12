Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6077AE77180
	for <linux-phy@archiver.kernel.org>; Thu, 12 Dec 2024 07:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7yc077dlcXyG/x87fI2xJeo8ASgPlL8GvWxd55r2XUk=; b=29SaTm6/I7dd+m
	/IsA4C089TVutgq2KGogw1I3xPxRtwiVPeSVhgTRk6W2SyhPPbWsUxiyBjR2e4MMIBwbDzBgVMNb1
	iSufsHn+0Y8LXZK6zk9V9MGYXSx8YMrvQXX7x3N21C3CdkoowF1uIGbg/FRKagXlr2F7++tZYHcud
	usnSZlnfRu/nvK0QCCh0lZROlojVRdrlVT89EYOgLXyT4XcBrxbzrbLLL8B6ngZ34Qa/durhgX40i
	MLQzSMDChLNO1Eo6rV3c7AJH4e3fRy7MWE5JCA3FzrpsCwQROUJt/Lm2S4DZYHSn4SXi7tXV8xyv7
	P6MgzapyInzsevPA8zMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLdgc-0000000HASl-0bed;
	Thu, 12 Dec 2024 07:32:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLdga-0000000HASR-2EqU
	for linux-phy@lists.infradead.org;
	Thu, 12 Dec 2024 07:32:37 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BBHD0WY028100;
	Thu, 12 Dec 2024 07:32:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	n3UoYyua5pcw40DVZlwapk0NVIYn4sDifJJJMf9sbKc=; b=oJHx7D44zrwOZrM9
	J8lbtIL3LbjnfBuRJQvEMw02542Ui6+vmdFiL5i+3CrvHNM6hktHNjdw/3r3Z6le
	V3oDf8EkfF+esQRlPwmdrAlLY1L9LtHyxF/d4Rw/Ii6HnmGf/wuuOtzXlgaeDiut
	OmPrpOBJUHHbSFEIyV4lHeGoyF2jRHjmjdLbDPjXbKanlXoXvtfxy7MPwPEhxsMN
	z9mU/jWDinQgigWBcVmFko3EDY2Dg0RU6HMeZImN69nY1cXSBUJFim4s+CJqh/PO
	h39feqra+2/aKFGyXywmNKXl8SJI7Lwp9tOm5jpF1B/v2tzUoAgf2YRQYCP6FUwa
	18G0TQ==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43fd4xt484-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 12 Dec 2024 07:32:32 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4BC7WVVe019439
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 12 Dec 2024 07:32:31 GMT
Received: from [10.253.8.225] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 11 Dec
 2024 23:32:26 -0800
Message-ID: <89bc05c4-dc84-4e1b-892e-87a959c72556@quicinc.com>
Date: Thu, 12 Dec 2024 15:32:23 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: qcs615: add pcie phy max current
 property
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <dmitry.baryshkov@linaro.org>,
        <abel.vesa@linaro.org>, <neil.armstrong@linaro.org>,
        <andersson@kernel.org>, <konradybcio@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <quic_qianyu@quicinc.com>
References: <20241204105249.3544114-1-quic_ziyuzhan@quicinc.com>
 <20241204105249.3544114-4-quic_ziyuzhan@quicinc.com>
 <20241211062645.3eut7ibjqymm6ayt@thinkpad>
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
In-Reply-To: <20241211062645.3eut7ibjqymm6ayt@thinkpad>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: EN54WgX6_ZLXk-e3PsC4QFIX0HtBGR_b
X-Proofpoint-GUID: EN54WgX6_ZLXk-e3PsC4QFIX0HtBGR_b
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 mlxlogscore=999 phishscore=0 adultscore=0
 suspectscore=0 spamscore=0 mlxscore=0 impostorscore=0 clxscore=1011
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412120050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_233236_688414_4B5376AF 
X-CRM114-Status: GOOD (  14.23  )
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

CuWcqCAxMi8xMS8yMDI0IDI6MjYgUE0sIE1hbml2YW5uYW4gU2FkaGFzaXZhbSDlhpnpgZM6Cj4g
T24gV2VkLCBEZWMgMDQsIDIwMjQgYXQgMDY6NTI6NDlQTSArMDgwMCwgWml5dWUgWmhhbmcgd3Jv
dGU6Cj4+IEFkZCB2ZGRhLXBsbC1tYXgtbWljcm9hbXAgZm9yIHZkZGEtcGxsLXN1cHBseS4gVGhl
IHZhbHVlIG9mIHRoaXMgcHJvcGVydHkKPj4gaXMgZnJvbSB0aGUgcG93ZXIgZ3JpZCBndWlkZS4g
SXQgaXMgdGhlIG1heGltdW0gY3VycmVudCB0aGUgcmVndWxhdG9yIGNhbgo+PiBwcm92aWRlLiBU
aGUgcHJvcGVydHkgd2lsbCBiZSBwYXJzZWQgYnkgUENJZSBQSFkgZHJpdmVyIHRvIHNldCB0aGUg
Y3VycmVudAo+PiBsb2FkLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBaaXl1ZSBaaGFuZyA8cXVpY196
aXl1emhhbkBxdWljaW5jLmNvbT4KPj4gLS0tCj4+ICAgYXJjaC9hcm02NC9ib290L2R0cy9xY29t
L3FjczYxNS1yaWRlLmR0cyB8IDEgKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3FjczYxNS1yaWRl
LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M2MTUtcmlkZS5kdHMKPj4gaW5kZXgg
MThmMTMxYWU5ZTA3Li42ZDkzZWYwZDg4NmIgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcWNvbS9xY3M2MTUtcmlkZS5kdHMKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9x
Y29tL3FjczYxNS1yaWRlLmR0cwo+PiBAQCAtMjE1LDYgKzIxNSw3IEBAICZwY2llIHsKPj4gICAm
cGNpZV9waHkgewo+PiAgIAl2ZGRhLXBoeS1zdXBwbHkgPSA8JnZyZWdfbDVhPjsKPj4gICAJdmRk
YS1wbGwtc3VwcGx5ID0gPCZ2cmVnX2wxMmE+Owo+PiArCXZkZGEtcGxsLW1heC1taWNyb2FtcCA9
IDwxNjUwMDA+Owo+PiAgIAo+IE1pbiB1ViBvZiB0aGlzIHJlZ3VsYXRvciBpcyAxODAwMDAwOgo+
IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3Fjb20vbGlu
dXguZ2l0L3RyZWUvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3FjczYxNS1yaWRlLmR0cz9oPWZv
ci1uZXh0I24xNTEKPgo+IEhvdyBjYW4geW91IHNldCAxNjUwMDA/Cj4KPiAtIE1hbmkKCkhpIE1h
bmkKdGhlIDE2NTAwMCBjYW1lcyBmcm9tIHRoZSBwb3dlciBncmlkIGd1aWRlLCBhbmQgaXQgaXMg
MTY1MDAwdUEgbm90IHVWCkJScwpaaXl1ZQoKPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
