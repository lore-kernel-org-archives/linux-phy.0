Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E1EBC46467
	for <linux-phy@archiver.kernel.org>; Tue, 10 Jan 2023 10:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=esFl/PM8hR4tlUWqkcV94tHkRd8Rqskd11ZrwfWKA3o=; b=O28YjrXf5b8Vhz
	UIYNJzNMP0/iwfEh53sLawZqOZZ/+zB5oINJLM01pnS+9ZJBxEtWhKfg18fr1fW3WBNN9SDBgcHhf
	M2qlkPgaxXNiKvAC+IVEQ9Ug7IWIVD6pF1LrpQaLCbhwHklghlketsIx2IjssgAA33RApi/2xrDVk
	7WnYSMcfIdDWEsnqGGg2RtDhysJXido03JDDLRGia/q+B7ioV8kkKNRSuQD+9vVc+/HNRdqkUopAw
	j2QnNdq85r19g9s4yNy2lXpC2YHeQ1NmtDHkLdNyA8yL9UuIXGZTg46Q8qscIO88dH1AEf/Zmkhtl
	V9Un+l7u5Y68yWdUV7vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFBg8-006J4m-QM; Tue, 10 Jan 2023 10:16:24 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFBg6-006J2m-SN
	for linux-phy@lists.infradead.org; Tue, 10 Jan 2023 10:16:24 +0000
Received: by mail-wm1-x32b.google.com with SMTP id p1-20020a05600c1d8100b003d8c9b191e0so9442281wms.4
        for <linux-phy@lists.infradead.org>; Tue, 10 Jan 2023 02:16:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3L27Tq0zbzDL8sJQqF4D7IRFPQYRZAeU4qqoSPa895w=;
        b=u+x71yWS7I4oEXf8ozRcyFMecHvQvUknvdG2mG0PJAu04pG9XXthULtoY1W0q94kCT
         d7DlnxcZ3zXHjz3tCvR+V7R0vGgabFih7QQ0ZICKmNK25Xx2KCBWdHBglGa2TtcHvYCw
         i1PHi3FscBHvdfF7v25N/FENMcx3/FGjIcJPuxqpp59Gwq+y/MyNXqKi9sWENqwmpXxK
         3BgfTBvTCcEcYxPkKgaNIsrgcjekdnRmViT/flYASi8HCn7wPiReR5wTM6Y4C1n9IE+9
         Lo/Ham7HrbuO9nRWnGB1VygmYL7yBAlKmKoLq0hm1fTGQcolWwK9CMshzO2w8/ekD6g2
         shmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3L27Tq0zbzDL8sJQqF4D7IRFPQYRZAeU4qqoSPa895w=;
        b=F2CTQO71nnkK+XX8fREm3zhvSyD01a9unTyt+oGKELjIn+Acw9IHokC0CVJTO1Qwlo
         wS7yc+NtKCOAmI2OWY6AuJeIcgenqPORMuXhUCZ45PzAVxvr/CzVXgjedwZBxx24QKfP
         uJp+VQ+ItAaQcgBKJAlmA6o3vLRIZEYvyBRJ9aGssKYJWur/aSlhc8BanmmeFoUkfmnK
         XqOuxm4HSQEdoMRoBXsy6XfYoDdXW2SAR8mhWUPH91MiBTTMg01l0XI6AAflYgR5Psb8
         8012RcJzlb3wg8Mh3mJEmHTpujTpWhEQ+6y00/Cfjj0wT5RwwKgrmxbfovtSS1hY8Uqt
         Othw==
X-Gm-Message-State: AFqh2koSATOnay16hP48G3m39vk91ss7aCwBB9QUgsrgr0O0/o0TVrSR
	1DToLLb/ykj+4CiEP4IkCMHOFw==
X-Google-Smtp-Source: AMrXdXuMfssSJSDgb250kz9/lLtQ3vu6O7DHG+aAwgcWVuQ1GLx8a400gxZwi0nru+BFE3w6dTyBEQ==
X-Received: by 2002:a1c:4c0e:0:b0:3d9:f836:3728 with SMTP id z14-20020a1c4c0e000000b003d9f8363728mr1386982wmf.11.1673345781647;
        Tue, 10 Jan 2023 02:16:21 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id l14-20020a05600c4f0e00b003d96c811d6dsm20468474wmq.30.2023.01.10.02.16.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 02:16:21 -0800 (PST)
Message-ID: <39bf0a6f-6e43-c7e1-07c2-c5c5113c1e50@linaro.org>
Date: Tue, 10 Jan 2023 11:16:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 06/11] dt-bindings: power: amlogic,meson-gx-pwrc: mark
 bindings as deprecated
Content-Language: en-US
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck
 <linux@roeck-us.net>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-mmc@vger.kernel.org, linux-pci@vger.kernel.org, netdev@vger.kernel.org
References: <20221117-b4-amlogic-bindings-convert-v2-0-36ad050bb625@linaro.org>
 <20221117-b4-amlogic-bindings-convert-v2-6-36ad050bb625@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221117-b4-amlogic-bindings-convert-v2-6-36ad050bb625@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_021622_954134_B7A3280F 
X-CRM114-Status: GOOD (  11.28  )
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

On 09/01/2023 13:53, Neil Armstrong wrote:
> The amlogic,meson-gx-pwrc-vpu compatible isn't used anymore since [1]
> was merged in v5.8-rc1 and amlogic,meson-g12a-pwrc-vpu either since [2]
> was merged in v5.3-rc1.
> 
> [1] commit 5273d6cacc06 ("arm64: dts: meson-gx: Switch to the meson-ee-pwrc bindings")
> [2] commit f4f1c8d9ace7 ("arm64: dts: meson-g12: add Everything-Else power domain controller")
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  Documentation/devicetree/bindings/power/amlogic,meson-gx-pwrc.txt | 4 ++--

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
