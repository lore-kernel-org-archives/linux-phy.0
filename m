Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EA17D35144
	for <linux-phy@archiver.kernel.org>; Wed,  1 Apr 2026 07:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Uk1bxusiVV/E2Jr54ZPooFY7Qa9xAK3epncifGsTmo=; b=Gs7GaDZVq50BpI
	p5TVhtzhWppRxFZSVgLtN36FccfpcMMo1wc1gEuzZ7y/RQHypTQrfu0cMmKQiXEfFH3urRWFKba+0
	9fiSrOaDiWEelROAUlvuWfe25X9kbbPhQZ7Di7ms/51Ygoxd4IBV1PlFkBWMmDUgN2gJ0W44n3T2Z
	OQcdzeA15e1h5J87GPY46JEsddC2hqa+Ob2xpaB5S7+XrELkODMXLlCKG5S0a2S9c/DMJdugyeevj
	HE8mrpA++xr8iCRI5ZuXHxAQDyIWPLv2ZSpdKV7x0s+vmHvzk83GPklnXhPlQQVhSl9IlD1p7sVFe
	Tg8v5qTX75CKuwJ/oraA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7pm9-0000000EBLc-39sn;
	Wed, 01 Apr 2026 07:14:05 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7pm6-0000000EBLI-2zvb
	for linux-phy@lists.infradead.org;
	Wed, 01 Apr 2026 07:14:03 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-43cfce3a195so1888847f8f.2
        for <linux-phy@lists.infradead.org>; Wed, 01 Apr 2026 00:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775027640; x=1775632440; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l1j/IxoU5Guat3mjMlA6cX1gNAird+6fN7SyDo3AMgI=;
        b=mDlRxz5MFjy3Hhoh8ewsxDbIiIRr8BdzAXP484IJsFoUzgxF1WYl3hJTWQgese0yaq
         qj+xA+h0x6ZuAATtXho1XfZ9lB+hba1UesKMm+jl4tJnBmcUm7sMWRmXmTVmShmMTCMa
         ZTRPKdCAbhgjLxKUr9X2TLXU5cishAWIVed69viVZ5e6b2GVGryP79A0UTFxbx7I6Zwq
         QEYpZWoKSMORhenK5rU/JSh5d6dod9DRWj2dc5fIvfS3HPPA6+1R7mM+eLfqjDqYlk31
         zt+g0XOk6nJEOfF12maEJGIo6sp/frdtt0ZQEoOklqT11U86m6lgNIFmWHUBdylPsirP
         2Sbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775027640; x=1775632440;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l1j/IxoU5Guat3mjMlA6cX1gNAird+6fN7SyDo3AMgI=;
        b=CcOxNpqxLoaf7PYm5w083gKiOr41G7TjeA85zEWGjksc0lu5FInMcVAPjy0MPedTBz
         m8I/w347ge9jH6miuzylkyweWiWUhzUuFhncPJ+wvIMIm2OwJbPE4Lh7qnzhCksmEsbs
         ZeA3Kd5weKP2ye0hFAFUdcJxRZFBmq/5rrzZWzp7zeHJVxPLMw+LqR6gtrkbYFmiBeBj
         YzPBC5WltcdPtmMWtmAccy8+BcY/ApU4ngyg7XAoIm7Wt64peN57OOq4vpkGZTYIia6U
         HMLE+O0doSdZbOzlU3wsSV7QGavm535t0pwJ0dH/bqX3FpBrfZgFTOeT8gUsjkh1B09X
         XvTw==
X-Forwarded-Encrypted: i=1; AJvYcCXLBi8+5PJ7APsIhAseAVQFfQARbTvm5ZQFJoeHgQM4YN7jWmN9ZNY5g+m730jcu/Wp4JQ4thQWcgY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwG8Ae+UuXnrPqDvagW9M//8BFVKD6kJR8lyN25nMO1O6oeiQUw
	3acbX+2hl39zU010Q1zQ+Ou35IzvH04ZYvBscUwilDOlKXM3MQxhRvAo
X-Gm-Gg: ATEYQzx4GUYm9BOgR8Pfs6VMV4hJEXLLU8S4cieh3VSxyQVdmUamgvLgsMFWWvk+zLD
	6VTmtm65d6XP672AE4158ocUFX1TyjX2aKvIayp4mQ6GZYrTUCR0CqtKEAa0FfP5HhAahEbOorR
	820Q2lFMvjNk6EkrpORGtTZ6HtaYPydn5OqpcvAN6NTFiKNiNeP7TOXzTsaaq7wwCrdwAwycJFF
	X0uKCO2+gWBy/pgQcVso9VdUWEIHPgEt7PdPXRqSeV8fXUtO5y6IYN+ghJTk0I/ygUvcBIawntR
	r7FA9uEKDuVNLQ5xyotS4MOsFAe6nF5B4MdYaqb6oqSguf1raucky7zI9sYKCE1cBW+x8SLJaH/
	ipO+XK2kCrCFiZj1bepCArgeSoboZGrsyhtACuqdwOvkSarI8Zj/jpUqT27mTDxy0R+8SS3WdmQ
	Es/C8yEcSQ64ZjlkgBpZvYSMxHGJYU7zBSwro/SxXHBHlnhzliVKfxIdCPU8UtoCc=
X-Received: by 2002:a05:6000:402a:b0:43b:4d37:cd37 with SMTP id ffacd0b85a97d-43d1504d681mr4462782f8f.7.1775027639943;
        Wed, 01 Apr 2026 00:13:59 -0700 (PDT)
Received: from [192.168.20.170] (5D59A51C.catv.pool.telekom.hu. [93.89.165.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43cf21e265fsm35187403f8f.1.2026.04.01.00.13.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2026 00:13:59 -0700 (PDT)
Message-ID: <141b3528-f83a-4fc3-954f-630ce45e54df@gmail.com>
Date: Wed, 1 Apr 2026 09:13:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH phy-fixes] phy: marvell: mvebu-a3700-utmi: fix incorrect
 USB2_PHY_CTRL register access
Content-Language: hu
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Igal Liberman <igall@marvell.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260321-a3700-utmi-fix-usb2_phy_ctrl-access-v1-1-6005ff4b5058@gmail.com>
 <87zf3o873b.fsf@bootlin.com>
From: Gabor Juhos <j4g8y7@gmail.com>
In-Reply-To: <87zf3o873b.fsf@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_001402_790426_7B4FEC62 
X-CRM114-Status: GOOD (  15.07  )
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

SGkgTWlxdWVsLAoKPiBIaSBHYWJvciwKPiAKPiBPbiAyMS8wMy8yMDI2IGF0IDE1OjQyOjMyICsw
MSwgR2Fib3IgSnVob3MgPGo0Zzh5N0BnbWFpbC5jb20+IHdyb3RlOgo+IAo+PiBUaGUgbXZlYnVf
YTM3MDBfdXRtaV9waHlfcG93ZXJfb2ZmKCkgZnVuY3Rpb24gdHJpZXMgdG8gbW9kaWZ5IHRoZQo+
PiBVU0IyX1BIWV9DVFJMIHJlZ2lzdGVyIGJ5IHVzaW5nIHRoZSBJTyBhZGRyZXNzIG9mIHRoZSBQ
SFkgSVAgYmxvY2sgYWxvbmcKPj4gd2l0aCB0aGUgcmVhZGwvd3JpdGVsIElPIGFjY2Vzc29ycy4g
SG93ZXZlciwgdGhlIHJlZ2lzdGVyIGV4aXN0IGluIHRoZQo+PiBVU0IgbWlzY2VsbGFuZW91cyBy
ZWdpc3RlciBzcGFjZSwgYW5kIGFzIHN1Y2ggaXQgbXVzdCBiZSBhY2Nlc3NlZCB2aWEKPj4gcmVn
bWFwIGxpa2UgaXQgaXMgZG9uZSBpbiB0aGUgbXZlYnVfYTM3MDBfdXRtaV9waHlfcG93ZXJfb24o
KSBmdW5jdGlvbi4KPj4KPj4gQ2hhbmdlIHRoZSBjb2RlIHRvIHVzZSByZWdtYXBfdXBkYXRlX2Jp
dHMoKSBmb3IgbW9kw61meWluZyB0aGUgcmVnaXN0ZXIKPiAKPiBTcHVyaW91cyBhY2NlbnQgaGVy
ZSA6LSkgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4KPiAKPiBEbyB5b3UgaW1wbHkgdGhh
dCB0aGUgcmVnaXN0ZXIgYWNjZXNzIHdhcyBub3Qgd29ya2luZz8gT3IgdGhhdCBpdCB3YXMKPiBu
b3QgdXNpbmcgdGhlIGNvcnJlY3QgQVBJPyAuLi4KCkl0IHdhcyB1c2luZyB0aGUgd3JvbmcgQVBJ
IHdpdGggd3JvbmcgYmFzZSBhZGRyZXNzLgoKVGhlIFVTQjJfUEhZX0NUUkwoeCkgbWFjcm8gZ2l2
ZXMgYmFjayBhbiBvZmZzZXQgcmVsYXRpdmUgdG8gdGhlIGJhc2UgYWRkcmVzcyBvZgp0aGUgVVNC
IG1pc2NlbGxhbmVvdXMgcmVnaXN0ZXJzLiBIb3dldmVyIHRoZSBjdXJyZW50IGNvZGUgdXNlcyB0
aGF0IG9mZnNldCB3aXRoCnRoZSBiYXNlIGFkZHJlc3Mgb2YgdGhlIFVUTUkgUEhZIHJlZ2lzdGVy
cy4KClNvLCBpbnN0ZWFkIG9mIG1vZGlmeWluZyB0aGUgJ1VTQjIgSG9zdCBQSFkgQ29udHJvbCcg
cmVnaXN0ZXIgYXQgMHhkMDA1ZjgwNCBpdApjaGFuZ2VzIHRoZSAnVVNCMiBVVE1JIFBIWSBQTEwg
Q29udHJvbCAxJyByZWdpc3RlciBhdCAweGQwMDVmMDA0LgoKU2luY2UgdGhlIG1pc2NlbGxhbmVv
dXMgcmVnaXN0ZXJzIGNhbiBiZSBhY2Nlc3NlZCBvbmx5IHZpYSB0aGUgcmVnbWFwIG9idGFpbmVk
CmZyb20gYSBzeXNjb24gbm9kZSB3ZSBoYXZlIHRvIHVzZSB0aGUgcmVnbWFwIEFQSSBpbnN0ZWFk
IG9mIHRoZSBnZW5lcmljIElPCmFjY2Vzc29ycy4KCj4gLi4uIChoZW5jZSBwb3RlbnRpYWwgaXNz
dWVzIHdpdGggbG9ja2luZyBtaWdodCBhcmlzZSkKClRoZSByZWdtYXAgQVBJIHVzZXMgYnVpbHQt
aW4gbG9ja2luZyBzbyB0aGVyZSBzaG91bGQgYmUgbm8gbG9ja2luZyBpc3N1ZXMuCgpSZWdhcmRz
LApHYWJvcgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
