Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13CD0C53200
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jul 2026 19:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zJnkuZ4BuAxnHi1Y5mKBa4WSGByUV3akVCEvod1WpM4=; b=swAEbIRuFWlxxU
	7o/d98LcfAH4+WJwfW7Gb5iu0eVPxsfFgsj2rZ6DneGnTHC9OBvqnOYtpPe8/MWqJkTwsx02KHDjs
	bquDYOpoiWdGhYV2tl2izndMQa2sGBTNlSjtEUZeHPjP+LMvFssZ70nAu8sC2Cwf5XpQhLas7rqlx
	hmFUVZoiqK0pLoA9kOwgV92TOwgTbsljWzRR49Q8ohKvVmROSbif0nEO4PfYOlW0AXecnyV/Atzik
	gMcqpINr9n0FT7xvimsV5BqEOYZuKpyIO1x0LmegO/1RK13y9rLX/cVyc2lM7KxRgky8OMv5CX5Oe
	qGUH8Jy3r/z0P7uQYGLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpAPa-00000008uxT-2Egi;
	Wed, 29 Jul 2026 19:57:54 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpAPX-00000008uww-2p4D
	for linux-phy@lists.infradead.org;
	Wed, 29 Jul 2026 19:57:53 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-5b014810feeso170712e87.1
        for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 12:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1785355068; x=1785959868; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=LE8yxChc+WSkATkEhDd8gBfNPkNIzWWJVjtjI5ufJCo=;
        b=D0gcbAHvgaXgq+WFGqcImBRI0PCruenCOU8ZOlFMmCyRtnn1q271BD0EdjGkY4DPfR
         BM0x49YWDtzdcD+cgTsUNMhLf00e3UfGUEGy5hvp5g3Hgor2I7wgLnr484iYb+uivT4p
         9/PdeA6x9p8wp/Pl7YNUA3OO0rQ9mHhuo8olWAIEJQmTWiJwOEl9PWqmPufDCq7AnUB9
         Y1MXhcUEP90QMqit4qB4NGVGow/64UbMIJuoBtB0QIzDkBcCJ4VZBJCuTckosvnVsIfd
         7P7mdGBlCRC5sDuHtEu8Vyq8fxi4Cpink+65IoCObF/6MpVSFdWhukROscrU0O9OWdd7
         ZM4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785355068; x=1785959868;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LE8yxChc+WSkATkEhDd8gBfNPkNIzWWJVjtjI5ufJCo=;
        b=PJeDcMEgR0iesgYa0Z5MA37tV9ozd9PgdC/FPhLDOZA6yZF2dELHPPr6lvTXySxZBZ
         yMrtXF8KkL3QyjGjk4ADfAC39ng2KsZRG2bf165FVGeIsAm0Uz+BIAXDrtEgHOgqm7pF
         raqzn9t31dXX5E1VUjRcGUVRvg5O6idGcg4+7sasY8O329jR9cA0tchykiqGTa7b7LKS
         0K80833Om0jYSfXGXFGpK3tW7GwAmYxFMiV+jxMyo822WVeajtpIFZll5/zHHrtrC614
         giwXYflZYYJug7oQDCWiXT0MrM4T/wZjWr7r4AxwgD70jJ5br8ohzMwAoYYwbmRH4+vK
         51Ww==
X-Forwarded-Encrypted: i=1; AHgh+RoQkutOS7s28KTsNMv5KgOVIWiTDJT9Gi4tzZswk3IOBg096VfDoMnmefjH8EV+N8pYu7FKU1Hs82w=@lists.infradead.org
X-Gm-Message-State: AOJu0YwEBpGemIOcViBU87hsUyKv3taV+Ly4IGW8RUtAEwAoqVEMVPUM
	tVmMfBvKnWb19V6Q+Vri301Mso4uzoWIegUEof1cpdFO/9CgE0hC2UURjXURftOM+WQ=
X-Gm-Gg: AR+sD13m9nGICSBULL5ZT0fBPBaM8ZTR89iS3uSyVPtScMg/PXaQXysNmno2lVZUNT+
	F/ZWQsglQ/CZgK1RrkU/CsCKDq2KKLCi+eqgy6+wsbbM5KXMFCq1EiMO8OOG34x5AsqbIFT9kIc
	39rA2QGHfU9Egsd6MZyT8uRRVLAgp2EqGuc1sunMeDL0VRTFKxIrHm8Tsc2Z8z45A1GyzAjDkjW
	zW7lrUYTkOQslXCLGsa9rUFJUExjvWoSyqK9ynlcILod4Xe1Sice4/McNXtjTtAIQtMO4oVK5U3
	f4bPfq2ZRCo8XwBKSD2AdvfpKLOMZc4f12FXt/XG0OwKJiV64LjPfG8JyeDSfZ20AftNijsLMMX
	UdQzxDUD2odRnuEkRxM2Sszz8ISbdE+rqPsEGuCN4tdAyCSevW+LKvb8nR7W2jj07RYc4xP7SnB
	Sy/GaMDnS8xT+VelPeunn50MJ59dlG33YD+rr5R5YSLi8bt72gT8P8XCX+Se1Nfh2VBtTFk3lOx
	2q5fgFyr33QXgLBPSrCJPpprata3HL/jwLqq2UTgB5gIMKrbjCmXg==
X-Received: by 2002:a05:6512:2250:b0:5b1:5e89:30f6 with SMTP id 2adb3069b0e04-5b2da4cfa64mr16335e87.3.1785355068442;
        Wed, 29 Jul 2026 12:57:48 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b2d78ea812sm572610e87.43.2026.07.29.12.57.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jul 2026 12:57:47 -0700 (PDT)
Message-ID: <99ffd9e6-f47b-45cc-a039-d8cd5dacc28c@linaro.org>
Date: Wed, 29 Jul 2026 22:57:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY
 schema
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260727-x1e-csi2-phy-v14-0-27d1bf477593@linaro.org>
 <20260727-x1e-csi2-phy-v14-1-27d1bf477593@linaro.org>
 <1e1bc17a-4c7a-4c08-b0c8-2a2ff31fe870@linaro.org>
 <e9cbff02-fd47-453d-8743-8816560f0f6b@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <e9cbff02-fd47-453d-8743-8816560f0f6b@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_125751_759071_6E543AB3 
X-CRM114-Status: GOOD (  10.97  )
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

T24gNy8yNy8yNiAyMzowNiwgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPiBPbiAyNy8wNy8yMDI2
IDIxOjAzLCBWbGFkaW1pciBaYXBvbHNraXkgd3JvdGU6Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGRlc2NyaXB0aW9uOgo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgTG9naWNhbCBsYW5lIGluZGljZXMgMC0zLCBub3QgcGh5c2ljYWwgcGFkIHBvc2l0
aW9ucy4KPj4KPj4gSW4gaGFyZHdhcmUgZGVzY3JpcHRpb24gaXQncyBwaHlzaWNhbCBkYXRhIGxh
bmUgaW5kZXhlcywgdGhlIHNhbWUgaXMKPj4gc2FpZCBpbgo+PiB2aWRlby1pbnRlcmZhY2VzLnlh
bWwgZG9jdW1lbnRhdGlvbiwgdGhlIG51bWVyYXRpb24gc3RhcnRpbmcgZnJvbSB6ZXJvIGlzCj4+
IHNlbGVjdGVkIHRvIGZvbGxvdyBldmVuIGJpdHMgaW4gQ1NJX0NPTU1PTl9DVFJMNSByZWdpc3Rl
ciAoRC1QSFkgbW9kZSk6Cj4+Cj4+ICogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvCj4+IGFsbC81
OTMzMWFhNy04NDMwLTQ3NTQtODYxYy00YmE2YTQ4MTBjY2RAb3NzLnF1YWxjb21tLmNvbS8KPiAK
PiBJJ20gbm90IHN1cmUgd2hhdCB5b3UncmUgYXNraW5nIGZvciBoZXJlIC0gdGhpcyBleGFjdCB0
ZXh0ID8KPiAKClJldHVybmluZyB0byB0aGUgZGVzY3JpcHRpb24gb2YgJ2RhdGEtbGFuZXMnIHBy
b3BlcnR5OgoKPiBMb2dpY2FsIGxhbmUgaW5kaWNlcyAwLTMsIG5vdCBwaHlzaWNhbCBwYWQgcG9z
aXRpb25zLgoKTG9naWNhbCBsYW5lIGluZGV4IGlzIHRoZSBzYW1lIGFzIGEgcG9zaXRpb24gb2Yg
YSBwaHlzaWNhbCBsYW5lIGluZGV4IGluCnRoZSAnZGF0YS1sYW5lcycgYXJyYXksIHRoaXMgYXJy
YXkgZGF0YSBjYW5ub3QgYmUgImxvZ2ljYWwgbGFuZSBpbmRpY2VzIi4KCkEgdmFsaWQgZGVzY3Jp
cHRpb24gaXMgZm91bmQgaW4gdmlkZW8taW50ZXJmYWNlcy55YW1sOiAiQW4gYXJyYXkgb2YKcGh5
c2ljYWwgIGRhdGEgbGFuZSBpbmRleGVzIi4gU28sIGl0IHNob3VsZCBiZSBhbiBhcnJheSwgYW5k
IHNwZWNpZmljYWxseQphbiBhcnJheSBvZiBwaHlzaWNhbCBkYXRhIGxhbmUgaW5kaWNlcywgdGhp
cyBjb250cmFkaWN0cyB0byB0aGUgZ2l2ZW4KZGVzY3JpcHRpb24gZm9yIENTSVBIWS4KCkhlcmUg
dGhlIG9wZW4gcXVlc3Rpb24gaXMgaG93IHBoeXNpY2FsIGxhbmVzIG9mIENTSVBIWSBhcmUgbnVt
ZXJhdGVkLCB0aGlzCnJlcXVpcmVzIGEgdmVyYm9zZSBjb21tZW50LiBGb3IgaW5zdGFuY2UgUXVh
bGNvbW0gQ1NJUEhZIGNvbmZpZ3VyZWQgaW4gRC1QSFkKY29tYm8gbW9kZSAodHdvIHNlbnNvcnMg
YXR0YWNoZWQpIGhhcyAyIG9yIDMgZGF0YSBsYW5lcyBhbmQgMiBjbG9jayBsYW5lcywKZm9yIHN1
Y2ggYW5kIG90aGVyIGNhc2VzIGEgJ2RhdGEtbGFuZXMnIHByb3BlcnR5IGRlc2NyaXB0aW9uIHNo
b3VsZCBiZSBjbGVhcgphbmQgdW5hbWJpZ3VvdXMgdG8gYWxsb3cgYSB2YWxpZCBjb25maWd1cmF0
aW9uIHRvIGJlIHByb3ZpZGVkLgoKLS0gCkJlc3Qgd2lzaGVzLApWbGFkaW1pcgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
