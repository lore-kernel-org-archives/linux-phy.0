Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC79CC77B60
	for <linux-phy@archiver.kernel.org>; Fri, 28 Apr 2023 06:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YFleE9oCY5hWYy7C5nQSg38YYLG4le8cJ0JJSRIDV0Y=; b=tcksXRh2YKtQC3
	M2Zahbf7xbC+v8u7Ra0IkNLYEUTh+Q3LCL+QwVIWV/8CpCA0+CBcHBIP65VlzIYjoIjB0VMgO/Wkw
	n6DD8QBRWSTOmQh7GyxfzM+Bl2BdsWAlgMTphGAbZ65XHeEohw9YdEilFqyyicYYnfFJcvPSXOhLI
	5UqTyr+iTVs9GMljL5vjO+oUeiUIiA+GwrlxxT+3uMGimX6yFiNJbVv5IGJ5qA+l+8aSghiIzblyb
	kbvROZ2A66n0clKhYdk/AskOOZgrwCfoMM5rkyOAj1bwgj5/keNCRw8C0ZCVw4jXKUMl1z+RwHNkU
	ZPSSN4+rkYVkvg8XX9Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1psI1Q-008MAK-1L;
	Fri, 28 Apr 2023 06:56:00 +0000
Received: from mail-vs1-xe31.google.com ([2607:f8b0:4864:20::e31])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1psI1M-008M9J-1T
	for linux-phy@lists.infradead.org;
	Fri, 28 Apr 2023 06:55:58 +0000
Received: by mail-vs1-xe31.google.com with SMTP id ada2fe7eead31-42e40d1a95fso2814478137.0
        for <linux-phy@lists.infradead.org>; Thu, 27 Apr 2023 23:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexus-software-ie.20221208.gappssmtp.com; s=20221208; t=1682664953; x=1685256953;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=02MWxkaQdLRTYwyy27lw5gzanHvXJVQsMktOlzAmIEM=;
        b=ebeNvPj0ds7czi+movITwBF+RYZUj9k6IwRy5acHyTPjgL4ttUoayc4qtQ8Y1i721n
         cWVC/OmgHvRifsKHa+q0LUntGu96Do5gqdhBHWiXUtyYF0AB6MHKJGHmatJiZHLaqJ5c
         HNJBYH1iJcFkIZE3hd7dls2452H4HRjWJWbSjhMFOsOS3WuXgWTpGJNB+HzsiFpPt6zw
         WpEPBkP6XP3lVja50lQsymE4YNEDI+uahKtiJcMg2/22Q78D3GZJP5zkzX93xkWXi6Ji
         hwrGOSVhvlYL38Zp0bBOoRfuHGo3h1vanHPuQpBXPJxeDVcNGATvwUsqM01svL3BZagM
         cNcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682664953; x=1685256953;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=02MWxkaQdLRTYwyy27lw5gzanHvXJVQsMktOlzAmIEM=;
        b=WX6fVua6btOtmdZ1Uch7oJMZ8pMrAQijkbkiOsBaYi9vPTwknulF9PiNAcWsAy+MjX
         8VJTD/Ph5Kf1iKZAzqKiTpvhmAyhTo4BScRdzYg6VtMPvc2NQ3BLVXU2v/Z/UGeE1+qN
         h/optI3G8ZPWbqoOBb57d6gqSwD/div07oFln0BPmY9hoy/KHNm4o+5L3vw8/Vu5ppRH
         g79tSfx22oibqJto+wyFsMGfi5Yc2nK85FGdDyGl2GihDVZdq0qqT9oAmx0jMMDgwi3A
         xeOvx7RmKG2GV0w/tqVs2HUQ+dInXpMnUU6kbCQtV7lCL3RXyNtjjtVEGT9uT1PxP3E1
         I8tQ==
X-Gm-Message-State: AC+VfDzpSttfhq0gbPIlH7TcUYc8G4QyCoGpIxqagkW0eMCCLgM0CnCV
	slyvXZzKA5fxEkHC60g6/9oeElM//TmbE3z2+wON3w==
X-Google-Smtp-Source: ACHHUZ6EamEmWhWbB0deRP2ZL3ue6TcG8tSIpzkQ/uaEtAe82grayOte7QF7M0W1v9o43SUVKKxggkSC1iQSMRAIYAE=
X-Received: by 2002:a05:6102:34ca:b0:42e:5b8c:7a2b with SMTP id
 a10-20020a05610234ca00b0042e5b8c7a2bmr1736524vst.9.1682664953609; Thu, 27 Apr
 2023 23:55:53 -0700 (PDT)
MIME-Version: 1.0
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
 <20230425034010.3789376-6-quic_bjorande@quicinc.com> <CAJB8c04ah3YfK2VGxDhHMHK4KVJ7kZQv0b5JfPBu7jOk3mFQRA@mail.gmail.com>
 <20230427195545.GC870858@hu-bjorande-lv.qualcomm.com>
In-Reply-To: <20230427195545.GC870858@hu-bjorande-lv.qualcomm.com>
From: "Bryan O'Donoghue" <pure.logic@nexus-software.ie>
Date: Fri, 28 Apr 2023 07:55:41 +0100
Message-ID: <CAJB8c06zxy7Q9eSsnpOsW9ymPsCyWZ4p9oE3b4sP3YGPTiLT_A@mail.gmail.com>
Subject: Re: [PATCH 5/7] phy: qcom-qmp-combo: Introduce drm_bridge
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Johan Hovold <johan@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_235556_847880_170BC78C 
X-CRM114-Status: GOOD (  12.82  )
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

T24gVGh1LCBBcHIgMjcsIDIwMjMgYXQgODo1NuKAr1BNIEJqb3JuIEFuZGVyc3Nvbgo8cXVpY19i
am9yYW5kZUBxdWljaW5jLmNvbT4gd3JvdGU6Cj4KPiBPbiBXZWQsIEFwciAyNiwgMjAyMyBhdCAx
MTozMzo0MEFNICswMTAwLCBCcnlhbiBPJ0Rvbm9naHVlIHdyb3RlOgo+ID4gT24gVHVlLCBBcHIg
MjUsIDIwMjMgYXQgNDo0MOKAr0FNIEJqb3JuIEFuZGVyc3Nvbgo+ID4gPHF1aWNfYmpvcmFuZGVA
cXVpY2luYy5jb20+IHdyb3RlOgo+ID4gPgo+IFsuLl0KPiA+IFlvdSBuZWVkIHRvIGFkZCBzb21l
IG9yIGFsbCBvZiB0aGVzZQo+ID4gICAgICAgIHNlbGVjdCBEUk1fRElTUExBWV9EUF9IRUxQRVIK
PiA+ICAgICAgICBzZWxlY3QgRFJNX0RJU1BMQVlfSEVMUEVSCj4gPiAgICAgICAgc2VsZWN0IERS
TV9EUF9BVVhfQlVTCj4gPiAgICAgICAgc2VsZWN0IERSTV9LTVNfSEVMUEVSCj4gPiAgICAgICAg
c2VsZWN0IERSTV9NSVBJX0RTSQo+ID4gICAgICAgIHNlbGVjdCBEUk1fUEFORUwKPiA+Cj4gPgo+
ID4gL29wdC9saW5hcm8vZ2NjLWxpbmFyby03LjUuMC0yMDE5LjEyLXg4Nl82NF9hYXJjaDY0LWxp
bnV4LWdudS9iaW4vYWFyY2g2NC1saW51eC1nbnUtbGQ6Cj4gPiBVbmV4cGVjdGVkIEdPVC9QTFQg
ZW50cmllcyBkZXRlY3RlZCEKPiA+IC9vcHQvbGluYXJvL2djYy1saW5hcm8tNy41LjAtMjAxOS4x
Mi14ODZfNjRfYWFyY2g2NC1saW51eC1nbnUvYmluL2FhcmNoNjQtbGludXgtZ251LWxkOgo+ID4g
VW5leHBlY3RlZCBydW4tdGltZSBwcm9jZWR1cmUgbGlua2FnZXMgZGV0ZWN0ZWQhCj4gPiBkcml2
ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8ubzogSW4gZnVuY3Rpb24KPiA+IGBx
bXBfY29tYm9fYnJpZGdlX2F0dGFjaCc6Cj4gPiBwaHktcWNvbS1xbXAtY29tYm8uYzooLnRleHQr
MHhiNTApOiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvCj4gPiBgZGV2bV9kcm1fb2ZfZ2V0X2JyaWRn
ZScKPiA+IHBoeS1xY29tLXFtcC1jb21iby5jOigudGV4dCsweGI2Yyk6IHVuZGVmaW5lZCByZWZl
cmVuY2UgdG8gYGRybV9icmlkZ2VfYXR0YWNoJwo+ID4gZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5
LXFjb20tcW1wLWNvbWJvLm86IEluIGZ1bmN0aW9uIGBxbXBfY29tYm9fcHJvYmUnOgo+ID4gcGh5
LXFjb20tcW1wLWNvbWJvLmM6KC50ZXh0KzB4MTNmYyk6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8K
PiA+IGBkZXZtX2RybV9icmlkZ2VfYWRkJwo+ID4KPgo+IFlvdSdyZSBjb3JyZWN0LCBhbmQgVFlQ
RUMuIFJlYWxpemVkIHRoYXQgSSBmb3Jnb3QgdGhlc2Ugb25jZSBJIGhhZAo+IHBvc3RlZCB0aGUg
cGF0Y2hlcy4gV2lsbCBmaWd1cmUgb3V0IHRoZSBhY3R1YWwgc2V0IGZvciB2Mi4KPgo+IFRoYW5r
cywKPiBCam9ybgoKU28gSSBhZGRlZCBDT05GSUdfRFJNIHRvIEtjb25maWcgZm9yIHRoZSBjb21i
byBwaHkgYW5kIHRoZW4gcmVwbGFjZWQKdGhlIG9sZCBwYXRjaCB3ZSBoYWQgd2l0aCB5b3VyIHNl
cmllcy4KCldvcmtzIGZvciBtZSB3aXRoIG15IFRDUE0gc2V0IHdpdGggemVybyBjaGFuZ2VzIC0g
YXNpZGUgZnJvbSBzbG90dGluZwp0aGUgb2xkIFBIWSBwYXRjaCB3aXRoIHlvdXIgZXhwYW5kZWQg
c2VyaWVzIG9uIFNNODI1MAoKVGVzdGVkLWJ5OiBCcnlhbiBPJ0Rvbm9naHVlIDxicnlhbi5vZG9u
b2dodWVAbGluYXJvLm9yZz4KUmV2aWV3ZWQtYnk6IEJyeWFuIE8nRG9ub2dodWUgPGJyeWFuLm9k
b25vZ2h1ZUBsaW5hcm8ub3JnPgoKaHR0cHM6Ly9naXQuY29kZWxpbmFyby5vcmcvYnJ5YW4ub2Rv
bm9naHVlL2tlcm5lbC8tL3RyZWUvbGludXgtbmV4dC0yMy0wNC0yOC1wbTgxNTBiLXRjcG0tcWNv
bS13cmFwcGVyLXR5cGVjLW11eC1iam9ybgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
