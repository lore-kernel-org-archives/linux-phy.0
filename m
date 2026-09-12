Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DB04C88E56
	for <linux-phy@archiver.kernel.org>; Sat, 12 Sep 2026 20:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g4dwi8SNdQQSxXPx+UL1SPzEw5kZZgHze2w445W2s9Y=; b=zhD5KtuyozaF2S
	6Vp5boIIKF3XJ2mbnVamTuL0RDTQTlouPbufSAI2oHLaKTKMLV/u3oM/Nx06RufibH3pU/1KGa5V1
	3c/xzYOf2ccyXEsmbnfj9NC5xslMgq2c9YXS+94/rVSaK4MpCc2WIl5BIrfWqsI/YY6jroS87cwbB
	fsnHDffzWEqmZo8jGkC7AsdGT6EedhkVYnzzZ6+dY82FEPdy8397a0gDdTgIAwHrmff99EgwqnUCr
	YjMjaohfNBxDA2F6EEQ8KO7abu6dxIZtTBpW/iFb/1866Itg+NtH5kP3Sn2ZAZMP0OOhtLM4ADr07
	32LyMReXIwu/ZlPNqEaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5UPa-00000001ANd-3lW1;
	Sat, 12 Sep 2026 20:33:22 +0000
Received: from mail-ej2-x05.google.com ([2a00:1450:4864:34::5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5UPX-00000001AMK-3RWb
	for linux-phy@lists.infradead.org;
	Sat, 12 Sep 2026 20:33:21 +0000
Received: by mail-ej2-x05.google.com with SMTP id a640c23a62f3a-c299e97dc0aso8509366b.1
        for <linux-phy@lists.infradead.org>; Sat, 12 Sep 2026 13:33:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789245197; cv=none;
        d=google.com; s=arc-20260327;
        b=NS42IfGnt3NhQLqjJwjLPulRG+i5X2ZYLCvz9ZYUSLi8KtxyK3F95usxtUyrP9KQK7
         yH8B8QzdHNsDQrJiV33qdlrxX5DS/0klMqyEXyMdMydBR2UcH6WjAA0EFUybtddZIF+8
         ejzD+HkoHlO7WbiPrnc8PZEiuZUx2EOkKX5d4WTCHZ52IrfNQ2RC78UCReaMtKz6jQnM
         9y+3U4XkVuQQdjQIXR+i+Iv2f+cA7/Kk4OnmqpcZ0Vddl4aJ0EB8kFIwIIb4OCFpiAgE
         BlvsnyEo7yR3z/O1x7moeoC/ip/Lh/tuHwHtK3Jn5pYZkuX+ij1hG8/YSNLW2EXHJ+E5
         o2JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=fXb2RdQOVdFeimkTuBnAC0nV21XWeOYpcj6vU3s52nc=;
        fh=NUwsAWy1ioVo/AH3geZJpQwimGi0N5FCjgL926fCv0U=;
        b=rxv8SZ/ZR2rufRSlpm4vxWuMp0b+YjY7cdnnBPmTVJlQ+VX3sR+9+A7rFCLS5NmNtj
         0nsGV1SdDvIdCzh48F6FxXpK6jUZ5vJhq9x5SrhsKMSiNpJ78F5z7vBinkudjLX48lly
         fvzS1t6FtCBxVIGWif/rlrkGvrO6mMj7bhtkDAu2qBXLOSEs6utPeGLjDL/B70i2qeVZ
         e81FluZ+9LrqNB3aKLSCd4X9xZzCJ9zpyFoaJmkbUgXC5w/Iame6yVsM7fCrKHk/BA9x
         iYJFRG22l8hZ2AMqhRgqqeUcTIZYnSJVLJQVkSazHJHB529y7jWrjU4fX3rEydLzYqXZ
         h08w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789245197; x=1789849997; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=fXb2RdQOVdFeimkTuBnAC0nV21XWeOYpcj6vU3s52nc=;
        b=nVUaoogTaAonFjYzZ0a/JkPVspUIVh1KfzZ6J0V23nQ+RRvDV3Tl/1AiP5MPBMCVf9
         f9TIRJDZ+WdXuxYrUzzYISMyYf1Mn/H5RcbethvaEEjeEvGZk2OeCH2xBQiOzbnwBQTm
         c6CWaE6lgBVQzXQJ9okBiXVhp+Pb1Zmhkpy+zwmdQ/3E3TgdbdjGTTVdsjw9L9YxA9/B
         MElV4+RcQaa5MYCUKM8dZEgZTN0VowW72oP+eCamnf8otcCjH+HfOA4eqesU3KGBZDrS
         nT4Tq9bEJYa/mgYFvGYKkXGi6GpztbWxNimnXt6jwHjRntKuTJqhajIF42vtkkdbX+b3
         /7Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789245197; x=1789849997;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fXb2RdQOVdFeimkTuBnAC0nV21XWeOYpcj6vU3s52nc=;
        b=dFq+RM5RtW3szAxH8FDz3Id2trUGfQ+fyxRA9Oef4dsPDCOcFYqjJQ7Iql7HQMSIws
         KyD5KF8KFDMDB22Uhsow+h1wFxPuYS/dZet0iNHlBcTLZ27fb3Pj2F+p/0PKHuRV91Nh
         Z7Rq1m22NEKoWlzPpeknXBHTWiNbwfvX3f+rEL3JFXWzfH93Jm4bhglNczIlziePMn9q
         oD01/GeuisZNC3XnpibznXeiZ8Kr7CeMSnqN4ib+JYzvo/fRru7KJ8FXHO84bjPaYz9L
         ghITPQR5FfVruj4BdbC1DUWROGkZFx4As739ItOkG1p1MWISts/S8Z3zo2YzyolrdIws
         jLcg==
X-Forwarded-Encrypted: i=1; AKwUvBwuijh+8FeTdK7fG7Jjsds76a8lDT6lXHcazsxhDJBYlZ0AoYKZAhN3n0XxdbDwIQReilVcCMDZYHU=@lists.infradead.org
X-Gm-Message-State: AFuF++mFR5gDbBBgb6vM5x6x81m4O+ikvEdKwGkI152xNEagSpnv2gQA
	cWZxN+Dxp6pQ8sj34Cz8kC7R4KvFVBoWs9JOBnrPBc6z1bJ1PK/6NbYy1qJTHLI9mENPHF9b/r2
	VQN7wo9ML45JdS0wJFsKOupux7oGZdf0=
X-Gm-Gg: AYBFou2yVEaKgxwPfEB3q5bUkjpXADu6+wR9g89bGSMni+AMLsyPaTXz1NhQP8zn/Fc
	TPufiVnMs2njbZ4YQu4FttRgiY83FIK8ek0QMyyoX8IEi6mzZ6n6doPwrBPYGIgGGu9tcKhym4b
	WL20XV12mEk5aqllzwEhyu+nPFA3pQtgZFsVlbTyrn0Ll6gF1bzYO+9E3BPZDLcbMFMexohCaKy
	+v6EWIAhMtpTN9aQM+RzvwJH7iNARXy20IpAopkbxvF0FN+FmRwXvwnTxOPE1Wr0ux5bswKKhRh
	YE3vaRunds/yeqYRgntG1NpxAak77g9ek8UkS+CwdZpgkvjUH5jWs4oSQg==
X-Received: by 2002:a17:907:d02:b0:c25:2a78:15ed with SMTP id
 a640c23a62f3a-c296659c61fmr976523566b.6.1789245197295; Sat, 12 Sep 2026
 13:33:17 -0700 (PDT)
MIME-Version: 1.0
References: <20260907153713.2572547-2-coiaprant@gmail.com> <20260912131421.2960a12d@kernel.org>
In-Reply-To: <20260912131421.2960a12d@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Sun, 13 Sep 2026 04:33:05 +0800
X-Gm-Features: AcwNN1Wp1szdgOCnvhL-ujyIZJIERlGVxaN0L7OfiFu9TcpEfz4jyCgcrEH55iM
Message-ID: <CALj3r0itTv0+8R+mTg3wtMD95=4V3Znwsk48oxaSjrVMLoJfJA@mail.gmail.com>
Subject: Re: [PATCH net-next v4 00/10] net: pcs: add basic support for RK3568 XPCS
To: Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Romain Gantois <romain.gantois@bootlin.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	Shawn Lin <shawn.lin@rock-chips.com>, David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260912_133319_881564_DC6C0EE0 
X-CRM114-Status: GOOD (  10.80  )
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

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4g5LqOMjAyNuW5tDnmnIgxM+aXpeWRqOaX
pSAwNDoxNOWGmemBk++8mgo+Cj4gT24gTW9uLCAgNyBTZXAgMjAyNiAyMzozNzowMyArMDgwMCBD
b2lhIFByYW50IHdyb3RlOgo+ID4gVGhpcyBzZXJpZXMgYWRkcyBwcm9wZXIgU0dNSUkgc3VwcG9y
dCBmb3IgdGhlIFJvY2tjaGlwIFJLMzU2OCBTb0MKPiA+IHVzaW5nIHRoZSBpbnRlZ3JhdGVkIFN5
bm9wc3lzIERlc2lnbldhcmUgWFBDUywgYWxvbmcgd2l0aCBuZWNlc3NhcnkKPiA+IGZpeGVzIGFu
ZCByZWZhY3RvcmluZyBpbiB0aGUgc3RtbWFjIGNvcmUgYW5kIFhQQ1MgZHJpdmVyLgo+Cj4gU2Vu
ZGluZyB0aGUgQUkgcmV2aWV3IEZZSSwgcGxlYXNlIGxvb2sgdGhydSBpdCBhbmQganVkZ2UgaWYg
YW55IG9mIHRoZQo+IGNvbW1lbnRzIGFyZSB3b3J0aCByZXNwaW5uaW5nIGZvci4gV2UncmUgd2Fp
dGluZyBmb3IgYSByZXZpZXcgb24gdGhlCj4gZGV2aWNlIHRyZWUgYmluZGluZ3MsIGFueXdheS4K
CkkgYXBvbG9naXplOyBJIGhhdmUgYmVlbiBzbyBidXN5IHRoaXMgd2VlayB0aGF0IEnigJl2ZSBy
ZXBlYXRlZGx5Cm92ZXJsb29rZWQgbXkgcGxhbiB0byByZXBseSB0byBzYXNoaWtvLWJvdCdzIGNv
bW1lbnQuIEkgd2lsbCBnZXQgYmFjawp0byB5b3UgYXMgc29vbiBhcyBwb3NzaWJsZS4KCkJlc3Qs
CkNvaWEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
