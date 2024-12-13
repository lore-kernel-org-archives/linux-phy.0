Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2DC0E7717D
	for <linux-phy@archiver.kernel.org>; Fri, 13 Dec 2024 14:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eBdAaTYkFNI8qCRkVGMKuTWBEQ0L7IbGM0irHQGZ4ig=; b=r4TbSb4qK866hU
	gn6HHVYagwSY6w9gHpCShERfnZz8HUSmj2KWS5uJXxSAh1yUK7zxq+KxxQbixl/OMN9NpmORDehOP
	HFiCewJqpQOA9b5iVqGbR2ChjDZ64QT1aIVpD2uypU5UMorUeRIuyg/vdFU88BVZBBAJj0XSBdFZO
	kzf+Sb5FQtz7PbggYj9anXh0rLPNUfim1NiUdDieCigvegCl6XAbqnl5SuicRmrkGQcH9mL0udbcO
	Uc8p5tOeCvdVNufTkg6fjAetHBfi6TGLVXGbHrS7Esj30f0VOPrm6vuZW8eqFKp60kSJaljjvbTZS
	L4EWUhzqTy6dzTCzgIYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tM6kd-000000046NZ-1lNM;
	Fri, 13 Dec 2024 14:34:43 +0000
Received: from mail-qk1-f169.google.com ([209.85.222.169])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tM6Q5-00000003yli-0LbP
	for linux-phy@lists.infradead.org;
	Fri, 13 Dec 2024 14:13:30 +0000
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-7b6f19a6c04so142332385a.0
        for <linux-phy@lists.infradead.org>; Fri, 13 Dec 2024 06:13:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734099207; x=1734704007;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=35iE//JjwwJVa2lJd+7iAycrV7dSlJWEOt08EOLoAcU=;
        b=rhfE7ZQHOjI3Iu0orrs2+DNFrmn058fbW2JDiGc1qgfyzKfaaFJ/zI7jRjt3XlpLnN
         43umuWulGjUGiYz3u8I4CulmAFHh5HsXkp1uH3yQLrI/rEkEzjSJgAmc5lVEUgPXArVb
         5KcUKHyVenjuc6PPVxPDoksu5x7npVBzGbwT6g5yCNWYpFYlX9QZo6SFIi/52TQ8MVep
         8NtECf+HPeP2O/airn4oB+Ipc3MWZARrU5YA8Bxn9/DNizpezVRV9iD04crPmDebidka
         nGPUcjEgAhAMZNZry9bxpvPRAGeKHyCA4VwiXbcduDq9tZnYguXVZurvcdz7Y/PF5uNo
         ZLIw==
X-Gm-Message-State: AOJu0Yw0FZAtikZ07EhudQOXnQvr1Xa+Rah110S0Nz1G/cuEOMbzKSQm
	Ve4RcO9MWErcri9wTR0zwJCoC6U2PORddvDNSBawHAW4QVfJuT9i3eS3aXJR
X-Gm-Gg: ASbGncs4MTtx4YwrIThT4ti7EQtHdSpI1ZPmeLF2Gz9y2F6b+x1K9DgtAoLBEuqVuQT
	5u9dZTbGXAJomjy9jKS23Bkfui0KAmOEFut1dHsFQjA9x+HD/We2zKv1JcOE+zSaIMsKtImfbf0
	doOJWAlChHjI1sc6zOW/3O8aN5djz0P1/LhccjwgjCmED0stXkR24dY5N9EEWdtd++8pDWMLj+V
	nPFAN2Ebvm7wPu14ZpwZuXHm/FtGhp6RLsa+suiqj/1rvn5D2wAIXB9w42QsAdYVX+w8F9wVYIw
	IsKXdL7GfSjYAhFo2U7jGYs=
X-Google-Smtp-Source: AGHT+IFeL6zasL1B5UZdcV4/HtpmSuTxNTmm52mzi78nHfBQTND9saPjlFOYcij53qBJQKhdYQgRXg==
X-Received: by 2002:a05:620a:4554:b0:7b6:d28b:42a4 with SMTP id af79cd13be357-7b6fbee7bdcmr392904285a.19.1734099207307;
        Fri, 13 Dec 2024 06:13:27 -0800 (PST)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com. [209.85.222.169])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7b6fc8c616esm58421685a.110.2024.12.13.06.13.26
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 06:13:27 -0800 (PST)
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-7b15467f383so163849485a.3
        for <linux-phy@lists.infradead.org>; Fri, 13 Dec 2024 06:13:26 -0800 (PST)
X-Received: by 2002:a05:620a:1990:b0:7b6:d050:7210 with SMTP id
 af79cd13be357-7b6fbee7b25mr462900485a.15.1734099206681; Fri, 13 Dec 2024
 06:13:26 -0800 (PST)
MIME-Version: 1.0
References: <20241026132014.73050-1-aford173@gmail.com> <20241026132014.73050-3-aford173@gmail.com>
In-Reply-To: <20241026132014.73050-3-aford173@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 13 Dec 2024 15:13:15 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVx9zYw7ZpyH=d_rs==a+_jzi--Fax5cVe-8UW+RvRx+g@mail.gmail.com>
Message-ID: <CAMuHMdVx9zYw7ZpyH=d_rs==a+_jzi--Fax5cVe-8UW+RvRx+g@mail.gmail.com>
Subject: Re: [PATCH V2 3/3] phy: freescale: fsl-samsung-hdmi: Clean up
 fld_tg_code calculation
To: Adam Ford <aford173@gmail.com>
Cc: linux-phy@lists.infradead.org, aford@beaconembedded.com, sandor.yu@nxp.com, 
	Frieder Schrempf <frieder.schrempf@kontron.de>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, 
	Dominique Martinet <dominique.martinet@atmark-techno.com>, 
	Marco Felsch <m.felsch@pengutronix.de>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	Lucas Stach <l.stach@pengutronix.de>, linux-kernel@vger.kernel.org, 
	Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_061329_119479_95D19BCC 
X-CRM114-Status: GOOD (  27.28  )
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

SGkgQWRhbSwKCk9uIFNhdCwgT2N0IDI2LCAyMDI0IGF0IDM6MjHigK9QTSBBZGFtIEZvcmQgPGFm
b3JkMTczQGdtYWlsLmNvbT4gd3JvdGU6Cj4gQ3VycmVudGx5LCB0aGUgY2FsY3VhdGlvbiBmb3Ig
ZmxkX3RnX2NvZGUgaXMgYmFzZWQgb24gYSBsb29rdXAgdGFibGUsCgpjYWxjdWxhdGlvbiAoZXZl
cnl3aGVyZSkKCj4gYnV0IHRoZXJlIGFyZSBnYXBzIGluIHRoZSBsb29rdXAgdGFibGUsIGFuZCBm
cmVxdWVuY2llcyBpbiB0aGVzZQo+IGdhcHMgbWF5IG5vdCBwcm9wZXJseSB1c2UgdGhlIGNvcnJl
Y3QgZGl2aWRlci4gIEJhc2VkIG9uIHRoZSBkZXNjcmlwdGlvbgo+IG9mIEZMRF9DS19ESVYsIHRo
ZSBpbnRlcm5hbCBQTEwgZnJlcXVlbmN5IHNob3VsZCBiZSBsZXNzIHRoYW4gNTAgTUh6LAo+IHNv
IGRpcmVjdGx5IGNhbGN1YXRlIHRoZSB2YWx1ZSBvZiBGTERfQ0tfRElWIGZyb20gcGl4Y2xrLgo+
IFRoaXMgYWxsb3cgZm9yIHByb3BlciBjYWxjdWF0aW9uIG9mIGFueSBwaXhlbCBjbG9jayBhbmQg
ZWxpbWluYXRlcyBhCj4gZmV3IGdhcHMgaW4gdGhlIExVVC4KPgo+IFNpbmNlIHRoZSB2YWx1ZSBv
ZiB0aGUgaW50X3BsbGNsayBpcyBpbiBIeiwgZG8gdGhlIGZpeGVkLXBvaW50Cj4gbWF0aCBpbiBI
eiB0byBhY2hpZXZlIGEgbW9yZSBhY2N1cmF0ZSB2YWx1ZSBhbmQgcmVkdWNlcyB0aGUgY29tcGxl
eGl0eQo+IG9mIHRoZSBjYWx1YXRpb24gdG8gMjRNSHogKiAoMjU2IC8gaW50X3BsbGNsaykuCj4K
PiBGaXhlczogNmFkMDgyYmVlOTAyICgicGh5OiBmcmVlc2NhbGU6IGFkZCBTYW1zdW5nIEhETUkg
UEhZIikKPiBTaWduZWQtb2ZmLWJ5OiBBZGFtIEZvcmQgPGFmb3JkMTczQGdtYWlsLmNvbT4KPiBS
ZXZpZXdlZC1ieTogRnJpZWRlciBTY2hyZW1wZiA8ZnJpZWRlci5zY2hyZW1wZkBrb250cm9uLmRl
PgoKVGhhbmtzIGZvciB5b3VyIHBhdGNoLCB3aGljaCBpcyBub3cgY29tbWl0IGQ1Njc2NzlmMmI2
YThiY2UgKCJwaHk6CmZyZWVzY2FsZTogZnNsLXNhbXN1bmctaGRtaTogQ2xlYW4gdXAgZmxkX3Rn
X2NvZGUgY2FsY3VsYXRpb24iKSBpbgpuZXh0LTIwMjQxMjA5IGFuZCBsYXRlci4KCj4gLS0tIGEv
ZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMKPiArKysgYi9kcml2
ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhkbWkuYwo+IEBAIC0zMzEsMjUgKzMz
MSwxNyBAQCBmc2xfc2Ftc3VuZ19oZG1pX3BoeV9jb25maWd1cmVfcGxsX2xvY2tfZGV0KHN0cnVj
dCBmc2xfc2Ftc3VuZ19oZG1pX3BoeSAqcGh5LAo+ICB7Cj4gICAgICAgICB1MzIgcGNsayA9IGNm
Zy0+cGl4Y2xrOwo+ICAgICAgICAgdTMyIGZsZF90Z19jb2RlOwo+IC0gICAgICAgdTMyIHBjbGtf
a2h6Owo+IC0gICAgICAgdTggZGl2ID0gMTsKPiAtCj4gLSAgICAgICBzd2l0Y2ggKGNmZy0+cGl4
Y2xrKSB7Cj4gLSAgICAgICBjYXNlICAyMjI1MDAwMCAuLi4gIDQ3NTAwMDAwOgo+IC0gICAgICAg
ICAgICAgICBkaXYgPSAxOwo+IC0gICAgICAgICAgICAgICBicmVhazsKPiAtICAgICAgIGNhc2Ug
IDUwMzQ5NjUwIC4uLiAgOTkwMDAwMDA6Cj4gLSAgICAgICAgICAgICAgIGRpdiA9IDI7Cj4gLSAg
ICAgICAgICAgICAgIGJyZWFrOwo+IC0gICAgICAgY2FzZSAxMDA2OTkzMDAgLi4uIDE5ODAwMDAw
MDoKPiAtICAgICAgICAgICAgICAgZGl2ID0gNDsKPiAtICAgICAgICAgICAgICAgYnJlYWs7Cj4g
LSAgICAgICBjYXNlIDIwNTAwMDAwMCAuLi4gMjk3MDAwMDAwOgo+IC0gICAgICAgICAgICAgICBk
aXYgPSA4Owo+IC0gICAgICAgICAgICAgICBicmVhazsKPiArICAgICAgIHUzMiBpbnRfcGxsY2xr
Owo+ICsgICAgICAgdTggZGl2Owo+ICsKPiArICAgICAgIC8qIEZpbmQgaW50X3BsbGNsayBzcGVl
ZCAqLwo+ICsgICAgICAgZm9yIChkaXYgPSAwOyBkaXYgPCA0OyBkaXYrKykgewo+ICsgICAgICAg
ICAgICAgICBpbnRfcGxsY2xrID0gcGNsayAvICgxIDw8IGRpdik7Cj4gKyAgICAgICAgICAgICAg
IGlmIChpbnRfcGxsY2xrIDwgKDUwICogTUhaKSkKPiArICAgICAgICAgICAgICAgICAgICAgICBi
cmVhazsKPiAgICAgICAgIH0KPgo+IC0gICAgICAgd3JpdGViKEZJRUxEX1BSRVAoUkVHMTJfQ0tf
RElWX01BU0ssIGlsb2cyKGRpdikpLCBwaHktPnJlZ3MgKyBQSFlfUkVHKDEyKSk7Cj4gKyAgICAg
ICB3cml0ZWIoRklFTERfUFJFUChSRUcxMl9DS19ESVZfTUFTSywgZGl2KSwgcGh5LT5yZWdzICsg
UEhZX1JFRygxMikpOwoKVGhpcyBjYXVzZXMgYSBidWlsZCBmYWlsdXJlIG9uIG02OGsgd2l0aCBn
Y2MgdmVyc2lvbiA5LjUuMCAoVWJ1bnR1CjkuNS4wLTF1YnVudHUxfjIyLjA0KToKCiAgQ0MgW01d
ICBkcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhkbWkubwpJbiBmaWxlIGlu
Y2x1ZGVkIGZyb20gLi9hcmNoL202OGsvaW5jbHVkZS9hc20vaW9fbW0uaDoyNSwKICAgICAgICAg
ICAgICAgICBmcm9tIC4vYXJjaC9tNjhrL2luY2x1ZGUvYXNtL2lvLmg6OCwKICAgICAgICAgICAg
ICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9pby5oOjE0LAogICAgICAgICAgICAgICAgIGZyb20g
Li9pbmNsdWRlL2xpbnV4L2lvcG9sbC5oOjE0LAogICAgICAgICAgICAgICAgIGZyb20gZHJpdmVy
cy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmM6MTI6CkluIGZ1bmN0aW9uIOKA
mGZzbF9zYW1zdW5nX2hkbWlfcGh5X2NvbmZpZ3VyZV9wbGxfbG9ja19kZXTigJksCiAgICBpbmxp
bmVkIGZyb20g4oCYZnNsX3NhbXN1bmdfaGRtaV9waHlfY29uZmlndXJl4oCZIGF0CmRyaXZlcnMv
cGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jOjQ3MDoyOgouLy4vaW5jbHVkZS9s
aW51eC9jb21waWxlcl90eXBlcy5oOjU0MjozODogZXJyb3I6IGNhbGwgdG8K4oCYX19jb21waWxl
dGltZV9hc3NlcnRfMTQ34oCZIGRlY2xhcmVkIHdpdGggYXR0cmlidXRlIGVycm9yOiBGSUVMRF9Q
UkVQOgp2YWx1ZSB0b28gbGFyZ2UgZm9yIHRoZSBmaWVsZAogIDU0MiB8ICBfY29tcGlsZXRpbWVf
YXNzZXJ0KGNvbmRpdGlvbiwgbXNnLCBfX2NvbXBpbGV0aW1lX2Fzc2VydF8sIF9fQ09VTlRFUl9f
KQogICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeCi4vYXJjaC9t
NjhrL2luY2x1ZGUvYXNtL3Jhd19pby5oOjMwOjgyOiBub3RlOiBpbiBkZWZpbml0aW9uIG9mIG1h
Y3JvIOKAmG91dF844oCZCiAgIDMwIHwgI2RlZmluZSBvdXRfOChhZGRyLGIpICh2b2lkKSgoKihf
X2ZvcmNlIHZvbGF0aWxlIHU4ICopCih1bnNpZ25lZCBsb25nKShhZGRyKSkgPSAoYikpCiAgICAg
IHwKICAgICAgICAgICAgICAgICAgXgpkcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1z
dW5nLWhkbWkuYzozNDQ6Mjogbm90ZTogaW4gZXhwYW5zaW9uCm9mIG1hY3JvIOKAmHdyaXRlYuKA
mQogIDM0NCB8ICB3cml0ZWIoRklFTERfUFJFUChSRUcxMl9DS19ESVZfTUFTSywgZGl2KSwgcGh5
LT5yZWdzICsgUEhZX1JFRygxMikpOwogICAgICB8ICBefn5+fn4KLi8uL2luY2x1ZGUvbGludXgv
Y29tcGlsZXJfdHlwZXMuaDo1MzA6Mjogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvCuKAmF9f
Y29tcGlsZXRpbWVfYXNzZXJ04oCZCiAgNTMwIHwgIF9fY29tcGlsZXRpbWVfYXNzZXJ0KGNvbmRp
dGlvbiwgbXNnLCBwcmVmaXgsIHN1ZmZpeCkKICAgICAgfCAgXn5+fn5+fn5+fn5+fn5+fn5+fn4K
Li8uL2luY2x1ZGUvbGludXgvY29tcGlsZXJfdHlwZXMuaDo1NDI6Mjogbm90ZTogaW4gZXhwYW5z
aW9uIG9mIG1hY3JvCuKAmF9jb21waWxldGltZV9hc3NlcnTigJkKICA1NDIgfCAgX2NvbXBpbGV0
aW1lX2Fzc2VydChjb25kaXRpb24sIG1zZywgX19jb21waWxldGltZV9hc3NlcnRfLCBfX0NPVU5U
RVJfXykKICAgICAgfCAgXn5+fn5+fn5+fn5+fn5+fn5+fgouL2luY2x1ZGUvbGludXgvYnVpbGRf
YnVnLmg6Mzk6Mzc6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybwrigJhjb21waWxldGltZV9h
c3NlcnTigJkKICAgMzkgfCAjZGVmaW5lIEJVSUxEX0JVR19PTl9NU0coY29uZCwgbXNnKSBjb21w
aWxldGltZV9hc3NlcnQoIShjb25kKSwgbXNnKQogICAgICB8ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fgouL2luY2x1ZGUvbGludXgvYml0Zmll
bGQuaDo2ODozOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYQlVJTERfQlVHX09OX01T
R+KAmQogICA2OCB8ICAgQlVJTERfQlVHX09OX01TRyhfX2J1aWx0aW5fY29uc3RhbnRfcChfdmFs
KSA/ICBcCiAgICAgIHwgICBefn5+fn5+fn5+fn5+fn5+Ci4vaW5jbHVkZS9saW51eC9iaXRmaWVs
ZC5oOjExNTozOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYX19CRl9GSUVMRF9DSEVD
S+KAmQogIDExNSB8ICAgX19CRl9GSUVMRF9DSEVDSyhfbWFzaywgMFVMTCwgX3ZhbCwgIkZJRUxE
X1BSRVA6ICIpOyBcCiAgICAgIHwgICBefn5+fn5+fn5+fn5+fn5+CmRyaXZlcnMvcGh5L2ZyZWVz
Y2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jOjM0NDo5OiBub3RlOiBpbiBleHBhbnNpb24Kb2Yg
bWFjcm8g4oCYRklFTERfUFJFUOKAmQogIDM0NCB8ICB3cml0ZWIoRklFTERfUFJFUChSRUcxMl9D
S19ESVZfTUFTSywgZGl2KSwgcGh5LT5yZWdzICsgUEhZX1JFRygxMikpOwogICAgICB8ICAgICAg
ICAgXn5+fn5+fn5+fgoKQXMgaXQgYnVpbGRzIGZpbmUgb24gaTM4NiwgSSBsb29rZWQgYXQgdGhl
IHByZXByb2Nlc3NlZCBzb3VyY2UgZmlsZXMsCmJ1dCBkaWRuJ3Qgc2VlIGFueSBkaWZmZXJlbmNl
cyB0aGF0IGNvdWxkIGV4cGxhaW4gdGhpcy4KCkkgY2hhbmdlZCBjcm9zcy1jb21waWxlciB0byBn
Y2MgdmVyc2lvbiAxMC41LjAgKFVidW50dSAxMC41LjAtMXVidW50dTF+MjIuMDQpLAphbmQgdGhh
dCBmaXhlZCB0aGUgaXNzdWUgb24gbTY4ay4KSSBjaGFuZ2VkIHRoZSBuYXRpdmUgY29tcGlsZXIg
dG8gZ2NjLTksIGFuZCB0aGUgYnVpbGQgc3RhcnRlZCBmYWlsaW5nCm9uIGkzODYgYW5kIHg4Nl82
NCwgdG9vLi4uLgoKPgo+ICAgICAgICAgLyoKPiAgICAgICAgICAqIENhbGN1bGF0aW9uIGZvciB0
aGUgZnJlcXVlbmN5IGxvY2sgZGV0ZWN0b3IgdGFyZ2V0IGNvZGUgKGZsZF90Z19jb2RlKQoKR3J7
b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAgICAgICAgICAgICAgICBHZWVydAoKLS0gCkdlZXJ0
IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2Vl
cnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmlj
YWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0
byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0
aGF0LgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
