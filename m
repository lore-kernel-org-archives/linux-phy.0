Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CE7CC83F3E
	for <linux-phy@archiver.kernel.org>; Tue,  5 Sep 2023 06:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1hJ9LhZQCb6FXH/3aypqngZFfWdLusAOuur5qs6NeUk=; b=eO5y1ZIq07GdOS
	CMqy8uPBM5XpZi+MUrOkmTAc5fkVufBzZglQCL8vFOw/pWKIpEPj37sHdDCO1yLL3a5GPnCBU4VoW
	5XCT1U2ylSr0M4VQlbEIdfJQZ7Pan1ZdionijbNl8W/mIVV89veRlmwJr8hODOqMzg1cP/kUk8T1L
	bdsSBAyyUzwoHC1IJ0Lj8jotBXeoQvaJy0lvhGSOgXTvWfNahz8754OmY6CaN1ND7f8R4xwpXfuLU
	1Xwqoh5G3HvJlrsQsHJl0S+X7wHTeS+ga8qsMqgSrp8lRl6XxvK+YcP12eS6vfam3HWw+zyGbBJ5b
	QxupIBbMWm8Aj5+8SZfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdPqi-005Lzr-3A;
	Tue, 05 Sep 2023 06:47:44 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdPqg-005Lz5-2t
	for linux-phy@lists.infradead.org;
	Tue, 05 Sep 2023 06:47:44 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-99357737980so320090566b.2
        for <linux-phy@lists.infradead.org>; Mon, 04 Sep 2023 23:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693896459; x=1694501259; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gtHnKiisbpzK+NDkk8Q+svMUp3+b88bQOcuQUudC2cY=;
        b=DOWAMFDZeY2HTzcssEHpbL8fpJ521E7zuFHfqB95U+g+wCqrtCANN90gsrqkfPrdea
         vCWOFtnD9sh6F5gDYJVxZP7K/2BxC5whPOHtLJpNzSkIBIMtVlTP7ABxeM4BKxeWPmbI
         TsskCJFsKTpc3hW3n+6fCM0c1XtAyPucie8vTTog/7Hch9nwRpj8ETcgOYop3d9otj0j
         p9OSp+7iflbcgRwuk3T3YX5DeiwizaqwSkklj2kCRQZPk6pGzz2m3oO3d2fc7J9CrKKm
         hMRuzYu6oj+hbmGTnWVL7hiv2Yi2WQD8Sn1l1XjWcHRBPDnnxuBPCsJorECA4kfVF0ZA
         pgCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693896459; x=1694501259;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gtHnKiisbpzK+NDkk8Q+svMUp3+b88bQOcuQUudC2cY=;
        b=c0zNV3x/CzcoO54z/hFuO9ohYXfqZo9ypog8+HEB5PzIF3UaDJ8fStK/bl4uSbvuJc
         497QCbdhix0RGhWQnGQ7xwqnCgpziJMEb+keYqqFWZ+H1+b7NTUd4igVJre6bvha6WyT
         W4SXPHkYzhmcUfBw+kguuIN5ZNlOaqYtx4ncclzyKvhFO9yF0bvdJIGgvbvfkzA6CeAv
         6ylZeaA10nGquXFWDjP+XLt0AFhBTwns9GuPqM/J3Dlix+dK/d+28m9KrNqAnA/Ng0qU
         akugO4GWwTGLRcoQTWFFqVGZc29g263xDH0URZZWVb9K0G+Ae/Lh97Zrz7FkMuus8Q/n
         UDsQ==
X-Gm-Message-State: AOJu0Yz97w/nv6E51/i7Qyeb344hMF9ZCz3nUUrWY7reMv/AbFP8t/qu
	nxNYxkgyZVLeLTAIP9Un65bcew==
X-Google-Smtp-Source: AGHT+IGpukQ0RDg0shaXuo4HyDBWkoifbqE/MjwhBsHs2JB7raqdMGWC20Py9PQv9ho4KHUd0+P3KA==
X-Received: by 2002:a17:906:4ad1:b0:9a1:e57a:362c with SMTP id u17-20020a1709064ad100b009a1e57a362cmr8488649ejt.9.1693896459650;
        Mon, 04 Sep 2023 23:47:39 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id um15-20020a170906cf8f00b009928b4e3b9fsm7186471ejb.114.2023.09.04.23.47.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Sep 2023 23:47:39 -0700 (PDT)
Message-ID: <1eb37446-3d83-f7d2-7f00-a0f553bf106c@linaro.org>
Date: Tue, 5 Sep 2023 08:47:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 1/5] dt-bindings: phy: qcom,snps-eusb2-phy: Add compatible
 for SDX75
Content-Language: en-US
To: Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, abel.vesa@linaro.org,
 quic_wcheng@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, kernel@quicinc.com
References: <1693889028-6485-1-git-send-email-quic_rohiagar@quicinc.com>
 <1693889028-6485-2-git-send-email-quic_rohiagar@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1693889028-6485-2-git-send-email-quic_rohiagar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230904_234742_969586_CB9D7DE8 
X-CRM114-Status: UNSURE (   7.26  )
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

On 05/09/2023 06:43, Rohit Agarwal wrote:
> Add a dt-bindings compatible string for the SDX75 SoC that
> uses Synopsis eUSB2 PHY.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
