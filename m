Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4CBBD339AE
	for <linux-phy@archiver.kernel.org>; Fri,  5 Dec 2025 18:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/J3IeNlJ6defSS2420Nee0f37nwurXZFVTqoOLQAjx4=; b=CGT4HNZHp0KcMe
	PUf+6BpgY6H9BzWESdZJkmcTz6Ol8qGe5EA84f1+cIHzfON0FfdcdrNurRCHVK9X96lAcQBPwu9An
	ghL5MFRtfXy3hryTlf4+ZyN8QEhcch8eiM3485j/sXUgLb0P7hIcXtsqWCGqerMKwNmrvBUgj+LsG
	xpr8c7+TGsmlC5A6u2/iDyBUJlxb+/sBNZGA6BnMtkkFBdnYOfd+HvqyczwNlhIZwArLFfIedDcu0
	Zj4+nvf20AGNLdJCDuOTrHrIYuCKFM1ECrK8ph/hzFMozlWakwOhvfcXMgNXhgaBSncB5Hp8YCZxt
	CVOfAB2KXgtn7uYZr9Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRar7-00000009u5O-4A3y;
	Fri, 05 Dec 2025 18:48:38 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRar4-00000009u4Y-4BH1
	for linux-phy@lists.infradead.org;
	Fri, 05 Dec 2025 18:48:36 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-7bb3092e4d7so2671079b3a.0
        for <linux-phy@lists.infradead.org>; Fri, 05 Dec 2025 10:48:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764960514; x=1765565314; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Q6EcbywE6ObkGLQJKdWlwUFKpn2ScLerpcjwePaETY=;
        b=Tq9z631VxUd5Bj2XLtoKCUvgUKGVnpMTFLPXtJe3q4YCAXdV193ie3Xqv68M52Z814
         1sPECS890bBRa9OnHHho8BOSQakRyKJQYZDJW278l8KNSx0RmROWAZvCclBd72s4yDzx
         gtl5vsRwQwy8iwII6tuKWjqzYCFyT4kS+aZSKKi7pl/77Zs48KN19sGPQTdlhjOrKSFk
         z64WUWeYkjh3SvLv/S7tXm7nImVguERGDQxIq/v7NHzPZI8Jf6FgdyEHJiGT3mfffPXp
         ty5aFpWomXqK0Iy32N269XOoMuXUNXTXcINW2BnFtfIV0eAfcWN8k8ZN41s4wLBtHx/7
         cRpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764960514; x=1765565314;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1Q6EcbywE6ObkGLQJKdWlwUFKpn2ScLerpcjwePaETY=;
        b=ItiwMMqVLcCN9Sp/IGQ6YxKdw56rCaaJLNmUG0b9GTpt609qw5y6BjF6A0nP/B01OY
         BZ+05xfifO6iTLrKBaR70tVwbX2gtT71i2x1yOZOI7Ub7DiklbGegq4QJt2YuytvdXC/
         iv/158U02r1hR0lUa7jnWwcZYgRkIiMYEr6cDLitNkCaQPgnyBleuThVXpQ3yUL5ueHP
         xJ85ViPggEgeOu+iAteJQnVgn3Tg4wtDsdd32Fekon8Hcu6dnAfRtxX/FGWBsOQFkTpL
         FBjlNWm6zuZ9pMZhjOnOdVwWiK5aReGupbf6WMvj05WXc/80PzKV7sgfuN14lEJFbK6n
         hwBg==
X-Forwarded-Encrypted: i=1; AJvYcCWZCCUm0n834I87D8lHX4zINGfYTLxr8svY7ulFCbBZABsAKX+zbeA/C0ti6HW5qSTW8HqD0REdwJE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzPi7yS2TiMzP6DcRYuD9LUeX3eVcQzzF2NFYnBNqnNRYDTVP+c
	XBBdstDVFvbrYhrveexAwJcVeA4LwP7lXfSRiMEsZRXkx19lewocsQw9bgy20uHKkuFFHkXYreQ
	BBpcMtKpkwygsdwUXrWnM2fmqIb9Nqca+zu9SFmiV
X-Gm-Gg: ASbGnctmF6oe/wywoD5lEW/p32dim1zSdnbQyI8NCVF8PZVhs2f3RMytUok63vuyc8f
	5W0Y96OIehy95BohNEcSVQ96DxHfO3pl1iJAjJ1cR3SsgYnsNMySpi32nXxppiQCIbE4LwwjMXY
	O/0SN7MBn9PVImY8/JBIahn9/urqY16OBaWe+PwD1GBj+ehMG1z1ewruthUrF08ERZCHkm5BqUT
	26ReSooY3j87TT0YoeAZ+xUyIPL52CpcF30yBKStqQph430Mbkz5/n2vitjJB3SyEKN+zSDvpbG
	vvYlr2RSVdNP9prgSuMeu4K1otSb79GhOmc7dQ==
X-Google-Smtp-Source: AGHT+IHPjKxmUgUnc41hN8InTFTUB04ZMTHM8NxbTIHlyyEkurGa6h5cB+riJJxf4O6UOMxvtJ+cStktzfIrQZXN+UY=
X-Received: by 2002:a05:7022:24a4:b0:119:e569:fb9b with SMTP id
 a92af1059eb24-11e031662c8mr92285c88.10.1764960513510; Fri, 05 Dec 2025
 10:48:33 -0800 (PST)
MIME-Version: 1.0
References: <20251205-phyb4-v8-0-c59ea80a4458@google.com> <20251205-phyb4-v8-1-c59ea80a4458@google.com>
 <18eeb1c5-d21b-4505-b6a4-472f6e191864@kernel.org>
In-Reply-To: <18eeb1c5-d21b-4505-b6a4-472f6e191864@kernel.org>
From: Roy Luo <royluo@google.com>
Date: Fri, 5 Dec 2025 10:47:57 -0800
X-Gm-Features: AWmQ_bmySTT8joxXt75c1w2iUmXVlvf9G0SNEi5yExzmfdZw7r8lYP_ul02mNBU
Message-ID: <CA+zupgwa+m8Pa=+8shORaOA1OO6zoo6zYEojFS2UDuP0doBq7A@mail.gmail.com>
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: google: Add Google Tensor G5 USB PHY
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Badhri Jagan Sridharan <badhri@google.com>, Doug Anderson <dianders@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_104835_058802_BDB617E2 
X-CRM114-Status: GOOD (  25.03  )
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

T24gRnJpLCBEZWMgNSwgMjAyNSBhdCA5OjEz4oCvQU0gS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6
a0BrZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIDA1LzEyLzIwMjUgMDQ6NTQsIFJveSBMdW8gd3Jv
dGU6Cj4gPiBEb2N1bWVudCB0aGUgZGV2aWNlIHRyZWUgYmluZGluZ3MgZm9yIHRoZSBVU0IgUEhZ
IGludGVyZmFjZXMgaW50ZWdyYXRlZAo+ID4gd2l0aCB0aGUgRFdDMyBjb250cm9sbGVyIG9uIEdv
b2dsZSBUZW5zb3IgU29Dcywgc3RhcnRpbmcgd2l0aCBHNQo+ID4gZ2VuZXJhdGlvbiAoTGFndW5h
KS4gVGhlIFVTQiBQSFkgb24gVGVuc29yIEc1IGluY2x1ZGVzIHR3byBpbnRlZ3JhdGVkCj4gPiBT
eW5vcHN5cyBQSFkgSVBzOiB0aGUgZVVTQiAyLjAgUEhZIElQIGFuZCB0aGUgVVNCIDMuMi9EaXNw
bGF5UG9ydCBjb21ibwo+ID4gUEhZIElQLgo+ID4KPiA+IER1ZSB0byBhIGNvbXBsZXRlIGFyY2hp
dGVjdHVyYWwgb3ZlcmhhdWwgaW4gdGhlIEdvb2dsZSBUZW5zb3IgRzUsIHRoZQo+ID4gZXhpc3Rp
bmcgU2Ftc3VuZy9FeHlub3MgVVNCIFBIWSBiaW5kaW5nIGZvciBvbGRlciBnZW5lcmF0aW9ucyBv
ZiBHb29nbGUKPiA+IHNpbGljb25zIHN1Y2ggYXMgZ3MxMDEgYXJlIG5vIGxvbmdlciBjb21wYXRp
YmxlLCBuZWNlc3NpdGF0aW5nIHRoaXMgbmV3Cj4gPiBkZXZpY2UgdHJlZSBiaW5kaW5nLgo+ID4K
PiA+IFNpZ25lZC1vZmYtYnk6IFJveSBMdW8gPHJveWx1b0Bnb29nbGUuY29tPgo+Cj4gV2h5IGlu
dGVudGlvbmFsbHkgZHJvcHBpbmcgdGhlIHRhZz8gSG93IGFyZSB5b3UgaGFuZGxpbmcgdGhpcyBw
YXRjaHNldD8KPiBSZXdyaXRlIGV2ZXJ5IHRpbWUgZnJvbSBzY3JhdGNoPwoKSGkgS3J6eXN6dG9m
LAoKSSBkcm9wcGVkIHRoZSB0YWcgYmVjYXVzZSBhIG5ldyBmaWxlIGlzIGJlaW5nIG1vZGlmaWVk
IGluIHRoaXMgdmVyc2lvbiwKQWx0aG91Z2ggaXQncyBqdXN0IE1BSU5UQUlORVIgZmlsZSBidXQg
SSB0aG91Z2h0IHlvdSBtaWdodCBhbHNvIHdhbnQKdG8gdGFrZSBhIGxvb2suIEkgd2Fzbid0IHN1
cmUgaWYgbW9kaWZ5aW5nIGEgbmV3IGZpbGUgcXVhbGlmaWVzIGFzCiJzdWJzdGFudGlhbCIgc28g
SSBlcnJlZCBvbiB0aGUgc2lkZSBvZiBjYXV0aW9uLiBJIHNob3VsZCd2ZSBjYWxsZWQgaXQKb3V0
IHNwZWNpZmljYWxseSBpbiB0aGUgY2hhbmdlIGxvZy4gU29ycnkgZm9yIHRoZSBpbmNvbnZlbmll
bmNlLgoKUmVnYXJkcywKUm95IEx1bwoKPgo+IDxmb3JtIGxldHRlcj4KPiBUaGlzIGlzIGEgZnJp
ZW5kbHkgcmVtaW5kZXIgZHVyaW5nIHRoZSByZXZpZXcgcHJvY2Vzcy4KPgo+IEl0IGxvb2tzIGxp
a2UgeW91IHJlY2VpdmVkIGEgdGFnIGFuZCBmb3Jnb3QgdG8gYWRkIGl0Lgo+Cj4gSWYgeW91IGRv
IG5vdCBrbm93IHRoZSBwcm9jZXNzLCBoZXJlIGlzIGEgc2hvcnQgZXhwbGFuYXRpb246Cj4gUGxl
YXNlIGFkZCBBY2tlZC1ieS9SZXZpZXdlZC1ieS9UZXN0ZWQtYnkgdGFncyB3aGVuIHBvc3Rpbmcg
bmV3IHZlcnNpb25zCj4gb2YgcGF0Y2hzZXQsIHVuZGVyIG9yIGFib3ZlIHlvdXIgU2lnbmVkLW9m
Zi1ieSB0YWcsIHVubGVzcyBwYXRjaCBjaGFuZ2VkCj4gc2lnbmlmaWNhbnRseSAoZS5nLiBuZXcg
cHJvcGVydGllcyBhZGRlZCB0byB0aGUgRFQgYmluZGluZ3MpLiBUYWcgaXMKPiAicmVjZWl2ZWQi
LCB3aGVuIHByb3ZpZGVkIGluIGEgbWVzc2FnZSByZXBsaWVkIHRvIHlvdSBvbiB0aGUgbWFpbGlu
Zwo+IGxpc3QuIFRvb2xzIGxpa2UgYjQgY2FuIGhlbHAgaGVyZS4gSG93ZXZlciwgdGhlcmUncyBu
byBuZWVkIHRvIHJlcG9zdAo+IHBhdGNoZXMgKm9ubHkqIHRvIGFkZCB0aGUgdGFncy4gVGhlIHVw
c3RyZWFtIG1haW50YWluZXIgd2lsbCBkbyB0aGF0IGZvcgo+IHRhZ3MgcmVjZWl2ZWQgb24gdGhl
IHZlcnNpb24gdGhleSBhcHBseS4KPgo+IFBsZWFzZSByZWFkOgo+IGh0dHBzOi8vZWxpeGlyLmJv
b3RsaW4uY29tL2xpbnV4L3Y2LjEyLXJjMy9zb3VyY2UvRG9jdW1lbnRhdGlvbi9wcm9jZXNzL3N1
Ym1pdHRpbmctcGF0Y2hlcy5yc3QjTDU3Nwo+Cj4gSWYgYSB0YWcgd2FzIG5vdCBhZGRlZCBvbiBw
dXJwb3NlLCBwbGVhc2Ugc3RhdGUgd2h5IGFuZCB3aGF0IGNoYW5nZWQuCj4gPC9mb3JtIGxldHRl
cj4KPgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
