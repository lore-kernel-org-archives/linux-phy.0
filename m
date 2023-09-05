Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C125BC83F2C
	for <linux-phy@archiver.kernel.org>; Tue,  5 Sep 2023 06:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ppsoXZuvZxdhu0zABalxz2ppduW6NKj8BHGk11YBWKs=; b=BNFjTXsEyaZVKX
	FEK25TLngE5qpqn0HwN6pr9Bt7MAbJA33DgA9gn3LAwPe+Vt29Y2Hlm2AUc7TXogPOB2CxA93KgyJ
	mx5nL4aRoGh0HyxJoazS3BLYQEJ4F2D5CgcNXzeSIQ2bNBkKz8KrVR8qeVjlMfYhNrlMCYdMBDD8C
	cyNxb5wz4cGdW9bwb3zjjGEI2tUoRpDcoV5gITqweI8s1QXvweGnCaVgkW4B31jGD0IUYQRBwDWaf
	lh2nSB6TIjwAVI3H/6OukWaBYvSJlPbwfxb7L2997SeUuYex4sq8dk3rcAdveotO/qf9HrIsaTJZu
	EYXGtURj817YA494ps2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdPtG-005M9F-1G;
	Tue, 05 Sep 2023 06:50:22 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdPsI-005M56-2i
	for linux-phy@lists.infradead.org;
	Tue, 05 Sep 2023 06:49:24 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-977e0fbd742so300150666b.2
        for <linux-phy@lists.infradead.org>; Mon, 04 Sep 2023 23:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693896560; x=1694501360; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VhpzS59cETDVJJl58LmIfvoLI5Ek49A+bTArNaUplrk=;
        b=IDFAA8L3aV4vSTZpDFBd1GimjHO4ehrlTQ2Ms4BE1xp4V1ZowGXnp+T02mXEVosGpi
         Xi3GKMp/TdLkz6UgbicvdmC8NNxh3NiTB9PXsc2d8etqhCxZetkaCCmAxCvE3Ll/Z4+W
         U0Cgmylwn07MbtX/vL+pQDizJKiAavB5OUQjvyVXkqZeq/ZD+eyraYDxCw72/WRZ+MLc
         RUrIEobw97EEOJ6zEQ17b0r3RwLZ0eBGUt8TrR1mBR0fKpE8t9ymIq/AUJmlPapZ4U/n
         YS9bkaeUF44krOh4N/ngQIGzYYBwjM7U3ck03h81GGStN62UaPpAUiKkPuXIDmJ82qFW
         tkkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693896560; x=1694501360;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VhpzS59cETDVJJl58LmIfvoLI5Ek49A+bTArNaUplrk=;
        b=XkAEOXlDOe4o+HbUq2GkHcl21zrBECsdBkunqiWEoFG7Hiadzm7CQCNwztr6xlS11T
         aNmJM9O3kNhLF8bO1Jho84QqPpdKDtDh3//JcfzI+ED9f3h+mWmm8FU7qAj8CTgPcNUN
         UfwgzOKcMejsKDV/CCw7q51rJseZafszDWtfVDpZyndUp5/x9DRyNrbJwWFg1w87MHbO
         j9g9dgDnuYl7fJbMCEAq7Qw4QlPlc7waVGvqbYt5X7IhYcQe+bM9Qd529QSOcYD95xLO
         mXjY/3rC1HbXjxwDuC2+cufIxxSCrdqFLKBRySaWndtE2oPoh0R94xNlJdC+iCwELsYR
         jFEw==
X-Gm-Message-State: AOJu0YwbXcL9xSJbjKDZ43REp8j/5snb2aNuEekmjV8ZZM+4LIAQmx1f
	HHWHgYsvwCHGKj+fFLx5LYW7Sw==
X-Google-Smtp-Source: AGHT+IHjQFBB1VJsBsu+AIJLy6rePuMEP5AF/uK5pVEQorTl4ACwpz9FCi5c3zYXBuacFMfzU5OHPQ==
X-Received: by 2002:a17:906:3006:b0:9a1:c991:a521 with SMTP id 6-20020a170906300600b009a1c991a521mr7520272ejz.4.1693896560728;
        Mon, 04 Sep 2023 23:49:20 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id jo26-20020a170906f6da00b00982d0563b11sm7072419ejb.197.2023.09.04.23.49.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Sep 2023 23:49:20 -0700 (PDT)
Message-ID: <0a2fcbc0-4b18-a54c-9f91-9710cc0bea1c@linaro.org>
Date: Tue, 5 Sep 2023 08:49:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 2/5] dt-bindings: phy: Add qcom,sdx75-qmp-usb3-uni schema
 file
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
 <1693889028-6485-3-git-send-email-quic_rohiagar@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1693889028-6485-3-git-send-email-quic_rohiagar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230904_234922_884211_AB374BE5 
X-CRM114-Status: UNSURE (   6.83  )
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
> Add a dt-binding schema for SDX75 SoC.
> 

It's the same as qcom,ipq9574-qmp-usb3-phy.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
