Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5599F8FA94
	for <linux-phy@archiver.kernel.org>; Tue, 21 Apr 2026 15:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/twuWQkG3jKE6VFPr4Gc5ztYsjqqSw5z/umqBgwZxPE=; b=IWR2fB9s+UNE3L
	qf6yhb1PxNVS8JKbz12vNUnKs0fM164/f0olmpmWLv+2ua5gZiAnKCEme47oXB5LvAUnhjkc6Yflv
	k4OESfAmeKTCHekuV/jHPCzkQVoWh+gDHxSAs/8VACgeJ1aQzSoT1DMiVs0sScqQRc8adhxq4Kneh
	AIVt9Cf+i3sU2G5hKnDXse+TU51Gh95BRL7xppi5GWwHp96cl3NICVfRuJWqHXXXKN+KdsUsXJtXa
	+Jx/9W1Bxs5yjnBis8OAwo7/8itQ8rTPOlyL00QNYjN22FjJ/yhuwtqBAiuwkbk7hMGrPiR9EvRXb
	PV4CwbLlejQRiCzMoGUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFDFq-00000008qba-1XZQ;
	Tue, 21 Apr 2026 15:43:14 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFDFo-00000008qbE-0FIH
	for linux-phy@lists.infradead.org;
	Tue, 21 Apr 2026 15:43:13 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63LALXxj1511252
	for <linux-phy@lists.infradead.org>; Tue, 21 Apr 2026 15:43:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	u5HE/DGbc89CJzO8XqH4Y0bSW5WRIaeIl+JsFKEhiZ0=; b=mJaRA4+mTRDxf0z+
	9ue0/VE1CYRC4wymZqmhVsbJIRPaMQsxiJ4hQMLIn9pKTVe8AmJZ4YdaxrstGFAw
	MYXzt80peyGpMC3d3xBYPBOnsW1+iljhtanftdtEioH39CktTRXNcZ1uQTbheZ0+
	K96SEaBaWecO9xCBU30s9BDTeOcC9hIxTkkDBmDdeWRPBgInWTgXXvYvIUdeX+9D
	DY5CpVBeG7Qduw7s9iz9aCKAb/iL/GqRKV8j+0dWmhPgUmhe+iCy6H/8YM8sOtfr
	kthnWKbVnzgPJNHLWBqVMuE9k8HYKha3SnCkTwgu8SG688xYXZtPx0TwK3KqRYt4
	EPM5cg==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dp2ak2cdv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 21 Apr 2026 15:43:10 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-610503b660bso2321782137.1
        for <linux-phy@lists.infradead.org>; Tue, 21 Apr 2026 08:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776786190; x=1777390990; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=u5HE/DGbc89CJzO8XqH4Y0bSW5WRIaeIl+JsFKEhiZ0=;
        b=DMZEF0F5Jn0gyW3gmrhGlBUD8oJHyehNdMKIrmfTUSo3Lv2rM1Rz7rncS12LGnmQwu
         29vGaB/kPld77jKiR7dqoxnwdyAHMEeegY6xJO8ZIphLeY3x5N/WZRxRYfsRKT77/DaP
         aeto0uRMJcm0s/2WCcgNqT+XgDhGeL/w43LsL78PhqVrYZpt5S0IG6j5oqdKFnNBxRwq
         D1VAUe+r2S8bCB03PhYj1rj0SyIp1PsrM3O5DBNvCvZJ8xvhRn5snIsXxbtmtTgQXmrM
         HyyU56GaXcZcPisWo3kKaveqph8x9NYl8LtA97qUe5M5A9whVoNA8BH7PxjREurphUo/
         rYgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776786190; x=1777390990;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u5HE/DGbc89CJzO8XqH4Y0bSW5WRIaeIl+JsFKEhiZ0=;
        b=fYfL+ZGUWMHEDbFSJHP2x35GvDwwGcF3TPB2dRUxDwSFnP557XvQsdxzLkUl/E61YW
         VlQ9TMHaPzwBzBkAdoIWG9+4KDr6i6DN/VLG+scXX7ibGKcDPZL/LfsddvesnTvIlsJ3
         PxfwuVsJicK3lMnYsAFhziCVzulg3N/a6O49Me1UAVruwkMPDSnhjNHHqP3CaDtUgc1v
         YRhDOO/v3tTmWhcehCDEA4douNu+0Ocj/2lcWLUQzTEU/4fM1fowTWz8SoHd1RN7+aW1
         YAPuq7NhyMNtHamtp60VdoDDng26Om/KIey7m4nNmoUIudgoBZ5weXQFNGfGWktNXopV
         ZaAA==
X-Forwarded-Encrypted: i=1; AFNElJ/ZEd5iM8vvXAtEtCeWo3eNEwJhsyuNr7GKwPncjeG0xXYaRnESphjrlAUm+62jpNnp7Hjo8/wgeZc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwskrNcF2EAsN6ta6EfjT9knPy+/MTic95qACBFBIW8HqWevrsR
	ewge9aJPL7caXeKhIiwNyM3mjr1AxFzrqKS5M59ZZZHTzB9d0cF+28dAyPjziLiRG4CGVbbJlkJ
	FY0JY60uj2Pvp9bXTrIKYIhsv6rij+nEJCFQJrWJ9qD46J3wWYrXSbX+xMZ1HRTPAH21e
X-Gm-Gg: AeBDiet2j5WrvuqgrX291ZYNUqSVz9ESBwCnPRDvwgJo6Cc6UEJfAIhDxuxr9IY4QAu
	DG5yE7+KaHAl/DZcUF5Q+oHel2LhscGi/4gGvZMGtJAaVZBzXUo4/gm7yr2D8TIXVsR/kQeusvx
	ywSd6zFQkql1NO3nGgI17x9hbfOLRmDsob3QCFu1+DeXKJOup3uI/aZGDm4ThM1tre7AFhzVCaQ
	mJs+LzQtXGyaRwjAxWMKIbsi4m9EkDPgolx0yfj7tyH5lTj3rC81Wb3cthF8ha3YElBzJCofAfY
	tsFGG73QeBoRmBx+lJoPgEJFIARmYxg1v8lsuhLd9KLG5e9GD2Ahh6b+puO0p9UE+anRvQO3P7m
	KSHAzh/CXBR1LwY91QuV93THWOEXXbJfzhPDMpulOqwjYj4/sdRkTBZ7TJ9fiVhtQUVhNPuyxmy
	FxeFhzTlByw1I3p+X0f8J+l+Hdy9KYTmVYU7IkY9qRNo19BQ==
X-Received: by 2002:a05:6102:d8a:b0:607:b901:5d71 with SMTP id ada2fe7eead31-616f7c5399dmr7434563137.24.1776786190145;
        Tue, 21 Apr 2026 08:43:10 -0700 (PDT)
X-Received: by 2002:a05:6102:d8a:b0:607:b901:5d71 with SMTP id ada2fe7eead31-616f7c5399dmr7434548137.24.1776786189586;
        Tue, 21 Apr 2026 08:43:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38ecb724929sm30383761fa.32.2026.04.21.08.43.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Apr 2026 08:43:08 -0700 (PDT)
Date: Tue, 21 Apr 2026 18:43:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
Subject: Re: [PATCH v3 1/2] phy: qcom: edp: Add eDP/DP mode switch support
Message-ID: <omz64pyd63daz4cezabx6ckvtqocq5p4zgiwwdxrecyzdtfg4t@26ftjmqlj52c>
References: <20260302-edp_phy-v3-0-ca8888d793b0@oss.qualcomm.com>
 <20260302-edp_phy-v3-1-ca8888d793b0@oss.qualcomm.com>
 <islxoe4wbqx5pl54difetdcl5lrqvfd5ysbaicxz5lv235sfmd@6hwrq3rmqx7c>
 <fffa03f6-82c5-4d87-9a41-19e6f82ec39b@oss.qualcomm.com>
 <vywmtt6p3itkrbnucahzvsh6hpwqbno7al5h5zrqdcf3cejyto@pr4of7o3zdeo>
 <f27b39fc-a6c5-4450-93bc-babb7d6dd9a5@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f27b39fc-a6c5-4450-93bc-babb7d6dd9a5@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=KItqylFo c=1 sm=1 tr=0 ts=69e79b0e cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=VqdVp4WgveevkikIt2YA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-GUID: 2hgQp6nXR6FShT3KgQb5tlJgnwpG-7hl
X-Proofpoint-ORIG-GUID: 2hgQp6nXR6FShT3KgQb5tlJgnwpG-7hl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIxMDE1NiBTYWx0ZWRfX/qO8txGYNoHn
 o2Yy5bQt8ZufHcFcHAbCTea8E7lqi5qQy7JOd9zuphYsAvcHt55JcLvMWruZlAU32B5lc99SlrD
 rRspqSCxbzfi1ie0AgMHY8FnNf6fEJaiJun9q30B7c8uwyOumxUwQ3mp9uLAgNhm6HwFBXTTtpe
 /98LAx5RcnDH7xaphSU9Px/ADdtC14koHlv3shianDENHQ+3xCHWcoujHpwg18T/ORSfX/7aNNA
 oQyHtZXN+e3B7bZaJot6lWMbiQ4c3kNOfMN6s4dDM6rclJ9lGK0lTA5+R5Dm7JaYaaYWsWx7hJ1
 +auM9bcn7iswqRlR1JihwTaqo65p6uq9AhjwPoOvYgJVP1KMIwaYSJ80UhFLfln3qcOqUu8Vvp4
 LuPWg57zgDH2iMxg/vPaLnDAq+AnFrrFYum8ankRgv80xul2uR8S5nDwv8DlmrsoPLS60LtZK+J
 6Z9U8hjW1MKSt80TYmw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-21_03,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 phishscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 suspectscore=0 adultscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2604070000
 definitions=main-2604210156
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260421_084312_216785_8DAC1D58 
X-CRM114-Status: GOOD (  41.56  )
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

T24gVHVlLCBBcHIgMjEsIDIwMjYgYXQgMTA6MzI6NDlBTSArMDgwMCwgWW9uZ3hpbmcgTW91IHdy
b3RlOgo+IAo+IAo+IE9uIDQvMjEvMjAyNiAyOjMyIEFNLCBEbWl0cnkgQmFyeXNoa292IHdyb3Rl
Ogo+ID4gT24gTW9uLCBBcHIgMjAsIDIwMjYgYXQgMDg6NDc6MDlQTSArMDgwMCwgWW9uZ3hpbmcg
TW91IHdyb3RlOgo+ID4gPiAKPiA+ID4gCj4gPiA+IE9uIDMvMjAvMjAyNiAyOjM2IFBNLCBEbWl0
cnkgQmFyeXNoa292IHdyb3RlOgo+ID4gPiA+IE9uIE1vbiwgTWFyIDAyLCAyMDI2IGF0IDA0OjI4
OjI5UE0gKzA4MDAsIFlvbmd4aW5nIE1vdSB3cm90ZToKPiA+ID4gPiA+IFRoZSBlRFAgUEhZIHN1
cHBvcnRzIGJvdGggZURQJkRQIG1vZGVzLCBlYWNoIHJlcXVpcmVzIGEgZGlmZmVyZW50IHRhYmxl
Lgo+ID4gPiA+ID4gVGhlIGN1cnJlbnQgZHJpdmVyIGRvZXNuJ3QgZnVsbHkgc3VwcG9ydCBldmVy
eSBjb21ibyBQSFkgbW9kZSBhbmQgdXNlCj4gPiA+ID4gPiBlaXRoZXIgdGhlIGVEUCBvciBEUCB0
YWJsZSB3aGVuIGVuYWJsZSB0aGUgcGxhdGZvcm0uIEluIGFkZGl0aW9uLCBzb21lCj4gPiA+ID4g
PiBwbGF0Zm9ybXMgbWlzbWF0Y2ggYmV0d2VlbiB0aGUgbW9kZSBhbmQgdGhlIHRhYmxlIHdoZXJl
IERQIG1vZGUgdXNlcwo+ID4gPiA+ID4gdGhlIGVEUCB0YWJsZSBvciBlRFAgbW9kZSB1c2UgdGhl
IERQIHRhYmxlLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBDbGVhbiB1cCBhbmQgY29ycmVjdCB0aGUg
dGFibGVzIGZvciBjdXJyZW50bHkgc3VwcG9ydGVkIHBsYXRmb3JtcyBiYXNlZCBvbgo+ID4gPiA+
ID4gdGhlIEhQRyBzcGVjaWZpY2F0aW9uLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBIZXJlIGxpc3Rz
IHRoZSB0YWJsZXMgY2FuIGJlIHJldXNlZCBhY3Jvc3MgY3VycmVudCBwbGF0Zm9ybXMuCj4gPiA+
ID4gPiBEUCBtb2Rl77yaCj4gPiA+ID4gPiAJLXNhODc3NXAvc2M3MjgwL3NjODI4MHhwL3gxZTgw
MTAwCj4gPiA+ID4gPiAJLWdseW11cgo+ID4gPiA+ID4gZURQIG1vZGUobG93IHZkaWZmKToKPiA+
ID4gPiAKPiA+ID4gPiBTZXBhcmF0ZSBxdWVzdGlvbjogc2hvdWxkIHdlIGV4dGVuZCBwaHlfY29u
ZmlndXJlX2RwX29wdHMgd2l0aCB0aGUKPiA+ID4gPiBsb3cvaGlnaCB2ZGlmZj8gSXMgdGhlcmUg
YSBwb2ludCBpbiBwcm92aWRpbmcgdGhlIGFiaWxpdHkgdG8gdG9nZ2xlCj4gPiA+ID4gYmV0d2Vl
biBsb3cgdmRpZmYgYW5kIGhpZ2ggdmRpZmY/Cj4gPiA+ID4gCj4gPiA+IEVtbSAsaSBoYXZlbid0
IGZvdW5kIGFueSBwbGF0Zm9ybSB1c2luZyBoaWdoIHZkaWZmIHNvIGZhciwgYW5kIEknbSBub3Qg
Y2xlYXIKPiA+ID4gaW4gd2hpY2ggY2FzZXMgc3dpdGNoaW5nIGJldHdlZW4gbG93IGFuZCBoaWdo
IHZkaWZmIHdvdWxkIGJlIG5lZWRlZC4KPiA+IAo+ID4gIEZyb20gbXkgKG1heWJlIGluY29ycmVj
dCkgdW5kZXJzdGFuZGluZyBvZiBlRFAgQi4zLCB0aGUgaGlnaCB2cyBsb3cKPiA+IHZkaWZmIHNl
bGVjdGlvbiBzaG91bGQgYmUgYmFzZWQgb24gdGhlIGNhYmxlIGxlbmd0aC4KPiA+IAo+IFRoYW5r
cyBmb3IgdGhlIGV4cGxhbmF0aW9uLiBNYXliZSB3ZSBjYW4gYWRkIHRoaXMgd2hlbiB3ZSByZWFs
bHkgbmVlZCBpdC4KPiA+ID4gCj4gPiA+ID4gPiAJLWdseW11ci9zYTg3NzVwL3NjODI4MHhwL3gx
ZTgwMTAwCj4gPiA+ID4gPiAJLXNjNzI4MAo+ID4gPiA+IAo+ID4gPiA+IEkgdW5kZXJzdGFuZCB5
b3VyIHdpc2ggdG8gcGVyZm9ybSBhbGwgdGhlIGNoYW5nZXMgaW4gYSBzaW5nbGUgcGF0Y2gsIGJ1
dAo+ID4gPiA+IHRoZXJlIGlzIG9uZSBwcm9ibGVtIHdpdGggdGhhdC4gQ29uc2lkZXIgdGhpcyBw
YXRjaCByZWdyZXNzZXMgb25lIG9mIHRoZQo+ID4gPiA+IHBsYXRmb3JtcyAoSSdtIGxvb2tpbmcg
YXQgS29kaWFrIGFuZCBTQzgxODBYIGFzIHRoZXkgZ2V0IHRoZSBiaWdnZXN0IHNldAo+ID4gPiA+
IG9mIGNoYW5nZXMpLiBJdCB3b3VsZCBiZSBhbG1vc3QgaW1wb3NzaWJsZSB0byBzZXBhcmF0ZSwg
d2hpY2ggcGFydGljdWxhcgo+ID4gPiA+IGNoYW5nZSBjYXVzZWQgdGhlIHJlZ3Jlc3Npb24uIEkn
ZCBzdWdnZXN0IHNwbGl0dGluZyB0aGlzIHBhdGNoIGludG8gYQo+ID4gPiA+IHNldCBvZiBtb3Jl
IGF0b21pYyBjaGFuZ2VzLiBFLmcuIHRoZSBBVVhfQ0ZHOCBpcyBkZWZpbml0ZWx5IGEgc2VwYXJh
dGUKPiA+ID4gPiBjaGFuZ2UuIFdyaXRpbmcgc3dpbmcgLyBwcmVfZW1waCB0YWJsZXMgb24gS29k
aWFrIGFuZCBTQzgxODBYIGlzIGEKPiA+ID4gPiBzZXBhcmF0ZSBjaGFuZ2UgKG9yIHR3bykuIFN3
aXRjaGluZyBlYWNoIG9mIHRoZSBwbGF0Zm9ybXMgdG8gdGhlCj4gPiA+ID4gY29ycmVjdGVkIHNl
dCBvZiB0YWJsZXMgaWRlYWxseSBhbHNvIHNob3VsZCBjb21lIGFzIGEgc2VwYXJhdGUgY2hhbmdl
LAo+ID4gPiA+IHNvIHRoYXQgaW4gY2FzZSBvZiBhIHJlZ3Jlc3Npb24gdGhlIGlzc3VlIHdvdWxk
IGJlIGVhc2llciB0byBpZGVudGlmeS4KPiA+ID4gPiAKPiA+ID4gVGhhbmsgZm9yIHBvaW50IHRo
aXMsIHdpbGwgc2VwYXJhdGUgdGhlIGNoYW5nZS4KPiA+ID4gSSBtb3N0bHkgb3Zlcmxvb2tlZCBT
QzgxODBYIGhlcmUsIHNpbmNlIEkgYXNzdW1lZCBpdCBzaGFyZXMgdGhlIHNhbWUgUEhZIGFzCj4g
PiA+IFNDNzI4MC4gSG93ZXZlciwgdGhleSBhcmUgdXNpbmcgZGlmZmVyZW50IFBIWSBzdWLigJF2
ZXJzaW9ucy4gV2lsbCBhZGQgcHJvcGVyCj4gPiA+IHN1cHBvcnQgZm9yIGl0IGluIHRoZSBuZXh0
IHZlcnNpb24uCj4gPiAKPiA+IFRoYW5rcyEKPiA+IAo+IEVtbSwgb25lIG1vcmUgcXVlc3Rpb24u
LiBCYXNlZCBvbiBLb25hcmQncyBjb21tZW50cywgc2hvdWxkIEkgc3BsaXQgdGhpcwo+IHBhdGNo
LCBhbmQgc2VuZCBhIG5ldyByZXZpc2lvbiwgb3IgIHBvc3QgYSBuZXcgU0M4MTgwWCBwYXRjaCBv
biB0b3Agb2YgdGhlc2UKPiB0d28gZXhpc3RpbmcgcGF0Y2hlcz8KClBsZWFzZSBzcGxpdCB0aGlz
IGNvbW1pdCBpbnRvIGxvZ2ljYWwgY2h1bmtzLCBhcyBJIHdyb3RlIGJlZm9yZS4gU0M4MTgwWAp3
b3VsZCBiZSBvbmUgb2YgdGhvc2UgcGF0Y2hlcy4KCj4gPiA+ID4gPiAKPiA+ID4gPiA+IENjOiBz
dGFibGVAdmdlci5rZXJuZWwub3JnCj4gPiA+ID4gPiBGaXhlczogZjE5OTIyM2NiNDkwICgicGh5
OiBxY29tOiBJbnRyb2R1Y2UgbmV3IGVEUCBQSFkgZHJpdmVyIikKPiA+ID4gPiA+IFNpZ25lZC1v
ZmYtYnk6IFlvbmd4aW5nIE1vdSA8eW9uZ3hpbmcubW91QG9zcy5xdWFsY29tbS5jb20+Cj4gPiA+
ID4gPiAtLS0KPiA+ID4gPiA+ICAgIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWVkcC5j
IHwgOTAgKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLQo+ID4gPiA+ID4gICAg
MSBmaWxlIGNoYW5nZWQsIDUzIGluc2VydGlvbnMoKyksIDM3IGRlbGV0aW9ucygtKQoKLS0gCldp
dGggYmVzdCB3aXNoZXMKRG1pdHJ5CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
