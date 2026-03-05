Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59759F30956
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 12:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nrij24XfwV+aSxeX2vi0vSK2FA5GXp9+y2jnwxf2/GM=; b=SogKQ/03Cucvff
	jj6I4Y9m9h7Ds35Tg/2HIWhN0QvoKQhLvZ/h1hPmYgPLcwVZzlDLkiJuabcsTRhnbEY2PA5bo5ibJ
	ZHX/TqiVbdXwmkkmV8G1q+zvRmxoUtEM4LZTMHzsVBDEvud4Yv2x3lYVZ5+9HAIuMDir6Py6YuZ+N
	xCRQxH1UDFsaWk6Pfj5c5Hh0aEgWsLvB4aAoB1wzR6SbDm0UUYWQgr9HReWUmmVvGc70CSzVQSIzs
	huHbWDThOodkI9qUD5jUXWWCT06Op135eaRFlzquBqvEceQIwHdiUmT/iVYM97KZc4bbdcfGx9/mQ
	2M2k3lyB+PA0edHgV43w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy7q6-00000001lnI-3vni;
	Thu, 05 Mar 2026 12:30:02 +0000
Received: from mail-pg1-f171.google.com ([209.85.215.171])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy7q4-00000001lld-0Wky
	for linux-phy@lists.infradead.org;
	Thu, 05 Mar 2026 12:30:01 +0000
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-c70ea5e9e9dso2931724a12.1
        for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 04:29:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772713799; x=1773318599;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QrCqdrr01xMGx/SCx6YPhCapPZnumyW3whTx771nk9I=;
        b=G9gwEtaKMVqCe9ZonbbZT05AdPP0xyby9EZU8Zl+XMCl4IYtWpnz/eZPYu+HWveWM2
         cWjWvBzuU3GSu2tGWgyPc+HzvfNE6HLQw21Mk/R3lqvPrDPAFUvHQVms107ry+eRdIWB
         gCN7tbz82iOgagh43or5Ud8SuVfZfyzNepmDywv+DZTdLChCTyqAkJmwGoCKffS4KIen
         1r8PpRuQntBXAsQyauvrlEzjhLjjqs+iMCynEQTOkIOudWS3RUoefh5o0CUnqAWo5CZ2
         6eisKK3vUMSrnOUvCPYNJqMmFp7tDUL580U+r64+9MfQYe/gAe+FfO2XS6P4SCzRxDgy
         3KtA==
X-Forwarded-Encrypted: i=1; AJvYcCWK2W/eXFBtQARnWIGsLTrV3EmPj9FMEECWytE0DCbuXNG0cOL5Y3wcR7lULEHDbxq/9ZNpKGHsuEY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6sFc87wvCHP+Vtvc+wgMerhfbysmLMK3CkdqAzWO562RHzbtU
	gPn0dFS4cY8BFXdHwn0V7pdDQgG12vhTjJEU5Z7GWNxTOoTbMTiXsW2I
X-Gm-Gg: ATEYQzw0EPg2KCenG3T/HvN7q1qaKWn2SEEFdfgkmXiy8hKkHzXWTd71SLHf77bb4Rr
	wo1iFnk9BxR1qzJu2CgB8MoJiWQ376hGKaORuKqxIC58n0/YAEAD3rzG4F35XD2oI+N6R1jqmWX
	ZZkLaO3HuA5jLYEH1Ugohrvhy61115Jd5mbfqeBc83uCP0CEiouwdoF25qjLzYhu3YB/cdzf9AI
	t0ZEd68MqAnNNhlX2jXwShlYACezHltHq3R3Iryi7tMt+bHoCZU38HwXHRndAZR8zwfcKD4rw/R
	B7b+5ZfHL7G7fiN9/dvkMZjJQFmN+XsQP716HmOklfIX6P+iZjd07DkK0yj5pvH/dc47rdnhe3a
	ay103JM3a9KbngVjEDfrfQM3PrMvEH818EdlbaPBsBiKBYp7z7ZVkwHsCEquQVM+gOu2+5KOELd
	aidbJBYvo+OIFXVh0fSldpLoyLk0u3B9HG8wWFVDQjL+hIYPJCOErmEtgAxhCwO7rjmOHreTkqB
	7loUK8h1FJHEbqLZm2orn8zcu3t1DTY1Jfeu8fLF6R5lNPW340=
X-Received: by 2002:a17:903:1a43:b0:2ae:4701:3c31 with SMTP id d9443c01a7336-2ae6a9cc1c0mr59976385ad.11.1772713799017;
        Thu, 05 Mar 2026 04:29:59 -0800 (PST)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb69fa43sm225561035ad.46.2026.03.05.04.29.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 04:29:58 -0800 (PST)
Date: Thu, 5 Mar 2026 21:29:57 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Joe Perches <joe@perches.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-can@vger.kernel.org, linux-gpio@vger.kernel.org,
	linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org,
	netdev@vger.kernel.org, spacemit@lists.linux.dev,
	UNGLinuxDriver@microchip.com
Subject: Re: [PATCH phy-next 22/22] MAINTAINERS: add regex for linux-phy
Message-ID: <20260305122957.GA1652563@rocinante>
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com>
 <20260304175735.2660419-23-vladimir.oltean@nxp.com>
 <a8fee1cd-1e69-4a9e-8533-c0988c480fb9@oss.qualcomm.com>
 <20260305085148.7cwo3yflp7vcfldf@skbuf>
 <f3a5aa3df78553ffc0fd0024f5fd36a4e2158c88.camel@perches.com>
 <20260305114352.2f7btqixg4tu5bzl@skbuf>
 <20260305121532.GA1649635@rocinante>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260305121532.GA1649635@rocinante>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_043000_190001_0CE8C8D1 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
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

T24gMjYtMDMtMDUgMjE6MTU6MzIsIEtyenlzenRvZiBXaWxjennFhHNraSB3cm90ZToKPiBIZWxs
bywKPiAKPiA+IEs6CVxiKD86X18pPyg/OmRldm1fKT8oPzpvZl8pP3BoeV8oPzpjcmVhdGV8ZGVz
dHJveXxwcm92aWRlcl8oPzp1bik/cmVnaXN0ZXIpXGIKPiA+IEs6CVxicGh5Xyg/OmNyZWF0ZXxy
ZW1vdmUpX2xvb2t1cFxiCj4gPiBLOglcYnBoeV8oPzpnZXR8c2V0KT9fZHJ2ZGF0YVxiCj4gPiBL
OglcYig/OmRldm1fKT8oPzpvZl8pP3BoeV8oPzpvcHRpb25hbF8pPyg/OmdldHxwdXQpKD86X2J5
X2luZGV4KT9cYgo+ID4gSzoJXGJwaHlfcG1fcnVudGltZV8oPzpnZXR8cHV0KSg/Ol9zeW5jKT9c
Ygo+ID4gSzoJXGJwaHlfKD86aW5pdHxleGl0fHBvd2VyXyg/Om9ufG9mZikpXGIKPiA+IEs6CVxi
cGh5X3woPzpnZXR8c2V0KV8oPzptb2RlKD86X2V4dCk/fG1lZGlhfHNwZWVkfGJ1c193aWR0aHxt
YXhfbGlua19yYXRlKVxiCj4gPiBLOglcYnBoeV8oPzpyZXNldHxjb25maWd1cmV8dmFsaWRhdGV8
Y2FsaWJyYXRlKVxiCj4gPiBLOglcYnBoeV9ub3RpZnlfKD86Y29ubmVjdHxkaXNjb25uZWN0fHN0
YXRlKVxiCj4gPiBLOgkoPzpzdHJ1Y3RccyspP3BoeSg/Ol9vcHN8X2F0dHJzfF9sb29rdXB8X3By
b3ZpZGVyKT9cYgo+ID4gSzoJKD86bGludXgvcGh5L3BoeVwuaHxwaHktcHJvcHNcLmh8cGh5LXBy
b3ZpZGVyXC5oKQo+IAo+IFdoYXQgYWJvdXQKPiAKPiAgIEY6CWRyaXZlcnMvKi8qcGh5Kgo+IAo+
IG9yIHNvbWV0aGluZyBhbG9uZyB0aGVzZSBsaW5lcy4KCkZvciBjb250ZW50IG1hdGNoLCBpdCBj
b3VsZCBhbHNvIGJlOgoKICBLOglwaHkKCkkgYmVsaWV2ZSB0aGlzIHdvdWxkIG1hdGNoIGV2ZXJ5
dGhpbmcgb2YgaW50ZXJlc3Q/ICBQZXJoYXBzIHRoZXJlIGlzIG5vCm5lZWQgdG8gaGF2ZSBhbnkg
b2YgdGhlc2UgY29tcGxleCByZWd1bGFyIGV4cHJlc3Npb25zLCB3b3VsZCBiZSBteSB3YXkgb2YK
dGhpbmtpbmcgaGVyZS4gIE1ha2VzIGl0IGVhc2llciB0byBtYWludGFpbiwgdG9vLgoKSnVzdCB0
aGlua2luZyBvdXQgbG91ZCwgcmVhbGx5Li4uCgoJS3J6eXN6dG9mCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
