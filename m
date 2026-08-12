Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD6DCC5B572
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 18:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7+bkF/pKRZcqH7AN/k5nx1Kbp4dU2DGOeSz4dlpeWQk=; b=gHBqUNwPIhWgjl
	fv/OqF/CR5ox06spLY7wz2s0pVljH02+0BaEiowcTr4dBKe6RzH3ANMKpouO/B/exgmNfCbFq2b+G
	9Zi+MbDI+CUb1ItB+8VQX1DrgjFmNdzs2jWfN4p9vcEsc36ld0E8G24O4RPBJHLrn7aueDD1oFpk9
	j14PMqji6ZsIHXI8kqX+NPPyfur2BWkgW//xrmA0ZWHG2E2cCQ/QMiBB5nSQiOCMSLAMuRhcQc7dL
	QB3kAowxxCHneUhpAX4u9YJFUWI6/DbtNnXW2m5ZOmIR6z2H/LxSqvaEIJy2fC/gyy9DJjNoNXA6Q
	HsjgkdhfIzC1jKxA8d9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuDUd-0000000Gm2W-3dXB;
	Wed, 12 Aug 2026 18:15:59 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuDUb-0000000Gm1S-1YR3
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 18:15:58 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-c2074710751so205512166b.1
        for <linux-phy@lists.infradead.org>; Wed, 12 Aug 2026 11:15:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786558555; cv=none;
        d=google.com; s=arc-20260327;
        b=IgUozefbwtHdxaYgKGJNrthKVECLRizMbiLCC/OF14TGW33qimKQOD7ZQ82iDcJvgR
         ljdEN8IaWfa+qrtaBhNOXNcd8ia0025eHIICddiMfIeZnytA61hr1uFcvJKNIhc8S/tm
         HgoB1aPAMF5bqKpl6YIJedUxOUGV3ognr2X62YCqOYFAUEKFrmfTfLYS+TSEZu3K6X/9
         I7PFpLmQpIFrW+4/w0Y16i/0OGcLmTKd8UeNbjfHjEusVvFgxBY55nNPcMEyHG49NiM7
         NWyroh9Cl9jMk4xdUACYRLHv5wZNKnLIMydTgnnCp1bpZWIdJ3Cf/+vkqEfKkDVngojl
         3u4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=PgwvOoLAHdeH5x1LPpK/Ic794djJ4NRcQySFzYPO0Xs=;
        fh=9a6/qfecR1hOlDSh9oe+yILXnj2rO7udnaqtLwXBzzY=;
        b=YB/YAQCc5xIS0Iw38+g6/EZplcv4qRkimAej3bMo/JH9LWIAuHiWA9eDbdNmNLwgup
         Utsvhfu/qz0Nc8ikIqi0UE4bMQ2Vep2CRznlz/6CK3yd5IsmzASIR3uxQpAP90ub+fuL
         iT0xTsxhcl7bmBt83IA8RwSfo3rPhJmKKdU1HK+VroyNpsawVJrSXiyBmOjDlJK/qtLi
         m7ArB4/0VkhqDliMyJT8l9QJ0vGjhKLi0SRI730GDpLrKmd9KQ/bHfnMnqLNpOpbXG4o
         rs+LhachwOj+I6r6r8PhwYDdWMXMgEZCxv9bYXo637VGhjHDN6F70YEdUFzWk4woqKJJ
         rSBg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786558555; x=1787163355; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=PgwvOoLAHdeH5x1LPpK/Ic794djJ4NRcQySFzYPO0Xs=;
        b=NnUnDbAYTQbOwj/fxcFXA9n2iavnR2lp5BkZkAi8ybEwdmAlrLpefxCKDZTGO7RdRQ
         yse/7WtV9ZxNI31ACFsnfcFjvsNPy4Ztj5uvq1SwtI/Fgnz+Z0TAmNJYrnwsgXjFm7Zt
         ZpWWZxeLETdb5NdxANerTHuCGNJ2rEKCPLOMkQkXnvnZZxNFO/AXacAwNTaKkIPPooW2
         sAkW0rc00GPgwEvCAgPhg8r6ap0vfTC6j+kpJVJgwZsU8yXqK4rEZ+Ulg0ZX42uZOnMI
         kT0OGEBe14bHSVvGaGu4lhQyNAK6y32/qCoTCSOCIl6WcPmXP2eiXNfQZ5h435PwOyLB
         Bayw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786558555; x=1787163355;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=PgwvOoLAHdeH5x1LPpK/Ic794djJ4NRcQySFzYPO0Xs=;
        b=M24HYIKVTfS8xQCAZAsx4gJ6zFBG2iZ1e4ea2hBJFAbd2CQjdsAh+W2FpqOXHGzAVF
         5Y40UlcilkE69HFXSwu4ny+g1t1+ER1pjUJtOH3dkabJN+AIC4w5EaRU3f+Cul5RvL2K
         eWm5sNbq5yEoGQvf6MnUguZMnMNo/zteUcxMTaYjqh71T2ub/klI2IlNWiV77p74/SZ6
         jhP29PISoEeRQjdZdRzB1BWyTC4BB4U+Ke64D1ta0B/VDTR0qMRT3+rHIi7GIjR0H7Mw
         Tnrn++OUb5ZZequPzkqxZuxg/vV8/Fyow5DLd+o/cxi8ZtEroxnf6YZC/Hfwy1wu7Ik4
         oCug==
X-Gm-Message-State: AOJu0YzOHwL73EkRXiWLP6ebSONsjCQ5SalFCU86aogFE5rXQFp/z8j6
	1Pq0a8KKVVNPRzX1uwlD05TKjWVZyd5qQADDUXWBlJgkKIOpRqNXwSzFRfXxs/6S0TMpkN/XzX9
	xO1HXamhObOj2hIYEfHlkzvEpb/E2mY0=
X-Gm-Gg: AR+sD10y2CbwBZEorU3/9YidQMFJjDSVNTYgAXfsrPPL5VPQTxZ5qFRXu6zHchh//bW
	PF+blEINVJn9FjgOZV/kAxQSVHqKVQKHG+taSSOaBvcvh7AFqxH0jjHH3JOnwbDdIk7h/KEsomF
	/vCpTccWVHP+ONgLBOLSnrSM5gyuv3ztjqiZruVnMTmB6jLzYPlZyxfMAX3CRzf4svcUWbytd9w
	OEYkJC8ADGNWxYbBk4GT/hjIcBowYuPRhi0iCgykI2zJoAwg7yAV+noN1BPzn1YFYuXS5n8UPcq
	wd8EnxfTTKBL54D8go17dzpe8OUQ+Bc2u2bPEzVjN0guY0AFHHW1jQwysFdKZVpxcl8nhytSVM6
	IjaRsNfCEwqaDV6xD7p3xKf5Zz4sKlixqwsd+CxhGAcVmtPhFsZyBiYLZTQR4aLdJp1ui7BN1b0
	howux1YShG1R76eQY02+H33nf8bvg5F2zR5kOgCzahJhyWpa/n45jz7YY=
X-Received: by 2002:a17:907:c0d:b0:c20:899:b8bc with SMTP id
 a640c23a62f3a-c2108ee3cf0mr7867166b.6.1786558554870; Wed, 12 Aug 2026
 11:15:54 -0700 (PDT)
MIME-Version: 1.0
References: <20260304041400.7236-1-rosenp@gmail.com> <djjg6jwpuu6l5wcc7zbxfi7j4n5hircmhivxohdtgufzrp6rlb@l6eyfdyfrxix>
In-Reply-To: <djjg6jwpuu6l5wcc7zbxfi7j4n5hircmhivxohdtgufzrp6rlb@l6eyfdyfrxix>
From: Rosen Penev <rosenp@gmail.com>
Date: Wed, 12 Aug 2026 11:15:43 -0700
X-Gm-Features: AUfX_mxqbIvZ73kcSiSnSMXY77gQTI6q5M4UWPSGxgp8t1CwI1GTwLlXmGpI4Co
Message-ID: <CAKxU2N_VYNgYKhS11Frzio4fbg_ZnDsvCfEypvxSiw3-JV0_QQ@mail.gmail.com>
Subject: Re: [PATCH] phy: mediatek: tphy: simplify main allocation
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-phy@lists.infradead.org, Chunfeng Yun <chunfeng.yun@mediatek.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Kees Cook <kees@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	"moderated list:ARM/Mediatek USB3 PHY DRIVER" <linux-arm-kernel@lists.infradead.org>, 
	"moderated list:ARM/Mediatek USB3 PHY DRIVER" <linux-mediatek@lists.infradead.org>, 
	"open list:ARM/Mediatek SoC support" <linux-kernel@vger.kernel.org>, 
	"open list:KERNEL HARDENING (not covered by other areas):Keyword:b__counted_by(_le|_be)?b" <linux-hardening@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260812_111557_423587_C98C0AFE 
X-CRM114-Status: GOOD (  12.49  )
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

T24gV2VkLCBBdWcgMTIsIDIwMjYgYXQgNjozMuKAr0FNIE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8
bWFuaUBrZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIFR1ZSwgTWFyIDAzLCAyMDI2IGF0IDA4OjE0
OjAwUE0gLTA4MDAsIFJvc2VuIFBlbmV2IHdyb3RlOgo+ID4gVXNlIGEgZmxleGlibGUgYXJyYXkg
bWVtYmVyIHRvIHJlcGxhY2Uga3phbGxvYyArIGtjYWxsb2Mgd2l0aCBhIHNpbmdsZQo+ID4ga3ph
bGxvYy4KPiA+Cj4gPiBTaHVmZmxlZCBzb21lIGNvZGUgYXJvdW5kIGFzIF9fY291bnRlZF9ieSBy
ZXF1aXJlcyB0aGUgY291bnRpbmcgdmFyaWFibGUKPiA+IHRvIGJlIGFzc2lnbmVkIGZpcnN0Lgo+
ID4KPiA+IFJlbW92ZWQgTlVMTCBjaGVjayBmcm9tIG9mX2dldF9tYXRjaF9kYXRhIGFzIGl0J3Mg
bmV2ZXIgTlVMTCBwZXIgdGhlCj4gPiBkZXZpY2UgdGFibGUuCj4gPgo+Cj4gUGxlYXNlIGRvIG5v
dCBjb21iaW5lIG11bHRpcGxlIGZpeGVzIGluIGEgc2luZ2xlIHBhdGNoLiBBbHNvLCB0aGUgTlVM
TCBjaGVjayBjYW4KPiBiZSBrZXB0IGZvciB0aGUgY2FzZSBvZiBzYW5pdHkgYXMgaXQgd291bGRu
J3QgaHVydC4KaG1tPyBUaGVyZSBhcmUgbm8gZml4ZXMgaGVyZS4gSnVzdCBhIEZBTSBjb252ZXJz
aW9uLgo+Cj4gLSBNYW5pCj4KPiAtLQo+IOCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprg
rqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
