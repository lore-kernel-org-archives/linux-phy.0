Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E9FCC4828F
	for <linux-phy@archiver.kernel.org>; Thu,  8 Feb 2024 11:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1oaQc+OlwhtFQoDzUUn+xjZQJx67/oCV5JEzntuNVMo=; b=BSwlPmFH8wE60k
	EGc2iLDnZqsQiLbV/NsxZf4PpxX96d4JVrxIafzdpapmTv57WHdQP4pfwz3BkUMqVEsFgG9xrXRO9
	sFq5fxEizBV2dwO4WWwnfwXxgXZATYgE4fgSLmzK7qLuxMqqnxLUctgFCf+psbUEkLua14rTQd/H9
	z27GV52YSYBzZtfDs4cWkhJkfEEa+oCAY9owW0Hy+OQFWEEu82bHFeEsh+o+XQr19DVTSZyyXHSZn
	feBlu45Vk3Wq/NZ7jWbhtnhAvy4u/FXrXtMwuaGy8ikg1HFHYWQ9T10VmsCxCuWFaoJAwoOmEn3N2
	gRlcMKQPf+tAnMNj/4Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rY31D-0000000DdVj-1O1F;
	Thu, 08 Feb 2024 11:56:39 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rY31A-0000000DdTm-1KZs;
	Thu, 08 Feb 2024 11:56:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1707393392;
	bh=GvOQavqKQ73W+MRNGucTZ0Ho0rG1YvGyfH/usYCQVX4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=03bYqfjHn9J1jg29DH4aCJDmoCpd7W4TAdaMyzB/z8MgQh+qNWMERjJhFHyMI9thQ
	 8UctKNuQvwiz1cb9JGulU41IocHuZsXgQFD19dQs3PO3h1fgKP+fuKu33wIsqjj06n
	 IY+sSce3jWOsqAZR5BXB+skcQ6xbaNOTVuzcozpuOYn4jkxBGbuQ4TZ2txGnbSgOZb
	 zRPTPrVIm4QkJRwWevsLtTMrVlL03t7EoMOXuqgVe857S6SptQkkbP6qfOuoo+qGU+
	 +nPe7I6lKvMKgwji5HiDcyajlCWGv+NGxl3RMtq6RGx2FJcTKPrpXrenBOR8muZTxT
	 GOaRMNnRtpKdQ==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 769863781F7D;
	Thu,  8 Feb 2024 11:56:31 +0000 (UTC)
Message-ID: <a15ce51b-5778-4978-946a-4b8350205c08@collabora.com>
Date: Thu, 8 Feb 2024 13:56:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] phy: rockchip: Add Samsung HDMI/eDP Combo PHY
 driver
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Algea Cao <algea.cao@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kernel@collabora.com
References: <20240205-phy-hdptx-v2-0-a7150814c047@collabora.com>
 <20240205-phy-hdptx-v2-2-a7150814c047@collabora.com>
 <2670318.X9hSmTKtgW@diego>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <2670318.X9hSmTKtgW@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240208_035636_532817_8B55CA33 
X-CRM114-Status: UNSURE (   8.38  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMi84LzI0IDEwOjAwLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBBbSBNb250YWcsIDUuIEZl
YnJ1YXIgMjAyNCwgMTI6MjQ6MjUgQ0VUIHNjaHJpZWIgQ3Jpc3RpYW4gQ2lvY2FsdGVhOgo+PiBB
ZGQgZHJpdmVyIGZvciB0aGUgSERNSS9lRFAgVFggQ29tYm8gUEhZIGZvdW5kIG9uIFJvY2tjaGlw
IFJLMzU4OCBTb0MuCj4+Cj4+IFRoZSBQSFkgaXMgYmFzZWQgb24gYSBTYW1zdW5nIElQIGJsb2Nr
IGFuZCBzdXBwb3J0cyBIRE1JIDIuMSBUTURTLCBGUkwKPj4gYW5kIGVEUCBsaW5rcy4gIFRoZSBt
YXhpbXVtIGRhdGEgcmF0ZSBpcyAxMkdicHMgKEZSTCksIHdoaWxlIHRoZSBtaW5pbXVtCj4+IGlz
IDI1ME1icHMgKFRNRFMpLgo+Pgo+PiBPbmx5IHRoZSBUTURTIGxpbmsgaXMgY3VycmVudGx5IHN1
cHBvcnRlZC4KPj4KPj4gQ28tZGV2ZWxvcGVkLWJ5OiBBbGdlYSBDYW8gPGFsZ2VhLmNhb0Byb2Nr
LWNoaXBzLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogQWxnZWEgQ2FvIDxhbGdlYS5jYW9Acm9jay1j
aGlwcy5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4u
Y2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+Cj4gCj4gb24gYSByazM1ODgtamFndWFyCj4gVGVzdGVk
LWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKVGhhbmtzIGZvciB0ZXN0aW5n
IHRoaXMhICBXaWxsIHNlbmQgdjMgc29vbi4KClJlZ2FyZHMsCkNyaXN0aWFuCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
