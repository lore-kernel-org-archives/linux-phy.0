Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 410CBC021BE
	for <linux-phy@archiver.kernel.org>; Wed, 26 Feb 2025 03:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1mWElSr41OcN0BLQq/NwqwC6aMbWEUGUAkyTVW0zDy4=; b=hGFQyJtLHc5a4S
	xDxlFrcYD0qaFHBHFy1El2H/OgJmqPNydlebeVMF0axAonvtWxznmOCPVfgN5nKshKElKqndp+oQ0
	G+n62TswcmrjNEQ1H/liSzlzHv558s1TQtnA6Tj0mmOch9MN/jk8RIuPAjLOsIj229Wti6DJ2Jv3/
	OY3eJuFxtoJ5zc0IWIRb3FIkQ/gMEZOlGAKSsGoFCSJa44qq1yOAz2Jpw/2171ZEaHL/P169QIAt3
	Hj7wqF1pXWOGOjZ27Ib7WYls02m8JmHolOaBXcKW+flZyfpH0IzeAtjqbjo/7lTGPHEp3MTWNxfmf
	UArOMssKryjCxUqRNFmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tn7qa-00000002GiY-021F;
	Wed, 26 Feb 2025 03:12:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tn7qW-00000002Ggq-3zZO
	for linux-phy@lists.infradead.org;
	Wed, 26 Feb 2025 03:12:30 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51PMclDT000855;
	Wed, 26 Feb 2025 03:12:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SKtM2MG3KETATLlqcoKJRNLbIZzBAj4Jgle7llgpepU=; b=pEPN86dzQb8UKyAM
	RHimu1AWThWE/hRyrXEQQzl0mE6p2QnacLr/X4osSs8vVLJIJDvCVErlLYgQWhyD
	P4TyOXknb3Rsb5gttEF8gA5EmoCGIwgCJ4sdc0ZnzbahyQbBjItjmtXVLIcEmetx
	ylKj8T82p++40XQURj0RgvmfUiUhL3y1iVCel5pMkz46MsI2KjaWR2p6vmzzYWkE
	s917Qe7Q6Qm1fwHQ0fmQh+MRKz0S4mGqMC+kfWeMTgJ5+YCKffLb1sDNlL6kRUWb
	Tl4+V588Q09rnCejFbyuobUhu2wGEda6O73DigC+rN2cipwNHxKsXCzmk05C+CW7
	VV9Rdw==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 451pu98hag-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 26 Feb 2025 03:12:24 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 51Q3COxS006447
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 26 Feb 2025 03:12:24 GMT
Received: from [10.239.29.178] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Tue, 25 Feb
 2025 19:12:20 -0800
Message-ID: <47f5ab83-d25f-4132-83a6-38236575510c@quicinc.com>
Date: Wed, 26 Feb 2025 11:12:18 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] phy: qcom: qmp-pcie: Add PHY register retention
 support
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        "Wenbin Yao
 (Consultant)" <quic_wenbyao@quicinc.com>,
        Konrad Dybcio
	<konrad.dybcio@oss.qualcomm.com>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <p.zabel@pengutronix.de>, <abel.vesa@linaro.org>,
        <neil.armstrong@linaro.org>, <quic_devipriy@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
References: <20250220102253.755116-1-quic_wenbyao@quicinc.com>
 <20250220102253.755116-3-quic_wenbyao@quicinc.com>
 <20250224073301.aqbw3gxjnupbejfy@thinkpad>
 <7ffb09cd-9c77-4407-9087-3e789cd8bf44@quicinc.com>
 <ea5de507-1252-4ff3-9b18-40981624afea@oss.qualcomm.com>
 <20250224122439.njrcoyrfsisddoer@thinkpad>
 <eea55dfa-3dd3-488b-958c-cd20e18a7d7d@quicinc.com>
 <20250225081744.3aprpztylrdgs2cl@thinkpad>
 <4a672888-a90e-434c-b494-bb58b91c99a2@quicinc.com>
 <zppwzqdi5xbggurbqho6ivuorvlubldpjw3pyw2fdgrap4nrhp@5otsko6o5cv3>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <zppwzqdi5xbggurbqho6ivuorvlubldpjw3pyw2fdgrap4nrhp@5otsko6o5cv3>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: JxTPftwjFwrazOXSMYzFrhgIQ1L4FHpx
X-Proofpoint-ORIG-GUID: JxTPftwjFwrazOXSMYzFrhgIQ1L4FHpx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-25_08,2025-02-25_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 phishscore=0 adultscore=0 spamscore=0 impostorscore=0 lowpriorityscore=0
 bulkscore=0 mlxlogscore=999 malwarescore=0 suspectscore=0 clxscore=1015
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502260023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_191229_008200_E888EB44 
X-CRM114-Status: GOOD (  25.49  )
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

Ck9uIDIvMjUvMjAyNSA3OjQ2IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIFR1ZSwg
RmViIDI1LCAyMDI1IGF0IDA2OjA4OjAzUE0gKzA4MDAsIFFpYW5nIFl1IHdyb3RlOgo+PiBPbiAy
LzI1LzIwMjUgNDoxNyBQTSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+Pj4gT24gVHVl
LCBGZWIgMjUsIDIwMjUgYXQgMDQ6MDY6MTZQTSArMDgwMCwgV2VuYmluIFlhbyAoQ29uc3VsdGFu
dCkgd3JvdGU6Cj4+Pj4gT24gMi8yNC8yMDI1IDg6MjQgUE0sIE1hbml2YW5uYW4gU2FkaGFzaXZh
bSB3cm90ZToKPj4+Pj4gT24gTW9uLCBGZWIgMjQsIDIwMjUgYXQgMTI6NDY6NDRQTSArMDEwMCwg
S29ucmFkIER5YmNpbyB3cm90ZToKPj4+Pj4+IE9uIDI0LjAyLjIwMjUgOTo0NiBBTSwgV2VuYmlu
IFlhbyAoQ29uc3VsdGFudCkgd3JvdGU6Cj4+Pj4+Pj4gT24gMi8yNC8yMDI1IDM6MzMgUE0sIE1h
bml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPj4+Pj4+Pj4gT24gVGh1LCBGZWIgMjAsIDIwMjUg
YXQgMDY6MjI6NTNQTSArMDgwMCwgV2VuYmluIFlhbyB3cm90ZToKPj4+Pj4+Pj4+IEZyb206IFFp
YW5nIFl1IDxxdWljX3FpYW55dUBxdWljaW5jLmNvbT4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBTb21l
IFFDT00gUENJZSBQSFlzIHN1cHBvcnQgbm9fY3NyIHJlc2V0LiBVbmxpa2UgQkNSIHJlc2V0IHdo
aWNoIHJlc2V0cyB0aGUKPj4+Pj4+Pj4+IHdob2xlIFBIWSAoaGFyZHdhcmUgYW5kIHJlZ2lzdGVy
KSwgbm9fY3NyIHJlc2V0IG9ubHkgcmVzZXRzIFBIWSBoYXJkd2FyZQo+Pj4+Pj4+Pj4gYnV0IHJl
dGFpbnMgcmVnaXN0ZXIgdmFsdWVzLCB3aGljaCBtZWFucyBQSFkgc2V0dGluZyBjYW4gYmUgc2tp
cHBlZCBkdXJpbmcKPj4+Pj4+Pj4+IFBIWSBpbml0IGlmIFBDSWUgbGluayBpcyBlbmFibGVkIGlu
IGJvb2x0bG9hZGVyIGFuZCBvbmx5IG5vX2NzciBpcyB0b2dnbGVkCj4+Pj4+Pj4+PiBhZnRlciB0
aGF0Lgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IEhlbmNlLCBkZXRlcm1pbmUgd2hldGhlciB0aGUgUEhZ
IGhhcyBiZWVuIGVuYWJsZWQgaW4gYm9vdGxvYWRlciBieQo+Pj4+Pj4+Pj4gdmVyaWZ5aW5nIFFQ
SFlfU1RBUlRfQ1RSTCByZWdpc3Rlci4gSWYgaXQncyBwcm9ncmFtbWVkIGFuZCBub19jc3IgcmVz
ZXQgaXMKPj4+Pj4+Pj4+IGF2YWlsYWJsZSwgc2tpcCBCQ1IgcmVzZXQgYW5kIFBIWSByZWdpc3Rl
ciBzZXR0aW5nIHRvIGVzdGFibGlzaCB0aGUgUENJZQo+Pj4+Pj4+Pj4gbGluayB3aXRoIGJvb3Rs
b2FkZXIgLSBwcm9ncmFtbWVkIFBIWSBzZXR0aW5ncy4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBRaWFuZyBZdSA8cXVpY19xaWFueXVAcXVpY2luYy5jb20+Cj4+Pj4+Pj4+PiBT
aWduZWQtb2ZmLWJ5OiBXZW5iaW4gWWFvIDxxdWljX3dlbmJ5YW9AcXVpY2luYy5jb20+Cj4+Pj4+
Pj4+IFNvbWUgbml0cGlja3MgYmVsb3cuCj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiAtLS0KPj4+Pj4+IFsu
Li5dCj4+Pj4+Pgo+Pj4+Pj4+Pj4gK8KgwqDCoMKgICogSW4gdGhpcyB3YXksIG5vIG1hdHRlciB3
aGV0aGVyIHRoZSBQSFkgc2V0dGluZ3Mgd2VyZSBpbml0aWFsbHkKPj4+Pj4+Pj4+ICvCoMKgwqDC
oCAqIHByb2dyYW1tZWQgYnkgYm9vdGxvYWRlciBvciBQSFkgZHJpdmVyIGl0c2VsZiwgd2UgY2Fu
IHJldXNlIHRoZW0KPj4+Pj4+Pj4gSXQgaXMgcmVhbGx5IHBvc3NpYmxlIHRvIGhhdmUgYm9vdGxv
YWRlciBub3QgcHJvZ3JhbW1pbmcgdGhlIGluaXQgc2VxdWVuY2UgZm9yCj4+Pj4+Pj4+IG5vX2Nz
ciByZXNldCBwbGF0Zm9ybXM/IFRoZSBjb21tZW50IHNvdW5kcyBsaWtlIGl0IGlzIHBvc3NpYmxl
LiBCdXQgSSBoZWFyZCB0aGUKPj4+Pj4+Pj4gb3Bwb3NpdGUuCj4+Pj4+Pj4gUENJZTMgb24gWDFF
ODAxMDAgUUNQIGlzIGRpc2FibGVkIGJ5IGRlZmF1bHQgaW4gVUVGSS4gV2UgbmVlZCB0byBlbmFi
bGUgaXQKPj4+Pj4+PiBtYW51YWxseSBpbiBVRUZJIHNoZWxsIGlmIHdlIHdhbnQuCj4+Pj4+PiBJ
SVVDIHRoaXMgd2lsbCBub3QgYmUgYSBjb25jZXJuIGdvaW5nIGZvcndhcmQsIGFuZCB0aGlzIGlz
IGEgc3BlY2lhbCBjYXNlCj4+Pj4+Pgo+Pj4+PiBJJ20gd29uZGVyaW5nIGhvdyBtYW55ICpzcGVj
aWFsKiBjYXNlcyB3ZSBtYXkgaGF2ZSB0byBkZWFsIHdpdGggZ29pbmcgZm9yd2FyZC4KPj4+Pj4g
QW55aG93LCBJIHdvdWxkIHByb3Bvc2UgdG8gYXRsZWFzdCB0aHJvdyBhbiBlcnJvciBhbmQgZmFp
bCBwcm9iZSgpIGlmOgo+Pj4+Pgo+Pj4+PiAqIHRoZSBwbGF0Zm9ybSBoYXMgbm9fY3NyIHJlc2V0
IEFORAo+Pj4+PiAqIGJvb3Rsb2FkZXIgaGFzIG5vdCBpbml0aWFsaXplZCB0aGUgUEhZIEFORAo+
Pj4+PiAqIHRoZXJlIGFyZSBubyBpbml0IHNlcXVlbmNlcyBpbiB0aGUga2VybmVsCj4+Pj4+Cj4+
Pj4+IC0gTWFuaQo+Pj4+IEhtbW0sIHJlZ2FyZGxlc3Mgb2Ygd2hldGhlciBpdCdzIGEgc3BlY2lh
bCBjYXNlLCB3ZSBjYW4ndCBhc3N1bWUgdGhhdCBVRUZJCj4+Pj4gd2lsbCBlbmFibGUgdGhlIFBI
WSBzdXBwb3J0aW5nIG5vX2NzciByZXNldCBvbiBhbGwgcGxhdGZvcm1zLiBJdCdzIGEgYml0Cj4+
Pj4gcmlza3kuIElmIHdlIG1ha2Ugc3VjaCBhbiBhc3N1bXB0aW9uLCB3ZSBhbHNvIHdvbid0IG5l
ZWQgdG8gY2hlY2sgd2hldGhlcgo+Pj4+IHRoZSBQSFkgaXMgZW5hYmxlZCBieSBVRUZJIGR1cmlu
ZyBwb3dlcmluZyBvbi4gV2UganVzdCBuZWVkIHRvIGNoZWNrCj4+Pj4gd2hldGhlciBub19jc3Ig
cmVzZXQgaXMgYXZhaWxhYmxlLgo+Pj4+Cj4+PiBJIGFtIG5vdCBzdXBwb3J0aXZlIG9mIHRoaXMg
YXNzdW1wdGlvbiB0byBiZSBjbGVhci4gV2hpbGUgSSBhbSBPSyB3aXRoIHJlbHlpbmcKPj4+IG9u
IG5vX2NzciByZXNldCBhbmQgYm9vdGxvYWRlciBwcm9ncmFtbWluZyB0aGUgUEhZLCB3ZSBzaG91
bGQgYWxzbyBtYWtlIHN1cmUgdG8KPj4+IGNhdGNoIGlmIHRoZSBQSFkgZG9lc24ndCBpbml0aWFs
aXplIGl0LiBPdGhlcndpc2UsIHRoZSBkcml2ZXIgd291bGQgYXNzdW1lIHRoYXQKPj4+IHRoZSBQ
SFkgaXMgd29ya2luZywgYnV0IHRoZSB1c2VycyB3b24ndCBzZWUgYW55IFBDSWUgZGV2aWNlcy4K
Pj4+Cj4+Pj4gQnV0IGl0IG1ha2VzIHNlbnNlIHRvIGNoZWNrIHRoZSBleHNpdGVuY2Ugb2YgUEhZ
IHNlbnF1ZW5jZS4gSG93IGFib3V0Cj4+Pj4gYWRkaW5nIHRoZSBjaGVjayBpbiBxbXBfcGNpZV9p
bml0LCBpZiBhIFBIWSBzdXBwb3J0cyBub19jc3IgcmVzZXQgYW5kIGlzbid0Cj4+Pj4gaW5pdGlh
bGl6ZWQgaW4gVUVGSSBhbmQgdGhlcmUgaXMgbm8gY2ZnLT50YmxzLCByZXR1cm4gZXJyb3IgYW5k
IHByaW50IHNvbWUKPj4+PiBlcnJvciBsb2cgc28gdGhhdCB0aGUgUENJZSBjb250cm9sbGVyIHdp
bGwgZmFpbCB0byBwcm9iZS4KPj4+Pgo+Pj4gU291bmRzIGdvb2QgdG8gbWUuCj4+IEknbSB3b25k
ZXJpbmcgaXMgaXQgbmVjZXNzYXJ5IHRvIGFkZCB0aGlzIGNoZWNrPyBJbiBjdXJyZW50IFBIWSBk
cml2ZXIsCj4+IGZvciBQSFkgdGhhdCBkb2Vzbid0IHN1cHBvdCBub19jc3IgcmVzZXQgdGhlcmUg
aXMgYWxzbyBubyBzdWNoIGNoZWNrLgo+PiBJZiBhIFBIWSBzdXBwb3J0cyBub19jc3IgcmVzZXQg
YW5kIGlzbid0IGluaXQgaW4gVUVGSSBhbmQgdGhlcmUgaXMgbm8KPj4gY2ZnLT50YmxzLCB0aGUg
d29yc3QgaXNzdWUgaXMgbGluayB0cmFpbmluZyBmYWlsIGFuZCBQQ0llIGNvbnRyb2xsZXIgd2ls
bAo+PiBhbHNvIGZhaWwgdG8gcHJvYmUuIEFkZGluZyBzdWNqIGNoZWNrIHNlZW1zIG5vdCBjaGFu
Z2UgdGhlIHJlc3VsdC4KPiBGYWlsaW5nIHRoZSB0cmFpbmluZyBpcyBhIHJhbmRvbSBlcnJvciB3
aGljaCBjYW4gbWVhbiBhIGxvdCwgZS5nLiB0aGUKPiBtaXNzaW5nIHZvbHRhZ2UgcmFpbC4gQW4g
ZXhwbGljaXQgY2hlY2sgaXMgYmVuZWZpY2lhbCwgaXQgaGVscHMKPiBkZXZlbG9wZXJzIChhbmQg
dXNlcnMpIHRvIGJldHRlciB1bmRlcnN0YW5kIHRoZSByZWFzb24gb2YgdGhlIGZhaWx1cmUuCklu
IHRoZSBzdHJ1Y3QgcW1wX3BoeV9jZmcsIHRibHMgaXMgbm90IGEgcG9pbnRlciwgd2UgY2FuJ3Qg
ZGlyZWN0bHkgY2hlY2sKaWYgdGJscyA9PSBOVUxMIHRvIGRldGVybWluZSBpZiB0aGUgUEhZIGlu
aXQgc2VxdWVuY2UgaXMgYXZhaWxhYmxlLiBDYW4gd2UKYWRkIGEgc2VwYXJhdGUgcGF0Y2ggdG8g
Y2hhbmdlIHRoZSBkZWZpbml0aW9uIGZyb20KImNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZ190Ymxz
IHRibHMiIHRvCiJjb25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmdfdGJscyAqdGJscyIgbGlrZSB0bGJz
X3JjIGFuZCB0YmxzX2VwLCBldmVuIHRob3VnaAp0aGlzIHdpbGwgYWZmZWN0IGFsbCBwbGF0Zm9y
bXM/CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
