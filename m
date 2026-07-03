Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41053C43602
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jul 2026 15:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wl5HRC2Qt8FjHgiMsZ+enczTQNewZU+lvastJAz4JbQ=; b=tHVGn8/rdFT67H
	9obxLPEsSHc81otC7yFhyIsDK4M/FHk9b5VBsOHW7XM9f8xagPBHXB0XxOu9W0wlM1Z9hUdA+D+oH
	JwS/+rziaMFNmakunG+3qlm6BZeFO6ZS1iK3DydXNcUhFT5yp1D8CbocJdz3XYvitg/cVUFdU+iV7
	Nd7J4MASnFCm2z85H6s4nkJy/vuSYLgWjr3tdfjFppViE9aym9Z/13ZNMzlJ/1zFTDw2SFdSbx8E7
	2+Uwp58daGDGpXoBh3gzp+DgI6n7iABfYjzN/MFbgGKi9hk7wfZ0JTKm2n+scUNyya1lTbsi+BUvW
	5AohJNnVpldu3aQ5DsMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wffoh-00000007PCf-3Tgj;
	Fri, 03 Jul 2026 15:28:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wffof-00000007PC6-03jj
	for linux-phy@lists.infradead.org;
	Fri, 03 Jul 2026 15:28:34 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6639BoSJ3694364
	for <linux-phy@lists.infradead.org>; Fri, 3 Jul 2026 15:28:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AciCzvVuG7PhBcPDjsdU+1dVF4U7pvIIGAG3L/zLdWM=; b=ZdK3UriohUzLsGQr
	5AveQQAoU94llCIcFaCL3Wu8pEcTKGxM/6gPAFu5dNuw8QUzL054/shX4W9G+WzY
	2FMFGmAiIE3e3lO5DDhmkOtAPvC7pNv/4CZsxKF75AoITtxisT5n0ifqsW4nXFFj
	m+8D9MErpMheDOY3Zq+sq4fiNkdMW2n1QnHSdv3hQZWXCXGg/4n8RoN9iZp+2DEO
	wcimnjxg4wHoTQ5GVpAQYPWaIlKNa/Ipshp+3AwCd7bEfTiEE1mwnPopU/dYZQuv
	+wIeouFUfZ5nzPF0avG4nr8s8vLFsXrPhaWM/eQwNLMkLQCz00uYvFG8b5VC2G2c
	5dlJuw==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f6a849a5g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 03 Jul 2026 15:28:32 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-5bbd4255f46so135888e0c.0
        for <linux-phy@lists.infradead.org>; Fri, 03 Jul 2026 08:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783092511; x=1783697311; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AciCzvVuG7PhBcPDjsdU+1dVF4U7pvIIGAG3L/zLdWM=;
        b=OvUZZjXJSwy9ZgzEneSprslb+q29dE9y/Bp8IijKBruPOaXLTzocw+I59W/EU8UiYE
         9W8ohKZJUneG/8uuFzmoxtbQGq+cCXEbIYToNM7zaGaHPJ/2fcnys1pnqawlhoIuINXt
         lT4C+mnP8A+RW4A7m0SvioaVRYB5ZMYTdqX92qL4XuXtnwAwdFPSL79vrDUzHjA0vcvu
         yuV7xy/vothQRCoCAj4CIdBL5Ii0wnUSprqW19F13OzwSrRYJ/UabZx7D72z8Xgysu17
         /iLid0XIFFpDyAMPfYcKkWm5qpDK9PAfsHEzL+9uYdhS+8VvgYEOD84aMKl6dLk92rrV
         pFKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783092511; x=1783697311;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AciCzvVuG7PhBcPDjsdU+1dVF4U7pvIIGAG3L/zLdWM=;
        b=plfIOLgxYJvi0JJwf64zdNCv+/G8ipWFnIKs4UCmHfLnDZDQIH5ljF2MCPV994jf75
         A/f8FZnB0I9H7zQFbWGNSMZLO1w6QKNRRuCCEuNGJbNNrVS26Gj5jUyiNva0I5ofZQCI
         KoUQoApBv+7PXnRE7zOAOgvPamRA4ogjfByb7Mjs4foTYL60pgaGGZXaY+cDumCtmF01
         aCXmJRulhRyay+q124DiO3rUTI1aV8/Z2y+bZFYQE9Lt0Af7zzSotQPdM9yErPXSb+6y
         wMP3lDdBaofkyeTFBPJcVOgwiFK+g89fbhrkzQDd0baLca6feZy5aXFRgLRfrr4ypQKe
         fCTA==
X-Forwarded-Encrypted: i=1; AHgh+RpvV8kRNUBc7LQgLieC+TfYvdaiba9ZMFoFkLUOzpgFNPZfqPxzywI7DWYbC+CDNdMrHPcr+B+eNcg=@lists.infradead.org
X-Gm-Message-State: AOJu0YzrutLYHkiWAQdCc60qytrWvZRXMDM4rqcv0T32uVbCzC4VkV5m
	FWfhFuNI64FNXQ+E6xML9VZTkoEViA9FZPMt9D4vCsP/oZDSWFmkfZ2hyDbYAjtUavor8JjtNJV
	pGgBIrUKzIeMcdw/SRFjyIquQlU8Pb3pDq2LsgxU3fuErNbvxKN7SK559X674k5vYhjiX
X-Gm-Gg: AfdE7clMP3uuAI6jRWL+LzDPnP0gOvN8OE/ybfJuXvHeRfrMgIC3+iYLBnzcs/TgGhR
	XFAXP5571ZK0KiFvgyL6f4lK/gGGYIRxVnxKS4hFlDzQ1wYti5qjXYSiVcOunv+HdvkfV7nA1eq
	YITWue1yfL8mixqg9GwA0Z4udxEW5NkNNs7x8rOBdm8Up83uVO00aDkUwqmgAvrHa+ganayShVO
	AkahYBeu01tNfIk10j7tVkh8HOWBHOh4Z39Y9cpoSvNKgeDnyvjNWuvX58Ordl6rsUyjKdndoh/
	LupACHBzQ5KnHSmhr1kfSw4YWduEJ9KKmx/DjmIOHaTdiCPcbvJy0OrxttF404s7wQEuMUulUpM
	hgCWmGf/sbR5GyLWTUUHXjo8ZQ3XH6HLDKQW67Pyb6TxknZr6WTzrjHYr9gWpeC7Dg4XwM2WpaU
	7KjoZESi4tR1uMs161D9Xi0loR
X-Received: by 2002:a05:6122:896:b0:5a0:5805:c8ba with SMTP id 71dfb90a1353d-5be1028b9f8mr172e0c.11.1783092511211;
        Fri, 03 Jul 2026 08:28:31 -0700 (PDT)
X-Received: by 2002:a05:6122:896:b0:5a0:5805:c8ba with SMTP id 71dfb90a1353d-5be1028b9f8mr167e0c.11.1783092510604;
        Fri, 03 Jul 2026 08:28:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aed13c8c3asm548295e87.82.2026.07.03.08.28.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2026 08:28:29 -0700 (PDT)
Date: Fri, 3 Jul 2026 18:28:27 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Cc: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        sashiko-reviews@lists.linux.dev,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>, robh@kernel.org,
        linux-phy@lists.infradead.org, neil.armstrong@linaro.org,
        vkoul@kernel.org, olteanv@gmail.com, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Add Shikra CQM SoM platform
Message-ID: <sfilvfwibse2vpi74vownkx32kz2dhkkvriphtti5jn2p32ffx@2q4p7nahzoxz>
References: <t2sw6owdxy5iyodjqsldbw6bfaqnezhgvc4hhylxuyrrbjkjto@iwf4dr5nmot3>
 <20260513142936.kauwa3czigfs7qs5@hu-kotarake-hyd.qualcomm.com>
 <0ac665bb-1a21-4077-aa9e-97162f7f4784@oss.qualcomm.com>
 <20260514103918.cs5m5kcxcrcgukvx@hu-kamalw-hyd.qualcomm.com>
 <obdxony34ckfbtsqj66siszw44sgieskcye5hg66ulkisctpwl@fyqczpze5tnw>
 <20260518114927.edxbzvklqatlntv2@hu-kamalw-hyd.qualcomm.com>
 <CAO9ioeVMieo8HtpRw+n4ZU9uV-_RQM061q5XfAA1Dtk2fnp4+g@mail.gmail.com>
 <bvankzuazswuigrm7hvyjqigzfaru5o43wi3zvyphgme2pgqwz@pyspqky3u6cn>
 <5idu4ljmcvcvzqsr5g73h2roxzs36l6xxc5ju6ovc5aitt3gx4@wmfqueyf2rj6>
 <20260630124220.4lja4zshpf66kwj3@hu-kotarake-hyd.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260630124220.4lja4zshpf66kwj3@hu-kotarake-hyd.qualcomm.com>
X-Proofpoint-GUID: WzTY-e1XoVDMKIcxGioq5KMaFq3XnClw
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAzMDE1MiBTYWx0ZWRfX4Cjsg75HiMvW
 SsKCKS5zt5FXHT/MGhOUDt2gBe5cMxdkzKVhSdoUQ3kRWZmuKdmuw+jaNPiR+tzFW9zMPTt140G
 Hzd++/bXbf4YQgsmsKPJW1aJCHmpK8U=
X-Authority-Analysis: v=2.4 cv=a6QAM0SF c=1 sm=1 tr=0 ts=6a47d520 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=DumtbP4wScXUqnNUUE4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAzMDE1MiBTYWx0ZWRfX5FP5oADDmos/
 04swyywjl0Hwkq+oz854d60W5+LRzLzsrxY1Km3j/Qcs2XdektwQCc/0cH6O8mofubk+iwpPZRb
 O3qeLEHwV+yOrQC2ibiso6rg6i2oe/OWyvV7hjTFfB9sLBSzVfKLQc1FVY1Pfi1SvE/aZXB/EdQ
 n6MqSBJULkdps3Vfd3BSLwEVA2mfNtWPOP7crgKEJj/FRvlh7W17DODeDZUodqZwjHklHcXdfKC
 nIhWv3nXDVPdc61KG5yEJU/M2L2LGuhlr/fdDDfm9dZd3D+XQZWtU+ouMz2pZIWFeJ8DIM4GwoP
 cXGV6nqcthtkEl1JQ0Ti4VMfuwi8mpESuyTZApzBf1CNbkDfFLlWORGqVBRuBpFkIkP2vWcw9St
 E7gWKTvSy/NCQkjutR97UxhGcVbvuIOFaC+DQCxJV4PGzESjDjmyfBA/ekmXohmXucQPTMdRfex
 R6m7ndMAn+61kFE8EsA==
X-Proofpoint-ORIG-GUID: WzTY-e1XoVDMKIcxGioq5KMaFq3XnClw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-03_02,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 bulkscore=0 impostorscore=0 phishscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607030152
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_082833_061580_DF7F9E92 
X-CRM114-Status: GOOD (  51.77  )
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

T24gVHVlLCBKdW4gMzAsIDIwMjYgYXQgMDY6MTI6MjBQTSArMDUzMCwgUmFrZXNoIEtvdGEgd3Jv
dGU6Cj4gT24gU3VuLCBKdW4gMjgsIDIwMjYgYXQgMDM6MzM6MjNQTSArMDMwMCwgRG1pdHJ5IEJh
cnlzaGtvdiB3cm90ZToKPiA+IE9uIFRodSwgSnVuIDI1LCAyMDI2IGF0IDA5OjExOjE5UE0gKzA1
MzAsIEthbWFsIFdhZGh3YSB3cm90ZToKPiA+ID4gT24gV2VkLCBKdW4gMTcsIDIwMjYgYXQgMDM6
NDg6MTRQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiA+ID4gPiBPbiBNb24sIDE4
IE1heSAyMDI2IGF0IDE0OjQ5LCBLYW1hbCBXYWRod2EKPiA+ID4gPiA8a2FtYWwud2FkaHdhQG9z
cy5xdWFsY29tbS5jb20+IHdyb3RlOgo+ID4gPiA+ID4KPiA+ID4gPiA+IE9uIFN1biwgTWF5IDE3
LCAyMDI2IGF0IDA4OjE4OjE1UE0gKzAzMDAsIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gPiA+
ID4gPiA+IE9uIFRodSwgTWF5IDE0LCAyMDI2IGF0IDA0OjA5OjE4UE0gKzA1MzAsIEthbWFsIFdh
ZGh3YSB3cm90ZToKPiA+ID4gPiA+ID4gPiBPbiBXZWQsIE1heSAxMywgMjAyNiBhdCAwNjoxNDoy
MFBNICswMzAwLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4gT24gMTMv
MDUvMjAyNiAxNzoyOSwgUmFrZXNoIEtvdGEgd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+IE9uIFdl
ZCwgTWF5IDEzLCAyMDI2IGF0IDAzOjAxOjQ3UE0gKzAzMDAsIERtaXRyeSBCYXJ5c2hrb3Ygd3Jv
dGU6Cj4gPiA+ID4gPiA+ID4gPiA+ID4gT24gV2VkLCBNYXkgMTMsIDIwMjYgYXQgMDQ6Mjg6MzVB
TSArMDAwMCwgc2FzaGlrby1ib3RAa2VybmVsLm9yZyB3cm90ZToKPiA+ID4gPiA+ID4gPiA+ID4g
PiA+IFRoYW5rIHlvdSBmb3IgeW91ciBjb250cmlidXRpb24hIFNhc2hpa28gQUkgcmV2aWV3IGZv
dW5kIDIgcG90ZW50aWFsIGlzc3VlKHMpIHRvIGNvbnNpZGVyOgo+ID4gPiA+ID4gPiA+ID4gPiA+
ID4gLSBbSGlnaF0gVGhlIFBNSUMgcmVndWxhdG9yIGRlZmluaXRpb25zIG9taXQgdGhlaXIgcmVx
dWlyZWQgaW5wdXQgc3VwcGx5IGRlcGVuZGVuY2llcyAoZS5nLiwgYHZkZF9zMi1zdXBwbHlgLCBg
dmRkX2wzLXN1cHBseWApLCBicmVha2luZyB0aGUgcG93ZXIgaGllcmFyY2h5Lgo+ID4gPiA+ID4g
PiA+ID4gPiA+ID4gLSBbTWVkaXVtXSBUaGUgZGV2aWNlIHRyZWUgaW5hY2N1cmF0ZWx5IGhhcmRj
b2RlcyB0aGUgYGNvbXBhdGlibGVgIHN0cmluZyB0byBhIGRpZmZlcmVudCBQTUlDIG1vZGVsIChg
cWNvbSxycG0tcG0yMjUwLXJlZ3VsYXRvcnNgKSBpbnN0ZWFkIG9mIGV4cGxpY2l0bHkgaWRlbnRp
ZnlpbmcgdGhlIGFjdHVhbCBoYXJkd2FyZSAoUE00MTI1KS4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+
IC0tCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gKyAg
ICAgICAgIHBtNDEyNV9zMjogczIgewo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiArICAgICAgICAg
ICAgICAgICByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwxMDAwMDAwPjsKPiA+ID4gPiA+ID4g
PiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8
MTIwMDAwMD47Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ICsgICAgICAgICB9Owo+ID4gPiA+ID4g
PiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+IERvIHRoZXNlIHJlZ3VsYXRvcnMgbmVl
ZCB0byBleHBsaWNpdGx5IGRlZmluZSB0aGVpciBpbnB1dCBzdXBwbHkgZGVwZW5kZW5jaWVzCj4g
PiA+ID4gPiA+ID4gPiA+ID4gPiBzdWNoIGFzIHZkZF9zMi1zdXBwbHk/Cj4gPiA+ID4gPiA+ID4g
PiA+ID4gPgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gV2l0aG91dCB0aGVzZSBwcm9wZXJ0aWVzLCB0
aGUgcmVndWxhdG9yIGZyYW1ld29yayBtaWdodCBiZSB1bmF3YXJlIHRoYXQgdGhlCj4gPiA+ID4g
PiA+ID4gPiA+ID4gPiBQTUlDIHJlZ3VsYXRvcnMgZHJhdyBwb3dlciBmcm9tIHVwc3RyZWFtIHN1
cHBsaWVzLgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+IElmIHRo
ZSBrZXJuZWwgZHluYW1pY2FsbHkgbWFuYWdlcyB0aGUgdXBzdHJlYW0gc3VwcGx5IGFuZCBpdHMg
cmVmZXJlbmNlIGNvdW50Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiBkcm9wcyB0byB6ZXJvLCBjb3Vs
ZCBpdCBiZSBkaXNhYmxlZCwgY2F1c2luZyBhbiB1bmV4cGVjdGVkIHBvd2VyIGxvc3MgZm9yCj4g
PiA+ID4gPiA+ID4gPiA+ID4gPiBkb3duc3RyZWFtIGNvbXBvbmVudHM/Cj4gPiA+ID4gPiA+ID4g
PiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4gPiBBbmQgdGhpcyBpcyBhIGNvcnJlY3QgY29tbWVudC4g
UGxlYXNlIHByb3ZpZGUgbWlzc2luZyBzdXBwbGllcy4KPiA+ID4gPiA+ID4gPiA+ID4gPgo+ID4g
PiA+ID4gPiA+ID4gPiBBcyBwZXIgdGhlIFF1YWxjb21tIHN5c3RlbSBkZXNpZ24sIHRoZSBwYXJl
bnQtY2hpbGQgc3VwcGx5IHJlbGF0aW9uc2hpcAo+ID4gPiA+ID4gPiA+ID4gPiBpcyBtYW5hZ2Vk
IGJ5IHRoZSBSUE0gZmlybXdhcmUsIG5vdCB0aGUgTGludXggcmVndWxhdG9yIGZyYW1ld29yay4g
VGhlCj4gPiA+ID4gPiA+ID4gPiA+IFJQTSBlbnN1cmVzIHRoZSBwYXJlbnQgc3VwcGx5IGlzIG5l
dmVyIGRpc2FibGVkIHVudGlsIGFsbCBzdWJzeXN0ZW0KPiA+ID4gPiA+ID4gPiA+ID4gdm90ZXMg
YXJlIGNsZWFyZWQuCj4gPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ID4gSG93IGlzIHRoaXMg
ZGlmZmVyZW50IGZyb20gb3RoZXIsIHByZXZpb3VzIHBsYXRmb3Jtcz8KPiA+ID4gPiA+ID4gPgo+
ID4gPiA+ID4gPiA+IFRoaXMgaXMgbm90IGRpZmZlcmVudC4gSW4gdGhlIHByZXZpb3VzIHBsYXRm
b3JtcyB0b28gdGhpcyBpcyB0YWtlbiBjYXJlIGZyb20gdGhlCj4gPiA+ID4gPiA+ID4gUlBNL1JQ
TUggZmlybXdhcmUgc2lkZSwgdGhlIG9ubHkgY2FzZSB3aGVyZSB3ZSBtYXkgbmVlZCBleHBsaWNp
dCB2b3RlIHRvIHBhcmVudAo+ID4gPiA+ID4gPiA+IGlzIGZvciBub24tcnBtaC9ycG0gcmVndWxh
dG9yIHJhaWxzIChsaWtlIGkyYyBiYXNlZCByZWd1bGF0b3IgcG04MDA4KSwgd2hpY2gKPiA+ID4g
PiA+ID4gPiBtYXkgaGF2ZSBhIFJQTS9SUE1IIHJlZ3VsYXRvciBhcyBhIHBhcmVudC4KPiA+ID4g
PiA+ID4gPgo+ID4gPiA+ID4gPiA+IEV2ZW4gb24gdGhvc2UgcHJldmlvdXMgdGFyZ2V0cyB0aGUg
cGFyZW50IHJhaWwgb2YgYWxsIFJQTS9SUE1IIHJlZ3VsYXRvcnMgYXJlCj4gPiA+ID4gPiA+ID4g
aW50ZXJuYWxseSB2b3RlZCBieSBSUE0vUlBNSCBGVyBhdCBwcm9wZXIgdm9sdGFnZSB3aXRoIHJl
cXVpcmVkIGhlYWRyb29tCj4gPiA+ID4gPiA+ID4gY2FsY3VsYXRlZCBiYXNlZCBvbiB0aGUgYWN0
aXZlIGNoaWxkIHJhaWxzLiBUaGlzIHdhcyBkb25lIGZvciBhbGwgdGhlCj4gPiA+ID4gPiA+ID4g
c3Vic3lzdGVtcyAoaW5jbHVkaW5nIEFQUFMpIHJlZ3VsYXRvcnMuCj4gPiA+ID4gPiA+ID4KPiA+
ID4gPiA+ID4gPiBTbyBubyBleHBsaWNpdCBoYW5kbGluZyBmcm9tIHRoZSBBUFBTIGlzIHJlcXVp
cmVkIGZvciBwYXJlbnQgc3VwcGx5Lgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBZb3UgYXJlIGV4
cGxhaW5pbmcgdGhlIGRyaXZlciBiZWhhdmlvdXIuIEJ1dCB0aGUgcXVlc3Rpb24gaXMgYWJvdXQg
dGhlCj4gPiA+ID4gPiA+IGhhcmR3YXJlIGRlc2NyaXB0aW9uLiBJZiB0aGVyZSBpcyBubyBkaWZm
ZXJlbmNlLCBwbGVhc2UgYWRkIG5lY2Vzc2FyeQo+ID4gPiA+ID4gPiBzdXBwbGllcyBiYWNrLgo+
ID4gPiA+ID4KPiA+ID4gPiA+IEkgdW5kZXJzdGFuZCB5b3VyIGNvbmNlcm4gYWJvdXQgZGVzY2li
aW5nIHRoZSBwYXJlbnQtY2hpbGQgcmVsYXRpb24gaW4gdGhlCj4gPiA+ID4gPiBkZXZpY2V0cmVl
LCBhbmQgZ2l2ZW4gdGhhdCB3ZSBoYXZlIGJlZW4gYWxtb3N0IGFsd2F5cyBmb2xsb3dlZCB0aGlz
IGZvciBhbGwKPiA+ID4gPiA+IHRoZSBwcmV2aW91cyB0YXJnZXRzLCBpdCB3aWxsIGV4cGVjdGVk
IG9mIHVzIHRvIGFkZCB0aGVtLgo+ID4gPiA+IAo+ID4gPiA+IFllcy4KPiA+ID4gPiAKPiA+ID4g
PiA+Cj4gPiA+ID4gPiBIb3dldmVyLCB3ZSB3YW50IHRvIGF2b2lkIHRoZSB1bm5lY2Vzc2FyeSBh
Y2Nlc3MgdG8gdGhlIHBhcmVudCBmcm9tIEFQUFMuCj4gPiA+ID4gCj4gPiA+ID4gV2h5PyBXaGF0
IGlzIHRoZSByZWFzb24/IERvIHdlIHdhbnQgdG8gZG8gdGhlIHNhbWUgZm9yIGFsbCB0aGUKPiA+
ID4gPiBwbGF0Zm9ybXM/IE9ubHkgZm9yIFNoaWtyYT8gU29tZXRoaW5nIGVsc2U/Cj4gPiA+ID4g
Cj4gPiA+ID4gPiBBdCB0aGUgbW9tZW50LCBJIGRvIG5vdCBzZWUgYSB3YXkgdG8gYXZvaWQgdGhh
dCwgaWYgd2UgYWRkIHRoZSBwYXJlbnQKPiA+ID4gPiA+IHJlZ3VsYXRvcnMuCj4gPiA+ID4gCj4g
PiA+ID4gVGhhdCBkZXBlbmQgb24gdGhlIGFuc3dlciB0byB0aGUgcHJldmlvdXMgcXVlc3Rpb24u
IEluIHRoZSBlbmQsIHdlIGNhbgo+ID4gPiA+IG1ha2UgdGhlIGRyaXZlciBpZ25vcmUgdGhlIHBh
cmVudHMgYnkgcmVtb3ZpbmcgdGhlbSBmcm9tIHRoZSByZWd1bGF0b3IKPiA+ID4gPiBkZXNjLgo+
ID4gPiAKPiA+ID4gT2ssIHRoaXMgc2VlbXMgbGlrZSBhIGdvb2Qgc3VnZ2VzdGlvbiwgc28geW91
IG1lYW4gaXRzIG9rIGlmIHdlIGRlZmluZSB0aGUKPiA+ID4gcmVndWxhdG9yIGRlc2MncyBzdXBw
bHkgY29sdW1uIHdpdGggTlVMTD8gQW5kIG9ubHkga2VlcCB0aGF0IGluIHRoZSBEVD8KPiA+ID4g
Cj4gPiA+IHlvdSBtZWFuIGxpa2UgdGhpcz8KPiA+ID4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9w
dWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvZHJpdmVycy9y
ZWd1bGF0b3IvcWNvbS1ycG1oLXJlZ3VsYXRvci5jP2g9djcuMSNuMTQ1Mwo+ID4gPiAKPiA+ID4g
KHBsZWFzZSBsZXQgbWUga25vdyBpZiBpIGdvdCB0aGF0IHJpZ2h0LiB0aGFua3MpCj4gPiAKPiA+
IFllcy4gRG9uJ3QgZm9yZ2V0IHRvIGV4cGxhaW4gaW4gdGhlIGNvbW1pdCBtZXNzYWdlLCB3aHkg
eW91IGFyZSBkb2luZwo+ID4gc28uCj4gCj4gQ3VycmVudGx5LCBBZ2F0dGkgdXNlcyB0aGUgc2Ft
ZSBQTUlDLCBzbyB3ZSBjYW5ub3Qgc2V0IHRoZSBkcml2ZXIKPiBzdXBwbHkgbmFtZSByZWZlcmVu
Y2UgdG8gTlVMTC4gU2luY2UgaXQncyBhbiBvbGRlciB0YXJnZXQsCj4gd2UnbGwgbmVlZCB0byBy
dW4gYSByZWdyZXNzaW9uIGJlZm9yZSBtYWtpbmcgYW55IGRyaXZlci1sZXZlbCBjaGFuZ2VzLgoK
U3VyZSwganVzdCBkbyBpdCBwbGVhc2UuCgo+IEFkZGl0aW9uYWxseSwgdGhlIGNoaWxkLXRvLXBh
cmVudCByZWd1bGF0b3IgZ2FuZ2luZyBkaWZmZXJzIGJldHdlZW4KPiBTaGlrcmEgYW5kIEFnYXR0
aToKPiAKPiAgLSBPbiBBZ2F0dGksIGwzIHJlZ3VsYXRvciBpcyBnYW5nZWQgd2l0aCB2ZGRfbDEz
X2wxNF9sMTVfbDE2Cj4gIC0gT24gU2hpa3JhLCBsMyBpcyBnYW5nZWQgd2l0aCB2ZGRfbDJfbDMK
CldlbGwsIHNvbWVib2R5IHRyaWVkIHRvIGJlIHRvbyBzbWFydCB3aGVuIGNvbnRyaWJ1dGluZyBB
Z2F0dGkuIE5vdyB0aGF0Cm5lZWRzIHRvIGJlIGZpeGVkLiBCZSBzdXJlIHRvIGtlZXAgYmFja3dh
cmRzIGNvbXBhdGliaWxpdHkgd2l0aCB0aGUKZXhpc3RpbmcgRFRzLgoKRnJvbSB0aGUgc2NoZW1h
dGljcyB0aGF0IEkgc2VlLCB0aGUgcGlucyBhcmU6CgotIHZpbl9sMQotIHZpbl9sMl9sMwotIHZp
bl9sNV9sNl9sN19sMTFfbDEyCi0gdmluX2w4X2w5Ci0gdmluX2wxMAotIHZpbl9sMTNfbDE0Ci0g
dmluX2wxNV9sMTYKLSB2aW5fbDE3X2wyMgotIHZpbl9sMThfbDE5Ci0gdmluX2w0X2wyMF9sMjEK
LSB2aW5feG9fcmYKClBsZWFzZSBjb3JyZWN0IHRoZSBiaW5kaW5ncyBhbmQgYWRqdXN0IHRoZSBk
cml2ZXIuCgo+IFNpbmNlIHZkZF9sMl9sMyBpcyBub3QgcHJlc2VudCBhcyBhIHN1cHBseSBuYW1l
IGluIHRoZSBkcml2ZXIsIGl0IHdpbGwKPiBiZSBza2lwcGVkIGJ5IHRoZSBkcml2ZXIgYW5kIHdv
dWxkIG9ubHkgc2VydmUgYXMgYSByZXByZXNlbnRhdGlvbmFsCj4gcmVmZXJlbmNlIGluIHRoZSBE
VC4KPiAKPiBXZSBoYXZlIHR3byBvcHRpb25zIHRvIGNvbnNpZGVyOgo+IAo+IE9wdGlvbiAxOiBT
a2lwIGFkZGluZyB0aGUgY2hpbGQvcGFyZW50IHJlbGF0aW9uc2hpcCBmb3IgU2hpa3JhIGZvciBu
b3csCj4gc2luY2UgdGhlIERUIGJpbmRpbmdzIGFyZSBub3QgZW5mb3JjaW5nIGl0LiAoUmVmOgo+
IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRz
L2xpbnV4LmdpdC90cmVlL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZWd1bGF0
b3IvcWNvbSxzbWQtcnBtLXJlZ3VsYXRvci55YW1sP2g9djcuMSkKPiAKPiBPcHRpb24gMjogR28g
YWhlYWQgYW5kIGFkZCB0aGUgU2hpa3JhLXNwZWNpZmljIGdhbmdpbmcgaW4gRFQgbm93LiBTaW5j
ZQo+IHRoZSBzdXBwbHkgbmFtZSAodmRkX2wyX2wzKSBkb2VzIG5vdCBtYXRjaCB3aGF0IHRoZSBk
cml2ZXIgZXhwZWN0cwo+IChBZ2F0dGkncyBtYXBwaW5nKSwgaXQgd2lsbCBiZSBncmFjZWZ1bGx5
IHNraXBwZWQgYnkgdGhlIGRyaXZlciDigJQgbWFraW5nCj4gaXQgc2FmZSB0byBhZGQgZm9yIGRv
Y3VtZW50YXRpb24vcmVwcmVzZW50YXRpb24gcHVycG9zZXMgd2l0aG91dCBhbnkKPiBmdW5jdGlv
bmFsIGltcGFjdC4KPiAKPiBTbyxQbGVhc2Ugc2hhcmUgeW91ciB0aG91Z2h0cyBvbiBhYm92ZSBv
cHRpb25zID8KCk9wdGlvbiAzLiBUaGUgUE1JQyBpcyBub3QgU2hpa3JhLXNwZWNpZmljLiBZb3Un
dmUgc3BvdHRlZCBhbiBlcnJvci4KQ29ycmVjdCB0aGUgd2F5IGl0IGlzIGRlc2NyaWJlZCBhbiB1
c2VkIHdoaWxlIGFkZGluZyBzdXBwb3J0IGZvciBTaGlrcmEuCgoKLS0gCldpdGggYmVzdCB3aXNo
ZXMKRG1pdHJ5CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
