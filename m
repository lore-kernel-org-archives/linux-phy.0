Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEFACC43334
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jun 2022 14:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tz3yaoQm5vk/EFtq6Gqb3Or8vuHZZOZNdHVKX00v6Dw=; b=u0idp1MuYX4PsF
	lxq+JvslowSI1Tm0yqyqgzTrEoNsRIOlCeYl8YU9m+SwjljGKaG1i8/a8rcjY7clGREaugXda1W0O
	nOowXaWxIBazJv6OyuskmYZ/tC7wXi4A4HDXoFuSOBAFA6/DL16VPJEzPIZUPE8MYi7sUy28u/z6J
	lFNBQBym/9cWcomXp4L/iuTjpjCblJ/8xyhF5uRHw77suqdbqdXOvz+Ao4AYC/A4LCQf6nQYqBg21
	JRDnfz6ziwW/jKoGmmKf7iP6U7C46/+dh5dBnBa1vBkIdnPPIBIp21W6+dcqRTQ/uQ78sG+kJ/KwA
	xH45GlRchQ+elIAqu0ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o41Ly-00Auox-5J; Wed, 22 Jun 2022 14:29:10 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o41Lv-00AunX-F7
	for linux-phy@lists.infradead.org; Wed, 22 Jun 2022 14:29:08 +0000
Received: by mail-ed1-x531.google.com with SMTP id c13so19709419eds.10
        for <linux-phy@lists.infradead.org>; Wed, 22 Jun 2022 07:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=eY6hl7x2OmQan4PYUD1Bjl8LlhVtyhv+gi/IBaGVvk0=;
        b=i3ZR2WI0WybHw6Ud95ax651bUgjBXx7D2e/cL+4L9Pa4tohtPtl+zZ2Ou1ft+cC8ye
         g/gsFaHRK6KB/KtjAjC3Jf2ucw4oIuy6GBfr7V8r83/JfljSuZRcfnkNWA0UqCEd4a47
         6a14DYRD8+bW/RNoj6kM5Ay5nsQi5bvfb0dIQBn/DImeaJ+Kyru2ENkUFlRCsW0MjOI+
         KiJpOiTOjFWV3hO3k5fApEu7LZ7ZowWgJOuMhlOvNRRyYj/kvKMtMxZJypCsdLEcCHiy
         0rlNzif5MF4qcSBUn8yt1NRtESbuVrWXYDG7yUPqVyAyySbJFtVQ/cyKah1GVIC6LF73
         iJoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=eY6hl7x2OmQan4PYUD1Bjl8LlhVtyhv+gi/IBaGVvk0=;
        b=3oNLEIwTdZP5pN6cF1I2pbXxBhG0SjJW1/qHrqmxcYG/0YtM0N88MnWID83HwutNjz
         JAXgo6gVKLvGL0IYrB+/YvY2hp9/seNTNPv8Hf9JlrG2StiJZXXtng+umnzs/2PzWcxL
         octpJRMYW0mU+ImpIdXJ4NKv/BftQ4AOoeFEmHRdj0QsIIGdmHhPojlt4S1iJCu0X+TK
         mCwsU+qXaTT54Vrap6ZDbftTZccadhUEVI9rG2cE/x/8RH35lRslHA1/zjhnKR8suI1i
         ONZxGbp/LSgCWZUtM7+GHkbisLHcobzPODL+2+AHj7AG+fMlx1DvWwZ0efSlyFsnMKjF
         AOtw==
X-Gm-Message-State: AJIora/94ZlFNq05kGTf66nEmAAkDQ1ncHuiCJIKTHZVCZFxCRHixBTE
	3zFtvghR2mP3+H8P1xGRjVpLdQ==
X-Google-Smtp-Source: AGRyM1srgj2iJtoHexTQ9IsSqs2aSBpb/QKqY7iWJ8uB+/1bmVRho+nrxcHIX3oN0e2HZIqTmd1j6g==
X-Received: by 2002:aa7:c38d:0:b0:435:9257:99a5 with SMTP id k13-20020aa7c38d000000b00435925799a5mr4476690edq.204.1655908143688;
        Wed, 22 Jun 2022 07:29:03 -0700 (PDT)
Received: from [192.168.0.225] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id s2-20020a1709060d6200b006f3ef214e2csm9700954ejh.146.2022.06.22.07.29.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jun 2022 07:29:03 -0700 (PDT)
Message-ID: <7c707d16-1237-e587-3768-245b710e0663@linaro.org>
Date: Wed, 22 Jun 2022 16:29:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 1/3] phy: dt-bindings: cdns,dphy: Add compatible for
 dphy on j721e
Content-Language: en-US
To: Rahul T R <r-ravikumar@ti.com>, linux-phy@lists.infradead.org,
 kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, laurent.pinchart@ideasonboard.com
Cc: p.yadav@ti.com, tomi.valkeinen@ideasonboard.com,
 linux-kernel@vger.kernel.org, jpawar@cadence.com, sjakhade@cadence.com,
 mparab@cadence.com, devicetree@vger.kernel.org, vigneshr@ti.com,
 lee.jones@linaro.org
References: <20220622105311.21415-1-r-ravikumar@ti.com>
 <20220622105311.21415-2-r-ravikumar@ti.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220622105311.21415-2-r-ravikumar@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220622_072907_553990_8107646D 
X-CRM114-Status: UNSURE (   6.36  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 22/06/2022 12:53, Rahul T R wrote:
> Add compatible to support dphy tx on j721e
> 
> Signed-off-by: Rahul T R <r-ravikumar@ti.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
