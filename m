Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA53AC87FCF
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 10:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vpkqH0XGtjThnMSTsrEAT+tCJUhTJFsETziISL9GIUo=; b=Ujx2RU3v0LDz5M
	v/jIdq7aSksUcAm7LNL1znPH5ztstqqRvVgdQxHBnA7fafqoviN2+zS11YnwKqhxjhLz8jMZRO3lL
	YhLS1Ol/JYfzf5O6oYfklAd5UE2bIN9YogEIUCfnY+7Bc5deHPRaYV5yoeo2RG1e/gHyy8S+oCSB1
	lertwY14fRdv4XB3MqDOkVTGFRk4a9h9O1g6wARrwdcGkVO5GshMHNXH+/F6Jp7/QCyrpJs4RbbMl
	8SeaGziYoKoFbO8JZsUpUltdvg8fCKGovzX61OFZ6OvmTTCj3GQ75g+xz1ejj6t45S68EuMfH2FPi
	1YC3p8DCeYx3EO6dk1Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uesst-00000007ARi-21Pk;
	Thu, 24 Jul 2025 10:09:07 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ues43-000000070Xr-0zDF
	for linux-phy@lists.infradead.org;
	Thu, 24 Jul 2025 09:16:37 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-55a25635385so843995e87.3
        for <linux-phy@lists.infradead.org>; Thu, 24 Jul 2025 02:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753348593; x=1753953393; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1EGUBO7UhvbornJQ/pvHFRfx3IzKAnj1mgdzrBixYxY=;
        b=CFAK04A5lac39+h1Se1wGHznF5gSZkI0ly9Qle3XWbm1IDVKq2wIoATb/iun2stirB
         rOhPhmNDdwkm8XfMvZ0EX3756s4PE9HARQpJfJsY7UIk6Oal5barFzrU+deLb/aShhSk
         +3eIEjigwyPr2nfZAvyNkN0PE2yEZU1sR6oiQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753348593; x=1753953393;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1EGUBO7UhvbornJQ/pvHFRfx3IzKAnj1mgdzrBixYxY=;
        b=FaP/q4EYiUCEajQ5z500raLAKjd0BtPyLJ5jPiImmENXQUsx00lC1E5z7yCGtPwpXF
         ggERog6WMBaRQ0tjhcZwogGAsTXbqGX/cLd4MEd737UWvn6dPMfzhGVIH1gLf6fZ3oC0
         0eIgUYDgyFBd6aNDORVv8GzhztJ9aMvaHGXr5gO8XePjGOGi2vCwzs/t//OAtFMDKSCE
         d2l2rVvW0HWqvfz1QYeMUzC7nBuv5ebSqxsqW0jdpBpwpDDQI8IRHl3RrxUnDSruu0vF
         K8teAe0ScHv1q8HzPrXC8LJqVIWD3BTARqdrEDSWt/DPxGpIVtd+PPqKz9YCUx6icHXV
         sUTA==
X-Forwarded-Encrypted: i=1; AJvYcCX0aZpiwDkZt4J3ocAx9p0z4y1dW7vcUrzlQUdX5Y7FnyQ5dZyJr59D6zGHASUyQcRYLuZhSlXUE34=@lists.infradead.org
X-Gm-Message-State: AOJu0YzQHkVy5F/O5QjwXKp49FtHRpy74+mBAzGD4bmS+GX50EmYl63Q
	IAobS4w0eLtsxR2dtVeWBS9Gnk+tZ3Xj4I2079mSa90j5E3G/hdGIjO82OuLUFrboMyK1gH8dfP
	hOYFsyNlWdIqNmcWAdhVumtzW9Fe2q6pKilpapfyp
X-Gm-Gg: ASbGncvIIgpkcl6ftcCvyCRIeJytlhahs9OcpZ6kUwd9PhxIiYIQuW8Lo6+MAQctrH8
	CvfJWWP8cSVrPHcXQ5d+g2cIuVoN+a+2RbbvY/BdLOe2yS3Jt47Zz3fp2MBYr+4tICjicio8XcE
	wCzZjwR6YylHGAghyI85BDUPSDd+KHLa6aVehT3m6PcpYMJvLDEL7E7/Ds+rJa5fA8BaiVTpa6K
	JHc/+kcsm/faToj8UHQuLerTr1FvI2l+7Y=
X-Google-Smtp-Source: AGHT+IFazo0IJsf/W4w5gkkS9NANKkfwPsnIOoIE7mqPwq0TufYlLOotKobMGK5+6Hu6w3hpGvP3VOsw43jDOtB0xs8=
X-Received: by 2002:a05:6512:3ba6:b0:553:6583:8e6 with SMTP id
 2adb3069b0e04-55a5136bd25mr1849929e87.15.1753348592903; Thu, 24 Jul 2025
 02:16:32 -0700 (PDT)
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-2-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-2-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 24 Jul 2025 17:16:21 +0800
X-Gm-Features: Ac12FXzsHRsmJR2EJuPhkIesX-COS28ovNftNstiUszbMRhNBb7-HPz6xQpMdw4
Message-ID: <CAGXv+5HTdK8aiUYdtNVhWAvsSNfMPgK6iCqe-Jsb-OBqQBWsBg@mail.gmail.com>
Subject: Re: [PATCH 01/38] dt-bindings: display: mediatek: dpi: Allow
 specifying resets
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, 
	herbert@gondor.apana.org.au, davem@davemloft.net, krzk+dt@kernel.org, 
	conor+dt@kernel.org, chunkuang.hu@kernel.org, p.zabel@pengutronix.de, 
	airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, jassisinghbrar@gmail.com, 
	mchehab@kernel.org, matthias.bgg@gmail.com, chunfeng.yun@mediatek.com, 
	vkoul@kernel.org, kishon@kernel.org, sean.wang@kernel.org, 
	linus.walleij@linaro.org, lgirdwood@gmail.com, broonie@kernel.org, 
	andersson@kernel.org, mathieu.poirier@linaro.org, daniel.lezcano@linaro.org, 
	tglx@linutronix.de, atenart@kernel.org, jitao.shi@mediatek.com, 
	ck.hu@mediatek.com, houlong.wei@mediatek.com, 
	kyrie.wu@mediatek.corp-partner.google.com, andy.teng@mediatek.com, 
	tinghan.shen@mediatek.com, jiaxin.yu@mediatek.com, shane.chien@mediatek.com, 
	olivia.wen@mediatek.com, granquet@baylibre.com, eugen.hristev@linaro.org, 
	arnd@arndb.de, sam.shih@mediatek.com, jieyy.yang@mediatek.com, 
	frank-w@public-files.de, mwalle@kernel.org, fparent@baylibre.com, 
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, linux-sound@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_021635_305819_80BCCDA4 
X-CRM114-Status: GOOD (  16.85  )
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

T24gVGh1LCBKdWwgMjQsIDIwMjUgYXQgNDozOeKAr1BNIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJl
Z25vCjxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4g
RXZlbiB0aG91Z2ggdGhlIERQSSBJUCBoYXMgYSByZXNldCBiaXQgb24gYWxsIE1lZGlhVGVrIFNv
Q3MsIGl0Cj4gaXMgb3B0aW9uYWwsIGFuZCBoYXMgYWx3YXlzIGJlZW4gdW51c2VkIHVudGlsIE1U
ODE5NTsgc3BlY2lmaWNhbGx5Ogo+IG9uIG9sZGVyIFNvQ3MsIGxpa2UgTVQ4MTczLCB0aGUgcmVz
ZXQgYml0IGlzIGxvY2F0ZWQgaW4gTU1TWVMsIGFuZAo+IG9uIG5ld2VyIFNvQ3MsIGxpa2UgTVQ4
MTk1LCBpdCBpcyBsb2NhdGVkIGluIFZET1NZUy4KPgo+IEZvciB0aGlzIHJlYXNvbiwgYWxsb3cg
c3BlY2lmeWluZyB0aGUgcmVzZXRzIGFuZCByZXNldC1uYW1lcyBvbgo+IGFsbCBNZWRpYVRlayBT
b0NzLgo+Cj4gVGhvc2UgcHJvcGVydGllcyBhcmUgb3B0aW9uYWwgYmVjYXVzZSB0aGVyZSBhcmUg
bXVsdGlwbGUgd2F5cyB0bwo+IHJlc2V0IHRoaXMgSVAgYW5kIHRoZSByZXNldCBsaW5lcyBpbiBN
TS9WRE8gYXJlIHVzZWQgb25seSBpZiB0aGUKPiBJUCBjYW5ub3QgcGVyZm9ybSB3YXJtLXJlc2V0
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gPGFuZ2Vsb2dp
b2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KPiAtLS0KPiAgLi4uL2RldmljZXRyZWUv
YmluZGluZ3MvZGlzcGxheS9tZWRpYXRlay9tZWRpYXRlayxkcGkueWFtbCB8IDcgKysrKysrKwo+
ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbWVkaWF0ZWsvbWVkaWF0ZWssZHBp
LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9tZWRpYXRl
ay9tZWRpYXRlayxkcGkueWFtbAo+IGluZGV4IGI2NTlkNzkzOTNhOC4uZWI0ZjI3NmU4ZGM0IDEw
MDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21l
ZGlhdGVrL21lZGlhdGVrLGRwaS55YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2Rpc3BsYXkvbWVkaWF0ZWsvbWVkaWF0ZWssZHBpLnlhbWwKPiBAQCAtMTAyLDYg
KzEwMiwxMyBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgICAtIHBvcnRAMAo+ICAgICAgICAtIHBvcnRA
MQo+Cj4gKyAgcmVzZXRzOgo+ICsgICAgbWF4SXRlbXM6IDEKPiArCj4gKyAgcmVzZXQtbmFtZXM6
Cj4gKyAgICBpdGVtczoKPiArICAgICAgLSBjb25zdDogZHBpCj4gKwoKRG8gd2UgcmVhbGx5IG5l
ZWQgdGhlIG5hbWUgaWYgdGhlcmUgaXMgb25seSBvbmUgdGhvdWdoPwoKPiAgcmVxdWlyZWQ6Cj4g
ICAgLSBjb21wYXRpYmxlCj4gICAgLSByZWcKPiAtLQo+IDIuNTAuMQo+CgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
