Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F41F0C87FD1
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jul 2025 12:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P87mkAsK8YoFutTUpQWR+ZKSV2TmSbTjixBrbJt6fxw=; b=Hxxvb0j56QnlHA
	YJySDUFyU1b3F2PFgqjgc2+uIS8aPZ8A1ao3gs9+Gpfn+Iww1rHqOuqWOat3mOG94ezmxc0slqlKM
	evTpPt7R/tHgrnYTy/0FfXLmimBx9LpZgQgUTxAYl5jovZKkwtJxgWo+8odD4giZtqkzVLKx+khaF
	1hMpetD3ovTs/BguF25RQo0IRQS9qnWcdglCiHns7g1wgkNpTRpCoAZPmXVTdk2FZMISHUkw7uTLn
	fzKdJojbgJlCfT/wBKhcKGWSllteGzhbCMiLjudbJH9nnw4TOKp4/EPFuD99ae+fG4DqoPRisb7Sj
	eudz1oKKQ7dR8eJOUgpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufHNS-00000009nkt-32a4;
	Fri, 25 Jul 2025 12:18:18 +0000
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufH2P-00000009lQU-3Trb
	for linux-phy@lists.infradead.org;
	Fri, 25 Jul 2025 11:56:34 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id 6a1803df08f44-7072628404dso2105266d6.2
        for <linux-phy@lists.infradead.org>; Fri, 25 Jul 2025 04:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753444593; x=1754049393; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5hJBa13s79OQWhYLxMwSe1UwJVG9FUdchi7fOARwLxY=;
        b=XOv//xeCINTwnGWLeAJUIGqpjOxsdwluGhdgHeA8tXw6sd7V15EwpBtDkLzknMPkcq
         Kz60X88QuEyiANy1MPSRNIjQ1L1y4kawZlYmCzcGWS93FAvu4Umr6aUxPgQYKk4c0aqf
         ZbqGAM5GonQwGtf4eU/FZzfabMaubB0iKGCJA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753444593; x=1754049393;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5hJBa13s79OQWhYLxMwSe1UwJVG9FUdchi7fOARwLxY=;
        b=gRxgxYCjFXgCaWGPlU0WIXBKmwmOeqFO+47KclakKp8Gvmtmg5KV8lTIjw1twUxtt7
         qhIyQb4JMJc8QdLonR8Nm5wPvFsxCWB0PLFyIRqFoJo9/OJtunWoGTKi6jeJuxXs6Odv
         8CpPu1zIjisre94VSvncXX+lWAteG98gS7nGXj5FaKF026M56dwBbzZBV23xOKeO9R5v
         L5xcD5FS9yyldbh8hfQc7nPxlh+3kavhtvbJTx4MfiucaHEIYEYlBneFAXWyOL/3bc/9
         bdomtPdNZme/rRrRBXmOUGpxRfBm8Y+QaSx9M5e9y/RU3d/9XnMqOt8uHorBidlWPgPc
         ahQA==
X-Forwarded-Encrypted: i=1; AJvYcCWh8jQAy7WzXocQ/9YXna+ilTU+MC92NKEEIVW5MeZkPHoC4ukESZGI9T8EZTcxsO/OHF8JPwM1Ynk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzDtNOuPBhJpxVxKgHZDP8mcZtOpGM7+FGff1tyRX0s1z1FlkL/
	usNNzKV2At94plDs3/gsITvRAJSrPBoXoeKmRKDqn/AYPE6KA4kFzgD5YzImmWzT9Lm/NOBhpYy
	okO4=
X-Gm-Gg: ASbGncv0dHQKlJaA5IMsTPhvBWRrBc5gTZRuof1j8Q6vdNkYCP18/viC4g252CWa/t9
	p0CaVd3y9KcV6H9H0H9dw6+Wt52UkyaErqJQtFZ6gswRMu1M1WDQ0D2vDs3ZvHK0+SW7/RSRUty
	wj/SISmFqBZZN1bLzr8a2rrPH7gwoE2uu2bEkSgqbO2vDmT/fgjOCpk63Ce/tTdNK49Ck+aS3f8
	J+AkE1Yrp1D+PQjs1gLqdR8pyUXFrOS/hpMqk+st95R3AwOiaM31OHSuXmGBlhs1YAn/so6nm/x
	cAz5V0baVgUHUnTLGdnEHdnY5mWv/CpM2X8tF/1jH+uTZCLAUkXDSr8LD4L+TbImNvPpBNKx5VH
	1NC4TYemnH2i7SrA8GsVmfKYPEeEES4Af3H24tESc3YqBfVQdeBHQweX/hA==
X-Google-Smtp-Source: AGHT+IEjsJ+KBVfdKNPMsL4Pze27kRhtSaIe1JeEUpJAUbaxPCt+l3Y42ESR3VUWUOHOj5RiLVypHg==
X-Received: by 2002:a05:6214:29eb:b0:704:8e16:51e9 with SMTP id 6a1803df08f44-707205ef5fbmr20813966d6.45.1753444592486;
        Fri, 25 Jul 2025 04:56:32 -0700 (PDT)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com. [209.85.219.52])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-7070faee216sm25858446d6.18.2025.07.25.04.56.32
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 04:56:32 -0700 (PDT)
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-6fac7147cb8so27112876d6.1
        for <linux-phy@lists.infradead.org>; Fri, 25 Jul 2025 04:56:32 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVpQyFMiVg1M3aFILPg3TZt4JuUM1i/ye0we0aeImyLqSou8YIUm7nvmFKuzEZ5rblII8ISEsMBflk=@lists.infradead.org
X-Received: by 2002:a05:6102:6891:b0:4dd:b82d:e0de with SMTP id
 ada2fe7eead31-4fa3ff44195mr316348137.17.1753440787376; Fri, 25 Jul 2025
 03:53:07 -0700 (PDT)
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-20-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-20-angelogioacchino.delregno@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Fri, 25 Jul 2025 18:52:31 +0800
X-Gmail-Original-Message-ID: <CAC=S1nguRWyG3ubmSFE95_zgsCjjq4dxGWr5ErV9-Yu2+mTmpw@mail.gmail.com>
X-Gm-Features: Ac12FXzhNEGCOc6TL2wVpoG5kEXhC599YdNWu941VvXlO0dL7_W9Jc4if8EyMHA
Message-ID: <CAC=S1nguRWyG3ubmSFE95_zgsCjjq4dxGWr5ErV9-Yu2+mTmpw@mail.gmail.com>
Subject: Re: [PATCH 19/38] arm64: dts: mediatek: mt6795: Add mediatek,infracfg
 to iommu node
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, 
	daniel.lezcano@linaro.org, mwalle@kernel.org, devicetree@vger.kernel.org, 
	linus.walleij@linaro.org, linux-remoteproc@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	olivia.wen@mediatek.com, shane.chien@mediatek.com, linux-gpio@vger.kernel.org, 
	linux-phy@lists.infradead.org, airlied@gmail.com, simona@ffwll.ch, 
	herbert@gondor.apana.org.au, jassisinghbrar@gmail.com, jiaxin.yu@mediatek.com, 
	andy.teng@mediatek.com, chunfeng.yun@mediatek.com, jieyy.yang@mediatek.com, 
	chunkuang.hu@kernel.org, conor+dt@kernel.org, jitao.shi@mediatek.com, 
	p.zabel@pengutronix.de, arnd@arndb.de, kishon@kernel.org, 
	kyrie.wu@mediatek.corp-partner.google.com, maarten.lankhorst@linux.intel.com, 
	tinghan.shen@mediatek.com, mripard@kernel.org, ck.hu@mediatek.com, 
	broonie@kernel.org, eugen.hristev@linaro.org, houlong.wei@mediatek.com, 
	matthias.bgg@gmail.com, tglx@linutronix.de, mchehab@kernel.org, 
	linux-arm-kernel@lists.infradead.org, granquet@baylibre.com, 
	sam.shih@mediatek.com, mathieu.poirier@linaro.org, fparent@baylibre.com, 
	andersson@kernel.org, sean.wang@kernel.org, linux-sound@vger.kernel.org, 
	lgirdwood@gmail.com, vkoul@kernel.org, linux-crypto@vger.kernel.org, 
	tzimmermann@suse.de, atenart@kernel.org, krzk+dt@kernel.org, 
	linux-media@vger.kernel.org, davem@davemloft.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_045633_864670_6A6B7274 
X-CRM114-Status: GOOD (  12.00  )
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

T24gVGh1LCBKdWwgMjQsIDIwMjUgYXQgNTo0OeKAr1BNIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJl
Z25vCjxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4g
VGhlICJNNFUiIElPTU1VIHJlcXVpcmVzIGEgaGFuZGxlIHRvIHRoZSBpbmZyYWNmZyB0byBzd2l0
Y2ggdG8KPiB0aGUgNGdiL3BhZSBhZGRyZXNzaW5nIG1vZGU6IGFkZCBpdC4KPgo+IFNpZ25lZC1v
ZmYtYnk6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJl
Z25vQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1ieTogRmVpIFNoYW8gPGZzaGFvQGNocm9taXVt
Lm9yZz4KCj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ2Nzk1LmR0c2kg
fCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4KPiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDY3OTUuZHRzaSBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvbWVkaWF0ZWsvbXQ2Nzk1LmR0c2kKPiBpbmRleCBlNWUyNjlhNjYwYjEuLjM4ZjY1YWFk
MjgwMiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210Njc5NS5k
dHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDY3OTUuZHRzaQo+IEBA
IC00MjcsNiArNDI3LDcgQEAgaW9tbXU6IGlvbW11QDEwMjA1MDAwIHsKPiAgICAgICAgICAgICAg
ICAgICAgICAgICBjbG9ja3MgPSA8JmluZnJhY2ZnIENMS19JTkZSQV9NNFU+Owo+ICAgICAgICAg
ICAgICAgICAgICAgICAgIGNsb2NrLW5hbWVzID0gImJjbGsiOwo+ICAgICAgICAgICAgICAgICAg
ICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSAxNDYgSVJRX1RZUEVfTEVWRUxfTE9XPjsKPiAr
ICAgICAgICAgICAgICAgICAgICAgICBtZWRpYXRlayxpbmZyYWNmZyA9IDwmaW5mcmFjZmc+Owo+
ICAgICAgICAgICAgICAgICAgICAgICAgIG1lZGlhdGVrLGxhcmJzID0gPCZsYXJiMCAmbGFyYjEg
JmxhcmIyICZsYXJiMz47Cj4gICAgICAgICAgICAgICAgICAgICAgICAgcG93ZXItZG9tYWlucyA9
IDwmc3BtIE1UNjc5NV9QT1dFUl9ET01BSU5fTU0+Owo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICNpb21tdS1jZWxscyA9IDwxPjsKPiAtLQo+IDIuNTAuMQo+Cj4KCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
