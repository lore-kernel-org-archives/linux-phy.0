Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E7E3C6FD1F
	for <linux-phy@archiver.kernel.org>; Sun, 12 Mar 2023 11:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o3eBplhArCAAYKg9FO8ZuRB/NUvyv7AI04lrMjIF9yc=; b=kzndOu1HhXb/BD
	UFhR4pnEKoxEKt1mKgSiJQ3utoOKehuurqK2ACHY/bI7bY0wCdLe31yOWb3EfngmIdic7/gcFO0F1
	TQj9WbFqxAlbYrwhIwYWaNweUG2hzKHbabb5cpN/CBcsizknYEdCMdBVIOWq0Tf3Xs4dVz/3kw7yH
	UEXEt/V1CTBTHfNOOnhpm6OJW7OCJGhPbqfLiVZYWLUjFU4NdCgwd/VuL3nvt7Jo9JBFJguoZ0MqT
	LVO32TaXC1Kl4Z7vkDVpPHNckQY9zAs16taOUrQVHysMJCa0v6voX1klZyzjJvNJmRW/u5Z91Uftp
	7ZMUarIfp3SW8dUCsOuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbJvU-0029w9-2F
	for linux-phy@archiver.kernel.org; Sun, 12 Mar 2023 11:31:44 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbJvL-0029v2-2D
	for linux-phy@lists.infradead.org; Sun, 12 Mar 2023 11:31:36 +0000
Received: by mail-ed1-x531.google.com with SMTP id fd5so4094466edb.7
        for <linux-phy@lists.infradead.org>; Sun, 12 Mar 2023 04:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678620691;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Cr42kcaharXx2QRFlpWoe74NVUOdmsTZyVPBJTpygf4=;
        b=hQecZn/ly4IBjxkim9gJavyByugCZ8UKQy6hvrqJjW0FYyLCW+cQvUvFvokmWjBNsE
         7lT/2dj3CPqWNRRZEXX3bGxvPIti3myf1dse8nKcwtv+ciDY+riHxbTqyCrik+Xh6tIV
         bHRyHP/J+7HhVTPgQzrO3aobuc87c0f7pw2tdX8E3Sqb3RnIlSdF9Qfp84p73rc9g5it
         jZ2rsBxdIPBrcwhwjrWggoM3d+dn9U26j3S4cWDm1y/cL7p8pSYsh+B8hDRubvPhJQuM
         g5+J01VJUS/kgacl6Ycdz7J9gChKgFrPuag5iPyzZg3YOWxphwjMIkY6vlxhifbrLC5a
         f/aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678620691;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Cr42kcaharXx2QRFlpWoe74NVUOdmsTZyVPBJTpygf4=;
        b=1omtfEUDFKBjd7ZY70T/BTx88kfApL3tUxLDvfDvbJ/yNY8h8PBpymzdxwpvYennwK
         GmLqq3Sz7bkfEg1eQiz9MnbngmWP2qcWUy9kbNR3eyCPOo828jWGiTZ9EqbkXpzPbEAJ
         i1mMy2wjRuMDrF10owJB3pl5K5Gm5LKMj7A/qFNHlEbLw6NnVJBM8mtp6GRZVdVwCPsS
         JbrP1MgAnrohcVeJStg/AbDLvbCDZwvJXtLR5zl8LDzr+0IFX/P3tcCBFCRw6ugtImgK
         AJZBE0iu7hgaYa5fCasHqGDBKPp6kXJ6xjztE1eGBDfpUB/CabTG/LauGrU+jkLzmbKq
         dy8g==
X-Gm-Message-State: AO0yUKWF8FLcAa0oLR00jVaaYMzwxU2sK55msdt1UJKjGxgShW3tzK9u
	ZIG2sIcAePafWAxGgAUEqpF7tw==
X-Google-Smtp-Source: AK7set8qbCyOZY99qFz7FnkwgjDP4VF0PZfxCulPh0hKCVOGTi5xdhcGZzImnweWu7luxjwXeV1jVQ==
X-Received: by 2002:a17:907:9713:b0:861:7a02:1046 with SMTP id jg19-20020a170907971300b008617a021046mr41936190ejc.37.1678620690994;
        Sun, 12 Mar 2023 04:31:30 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d9f6:3e61:beeb:295a? ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id vr3-20020a170906bfe300b008d4b6f086c9sm2125986ejb.185.2023.03.12.04.31.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Mar 2023 04:31:30 -0700 (PDT)
Message-ID: <33157da3-4ab5-11ae-9b65-b2ca9694bbc1@linaro.org>
Date: Sun, 12 Mar 2023 12:31:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 3/7] dt-bindings: phy: rockchip: Add rk3588 compatible
 line
Content-Language: en-US
To: Lucas Tanure <lucas.tanure@collabora.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof Wilczynski <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>
Cc: Qu Wenruo <wqu@suse.com>, Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, kernel@collabora.com
References: <20230310080518.78054-1-lucas.tanure@collabora.com>
 <20230310080518.78054-4-lucas.tanure@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230310080518.78054-4-lucas.tanure@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_043135_131591_CF8EA1A2 
X-CRM114-Status: UNSURE (   7.29  )
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

On 10/03/2023 09:05, Lucas Tanure wrote:
> RK3568 Naneng Combo Phy driver can support RK3588 with the additional
> clocks and initial configuration, so add the compatible line.
> 
> Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
