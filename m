Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05F8BC98306
	for <linux-phy@archiver.kernel.org>; Sat, 17 Jan 2026 00:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yF3WZu8eQWAojui5SI9ExaiQRkWmImm3vFwzKmG7WhM=; b=X8zrksRXPX3X5n
	+EZlcsMz4wmi7UL+OCKUNTUV7YzM1qta7bA/PQAGDekTouVFcNJbZnFOxSxaBLkGneWOIFKIOsMp8
	bFMTIy+uGT7XStQhzZz8InbxFkrTxSW7GhTzi/t0zrUJZbtrFrz0bhBNG6LZtgNZyfO00tKiyME/V
	hHBRA7P2CE6zcFfZgexZebj1Tvi81FntNoks4trzL3KUkrIlrpne99Qpy1/kD0/ZH3onBNZlbcNfI
	2zwpAFPCxz331OQtD3M9YTXm5DbDEqMjSDUh3Ufn3Shzxut/bZ7OeAVLWKbyQYTxjVgKhK1J+TcjG
	1myeGvc0htW5gUD//dUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgu6y-0000000F37T-1dhC;
	Sat, 17 Jan 2026 00:24:16 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgu6w-0000000F36t-3QgG
	for linux-phy@lists.infradead.org;
	Sat, 17 Jan 2026 00:24:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id EE6A960192
	for <linux-phy@lists.infradead.org>; Sat, 17 Jan 2026 00:24:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C827C2BC87
	for <linux-phy@lists.infradead.org>; Sat, 17 Jan 2026 00:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768609453;
	bh=U6A5F66/8wNeQzB5YOqAPM9qiLWuTBzYGYXMcYaBqBA=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=fBqqNAYi7nbIuYUiNgJZmh1dgDVoDnmqPByeNNo6Jrxv5usPZVXBqNftzLuWkuhdJ
	 FTm2LhOrFL2n9Fb69gD7wTUf8eptdKImIga8BEup3eUnssoWIR6l1HcHV8cLoChtL6
	 02wAcTOzNnBq1TmCU13cJbzBffcj7xAaXqNXA7KsGp7FTuddHl28cOkCgcvlw1nbF1
	 3E5AueiSveP62C3hwfxxKrKQY6TSdoPgO2eFw5yAmJU30G71ngdO0yRS2Cibgr5QZF
	 g8koAqI0Uu0kvmYzwEOjKslKwN0HXIfHXaAA9YnUlvDY9mYKC/rgG6YmDEk6xl1HVK
	 PNjFP/PPiZkog==
Received: by mail-dl1-f43.google.com with SMTP id a92af1059eb24-121a0bcd376so1786766c88.0
        for <linux-phy@lists.infradead.org>; Fri, 16 Jan 2026 16:24:13 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX8ZIAoDLq267FWfZIyE3ixBWym608ab99r4WhK74ETBrJ42IkMdUR4QXoowo5Cixw5Cvfq5Zsff1o=@lists.infradead.org
X-Gm-Message-State: AOJu0YwxJQ/W6vP57EUsN57wlMCRec/KiFjilS8FzVrhj0U32btTTxET
	FNZmC6Z59ellOCq+yc6t26ZAcSVVH+zismlCnWVe4n/zVZhAZ2dUpv71JFmZu7onJIE7qv6/Jvr
	SIJ6Gji/v+LoGatlzrq0t0dKRT0+qOA==
X-Received: by 2002:a05:7022:221a:b0:119:e56b:c73d with SMTP id
 a92af1059eb24-1244a6d7e40mr4659486c88.2.1768609452861; Fri, 16 Jan 2026
 16:24:12 -0800 (PST)
MIME-Version: 1.0
References: <20251217-mtk-genio-evk-hdmi-support-v2-0-a994976bb39a@collabora.com>
 <20251217-mtk-genio-evk-hdmi-support-v2-1-a994976bb39a@collabora.com>
In-Reply-To: <20251217-mtk-genio-evk-hdmi-support-v2-1-a994976bb39a@collabora.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Sat, 17 Jan 2026 00:24:00 +0000
X-Gmail-Original-Message-ID: <CAAOTY__5MX0bsuW2r4V3Chg4H=_HqNJLCLQkzL7EhYgHmp94cA@mail.gmail.com>
X-Gm-Features: AZwV_QhrVWk7cGaynTa_jr48veRrDR3eq9SxYYQUvBNFuYXcjhmjYCg6uHpV0TE
Message-ID: <CAAOTY__5MX0bsuW2r4V3Chg4H=_HqNJLCLQkzL7EhYgHmp94cA@mail.gmail.com>
Subject: Re: [PATCH v2 01/12] dt-bindings: phy: mediatek,hdmi-phy: Fix clock
 output names for MT8195
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Guillaume Ranquet <granquet@baylibre.com>, kernel@collabora.com, 
	Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
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

SGksIExvdWlzOgoKTG91aXMtQWxleGlzIEV5cmF1ZCA8bG91aXNhbGV4aXMuZXlyYXVkQGNvbGxh
Ym9yYS5jb20+IOaWvCAyMDI15bm0MTLmnIgxN+aXpemAseS4iQrkuIrljYgxMDoxOeWvq+mBk++8
mgo+Cj4gRnJvbTogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hpbm8u
ZGVscmVnbm9AY29sbGFib3JhLmNvbT4KPgo+IEZvciBhbGwgb2YgdGhlIEhETUkgUEhZcyBjb21w
YXRpYmxlIHdpdGggdGhlIG9uZSBmb3VuZCBvbiBNVDgxOTUKPiB0aGUgb3V0cHV0IGNsb2NrIGhh
cyBhIGRpZmZlcmVudCBkYXRhc2hlZXQgbmFtZSBhbmQgc3BlY2lmaWNhbGx5Cj4gaXQgaXMgY2Fs
bGVkICJoZG1pX3R4cGxsIiwgZGlmZmVyZW50bHkgZnJvbSB0aGUgb2xkZXIgSERNSSBQSFlzCj4g
d2hpY2ggb3V0cHV0IGJsb2NrIGlzIGNhbGxlZCAiaGRtaXR4X2RpZ19jdHMiLgo+Cj4gUmVwbGFj
ZSBjbG9jayBvdXRwdXQgbmFtZSBzdHJpbmcgY2hlY2sgYnkgbWF4IGl0ZW0gbnVtYmVyIG9uZSB0
byBhbGxvdwo+IHRoZSBuZXcgbmFtZSBvbiBhbGwgb2YgdGhlIEhETUkgUEhZIElQcyB0aGF0IGFy
ZSBwZXJmZWN0bHkgY29tcGF0aWJsZQo+IHdpdGggTVQ4MTk1Lgo+Cj4gW0xvdWlzLUFsZXhpcyBF
eXJhdWQ6IHNwbGl0IHBhdGNoLCBhZGRyZXNzZWQgcHJldmlvdXMgZmVlZGJhY2sgZnJvbQo+IG1h
aWxpbmcgbGlzdCwgYW5kIHJld29yZGVkIGRlc2NyaXB0aW9uXQoKQXBwbGllZCB0aGUgYmluZGlu
ZyBwYXRjaGVzIG9mIHRoaXMgc2VyaWVzIHRvIG1lZGlhdGVrLWRybS1uZXh0IFsxXSwgdGhhbmtz
LgoKWzFdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2No
dW5rdWFuZy5odS9saW51eC5naXQvbG9nLz9oPW1lZGlhdGVrLWRybS1uZXh0CgpSZWdhcmRzLApD
aHVuLUt1YW5nLgoKPgo+IEZpeGVzOiBjNzhmZTU0OGIwNjIgKCJkdC1iaW5kaW5nczogcGh5OiBt
ZWRpYXRlazogaGRtaS1waHk6IEFkZCBtdDgxOTUgY29tcGF0aWJsZSIpCj4gU2lnbmVkLW9mZi1i
eTogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9A
Y29sbGFib3JhLmNvbT4KPiBSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgKEFybSkgPHJvYmhAa2Vy
bmVsLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBMb3Vpcy1BbGV4aXMgRXlyYXVkIDxsb3Vpc2FsZXhp
cy5leXJhdWRAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BoeS9tZWRpYXRlayxoZG1pLXBoeS55YW1sIHwgMyArLS0KPiAgMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWVkaWF0ZWssaGRtaS1waHkueWFt
bCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWVkaWF0ZWssaGRtaS1w
aHkueWFtbAo+IGluZGV4IGYzYThiMGI3NDVkMTNmZmM1NWQzOTE1NzBiZmYyMDgzMGQ5MjVlZDMu
LjEwZjFkOTMyNmYxOGRiYTg1YjkyYjRjODhmNGMwZjZjZGRkYzRjMjUgMTAwNjQ0Cj4gLS0tIGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tZWRpYXRlayxoZG1pLXBoeS55
YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tZWRpYXRl
ayxoZG1pLXBoeS55YW1sCj4gQEAgLTQyLDggKzQyLDcgQEAgcHJvcGVydGllczoKPiAgICAgICAg
LSBjb25zdDogcGxsX3JlZgo+Cj4gICAgY2xvY2stb3V0cHV0LW5hbWVzOgo+IC0gICAgaXRlbXM6
Cj4gLSAgICAgIC0gY29uc3Q6IGhkbWl0eF9kaWdfY3RzCj4gKyAgICBtYXhJdGVtczogMQo+Cj4g
ICAgIiNwaHktY2VsbHMiOgo+ICAgICAgY29uc3Q6IDAKPgo+IC0tCj4gMi41Mi4wCj4KCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
