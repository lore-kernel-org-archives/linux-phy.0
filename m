Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19210C43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 12:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wr1kn6B7S6wNcDp+sdBoiC8N+OB2uPaIDBdp17Wf4jY=; b=tsdUeKwROL3Pgj
	mLaiJKa/q5JprwiGaPQjE7Q51NVA2Xj12jnHoOL7oYxvQWttcET/J1rKK8lH9DYIwjTcBQOmeFr+b
	g0MvYpbSzjs3WoMx6LGjAz6g4X8puUZSzp8K6Yi+r5LpelYJZgT3cD7VchcuvGaLzdAGCgM1oNFdK
	6ZQ4JFZ06/hbP4qm+wfj952otPd5xfAoIvgCJUtuGfNQyaghla1l+TZvLrxeWEm+hi7QDd7wYv5pA
	q5s+2WcjZuh60LKTIK/MyVdUP8P4f4ZQplr0ne/j8aanErtDxLZWc6KB0M1WOg0wgTqQQ6R55Dj20
	oqgwwZnLJOHTf7oTgcDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weXnM-0000000H1L6-1L6Y;
	Tue, 30 Jun 2026 12:42:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weXnJ-0000000H1KQ-432K
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 12:42:31 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65U9nDaS1590648;
	Tue, 30 Jun 2026 12:42:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pbEcFUqCI1I444S5LBnGuYIz870doEZNoKmsbA97ESI=; b=DdPBPXF5AvbAgGKb
	EpiD6aE6k2ZvjV/IC8rSOMWqsbm1w1wCMYTBk7NQTip1D/D/KxeKAZ8XTEN6ktSB
	PMPaPCzZtmUwImvl2NHfrSdu5vuikzHdTj897xwXlj8oCQmgzGRjZ32aPQp0oo5U
	CQrnv0MyzGYmfXEEICws04QEV/TVE4vumkiQ4bqUuZwOGvvOl2a5N69vTxot/xj+
	O0zOohRPaP87JYf+98PQ2h5wn7bJqnxSOEAW4huWhW301GpENj9dGsmB+oOs1XLy
	Jd5vzdapuYr2koQt+eB9sxTlugUmawwSf7TT0/7P6BB0kuF4dv10ENBkq3W2Wl6h
	Tl8MaA==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f3y9k3jk9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 30 Jun 2026 12:42:25 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.7/8.18.1.7) with ESMTP id 65UCgLPE001898;
	Tue, 30 Jun 2026 12:42:21 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 4f27kjpv3x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 30 Jun 2026 12:42:21 +0000 (GMT)
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.18.1.12/8.18.1.12) with ESMTP id 65UCgLAI001892;
	Tue, 30 Jun 2026 12:42:21 GMT
Received: from hu-devc-hyd-u22-c.qualcomm.com (hu-kotarake-hyd.qualcomm.com [10.213.97.140])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 65UCgLRl001885
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 30 Jun 2026 12:42:21 +0000 (GMT)
Received: by hu-devc-hyd-u22-c.qualcomm.com (Postfix, from userid 2389607)
	id 5C304B22; Tue, 30 Jun 2026 18:12:20 +0530 (+0530)
Date: Tue, 30 Jun 2026 18:12:20 +0530
From: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        sashiko-reviews@lists.linux.dev,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>, robh@kernel.org,
        linux-phy@lists.infradead.org, neil.armstrong@linaro.org,
        vkoul@kernel.org, olteanv@gmail.com, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Add Shikra CQM SoM platform
Message-ID: <20260630124220.4lja4zshpf66kwj3@hu-kotarake-hyd.qualcomm.com>
References: <20260513042836.073F9C2BCB7@smtp.kernel.org>
 <t2sw6owdxy5iyodjqsldbw6bfaqnezhgvc4hhylxuyrrbjkjto@iwf4dr5nmot3>
 <20260513142936.kauwa3czigfs7qs5@hu-kotarake-hyd.qualcomm.com>
 <0ac665bb-1a21-4077-aa9e-97162f7f4784@oss.qualcomm.com>
 <20260514103918.cs5m5kcxcrcgukvx@hu-kamalw-hyd.qualcomm.com>
 <obdxony34ckfbtsqj66siszw44sgieskcye5hg66ulkisctpwl@fyqczpze5tnw>
 <20260518114927.edxbzvklqatlntv2@hu-kamalw-hyd.qualcomm.com>
 <CAO9ioeVMieo8HtpRw+n4ZU9uV-_RQM061q5XfAA1Dtk2fnp4+g@mail.gmail.com>
 <bvankzuazswuigrm7hvyjqigzfaru5o43wi3zvyphgme2pgqwz@pyspqky3u6cn>
 <5idu4ljmcvcvzqsr5g73h2roxzs36l6xxc5ju6ovc5aitt3gx4@wmfqueyf2rj6>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5idu4ljmcvcvzqsr5g73h2roxzs36l6xxc5ju6ovc5aitt3gx4@wmfqueyf2rj6>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjMwMDExNiBTYWx0ZWRfX8IVfUzrVn4AQ
 qoPQpdsjPBZ+4BZlXCLYgWDD2ROie62+NUXqPMvATMV+laUf/nIvCYNAVJPaWtkYuHTJ2Snlyl8
 fAqrn05ZYKEtERnKsVNDPl91rSngGbE=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjMwMDExNiBTYWx0ZWRfX070g4lEWipdr
 jU8odaZLQ+mfTFtrEQPC2hbuVZO8M6TinFYig63N59FnHYQM6tRPHK/PK6BW8kE1jjmfDG9IhAJ
 jMYtXehwq4WHZoUfbnEAaNQQxsS6+wGzmcJ0CqGQzBq9ZddHGygUhpx6P4R+xkPO1yCsylbYOXS
 rVaJglf9kheKK6DVnQkn6m0hwSsLe7tOn7z9GkoRuA9eTjC6HM6PI4A00tOwxCrM5hAKZDrK7cv
 1P3XE+AxGK0r7lXOLxtEPEKjfvZ/u5NWrPAvbJqc5MAfZefud3kvV3Z66JSX1BlVKTfyIAjLAty
 i3TXbDYBYSrqVZIIqAhPSu/fVginwHl6AAUSttv91oKIwd+LJ+4OiXvkJrzK0R+tHhh5HpelOVf
 zB1ojrJ040qPig3T/8GXHI0WP0aQZGrnVar/tjMy6ZSZAXOocgJhmfcIJ0vw8DjTu0GP45PsOvm
 zyCi8JsdRzDAzJDKdEg==
X-Proofpoint-ORIG-GUID: Ntk5LAX5Wt_02VD-9YJ-vtQGQhhQ3i0W
X-Authority-Analysis: v=2.4 cv=TeqmcxQh c=1 sm=1 tr=0 ts=6a43b9b2 cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=EUfvLHg3fUMcTtBup20A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: Ntk5LAX5Wt_02VD-9YJ-vtQGQhhQ3i0W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_03,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 phishscore=0 priorityscore=1501 malwarescore=0
 spamscore=0 adultscore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606300116
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_054230_150244_E0363704 
X-CRM114-Status: GOOD (  44.53  )
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

T24gU3VuLCBKdW4gMjgsIDIwMjYgYXQgMDM6MzM6MjNQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBPbiBUaHUsIEp1biAyNSwgMjAyNiBhdCAwOToxMToxOVBNICswNTMwLCBLYW1h
bCBXYWRod2Egd3JvdGU6Cj4gPiBPbiBXZWQsIEp1biAxNywgMjAyNiBhdCAwMzo0ODoxNFBNICsw
MzAwLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+ID4gPiBPbiBNb24sIDE4IE1heSAyMDI2IGF0
IDE0OjQ5LCBLYW1hbCBXYWRod2EKPiA+ID4gPGthbWFsLndhZGh3YUBvc3MucXVhbGNvbW0uY29t
PiB3cm90ZToKPiA+ID4gPgo+ID4gPiA+IE9uIFN1biwgTWF5IDE3LCAyMDI2IGF0IDA4OjE4OjE1
UE0gKzAzMDAsIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gPiA+ID4gPiBPbiBUaHUsIE1heSAx
NCwgMjAyNiBhdCAwNDowOToxOFBNICswNTMwLCBLYW1hbCBXYWRod2Egd3JvdGU6Cj4gPiA+ID4g
PiA+IE9uIFdlZCwgTWF5IDEzLCAyMDI2IGF0IDA2OjE0OjIwUE0gKzAzMDAsIERtaXRyeSBCYXJ5
c2hrb3Ygd3JvdGU6Cj4gPiA+ID4gPiA+ID4gT24gMTMvMDUvMjAyNiAxNzoyOSwgUmFrZXNoIEtv
dGEgd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiBPbiBXZWQsIE1heSAxMywgMjAyNiBhdCAwMzowMTo0
N1BNICswMzAwLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4gPiBPbiBX
ZWQsIE1heSAxMywgMjAyNiBhdCAwNDoyODozNUFNICswMDAwLCBzYXNoaWtvLWJvdEBrZXJuZWwu
b3JnIHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4gPiA+IFRoYW5rIHlvdSBmb3IgeW91ciBjb250cmli
dXRpb24hIFNhc2hpa28gQUkgcmV2aWV3IGZvdW5kIDIgcG90ZW50aWFsIGlzc3VlKHMpIHRvIGNv
bnNpZGVyOgo+ID4gPiA+ID4gPiA+ID4gPiA+IC0gW0hpZ2hdIFRoZSBQTUlDIHJlZ3VsYXRvciBk
ZWZpbml0aW9ucyBvbWl0IHRoZWlyIHJlcXVpcmVkIGlucHV0IHN1cHBseSBkZXBlbmRlbmNpZXMg
KGUuZy4sIGB2ZGRfczItc3VwcGx5YCwgYHZkZF9sMy1zdXBwbHlgKSwgYnJlYWtpbmcgdGhlIHBv
d2VyIGhpZXJhcmNoeS4KPiA+ID4gPiA+ID4gPiA+ID4gPiAtIFtNZWRpdW1dIFRoZSBkZXZpY2Ug
dHJlZSBpbmFjY3VyYXRlbHkgaGFyZGNvZGVzIHRoZSBgY29tcGF0aWJsZWAgc3RyaW5nIHRvIGEg
ZGlmZmVyZW50IFBNSUMgbW9kZWwgKGBxY29tLHJwbS1wbTIyNTAtcmVndWxhdG9yc2ApIGluc3Rl
YWQgb2YgZXhwbGljaXRseSBpZGVudGlmeWluZyB0aGUgYWN0dWFsIGhhcmR3YXJlIChQTTQxMjUp
Lgo+ID4gPiA+ID4gPiA+ID4gPiA+IC0tCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiArCj4gPiA+ID4g
PiA+ID4gPiA+ID4gPiArICAgICAgICAgcG00MTI1X3MyOiBzMiB7Cj4gPiA+ID4gPiA+ID4gPiA+
ID4gPiArICAgICAgICAgICAgICAgICByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwxMDAwMDAw
PjsKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1tYXgt
bWljcm92b2x0ID0gPDEyMDAwMDA+Owo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgIH07
Cj4gPiA+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4gPiBEbyB0aGVzZSByZWd1bGF0
b3JzIG5lZWQgdG8gZXhwbGljaXRseSBkZWZpbmUgdGhlaXIgaW5wdXQgc3VwcGx5IGRlcGVuZGVu
Y2llcwo+ID4gPiA+ID4gPiA+ID4gPiA+IHN1Y2ggYXMgdmRkX3MyLXN1cHBseT8KPiA+ID4gPiA+
ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ID4gPiA+IFdpdGhvdXQgdGhlc2UgcHJvcGVydGllcywg
dGhlIHJlZ3VsYXRvciBmcmFtZXdvcmsgbWlnaHQgYmUgdW5hd2FyZSB0aGF0IHRoZQo+ID4gPiA+
ID4gPiA+ID4gPiA+IFBNSUMgcmVndWxhdG9ycyBkcmF3IHBvd2VyIGZyb20gdXBzdHJlYW0gc3Vw
cGxpZXMuCj4gPiA+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4gPiBJZiB0aGUga2Vy
bmVsIGR5bmFtaWNhbGx5IG1hbmFnZXMgdGhlIHVwc3RyZWFtIHN1cHBseSBhbmQgaXRzIHJlZmVy
ZW5jZSBjb3VudAo+ID4gPiA+ID4gPiA+ID4gPiA+IGRyb3BzIHRvIHplcm8sIGNvdWxkIGl0IGJl
IGRpc2FibGVkLCBjYXVzaW5nIGFuIHVuZXhwZWN0ZWQgcG93ZXIgbG9zcyBmb3IKPiA+ID4gPiA+
ID4gPiA+ID4gPiBkb3duc3RyZWFtIGNvbXBvbmVudHM/Cj4gPiA+ID4gPiA+ID4gPiA+Cj4gPiA+
ID4gPiA+ID4gPiA+IEFuZCB0aGlzIGlzIGEgY29ycmVjdCBjb21tZW50LiBQbGVhc2UgcHJvdmlk
ZSBtaXNzaW5nIHN1cHBsaWVzLgo+ID4gPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ID4gQXMg
cGVyIHRoZSBRdWFsY29tbSBzeXN0ZW0gZGVzaWduLCB0aGUgcGFyZW50LWNoaWxkIHN1cHBseSBy
ZWxhdGlvbnNoaXAKPiA+ID4gPiA+ID4gPiA+IGlzIG1hbmFnZWQgYnkgdGhlIFJQTSBmaXJtd2Fy
ZSwgbm90IHRoZSBMaW51eCByZWd1bGF0b3IgZnJhbWV3b3JrLiBUaGUKPiA+ID4gPiA+ID4gPiA+
IFJQTSBlbnN1cmVzIHRoZSBwYXJlbnQgc3VwcGx5IGlzIG5ldmVyIGRpc2FibGVkIHVudGlsIGFs
bCBzdWJzeXN0ZW0KPiA+ID4gPiA+ID4gPiA+IHZvdGVzIGFyZSBjbGVhcmVkLgo+ID4gPiA+ID4g
PiA+Cj4gPiA+ID4gPiA+ID4gSG93IGlzIHRoaXMgZGlmZmVyZW50IGZyb20gb3RoZXIsIHByZXZp
b3VzIHBsYXRmb3Jtcz8KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gVGhpcyBpcyBub3QgZGlmZmVy
ZW50LiBJbiB0aGUgcHJldmlvdXMgcGxhdGZvcm1zIHRvbyB0aGlzIGlzIHRha2VuIGNhcmUgZnJv
bSB0aGUKPiA+ID4gPiA+ID4gUlBNL1JQTUggZmlybXdhcmUgc2lkZSwgdGhlIG9ubHkgY2FzZSB3
aGVyZSB3ZSBtYXkgbmVlZCBleHBsaWNpdCB2b3RlIHRvIHBhcmVudAo+ID4gPiA+ID4gPiBpcyBm
b3Igbm9uLXJwbWgvcnBtIHJlZ3VsYXRvciByYWlscyAobGlrZSBpMmMgYmFzZWQgcmVndWxhdG9y
IHBtODAwOCksIHdoaWNoCj4gPiA+ID4gPiA+IG1heSBoYXZlIGEgUlBNL1JQTUggcmVndWxhdG9y
IGFzIGEgcGFyZW50Lgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBFdmVuIG9uIHRob3NlIHByZXZp
b3VzIHRhcmdldHMgdGhlIHBhcmVudCByYWlsIG9mIGFsbCBSUE0vUlBNSCByZWd1bGF0b3JzIGFy
ZQo+ID4gPiA+ID4gPiBpbnRlcm5hbGx5IHZvdGVkIGJ5IFJQTS9SUE1IIEZXIGF0IHByb3BlciB2
b2x0YWdlIHdpdGggcmVxdWlyZWQgaGVhZHJvb20KPiA+ID4gPiA+ID4gY2FsY3VsYXRlZCBiYXNl
ZCBvbiB0aGUgYWN0aXZlIGNoaWxkIHJhaWxzLiBUaGlzIHdhcyBkb25lIGZvciBhbGwgdGhlCj4g
PiA+ID4gPiA+IHN1YnN5c3RlbXMgKGluY2x1ZGluZyBBUFBTKSByZWd1bGF0b3JzLgo+ID4gPiA+
ID4gPgo+ID4gPiA+ID4gPiBTbyBubyBleHBsaWNpdCBoYW5kbGluZyBmcm9tIHRoZSBBUFBTIGlz
IHJlcXVpcmVkIGZvciBwYXJlbnQgc3VwcGx5Lgo+ID4gPiA+ID4KPiA+ID4gPiA+IFlvdSBhcmUg
ZXhwbGFpbmluZyB0aGUgZHJpdmVyIGJlaGF2aW91ci4gQnV0IHRoZSBxdWVzdGlvbiBpcyBhYm91
dCB0aGUKPiA+ID4gPiA+IGhhcmR3YXJlIGRlc2NyaXB0aW9uLiBJZiB0aGVyZSBpcyBubyBkaWZm
ZXJlbmNlLCBwbGVhc2UgYWRkIG5lY2Vzc2FyeQo+ID4gPiA+ID4gc3VwcGxpZXMgYmFjay4KPiA+
ID4gPgo+ID4gPiA+IEkgdW5kZXJzdGFuZCB5b3VyIGNvbmNlcm4gYWJvdXQgZGVzY2liaW5nIHRo
ZSBwYXJlbnQtY2hpbGQgcmVsYXRpb24gaW4gdGhlCj4gPiA+ID4gZGV2aWNldHJlZSwgYW5kIGdp
dmVuIHRoYXQgd2UgaGF2ZSBiZWVuIGFsbW9zdCBhbHdheXMgZm9sbG93ZWQgdGhpcyBmb3IgYWxs
Cj4gPiA+ID4gdGhlIHByZXZpb3VzIHRhcmdldHMsIGl0IHdpbGwgZXhwZWN0ZWQgb2YgdXMgdG8g
YWRkIHRoZW0uCj4gPiA+IAo+ID4gPiBZZXMuCj4gPiA+IAo+ID4gPiA+Cj4gPiA+ID4gSG93ZXZl
ciwgd2Ugd2FudCB0byBhdm9pZCB0aGUgdW5uZWNlc3NhcnkgYWNjZXNzIHRvIHRoZSBwYXJlbnQg
ZnJvbSBBUFBTLgo+ID4gPiAKPiA+ID4gV2h5PyBXaGF0IGlzIHRoZSByZWFzb24/IERvIHdlIHdh
bnQgdG8gZG8gdGhlIHNhbWUgZm9yIGFsbCB0aGUKPiA+ID4gcGxhdGZvcm1zPyBPbmx5IGZvciBT
aGlrcmE/IFNvbWV0aGluZyBlbHNlPwo+ID4gPiAKPiA+ID4gPiBBdCB0aGUgbW9tZW50LCBJIGRv
IG5vdCBzZWUgYSB3YXkgdG8gYXZvaWQgdGhhdCwgaWYgd2UgYWRkIHRoZSBwYXJlbnQKPiA+ID4g
PiByZWd1bGF0b3JzLgo+ID4gPiAKPiA+ID4gVGhhdCBkZXBlbmQgb24gdGhlIGFuc3dlciB0byB0
aGUgcHJldmlvdXMgcXVlc3Rpb24uIEluIHRoZSBlbmQsIHdlIGNhbgo+ID4gPiBtYWtlIHRoZSBk
cml2ZXIgaWdub3JlIHRoZSBwYXJlbnRzIGJ5IHJlbW92aW5nIHRoZW0gZnJvbSB0aGUgcmVndWxh
dG9yCj4gPiA+IGRlc2MuCj4gPiAKPiA+IE9rLCB0aGlzIHNlZW1zIGxpa2UgYSBnb29kIHN1Z2dl
c3Rpb24sIHNvIHlvdSBtZWFuIGl0cyBvayBpZiB3ZSBkZWZpbmUgdGhlCj4gPiByZWd1bGF0b3Ig
ZGVzYydzIHN1cHBseSBjb2x1bW4gd2l0aCBOVUxMPyBBbmQgb25seSBrZWVwIHRoYXQgaW4gdGhl
IERUPwo+ID4gCj4gPiB5b3UgbWVhbiBsaWtlIHRoaXM/Cj4gPiBodHRwczovL2dpdC5rZXJuZWwu
b3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9kcml2
ZXJzL3JlZ3VsYXRvci9xY29tLXJwbWgtcmVndWxhdG9yLmM/aD12Ny4xI24xNDUzCj4gPiAKPiA+
IChwbGVhc2UgbGV0IG1lIGtub3cgaWYgaSBnb3QgdGhhdCByaWdodC4gdGhhbmtzKQo+IAo+IFll
cy4gRG9uJ3QgZm9yZ2V0IHRvIGV4cGxhaW4gaW4gdGhlIGNvbW1pdCBtZXNzYWdlLCB3aHkgeW91
IGFyZSBkb2luZwo+IHNvLgoKQ3VycmVudGx5LCBBZ2F0dGkgdXNlcyB0aGUgc2FtZSBQTUlDLCBz
byB3ZSBjYW5ub3Qgc2V0IHRoZSBkcml2ZXIKc3VwcGx5IG5hbWUgcmVmZXJlbmNlIHRvIE5VTEwu
IFNpbmNlIGl0J3MgYW4gb2xkZXIgdGFyZ2V0LAp3ZSdsbCBuZWVkIHRvIHJ1biBhIHJlZ3Jlc3Np
b24gYmVmb3JlIG1ha2luZyBhbnkgZHJpdmVyLWxldmVsIGNoYW5nZXMuCgpBZGRpdGlvbmFsbHks
IHRoZSBjaGlsZC10by1wYXJlbnQgcmVndWxhdG9yIGdhbmdpbmcgZGlmZmVycyBiZXR3ZWVuClNo
aWtyYSBhbmQgQWdhdHRpOgoKIC0gT24gQWdhdHRpLCBsMyByZWd1bGF0b3IgaXMgZ2FuZ2VkIHdp
dGggdmRkX2wxM19sMTRfbDE1X2wxNgogLSBPbiBTaGlrcmEsIGwzIGlzIGdhbmdlZCB3aXRoIHZk
ZF9sMl9sMwoKU2luY2UgdmRkX2wyX2wzIGlzIG5vdCBwcmVzZW50IGFzIGEgc3VwcGx5IG5hbWUg
aW4gdGhlIGRyaXZlciwgaXQgd2lsbApiZSBza2lwcGVkIGJ5IHRoZSBkcml2ZXIgYW5kIHdvdWxk
IG9ubHkgc2VydmUgYXMgYSByZXByZXNlbnRhdGlvbmFsCnJlZmVyZW5jZSBpbiB0aGUgRFQuCgpX
ZSBoYXZlIHR3byBvcHRpb25zIHRvIGNvbnNpZGVyOgoKT3B0aW9uIDE6IFNraXAgYWRkaW5nIHRo
ZSBjaGlsZC9wYXJlbnQgcmVsYXRpb25zaGlwIGZvciBTaGlrcmEgZm9yIG5vdywKc2luY2UgdGhl
IERUIGJpbmRpbmdzIGFyZSBub3QgZW5mb3JjaW5nIGl0LiAoUmVmOgpodHRwczovL2dpdC5rZXJu
ZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcmVndWxhdG9yL3Fjb20sc21kLXJwbS1y
ZWd1bGF0b3IueWFtbD9oPXY3LjEpCgpPcHRpb24gMjogR28gYWhlYWQgYW5kIGFkZCB0aGUgU2hp
a3JhLXNwZWNpZmljIGdhbmdpbmcgaW4gRFQgbm93LiBTaW5jZQp0aGUgc3VwcGx5IG5hbWUgKHZk
ZF9sMl9sMykgZG9lcyBub3QgbWF0Y2ggd2hhdCB0aGUgZHJpdmVyIGV4cGVjdHMKKEFnYXR0aSdz
IG1hcHBpbmcpLCBpdCB3aWxsIGJlIGdyYWNlZnVsbHkgc2tpcHBlZCBieSB0aGUgZHJpdmVyIOKA
lCBtYWtpbmcKaXQgc2FmZSB0byBhZGQgZm9yIGRvY3VtZW50YXRpb24vcmVwcmVzZW50YXRpb24g
cHVycG9zZXMgd2l0aG91dCBhbnkKZnVuY3Rpb25hbCBpbXBhY3QuCgpTbyxQbGVhc2Ugc2hhcmUg
eW91ciB0aG91Z2h0cyBvbiBhYm92ZSBvcHRpb25zID8KClRoYW5rcwpSYWtlc2gga290YQoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
