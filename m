Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1397FC3DA61
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jul 2024 08:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGFSGxhEHVclFKAodzMt4chAJFP8h4Kn2S1gd0EdOko=; b=yTfBKlml0XJ42l
	QW31uK6CbEt/SVEpPnfLVTrIPI8ogh0B37bH+jz+FSYO2U+mcqtQ4aVqEB7zfwgCTAhI6bFwsyAyn
	LWT00wziqe6RBCqJAv32XsKfL3DfUlOiYHNbQ2unUOR0NmJkhAyEkGeJPZIRk2V2CbeNBgsK7Ou1Y
	xRCwuU0gJqy1iRNE+7XYOSP8RaHMlGuFsM+wHbJTg5o75IbVeQ7DvTuLLVw8vDVuZuTGe6eT+lukY
	anpkgP0tiWIq6DLDbHwQ2Tvh4ITLEZKW7SUQce6UMYDsoKAEdsuBPhNPnvrBlyFOHx4iBiLMYy7+r
	784FBq4N1zOJV7TnlJpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYiHJ-0000000EHiv-36cp;
	Tue, 30 Jul 2024 08:32:17 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYiAS-0000000EEGl-1O5H;
	Tue, 30 Jul 2024 08:25:15 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1fd66cddd4dso36196085ad.2;
        Tue, 30 Jul 2024 01:25:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722327911; x=1722932711; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qckIi2AoZEXP83GJ4r7RDX66S9uWuMwxkLH/PVxFmgg=;
        b=QYn0BH3LS7y+CaI/gLM6a9uFMgi8nDjptT3hnYs/BJWlO6a5XHaMzPOpVcS2li8mSe
         c8NMKW2nVkcEIcQn/iSlRL8elqIiwtpY+AXs6iv/05fFeN5zwUI1sKpRe1gKBMAzzIOM
         BJdBajf/ktXqfRnEamWLnHXY0GUVjrLreTLn03h8Dcv+M18kx2PiZC2QgrEAhKSzZTjk
         NZO0zhr8DrCwUd62wzmIEOc8g5pfSg++f8gmFLi1EDh3vTP+uDok7XXCjNu/rXyNpspV
         H4Z09HCkbS6pxBQeTdmwmGI15C9Fi6w7v/aVJHZ08F7YbdJlbReQxkZsfucZoItBnN89
         HiFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722327911; x=1722932711;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qckIi2AoZEXP83GJ4r7RDX66S9uWuMwxkLH/PVxFmgg=;
        b=qtIpNYne4SYaK8IE7QA/UfSGstY3L/x4NHKVLQvV5huQh20eNDwiYAcmgX2u/H/GzP
         su9SREO7Wa6Q1+Oax9n+cEAvKmHxr9+sBBV8xexLTq/1Ad3UvE7uWHbyvb45rNv0UTAW
         sMWA6pTUUK5zguyGhT641Cm7uFo4VHR+lDrm6P2zo0rUQ+7rE3ec8ivByoBstDz5ly3v
         t+9rFkZjZ418LZD0rw+EVoBjfJAKzDuSuAzraGjUaAGZvLfa8fP65O/RgE4akHdhDTui
         rWdTO920nf8yVTyEnSGtNpK/IGILOkkisGX9O6jKiF9gAUYh13KKfR8j9KIbzjHOafaE
         He0g==
X-Forwarded-Encrypted: i=1; AJvYcCVpfth7La34b2swcmTE2Y0zqQoN9K206CgFepsIiA/r9HdaqSwHUzJNyAe7IyBpf5ZdEU8TfWSkQaVCJsrqYAT9Sm09OKqi39mED8WITQ==
X-Gm-Message-State: AOJu0Yzbf69+jpoPN3XeMyMh+ER5LwsQZ50aJLs5idKqwU+W+ftTPR1k
	u3YYJ2NVJvFgszaDPaMBvkz7gi0Xx539f8vZ9nXhAgZj0x3C8G8e33DcxA==
X-Google-Smtp-Source: AGHT+IGSXVT2EcIrf/DG6e2iDLAmk7jt5supjJuhp1uB2Uz5k5Nt71PCi2lOzcchFy6FE+586xfuYg==
X-Received: by 2002:a17:902:fd08:b0:1fd:6d6d:68e7 with SMTP id d9443c01a7336-1ff048b07b9mr110591895ad.43.1722327911278;
        Tue, 30 Jul 2024 01:25:11 -0700 (PDT)
Received: from [172.19.1.53] (60-250-192-107.hinet-ip.hinet.net. [60.250.192.107])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fed7ee1234sm96172415ad.165.2024.07.30.01.25.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jul 2024 01:25:11 -0700 (PDT)
Message-ID: <19898579-972a-4193-8b4e-1d7de931e151@gmail.com>
Date: Tue, 30 Jul 2024 16:25:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: phy: nuvoton,ma35-usb2-phy: add new
 bindings
To: Krzysztof Kozlowski <krzk@kernel.org>, vkoul@kernel.org,
 kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240729061509.83828-1-hpchen0nvt@gmail.com>
 <20240729061509.83828-2-hpchen0nvt@gmail.com>
 <c4c2b30a-8ff9-4fc4-a1ed-adcd366d15a7@kernel.org>
 <37f1ecdc-9d98-4681-803a-75442fe04ab3@gmail.com>
 <e82d746a-5881-43c1-8439-44a53fda107a@kernel.org>
Content-Language: en-US
From: Hui-Ping Chen <hpchen0nvt@gmail.com>
In-Reply-To: <e82d746a-5881-43c1-8439-44a53fda107a@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_012512_470846_9A95F6F6 
X-CRM114-Status: GOOD (  10.05  )
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

RGVhciBLcnp5c3p0b2YsCgpUaGFuayB5b3UgZm9yIHlvdXIgcmVwbHkuCgoKCk9uIDIwMjQvNy8z
MCDkuIvljYggMDQ6MTAsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24gMzAvMDcvMjAy
NCAwOTo0NCwgSHVpLVBpbmcgQ2hlbiB3cm90ZToKPj4+PiArCj4+Pj4gKyAgbnV2b3RvbixzeXM6
Cj4+Pj4gKyAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxl
Cj4+Pj4gKyAgICBkZXNjcmlwdGlvbjoKPj4+PiArICAgICAgcGhhbmRsZSBvZiB0aGUgc3lzdGVt
LW1hbmFnZW1lbnQgbm9kZS4KPj4+IERlc2NyaWJlIHdoYXQgaXMgaXQgZm9yLgo+PiBCZWNhdXNl
IHRoaXMgZHJpdmVyIGhhcyBzb21lIHN0YXR1cyBiaXRzIGxvY2F0ZWQgaW4gdGhlIHN5cywgaXQg
aXMKPj4gbmVjZXNzYXJ5IHRvIHJlZmVyZW5jZSB0aGUgc3lzIGxpbmsuCj4gRGVzY3JpYmUgaXQg
aW4gdGhlIGJpbmRpbmcgLSB3aGF0IHVzYjIgcGh5IG5lZWRzIHRvIGRvIGluIHN5c21nbXQgbm9k
ZS4KPgpPa2F5LiBJIHdpbGwgYWRkIHRoaXMgZGVzY3JpcHRpb24gdG8gdGhlIGJpbmRpbmcuCgoK
Pgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKCgpCZXN0IHJlZ2FyZHMsCgpIdWktUGluZyBD
aGVuCgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
