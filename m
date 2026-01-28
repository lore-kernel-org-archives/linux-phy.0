Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C460D46C0A
	for <linux-phy@archiver.kernel.org>; Wed, 28 Jan 2026 22:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CpQbtwmdDPu8DBXVR3yw6m4LIekbsZ8uBniSG5IpcrA=; b=dn8v+Czarp/hkJ
	fhUJeByQNDwBmvj2qyazKv/vy/YcyOU0fanj8OmCPkqHKYIrgMXehwbSF5RL8HiqpZ2cSYK+jxLRa
	lE7DYbaHhqZkHxlKFplNf0Mhzng2D83pMIzyS4h7AZrg0rQU0fvl7vrXo40CYW64coh1RYlXZ6N8S
	YXay4TageA5ftz61kw2eXJT3vvhWqmQN8lQDrEVYkNLzvQwd1runCcunS6ynagfJBkNUVjdDiWQ1j
	87oVqMKiG167UK4CEm2y8cTMbbvSBaGTsBjPY5Y7OJIyAwORMBpsXmZZIRPPnmrYxuWDhoS8r35Lm
	eUpveorzSa0B8GN1bkDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlE7S-0000000GtMs-2FqP;
	Wed, 28 Jan 2026 22:34:38 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlE7P-0000000GtLV-1Lze
	for linux-phy@lists.infradead.org;
	Wed, 28 Jan 2026 22:34:36 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-432d2c7dd52so312932f8f.2
        for <linux-phy@lists.infradead.org>; Wed, 28 Jan 2026 14:34:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769639673; x=1770244473; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mnUDiJDYQRPq0HtYELggvMNOjTwVFLClGtpo/kjL3E8=;
        b=spmTnx9xcnlcUveT10bRREz0E/H4FgFvyakLcAh8sDbkLs04hmrMGW2g0y38oXU+Qw
         2H8/uUqMxPQfMFxba3sz7hQvTEcRXb3Ov65+YPNnU2rtLVHugSiMpT4A81kquAbZtjEN
         P+e5riG+mc5cDxx+KIy1hNPxPnahNRvchVWmnrlhaby//3z+7WfsukrnnNRGPsZPXl6h
         DWUnB70I+nsdzsUu1/k5KcqoRZ3LSUfEIVIHYBbmYjzc6JZi6bjdeIhAqARGiA+pdzP0
         Pfgc7fPpztgaU0pE5yLG3DZHbKzTvAad7/G8rN2N89l7Q+c9nefzQiKysa5GLmvp4wso
         vGtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769639673; x=1770244473;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mnUDiJDYQRPq0HtYELggvMNOjTwVFLClGtpo/kjL3E8=;
        b=QEctmOKcgmvHnUwDMBub66+t4I5y1J8McU/oM7VDFUDm7QtQq3L9DsMFuDco6EYEXx
         clq9jGf6y14PlPVRgFogJk2UMQnllhAGozOxLERrd6r3qxA+Ld9a8+myEWY8vCBLsLQ5
         uImpoYc/tNgVVQMUeP17G/nJoHJLPjvJ2m1WY0yEInaXddz85v3doqT1iiofnHNQ3wqd
         dl6yi3Q/FlWkusbQDcScYj6acHF5qA5VxOcv6waCxpqV7f5s+A580eBUhzs/0Fj4wa7u
         sVnJVFoAO1WftXZfX7+JwoJmdrHHxmjSzg91hSeYhwqAKavH3APbMcVzFgaoWfYht2sK
         Vr3A==
X-Gm-Message-State: AOJu0Yyrf8kKBvOSsH5PXwHgRYGOHuYKb7N/XBkUWP9PoCO/WhcA9a/Y
	Sk2biJ+Nl98bOO3ch7Nz3u3ihXpNBhqsyFzkEBST6Pdza+jQmOc/UB45fsGn7kzxISM=
X-Gm-Gg: AZuq6aKhKkMqrV9lvqAYfoZKnpyb+DANsxvC+PBGUQgGe70Dm3cpLfXJUuux/ECzGFA
	yBI4Ujwo+ni7EkqXQ2/FJWHV41wwG17ndM8fHpqT1VVXpepYxTfhI7F6QgBYlcbblE9Z0ZE3VfQ
	UnOjEHIXRzGyW8Ud3Qma8fVowIXFZsF+ainHqT8sWZIxoU1HzWeUM+lEidd7BIMeZ2akfDgzDoH
	0W5YCKlKJIZ1GU4lqwGBFHAZap6+yAgm02RsBtU9V20FFFNj5syjMbcmOUPP/GOqLoeGJ57KjgT
	lMlI4XNB75eZ06NAjfIwC15DJw+GZHD/eE8Lf/AWoRf8LFztsQw4n8KJCDMCuOkL9j0a8+iSzuk
	i5auoOKOZ+yULofTF5nXQgNxSquW7GikmNMXZVgPAJDMBJgGqiFnnhZC38AUvlLtLpgM5fVUrCK
	H21h3TZGDasvNUzSdAPMc/1uFMCvHrYxSSiw==
X-Received: by 2002:a05:6000:186e:b0:430:f40f:61ba with SMTP id ffacd0b85a97d-435dd1c0df0mr10119608f8f.41.1769639673349;
        Wed, 28 Jan 2026 14:34:33 -0800 (PST)
Received: from [192.168.235.30] ([212.129.85.73])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e131cfc9sm9819343f8f.21.2026.01.28.14.34.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 14:34:33 -0800 (PST)
Message-ID: <9936b5bd5f1e19f65c199d36ce54bb0af0e44b85.camel@linaro.org>
Subject: Re: [PATCH next v2] phy: google: fix build dependency for Google
 Tensor USB PHY
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Roy Luo <royluo@google.com>, Vinod Koul <vkoul@kernel.org>, Neil
 Armstrong	 <neil.armstrong@linaro.org>, Peter Griffin
 <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Joy
 Chakraborty <joychakr@google.com>, Naveen Kumar	 <mnkumar@google.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 kernel test robot
	 <lkp@intel.com>
Date: Wed, 28 Jan 2026 22:34:31 +0000
In-Reply-To: <20260128-next-v2-1-624bdae8e6d0@google.com>
References: <20260128-next-v2-1-624bdae8e6d0@google.com>
User-Agent: Evolution 3.56.2-8 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260128_143435_720959_5BB8A923 
X-CRM114-Status: GOOD (  12.38  )
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

T24gV2VkLCAyMDI2LTAxLTI4IGF0IDIxOjIyICswMDAwLCBSb3kgTHVvIHdyb3RlOgo+IFRoZSBH
b29nbGUgVGVuc29yIFVTQiBQSFkgZHJpdmVyIHVzZXMgdGhlIFR5cGUtQyBzd2l0Y2ggZnJhbWV3
b3JrIHRvCj4gaGFuZGxlIG9yaWVudGF0aW9uIGNoYW5nZXMuIEhvd2V2ZXIsIHRoZSBLY29uZmln
IGRpZCBub3Qgc3BlY2lmeSBhCj4gZGVwZW5kZW5jeSBvbiB0aGUgVFlQRUMgZnJhbWV3b3JrLCBs
ZWFkaW5nIHRvIHVuZGVmaW5lZCByZWZlcmVuY2UKPiBlcnJvcnMgd2hlbiBidWlsZGluZyBmb3Ig
YXJjaGl0ZWN0dXJlcyBvciBjb25maWd1cmF0aW9ucyB3aGVyZQo+IENPTkZJR19UWVBFQyBpcyBj
b25maWd1cmVkIGFzIGEgbW9kdWxlIHdoaWxlIENPTkZJR19QSFlfR09PR0xFX1VTQgo+IGlzIGNv
bmZpZ3VyZWQgYXMgYnVpbHQtaW4uCj4gCj4gQWRkICdkZXBlbmRzIG9uIFRZUEVDJyB0byB0aGUg
UEhZX0dPT0dMRV9VU0IgZW50cnkgdG8gZW5zdXJlIGFsbAo+IHJlcXVpcmVkIHN5bWJvbHMgYXJl
IGF2YWlsYWJsZSBkdXJpbmcgbGlua2luZywgYW5kICdDT01QSUxFX1RFU1QnCj4gdG8gZXhwYW5k
IHRlc3QgY292ZXJhZ2UuCj4gCj4gRml4ZXM6IGNiY2U2NjY2OWM4MiAoInBoeTogQWRkIEdvb2ds
ZSBUZW5zb3IgU29DIFVTQiBQSFkgZHJpdmVyIikKPiBSZXBvcnRlZC1ieToga2VybmVsIHRlc3Qg
cm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4gQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9v
ZS1rYnVpbGQtYWxsLzIwMjYwMTIxMDgyNS5FTHJwUWVFRC1sa3BAaW50ZWwuY29tLwo+IFJldmll
d2VkLWJ5OiBQZXRlciBHcmlmZmluIDxwZXRlci5ncmlmZmluQGxpbmFyby5vcmc+Cj4gU2lnbmVk
LW9mZi1ieTogUm95IEx1byA8cm95bHVvQGdvb2dsZS5jb20+Cj4gLS0tCj4gQ2hhbmdlcyBpbiB2
MjoKPiAtIEFkZCAnKFRZUEVDPW4gJiYgQ09NUElMRV9URVNUKScgdG8gYnVpbGQgZGVwZW5kZW5j
eSB0byBleHBhbmQgdGVzdAo+IMKgIGNvdmVyYWdlIGFzIHN1Z2dlc3RlZCBieSBBbmRyw6kgRHJh
c3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgo+IC0gS2VlcCBQZXRlcidzIFJldmlld2Vk
LWJ5IHRhZyBiZWNhdXNlIHRoZSBjaGFuZ2Ugc3VnZ2VzdGVkIGJ5IEFuZHLDqQo+IMKgIGlzIGEg
dHJpdmlhbCBpbXByb3ZlbWVudC4KPiAtIExpbmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL3IvMjAyNjAxMjEtbmV4dC12MS0xLWMxODA2OGIwOTFiOUBnb29nbGUuY29tCj4gLS0tCj4g
wqBkcml2ZXJzL3BoeS9LY29uZmlnIHwgMSArCj4gwqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKykKClJldmlld2VkLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8u
b3JnPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
