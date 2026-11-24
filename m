Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A573606A693
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 10:16:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DRKFGW1+;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=pjHUdjwq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=EzuO+8otp60JIqV6K0yrxezW4BLT9H+RVVdPXeTyEvs=; b=DRKFGW1+BPe5TVII/VYDr5+yC+
	AsI8MRuxGVIwgdxa1aCGUd9gldfkxtzy33WGlhU/ZtFoZHm/+eDz1IydKcvw2UuMrKYTH1uP4CcTl
	zlFLkkPlA7H6PXuPUb65n/68Aml6MaJwKZVX/CjfF71Fj3imkwUizJpQ5Q1Fzd14Zjfl0FeS3xeDK
	uCcnwVy6ngw7XndVoxjELQiD3P4ewubbYKfSY/e+YNOy2oV7otylUDTLdkPLODDuKYPfMth4Oszc0
	gq0N1d55OnntICkKIQOU0KUV1Wu/JQ+WPI+4VeRiTt8NgArEGwsfrAZ30hJEHU5Jam1nJZSKsCADB
	jUyMpUsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVnZF-00000006CMt-462c;
	Tue, 24 Nov 2026 10:16:05 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVnZC-00000006CM8-394b
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 10:16:05 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-3adef2bf7acso3359351fa.1
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 02:16:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1795515360; x=1796120160; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=RrKfr9NI9CivHaA8pHjFoPu8oHwiXk5e1C77F3AOha0=;
        b=pjHUdjwqKq3dJZMoEgYIHrUmjs4MfZpkIkAm4Df7E0xCjAT2CEjxTcoCMms3PAGb4J
         mMv7hRrk46O6rRDkIJqm2mSx/t1irEIusJF4qj+LSTMLOPFoCSiXnP1Yeju+jdJOCUHJ
         QABWZpRqTCTrJ3ZguF0DSdljDDBxo92V9TkbGctikihDe1rkSDKBkLim5qwEVOY0qNFy
         HmDq/itrGIDQ/cQRHKsy76fIaJ1TNT7OupADVAW8IhoBGO/zrjnFcrSH2GjX4Wtbazcw
         PY0GxXERk8V8Bw59pUcHRRogpCd9uJHdv1ppT5ZxygXRLdT6lwNrVLS3jL55AzwHww5Z
         4UkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795515360; x=1796120160;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RrKfr9NI9CivHaA8pHjFoPu8oHwiXk5e1C77F3AOha0=;
        b=x99YbwYqGUjB8SakM+3KzYxRia1u3Lvn1fEZ4b74bany2da16iCAWm/NCMZyy/+sSn
         9K1W4kZGQZxaZF8YXBhLsz+FFqS7VO8G4o9y17V5268wMzxglBST+Rw2tqJWVXuBRqIt
         xosPqRG19JBbUnSndtJloWGBJDG05JsLf1EY0LGHgKOoun8CIXqYeF3o8K+BkSgwKg+k
         TzcsBFtui2tbdfeUwWWf1ATCLYJwQPK1PksiOhVj69XLKad0GBzDonm2le3xmKEnrlh3
         +A1IQFcbAbNL071b+gCmzR3qBtpplbla80Ci6AU9p1qLjn8zfkkibYsRPpt1e95tExjy
         WI6w==
X-Forwarded-Encrypted: i=1; AL+hErG7DaTdevC1yb/3GBaiFiPoS2wW96DTJTyFBXxikvHllAO7DEkgZ4p5+toBtOWuyJCve4Ni7tZFzLs=@lists.infradead.org
X-Gm-Message-State: APuU4Z8I6u98jGn/uxEGhbWHOLp3CkEkaB1I7sakBSoEiuHAILm6Jeaz
	egt5ARkgDMtus1BsHNqAaSrmranYoyxELrZ01ieM2iMDBC3lKW5mf7PfZwmJ8WOBECI=
X-Gm-Gg: AZFdTZedlrrq8XJIFuTTEH3MyDlq4+FjqAUT0aMxJdwSPXZGws8XBLyzC/dHsJmC4sy
	r94NAUvaSlPn2KJ3Rq6rdB9nGIMBDdgb6exk/ySfqJQwuJ6VyhdM0DmvEjmkYLOhDkbSbUuN/mA
	HPALJ9Urw3s7mqBapm7vj6bKfC/hz39Mg7HfSfuMyQ7vkEY4q/nhHHFzYoUwFwBM4pD0ERfvwCe
	GW3Vx9ey7QKVAOE4p1xxD5wwvCQaPgZRKx0w1V9Gwsj7yXO8ng3PrrXqUX9NIbUc46Z6VoP6mpd
	jl3JtLFqlfVmUb4QydZrunQviVIE/5orSSrW35pcVRy3PjsMtsNZcLAuTvrJ9yk/VZ7rQeNAQdN
	td6EJDVx+7RlZGMLRaTXdcdB/OysI8gT265ZlAgjL1t91+8YHaElIE0h8JgzWIQRSvcqu/Q/CGr
	Emz3l3y/qiKPEAtVIojZI2eS8u95S/WwZmVVFjK4e1e07bhPvVGvBPvbdWGgav82myfPeRhCfSM
	ZyNSD/0xPXNuJ9+VflrIG+ylkdVKOa0VC/FN2PdP9QtIVCIVdwQOzS2UK2UoSkYeZiZjKSPQigq
	Z3LgGHk0tH9tI3B48jcJ0BTrcggkg70X2Lkjp0Mx5B02niB2455XeiJXkJWpzzoBw/pKZmdN6F8
	eiKgMvYc=
X-Received: by 2002:a05:651c:c011:10b0:3ac:dfad:319d with SMTP id 38308e7fff4ca-3ae7f9d6f4bmr30282431fa.1.1795515359820;
        Tue, 24 Nov 2026 02:15:59 -0800 (PST)
Received: from [192.168.1.101] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3ae8044e211sm38976231fa.2.2026.11.24.02.15.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Nov 2026 02:15:59 -0800 (PST)
Message-ID: <a519c2ff-7d0c-4aac-9a17-b9e76913d659@linaro.org>
Date: Tue, 24 Nov 2026 12:15:58 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/7] dt-bindings: phy: qcom,sm8150-csi2-phy: Add SM8150
 CSI2 PHY
To: Andrew Gigena <mail@andrewgigena.dev>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org
References: <20261106-sm8150-v7.4-rc1-camss-v3-0-0103e8a0bbcd@andrewgigena.dev>
 <20261106-sm8150-v7.4-rc1-camss-v3-3-0103e8a0bbcd@andrewgigena.dev>
 <a9ab1add-5f04-4687-83bf-ca29a068ee33@linaro.org>
 <f127954b-2255-482b-aa3c-cedd2311f77e@andrewgigena.dev>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <f127954b-2255-482b-aa3c-cedd2311f77e@andrewgigena.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_021602_831954_DA152635 
X-CRM114-Status: GOOD (  26.46  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Andrew.

On 11/11/26 01:52, Andrew Gigena wrote:
> Hi Vladimir,
> 
> Thanks for the review, replies below.
> 
>> Please double check if SM8150 CSIPHY v1.1 is capable of C-PHY:
> 
> The hardware can do combo mode, but the driver only implements D-PHY and

"The hardware can do ..." is necessary and sufficient, when you add
a device tree binding description, anything else is irrelevant.

> returns -EOPNOTSUPP for C-PHY, so the binding stays D-PHY. Would you
> like it documented as "not yet supported" anyway?

You may add a short note to a commit message, but definitely not to the
hardware documentation. Hardware is not dependant on driver status.

> 
>> D-PHY combo mode is also supported on the SM8150 CSIPHY apparently,
>> it shall be reflected in a way that two endpoints could be present.
> 
> Split mode is described in the binding, but the driver rejects it, so it

Don't look at an incomplete driver at all, when you provide hardware
description.

> cannot be used today. Is it fine to keep it out until the driver
> supports it?

This change provides hardware description only, and anything related to
one or another driver is irrelevant. However since downstream driver
provides support of some hardware features, it tells about the hardware,
and therefore this information should be represented in the dt bindings
documentation.

>> In downstream camcc-sm8150.c, PLL0 is on MX, and PLL0 supplies CSIPHY
>> clocks. I believe MX shall be added to the list of 'power-domains'.
> 
> You are right that PLL0 uses the MX corner in camcc, but that corner is
> internal to the clock controller, not a power domain of the CSIPHY. The

Formally yes, but probably CAMCC driver should not enable the MX power
domain, if I'm not mistaken, there were arguments against it and to
delegate such logic to a clock consumer, which is CSIPHY here.

> PHY only consumes the top GDSC; SM8150 uses legacy GDSCs, while on X1E
> MX is a real power domain attached by the PHY driver.

Here someone from Qualcomm may help to get better understanding.

If MX is truly not needed, you may add an exception for SM8150 CSIPHY
dt binding description.

>> Still it would be preferred to get 'vdda-0p9-supply' and
>> 'vdda-1p2-supply' properties.
> 
> Renamed in the binding on v4, the driver and the DTS, matching the X1E naming.
> 

Good.

>> In general the change looks good, thank you, but likely it can be
>> embedded into the scheme for X1E.
> 
> Clocks, register offset, power domains, lane table and timer all differ,
> so folding it in would need if/then blocks for almost every property.
> Would you still prefer that, or is a separate schema acceptable?
> 

I believe it is good enough to embed SM8150 CSIPHY dt bindings into X1E
CSIPHY dt bindings.

These two pieces of hardware are non-compatible, but they do belong to one
class of devices and can be described by the same dt binding documentation.

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
