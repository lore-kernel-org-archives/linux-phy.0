Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 401D3CD5BAB
	for <linux-phy@archiver.kernel.org>; Sun, 24 May 2026 15:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XFh0ujJjIxeUZEOnMPuHInoll/vVLQW7erGUj8wzrE4=; b=m5qXSZ7Gfj1sV5
	v6k+P6Apw8NVHygkr+wZvqjLy/iIMEN+/K1pJgZjIQzQmJXNyrPD78sZWELeuDYOpwTGZj/b5D12s
	oJhRK+WhtSGLWftECj4q7nRrM59T2xCzcDCiVONsp3hekuU41t4E6gukegeP3YTpI/XspJGoy42Zz
	hBacJKMX20u6OLP1XbEm4ru1EMvrNc0rVqJww0M6TBkcpdkCKpGGZ8V1q9aEZOVSQninqCHhNOLbT
	zzE4tvwOY7Hw9xv/NwFKRQ5gdGyGE0bBRyoBX3ZBHhls5cdnRccjg/8E2GbsY3m81c/r6/RZ4OYbz
	QECAGjT9CVjRWtvcu2jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRAtO-0000000FBqQ-1n9q;
	Sun, 24 May 2026 15:37:30 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRAtM-0000000FBps-28Ki
	for linux-phy@lists.infradead.org;
	Sun, 24 May 2026 15:37:29 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-49041e84237so19340595e9.1
        for <linux-phy@lists.infradead.org>; Sun, 24 May 2026 08:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1779637046; x=1780241846; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y9w10kDWoHcF1zCIEhfuXbWfL8gd+AUbKivXCljEU78=;
        b=c9UB0y4QEMEnnAdpJ1io9pOxRJWqwt7HcJ9RSuGM4MbRR2FiXuxpzz42D7XrZPHjOO
         GFCXonmoAP1RRlI1kWt5PAU6kRtBlt/2bpZOPighv24ekgEReUeWjvb6E7G2Nw6bRsw2
         DM9fHcU2pdMQIIC82Hn21XA76RpipTjCNJFzdo2K35GdTpNj1VgfXFdl/nle0YZYr6Ae
         oomLO+mxRaXP36/xfPqD1LZbHSWh08znWZpfTs8yoBKpCOUaGqdRci7DGq6XaH9t6vTK
         FrUH2xEitu1J2hAd6LxstRaBGyqKizntF2UuGdYO+U4x7he8pk88ORq/EhhczSZVP7j8
         ORZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779637046; x=1780241846;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y9w10kDWoHcF1zCIEhfuXbWfL8gd+AUbKivXCljEU78=;
        b=Xk4f08MxRPxDJ+DQDS2N36IkwST6iJzebCBsJ00PuSNQMTPPaw8aw6tJy/O5R5Vx5K
         u/n6nhr7GRTLUaw9CUIb0rLys910wSUIAtpKgwCWYJYLdgFIlnbFng9jHcc4bzd8w9Su
         rmplsGTyO0Tk89c3cg2wUv1MhMclDfRaOcOaNhwdSzYCU339Kv3PMstNCnVqq1wR51N4
         KC2fD/YPJXRc6l02bQPpvUAqB18H0a/xGvqC6my6sJhfOKYpQ7QWGwbcz355uiyj8H+p
         YXgdzrUWCto0sC5Aupk3SFPlnXoCcUBYvm/XjS5MbTsRJ7yZhiZ7NDqES9E84+Hr9JMK
         YgVQ==
X-Forwarded-Encrypted: i=1; AFNElJ9Psf+sEtCsY8i26rdANONmjcV7FDAKRURSE1QjwoWcfsN1Q1TPVWPYxXN0j6GiNfdRIOTgMT1A3nQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzqTAm+VgEHY5xtFJa4BMsaV6yRHuGy3KWck97olERE4f0hE8u6
	E41Vx6UxQKsr4lqlCUGEDzlth9zfF0omeLKbgU0H1Ca11Y2/9ngpF0WQCxo1FDu4Fok=
X-Gm-Gg: Acq92OERMiR58aEUzmEWbbHcnly1vTojh0gT6Jkz2LHgIgvUl8x9cGw9bSzhCwlcW8c
	KX+rUcx0UpERPULQTFSX8QkmFZ8j/+g0WwHl868KeC+yzc6+NoFrUKQut9TJm6MELOMb5ZkCZII
	mYvrYnL28kN3vR7np5vmsOzy5dywZpO/hfowH12uABygrrQqqkuBHH/aI7dIfh32f2YGh6EjJSB
	XtiumXNMYuEO5AsTZVlFWD8S9DkvjdBCFR4hrkr3PrWuNQFVY1dThxcZconoyvjfYtIL5v3NThj
	91uHsyE58tw0mQCpAUZJjscwJPX9gdoIrmn6Ae7QgqD+qIgddw4n76NPlnzUBpFHBhB94OmyHvK
	2KEkR6uGzlXA/ORRko9S+2s03F0448me5y3GjdGEkMCwtRBDjW8SvB0cK4jahKveQDz4loob21Y
	goe5SE/NitdfpMmq+w5xJ2L3eyt5MtLb9LjJf7LdynjmTFojZzPvWLBswAgKM+64dFNglr70Aj8
	yg3Ebi0
X-Received: by 2002:a05:600c:4506:b0:490:3838:1548 with SMTP id 5b1f17b1804b1-49038381676mr217241985e9.13.1779637046483;
        Sun, 24 May 2026 08:37:26 -0700 (PDT)
Received: from ?IPV6:2a01:cb1d:8ee:8600:662f:d52b:3b78:6113? ([2a01:cb1d:8ee:8600:662f:d52b:3b78:6113])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45eb6d493dfsm20504579f8f.23.2026.05.24.08.37.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 May 2026 08:37:25 -0700 (PDT)
Message-ID: <6c8a3b03-457a-40e6-bd2e-d0e5f2766ae8@linaro.org>
Date: Sun, 24 May 2026 16:37:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: sashiko-reviews@lists.linux.dev
Cc: neil.armstrong@linaro.org, robh@kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org,
 conor+dt@kernel.org
References: <20260523-x1e-csi2-phy-v8-1-a85668459521@linaro.org>
 <20260523030420.045501F000E9@smtp.kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20260523030420.045501F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260524_083728_571927_91188E40 
X-CRM114-Status: UNSURE (   5.41  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 23/05/2026 04:04, sashiko-bot@kernel.org wrote:
>> +  vdda-0p9-supply:
>> +    description: Phandle to a 0.9V regulator supply to a PHY.
> [Severity: Low]
> Does this property name mismatch the actual hardware supply voltage for the
> x1e80100 platform?

Yes and I'm realising I forgot to make some small changes Krzysztof left 
@v3.

----
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
