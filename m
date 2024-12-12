Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9C05E77180
	for <linux-phy@archiver.kernel.org>; Thu, 12 Dec 2024 07:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bI6+PKo+l/g+Y44G9N9eokBUBZ2VWNkmvQUMLBPokBY=; b=mJyU62SyyXT5MV
	XHj0IlG8+I5ed4uqyU2myXieUdekxPfCKxOZp4RJJAHkHJ0VdM9rZgE50jNKn8x+NZv+FBuS7dzy8
	BBI6IuB9jj6c+2hE6I4AW6yk+Npzh2G432B+xzeVm9RKYR47S9ErhPTcfNeGNxWrTk+LKyxnoFXAs
	EaEqCCVfrhvksEmroWQaUd2Im/YwYCx7ud276MfbD1Ef2Pk4zsxl0yzDGMmdxdNXd0AN7hqnm0+eD
	22+kAo9CA1J06W0LCgsT93vEhtbtuu2ohFdjuDmxKOwf/DE9u3niwSv11Miy9PjxpnGSYbnCMg+KQ
	40MPD2GAtTi2g76eXaBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLddd-0000000HA2T-3o4H;
	Thu, 12 Dec 2024 07:29:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLddb-0000000HA1d-2xWJ
	for linux-phy@lists.infradead.org;
	Thu, 12 Dec 2024 07:29:33 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BC2s8jn001463;
	Thu, 12 Dec 2024 07:29:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OybyDqhRyS7zewunA4/2FtQ2IjJn/DxV8X7ZYsb+0kA=; b=J4NN+21DBOJ/yViK
	lCihi9bLjtZXqaPknnlYkZODfkKmxT5YOpkAYxcrISvpmIPTBHZRBRj3rM/8IGZN
	KQ3wlMbmecoNM0E4eGOxafUY5BsnQMb0C+LEl9JuUF3j9hpqzqt62RM+FYACp/7A
	rWT5bHdY4zXOHVlu0LoCEyfber9WEqLhqPz576QjqOg8lTUx31CamM5EIi1VDKmR
	zBoje+ubA2ckM1+0uZ0jpWP+uopRZKzMBdma/sfRi6cOxUJ5d4O1Z5JJePEiXZ7O
	fDk2xIcKMpkenTNTU2rWCiBbhcbUUdaJfSmI6KQnI9YyVmiy25qjqoF/W/+7Vqi7
	lPMKSg==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43fqes0js7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 12 Dec 2024 07:29:26 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4BC7TPrt001979
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 12 Dec 2024 07:29:25 GMT
Received: from [10.253.8.225] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 11 Dec
 2024 23:29:19 -0800
Message-ID: <16d109d8-d1be-4ecb-ba25-8e21e9d48dad@quicinc.com>
Date: Thu, 12 Dec 2024 15:29:16 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,qmp-pcie: add optional current
 load properties
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        "Krzysztof
 Kozlowski" <krzk@kernel.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <dmitry.baryshkov@linaro.org>,
        <abel.vesa@linaro.org>, <neil.armstrong@linaro.org>,
        <andersson@kernel.org>, <konradybcio@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <quic_qianyu@quicinc.com>
References: <20241204105249.3544114-1-quic_ziyuzhan@quicinc.com>
 <20241204105249.3544114-2-quic_ziyuzhan@quicinc.com>
 <qvjtwilukxbeaxnbyzfkdsfkktm6p4yv3sgx3rbugpb6qkcbjy@rohvixslizhh>
 <20241211062053.vxdpovlmetvyx3za@thinkpad>
 <33697bd9-02f4-4a9a-b8c0-4930d7fdaee2@kernel.org>
 <20241211082404.p7fbmhooikmipxvm@thinkpad>
 <3c7ddb08-38db-44b3-a7a7-ec7b270a408f@kernel.org>
 <20241211115034.4hrpmninbx5uryev@thinkpad>
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
In-Reply-To: <20241211115034.4hrpmninbx5uryev@thinkpad>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: WpBSgAiqzoP_c1xrOTCrxXhE9a0ibP_a
X-Proofpoint-ORIG-GUID: WpBSgAiqzoP_c1xrOTCrxXhE9a0ibP_a
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 clxscore=1011 malwarescore=0
 mlxlogscore=999 priorityscore=1501 bulkscore=0 phishscore=0 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412120050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_232931_866116_E33F0C42 
X-CRM114-Status: GOOD (  28.20  )
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

CuWcqCAxMi8xMS8yMDI0IDc6NTAgUE0sIE1hbml2YW5uYW4gU2FkaGFzaXZhbSDlhpnpgZM6Cj4g
T24gV2VkLCBEZWMgMTEsIDIwMjQgYXQgMTA6NTI6MTFBTSArMDEwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPj4gT24gMTEvMTIvMjAyNCAwOToyNCwgTWFuaXZhbm5hbiBTYWRoYXNpdmFt
IHdyb3RlOgo+Pj4gT24gV2VkLCBEZWMgMTEsIDIwMjQgYXQgMDk6MDk6MThBTSArMDEwMCwgS3J6
eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4+PiBPbiAxMS8xMi8yMDI0IDA3OjIwLCBNYW5pdmFu
bmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4+Pj4+IE9uIFRodSwgRGVjIDA1LCAyMDI0IGF0IDExOjIz
OjExQU0gKzAxMDAsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+Pj4+PiBPbiBXZWQsIERl
YyAwNCwgMjAyNCBhdCAwNjo1Mjo0N1BNICswODAwLCBaaXl1ZSBaaGFuZyB3cm90ZToKPj4+Pj4+
PiBPbiBzb21lIHBsYXRmb3JtcywgdGhlIHBvd2VyIHN1cHBseSBmb3IgUENJZSBQSFkgaXMgbm90
IGFibGUgdG8gcHJvdmlkZQo+Pj4+Pj4+IGVub3VnaCBjdXJyZW50IHdoZW4gaXQgd29ya3MgaW4g
TFBNIG1vZGUuIEhlbmNlLCBQQ0llIFBIWSBkcml2ZXIgbmVlZHMgdG8KPj4+Pj4+PiBzZXQgY3Vy
cmVudCBsb2FkIHRvIHZvdGUgdGhlIHJlZ3VsYXRvciB0byBIUE0gbW9kZS4KPj4+Pj4+Pgo+Pj4+
Pj4+IERvY3VtZW50IHRoZSBjdXJyZW50IGxvYWQgYXMgcHJvcGVydGllcyBmb3IgZWFjaCBwb3dl
ciBzdXBwbHkgUENJZSBQSFkKPj4+Pj4+PiByZXF1aXJlZCwgbmFtZWx5IHZkZGEtcGh5LW1heC1t
aWNyb2FtcCwgdmRkYS1wbGwtbWF4LW1pY3JvYW1wIGFuZAo+Pj4+Pj4+IHZkZGEtcXJlZi1tYXgt
bWljcm9hbXAsIHJlc3BlY3RpdmVseS5QQ0llIFBIWSBkcml2ZXIgc2hvdWxkIHBhcnNlIHRoZW0g
dG8KPj4+Pj4+PiBzZXQgYXBwcm9wcmlhdGUgY3VycmVudCBsb2FkIGR1cmluZyBQSFkgcG93ZXIg
b24uCj4+Pj4+Pj4KPj4+Pj4+PiBUaGlzIHRocmVlIHByb3BlcnRpZXMgYXJlIG9wdGlvbmFsIGFu
ZCBub3QgbWFuZGF0b3J5IGZvciB0aG9zZSBwbGF0Zm9ybXMKPj4+Pj4+PiB0aGF0IFBDSWUgUEhZ
IGNhbiBzdGlsbCB3b3JrIHdpdGggcG93ZXIgc3VwcGx5Lgo+Pj4+Pj4KPj4+Pj4+IFVoIHVoLCBz
byB0aGUgZG93bnN0cmVhbSBjb21lcyBmaW5hbGx5IQo+Pj4+Pj4KPj4+Pj4+IE5vIHNvcnJ5IGd1
eXMsIHVzZSBleGlzdGluZyByZWd1bGF0b3IgYmluZGluZ3MgZm9yIHRoaXMuCj4+Pj4+Pgo+Pj4+
PiBNYXliZSB0aGV5IGdvdCBpbnNwaXJlZCBieSB1cHN0cmVhbSBVRlMgYmluZGluZ3M/Cj4+Pj4+
IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMvdWZzLWNvbW1vbi55YW1sOgo+
Pj4+Pgo+Pj4+PiB2Y2MtbWF4LW1pY3JvYW1wCj4+Pj4+IHZjY3EtbWF4LW1pY3JvYW1wCj4+Pj4+
IHZjY3EyLW1heC1taWNyb2FtcAo+Pj4+IEFuZCBpdCBpcyBhbHJlYWR5IGFuIEFCSSwgc28gd2Ug
Y2Fubm90IGRvIGFueXRoaW5nIGFib3V0IGl0Lgo+Pj4+Cj4+Pj4+IFJlZ3VsYXRvciBiaW5kaW5n
IG9ubHkgZGVzY3JpYmVzIHRoZSBtaW4vbWF4IGxvYWQgZm9yIHRoZSByZWd1bGF0b3JzIGFuZCBu
b3QKPj4+PiBObywgaXQgZXhhY3RseSBkZXNjcmliZXMgbWluL21heCBjb25zdW1lcnMgY2FuIHVz
ZS4gTGV0J3MgcXVvdGU6Cj4+Pj4gImxhcmdlc3QgY3VycmVudCBjb25zdW1lcnMgbWF5IHNldCIK
Pj4+PiBJdCBpcyBhbGwgYWJvdXQgY29uc3VtZXJzLgo+Pj4+Cj4+Pj4+IGNvbnN1bWVycy4gV2hh
dCBpZiB0aGUgY29uc3VtZXJzIG5lZWQgdG8gc2V0IHZhcmlhYmxlIGxvYWQgcGVyIHBsYXRmb3Jt
PyBTaG91bGQKPj4+PiBUaGVuIGVhY2ggcGxhdGZvcm0gdXNlcyByZWd1bGF0b3IgQVBJIG9yIHJl
Z3VsYXRvciBiaW5kaW5ncyB0byBzZXQgaXQ/IEkKPj4+PiBkb24ndCBzZWUgdGhlIHByb2JsZW0g
aGVyZS4KPj4+Pgo+Pj4+PiB0aGV5IGhhcmRjb2RlIHRoZSBsb2FkIGluIGRyaXZlcj8gKGV2ZW4g
c28sIHRoZSBsb2FkIHNob3VsZCBub3QgdmFyeSBmb3IgZWFjaAo+Pj4+PiBib2FyZCkuCj4+Pj4g
VGhlIGxvYWQgbXVzdCB2YXJ5IHBlciBib2FyZCwgYmVjYXVzZSByZWd1bGF0b3JzIHZhcnkgcGVy
IGJvYXJkLiBPZgo+Pj4+IGNvdXJzZSBpbiBwcmFjdGljZSBtb3N0IGRlc2lnbnMgY291bGQgYmUg
dGhlIHNhbWUsIGJ1dCByZWd1bGF0b3JzIGFuZAo+Pj4+IHRoZWlyIGxpbWl0cyBhcmUgYWx3YXlz
IHByb3BlcnRpZXMgb2YgdGhlIGJvYXJkLCBub3QgdGhlIFNvQy4KPj4+Pgo+Pj4gSG93IHRoZSBj
b25zdW1lciBkcml2ZXJzIGFyZSBzdXBwb3NlZCB0byBrbm93IHRoZSBvcHRpbXVtIGxvYWQ/Cj4+
Pgo+Pj4gSSBkb24ndCBzZWUgaG93IHRoZSBjb25zdW1lciBkcml2ZXJzIGNhbiBzZXQgdGhlIGxv
YWQgd2l0aG91dCBoYXJkY29kaW5nIHRoZQo+Pj4gdmFsdWVzLiBBbmQgSSBjb3VsZCBzZWUgZnJv
bSBVRlMgcHJvcGVydGllcyB0aGF0IGVhY2ggYm9hcmQgaGFzIGRpZmZlcmVudAo+Pj4gdmFsdWVz
Lgo+Pgo+PiBEcml2ZXJzIGRvIG5vdCBuZWVkIHRvIGtub3csIGl0J3Mgbm90IHRoZSBkcml2ZXIn
cyByZXNwb25zaWJpbGl0eS4gSWYKPiBXaGF0PyBJIHRoaW5rIHRoZXJlIGlzIGEgbWlzdW5kZXJz
dGFuZGluZyBoZXJlLiBUaGUgaW50ZW50aW9uIG9mIHRoZXNlIHByb3Bvc2VkCj4gcHJvcGVydGll
cyBpcyB0byBhbGxvdyB0aGUgUEhZIGRyaXZlciB0byBzZXQgdGhlIHJlcXVpcmVkIGxvYWQgb2Yg
dGhlIHJlZ3VsYXRvcgo+IHVzaW5nIHJlZ3VsYXRvcl9zZXRfbG9hZCgpIEFQSS4gQXMgcGVyIHRo
ZSBBUEkgZGVzY3JpcHRpb246Cj4KPiAnQ29uc3VtZXIgZGV2aWNlcyBub3RpZnkgdGhlaXIgc3Vw
cGx5IHJlZ3VsYXRvciBvZiB0aGUgbWF4aW11bSBwb3dlciB0aGV5IHdpbGwKPiByZXF1aXJlIChj
YW4gYmUgdGFrZW4gZnJvbSBkZXZpY2UgZGF0YXNoZWV0IGluIHRoZSBwb3dlciBjb25zdW1wdGlv
biB0YWJsZXMpCj4gd2hlbiB0aGV5IGNoYW5nZSBvcGVyYXRpb25hbCBzdGF0dXMgYW5kIGhlbmNl
IHBvd2VyIHN0YXRlJy4KPgo+IElJVUMsIHlvdXIgY29uY2VybiBpcyB0aGF0IHRoZSBkZXZpY2V0
cmVlIHNob3VsZG4ndCBzcGVjaWZ5IHRoZSBsb2FkIGZvciBlYWNoCj4gY29uc3VtZXIgYnV0IGp1
c3QgdGhlIG1pbi9tYXggbG9hZCBvZiB0aGUgcmVndWxhdG9yLiBBbmQgdGhlIGNvbnN1bWVyIGRy
aXZlcgo+IHNob3VsZCBmaWd1cmUgb3V0IHRoZSBsb2FkIGFuZCBzZXQgaXQgYWNjb3JkaW5nbHku
Cj4KPiBDb3JyZWN0IG1lIGlmIEknbSB3cm9uZy4KPgo+IEluIHRoYXQgY2FzZSwgSSB3YXMgd29u
ZGVyaW5nIGlmIHRoZSBsb2FkIHNldCBieSB0aGUgZHJpdmVyIGlzIGdvaW5nIHRvIHZhcnkKPiBi
ZXR3ZWVuIHBsYXRmb3JtcyAoYm9hcmRzKSBvciBub3QgKHF1ZXN0aW9uIHRvIFppeXVlIFpoYW5n
KS4gSWYgaXQgdmFyaWVzCj4gYmV0d2VlbiBTb0MsIHRoZW4gd2UgY2FuIGhhcmRjb2RlIHRoZSBs
b2FkIGluIGRyaXZlciBiYXNlZCBvbiBjb21wYXRpYmxlLgoKSGkgTWFuaSwgS3J6eXN0b2YKCk5v
dyB3ZSBzZXQgIHRoZSBjdXJyZW50IHRvIDE2NW1BIHdoaWNoIGlzIHRoZSBtYXggcG93ZXIgc3Vw
cGx5IHRoZSByZWd1bGF0b3IKY2FuIHByb3ZpZGUsIHNvIHRoaXMgaXMgcGxhdGZvcm0oYm9hcmRz
KSByZWxhdGVkLiBCdXQgd2UgdGhpbmsgUENJZSBQSFkgbmVlZHMKdG8gc2V0IHRoZSBjdXJyZW50
IHZhbHVlIHdlIG5lZWQsIHdoaWNoIGlzIHNvYyByZWxhdGVkLgoKQlJzClppeXVlCgo+PiBJZgo+
PiB0aGVzZSBhcmUgY29uc3RyYWludHMgcGVyIGJvYXJkLCB0aGVuIHJlZ3VsYXRvciBwcm9wZXJ0
aWVzIGFwcGx5IGFuZAo+PiB0aGVyZSBpcyBubyBkaWZmZXJlbmNlIGJldHdlZW4gdGhpcyAidmRk
LW1heC1taWNyb2FtcCA9IDEwIiBhbmQKPj4gInJlZ3VsYXRvci1tYXgtbWljcm9hbXAiLgo+Pgo+
IFRoZXJlIGlzIGEgZGlmZmVyZW5jZS4gUmVndWxhdG9yIHByb3BlcnRpZXMgYXJlIGp1c3QgdGhy
ZXNob2xkLiBTbyB1bmxlc3MgdGhlCj4gY29uc3VtZXIgc2V0cyB0aGUgbG9hZCwgdGhleSB3b24n
dCB0YWtlIGVmZmVjdC4gSSB0aGluayB5b3UgZ290IGNvbmZ1c2VkIGJ5IHRoZQo+ICdtYXgnIHdv
cmRpbmcgaW4gdGhlIHByb3Bvc2VkIHByb3BlcnRpZXM/Cj4KPj4gSWYgdGhpcyB2YXJpZXMgcnVu
dGltZSwgdGhlbiB5b3VyIHByb3BlcnR5IGlzIGFscmVhZHkgbm90IHN1aXRhYmxlIGFuZAo+PiB2
ZXJ5IGxpbWl0ZWQgYW5kIHlvdSBzaG91bGQgdXNlIE9QUCB0YWJsZS4KPj4KPiBUaGUgY29uc3Vt
ZXIgZHJpdmVyIG1heSByZXF1ZXN0IGRpZmZlcmVudCBsb2FkcyBiYXNlZCBvbiB0aGVpciBvcGVy
YXRpb25hbAo+IHN0YXRlLgo+Cj4gLSBNYW5pCj4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
