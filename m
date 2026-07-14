Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56C22C43458
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 23:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hz325YDZCqR9rw5DcPUgBkIFScIjE6PhXSEqkfj95RM=; b=o6O6Uv+siiTBAG
	PbTC6O8U7EoXncz3N/nTkCueuBFw1SEbIfx+tA6/nNTgIPVDMdoirhJ/DkYLPdGZh8H0tI6PjtWq2
	L3lSyw7rjrQG+udcdChRXeaTfli4XLO14/mDKgm12qTydqPMpJ9vZKvi67Yx3j0TvNLKhFT+ZdOjt
	JGltrwmbX22fjdSNDI8wgv2Y1FgKNizhhSaiLWvBrqbil+OHD+UU+nk/0tYbjX9BPBCN+Imu8g2B8
	p0h4kWg83GUbJEuGE8mFsMkoWk3sSHyR5IFzJGEs1xqzMKsPtaaYQZwj5BoSN+cV61D+XNPrRs5Rb
	/W9W45NFT8Zxy6DJU4VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjmC3-0000000DRIe-2WmS;
	Tue, 14 Jul 2026 23:05:39 +0000
Received: from mail-ed2-x01.google.com ([2a00:1450:4864:33::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjmC0-0000000DRHW-2kx7
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 23:05:38 +0000
Received: by mail-ed2-x01.google.com with SMTP id 4fb4d7f45d1cf-69846f25bffso3405238a12.1
        for <linux-phy@lists.infradead.org>; Tue, 14 Jul 2026 16:05:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784070335; cv=none;
        d=google.com; s=arc-20260327;
        b=pem+m53Se6MSrJLUi19tABkE/nO6FEpqKKUe8u1JWe0NWuJaEwtmoVjNCfIdjB/3pH
         MXX4r4zVpIpeDZ8R/K1B9UOufzcD1hR7rcR5jnYC6EF+Sou3HXQ1OLCDEELq4bcro1oL
         UqF2eUbxwoilKAB8rMkRPewT5KuG6rPEWaxvD8st8lSc0D3OdZPRghwl25wdeh6i29lc
         QH9anDFTGZmqGjk9YTnOJHfgp/CpAKSiJn88Y1OEEwoK2orziji8d7n/KKZQj5cOD4JU
         lsF2V3qDdrDVXlpOnLZjl6e0QnI0jjuPeC2BVWu9rkvwb2Op7aCQiTfNRSjqeTlXH71z
         8GPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=5yS0n4m24nQ7cS0uAO0etHXioBeE2HNrxAIlQrrccBM=;
        fh=w7q/NRy7HKvN94ZywhkxRGj0k5HcP7PiaQfbU/tsh6s=;
        b=ZvfYfO27TJd5IONK0LcSGPIajpAJSw+b8E3JlELNbjKD74GPjVP4TUIYxHYrJ1RiEE
         vMCWDe+cc+MJxx1Dd4Bv7IxOJrTyV6RbuMttmEEjTZ4YKQ0A+YsiVc9O9z0wOTsSA/7y
         ZVX2MW9w6EYT10PUpRaOKYgCVEgMPm3aGI9cooyncWQV3T1C3Fl5ILS6DHEaN/viQgLW
         C8WAXzyIozQrSm+CRRu6vohw/L1wE4D+Ch8yOADWOdZYXgjViiXPyJ2oMmsebp2wmSgi
         kaoI9oYeRXKYkFR68Jyh3J5Py+0iZuDOcB58VVXYBhd2iLHuaUckY6/af3Mjx/zjZHTz
         wPeA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784070335; x=1784675135; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=5yS0n4m24nQ7cS0uAO0etHXioBeE2HNrxAIlQrrccBM=;
        b=Rzsc2+sbGxInP4b0av+mGjxvCQDJWfCYsPbiJhKh5gmvrtmJh0yOZkVSmXFn+hlFez
         ovtWEdBflIhWCL/pi4o52Qozbgej/wXz6dbtgCY/9UqHBcm/NGqjPxkb2qovPshtX+gi
         CjHXJloc6XH0RgzwZXD7fagUrrNUi23O1/GvVZagtHk1QY4K2TSGZXvAo0nFmxlGAQOQ
         nJniQejF/H5iKm4stRebQBrcO9ayJQZUffvwfkft6F4o6ON0fcAYuHZQ76Hk4RXSdLmg
         /eXgfdmWC1VYFoNcw0v4z76uVgrGiPM4xcH+zGPmrgTn5Ph0pLNeaOnP99Hm6Yit2Uvw
         aedg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784070335; x=1784675135;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5yS0n4m24nQ7cS0uAO0etHXioBeE2HNrxAIlQrrccBM=;
        b=d0BuVDaCTG9XvblaMFHHSz9UiW1LmN13+QJ9zxaE8eqqCS82oXy0HJq5re7FQkvdFc
         eWko1+kQ9ktDVPm5AQKHlucXLrP4i6IZrV7EGB5aQ7ObDEDp8xuw7qaNh1Ka8tDVrzDJ
         0BjTQxffc0ahcLfNK+ODhMqAxPBHb2qAKJoUNROsmDi5RZTQITDtfFz5HJfewcrUJT9V
         E2p7tK4pP5erkgLLmotggV3MNGg/kik/AGgbkCauDiA9Xz9buFIl4mOxsQpPcPUznwDO
         PpjMSzaLLyL7qr6X0aoUiwvUMUpaQSnk1PF0wlFOlA1OHMGCceHpQwi8B/qv5csVvvaS
         XGHQ==
X-Forwarded-Encrypted: i=1; AHgh+RqpP7wdKirHczWdRujeMnw81mtlizj6/Vg233u+THhJ8dBmqXmZWaQe6F2+ZIZlc2R+2log+HBX+9c=@lists.infradead.org
X-Gm-Message-State: AOJu0YzX7eSwOp/tEHa1a39GpfVItdyBnB5x/vnyzToAdk2XrigSeqdv
	+eNEJRdllRhna7HfdZO3m8zbb7OLn8R0bVuh5dXrZj/Xv8JJsLIsFH8WNAbCuoCSz9EgzBWWaPu
	mTu49pEiS7nETyvaSg5M9qKONDFVU5hkPnUPKC08ZkbZ/
X-Gm-Gg: AfdE7cn9iRrcp8IPDYGKpf2TyHt9GmFEjf8YR1LC7ZURxfCdFskMGHBXVw3voW/qZfr
	lvmVNNXToP0MA7KSwvofsBtzxd0sWGvKceuAi3tQ6V+d2k3LbuN1HMujo8guwox1n5FtBCE54HF
	xKawzMLAhYEmEqN1vem92yBxmZKfw5ETSfzjlii5g5rrAmQtY/f0TKbE9XeTYSgHwr0BQefvCqD
	+etrJoOFuemwHBwbuBy3jOUD53yp83xCFzuC56JOpzY9arbNitZDP33bPglCiEUzFjM/2BOaWjT
	uOAeHf7Ytg==
X-Received: by 2002:a17:907:3d55:b0:c15:efb1:9ff7 with SMTP id
 a640c23a62f3a-c16616ad29bmr332320166b.28.1784070334544; Tue, 14 Jul 2026
 16:05:34 -0700 (PDT)
MIME-Version: 1.0
References: <20260714191341.690906-1-coiaprant@gmail.com> <20260714191341.690906-7-coiaprant@gmail.com>
 <464cbdf3-2e9e-43ea-b30a-75b3d1b8a188@lunn.ch>
In-Reply-To: <464cbdf3-2e9e-43ea-b30a-75b3d1b8a188@lunn.ch>
From: Coia Prant <coiaprant@gmail.com>
Date: Wed, 15 Jul 2026 07:05:23 +0800
X-Gm-Features: AUfX_mw_zrKoDsMO8kJR8iRpLq9HGKaiImf5TsHlB4TM3nCjyfFFksGlOJoy3Z8
Message-ID: <CALj3r0jdkDEjpO+7NOTGs+wgukKvD=fzFn4ewpurxxPswCE5GA@mail.gmail.com>
Subject: Re: [RFC PATCH 06/10] net: pcs: xpcs: improve SGMII AN state handling
 for Rockchip RK3568
To: Andrew Lunn <andrew@lunn.ch>
Cc: kuba@kernel.org, davem@davemloft.net, edumazet@google.com, 
	pabeni@redhat.com, andrew+netdev@lunn.ch, robh@kernel.org, krzk+dt@kernel.org, 
	heiko@sntech.de, netdev@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, Jiawen Wu <jiawenwu@trustnetic.com>, 
	Mengyuan Lou <mengyuanlou@net-swift.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_160536_716848_C1E2C90B 
X-CRM114-Status: GOOD (  15.50  )
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

QW5kcmV3IEx1bm4gPGFuZHJld0BsdW5uLmNoPiDkuo4yMDI25bm0N+aciDE15pel5ZGo5LiJIDA2
OjQ05YaZ6YGT77yaCj4KPiBPbiBXZWQsIEp1bCAxNSwgMjAyNiBhdCAwMzowODozNEFNICswODAw
LCBDb2lhIFByYW50IHdyb3RlOgo+ID4gQ29tbWl0IDJhMjJiN2FlMmZhMyAoIm5ldDogcGNzOiB4
cGNzOiBhZGFwdCBXYW5neHVuIE5JQ3MgZm9yIFNHTUlJIG1vZGUiKQo+Cj4gWW91IGRvIG5vdCBh
cHBlYXIgdG8gQ2M6IHRoZSBXYW5neHVuIE5JQyBwZW9wbGUuIEl0IHdvdWxkIGJlIGdvb2QgdG8K
PiBoYXZlIHRoZXJlIGNvbW1lbnRzIG9uIHRoaXMgY2hhbmdlLgoKSSBhcG9sb2dpemU7IHRoZSBv
dXRwdXQgZnJvbSBnZXRfbWFpbnRhaW5lci5wbCBpcyB2ZXJ5IGxvbmcuIEnigJl2ZQpoZWFyZCB0
aGF0IGhhdmluZyB0b28gbWFueSByZWNpcGllbnRzIGNhbiBjYXVzZSB0aGUgUEFUQ0ggdG8gYmUK
cmVqZWN0ZWQgYnkgdGhlIExLTUwgbWFpbCBzZXJ2ZXIuCgpJIGhhdmUgYWRkZWQgV2FuZ3h1biBt
YWludGFpbmVyIChKaWF3ZW4gV3UgPGppYXdlbnd1QHRydXN0bmV0aWMuY29tPgphbmQgTWVuZ3l1
YW4gTG91IDxtZW5neXVhbmxvdUBuZXQtc3dpZnQuY29tPikgdG8gdGhlIENDIGxpc3QuCgo+ID4g
Rml4ZXM6IDJhMjJiN2FlMmZhMyAoIm5ldDogcGNzOiB4cGNzOiBhZGFwdCBXYW5neHVuIE5JQ3Mg
Zm9yIFNHTUlJIG1vZGUiKQo+ID4gU2lnbmVkLW9mZi1ieTogQ29pYSBQcmFudCA8Y29pYXByYW50
QGdtYWlsLmNvbT4KPgo+IFBsZWFzZSBkb24ndCBtaXggZml4ZWQgYW5kIG5ldyBjb2RlLiBJcyB0
aGlzIGEgcmVhbCBmaXg/IFNob3VsZCBpdCBiZQo+IGJhY2sgcG9ydGVkIHRvIHN0YWJsZT8KCkkg
YW0gbm90IHN1cmUgaWYgdGhpcyBpcyBhIHNwZWNpZmljIGNoYXJhY3RlcmlzdGljIG9mIFdhbmd4
dW4gTklDcywgYXMKSSBkbyBub3QgaGF2ZSBhbnkgYXZhaWxhYmxlIGZvciB0ZXN0aW5nLgoKVGhl
IGJlaGF2aW9yIG9mIHRoZSBSb2NrY2hpcCBEVyBYUENTIElQIGNvcmUgbWF0Y2hlcyB3aGF0IGlz
IGRlc2NyaWJlZAppbiB0aGUgY29tbWl0IG1lc3NhZ2UgKGV2ZW4gdGhvdWdoIHBoeWxpbmsgYnJp
bmdzIHRoZSBsaW5rIHRvIGRvd24KYmFzZWQgb24gdGhlIHBoeWRldiBsaW5rIHN0YXR1cykuCgpU
aGlzIGFwcGVhcnMgdG8gYmUgYSBidWcgKGF0IGxlYXN0IG9uIFJvY2tjaGlwIHBsYXRmb3Jtcykg
b3IgV2FuZ3h1bgpOSUNzIGZlYXR1cmVzLgoKSG93ZXZlciwgSSBjYW5ub3QgY29uZmlybSB3aGV0
aGVyIFdhbmd4dW4gTklDcyBiZWhhdmUgdGhlIHNhbWUgd2F5LgpUaGVyZWZvcmUsIEkgaGF2ZSBr
ZXB0IHRoZWlyIGNvZGUgYXMgaXMgZm9yIG5vdy4KCkNvdWxkIGEgV2FuZ3h1biBOSUNzIG1haW50
YWluZXIgcHJvdmlkZSBzb21lIGZlZWRiYWNrIGJhc2VkIG9uIHRlc3Rpbmc/CgpJZiB3ZSBjYW4g
Y29uZmlybSB0aGF0IHRoaXMgaXMgaW5kZWVkIGEgYnVnLCBJIGNhbiBzdWJtaXQgYSBzZXBhcmF0
ZSBmaXguCgpJIHdvdWxkIGdyZWF0bHkgYXBwcmVjaWF0ZSBpdC4KClRoYW5rcy4KCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
