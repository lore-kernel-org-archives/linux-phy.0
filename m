Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E41ACCA0EEB
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 15:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YRdXq79Ia1hGSAF6z05YgBf+Hb/mp/RgnW3bmJD/4p8=; b=paMt92Bn7CXpnm
	CHGf26CotWv7/C2u/JgVLEi2M79eZPwSVFUuthNooTr9oiionvgL6iFUEmWzqTBYpKVPbO286qROg
	LGCWqeTmaM2ytqakOEngauMismcacGS/WUIJxV2l0it9u7GQqVc8jEEurNHoE7v0To9POzdIU62lu
	G73U1lRgcyaUDVsv2OP5PAV8g8KwJ4xqYJyAu1thF9nSKOzYFfTo2RdNz1dk5D4jbDxfbQlFBv3DQ
	A+Iu6lGnSu4FRq3XkIRwxoBLvjkkRYTV5OWsspkWi4QN6F1VUi5TYi2uUtwwFWsqzdMuZDk+aQoXd
	q9qp8j1+/pkLL+NmsXVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upTn8-0000000335W-2PfQ;
	Fri, 22 Aug 2025 15:34:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upO17-000000022LA-2j2W
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 09:25:02 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8USDF021815;
	Fri, 22 Aug 2025 09:24:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DzVNPB8xTXUqx7ZE4WGUwMD8Kgr3PNnsTFcnCr///+0=; b=l/rumJaD4CBkMSB4
	cCi0K7RhJnpdKQRNdvkW894LPWn36BfHn7hwiJwl8OPRyNx/YfWDdneHByHGAFoc
	YmtPuLT3JvXatFePQaNdK349fTSmic3j9Yx6KFI+F0uor3RhBeFCoQ8IdF972Jxh
	07BMXsjY1fZlRgaTwPLnD2jYATMSpwZA9ECIsIMKF/7GDVSyPRKVPPnqgk2WjCZu
	AVGYRSUiuGU8xUn6t2Ren2CUORFpoRH64dkavdk6Y9fdaoIse3gClcDSfRJYhH58
	///2S8RAgKOylI2rcabQJTpU2e81tYoc8DixQuSeF/BP1/tbs+1c0RkbxJRV8qei
	4oEIUg==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52a8qt8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Aug 2025 09:24:59 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 57M9Oxdt026171
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Aug 2025 09:24:59 GMT
Received: from [10.216.22.206] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Fri, 22 Aug
 2025 02:24:55 -0700
Message-ID: <e42b7bdd-e9a1-47d9-9d97-c4da9e3a553a@quicinc.com>
Date: Fri, 22 Aug 2025 14:54:52 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 2/2] phy: qcom-qmp-ufs: Add regulator loads for SM8650
 and SM8750
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <mani@kernel.org>,
        <andersson@kernel.org>, <konradybcio@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
References: <20250819222832.8471-1-quic_nitirawa@quicinc.com>
 <20250819222832.8471-3-quic_nitirawa@quicinc.com>
 <ger4kizeltjwalfuwu4dpfjiskrv2okgo5c7d6n3pb24yaxgfo@nkcndblyx3il>
 <b453b8ff-a460-4ccd-9019-aed746a7d52d@quicinc.com>
 <ukxv7donvkulgci2dwrokuflzxzeyh4kohoyja2vywropntxnb@qepcssbe4wpc>
 <9a38ec05-f7ab-4241-ba47-0d514b79e808@quicinc.com>
 <8aa65fdc-d5a1-4a81-bcc1-8d953fa0ffa8@oss.qualcomm.com>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <8aa65fdc-d5a1-4a81-bcc1-8d953fa0ffa8@oss.qualcomm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=feD0C0QF c=1 sm=1 tr=0 ts=68a8376b cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10
 a=HlU9Us3Qg5alJfMBsI8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=cPQSjfK2_nFv0Q5t_7PE:22
X-Proofpoint-ORIG-GUID: KjI4gmKcUOQdnvZBnLRUzrmp-h0lHPop
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX9EVKypVeG/E3
 4wxVZ45M8p0d8Uk8CaCOk5kzn1FFWJuague/jw8x2szKYFUEtQHxz0zliTRTXHZyTWQvB/qzUv6
 8foK4cbvPUxi0bHyyZCabYoJ778CGW4oe6psCYUyZItC8PNIQ74frQw22EQ26PRxtjdLkCOXYhN
 fbG14EVxlXyuZOGWHlrz/S2f2bEB3PPu4+Yvbsn46pN4DHmOxlWiBzjEM9P/+leLeGJgnDLjn8k
 G2LzRw2vlD8oDiGAlUd6rS+VXzqCwVdknq7IyZUW04oLY9uICsGF5EQHgc8Dk6lZeCOPAnI29bz
 UHNTdt9yFz0EBIEXkQBWyt3QbxsVeBXMhutaH21wBzJGg45uoNg93tWUcjpOSpyyK9GWL1mfeWP
 yQhBoCLdxSjW9oP+fEHWCdD5pf45eg==
X-Proofpoint-GUID: KjI4gmKcUOQdnvZBnLRUzrmp-h0lHPop
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_022501_691323_B124A21F 
X-CRM114-Status: GOOD (  20.49  )
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

CgpPbiA4LzIyLzIwMjUgMjo0OSBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiAyMS8w
OC8yMDI1IDE5OjAyLCBOaXRpbiBSYXdhdCB3cm90ZToKPj4KPj4KPj4gT24gOC8yMC8yMDI1IDU6
MjQgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+PiBPbiBXZWQsIEF1ZyAyMCwgMjAyNSBh
dCAxMjowNzo1N1BNICswNTMwLCBOaXRpbiBSYXdhdCB3cm90ZToKPj4+Pgo+Pj4+Cj4+Pj4gT24g
OC8yMC8yMDI1IDY6MTkgQU0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+Pj4+IE9uIFdlZCwg
QXVnIDIwLCAyMDI1IGF0IDAzOjU4OjI2QU0gKzA1MzAsIE5pdGluIFJhd2F0IHdyb3RlOgo+Pj4+
Pj4gQWRkIHJlZ3VsYXRvciBsb2FkIHZvdGluZyBzdXBwb3J0IGZvciBTTTg2NTAgYW5kIFNNODc1
MCBwbGF0Zm9ybXMgYnkKPj4+Pj4+IGludHJvZHVjaW5nIGRlZGljYXRlZCByZWd1bGF0b3IgYnVs
ayBkYXRhIGFycmF5cyB3aXRoIHRoZWlyIGxvYWQKPj4+Pj4+IHZhbHVlcy4KPj4+Pj4+Cj4+Pj4+
PiBUaGUgbG9hZCByZXF1aXJlbWVudHMgYXJlOgo+Pj4+Pj4gLSBTTTg2NTA6IHZkZGEtcGh5ICgy
MDVtQSksIHZkZGEtcGxsICgxNy41bUEpCj4+Pj4+PiAtIFNNODc1MDogdmRkYS1waHkgKDIxM21B
KSwgdmRkYS1wbGwgKDE4LjNtQSkKPj4+Pj4+Cj4+Pj4+PiBUaGlzIGVuc3VyZXMgc3RhYmxlIG9w
ZXJhdGlvbiBhbmQgcHJvcGVyIHBvd2VyIG1hbmFnZW1lbnQgZm9yIHRoZXNlCj4+Pj4+PiBwbGF0
Zm9ybXMgd2hlcmUgcmVndWxhdG9ycyBhcmUgc2hhcmVkIGJldHdlZW4gdGhlIFFNUCBVU0IgUEhZ
IGFuZAo+Pj4+Pj4gb3RoZXIgSVAgYmxvY2tzIGJ5IHNldHRpbmcgYXBwcm9wcmlhdGUgcmVndWxh
dG9yIGxvYWQgY3VycmVudHMgCj4+Pj4+PiBkdXJpbmcgUEhZCj4+Pj4+PiBvcGVyYXRpb25zLgo+
Pj4+Pj4KPj4+Pj4+IENvbmZpZ3VyYXRpb25zIHdpdGhvdXQgc3BlY2lmaWMgbG9hZCByZXF1aXJl
bWVudHMgd2lsbCBjb250aW51ZSB0byAKPj4+Pj4+IHdvcmsKPj4+Pj4+IHVuY2hhbmdlZCwgYXMg
aW5pdF9sb2FkX3VBIHJlbWFpbnMgemVyby1pbml0aWFsaXplZCAKPj4+Pj4+IHdoZW4gLmluaXRf
bG9hZF91QQo+Pj4+Pj4gaXMgbm90IHByb3ZpZGVkLgo+Pj4+Pgo+Pj4+PiBDYW4gd2UgcGxlYXNl
IGdldCBjb25maWd1cmF0aW9uIGZvciB0aGUgcmVzdCBvZiB0aGUgcGxhdGZvcm1zPwo+Pj4+Cj4+
Pj4gSGkgRG1pdHJ5LAo+Pj4+Cj4+Pj4gSWYgeW91J3JlIG9rYXkgd2l0aCBpdCwgY2FuIEkgbWVy
Z2UgdGhlIGNvbmZpZ3VyYXRpb24gZm9yIHRoZSByZW1haW5pbmcKPj4+PiBwbGF0Zm9ybXMgaW4g
dGhlIG5leHQgcGF0Y2ggc2VyaWVzIGFmdGVyIEkgY29tcGxldGUgdGVzdGluZyBvbiBhbGwgCj4+
Pj4gcmVtYWluaW5nCj4+Pj4gcGxhdGZvcm1zLgo+Pj4KPj4+IFlvdSBkb24ndCBuZWVkIHRvIHRl
c3QsIGZpbmRpbmcgTVNNODk5NiBvciA5OCBtaWdodCBiZSB0cm91Ymxlc29tZS4gSnVzdAo+Pj4g
ZmlsbCBpbiB0aGUgdmFsdWVzIGZyb20gdGhlIGhhcmR3YXJlIGRvY3VtZW50YXRpb24uCj4+Cj4+
IEhpIERtaXRyeSwKPj4KPj4gV2hpbGUgaW1wbGVtZW50aW5nIGNoYW5nZXMgZm9yIGFsbCByZW1h
aW5pbmcgcGxhdGZvcm0sIEkgbm90aWNlZCB0aGF0IAo+PiB0aGUgInJlZ3VsYXRvci1hbGxvdy1z
ZXQtbG9hZCIgcHJvcGVydHkgaXMgZGVmaW5lZCBvbmx5IGZvciBTTTg3NTAgYW5kIAo+PiBTTTg4
NTAgd2l0aGluIHRoZSBQTUlDIFBIWSBhbmQgUExMIGRldmljZSB0cmVlIG5vZGVzIHdoaWNoIG1l
YW5zIHRoYXQgCj4+IGV2ZW4gaWYgdGhlIFVGUyBQSFkgZHJpdmVyIGlzIHVwZGF0ZWQgdG8gdm90
ZSBmb3IgdGhpcyBjb25maWd1cmF0aW9uIAo+PiBvbiBvdGhlciBwbGF0Zm9ybXMsIGl0IHdpbGwg
aGF2ZSBubyBpbXBhY3QuCj4gCj4gSWYgSSByZW1lbWJlciBjb3JyZWN0bHksIG9uIG90aGVyIHBs
YXRmb3JtcyB3ZSBkb24ndCBhbGxvdyBzZXR0aW5nIHRoZSAKPiBsb2FkIGV4YWN0bHkgYmVjYXVz
ZSBjb25zdW1lcnMgd2VyZSBub3Qgdm90aW5nIG9uIHRoZSBjdXJyZW50L3Bvd2VyIAo+IHJlcXVp
cmVtZW50cy4KPiAKPj4KPj4gU2hvdWxkIEkgc3RpbGwgcHJvY2VlZCB3aXRoIGFwcGx5aW5nIHRo
ZSBjaGFuZ2UgYWNyb3NzIGFsbCBwbGF0Zm9ybSwgCj4+IG9yIGxpbWl0IGl0IHRvIGp1c3QgdGhl
IFNNODc1MCBhbmQgU004ODUwIGRyaXZlcnM/IFdoYXTigJlzIHlvdXIgCj4+IHJlY29tbWVuZGF0
aW9uPwo+IAo+IEkgdGhpbmssIHdlIHNob3VsZCBwcm9jZWVkLCB0aGVuIG9uY2UgYWxsIFBIWXMg
Z2V0IHRob3NlIHZvdGVzIHdlIGNhbiAKPiBlbmFibGUgbG9hZCB0b2dnbGluZyBvbiB0aG9zZSBw
bGF0Zm9ybXMgdG9vLgoKU3VyZSBEbWl0cnkuIEknbGwgbWFrZSB0aGUgY2hhbmdlIGluIG5leHQg
cGF0Y2hzZXQuCgoKCj4gCj4+Cj4+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+PiAvLyBEZXZpY2UgdHJl
ZToKPj4gdnJlZ19sMWpfMHA5MTogbGRvMSB7Cj4+IMKgwqDCoMKgIHJlZ3VsYXRvci1uYW1lID0g
InZyZWdfbDFqXzBwOTEiOwo+PiDCoMKgwqDCoCByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw4
ODAwMDA+Owo+PiDCoMKgwqDCoCByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDw5MjAwMDA+Owo+
PiDCoMKgwqDCoCByZWd1bGF0b3ItaW5pdGlhbC1tb2RlID0gPFJQTUhfUkVHVUxBVE9SX01PREVf
SFBNPjsKPj4gwqDCoMKgwqAgcmVndWxhdG9yLWFsbG93LXNldC1sb2FkOwo+PiDCoMKgwqDCoCBy
ZWd1bGF0b3ItYWxsb3dlZC1tb2RlcyA9IDxSUE1IX1JFR1VMQVRPUl9NT0RFX0xQTSAKPj4gUlBN
SF9SRUdVTEFUT1JfTU9ERV9IUE0+Owo+PiB9Owo+Pgo+PiA9PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPj4g
ZHJpdmVycy9yZWd1bGF0b3Ivb2ZfcmVndWxhdG9yLmMKPj4KPj4KPj4gaWYgKG9mX3Byb3BlcnR5
X3JlYWRfYm9vbChucCwgInJlZ3VsYXRvci1hbGxvdy1zZXQtbG9hZCIpKQo+PiDCoMKgwqDCoMKg
wqDCoMKgIGNvbnN0cmFpbnRzLT52YWxpZF9vcHNfbWFzayB8PSBSRUdVTEFUT1JfQ0hBTkdFX0RS
TVM7Cj4+Cj4+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+PiAvL2RyaXZlcnMvcmVndWxhdG9yL2NvcmUu
Ywo+PiBzdGF0aWMgaW50IGRybXNfdUFfdXBkYXRlKHN0cnVjdCByZWd1bGF0b3JfZGV2ICpyZGV2
KQo+PiB7Cj4+IMKgwqDCoMKgIC4uLgo+PiDCoMKgwqDCoCBpZiAoIXJlZ3VsYXRvcl9vcHNfaXNf
dmFsaWQocmRldiwgUkVHVUxBVE9SX0NIQU5HRV9EUk1TKSkgewo+PiDCoMKgwqDCoMKgwqDCoMKg
IHJkZXZfZGJnKHJkZXYsICJEUk1TIG9wZXJhdGlvbiBub3QgYWxsb3dlZFxuIik7Cj4+IMKgwqDC
oMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+IMKgwqDCoMKgIH0KPj4gwqDCoMKgwqAgLi4uCj4+IH0K
Pj4KPj4KPj4gUmVnYXJkcywKPj4gTml0aW4KPj4KPj4KPj4KPj4KPj4+Cj4+Cj4gCj4gCgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
