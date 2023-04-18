Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5965CC6FD18
	for <linux-phy@archiver.kernel.org>; Tue, 18 Apr 2023 11:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ei2Cf7JxVeGOS/YSbsVUY68foem2jnHk0zOoXnuajGI=; b=dbRz3fwhai+aD/
	EXJvHvXHBSB3zKKkI7sTmPmMdGD9ES1tp1bU92KgDVvrw6PKFnpRoC39l9InyvzeF0+jGmXZMtkX+
	Uycdh1x/vCuHz+Yw8h99cRud3c2z5HK1GzFrz3iFwttfdMfzevwYsiJRPbHm+j7uG3Hw8c53499uF
	boYLPz8gokITqbeo1yDiQIskCBZ4VxBVrMXf1whXqvloAlujOcvZGSPBGWCP0Womi6daRoAsBSUVQ
	qdOL47eMee3txMIShcn7xo2lyDu1ZHJMLXy1FXwdzIUXu7zEmuHAXby7KKlxMJoQ631mefep6UiMy
	YWWYsRDHLhWZd6FP3p9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pojx1-0022NP-03;
	Tue, 18 Apr 2023 11:56:47 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pojww-0022MD-2c;
	Tue, 18 Apr 2023 11:56:43 +0000
Received: by mail-wm1-x32d.google.com with SMTP id n43-20020a05600c502b00b003f17466a9c1so2900993wmr.2;
        Tue, 18 Apr 2023 04:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681819000; x=1684411000;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T9oSeZGJaO3G9BEkK1S2Mgd4sINffRf+WgKyKKehfmI=;
        b=EXHJXEGXy79uUSSwalxffycq7KWxOyLGcigWWbEvbe4A/tHuCrJx3bi9fyVr30xbvt
         2ohr0yYvurqh89V5/02Q1Lxqa1lcYhqwJT9gY2OkB9rEfs9TqLQHFDOXD5xueuIZKLIi
         0enhdobg6t6Pn+69lbxkw5PDTNIKBWJC2ntey0mtiKfSW2kKhayCaxskZc6WC/vPvrhO
         bC1syUexCP1omtV1npNjjcM6CzulU+hIVBIJEb6WXUrn9tqFidigErpnMAl0gPt0EZ8e
         vjD7hAefkxeTGZK7t8fEssZ0/C8eTQFa8cG8kZc3cSanJT3q9kEr34rQ5C6FT2zXaJ4j
         khRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681819000; x=1684411000;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T9oSeZGJaO3G9BEkK1S2Mgd4sINffRf+WgKyKKehfmI=;
        b=hpxrdodoBm/ALHsJ+9GFXQX1teRfv/z2kjLF1Se4PrV55gjmLRJARIn9bD11LjQ0YM
         6QD2rU9NdQlYuohTnTQe24iUqAgEMC5VDvPtZGXd2pfuZkWmzkrsS6krKlXAZDCgxGj8
         PahgWUATZ7273Wl1cRNbIpz35jZE7OneDuQjSKuFo8UbbdKc5LmD+YFVscFCQTs3rMEi
         SB7zk3SbQm8wfVUgmUYcJGjGxBhHsYtbeyeS/lpK/f9aTqsh2LMyQHSfoNMWZTifK6y7
         YDWD9RVZqYv8Vg5ROZ1Su0t3a5ZvEsYCfVqSFuIKmHOQ5v9Cbp4p52zBnkXnFyuK5juj
         79kQ==
X-Gm-Message-State: AAQBX9dK/Nul4YvTiduLPyYLKW5GU6ERRuyJIiN9/xMl4d46SllWBR+q
	MBspjpXZqbFvLUtNDJ7sDR7F5uGkMY5ZYQ==
X-Google-Smtp-Source: AKy350bbx0bJ/4L8a44U/aCtvaM2RV9kN1tMXWOPsHUuu0HTywAsjz+gzSejmnkzvEnhtHbDS3+jEw==
X-Received: by 2002:a05:600c:b47:b0:3f1:6cdf:93ac with SMTP id k7-20020a05600c0b4700b003f16cdf93acmr7012569wmr.17.1681819000111;
        Tue, 18 Apr 2023 04:56:40 -0700 (PDT)
Received: from [192.168.2.177] ([207.188.167.132])
        by smtp.gmail.com with ESMTPSA id v3-20020a1cf703000000b003f04646838esm14855802wmh.39.2023.04.18.04.56.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Apr 2023 04:56:39 -0700 (PDT)
Message-ID: <1e55328e-aaa2-78e3-ddc8-c2717f6283f5@gmail.com>
Date: Tue, 18 Apr 2023 13:56:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 01/27] dt-bindings: pwm: Add compatible for MediaTek
 MT6795
Content-Language: en-US
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 jassisinghbrar@gmail.com, chunfeng.yun@mediatek.com, vkoul@kernel.org,
 kishon@kernel.org, thierry.reding@gmail.com, chunkuang.hu@kernel.org,
 ck.hu@mediatek.com, jitao.shi@mediatek.com, xinlei.lee@mediatek.com,
 houlong.wei@mediatek.com, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-pwm@vger.kernel.org,
 kernel@collabora.com, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
 <20230412112739.160376-2-angelogioacchino.delregno@collabora.com>
 <20230414054345.ip3ug53ivr3elbpy@pengutronix.de>
From: Matthias Brugger <matthias.bgg@gmail.com>
In-Reply-To: <20230414054345.ip3ug53ivr3elbpy@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_045642_844608_6F6CC647 
X-CRM114-Status: GOOD (  11.34  )
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

CgpPbiAxNC8wNC8yMDIzIDA3OjQzLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90ZToKPiBIZWxsbywK
PiAKPiBPbiBXZWQsIEFwciAxMiwgMjAyMyBhdCAwMToyNzoxM1BNICswMjAwLCBBbmdlbG9HaW9h
Y2NoaW5vIERlbCBSZWdubyB3cm90ZToKPj4gQWRkIGEgY29tcGF0aWJsZSBzdHJpbmcgZm9yIE1l
ZGlhVGVrIEhlbGlvIFgxMCBNVDY3OTUncyBkaXNwbGF5IFBXTQo+PiBibG9jazogdGhpcyBpcyB0
aGUgc2FtZSBhcyBNVDgxNzMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEFuZ2Vsb0dpb2FjY2hpbm8g
RGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+Cj4gCj4g
QWNrZWQtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXgu
ZGU+Cj4gCj4gSSBhc3N1bWUgdGhpcyBwYXRjaCB3aWxsIGdvIGluIHRvZ2V0aGVyIHdpdGggdGhl
IG90aGVyIHBhdGNoZXMgaW4gdGhpcwo+IHNlcmllcyB2aWEgYW4gQVJNIHRyZWU/IChJLmUuIG5v
dCB2aWEgcHdtLikKPiAKClRoYXQncyB0b3RhbGx5IGZpbmUsIEknbGwgdGFrZSB0aGlzIHBhdGNo
IHRocm91Z2ggbXkgdHJlZSBvbmNlIGV2ZXJ5dGhpbmcgaXMgcmVhZHkuCgpSZWdhcmRzLApNYXR0
aGlhcwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
