Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE079F36C2E
	for <linux-phy@archiver.kernel.org>; Mon, 20 Apr 2026 07:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a+WVh7gO7sVnMnOmmru01oq7M/HL+x0PinFN3IxRL50=; b=gq3dw2d6RmF3JB
	w8zxS7TDputlS+XGW2FfCqRqkF1VeUF8fWrkaaYmYamKS7Qxx1TBpwIttvruWMjnpj6orWtNcXRx5
	Fm+B6aRSZaa9HuFoHjwVdZQDJgs9xeVNW1/jcRMCUEym1/LP1bqJAJS0KhEngjSFOfZYhD5+xUF0n
	pBnj4lJjQvjmU/mvlbTqd5Uw99JWaKKlSZlXWkNZp1Ndipis5a1UVqOy2O3sjuXbYdtCV0RVw9Bdp
	WkSeGW3V5b3RH4i5ks3tZJtP2SQslNUuGkn/6YLH3/bMb6QmLn8za/xWwxNnlG8xG2fB01+Hgge6U
	gCp7FgQ4of8AU8bHzLtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEj5u-00000006YS2-3GMJ;
	Mon, 20 Apr 2026 07:30:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEj5p-00000006YRJ-1r0b
	for linux-phy@lists.infradead.org;
	Mon, 20 Apr 2026 07:30:57 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63K6a4kZ382691
	for <linux-phy@lists.infradead.org>; Mon, 20 Apr 2026 07:30:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	txlDDEse3giCKyy04z9LcYm6Q2PzX7M+fmm0xi3qWeY=; b=cfd63UCRPygWpDv8
	3FVgWALB+3sQpA5fpXRhsvdlpRGWSYUNrmHCyf8fIadOBmo6gPmIk+LVCZZdOKUj
	Ky5ABa8ig8Vss5JKLhvoozztBdBufUkGzb96nPfVwqZ2pOFeTiXdbN20tsps2HSB
	V29ng2LCi/K/i3B3Y4WjMl6SzlnG5I8zfUzEFlw7vB0Wutg4LMsNNky1DTqA/8Xr
	6AJw76sNgB2xsydU44qOlzNIvZQ/88D13b7kQb6WbJ1VoVh0Irodbf6hN6auhqjY
	87nPEEBbIzKzMZJAK1/ZIMae+8L9hR/JpXWaMSMXSDuIBdhnWOQcKuRsZe6p/z/w
	/S3TWg==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dm1hx4p7t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 20 Apr 2026 07:30:52 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2c0ba59a830so3942809eec.0
        for <linux-phy@lists.infradead.org>; Mon, 20 Apr 2026 00:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776670251; x=1777275051; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=txlDDEse3giCKyy04z9LcYm6Q2PzX7M+fmm0xi3qWeY=;
        b=FH8aVAXN3Za+pe/3LT61WMEwEMvNqUOZtACjCVbNHQzBbqyeE8PpoJ5/M91Vv71o+r
         e7Mh/J9xrKyrIWix+VGPoCBf3TrCMA60mXO1o11ppzS4moPN54FMbcSErXvTFRxonlKZ
         7z0FcALS2CkQfKDiJYCs4+4UkLL/cnSSMbFtfF4hoNKv08rcBtLnbuIgJbn6Bner+MDn
         NNiLsAljcEEJYWuuw+OCYe84pjh4yp6SdCnb6CgIxWpoWxLUPWlMA+T/cBUaGKhkz0vu
         alDlu91OE0AwQrEuirwlWpy2iJ9QGKeN4DOUVOAXhsa+BhJwB5mEVb9Jqzdzrv0jqnls
         ubUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776670251; x=1777275051;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=txlDDEse3giCKyy04z9LcYm6Q2PzX7M+fmm0xi3qWeY=;
        b=r7S/tK3GTQYa3Tvjy+3z+ZaBX8EHLwdoaZ/wIMRLXTtVeAjPgyfQnYoHj50WSmqLby
         +Xz1mdmMEiP15lUpQ2ccaWQ70kAcH7jI+AO2SQM4DSZap3x2rKlYGVnjTgL+NuAKtTU2
         Ke/CU6S/P8GioLVO+5We4HAY15HNm0oMPJv7ZAvv2YzrFVh78Cxq9BHH+zkIE6tHHR1X
         wvR5NujDzNpXp8tiCyKfNF4SB+EnhcxYC++ye+JpVNvr6bM8UoMrN/bfrbFMzBikw/m2
         axwZPW+P4jCVqUzuTddL0kP+uN/rG6GqK2EGs03hwQx18JQg06/KqJgPzbthZaYPi+ff
         0qqg==
X-Forwarded-Encrypted: i=1; AFNElJ+VyGiRshxhR8uAhxmlJr95oRWGHnzSWnA3EhX6Z0htDbAa640YWm2PVzDxTNskpYUvuVROCikpe2g=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw260zzzK3CyH1mbScMSsqZN2sUHvbxt+xdVQpMJrN7XhSc8SKq
	Skw0SBk4T8Zq5zJmo2ajlAOV0ZonPYCOYeLQGfd7s6cIfhGidII0aI0F6Onxg3m8IhmvR8uB6gT
	7FR3mQcFvXBAWto4aXmEMlh5BV5zym1cx6Kj4F786B60hNE2DESN9XEz1V2IXSeU2IK6K
X-Gm-Gg: AeBDies23fxcbhQ4C4GODkR4cmwcca1Nz9/YrmVaUPEiXdJEUPzOG3y1Jc5+N8mYYvp
	D62YYz6IemPROhVaq4mnvtZjGAOXtV6PNNiNCGWhGcXomnyMYsygKRcf4Wz2UnZtmvn87kYTE87
	TBeUBRYZxWXrPDCFiN0ELbkBxNM68RBaOmautL/sun0UD02d2zUrNUpfsprdVYcPELXT5AL/l6I
	pVtGeOgdRDefBY7dhwVGvxNlT1w8D9+YElim3M5sVxF0KbgMygB0BmqDE0vt+X2YNeu/9K/ufFX
	OJ3qSgsGqkqhVu7NZidTm9ssfLooZ2DAs4DWN/arIOItXC2dCfrUmY/64vdOy+a6AOMxgRjnzSN
	xfHyaUi9YV4PPgRhpX6/epTvWgXwtllSTcGh/bXAbWZDO7Z71IX60iud0bv7lUTUCUAQIF8MwtU
	OL0r4=
X-Received: by 2002:a05:7300:2d15:b0:2df:3eb7:531d with SMTP id 5a478bee46e88-2e47a102bc4mr6036470eec.19.1776670251299;
        Mon, 20 Apr 2026 00:30:51 -0700 (PDT)
X-Received: by 2002:a05:7300:2d15:b0:2df:3eb7:531d with SMTP id 5a478bee46e88-2e47a102bc4mr6036454eec.19.1776670250682;
        Mon, 20 Apr 2026 00:30:50 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2e53ccd2564sm13657396eec.18.2026.04.20.00.30.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2026 00:30:50 -0700 (PDT)
Date: Mon, 20 Apr 2026 00:30:48 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 5/5] arch: arm64: dts: qcom: Add support for PCIe3a
Message-ID: <aeXWKOD/I5kFaBfz@hu-qianyu-lv.qualcomm.com>
References: <20260412-glymur_gen5x8_phy_0413-v3-0-affcebc16b8b@oss.qualcomm.com>
 <20260412-glymur_gen5x8_phy_0413-v3-5-affcebc16b8b@oss.qualcomm.com>
 <20260415-pragmatic-termite-of-attraction-3dbab5@quoll>
 <aeBWfv1oXnSQC454@hu-qianyu-lv.qualcomm.com>
 <d486616b-ef21-4933-aaf5-dcba339dd8cc@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d486616b-ef21-4933-aaf5-dcba339dd8cc@kernel.org>
X-Proofpoint-ORIG-GUID: DXveQkQSTHCJDYuq9GyzOHpZSR4lJqZT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIwMDA3MiBTYWx0ZWRfXxezTIsCd+/RE
 yYoF+66Zc9wyzyib1bPtNeTXSdoNKsdtGeuqrwT2xWWfbmmx5goSB1Qvhsz5LZRQCfrcxE0cobC
 2X+t4hb9Hcj1J4Y+49nyia2Tudmd2SARiL9bWXqyrIzsUb/xOkrpEYOjHnvq/sQCq+OrbgfarYI
 AQ6rfOaLLZ+49Hx94+d09PxReEc85njHHp6ij15w+UCcMbi3gIYDmsFzpTF1qUMWjFAPIehnNQ3
 gFliTnkPBxVyQVEuVDvj7WN+YsI4oS02fZfdkM3HQsTrjpgG+CZ5+Ngmi36c/lZtk58F9r/T/ff
 BBqebsQu84FeKfRiHt2HbtLU2TVcOw8Y1fcordKIbKHTKIxZ+ExU2PlQQ0MNQjfSaTXqHaxZ+Oe
 prF/f0wFJQ/OnYYF1cKlicIautVGeymVfE4xFpXFw9gCWDDtQo5K3qUlmFqGdcNiTxhtCACUca2
 PVT2JKClnMUMcYCeIcA==
X-Proofpoint-GUID: DXveQkQSTHCJDYuq9GyzOHpZSR4lJqZT
X-Authority-Analysis: v=2.4 cv=RoX16imK c=1 sm=1 tr=0 ts=69e5d62c cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=6JBNvcu5I-RyS6dicrsA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-20_01,2026-04-17_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 adultscore=0 spamscore=0 phishscore=0
 clxscore=1015 bulkscore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604070000
 definitions=main-2604200072
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_003055_411526_B25BE8C2 
X-CRM114-Status: GOOD (  27.95  )
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

T24gVGh1LCBBcHIgMTYsIDIwMjYgYXQgMDg6MTk6MDlBTSArMDIwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBPbiAxNi8wNC8yMDI2IDA1OjI0LCBRaWFuZyBZdSB3cm90ZToKPiA+IE9u
IFdlZCwgQXByIDE1LCAyMDI2IGF0IDA5OjQ0OjE1QU0gKzAyMDAsIEtyenlzenRvZiBLb3psb3dz
a2kgd3JvdGU6Cj4gPj4gT24gU3VuLCBBcHIgMTIsIDIwMjYgYXQgMTE6MjY6MDBQTSAtMDcwMCwg
UWlhbmcgWXUgd3JvdGU6Cj4gPj4+IERlc2NyaWJlIFBDSWUzYSBjb250cm9sbGVyIGFuZCBQSFku
IEFsc28gYWRkIHJlcXVpcmVkIHN5c3RlbSByZXNvdXJjZXMKPiA+Pj4gbGlrZSByZWd1bGF0b3Jz
LCBjbG9ja3MsIGludGVycnVwdHMgYW5kIHJlZ2lzdGVycyBjb25maWd1cmF0aW9uIGZvciBQQ0ll
M2EuCj4gPj4+Cj4gPj4+IFNpZ25lZC1vZmYtYnk6IFFpYW5nIFl1IDxxaWFuZy55dUBvc3MucXVh
bGNvbW0uY29tPgo+ID4+Cj4gPj4gc3ViamVjdDogZHJvcCBhcmNoLgo+ID4+Cj4gPj4gUGxlYXNl
IHVzZSBzdWJqZWN0IHByZWZpeGVzIG1hdGNoaW5nIHRoZSBzdWJzeXN0ZW0uIFlvdSBjYW4gZ2V0
IHRoZW0gZm9yCj4gPj4gZXhhbXBsZSB3aXRoICdnaXQgbG9nIC0tb25lbGluZSAtLSBESVJFQ1RP
UllfT1JfRklMRScgb24gdGhlIGRpcmVjdG9yeQo+ID4+IHlvdXIgcGF0Y2ggaXMgdG91Y2hpbmcu
IEZvciBiaW5kaW5ncywgdGhlIHByZWZlcnJlZCBzdWJqZWN0cyBhcmUKPiA+PiBleHBsYWluZWQg
aGVyZToKPiA+PiBodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL2xhdGVzdC9kZXZpY2V0
cmVlL2JpbmRpbmdzL3N1Ym1pdHRpbmctcGF0Y2hlcy5odG1sI2ktZm9yLXBhdGNoLXN1Ym1pdHRl
cnMKPiA+Pgo+ID4gCj4gPiBUaGFua3MgZm9yIHBvaW50aW5nIG1lIHRoZSBsaW5rLiBJ4oCZbGwg
ZHJvcCBhcmNoOiBpbiBuZXh0IHZlcnNpb24uCj4gPiAKPiA+Pj4gLS0tCj4gPj4+ICBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3Fjb20vZ2x5bXVyLmR0c2kgfCAzMTYgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKy0KPiA+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAzMTUgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQo+ID4+Pgo+ID4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0
cy9xY29tL2dseW11ci5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2dseW11ci5kdHNp
Cj4gPj4+IGluZGV4IGYyM2NmODFkZGI3N2E0MTM4ZGVlYjRlMDBkZDhiMzE2OTMwYTJmZWIuLmMx
NWY4N2MzN2VjYmFkNzIwNzZhNmM3MzFmNDk1OWExYThiZDg0MjUgMTAwNjQ0Cj4gPj4+IC0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9nbHltdXIuZHRzaQo+ID4+PiArKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3Fjb20vZ2x5bXVyLmR0c2kKPiA+Pj4gQEAgLTczNiw3ICs3MzYsNyBAQCBn
Y2M6IGNsb2NrLWNvbnRyb2xsZXJAMTAwMDAwIHsKPiA+Pj4gIAkJCQkgPDA+LAkJCQkvKiBVU0Ig
MiBQaHkgUENJRSBQSVBFR01VWCAqLwo+ID4+PiAgCQkJCSA8MD4sCQkJCS8qIFVTQiAyIFBoeSBQ
SVBFR01VWCAqLwo+ID4+PiAgCQkJCSA8MD4sCQkJCS8qIFVTQiAyIFBoeSBTWVMgUENJRSBQSVBF
R01VWCAqLwo+ID4+PiAtCQkJCSA8MD4sCQkJCS8qIFBDSWUgM2EgKi8KPiA+Pj4gKwkJCQkgPCZw
Y2llM2FfcGh5PiwJCQkvKiBQQ0llIDNhICovCj4gPj4+ICAJCQkJIDwmcGNpZTNiX3BoeT4sCQkJ
LyogUENJZSAzYiAqLwo+ID4+PiAgCQkJCSA8JnBjaWU0X3BoeT4sCQkJLyogUENJZSA0ICovCj4g
Pj4+ICAJCQkJIDwmcGNpZTVfcGh5PiwJCQkvKiBQQ0llIDUgKi8KPiA+Pj4gQEAgLTM2NDAsNiAr
MzY0MCwzMjAgQEAgcGNpZTNiX3BvcnQwOiBwY2llQDAgewo+ID4+PiAgCQkJfTsKPiA+Pgo+ID4+
IC4uLgo+ID4+Cj4gPj4+PiArCQlwY2llM2FfcGh5OiBwaHlAZjAwMDAwIHsKPiA+Pgo+ID4+IFNh
bWUgY29tbWVudCBhcyBiZWZvcmUuCj4gPj4KPiA+IAo+ID4gVGhlIGV4aXN0aW5nIFBDSWUvUEhZ
IG5vZGVzIGFyZSBub3Qgc3RyaWN0bHkgb3JkZXJlZCBieSBhZGRyZXNzLiBDdXJyZW50Cj4gPiBv
cmRlciBpczoKPiAKPiBPYnZpb3VzbHkgd2UgY2Fubm90IGV2ZW4ga2VlcCBvcmRlciBvZiBub2Rl
cyB3aGVuIGNyZWF0aW5nIGEgbmV3IERUU0kKPiBmaWxlIGZyb20gc2NyYXRjaC4KPiAKPiBCdXQg
YWRkaW5nIEBmMDAwMDAgYWZ0ZXIgQDFjMTAwMDAgbWFrZXMgZXZlbiBsZXNzIHNlbnNlLCByZWdh
cmRsZXNzIGhvdwo+IGJhZCBleGlzdGluZyBjb2RlIGlzLiBEb24ndCBtYWtlIGl0IHdvcnNlIQo+
IAo+IFRoaXMgZ29lcyBiZWZvcmUgcGh5QGZhMDAwMAoKT2theSwgd2lsbCBtb3ZlIHBoeUBmMDAw
MDAgYmVmb3JlIHBoeUBmYTAwMDAKCi0gUWlhbmcgWXUKCj4gCj4gPiAKPiA+IC0gcGNpZTQ6IHBj
aUAxYmYwMDAwCj4gPiAtIHBjaWU0X3BoeTogcGh5QDFiZjYwMDAKPiA+IC0gcGNpZTU6IHBjaUAx
YjQwMDAwCj4gPiAtIHBjaWU1X3BoeTogcGh5QDFiNTAwMDAKPiA+IC0gcGNpZTY6IHBjaUAxYzAw
MDAwCj4gPiAtIHBjaWU2X3BoeTogcGh5QDFjMDYwMDAKPiA+IC0gcGNpZTNiOiBwY2lAMWI4MDAw
MAo+ID4gLSBwY2llM2E6IHBjaUAxYzEwMDAwIChhZGRlZCBpbiB0aGlzIHBhdGNoKQo+ID4gLSBw
Y2llM2FfcGh5OiBwaHlAZjAwMDAwIChhZGRlZCBpbiB0aGlzIHBhdGNoKQo+ID4gLSBwY2llM2Jf
cGh5OiBwaHlAZjEwMDAwCj4gPiAKPiA+IERvIHlvdSB3YW50IG1lIHRvIHJlb3JkZXIgdGhlc2Ug
bm9kZXMgdG8gZm9sbG93IHN0cmljdCBhZGRyZXNzIG9yZGVyPwo+IAo+IE5vLCBidXQgZG9uJ3Qg
YWRkIG5vZGVzIHJhbmRvbWx5IG9yIGZvbGxvd2luZyB0aGUgcHJldmlvdXMgYnJva2VuIG9yZGVy
Lgo+Cj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
