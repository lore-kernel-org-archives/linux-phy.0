Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45126C624A4
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 08:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h7wPaLXHMX2VnhOFrZZqCRXVnp8y+/bg0GeKcCIrlVw=; b=FBVN1EQvbziA7a
	CFmekGMf4PiRs/uGKZfMjI5QfOlK5jzbHd9W4jCiWCR/SIR/mHBL1Z3kijNdjiyeM0SC0icbvw3iz
	ph9cmh6FdQ3tqfDvy3DRcWWR8L3+EIcknWfh7C72qUWvP2CHZKSRqcAnsdpd3IfgqSStmi5pF50Ul
	26D06J5doiP1WJcEWbVWZCm97IMdoxWPNPLwUVP+KgKBdeLDOHcfE//RNEfFAtDlVKOsQhgJTUTgV
	URDov/8k226bckgPSaa8ztu5ytO2n+7/lntl2VSgB70SElGzoeYpySH5tTPOtEh4R3unDENcTyQHs
	kcCTkmbqd1ROt3AhjKNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x23Ak-0000000Gqpn-459b;
	Thu, 03 Sep 2026 08:51:50 +0000
Received: from mail-ed2-x00.google.com ([2a00:1450:4864:33::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x23Ag-0000000Gqm7-1XoV
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 08:51:48 +0000
Received: by mail-ed2-x00.google.com with SMTP id 4fb4d7f45d1cf-6a5f79c6c4fso1026052a12.0
        for <linux-phy@lists.infradead.org>; Thu, 03 Sep 2026 01:51:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788425504; cv=none;
        d=google.com; s=arc-20260327;
        b=bF+uFC9uKHvsWJMB810BWA7IdxCeCt9WQF423V8OPfvKHygA8TYVJ2BkF7yP/aE8ev
         vLJgZ6iMDY11F1P3P4y9HNZ9FIsDAiVQ32z8z0RWNaK4u8LXotadMoBhcd/puvmkiS+I
         Ej8t0Jti9lMu7VCZlNGhsLbHIQUZnrzkz0w7mIS4wMlrG+K1CBLQ6BgvfnA0/hX8S/gb
         MNuw8xZxAEzP/ZVLnVp5N5dYck/JXa5BIbAG8fEE1Ds8nZ2Lm+Jx5MM/eoIZsbHPT+4W
         dZSNoPSwppv+uCqEoGwqw1Faeu9wS7zmeAkrYCYH6AFHPFANBphq+RPqo11rlWAIXGWz
         G3ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=edjXy2PN+mcza+3kZSGSQQ3aYOZGZOPTwjWGFZXSb74=;
        fh=1MSCUQlKodM3bv3joJMeNhggPV7O365Ve58AJU4u/iE=;
        b=RDjoc6USzdQCgyC8rTPgFAcHT19t5niwU9PNNUchDp0S5M2utaQ8s1RfdXOvsp8pZo
         gyXSRANOM9wd1wdZYlQimYGLv8FWz4IQUHeoQKei3jQAWamo8sF5NJVKfQuYVW8JJl4R
         H7O/4+RkJYG1rTGM7i7JIKsiFlG361HQeK9jq6g/2GLIMJrpl0HZUWkxls+UTQyNvVq+
         Um54kHKVX+eMnWMUA4qYRm88GVoVLxOJ/yg4H+Um3R3sl2AIecE+CT4mZ+h+UAWrqiKt
         l3q8xWrdYj4jAK/YQ1TQKQUSqItE/JOT9ksao1frdd/8dLSUDEWOTE6NXruYJrKVkdoZ
         9kGA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788425504; x=1789030304; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=edjXy2PN+mcza+3kZSGSQQ3aYOZGZOPTwjWGFZXSb74=;
        b=QgF24gNPjgGB8rybzkCGGV0Ckk4IpikO0hgnT8N8TpjYoBRYRofc9kmC0qwlSe4IO+
         EHBvsJb9ENXWPeczhvZg2g459BQrjwyRsBgSf9hGBIcZ3bEwGhzmPLwTb6Ub71c2tvWy
         IFNwJTUd8jY8pLFMviCY4iosKlIk29X+H69VQnD8owLGY1SjZXr9CKT+afX/bPhoPSQv
         XwQDXHV+4mfyjYUt5wSCKZ1foQM0OYd6D58mr5sR5SgsVckLnJgjFM8oDdnmnQmhE0Mk
         cI26KwY6TXMt5Ut+UD+3+SyKJj9z0AbndwxVw7PpkWSVsev4ybZY8X5HGg9LTnicuUEg
         ioJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788425504; x=1789030304;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=edjXy2PN+mcza+3kZSGSQQ3aYOZGZOPTwjWGFZXSb74=;
        b=H1UpVekp9dDplPMOMpgrE1d8B+rap4nv0I6qmam9fKBLYJAoZvp4brbAZNww5JnH0b
         1PHTEisOzVAWc5p6pBny65HxdqwKE9fRzEYeCPszKngvBnb+peqt3iM8jXvWD2CMAKnT
         5lh4iL44V/lS5p+Up5+U7BLsdrFNAQgyrET+bFLj95KkMdpbXZdJQ/8n69g5P9o+RtH+
         LbyOYmZIaxj9hO29s5dMJPZCXSuyYb5ZQJZJRJkvOH0KHKRm2qhpBb+o+V2gRRkZThYa
         RCY2zxWMrHaQPeuHuL+VTlS3awEGI019K2ccqPNmINnScKHWiK1VTwtxkdAi5Vz0jgF2
         eKVQ==
X-Forwarded-Encrypted: i=1; AKwUvBxBiYFPyjZok7Ur9/LYPUXlTmm2cy3e3nUhQRFYTL7dH/ajvxzpkTIlQkojZ9/z65NvUNUlHhwwB9A=@lists.infradead.org
X-Gm-Message-State: AFuF++ltKY1prAqM0cDovOep/LUUMiT35uYloGCDk63N9kf38s2Ha3MB
	F5EdnSEE65YGOZEsyZYsqTIUJ0OjVl6LdpuUTq7IOf5Dr5uKZVHluiuNym3ya52YJeau9U3eK36
	2ruJPnXqECBBH/hjhxYT9nerL4aqSXpQ=
X-Gm-Gg: AYBFou2q1vpqQNvhqVwI1byYFdumqDvmKuAq804KY83qqsNZfruUefaaR0HJs3osBGa
	/Q7b8aQWm8Dy3DbPrqfzm9sNfzj1D0w2a/JjyEeonsPPwhej2yLesESG/KvBd0H4NLS5HTIKXOR
	+i/kZjAIl6TYnHA7b5N+F0WXv6YY55hJVQx5jbmNewftP/2ydrbYiqk4p+hQJhFWOMijOycn9Ly
	Kb7Etc4Ku3ARCpSnJ+e/MVKLqlkIcVqlDvWlBpL0Co6NTQDQGN2IpY16FmRkqhZak04YbJzViF2
	1wwcHxthvFItB2UKIjSaZ2kaEkm/YUIN9pzpz9JCljB61Wnwz5a5O2h140s=
X-Received: by 2002:a05:6402:460c:b0:6a3:87b7:b516 with SMTP id
 4fb4d7f45d1cf-6a68313fb0cmr6808251a12.6.1788425504326; Thu, 03 Sep 2026
 01:51:44 -0700 (PDT)
MIME-Version: 1.0
References: <20260901150111.141037-1-coiaprant@gmail.com> <20260901150111.141037-2-coiaprant@gmail.com>
 <0dec5462-f6d5-4ef9-9d02-5fdf7f3090a0@bootlin.com>
In-Reply-To: <0dec5462-f6d5-4ef9-9d02-5fdf7f3090a0@bootlin.com>
From: Coia Prant <coiaprant@gmail.com>
Date: Thu, 3 Sep 2026 16:51:31 +0800
X-Gm-Features: AcwNN1VVEgAP8GgA8LdwjKHcWBmFmP5U9Mjud48d0pq7C7tHDzymcLYpjmHugJk
Message-ID: <CALj3r0i2msRXH-uqA2QX=cRkQwM_H2bFH9GiroEys2NfEbTtCQ@mail.gmail.com>
Subject: Re: [PATCH net-next v3 01/10] net: stmmac: move XPCS lifetime
 management to platform drivers
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Romain Gantois <romain.gantois@bootlin.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	Shawn Lin <shawn.lin@rock-chips.com>, David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_015146_426141_BBC52066 
X-CRM114-Status: GOOD (  14.19  )
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

TWF4aW1lIENoZXZhbGxpZXIgPG1heGltZS5jaGV2YWxsaWVyQGJvb3RsaW4uY29tPiDkuo4yMDI2
5bm0OeaciDPml6Xlkajlm5sgMTY6MzLlhpnpgZPvvJoKPgo+IEhpIGFnYWluLAo+Cj4gU29ycnkg
SSBoYWQgYSBzZWNvbmQgbG9vayBhdCB0aGF0IGFmdGVyIGEgZ29vZCBuaWdodCdzIHNsZWVwLCBh
bmQgYWN0dWFsbHkgaGVyZQo+IHdlIG1heSByZWdyZXNzLiBUaGUgb3JpZ2luYWwgbG9naWMgY2hl
Y2tlZCBmb3IgInBjcy1oYW5kbGUiIHByZXNlbmNlLCB0aGVuCj4gZm9yIHRoZSBwY3MgbWFzaywg
YnV0IGlmIG5vIFBDUyBpcyBmb3VuZCB3ZSBkaWRuJ3QgZXJyb3Igb3V0LCB3ZSByZXR1cm5lZCAw
Lgo+Cj4gVGhpcyBpcyBtYWtpbmcgaXQgbWFuZGF0b3J5IHRvIGhhdmUgYSBQQ1MuIFBsZWFzZSBo
YW5kbGUgZ3JhY2VmdWxseSB0aGUgInRoZXJlJ3Mgbm8KPiBQQ1MiIGNhc2UgOigKPgo+Cj4gTWF4
aW1lCgpIaSwKClRoaXMgY2hhbmdlIGNvdmVycyBhbGwgY2FsbGJhY2tzIHRoYXQgdXNlIGBzZWxl
Y3RfcGNzYC4gRHJpdmVycwp3aXRob3V0IGBzZWxlY3RfcGNzYCBjYWxsYmFja3Mgd2lsbCBub3Qg
aGF2ZSB0aGVpciBwY3MgdXNlZCBieQpQaHlsaW5rLgoKQ3VycmVudGx5LCBvbmx5IHRoZSBJbnRl
bCBtZ2JlIGRyaXZlciB1c2VzIHhwY3MsIGFuZCBJbnRlbCBoYXMgYWxzbwpzZXQgYSBtYXNrIGZv
ciBwY3MtaGFuZGxlIG5vdCBzZXQuCgpUaGlzIG1lYW5zIHRoYXQgb24gSW50ZWwgcGxhdGZvcm1z
LCB0aGUgcGFydHMgdGhhdCBpbXBsZW1lbnQKYHNlbGVjdF9wY3NgIGFsd2F5cyByZXF1aXJlIHhw
Y3MgdG8gZXhpc3QuCgpJIHRoaW5rIHRoZXJlIHNob3VsZG4ndCBiZSBhbnkgcHJvYmxlbXMgaGVy
ZSwgYnV0IEkgYWdyZWUgd2l0aCB5b3UsCnJlZ3Jlc3Npb24gaXNzdWVzIGNhbiBpbmRlZWQgZWFz
aWx5IG9jY3VyIGhlcmUuCgpCZXN0LApDb2lhCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
