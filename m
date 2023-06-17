Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CACF8EB64D9
	for <linux-phy@archiver.kernel.org>; Sat, 17 Jun 2023 19:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/1zqke9BA8bUHDb7PceTTuRutpdYlED6XamuX5lzlkA=; b=PoPDvaBorXYA2a
	T+OXKyQJwmXSrGNvmFg2NvU7Q2KBSX0HdHnYEA5GYu/odfxTTcMh0UZFh5DH9LfsX6h/LidL5iqw1
	IzRmdsrNLAwC6jlP5hTWqRBlZ8MYvymquYbhpw/H5QXojqexJJ48DUcBdCWz+U7Jg9YyBzXGmL+5u
	lSsUq9BAYT3a4Kh57rrniDJVN6MPBeqgGxMNc4IbFiryhGg66wuYB7sV5xUN0wny73vlXoS4odhjg
	kfJmcdRpBrOqcfKchtwEsrsjlQDDHDUHIVG16T2/WFdyWcYwolAQe7Csj4fQrEQmZN0IXRL7R5JeT
	FXtqru5CCK518djpNjaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAbXF-004CXK-0l;
	Sat, 17 Jun 2023 19:24:33 +0000
Received: from mail-ua1-x930.google.com ([2607:f8b0:4864:20::930])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAbXB-004CVw-1B
	for linux-phy@lists.infradead.org;
	Sat, 17 Jun 2023 19:24:32 +0000
Received: by mail-ua1-x930.google.com with SMTP id a1e0cc1a2514c-78cdb90aa66so671305241.3
        for <linux-phy@lists.infradead.org>; Sat, 17 Jun 2023 12:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1687029866; x=1689621866;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CAVqTNFm1Ko/hSDeJVRLXQ4E4KG1rIEAdrc8bWfuH9M=;
        b=lVG2S5Xx6tFg0dg4z6KHuNJpv5zw9bfbJORZYuLnU4hzhlKRIQMYa9+jW4VwKMjoaO
         qVXcYgejWNww7bCA45NVLUicUCOag7vOWx4axAvC3r0pbruDxES/YNnjXI+QwZwW1mTv
         SyH7G8xa0wD/g0OuGWAkTmKwifbZPSjh5IRffYshgeUS6lM7tjjCo3SAYf8O+aYKxVvL
         VWyQ4j75TLZdCGdAUClkkdPqJkoHzx5InuSk/W/qrJa5VCwGhmGMI9uxpmnqryyjnbMr
         +v2lv4iKCLbN3Y/76bFeU+uf6QlEzv4E0yMkRS1fPH3BRxvk/4aWxSrJrRQQHYBoHFmX
         cQqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687029866; x=1689621866;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CAVqTNFm1Ko/hSDeJVRLXQ4E4KG1rIEAdrc8bWfuH9M=;
        b=NxxHUfqXpR9d9Bzjtix2wiYof9BvOFIcBjUhrcFz/26JmPg5zyhRiDl283SbgfLywx
         gIbgAdCM+KHazyl3lxJXKwq3K5lZLBnNPQvupm7u4p8Ac4hmc0jNysIPtvsfFFzShEqp
         c04ftHO4gtfK7t4hsoXc007qm1Levato2sYHWKqVGnaGXkXQ5CriGaob7oF31IUjtfmF
         RIHHHJnLZU8p8MF2Tcn2B8srqi3yUEWn6MWnl9s+bUdzCywoMY+cp1Ezw1gSTHBFSgVE
         SNr35CCNu1vzauZLzHFagKidsz5+B3ssfyhSFUuXvIwbwXVFTuTVAQ1beSXq9PNASgA6
         Siag==
X-Gm-Message-State: AC+VfDzYvODQBEmBLT8YsslcjBxZvjbbwGKTEzXy/yGOfjewlqwwn7e+
	LQt01kCmzVS/r/ojRZpaBCUQcKQoulM5jJ+m1UjsVw==
X-Google-Smtp-Source: ACHHUZ6T2y5qSbWChreVWtXuHv0D3Y2Yra3f3svS/wTGHSpGOvnjNQZNnXYhK2mtJC9tcD4ulS5TUIribjNZnkuC8nQ=
X-Received: by 2002:a67:fbd8:0:b0:43f:57c5:3eca with SMTP id
 o24-20020a67fbd8000000b0043f57c53ecamr824940vsr.35.1687029865896; Sat, 17 Jun
 2023 12:24:25 -0700 (PDT)
MIME-Version: 1.0
References: <20230615121419.175862-1-brgl@bgdev.pl> <20230617001644.4e093326@kernel.org>
In-Reply-To: <20230617001644.4e093326@kernel.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Sat, 17 Jun 2023 21:24:15 +0200
Message-ID: <CAMRc=Mcr=40aoXVcu2NDzz9C+GTPF-3WkyS=GEd-sQJTA9RftA@mail.gmail.com>
Subject: Re: [PATCH v2 00/23] arm64: qcom: sa8775p-ride: enable the first
 ethernet port
To: Jakub Kicinski <kuba@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Bhupesh Sharma <bhupesh.sharma@linaro.org>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Jose Abreu <joabreu@synopsys.com>, 
	netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230617_122429_631354_7E898A9C 
X-CRM114-Status: GOOD (  13.81  )
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

T24gU2F0LCBKdW4gMTcsIDIwMjMgYXQgOToxNuKAr0FNIEpha3ViIEtpY2luc2tpIDxrdWJhQGtl
cm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gVGh1LCAxNSBKdW4gMjAyMyAxNDoxMzo1NiArMDIwMCBC
YXJ0b3N6IEdvbGFzemV3c2tpIHdyb3RlOgo+ID4gRnJvbTogQmFydG9zeiBHb2xhc3pld3NraSA8
YmFydG9zei5nb2xhc3pld3NraUBsaW5hcm8ub3JnPgo+ID4KPiA+IFRoZXJlIGFyZSB0aHJlZSBl
dGhlcm5ldCBwb3J0cyBvbiBzYTg3NzVwLXJpZGUuIFRoaXMgc2VyaWVzIGNvbnRhaW5zIGNoYW5n
ZXMKPiA+IHJlcXVpcmVkIHRvIGVuYWJsZSBvbmUgb2YgdGhlIHR3byAxR2IgcG9ydHMgKHRoZSB0
aGlyZCBvbmUgaXMgMTBHYikuIFdlIG5lZWQKPiA+IHRvIGFkZCBhIG5ldyBkcml2ZXIgZm9yIHRo
ZSBpbnRlcm5hbCBTZXJEZXMgUEhZLCBpbnRyb2R1Y2Ugc2V2ZXJhbCBleHRlbnNpb25zCj4gPiB0
byB0aGUgTUFDIGRyaXZlciAod2hpbGUgYXQgaXQ6IHR3ZWFrIGNvZGluZyBzdHlsZSBhIGJpdCBl
dGMuKSBhbmQgZmluYWxseQo+ID4gYWRkIHRoZSByZWxldmFudCBEVCBub2Rlcy4KPgo+IERpZCBJ
IGFscmVhZHkgYXNrIHlvdSBob3cgZG8geW91IGVudmlzaW9uIHRoaXMgZ2V0dGluZyBtZXJnZWQ/
Cj4gWW91IGhhdmUgcGF0Y2hlcyBoZXJlIGZvciBhdCBsZWFzdCAzIGRpZmZlcmVudCB0cmVlcyBp
dCBzZWVtcy4KPiBDYW4geW91IHBvc3QgdGhlIHN0bW1hYyBkcml2ZXIgY2hhbmdlcyArIGJpbmRp
bmdzIGFzIGEgc2VwYXJhdGUgc2VyaWVzPwo+CgpTdXJlLCBub3cgdGhhdCBiaW5kaW5ncyBnb3Qg
cmV2aWV3ZWQsIEkgd2lsbCByZXNlbmQgdGhlIHBhdGNoZXMKc2VwYXJhdGVseS4gVGhlbSBnb2lu
ZyB0aHJvdWdoIGRpZmZlcmVudCB0cmVlcyB3b24ndCBicmVhayB0aGUgYnVpbGQuCgo+ID4gIGRy
aXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXNnbWlpLWV0aC5jICAgICB8IDQ1MSArKysrKysr
KysrKysrKysrKysKPgo+IE5vb2IgcXVlc3Rpb24gLSB3aGF0J3MgdGhlIGRpc3RpbmN0aW9uIGJl
dHdlZW4gZHJpdmVycy9waHkgYW5kCj4gZHJpdmVycy9uZXQvcGh5IChvciBhY3R1YWxseSBwZXJo
YXBzIGRyaXZlcnMvbmV0L3BjcyBpbiB0aGlzIGNhc2UpPwoKTm90IHN1cmUsIGJ1dCBpdCBzZWVt
cyB0aGF0IG1vc3QgZHJpdmVycyBpbiB0aGUgbGF0dGVyIGFyZSBNRElPIHdoaWxlCnRob3NlIGlu
IGRyaXZlcnMvcGh5IGFyZSBhbGwga2luZHMgb2YgUEhZcyAoVVNCLCBVRlMsIGV0Yy4pLgoKQmFy
dAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
