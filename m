Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A33CFA3730
	for <linux-phy@archiver.kernel.org>; Fri, 13 Sep 2024 08:43:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YqQeyzxKxzGGgIhUq5CdnfYlgCjS0F7pV29RoFcg0CE=; b=yfq6W73CCE4lOR
	OLujYCOMExWMGmJwNTVOfkxEs/F//R0IQxrZTUI8PwluNXZjUM1B0dOkstB74Slt/NzrmWDQL9AJx
	QLHDluZ1UQFs2CkEYfG7k3WxsW/e7wtRpup4hWn1xTuSXTYOnqXChnaW0AchbkpFZaKucuUqRwlx0
	4KVJ3p6ed9EFLqzmgk0mHP/tB9/7aAk5nofVPjk3ZRCezkQop0xqzIUsdLlHj/vLSK7FLb12WosGQ
	4hISwIZ1dP6AzTUXL8u7yQRW0I8bUSY1FzHEeIOugLw5x1opHwPCAw3OYvHUz8ShR3wzftP6gSogh
	ryninR/HumE+wdFQD+yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1tg-0000000FNt4-138B;
	Fri, 13 Sep 2024 08:43:20 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1rf-0000000FNVi-3uPz
	for linux-phy@lists.infradead.org;
	Fri, 13 Sep 2024 08:41:46 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48CMBArh025473;
	Fri, 13 Sep 2024 08:41:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XaldEHcAoyUk0jfzc2R4+o02uTW5r7INZBjjuXVthlQ=; b=RpG2SRz6WbSt/xje
	ejYnyWexT9Wv6R0Lq0sEqup8phF+Xaf+cjPasr5TSFuqVj1OQrrcqd0l9hzAySZh
	pnXXcMl8OUX6rzcEzDH2WQqwG3N4+9QBnEJbZKXooe54O/VG1YMaKZOuhAjzUdPl
	83liJXjsQ+FiXkMs94+01P1TPKVI591S6zSHFoDEb0ax2/RqiNpElnLuL/oJj5M4
	55cr2S3tPElJVPd6z8s8BErBmloIaEOC1JMUP75L45uxeKg64cS1pLpu0+KAGVET
	ksUeZaIMqKUfeMcpTUejEhbAPDg3iSUFEzO57tGmyKm8uweuPbPrSwUB35yGwOvg
	fSivJA==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41gy8p857g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 13 Sep 2024 08:41:09 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 48D8f7VZ018352
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 13 Sep 2024 08:41:07 GMT
Received: from [10.239.29.179] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 13 Sep
 2024 01:41:02 -0700
Message-ID: <0c3347a5-85a0-4f28-a393-58f9653d80c6@quicinc.com>
Date: Fri, 13 Sep 2024 16:41:00 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/8] PCI: qcom: Add support to PCIe slot power supplies
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>
CC: Konrad Dybcio <konradybcio@kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh@kernel.org>, <andersson@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <mturquette@baylibre.com>,
        <sboyd@kernel.org>, <abel.vesa@linaro.org>, <quic_msarkar@quicinc.com>,
        <quic_devipriy@quicinc.com>, <kw@linux.com>, <lpieralisi@kernel.org>,
        <neil.armstrong@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-clk@vger.kernel.org>
References: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
 <20240827063631.3932971-9-quic_qianyu@quicinc.com>
 <CAA8EJpq5KergZ8czg4F=EYMLANoOeBsiSVoO-zAgfG0ezQrKCQ@mail.gmail.com>
 <20240827165826.moe6cnemeheos6jn@thinkpad>
 <26f2845f-2e29-4887-9f33-0b5b2a06adb6@quicinc.com>
 <20240911153228.7ajcqicxnu2afhbp@thinkpad>
 <9222ef18-2eef-4ba3-95aa-fae540c06925@quicinc.com>
 <d5468dd2-0f81-4d89-a3bd-a546b2395ca6@kernel.org>
 <20240912144439.fnne4x7qvggveve2@thinkpad>
 <CAA8EJppSFb+Me6w5vUpmbogQ4DS2=15FmHu4nzGz2POWQPouwA@mail.gmail.com>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <CAA8EJppSFb+Me6w5vUpmbogQ4DS2=15FmHu4nzGz2POWQPouwA@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: _vNsLo3ok6ERoauWgDGeuNLPTcuWKCiI
X-Proofpoint-ORIG-GUID: _vNsLo3ok6ERoauWgDGeuNLPTcuWKCiI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 clxscore=1015
 impostorscore=0 mlxscore=0 bulkscore=0 suspectscore=0 priorityscore=1501
 mlxlogscore=999 lowpriorityscore=0 adultscore=0 phishscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409130059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_014116_111369_385D3CA3 
X-CRM114-Status: GOOD (  19.01  )
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

Ck9uIDkvMTIvMjAyNCAxMDo0OSBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiBUaHUs
IDEyIFNlcHQgMjAyNCBhdCAxNzo0NSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtCj4gPG1hbml2YW5u
YW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPiB3cm90ZToKPj4gT24gVGh1LCBTZXAgMTIsIDIwMjQg
YXQgMDQ6MTU6NTZQTSArMDIwMCwgS29ucmFkIER5YmNpbyB3cm90ZToKPj4+IE9uIDEyLjA5LjIw
MjQgMzozOSBQTSwgUWlhbmcgWXUgd3JvdGU6Cj4+Pj4gT24gOS8xMS8yMDI0IDExOjMyIFBNLCBN
YW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4+Pj4+IE9uIFdlZCwgU2VwIDExLCAyMDI0IGF0
IDA0OjE3OjQxUE0gKzA4MDAsIFFpYW5nIFl1IHdyb3RlOgo+Pj4+Pj4gT24gOC8yOC8yMDI0IDEy
OjU4IEFNLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4+Pj4+Pj4gT24gVHVlLCBBdWcg
MjcsIDIwMjQgYXQgMDI6NDQ6MDlQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4+
Pj4+Pj4gT24gVHVlLCAyNyBBdWcgMjAyNCBhdCAwOTozNiwgUWlhbmcgWXUgPHF1aWNfcWlhbnl1
QHF1aWNpbmMuY29tPiB3cm90ZToKPj4+Pj4+Pj4+IE9uIHBsYXRmb3JtIHgxZTgwMTAwIFFDUCwg
UENJZTMgaXMgYSBzdGFuZGFyZCB4OCBmb3JtIGZhY3Rvci4gSGVuY2UsIGFkZAo+Pj4+Pj4+Pj4g
c3VwcG9ydCB0byB1c2UgMy4zdiwgMy4zdiBhdXggYW5kIDEydiByZWd1bGF0b3JzLgo+Pj4+Pj4+
PiBGaXJzdCBvZiBhbGwsIEkgZG9uJ3Qgc2VlIGNvcnJlc3BvbmRpbmcgYmluZGluZ3MgY2hhbmdl
Lgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBTZWNvbmQsIHRoZXNlIHN1cHBsaWVzIHBvd2VyIHVwIHRoZSBz
bG90LCBub3QgdGhlIGhvc3QgY29udHJvbGxlcgo+Pj4+Pj4+PiBpdHNlbGYuIEFzIHN1Y2ggdGhl
c2Ugc3VwcGxpZXMgZG8gbm90IGJlbG9uZyB0byB0aGUgaG9zdCBjb250cm9sbGVyCj4+Pj4+Pj4+
IGVudHJ5LiBQbGVhc2UgY29uc2lkZXIgdXNpbmcgdGhlIHB3cnNlcSBmcmFtZXdvcmsgaW5zdGVh
ZC4KPj4+Pj4+Pj4KPj4+Pj4+PiBJbmRlZWQuIEZvciBsZWdhY3kgcmVhc29ucywgc2xvdCBwb3dl
ciBzdXBwbGllcyB3ZXJlIHBvcHVsYXRlZCBpbiB0aGUgaG9zdAo+Pj4+Pj4+IGJyaWRnZSBub2Rl
IGl0c2VsZiB1bnRpbCByZWNlbnRseSBSb2Igc3RhcnRlZCBvYmplY3RpbmcgaXQgWzFdLiBBbmQg
aXQgbWFrZXMKPj4+Pj4+PiByZWFsIHNlbnNlIHRvIHB1dCB0aGVzZSBzdXBwbGllcyBpbiB0aGUg
cm9vdCBwb3J0IG5vZGUgYW5kIGhhbmRsZSB0aGVtIGluIHRoZQo+Pj4+Pj4+IHJlbGV2YW50IGRy
aXZlci4KPj4+Pj4+Pgo+Pj4+Pj4+IEknbSBzdGlsbCBldmFsdWF0aW5nIHdoZXRoZXIgdGhlIGhh
bmRsaW5nIHNob3VsZCBiZSBkb25lIGluIHRoZSBwb3J0ZHJ2IG9yCj4+Pj4+Pj4gcHdyY3RsIGRy
aXZlciwgYnV0IGhhdmVuJ3QgcmVhY2hlZCB0aGUgY29uY2x1c2lvbi4gUHdyY3RsIHNlZW1zIHRv
IGJlIHRoZSBpZGVhbAo+Pj4+Pj4+IGNob2ljZSwgYnV0IEkgc2VlIGEgZmV3IGlzc3VlcyByZWxh
dGVkIHRvIGhhbmRsaW5nIHRoZSBPRiBub2RlIGZvciB0aGUgcm9vdAo+Pj4+Pj4+IHBvcnQuCj4+
Pj4+Pj4KPj4+Pj4+PiBIb3BlIEknbGwgY29tZSB0byBhIGNvbmNsdXNpb24gaW4gdGhlIG5leHQg
ZmV3IGRheXMgYW5kIHdpbGwgdXBkYXRlIHRoaXMgdGhyZWFkLgo+Pj4+Pj4+Cj4+Pj4+Pj4gLSBN
YW5pCj4+Pj4+Pj4KPj4+Pj4+PiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDI0
MDYwNDIzNTgwNi5HQTE5MDM0OTMtcm9iaEBrZXJuZWwub3JnLwo+Pj4+Pj4gSGkgTWFuaSwgZG8g
eW91IGhhdmUgYW55IHVwZGF0ZXM/Cj4+Pj4+Pgo+Pj4+PiBJJ20gd29ya2luZyB3aXRoIEJhcnRv
c3ogdG8gYWRkIGEgbmV3IHB3cmN0bCBkcml2ZXIgZm9yIHJvb3Rwb3J0cy4gQW5kIHdlIGFyZQo+
Pj4+PiBkZWJ1Z2dpbmcgYW4gaXNzdWUgY3VycmVudGx5LiBVbmZvcnR1bmF0ZWx5LCB0aGUgcHJv
Z3Jlc3MgaXMgdmVyeSBzbG93IGFzIEknbSBvbgo+Pj4+PiB2YWNhdGlvbiBzdGlsbC4KPj4+Pj4K
Pj4+Pj4gV2lsbCBwb3N0IHRoZSBwYXRjaGVzIG9uY2UgaXQgZ290IHJlc29sdmVkLgo+Pj4+Pgo+
Pj4+PiAtIE1hbmkKPj4+PiBPSywgdGhhbmtzIGZvciB5b3VyIHVwZGF0ZS4KPj4+IFFpYW5nLCB5
b3UgY2FuIHN0aWxsIHJlc3VibWl0IHRoZSByZXN0IG9mIHRoZSBwYXRjaGVzIHdpdGhvdXQgaGF2
aW5nCj4+PiB0byB3YWl0IG9uIHRoYXQgdG8gYmUgcmVzb2x2ZWQKPj4+Cj4+IEluIHRoYXQgY2Fz
ZSwgdGhlIHNsb3Qgc3VwcGxpZXMgc2hvdWxkIGJlIGRlc2NyaWJlZCBpbiB0aGUgUENJZSBicmlk
Z2UuCj4gUGF0Y2hlcyAxLTYgZG9uJ3Qgc2VlbSB0byBkZXBlbmQgb24gc2xvdCBzdXBwbGllcywg
c28gdGhleSBjYW4gYmUKPiBzdWJtaXR0ZWQgc2VwYXJhdGVseS4KT0ssIGxldCBtZSBzZW5kIHYy
IHBhdGNoLiBIaSBNYW5pLCBpZiB5b3UgbmVlZCBhbnkgc3VwcG9ydHMsIHBsZWFzZSBsZXQgCm1l
IGtub3cuCgpUaGFua3MsClFpYW5nCj4KPj4gLSBNYW5pCj4+Cj4+PiBLb25yYWQKPj4gLS0KPj4g
4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQo+Cj4K
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
