Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41184C282CD
	for <linux-phy@archiver.kernel.org>; Mon,  3 Mar 2025 17:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fLUTum3gFx/HTrX/djASS3QjJTlFjCKgwku3iIj8fZg=; b=kAVu3QsVHuBuCB
	JAjnBO9JTChNw7IPprT7Kaqbfeb6BkZ8XU8bZ9fN/VyK9+m7zjVxuH0rGf6GW4iqE4l2/ZPCMF+fE
	q6f+xq1j5AmzrvQ5b+2s+05SwA/kSYgRGjZE0x0LNLUKjdDFXcxuQMWGYi9IQEm63v/8+581ZqBz+
	xJwY4+Uc7ZHsR93tqKsSY6FMbQ/cu5y6XjnWK0UK2qS1/HuC8cfSaaRaPWLiCRBmrC7fBI0QNvuGq
	TEOLBVaViuXJhHXeJPqzoU/FNf8lEicUBC4T/PDPtiC18GOFidQYl5eV2mxWappwUZdLvkXGsJSxM
	ejEDoVhvakiYLO4sBCpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tp9SL-00000001iZV-25nz;
	Mon, 03 Mar 2025 17:19:53 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tp9Qk-00000001iHm-25qA;
	Mon, 03 Mar 2025 17:18:15 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-5e50de0b5easo3293890a12.3;
        Mon, 03 Mar 2025 09:18:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741022292; x=1741627092; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sE2nwe2DjINW/dM2gZS6aKt8qAr3QCojkbk7uIqO54s=;
        b=g3oki97Sc2Qiod2RyBLXzm3F2WSnA3sD/4tu40A34zC7osN1VSKXYh/t1kOXcw/BA5
         yYzxqWoWXBmfyoqOJM4GP7jD9s/PIovpxFKvvHaWyNCoY2i8b06pxehgO2i6MhHg5PKF
         Tql3rlnOZ2SA2t7UJKc0y1l1Tz6EUVW+k6XgCvj0M4XZLp1WiYChzhR+LefuzGhWSI/0
         OYSh0DE3irme5S1txlHEyQJa+BdjSMucPDcce8hD59ZWcN2saPSEhIpVdBiziCy+P3F/
         EHZljN/DebH1XaHAaGYXvnpAAch46/P1euujSDANexffe0zGG9+zr4kTAXwcwthHSz/F
         3Ybg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741022292; x=1741627092;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sE2nwe2DjINW/dM2gZS6aKt8qAr3QCojkbk7uIqO54s=;
        b=nHRQahQRCxCirXyqN35Vl/WQXYAS5cxembwxNp+aBcZqMWJcwfSff0ta2x188iin5i
         qaLS1jN7Ty8O2DNY+VNKGENymQxaero24eJo425l6s22blqrm7C8ndRbgMIwOzIgZ8hr
         kqcANpCjNq7ydMtwh5vWvBETLF7UphWbTLjqg1XXMRF6/fhmzc5Vl/v9VJcvZejNZQKM
         0Eb97/1rf/nakq53417Abai/reLx2wOGDW+rJfJYvpSO2s1mJgJwGitAnRQ+KLlgWMUP
         rRbMGmAm9xwn5I2VYE4lHlozteHDH6/j9eCuT1VWazNGii/Ye6WQzENpYb75+jSNpuBP
         NrKg==
X-Forwarded-Encrypted: i=1; AJvYcCVElQU/o8WsGtvLCRiKym54U9nbD3hk5GjrFbZr/q4jg5q+l9gAbkvGk5qa3cy4GsJAvv2pE9mjSz5Q@lists.infradead.org, AJvYcCWbdnpxesjq+8LC7MpY1qvu2d/lrs1ZokgBVuapM+IWin1S1UzqqXw5eVNrEGA/o7ujUyWPLMTx6VuoDs8ixE4v@lists.infradead.org
X-Gm-Message-State: AOJu0YxMOPQRr97KG7IZ5OGuoNWfJyd/UXYfGMI3ainev/AH75dye/Kh
	if4KHG63IyIB6nXwbTDjntqC6RARdQCJFfgJP4BtPKL5pYClXCuf
X-Gm-Gg: ASbGncuymtd1QWRV/bSrzVLKLTgi94ocmVohZ1xlTJocmTqNILga5quHXR8Cqyq7oGv
	G6kugh2dMcrM+gwssKHNli9rIhjowg5ovDQX6NkbBg0oAJ0pAs6PqjHVuVTQy+kHNOean1BBpN7
	Oko/BRwEahPEVkE1G+pRj3nbmCVn8zgUZDbrx6BcJU+5Kw1ffHdTJnNGpF7Fc4YDz03BjRZnL+1
	Zaf8CAsqNdhndAJQjsUKumkjydJzF7k34mBtpSkFYpiZbZEFQSaCuCdZkFoIeUU3B4CA3VmP189
	PfGHXShVfeBfb3OU584dFUHGwqeTwIuVKswr993G+XhgRVsNpbtYjCiS/YQNIqVMUY1/OEoCkCq
	NuHmnJpveMV9gtBkX12wuok4=
X-Google-Smtp-Source: AGHT+IHI1CoDf0zET93TFTFwi+XLCs8pimREfQejaLODOte+CXbwQ8+LefkOYFI2CcaZ0a8rBCUzIw==
X-Received: by 2002:a05:6402:2748:b0:5e5:71e:8c63 with SMTP id 4fb4d7f45d1cf-5e5071e8edemr14033147a12.15.1741022291813;
        Mon, 03 Mar 2025 09:18:11 -0800 (PST)
Received: from [192.168.1.105] (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e4c43a55besm7022334a12.72.2025.03.03.09.18.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Mar 2025 09:18:11 -0800 (PST)
Message-ID: <9fb63a04-5b3d-40cc-b96f-eb4f297f307e@gmail.com>
Date: Mon, 3 Mar 2025 19:18:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/8] dt-bindings: phy: add
 samsung,exynos2200-usbcon-phy schema file
Content-Language: en-US
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Abel Vesa <abel.vesa@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250223122227.725233-1-ivo.ivanov.ivanov1@gmail.com>
 <20250223122227.725233-4-ivo.ivanov.ivanov1@gmail.com>
 <20250224-curly-cyber-spaniel-efdc39@krzk-bin>
 <a4f63721-d094-4eda-b68a-6ef62ff54680@gmail.com>
 <c8184542-5dab-4403-bee4-867810397ae4@kernel.org>
 <4502b578-96e6-49e0-8f3b-54f6e5640c55@gmail.com>
 <354d6100-311f-44d7-b8a5-1fd671b651e3@kernel.org>
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <354d6100-311f-44d7-b8a5-1fd671b651e3@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250303_091814_537482_A517FBD6 
X-CRM114-Status: GOOD (  32.65  )
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

T24gMy8zLzI1IDA5OjI0LCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+IE9uIDAyLzAzLzIw
MjUgMTA6MTYsIEl2YXlsbyBJdmFub3Ygd3JvdGU6Cj4+IE9uIDIvMjUvMjUgMTA6MTEsIEtyenlz
enRvZiBLb3psb3dza2kgd3JvdGU6Cj4+PiBPbiAyNC8wMi8yMDI1IDExOjQ4LCBJdmF5bG8gSXZh
bm92IHdyb3RlOgo+Pj4+IE9uIDIvMjQvMjUgMTA6NTYsIEtyenlzenRvZiBLb3psb3dza2kgd3Jv
dGU6Cj4+Pj4+IE9uIFN1biwgRmViIDIzLCAyMDI1IGF0IDAyOjIyOjIyUE0gKzAyMDAsIEl2YXls
byBJdmFub3Ygd3JvdGU6Cj4+Pj4+PiBUaGUgRXh5bm9zMjIwMCBTb0MgaGFzIGEgVVNCIGNvbnRy
b2xsZXIgUEhZLCB3aGljaCBhY3RzIGFzIGFuCj4+Pj4+PiBpbnRlcm1lZGlhcnkgYmV0d2VlbiBh
IFVTQiBjb250cm9sbGVyICh0eXBpY2FsbHkgRFdDMykgYW5kIG90aGVyIFBIWXMKPj4+Pj4+IChV
VE1JLCBQSVBFMykuIEFkZCBhIGR0LWJpbmRpbmcgc2NoZW1hIGZvciBpdC4KPj4+Pj4+Cj4+Pj4+
PiBTaWduZWQtb2ZmLWJ5OiBJdmF5bG8gSXZhbm92IDxpdm8uaXZhbm92Lml2YW5vdjFAZ21haWwu
Y29tPgo+Pj4+Pj4gLS0tCj4+Pj4+PiAgLi4uL3BoeS9zYW1zdW5nLGV4eW5vczIyMDAtdXNiY29u
LXBoeS55YW1sICAgIHwgNzYgKysrKysrKysrKysrKysrKysrKwo+Pj4+Pj4gIDEgZmlsZSBjaGFu
Z2VkLCA3NiBpbnNlcnRpb25zKCspCj4+Pj4+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyxleHlub3MyMjAwLXVzYmNvbi1w
aHkueWFtbAo+Pj4+PiBZb3UgaGF2ZSB1bmRvY3VtZW50ZWQgZGVwZW5kZW5jaWVzIHdoaWNoIHBy
ZXZlbnQgbWVyZ2luZyB0aGlzIGZpbGUuCj4+Pj4+IEZpcnN0LCBkZXBlbmRlbmNpZXMgaGF2ZSB0
byBiZSBjbGVhcmx5IGV4cHJlc3NlZC4KPj4+PiBUaGV5IGFyZSwgaW4gdGhlIGNvdmVyIGxldHRl
ci4KPj4+IFdoZXJlPyBJIHJlYWQgaXQgdHdpY2UuIERlcGVuZGVuY2llcyBpcyB0aGUgbW9zdCBp
bXBvcnRhbnQgdGhpbmcgYW5kCj4+PiBzaG91bGQgc2NyZWFtIGF0IGJlZ2lubmluZyBvZiB0aGUg
Y292ZXIgbGV0dGVyLCBzbyBpZiB5b3UgYnVyeSB0aGVtCj4+PiBzb21ld2hlcmUgZGVlcCBpdCBh
bHNvIHdvdWxkIG5vdCBtYXR0ZXIgLSBqdXN0IGxpa2UgdGhleSB3ZXJlIG1pc3NpbmcuCj4+Pgo+
Pj4+PiBTZWNvbmQsIHlvdSBzaG91bGQKPj4+Pj4gcmF0aGVyIGRlY291cGxlIHRoZSBjb2RlIGZy
b20gaGVhZGVyIGRlcGVuZGVuY2llcywgb3RoZXJ3aXNlIHRoaXMgY2Fubm90Cj4+Pj4+IGJlIG1l
cmdlZCBmb3IgY3VycmVudCByZWxlYXNlIChqdXN0IHVzZSBjbG9ja3Mgd2l0aCBsb25nIG5hbWVz
LCB3aXRob3V0IElEcykuCj4+Pj4gU3VyZQo+Pj4+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyxleHlub3MyMjAwLXVzYmNvbi1waHku
eWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyxleHlu
b3MyMjAwLXVzYmNvbi1waHkueWFtbAo+Pj4+Pj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4+Pj4+
IGluZGV4IDAwMDAwMDAwMC4uN2Q4NzllYzhiCj4+Pj4+PiAtLS0gL2Rldi9udWxsCj4+Pj4+PiAr
KysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3NhbXN1bmcsZXh5bm9z
MjIwMC11c2Jjb24tcGh5LnlhbWwKPj4+Pj4+IEBAIC0wLDAgKzEsNzYgQEAKPj4+Pj4+ICsjIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCBPUiBCU0QtMi1DbGF1c2UpCj4+Pj4+PiAr
JVlBTUwgMS4yCj4+Pj4+PiArLS0tCj4+Pj4+PiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcv
c2NoZW1hcy9waHkvc2Ftc3VuZyxleHlub3MyMjAwLXVzYmNvbi1waHkueWFtbCMKPj4+Pj4+ICsk
c2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPj4+
Pj4+ICsKPj4+Pj4+ICt0aXRsZTogRXh5bm9zMjIwMCBVU0IgY29udHJvbGxlciBQSFkKPj4+Pj4+
ICsKPj4+Pj4+ICttYWludGFpbmVyczoKPj4+Pj4+ICsgIC0gSXZheWxvIEl2YW5vdiA8aXZvLml2
YW5vdi5pdmFub3YxQGdtYWlsLmNvbT4KPj4+Pj4+ICsKPj4+Pj4+ICtkZXNjcmlwdGlvbjoKPj4+
Pj4+ICsgIEV4eW5vczIyMDAgVVNCIGNvbnRyb2xsZXIgUEhZIGlzIGFuIGludGVybWVkaWFyeSBi
ZXR3ZWVuIGEgVVNCIGNvbnRyb2xsZXIKPj4+Pj4+ICsgICh0eXBpY2FsbHkgRFdDMykgYW5kIG90
aGVyIFBIWXMgKFVUTUksIFBJUEUzKS4KPj4+Pj4gSXNuJ3QgdGhpcyB0aGUgc2FtZSBhcyB1c2Jk
cmQgcGh5PyBzZWU6IHNhbXN1bmcsdXNiMy1kcmQtcGh5LnlhbWwKPj4+PiBJdCdzIG5vdCAoSSB0
aGluaykuIFRoZXJlJ3MgYSBmZXcgcmVhc29ucyBJJ3ZlIGRlY2lkZWQgdG8gbWFrZSB0aGlzIHNl
cGFyYXRlCj4+Pj4gZnJvbSB0aGUgdXNiMy1kcmQtcGh5IGJpbmRpbmdzIGFuZCBleHlub3M1LXVz
YmRyZCBkcml2ZXI6Cj4+Pj4KPj4+PiAxLiBUaGlzIFBIWSBkb2VzIG5vdCBwcm92aWRlIFVUTUkg
YW5kIFBJUEUzIG9uIGl0cyBvd24uIFRoZXJlJ3Mgbm8gdHVuaW5nCj4+PiBVU0JEUkQgcGh5IGRv
ZXMgbm90IHByb3ZpZGUgVVRNSSBhbmQgUElQRSBvbiBpdHMgb3duIGVpdGhlciBpZiB5b3UgbG9v
awo+Pj4gYXQgZGlhZ3JhbSAtIHRoZXkgY2FsbCBpdCBwaHkgY29udHJvbGxlci4KPj4gVWdobS4g
V2hhdD8gU28gaW4gbW9zdCBleHlub3MgY2FzZXMsIHRoZXJlJ3MgYSBjb21iaW5hdGlvbiBvZiBt
dWx0aXBsZSBwaHlzPwo+Cj4+Pj4gZm9yIHRoZW0sIGFuZCBhbGwgdGhhdCBpcyBuZWVkZWQgZnJv
bSBpdCBpcyB0byBkaXNhYmxlIEhXQUNHLCBhc3NlcnQvCj4+Pj4gZGVhc3NlcnQgcmVzZXQgYW5k
IGZvcmNlIGJ2YWxpZC92YnVzdmFsaWQuIEFmdGVyIHRoYXQgU05QUyBlVVNCMgo+Pj4+IGluaXRp
YWxpemF0aW9uIGNhbiBiZSBkb25lIGFuZCBVU0IyIHdvcmtzLiBJZiB0aGUgVVNCQ09OIHBoeSBp
cyBub3Qgc2V0Cj4+Pj4gdXAgYmVmb3JlIHRoZSBlVVNCMiBvbmUsIHRoZSBkZXZpY2UgaGFuZ3Ms
IHNvIHRoZXJlIGlzIGRlZmluaXRlbHkgYQo+Pj4+IGRlcGVuZGFuY3kgYmV0d2VlbiB0aGVtLiBG
b3IgUElQRTMgd2UnZCBuZWVkIHRvIGNvbnRyb2wgdGhlIHBpcGUzCj4+Pj4gYXR0YWNoaW5nL2Rl
YXR0YWNoaW5nIGFuZCB0aGVuIGluaXRpYWxpemUgdGhlIHN5bm9wc3lzIFVTQkRQIGNvbWJvcGh5
Lgo+Pj4gRG9lcyBpdCBtZWFuIHRoZXJlIGlzIG5vIFVTQiBEUkQgcGh5IGNvbnRyb2xsZXIgYXMg
YmVmb3JlPwo+Pj4KPj4+IEFueXdheSB0aGUgcHJvYmxlbSBpcyB5b3UgaGF2ZSBEV0MzIC0+IFBI
WSAtPiBQSFkuIExvb2tzIG9uZSBwaHkgdG9vIG1hbnkuCj4+IFNvLi4uCj4+Cj4+IERXQzMgLT4g
VVNCRFJEIChVU0JDT04pIC0+IFBIWXM/Cj4gTm8sIGRyb3AgbGFzdCBwaHkuIFlvdSBqdXN0IHdy
b3RlIHRoZSBzYW1lIGFzIG1lIC0gdHdvIHBoeXMsIGJlY2F1c2UKPiB1c2JkcmQgaXMgdGhlIHBo
eS4gSW4gYWxsIGV4aXN0aW5nIGRlc2lnbnMgdGhlcmUgaXMgbm8gc3VjaCBjb250cm9sbGFibGUK
PiBvYmplY3QgZnJvbSB0aGUgcG9pbnQgb2YgdmlldyBvZiBvcGVyYXRpbmcgc3lzdGVtLgoKV2hh
dD8gUGVyIG15IHVuZGVyc3RhbmRpbmcsIHRoZSBwaHkgcHJvcGVydHkgc2hvdWxkIHJlZmVyIHRv
IHdoYXRldmVyIGlzCmlzIGNvbm5lY3RlZCB0byBkd2MzIFVUTUkuIEluIHRoaXMgY2FzZSBpdCdz
IHRoZSBzby1jYWxsZWQgVVNCRFJEIHBoeSAoY2FsbGVkCnVzYmNvbiBpbiBkb3duc3RyZWFtKS4g
Q29uc2lkZXJpbmcgdGhhdCB0aGUgZVVTQjIgSVAgZGVmaW5pdGVseSBhbHNvIGhhcyBVVE1JCnRo
YXQgaGFzIHRvIGJlIGNvbm5lY3RlZCB0byBzb21ldGhpbmcsIGRvZXNuJ3QgdGhhdCBtZWFuIHdl
IGhhdmUgY2xlYXJseQpzZXBhcmF0ZWQgaGFyZHdhcmUgYmxvY2tzPyBOb3csIEkgZ3Vlc3Mgb25l
IGNvdWxkIGFyZ3VlIHRoYXQgdGhpcyBVU0JDT04KaGFyZHdhcmUgYmxvY2sgY291bGQgYmUgY2xh
c3NpZmllZCBhcyBhIHN5c2Nvbi4gQnV0IEkgZG9uJ3Qgc2VlIHRoZSBwcm9ibGVtCndpdGggdGhl
IGN1cnJlbnQgYmluZGluZyBkZXNjcmlwdGlvbiwgbm9yIHRoZSBtb2RlbGxpbmcsIGFzIGl0IHJl
cHJlc2VudHMKaG93IHRoZSBoYXJkd2FyZSBpcyAodW5sZXNzIEkndmUgZ290dGVuIGl0IGNvbXBs
ZXRlbHkgd3JvbmcpLgoKQmVzdCByZWdhcmRzLApJdmF5bG8KCj4KPj4gLi4ud2l0aCB1c2JkcmQg
Y29udHJvbGxlciBjb25uZWN0aW5nIGFuZCBjb250cm9sbGluZyB0aGUgVVNCMiBhbmQgVVNCMwo+
PiBwaHlzLCBhcyB3ZWxsIGFzIGR1YWwgcm9sZSBtb2RlPwo+IFllcy4KPgo+PiBXZWxsLCB3aGVy
ZSBpcyB0aGUgRFJEIHBhcnQgaW4gdGhlIGV4eW5vczUKPj4gZHJpdmVyPwo+IERSRD8gSSBiZWxp
ZXZlIGl0IGlzIHBhcnQgb2YgRFdDMywgdGhlIHNhbWUgYXMgaW4gZXZlcnkgb3RoZXIgc3RhbmRh
cmQKPiBpbXBsZW1lbnRhdGlvbiBvZiBTeW5vcHN5cyBEV0MzLgo+Cj4+IEkgZ3Vlc3MgaXQgZG9l
cyBwZXJmZWN0bHkgZml0IHRoZSBqb2Igb2YgYSB1c2JkcmQgY29udHJvbGxlciB0aGVuIChpZiBp
dAo+PiBldmVuIGRlYWxzIHdpdGggRFJEKS4gQnV0IHRoZW4gYWdhaW4swqAgdGhpcyBicmluZ3Mg
dXAgdHdvIHF1ZXN0aW9uczoKPj4gMS4gU2hvdWxkIHRoaXMgZHJpdmVyIGV2ZW4gYmUgbmFtZWQg
ZXh5bm9zMjIwMC11c2Jjb24gYW5kIG5vdCwgZm9yCj4+IGV4YW1wbGUsIGV4eW5vczIyMDAtdXNi
ZHJkPwo+IEFyZSB5b3Ugc3VyZSB3ZSB0YWxrIGFib3V0IHRoZSBzYW1lIHRoaW5nPyBVU0JEUkQg
aXMgSVAgYmxvY2sgaW4gdGhlCj4gRXh5bm9zIGFuZCBhIGRldmljZSBkcml2ZXIuIENhbGwgeW91
ciBkZXZpY2UgYXMgYXBwcm9wcmlhdGUgaXQgaXMgLQo+IGJhc2VkIG9uIGRhdGFzaGVldCBvciBk
b3duc3RyZWFtIHNvdXJjZXMuCj4KPj4gMi4gQXJlIHRoZSBleHlub3M1LXVzYmRyZCBwaHlzIHJl
YWxseSBvbmx5IFVTQkRSRCwgb3IgZG8gdGhleSBpbXBsZW1lbnQKPj4gVVNCIHNwZWVkIGZ1bmN0
aW9uYWxpdHk/IFdoYXQgaXMgdGhlIFVUTUkvUElQRTMgc2V0dXAgZm9yIHRoZW4/Cj4gRHVubm8s
IEkgZG9uJ3QgZ2V0IHdoYXQgeW91IG1lYW4gYnkgImV4eW5vczUtdXNiZHJkIHBoeXMgcmVhbGx5
IG9ubHkKPiBVU0JEUkQiLiBVU0JEUkQgaXMganVzdCB0aGUgbmFtZSBvZiB0aGUgZGV2aWNlLgo+
Cj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
