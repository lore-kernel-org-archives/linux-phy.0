Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B55B9CD6E49
	for <linux-phy@archiver.kernel.org>; Fri, 29 May 2026 07:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NN3xSMn8/RSdpNupNqaPhWhBFKkbQyy6KvJ9hvhLLv8=; b=xObK7JqF+zMMbt
	/eiPAO4Up4tymJrdpriV0h6XR+ZBkZa1TlNyBlmXu2vIBWS/a6SMXSknLAMeLJx9vsxXH32zrBmwy
	RSgiNa0yz2I9QqI5a11xBv1DQ44TNUWrJMq3tQ2N8DRJ55Fx77exjgLJPaRCtbIUuL2gZ3nUSWOWy
	ZakTpogn/lQOWFuNXDknvk8z/WNORhyCS36Uz+DVIfStKFneZLmpjKybZbcXMf8dFMau9L3FjJM1I
	w9d8WucNNJ/BA6lP4rwyVriDWipxejEsPVjoXGLqSvEircNBqEEkDMaKafFrXfH1GcLwXxk3bMfb/
	TDXNuckkFWnNfPg47org==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSrEV-00000006qv7-17KI;
	Fri, 29 May 2026 07:02:15 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSrES-00000006quZ-0axZ
	for linux-phy@lists.infradead.org;
	Fri, 29 May 2026 07:02:13 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64T0A1Pg1495199
	for <linux-phy@lists.infradead.org>; Fri, 29 May 2026 07:02:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PtppwkbDnLXm5C93LFDp+ogllIKnh/APOK79feKM0VM=; b=eue5Lsf943Kr+vx0
	EthGTDnomIOolQ2u5G8a8unVbV8Uzv3HgUHCESGi7u9PbxWiFUf6FLdlL2+IABYj
	ar/OkKYhH6yJvSdOEPldV4RghZf7R54g5tmWPH15NANGuU5PkHTOAKcRUlRXn7jn
	SBY5zNef8DkuDFt0E3aia7s05Ed7AGU4tueo+qQgvUVxREvAZ5kxSLzB0IpJy8pQ
	AZXQy+2VyGZDMzH16FD0CZAfLdhl4C9FXPPEZOO/glrWUajaUMX8gdn4Bhhp2Jyb
	SMXWRbQldk5Q1ean76gP1r7AFNkNRuf6tgZSAUbjjYH1+i+qSOsLbwbEKUVbKNTK
	LvPy6w==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ef0159ap1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 29 May 2026 07:02:11 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-304df51ff3eso1282660eec.0
        for <linux-phy@lists.infradead.org>; Fri, 29 May 2026 00:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780038131; x=1780642931; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PtppwkbDnLXm5C93LFDp+ogllIKnh/APOK79feKM0VM=;
        b=hetNEc8EewM1IdCCzBEuDy25gKbrhmvCBJr4HSxedjFHfo1gs0fMqlCyi/eZBcjBgA
         5lQPQ76s8CqHfXzuvNOJh6ivSGquCHXSa+OC+3RU7pXOXPtGlKQo/zDte7Elfq3eGSRr
         9JEBnYZRat2KzLgSA7nhwX893Pi3xbRMcFpBsSI24J+4CXZ6LEgBIH8PfNS03B1iIxjK
         otH72KlyEhqly6T6UPrW4mX1HtktYjoPJASRHQ14uyTQqVH2somLDz+R+OSWoZvePCQD
         gTKZf7IK7QZhMHRnUN4dsYm20ilthhhUAAcf9z/WjtLJOTzKUJno8E5EcJL9293+WZ9v
         CtdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780038131; x=1780642931;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PtppwkbDnLXm5C93LFDp+ogllIKnh/APOK79feKM0VM=;
        b=L6tYMguHocqOmMpPELMzT4CiC3e/RyRjkYdPualqdKY6GBN+C4BTbwrQqF9GCjpccF
         aRAy54SJyRhZqOY5XjhpNd7C5gfUZAwerelYBKBfs+NVz47/5Lof9/avN8+IGeRBpfvc
         ZxxgQuTnh1sqXM6FckWtDp5rMwC9xzcf3lqm15zxxR3qypwGkOJwLg337xjSuIFLkpbc
         2Me6lkFRZwu8CSoPCcPKSqo/VlxhQqf3LAQyV4uc4PHjRB7Cg5cwAzCY5v2JiYzZ2I/X
         dHY/YOUqaHVr1h61rT0xzDURboXl3dBA8tsOGiZ3c748wx+9P2rVbPI+zTKzkMTHnCx1
         s69w==
X-Forwarded-Encrypted: i=1; AFNElJ+R8AaiN1QITANBYHjOWwXaZkgFilOezgVFzjycEGw5GaCwj5r/2GQpBiQ34XgVlJqXwWiUTKTxhdE=@lists.infradead.org
X-Gm-Message-State: AOJu0YwB80NS0uRZGqPBYWJy1tqbwCUvRUM9BfGMrhHypq84DcD2Nlgk
	aiiDD/qzjr8tOF4ZBikVDYgdnew7k3imSIO7mtrBHzKm7Cmv4CE6p0D7PJg/E11uaJ30ACRGGdr
	S9VgymY0gZAe7Wsp75w7F4cc896Yi42mdkcm0kWkcwtHtFCdewM6cJk04CF3pyuhdfdfp
X-Gm-Gg: Acq92OFp+u2vyp684gPTSyDL7E7vEHgdtWONupCqlWV7Tc0X9iDxyX6JKZxrPh/0+2z
	+Tu9oa6qIx8XmBJtT7gE/C0Vgr2zvbd8Jus2aqRNYznM78xXiR9MUEPJwIoOEqRQ3WJJ/YVdgmW
	ojW0fBSwVnuWSqXLNI3I5h5LjRBnL5ycVGwGFK0gByzo1mjr5BVK5E3GhJ380BFFlrQbpeZnbIh
	WdGT0/cPVA2WeTsle+X8C7ZMmzwOklJ/6JTYTezdkqgyP31w9RWWuVjZuBf1WRzmN20y8iE3UEf
	FNLu4f2ykucgp7LhnYnc6OdwxREipsywo1M/g82Ka+yitHySpJwYb8uj0cKk8RpwDtNxgzpumrc
	RQmpnG+GqazPVKN22j+yP4pldDBWcxi2FWVWX1WtVi5SxfXM1N02eRKx1+tTPcNHfBrT66NVxJq
	W4phA=
X-Received: by 2002:a05:7300:6c28:b0:304:cefc:5fe3 with SMTP id 5a478bee46e88-304eb0d7e2fmr776895eec.18.1780038130828;
        Fri, 29 May 2026 00:02:10 -0700 (PDT)
X-Received: by 2002:a05:7300:6c28:b0:304:cefc:5fe3 with SMTP id 5a478bee46e88-304eb0d7e2fmr776872eec.18.1780038130188;
        Fri, 29 May 2026 00:02:10 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-304ed3358b1sm746216eec.13.2026.05.29.00.02.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2026 00:02:08 -0700 (PDT)
Date: Fri, 29 May 2026 00:02:06 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC v4 5/9] phy: qcom: qmp-pcie: Refactor pipe clk
 register and parse_dt helpers
Message-ID: <ahk57lEoWQtkGsJt@hu-qianyu-lv.qualcomm.com>
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
 <20260518-link_mode_0519-v4-5-269cd73cc5d1@oss.qualcomm.com>
 <ipzncrxi3x45fc6tz5xb7frxt62zmg4gwr25xmvzghlbt5miio@7eavln3cydfa>
 <fkcidw46hdsrrufxhhkk66mmitxnswmghpypyvtmax3x6vmnlp@2er6xgymxdf2>
 <ol436i3oqgdns74dliw72qns22gqfgygm6qkz7mo4g7oiywlsg@johrhdyv4rqx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ol436i3oqgdns74dliw72qns22gqfgygm6qkz7mo4g7oiywlsg@johrhdyv4rqx>
X-Proofpoint-ORIG-GUID: K2vJwyRFAGdh6aVEQVtz1HjzpQz-mZ0D
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI5MDA2NiBTYWx0ZWRfXxYJqc41Rm8nj
 5xU57Keq7brTZ3wse08Lbfd6pzali0WYtzFjJuXFuYV3nHydRYWUqYIoooBJg11OD7lCdJnaGpl
 jEBbj8uPfhEXfJT2Y6SH91up+jGAacQwWVQ6YGjiopDFbd9B/ReBXYm9taoxDXUsA4ASN0JafVZ
 /gu6tuftzrzyYA3WYo1kRCkRYsAtxnXYPRmswutKpXP3lLAcGI+sJ9WtI96818S4nsII+ENMeQG
 Kg8KIiMkrrpwJb7+uJx7BLPHxjBQ1ozvC2GK+/VqSyTBiPclnzMbQcsDqp5w2WhR+z6wc2WD0/O
 YPaxIbw86JqYLhQjlPgvPBnChGjP0V3Z2DdjfSnJ4oj8Ejw4DviAfEV0ZrVPODB8kDzVPIFErMr
 b5kRghlXj/PgBUkrsJS7n9SnIYcB4xmACimLuCjVe26uZfy4cFUY4RwdTyROnhpU91hA7plch1J
 FbqjVe9ZKGHc8jqmqYg==
X-Authority-Analysis: v=2.4 cv=DIG/JSNb c=1 sm=1 tr=0 ts=6a1939f3 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=CphI2k7nj8PUyFDNSj8A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=6Ab_bkdmUrQuMsNx7PHu:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-GUID: K2vJwyRFAGdh6aVEQVtz1HjzpQz-mZ0D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-05-29_02,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 priorityscore=1501
 spamscore=0 impostorscore=0 adultscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2605290066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_000212_186488_7A334B0F 
X-CRM114-Status: GOOD (  32.35  )
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

T24gVGh1LCBNYXkgMjgsIDIwMjYgYXQgMDQ6NDg6MjRQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBPbiBGcmksIE1heSAyMiwgMjAyNiBhdCAwNDoyNzozNVBNICswNTMwLCBNYW5p
dmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiBPbiBXZWQsIE1heSAyMCwgMjAyNiBhdCAwNzoy
NTowMVBNICswMzAwLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+ID4gPiBPbiBNb24sIE1heSAx
OCwgMjAyNiBhdCAxMDo0NzoxNlBNIC0wNzAwLCBRaWFuZyBZdSB3cm90ZToKPiA+ID4gPiBTb21l
IFFNUCBQQ0llIFBIWSBoYXJkd2FyZSBibG9ja3MgY2FuIGJlIHNwbGl0IGludG8gbXVsdGlwbGUg
c3ViLVBIWXMKPiA+ID4gPiB1bmRlciBhIHNpbmdsZSBEVCBub2RlLCBlYWNoIHJlcXVpcmluZyBp
dHMgb3duIHBpcGUgY2xvY2sgcmVnaXN0cmF0aW9uIGFuZAo+ID4gPiA+IERUIHJlc291cmNlIG1h
cHBpbmcuIFRoZSBjdXJyZW50IGhlbHBlcnMgYXJlIHRpZ2h0bHkgY291cGxlZCB0byBhIHNpbmds
ZQo+ID4gPiA+IHFtcF9wY2llIGluc3RhbmNlLCB3aGljaCBwcmV2ZW50cyByZXVzZSBhY3Jvc3Mg
c3ViLVBIWSBpbnN0YW5jZXMuCj4gPiA+ID4gCj4gPiA+ID4gUmVmYWN0b3IgX19waHlfcGlwZV9j
bGtfcmVnaXN0ZXIoKSBhcyBhIGdlbmVyaWMgaGVscGVyIGFuZCByZWR1Y2UKPiA+ID4gPiBwaHlf
cGlwZV9jbGtfcmVnaXN0ZXIoKSB0byBhIHRoaW4gd3JhcHBlciBhcm91bmQgaXQuIFNpbWlsYXJs
eSwgZXh0cmFjdAo+ID4gPiA+IHFtcF9wY2llX3BhcnNlX2R0X2NvbW1vbigpIGZyb20gcW1wX3Bj
aWVfcGFyc2VfZHQoKSB0byBob2xkIHRoZSByZWdpc3Rlci0KPiA+ID4gPiBtYXBwaW5nIGFuZCBw
aXBlLWNsb2NrIHNldHVwIHRoYXQgd2lsbCBiZSBzaGFyZWQgYmV0d2VlbiBzdWItUEhZIGluc3Rh
bmNlcywKPiA+ID4gPiB3aXRoIHBpcGUgY2xvY2sgbmFtZXMgcGFyYW1ldGVyaXNlZCBwZXIgaW5z
dGFuY2UuCj4gPiA+ID4gCj4gPiA+ID4gVGhpcyBpcyBhIHByZXBhcmF0b3J5IHN0ZXAgYmVmb3Jl
IGFkZGluZyBtdWx0aS1QSFkgc3VwcG9ydC4gTm8gZnVuY3Rpb25hbAo+ID4gPiA+IGNoYW5nZSBm
b3IgZXhpc3RpbmcgcGxhdGZvcm1zLgo+ID4gPiA+IAo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFFp
YW5nIFl1IDxxaWFuZy55dUBvc3MucXVhbGNvbW0uY29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICBk
cml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5jIHwgNzYgKysrKysrKysrKysr
KysrKysrLS0tLS0tLS0tLS0tLS0KPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDQ0IGluc2VydGlv
bnMoKyksIDMyIGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gSSdkIHN1Z2dlc3Qgc3BsaXR0aW5n
IHRoZSBHbHltdXIgUEhZIHRvIGEgc2VwYXJhdGUgZHJpdmVyLiBPdGhlcndpc2Ugd2UKPiA+ID4g
ZW5kIHVwIGhhdmluZyB0b28gbWFueSBzaW5nbGUtcGxhdGZvcm0sIHNpbmdsZS1kZXZpY2Ugc3Bl
Y2lmaWNzIHdoaWNoCj4gPiA+IGRvbid0IGFwcGx5IHRvIG90aGVyIHBsYXRmb3Jtcy4KPiA+ID4g
Cj4gPiAKPiA+IEkgZG9uJ3QgdGhpbmsgdGhhdCdzIHJlYWxseSBuZWVkZWQuIFRoaXMgc2hhcmVk
IFBIWSBjb25jZXB0IGlzIGdvaW5nIHRvIGJlCj4gPiBhcHBsaWNhYmxlIHRvIHVwY29taW5nIFNv
Q3MgYXMgd2VsbC4gQW5kIG1vcmVvdmVyLCB0aGUgc3BsaXQgd29uJ3QgYmUgY2xlYW4KPiA+IGVp
dGhlci4gV2Ugc3RpbGwgbmVlZCB0byByZXVzZSBhIGxvdCBvZiBjb21tb24gbG9naWMgaW4gdGhl
ICdwaHktcWNvbS1xbXAtcGNpZScKPiA+IGRyaXZlciBhbmQgbWF5IG9ubHkgZW5kIHVwIGtlZXBp
bmcgdmVyeSBtaW5pbWFsIGNvZGUgaW4KPiA+ICdwaHktcWNvbS1xbXAtcGNpZS1nbHltdXInLgo+
IAo+IFRoZW4gc3BsaXR0aW5nIG1ha2VzIGV2ZW4gbW9yZSBzZW5zZS4gTGV0J3Mgbm90IGNsdXR0
ZXIgdGhlIGV4aXN0aW5nCj4gZHJpdmVyIHdpdGggdG9vIG1hbnkgY29uZGl0aW9ucyBhbmQgb3B0
aW9ucy4KPiAKPiA+IAo+ID4gSWYgeW91IGFyZSBjb25jZXJuZWQgYWJvdXQgdGhlIGZpbGUgc2l6
ZSBvZiAncGh5LXFjb20tcW1wLXBjaWUnLCB0aGVuIHdlIHNob3VsZAo+ID4gbW92ZSB0aGUgU29D
IHNwZWNpZmljICdjZmcnIHN0cnVjdHMgaW50byBhIHNlcGFyYXRlIGZpbGUgYXMgdGhhdCdzIHdo
YXQKPiA+IG9jY3VweWluZyBtYWpvcml0eSBvZiB0aGUgc3BhY2UuCj4gCj4gTm8sIGl0J3MgcmVh
bGx5IHRoZSAnc2hhcmVkJyBwYXJ0Lgo+CgpUbyBjb25maXJtLCBhcmUgeW91IG9rYXkgd2l0aCBz
b21lIGNvZGUgZHVwbGljYXRpb24gYmV0d2VlbiB0aGUgbmV3CkdseW11ci1zcGVjaWZpYyBkcml2
ZXIgYW5kIHBoeS1xY29tLXFtcC1wY2llIGRyaXZlci4KCi0gUWlhbmcgWXUKPiA+IAo+ID4gLSBN
YW5pCj4gPiAKPiA+IC0tIAo+ID4g4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCu
vuCumuCuv+CuteCuruCvjQo+ID4gCj4gPiAtLSAKPiA+IGxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
PiA+IGxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiBodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkKPiAKPiAtLSAKPiBXaXRoIGJlc3Qg
d2lzaGVzCj4gRG1pdHJ5CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
