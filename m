Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46BB1C369D5
	for <linux-phy@archiver.kernel.org>; Mon, 28 Apr 2025 16:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8dFYRCzKfazQIfIKPO+OekRPSuaXC85n8XUVo/2lkW8=; b=CoFI7ROlDEbAew
	x1v2cKpt4wr3bVPKdEZkhhvzCRphq/im5h7FW7eFwWfPTOyMT0o0LW77iw3pUJ1j+wTSyCei4GJI+
	BJQZ5gUG35GqPVMGW2QbLA6Uk3mwv7kPktlAXU7C8UYNqSiishIgzhDD63k/T2uVQlElStYl9HXfB
	uo50aVGOc/XthXqqZzHqdQw4Z0bHgOUq9iWtEjiMI6RTh/CNR6h3+PBZ1fpoEBNTHIgwHhcCU0aCG
	EucnLzFbOwLQ/Zj2PPtRyAiG/UNCxDS6p06RGP2g5VqM/kuiCbmFkhDZVIllfSUzAgtmkGKYQGme6
	xMos6I7sjrP0OZQknB8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9Ro3-000000070JD-3Vc7;
	Mon, 28 Apr 2025 16:58:11 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9Ro1-000000070Hp-1bom
	for linux-phy@lists.infradead.org;
	Mon, 28 Apr 2025 16:58:10 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53SADbuT021241
	for <linux-phy@lists.infradead.org>; Mon, 28 Apr 2025 16:58:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7KOxMBghG49ujEPEi5RVfYFnHI2kUQYWCNuShHnCHt0=; b=IdOZ+oVs0lC3myS9
	Q+wyYiXJ1NOdOBa7GQCV6l1OYUz2b74IR/nf8eStr4rcOFCkQ42p5fT8NbpUZfB/
	GVacD/X39+RbHfiiM+WoEhFsEvLyea/Q6dNGxbdEvxA57b+csH+Fy2wwRHVmczDi
	lvK9PacmAt/erHVoMr7PTbaQs+lnZKgvqpjOCQs0SFfm1er6C58xnSnywj2h3SA1
	eD+H9WgAdzwNmUklxeIXkO/dmIiB3eJHe9PrwvzlS2i0t8wZtcvU77B9GW0+zPZ6
	HQOia46uxqe/Lr5yjiOW6toguxmCccxYbPxNN/BCtca8Uz+UZR1ZHYT0IkeEjw90
	cJhQTg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468pg99v99-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 28 Apr 2025 16:58:08 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5f3b94827so753146785a.0
        for <linux-phy@lists.infradead.org>; Mon, 28 Apr 2025 09:58:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745859487; x=1746464287;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7KOxMBghG49ujEPEi5RVfYFnHI2kUQYWCNuShHnCHt0=;
        b=NuTO6O5mpr2qoCf+1HAPZmno2DH6D+Tcpc+TN8Zf/UiiAHWEmHEjRE5qSkHxiFISpm
         fdz9Ft9SlT5WMsfh6W9BPHCVPBhoVnQ4Uwyw2gGub/oGkvvxrZDKyJdolMLGZqEuzY21
         Y7np5JSmmwzXsD2hGg+h85RMVU3fNEJjE0h4bMoB4aW/MAOo+YA4TsoaVyF5F9/EZjp7
         hFW3TQT1tv81hknuIBPbTjMr3JPYG8gkVKislfCXFRBQ0rQ+dWYRuqf6x9Cf6IrtttTo
         65Xq5CwTD4NDbGJ3J70Ne/li/4D8IN5cm+6jSADa5DxNxAz4R/pqmJYbRztGLHxw8Zai
         aeNg==
X-Forwarded-Encrypted: i=1; AJvYcCVkYsQYjFS6Ph8hdA5Jv20V3sOpL/FVZcDLVnoLKPdnjNEc8fNn1OISuyTLpsm4KJbTR6Z+44yYq9Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy8Y1ukaZCxDHy3RjGZfERWi777fYAGOmPyyvFKNP0gDGt2zJ4m
	P7+eWFCARZ3SmrSIMzxxIgfuMzRcTrnQDmirrDI4zy5w/EoZBwfSw/cLMWw8wrB5GyItBo3tjCn
	e4NNufdTbn517G5/lF2zMqLfimMzSaK2R7Um8zr+KWhw9e/rE3DaQL1oSXeFYH1R9
X-Gm-Gg: ASbGnct+9etLuRcNT4DUVwxGSex5GjS053mZYIntyQH/OFTwNun7We/tu+FdE7AFzHV
	Ie9v+fRsGsGpXhoSZOYOSF2v93In+cuo12R6u5HZigoe2RmBIgWjMj6S88Tk19t1AmX6EDGtmKV
	Cm4GLKOHS9gPxqn0oAauCIiKEXtTqbXIJTdY+GM3j74EMBpQc6cLUM0aS4GIktDcZaZZKBE6tgR
	Wz4LXOgRe2KSio/AMMcrk81EJWTlN3DQPjMiKPoYO9yqjWeS1AZaa8t2/63p2sut9JCQWevKxwR
	IPvYDjYj93v1Pfch02uUafT+Y1M8NdRGEBupJiXwuTijHmSqKKQf3kvR1hdw4FlMae0FgYw1GeU
	=
X-Received: by 2002:a05:620a:c4e:b0:7c5:5206:5823 with SMTP id af79cd13be357-7c9619a705emr1660615985a.29.1745859487308;
        Mon, 28 Apr 2025 09:58:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEqSjKGgWl7wO2D1jUzkAaf6173SfIpCBSxDl8zqFf4Wh+1t30kDQ1gRmiZSs91e63VpqiPUQ==
X-Received: by 2002:a05:620a:c4e:b0:7c5:5206:5823 with SMTP id af79cd13be357-7c9619a705emr1660610985a.29.1745859486767;
        Mon, 28 Apr 2025 09:58:06 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cca8d8esm1682584e87.176.2025.04.28.09.58.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Apr 2025 09:58:05 -0700 (PDT)
Date: Mon, 28 Apr 2025 19:58:04 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: abel.vesa@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        kishon@kernel.org, krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        robh@kernel.org, sfr@canb.auug.org.au, vkoul@kernel.org
Subject: Re: [PATCH v2 2/2] phy: qualcomm: phy-qcom-eusb2-repeater: rework
 reg override handler
Message-ID: <n5z5atbxkwqllni6cgygcw5nn7z4w3yjznhpkaajw6tggenxb3@kxpk2e6vmvlj>
References: <q6zqfk3l2khp3tkodxd4pzhufiesyjcypl66zoqzslolwoveyo@ltrw2iulrkqs>
 <20250426081424.422590-1-mitltlatltl@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250426081424.422590-1-mitltlatltl@gmail.com>
X-Authority-Analysis: v=2.4 cv=ZpvtK87G c=1 sm=1 tr=0 ts=680fb3a0 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=P-IC7800AAAA:8 a=NEAV23lmAAAA:8 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=hVKwd-R3O5YvdfgKfvwA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=d3PnA9EDa4IxuAV0gXij:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: xsyqMRbnhzRkZSgtJXeXkAZIc1lTlUM1
X-Proofpoint-GUID: xsyqMRbnhzRkZSgtJXeXkAZIc1lTlUM1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI4MDEzNyBTYWx0ZWRfX68vC/4HClKw+ p/UNkz6XjQn7zTihSz1/JesIsdLnl2urxoctPPdM4EzOPXPyGNMftg8inX1yIKJuRicMYmre4EZ vIjJVqaE/GQVUwhXM53ibSPDt41Earf4jznqaighP88FQWuveUESMYOGJ8YYdzkxQBnF4W4Lg6a
 r43C1ibuEdeZnUE9miA2DxQXUk2XoaAmE8lfDRhDBikKyTYogkmg82PVK42IELUdSuGNZMApQUD bTC7FgQG6uok3ukxr6Xc5T390yJU+e1456sYGpMN6KkeZav+ASSXTT1moZivVuf7FnBKfSFYHHR HGp2rFJKuERzF7h8SfObts/lwvpOK+dwrl1YDms1tcb7t2MPkQyfenj5wUUNvRVnPpLftNUrp8g
 Dq1ISqIZxTRhJYi8WE6LMqvvAyaZ30FED3AbYslq/2xjnNftUXVM7AA93tBbw/23IWjQaRMK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-28_06,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 impostorscore=0
 mlxscore=0 bulkscore=0 mlxlogscore=999 malwarescore=0 adultscore=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504280137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250428_095809_549838_B24741B2 
X-CRM114-Status: GOOD (  29.57  )
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

T24gU2F0LCBBcHIgMjYsIDIwMjUgYXQgMDQ6MTQ6MjNQTSArMDgwMCwgUGVuZ3l1IEx1byB3cm90
ZToKPiBPbiBTYXQsIEFwciAyNiwgMjAyNSBhdCAzOjQx4oCvQU0gRG1pdHJ5IEJhcnlzaGtvdiA8
ZG1pdHJ5LmJhcnlzaGtvdkBvc3MucXVhbGNvbW0uY29tPiB3cm90ZToKPiA+IE9uIFdlZCwgQXBy
IDE2LCAyMDI1IGF0IDA4OjAyOjAxUE0gKzA4MDAsIFBlbmd5dSBMdW8gd3JvdGU6Cj4gPiA+IElu
IGRvd25zdHJlYW0gdHJlZSwgbWFueSByZWdpc3RlcnMgbmVlZCB0byBiZSBvdmVycmlkZGVuLCBp
dCB2YXJpZXMKPiA+ID4gZnJvbSBkZXZpY2VzIGFuZCBwbGF0Zm9ybXMsIHdpdGggdGhlc2UgcmVn
aXN0ZXJzIGdldHRpbmcgbW9yZSwgYWRkaW5nCj4gPiA+IGEgaGFuZGxlciBmb3IgdGhpcyBpcyBo
ZWxwZnVsLgo+ID4KPiA+IEl0IHNob3VsZCBiZSBub3RlZCB0aGF0IHByZXZpb3VzbHkgYWxsIHZh
bHVlcyB3ZXJlIGFwcGxpZWQgZHVyaW5nIF9pbml0Cj4gPiBwaGFzZSwgYmVmb3JlIGNoZWNraW5n
IHRoZSBzdGF0dXMgZXRjLiBOb3cgdGhlIG92ZXJyaWRlcyBhcmUgcHJvZ3JhbW1lZAo+ID4gZnJv
bSB0aGUgc2V0X21vZGUuIFNob3VsZCB5b3Ugc3RpbGwgcHJvZ3JhbSBzYW5lIGRlZmF1bHRzIGF0
IHRoZSBpbml0Cj4gPiBzdGFnZSB0b28/Cj4gPgo+IAo+IEkgdGhpbmsgcHJvZ3JhbW1pbmcgaW4g
c2V0X21vZGUgaXMgb2suIFdoZW4gd2UgaW5pdChkd2MzX2NvcmVfaW5pdCksIHdlCj4gc2V0X21v
ZGUoZHdjM19jb3JlX2luaXRfbW9kZSkgbGF0ZXIsIHBsZWFzZSBjaGVjawo+IGh0dHBzOi8vZWxp
eGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2LjE0LjMvc291cmNlL2RyaXZlcnMvdXNiL2R3YzMvY29y
ZS5jI0wyMjg3CgpZZXMsIGJ1dCB0aGF0IGhhcHBlbnMgYWZ0ZXIgcmVhZGluZyBzdGF0dXMgcmVn
cywgZXRjLgoKPiBBY3R1YWxseSwgaW4gdGhlIGRvd25zdHJlYW0sIGFsbCB0aGUgdGhpbmdzIGFy
ZSBkb25lIGluIGluaXQsIGl0Cj4gb3ZlcnJpZGVzIGZpcnN0LCB0aGVuIG1hc2tlZCB3cml0ZSB0
aGUgZGVhdWx0cywgZmluYWxseSBpdCBzZXRfbW9kZSwKPiB5b3UgY2FuIGNoZWNrIGhlcmUKPiBo
dHRwczovL2dpdGh1Yi5jb20vT25lUGx1c09TUy9hbmRyb2lkX2tlcm5lbF9vbmVwbHVzX3NtODY1
MC9ibG9iL29uZXBsdXMvc204NjUwX3ZfMTUuMC4wX3BhZF9wcm8vZHJpdmVycy91c2IvcmVwZWF0
ZXIvcmVwZWF0ZXItcXRpLXBtaWMtZXVzYjIuYyNMMzU2CgpJJ2Qgc3RpY2sgdG8gdGhpcyBhcHBy
b2FjaCB0b28uIFByb2dyYW0gZXZlcnl0aGluZyBpbiBpbml0LCB0aGVuCnByb2dyYW0gbW9kZS1k
ZXBlbmRlbnQgcmVncyBpbiBzZXRfbW9kZS4KCj4gCj4gPiBCVFcsIGlzIHRoZXJlIGEgcmVhbCBu
ZWVkIHRvIG92ZXJyaWRlIHRob3NlIGZvciB0aGUgcGxhdGZvcm0geW91IGFyZQo+ID4gd29ya2lu
ZyBvbj8gQ291bGQgeW91IHBsZWFzZSBwcm92aWRlIHNvbWUgZGV0YWlscywgbWF5YmUgaW4gdGhl
IGNvdmVyCj4gPiBsZXR0ZXIuCj4gCj4gSSBhbSBub3QgcXVpdGUgc3VyZSwgcmVjZW50bHksIEkg
ZXhwaXJlbmNlZCBtb2RlIHN3aXRjaGluZyBmYWlsdXJlLAo+IHdoZW4gSSBgZWNobyBkZXZpY2Ug
PiAvc3lzL2tlcm5lbC9kZWJ1Zy91c2IvYTYwMDAwMC51c2IvbW9kZWAsIEV0aGVybmV0Cj4gR2Fk
Z2V0IHdvdWxkbid0IHdvcmsgYWdhaW4sIG15IGRlc2t0b3AgY2FuJ3QgY29ubmVjdCB0byBpdC4K
CkRvIHlvdSBoYXZlIGF0IGxlYXN0IGEgbGlzdCBvZiB0aGUgcHJvcGVydGllcyAvIHJlZ2lzdGVy
cyB0aGF0CmRvd25zdHJlYW0gcHJvZ3JhbXMgb24geW91ciBwbGF0Zm9ybT8gSSBtZWFuLCBpdCdz
IG5vdCBpbmZyZXF1ZW50IHRoYXQKdmVuZG9yIGtlcm5lbCBpcyBtb3JlIHZlcnNhdGlsZSB0aGFu
IG5lY2Vzc2FyeSwgYXMgaXQgaXMgYmVpbmcgdXNlZApkdXJpbmcgYnJpbmd1cCAvIGV0Yy4gSSdk
IHN1Z2dlc3QgdG8gbGltaXQgc3VwcG9ydGVkIG92ZXJyaWRlcyB0byB0aG9zZQpuZWNlc3Nhcnkg
Zm9yIHlvdXIgcGxhdGZvcm0gKGFuZCBhZGQgYSBjb21tZW50IHRoYXQgdGhlcmUgd2VyZSBvdGhl
cgphdmFpbGFibGUpLgoKPiAKPiBCVFcsIGFzIHlvdSBjYW4gc2VlIGluIGxpbmUgMzU2LCBpdCBp
cyBtb3N0IGxpa2VseSB0aGF0IG92ZXJyaWRlcwo+IHJlbGF0ZWQgdG8gY2hhcmdpbmcgZmVhdHVy
ZS4gSSBoYXZlIG5vdCBwb3J0ZWQgY2hhcmdpbmcgeWV0LCBidXQgYWRkaW5nCj4gbW9yZSBvdmVy
cmlkZXMgc2VlbXMgaGFybWxlc3MsIGFuZCBpZiBvdmVycmlkaW5nLCBkaXN0aW5ndWlzaGluZyB3
aGljaAo+IG1vZGUgc2VlbXMgbmVjZXNzYXJ5LCBldmVuIGlmIHNvbWUgZGV2aWNlcyB1c2UgdGhl
IHNhbWUgc2VxdWVuY2UuIFNvIEkKPiBzZW50IHRoZSBwYXRjaC4KPiAKPiBCZXN0IHdpc2hlcywK
PiBQZW5neXUKPiAKPiAtLSAKPiBsaW51eC1waHkgbWFpbGluZyBsaXN0Cj4gbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKPiBodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkKCi0tIApXaXRoIGJlc3Qgd2lzaGVzCkRtaXRyeQoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
