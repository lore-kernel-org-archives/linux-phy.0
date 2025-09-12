Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31B72CAC582
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 14:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IraflEkMim2XpgTPgFtMdCeMC4g0qADYBvmOxY+fKg8=; b=Fh/XKezLEfZN/t
	J3nkE6/pkXIJWCAmVVqvdu3fnDBfkuduQft9uHit2/R5W5BOr+eAtWiFGz1Y1WPtLo9DcbNfl3bTy
	jzAKIqYoxqMYA2fz6pC1ELP3mbm6+zTdVJZiqD6SjTBpx0r4Cg1Xbpnyhbt2sSx85cAhPEuWS+a9u
	/QLYK4D63QfyhOtCw5Oj5otWOl5cIaUuD3M0ikeKmAxHgNqPaGAp3mAtPg3CI++PujfRvLkjcVQSd
	Ovp9tbVmiDwHZj3YPaUHQFPPQu6krsZNM8E6EZ+Z6RpYclyCALbepToYcUcuTYLg28ewL94DM6BmQ
	i5QL+DecwZu0PuTSGufw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux4NI-00000009j5H-3uAK;
	Fri, 12 Sep 2025 14:03:40 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux4NF-00000009j1h-2ghR
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 14:03:38 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-45dfb6cadf3so17659755e9.2
        for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 07:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757685816; x=1758290616; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=/awESVZkJ9K+JfRYd9Rjr/yLS5bHXWrAEyFkBSavtRk=;
        b=HiMXrsGZX0kUTCU3ZX8C7n5w48Vcf+CNkkmOk9nEsPLk/LAmZCJEp3cHVfSreVDScI
         JhRO0Obw2QPhJ0e8UkJYSHvdfh5KsxJDshLQB8GODTqOSGfm9ykpXAH9Nl0gRl3G5icL
         vhu6eTeMP4ShBfXbV2cB/HgC1lmpx8C9vOn7/OtiiYorH5zZrmH14s2XYliqfD4YDuOU
         O88wTSo8q/HyT99UUclN1n6TspJXJMymiaDO8N69oZBOx/PKhyv1MqFyI8raYwXxZVqf
         GqRyyPabTYGfcehTcKDcTB5pGLd6sgCGQGjpuCwsCA3me70VdTohqyV+oAd7WXqfvTPB
         06rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757685816; x=1758290616;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/awESVZkJ9K+JfRYd9Rjr/yLS5bHXWrAEyFkBSavtRk=;
        b=DZ1Ojo6RHRU5e7O56gw6xknH18C1gaPjgiaDLqJoRtjc1zlEEFLPPZzRo7892jTjm2
         dRCU5GgDe8ZMw/u8FxGJryc6C/rVShWc1T9sTcQ2DtQ3wnyFHV6v99jGgtwxCk+q+kdW
         teHmRUVI9P0zrtZ/4EifMA6iOFmNRUF9fruCEetlU66kI6hA3dmPV5hEH3ka+QxLMAsf
         yc1YdJBXgzq04vaEcg+QHqw5KySqd5uhXWOAEFdMp3JKtftrEE82cCxlmiUcj5PGG6Vm
         7LZXCOAtq7Ik63wok6++T7+XWassnqMWVwkd08z0IwId5xn8PNy7p0e+iSo4wE3qdjjU
         SQzw==
X-Forwarded-Encrypted: i=1; AJvYcCUiqRGWvjExn2pJBCL/aWMUfYGpWWTsExgsP/5YTBjXDQVRwsVtnI+CQvYj8aCz7/o/OwQ30iMPtQo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx0jBpEuCSkCLzR4xi1kn6Hd3wcgh9+/W55z7AxiHtUbiPZy12F
	ZmD6m4Lqpo6X+gkyNCQ8GHv2MYjeAY9jRlM1xnTm0QdnULKGIwmRLbQV
X-Gm-Gg: ASbGncv+4WuDHOGiJboeXIr35duL4aCm/Ad2bBUfTDHyqKUiBGSDCxH8TXneJl39w39
	Rf3g3zVFW5gox1JGPr4GV8PZyuZr7UcZlrWO42+zq3Qn1mflq7eZ2SsIGWu8sbfN3ZcNd8kvbof
	pFbOG75QHTUUndHwrwRePLRO72DQn0w9KTnK4AqBmSUIoh/9GLQAmFkk+zgW2MtPNpbR0BatJf4
	NAYIEBIwhZXuzHkcwFMO0BcoDSmL8Zt7uoY48F9ETVOBRo0qKnUHphFJJv/TvlcZL2BbTW+96ru
	51+3HvYJv6U26/7TJNanPVWkzD5NcTcDLKdTtrdRk7q2S0e+PsZC519gGi2LwWUzA7sxYRyIA6n
	m50YuCe4v5fardK+tCe4LogKkdR2C/uBrYHNp2wZ6DA==
X-Google-Smtp-Source: AGHT+IFrFziaROE6t7OvfnHw1fSxmStjyRsw0iDsiUclaiLc+LNP4gi88MN0nbdrnjXQvf8i78gTdw==
X-Received: by 2002:a7b:cd0b:0:b0:45d:dbf4:8880 with SMTP id 5b1f17b1804b1-45f211efda6mr20357825e9.27.1757685815284;
        Fri, 12 Sep 2025 07:03:35 -0700 (PDT)
Received: from [192.168.2.177] ([91.116.220.47])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e01832af1sm35682985e9.3.2025.09.12.07.03.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 07:03:34 -0700 (PDT)
Message-ID: <0c088460-da7e-4443-92e3-23f160415ce8@gmail.com>
Date: Fri, 12 Sep 2025 14:16:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 17/38] arm64: dts: mediatek: mt6797: Fix pinctrl node
 names
To: Fei Shao <fshao@chromium.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org,
 daniel.lezcano@linaro.org, mwalle@kernel.org, devicetree@vger.kernel.org,
 linus.walleij@linaro.org, linux-remoteproc@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 olivia.wen@mediatek.com, shane.chien@mediatek.com,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 airlied@gmail.com, simona@ffwll.ch, herbert@gondor.apana.org.au,
 jassisinghbrar@gmail.com, jiaxin.yu@mediatek.com, andy.teng@mediatek.com,
 chunfeng.yun@mediatek.com, jieyy.yang@mediatek.com, chunkuang.hu@kernel.org,
 conor+dt@kernel.org, jitao.shi@mediatek.com, p.zabel@pengutronix.de,
 arnd@arndb.de, kishon@kernel.org, kyrie.wu@mediatek.corp-partner.google.com,
 maarten.lankhorst@linux.intel.com, tinghan.shen@mediatek.com,
 mripard@kernel.org, ck.hu@mediatek.com, broonie@kernel.org,
 eugen.hristev@linaro.org, houlong.wei@mediatek.com, tglx@linutronix.de,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 granquet@baylibre.com, sam.shih@mediatek.com, mathieu.poirier@linaro.org,
 fparent@baylibre.com, andersson@kernel.org, sean.wang@kernel.org,
 linux-sound@vger.kernel.org, lgirdwood@gmail.com, vkoul@kernel.org,
 linux-crypto@vger.kernel.org, tzimmermann@suse.de, atenart@kernel.org,
 krzk+dt@kernel.org, linux-media@vger.kernel.org, davem@davemloft.net
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
 <20250724083914.61351-18-angelogioacchino.delregno@collabora.com>
 <CAC=S1nh5bF6kZe7TFA_EGPGt8Xp_rfuc-rkeXgjRCU=QEtZQiw@mail.gmail.com>
Content-Language: en-US, ca-ES, es-ES
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; keydata=
 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
In-Reply-To: <CAC=S1nh5bF6kZe7TFA_EGPGt8Xp_rfuc-rkeXgjRCU=QEtZQiw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_070337_733529_9685C062 
X-CRM114-Status: UNSURE (   9.91  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CgpPbiAyNS8wNy8yMDI1IDEyOjU2LCBGZWkgU2hhbyB3cm90ZToKPiBPbiBUaHUsIEp1bCAyNCwg
MjAyNSBhdCA1OjQ44oCvUE0gQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8KPiA8YW5nZWxvZ2lv
YWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tPiB3cm90ZToKPj4KPj4gQ2hhbmdlIHRoZSBw
aW5jdHJsIG5vZGUgbmFtZXMgdG8gYWRoZXJlIHRvIHRoZSBiaW5kaW5nOiB0aGUgbWFpbgo+PiBu
b2RlcyBhcmUgbm93IG5hbWVkIGxpa2UgInVhcnQwLXBpbnMiIGFuZCB0aGUgY2hpbGRyZW4gInBp
bnMtYnVzIi4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8g
PGFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KPiAKPiBSZXZpZXdlZC1i
eTogRmVpIFNoYW8gPGZzaGFvQGNocm9taXVtLm9yZz4KPiAKCkFwcGxpZWQsIHRoYW5rcwoKPj4g
LS0tCj4+ICAgYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDY3OTcuZHRzaSB8IDQwICsr
KysrKysrKysrKy0tLS0tLS0tLS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25z
KCspLCAyMCBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvbWVkaWF0ZWsvbXQ2Nzk3LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210
Njc5Ny5kdHNpCj4+IGluZGV4IDBlOWQxMWI0NTg1Yi4uYmU0MDE2MTdkZmQ4IDEwMDY0NAo+PiAt
LS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210Njc5Ny5kdHNpCj4+ICsrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ2Nzk3LmR0c2kKPj4gQEAgLTEzNSw3MSArMTM1
LDcxIEBAIHBpbzogcGluY3RybEAxMDAwNTAwMCB7Cj4+ICAgICAgICAgICAgICAgICAgZ3Bpby1j
b250cm9sbGVyOwo+PiAgICAgICAgICAgICAgICAgICNncGlvLWNlbGxzID0gPDI+Owo+Pgo+PiAt
ICAgICAgICAgICAgICAgdWFydDBfcGluc19hOiB1YXJ0MCB7Cj4+IC0gICAgICAgICAgICAgICAg
ICAgICAgIHBpbnMwIHsKPj4gKyAgICAgICAgICAgICAgIHVhcnQwX3BpbnNfYTogdWFydDAtcGlu
cyB7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIHBpbnMtYnVzIHsKPj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgcGlubXV4ID0gPE1UNjc5N19HUElPMjM0X19GVU5DX1VUWEQw
PiwKPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPE1UNjc5N19H
UElPMjM1X19GVU5DX1VSWEQwPjsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4+ICAg
ICAgICAgICAgICAgICAgfTsKPj4KPj4gLSAgICAgICAgICAgICAgIHVhcnQxX3BpbnNfYTogdWFy
dDEgewo+PiAtICAgICAgICAgICAgICAgICAgICAgICBwaW5zMSB7Cj4+ICsgICAgICAgICAgICAg
ICB1YXJ0MV9waW5zX2E6IHVhcnQxLXBpbnMgewo+PiArICAgICAgICAgICAgICAgICAgICAgICBw
aW5zLWJ1cyB7Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBpbm11eCA9IDxN
VDY3OTdfR1BJTzIzMl9fRlVOQ19VUlhEMT4sCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIDxNVDY3OTdfR1BJTzIzM19fRlVOQ19VVFhEMT47Cj4+ICAgICAgICAg
ICAgICAgICAgICAgICAgICB9Owo+PiAgICAgICAgICAgICAgICAgIH07Cj4+Cj4+IC0gICAgICAg
ICAgICAgICBpMmMwX3BpbnNfYTogaTJjMCB7Cj4+IC0gICAgICAgICAgICAgICAgICAgICAgIHBp
bnMwIHsKPj4gKyAgICAgICAgICAgICAgIGkyYzBfcGluc19hOiBpMmMwLXBpbnMgewo+PiArICAg
ICAgICAgICAgICAgICAgICAgICBwaW5zLWJ1cyB7Cj4+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHBpbm11eCA9IDxNVDY3OTdfR1BJTzM3X19GVU5DX1NDTDBfMD4sCj4+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxNVDY3OTdfR1BJTzM4X19GVU5D
X1NEQTBfMD47Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+PiAgICAgICAgICAgICAg
ICAgIH07Cj4+Cj4+IC0gICAgICAgICAgICAgICBpMmMxX3BpbnNfYTogaTJjMSB7Cj4+IC0gICAg
ICAgICAgICAgICAgICAgICAgIHBpbnMxIHsKPj4gKyAgICAgICAgICAgICAgIGkyYzFfcGluc19h
OiBpMmMxLXBpbnMgewo+PiArICAgICAgICAgICAgICAgICAgICAgICBwaW5zLWJ1cyB7Cj4+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBpbm11eCA9IDxNVDY3OTdfR1BJTzU1X19G
VU5DX1NDTDFfMD4sCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IDxNVDY3OTdfR1BJTzU2X19GVU5DX1NEQTFfMD47Cj4+ICAgICAgICAgICAgICAgICAgICAgICAg
ICB9Owo+PiAgICAgICAgICAgICAgICAgIH07Cj4+Cj4+IC0gICAgICAgICAgICAgICBpMmMyX3Bp
bnNfYTogaTJjMiB7Cj4+IC0gICAgICAgICAgICAgICAgICAgICAgIHBpbnMyIHsKPj4gKyAgICAg
ICAgICAgICAgIGkyYzJfcGluc19hOiBpMmMyLXBpbnMgewo+PiArICAgICAgICAgICAgICAgICAg
ICAgICBwaW5zLWJ1cyB7Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBpbm11
eCA9IDxNVDY3OTdfR1BJTzk2X19GVU5DX1NDTDJfMD4sCj4+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIDxNVDY3OTdfR1BJTzk1X19GVU5DX1NEQTJfMD47Cj4+ICAg
ICAgICAgICAgICAgICAgICAgICAgICB9Owo+PiAgICAgICAgICAgICAgICAgIH07Cj4+Cj4+IC0g
ICAgICAgICAgICAgICBpMmMzX3BpbnNfYTogaTJjMyB7Cj4+IC0gICAgICAgICAgICAgICAgICAg
ICAgIHBpbnMzIHsKPj4gKyAgICAgICAgICAgICAgIGkyYzNfcGluc19hOiBpMmMzLXBpbnMgewo+
PiArICAgICAgICAgICAgICAgICAgICAgICBwaW5zLWJ1cyB7Cj4+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHBpbm11eCA9IDxNVDY3OTdfR1BJTzc1X19GVU5DX1NEQTNfMD4sCj4+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxNVDY3OTdfR1BJTzc0
X19GVU5DX1NDTDNfMD47Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+PiAgICAgICAg
ICAgICAgICAgIH07Cj4+Cj4+IC0gICAgICAgICAgICAgICBpMmM0X3BpbnNfYTogaTJjNCB7Cj4+
IC0gICAgICAgICAgICAgICAgICAgICAgIHBpbnM0IHsKPj4gKyAgICAgICAgICAgICAgIGkyYzRf
cGluc19hOiBpMmM0LXBpbnMgewo+PiArICAgICAgICAgICAgICAgICAgICAgICBwaW5zLWJ1cyB7
Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBpbm11eCA9IDxNVDY3OTdfR1BJ
TzIzOF9fRlVOQ19TREE0XzA+LAo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICA8TVQ2Nzk3X0dQSU8yMzlfX0ZVTkNfU0NMNF8wPjsKPj4gICAgICAgICAgICAgICAg
ICAgICAgICAgIH07Cj4+ICAgICAgICAgICAgICAgICAgfTsKPj4KPj4gLSAgICAgICAgICAgICAg
IGkyYzVfcGluc19hOiBpMmM1IHsKPj4gLSAgICAgICAgICAgICAgICAgICAgICAgcGluczUgewo+
PiArICAgICAgICAgICAgICAgaTJjNV9waW5zX2E6IGkyYzUtcGlucyB7Cj4+ICsgICAgICAgICAg
ICAgICAgICAgICAgIHBpbnMtYnVzIHsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgcGlubXV4ID0gPE1UNjc5N19HUElPMjQwX19GVU5DX1NEQTVfMD4sCj4+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxNVDY3OTdfR1BJTzI0MV9fRlVOQ19TQ0w1
XzA+Owo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgfTsKPj4gICAgICAgICAgICAgICAgICB9
Owo+Pgo+PiAtICAgICAgICAgICAgICAgaTJjNl9waW5zX2E6IGkyYzYgewo+PiAtICAgICAgICAg
ICAgICAgICAgICAgICBwaW5zNiB7Cj4+ICsgICAgICAgICAgICAgICBpMmM2X3BpbnNfYTogaTJj
Ni1waW5zIHsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgcGlucy1idXMgewo+PiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBwaW5tdXggPSA8TVQ2Nzk3X0dQSU8xNTJfX0ZVTkNf
U0RBNl8wPiwKPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPE1U
Njc5N19HUElPMTUxX19GVU5DX1NDTDZfMD47Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICB9
Owo+PiAgICAgICAgICAgICAgICAgIH07Cj4+Cj4+IC0gICAgICAgICAgICAgICBpMmM3X3BpbnNf
YTogaTJjNyB7Cj4+IC0gICAgICAgICAgICAgICAgICAgICAgIHBpbnM3IHsKPj4gKyAgICAgICAg
ICAgICAgIGkyYzdfcGluc19hOiBpMmM3LXBpbnMgewo+PiArICAgICAgICAgICAgICAgICAgICAg
ICBwaW5zLWJ1cyB7Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBpbm11eCA9
IDxNVDY3OTdfR1BJTzE1NF9fRlVOQ19TREE3XzA+LAo+PiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICA8TVQ2Nzk3X0dQSU8xNTNfX0ZVTkNfU0NMN18wPjsKPj4gICAg
ICAgICAgICAgICAgICAgICAgICAgIH07Cj4+IC0tCj4+IDIuNTAuMQo+Pgo+PgoKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
