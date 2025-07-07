Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BE54C8303C
	for <linux-phy@archiver.kernel.org>; Mon,  7 Jul 2025 14:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DxcAYke+rGoq6OdHElYOgZq3LiXgYzv4Kd9co7hlJdk=; b=HlmTJ0z5gYlQ1W
	oLr3bdJPN45k87vdah0LbUbg5Q9/vVJ5O/wCtbuGPvGo3M49IM2Oj3DG0ppcUtqBe1GtGFlDgkaJK
	k6TSuZq8xaJzKI0yJh7eMeGkn2SzFcUIZ9Vj4SlVSft8yHP/uykuoOF+wPMueenLD8A2JzBSNFhN+
	C3Vu6JHchhepLoTGbzaTvIx1jNSkkxM9MhimK9ymjg2ygk6Au2YcI7XYSAF7nY2rATHpUNSW60lmJ
	CZ7XzD2a2ksBK2J+1+PernK2XP3Fs1Y9vzeODH1YPtwdJUkvOOzzlRx0v3Ou3HEq0pJ1ObQsAJmGD
	K2tk6E+nRvPJ7iTdLqng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYmpn-00000002hp3-18Fm;
	Mon, 07 Jul 2025 14:28:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYlpj-00000002YAq-0dFu
	for linux-phy@lists.infradead.org;
	Mon, 07 Jul 2025 13:24:36 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56798hkr023655;
	Mon, 7 Jul 2025 13:24:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sua7USQNBjanjipk7bMSQOIKdbetUUl77PdhQGmFdZs=; b=UQCbAwFrUYvJa9lx
	yy9slGKxK3EJqejQtO2h94psf0cOvBwXtrbGBQJ4p2QCi18Mwwt0NoPa857S1be4
	x0+TKASm9cY1P9lTiqcFTk8qb+dDS7dF+F4ejR/TWMXI2/pxaPdvTZhe2p3db8Js
	HE5037IbBnSYWJKr4fK+RHDNdvWrqB+zz8+NnUVdgedqU1IC/2093bal1KZ104Dh
	pBdm6lSYIOfS63BK8TS9j/KuK7zKXYBo1yOcVMpJhmRQSHP+Y3h48sUefuZKLReq
	XBSAXha5XGT2+Rlpvo4ttHy8HVF49CaQgqZjWWwBsOdgLaXU5gAhNI4CXpWHElQ8
	TwWXgQ==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pu0w5cxv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 07 Jul 2025 13:24:30 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 567DOT3Z014871
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 7 Jul 2025 13:24:29 GMT
Received: from [10.218.7.247] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Mon, 7 Jul
 2025 06:24:26 -0700
Message-ID: <6980c961-9f95-4471-9f8e-658f5c7f1648@quicinc.com>
Date: Mon, 7 Jul 2025 18:54:11 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom-qmp-ufs: Fix HS-G4 PHY init table for sc7280
To: Xilin Wu <sophon@radxa.com>,
        Dmitry Baryshkov
	<dmitry.baryshkov@oss.qualcomm.com>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Manish Pandey <quic_mapa@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20250613-sc7280-ufsphy-g4-fix-v1-1-1bf60744f5ac@radxa.com>
 <o2chuy22dls3y3bsjke34z7pnyzap6m4m34tjxswueshulii4d@d5lbcragrbjb>
 <9588D2722C1F010D+51f41c36-856d-4dda-9f30-226c2f772f2c@radxa.com>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <9588D2722C1F010D+51f41c36-856d-4dda-9f30-226c2f772f2c@radxa.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: SmUYIJv14QmIff6cJmkl0QlZ6jnrqTxc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA3MDA3OCBTYWx0ZWRfX7ceLMJ0dSRLM
 TuZvOf+W7HKKpeCUj0GkiJBaZNXjQnqL7ISsGXF6hqLoGKosf4jUnnzpgRaraZSnjlq0SVFDzZ6
 QZ1WVxqFzF4PYiL0LTZ0QpRtwIF81hdzuWALRl+6I4dJqWcvMz/3hHQpTypjh8yfmfKFID1pY+S
 Li9QPBmDx/g8WWxxfx7BKhQltBtKKn+6TW8SgtQZddiFAlyOHsNgaI3Qzm3BSWjm0TY2spEDXKy
 hMNmoOfHLVHGYpV/Q37kPk3CBVIl4G5VypIe7EfjXaEAiIgqzrL14g55DyKGds8e6TZ+QXl3Afq
 JJzq43QcP3Zg3pfW8cz0Cqv05W0cvA16ogqLU2yRRFYbJqm7G/kRZ/e6FIkQI7296DuL6iSMxUV
 KeYaS0DWs+n2P9gwXw5s1iyowO7PrQdIjELsgoVB0NKCRjxP7pbwAAghYs41a4s+6eqv0sO/
X-Authority-Analysis: v=2.4 cv=Rd2QC0tv c=1 sm=1 tr=0 ts=686bca8e cx=c_pps
 a=JYp8KDb2vCoCEuGobkYCKw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=NEAV23lmAAAA:8
 a=VwQbUJbxAAAA:8 a=ksxQWNrZAAAA:8 a=oqyW6cpqeoKVbJuktMwA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=l7WU34MJF0Z5EO9KEJC3:22
X-Proofpoint-GUID: SmUYIJv14QmIff6cJmkl0QlZ6jnrqTxc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-07_03,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 mlxscore=0 malwarescore=0 lowpriorityscore=0
 mlxlogscore=999 impostorscore=0 spamscore=0 phishscore=0 priorityscore=1501
 adultscore=0 clxscore=1011 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507070078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250707_062435_207323_15F2431D 
X-CRM114-Status: GOOD (  20.29  )
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

CgpPbiA3LzUvMjAyNSA2OjU2IFBNLCBYaWxpbiBXdSB3cm90ZToKPiBPbiAyMDI1LzcvNSAyMTow
Njo1NiwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4gT24gRnJpLCBKdW4gMTMsIDIwMjUgYXQg
MTA6NDE6NDhQTSArMDgwMCwgWGlsaW4gV3Ugd3JvdGU6Cj4+PiBUaGUgUEhZIGlzIGxpbWl0ZWQg
dG8gb3BlcmF0aW5nIGluIEhTLUczIG1vZGUgZHVyaW5nIHRoZSBpbml0aWFsIFBDUwo+Pj4gcmVn
aXN0ZXJzIGluaXRpYWxpemF0aW9uLiBFeHRyYSBQSFkgaW5pdCBzZXF1ZW5jZSBpcyByZXF1aXJl
ZCB0byBhbGxvdwo+Pj4gSFMtRzQgbW9kZSB0byB3b3JrIHdoZW4gbmVlZGVkLgo+Pgo+PiBJIGNh
bid0IGZpbmQgY29ycmVzcG9uZGluZyBzZXR0aW5ncyBpbiBlaXRoZXIgb2YgSFBHcy4KPj4KPiAK
PiBJIGJlbGlldmUgdGhlcmUgd2FzIGEgbWlzdGFrZSB3aGVuIGluaXRpYWxseSBhZGRpbmcgc3Vw
cG9ydCBmb3Igc2M3MjgwIAo+IFVGUyBQSFkgYmFzZWQgb24gZG93bnN0cmVhbSBjb2RlLiBJbiBk
b3duc3RyZWFtIFsxXSB0aGUgCj4gSFNHRUFSX0NBUEFCSUxJVFkgcmVnaXN0ZXJzIGFyZSBwcm9n
cmFtbWVkIHRvIDB4MyAqKm9ubHkqKiB3aGVuIEdlYXIgNCAKPiBpcyBub3QgbmVlZGVkLCB3aGls
ZSB0aGUgY3VycmVudCB1cHN0cmVhbSBkcml2ZXIgYWx3YXlzIHdyaXRlcyB0byB0aGlzIAo+IHJl
Z2lzdGVyIHJlZ2FyZGxlc3Mgb2YgdGhlIFVGUyBHZWFyLiBbMl0KCgpIaSBYaWxpbiwgRG1pdHJ5
CgpUaGUgU0M3MjgwIGlzIGJhc2VkIG9uIHRoZSBTTTgxNTAgZm9yIGdlYXIgMyBhbmQgdGhlIFNN
ODI1MCBmb3IgZ2VhciA0LiAKVGhlIHNtODE1MF91ZnNwaHlfaHNfZzRfcGNzIHRhYmxlIGlzIGlk
ZW50aWNhbCBmb3IgYm90aCB0aGUgU004MjUwIGFuZCAKU004MTUwLCBhbmQgaXMgdXNlZCBmb3Ig
Z2VhciA0IHNldHRpbmdzIGZvciBzYzcxODAsIFNNODI1MCBhbmQgU004MTUwLgoKQWRkaXRpb25h
bGx5LCB0aGUgY3VycmVudCBjb2RlIGFwcGxpZXMgdGJscyB0YWJsZSBieSBkZWZhdWx0IGZvciBh
bGwgCmdlYXJzLiBXZSBuZWVkIGEgc2VwYXJhdGUgb3ZlcmxheSB0YWJsZSBmb3IgZ2VhcjMgc2lt
aWxhciB0byBvdmVybGF5IAp0YWJsZXMgMCBhbmQgMSBmb3IgZ2VhciA0IGFuZCBnZWFyIDUsIHJl
c3BlY3RpdmVseS4KCkZvciBzZXR0aW5ncyBzcGVjaWZpYyB0byBnZWFyIDMsIHN1Y2ggYXMgClFQ
SFlfVjRfUENTX1VGU19UWF9QV01fR0VBUl9CQU5EIGFuZCAKUVBIWV9WNF9QQ1NfVUZTX1JYX0hT
R0VBUl9DQVBBQklMSVRZLCB3ZSBjYW4gaW5jbHVkZSB0aGVtIGluIHRoZSBvdmVybGF5IAp0YWJs
ZSBmb3IgZ2VhciAzLgoKCgoKCj4gCj4gSSBkb24ndCBoYXZlIGFjY2VzcyB0byB0aGUgSFBHcy4g
VGhlIEdlYXI0IHNwZWNpZmljIGluaXQgc2VxdWVuY2UgaXMgCj4gZm91bmQgaW4gdGhlIFF1YWxj
b21tIHByb3ByaWV0YXJ5IFVFRkkgZHJpdmVyIGNvZGUuCj4gCj4gWzFdOmh0dHBzOi8vZ2l0aHVi
LmNvbS9Ob3RoaW5nT1NTL2FuZHJvaWRfa2VybmVsX21zbS01LjRfbm90aGluZ19zbTczMjUvIAo+
IGJsb2Ivc203MzI1L3MvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tdWZzLXFtcC12NC15
dXBpay5oI0wzNTUKPiAKPiBbMl06IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51
eC9rZXJuZWwvZ2l0L25leHQvbGludXgtIAo+IG5leHQuZ2l0L3RyZWUvZHJpdmVycy9waHkvcXVh
bGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jI24yMTUKPiAKPj4+Cj4+PiBGaXhlczogOGFiZTk3OTJk
MWZmICgicGh5OiBxY29tLXFtcC11ZnM6IEFkZCBQaHkgQ29uZmlndXJhdGlvbiAKPj4+IHN1cHBv
cnQgZm9yIFNDNzI4MCIpCj4+PiBTaWduZWQtb2ZmLWJ5OiBYaWxpbiBXdSA8c29waG9uQHJhZHhh
LmNvbT4KPj4+IC0tLQo+Pj4gVGhpcyBtaWdodCBuZWVkIHRlc3Rpbmcgb24gc204MTUwLCBzbTgy
NTAgYW5kIHNjODE4MHggYXMgd2VsbC4KPj4+IC0tLQo+Pj4gwqAgZHJpdmVycy9waHkvcXVhbGNv
bW0vcGh5LXFjb20tcW1wLXVmcy5jIHwgNyArKysrKysrCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwg
NyBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21t
L3BoeS1xY29tLXFtcC11ZnMuYyBiL2RyaXZlcnMvcGh5LyAKPj4+IHF1YWxjb21tL3BoeS1xY29t
LXFtcC11ZnMuYwo+Pj4gaW5kZXggCj4+PiBiMzNlMmUyYjUwMTRkM2NhOGYxOWI2MjNiYTA4MDg4
N2Y1M2U2MTZkLi43Nzk3YmUzMjlkNzVmOTVjODA4NjNlMDUzNTFkMGNmNTVmZGYzOGMyIDEwMDY0
NAo+Pj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jCj4+PiAr
KysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMKPj4+IEBAIC01NzAs
NiArNTcwLDEzIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcW1wX3BoeV9pbml0X3RibCAKPj4+IHNt
ODE1MF91ZnNwaHlfcGNzW10gPSB7Cj4+PiDCoCBzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9waHlf
aW5pdF90Ymwgc204MTUwX3Vmc3BoeV9oc19nNF9wY3NbXSA9IHsKPj4+IMKgwqDCoMKgwqAgUU1Q
X1BIWV9JTklUX0NGRyhRUEhZX1Y0X1BDU19VRlNfVFhfTEFSR0VfQU1QX0RSVl9MVkwsIDB4MTAp
LAo+Pj4gK8KgwqDCoCBRTVBfUEhZX0lOSVRfQ0ZHKFFQSFlfVjRfUENTX1VGU19QTExfQ05UTCwg
MHgwYiksCj4+PiArwqDCoMKgIFFNUF9QSFlfSU5JVF9DRkcoUVBIWV9WNF9QQ1NfVUZTX1RJTUVS
XzIwVVNfQ09SRUNMS19TVEVQU19NU0IsIAo+Pj4gMHgyZCksCj4+PiArwqDCoMKgIFFNUF9QSFlf
SU5JVF9DRkcoUVBIWV9WNF9QQ1NfVUZTX1RJTUVSXzIwVVNfQ09SRUNMS19TVEVQU19MU0IsIAo+
Pj4gMHhiMCksCj4+PiArwqDCoMKgIFFNUF9QSFlfSU5JVF9DRkcoUVBIWV9WNF9QQ1NfVUZTX1RY
X1BXTV9HRUFSX0JBTkQsIDB4ZmYpLAo+Pj4gK8KgwqDCoCBRTVBfUEhZX0lOSVRfQ0ZHKFFQSFlf
VjRfUENTX1VGU19UWF9IU19HRUFSX0JBTkQsIDB4MWIpLAo+Pj4gK8KgwqDCoCBRTVBfUEhZX0lO
SVRfQ0ZHKFFQSFlfVjRfUENTX1VGU19UWF9IU0dFQVJfQ0FQQUJJTElUWSwgMHgwNCksCj4+PiAr
wqDCoMKgIFFNUF9QSFlfSU5JVF9DRkcoUVBIWV9WNF9QQ1NfVUZTX1JYX0hTR0VBUl9DQVBBQklM
SVRZLCAweDA0KSwKPj4+IMKgwqDCoMKgwqAgUU1QX1BIWV9JTklUX0NGRyhRUEhZX1Y0X1BDU19V
RlNfQklTVF9GSVhFRF9QQVRfQ1RSTCwgMHgwYSksCgpUaGVyZSBzZXR0aW5nIGFyZSBub3QgbWVu
dGlvbiBpbiBVRlMgUEhZIEhQRy4KClJlZ2FyZHMsCk5pdGluCgo+Pj4gwqAgfTsKPj4+Cj4+PiAt
LS0KPj4+IGJhc2UtY29tbWl0OiBiYzZlMGJhNmM5YmFmYTYyNDFiMDU1MjRiOTgyOTgwODA1NmFj
NGFkCj4+PiBjaGFuZ2UtaWQ6IDIwMjUwNjEzLXNjNzI4MC11ZnNwaHktZzQtZml4LTAyNDU0MmYz
MWZhYwo+Pj4KPj4+IEJlc3QgcmVnYXJkcywKPj4+IC0tIAo+Pj4gWGlsaW4gV3UgPHNvcGhvbkBy
YWR4YS5jb20+Cj4+Pgo+Pgo+IAo+IAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
