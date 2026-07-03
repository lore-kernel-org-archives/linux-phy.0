Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58CE7C44500
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jul 2026 09:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VX5LbjJmSSZIDE3IZOewMLPMRbaGOQlZJb/irtfc7OY=; b=A59SfLXEPh6Qsp
	qO3d/tds5YzOpO/m7N+4fhk1iNi1goHz3kZgw4YKdzbOEMTqTThRL0bYiqBjrhrZpqpn2ljU9FoUe
	6l318Ua8kUKg+xLX0TLJ1Bgc3pqGe5jAuwqEQ50b+64AnD28d2UFcaRTHDLnMzVMFROy4L2BLqcnW
	bI2nsmSmyN/O9pQ1+evaD+SUPWTkC8xesYC/TjMjWtyMzMOX2RcSUPrpt7ELl1GgKK9hDreeuBRDc
	DG0jOye0LHVh4PRaoQxVMLPg7D5IxKXkGyk8qeCrJxxV2HeuE/Q7XpXyQNbUPOYlNkBQtFd8RUac8
	upAxbDFWyA3ph46upAmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfaES-00000006UGz-36Fz;
	Fri, 03 Jul 2026 09:30:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfaEQ-00000006UGY-04hb
	for linux-phy@lists.infradead.org;
	Fri, 03 Jul 2026 09:30:47 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6636gvT63144217;
	Fri, 3 Jul 2026 09:30:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HtDt4B684Zll7dWZtPuSlsvE4KEtQd+E3gb0x3Hoads=; b=VHHhAUvOHcJbwk9S
	VdtNAZwpkTtOQZ1n8fsVa3vS4Omh2F+2LHwYi7A309d+nvDP56dZqmJALhwP0Cgy
	u5ShiCN6mXay/KNlcx8IIUygqXEu1ZoUjCCfgIq5q37Q1CZDfGcsnJHmzLci3T2C
	hcLSzDRIu5LGAAvmpQw91KT5yqgMZt4l5nfImJzCaRhLfMQ6vb3RWDiiQ36HPi1/
	iBEnVXSkCXY+r2d+d1uhWdUtVbs71WH2nM74q7PN1sAnl7QHB3g2l0oDVv+Wyrnc
	xyN7w+rIJAbfQnAESxqae7mawcwHue6er+CGil1c0N1rVeIv7wsDcdHW7aa9/NKq
	3BIO6A==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f682brm4u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 03 Jul 2026 09:30:40 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.7/8.18.1.7) with ESMTP id 6639UaHB009558;
	Fri, 3 Jul 2026 09:30:36 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 4f27km9y91-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 03 Jul 2026 09:30:36 +0000 (GMT)
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.18.1.12/8.18.1.12) with ESMTP id 6639JWPk027666;
	Fri, 3 Jul 2026 09:30:36 GMT
Received: from hu-devc-hyd-u22-c.qualcomm.com (hu-kotarake-hyd.qualcomm.com [10.213.97.140])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 6639UaBY009530
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 03 Jul 2026 09:30:36 +0000 (GMT)
Received: by hu-devc-hyd-u22-c.qualcomm.com (Postfix, from userid 2389607)
	id 6421AB44; Fri,  3 Jul 2026 15:00:35 +0530 (+0530)
Date: Fri, 3 Jul 2026 15:00:35 +0530
From: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        sashiko-reviews@lists.linux.dev,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>, robh@kernel.org,
        linux-phy@lists.infradead.org, neil.armstrong@linaro.org,
        vkoul@kernel.org, olteanv@gmail.com, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Add Shikra CQM SoM platform
Message-ID: <20260703093035.q5xgljuigpt6zqt6@hu-kotarake-hyd.qualcomm.com>
References: <20260513142936.kauwa3czigfs7qs5@hu-kotarake-hyd.qualcomm.com>
 <0ac665bb-1a21-4077-aa9e-97162f7f4784@oss.qualcomm.com>
 <20260514103918.cs5m5kcxcrcgukvx@hu-kamalw-hyd.qualcomm.com>
 <obdxony34ckfbtsqj66siszw44sgieskcye5hg66ulkisctpwl@fyqczpze5tnw>
 <20260518114927.edxbzvklqatlntv2@hu-kamalw-hyd.qualcomm.com>
 <CAO9ioeVMieo8HtpRw+n4ZU9uV-_RQM061q5XfAA1Dtk2fnp4+g@mail.gmail.com>
 <bvankzuazswuigrm7hvyjqigzfaru5o43wi3zvyphgme2pgqwz@pyspqky3u6cn>
 <5idu4ljmcvcvzqsr5g73h2roxzs36l6xxc5ju6ovc5aitt3gx4@wmfqueyf2rj6>
 <20260630124220.4lja4zshpf66kwj3@hu-kotarake-hyd.qualcomm.com>
 <33c74e59-076a-4877-9e62-83a8ebbf2d54@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <33c74e59-076a-4877-9e62-83a8ebbf2d54@oss.qualcomm.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAzMDA5MCBTYWx0ZWRfX1RCRlVqMFoHs
 8DI2LoZaHoyPV4GgiqzyjFkkd8HeWPu6jWkCi+4l9pqLBycFxGKY5bUgpQksvIdHRoNuhbVsAkJ
 Cptv7EbOaEaBsqFUGjDy4jme9wW3SbfQoatOJrVQa5ILV0nl5U5CQvadP9Yb2dhKj0TlkfnJuiY
 BhIPyU6CJB6pU9IMPbbcXgwcRMsu9injecq7aZewJ0qfAGYsVbGCqAfAEELQERTEvJHlJwyV0zm
 4F6EBFb3164Vr9Rjf5PcDQWLK9+4rJQt0u3sbkci/Qwe6Bl8wVVGofuM0M/eEPxqzW4EoBUVea6
 UyAuosulVH6ti9PWBVxLmEYdsusIf/en+nuSnryaMyqiBiZMX9LabfxiBLBXrFA1lGy1EX0fzSi
 GumJNNoPCD98fGq5jGwO3Cv6hCdOPiA9gum35ZNxhX4LtfZ8v/O4Q+jnmHprcTg7nWvo10bBP+/
 0pWsSBWipI2ZRDcu+pA==
X-Proofpoint-ORIG-GUID: ez2J7FFhHf4E_2oBIynbM1_VHp0onUF9
X-Authority-Analysis: v=2.4 cv=cc3iaHDM c=1 sm=1 tr=0 ts=6a478141 cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=P18A6JamkcG4dG8q4dYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAzMDA5MCBTYWx0ZWRfX2gcQ9+nr4+y7
 WlTS8wkDs3NV8mxo+ciHJ3HWf8+nDxIWl2ehuHjwi7EeuNEf2MVFD8J92MNloq+Cqb9KJGzasdl
 QOZJgmFcCE1OVwMu0FhFfluGSN7WRsQ=
X-Proofpoint-GUID: ez2J7FFhHf4E_2oBIynbM1_VHp0onUF9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-03_02,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 phishscore=0 spamscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607030090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_023046_068639_09B62BE1 
X-CRM114-Status: GOOD (  39.49  )
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

T24gVHVlLCBKdW4gMzAsIDIwMjYgYXQgMDM6NTA6MTZQTSArMDIwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBPbiA2LzMwLzI2IDI6NDIgUE0sIFJha2VzaCBLb3RhIHdyb3RlOgo+ID4gT24gU3Vu
LCBKdW4gMjgsIDIwMjYgYXQgMDM6MzM6MjNQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90
ZToKPiA+PiBPbiBUaHUsIEp1biAyNSwgMjAyNiBhdCAwOToxMToxOVBNICswNTMwLCBLYW1hbCBX
YWRod2Egd3JvdGU6Cj4gPj4+IE9uIFdlZCwgSnVuIDE3LCAyMDI2IGF0IDAzOjQ4OjE0UE0gKzAz
MDAsIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gPj4+PiBPbiBNb24sIDE4IE1heSAyMDI2IGF0
IDE0OjQ5LCBLYW1hbCBXYWRod2EKPiA+Pj4+IDxrYW1hbC53YWRod2FAb3NzLnF1YWxjb21tLmNv
bT4gd3JvdGU6Cj4gPj4+Pj4KPiA+Pj4+PiBPbiBTdW4sIE1heSAxNywgMjAyNiBhdCAwODoxODox
NVBNICswMzAwLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+ID4+Pj4+PiBPbiBUaHUsIE1heSAx
NCwgMjAyNiBhdCAwNDowOToxOFBNICswNTMwLCBLYW1hbCBXYWRod2Egd3JvdGU6Cj4gPj4+Pj4+
PiBPbiBXZWQsIE1heSAxMywgMjAyNiBhdCAwNjoxNDoyMFBNICswMzAwLCBEbWl0cnkgQmFyeXNo
a292IHdyb3RlOgo+ID4+Pj4+Pj4+IE9uIDEzLzA1LzIwMjYgMTc6MjksIFJha2VzaCBLb3RhIHdy
b3RlOgo+ID4+Pj4+Pj4+PiBPbiBXZWQsIE1heSAxMywgMjAyNiBhdCAwMzowMTo0N1BNICswMzAw
LCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+ID4+Pj4+Pj4+Pj4gT24gV2VkLCBNYXkgMTMsIDIw
MjYgYXQgMDQ6Mjg6MzVBTSArMDAwMCwgc2FzaGlrby1ib3RAa2VybmVsLm9yZyB3cm90ZToKPiA+
Pj4+Pj4+Pj4+PiBUaGFuayB5b3UgZm9yIHlvdXIgY29udHJpYnV0aW9uISBTYXNoaWtvIEFJIHJl
dmlldyBmb3VuZCAyIHBvdGVudGlhbCBpc3N1ZShzKSB0byBjb25zaWRlcjoKPiA+Pj4+Pj4+Pj4+
PiAtIFtIaWdoXSBUaGUgUE1JQyByZWd1bGF0b3IgZGVmaW5pdGlvbnMgb21pdCB0aGVpciByZXF1
aXJlZCBpbnB1dCBzdXBwbHkgZGVwZW5kZW5jaWVzIChlLmcuLCBgdmRkX3MyLXN1cHBseWAsIGB2
ZGRfbDMtc3VwcGx5YCksIGJyZWFraW5nIHRoZSBwb3dlciBoaWVyYXJjaHkuCj4gPj4+Pj4+Pj4+
Pj4gLSBbTWVkaXVtXSBUaGUgZGV2aWNlIHRyZWUgaW5hY2N1cmF0ZWx5IGhhcmRjb2RlcyB0aGUg
YGNvbXBhdGlibGVgIHN0cmluZyB0byBhIGRpZmZlcmVudCBQTUlDIG1vZGVsIChgcWNvbSxycG0t
cG0yMjUwLXJlZ3VsYXRvcnNgKSBpbnN0ZWFkIG9mIGV4cGxpY2l0bHkgaWRlbnRpZnlpbmcgdGhl
IGFjdHVhbCBoYXJkd2FyZSAoUE00MTI1KS4KPiA+Pj4+Pj4+Pj4+PiAtLQo+ID4+Pj4+Pj4+Pj4+
PiArCj4gPj4+Pj4+Pj4+Pj4+ICsgICAgICAgICBwbTQxMjVfczI6IHMyIHsKPiA+Pj4+Pj4+Pj4+
Pj4gKyAgICAgICAgICAgICAgICAgcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTAwMDAwMD47
Cj4gPj4+Pj4+Pj4+Pj4+ICsgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0
ID0gPDEyMDAwMDA+Owo+ID4+Pj4+Pj4+Pj4+PiArICAgICAgICAgfTsKPiA+Pj4+Pj4+Pj4+Pgo+
ID4+Pj4+Pj4+Pj4+IERvIHRoZXNlIHJlZ3VsYXRvcnMgbmVlZCB0byBleHBsaWNpdGx5IGRlZmlu
ZSB0aGVpciBpbnB1dCBzdXBwbHkgZGVwZW5kZW5jaWVzCj4gPj4+Pj4+Pj4+Pj4gc3VjaCBhcyB2
ZGRfczItc3VwcGx5Pwo+ID4+Pj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+Pj4gV2l0aG91dCB0aGVzZSBw
cm9wZXJ0aWVzLCB0aGUgcmVndWxhdG9yIGZyYW1ld29yayBtaWdodCBiZSB1bmF3YXJlIHRoYXQg
dGhlCj4gPj4+Pj4+Pj4+Pj4gUE1JQyByZWd1bGF0b3JzIGRyYXcgcG93ZXIgZnJvbSB1cHN0cmVh
bSBzdXBwbGllcy4KPiA+Pj4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+Pj4+IElmIHRoZSBrZXJuZWwgZHlu
YW1pY2FsbHkgbWFuYWdlcyB0aGUgdXBzdHJlYW0gc3VwcGx5IGFuZCBpdHMgcmVmZXJlbmNlIGNv
dW50Cj4gPj4+Pj4+Pj4+Pj4gZHJvcHMgdG8gemVybywgY291bGQgaXQgYmUgZGlzYWJsZWQsIGNh
dXNpbmcgYW4gdW5leHBlY3RlZCBwb3dlciBsb3NzIGZvcgo+ID4+Pj4+Pj4+Pj4+IGRvd25zdHJl
YW0gY29tcG9uZW50cz8KPiA+Pj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+PiBBbmQgdGhpcyBpcyBhIGNv
cnJlY3QgY29tbWVudC4gUGxlYXNlIHByb3ZpZGUgbWlzc2luZyBzdXBwbGllcy4KPiA+Pj4+Pj4+
Pj4+Cj4gPj4+Pj4+Pj4+IEFzIHBlciB0aGUgUXVhbGNvbW0gc3lzdGVtIGRlc2lnbiwgdGhlIHBh
cmVudC1jaGlsZCBzdXBwbHkgcmVsYXRpb25zaGlwCj4gPj4+Pj4+Pj4+IGlzIG1hbmFnZWQgYnkg
dGhlIFJQTSBmaXJtd2FyZSwgbm90IHRoZSBMaW51eCByZWd1bGF0b3IgZnJhbWV3b3JrLiBUaGUK
PiA+Pj4+Pj4+Pj4gUlBNIGVuc3VyZXMgdGhlIHBhcmVudCBzdXBwbHkgaXMgbmV2ZXIgZGlzYWJs
ZWQgdW50aWwgYWxsIHN1YnN5c3RlbQo+ID4+Pj4+Pj4+PiB2b3RlcyBhcmUgY2xlYXJlZC4KPiA+
Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IEhvdyBpcyB0aGlzIGRpZmZlcmVudCBmcm9tIG90aGVyLCBwcmV2
aW91cyBwbGF0Zm9ybXM/Cj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gVGhpcyBpcyBub3QgZGlmZmVyZW50
LiBJbiB0aGUgcHJldmlvdXMgcGxhdGZvcm1zIHRvbyB0aGlzIGlzIHRha2VuIGNhcmUgZnJvbSB0
aGUKPiA+Pj4+Pj4+IFJQTS9SUE1IIGZpcm13YXJlIHNpZGUsIHRoZSBvbmx5IGNhc2Ugd2hlcmUg
d2UgbWF5IG5lZWQgZXhwbGljaXQgdm90ZSB0byBwYXJlbnQKPiA+Pj4+Pj4+IGlzIGZvciBub24t
cnBtaC9ycG0gcmVndWxhdG9yIHJhaWxzIChsaWtlIGkyYyBiYXNlZCByZWd1bGF0b3IgcG04MDA4
KSwgd2hpY2gKPiA+Pj4+Pj4+IG1heSBoYXZlIGEgUlBNL1JQTUggcmVndWxhdG9yIGFzIGEgcGFy
ZW50Lgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IEV2ZW4gb24gdGhvc2UgcHJldmlvdXMgdGFyZ2V0cyB0
aGUgcGFyZW50IHJhaWwgb2YgYWxsIFJQTS9SUE1IIHJlZ3VsYXRvcnMgYXJlCj4gPj4+Pj4+PiBp
bnRlcm5hbGx5IHZvdGVkIGJ5IFJQTS9SUE1IIEZXIGF0IHByb3BlciB2b2x0YWdlIHdpdGggcmVx
dWlyZWQgaGVhZHJvb20KPiA+Pj4+Pj4+IGNhbGN1bGF0ZWQgYmFzZWQgb24gdGhlIGFjdGl2ZSBj
aGlsZCByYWlscy4gVGhpcyB3YXMgZG9uZSBmb3IgYWxsIHRoZQo+ID4+Pj4+Pj4gc3Vic3lzdGVt
cyAoaW5jbHVkaW5nIEFQUFMpIHJlZ3VsYXRvcnMuCj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gU28gbm8g
ZXhwbGljaXQgaGFuZGxpbmcgZnJvbSB0aGUgQVBQUyBpcyByZXF1aXJlZCBmb3IgcGFyZW50IHN1
cHBseS4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gWW91IGFyZSBleHBsYWluaW5nIHRoZSBkcml2ZXIgYmVo
YXZpb3VyLiBCdXQgdGhlIHF1ZXN0aW9uIGlzIGFib3V0IHRoZQo+ID4+Pj4+PiBoYXJkd2FyZSBk
ZXNjcmlwdGlvbi4gSWYgdGhlcmUgaXMgbm8gZGlmZmVyZW5jZSwgcGxlYXNlIGFkZCBuZWNlc3Nh
cnkKPiA+Pj4+Pj4gc3VwcGxpZXMgYmFjay4KPiA+Pj4+Pgo+ID4+Pj4+IEkgdW5kZXJzdGFuZCB5
b3VyIGNvbmNlcm4gYWJvdXQgZGVzY2liaW5nIHRoZSBwYXJlbnQtY2hpbGQgcmVsYXRpb24gaW4g
dGhlCj4gPj4+Pj4gZGV2aWNldHJlZSwgYW5kIGdpdmVuIHRoYXQgd2UgaGF2ZSBiZWVuIGFsbW9z
dCBhbHdheXMgZm9sbG93ZWQgdGhpcyBmb3IgYWxsCj4gPj4+Pj4gdGhlIHByZXZpb3VzIHRhcmdl
dHMsIGl0IHdpbGwgZXhwZWN0ZWQgb2YgdXMgdG8gYWRkIHRoZW0uCj4gPj4+Pgo+ID4+Pj4gWWVz
Lgo+ID4+Pj4KPiA+Pj4+Pgo+ID4+Pj4+IEhvd2V2ZXIsIHdlIHdhbnQgdG8gYXZvaWQgdGhlIHVu
bmVjZXNzYXJ5IGFjY2VzcyB0byB0aGUgcGFyZW50IGZyb20gQVBQUy4KPiA+Pj4+Cj4gPj4+PiBX
aHk/IFdoYXQgaXMgdGhlIHJlYXNvbj8gRG8gd2Ugd2FudCB0byBkbyB0aGUgc2FtZSBmb3IgYWxs
IHRoZQo+ID4+Pj4gcGxhdGZvcm1zPyBPbmx5IGZvciBTaGlrcmE/IFNvbWV0aGluZyBlbHNlPwo+
ID4+Pj4KPiA+Pj4+PiBBdCB0aGUgbW9tZW50LCBJIGRvIG5vdCBzZWUgYSB3YXkgdG8gYXZvaWQg
dGhhdCwgaWYgd2UgYWRkIHRoZSBwYXJlbnQKPiA+Pj4+PiByZWd1bGF0b3JzLgo+ID4+Pj4KPiA+
Pj4+IFRoYXQgZGVwZW5kIG9uIHRoZSBhbnN3ZXIgdG8gdGhlIHByZXZpb3VzIHF1ZXN0aW9uLiBJ
biB0aGUgZW5kLCB3ZSBjYW4KPiA+Pj4+IG1ha2UgdGhlIGRyaXZlciBpZ25vcmUgdGhlIHBhcmVu
dHMgYnkgcmVtb3ZpbmcgdGhlbSBmcm9tIHRoZSByZWd1bGF0b3IKPiA+Pj4+IGRlc2MuCj4gPj4+
Cj4gPj4+IE9rLCB0aGlzIHNlZW1zIGxpa2UgYSBnb29kIHN1Z2dlc3Rpb24sIHNvIHlvdSBtZWFu
IGl0cyBvayBpZiB3ZSBkZWZpbmUgdGhlCj4gPj4+IHJlZ3VsYXRvciBkZXNjJ3Mgc3VwcGx5IGNv
bHVtbiB3aXRoIE5VTEw/IEFuZCBvbmx5IGtlZXAgdGhhdCBpbiB0aGUgRFQ/Cj4gPj4+Cj4gPj4+
IHlvdSBtZWFuIGxpa2UgdGhpcz8KPiA+Pj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2Nt
L2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvZHJpdmVycy9yZWd1bGF0
b3IvcWNvbS1ycG1oLXJlZ3VsYXRvci5jP2g9djcuMSNuMTQ1Mwo+ID4+Pgo+ID4+PiAocGxlYXNl
IGxldCBtZSBrbm93IGlmIGkgZ290IHRoYXQgcmlnaHQuIHRoYW5rcykKPiA+Pgo+ID4+IFllcy4g
RG9uJ3QgZm9yZ2V0IHRvIGV4cGxhaW4gaW4gdGhlIGNvbW1pdCBtZXNzYWdlLCB3aHkgeW91IGFy
ZSBkb2luZwo+ID4+IHNvLgo+ID4gCj4gPiBDdXJyZW50bHksIEFnYXR0aSB1c2VzIHRoZSBzYW1l
IFBNSUMsIHNvIHdlIGNhbm5vdCBzZXQgdGhlIGRyaXZlcgo+ID4gc3VwcGx5IG5hbWUgcmVmZXJl
bmNlIHRvIE5VTEwuIFNpbmNlIGl0J3MgYW4gb2xkZXIgdGFyZ2V0LAo+ID4gd2UnbGwgbmVlZCB0
byBydW4gYSByZWdyZXNzaW9uIGJlZm9yZSBtYWtpbmcgYW55IGRyaXZlci1sZXZlbCBjaGFuZ2Vz
Lgo+ID4gCj4gPiBBZGRpdGlvbmFsbHksIHRoZSBjaGlsZC10by1wYXJlbnQgcmVndWxhdG9yIGdh
bmdpbmcgZGlmZmVycyBiZXR3ZWVuCj4gPiBTaGlrcmEgYW5kIEFnYXR0aToKPiA+IAo+ID4gIC0g
T24gQWdhdHRpLCBsMyByZWd1bGF0b3IgaXMgZ2FuZ2VkIHdpdGggdmRkX2wxM19sMTRfbDE1X2wx
Ngo+ID4gIC0gT24gU2hpa3JhLCBsMyBpcyBnYW5nZWQgd2l0aCB2ZGRfbDJfbDMKPiAKPiBJcyBp
dCBjb25maWd1cmFibGUgb24gdGhlIFBNSUMgbGV2ZWw/IEkgd2FzIHVuZGVyIHRoZSBpbXByZXNz
aW9uIHRoZQo+IHN1cHBseSBtYXBzIGFyZSBmaXhlZCBpbiBoYXJkd2FyZS4gIElzIHRoZXJlIGEg
Y2hhbmNlIHRoZSBhZ2F0dGkKPiBkZXNjcmlwdGlvbiBpcyBqdXN0IHdyb25nPwoKVGhlIHN1cHBs
eSBnYW5naW5nIGJldHdlZW4gY2hpbGQgTERPcyBhbmQgcGFyZW50IHN1cHBsaWVzIGlzIG5vdCBm
aXhlZAphdCB0aGUgUE1JQyBoYXJkd2FyZSBsZXZlbCDigJQgaXQgdmFyaWVzIHBlciBwbGF0Zm9y
bSBiYXNlZCBvbiBzeXN0ZW0KZGVzaWduIHJlcXVpcmVtZW50cy4gVGhlIHNhbWUgTERPIGNhbiBo
YXZlIGEgZGlmZmVyZW50IHBhcmVudCBzdXBwbHkgb24KZGlmZmVyZW50IFNvQ3MuCgpJIGhhdmUg
dmVyaWZpZWQgdGhlIEFnYXR0aSBwYXJlbnQtY2hpbGQgc3VwcGx5IG1hcHBpbmdzIGFuZCB0aGV5
IGFyZQpjb3JyZWN0LiBUaGUgZGlmZmVyZW5jZSBiZXR3ZWVuIEFnYXR0aSBhbmQgU2hpa3JhIGlz
IGEgbGVnaXRpbWF0ZQpwbGF0Zm9ybS1sZXZlbCBkZXNpZ24gZGlmZmVyZW5jZSwgbm90IGFuIGVy
cm9yIGluIHRoZSBBZ2F0dGkgRFQuCgpyZWdhcmRzClJha2VzaCBLb3RhCgoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
