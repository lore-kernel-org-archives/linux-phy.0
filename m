Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60D9DC43458
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jul 2026 10:13:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qscRqHOaNYZYsPs/mGkULZ3qfmR15OOOU96dcc5emHE=; b=sxtNy8C+u1LXLx
	/4lIESzhKlLjNEzdJSZvHPNMS67TXm0rUFxvqe6QtGZSTEvm2jGXqDih/R9VxZl+2ChYcUM4Eqh+t
	M1P2QoUGi2chABFReQ/YfIrNKqdcE1ta/SrZyD+Bv3o8K9SzYBMzKF2SMyYEhr1CmsV/CzrTOGchK
	k1LaVg3eX55qEK1xrXw5Ba/5gvpTnmrOXepfhp67NoRlWZtMuJJsq9q9yIOuPoCgi+bifBa2Jqnku
	Jq9MwWc/UkdudC5CbJuy0+Xm+PFcktvp59gE9oshmxaMD+mHVH3xt7m6L0P2XpuJMyVH07Xptmkdy
	6io2rEtsZIdUOCCVT/hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi8EJ-00000004g2B-0Nzq;
	Fri, 10 Jul 2026 10:13:11 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi8EG-00000004g1U-0vKW
	for linux-phy@lists.infradead.org;
	Fri, 10 Jul 2026 10:13:09 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66A7eeXU092339;
	Fri, 10 Jul 2026 10:13:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fDaAlLM/vYTFmq4duyZj/0Kvfiq4vCvEiCwsqBWXP30=; b=Yxis0IsEmW4McgPE
	CtHigz4y7Xn3wzuO/Iyv7/n8BLtQtNOrIx2dMHNKhzTliNifzbIGu1FoA0yll/za
	dq3ca7Z4sxym3FhB36oR3x/Ra72CSC6rIR4jeMKMYc67Pg7Ki4e5Qx3icjyoDGgc
	xwO8xaQEsPTcgca3wL4EoO688H6wLBU+3m1ZTPd1qsM6Mq/IlvK5f1ZqdbTfUckH
	sfynLtsQD3U7UREgkaOKj5daCCtMJVTkbfZxfu2WgYzPoEjgbUPrpxCwnJlXIm/7
	UydnCT+GRQbUEsBiSzbId58WX4r1LP5n6mP/NG2uXf+5OktfLWp6fyUO/Y6ZZ/K0
	+PJxMA==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fadvjc5sm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 10 Jul 2026 10:13:03 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.7/8.18.1.7) with ESMTP id 66AACxmL030438;
	Fri, 10 Jul 2026 10:12:59 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 4f6u8mgsjd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 10 Jul 2026 10:12:59 +0000 (GMT)
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.18.1.12/8.18.1.12) with ESMTP id 66AACxWS030433;
	Fri, 10 Jul 2026 10:12:59 GMT
Received: from hu-devc-hyd-u22-c.qualcomm.com (hu-kotarake-hyd.qualcomm.com [10.213.97.140])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 66AACwrx030431
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 10 Jul 2026 10:12:59 +0000 (GMT)
Received: by hu-devc-hyd-u22-c.qualcomm.com (Postfix, from userid 2389607)
	id 067D0B2D; Fri, 10 Jul 2026 15:42:58 +0530 (+0530)
Date: Fri, 10 Jul 2026 15:42:58 +0530
From: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        sashiko-reviews@lists.linux.dev,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>, robh@kernel.org,
        linux-phy@lists.infradead.org, neil.armstrong@linaro.org,
        vkoul@kernel.org, olteanv@gmail.com, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Add Shikra CQM SoM platform
Message-ID: <20260710101258.32srtofmovmxqhh7@hu-kotarake-hyd.qualcomm.com>
References: <20260514103918.cs5m5kcxcrcgukvx@hu-kamalw-hyd.qualcomm.com>
 <obdxony34ckfbtsqj66siszw44sgieskcye5hg66ulkisctpwl@fyqczpze5tnw>
 <20260518114927.edxbzvklqatlntv2@hu-kamalw-hyd.qualcomm.com>
 <CAO9ioeVMieo8HtpRw+n4ZU9uV-_RQM061q5XfAA1Dtk2fnp4+g@mail.gmail.com>
 <bvankzuazswuigrm7hvyjqigzfaru5o43wi3zvyphgme2pgqwz@pyspqky3u6cn>
 <5idu4ljmcvcvzqsr5g73h2roxzs36l6xxc5ju6ovc5aitt3gx4@wmfqueyf2rj6>
 <20260630124220.4lja4zshpf66kwj3@hu-kotarake-hyd.qualcomm.com>
 <33c74e59-076a-4877-9e62-83a8ebbf2d54@oss.qualcomm.com>
 <20260703093035.q5xgljuigpt6zqt6@hu-kotarake-hyd.qualcomm.com>
 <fku5jad6op5upobwvrphbqteg76zukbovsifzarizz4m3ofuka@gdpaxzzuraee>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fku5jad6op5upobwvrphbqteg76zukbovsifzarizz4m3ofuka@gdpaxzzuraee>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEwMDA5OSBTYWx0ZWRfX75PDXj2du02N
 pSAq0Z/AIuLDA4sJUgg2fUxDmuWmVkYEZthLfBzVh5iHx20Yvx12LyqoijY6BfOLCVxVYadJX+5
 2XUuY80CyM6RgelZWlT5bB6UeVShct4atPVw/9rvtPLXjbgkENwqXUGcg+gUtKNSmThvUUFUSNw
 FbzBbUU4ytR4lRy3PNCszdBvnooSY49KRYFqAWTntd+dG4JTJ1EsqOOiMthrBnLVdErnOkNqqGS
 oKCMuYkltqL9jJBTveQ7TarSDpfOTWULHt6YeRbnC091Or6e10AtXgxX3oswnxtMjYZhVqiX6xH
 I7u5uJBKiMlBGcn7E3qbTYCBusmzVvtBWaEctEVzf3IP/gmzJWfszR18atFIXUbYEO5vIkDKsay
 wOCO28Ea0gQgp4Adyvtty3bIuSttYwqjDnImPQP/4qV7KOd3hSeUE1Hfth3ZUMyhVbD6GJnIWSS
 1JU4dY0+IdqCJEJ53OA==
X-Authority-Analysis: v=2.4 cv=WpIb99fv c=1 sm=1 tr=0 ts=6a50c5af cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=VBNFWE7bcIDabh-JT7cA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: C-z7uAMYT63C9wHHvd6mIaQe3zUhmRyV
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEwMDA5OSBTYWx0ZWRfXx19kZwwGD1rB
 U24buVBizs2URxLvTLDcANrnZWgDIioWzCd2Q5rD+huWOVel7717vyPmAi/QM4s8+kN2uE8rnb+
 RaCJTIZqSau0fqeVey0Q7v3CIxv0Dy4=
X-Proofpoint-ORIG-GUID: C-z7uAMYT63C9wHHvd6mIaQe3zUhmRyV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-10_02,2026-07-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 malwarescore=0 phishscore=0 spamscore=0 bulkscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607100099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_031308_380206_4B1D279E 
X-CRM114-Status: GOOD (  50.43  )
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

T24gRnJpLCBKdWwgMDMsIDIwMjYgYXQgMDY6MzI6MTBQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBPbiBGcmksIEp1bCAwMywgMjAyNiBhdCAwMzowMDozNVBNICswNTMwLCBSYWtl
c2ggS290YSB3cm90ZToKPiA+IE9uIFR1ZSwgSnVuIDMwLCAyMDI2IGF0IDAzOjUwOjE2UE0gKzAy
MDAsIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4gPiA+IE9uIDYvMzAvMjYgMjo0MiBQTSwgUmFrZXNo
IEtvdGEgd3JvdGU6Cj4gPiA+ID4gT24gU3VuLCBKdW4gMjgsIDIwMjYgYXQgMDM6MzM6MjNQTSAr
MDMwMCwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiA+ID4gPj4gT24gVGh1LCBKdW4gMjUsIDIw
MjYgYXQgMDk6MTE6MTlQTSArMDUzMCwgS2FtYWwgV2FkaHdhIHdyb3RlOgo+ID4gPiA+Pj4gT24g
V2VkLCBKdW4gMTcsIDIwMjYgYXQgMDM6NDg6MTRQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtvdiB3
cm90ZToKPiA+ID4gPj4+PiBPbiBNb24sIDE4IE1heSAyMDI2IGF0IDE0OjQ5LCBLYW1hbCBXYWRo
d2EKPiA+ID4gPj4+PiA8a2FtYWwud2FkaHdhQG9zcy5xdWFsY29tbS5jb20+IHdyb3RlOgo+ID4g
PiA+Pj4+Pgo+ID4gPiA+Pj4+PiBPbiBTdW4sIE1heSAxNywgMjAyNiBhdCAwODoxODoxNVBNICsw
MzAwLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+ID4gPiA+Pj4+Pj4gT24gVGh1LCBNYXkgMTQs
IDIwMjYgYXQgMDQ6MDk6MThQTSArMDUzMCwgS2FtYWwgV2FkaHdhIHdyb3RlOgo+ID4gPiA+Pj4+
Pj4+IE9uIFdlZCwgTWF5IDEzLCAyMDI2IGF0IDA2OjE0OjIwUE0gKzAzMDAsIERtaXRyeSBCYXJ5
c2hrb3Ygd3JvdGU6Cj4gPiA+ID4+Pj4+Pj4+IE9uIDEzLzA1LzIwMjYgMTc6MjksIFJha2VzaCBL
b3RhIHdyb3RlOgo+ID4gPiA+Pj4+Pj4+Pj4gT24gV2VkLCBNYXkgMTMsIDIwMjYgYXQgMDM6MDE6
NDdQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiA+ID4gPj4+Pj4+Pj4+PiBPbiBX
ZWQsIE1heSAxMywgMjAyNiBhdCAwNDoyODozNUFNICswMDAwLCBzYXNoaWtvLWJvdEBrZXJuZWwu
b3JnIHdyb3RlOgo+ID4gPiA+Pj4+Pj4+Pj4+PiBUaGFuayB5b3UgZm9yIHlvdXIgY29udHJpYnV0
aW9uISBTYXNoaWtvIEFJIHJldmlldyBmb3VuZCAyIHBvdGVudGlhbCBpc3N1ZShzKSB0byBjb25z
aWRlcjoKPiA+ID4gPj4+Pj4+Pj4+Pj4gLSBbSGlnaF0gVGhlIFBNSUMgcmVndWxhdG9yIGRlZmlu
aXRpb25zIG9taXQgdGhlaXIgcmVxdWlyZWQgaW5wdXQgc3VwcGx5IGRlcGVuZGVuY2llcyAoZS5n
LiwgYHZkZF9zMi1zdXBwbHlgLCBgdmRkX2wzLXN1cHBseWApLCBicmVha2luZyB0aGUgcG93ZXIg
aGllcmFyY2h5Lgo+ID4gPiA+Pj4+Pj4+Pj4+PiAtIFtNZWRpdW1dIFRoZSBkZXZpY2UgdHJlZSBp
bmFjY3VyYXRlbHkgaGFyZGNvZGVzIHRoZSBgY29tcGF0aWJsZWAgc3RyaW5nIHRvIGEgZGlmZmVy
ZW50IFBNSUMgbW9kZWwgKGBxY29tLHJwbS1wbTIyNTAtcmVndWxhdG9yc2ApIGluc3RlYWQgb2Yg
ZXhwbGljaXRseSBpZGVudGlmeWluZyB0aGUgYWN0dWFsIGhhcmR3YXJlIChQTTQxMjUpLgo+ID4g
PiA+Pj4+Pj4+Pj4+PiAtLQo+ID4gPiA+Pj4+Pj4+Pj4+Pj4gKwo+ID4gPiA+Pj4+Pj4+Pj4+Pj4g
KyAgICAgICAgIHBtNDEyNV9zMjogczIgewo+ID4gPiA+Pj4+Pj4+Pj4+Pj4gKyAgICAgICAgICAg
ICAgICAgcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTAwMDAwMD47Cj4gPiA+ID4+Pj4+Pj4+
Pj4+PiArICAgICAgICAgICAgICAgICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMjAwMDAw
PjsKPiA+ID4gPj4+Pj4+Pj4+Pj4+ICsgICAgICAgICB9Owo+ID4gPiA+Pj4+Pj4+Pj4+Pgo+ID4g
PiA+Pj4+Pj4+Pj4+PiBEbyB0aGVzZSByZWd1bGF0b3JzIG5lZWQgdG8gZXhwbGljaXRseSBkZWZp
bmUgdGhlaXIgaW5wdXQgc3VwcGx5IGRlcGVuZGVuY2llcwo+ID4gPiA+Pj4+Pj4+Pj4+PiBzdWNo
IGFzIHZkZF9zMi1zdXBwbHk/Cj4gPiA+ID4+Pj4+Pj4+Pj4+Cj4gPiA+ID4+Pj4+Pj4+Pj4+IFdp
dGhvdXQgdGhlc2UgcHJvcGVydGllcywgdGhlIHJlZ3VsYXRvciBmcmFtZXdvcmsgbWlnaHQgYmUg
dW5hd2FyZSB0aGF0IHRoZQo+ID4gPiA+Pj4+Pj4+Pj4+PiBQTUlDIHJlZ3VsYXRvcnMgZHJhdyBw
b3dlciBmcm9tIHVwc3RyZWFtIHN1cHBsaWVzLgo+ID4gPiA+Pj4+Pj4+Pj4+Pgo+ID4gPiA+Pj4+
Pj4+Pj4+PiBJZiB0aGUga2VybmVsIGR5bmFtaWNhbGx5IG1hbmFnZXMgdGhlIHVwc3RyZWFtIHN1
cHBseSBhbmQgaXRzIHJlZmVyZW5jZSBjb3VudAo+ID4gPiA+Pj4+Pj4+Pj4+PiBkcm9wcyB0byB6
ZXJvLCBjb3VsZCBpdCBiZSBkaXNhYmxlZCwgY2F1c2luZyBhbiB1bmV4cGVjdGVkIHBvd2VyIGxv
c3MgZm9yCj4gPiA+ID4+Pj4+Pj4+Pj4+IGRvd25zdHJlYW0gY29tcG9uZW50cz8KPiA+ID4gPj4+
Pj4+Pj4+Pgo+ID4gPiA+Pj4+Pj4+Pj4+IEFuZCB0aGlzIGlzIGEgY29ycmVjdCBjb21tZW50LiBQ
bGVhc2UgcHJvdmlkZSBtaXNzaW5nIHN1cHBsaWVzLgo+ID4gPiA+Pj4+Pj4+Pj4+Cj4gPiA+ID4+
Pj4+Pj4+PiBBcyBwZXIgdGhlIFF1YWxjb21tIHN5c3RlbSBkZXNpZ24sIHRoZSBwYXJlbnQtY2hp
bGQgc3VwcGx5IHJlbGF0aW9uc2hpcAo+ID4gPiA+Pj4+Pj4+Pj4gaXMgbWFuYWdlZCBieSB0aGUg
UlBNIGZpcm13YXJlLCBub3QgdGhlIExpbnV4IHJlZ3VsYXRvciBmcmFtZXdvcmsuIFRoZQo+ID4g
PiA+Pj4+Pj4+Pj4gUlBNIGVuc3VyZXMgdGhlIHBhcmVudCBzdXBwbHkgaXMgbmV2ZXIgZGlzYWJs
ZWQgdW50aWwgYWxsIHN1YnN5c3RlbQo+ID4gPiA+Pj4+Pj4+Pj4gdm90ZXMgYXJlIGNsZWFyZWQu
Cj4gPiA+ID4+Pj4+Pj4+Cj4gPiA+ID4+Pj4+Pj4+IEhvdyBpcyB0aGlzIGRpZmZlcmVudCBmcm9t
IG90aGVyLCBwcmV2aW91cyBwbGF0Zm9ybXM/Cj4gPiA+ID4+Pj4+Pj4KPiA+ID4gPj4+Pj4+PiBU
aGlzIGlzIG5vdCBkaWZmZXJlbnQuIEluIHRoZSBwcmV2aW91cyBwbGF0Zm9ybXMgdG9vIHRoaXMg
aXMgdGFrZW4gY2FyZSBmcm9tIHRoZQo+ID4gPiA+Pj4+Pj4+IFJQTS9SUE1IIGZpcm13YXJlIHNp
ZGUsIHRoZSBvbmx5IGNhc2Ugd2hlcmUgd2UgbWF5IG5lZWQgZXhwbGljaXQgdm90ZSB0byBwYXJl
bnQKPiA+ID4gPj4+Pj4+PiBpcyBmb3Igbm9uLXJwbWgvcnBtIHJlZ3VsYXRvciByYWlscyAobGlr
ZSBpMmMgYmFzZWQgcmVndWxhdG9yIHBtODAwOCksIHdoaWNoCj4gPiA+ID4+Pj4+Pj4gbWF5IGhh
dmUgYSBSUE0vUlBNSCByZWd1bGF0b3IgYXMgYSBwYXJlbnQuCj4gPiA+ID4+Pj4+Pj4KPiA+ID4g
Pj4+Pj4+PiBFdmVuIG9uIHRob3NlIHByZXZpb3VzIHRhcmdldHMgdGhlIHBhcmVudCByYWlsIG9m
IGFsbCBSUE0vUlBNSCByZWd1bGF0b3JzIGFyZQo+ID4gPiA+Pj4+Pj4+IGludGVybmFsbHkgdm90
ZWQgYnkgUlBNL1JQTUggRlcgYXQgcHJvcGVyIHZvbHRhZ2Ugd2l0aCByZXF1aXJlZCBoZWFkcm9v
bQo+ID4gPiA+Pj4+Pj4+IGNhbGN1bGF0ZWQgYmFzZWQgb24gdGhlIGFjdGl2ZSBjaGlsZCByYWls
cy4gVGhpcyB3YXMgZG9uZSBmb3IgYWxsIHRoZQo+ID4gPiA+Pj4+Pj4+IHN1YnN5c3RlbXMgKGlu
Y2x1ZGluZyBBUFBTKSByZWd1bGF0b3JzLgo+ID4gPiA+Pj4+Pj4+Cj4gPiA+ID4+Pj4+Pj4gU28g
bm8gZXhwbGljaXQgaGFuZGxpbmcgZnJvbSB0aGUgQVBQUyBpcyByZXF1aXJlZCBmb3IgcGFyZW50
IHN1cHBseS4KPiA+ID4gPj4+Pj4+Cj4gPiA+ID4+Pj4+PiBZb3UgYXJlIGV4cGxhaW5pbmcgdGhl
IGRyaXZlciBiZWhhdmlvdXIuIEJ1dCB0aGUgcXVlc3Rpb24gaXMgYWJvdXQgdGhlCj4gPiA+ID4+
Pj4+PiBoYXJkd2FyZSBkZXNjcmlwdGlvbi4gSWYgdGhlcmUgaXMgbm8gZGlmZmVyZW5jZSwgcGxl
YXNlIGFkZCBuZWNlc3NhcnkKPiA+ID4gPj4+Pj4+IHN1cHBsaWVzIGJhY2suCj4gPiA+ID4+Pj4+
Cj4gPiA+ID4+Pj4+IEkgdW5kZXJzdGFuZCB5b3VyIGNvbmNlcm4gYWJvdXQgZGVzY2liaW5nIHRo
ZSBwYXJlbnQtY2hpbGQgcmVsYXRpb24gaW4gdGhlCj4gPiA+ID4+Pj4+IGRldmljZXRyZWUsIGFu
ZCBnaXZlbiB0aGF0IHdlIGhhdmUgYmVlbiBhbG1vc3QgYWx3YXlzIGZvbGxvd2VkIHRoaXMgZm9y
IGFsbAo+ID4gPiA+Pj4+PiB0aGUgcHJldmlvdXMgdGFyZ2V0cywgaXQgd2lsbCBleHBlY3RlZCBv
ZiB1cyB0byBhZGQgdGhlbS4KPiA+ID4gPj4+Pgo+ID4gPiA+Pj4+IFllcy4KPiA+ID4gPj4+Pgo+
ID4gPiA+Pj4+Pgo+ID4gPiA+Pj4+PiBIb3dldmVyLCB3ZSB3YW50IHRvIGF2b2lkIHRoZSB1bm5l
Y2Vzc2FyeSBhY2Nlc3MgdG8gdGhlIHBhcmVudCBmcm9tIEFQUFMuCj4gPiA+ID4+Pj4KPiA+ID4g
Pj4+PiBXaHk/IFdoYXQgaXMgdGhlIHJlYXNvbj8gRG8gd2Ugd2FudCB0byBkbyB0aGUgc2FtZSBm
b3IgYWxsIHRoZQo+ID4gPiA+Pj4+IHBsYXRmb3Jtcz8gT25seSBmb3IgU2hpa3JhPyBTb21ldGhp
bmcgZWxzZT8KPiA+ID4gPj4+Pgo+ID4gPiA+Pj4+PiBBdCB0aGUgbW9tZW50LCBJIGRvIG5vdCBz
ZWUgYSB3YXkgdG8gYXZvaWQgdGhhdCwgaWYgd2UgYWRkIHRoZSBwYXJlbnQKPiA+ID4gPj4+Pj4g
cmVndWxhdG9ycy4KPiA+ID4gPj4+Pgo+ID4gPiA+Pj4+IFRoYXQgZGVwZW5kIG9uIHRoZSBhbnN3
ZXIgdG8gdGhlIHByZXZpb3VzIHF1ZXN0aW9uLiBJbiB0aGUgZW5kLCB3ZSBjYW4KPiA+ID4gPj4+
PiBtYWtlIHRoZSBkcml2ZXIgaWdub3JlIHRoZSBwYXJlbnRzIGJ5IHJlbW92aW5nIHRoZW0gZnJv
bSB0aGUgcmVndWxhdG9yCj4gPiA+ID4+Pj4gZGVzYy4KPiA+ID4gPj4+Cj4gPiA+ID4+PiBPaywg
dGhpcyBzZWVtcyBsaWtlIGEgZ29vZCBzdWdnZXN0aW9uLCBzbyB5b3UgbWVhbiBpdHMgb2sgaWYg
d2UgZGVmaW5lIHRoZQo+ID4gPiA+Pj4gcmVndWxhdG9yIGRlc2MncyBzdXBwbHkgY29sdW1uIHdp
dGggTlVMTD8gQW5kIG9ubHkga2VlcCB0aGF0IGluIHRoZSBEVD8KPiA+ID4gPj4+Cj4gPiA+ID4+
PiB5b3UgbWVhbiBsaWtlIHRoaXM/Cj4gPiA+ID4+PiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1
Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9kcml2ZXJzL3Jl
Z3VsYXRvci9xY29tLXJwbWgtcmVndWxhdG9yLmM/aD12Ny4xI24xNDUzCj4gPiA+ID4+Pgo+ID4g
PiA+Pj4gKHBsZWFzZSBsZXQgbWUga25vdyBpZiBpIGdvdCB0aGF0IHJpZ2h0LiB0aGFua3MpCj4g
PiA+ID4+Cj4gPiA+ID4+IFllcy4gRG9uJ3QgZm9yZ2V0IHRvIGV4cGxhaW4gaW4gdGhlIGNvbW1p
dCBtZXNzYWdlLCB3aHkgeW91IGFyZSBkb2luZwo+ID4gPiA+PiBzby4KPiA+ID4gPiAKPiA+ID4g
PiBDdXJyZW50bHksIEFnYXR0aSB1c2VzIHRoZSBzYW1lIFBNSUMsIHNvIHdlIGNhbm5vdCBzZXQg
dGhlIGRyaXZlcgo+ID4gPiA+IHN1cHBseSBuYW1lIHJlZmVyZW5jZSB0byBOVUxMLiBTaW5jZSBp
dCdzIGFuIG9sZGVyIHRhcmdldCwKPiA+ID4gPiB3ZSdsbCBuZWVkIHRvIHJ1biBhIHJlZ3Jlc3Np
b24gYmVmb3JlIG1ha2luZyBhbnkgZHJpdmVyLWxldmVsIGNoYW5nZXMuCj4gPiA+ID4gCj4gPiA+
ID4gQWRkaXRpb25hbGx5LCB0aGUgY2hpbGQtdG8tcGFyZW50IHJlZ3VsYXRvciBnYW5naW5nIGRp
ZmZlcnMgYmV0d2Vlbgo+ID4gPiA+IFNoaWtyYSBhbmQgQWdhdHRpOgo+ID4gPiA+IAo+ID4gPiA+
ICAtIE9uIEFnYXR0aSwgbDMgcmVndWxhdG9yIGlzIGdhbmdlZCB3aXRoIHZkZF9sMTNfbDE0X2wx
NV9sMTYKPiA+ID4gPiAgLSBPbiBTaGlrcmEsIGwzIGlzIGdhbmdlZCB3aXRoIHZkZF9sMl9sMwo+
ID4gPiAKPiA+ID4gSXMgaXQgY29uZmlndXJhYmxlIG9uIHRoZSBQTUlDIGxldmVsPyBJIHdhcyB1
bmRlciB0aGUgaW1wcmVzc2lvbiB0aGUKPiA+ID4gc3VwcGx5IG1hcHMgYXJlIGZpeGVkIGluIGhh
cmR3YXJlLiAgSXMgdGhlcmUgYSBjaGFuY2UgdGhlIGFnYXR0aQo+ID4gPiBkZXNjcmlwdGlvbiBp
cyBqdXN0IHdyb25nPwo+ID4gCj4gPiBUaGUgc3VwcGx5IGdhbmdpbmcgYmV0d2VlbiBjaGlsZCBM
RE9zIGFuZCBwYXJlbnQgc3VwcGxpZXMgaXMgbm90IGZpeGVkCj4gPiBhdCB0aGUgUE1JQyBoYXJk
d2FyZSBsZXZlbCDigJQgaXQgdmFyaWVzIHBlciBwbGF0Zm9ybSBiYXNlZCBvbiBzeXN0ZW0KPiA+
IGRlc2lnbiByZXF1aXJlbWVudHMuIFRoZSBzYW1lIExETyBjYW4gaGF2ZSBhIGRpZmZlcmVudCBw
YXJlbnQgc3VwcGx5IG9uCj4gPiBkaWZmZXJlbnQgU29Dcy4KPiAKPiBJdCBjYW4gaGF2ZSBkaWZm
ZXJlbnQgcG93ZXIgc3VwcGxpZXMsIGJ1dCB0aGUgc3VwcGx5IGlzIHByb3ZpZGVkIHRocm91Z2gK
PiBhIGZpeGVkIHBpbiBvZiB0aGUgUE1JQy4gUGxlYXNlIGNvcnJlY3QgbWUgaWYgSSdtIHdyb25n
Lgo+IAoKWW91J3JlIHJpZ2h0LCBJIGFwb2xvZ2l6ZSBmb3IgdGhlIGNvbmZ1c2lvbi4gVGhlIHN1
cHBseSByYWlsIGlzIGZpeGVkIGluCmhhcmR3YXJlIHZpYSBwaHlzaWNhbCBwaW4gY29ubmVjdGlv
bnMuIFRoZSBkaWZmZXJpbmcgc3VwcGx5IG5hbWUgaW4gdGhlCkFnYXR0aSBEVFMgaXMgbGlrZWx5
IGluY29ycmVjdC4gCgpJJ2xsIGFkZHJlc3MgdGhpcyBpbiB0aGUgbmV4dCBwYXRjaCBzZXJpZXMg
4oCUIHVwZGF0aW5nIHRoZSBkcml2ZXIKdG8gc2V0IHRoZSBwYXJlbnQgc3VwcGx5IHRvIE5VTEws
IGFuZCBjb3JyZWN0aW5nIHRoZSBBZ2F0dGkgYW5kIFNoaWtyYQpEVCBwYXJlbnQgc3VwcGx5IG5h
bWVzIHRvIG1hdGNoIHRoZSBhY3R1YWwgUE1JQyBwaW4gY29ubmVjdGlvbnMsCnNpbmNlIHRoZSBi
YXNlIGNoYW5nZSBoYXMgYWxyZWFkeSBiZWVuIG1lcmdlZC4KCmh0dHBzOi8vZ2l0Lmtlcm5lbC5v
cmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3Fjb20vbGludXguZ2l0L3RyZWUvYXJjaC9hcm02
NC9ib290L2R0cy9xY29tL3NoaWtyYS1jcW0tc29tLmR0c2k/aD1mb3ItbmV4dCNuNTIKCj4gPiBJ
IGhhdmUgdmVyaWZpZWQgdGhlIEFnYXR0aSBwYXJlbnQtY2hpbGQgc3VwcGx5IG1hcHBpbmdzIGFu
ZCB0aGV5IGFyZQo+ID4gY29ycmVjdC4gVGhlIGRpZmZlcmVuY2UgYmV0d2VlbiBBZ2F0dGkgYW5k
IFNoaWtyYSBpcyBhIGxlZ2l0aW1hdGUKPiA+IHBsYXRmb3JtLWxldmVsIGRlc2lnbiBkaWZmZXJl
bmNlLCBub3QgYW4gZXJyb3IgaW4gdGhlIEFnYXR0aSBEVC4KPiAKPiBUaGVyZSBpcyBhbiBlcnJv
ciBpbiB0aGUgRFQuIEl0IHVzZXMgZmFrZSBQTUlDIHN1cHBseSBuYW1lcy4KPgp5ZXMsIGkgd2ls
bCBjb3JyZWN0LgoKcmVnYXJkcwpSYWtlc2ggS290YQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
