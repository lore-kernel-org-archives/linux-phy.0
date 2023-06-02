Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8B6FC7EE24
	for <linux-phy@archiver.kernel.org>; Fri,  2 Jun 2023 07:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kCKqw0XUnjuV4QuKRQebKboN+MSPXLXGB3lVc39gpks=; b=NcV37fJiDu9414
	XMv2K+acezMEQW3txZNPniJldtW5bdZ5wRK1J7uHpAiy9MiAfwBamfqRP2IHKpHLDgtnRO9fZj8rc
	CnVFB78OzK9NELZQrp0vet5W1NKUxqUQLbBzDPbi/DUI/6KEK8zqT/W3fcJ7M2uZjAVYz09GmR64T
	hNIcqI0WRmOCeUNBEx1TWe7PAva9LsIcunhIiFUlQlBA4JeJLRClThDw8uiNR4zp/gMUA+Vtl3Ytc
	F745tyRHvVXw/V21uraVillp7U9HSQ6O7C+1n6d2AFxeYK8I3Je9ncn1JS4D48DQEJDYl0m3J6my3
	ZYJGojJTlhbh925djxyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4yvy-005yb3-1M;
	Fri, 02 Jun 2023 07:10:50 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4yvv-005yZS-01
	for linux-phy@lists.infradead.org;
	Fri, 02 Jun 2023 07:10:48 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-51458e3af68so2433524a12.2
        for <linux-phy@lists.infradead.org>; Fri, 02 Jun 2023 00:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685689843; x=1688281843;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8f3HJQTnCmjNY3p++5r9NXNAQ1Re77SZgdbIWC5A2p4=;
        b=WF8dJlKWQyxC4tUHPqx00vEqVcYtu5ZRNlFw5VOhFHInD+2VBqgrtSDDegsQg1Vt5E
         V0dP8EYq+w1W4z3I1sBBYfExvvwm/7msAjIIXAjHgHGIUBGAYralufJXHD0kFP23Bj+F
         J4ZFiuNNmwFoBsE+UYSQOeS0otI9DQGIFYSL038d5v2nFGij4zIL8mE6VLYqksweqZLf
         rjXK8ksj+a1it5a6w1PjovnB762pirs40w0SU68jEOTUg1JQln7VmwvxCXO3A/oMLQHh
         W4me5oi61broBX6VcYJaM4A7h6Vq8Ijh85Nvp7RcZ2d+hrqakslSggSMchFmauhcwZr4
         Viig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685689843; x=1688281843;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8f3HJQTnCmjNY3p++5r9NXNAQ1Re77SZgdbIWC5A2p4=;
        b=W9VcJtnaxh9GLp18xW/nG/f5TLfVHOh2oSzJqLEe9UYY0jTs+xDbmnasL8F+M7VeLc
         PxpWvyCOJxvjQIbwFLScju+HNqBtvoPrAt+1Pq236LOD9vV82GcSIjcRqziEOuuL47mC
         2QnzwMn9Od5EeapWkSiCf0rgHttFRp5N4LFxZ4Ml6ttDuenxg8Ksmgej5jqB/fc/rPJl
         6Tw+iLE5TA8JWg53oxMMPT/M+NcTzZsoQYF5SzCPIKPaTGngFMwnd0QNTHmfOLAyeaAv
         2+K+9/sXiq7fBJTMVMWrV4ydIW3L5spzXjKSOxgnME6JdLzwse0XztxTcHyz4oBvV0wY
         nokA==
X-Gm-Message-State: AC+VfDyD6OFvxZPfNEWcYbTnznXfcGKZQGJ9PXtw6CJenP9ft+PtcYeX
	0Bcvg3YRBhROUTbHcW3G9h8Eyg==
X-Google-Smtp-Source: ACHHUZ6weBhF68GHRDPMx6/m15dbrAbwpzeRkwnl1KxpydCVmwT1Wrf6pWbqD4lI51oCIG2+uIUuqg==
X-Received: by 2002:aa7:c495:0:b0:514:56b4:35a7 with SMTP id m21-20020aa7c495000000b0051456b435a7mr1747204edq.36.1685689843340;
        Fri, 02 Jun 2023 00:10:43 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id s10-20020a056402014a00b0051422f31b1bsm323226edu.63.2023.06.02.00.10.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Jun 2023 00:10:42 -0700 (PDT)
Message-ID: <1231d116-ca4b-fb73-d000-d531297343e7@linaro.org>
Date: Fri, 2 Jun 2023 09:10:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
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
 <c49f5619-286c-fbb7-0f18-5869527081c8@linaro.org>
 <f53b5c21247c49db8be7071de36c773b@realtek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <f53b5c21247c49db8be7071de36c773b@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230602_001047_061406_D7EE98CA 
X-CRM114-Status: GOOD (  14.34  )
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

T24gMDIvMDYvMjAyMyAwNToyMCwgU3RhbmxleSBDaGFuZ1vmmIzogrLlvrddIHdyb3RlOgo+IEhp
IEtyenlzenRvZiwKPiAKPj4+Cj4+PiBNb3N0IG9mIHRoZSBwcm9wZXJ0aWVzIGFyZSBhYm91dCB0
aGUgcGh5IHBhcmFtZXRlcnMuCj4+PiBJcyB0aGUgcGh5IHBhcmFtZXRlciBkYXRhIHN1aXRhYmxl
IHRvIGJlIHBsYWNlZCBpbiBEVFM/Cj4+PiBJIHJlZmVyZW5jZWQgb3RoZXIgcGh5IGRyaXZlcnMu
Cj4+PiBUaGVzZSBwYXJhbWV0ZXJzIHNob3VsZCBub3QgYmUgZGVmaW5lZCBpbiBkdHMuCj4+PiBJ
IHdvdWxkIG1vdmUgdGhlIHBhcmFtZXRlcnMgdG8gdGhlIGRyaXZlci4KPj4KPj4gSWYgdGhlc2Ug
Y2FuIGJlIGluIHRoZSBkcml2ZXIsIHdoeSB3b3VsZCBldmVyIHRoZXkgYmUgaW4gRFRTIGluIHRo
ZSBmaXJzdCBwbGFjZT8KPj4KPiBPdXIgcGxhdGZvcm1zIGhhdmUgMyB4aGNpIGNvbnRyb2xsZXJz
IHdoaWNoIG1hcCB0byAzIGRpZmZlcmVudCBwaHkgcG9ydHMuCgpZb3UgbWVhbiBvbiB0aGUgc2Ft
ZSBTb0M/Cgo+IEFuZCB0aGUgdGhyZWUgcGh5IHBvcnRzIHVzZSB0aGUgc2FtZSBkcml2ZXIsIGJ1
dCB0aGUgcGFyYW1ldGVycyBhcmUgZGlmZmVyZW50Lgo+IFNvIEkgcHV0IHRoZSBwYXJhbWV0ZXIg
c2V0dGluZ3MgaW4gRFRTLCB3ZSBoYXZlIDMgdXNiLXBoeSBub2RlcyByZXByZXNlbnRpbmcgMyBw
aHkgcG9ydHMuCj4gQWxzbywgc29tZSBwYXJhbWV0ZXJzIGhhdmUgdG8gYmUgYWRqdXN0ZWQgZm9y
IGRpZmZlcmVudCBib2FyZHMuCj4gVGhlcmVmb3JlLCBpdCBpcyBtb3JlIGFwcGxpY2FibGUgaW4g
RFRTIHRoYW4gaW4gZHJpdmVyLgoKVGhlbiBpdCBsb29rcyBqdXN0aWZpZWQgaW4gRFQsIHNvIHBs
ZWFzZSB3cml0ZSBwcm9wZXIgZGVzY3JpcHRpb25zIGZvcgpwcm9wZXIgcHJvcGVydGllcy4gVW5k
ZXJzY29yZXMgYXJlIG5vdCBhbGxvd2VkIGluIG5vZGUgbmFtZXMuIE5vIGZha2UKbm9kZXMuIFBy
b3BlcnRpZXMgc2hvdWxkIHVzdWFsbHkgZGVzY3JpYmUgcGh5c2ljYWwvaGFyZHdhcmUgZWZmZWN0
IG5vdAp0aGUgcmVnaXN0ZXIgdmFsdWUuCgpxY29tLHVzYi1zbnBzLWZlbXRvLXYyLnlhbWwgaXMg
bmljZSBleGFtcGxlLiBGZXcgTWVkaWF0ZWsgYmluZGluZ3MgYWxzbwp3b3VsZCB3b3JrLgonCgpC
ZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
