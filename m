Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F1EEC531CB
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 12:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vzAodd3cfrBGsFCs6QfwQTNZ5yOz/GtwFEgCziGX8JY=; b=f91xlhvjVCLIhn
	yl0UAsEagAxjXCEuxIhX4xK5TMpL2/Bvm2erg+sXa3Asep92O52JczPqTmXJdDJ8j8i0EqYs4/SRD
	21gLkNRQ4dFhOIZKJlUqpU/5deKExOqqC3KC+nTFHAy8lGaClDtzU4L+3Z07EUpYFaOnupLe5yVCp
	bbJBEu9ZuZupY7afCv9z0+GoM2ZAWr1n1jN0mAgg7gPatpezIisjV3sLd7ChE6Fhaoef7rfoM+hqx
	bP7qeNyE4DYXzbzPK+gWN9V7pILXBSaN2Lzk4X5QJTPTD7mt8sq9z78NzvJHKQaAwG59S/9mQmEn1
	5hrDkhUlIEr8k4sogGPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmt15-0000000EJHr-3fVb;
	Thu, 23 Jul 2026 12:59:11 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmt13-0000000EJHS-1Dll
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 12:59:10 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66NCvQOw4078238
	for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 12:59:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Y9caaeVu42W9UxBCOZ8lVhg5Y4GvFYNcm8Ok1jeCt1M=; b=otl+5I2MkrD3G/Al
	Seg57LrhR8odE3xCDevJwscSBxIk3cdshTUmGszhRKXcDLi9hUbBQGeh2VoxDA8H
	46h0DMv6VN+lpC72AO86xg/xE2YHgsqXIlaraL39SiIKXifv5p9/9vTFuTxYu5yJ
	2THLberjkT/b1C7r+GfJUpfHVGT6DQ/NstAXyGr53KMUGQcO6/dqLxN2ok8st4Jl
	th1wciSH13HaaHVIm/NFxl+NYDIA1IqXCJbsExyQKcg6l755O+YPQeGYu9fPC2hg
	Z7+E3U6yE0wUT9tU2PjvV/9UvafbJZ4VPx07QZgRjoNFRRf7fNJ91xPa3zv1/L74
	O8r0SQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fkg520utb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 12:59:07 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-848568a6f62so1124948b3a.0
        for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 05:59:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784811546; x=1785416346; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Y9caaeVu42W9UxBCOZ8lVhg5Y4GvFYNcm8Ok1jeCt1M=;
        b=X8SdNwpjGfWqZqpe75ExIiHVnqj8+FsOJAt648rQrmlm1O0Sxe6hltJwe2UXgzwWoD
         5CATae1Bpv9meLVB5sceZoeY1SKhDQgfqZAKLcy70JWN3Zy4WjPjPiiavQxI+R7HOf6q
         JOhLBLZZT3+dv9CqEuX/jnv871CshD2MkreypQA09ggQmZ5g/TYlEmwc5jwQMxXi99V4
         Tfx6QJqBTfofqZ3JIxHVTyRtBZzL93rQBfp7kYGGaWyzf+FpyP5I6A2HG3JWXZMY9amq
         o7YeFI+bykDtqIFVtQbASQ75s/EDC92rOdWoexw9WYBbXNimNR/xRRcFU8PMW4jQHpJt
         99AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784811546; x=1785416346;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=Y9caaeVu42W9UxBCOZ8lVhg5Y4GvFYNcm8Ok1jeCt1M=;
        b=LOVqPs+knmzdgz15dN2oqzfwCJ34GNS6gCkK6j0S3WrYf2t4MtpFSPI2r4wmM/isdL
         wdjcijWzeJzKMDBuPyPbrff/0vDxGBmZo6e6Y/P4keIRp7myckb5nkAFJTJbwMkmo5f6
         Xq7ZTRY129c8bG2uvsXLpqv41FU1lbazQjxsrSyy/oETE0nhqNc72UEylJEsFGwzud1b
         xD4eljsBt/o9oiVS0uq3lAItJEauj8YZegAA/fS9Zn9nP504+A0wI34abcwRto7uNDmg
         PMzaHkZcnUCUgjoSx3i30n/dB+r2BnNGCqDZ653wTjW9dhTlHoaT0f9UZTDgs3+0QDpX
         o/DQ==
X-Forwarded-Encrypted: i=1; AHgh+RqVpGivy8vkCfkpX0AmwUF29siU/lrhD7pJK/uMJo4Y4dYgi5e3sbBPJh0+o9/ggSCiBEdOTteTq7w=@lists.infradead.org
X-Gm-Message-State: AOJu0YxveMbp5dMNadeHeNxS+UaA0ZpsjihY8gn4H2V2XF1EREoQyH98
	s2cDSpWOoCOSbeEIORG6zRa2L7VDDEQWVz9YL0CbCuP7TJ45oZmleKqNo/+FOWfG+/uvGNvJ/3P
	4RLMwTgPUC6tSfm6f6UNrIDhNh/y60jZwZhVYgzqN4STO5Z2LrgC1W9PJey2YcvuJAMMB
X-Gm-Gg: AR+sD13qJulfZQQMoZcJ+ilQoEEtAAobUhMAWGxJfO7LtRIhE7IShWDBav+uTVVgxpH
	Nokg/IViVQoWz7Xk0o/KD27yl6xeat8g6YBituUYvthGzRG8I/rH6gQrWqFTyuLLsNW6TL0hoxO
	8u+0aZujpqutUskwFKuFiD8WCh4PjDslcYSONDPGhHR7M4HN5MGp+MdAAb0WYrtF0jd/M71HzVe
	ivtX4CDqlLO+EzH4fWDkaJjz12GGD6CmNcv10cGY7u21VAoEipM0OQJVhfjyRfQVHMOwkaqEqa5
	Px9pBkDg5p3NfvlLlirC1GSO+E5wv4ih0jPJJ3zyT5Z4FprCh3Ypb30nMz3qUwR9n0gzcs6F2Fw
	3+nZ7GjgG5eRZFTKdiF3QVAsr7NAP1jcJ3SdW/3LPppA3/dnBqA==
X-Received: by 2002:a05:6a00:1802:b0:848:4809:51da with SMTP id d2e1a72fcca58-84e2bb371d2mr3280710b3a.50.1784811545997;
        Thu, 23 Jul 2026 05:59:05 -0700 (PDT)
X-Received: by 2002:a05:6a00:1802:b0:848:4809:51da with SMTP id d2e1a72fcca58-84e2bb371d2mr3280681b3a.50.1784811545431;
        Thu, 23 Jul 2026 05:59:05 -0700 (PDT)
Received: from QCOM-IvKeorbwK5.na.qualcomm.com ([120.60.139.18])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84e175ea5c7sm3018535b3a.53.2026.07.23.05.59.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2026 05:59:04 -0700 (PDT)
Date: Thu, 23 Jul 2026 14:58:58 +0200
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 1/6] dt-bindings: phy: qcom: Add Glymur QMP PCIe
 multiple link-mode PHY
Message-ID: <4r5jtbvifem2p4kmtdfzyxizksxt5ppk232hckcm4htkw66exl@d7ugkvct66dx>
References: <20260722-glymur_linkmode_0722-v6-0-bba8156b8cbb@oss.qualcomm.com>
 <20260722-glymur_linkmode_0722-v6-1-bba8156b8cbb@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260722-glymur_linkmode_0722-v6-1-bba8156b8cbb@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=DtZmPm/+ c=1 sm=1 tr=0 ts=6a62101b cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fabVTapF7hbH8ecADQZKXA==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=t2Phx_BFCjayA1OyaFsA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIzMDEyOCBTYWx0ZWRfX+vao6FYYDXj3
 A6YcTUEGk8QcGbTlrKjY9t4FgpWddAoet+a62/abQWPCeFmWOL2WlE1ry7n1X7n1OXAbb2c5LGB
 fYVteBPVTzkfy8ALh/St3qaIRbm17aQ=
X-Proofpoint-GUID: gGTllLi2ZDlxUNcUhqwAK57r-DDq3vwk
X-Proofpoint-ORIG-GUID: gGTllLi2ZDlxUNcUhqwAK57r-DDq3vwk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIzMDEyOCBTYWx0ZWRfXyikoOpbx6z3F
 /dww/VoCw9BMfHx4UBdkS07qkMj8JJj8duY/eP2glCgdoAjLLulB02eCLANlqW49Tn3Gp4WMbf+
 LBgGlcMZL8YWoBIJT5ONHOZWtnD9lTSJmn3f+LYOaHEqxQa6oxmAKaMsajeCk89L/GgAF4p+HVT
 dHSnBI8p/1ueAghM2kZkJAcasEnbSMsg8gBm+1d512/zckR59Kn9Ywlq74BKlwM4+43z6hamjp+
 QtCGFu6GvGfQO2Uc2Gih2yFL/z6jERVFVnvuHmC0Leu3rEY+y8ZKorxzt9OTuxDtBM1wExyTaDp
 kgCBhUaz3xofINUq3bTX2kcmJW/6CVs/QsLvtPxUFBVlrY+XwoDO8RognMoWPehP6JJrY3dI+nc
 bAjeTE8aURG1l7gOeBADbaTVbnZ4bn+49sEaWMDINsveTBm9r2zpiBY7SI7GgtL9z04CjyqorS3
 Nf4OTWpt/+FNB7D/fIA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-23_04,2026-07-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 impostorscore=0 clxscore=1015 bulkscore=0
 adultscore=0 suspectscore=0 malwarescore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607230128
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_055909_449107_A23BB8AD 
X-CRM114-Status: GOOD (  30.25  )
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

T24gV2VkLCBKdWwgMjIsIDIwMjYgYXQgMDc6MzA6MThQTSAtMDcwMCwgUWlhbmcgWXUgd3JvdGU6
Cj4gQWRkIHFjb20sZ2x5bXVyLXFtcC1wY2llLW11bHRpcGh5LnlhbWwgYXMgYSBzdGFuZGFsb25l
IGJpbmRpbmcKPiBmb3IgdGhlIEdseW11ciBHZW41IFBDSWUgUEhZIGhhcmR3YXJlIGJsb2NrLiBU
aGlzIGJsb2NrIHN1cHBvcnRzIHR3bwo+IGxpbmsgbW9kZXMsIHNlbGVjdGVkIGF0IHJ1bnRpbWUg
dmlhIGEgVENTUiBzeXNjb24gcmVnaXN0ZXI6Cj4gCj4gMS4geDggLSBhIHNpbmdsZSA4LWxhbmUg
UEhZIGluc3RhbmNlIGlzIGV4cG9zZWQKPiAyLiB4NCt4NCAtIHR3byBpbmRlcGVuZGVudCA0LWxh
bmUgUEhZIGluc3RhbmNlcyBhcmUgZXhwb3NlZAo+IAo+IEtlZXAgdGhpcyBhcyBhIHNlcGFyYXRl
IHNjaGVtYSBmcm9tIHFjb20sc2M4MjgweHAtcW1wLXBjaWUtcGh5LnlhbWwKPiByYXRoZXIgdGhh
biBmb2xkaW5nIGl0IGludG8gdGhlIHNoYXJlZCBjb21wYXRpYmxlIGxpc3QgdGhlcmUsIHNpbmNl
IHRoZQo+IHR3byBQSFkgaW5zdGFuY2VzIGFjdGl2ZSBpbiB4OCBtb2RlIHJlcXVpcmUgdHdpY2Ug
YXMgbWFueSBjbG9ja3MsCj4gcmVzZXRzLCBhbmQgcG93ZXItZG9tYWlucyBhcyBhbnkgb3RoZXIg
ZW50cnkgaW4gdGhhdCBmaWxlLCBhbmQgYWRkaW5nCj4gR2x5bXVyLXNwZWNpZmljIHByb3BlcnRp
ZXMgbGlrZSBxY29tLGxpbmstbW9kZSBhbmQgcmVnLW5hbWVzIHRoZXJlCj4gd291bGQgb25seSBh
cHBseSB0byB0aGlzIG9uZSBjb21wYXRpYmxlLgo+IAo+IERvY3VtZW50IHRoZSByZXF1aXJlZCBj
bG9ja3MsIHJlc2V0cywgYW5kIHBvd2VyLWRvbWFpbnMgZm9yIGJvdGggUEhZCj4gaW5zdGFuY2Vz
LCBhbmQgdXNlICNwaHktY2VsbHMgPSA8MT4sIHdoZXJlIHRoZSBjZWxsIHZhbHVlIGlzIHRoZSBQ
SFkKPiBpbmRleCB3aXRoaW4gdGhlIGFjdGl2ZSBsaW5rIG1vZGUuCj4gCj4gU2lnbmVkLW9mZi1i
eTogUWlhbmcgWXUgPHFpYW5nLnl1QG9zcy5xdWFsY29tbS5jb20+CgpBY2tlZC1ieTogTWFuaXZh
bm5hbiBTYWRoYXNpdmFtIDxtYW5pQGtlcm5lbC5vcmc+CgotIE1hbmkKCj4gLS0tCj4gIC4uLi9w
aHkvcWNvbSxnbHltdXItcW1wLWdlbjV4OC1wY2llLXBoeS55YW1sICAgICAgIHwgMTc3ICsrKysr
KysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMTc3IGluc2VydGlvbnMoKykKPiAK
PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29t
LGdseW11ci1xbXAtZ2VuNXg4LXBjaWUtcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGh5L3Fjb20sZ2x5bXVyLXFtcC1nZW41eDgtcGNpZS1waHkueWFtbAo+IG5l
dyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi43NTlmN2Y5NzlkYzYKPiAt
LS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bo
eS9xY29tLGdseW11ci1xbXAtZ2VuNXg4LXBjaWUtcGh5LnlhbWwKPiBAQCAtMCwwICsxLDE3NyBA
QAo+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCBPUiBCU0QtMi1DbGF1c2Up
Cj4gKyVZQU1MIDEuMgo+ICstLS0KPiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1h
cy9waHkvcWNvbSxnbHltdXItcW1wLWdlbjV4OC1wY2llLXBoeS55YW1sIwo+ICskc2NoZW1hOiBo
dHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPiArCj4gK3RpdGxl
OiBRdWFsY29tbSBRTVAgUENJZSBtdWx0aXBsZSBsaW5rLW1vZGUgUEhZIGNvbnRyb2xsZXIgKFBD
SWUsIEdseW11cikKPiArCj4gK21haW50YWluZXJzOgo+ICsgIC0gUWlhbmcgWXUgPHFpYW5nLnl1
QG9zcy5xdWFsY29tbS5jb20+Cj4gKyAgLSBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5u
YW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgo+ICsKPiArZGVzY3JpcHRpb246IHwKPiAr
ICBUaGUgR2x5bXVyIFNvQyB1c2VzIGEgc2luZ2xlIFBDSWUgR2VuNSBQSFkgaGFyZHdhcmUgYmxv
Y2sgZm9yIHRoZQo+ICsgIFBDSWUzYS9QQ0llM2IgY29udHJvbGxlcnMuIFRoaXMgYmxvY2sgc3Vw
cG9ydHMgdHdvIGxpbmsgbW9kZXMsIHNlbGVjdGVkCj4gKyAgYXQgcnVudGltZSB2aWEgYSBUQ1NS
IHN5c2NvbiByZWdpc3RlcjoKPiArCj4gKyAgMS4geDggLSBhIHNpbmdsZSA4LWxhbmUgUEhZIGlu
c3RhbmNlIGlzIGV4cG9zZWQgKFBDSWUzYSBvbmx5KQo+ICsgIDIuIHg0K3g0IC0gdHdvIGluZGVw
ZW5kZW50IDQtbGFuZSBQSFkgaW5zdGFuY2VzIGFyZSBleHBvc2VkIChQQ0llM2EgYW5kCj4gKyAg
ICAgUENJZTNiKQo+ICsKPiArICBUaGUgbm9kZSBhbHdheXMgZGVzY3JpYmVzIGJvdGggUEhZIGlu
c3RhbmNlcyAoInBvcnQgYSIgYW5kICJwb3J0IGIiKSwKPiArICByZWdhcmRsZXNzIG9mIHdoaWNo
IGxpbmsgbW9kZSBpcyBhY3RpdmUgb24gdGhlIGJvYXJkLgo+ICsKPiArcHJvcGVydGllczoKPiAr
ICBjb21wYXRpYmxlOgo+ICsgICAgZW51bToKPiArICAgICAgLSBxY29tLGdseW11ci1xbXAtZ2Vu
NXg4LXBjaWUtcGh5Cj4gKwo+ICsgIHJlZzoKPiArICAgIG1heEl0ZW1zOiAyCj4gKwo+ICsgIHJl
Zy1uYW1lczoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiBwb3J0X2EKPiArICAgICAg
LSBjb25zdDogcG9ydF9iCj4gKwo+ICsgIGNsb2NrczoKPiArICAgIG1heEl0ZW1zOiAxMAo+ICsK
PiArICBjbG9jay1uYW1lczoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiBhdXgKPiAr
ICAgICAgLSBjb25zdDogY2ZnX2FoYgo+ICsgICAgICAtIGNvbnN0OiByZWYKPiArICAgICAgLSBj
b25zdDogcmNobmcKPiArICAgICAgLSBjb25zdDogcGlwZQo+ICsgICAgICAtIGNvbnN0OiBwaHlf
Yl9hdXgKPiArICAgICAgLSBjb25zdDogY2ZnX2FoYl9iCj4gKyAgICAgIC0gY29uc3Q6IHJjaG5n
X2IKPiArICAgICAgLSBjb25zdDogcGlwZV9iCj4gKyAgICAgIC0gY29uc3Q6IHBpcGVkaXYyX2IK
PiArCj4gKyAgcG93ZXItZG9tYWluczoKPiArICAgIG1heEl0ZW1zOiAyCj4gKwo+ICsgIHBvd2Vy
LWRvbWFpbi1uYW1lczoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiBwb3J0X2EKPiAr
ICAgICAgLSBjb25zdDogcG9ydF9iCj4gKwo+ICsgIHJlc2V0czoKPiArICAgIG1heEl0ZW1zOiA0
Cj4gKwo+ICsgIHJlc2V0LW5hbWVzOgo+ICsgICAgaXRlbXM6Cj4gKyAgICAgIC0gY29uc3Q6IHBv
cnRfYQo+ICsgICAgICAtIGNvbnN0OiBwb3J0X2Ffbm9jc3IKPiArICAgICAgLSBjb25zdDogcG9y
dF9iCj4gKyAgICAgIC0gY29uc3Q6IHBvcnRfYl9ub2Nzcgo+ICsKPiArICB2ZGRhLXBoeS1zdXBw
bHk6IHRydWUKPiArCj4gKyAgdmRkYS1wbGwtc3VwcGx5OiB0cnVlCj4gKwo+ICsgIHZkZGEtcmVm
Z2VuMHA5LXN1cHBseTogdHJ1ZQo+ICsKPiArICB2ZGRhLXJlZmdlbjFwMi1zdXBwbHk6IHRydWUK
PiArCj4gKyAgcWNvbSxsaW5rLW1vZGU6Cj4gKyAgICBkZXNjcmlwdGlvbjoKPiArICAgICAgUmVm
ZXJlbmNlIHRvIGEgcmVnaXN0ZXIgaW4gdGhlIFRDU1Igc3lzY29uIHRoYXQgcmVwb3J0cyB0aGUg
bGluawo+ICsgICAgICBtb2RlIHRoZSBQQ0llIFBIWSBpcyBjdXJyZW50bHkgY29uZmlndXJlZCBm
b3IsIGVpdGhlciBhIHNpbmdsZSB4OAo+ICsgICAgICBsaW5rIG9yIHR3byBpbmRlcGVuZGVudCB4
NCBsaW5rcy4gVGhlIGxpbmsgbW9kZSBpcyBwcm9ncmFtbWVkIGJ5Cj4gKyAgICAgIGZpcm13YXJl
IGJlZm9yZSBMaW51eCBib290czsgdGhpcyBwcm9wZXJ0eSBpcyBvbmx5IHVzZWQgdG8gcmVhZAo+
ICsgICAgICB0aGUgYWN0aXZlIGxpbmsgbW9kZSwgc3BlY2lmaWVkIGFzIGEgcGhhbmRsZSB0byB0
aGUgc3lzY29uIGFuZAo+ICsgICAgICB0aGUgcmVnaXN0ZXIgb2Zmc2V0Lgo+ICsgICAgJHJlZjog
L3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhhbmRsZS1hcnJheQo+ICsgICAgaXRl
bXM6Cj4gKyAgICAgIC0gaXRlbXM6Cj4gKyAgICAgICAgICAtIGRlc2NyaXB0aW9uOiBwaGFuZGxl
IG9mIFRDU1Igc3lzY29uCj4gKyAgICAgICAgICAtIGRlc2NyaXB0aW9uOiBvZmZzZXQgb2YgbGlu
ayBtb2RlIHJlZ2lzdGVyCj4gKwo+ICsgICIjY2xvY2stY2VsbHMiOgo+ICsgICAgY29uc3Q6IDEK
PiArCj4gKyAgY2xvY2stb3V0cHV0LW5hbWVzOgo+ICsgICAgaXRlbXM6Cj4gKyAgICAgIC0gZGVz
Y3JpcHRpb246IE5hbWUgb2YgdGhlIFBIWSBBIHBpcGUgY2xvY2sgb3V0cHV0Lgo+ICsgICAgICAt
IGRlc2NyaXB0aW9uOiBOYW1lIG9mIHRoZSBQSFkgQiBwaXBlIGNsb2NrIG91dHB1dC4KPiArCj4g
KyAgIiNwaHktY2VsbHMiOgo+ICsgICAgY29uc3Q6IDEKPiArICAgIGRlc2NyaXB0aW9uOgo+ICsg
ICAgICBUaGUgY2VsbCBpcyB0aGUgaW5kZXggb2YgdGhlIHN1Yi1QSFkgd2l0aGluIHRoZSBhY3Rp
dmUgbGluawo+ICsgICAgICBtb2RlLCBlLmcuIG9uIEdseW11ciwgMCBmb3IgInBvcnQgYSIgYW5k
IDEgZm9yICJwb3J0IGIiIGluCj4gKyAgICAgIHg0eDQgbW9kZSwgYW5kIG9ubHkgaW5kZXggMCAo
dGhlIHNpbmdsZSB3aWRlIFBIWSkgaXMgdmFsaWQgaW4KPiArICAgICAgeDggbW9kZS4KPiArCj4g
K3JlcXVpcmVkOgo+ICsgIC0gY29tcGF0aWJsZQo+ICsgIC0gcmVnCj4gKyAgLSByZWctbmFtZXMK
PiArICAtIGNsb2Nrcwo+ICsgIC0gY2xvY2stbmFtZXMKPiArICAtIHBvd2VyLWRvbWFpbnMKPiAr
ICAtIHBvd2VyLWRvbWFpbi1uYW1lcwo+ICsgIC0gcmVzZXRzCj4gKyAgLSByZXNldC1uYW1lcwo+
ICsgIC0gdmRkYS1waHktc3VwcGx5Cj4gKyAgLSB2ZGRhLXBsbC1zdXBwbHkKPiArICAtIHZkZGEt
cmVmZ2VuMHA5LXN1cHBseQo+ICsgIC0gdmRkYS1yZWZnZW4xcDItc3VwcGx5Cj4gKyAgLSBxY29t
LGxpbmstbW9kZQo+ICsgIC0gIiNjbG9jay1jZWxscyIKPiArICAtIGNsb2NrLW91dHB1dC1uYW1l
cwo+ICsgIC0gIiNwaHktY2VsbHMiCj4gKwo+ICthZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UK
PiArCj4gK2V4YW1wbGVzOgo+ICsgIC0gfAo+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Ns
b2NrL3Fjb20sZ2x5bXVyLWdjYy5oPgo+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2Nr
L3Fjb20sZ2x5bXVyLXRjc3IuaD4KPiArCj4gKyAgICBwaHlAZjAwMDAwIHsKPiArICAgICAgY29t
cGF0aWJsZSA9ICJxY29tLGdseW11ci1xbXAtZ2VuNXg4LXBjaWUtcGh5IjsKPiArICAgICAgcmVn
ID0gPDB4MDBmMDAwMDAgMHgxMDAwMD4sIDwweDAwZjEwMDAwIDB4MTAwMDA+Owo+ICsgICAgICBy
ZWctbmFtZXMgPSAicG9ydF9hIiwgInBvcnRfYiI7Cj4gKwo+ICsgICAgICBjbG9ja3MgPSA8Jmdj
YyBHQ0NfUENJRV9QSFlfM0FfQVVYX0NMSz4sCj4gKyAgICAgICAgICAgICAgIDwmZ2NjIEdDQ19Q
Q0lFXzNBX0NGR19BSEJfQ0xLPiwKPiArICAgICAgICAgICAgICAgPCZ0Y3NyIFRDU1JfUENJRV8z
X0NMS1JFRl9FTj4sCj4gKyAgICAgICAgICAgICAgIDwmZ2NjIEdDQ19QQ0lFXzNBX1BIWV9SQ0hO
R19DTEs+LAo+ICsgICAgICAgICAgICAgICA8JmdjYyBHQ0NfUENJRV8zQV9QSVBFX0NMSz4sCj4g
KyAgICAgICAgICAgICAgIDwmZ2NjIEdDQ19QQ0lFX1BIWV8zQl9BVVhfQ0xLPiwKPiArICAgICAg
ICAgICAgICAgPCZnY2MgR0NDX1BDSUVfM0JfQ0ZHX0FIQl9DTEs+LAo+ICsgICAgICAgICAgICAg
ICA8JmdjYyBHQ0NfUENJRV8zQl9QSFlfUkNITkdfQ0xLPiwKPiArICAgICAgICAgICAgICAgPCZn
Y2MgR0NDX1BDSUVfM0JfUElQRV9DTEs+LAo+ICsgICAgICAgICAgICAgICA8JmdjYyBHQ0NfUENJ
RV8zQl9QSVBFX0RJVjJfQ0xLPjsKPiArICAgICAgY2xvY2stbmFtZXMgPSAiYXV4IiwgImNmZ19h
aGIiLCAicmVmIiwgInJjaG5nIiwgInBpcGUiLAo+ICsgICAgICAgICAgICAgICAgICAgICJwaHlf
Yl9hdXgiLCAiY2ZnX2FoYl9iIiwgInJjaG5nX2IiLCAicGlwZV9iIiwKPiArICAgICAgICAgICAg
ICAgICAgICAicGlwZWRpdjJfYiI7Cj4gKwo+ICsgICAgICByZXNldHMgPSA8JmdjYyBHQ0NfUENJ
RV8zQV9QSFlfQkNSPiwKPiArICAgICAgICAgICAgICAgPCZnY2MgR0NDX1BDSUVfM0FfTk9DU1Jf
Q09NX1BIWV9CQ1I+LAo+ICsgICAgICAgICAgICAgICA8JmdjYyBHQ0NfUENJRV8zQl9QSFlfQkNS
PiwKPiArICAgICAgICAgICAgICAgPCZnY2MgR0NDX1BDSUVfM0JfTk9DU1JfQ09NX1BIWV9CQ1I+
Owo+ICsgICAgICByZXNldC1uYW1lcyA9ICJwb3J0X2EiLCAicG9ydF9hX25vY3NyIiwgInBvcnRf
YiIsICJwb3J0X2Jfbm9jc3IiOwo+ICsKPiArICAgICAgcG93ZXItZG9tYWlucyA9IDwmZ2NjIEdD
Q19QQ0lFXzNBX1BIWV9HRFNDPiwKPiArICAgICAgICAgICAgICAgICAgICAgIDwmZ2NjIEdDQ19Q
Q0lFXzNCX1BIWV9HRFNDPjsKPiArICAgICAgcG93ZXItZG9tYWluLW5hbWVzID0gInBvcnRfYSIs
ICJwb3J0X2IiOwo+ICsKPiArICAgICAgdmRkYS1waHktc3VwcGx5ID0gPCZ2cmVnX2wzYz47Cj4g
KyAgICAgIHZkZGEtcGxsLXN1cHBseSA9IDwmdnJlZ19sMmM+Owo+ICsKPiArICAgICAgdmRkYS1y
ZWZnZW4wcDktc3VwcGx5ID0gPCZ2cmVnX2wzYz47Cj4gKyAgICAgIHZkZGEtcmVmZ2VuMXAyLXN1
cHBseSA9IDwmdnJlZ19sMmM+Owo+ICsKPiArICAgICAgcWNvbSxsaW5rLW1vZGUgPSA8JnRjc3Ig
MHg1MDAwPjsKPiArCj4gKyAgICAgICNjbG9jay1jZWxscyA9IDwxPjsKPiArICAgICAgY2xvY2st
b3V0cHV0LW5hbWVzID0gInBjaWUzYV9waXBlX2NsayIsICJwY2llM2JfcGlwZV9jbGsiOwo+ICsK
PiArICAgICAgI3BoeS1jZWxscyA9IDwxPjsKPiArICAgIH07Cj4gCj4gLS0gCj4gMi4zNC4xCj4g
CgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCv
jQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
