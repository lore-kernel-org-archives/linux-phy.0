Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2249CEB64D9
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jun 2023 07:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iRXI4eAYXf38W+o92A4psbTWCiON7pQL7uRnym+6a/U=; b=q+XOgGVwhDzVuY
	UqUrf+SJnmbRkKyCLw1iudNXsCCQZv/eY9qPnmOZDVwmdm4pnUyNYYoHXFjTBDjCYaxLmVgtVbv4j
	IG4kcZBvrOfEuxPwpCDZH2d9dSHyQPoq0rm0c95JE1ObHqorgPN9cjiEiEtEBNIIEaQ9wTcDpUuWV
	8HBwGN7ttAyLWlpdinbUiEPGO2eisSBXhyoWt02Xd8aYADEQ+kcZWPgJn5ZBhjdFvn2Uz54fjx0By
	+GxgmriE07Cy/rexwM0g4LW5Zuld2qOtzPRO18Ve1ZPpfio0VwRaIJCtFo7l3VwS56QNUAI41mdpI
	io48iA0I9ecbkhSazeDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Kls-00AdNP-2W;
	Wed, 14 Jun 2023 07:18:24 +0000
Received: from mail-ua1-x92d.google.com ([2607:f8b0:4864:20::92d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Klp-00AdLk-0s
	for linux-phy@lists.infradead.org;
	Wed, 14 Jun 2023 07:18:22 +0000
Received: by mail-ua1-x92d.google.com with SMTP id a1e0cc1a2514c-7872d7b79e1so754412241.0
        for <linux-phy@lists.infradead.org>; Wed, 14 Jun 2023 00:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686727098; x=1689319098;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xWqp8+3MZcT/Qp4VzgeJFqfoJNX477ShUvbIsRioGOw=;
        b=MiCweefJaq2Rs0ySFI2YdvxxsjV+Tz+OX0tIhBr/LjFZitS74y2nNqvs6OlVYfv2jN
         8TF3c2dxnGSXewEgziDxxbGNEAnZHZn17Mpg64TaHDAiU1cGkGg4iqGJxKPkx4PfEDz7
         KgL1Ar+uP+3WBeEroqFl9aFVrIg3ymtIz/BO8L5owGvjmGkDYaxmc/a4rm+TAAJ2rnMN
         QI8mHooJ381PRQHeI+j+kss74OjpD5qy4bTJOiYXPctm9TY6m94Sf9fKLUVN5zq4rxGW
         lLNG1Osegk5tDnCL6bDzlbg/Gw9QfrZ4AJGg2r5xjkl/OWBmXvF9U9VG53qDFVbRGx+Q
         SOLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686727098; x=1689319098;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xWqp8+3MZcT/Qp4VzgeJFqfoJNX477ShUvbIsRioGOw=;
        b=E+6Hnqdv0pQYoaYhq6guM/jJpjGcXbyaKpZYZfH6sWS5fSEkJ5D5ksdjxUIEqes1TB
         Ga2QJRuJ2q1HJvlZmAXYex1NX7AbF74SCDfJyr5v0tnMg6cX66ksG+1PeRCbPVPkHbVp
         DWRUWG9L67kI/wiM9n5I0SMLUCuk13ShKj1Oi4bszbY9SNJcSI0PjCapI2Ao/cVIgsAI
         bP7grDkvJGPbrx2SJ9N9jpD/nL8iZZSSJ6zMHejHVPs6jEBLqO3tmnUhrHVlR3lbSQG2
         sXxhWwhp3wsXoySeP613owxWEnw2FEAm13fNXCYHy4RzksSkPwmo3kGp5RWOb6L2Mhy/
         eUeA==
X-Gm-Message-State: AC+VfDwXbHiJTjAf33S1sz3eycD4AcQoADZJtDeZecvACexiriJWNCMn
	BVLMQHFB5xJQDaf7YlgmZhIjDLzr3/s7nr5qxqNDaw==
X-Google-Smtp-Source: ACHHUZ5/lIGOUl/l3ycPBA6fbzQyMwAzSP8rc7XBTn1VRb2W3EotcDSLMNZEqinAXiE/Za/C+5sDlrb/IA4v9qkeWCA=
X-Received: by 2002:a67:b401:0:b0:434:7856:bf9f with SMTP id
 x1-20020a67b401000000b004347856bf9fmr6830203vsl.12.1686727097789; Wed, 14 Jun
 2023 00:18:17 -0700 (PDT)
MIME-Version: 1.0
References: <20230612092355.87937-1-brgl@bgdev.pl> <20230612092355.87937-4-brgl@bgdev.pl>
 <7fe7078e-404d-28e5-0dd1-53b7f9cd7626@linaro.org>
In-Reply-To: <7fe7078e-404d-28e5-0dd1-53b7f9cd7626@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 14 Jun 2023 09:18:06 +0200
Message-ID: <CAMRc=MdwqF9_LM2BeVOtx+DaKv8Cv8Bp-cP=sE-RBO=UoosSLg@mail.gmail.com>
Subject: Re: [PATCH 03/26] phy: qcom: add the SGMII SerDes PHY driver
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Bhupesh Sharma <bhupesh.sharma@linaro.org>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	"David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Jose Abreu <joabreu@synopsys.com>, 
	netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_001821_309257_DA28C062 
X-CRM114-Status: GOOD (  16.96  )
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

T24gTW9uLCBKdW4gMTIsIDIwMjMgYXQgMTE6NDXigK9BTSBLb25yYWQgRHliY2lvIDxrb25yYWQu
ZHliY2lvQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4KPgo+IE9uIDEyLjA2LjIwMjMgMTE6MjMsIEJh
cnRvc3ogR29sYXN6ZXdza2kgd3JvdGU6Cj4gPiBGcm9tOiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxi
YXJ0b3N6LmdvbGFzemV3c2tpQGxpbmFyby5vcmc+Cj4gPgo+ID4gSW1wbGVtZW50IHN1cHBvcnQg
Zm9yIHRoZSBTR01JSS9TZXJEZXMgUEhZIHByZXNlbnQgb24gdmFyaW91cyBRdWFsY29tbQo+ID4g
cGxhdGZvcm1zLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJh
cnRvc3ouZ29sYXN6ZXdza2lAbGluYXJvLm9yZz4KPiA+IC0tLQo+ID4gK3N0YXRpYyBjb25zdCBz
dHJ1Y3QgcmVnbWFwX2NvbmZpZyBxY29tX2R3bWFjX3NnbWlpX3BoeV9yZWdtYXBfY2ZnID0gewo+
ID4gKyAgICAgLnJlZ19iaXRzICAgICAgICAgICAgICAgPSAzMiwKPiA+ICsgICAgIC52YWxfYml0
cyAgICAgICAgICAgICAgID0gMzIsCj4gPiArICAgICAucmVnX3N0cmlkZSAgICAgICAgICAgICA9
IDQsCj4gPiArICAgICAudXNlX3JlbGF4ZWRfbW1pbyAgICAgICA9IHRydWUsCj4gPiArICAgICAu
ZGlzYWJsZV9sb2NraW5nICAgICAgICA9IHRydWUsCj4gVGhlIGxhc3QgdHdvIGFyZSByYXRoZXIg
YnJhdmUsIG5vPwo+CgpXZSBkb24ndCBuZWVkIGxvY2tpbmcgYmVjYXVzZSBhbGwgY2FsbGJhY2tz
IGFyZSBhbHJlYWR5IHByb3RlY3RlZCBieQp0aGUgcGh5IHN1YnN5c3RlbSB3aXRoIGEgbXV0ZXgg
YW5kIEkgZG9uJ3QgcmVhbGx5IHNlZSBhbnl0aGluZyB0aGF0CndvdWxkIG1ha2UgaXQgZGFuZ2Vy
b3VzIHRvIHVzZSByZWxheGVkIHNlbWFudGljcyBpbiB0aGlzIGRyaXZlci4gSXQncwpqdXN0IGJh
c2ljIGNvbmZpZ3VyYXRpb24uCgpCYXJ0Cgo+IEtvbnJhZAo+ID4gK307Cj4gPiArCj4gPiArc3Rh
dGljIGludCBxY29tX2R3bWFjX3NnbWlpX3BoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQo+ID4gK3sKPiA+ICsgICAgIHN0cnVjdCBxY29tX2R3bWFjX3NnbWlpX3BoeV9kYXRh
ICpkYXRhOwo+ID4gKyAgICAgc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKPiA+ICsg
ICAgIHN0cnVjdCBwaHlfcHJvdmlkZXIgKnByb3ZpZGVyOwo+ID4gKyAgICAgc3RydWN0IGNsayAq
cmVmY2xrOwo+ID4gKyAgICAgdm9pZCBfX2lvbWVtICpiYXNlOwo+ID4gKyAgICAgc3RydWN0IHBo
eSAqcGh5Owo+ID4gKwo+ID4gKyAgICAgZGF0YSA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigq
ZGF0YSksIEdGUF9LRVJORUwpOwo+ID4gKyAgICAgaWYgKCFkYXRhKQo+ID4gKyAgICAgICAgICAg
ICByZXR1cm4gLUVOT01FTTsKPiA+ICsKPiA+ICsgICAgIGJhc2UgPSBkZXZtX3BsYXRmb3JtX2lv
cmVtYXBfcmVzb3VyY2UocGRldiwgMCk7Cj4gPiArICAgICBpZiAoSVNfRVJSKGJhc2UpKQo+ID4g
KyAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihiYXNlKTsKPiA+ICsKPiA+ICsgICAgIGRhdGEt
PnJlZ21hcCA9IGRldm1fcmVnbWFwX2luaXRfbW1pbyhkZXYsIGJhc2UsCj4gPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJnFjb21fZHdtYWNfc2dtaWlfcGh5X3Jl
Z21hcF9jZmcpOwo+ID4gKyAgICAgaWYgKElTX0VSUihkYXRhLT5yZWdtYXApKQo+ID4gKyAgICAg
ICAgICAgICByZXR1cm4gUFRSX0VSUihkYXRhLT5yZWdtYXApOwo+ID4gKwo+ID4gKyAgICAgcGh5
ID0gZGV2bV9waHlfY3JlYXRlKGRldiwgTlVMTCwgJnFjb21fZHdtYWNfc2dtaWlfcGh5X29wcyk7
Cj4gPiArICAgICBpZiAoSVNfRVJSKHBoeSkpCj4gPiArICAgICAgICAgICAgIHJldHVybiBQVFJf
RVJSKHBoeSk7Cj4gPiArCj4gPiArICAgICByZWZjbGsgPSBkZXZtX2Nsa19nZXRfZW5hYmxlZChk
ZXYsICJzZ21pX3JlZiIpOwo+ID4gKyAgICAgaWYgKElTX0VSUihyZWZjbGspKQo+ID4gKyAgICAg
ICAgICAgICByZXR1cm4gUFRSX0VSUihyZWZjbGspOwo+ID4gKwo+ID4gKyAgICAgcHJvdmlkZXIg
PSBkZXZtX29mX3BoeV9wcm92aWRlcl9yZWdpc3RlcihkZXYsIG9mX3BoeV9zaW1wbGVfeGxhdGUp
Owo+ID4gKyAgICAgaWYgKElTX0VSUihwcm92aWRlcikpCj4gPiArICAgICAgICAgICAgIHJldHVy
biBQVFJfRVJSKHByb3ZpZGVyKTsKPiA+ICsKPiA+ICsgICAgIHBoeV9zZXRfZHJ2ZGF0YShwaHks
IGRhdGEpOwo+ID4gKyAgICAgcGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwgZGF0YSk7Cj4gPiAr
Cj4gPiArICAgICByZXR1cm4gMDsKPiA+ICt9Cj4gPiArCj4gPiArc3RhdGljIGNvbnN0IHN0cnVj
dCBvZl9kZXZpY2VfaWQgcWNvbV9kd21hY19zZ21paV9waHlfb2ZfbWF0Y2hbXSA9IHsKPiA+ICsg
ICAgIHsgLmNvbXBhdGlibGUgPSAicWNvbSxzYTg3NzVwLWR3bWFjLXNnbWlpLXBoeSIgfSwKPiA+
ICsgICAgIHsgfSwKPiA+ICt9Owo+ID4gK01PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIHFjb21fZHdt
YWNfc2dtaWlfcGh5X29mX21hdGNoKTsKPiA+ICsKPiA+ICtzdGF0aWMgc3RydWN0IHBsYXRmb3Jt
X2RyaXZlciBxY29tX2R3bWFjX3NnbWlpX3BoeV9kcml2ZXIgPSB7Cj4gPiArICAgICAucHJvYmUg
ID0gcWNvbV9kd21hY19zZ21paV9waHlfcHJvYmUsCj4gPiArICAgICAuZHJpdmVyID0gewo+ID4g
KyAgICAgICAgICAgICAubmFtZSAgID0gInFjb20tZHdtYWMtc2dtaWktcGh5IiwKPiA+ICsgICAg
ICAgICAgICAgLm9mX21hdGNoX3RhYmxlID0gcWNvbV9kd21hY19zZ21paV9waHlfb2ZfbWF0Y2gs
Cj4gPiArICAgICB9Cj4gPiArfTsKPiA+ICsKPiA+ICttb2R1bGVfcGxhdGZvcm1fZHJpdmVyKHFj
b21fZHdtYWNfc2dtaWlfcGh5X2RyaXZlcik7Cj4gPiArCj4gPiArTU9EVUxFX0RFU0NSSVBUSU9O
KCJRdWFsY29tbSBEV01BQyBTR01JSSBQSFkgZHJpdmVyIik7Cj4gPiArTU9EVUxFX0xJQ0VOU0Uo
IkdQTCIpOwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
