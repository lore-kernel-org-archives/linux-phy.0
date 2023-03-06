Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D05E3C61DA4
	for <linux-phy@archiver.kernel.org>; Mon,  6 Mar 2023 22:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fyAhkHNISo/IICgNBQuCbiBT0YViYKSDncwQZVpVLHA=; b=rBn/AOjpDqlmCt
	D5QJi9oM6o4AsYCjIruxU331LFC1bO80Q8Vs/Vpcf4ZKXGPO4fQf2YiG5vRfsMg5NQBlusoAAhpe+
	tp7CQKFHuDa9qBbFUBdEhQC+nW6QbHo7E7jCo5gzvMZVmlrsE4CufqHaawLRB4t2gZsufJJwLTiSM
	5wTD7bEwdLI3DRNVghckgsSL7zv6ePQoeyScAG2Ecgz0JEcpgnF9g8NlzeHdu0YRHacnpqStg4bfK
	bQitzbfjStVPxusjBhACiEHNRU7oJL3RoviboAoeuVFSvUBbZxwoLImP/M3KBQYeVXO+KwJEKMgLp
	NQnNelPtk21Th9ckQ6vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZIwg-00FAvo-2B; Mon, 06 Mar 2023 22:04:38 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZIwT-00FAtB-1Z
	for linux-phy@lists.infradead.org; Mon, 06 Mar 2023 22:04:26 +0000
Received: by mail-yb1-xb36.google.com with SMTP id t4so9686327ybg.11
        for <linux-phy@lists.infradead.org>; Mon, 06 Mar 2023 14:04:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678140262;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cj4SlGol6U5c/Lr/TI0kdwQqKkOnoBxkEowA782E81I=;
        b=cj7ECO5tujuJz/Nv/pvwK/z+E/6PFURiEjAL8ZP6rwxHBj4TymSexHzYdOgSjbwSDg
         MwQKGhMdlya1ElMltvorZEfo6ZJ73Ip6mNFYPgFoZG3RBG9n8vd8aO3gFOKxb4hLKtcj
         5UurvCPm2SDS+D03MpgZtk7gpME+iyTgrrdpbUq4a9UamJ4XMWvLnKuADHOuTqCeur8n
         pzsgEAn2H6bn9WO7y2PbUC5fQdieXYo9qRfN9qAaGlvD+3LwzrYpu2Anrpzsvin4/kIS
         bCZtYTtSuMj3T6uNjKtmD1D6ZC3ueRRTkRQsADXbaO5VEWWe1Fb3pChYkPpvHmdgyQqM
         +WbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678140262;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cj4SlGol6U5c/Lr/TI0kdwQqKkOnoBxkEowA782E81I=;
        b=oQsZTTZ+OlfgDhgpW/AcNRkJDl9QBRzleOtO7kxcNKHi5amt/YsYjM1Mbd+L2iDy+a
         tbP5Va78gdYAfvykIglrQS6Tv2geNM8XoBuhgutjY9tkj7myEHQ8PsL5/9RHYPfQSQh8
         B6K+tsrPH5GTPQikT0guNw4c1pBownnHcjwM2MwFa/thpLM0TlopQmDOViP08rfBNeso
         rMHVEcODWufoZqfZm/WcPgLWFltwM1VI7+RK794cu4n8GLtLkrP9hsJR3wGSVkTUxf2Y
         xCO07WkIm2Pw5+MkkfPlz7YsLj1W5KxigvFVpCbFcLKC7uvcR+BoARRXZpTwbzS4Z//N
         oW/g==
X-Gm-Message-State: AO0yUKV5snDDu99uURwwI+FLXNB5x+HHsRELlCE08SRVIddtWm2G3x/3
	SIy1HxBDrYo8h2QG3fFwAAnkGNsI9tnOBl9vabhj7g==
X-Google-Smtp-Source: AK7set+wFCsgXgUYIDGEpMHMB73UyMnPBcZS5Za+NjqsbNmPAPmuIolhDFJR/AUEXYiry/T4wHPpmiOkMAbODo6SuV8=
X-Received: by 2002:a25:9281:0:b0:b0a:7108:71e9 with SMTP id
 y1-20020a259281000000b00b0a710871e9mr3142078ybl.4.1678140261781; Mon, 06 Mar
 2023 14:04:21 -0800 (PST)
MIME-Version: 1.0
References: <20230306191535.1917656-1-sean.anderson@seco.com> <20230306191535.1917656-4-sean.anderson@seco.com>
In-Reply-To: <20230306191535.1917656-4-sean.anderson@seco.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 6 Mar 2023 23:04:10 +0100
Message-ID: <CACRpkdZ-adsE1siz+MKvewNPoBLfwqhT_EjwDue3N9K9n0ET3A@mail.gmail.com>
Subject: Re: [PATCH v10 03/13] dt-bindings: Convert gpio-mmio to yaml
To: Sean Anderson <sean.anderson@seco.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org, 
	Madalin Bucur <madalin.bucur@nxp.com>, linuxppc-dev@lists.ozlabs.org, 
	devicetree@vger.kernel.org, Ioana Ciornei <ioana.ciornei@nxp.com>, 
	Rob Herring <robh+dt@kernel.org>, Camelia Alexandra Groza <camelia.groza@nxp.com>, 
	linux-arm-kernel@lists.infradead.org, Bagas Sanjaya <bagasdotme@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	=?UTF-8?Q?Fern=C3=A1ndez_Rojas?= <noltari@gmail.com>, 
	Jonas Gorski <jonas.gorski@gmail.com>, linux-gpio@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230306_140425_189089_3DDC24CF 
X-CRM114-Status: GOOD (  11.58  )
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

SGkgU2VhbiwKCnRoYW5rcyBmb3IgZG9pbmcgdGhpcy4gSSBuZXZlciBnb3QgYXJvdW5kIHRvIGJl
Y2F1c2UgdGltZS4KCk9uIE1vbiwgTWFyIDYsIDIwMjMgYXQgODoxNuKAr1BNIFNlYW4gQW5kZXJz
b24gPHNlYW4uYW5kZXJzb25Ac2Vjby5jb20+IHdyb3RlOgoKPiBUaGlzIGlzIGEgZ2VuZXJpYyBi
aW5kaW5nIGZvciBzaW1wbGUgTU1JTyBHUElPIGNvbnRyb2xsZXJzLiBBbHRob3VnaCB3ZQo+IGhh
dmUgYSBzaW5nbGUgZHJpdmVyIGZvciB0aGVzZSBjb250cm9sbGVycywgdGhleSB3ZXJlIHByZXZp
b3VzbHkgc3ByZWFkCj4gb3ZlciBzZXZlcmFsIGZpbGVzLiBDb25zb2xpZGF0ZSB0aGVtLiBUaGUg
cmVnaXN0ZXIgZGVzY3JpcHRpb25zIGFyZQo+IGFkYXB0ZWQgZnJvbSB0aGUgY29tbWVudHMgaW4g
dGhlIHNvdXJjZS4gVGhlcmUgaXMgbm8gc2V0IG9yZGVyIGZvciB0aGUKPiByZWdpc3RlcnMsIHNv
IEkgaGF2ZSBub3Qgc3BlY2lmaWVkIG9uZS4KPgo+IFNpZ25lZC1vZmYtYnk6IFNlYW4gQW5kZXJz
b24gPHNlYW4uYW5kZXJzb25Ac2Vjby5jb20+CiguLi4pCgo+ICsgIGNvbXBhdGlibGU6Cj4gKyAg
ICBlbnVtOgo+ICsgICAgICAtIGJyY20sYmNtNjM0NS1ncGlvICMgQnJvYWRjb20gQkNNNjM0NSBH
UElPIGNvbnRyb2xsZXIKPiArICAgICAgLSB3ZCxtYmwtZ3BpbyAjIFdlc3Rlcm4gRGlnaXRhbCBN
eUJvb2sgTGl2ZSBtZW1vcnktbWFwcGVkIEdQSU8gY29udHJvbGxlcgo+ICsgICAgICAtIG5pLDE2
OTQ0NS1uYW5kLWdwaW8gIyBOYXRpb25hbCBJbnN0cnVtZW50cyAxNjk0NDUgR1BJTyBOQU5EIGNv
bnRyb2xsZXIKCkkgdGhpbmsgeW91IGNhbiBpbmxpbmUgZGVzY3JpcHRpb246IHN0YXRlbWVudHMg
aW4gdGhlIGVudW0gaW5zdGVhZCBvZgp0aGUgIyBoYXNoIGNvbW1lbnRzLCBob3dldmVyIElJUkMg
eW91IGhhdmUgdG8gdXNlIG9uZU9mIGFuZApjb25zdDogdG8gZG8gaXQsIGxpa2UgSSBkbyBpbgpE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW5wdXQvdG91Y2hzY3JlZW4vY3lwcmVz
cyxjeThjdG1hMzQwLnlhbWwKYnV0IGRvbid0IG92ZXJpbnZlc3QgaW4gdGhpcyBpZiBpdCBpcyBj
dW1iZXJzb21lLgoKRWl0aGVyIHdheToKUmV2aWV3ZWQtYnk6IExpbnVzIFdhbGxlaWogPGxpbnVz
LndhbGxlaWpAbGluYXJvLm9yZz4KCllvdXJzLApMaW51cyBXYWxsZWlqCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
