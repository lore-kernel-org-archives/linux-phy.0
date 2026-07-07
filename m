Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 697B1C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 19:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BA8KDVG6IduhUlNCH6MPq8fxCNOGOjtMoKCg4fHYhnk=; b=eW+pyvQQVAI73z
	BXK/c/m89Bcn/sn2pQaMhZGblB4SKe+IcMHpWdQJXMvXLi4WpBCX3DcuxFojn8diwoqDtZWC09g+R
	1zc5BA4jZekeevjVxwo+SOADM7U9lCuAeuX4R2GLH2NtK+evSqNc54gXmXHp794QVpClB7Td1NZ/2
	6tzvubbiP+WVLVUL97SiQGLxkC1lV3nFzb36Z03V2SQQhalayjrMyLLUy35C7ZnZzqe7xt5d6sSOv
	pcT1Ud9rhys6WEgf2SwppLDE/UGcijUS+F5T/lq6pR0r/Xt37ZRDCHipw+SiMu+8C09O6XeOWG+Mq
	PgLIBFbkB4t4muT/o51g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whB2j-0000000Fg8C-00gh;
	Tue, 07 Jul 2026 19:01:17 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whB2W-0000000Fg5x-2NmW
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 19:01:14 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-493c52cde9eso44382755e9.3
        for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 12:01:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783450863; x=1784055663; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=9U+Mm7+UlibCZMW00t912Atja0ya4M2ty/S6lVSlezQ=;
        b=MC+WwNdYrPQ3DxELab2hrS0Mprs3DYssWzHpvO9Spb/RyuuEG0iLmbkV4sziGXQZEd
         uXMuwiT0e0OC8sYtLdp/JRKtXS5v1UPZwKNgDh8EvDlBi+Ae0Vl01JRWecC5QqdcX46y
         In1UqiwuBOPdM5ReqYF5HgXHBTJqw3EX0nXvjNt28IJSG/nTVdda+fDZ33OE2tP5QOe1
         VX6R/6DFtX4thpUjo2tId930c2oTxj93dBn2r24MNKdiEbGH+wl1wGrgrg1JEZ1Ly2vh
         EywHba78UY0ShrdWeyPf9mD8u/tH0qMcVtqEfx7sDUyKzCtDJE2YIdHWgWhqpp42qZBC
         BKrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783450863; x=1784055663;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9U+Mm7+UlibCZMW00t912Atja0ya4M2ty/S6lVSlezQ=;
        b=IIv9VyyNSHeRIGkXtyCUDmuQBbKGmiDTBs4XLD2w0AJNUmfsBpGZWZRQgIs8OrqhJ8
         V6Wp5RB+mMaC9CO8hYyd04bRUV6SIZysA/aGnv5Q7QY4tDnKHSZDC4b7KzbZzD8zR9nh
         rsnkuF0LTWLIyPFlU6KohSY8gKt2smAWgbnOgbJG9Fbolcm9zChe7MSveUaWe31PHhO+
         030u7+ORNC/v2t+JbiJDL4jHe51f7DZdZ+PIOWj9MXkWaYTY7OZxb62bVJFdZ0kXS6pk
         NOmGtcCs6Nx7Cl+wpvyKBVcQArrWQurmT0pgb03aOap4tf/uGklgeLk30yukI8W5AKBG
         BX9A==
X-Forwarded-Encrypted: i=1; AHgh+RpBkPbTqdBjv7cZ/a0CW0ejs2sN44nJQ9sLdpo724PBWEAnuMONZbt8HY8UMrYcrNyQ2CtlabgeFTo=@lists.infradead.org
X-Gm-Message-State: AOJu0YyGu05EPWPogBcL2kCyDQgN+uUKSsHjeJkH3LWiLgztOSmzErdD
	qBzT3xFa7ksVykq3MbMqOYbkkMROOurp9k3PwQVYf0y2G2e7BHYfL6II
X-Gm-Gg: AfdE7cnDCLyDNYhC3V0hUO6/6zsyNFhqLH6yiAESCWQFqPtoDxdzOcivkrwCteNc0H1
	RnJRDkDcFJyXnpuqxgDKW3AyfFZjKaOUlqFi1qpQYz1K+dgIbNkeIvsEheq4RzPul2jv8PzGUTE
	+fhUWbry5kJ7efTpwH0KFFtNepV1+klBsPM1NIzP+g49qXwLHlvmGtFRU0p0Vqz51uRcZVZ7Vub
	I3YHmlsPlNb1FM9O73z5DwpZ8NMfmgQ0hmgkcrDTVcysFjVqulE3ZfkSmT9cTpRk+RqC01WVo7G
	GGlHrvR+pHJtD2NIx51FEZSrrGIzeSmdZO+pHHJYdoFeKizuuPoiVskiIorl0QqalhB72luMm1G
	u4WwFH/Y5IoRs1XGh8h/3jndYfoGyTt1fmlchIuAFM1qu6NIzZCePViu4NuFWiqKMAkpa2CdczW
	7dodvTTXz8lUihTVILuW+d6vju
X-Received: by 2002:a05:600c:8b6c:b0:492:4a50:41fe with SMTP id 5b1f17b1804b1-493df092ac5mr73198175e9.22.1783450862462;
        Tue, 07 Jul 2026 12:01:02 -0700 (PDT)
Received: from [192.168.1.10] ([95.43.220.235])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-493e0f5bc78sm90260455e9.14.2026.07.07.12.01.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jul 2026 12:01:01 -0700 (PDT)
Message-ID: <81a7e0f6-8731-4bae-b06c-932f5c57d4dc@gmail.com>
Date: Tue, 7 Jul 2026 22:01:00 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] dt-bindings: phy: motorola,cpcap-usb: add chrg_det
 interrupt
To: Conor.Dooley@microchip.com, conor@kernel.org
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, aaro.koskinen@iki.fi,
 andreas@kemnade.info, khilman@baylibre.com, rogerq@kernel.org,
 tony@atomide.com, linusw@kernel.org, brgl@kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-gpio@vger.kernel.org
References: <20260705101105.1798069-1-ivo.g.dimitrov.75@gmail.com>
 <20260705101105.1798069-2-ivo.g.dimitrov.75@gmail.com>
 <20260706-visitor-calorie-b805ac5af970@spud>
 <2b192691-54d8-4449-a18c-b87266c6c73c@gmail.com>
 <dad556ba-5965-42a0-b78a-2d417b2f6837@microchip.com>
Content-Language: en-GB
From: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
In-Reply-To: <dad556ba-5965-42a0-b78a-2d417b2f6837@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_120104_641542_4E28B64F 
X-CRM114-Status: GOOD (  17.35  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CgpPbiA3LjA3LjI2INCzLiAxMjo1OCDRhy4sIENvbm9yLkRvb2xleUBtaWNyb2NoaXAuY29tIHdy
b3RlOgo+IE9uIDA2LzA3LzIwMjYgMjI6MjUsIEl2YXlsbyBEaW1pdHJvdiB3cm90ZToKPj4KPj4g
SGksCj4+Cj4+IE9uIDYuMDcuMjYg0LMuIDIwOjE0INGHLiwgQ29ub3IgRG9vbGV5IHdyb3RlOgo+
Pj4gT24gU3VuLCBKdWwgMDUsIDIwMjYgYXQgMDE6MTE6MDJQTSArMDMwMCwgSXZheWxvIERpbWl0
cm92IHdyb3RlOgo+Pj4+IFRoZSBDUENBUCBVU0IgUEhZIGRyaXZlciB1c2VzIHRoZSBDUENBUCBj
aGFyZ2VyIGRldGVjdGlvbiBpbnRlcnJ1cHQKPj4+PiBmb3IgRENQIGRldGVjdGlvbi4KPj4+Cj4+
PiBUaGlzIGlzIG5vdCBjdXJyZW50bHkgdHJ1ZSwgdGhlIGRyaXZlciBkb2VzIG5vdCBsb29rIGZv
ciB0aGlzIGludGVycnVwdAo+Pj4gYXQgdGhlIHRpbWUgb2YgdGhpcyBwYXRjaC4KPj4+Cj4+Cj4+
IFJpZ2h0LCB0aGlzIGlzIGJhZCB3b3JkaW5nIGNhdXNlZCBieSB0aGUgZmFjdCB0aGF0IGluaXRp
YWxseSB0aGUgZHJpdmVyCj4+IHBhdGNoIGNhbWUgYmVmb3JlIHRoZSBiaW5kaW5nIHBhdGNoLgo+
Pgo+Pj4+IFVwZGF0ZSB0aGUgYmluZGluZyBhbmQgZXhhbXBsZSBEVFMgdG8gdXNlIHRoZSBjb3Jy
ZXNwb25kaW5nCj4+Pj4gImNocmdfZGV0IiBpbnRlcnJ1cHQgbmFtZS4KPj4+Cj4+PiBTb3VuZHMg
dG8gbWUgbGlrZSB0aGlzIG5ldyBpbnRlcnJ1cHQgaXMgb3B0aW9uYWwsIHNpbmNlIHVudGlsIG5v
dyBpdCBoYXMKPj4+IG5vdCBiZWVuIG5lZWRlZD8gVGhlIHBhdGNoIGhvd2V2ZXIgbWFrZXMgaXQg
bWFuZGF0b3J5LiBJIHRoaW5rIHlvdXIKPj4+IGRyaXZlciBwYXRjaCBhbHNvIG1ha2VzIGl0IG1h
bmRhdG9yeSwgd2hpY2ggd2lsbCBicmVhayBvbGRlcgo+Pj4gZGV2aWNldHJlZXMuCj4+Pgo+Pgo+
PiBPaCwgaXQgaXMgaW5kZWVkIG5vdCBuZWVkZWQgZm9yIHByb3BlciBEQ1AvU0RQIGRldGVjdGlv
biwgYWZ0ZXIgc29tZQo+PiBleHBlcmltZW50cyBJIHdhcyBhYmxlIHRvIHRlYWNoIHRoZSBkcml2
ZXIgdG8gZG8gcHJvcGVyIGRldGVjdGlvbiBieQo+PiB1c2luZyBjdXJyZW50IGludGVycnVwdHMg
b25seS4KPj4KPj4+IFdoYXQgbWFrZXMgdGhpcyBBQkkgYnJlYWsgb2theT8KPj4+Cj4+Cj4+IFdp
bGwgc2VuZCBuZXcgc2VyaWVzIHdpdGggc2NoZW1hL0RUIHBhdGNoZXMgZHJvcHBlZC4KPiAKPiBJ
IHRoaW5rIHRoZSBkZXZpY2V0cmVlIHBhdGNoZXMgYXJlIGZpbmUsIHByb3ZpZGVkIHlvdSBhZGQK
PiBhIG1pbkl0ZW1zIG9mIE4tMSBzbyB0aGF0IHRoZSBuZXcgaW50ZXJydXB0IGlzIG9wdGlvbmFs
Lgo+IERyb3BwaW5nIHRoZW0gd291bGQgbWVhbiB0aGF0IHRoZSBkb2N1bWVudGF0aW9uIGZvciB0
aGlzIGRldmljZQo+IHJlbWFpbnMgaW5jb21wbGV0ZSBzaW5jZSB0aGF0IGludGVycnVwdCBkb2Vz
IGV4aXN0Lgo+IAoKT2ssIHdpbGwgYWRkIHRoYXQgY2hhbmdlIGluIHRoZSBuZXh0IHZlcnNpb24s
IGhvd2V2ZXIsIEkgd2lsbCBzdGlsbApjaGFuZ2UgdGhlIGRyaXZlciBwYXRjaCB0byBub3QgdXNl
IGNocmdfZGV0IGludGVycnVwdC4KClRoYW5rcyBhbmQgUmVnYXJkcywKSXZvCgo+IENoZWVycywK
PiBDb25vci4KPiAKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
