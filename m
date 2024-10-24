Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1872BD0BB64
	for <linux-phy@archiver.kernel.org>; Thu, 24 Oct 2024 06:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5eqLpOUtTF6I5FbSfft6hE+yoqovvVq/uK9LahUPnPw=; b=V2PASau8pwci49
	OoyRYZ+ze2onZkWCVfiKINhpGWgqIUHlEvyx88/APepIbNHydiXJ4f4LTHv3QJ02WsSw9zBnJVEbX
	G4hFBRxIrnmBPPnRjN2vnpSqarZT4Cf7OWXd+u/10twtXKdtdoEKpFRad7P9elbuT7DNSsQljuqFT
	1U2LXCzAgpue70OMAL/uUJiisDVqwp7/qFvChxOzKFEtVnlRkbvz0he2pVLWQ2O+5VuqDT7fGFgCM
	zFR11ru+vJK4aD6Vs+QjIIvnCYBghf21VcQOPbEF75h146nhLPwO4Sp73KE+HcY0U8gIQp4YK2qA/
	aDCH4A7cc0jfqPWoaoiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3rEF-0000000Gu7d-3S95;
	Thu, 24 Oct 2024 06:21:51 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3r9i-0000000Gt9S-0IJx
	for linux-phy@lists.infradead.org;
	Thu, 24 Oct 2024 06:17:12 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-71e52582cf8so397685b3a.2
        for <linux-phy@lists.infradead.org>; Wed, 23 Oct 2024 23:17:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1729750625; x=1730355425; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7kDqeaAprBXUkM4Fq1Ym36ZhnawEXTDWt16M3cGZQYI=;
        b=LFz3il/FYnrvLS0T48Bxh3/IqJjJhlEBBnxpFAVLDjlniMIcEqfl4SuvIigoWpDo6A
         YKm0uX82xojVWbwEDjT4SSEudwFXKD3CoTJCiX19CfeGHiG7bNpsI9MD6p6FZGXyhCvr
         fquTXOkvf0ieq98Fp7q69psfAT5tA+oJMbgWAzfPkaJeC7J0OoD1opmAauOGzVFZ8lWE
         TH5zoy/kBtNgoISnzA5E39oxpwZQlZIcBQrSt1w3hsWHclAZ+7oaS1KEJPgZDyJ8G50t
         yhSsApAqMa2pAf8vwMXhggJQb+7OkQBQMDnMj+SDf9JAIJt7u9VjmGiSil3jCElqAJdW
         XTtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729750625; x=1730355425;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7kDqeaAprBXUkM4Fq1Ym36ZhnawEXTDWt16M3cGZQYI=;
        b=Mj4aW9IOxXclvLwARPunv0goRm5F2n3+MK/bQNpih6o/Cum592mutgcK13HxoO8fex
         FPHA9vmq/zGxN+neN5zRPg2HvkFd74cc4LihdndGMSKK363CwJVM7QpPgDDDf2iE9g/s
         VonjxgVn4xS5ax2WAgyqhHf5tjbTm9PoYdrPF6aFLyRKdNjB3qNFlw/TexzBCfhTRsO3
         VENqLhx9MgybVPxoTSIjBSojKQfAVkaxCfw67oPFcJYryWTeLRyetgIsVWny6O3aBBu/
         HcSPerumUbo5wUPcVSEuaaCnUzc6MFHMbtwsU8h1tZsUXeMEpYdOBZFTTtSf+abcO+x9
         Gjsg==
X-Forwarded-Encrypted: i=1; AJvYcCVDqj874o5P+UkrsOvjmcoCjKt2UnEsfY5ORzHEF51Pw6W/Bt/1FYNKnNNNcBpjtuFqF4hYW0hqYeQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw++ZKMpjRUgRC9a7jE22NDq4C8isvkUeEdTr+9ZWqnp3k9yCyr
	9qRoqrNZ2Iva3KRCtSNRbrbYHPALOrZ0H+mB7Oyyo0kHonLtbJFbWCr6KoMjvSPaW+VVPg2vSgz
	7e8Yvafw29ikdoxOgkhxJVPznepLHzu0xpMtW
X-Google-Smtp-Source: AGHT+IFcCYtp7nVgkoJ5rzaztD8OtipNso126UyODrDbPTgNIyDaB+s9edBYS51aMEHDl37/TiPH24OOcDTayFV74a4=
X-Received: by 2002:a05:6a20:5da3:b0:1d9:83cc:ef90 with SMTP id
 adf61e73a8af0-1d983ccefdamr1940597637.8.1729750624651; Wed, 23 Oct 2024
 23:17:04 -0700 (PDT)
MIME-Version: 1.0
References: <20241024061347.1771063-1-saravanak@google.com> <20241024061347.1771063-4-saravanak@google.com>
In-Reply-To: <20241024061347.1771063-4-saravanak@google.com>
From: Saravana Kannan <saravanak@google.com>
Date: Wed, 23 Oct 2024 23:16:26 -0700
Message-ID: <CAGETcx_0gqbo5Xf9mZGrBZszZsmKBdqRreb-=O_PvOR_2Yc5Cw@mail.gmail.com>
Subject: Re: [PATCH 3/3] drivers: core: fw_devlink: Make the error message a
 bit more useful
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>, 
	kernel-team@android.com, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, 
	linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_231710_147783_C5566BDB 
X-CRM114-Status: GOOD (  17.95  )
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

R3JlZywKCkNhbiB5b3UgZml4IHVwIHRoZSBjb21taXQgc3ViamVjdCBwcmVmaXggdG8gImRyaXZl
ciBjb3JlOiBmd19kZXZsaW5rOiIKcGxlYXNlPyBEb24ndCB3YW50IHRvIHNlbmQgdjIganVzdCBm
b3IgdGhhdC4KCi1TYXJhdmFuYQoKT24gV2VkLCBPY3QgMjMsIDIwMjQgYXQgMTE6MTTigK9QTSBT
YXJhdmFuYSBLYW5uYW4gPHNhcmF2YW5ha0Bnb29nbGUuY29tPiB3cm90ZToKPgo+IEl0IHdvdWxk
IG1ha2UgaXQgZWFzaWVyIHRvIGRlYnVncyBpc3N1ZXMgc2ltaWxhciB0byB0aGUgb25lcwo+IHJl
cG9ydGVkWzFdWzJdIHJlY2VudGx5IHdoZXJlIHNvbWUgZGV2aWNlcyBkaWRuJ3QgaGF2ZSB0aGUg
Zndub2RlIHNldC4KPgo+IFsxXSAtIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC83Yjk5NTk0
Ny00NTQwLTRiMTctODcyZS1lMTA3YWRjYTQ1OThAbm90YXBpYW5vLwo+IFsyXSAtIGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MDkxMDEzMDAxOS4zNTA4MS0xLWpvbmF0aGFuaEBudmlk
aWEuY29tLwo+Cj4gU2lnbmVkLW9mZi1ieTogU2FyYXZhbmEgS2FubmFuIDxzYXJhdmFuYWtAZ29v
Z2xlLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9iYXNlL2NvcmUuYyB8IDQgKystLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvYmFzZS9jb3JlLmMgYi9kcml2ZXJzL2Jhc2UvY29yZS5jCj4gaW5kZXggYTRjODUz
NDExYTZiLi4zYjEzZmVkMWMzZTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9iYXNlL2NvcmUuYwo+
ICsrKyBiL2RyaXZlcnMvYmFzZS9jb3JlLmMKPiBAQCAtMjE4MSw4ICsyMTgxLDggQEAgc3RhdGlj
IGludCBmd19kZXZsaW5rX2NyZWF0ZV9kZXZsaW5rKHN0cnVjdCBkZXZpY2UgKmNvbiwKPiAgICAg
ICAgICAgICAgICAgfQo+Cj4gICAgICAgICAgICAgICAgIGlmIChjb24gIT0gc3VwX2RldiAmJiAh
ZGV2aWNlX2xpbmtfYWRkKGNvbiwgc3VwX2RldiwgZmxhZ3MpKSB7Cj4gLSAgICAgICAgICAgICAg
ICAgICAgICAgZGV2X2Vycihjb24sICJGYWlsZWQgdG8gY3JlYXRlIGRldmljZSBsaW5rICgweCV4
KSB3aXRoICVzXG4iLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZmxhZ3MsIGRl
dl9uYW1lKHN1cF9kZXYpKTsKPiArICAgICAgICAgICAgICAgICAgICAgICBkZXZfZXJyKGNvbiwg
IkZhaWxlZCB0byBjcmVhdGUgZGV2aWNlIGxpbmsgKDB4JXgpIHdpdGggc3VwcGxpZXIgJXMgZm9y
ICVwZndmXG4iLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZmxhZ3MsIGRldl9u
YW1lKHN1cF9kZXYpLCBsaW5rLT5jb25zdW1lcik7Cj4gICAgICAgICAgICAgICAgICAgICAgICAg
cmV0ID0gLUVJTlZBTDsKPiAgICAgICAgICAgICAgICAgfQo+Cj4gLS0KPiAyLjQ3LjAuMTA1Lmcw
N2FjMjE0OTUyLWdvb2cKPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
