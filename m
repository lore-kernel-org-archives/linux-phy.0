Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4570DC0218C
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jan 2025 04:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:CC:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D4uvq21FOPRyWTn2153ZiiEupl/LBJF2JjjUWdNvCrU=; b=QpqxoYiEUu5qmv
	Px3nMhbbl/KQ38kqnqfGXto3zr1CLv78wyGENlWLIL5oIcFXEqwdLr6VwqQjwyi4JZSm/P+B9lQht
	eE9rhbHjld5wYv5fu703V3+QyJsNEI3eE24aOAmVsjuqUJcSYeucjQBkmj55m//cxnjujdZaKs1N3
	ldUkVtv2ReH0Sw2hGJ4Md+CsPUVwl7uyplh6aJ2k/mf8YZL78vehcHbCkMDPvHmWcdwW36G/YqEnk
	k6Rd2BTqE9qqEFWy6oXyvie58+WIMYsSXT86YSON8TgGP2++5A0IYMMysRYnBP+GjXt8P3Dhu2vsD
	TaatbObKBLxzW6xNAcGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcGh1-00000001d1v-3T34;
	Mon, 27 Jan 2025 04:25:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcGgy-00000001d1X-3zPe
	for linux-phy@lists.infradead.org;
	Mon, 27 Jan 2025 04:25:46 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50R3Twg1002962;
	Mon, 27 Jan 2025 04:25:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Agj9TdzPEAi+UN/7+D5zhJ/2bw2ImEuZZss2DghTua0=; b=pVL0tTI03lOegzzW
	Ujc3az80GcKYi6D1CBWMAlRAQkksteEPpxAJPM2XyGMURAk/4B5MzXNGrxrODUHu
	IiHqSwEfMqWD8BkfJzTJIclCCcLcHA2KXyi3E8N9kFY4n7WZhiME9SqNFq6idfgR
	/TCzVG878OysLIzmljh3DPSrrQJRPThG/8svjwC+nU0/istLXrE3cOkkfuLWfRYD
	0H+2RffOmUUwehYTm6GqKQ9BiSpwGdrrmXSjClsbT0Ps+pR25/F2Wsx+u4Ho3EzD
	XcBbr04aAF/2GnAL/3DX2lN5saHZv1Q1ue76/hkubgdWLq/9uhMEJzExHNZxyzoE
	84s6TA==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44e298826q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 27 Jan 2025 04:25:06 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 50R4P6Gj019252
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 27 Jan 2025 04:25:06 GMT
Received: from [10.253.39.219] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Sun, 26 Jan
 2025 20:25:00 -0800
Message-ID: <37fc7aa6-23d2-4636-8e02-4957019121a3@quicinc.com>
Date: Mon, 27 Jan 2025 12:23:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: qcom-qusb2: Add regulator_set_load to Qualcomm
 usb phy
From: Song Xue <quic_songxue@quicinc.com>
To: Bjorn Andersson <andersson@kernel.org>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Manu Gautam <mgautam@codeaurora.org>,
        Vivek Gautam
	<vivek.gautam@codeaurora.org>, <kernel@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
References: <20241121-add_set_load_to_qusb_phy-v2-1-1c5da1befec0@quicinc.com>
 <vbuo2yel2pdcwnmz32f4t5pb6v3ptt2bcs2t6ybab2jxnkd6e7@rjnsbawj4zpb>
 <0a16d52c-eebe-40da-ba02-7f68a7849039@quicinc.com>
Content-Language: en-US
In-Reply-To: <0a16d52c-eebe-40da-ba02-7f68a7849039@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: OmUGvyl4CftSN4RAvFxrO03aivc_UYlw
X-Proofpoint-ORIG-GUID: OmUGvyl4CftSN4RAvFxrO03aivc_UYlw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-27_01,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 bulkscore=0
 mlxlogscore=999 lowpriorityscore=0 spamscore=0 malwarescore=0 phishscore=0
 suspectscore=0 adultscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501270033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250126_202545_016911_426307D9 
X-CRM114-Status: GOOD (  28.56  )
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

CgpPbiAxMi8xMy8yMDI0IDQ6MTUgUE0sIFNvbmcgWHVlIHdyb3RlOgo+IAo+IAo+IE9uIDExLzI5
LzIwMjQgMTI6NDMgQU0sIEJqb3JuIEFuZGVyc3NvbiB3cm90ZToKPj4gT24gVGh1LCBOb3YgMjEs
IDIwMjQgYXQgMDQ6MDk6MjdQTSArMDgwMCwgU29uZyBYdWUgd3JvdGU6Cj4+PiBTZXQgdGhlIGN1
cnJlbnQgbG9hZCBiZWZvcmUgZW5hYmxlIHJlZ3VsYXRvciBzdXBwbGllcyBhdCBRVVNCIHBoeS4K
Pj4+Cj4+PiBFbmNvdW50ZXJlZCBvbmUgaXNzdWUgd2hlcmUgdGhlIGJvYXJkIHBvd2VyZWQgZG93
biBpbnN0YW50bHkgb25jZSB0aGUgCj4+PiBVVkMKPj4+IGNhbWVyYSB3YXMgYXR0YWNoZWQgdG8g
VVNCIHBvcnQgd2hpbGUgYWRkaW5nIGhvc3QgbW9kZSBvbiB1c2IgcG9ydCBhbmQKPj4+IHRlc3Rp
bmcgYSBVVkMgY2FtZXJhIHdpdGggdGhlIGRyaXZlciBvbiBRQ1M2MTUgcGxhdGZvcm0uIFRoZSBl
eHRlbnNpYmxlCj4+PiBib290IGxvYWRlciBtZW50aW9uZWQgdGhhdCBPQ1AoT3ZlciBDdXJyZW50
IFByb3RlY3Rpb24pIG9jY3VycmVkIGF0IAo+Pj4gTERPMTIKPj4+IGZyb20gcmVndWxhdG9ycy0w
IHVwb24gcG93ZXJlZCBvbiBib2FyZCBhZ2Fpbi4gVGhhdCBpbmRpY2F0ZXMgdGhhdCB0aGUKPj4+
IGN1cnJlbnQgbG9hZCBzZXQgZm9yIFFVU0IgcGh5LCB3aGljaCB1c2UgdGhlIHJlZ3VsYXRvciBz
dXBwbHksIGlzIGxvd2VyCj4+PiB0aGFuIGV4cGVjdGVkLgo+Pj4KPj4+IEFzIHBlciBRVVNCIHNw
ZWMsIHNldCB0aGUgbWF4aW11bSBjdXJyZW50IGxvYWQgYXQgMzBtQSB0byBhdm9pZCAKPj4+IG92
ZXJjdXJyZW50Cj4+PiBsb2FkIHdoZW4gYXR0YWNoIGEgZGV2aWNlIHRvIHRoZSBVU0IgcG9ydC4K
Pj4+Cj4+PiBGaXhlczogOTM3ZTE3ZjM2YTMyICgicGh5OiBxY29tLXF1c2IyOiBQb3dlci1vbiBQ
SFkgYmVmb3JlIAo+Pj4gaW5pdGlhbGl6YXRpb24iKQo+Pj4gU2lnbmVkLW9mZi1ieTogU29uZyBY
dWUgPHF1aWNfc29uZ3h1ZUBxdWljaW5jLmNvbT4KPj4KPj4gVGhlIHBhdGNoIGxvb2tzIGdvb2Qu
IEJ1dCBpZiB3ZSBkZXNjcmliZSB0aGUgcmVndWxhdG9yKHMpIHdpdGgKPj4gcmVndWxhdG9yLWFs
bG93LXNldC1sb2FkOyBhbmQgbm90IGFsbCB0aGUgY29uc3VtZXJzIHZvdGUgZm9yIGxvYWQsIHRo
ZQo+PiBzdW0gb2YgdGhlIGxvYWQgd2hlbiBVU0IgcGh5IGlzIGRpc2FibGVkIGdvZXMgdG8gMCBh
bmQgd2Ugd2lsbCBlbnRlcgo+PiBMUE0uCj4+Cj4gSGksIEJqb3JuCj4gCj4gVGhhbmtzIGZvciBj
b21tZW50Lgo+IAo+IFdlIGRpdmVkIGludG8gdGhlIGNvZGUgYW5kIGZvdW5kIHRoZSBvdGhlciBh
bGwgUXVhbGNvbW0gcGxhdGZvcm0ncyAKPiBkZXZpY2UgdHJlZSB1c2luZyB0aGUgcGh5LXFjb20t
cXVzYjIncyBjb21wYXRpYmxlIGRvbid0IHVzZSB0aGUgCj4gInJlZ3VsYXRvci1pbml0aWFsLW1v
ZGUgPSA8UlBNSF9SRUdVTEFUT1JfTU9ERV9IUE0+IiBhbmQgInJlZ3VsYXRvci0gCj4gYWxsb3ct
c2V0LWxvYWQiIHRvZ2V0aGVyIGF0IHRoZSBzYW1lIHRpbWUuIFdlIHRoaW5rIHRoZSBwYXRjaCBp
cyBzYWZlIG5vdy4KPiAKPiBUaGVyZWZvcmUsIGNhbiB3ZSBtZXJnZSB0aGUgcGF0Y2g/Cj4gCj4g
VGhhbmtzLAo+IFNvbmcKCkhpLCBCam9ybgoKQXMgbWVudGlvbmVkIGluIHRoZSBhYm92ZSBjb21t
ZW50LCB0aGUgY29kZSBpcyBzYWZlIGZvciBzZXR0aW5nIHRoZSAKbG9hZC4gQWRkaXRpb25hbGx5
LCB3ZSBjYW4gc2VlIHRoYXQgdGhlIHBhdGNoIGZvciBzZXR0aW5nIHRoZSBjdXJyZW50IApsb2Fk
IGZvciBFTU1DIG9uIFFDUzYxNSBoYXMgYmVlbiBhcHBsaWVkLgoKaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvYWxsLzIwMjUwMTE0MDgzNTE0LjI1ODM3OS0xLXF1aWNfeXVhbmppZXlAcXVpY2luYy5j
b20vCgpjb3VsZCB5b3UgcGxzIGhlbHAgY29uZmlybSBpZiBhcHBseSB0aGUgcGF0Y2g/CgpUaGFu
a3MsClNvbmcKPj4gRm9yIHRoaXMgcmVhc29uIHdlJ3JlIG5vdCBkb2luZyBhbnkgbG9hZCByZXF1
ZXN0cyB0b2RheS4gQ2FuIHlvdSBjb25maXJtCj4+IHRoYXQgdGhpcyB3b3JrcyBmaW5lIHdpdGgg
YSBkdGIgd2hlcmUgb25seSBIUE0gaXMgcGVybWl0dGVkIChhcyB3ZWxsIGFzCj4+IExQTSBhbmQg
SFBNKT8gSWYgc28gSSdkIGJlIGluIGZhdm9yIG9mIHVzIG1lcmdpbmcgdGhpcyBjaGFuZ2UsIGJ1
dAo+PiBrZWVwaW5nIHRoZSBkdHMgSFBNLW9ubHkgdW50aWwgc29tZW9uZSBjb25maXJtcyB0aGF0
IGFsbCBjb25zdW1lcnMgb2YKPj4gdGhlc2UgcmVndWxhdG9ycyBzcGVjaWZ5IGxvYWQtdm90ZXMu
Cj4+Cj4+IFJlZ2FyZHMsCj4+IEJqb3JuCj4+Cj4+PiAtLS0KPj4+IENoYW5nZXMgaW4gdjI6Cj4+
PiAtIFJlbW92ZWQgIi0tLSIgYWJvdmUgdGhlIEZpeGVzLgo+Pj4gLSBMaW5rIHRvIHYxOiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9yLzIwMjQxMTIxLSAKPj4+IGFkZF9zZXRfbG9hZF90b19xdXNi
X3BoeS12MS0xLTBmNDRmM2EzMjkwZUBxdWljaW5jLmNvbQo+Pj4gLS0tCj4+PiDCoCBkcml2ZXJz
L3BoeS9xdWFsY29tbS9waHktcWNvbS1xdXNiMi5jIHwgMTMgKysrKysrKysrKysrLQo+Pj4gwqAg
MSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4+Cj4+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcXVzYjIuYyBiL2RyaXZl
cnMvcGh5LyAKPj4+IHF1YWxjb21tL3BoeS1xY29tLXF1c2IyLmMKPj4+IGluZGV4IAo+Pj4gYzUy
NjU1YTM4M2NlZjAwODU1MmVkNDUzM2I5ZjMxZDFjYmYzNGExMy4uODBmMGQxN2M0MjcxN2U4NDM5
MzcyNTVhOWE3ODBiYmFlNTk5ODUzNSAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxj
b21tL3BoeS1xY29tLXF1c2IyLmMKPj4+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1x
Y29tLXF1c2IyLmMKPj4+IEBAIC03MjIsMTYgKzcyMiwyNyBAQCBzdGF0aWMgaW50IF9fbWF5YmVf
dW51c2VkIAo+Pj4gcXVzYjJfcGh5X3J1bnRpbWVfcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmRldikK
Pj4+IMKgwqDCoMKgwqAgcmV0dXJuIHJldDsKPj4+IMKgIH0KPj4+ICsjZGVmaW5lIFFVU0IyUEhZ
X0hQTV9MT0FEIDMwMDAwIC8qdUEqLwo+Pj4gKwo+Pj4gwqAgc3RhdGljIGludCBxdXNiMl9waHlf
aW5pdChzdHJ1Y3QgcGh5ICpwaHkpCj4+PiDCoCB7Cj4+PiDCoMKgwqDCoMKgIHN0cnVjdCBxdXNi
Ml9waHkgKnFwaHkgPSBwaHlfZ2V0X2RydmRhdGEocGh5KTsKPj4+IMKgwqDCoMKgwqAgY29uc3Qg
c3RydWN0IHF1c2IyX3BoeV9jZmcgKmNmZyA9IHFwaHktPmNmZzsKPj4+IMKgwqDCoMKgwqAgdW5z
aWduZWQgaW50IHZhbCA9IDA7Cj4+PiDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCBjbGtfc2NoZW1l
Owo+Pj4gLcKgwqDCoCBpbnQgcmV0Owo+Pj4gK8KgwqDCoCBpbnQgcmV0LCBpOwo+Pj4gwqDCoMKg
wqDCoCBkZXZfdmRiZygmcGh5LT5kZXYsICIlcygpOiBJbml0aWFsaXppbmcgUVVTQjIgcGh5XG4i
LCBfX2Z1bmNfXyk7Cj4+PiArwqDCoMKgIC8qIHNldCB0aGUgY3VycmVudCBsb2FkICovCj4+PiAr
wqDCoMKgIGZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKHFwaHktPnZyZWdzKTsgaSsrKSB7Cj4+
PiArwqDCoMKgwqDCoMKgwqAgcmV0ID0gcmVndWxhdG9yX3NldF9sb2FkKHFwaHktPnZyZWdzW2ld
LmNvbnN1bWVyLCAKPj4+IFFVU0IyUEhZX0hQTV9MT0FEKTsKPj4+ICvCoMKgwqDCoMKgwqDCoCBp
ZiAocmV0KSB7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfZXJyKCZwaHktPmRldiwg
ImZhaWxlZCB0byBzZXQgbG9hZCBhdCAlc1xuIiwgcXBoeS0gCj4+PiA+dnJlZ3NbaV0uc3VwcGx5
KTsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+PiArwqDCoMKgwqDC
oMKgwqAgfQo+Pj4gK8KgwqDCoCB9Cj4+PiArCj4+PiDCoMKgwqDCoMKgIC8qIHR1cm4gb24gcmVn
dWxhdG9yIHN1cHBsaWVzICovCj4+PiDCoMKgwqDCoMKgIHJldCA9IHJlZ3VsYXRvcl9idWxrX2Vu
YWJsZShBUlJBWV9TSVpFKHFwaHktPnZyZWdzKSwgcXBoeS0+dnJlZ3MpOwo+Pj4gwqDCoMKgwqDC
oCBpZiAocmV0KQo+Pj4KPj4+IC0tLQo+Pj4gYmFzZS1jb21taXQ6IGRlY2M3MDFmNDFkMDc0ODE4
OTNmZGVhOTQyYzBhYzZiMjI2ZTg0Y2QKPj4+IGNoYW5nZS1pZDogMjAyNDExMjEtYWRkX3NldF9s
b2FkX3RvX3F1c2JfcGh5LWQxMzI3Yzc5N2ZmZQo+Pj4KPj4+IEJlc3QgcmVnYXJkcywKPj4+IC0t
IAo+Pj4gU29uZyBYdWUgPHF1aWNfc29uZ3h1ZUBxdWljaW5jLmNvbT4KPj4+Cj4+Pgo+IAo+IAoK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
