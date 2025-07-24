Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4129C83F1A
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 10:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XdwQ0eqKz8P+SoG+MMcSQB0dfwZCSIuW1zdkFMEw8HU=; b=f9oBF8r1WstQtj
	AyxLYe37bDC2ayQhr/WaB1MXNLCtNKd2d/FYKgaP2wiilC60N19lnIylUT6Dvz9tZOugP+bGQ6nY9
	UKVNdnhW8rMCR7ZgFauFsQmZEjHy2hR50xu58vWFZLdlsB5pgmz8OpJ9+P/ysGhathl2H7m7emVP2
	83I67/cHcMAfea2USs9P8TKG/Bxyem7mlQyiEuzuqPPYsOoLa+WhNACMjP6PHqEB6nxaTDsgzVB5N
	R2PmcA03GksbdBxLKfjLsRUN1/iiEjAvlRNhkFmat7HYsuk6tcvFBAOL6jjM4oRPfDgd3B8pLgBHL
	54k+sBMgxyX2JTys0ZGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uetY2-00000007G1Q-21OX;
	Thu, 24 Jul 2025 10:51:38 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uesHL-000000072uT-1jET
	for linux-phy@lists.infradead.org;
	Thu, 24 Jul 2025 09:30:21 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-553d52cb80dso893176e87.1
        for <linux-phy@lists.infradead.org>; Thu, 24 Jul 2025 02:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753349418; x=1753954218; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UomwMYm6V80ZuZPrz7YKXe0vLuxIpqX7vRa+Pl5FCU8=;
        b=PpYfRzD6dzoZhyzpPgIgzNrBDMh4I8CknrDOQ/OXvO8MlfbCnycPNzzkw/I24irjuy
         87fKpVpEVU8D2Wh6LwGJ2k4KX0KQDnU675gge4bhpoVJg5ToWCuKpnhaLA7c5PxeJqJJ
         pdQsxn9NtBFLvPbjb8MWvYnlCS8BFM0lfYnfw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753349418; x=1753954218;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UomwMYm6V80ZuZPrz7YKXe0vLuxIpqX7vRa+Pl5FCU8=;
        b=fJNImwQgVqP7vgI1WKAjex2j9ZIOsYCnH0h6AniCQhZ+LJdO2SPrn7nwPQI7XAELLo
         8R1zfjG6/ogUo8DMiBlGUZd4tIQIE8nWPep5dkR1h/oqVRPVJ1ALJtvQt5elgOxmQFdu
         jM7XuY13s5EMhTyneVpek8Di9kogoqTAgrqZVzPoNcp6b4OjdiAWCmQpaGvuo+fQXWrf
         bUv3cmdxD1QTxiNFOGySbHthhLQz87MI/Gnnq4mS5kme0edQotV7d1FPVypV9h0QitiE
         GtihiYbQuTGWGzLCNk3XY94TGs+eOiZIMBzH6MooKsgl/4bfLjLVVFd3g27aIy07tKhA
         H86w==
X-Forwarded-Encrypted: i=1; AJvYcCV4J1fY83p5cY8Jm93hJ87e20cbmjQmEIJtwqhYFS4HgjV0BfcyyQB/97GdkAulOtKIAnfR+6JZUKM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzhhefFaB1LHGbY0ltFDJNxUTDHJXVWL3QD2k3QxidBHyGomLn8
	jInMcmXvgf1g34Qn+6YWDItvoFk2vAfFjSJWSTAOi0mLArIzgcr9/ZGdiamEEdj29ZNxQD/utmv
	3i1qmxrOUUykmhkDnvUS9YQMgVMbl/QGfhhLAXmAx
X-Gm-Gg: ASbGncuuiww2Ig7HImfedGzw8LnJYT4WYUGg2GnWzOMDIjjhDMMfdHJs2tLkWVQJ++h
	ZNgW9i/PSds60YHBQsZ9qbUL7865/REl9TM+HCnlnGNRO1nGkeRmjGoKyxRpgwZEWG4ghgY53MW
	w0SSxdfMWJEi2fJur0gmY39ZqNp/BsGXybj3d0pOK8u4wxSkvh4Z+Z7aPzpJI6OBjxIY1BDbVDi
	uJVg3CTodiX3j6RFfXJJIGQozhMnVJ0BXw+kLv8ya5L2g==
X-Google-Smtp-Source: AGHT+IH1lXhOoKFIGLzswAaXQ/xdrKCcLg4Bs+hSUU/wAe3mRs3pt6lfFpYUUkDOjisZO/3IZcyl3MPX+Jll/FYr+/8=
X-Received: by 2002:a05:6512:2c87:b0:55a:4e67:7cdb with SMTP id
 2adb3069b0e04-55b5589a412mr400418e87.18.1753349417507; Thu, 24 Jul 2025
 02:30:17 -0700 (PDT)
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-23-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-23-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 24 Jul 2025 17:30:06 +0800
X-Gm-Features: Ac12FXxWUOXitKh1quEjvg3RMxamDaOT0bnXe7uMSX2DfmXQwXv_3I70hIvhN2Q
Message-ID: <CAGXv+5GBq5CqHAHWLMsZLU=NYVurAQZBgknsvOZoK_XhyUfxew@mail.gmail.com>
Subject: Re: [PATCH 22/38] arm64: dts: mediatek: Fix node name for SYSIRQ
 controller on all SoCs
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
X-CRM114-CacheID: sfid-20250724_023019_465714_DD3292EE 
X-CRM114-Status: GOOD (  13.44  )
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

T24gVGh1LCBKdWwgMjQsIDIwMjUgYXQgNDo0MOKAr1BNIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJl
Z25vCjxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4g
VGhlIHN5c2lycSBoYXMgImludHBvbC1jb250cm9sbGVyIiBhcyBub2RlIG5hbWUsIGJ1dCBiZWlu
ZyB0aGlzIGFuCj4gaW50ZXJydXB0IGNvbnRyb2xsZXIsIGl0IG5lZWRzIHRvIGJlIG5hbWVkICJp
bnRlcnJ1cHQtY29udHJvbGxlciIKPiBhcyBwZXIgd2hhdCB0aGUgYmluZGluZ3MgKGNvcnJlY3Rs
eSkgZXhwZWN0Lgo+Cj4gVGhpcyBjb21taXQgYnJpbmdzIG5vIGZ1bmN0aW9uYWwgY2hhbmdlcywg
YnV0IGZpeGVzIGEgZHRic19jaGVjawo+IHdhcm5pbmcuCj4KPiBTaWduZWQtb2ZmLWJ5OiBBbmdl
bG9HaW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJv
cmEuY29tPgoKUmV2aWV3ZWQtYnk6IENoZW4tWXUgVHNhaSA8d2Vuc3RAY2hyb21pdW0ub3JnPgoK
PiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDY3NTUuZHRzaSB8IDIgKy0K
PiAgYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDY3NzkuZHRzaSB8IDIgKy0KPiAgYXJj
aC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDY3OTUuZHRzaSB8IDIgKy0KPiAgYXJjaC9hcm02
NC9ib290L2R0cy9tZWRpYXRlay9tdDY3OTcuZHRzaSB8IDIgKy0KPiAgNCBmaWxlcyBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9ib290L2R0cy9tZWRpYXRlay9tdDY3NTUuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
bWVkaWF0ZWsvbXQ2NzU1LmR0c2kKPiBpbmRleCBiNTVkM2ZhYzliZDQuLjhkYTVjMGE1NmEwMiAx
MDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210Njc1NS5kdHNpCj4g
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDY3NTUuZHRzaQo+IEBAIC05OCw3
ICs5OCw3IEBAIHRpbWVyIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIChHSUNfQ1BV
X01BU0tfU0lNUExFKDgpIHwgSVJRX1RZUEVfTEVWRUxfTE9XKT47Cj4gICAgICAgICB9Owo+Cj4g
LSAgICAgICBzeXNpcnE6IGludHBvbC1jb250cm9sbGVyQDEwMjAwNjIwIHsKPiArICAgICAgIHN5
c2lycTogaW50ZXJydXB0LWNvbnRyb2xsZXJAMTAyMDA2MjAgewo+ICAgICAgICAgICAgICAgICBj
b21wYXRpYmxlID0gIm1lZGlhdGVrLG10Njc1NS1zeXNpcnEiLAo+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIm1lZGlhdGVrLG10NjU3Ny1zeXNpcnEiOwo+ICAgICAgICAgICAgICAgICBp
bnRlcnJ1cHQtY29udHJvbGxlcjsKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9t
ZWRpYXRlay9tdDY3NzkuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ2Nzc5
LmR0c2kKPiBpbmRleCA1YzU3OWU4OGU3NDkuLjcwZjMzNzU5MTZlOCAxMDA2NDQKPiAtLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210Njc3OS5kdHNpCj4gKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9tZWRpYXRlay9tdDY3NzkuZHRzaQo+IEBAIC0xMzgsNyArMTM4LDcgQEAgcHBp
X2NsdXN0ZXIxOiBpbnRlcnJ1cHQtcGFydGl0aW9uLTEgewo+Cj4gICAgICAgICAgICAgICAgIH07
Cj4KPiAtICAgICAgICAgICAgICAgc3lzaXJxOiBpbnRwb2wtY29udHJvbGxlckBjNTNhNjUwIHsK
PiArICAgICAgICAgICAgICAgc3lzaXJxOiBpbnRlcnJ1cHQtY29udHJvbGxlckBjNTNhNjUwIHsK
PiAgICAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gIm1lZGlhdGVrLG10Njc3OS1z
eXNpcnEiLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAibWVkaWF0ZWss
bXQ2NTc3LXN5c2lycSI7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgaW50ZXJydXB0LWNvbnRy
b2xsZXI7Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ2Nzk1
LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210Njc5NS5kdHNpCj4gaW5kZXgg
MzhmNjVhYWQyODAyLi41ODgzM2U1MTM1YzggMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9tZWRpYXRlay9tdDY3OTUuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVk
aWF0ZWsvbXQ2Nzk1LmR0c2kKPiBAQCAtNDA0LDcgKzQwNCw3IEBAIHB3cmFwOiBwd3JhcEAxMDAw
ZDAwMCB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAic3BpIiwgIndy
YXAiOwo+ICAgICAgICAgICAgICAgICB9Owo+Cj4gLSAgICAgICAgICAgICAgIHN5c2lycTogaW50
cG9sLWNvbnRyb2xsZXJAMTAyMDA2MjAgewo+ICsgICAgICAgICAgICAgICBzeXNpcnE6IGludGVy
cnVwdC1jb250cm9sbGVyQDEwMjAwNjIwIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICBjb21w
YXRpYmxlID0gIm1lZGlhdGVrLG10Njc5NS1zeXNpcnEiLAo+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAibWVkaWF0ZWssbXQ2NTc3LXN5c2lycSI7Cj4gICAgICAgICAgICAg
ICAgICAgICAgICAgaW50ZXJydXB0LWNvbnRyb2xsZXI7Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ2Nzk3LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21l
ZGlhdGVrL210Njc5Ny5kdHNpCj4gaW5kZXggZjJkOTNiZjZhMDU1Li44YWM5OGEzNzhmZDYgMTAw
NjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDY3OTcuZHRzaQo+ICsr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ2Nzk3LmR0c2kKPiBAQCAtMjI4LDcg
KzIyOCw3IEBAIGFwbWl4ZWRzeXM6IGFwbWl4ZWRAMTAwMGMwMDAgewo+ICAgICAgICAgICAgICAg
ICAjY2xvY2stY2VsbHMgPSA8MT47Cj4gICAgICAgICB9Owo+Cj4gLSAgICAgICBzeXNpcnE6IGlu
dHBvbC1jb250cm9sbGVyQDEwMjAwNjIwIHsKPiArICAgICAgIHN5c2lycTogaW50ZXJydXB0LWNv
bnRyb2xsZXJAMTAyMDA2MjAgewo+ICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gIm1lZGlh
dGVrLG10Njc5Ny1zeXNpcnEiLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIm1lZGlh
dGVrLG10NjU3Ny1zeXNpcnEiOwo+ICAgICAgICAgICAgICAgICBpbnRlcnJ1cHQtY29udHJvbGxl
cjsKPiAtLQo+IDIuNTAuMQo+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
