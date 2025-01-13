Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5D0BE7719E
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jan 2025 09:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zSOGFRlUGdKaWbDy3rUL05AwZGHi2x4n8GlPTnwW8rM=; b=QbnXbF7OTPPh5w
	S7PZFFHvvRNOm/0888rK4CiAbhgqjSblFGZ30L981Kzb6dhX2qsg2XDyof/XFUx3IZhDLMtL4tEiV
	Y+uM41F/ZIiHx4ReyRt/Tm9ivSI4dg+mVHuGL9vKFZSJNvutB7lCEtUHlI6VQVdKa48WDdE4Aa29Y
	u3+Eq8pwyDUOqLu/UXjzH/16xhhHt0KrHUBkBBjvQ/TsThbG7OhbxAUo6YW26iibhSxJ5W52Y1cDi
	cshG+vWWpy7FD0d/sZu7D+0DgpuKVWikksPIpXU7qQ4YE3K5j8JU5P97kiT2QxWpnl6no7VPKG21c
	GSPrkvGMqc8ouMgDhrnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXGvl-00000004ezc-1oga;
	Mon, 13 Jan 2025 09:40:21 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXGrz-00000004e1F-0S0S
	for linux-phy@lists.infradead.org;
	Mon, 13 Jan 2025 09:36:28 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-3061f1e534bso5831341fa.1
        for <linux-phy@lists.infradead.org>; Mon, 13 Jan 2025 01:36:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736760985; x=1737365785; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DmCzDFErLnBOfEME/9QnQ60BqhOwOM+03PSKJOPU4Wk=;
        b=ommjHA0qGelSWDpbY5Vu7n1RszOgP9DJaCtpV5Hsdu5CgOOCtbrWIZVpC4/jCj3VPR
         vNPKJM5CyvUWRVJY8weQORsZvbHtYtejMbfBKKm76DrL6DBdIzy+k39cgADxc/gRqdzc
         C911nTt4IdRlumpY+G0T+Vb+Vk1guGYQQ4UYkeNFTs5WFtEIu7e17A/CD2m8xQcbL5UM
         FWqS6QIDLpBOZMyUlMkF7BXMWUUnJJEpBrZHIGBLNc2s3RwzveeQ5FRwrtNy8JaJLzK0
         xUhrElqagcQ07LxcgaJojKOPCQXTi9ZxCvbobWbqKnuLtzvvbWFz3AH21XG1VzsGtmXK
         uTlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736760985; x=1737365785;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DmCzDFErLnBOfEME/9QnQ60BqhOwOM+03PSKJOPU4Wk=;
        b=lOAty1sOH5Q2vLwtct3TdrVz3lOIBAyLi7nbEPH0j3pHofHfcSR0p/K0nwDJcMJdTW
         ugv8sfUoFG+QWirxnghnnu+4pyUK07UrdoodcBY43PE99Yi6gUPFZkQXeIDP34Sh6UJ7
         0UUHTqmWPGVAfxKl6F14eN7zhqlBOz6otwmR/LMYV9Q+FdJru0h1oJ24+fZjVOGaCNvG
         o9mEXhjHX6MBI4PQ50zm0plKN40uD65Jk3Zp3Lc6Iui8m5y1rR0sAvjBHmaIXMNGYlYE
         DchQziNdS1JTBuM7j+w1C4Kf8Qp+8ei51OO5nTI3bYJRtbyEmUBAYmm91tRwpKug4Q0Y
         7/3g==
X-Forwarded-Encrypted: i=1; AJvYcCUXPR4OcAcqVjrn7dUMBYqO8rE4o3Fp/rVJrk2p2LBwBDArFYpMYuRvRzOHeUF9wNH2dlpWi56JgE0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxDnoR3NbfX5lhVszmNGWJPLT5jMvpSmvUDT1ZzpzmZjpDC5e4x
	n96j7HMA5/xw0vDRxf0DRppJtRQQ8hdjAS6njJNOn79NiGew9P1ttS5dUyZ/n9Z+lQEU+s/4QBt
	j
X-Gm-Gg: ASbGncsB3RSwlEL2igcxv2OMo14hlMbG1L1DaCYK0A++0QhFrpuODipxtguX7zbexfi
	ah/0xYCtlwqf59Pc/lt9rj2uph4EXt30kWbaFxgtvnI1W5RgS77/nQ74jA3jhak/c2ezX+OzCe9
	5BxXIzyk3jd4bcWCnG6mvApBL7jaiOhaW6uGBTyACQ60CXBFmklr3aEkdyVCq4Rt47MtKj0SeIw
	cwpzIj/Lp6jescoZyI0/Tra3CfuNxsJomoWJztlDvuiRDjR2CPfr0DyfbohScZiFgBkifcF5zUL
	JAJeZtlFnSFvLAwv2sCBBsGQAvHVgGoV+d/x
X-Google-Smtp-Source: AGHT+IFbM2UcO1EMYcGq6BZ2DVYviG/knD27dv0NN39pkseZUIPzaniaUfN4FBwQvW32Hm9VBxgPAA==
X-Received: by 2002:a05:6512:220b:b0:53e:389d:8ce6 with SMTP id 2adb3069b0e04-542845d1dbamr6309742e87.28.1736760985355;
        Mon, 13 Jan 2025 01:36:25 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428becd501sm1272396e87.246.2025.01.13.01.36.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 01:36:24 -0800 (PST)
Date: Mon, 13 Jan 2025 11:36:22 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Yongxing Mou <quic_yongmou@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 0/4] Display enablement changes for Qualcomm QCS8300
 platform
Message-ID: <5exaup4mceoq3a3wk44csybigcg3yc2drvv7nwdndbig7edzya@5d543uzrnoxx>
References: <20250113-mdssdt_qcs8300-v3-0-6c8e93459600@quicinc.com>
 <qsq5so5i7fy3r7xcjtcr7aq2vtbywh57j3b3e7ddbsmmeu5qwy@pgcntgxknuul>
 <9a87724c-1906-4a9b-bf01-e603b310e47a@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9a87724c-1906-4a9b-bf01-e603b310e47a@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_013627_152645_C40676A2 
X-CRM114-Status: GOOD (  30.03  )
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

T24gTW9uLCBKYW4gMTMsIDIwMjUgYXQgMDU6MjY6NTZQTSArMDgwMCwgWW9uZ3hpbmcgTW91IHdy
b3RlOgo+IAo+IAo+IE9uIDIwMjUvMS8xMyAxNzowMiwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToK
PiA+IE9uIE1vbiwgSmFuIDEzLCAyMDI1IGF0IDA0OjAzOjA3UE0gKzA4MDAsIFlvbmd4aW5nIE1v
dSB3cm90ZToKPiA+ID4gVGhpcyBzZXJpZXMgaW50cm9kdWNlcyBzdXBwb3J0IHRvIGVuYWJsZSB0
aGUgTW9iaWxlIERpc3BsYXkgU3Vic3lzdGVtIChNRFNTKQo+ID4gPiAsIERpc3BsYXkgUHJvY2Vz
c2luZyBVbml0IChEUFUpLCBEaXNwbGF5UG9ydCBjb250cm9sbGVyIGZvciB0aGUgUXVhbGNvbW0K
PiA+ID4gUUNTODMwMCB0YXJnZXQuIEl0IGluY2x1ZGVzIHRoZSBhZGRpdGlvbiBvZiB0aGUgaGFy
ZHdhcmUgY2F0YWxvZywgY29tcGF0aWJsZQo+ID4gPiBzdHJpbmcsIGFuZCB0aGVpciBZQU1MIGJp
bmRpbmdzLgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogWW9uZ3hpbmcgTW91IDxxdWljX3lv
bmdtb3VAcXVpY2luYy5jb20+Cj4gPiA+IC0tLQo+ID4gPiBDaGFuZ2VzIGluIHYzOkZpeGVkIHJl
dmlldyBjb21tZW50cyBmcm9tIEtyenlzenRvZiwgRG1pdHJ5Lgo+ID4gPiAtIEZpeCB0aGUgbWlz
c2luZyBzcGFjZSBpc3N1ZSBpbiBjb21taXQgbWVzc2FnZS5bS3J6eXN6dG9mXQo+ID4gPiAtIFNl
cGFyYXRlIHRoZSBwYXRjaCBmb3IgdGhlIHBoeSBmcm9tIHRoaXMgc2VyaWVzLltEbWl0cnldCj4g
PiA+IC0gUmVtb3ZlIHVudXNlZCBkZXBlbmRlbmNpZXMgYW5kIHVwZGF0ZSBpbiB0aGUgY292ZXIg
bGV0dGVyLltEbWl0cnldW0tyenlzenRvZl0KPiA+ID4gLSBMaW5rIHRvIHYyOiBodHRwczovL2xv
cmUua2VybmVsLm9yZy9yLzIwMjQxMjI2LW1kc3NkdF9xY3M4MzAwLXYyLTAtYWNiYTBkYjUzM2Nl
QHF1aWNpbmMuY29tCj4gPiA+IAo+ID4gPiBDaGFuZ2VzIGluIHYyOkZpeGVkIHJldmlldyBjb21t
ZW50cyBmcm9tIEtyenlzenRvZiwgRG1pdHJ5LCBSb2IuCj4gPiA+IC0gRGVjb3VwbGUgdGhlIGRl
dmljZXRyZWUgY2hhbmdlcyBmcm9tIHRoaXMgc2VyaWVzLltEbWl0cnldW0tyenlzenRvZl0KPiA+
ID4gLSBEcm9wIHRoZSBkcHUgZHJpdmVyIGNoYW5nZXMgYW5kIHJldXNlIFNBODc3NVAgRFBVIGRy
aXZlci5bRG1pdHJ5XQo+ID4gPiAtIEZpeCBjb21waWxhdGlvbiBpc3N1ZXMgaW4gTURTUyBiaW5k
aW5ncy5bUm9iXVtLcnp5c3p0b2ZdCj4gPiA+IC0gQ29ycmVjdCBmb3JtYXR0aW5nIGVycm9ycyBh
bmQgcmVtb3ZlIHVubmVjZXNzYXJ5IHN0YXR1cyBpbiBNRFNTCj4gPiA+ICAgIGJpbmRpbmdzLltL
cnp5c3p0b2ZdCj4gPiA+IC0gQWRkIHRoZSB0aGUgbmVjZXNzYXJ5IGluZm9ybWF0aW9uIGluIE1E
U1MgY2hhbmdlcyBjb21taXQgbXNnLltEbWl0cnldCj4gPiA+IC0gUmViYXNlIE1EU1MgZHJpdmVy
IGNoYW5nZXMgdG8gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLwo+ID4gPiAgICAy
MDI0MTEyNy1tc20tbWRzcy11YndjLXYzLTAtOTc4MmE3YzJiMDIzQGxpbmFyby5vcmcvLltEbWl0
cnldCj4gPiA+IC0gUGFja2FnZSB0aGUgRGlzcGxheVBvcnQgY29udHJvbGxlciBhbmQgZURQIFBI
WSBiaW5kaW5ncyBkb2N1bWVudCB0bwo+ID4gPiAgICB0aGlzIHBhdGNoIHNlcmllcy4KPiA+ID4g
LSBDb2xsZWN0aW5nIE1EU1MgY2hhbmdlcyByZXZpZXdkLWJ5IERtaXRyeS4KPiA+ID4gLSBSZXVz
ZSB0aGUgc2E4Nzc1cCBlRFAgUEhZIGFzIGEgZmFsbGJhY2sgY29tcGF0LltEbWl0cnldCj4gPiA+
IC0gUmV1c2UgdGhlIHNtODY1MCBEUCBjb250cm9sbGVyIGFzIGEgZmFsbGJhY2sgY29tcGF0LltE
bWl0cnldCj4gPiA+IC0gTGluayB0byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI0
MTEyNy1tZHNzX3FjczgzMDAtdjEtMC0yOWIyYzNlZTk1YjhAcXVpY2luYy5jb20KPiA+ID4gfgo+
ID4gPiAKPiA+ID4gLS0tCj4gPiA+IFlvbmd4aW5nIE1vdSAoNCk6Cj4gPiA+ICAgICAgICBkdC1i
aW5kaW5nczogZGlzcGxheS9tc206IERvY3VtZW50IHRoZSBEUFUgZm9yIFFDUzgzMDAKPiA+ID4g
ICAgICAgIGR0LWJpbmRpbmdzOiBkaXNwbGF5OiBtc206IGRwLWNvbnRyb2xsZXI6IGRvY3VtZW50
IFFDUzgzMDAgY29tcGF0aWJsZQo+ID4gPiAgICAgICAgZHQtYmluZGluZ3M6IGRpc3BsYXkvbXNt
OiBEb2N1bWVudCBNRFNTIG9uIFFDUzgzMDAKPiA+IAo+ID4gSXMgdGhlcmUgYW55IHJlYXNvbiBm
b3Igbm90IHVzaW5nIGEgY29tbW9uIHN0eWxlIGZvciB0aGVzZSB0aHJlZQo+ID4gY29tbWl0cz8K
PiA+IAo+IEhp77yMYWN0dWFsbHksIGZvciB0aGUgZHAtY29udHJvbGxlci55YW1lbCBmaWxlLCBJ
IGp1c3Qgbm90aWNlZCB0aGF0IHRoZQo+IHByZXZpb3VzIHBsYXRmb3JtcyBhZGRlZCB0aGUgZHQt
YmluZGluZyBmaWxlcyB1c2luZyB0aGlzIGZvcm1hdC4gU28sIEkKPiBmb2xsb3dlZCB0aGVpciBm
b3JtYXQgdG8gd3JpdGUgdGhlIGNvbW1pdCBtZXNzYWdlLiBTdWNoIGFzIGR0LWJpbmRpbmdzIGZv
cgo+IHNtODY1MC9zbTgxNTAvc204MjUwLi4uCgpJIGRvbid0IGNhcmUgYWJvdXQgZWl0aGVyIG9m
IHRoZSBmb3JtYXRzLCBidXQgcGxlYXNlIGJlIHNlbGYtY29uc2lzdGVudC4KSWYgb25lIHBhdGNo
IG91dCBvZiB0aHJlZSBoYXMgYSBkaWZmZXJlbnQgc3ViamVjdCBwcmVmaXgsIHRoYXQgbG9va3MK
c3RyYW5nZS4KCj4gPiA+ICAgICAgICBkcm0vbXNtOiBtZHNzOiBBZGQgUUNTODMwMCBzdXBwb3J0
Cj4gPiA+IAo+ID4gPiAgIC4uLi9iaW5kaW5ncy9kaXNwbGF5L21zbS9kcC1jb250cm9sbGVyLnlh
bWwgICAgICAgIHwgICA0ICsKPiA+ID4gICAuLi4vYmluZGluZ3MvZGlzcGxheS9tc20vcWNvbSxx
Y3M4MzAwLW1kc3MueWFtbCAgICB8IDI0NCArKysrKysrKysrKysrKysrKysrKysKPiA+ID4gICAu
Li4vYmluZGluZ3MvZGlzcGxheS9tc20vcWNvbSxzbTg2NTAtZHB1LnlhbWwgICAgICB8ICAxMyAr
LQo+ID4gPiAgIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX21kc3MuYyAgICAgICAgICAgICAgICAg
ICAgIHwgIDExICsKPiA+ID4gICA0IGZpbGVzIGNoYW5nZWQsIDI2OCBpbnNlcnRpb25zKCspLCA0
IGRlbGV0aW9ucygtKQo+ID4gPiAtLS0KPiA+ID4gYmFzZS1jb21taXQ6IDJiODg4NTFmNTgzZDNj
NGU0MGJjZDQwY2ZlMTk2NTI0MWVjMjI5ZGQKPiA+ID4gY2hhbmdlLWlkOiAyMDI0MTIyNC1tZHNz
ZHRfcWNzODMwMC0xMWI3ODgzZGM2MGIKPiA+ID4gCj4gPiA+IEJlc3QgcmVnYXJkcywKPiA+ID4g
LS0gCj4gPiA+IFlvbmd4aW5nIE1vdSA8cXVpY195b25nbW91QHF1aWNpbmMuY29tPgo+ID4gPiAK
PiA+IAo+IAoKLS0gCldpdGggYmVzdCB3aXNoZXMKRG1pdHJ5CgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
