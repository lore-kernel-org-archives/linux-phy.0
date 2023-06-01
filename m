Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41F53C77B7A
	for <linux-phy@archiver.kernel.org>; Thu,  1 Jun 2023 15:32:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xM3XJRbyZDJd2FlblDpkSPnE4JQXL/kIaAKpsSBJO/w=; b=OSOUfgYcjdfX0b
	jdCa2q/kYjbl95uz7H7sbfZkwGlejl0L5qAle8F/1+hD326SzJLIKAZYNmKYZRSmdbgtSkQqci/RV
	Vbwu203ad2fIgJZpcilxflB9bqoIuLs1JkmFpUbXhdARTs7zIv/Mvbf0yViuoxcvM/eFnZJfbQseS
	kJrI4NMA3/t6GcJWjnDYU2BYt6YccYa+jXKnJcWx6SDnbZPl4QY1Wl8PcVwb+IZVMlJ6EWhoCBQ7F
	EVcJwPT5WyVmIvMnED1SXkRe2PvgV/OizOljGf9HpUuC0Ou9q7MsKmML3tRa577Jl/KYF+1X+ex72
	+WmAviYZTNTIwBZ/oKNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4kIK-0043Ob-2u;
	Thu, 01 Jun 2023 15:32:56 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4kII-0043O7-1Y
	for linux-phy@lists.infradead.org;
	Thu, 01 Jun 2023 15:32:55 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-5147e441c33so2314330a12.0
        for <linux-phy@lists.infradead.org>; Thu, 01 Jun 2023 08:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685633572; x=1688225572;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d+hD8sanORaWT0+7h4FlSb8jJyfN127ZPZqGdgRFUik=;
        b=ElKVSOFj2eQz/HLNwoODWxWCWoi2Kx/s1W/rVvvxdLHDkzhxpGLwE89chXLB0Mnq5q
         25EkWgrR7i96Rbz+knEOs6rDhevaooR2wnXmShLYc0TtwXW0IGH9npeIYsuUkXM/eHx1
         ZuSPtyUAl4O8d7ayCPJqGiSKRW44M+xAk0JCdFG8x09GTqkvjvIHK5Z303ohDAIRQ7jP
         tdZGtiEgqRhhOHYSlYqxuv1bQEOz0ZozvnJcjRyhKEoA0C2dqXxzJWabeMMDhPP4Fs89
         qsA0JBbna14pQ78O/ir++cbTJWSptZ8LzT4qVMMHmKW2DnOYq2ajzzg6eWAyn3gDhY0O
         NWFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685633572; x=1688225572;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d+hD8sanORaWT0+7h4FlSb8jJyfN127ZPZqGdgRFUik=;
        b=MOyTUYWQeZksu8TfHiYAhyumSz0TmukXEQ7deus9vsCRX8ldyY2XF0NBHkE2uBG36h
         pv7gqSHL4fvF4+3BCo1egvgCM1iwULSzDQTkWh/JEKbNIOL7H6h/rK3GVDRaZ16lqD7G
         iCrkV5OfntCUy66pR+6Ciq/Q3497g8OPpb1JRZYtSzpX7IcVgZLSmMBUPhvcFZApE05B
         14BvrL+Vu009hfYCrENTHJ9BhIlNKfRr2cVUgX1X0Lfs14Ffb3ZU6Jg4bByRzXSVLZ02
         fuUNsH7Qqz5gBFN9Ivx5mPh7esFLHXtBnuBmoTL0hDG+q/wFmVL655tioQgAPo3PRc28
         OXDw==
X-Gm-Message-State: AC+VfDy5xZrFQgmPuKWPFhE/nUnSdMdQFsg+q8AGDWRchPJCdffsKLUY
	ZL+CXbla/Pz/7nWQILmCyHRw4A==
X-Google-Smtp-Source: ACHHUZ7a+j5H+4n877373TAsr1A1hwAPC3YrdKs+go0xqZQRXTvLCs8FQzyxfAYg3gC+80JnFGDtfA==
X-Received: by 2002:aa7:ca4f:0:b0:514:a016:9cd1 with SMTP id j15-20020aa7ca4f000000b00514a0169cd1mr140984edt.8.1685633572310;
        Thu, 01 Jun 2023 08:32:52 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id y2-20020a50eb02000000b0050488d1d376sm7361686edp.0.2023.06.01.08.32.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jun 2023 08:32:51 -0700 (PDT)
Message-ID: <c49f5619-286c-fbb7-0f18-5869527081c8@linaro.org>
Date: Thu, 1 Jun 2023 17:32:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 3/3] dt-bindings: phy: realtek: Add the doc about the
 Realtek SoC USB 2.0/3.0 PHY
Content-Language: en-US
To: =?UTF-8?B?U3RhbmxleSBDaGFuZ1vmmIzogrLlvrdd?= <stanley_chang@realtek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 Flavio Suligoi <f.suligoi@asem.it>,
 Mathias Nyman <mathias.nyman@linux.intel.com>,
 Douglas Anderson <dianders@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>, Ray Chi <raychi@google.com>,
 Michael Grzeschik <m.grzeschik@pengutronix.de>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
References: <20230525022617.30537-1-stanley_chang@realtek.com>
 <20230525022617.30537-3-stanley_chang@realtek.com>
 <0b2143ca-ead7-c8fa-2e80-a94222af51ca@linaro.org>
 <ee65a9d6d40d4099987db5ff1ad1753f@realtek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ee65a9d6d40d4099987db5ff1ad1753f@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_083254_563594_E61F1E90 
X-CRM114-Status: GOOD (  17.63  )
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

T24gMDEvMDYvMjAyMyAxMjo0OSwgU3RhbmxleSBDaGFuZ1vmmIzogrLlvrddIHdyb3RlOgo+IEhp
IEtyenlzenRvZiwKPiAKPj4gVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLiBUaGVyZSBpcyBzb21l
dGhpbmcgdG8gZGlzY3Vzcy9pbXByb3ZlLgo+Pgo+PiBBY3R1YWxseSBhIGxvdC4uLiBUaGUgYmlu
ZGluZ3MgYXJlIG5vdCBzdWl0YWJsZSBmb3IgcmV2aWV3Lgo+IAo+IFRoYW5rcyBmb3IgeW91ciBw
YXRpZW5jZSBpbiByZXZpZXdpbmcgbXkgcGF0Y2hlcy4KPiAKPiBNb3N0IG9mIHRoZSBwcm9wZXJ0
aWVzIGFyZSBhYm91dCB0aGUgcGh5IHBhcmFtZXRlcnMuCj4gSXMgdGhlIHBoeSBwYXJhbWV0ZXIg
ZGF0YSBzdWl0YWJsZSB0byBiZSBwbGFjZWQgaW4gRFRTPwo+IEkgcmVmZXJlbmNlZCBvdGhlciBw
aHkgZHJpdmVycy4gCj4gVGhlc2UgcGFyYW1ldGVycyBzaG91bGQgbm90IGJlIGRlZmluZWQgaW4g
ZHRzLgo+IEkgd291bGQgbW92ZSB0aGUgcGFyYW1ldGVycyB0byB0aGUgZHJpdmVyLgoKSWYgdGhl
c2UgY2FuIGJlIGluIHRoZSBkcml2ZXIsIHdoeSB3b3VsZCBldmVyIHRoZXkgYmUgaW4gRFRTIGlu
IHRoZQpmaXJzdCBwbGFjZT8KCj4gCj4+PiArICByZWFsdGVrLHVzYjoKPj4+ICsgICAgZGVzY3Jp
cHRpb246IFRoZSBwaGFuZGxlciBvZiByZWFsdGVrIGR3YzMgbm9kZQo+Pgo+PiAicGhhbmRsZXIi
PyBFeGNlcHQgb2J2aW91cyB0eXBvLCBkcm9wICJUaGUgcGhhbmRsZXIgb2YiIGFuZCBkZXNjcmli
ZSB3aGF0IGlzCj4+IGl0IGZvci4KPiAKPiByZWFsdGVrLHVzYiBpcyBhIHBoYW5kbGUgb2Ygc3lz
Y29uIHVzZWQgdG8gY29udHJvbCByZWFsdGVrIGR3YzMgcmVnaXN0ZXIuCgpUaGVuIG5vLCBwaHkg
c2hvdWxkIG5vdCBjb250cm9sIGR3YzMuCgo+IAo+Pj4gKyAgICAkcmVmOiAvc2NoZW1hcy90eXBl
cy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlCj4+Cj4+IEFueXdheSwgaXQgc2hvdWxkbid0IGJl
IGhlcmUuIE5vLCBuby4KPiAKPiBDYW4gSSB1c2UgaXQgZm9yIHBoYW5kbGUgb2Ygc3lzY29uPwoK
UEhZIGdldHRpbmcgcGhhbmRsZSB0byBibG9jayB1c2luZyB0aGlzIFBIWT8gTG9va3Mgd3Jvbmcu
IFdoeSB3b3VsZCBQSFkKbmVlZCB0byBwb2tlIElQIGJsb2NrIHJlZ2lzdGVyPwoKCkJlc3QgcmVn
YXJkcywKS3J6eXN6dG9mCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
