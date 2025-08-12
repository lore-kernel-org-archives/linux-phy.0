Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B27CC87FCB
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 16:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fhEsGvqA/CqoUuiyEhC+DYZP3UMLz3pffhrUMdKCJo0=; b=o2aGd6NuD+0Ke0
	9SmOu41TdGe70pvZV7zt0Zhi0IbTuHD760OjGmySgULDl84UxhZIA0jAwdEhs9fNjCkfsfCeu9XlN
	eKeD7azVK7pOhl62jYCDTAdNSXPd6ZYRldFGQXoxecBWiedXAr2W073cptJuJb48WVFoli+aIBOpf
	/uqC+DF4ncUWnc9j1uReG8V78IThxmFsn6V3Pwwrh5UKqhSyinAineHl9VrccwVuXVu7RDYV390aV
	/Hhs2QgWv70dW98Hz92DXdldUS/sTGbyLAg6ZLbIpiMRFE8zkE+IRQy96JBpIWCtQ3+7rOkZ3HHHV
	Oa65w2gI/ub1kWPO5mIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulrjI-0000000BJNn-204l;
	Tue, 12 Aug 2025 16:20:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulmc2-0000000AXbx-0RzB
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 10:52:15 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57C5XIRh021319
	for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 10:52:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vrdvUYMsLFxF4FLJgur6KfN0+EY7My8qqgb8/nvdTZw=; b=paES9/v9Axp0Fr/x
	zuwKhKq3pHhID3usJyNQPSTEC+WRcV8MSPEOu66bbL5Akz6I5cuH1W6KexdeVh8i
	uVzAX4k2pU6Cejx60ZGURljlynPQV/+3WbecmbiidlEd8GbATgek3mqUQfaewrDJ
	4qs4SSVuMtc1WyoJSMtE08sHr1+FMkLhTKaqNW57oUIo5K/Ayjm+4iKieBQcwVre
	VFekmWyceUGnt0S+h0UtjA6IyWCjiaiaPK790rLjhaBAgo/3Jgsr9/VsmWL65Suk
	TrXlsI0GBP3J+BpMs9KS1Db/nzhmdPga+rXSX52vlEeWzg4cmK/jQrLNBmbNzAwu
	IatRLw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48fm3vjpn7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 10:52:12 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7073f12d546so154955826d6.1
        for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 03:52:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754995931; x=1755600731;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vrdvUYMsLFxF4FLJgur6KfN0+EY7My8qqgb8/nvdTZw=;
        b=RhJa0Kolf/bCC8Alzb+dIfUcLQ/LBcpsoha5JFVD1n3PZne4KLSsoG9Frc28HYrbrZ
         MrMs3eweUSwPh8nZdhxE0AjpEChEJkRwks8s98FCQ4sLwuwB53V953s9sBJy4dcAe9ym
         YDZDedq14msAgdp/El4v0fWyMD97FReekbRocULqgX++XTkzzhAilUUfrzyatBFOqrwQ
         Op7tuuRSfdJUUmCFtpQdetwCwc3tZEdJXb2d9SiPcKKVhQQSnG4iHPiyuU4mnkfcChGL
         zFMxPXrBkrqbWsHXw3G2bE7PQo7feyrd/Jgukt5gurFQSqZPGlvPbyZX5DAunE422mog
         FK/g==
X-Forwarded-Encrypted: i=1; AJvYcCUat4XKvG1dX7UKf4QKpZB/kwF5n2/bPjHImne12BAugpu48xniknKE9fomEQMoA4gd6ATnSsmYr1k=@lists.infradead.org
X-Gm-Message-State: AOJu0YzbP6Ha2OGNwaP/X3m9se9Jwobs5E3ehU1aAYje6Dmj09J0ZkxN
	TsnctsQ9e8Hys/jioclg+5c7GDhomgztGzMuVh/dUmgvMvdBYL+qG28xQsHRlpnHVOUwY+05QYd
	V3uJWM84+lg82/rg/WDh9kURaK38OFGU9sNPYIATC10dJyHAbvzyqKxD8lBh3WdiAyASE
X-Gm-Gg: ASbGncs32pQn1I/Fa+YpzZDsTyS2BQ+cIt+IKI1uCUBo+8o/59YZ+JLOTvJ2gIms2pN
	biIHKnLPbrzFHNEo27QWaf3OiS/vWh8EJs85Y+Wn/iYvEoOLrYkxx8GE+8NCKtzqU4SiYt6dHkW
	y7syK4uudhsE2GSxQfYPXfniI4EyB9iS1qf10ahHU49pepO1F0uKzZjMe0ICKfDHh8eVz1eDBVn
	jU32NBu8Ho4kUF76o71TQYjmIWohYlSSTLVU5qfPEOmKzA5KHdvVvDtC5DF/8uFZWsucoM7H6g9
	RVrFzdeM0htp6FZpa2G5XJLmwNGLGqpKkHpYtneZOM1ajcqb+S3tDw3oRRzm7AUC1Duvt4YNFX1
	vMXvdct/4L7yTmqtoi0EtsNhdCMVVS8kcdgn9Sfke4pbuvHVMN+NR
X-Received: by 2002:ad4:5bac:0:b0:6fa:c408:5a3b with SMTP id 6a1803df08f44-709d5c6f1b7mr40015266d6.9.1754995931465;
        Tue, 12 Aug 2025 03:52:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/dJcvVsnI5zs8AmyFySKz8aEKAGU74Spts/yY1T3s2IF+LNgVa3AfWWzCvKg31q62eogSGA==
X-Received: by 2002:ad4:5bac:0:b0:6fa:c408:5a3b with SMTP id 6a1803df08f44-709d5c6f1b7mr40014856d6.9.1754995930903;
        Tue, 12 Aug 2025 03:52:10 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-33238272944sm42016811fa.13.2025.08.12.03.52.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 03:52:10 -0700 (PDT)
Date: Tue, 12 Aug 2025 13:52:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, vkoul@kernel.org,
        kishon@kernel.org, conor+dt@kernel.org, bvanassche@acm.org,
        andersson@kernel.org, neil.armstrong@linaro.org,
        konradybcio@kernel.org, krzk+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH V1 2/4] arm64: dts: qcom: sm8750: add max-microamp for
 UFS PHY and PLL supplies
Message-ID: <ljythvl2yfilcnmgdwt2cyyefxmgl54osll5e76qn7njadhgqq@rwrl3dy6ykt3>
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-3-quic_nitirawa@quicinc.com>
 <20250808-calm-boa-of-swiftness-a4a7ce@kuoka>
 <9af71063-0629-4ccc-bc76-3fb588677bf4@oss.qualcomm.com>
 <292907f3-25d6-40d9-be6e-b6b83e646d73@kernel.org>
 <5e32be05-0dbd-4d6f-879d-8ce97fb430ba@quicinc.com>
 <rh3qxu2rijpjswfash3rpmmh6sw47l3b6j5p5upti6zffknasz@cywwm3fypghd>
 <89ab7e51-f82e-465a-aa22-1ccb8e7a0f6d@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <89ab7e51-f82e-465a-aa22-1ccb8e7a0f6d@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDEwNyBTYWx0ZWRfX7mfLyi4Jvc1t
 vpYEah7BjaRJrzCRP8/6w9/hh6L8r0OfWRuSk1ZiIcSziJNHKjVTI+gBMV9n3i741GQOGGebF46
 0KD6zeTuqMF5Tmh3oqPm+IMyHtM64xrwLWq1sYNWJO/9ghe5QSXAF6ebZlqDCNixKYxhHwaC9/t
 rk9XBkbje8NttjyejIz2XBVsBzywOIlPPgsRxR/xHiKxjs3BvbUiHNacSFk8IdOWj7s5QoFlM0I
 XJ3aQaje2tbVZNbNjU04VDmi77SDAqk6VURtAEn+wZff7s59CUxkou+dn0iSdRsJ8rrc3CviIg5
 fGZa8iMVPsdl7BfTzjtq0GQkP0iKkecDt0wKC4rmkVdwj03lwkET9lEuaQamYF9lGHHRndFWLHv
 HjYoLvep
X-Proofpoint-GUID: fexaLLwlF8wOT_BB00qzj9xrZ92rtnTZ
X-Authority-Analysis: v=2.4 cv=A+1sP7WG c=1 sm=1 tr=0 ts=689b1cdc cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=7T__WHWB9XTw_rtxigEA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: fexaLLwlF8wOT_BB00qzj9xrZ92rtnTZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_05,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 phishscore=0 clxscore=1015 adultscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508110107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_035214_299644_691C1413 
X-CRM114-Status: GOOD (  48.39  )
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

T24gVHVlLCBBdWcgMTIsIDIwMjUgYXQgMDE6MjU6MDJBTSArMDUzMCwgTml0aW4gUmF3YXQgd3Jv
dGU6Cj4gCj4gCj4gT24gOC85LzIwMjUgNDozNyBQTSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdy
b3RlOgo+ID4gT24gRnJpLCBBdWcgMDgsIDIwMjUgYXQgMDg6NDk6NDVQTSBHTVQsIE5pdGluIFJh
d2F0IHdyb3RlOgo+ID4gPiAKPiA+ID4gCj4gPiA+IE9uIDgvOC8yMDI1IDM6MDkgUE0sIEtyenlz
enRvZiBLb3psb3dza2kgd3JvdGU6Cj4gPiA+ID4gT24gMDgvMDgvMjAyNSAxMDo1OCwgS29ucmFk
IER5YmNpbyB3cm90ZToKPiA+ID4gPiA+IE9uIDgvOC8yNSA5OjI5IEFNLCBLcnp5c3p0b2YgS296
bG93c2tpIHdyb3RlOgo+ID4gPiA+ID4gPiBPbiBXZWQsIEF1ZyAwNiwgMjAyNSBhdCAwOToxMzoz
OFBNICswNTMwLCBOaXRpbiBSYXdhdCB3cm90ZToKPiA+ID4gPiA+ID4gPiBBZGQgYHZkZGEtcGh5
LW1heC1taWNyb2FtcGAgYW5kIGB2ZGRhLXBsbC1tYXgtbWljcm9hbXBgIHByb3BlcnRpZXMgdG8K
PiA+ID4gPiA+ID4gPiB0aGUgVUZTIFBIWSBub2RlIGluIHRoZSBkZXZpY2UgdHJlZS4KPiA+ID4g
PiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBUaGVzZSBwcm9wZXJ0aWVzIGRlZmluZSB0aGUgbWF4aW11
bSBjdXJyZW50IChpbiBtaWNyb2FtcHMpIGV4cGVjdGVkCj4gPiA+ID4gPiA+ID4gZnJvbSB0aGUg
UEhZIGFuZCBQTEwgcmVndWxhdG9ycy4gVGhpcyBhbGxvd3MgdGhlIFBIWSBkcml2ZXIgdG8KPiA+
ID4gPiA+ID4gPiBjb25maWd1cmUgcmVndWxhdG9yIGxvYWQgYWNjdXJhdGVseSBhbmQgZW5zdXJl
IHByb3BlciByZWd1bGF0b3IKPiA+ID4gPiA+ID4gPiBtb2RlIGJhc2VkIG9uIGxvYWQgcmVxdWly
ZW1lbnRzLgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gVGhhdCdzIG5vdCB0aGUgcHJvcGVydHkg
b2YgcGh5LCBidXQgcmVndWxhdG9yLgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gQWxzbyByZWFz
b25pbmcgaXMgaGVyZSBpbmNvbXBsZXRlIC0geW91IGp1c3QgcG9zdCBkb3duc3RyZWFtIGNvZGUu
IDovCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFRoZSByZWFzb24gZm9yIHRoaXMgY2hhbmdlIGlzIGdv
b2QsIGJ1dCBwZXJoYXBzIG5vdCBleHBsYWluZWQgY2xlYXJseQo+ID4gPiA+ID4gCj4gPiA+ID4g
PiBBbGwgb2YgdGhlc2UgdmFsdWVzIHJlZmVyIHRvIHRoZSBtYXhpbXVtIGN1cnJlbnQgZHJhdyB0
aGF0IG5lZWRzIHRvIGJlCj4gPiA+ID4gPiBhbGxvY2F0ZWQgb24gYSBzaGFyZWQgdm9sdGFnZSBz
dXBwbHkgZm9yIHRoaXMgcGVyaXBoZXJhbCAoYmVjYXVzZSB0aGUKPiA+ID4gPiAKPiA+ID4gPiAK
PiA+ID4gPiBJdCBzb3VuZHMgdmVyeSBkaWZmZXJlbnQgdGhhbiBob3cgbXVjaCBpdCBjYW4gYmUg
ZHJhd24uIEhvdyBtdWNoIGNhbiBiZQo+ID4gPiA+IGRyYXduIGlzIHRoZSBwcm9wZXJ0eSBvZiB0
aGUgcmVndWxhdG9yLiBUaGUgcmVndWxhdG9yIGtub3dzIGhvdyBtdWNoCj4gPiA+ID4gY3VycmVu
dCBpdCBjYW4gc3VwcG9ydC4KPiA+ID4gCj4gPiA+IENvbnN1bWVycyBhcmUgYXdhcmUgb2YgdGhl
aXIgZHluYW1pYyBsb2FkIHJlcXVpcmVtZW50cywgd2hpY2ggY2FuIHZhcnkgYXQKPiA+ID4gcnVu
dGltZeKAlHRoaXMgYXdhcmVuZXNzIGlzIG5vdCByZWNpcHJvY2FsLiBUaGUgcG93ZXIgZ3JpZCBp
cyBkZXNpZ25lZCBiYXNlZAo+ID4gPiBvbiB0aGUgY29sbGVjdGl2ZSBsb2FkIHJlcXVpcmVtZW50
cyBvZiBhbGwgY2xpZW50cyBzaGFyaW5nIHRoZSBzYW1lIHBvd2VyCj4gPiA+IHJhaWwuCj4gPiA+
IAo+ID4gPiBTaW5jZSByZWd1bGF0b3JzIGNhbiBvcGVyYXRlIGluIG11bHRpcGxlIG1vZGVzIGZv
ciBwb3dlciBvcHRpbWl6YXRpb24sIGVhY2gKPiA+ID4gY29uc3VtZXIgaXMgZXhwZWN0ZWQgdG8g
dm90ZSBmb3IgaXRzIHJ1bnRpbWUgcG93ZXIgbmVlZHMuIFRoZXNlIHZvdGVzIGhlbHAKPiA+ID4g
dGhlIHJlZ3VsYXRvciBmcmFtZXdvcmsgbWFpbnRhaW4gdGhlIHJlZ3VsYXRvciBpbiB0aGUgYXBw
cm9wcmlhdGUgbW9kZSwKPiA+ID4gZW5zdXJpbmcgc3RhYmxlIGFuZCBlZmZpY2llbnQgb3BlcmF0
aW9uIGFjcm9zcyBhbGwgY2xpZW50cy4KPiA+ID4gCj4gPiA+IAo+ID4gPiBTdGFiaWxpdHkgaXNz
dWVzIGNhbiBhcmlzZSBpZiBlYWNoIGNvbnN1bWVyIGRvZXMgbm90IHZvdGUgZm9yIGl0cyBvd24g
bG9hZAo+ID4gPiByZXF1aXJlbWVudC4KPiA+ID4gRm9yIGV4YW1wbGUsIGNvbnNpZGVyIGEgc2Nl
bmFyaW8gd2hlcmUgYSBzaW5nbGUgcmVndWxhdG9yIGlzIHNoYXJlZCBieSB0d28KPiA+ID4gY29u
c3VtZXJzLgo+ID4gPiAKPiA+ID4gSWYgdGhlIGZpcnN0IGNsaWVudCByZXF1ZXN0cyBsb3ctcG93
ZXIgbW9kZSBieSB2b3RpbmcgZm9yIHplcm8gb3IgYSBtaW5pbWFsCj4gPiA+IGxvYWQgdG8gcmVn
dWxhdG9yIGZyYW1ld29yayBkdXJpbmcgaXRzIGRyaXZlcidzIExQTSBzZXF1ZW5jZSwgYW5kIHRo
ZSBzZWNvbmQKPiA+ID4gY2xpZW50IChlLmcuLCBVRlMgUEhZKSBoYXMgbm90IHZvdGVkIGZvciBp
dHMgb3duIGxvYWQgcmVxdWlyZW1lbnQgdGhyb3VnaAo+ID4gPiB0aGUgcmVndWxhdG9yIGZyYW1l
d29yaywgdGhlIHJlZ3VsYXRvciBtYXkgdHJhbnNpdGlvbiB0byBsb3ctcG93ZXIgbW9kZS4KPiA+
ID4gVGhpcyBjYW4gbGVhZCB0byBpc3N1ZXMgZm9yIHRoZSBzZWNvbmQgY2xpZW50LCB3aGljaCBl
eHBlY3RzIGEgaGlnaGVyIHBvd2VyCj4gPiA+IHN0YXRlIHRvIG9wZXJhdGUgY29ycmVjdGx5Lgo+
ID4gPiAKPiA+IAo+ID4gSSB0aGluayB3ZSBhbGwgYWdyZWUgb24gY29uc3VtZXJzIHNldHRpbmcg
dGhlIGxvYWQgZm9yIHNoYXJlZCByZWd1bGF0b3JzLCBidXQKPiA+IHRoZSBuYW1pbmcgYW5kIGRl
c2NyaXB0aW9uIG9mIHRoZSBEVCBwcm9wZXJ0eSBpcyB3aGF0IGNhdXNpbmcgY29uZnVzaW9uIGhl
cmUuCj4gPiBUaGVyZSBpcyBubyB3YXkgdGhlIGNvbnN1bWVycyBjYW4gc2V0IHRoZSAqbWF4KiBj
dXJyZW50IGRyYXcgZm9yIGEgc2hhcmVkCj4gPiByZWd1bGF0b3IuIFRoZXkgY2FuIG9ubHkgcmVx
dWVzdCBsb2FkIGFzIHBlciB0aGVpciByZXF1aXJlbWVudC4gQnV0IHRoZSBtYXgKPiA+IGN1cnJl
bnQgZHJhdyBpcyBhIHJlZ3VsYXRvciBjb25zdHJhaW50Lgo+IAo+IFRvIGF2b2lkIGNvbmZ1c2lv
biB3aXRoIHJlZ3VsYXRvci1sZXZlbCBjb25zdHJhaW50cywgSSdtIG9wZW4gdG8gcmVuYW1pbmcK
PiB0aGUgcHJvcGVydHkgdmRkYS1waHktbWF4LW1pY3JvYW1wIHRvIHNvbWV0aGluZyBtb3JlIGRl
c2NyaXB0aXZlLCBzdWNoIGFzCj4gdmRkYS1waHktY2xpZW50LXBlYWstbG9hZC1taWNyb2FtcCBv
ciB2ZGRhLXBoeS1wZWFrLWxvYWQtbWljcm9hbXAuIEFsb25nCj4gd2l0aCB1cGRhdGluZyB0aGUg
ZGVzY3JpcHRpb24sIHRoaXMgd291bGQgYmV0dGVyIHJlZmxlY3QgdGhlIHByb3BlcnR5J3MKPiBh
Y3R1YWwgaW50ZW50OiB0byBzcGVjaWZ5IHRoZSBtYXhpbXVtIGN1cnJlbnQgYSBjbGllbnQgbWF5
IGRyYXcgZHVyaW5nIHBlYWsKPiBvcGVyYXRpb24sIHJhdGhlciB0aGFuIGltcGx5aW5nIGl0IGRl
ZmluZXMgdGhlIHJlZ3VsYXRvcuKAmXMgbWF4aW11bQo+IGNhcGFiaWxpdHkuCgpNb3ZlIHRoZW0g
aW50byB0aGUgZHJpdmVyIHBsZWFzZS4KCj4gCj4gCj4gSGF2aW5nIHNhaWQgdGhhdCwgSSBoYWQg
YSBmb2xsb3ctdXAgZGlzY3Vzc2lvbiB3aXRoIHRoZSBQSFkgZGVzaWduZXIgdG8KPiBjb25maXJt
IHdoZXRoZXIgdGhpcyB2YWx1ZSBjb3VsZCB2YXJ5IGF0IHRoZSBib2FyZCBsZXZlbC4gQmFzZWQg
b24gdGhlaXIKPiByZXNwb25zZSwgaXQncyBhIGZpeGVkIHZhbHVlIGZvciB0aGUgU29DIGFuZCBk
b2VzIG5vdCBjaGFuZ2UgYWNyb3NzCj4gZGlmZmVyZW50IGJvYXJkcyhhdGxlYXN0IGZvciBub3cp
LiBUaGVyZWZvcmUsIEkgY2FuIHJlbW92ZSBmcm9tIGRldmljZSB0cmVlCj4gYW5kIHJlcGxhY2Vk
IHdpdGggaGFyZGNvZGVkLCBwZXItY29tcGF0aWJsZSBkYXRhIGluIHRoZSBkcml2ZXIuCj4gCj4g
PiAKPiA+ID4gCj4gPiA+ID4gCj4gPiA+ID4gCj4gPiA+ID4gPiBzdXBwbHkncyBjYXBhYmlsaXRp
ZXMgY2hhbmdlIGRlcGVuZGluZyBvbiB0aGUgbWF4aW11bSBwb3RlbnRpYWwgbG9hZAo+ID4gPiA+
ID4gYXQgYW55IGdpdmVuIHRpbWUsIHdoaWNoIHRoZSByZWd1bGF0b3IgZHJpdmVyIG11c3QgYmUg
YXdhcmUgb2YpCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFRoaXMgaXMgYSBwcm9wZXJ0eSBvZiBhIHJl
Z3VsYXRvciAqY29uc3VtZXIqLCBpLmUuIGlmIHdlIGhhZCBhIGNoYWluCj4gPiA+ID4gPiBvZiBM
RURzIGhhbmdpbmcgb2ZmIG9mIHRoaXMgc3VwcGx5LCB3ZSdkIG5lZWQgdG8gc3BlY2lmeSBOVU1f
TEVEUyAqCj4gPiA+ID4gPiBNQVhfQ1VSUiB1bmRlciB0aGUgImxlZCBjaGFpbiIgZGV2aWNlLCB0
byBtYWtlIHN1cmUgdGhhdCBpZiB0aGUKPiA+ID4gPiA+IGFnZ3JlZ2F0ZWQgY3VycmVudCByZXF1
aXJlbWVudHMgZ28gb3ZlciBhIGNlcnRhaW4gdGhyZXNob2xkICh3aGljaCBpcwo+ID4gPiA+ID4g
dW5rbm93biB0byBMaW51eCBhbmQgaGlkZGVuIGluIFJQTWggZncpLCB0aGUgcmVndWxhdG9yIGNh
biBiZQo+ID4gPiA+ID4gcmVjb25maWd1cmVkIHRvIGFsbG93IGZvciBhIGhpZ2hlciBjdXJyZW50
IGRyYXcgKGxpa2VseSBhdCBzb21lCj4gPiA+ID4gPiBkb3duZ3JhZGUgdG8gZWZmaWNpZW5jeSkK
PiA+ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBUaGUgcHJvYmxlbSBpcyB0aGF0IHJhdGlvbmFsZSBp
cyBkb3duc3RyZWFtLiBJbnN0ZWFkIEkgd2FudCB0byBzZWUgc29tZQo+ID4gPiA+IHJlYXNvbjog
ZS5nLiBkYXRhc2hlZXRzLCBzcGVjLCB0eXBlIG9mIFVGUyBkZXZpY2UgKHRoYXQgd2FzIHRoZSBh
cmd1bWVudAo+ID4gPiA+IGluIHRoZSBkcml2ZXIgcGF0Y2ggZGlzY3Vzc2lvbikuCj4gPiA+IAo+
ID4gPiAKPiA+ID4gVGhlIFBIWSBsb2FkIHJlcXVpcmVtZW50cyBmb3IgY29uc3VtZXJzIHN1Y2gg
YXMgVUZTLCBVU0IsIFBDSWUgYXJlIGRlZmluZWQKPiA+ID4gYnkgUXVhbGNvbW3igJlzIFBIWSBJ
UCBhbmQgYXJlIHdlbGwtZG9jdW1lbnRlZCBpbiBRdWFsY29tbeKAmXMgZGF0YXNoZWV0cyBhbmQK
PiA+ID4gcG93ZXIgZ3JpZCBkb2N1bWVudGF0aW9uLiBUaGVzZSB2YWx1ZXMgY2FuIGRlcGVuZGlu
ZyBvbiB0aGUgcHJvY2VzcyBvcgo+ID4gPiB0ZWNobm9sb2d5IG5vZGUsIGJvYXJkIGRlc2lnbiwg
YW5kIGV2ZW4gdGhlIGNoaXAgZm91bmRyeSB1c2VkLgo+ID4gPiAKPiA+ID4gQXMgYSByZXN1bHQs
IHRoZSBsb2FkIHZhbHVlcyBjYW4gZGlmZmVyIGFjcm9zcyBTb0NzIG9yIG1heSBiZSBldmVuCj4g
PiA+IGJvYXJkKHVubGlrZWx5IHRob3VnaCkgZHVlIHRvIHZhcmlhdGlvbnMgaW4gYW55IG9mIHRo
ZXNlIHBhcmFtZXRlcnMuCj4gPiA+IAo+ID4gCj4gPiBPa2F5LiBUaGlzIGdvZXMgaW50byB0aGUg
Y29tbWl0IG1lc3NhZ2UgYW5kIHBvc3NpYmx5IHNvbWUgcGFydCBvZiBpdCB0byBwcm9wZXJ0eQo+
ID4gZGVzY3JpcHRpb24gYWxzby4KPiAKPiAKPiAKPiAKPiA+IAo+ID4gLSBNYW5pCj4gPiAKPiAK
Ci0tIApXaXRoIGJlc3Qgd2lzaGVzCkRtaXRyeQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
