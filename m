Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85A33CED628
	for <linux-phy@archiver.kernel.org>; Wed,  9 Oct 2024 08:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0TzTgueTjNU7LjEdkpjIOpPcMFlZoIi9QPYJjHgXcLY=; b=yCpRu0v7XMJLrZ
	3brhbftJtIfu1AkUxTpR6+mJxqgfMwJRWdOS/u93f1HEyc4XFiSH0YfNZcbXADUtHxFBSor6mBF8/
	szGJEiuqpFi07MyLbkspV26iPoUK7vZ9a3MshAhaY0qXYp8zySEoLaq+BEwii5OpprsQ0wPI5H5bA
	vNVlW1c1FShpNbNv/IWBRuXWjJw5Kgk956CqGTeo5Ua6pOFXHCByv9l8LIB8dEmhOhzuunVpUVKbp
	MJnJHGv+A5fkZt0/51ZSlPquQe3BlrIZCJKHm+e8uXbBtrMTAGFCdGcyIZvcmBjXUMPMCfyweso9s
	HmyFLLywfvDh9T+w0ezg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syS3S-00000008SF1-0mZK;
	Wed, 09 Oct 2024 08:28:22 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syS3O-00000008SED-3aY9
	for linux-phy@lists.infradead.org;
	Wed, 09 Oct 2024 08:28:20 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a99543ab209so403156566b.2
        for <linux-phy@lists.infradead.org>; Wed, 09 Oct 2024 01:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1728462497; x=1729067297; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I2hncZT6TqY/G1HXjmnIuAZCGBO3DyGdLMKMRrjDhbE=;
        b=G2PoD4GmL/KbtsdC5tJaYr4IsATirL4zKUXUAVVcuRucv1LxygPD4OOuYrzrlERYbn
         wti4ZHmC9fMVZz7unqneMy87zFZ+Hl8mMY2HoNE18nTFXHcqdpsVQZLlG9Ea2inU9VdV
         I2addnumRBDI3KQdgbeMTx6X+fRnNJJumjqMI1KBxSwuEY88vVkRQBB3n/YvVnZiQ2Ln
         rZzbW0QGDbv7gE2NYfSVFvjrPqWiVbl9DUKAMCguyjaGfnQNUu0+evUNco/K3FWWzr15
         B+7M22vuZXNFBk5OAbyguf6QohXhvCiUZcaUD+4F+eBhdI1HdEXsf1zawIsmvh5/oY/B
         8Jhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728462497; x=1729067297;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I2hncZT6TqY/G1HXjmnIuAZCGBO3DyGdLMKMRrjDhbE=;
        b=Yp+V5MLZA4Q6kflgONJPsX8QCiUIxmepb1FP9o6nmnuV3M+m5M3vqY4u+a4vaLfaeX
         8T6CE644NvCTmaHsYEL7Vb7PbEQiWCgZNda+LWt//4ocKsF9hXRet4WtEPTr0t7+C590
         JBk0mrs9oj21wPIUl3jbXjBugq+ceIVm2Q/SATzSWFsSamMkSYtoL6MQmfEdHbJzUFz2
         lKOUtlYUTETVZcs5lIjJrCNjnB1tEKNe+f/4/G6dXJ9RwDMaM4Ehcf26Tf+zRynI1Jyv
         sRUQ+C5rEtPiiWaqgaq0jKxcBfQp8TYjheLmAJ0UqUulQ/6X/K7dLIiPuFAZVD2LxK4f
         ddpg==
X-Forwarded-Encrypted: i=1; AJvYcCVu35JYVTUnNNH4QSxKyYRzqPd0H0+u+sm74gxaXpRKxCLgbU6xo/oVt2v9oRPdCa9YL5aniL3k/78=@lists.infradead.org
X-Gm-Message-State: AOJu0YxtYv7QZwva+FCAsNtWQR4KJqZ4DHpkm6a4qtUUtHHGX8OguGq3
	ukdBu9x/qUELmVAguCzRia4rht8DFwhiBFh8hxXNU+BoPHLaQo6qkrCLTs+gIBQ=
X-Google-Smtp-Source: AGHT+IHydLDTN7M+AKpH7BEdVRIu8dWcOdUuUuBI8mSec0MSrJaKmy7lwh2lnEMLP2ErYV/NquO3Yg==
X-Received: by 2002:a17:907:868e:b0:a99:4567:9205 with SMTP id a640c23a62f3a-a998d1fa080mr114977666b.35.1728462496919;
        Wed, 09 Oct 2024 01:28:16 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.23])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a994ae7d1d1sm471992866b.104.2024.10.09.01.28.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2024 01:28:16 -0700 (PDT)
Message-ID: <59dabcb6-ae03-436c-87cc-1850e5130f72@tuxon.dev>
Date: Wed, 9 Oct 2024 11:28:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/16] dt-bindings: usb: renesas,usbhs: Document RZ/G3S
 SoC
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org,
 yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com,
 ulf.hansson@linaro.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-pm@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <20240822152801.602318-10-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdW5asr8ppnfxKT2zXq-9ScK1zZUJ9Fw1fZZeU22jbTuWw@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdW5asr8ppnfxKT2zXq-9ScK1zZUJ9Fw1fZZeU22jbTuWw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_012818_919688_C467DEEA 
X-CRM114-Status: GOOD (  13.51  )
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

SGksIEdlZXJ0LAoKT24gMDguMTAuMjAyNCAxNzo1MSwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3Rl
Ogo+IEhpIENsYXVkaXUsCj4gCj4gT24gVGh1LCBBdWcgMjIsIDIwMjQgYXQgNToyOOKAr1BNIENs
YXVkaXUgPGNsYXVkaXUuYmV6bmVhQHR1eG9uLmRldj4gd3JvdGU6Cj4+IEZyb206IENsYXVkaXUg
QmV6bmVhIDxjbGF1ZGl1LmJlem5lYS51akBicC5yZW5lc2FzLmNvbT4KPj4KPj4gVGhlIFVTQkhT
IElQIGJsb2NrIG9uIFJaL0czUyBTb0MgaXMgaWRlbnRpdGNhbCB0byB0aGUgb25lIGZvdW5kIG9u
IHRoZQo+PiBSWi9HMkwgZGV2aWNlLiBEb2N1bWVudCB0aGUgUlovRzNTIFVTQkhTIElQIGJsb2Nr
Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBDbGF1ZGl1IEJlem5lYSA8Y2xhdWRpdS5iZXpuZWEudWpA
YnAucmVuZXNhcy5jb20+Cj4gCj4gUmV2aWV3ZWQtYnk6IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2Vl
cnQrcmVuZXNhc0BnbGlkZXIuYmU+Cj4gCj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy91c2IvcmVuZXNhcyx1c2Jocy55YW1sCj4+ICsrKyBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvcmVuZXNhcyx1c2Jocy55YW1sCj4+IEBAIC0yNiw2ICsy
Niw3IEBAIHByb3BlcnRpZXM6Cj4+ICAgICAgICAgICAgICAgIC0gcmVuZXNhcyx1c2Jocy1yOWEw
N2cwNDMgIyBSWi9HMlVMIGFuZCBSWi9GaXZlCj4+ICAgICAgICAgICAgICAgIC0gcmVuZXNhcyx1
c2Jocy1yOWEwN2cwNDQgIyBSWi9HMntMLExDfQo+PiAgICAgICAgICAgICAgICAtIHJlbmVzYXMs
dXNiaHMtcjlhMDdnMDU0ICMgUlovVjJMCj4+ICsgICAgICAgICAgICAgIC0gcmVuZXNhcyx1c2Jo
cy1yOWEwOGcwNDUgIyBSWi9HM1MKPj4gICAgICAgICAgICAtIGNvbnN0OiByZW5lc2FzLHJ6ZzJs
LXVzYmhzCj4+Cj4+ICAgICAgICAtIGl0ZW1zOgo+IAo+IFNvIHdlIGRvIGhhdmUgbmV3IHVzZXJz
IG9mIHRoZSBIUy1VU0IgYmxvY2shCj4gSWYgeW91IGRvIGhhdmUgYSBuZWVkIGZvciByZW5lc2Fz
LGVuYWJsZS1ncGlvcywgaXQgbWF5IGJlIGEgZ29vZCBpZGVhCj4gdG8gcHJvY2VlZCBhcyBwZXIg
dGhlIGRpc2N1c3Npb24gaW4gIltQQVRDSCAxLzJdIGR0LWJpbmRpbmdzOiB1c2I6Cj4gcmVuZXNh
cyx1c2JoczogRGVwcmVjYXRlIHJlbmVzYXMsZW5hYmxlLWdwaW8iCj4gKGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2FsbC8yMDI0MTAwMjIxMzY1Mi5HQTEzMzAwMDQtcm9iaEBrZXJuZWwub3JnLyku
CgpUaGFuayB5b3UgZm9yIGxldHRpbmcgbWUga25vdy4gQXMgb2YgbXkgY3VycmVudCBpbnZlc3Rp
Z2F0aW9uIHRoZXJlIGlzIG5vCm5lZWQgZm9yIHRoaXMgcHJvcGVydHkuIEknbGwga2VlcCBpdCBp
biBtaW5kLCBhbnl3YXkuCgpUaGFuayB5b3UsCkNsYXVkaXUgQmV6bmVhCgo+IAo+IEdye29ldGpl
LGVldGluZ31zLAo+IAo+ICAgICAgICAgICAgICAgICAgICAgICAgIEdlZXJ0Cj4gCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
