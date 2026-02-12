Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B58EEB4901
	for <linux-phy@archiver.kernel.org>; Thu, 12 Feb 2026 11:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Z2eBpWPWrS3Q0TwLuw+AYchV1Gu+4tBUSrZL++wWWk=; b=UH3QdIvCIguj5P
	2n9rJrYdo4uKxWYgS/+q1z+SazGHSIbYI/OmeLh4G4jzmPvYuYDykkWezQj15EtDm5LWGDiqzXpfE
	uLudAYTIH89PeefpzicO9TTtMdcp2YGunjw62pz0esCXefZ0fbvXLwxEcYXaKAE+BtNfjYIiD5fZO
	6LxBSWMGZnT2t7J4WqyB0Jlp8s0f2cmvBRNzSOZA8/qQk0fLNda8q76yanGLyfCpcdOWaHhruYdoh
	acNHncKV/zQRR9fGbLILGtKujJGvxtsVrT48+Uj2Z7MPuASHjgGFWWSRcz1pgpcPzoGhutxJOi98h
	8iib8oMzOtUlgBhmoDCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqUdr-00000001yh1-2f7j;
	Thu, 12 Feb 2026 11:13:51 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqUdn-00000001ygW-3GTu
	for linux-phy@lists.infradead.org;
	Thu, 12 Feb 2026 11:13:50 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-59dd784efddso870828e87.1
        for <linux-phy@lists.infradead.org>; Thu, 12 Feb 2026 03:13:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770894826; x=1771499626; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Te28COGsJvbZjhoIswrSDU/sOtkJ6DypnGTOIiAuYoo=;
        b=K+gHvEQ/LyZ3MLurSZVDWa5gJse6gXw1fcjuOyvwX1SYkq+CoxJONnBOkyt/p+h4C3
         Q8TSNfFYNCewDJSV5yKsfKyrPqeYb4W270P5B/LIquu2uM4D0sTc04iSEkYa2fAYvHM6
         65z3zXEp8tB1amVmrLjJz+SnUCt202MrwraVKlaff5jNIKhMfQ6znHUhNdToXkkzQr9U
         3KV2w/8h1u2qyCEln1cVGqx+dkmr6sRHGajfSsTaz6Lf2GBihD9hPvw+VK4HHDiibMMH
         FMscKZCVEgF9h846zoiqfG0ybnMSHtu2mW0XSvCHW9zofBoyJ0hGMBmnm7yU6hWDAUSw
         cH0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770894826; x=1771499626;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Te28COGsJvbZjhoIswrSDU/sOtkJ6DypnGTOIiAuYoo=;
        b=N+qI5CEIWNS6Z9Kp2aLdbnoZ1VSTvJmdHi4SeNeQ3oJolO4P0qTvcqBrVBBo5PrHwX
         28meCRzcINUhp5rT/2U4J++Hu8aPKYE3xQcAvQ4HPrklWRKPl28TtbxBb52n3CqK1f7U
         QvfmIWmn7M7u/IpJN+XAlFcmmMWEQhpLa/MzLTyc9As86WNoT9PnZQrIZ0AsZzoE2RMY
         4AnpnAFMB7D51Yf1moueNqg6P4AkMxcLlpoMa62i0BrA1ea0X/Y9teabk02JsxFY9ehb
         SQ/fPlvDc0Xdd8K4LgbYbm1saMw9O0cdVQExveHcGO4u4T35v3D0jGooShFUNhsieY3h
         jghA==
X-Forwarded-Encrypted: i=1; AJvYcCWfUuIHHunLhTEj3PXaYAy3eoSx4QTwZdaz1nEz3ML5Uu3rDeWOlf7nwNulB41mgumqknepTIYhqCk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxFcOHZigzkEGRhDU31XXpYX3l1KdUTJD0TJCu3UGcHdeIwLAqT
	Pygd4hBq9/0w8dpbmE9BZAYINjRRvwZsfd3hAi/fTl67mN9JjiminFeE
X-Gm-Gg: AZuq6aIzpxHPhXYP0yXbKuB1fO9FU2eL3yxiW9U7Ipk1Y4xtYjNdXbbqxznpw7ZrnUJ
	RVpDC+vAXJLp3Z49nKCPZhYZCtIscQBdvdkd4E/fHMRmBb4wHNAqtbOtOQwR1JCTjMnXdEs1gWI
	6UcGvdMpMa9KK1c8WzYNR+58l7PU8n67An84x8w5k7UAWeqX5xrW5mViYogXi+u1MEFb/qIvixG
	76K4LM75qVAVg9353O/tNp1FO4LQDeFWSZXQLfSBATgW0zCJ0FmqfIxrcvJZfNjrEqHZgwhM5Vm
	bU10cqVMyZ/PtSiemnbDRfH8DKI9HYjzYYQ7jA3uFmZAGF1OUl9g9/SLDOh70j2VLUEnTDKooBD
	yOOzh36SHZksig2nywAzUCvmm+Y6f6tGw2/Wz/MZF1HBaS4gMsbb1aSh4q3EbACORiLdJACpBUX
	ccfHkixheukwPu67E=
X-Received: by 2002:a05:600c:524a:b0:477:7a78:3000 with SMTP id 5b1f17b1804b1-48365718323mr18483945e9.6.1770888685036;
        Thu, 12 Feb 2026 01:31:25 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:2f75:bf70:f0b9:4586])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d482480sm215126875e9.0.2026.02.12.01.31.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 01:31:24 -0800 (PST)
Date: Thu, 12 Feb 2026 11:31:21 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
	linux-phy@lists.infradead.org, linux-mmc@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org, linux-next@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH next] phy: renesas: rcar-gen3-usb2: Drop local
 devm_mux_state_get_optional()
Message-ID: <20260212093121.2c6o6pkk4riphbel@skbuf>
References: <67c8c4f9bf9f09fd0c13daedef27b82ff389ddfb.1770720452.git.geert+renesas@glider.be>
 <CAPDyKFpY2X8hephSfHq7rj_DaKX76ZSkWSCYXrGTEBUFHkvOzg@mail.gmail.com>
 <aYyrsPTH1923jV7y@vaman>
 <CAMuHMdUHNRuMmHU2ACX84nsZdXn_-fSamnF+LMFvZS3vkHnEWA@mail.gmail.com>
 <aY1eIG_U_GBOFQGt@vaman>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aY1eIG_U_GBOFQGt@vaman>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_031347_838984_06D3F795 
X-CRM114-Status: GOOD (  28.81  )
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

T24gVGh1LCBGZWIgMTIsIDIwMjYgYXQgMTA6Mjk6MTJBTSArMDUzMCwgVmlub2QgS291bCB3cm90
ZToKPiBIaSBHZWVydCwKPiAKPiBPbiAxMS0wMi0yNiwgMTc6MzAsIEdlZXJ0IFV5dHRlcmhvZXZl
biB3cm90ZToKPiA+IEhpIFZpbm9kLAo+ID4gCj4gPiBPbiBXZWQsIDExIEZlYiAyMDI2IGF0IDE3
OjE3LCBWaW5vZCBLb3VsIDx2a291bEBrZXJuZWwub3JnPiB3cm90ZToKPiA+ID4gT24gMTAtMDIt
MjYsIDE0OjM0LCBVbGYgSGFuc3NvbiB3cm90ZToKPiA+ID4gPiBPbiBUdWUsIDEwIEZlYiAyMDI2
IGF0IDExOjUzLCBHZWVydCBVeXR0ZXJob2V2ZW4KPiA+ID4gPiA8Z2VlcnQrcmVuZXNhc0BnbGlk
ZXIuYmU+IHdyb3RlOgo+ID4gPiA+ID4gTm93IHRoZSBtdXggY29yZSBwcm92aWRlcyBkZXZtX211
eF9zdGF0ZV9nZXRfb3B0aW9uYWwoKToKPiA+ID4gPiA+Cj4gPiA+ID4gPiAgICAgZHJpdmVycy9w
aHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYzo5NDQ6MTogZXJyb3I6IHN0YXRpYyBkZWNs
YXJhdGlvbiBvZiDigJhkZXZtX211eF9zdGF0ZV9nZXRfb3B0aW9uYWzigJkgZm9sbG93cyBub24t
c3RhdGljCj4gPiA+ID4gPiAgICAgIGRlY2xhcmF0aW9uCj4gPiA+ID4gPiAgICAgICA5NDQgfCBk
ZXZtX211eF9zdGF0ZV9nZXRfb3B0aW9uYWwoc3RydWN0IGRldmljZSAqZGV2LCBjb25zdCBjaGFy
ICptdXhfbmFtZSkKPiA+ID4gPiA+ICAgICAgICAgICB8IF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fgo+ID4gPiA+ID4gICAgIEluIGZpbGUgaW5jbHVkZWQgZnJvbSBkcml2ZXJzL3BoeS9yZW5l
c2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jOjIwOgo+ID4gPiA+ID4gICAgIGluY2x1ZGUvbGludXgv
bXV4L2NvbnN1bWVyLmg6NjQ6MTk6IG5vdGU6IHByZXZpb3VzIGRlY2xhcmF0aW9uIG9mIOKAmGRl
dm1fbXV4X3N0YXRlX2dldF9vcHRpb25hbOKAmSB3aXRoIHR5cGUg4oCYc3RydWN0IG11eF9zdGF0
ZSAqKHN0cnVjdCBkZXZpY2UgKiwgY29uc3QgY2hhciAqKeKAmQo+ID4gPiA+ID4gICAgICAgIDY0
IHwgc3RydWN0IG11eF9zdGF0ZSAqZGV2bV9tdXhfc3RhdGVfZ2V0X29wdGlvbmFsKHN0cnVjdCBk
ZXZpY2UgKmRldiwgY29uc3QgY2hhciAqbXV4X25hbWUpOwo+ID4gPiA+ID4gICAgICAgICAgIHwg
ICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gPiA+ID4gPgo+
ID4gPiA+ID4gRml4IHRoaXMgYnkgZHJvcHBpbmcgdGhlIHRlbXBvcmFyeSBsb2NhbCB3cmFwcGVy
Lgo+ID4gPiA+ID4KPiA+ID4gPiA+IEZpeGVzOiBhZDMxNDM0OGNlYjRmZTFmICgibXV4OiBBZGQg
aGVscGVyIGZ1bmN0aW9ucyBmb3IgZ2V0dGluZyBvcHRpb25hbCBhbmQgc2VsZWN0ZWQgbXV4LXN0
YXRlIikKPiA+ID4gPiA+IEZpeGVzOiA4YmI5MmZkN2EwNDA3NzkyICgicGh5OiByZW5lc2FzOiBy
Y2FyLWdlbjMtdXNiMjogVXNlIG11eC1zdGF0ZSBmb3IgcGh5cnN0IG1hbmFnZW1lbnQiKQo+ID4g
PiA+ID4gU2lnbmVkLW9mZi1ieTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGds
aWRlci5iZT4KPiA+ID4gPgo+ID4gPiA+IFRoYW5rcyBHZWVydCBmb3IgaGVscGluZyBvdXQhCj4g
PiA+ID4KPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4gICAtIGFkMzE0MzQ4Y2ViNGZlMWYgaXMgaW4g
bW1jL25leHQsIGFuZCBhIFBSIGhhcyBhbHJlYWR5IGJlZW4gc2VudAo+ID4gPiA+ID4gICAgIGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnLzIwMjYwMjA5MTMzNDQxLjU1NjQ2NC0xLXVsZi5oYW5zc29u
QGxpbmFyby5vcmcKPiA+ID4gPiA+ICAgLSA4YmI5MmZkN2EwNDA3NzkyIGlzIGluIHBoeS9uZXh0
Cj4gPiA+ID4KPiA+ID4gPiBWaW5vZCwgZG8geW91IHdhbnQgdG8gcGljayB1cCB0aGUgJHN1Ympl
Y3QgcGF0Y2ggYXMgYSBmaXggZm9yIDcuMC1yYzEKPiA+ID4gPiBvciBkbyB5b3UgcHJlZmVyIG1l
IHRvIGhhbmRsZSBpdD8KPiA+ID4KPiA+ID4gU2hvdWxkIEkgZHJvcCB0aGUgOGJiOTJmZDdhMDQw
Nzc5MiBhbmQgaXQgbWFrZXMgdGhpbmdzIGVhc2llciBmb3IKPiA+ID4gZXZlcnlvbmUgYW5kIHRo
ZW4gd2UgY2FuIHBpY2sgZml4ZWQgY29tbWl0IGZvciA3LjEgY3ljbGUuLgo+ID4gPgo+ID4gPiBE
b2VzIHRoYXQgd29yayBmb3IgZXZlcnlvbmUuIEkgd2FzIGFib3V0IHRvIHNlbmQgUFIsIHdpbGwg
aG9sZCBvZmYgZm9yIGEKPiA+ID4gYml0Lgo+ID4gCj4gPiBBbHRlcm5hdGl2ZWx5LCB5b3UgY2Fu
IG1lbnRpb24gdGhlIHNlbWFudGljIGNvbmZsaWN0IGluIHlvdXIgUFIgdG8gTGludXMsCj4gPiBh
bmQgYXNrIGhpbSB0byBmb2xkIG15IHBhdGNoIGludG8gdGhlIG1lcmdlIGNvbW1pdC4KPiAKPiBI
bW1tLCB0aGF0IGlzIGFsc28gYSBnb29kIG9wdGlvbiBidXQgbWlnaHQgbGVhdmUgTGludXMgYSBi
aXQgZ3J1bXB5IHNvCj4gYml0IHJlbHVjdGFudC4gRHJvcHBpbmcgYW5kIGdldHRpbmcgcmlnaHQg
aW1wbGVtZW50YXRpb24gd291bGQgYmUKPiBiZXR0ZXIuIEkgdGhpbmsgaXQgd2FzIGEgbWlzdGFr
ZSB0byBwaWNrIG9yIHRoaXMgYWxsIGNvdWxkIGhhdmUgZ29uZQo+IHRocnUgbXV4IHRyZWUuCj4g
Cj4gVGhhbmtzCj4gLS0gCj4gflZpbm9kCgpJIHRoaW5rIHdpdGggTGludXMnIHJlZnVzYWwgb2Yg
dGhlIG1tYy9uZXh0IFBSLCB0aGVyZSBpcyBubyBsb25nZXIgYW55Cm5lZWQgZWl0aGVyIGZvciB0
aGlzIHBhdGNoIG9yIGZvciB0aGUgcmV2ZXJ0IG9mIDhiYjkyZmQ3YTA0MCAoInBoeToKcmVuZXNh
czogcmNhci1nZW4zLXVzYjI6IFVzZSBtdXgtc3RhdGUgZm9yIHBoeXJzdCBtYW5hZ2VtZW50Iiku
Cmh0dHA6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC9DQUhrLT13Z25SUWlLcVdWck9fdUYxYnRZTTJL
OHI4eEw5NVJHZEtVM1FMZThCNThucndAbWFpbC5nbWFpbC5jb20KCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
