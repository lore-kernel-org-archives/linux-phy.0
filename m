Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69541CA5FA1
	for <linux-phy@archiver.kernel.org>; Tue, 29 Sep 2026 10:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=foO2vZUXlNJs/dQLHwGddB+KC9WgEeEjZLp11VehFVg=; b=4vwPex2gEKiZ+G
	xpGx+u2RNn+4sw8V6pLC0aw5FY4tX8L7Bv3zoSmMESJ8XVTlirM5/czaLwBfK0LizQ8qfGNul4gGN
	iq+E/7ay1dSctw/6maBLQxFCwKWMnvzn5EXcOjODngotuYN52SyKLkVFh+oxFf6QBCjtSXCr8P1tT
	wp+FMRfnJXQTTXvI8VG4cspj5iXEcYtT7CdA3P8sVHnx0LdeewjJOh2+o5JED8/kzedbezBX7lGxp
	V7Ef1VgKvezy1psTZtx0O8bHxy7zojzTvN5dCz8S1twQZTh/7WyIm/tsiklyY4AS5MVu1RW7Lnhfj
	PSxZee2S3SILVKwxKM9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBVPI-00000003Jsw-3vJB;
	Tue, 29 Sep 2026 10:49:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBVPG-00000003JsI-3uL8
	for linux-phy@bombadil.infradead.org;
	Tue, 29 Sep 2026 10:49:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=SGYRi0hqFtpQeL566b6/F5werlBt/r9sl8eXWumcCs8=; b=m2LM/TLhMqCSIUhYNZF8cTKSyQ
	UZxwdc4C/yWt7AkvSBOUvpzvbvqf6hfPnAxA6eiII3eXfl+gaz64rXLFn0k0adPp7tq/p/gxaz/yP
	fgHJD0FPPxIjLIC3ahCAFORiLRpncF0HW5V1AFjPk/0watqY7j57L4DLO+dB+I/Qa38qQUC1ZXo1K
	rGL7U4b1b+SBtaHYTS0C9KzLKDNTQKovX4oomh/ruuI+tV6U9TyBtLv9h9GBUPSPA9tQghjkc3HgH
	K1aOzXeNv3w1ashRKKVcFUpepM15bMNlKyFFsoT7X61mJSAp+R4jx5SEgJT/a44gmIoInGrcdO3KU
	m6yyAfIw==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xBVPD-00000002WKZ-0PXJ
	for linux-phy@lists.infradead.org;
	Tue, 29 Sep 2026 10:49:53 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68TAjIW84118908
	for <linux-phy@lists.infradead.org>; Tue, 29 Sep 2026 10:49:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SGYRi0hqFtpQeL566b6/F5werlBt/r9sl8eXWumcCs8=; b=pZw8GiML1qPDPMG5
	zudI4T4YM5tutdt73UHz/FWZPCeXfJuzD0D+1vH8Qo5cGNTtiX2l38i4M87uGuNa
	i2uhFjwGrtNw5AwBYbjvavIJy6VmWAGu5E2+r0LK64WSKWkhGay+M+UaRcDnH4OJ
	kj7RtBfnzPWocfT+Sllc8cPinbhkF8TIeDtgRbEIZaV1HYQEok6r0E0ttsjTs6+9
	9lzsU+9Ike3iqnqTqLaqPPiZAXKGo5S/fJ1NOyPlaYyZWYOqpLcX3ApIJc7F5yhT
	oyQFdwrjnNUXYJtAtSdQGxfCqD4M9dNCQlH+X5IWRi+1qLHLG3Kjv361v9EB/kin
	+e8hgA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h0144thnd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 29 Sep 2026 10:49:46 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3a47a81e70bso1720636a91.0
        for <linux-phy@lists.infradead.org>; Tue, 29 Sep 2026 03:49:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1790678985; cv=none;
        d=google.com; s=arc-20260327;
        b=PELyQ77fy1svhgj6W+lgRs6afmPfjRMbSxTY8EWZ90sF7VB1J1GhGUQW09g4md0wFL
         lEl/CJ6dMgpYl4pIQ7BE1EZsYf3tHsfvXGEd4a7bsbyySMto/AX4yTKmhrvI/iIHAqGJ
         T+j+bfbjF4+NvgpXGO6cWd7Ult3vdhk7IBdpdHIVsNTW58ubHC0e4wDX+oOOkG7FmShc
         QkbOIxToRxDKb2R6HMVc5xy15mX/fmZw5jt7JoENiHHwABBKpN6gAtRJItFUquTKvq48
         ad7c8GX78g6RWxkW9Gh4xUGzucDutmJ7dXauPyiBrt6uOryxZLrMRrvxU4/UpB0MXjar
         QNnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=SGYRi0hqFtpQeL566b6/F5werlBt/r9sl8eXWumcCs8=;
        fh=Ba+omDGayNwRlsxPo15K1XLxP9F2y5h9C+6aKnYq5Ec=;
        b=iBkuTke8crQz6WsgDG6fCaI7qBM2c+S34+UAP+4oTS/bMv060pxDSDRRtzUyEitZcC
         NK5Qwu2YZk1kin3fPmm/ZvzLpCxkz3NWyFegSwwel3W4qc9JgevVWTECZ+Ir3QXZhl3/
         C6y163oYL1dZ0IA5jXIDW6GisGcOK1eX7+YfK2buVJmezaoPHYOqz3O4Ikm8qq0iSp/m
         it3LBmQVjImnkmdkxDeSrSq3OLjANJ4W7uKx3Ws6RP1EpVNGjlINkG5UeqvclNUT9hZo
         p4dn+LZaJqOLEyBcSUkYPdY41W7ufgVqkKmdBQGt0jRzogzWMMRBYbNg0TTBteEvpDKK
         eAog==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790678985; x=1791283785; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=SGYRi0hqFtpQeL566b6/F5werlBt/r9sl8eXWumcCs8=;
        b=NaI/I0m4xPSjOWQrOf5KY6UlW1uu17QBs+OIwz9roU2eoeLgo1z0fWarqf3izKtIa/
         74TP4sn4WCPb3NO6yGFIBbEVAXsWKW2kdFIvDXHucvi8MQbCcdJq0R55ucEoQvwUZxft
         Gwvcy6hae7qRrSSOq+zwLDAZVO6p3HpuOzi6JeJR2YlPTLMoZGLEaEgGwdJhTAyQqbjc
         JjqMpsJN9dZVQQxvO+EGM/IxInMaiRJJZLL6dOKwPy/jDDvVB23W68YvznM8XaM0Uyv8
         sUIYg+ROyoDAg6L5BA5qbjRWxq+uUkGn41xR7flkqa7bkLUSpCc0PXAi+7JClWGp7Dyi
         /+LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790678985; x=1791283785;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SGYRi0hqFtpQeL566b6/F5werlBt/r9sl8eXWumcCs8=;
        b=GJUINLxaqALXO5WyMPaRc/KsZwL8bmorDK50F/u3Rbglx7u40eoHSZRmjT1yeC5V+D
         bl3xWqzLg+DwiMOB52XeXSD6fLRXL9pxY5u1tDgWIGQoKcoTCKorgpEfpbsMeppXqeLm
         fn7N7HdF1Xz1RTmeMfIykDTe4yg/4v1VCPAt0GSdOAOND/Lg7vgct/ClUuMSFZpLbCIo
         hxOAVR6sLSdBD2FA5PiMlWhHJipYT2ojRH0Otn3oNbTx9j7MyCx05WmuCBJsSy790UaD
         Dt5v+Vb181lMCrnm7DVOeCHZjDQtvlzMTzKm4qAt6IOf0dMO5Ues/EW36z4nzF3OdtXZ
         +zYA==
X-Forwarded-Encrypted: i=1; AKwUvBziluQkWBPqgOWYOE7ACToPvSLlHuZtSR2IN2xUgSb1NLOY+9Hf6IsjNBTGEOw20M/I1SpMZsUFunU=@lists.infradead.org
X-Gm-Message-State: AFq9FYKQ1ifBj6wJY5sWHFhJqCFyw2l03I3D83pmWTByqlDjPPTx+WbS
	MZwSginCja2cyv44l3KZ0Y7gY8An0HU0N8avR+QcLIUwnD8IqabiRDRy313w1IsC3VIzhGkDDLe
	UWc1q2UByC4/vRhYKC0vrjUZgHgD2yIiDEJOn24s0Ia7Fml0/Fai6kgEFlRbWiULm2B8+g/8q3Q
	Q3vgk+eGhDMXQeQg2iz6iiEvZC8KhVjmuTMI1W6QFKkT0=
X-Gm-Gg: AYBFou0AZKGX2MPS2CVfNOeRKZkSoSm1D0ew6YS85Y8jdojb6ZT9NfuAQrk3dHQJQA9
	NVKy9jh17gY3ILdn9KGZ/Umm2w5b8G8Gg98DA1vxBG0/FgsouY5xIxvYUJrPseSt7jAmYyYaOmb
	wxk1Q61gyo4z2y9vUg1/nh14tYhKDdowhg3AmPuKQ5Frghxc5HQMIKbKtN0A==
X-Received: by 2002:a17:90b:4c4c:b0:3a0:c135:3e5e with SMTP id 98e67ed59e1d1-3a0c1355d67mr10311388a91.27.1790678985369;
        Tue, 29 Sep 2026 03:49:45 -0700 (PDT)
X-Received: by 2002:a17:90b:4c4c:b0:3a0:c135:3e5e with SMTP id
 98e67ed59e1d1-3a0c1355d67mr10311373a91.27.1790678984858; Tue, 29 Sep 2026
 03:49:44 -0700 (PDT)
MIME-Version: 1.0
References: <20260923-nord_ethernet_serdes-v1-0-f8ac1c487882@oss.qualcomm.com>
 <CAFkd8hvoUi3dyff8w72pmRHce0XDNUepCsR=1gtimFMgA6gmBQ@mail.gmail.com> <20260928-steel-hornet-of-kindness-aa5e2f@quoll>
In-Reply-To: <20260928-steel-hornet-of-kindness-aa5e2f@quoll>
From: Zhangfei Gao <zhangfei.gao@oss.qualcomm.com>
Date: Tue, 29 Sep 2026 18:49:33 +0800
X-Gm-Features: AclHuK8lK5qr26yCIDEnhIRFlV9znH4XanXV1TnOvthhB38ZY0UIVpeLTmtUFHA
Message-ID: <CAFkd8hs6H-WT6C2Nzns2jB1yHq1CfODijAX1VbMxUUAe7zH6Rg@mail.gmail.com>
Subject: Re: [PATCH 0/3] phy: qcom: sgmii-eth: add Nord USXGMII support
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Lorenzo Bianconi <lorenzo.bianconi@oss.qualcomm.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI5MDA0MyBTYWx0ZWRfX/nxY2rbeyomQ
 rP7HFQbofuE8//hrepzbt4DCiK11V0/L3qDdkOg7NXBUT6JugW2gcyI95xperZmAZHi+STrW3B2
 V8YMXXrp2U1iiKCveKh5W1v09WStoEZ5ldvUggrMPH5viDvLT+baZI0FF/qgQFQfMV6fE3MtaJ2
 83Kn2mpD9oNqsZn4vTpLVgY6m2xdRkgLe/Ohs8FuDmilr2LMCff2jmpNMp/qP4aaphpHylO4XLp
 SPmZ4OMKKOesx2Eg39HkEVwAwqy7cuxGw8/YYE1fSJpvzS5WNVPEsGrSBXtFY47oRJtauvAmQa7
 sD1CncSlj0dbqz/eSWd8H6oywejXGU85vM/z/iTaQvZFkG/4JUa4VjT1+Wuvu4YeAjmhim5QkD2
 cclgUcXjfuattUtxXeY01cMzeyqmkqfD1EGz0TpJSh1ibKyeW6m3CDq8cDiy4AqkUyLw1T3ewZr
 jqcHtT1PMRbGehb3DAA==
X-Authority-Analysis: v=2.4 cv=FJSOVOos c=1 sm=1 tr=0 ts=6abb97ca cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=ZpdpYltYx_vBUK5n70dp:22 a=NEAV23lmAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=SRrnDWHc4gHVzc1XPIAA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: c9V30peje8YOPVhvBWRI4lEUTz1Q-KkP
X-Proofpoint-GUID: c9V30peje8YOPVhvBWRI4lEUTz1Q-KkP
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI5MDA0MyBTYWx0ZWRfX300QGnj5r3sc
 GzzLhobV1SPJP0FsMTSFBJgRwAeBnsF/J7r4NJtc+hCAYf8i4+Fk+NXlP+5uRGPtXN0MiteHvW1
 u0DCj+W62SK4R97M4S9nrgnaxm3EdDI=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-29_04,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 clxscore=1015 malwarescore=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 suspectscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609290043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_114951_913671_C55E1D08 
X-CRM114-Status: GOOD (  31.60  )
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

SGksIEtyenlzenRvZgoKT24gTW9uLCBTZXAgMjgsIDIwMjYgYXQgNjoxOeKAr1BNIEtyenlzenRv
ZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBXZWQsIFNlcCAyMywg
MjAyNiBhdCAwNDo1ODowM1BNICswODAwLCBaaGFuZ2ZlaSBHYW8gd3JvdGU6Cj4gPiBPbiBXZWQs
IFNlcCAyMywgMjAyNiBhdCA4OjA04oCvQU0gTW9oZCBBeWFhbiBBbndhcgo+ID4gPG1vaGQuYW53
YXJAb3NzLnF1YWxjb21tLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+IFRoaXMgc2VyaWVzIGFkZHMg
c3VwcG9ydCBmb3IgdGhlIEV0aGVybmV0IFNlckRlcyBmb3VuZCBvbiB0aGUgUXVhbGNvbW0KPiA+
ID4gTm9yZCBTb0MuCj4gPiA+Cj4gPiA+IE5vcmQgdXNlcyBhIFFNUCB2NyBTZXJEZXMgYmxvY2ss
IHdoaWNoIGlzIGFuIHVwZGF0ZWQgdmVyc2lvbiBvZiB0aGUKPiA+ID4gU0dNSUkgU2VyRGVzIFBI
WSBJUCBhbHJlYWR5IGhhbmRsZWQgYnkgcGh5LXFjb20tc2dtaWktZXRoLiBUaGUgZHJpdmVyCj4g
PiA+IGN1cnJlbnRseSBzdXBwb3J0cyB0aGUgMS4yNSBHYmF1ZCBhbmQgMy4xMjUgR2JhdWQgY29u
ZmlndXJhdGlvbnMgdXNlZCBieQo+ID4gPiBTR01JSSwgMTAwMEJBU0UtWCBhbmQgMjUwMEJBU0Ut
WC4gTm9yZCBhZGRpdGlvbmFsbHkgcmVxdWlyZXMgdGhlIFNlckRlcwo+ID4gPiB0byBvcGVyYXRl
IGF0IDEwLjMxMjUgR2JhdWQgZm9yIGl0cyAxMCBHaWdhYml0IEV0aGVybmV0IGludGVyZmFjZXMu
Cj4gPiA+Cj4gPiA+IFRoZSBzZXJpZXMgY2FuIGJlIGJyb2FkbHkgZGl2aWRlZCBpbnRvIHRocmVl
IHBhcnRzOgo+ID4gPgo+ID4gPiAgIDEuIEFkZCB0aGUgcWNvbSxub3JkLWR3bWFjLXNnbWlpLXBo
eSBjb21wYXRpYmxlIHRvIHRoZSBiaW5kaW5nLgo+ID4gPiAgIDIuIFByZXBhcmUgdGhlIGRyaXZl
ciBmb3IgUEhZIG1vZGVzIHdoaWNoIHJlcXVpcmUgZGlmZmVyZW50IFNlckRlcwo+ID4gPiAgICAg
IHByb2dyYW1taW5nIGFuZCByZWFkaW5lc3MgY2hlY2tzLiBFeGlzdGluZyBTQTg3NzVQIGJlaGF2
aW91ciBpcwo+ID4gPiAgICAgIHVuY2hhbmdlZC4KPiA+ID4gICAzLiBBZGQgdGhlIFFNUCB2NyBy
ZWdpc3RlciBkZWZpbml0aW9ucywgMTAuMzEyNSBHYmF1ZCBwcm9ncmFtbWluZwo+ID4gPiAgICAg
IHNlcXVlbmNlIGFuZCByZWFkaW5lc3MgY2hlY2tzIHJlcXVpcmVkIGZvciBVU1hHTUlJIGFuZCAx
MEdCQVNFLVIuCj4gPiA+Cj4gPiA+IFRoZSBjaGFuZ2VzIGhhdmUgYmVlbiB0ZXN0ZWQgb24gdGhl
IE5vcmQgUmlkZSBTWCBwbGF0Zm9ybSwgd2hpY2ggaGFzIGEKPiA+ID4gTVYtUTYyMjMgc3dpdGNo
LCBydW5uaW5nIGluIGZpeGVkIGxpbmsgVVNYR01JSSAxMEcgbW9kZS4KPiA+ID4KPiA+ID4gU2ln
bmVkLW9mZi1ieTogTW9oZCBBeWFhbiBBbndhciA8bW9oZC5hbndhckBvc3MucXVhbGNvbW0uY29t
Pgo+ID4gPiAtLS0KPiA+ID4gTW9oZCBBeWFhbiBBbndhciAoMyk6Cj4gPiA+ICAgICAgIGR0LWJp
bmRpbmdzOiBwaHk6IHFjb20sc2E4Nzc1cC1kd21hYy1zZ21paS1waHk6IGFkZCBOb3JkIGNvbXBh
dGlibGUKPiA+ID4gICAgICAgcGh5OiBxY29tOiBzZ21paS1ldGg6IHByZXBhcmUgZm9yIGFkZGl0
aW9uYWwgUEhZIG1vZGVzCj4gPiA+ICAgICAgIHBoeTogcWNvbTogc2dtaWktZXRoOiBhZGQgTm9y
ZCBVU1hHTUlJIHN1cHBvcnQKPiA+ID4KPiA+ID4gIC4uLi9iaW5kaW5ncy9waHkvcWNvbSxzYTg3
NzVwLWR3bWFjLXNnbWlpLXBoeS55YW1sIHwgICAxICsKPiA+ID4gIGRyaXZlcnMvcGh5L3F1YWxj
b21tL3BoeS1xY29tLXFtcC1wY3Mtc2dtaWkuaCAgICAgIHwgICA1ICsKPiA+ID4gIGRyaXZlcnMv
cGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1xc2VyZGVzLWNvbS12Ny5oIHwgICAyICsKPiA+ID4g
IC4uLi9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXFzZXJkZXMtdHhyeC12Ny5oICAgIHwgICA5
ICsKPiA+ID4gIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXNnbWlpLWV0aC5jICAgICAg
ICAgIHwgMjI2ICsrKysrKysrKysrKysrKysrKy0tLQo+ID4gPiAgNSBmaWxlcyBjaGFuZ2VkLCAy
MTkgaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25zKC0pCj4gPiA+IC0tLQo+ID4gPiBiYXNlLWNv
bW1pdDogYThjNTkxZWQ2YjY3MjkxNWUwYmU1Nzg0M2Y5NDNhMmE3MjNhZmY0MAo+ID4gPiBjaGFu
Z2UtaWQ6IDIwMjYwOTIzLW5vcmRfZXRoZXJuZXRfc2VyZGVzLWM0ODZmNzE1ZjM4Mwo+ID4gPgo+
ID4gPiBCZXN0IHJlZ2FyZHMsCj4gPiA+IC0tCj4gPiA+IE1vaGQgQXlhYW4gQW53YXIgPG1vaGQu
YW53YXJAb3NzLnF1YWxjb21tLmNvbT4KPiA+ID4KPiA+Cj4gPiBHb29kIEpvYu+8jAo+ID4KPiA+
IFRlc3RlZC1ieTogWmhhbmdmZWkgR2FvIDx6aGFuZ2ZlaS5nYW9Ab3NzLnF1YWxjb21tLmNvbT4K
Pgo+IFRoaXMgaGFzIHRvIHN0b3AuCj4KPiBXaHkgYWdhaW4gYWRkaW5nIGZha2UgdGVzdGluZyB0
byB0aGUgYmluZGluZ3M/IFlvdSBjYW5ub3QgcmVwbHkgdHdpY2U/ClJlcGx5IHR3aWNlIHNpbmNl
IEkgdGhvdWdodCB0aGV5IGFyZSB0d28gZGlmZmVyZW50IHBhdGNoIHNldCwgb25lIGlzIHBoeSwK
dGhlIG90aGVyIGlzIG5ldCwgd2hpbGUgbmV0IG1haW50YWluZXIgc2FpZCB0aGF0IGlzIHRvbyBl
YWxyeSBmb3IgcmZjLgoKVGhlIHRlc3RlZCBicmFuY2ggaXMKaHR0cHM6Ly9naXRodWIuY29tL3po
YW5nZmVpLWdhby9rZXJuZWwtdG9waWNzL3RyZWUvbmV4dC05LjIzICggYW5kCjkuMjQtZXRoKSwg
YW5kIG1heSBrZWVwIHRlc3RpbmcgZm9yIGVhY2ggY3ljbGUuCmNvbnRpYW5pbmcgZHRzLCBwaHks
IG5ldCBhbmQgYWxsIHJlcXVpcmVkIHBhdGNoc2V0LCBhc3N1bWluZyBvbmUKaW50ZWdyYXRlZCBi
cmFuY2ggd2lsbCBiZSBlYXNpZXIgZm9yIGludGVyYWwgdHJhY2suClRoZSBkdHMgd2lsbCBiZSBz
ZW5kIGxhdGVyLgpUZXN0aW5nIGhhcmR3YXJlIGlzIHJpZGUgYW5kIHJyZC4KClRoYW5rcwoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
