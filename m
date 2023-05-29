Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94DD3C77B7A
	for <linux-phy@archiver.kernel.org>; Mon, 29 May 2023 22:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ybvkL0h0LOrE1EbLeQdCbFtnyM/m6zWbpIXpz6waoU=; b=TGQW2WEmKF+XsY
	z8pfFRLq4hLLJ6VvLqF7IEOdzrbEQQdcTwrBmXH8GFFL2BcFxjNNlk/QFiuybGYA3I4Owih9JgDHe
	sD6qlSyg0CcFOdmaiX8/lLfC86qxwKuFfqrjVCg9OSyyGysir3YEUVWQFsAkaZHKlxhEFyHjlL+Fo
	FGJ54pgcrl2L0AquRfRIyp76QBHC84cLZBbi4Q1LZajLhr1+28Kp2sz5pOGirS8BKDn96uTb6+56F
	u4/wMmUNodgm5voCr0v+laOIy8aGg2gmepF3gbvkU/D3dfQZgx6NuQS5JI+koK3h/gGho2LrFkNVc
	Lbo1BYZ1/UyAYqpxGcOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3lLd-00BpGe-06;
	Mon, 29 May 2023 22:28:17 +0000
Received: from mail-qk1-x72e.google.com ([2607:f8b0:4864:20::72e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3lLZ-00BpFP-0n;
	Mon, 29 May 2023 22:28:14 +0000
Received: by mail-qk1-x72e.google.com with SMTP id af79cd13be357-75b2a2bf757so216552985a.2;
        Mon, 29 May 2023 15:28:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685399287; x=1687991287;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fgPfcW2qzSYYzj32tI9lcSdz/QlSOeix4/HDyUyUMRA=;
        b=WXyQx8aQBWSDxpOeNxCAXDmwEIdCd7q8nRQZ04cW2H+3B7mG/a4vl9iOgIZjcg6ytz
         0hGnsX9zpf0xYfzgwsRNKTMtUCgjg9qFi3UYLgOqHNpDWYsXWZ8FOo7XpeIlUNKJS61V
         E0G5QQSOfDMzMZYtH303E5ojY0oszovAaip3rfuEalmerSlPaOpsbYnp/FHGQrL8S4cM
         3IARp0bHAJkUWUol+AFm9AGgXAB7vrJJdz7BUA8mrfNl+5cawpqwAYqbn8IHSSHpspuP
         F22k8+iJ02kLM5Jk9SBBbrqZPDtpPumwR8fYYk6DQDV/t6YfSX6jtxIpm8EtGXUtvrzi
         21nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685399287; x=1687991287;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fgPfcW2qzSYYzj32tI9lcSdz/QlSOeix4/HDyUyUMRA=;
        b=Iqo8lMo/O/FsugkT+psKGuoiboSe7QN4OmhKkiyFq3LuAIYrmGkEU//B2duC/ZTopW
         w31H4GxUuHkaiDJTnykbVL5dLbx3q4/4RdMyrT0f8jQeIZDXCBvRAroEqxWXhpYam/sV
         7kNKRjo3HK8N6qy3KtN1/kPBH9lKGGw6HoGvHnA+GI891/yFzv3y/ZxyP41ds26dFGdP
         Q8tJ5n5XUp7iS6DQGDaAVupr1gjhNHXaRmAR1k9uxbP3zMaQSdI4kDI41ZjS2ai/VIXT
         XpHd04dlAlfEC8dAv94rujT3AJjkqotV678VkMqBdUZNXdQSYpM/B2S3oZUNrx2vNLS7
         TM8Q==
X-Gm-Message-State: AC+VfDwtMcCCJQe6iuQZRcxZmAr81x7GYKHVxLA20oTgjbY5UikXS07A
	AMpBytNWTABBY9Q53hd6PKo=
X-Google-Smtp-Source: ACHHUZ6NZ/Bb2tKmL5ScmGagfAqrAKXSkCJ3jZfX24VBwNQu8zOzFD3nvvqEpeSZAnWUUXAccWEJ8Q==
X-Received: by 2002:a05:6214:1c09:b0:626:24aa:87ef with SMTP id u9-20020a0562141c0900b0062624aa87efmr47324qvc.62.1685399287544;
        Mon, 29 May 2023 15:28:07 -0700 (PDT)
Received: from localhost ([2600:4040:2007:9800:1794:1f51:786e:6197])
        by smtp.gmail.com with ESMTPSA id t20-20020a0cea34000000b0062623d8ab7esm1215121qvp.111.2023.05.29.15.28.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 May 2023 15:28:07 -0700 (PDT)
Mime-Version: 1.0
Date: Mon, 29 May 2023 18:28:05 -0400
Message-Id: <CSZ46N3I9GM7.NON5KMJ66OK5@Latitude-E6420>
Cc: "Andy Gross" <agross@kernel.org>, "Bjorn Andersson"
 <andersson@kernel.org>, "Rob Herring" <robh+dt@kernel.org>, "Krzysztof
 Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Vinod Koul" <vkoul@kernel.org>, "Kishon Vijay
 Abraham I" <kishon@kernel.org>, "Arnd Bergmann" <arnd@arndb.de>, "Olof
 Johansson" <olof@lixom.net>, <soc@kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v2 1/4] dt-bindings: arm: qcom: Add Samsung Galaxy
 Express
From: "Rudraksha Gupta" <guptarud@gmail.com>
To: "Konrad Dybcio" <konrad.dybcio@linaro.org>, "Conor Dooley"
 <conor@kernel.org>
X-Mailer: aerc 0.8.2
References: <20230527040905.stmnoshkdqgiaex6@ripper>
 <20230528001010.47868-2-guptarud@gmail.com>
 <20230528-decode-creasing-f5b3996163e5@spud>
 <ad7a6ee3-cabb-6f92-a595-8791801cfe97@gmail.com>
 <a8d3d68d-d202-ddba-3289-65b347807538@linaro.org>
In-Reply-To: <a8d3d68d-d202-ddba-3289-65b347807538@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230529_152813_290063_51DEC664 
X-CRM114-Status: GOOD (  16.82  )
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

On Mon May 29, 2023 at 3:41 AM EDT, Konrad Dybcio wrote:
>
>
> On 28.05.2023 15:36, Rudraksha Gupta wrote:
> >> Where did the "att" come from in the compatible. Is this some carrier specific model of the phone?
> > 
> > This is the code name for the device. Since there are usually multiple variants of a device, using the code name differentiates between those variants. For example, if I left this as "samsung,express", it would be unclear if I am referring to the GT-I8730 (code name: expresslte) or the SGH-I437 model. This is typically done in postmarketOS: https://wiki.postmarketos.org/wiki/Devices and XDA developers. I believe it is a carrier specific model of the Samsung Galaxy Express.
> > 
>
> Please fix your email client:
>
> - wrap each line at about 80 characters
> - don't trim messages unless they're very long or
>   there's some other good reason
> - Don't send v(n+1) as a reply to v(n), send it in a
>   separate thread.
>
Gotcha, I will do that next time. Should I still send v2 in a separate
thread? Not sure if I should as I don't want to spam anyone.

>
>
> Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
