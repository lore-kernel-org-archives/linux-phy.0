Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 877C5CA1012
	for <linux-phy@archiver.kernel.org>; Sat,  6 Sep 2025 08:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CvbfhxfxfyntrzLir4q2gYiYh18VGOqF7GqnJNx26IM=; b=e3l6Yo5kVQHklR
	IPI1oI3WxhFNWGKGlZuLl1eatYGk9nw178CJzj4N1E2GyrUmNMWIZMkOgW3hA9HWI21R5gbHNU5+3
	8QFodoE3KaNPiPK4sJ17XnFK9nYGAdW2CWu2QYwbIPwdLI/ro0ZW5Irc6ruwQ3TymmUH3L1fC8AxE
	w+eKtRAHPImZJ3g0TI60dz3A/7tsuVN+zPbDlSW2k9wwV//D7Zkqu8e96qli2rXeTgBIifZxDZg71
	w8Rijn+yicHqZERa1KFBGirtt+Qq2syFtM60dFCFpK2SO67To35YqhYEnquAcMbFCvwsRyK+n/gb8
	E5gg5d1HqFpFjr+18U9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuoUr-00000007Dcv-0D4x;
	Sat, 06 Sep 2025 08:42:09 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuoUo-00000007Dcc-3Cx4
	for linux-phy@lists.infradead.org;
	Sat, 06 Sep 2025 08:42:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=oldschoolsolutions.biz; s=s1-ionos; t=1757148109; x=1757752909;
	i=jens.glathe@oldschoolsolutions.biz;
	bh=Z5TpHw/1i9sizZL/L18DqQShuhFMIw2vWBeiWqXJusQ=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=uL7itg8yZLbLk/XQaFUg6DZAN/Fibsukfi8+7Bg2JpXHWvmLVkAEVcdmAISJwkce
	 cO5rg0Y2rYV6OOuB4T54aL0uOMphbyAyRUL0en5r2jDSDCOOZTpI+2w1laPOl1y3v
	 mtydO4a5rF852VNjRN1P1JlWREW857aJYA6e6m98yqOYQbQtZpfN3kCMexITQqXhd
	 xvObPh1z7vqdPhT3ttHM+vp1wzSBNYlNfVONa/b02KZglRHqe/0y7y9E6lUQ3cTKx
	 QouLqFZcRD5Oj1arml/ZlQj3smWz1/YO1QJU+xxyBCSXlSLqUZps3ci/0G5bsDmBj
	 v8cAadzp4WirYAjL+A==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from [192.168.0.174] ([91.64.235.193]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MQy0N-1v8Cc612xD-00Ke4k; Sat, 06 Sep 2025 10:41:49 +0200
Message-ID: <a38df652-54c0-4216-9aa5-c8d32599c8f7@oldschoolsolutions.biz>
Date: Sat, 6 Sep 2025 10:41:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: [PATCH RFC 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-3-f14ad9430e88@linaro.org>
Content-Language: en-US
From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
In-Reply-To: <20250821-topic-x1e80100-hdmi-v1-3-f14ad9430e88@linaro.org>
X-Provags-ID: V03:K1:QhRL/UXwPaSPd3oTg60CCdzWtMxaB/XVwYUR/VGyFAk3GUisFgC
 cUIA1Xj9/0/C4ya1HbYVvFqOCVF0jbH2+pr0r0i8VxAOZI2va0JaT9Ei0YAoHCwxe+gjswQ
 /RvxsQzNKG1Xw9+jufRyWGxg2Y73AZeacgAdzzAnfDiZAhIuW60pP/8ICwwb5b5dG2ZFXmN
 wo8NcH57rkr0pGv6PdxuQ==
UI-OutboundReport: notjunk:1;M01:P0:swNgBH3nyTE=;+rdig7xiljv9G21DwlVGUYlKt5O
 qi29g/l/w9NS70mv31f4fQBeGPYIPdSAgwP3c0gGEgFAsvSPEJ7xoxbvTc9QkLirqo5HwlyFk
 YaJ7E7rMiH4b0xNrYG9rohOHDGkANX2+N5V2FbSRyD056PAePNrfflcrGvlmUA8+i/r+ptExz
 p3WEJvc1My6CgCBnJPH/oEgGfN8siz6wbjUrNZPF2aTknaFCKAx48RJFpe/NNBuyicty1tXim
 0GgoOKAhX95rS/L4o1UKHAVVgtvGuBYPGENb8FDvJhdrVrnvcI0dtgyWtRveDF8O7ahbfG9LH
 jDkpYw1H5q7QFW7KmbHaY81Ae7FdNnV2WXma6nkLQWgInD7ImHlNv4LHm6aGP/9Dvf2jBEZ7t
 iR0HmXa/+z5LzgFvCzz7inQdZffJRYSe9oDgolq4b9hEVAKUMZhPNsbqTWtUBVxyM1V9gUXeU
 3FFWDuVHg5UIQxykQUA+9KanpPYrR2oma/pkCV+lMNeGw2/vLRmRjSFzEqMUKpKHLRniZhmnu
 UGxK2Da9urklDd05Dksh/5ykL9dKEHnOk27T1AHH+xS5On4KIKN0vnrHOKnshstJgk+0SOPy6
 TSlUvOZksaQDsPXuOjj8CznXRnUlHT8V3pfodz9KP6ME6QvVj3JWHezd79Eh9GdS0tNASXkns
 QtzVPQXtKDDgXDXfehtpGZoA7AvVpiVrQwxvhur8W/DGqGrzdH4ydJ0b6MCgdqdEk3ml4/Ec+
 0/v4WkkSpiWKLssXJ3HQvinYHxqs859X8j5gUTE2FB8R69IBaSm1Ry3mIoHPBp8K0mlUShiGq
 LnvaLVRfKX4i64UAtIoRLAFBehk0B/wWUgR4rfuKiyTEJ357mvIpJBwPWtWLwGyRnJiLLFxVt
 0qHZfBtkSwvmtYVRHFwRgJZ0IQAN3s5Xmc1vafJ00iEl2/UFXn7o/pHObngWyYFUHBo6ShKKy
 3zDTQUfS315cWBkfkTbLAjXVP8Jm7QBx4r3C3FlKFi/WHLMieV00K136N7eaU3VeLL6LavWBG
 l9DPm3fkBrY1swpR1zol/CnsGzCSS07djy3k1Vh/3Qxqi14FgFhmvpae4dgFEcZwn46J/ieg6
 RtnxhkUBZyHYUBqcmQZnjoomGkp98BqeBjGg5ft8FyWgqFEMtBxKv4ksRUH2dYFuKvEC4huSP
 mu8djMyigSgtgOpnjEEUtmsS/9KDCcKk/LbMkdvRASpxfVJrhPLWSPHB7VtPNGMJ/MifyGPzS
 5SVxVRTJAas0w5OMKjfh4wC6TAHFsq16iub3V+3jeBs2qsHx/WDw+9CvFIn2V3q5su3vt1JUu
 33qqqgMKXIDDkBBniSVIPG/0ih0Dos6LzeIByfu4LOOVga1/dpvAsgkfXCvheNDKABiBMlJFm
 13UTVzz7iPOXbCfOs4NIHOvWuCijRxYe55Mu3kEYgZmlvsZnQr674PfXTfxfA68V19byItkVv
 Iyd5YeIdDR+kauYTujoJMpj6WMBZ9hVg0QOvKJuISTphYv0NGGAB6wpNC09OO+3ckYfRQqzGK
 y5vqCvzKh0bCRFy3D9ReoiEugqvYvyu36cQfPvaOjxrWG+H6SlZLSB3bcOsgtBAjUhbn2PEdI
 WliLXsFUme//ofyNDX/IZfTHZ4AuefGHrGwQ4x5v1kQnauSm09u7P8XRCGnMwBciAFE+zX+X8
 H4WECAF+BBooxy8beOwkDKrRkkj2TMpsUV+HFYs2r57zGH+d6EDlmd2exMGZYsbjEVExD2jga
 UuTUzHKSjQFnR2fdGawShVMgBPm4UrMqyA7TrfKH+j5n6ZbKVb92kwIg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250906_014207_249748_6F54DBB4 
X-CRM114-Status: UNSURE (   8.19  )
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

T24gMjEuMDguMjUgMTU6NTMsIE5laWwgQXJtc3Ryb25nIHdyb3RlOgo+IFRoZSBUaGlua3BhZCBU
MTRzIGVtYmVkcyBhIHRyYW5zcGFyZW50IDRsYW5lcyBEUC0+SERNSSB0cmFuc2NlaXZlcgo+IGNv
bm5lY3RlZCB0byB0aGUgdGhpcmQgUU1QIENvbWJvIFBIWSA0IGxhbmVzLgo+ClsuLi5dCj4gICAu
Li4vZHRzL3Fjb20veDFlNzgxMDAtbGVub3ZvLXRoaW5rcGFkLXQxNHMuZHRzaSAgICB8IDQ0ICsr
KysrKysrKysrKysrKysrKysrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCA0NCBpbnNlcnRpb25zKCsp
ClsuLi5dCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS94MWU3ODEwMC1s
ZW5vdm8tdGhpbmtwYWQtdDE0cy5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3gxZTc4
MTAwLWxlbm92by10aGlua3BhZC10MTRzLmR0c2kKPiBpbmRleCA0Y2Y2MWMyYTM0ZTMxMjMzYjFh
ZGM5MzMzMmJjYWJlZjIyZGUzZjg2Li41YjYyYjhjMzEyMzYzMzM2MGYyNDllM2VjZGM4ZWEyM2Y0
NGU4ZTA5IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS94MWU3ODEwMC1s
ZW5vdm8tdGhpbmtwYWQtdDE0cy5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29t
L3gxZTc4MTAwLWxlbm92by10aGlua3BhZC10MTRzLmR0c2kKWy4uLl0KPiArJm1kc3NfZHAyIHsK
PiArCXN0YXR1cyA9ICJva2F5IjsKPiArfTsKPiArCj4gKyZtZHNzX2RwMl9vdXQgewo+ICsJZGF0
YS1sYW5lcyA9IDwwIDEgMiAzPjsKPiArfTsKPiArCgpIaSBOZWlsLAoKc2hvdWxkbid0IG1kc3Nf
ZHAyX291dCBhbHNvIGhhdmUgdGhlIGxpbmstZnJlcXVlbmNpZXMgcHJvcGVydHk/CgorwqAgwqAg
bGluay1mcmVxdWVuY2llcyA9IC9iaXRzLyA2NCA8MTYyMDAwMDAwMCAyNzAwMDAwMDAwIDU0MDAw
MDAwMDAgCjgxMDAwMDAwMDA+OwoKT3IgaXMgaXQgc29tZXRoaW5nIHRoZSBicmlkZ2UgYWxyZWFk
eSBuZWdvdGlhdGVzPwoKd2l0aCBiZXN0IHJlZ2FyZHMKCkplbnMKCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
