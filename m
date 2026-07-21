Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56EEAC44532
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 14:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oZSEYpZ1RKgPFzvZcA76KTKzPFllb6WI7m2uvac7SaI=; b=ttfxjZzDXlUp6d
	Kqw4DvrxO83uORyn/me8Z/IKU1KLI/XM3KPHfPriE6FuZ4DdjaSf0lxXdIsoeyMzODjKM90v4gdMD
	LeOFGSs1EjVmEjG2CVEERnjky6ob4Ao0C4a/kamX4QRB4HMFQje+I87AlvIadlHCIl/O4badkMUnU
	FUn3ZbJJ5K5XHEhIDrfWIdPe9LX5V4KMOAoBQHjDXKIf7oloaOMWeKh8cqnySD7hOVZTOHwyLFDdW
	G5xA4QrmsgE3pBbUrfi8iWqBUvhCD+qtQghRcVqRtL/eWAJJ6o3UTRQgwizXIT2ZLjxLhqcdJb3qc
	GBoFnEUj/QRP4upZ+qgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmBMh-00000009eEK-0DVT;
	Tue, 21 Jul 2026 14:22:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmBMe-00000009eCo-3VP8
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 14:22:34 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66LDg3Ql1805590
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 14:22:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	v+yHMtgUgMUPR98O/vjDzk+0468NFDAYgeUogFIk31g=; b=G+4aCFFNe2NSI6UW
	gisxHrBykNfzsAx7WqTe49vubwh0750SQsPZjBayCu9JDR1QBJajrn/vKZ+8fMJs
	X+YcId6LbsJu7S504KzrNVkzvc0vChh1DcosusBgLE1KkuEEtJCIoQ9xpkAOsUEz
	eQra6TwUJzEtUQgNbZPUlOWwYzgXo4pYmh8tz7ffQ+WkJ8VX/YWipocEh3NHSLy1
	b9gv5LfWvYQXYUxSfe79fd02FyjQ4zUdX8f4KuGc24OZ7BUhq+KnQXSsS5FZC/HO
	0pYZh3D1+I4zq30pGJXPFxsIrOLZ4sW6XaHDCs1JQibXpIcEJCPPhW5a6pbGlax0
	jW4xfw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fj6pa95qs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 14:22:31 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-92e5fc4c7e9so1008727585a.3
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 07:22:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784643751; cv=none;
        d=google.com; s=arc-20260327;
        b=WtpJ5tvA+XfMLe/n/czZjH+ynW4frXyIsWWciGG3CDWRH2LM/SuS0NwTxjxbDHNHIz
         6l/Q8XLg90ahug4sKOzG4R7YXaThBrtiKhTH0A5iwDYuGqQXphTMgLauo4UAlUepIMWs
         STr6nZ6TOpm1rdyVD2kyItXLrAkNZQrEMTdi08HqJDFHtaMixR/Jr/1qI/4lc2HRWb/J
         xlnIQxT7o1r0/8PlByuAhvbIz8x09K8tOZpe5vZ6Fo2s728QKWodNB9pXe173xFwnEr6
         4P3lYc0Qj+URxflgVmIx3pCStFnzshE6c507tSVcS4T76Hg+I3txHv+zswWbLuDkUMg0
         77+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=v+yHMtgUgMUPR98O/vjDzk+0468NFDAYgeUogFIk31g=;
        fh=GQi2sDHHgQLYIPt8d5F4xHH12V1WR3gNqPALK6c9Sw0=;
        b=hp45oNKaDeLN9n0WU2+ez1ET2bbwzX3DLxM9uwKN+ykGqPillStv1/WjPtf/RNHzQ8
         PBb5YEJAb9oBw5A/ZPwknqjINYOCeBkMpO/uanISurjzik6A+rhKA+cf+a7+P1reftPt
         b+Se66i51N4HBYNIc3Kd3ESK83GnXT6V7JyD9n8zYHbFGwCihYGivQRmtgihLBlAUrvn
         24Zz2A2MEvs55P9eOajR9M1W1hZO4u4MInmxZH3OFmEvQ9j1hhCbZe0QgAtW05Joqxmt
         7AULkL9AT08NYcr11YgvmPjnQ23jNjwdW/mP5pRdvJTbRvBt7Ci0zGhP/WEnBi6vtYMD
         C/rw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784643751; x=1785248551; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=v+yHMtgUgMUPR98O/vjDzk+0468NFDAYgeUogFIk31g=;
        b=cHd6bZ37rSynmVy4nyne0G9T0TfALLM07ccDIq+V0jLEyQu3OD9C/E0q/TVesDY4Wd
         95dfz3Fy4XQG012EyICcwvLAl70TPrmAOc9omVvS6ro1bFbT9B+zmXSLwBNOHnBqVUJn
         FXVzIFke/laT1C82vFOECDcWwR5V0Tizes6xJdpAr8boSRDGQfMeZtA2f7+kEw6HPtdc
         m7qrzy9l2TXxMDJptwHKbej7dn5MMCEL72CCO+hbT8DAqcp9+S1E6S1Wh5Gc6bDwuTrk
         NeXHNVcm9j/dWwah7pUktzUSTfChJKLRE45+yt0Rd8/unBfselLYdd5drwTA/VFckIR1
         t8Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784643751; x=1785248551;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=v+yHMtgUgMUPR98O/vjDzk+0468NFDAYgeUogFIk31g=;
        b=kqxDkW4hmaYKki3YFm5dCwwOfJMsKskmK669r6yAGjd6DZb7qQpaJonUwHuU2Yu/jd
         XPPtCm3oC367MMrMAModw0dopxBzKQElVu5O91SkTjLXgsb111HJ+UD8N23WMJpM3OvJ
         W8ubPJaOYoJ+emJKJTov3Hq48QWMWwUJENVytbyXT/UkbCNyjzLLUlJjP9NODFqH2znx
         shaj7tckxJO/dMsjRK10CmMT2vurFi0RT3IR6bOthIyF+UIYOa6G3e7OnkW6AzTYDi20
         JeKdE9CSJBkVLkQDrc8DKPc6NT9IgsBv6/YcfisU+eDddLjAWrmpLOzV/k9RPUB8Pod8
         yNug==
X-Forwarded-Encrypted: i=1; AHgh+RoX0HN9mklDIl2uz9k8uzzPobv2uTmDaj+8tpuTLT7RbfOPqoa+f4LcH8+YPx19zjTRlmk9K/MXF48=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx5iH6aW8S2sVy8x/t8b5CUEny4Pk1ZPjjrixM2G8NyHMe/PghX
	mMuUh0/qBfI0P1GHdIUv4WKxrX0g5wPJ4k2rfpXLFErZWwexfyYuqU02sxmWiatjtIv6BkDJVVR
	woUg1L/6T23/BOjHHMZSa0QjMEMnZ6dm9GfrVua4ua6v9xdLD1ElWW/QR1ep39ynFCUO3dZILVu
	DPcYSr02JMPeQCBuAk8C47d8u5zEK7OfxcLClTSwqCYkE=
X-Gm-Gg: AfdE7ckCzZbD1FQLUPx0enZOa2MdINsoWBoeU69HB+rdbF7IA1bd35UHohVlkfpE1eL
	IR3sDNzh64zb3+nHxklJOH2Kw1WmI9w6ehmiIr3tB7R/oNZ9++yablHDN717j4k9kN/2I3rVb8m
	SvhjIqlDZezpYQ1d8l4fJBzOK1E8jrHbz/thJ12biCBNiaOf/iEfJbfKZhWuoIxO2pQ+YWK+LTN
	O2TKIagTHaY0p/x82OrtmN/F005Esvw8AA0HdcKhn+2b/0mR+MllVtW1N/w2k1Xf+AUCubtiJA=
X-Received: by 2002:a05:620a:2b9c:b0:915:8f08:5fa7 with SMTP id af79cd13be357-930b416e816mr1589285685a.52.1784643751020;
        Tue, 21 Jul 2026 07:22:31 -0700 (PDT)
X-Received: by 2002:a05:620a:2b9c:b0:915:8f08:5fa7 with SMTP id
 af79cd13be357-930b416e816mr1589279685a.52.1784643750435; Tue, 21 Jul 2026
 07:22:30 -0700 (PDT)
MIME-Version: 1.0
References: <20260721-qcom-usb-phy-fix-null-v5-0-a181e2adbd2d@oss.qualcomm.com>
 <20260721-qcom-usb-phy-fix-null-v5-2-a181e2adbd2d@oss.qualcomm.com> <4nd4f7bfliwumptfr2uykm4x5kyqd2gy7oputk7q57yu4g55df@4i5nzxl44i7p>
In-Reply-To: <4nd4f7bfliwumptfr2uykm4x5kyqd2gy7oputk7q57yu4g55df@4i5nzxl44i7p>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Tue, 21 Jul 2026 16:22:19 +0200
X-Gm-Features: AUfX_myiysuk6IKBD47W3fNziIgtL0UaQoeOiPJy-WgUbCYmzEprNwCduDwlvtw
Message-ID: <CAFEp6-3tB5uFDnzic3WpaG0PzN85VeSKfqMYG_R5X0yQrAbYGQ@mail.gmail.com>
Subject: Re: [PATCH v5 2/5] phy: qcom: qmp-usbc: Prevent unnecessary PM
 runtime suspend at boot
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Proofpoint-GUID: qf3zwrbjONFOxXQ93Wc1ZyE-yoqEGOCo
X-Proofpoint-ORIG-GUID: qf3zwrbjONFOxXQ93Wc1ZyE-yoqEGOCo
X-Authority-Analysis: v=2.4 cv=eYYNubEH c=1 sm=1 tr=0 ts=6a5f80a7 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=rJkE3RaqiGZ5pbrm-msn:22 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8
 a=8dKS9IOcKPRQIvt-DFgA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIxMDE1MSBTYWx0ZWRfX0+2y6xfpHVsO
 jzJPuDvtzD/1QMqUDpBG7ft0MLHnkpGtH41j5gSBY//nxFFoFgg5owuMll9xYCtyRw8vljC+NDl
 qQFHz9RnknKVcQ+8f2giZhkka5RSZZjJdQrXSkye6eH5w3HXBPupFdbssWIhMPXbramRAgmU/nl
 Nvg2hgaGaJJ1p5n+hfuBQ1Iwb597JyKCCIbRR4nMIlZsvp59oIA3XurAtMyBjQOnOZdiYgcIeJb
 W3GR+BgIak3kXY6nP1pR8732HMyZ18H09mPKFwcNjCy3QeHjJAtj1bEmGcyMNz9Bz/bBm+i8qkk
 ohKhixN0CRtV/zLRAtuT8loJcB9Zz6iFnv+MZ3JHsXkrTvyuK5nvH5D0eFcBxlhC87sdm8kjMZn
 +T/16HtXjkQzVLU7zjjlkDRaxmNgHG1nq8s9xZvpmWT+cgq1r/JCqQMvV1WtGcOV+UNcUf5aLTr
 UMU78W+1mZz9OX6J5zQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIxMDE1MSBTYWx0ZWRfX/CxzHBrYC7AY
 Lsvvbk5APs75IP8SyKbMiuHei85TatMYBt3dfsX+b4hN5pkKp4+q6QvEyec8h1KNT/2wt0SbfyO
 I2Ng4HTNkli+T6IBtSmBnDNjQlVAxG4=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-21_03,2026-07-20_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 spamscore=0 bulkscore=0 impostorscore=0 phishscore=0 adultscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607210151
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_072233_006789_74B6FF74 
X-CRM114-Status: GOOD (  32.31  )
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

SGkgRG1pdHJ5LAoKCk9uIFR1ZSwgSnVsIDIxLCAyMDI2IGF0IDM6MzLigK9QTSBEbWl0cnkgQmFy
eXNoa292CjxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+IHdyb3RlOgo+Cj4gT24g
VHVlLCBKdWwgMjEsIDIwMjYgYXQgMDM6MDU6NDZQTSArMDIwMCwgTG9pYyBQb3VsYWluIHdyb3Rl
Ogo+ID4gUnVudGltZSBQTSBoYXMgdG8gYmUgZW5hYmxlZCBiZWZvcmUgY3JlYXRpbmcgdGhlIFBI
WXMsIHNpbmNlIHBoeV9jcmVhdGUoKQo+ID4gb25seSBlbmFibGVzIHJ1bnRpbWUgUE0gb24gdGhl
IFBIWSBkZXZpY2VzIGlmIGl0IGlzIGFscmVhZHkgZW5hYmxlZCBvbgo+ID4gdGhpcyBwYXJlbnQg
ZGV2aWNlLiBUaGlzIG9wZW5zIGEgc21hbGwgd2luZG93IHdoZXJlIHRoZSBkZXZpY2UgY2FuIGJl
Cj4gPiBydW50aW1lIHN1c3BlbmRlZCBhZnRlciBwbV9ydW50aW1lX2VuYWJsZSgpIGFuZCBiZWZv
cmUgdGhlIGxhdGVyCj4gPiBwbV9ydW50aW1lX2ZvcmJpZCgpLCBjYXVzaW5nIGFuIHVubmVjZXNz
YXJ5IHN1c3BlbmQvcmVzdW1lIGN5Y2xlIHdoaWxlCj4gPiB0aGUgUEhZcyBhcmUgbm90IHlldCBy
ZWdpc3RlcmVkLgo+ID4KPiA+IFRha2UgYSBydW50aW1lIFBNIHVzYWdlIHJlZmVyZW5jZSB3aXRo
IHBtX3J1bnRpbWVfZ2V0X25vcmVzdW1lKCkgYmVmb3JlCj4gPiBlbmFibGluZyBydW50aW1lIFBN
IGFuZCByZWxlYXNlIGl0IG9uY2UgdGhlIFBIWXMgaGF2ZSBiZWVuIGNyZWF0ZWQgdG8KPiA+IHBy
ZXZlbnQgdGhlIGRldmljZSBmcm9tIGJlaW5nIHJ1bnRpbWUgc3VzcGVuZGVkIGR1cmluZyB0aGF0
IHdpbmRvdy4KPiA+Cj4gPiBSZXZpZXdlZC1ieTogS29ucmFkIER5YmNpbyA8a29ucmFkLmR5YmNp
b0Bvc3MucXVhbGNvbW0uY29tPgo+ID4gUmV2aWV3ZWQtYnk6IEFiZWwgVmVzYSA8YWJlbC52ZXNh
QG9zcy5xdWFsY29tbS5jb20+Cj4gPiBSZXZpZXdlZC1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1p
dHJ5LmJhcnlzaGtvdkBvc3MucXVhbGNvbW0uY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogTG9pYyBQ
b3VsYWluIDxsb2ljLnBvdWxhaW5Ab3NzLnF1YWxjb21tLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZl
cnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11c2JjLmMgfCAxOCArKysrKysrKysrKysrKy0t
LS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkK
PiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVz
YmMuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11c2JjLmMKPiA+IGluZGV4
IGFiMzA1NWJiNWIwYzE5ODgzMmFlMDZkZmNkMDRmZDM0Mzk1ZTI3MWQuLjQzMTcyMjQwNzBmZDhk
ZWM5ODA5MGU5MjAwYWM3ZDBlOTcyNjU5NzkgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3BoeS9x
dWFsY29tbS9waHktcWNvbS1xbXAtdXNiYy5jCj4gPiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29t
bS9waHktcWNvbS1xbXAtdXNiYy5jCj4gPiBAQCAtMTk1OSwxMCArMTk1OSwxNiBAQCBzdGF0aWMg
aW50IHFtcF91c2JjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiAgICAg
ICBpZiAocmV0KQo+ID4gICAgICAgICAgICAgICBnb3RvIGVycl9ub2RlX3B1dDsKPiA+Cj4gPiAr
ICAgICAvKgo+ID4gKyAgICAgICogRW5hYmxlIHJ1bnRpbWUgUE0gYmVmb3JlIGNyZWF0aW5nIHRo
ZSBQSFlzLCBwaHlfY3JlYXRlKCkgb25seSBlbmFibGVzCj4gPiArICAgICAgKiBpdCBvbiB0aGUg
UEhZIGRldmljZXMgaWYgYWxyZWFkeSBlbmFibGVkIG9uIHRoZSBwYXJlbnQuIEhvbGQgYSB1c2Fn
ZQo+ID4gKyAgICAgICogcmVmZXJlbmNlIHNvIGNhbGxiYWNrcyBjYW5ub3QgcnVuIHVudGlsIHRo
ZSBQSFkgaXMgcmVhZHkuCj4gPiArICAgICAgKi8KPiA+ICsgICAgIHBtX3J1bnRpbWVfZ2V0X25v
cmVzdW1lKGRldik7Cj4gPiAgICAgICBwbV9ydW50aW1lX3NldF9hY3RpdmUoZGV2KTsKPiA+ICAg
ICAgIHJldCA9IGRldm1fcG1fcnVudGltZV9lbmFibGUoZGV2KTsKPiA+ICAgICAgIGlmIChyZXQp
Cj4gPiAtICAgICAgICAgICAgIGdvdG8gZXJyX25vZGVfcHV0Owo+ID4gKyAgICAgICAgICAgICBn
b3RvIGVycl9wbV9wdXQ7Cj4gPiAgICAgICAvKgo+ID4gICAgICAgICogUHJldmVudCBydW50aW1l
IHBtIGZyb20gYmVpbmcgT04gYnkgZGVmYXVsdC4gVXNlcnMgY2FuIGVuYWJsZQo+ID4gICAgICAg
ICogaXQgdXNpbmcgcG93ZXIvY29udHJvbCBpbiBzeXNmcy4KPiA+IEBAIC0xOTcxLDEzICsxOTc3
LDEzIEBAIHN0YXRpYyBpbnQgcW1wX3VzYmNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKPiA+Cj4gPiAgICAgICByZXQgPSBxbXBfdXNiY19yZWdpc3Rlcl9jbG9ja3MocW1wLCBu
cCk7Cj4gPiAgICAgICBpZiAocmV0KQo+ID4gLSAgICAgICAgICAgICBnb3RvIGVycl9ub2RlX3B1
dDsKPiA+ICsgICAgICAgICAgICAgZ290byBlcnJfcG1fcHV0Owo+ID4KPiA+ICAgICAgIHFtcC0+
dXNiX3BoeSA9IGRldm1fcGh5X2NyZWF0ZShkZXYsIG5wLCAmcW1wX3VzYmNfdXNiX3BoeV9vcHMp
Owo+ID4gICAgICAgaWYgKElTX0VSUihxbXAtPnVzYl9waHkpKSB7Cj4gPiAgICAgICAgICAgICAg
IHJldCA9IFBUUl9FUlIocW1wLT51c2JfcGh5KTsKPiA+ICAgICAgICAgICAgICAgZGV2X2Vycihk
ZXYsICJmYWlsZWQgdG8gY3JlYXRlIFBIWTogJWRcbiIsIHJldCk7Cj4gPiAtICAgICAgICAgICAg
IGdvdG8gZXJyX25vZGVfcHV0Owo+ID4gKyAgICAgICAgICAgICBnb3RvIGVycl9wbV9wdXQ7Cj4g
PiAgICAgICB9Cj4gPgo+ID4gICAgICAgcGh5X3NldF9kcnZkYXRhKHFtcC0+dXNiX3BoeSwgcW1w
KTsKPiA+IEBAIC0xOTg3LDE3ICsxOTkzLDIxIEBAIHN0YXRpYyBpbnQgcW1wX3VzYmNfcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ICAgICAgICAgICAgICAgaWYgKElTX0VS
UihxbXAtPmRwX3BoeSkpIHsKPiA+ICAgICAgICAgICAgICAgICAgICAgICByZXQgPSBQVFJfRVJS
KHFtcC0+ZHBfcGh5KTsKPiA+ICAgICAgICAgICAgICAgICAgICAgICBkZXZfZXJyKGRldiwgImZh
aWxlZCB0byBjcmVhdGUgUEhZOiAlZFxuIiwgcmV0KTsKPiA+IC0gICAgICAgICAgICAgICAgICAg
ICBnb3RvIGVycl9ub2RlX3B1dDsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBnb3RvIGVycl9w
bV9wdXQ7Cj4gPiAgICAgICAgICAgICAgIH0KPiA+ICAgICAgICAgICAgICAgcGh5X3NldF9kcnZk
YXRhKHFtcC0+ZHBfcGh5LCBxbXApOwo+ID4gICAgICAgfQo+ID4KPiA+ICsgICAgIHBtX3J1bnRp
bWVfcHV0KGRldik7Cj4KPiBTaG91bGQgYmUgX3B1dF9zeW5jKCkgPwoKV2VsbCwgeWVzIGZvciBh
dm9pZGluZyBpbmNvbnNpc3RlbnQgc3RhdGUgb24gZXJyb3IgcGF0aCwgYnV0IGl0IG1pZ2h0CmJl
IGNsZWFuZXIgdG8gbW92ZSB0aGUgYXN5bmMgcHV0IGFmdGVyCmRldm1fb2ZfcGh5X3Byb3ZpZGVy
X3JlZ2lzdGVyKCksIG9uY2Ugd2Uga25vdyB0aGUgcHJvYmUgaGFzIHN1Y2NlZWRlZCwKYW5kIHRo
ZW4gcmVseSBvbiBwdXRfbm9pZGxlKCkgZm9yIGFsbCBlcnJvciBwYXRocy4KCj4KPiA+ICsKPiA+
ICAgICAgIG9mX25vZGVfcHV0KG5wKTsKPiA+Cj4gPiAgICAgICBwaHlfcHJvdmlkZXIgPSBkZXZt
X29mX3BoeV9wcm92aWRlcl9yZWdpc3RlcihkZXYsIHFtcF91c2JjX3BoeV94bGF0ZSk7Cj4gPgo+
ID4gICAgICAgcmV0dXJuIFBUUl9FUlJfT1JfWkVSTyhwaHlfcHJvdmlkZXIpOwo+ID4KPiA+ICtl
cnJfcG1fcHV0Ogo+ID4gKyAgICAgcG1fcnVudGltZV9wdXRfbm9pZGxlKGRldik7Cj4KPiBXaHkg
aXMgaXQgX25vaWRsZSgpPwoKVGhlIGRldmljZSBzdGFydHMgaW4gdGhlIGFjdGl2ZSBzdGF0ZSAo
cG1fcnVudGltZV9zZXRfYWN0aXZlKCkpLiBIZXJlLApJIHVzZSBwdXRfbm9pZGxlKCkgb25seSB0
byBiYWxhbmNlIHRoZSBQTSB1c2FnZSBjb3VudGVyIHdoaWxlIGtlZXBpbmcKdGhlIGRldmljZSBh
Y3RpdmUuIFRoaXMgcmVzdG9yZXMgdGhlIHJ1bnRpbWUgUE0gc3RhdGUgdG8gd2hhdCBpdCB3YXMK
YmVmb3JlIHRoZSBwcm9iZSAocG1fcnVudGltZV9nZXRfbm9yZXN1bWUpLCBhbGxvd2luZyB0aGUg
ZGV2aWNlIHRvIGJlCnJlcHJvYmVkIGZyb20gdGhlIHNhbWUgc3RhdGUuCgoKPgo+ID4gIGVycl9u
b2RlX3B1dDoKPiA+ICAgICAgIG9mX25vZGVfcHV0KG5wKTsKPiA+ICAgICAgIHJldHVybiByZXQ7
Cj4gPgo+ID4gLS0KPiA+IDIuMzQuMQo+ID4KPiA+Cj4gPiAtLQo+ID4gbGludXgtcGh5IG1haWxp
bmcgbGlzdAo+ID4gbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+IGh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo+Cj4gLS0KPiBXaXRo
IGJlc3Qgd2lzaGVzCj4gRG1pdHJ5CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
