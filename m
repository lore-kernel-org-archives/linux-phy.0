Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0A6AC4450A
	for <linux-phy@archiver.kernel.org>; Thu, 16 Jul 2026 09:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tRmNE1VIYF2Oy7rv4rq0wWsVib2eU95Y+rlGAJ3QAXc=; b=RmyRw++o2m+BqP
	kXb8DDKvPTKP1jKrUo9vOqYgm74i1l4bEYDTdr50u1kKFkO9bTTFF8L6cJQa3idmTBBZJFzsgOhxS
	2mUHiglWo1KqHjTFZQ4m4m00x2DX2Bzb/N++SVAckQibKP6BYPZgeIjSGq/2+QHipGw22gmfO+3nQ
	JgHLJxV6oE5dtagQ8Rwf6AFyo8mpKWGCA/8PWuFzaFkpnVDCNZF3AbA6qtKcLeksxFXjALsGEXdb3
	IEp2MUmoUDbFcRJjFzqKi84Kw07+a7l/Cpq7FjvJBri7nQkytmOVByE9OUQrSSsEuwRYDbdHvG8zr
	lphDEE1AA7M2NSSJeCIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkIbs-0000000Gujv-230q;
	Thu, 16 Jul 2026 09:42:28 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkIbp-0000000GujW-1bI8
	for linux-phy@lists.infradead.org;
	Thu, 16 Jul 2026 09:42:26 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-69c600f76ccso5103670a12.0
        for <linux-phy@lists.infradead.org>; Thu, 16 Jul 2026 02:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1784194943; x=1784799743; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rWQ9oJo6FYvzxfcIJtWdNxYH0ur72y3xrCIEL4tMOu8=;
        b=WL45Co7Ks+YxI3osTqN2P40I3ydvkOnGrGJ5pwPfjs816ycCFSRWKWk//PkOIFgt6g
         XHHq5SmSwwS36mENVHW7kvfgtzlhXDY/OPQeHZD+uKDnQHrTh0inzgfUOSxqx5LXzzov
         tJ4NreuM5qCyTMHoH2sav2pSiuBJ/Q3TP8ogGwNS0io/Ydba505nQihU992vkeYD23zX
         JLjnkvgyduxyzWMrXc2tAOaPFC+j/L9u9JzNebnqkle/3I7r7zQgsC81OqdS2WW5LBUh
         /B9CQlRFganhyfuKzHHnegXiJvyc6tapuGO6GDwkDDDQlKCdvBHnYpvUN3vIHx10cYGT
         TsUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784194943; x=1784799743;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rWQ9oJo6FYvzxfcIJtWdNxYH0ur72y3xrCIEL4tMOu8=;
        b=T/wyYugqrUSN9qSkx9Q1bhdk4Kx1kS7LKRsK+AZVp0iny8hrMNvZ8pkTM2kYXwMyTG
         FVDuxiEu0GtJnRr2sr1AM66phgAis26Gb8oItN2WUiz2qBseAJ6mTZQ/rOABKg0oiHtO
         Emhp2DX4Tc1X2E1HvsSYbzBtIwpJ28+Y/CR6EI4eMo7DvkBsJXFOP+UbIKJVQWGt7qnd
         7wfhxAWg+Ll3qb/wt6dFmNbocCeoK7O94S4/MhXJ7zMP1rdaagqYG6JptIUv0P8UEvOA
         B2ZB/g5niKTjNU5YokLe+1apUiPzfeay0w/uTxX7v5kYWwY6cUaC8CGuX6KyI1Xnmu0J
         Y2iA==
X-Forwarded-Encrypted: i=1; AHgh+RpV6IPjc49fAr5aCwpu7RmtfKjqPgQZCkFg7e9+KVEFLhj99vMow5+MS0jhrIeCuO/ajeQqxyQzxIo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzsVz2WH1EQW6Hz+O9BCvv9TmmhTr/8hLi3jgIQaryZomQLazh+
	9qOQHYQDirTb2kd9qkMscjy0j7MseBSLKZaLy5hmt/5HJCcLdidgGeMq0nULX/vOVFzwA8eN+Sw
	5vTOhYt4=
X-Gm-Gg: AfdE7cny8EkKYEomIb2w5fLvSKOrctphBYbk7QRWwKdQxjB0EgUknZRMRWwXWuox+cL
	I/8Td78Xnm/zxTJvPRiIhKCDDU1Wt8rtn452ztywdfRzfLxGA+7wypofQtSqgIz2z/FCgJMBEaW
	5HgFmANpGZu/fwGDFcz7Aqa8d3TCZWaHgT7FkNPoapibZDFhAwgG3dEoVlq3lurwy3ElVRNI3IQ
	X73m0a31x4fxj1AhVM3989EmAXVH6f4cwOPzmgbCn5Q7l23BljOmIqqCt+HWiOPPxM+cyX5E6/R
	bcEs89vLt7khpwHHSUDIxylrqfRShqIqIo5kiYK5ksJVqbtQ9xFaj9YoRTZuPTuNxL4rG/zW12A
	+8IhUWF0Akh6a7rgZ0vDso35e3mzcLXVV8JuIfFy619tzll7JbhK4C+AhGd7fYiCeMX21OmuiWj
	Dl3wTGtq3yImbA4VB6mtg3EAk=
X-Received: by 2002:a05:6402:51cb:b0:699:39c5:204b with SMTP id 4fb4d7f45d1cf-69c5f0be27dmr11018264a12.18.1784194942921;
        Thu, 16 Jul 2026 02:42:22 -0700 (PDT)
Received: from [192.168.0.35] ([109.77.36.131])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69cd294fb1asm4400218a12.26.2026.07.16.02.42.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jul 2026 02:42:22 -0700 (PDT)
Message-ID: <c731b03e-b550-48af-b338-37ac53018247@linaro.org>
Date: Thu, 16 Jul 2026 10:42:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260708-x1e-csi2-phy-v9-0-0210b90c04cf@linaro.org>
 <20260708-x1e-csi2-phy-v9-1-0210b90c04cf@linaro.org>
 <YSunV_lNJ8xW_y-Aa2psZavniF6mcHJlJipuj1RYWMB8Zb8yLC-gb7eEnk0XMjfwQOneMGsZM5foFKutCNhYqw==@protonmail.internalid>
 <b7baffda-b97c-4b83-8d9e-e381d0289682@linaro.org>
 <3ab676ac-919b-4a80-8dd6-71dd7f6fe06c@kernel.org>
 <-iN0mG5nS2joxEn49UrxFlORE3R6Ji3HRebfOMNMGnupMIobTBdRDvnwjRHAXHeLmGf6O4JJENVauduwZXwhiA==@protonmail.internalid>
 <b834e9a0-a61c-4912-b57c-36d571938b75@linaro.org>
 <4d7a0e59-7c34-4557-a475-8cd7fd2ad2d9@kernel.org>
 <CAFEp6-2J0WGF6g0K7s--PxciO+d9MR-SCVnrWJ3u=sgQNwA59A@mail.gmail.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <CAFEp6-2J0WGF6g0K7s--PxciO+d9MR-SCVnrWJ3u=sgQNwA59A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_024225_461017_F5171430 
X-CRM114-Status: GOOD (  23.18  )
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

T24gMTYvMDcvMjAyNiAwOTo1NiwgTG9pYyBQb3VsYWluIHdyb3RlOgo+IE9uIE1vbiwgSnVsIDEz
LCAyMDI2IGF0IDE6MTjigK9BTSBCcnlhbiBPJ0Rvbm9naHVlIDxib2RAa2VybmVsLm9yZz4gd3Jv
dGU6Cj4+Cj4+IE9uIDA5LzA3LzIwMjYgMDg6NDAsIFZsYWRpbWlyIFphcG9sc2tpeSB3cm90ZToK
Pj4+PiBBcyBleHBsYWluZWQgaW4gdGhlIGNvdmVyIGxldHRlcjogSSdtIGZvbGxvd2luZyBndWlk
YW5jZSBmcm9tIFJvYiBvbiB0aGF0Lgo+Pj4gUGVoYXBzIHlvdSd2ZSBtaXNyZWFkIGEgZ2l2ZW4g
cmV2aWV3IGNvbW1lbnQsIGJlY2F1c2UgUm9iJ3MgZ3VpZGFuY2UgaXMKPj4+IHRvIHJlbW92ZSAn
cGh5LXR5cGUnIHByb3BlcnR5LAo+Pgo+PiBJJ2xsIGp1c3QgcXVvdGUgdmVyYmF0aW0gIlBlcmhh
cHMgcHV0dGluZyB0aGlzIGluIHBoeSBjZWxscyB3b3VsZCBiZQo+PiBiZXR0ZXIgYmVjYXVzZSB0
aGUgY29uc3VtZXIgZGVjaWRlcyBvbiB0aGUgbW9kZS4iCj4+Cj4+IFRoYXQgaXMgbm90ICJyZW1v
dmUgcGh5LXR5cGUiIC0gaXQncyAibW92ZSB0aGUgbW9kZSBpbnRvIHRoZSBjZWxsIi4gSSdtCj4+
IHNoaWZ0aW5nIHRoaXMgYmFjayB0byB0aGUgRFQgc2NoZW1hIG1haW50YWluZXJzIHNpbmNlLCBJ
IHRha2UgdGhlaXIKPj4gZmVlZGJhY2sgbGl0ZXJhbGx5LCBzZXJpb3VzbHkgYW5kIGNhbm9uaWNh
bGx5Lgo+Pgo+PiBBbnkgb2YgdGhlIHRyaXVtdmlyYXRlIHdpbGwgZG8sIFJvYiwgS3J6eXN6dG9m
IG9yIENvbm9yLgo+Pgo+PiBBYnNlbnQgYSBkaWZmZXJlbnQgYW5zd2VyIGZyb20gdGhlIERUIHNj
aGVtYSBndXlzLCB2MTAgc2hpcHMgd2l0aCB0aGUKPj4gY29uc3VtZXIgZGVjaWRpbmcgdGhlIG1v
ZGUgYXMgcGVyIFJvYidzIG9yaWdpbmFsIGd1aWRhbmNlLgo+IAo+IE9uIHRoZSAjcGh5LWNlbGxz
IHF1ZXN0aW9uLCBJTU8gd2Ugc2hvdWxkIGRyb3AgI3BoeS1jZWxscyB0byAwIGFuZAo+IGRlcml2
ZSB0aGUgQy1QSFkvRC1QSFkgbW9kZSBmcm9tIHRoZSBlbmRwb2ludCBidXMtdHlwZS4gVGhlIG9w
ZXJhdGluZwo+IG1vZGUgaXMgcmVhbGx5IGEgY29uZmlndXJhdGlvbiBvZiB0aGUgbGluayByYXRo
ZXIgdGhhbiBhIGhhcmR3YXJlCj4gZGVzY3JpcHRpb24vbGltaXRhdGlvbiBvZiB0aGUgUEhZIGJs
b2NrIGl0c2VsZixhbmQgdGhlIHNlbnNvciBlbmRwb2ludAo+IGlzIGNvbnZlbnRpb25hbGx5IHdo
ZXJlIHRoZSBidXMgdHlwZSBvcmlnaW5hdGVzLiBJIGd1ZXNzIHRoaXMgY29zdHMgdXMKPiBub3Ro
aW5nIG9uIHRoZSBkcml2ZXIgc2lkZSB0b2RheSwgd2Ugb25seSBzdXBwb3J0IEQtUEhZLCBzbyB0
aGUKPiBtb2RlLWNoZWNrIGp1c3QgbW92ZXMgaW50byB0aGUgZW5kcG9pbnQgcGFyc2luZyB3ZSBh
bHJlYWR5IGRvIGluCj4gcGh5X3Fjb21fbWlwaV9jc2kyX3BhcnNlX3JvdXRpbmcoKS4gSXQgY2Fu
IGJlIGEgbWluaW1hbAo+IGZ3bm9kZV9wcm9wZXJ0eV9yZWFkX3UzMihlcCwgImJ1cy10eXBlIiwg
Li4uKSBzYW5pdHkgY2hlY2sgYW5kIGFkZGluZwo+IEMtUEhZIGxhdGVyIGlzIHRoZW4gYSBvbmUt
bGluZSBjYXNlIE1FRElBX0JVU19UWVBFX0NTSTJfQ1BIWQo+IHdpdGggbm8gRFQgQUJJIGNoYW5n
ZS4KClNvIEkgdGFrZSB5b3VyIHBvaW50IG9uIGxpbmstdHlwZSAtIGluIHRoZW9yeSB5b3UgY2Fu
IHNlbGVjdCB0aGUgbW9kZSAKZnJvbSB0aGUgc2Vuc29yIEAgY29uZmlnIHRpbWUuIFRoZSBlc3Rh
Ymxpc2hlZCBwcmFjdGljZSBpcyB0aGF0IHRoZSAKY29uc3VtZXIgZGVjaWRlcyB0aGUgUEhZIG1v
ZGUsIHNvIGlmIHdlIHdhbnRlZCB0byBtYWtlIHRoaXMgYSBfcnVudGltZV8gCmNvbmZpZ3VyYXRp
b24gLSB0aGVuIHRoYXQgc2hvdWxkIGJlIGluZm9ybWF0aW9uIHRoYXQgaXMgcGFzc2VkIHRvIHRo
ZSAKUEhZIHZpYSBjb25maWd1cmUoKSBub3QgdmlhIERUIGJlY2F1c2Ugd2UndmUgc2FpZCBpdHMg
YSBsaW5rLW1vZGUgCmFic3RyYWN0ZWQgZnJvbSB0aGUgRFQgZW50aXJlbHkuCgpJbiB0aGUgZXh0
cmVtZSBjYXNlIEkgaGF2ZSBhIHVzZXItc3BhY2UgdXRpbGl0eSBzZWxlY3Rpbmcgc2Vuc29yIG1v
ZGUsIAp3aGljaCB0aGUgQ1NJIGNvbnRyb2xsZXIgcGFyc2VzIGFuZCB0aGVuIHNpZ25hbHMgdGhl
IFBIWSB0byBzd2l0Y2ggbW9kZXMuCgpJZiBpdHMgYSBydW4tdGltZSBjb25maWcsIHRoZW4gaXRz
IGEgcnVuLXRpbWUgY29uZmlnIGFuZCBEVCBzaG91bGQgYmUgCmV4Y2x1ZGVkIGZyb20gdGhlIG1v
ZGUgc2VsZWN0aW9uIHRyZWUuCgpJJ20gaW4gZmFjdCB3aWxsaW5nIHRvIGVudGVydGFpbiB0aGlz
IGlkZWEgLSBidXQgaXQgd2lsbCByZXF1aXJlIHBhc3NpbmcgCnRoZSBQSFkgbW9kZSB0byBjb25m
aWd1cmUoKSBub3QgY29uc3VtaW5nIC0gRFQgZGF0YSBmcm9tIHRoZSBlbmRwb2ludC4KCk15IGNv
cmUgcG9pbnQgaGVyZSBpcyBib3RoIGFja25vd2xlZGluZyBSb2IncyBwb2ludCB0aGUgY29uc3Vt
ZXIgZGVjaWRlcyAKdGhlIG1vZGUgLSBhbmQgX2lmXyB3ZSBnbyB0aGUgcnVudGltZSBjb25maWd1
cmF0aW9uIHJvdXRlLCB0aGVuIGFjdHVhbGx5IAptYWtpbmcgdGhlIHNlbGVjdGlvbiBAIGNvbmZp
Z3VyZSBub3QgYXQgcHJvYmUvZHQgcGFyc2UgdGltZS4KCkkganVzdCB3b25kZXIgaWYgdGhlcmUn
cyBhbnkgcmVhbCB1cHNpZGUgdG8gYWxsIHRoYXQgYWRkaXRpb25hbCB3b3JrIGFuZCAKZGVsYXkv
Y2h1cm4uCgo+IE9uIGRhdGEtbGFuZXMgbnVtYmVyaW5nLCBJIGRvbid0IGhhdmUgYSBzdHJvbmcg
b3BpbmlvbiBoZXJlLiBLZWVwaW5nCj4gdGhlIGN1cnJlbnQgMC1iYXNlZCB2YWx1ZXMgaXMgZGVm
ZW5zaWJsZSwgaW4gdGhpcyBkcml2ZXIgdGhlIHZhbHVlIGlzCj4gdXNlZCBhcyBhIHBoeXNpY2Fs
IGxhbmUgaW5kZXggYW5kIGl0IHNlbGVjdHMgdGhlIHBlci1sYW5lIHJlZ2lzdGVyCj4gYmFuayAo
MHgyMDAgKiBuKSwgc28gMCBtYXBzIHRvIHBoeXNpY2FsIExOMC4gSW4gdGhhdCBzZW5zZSAwLWJh
c2VkIGlzCj4gYSBmYWl0aGZ1bCByZXByZXNlbnRhdGlvbiBvZiB0aGUgcGh5c2ljYWwgbGFuZSBw
b3NpdGlvbiBvbiB0aGUgU29DLgo+IAo+IFJlZ2FyZHMsCj4gTG9pYwoKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
