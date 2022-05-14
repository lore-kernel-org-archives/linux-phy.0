Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2C96C433F5
	for <linux-phy@archiver.kernel.org>; Sat, 14 May 2022 20:45:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KPRjpx2XDJ5hsW3xLFd0vsz1Yb0F/W8k/MTpa8Rkc+U=; b=o7xIfUWpGIOR9a
	J6/Ls3j1Qf3VC+KKWQkdBJ1pbhjIqNcuwS/GTT3EIpA6hkkvXFdpbRLP78vKrv8ShSggOgjZg2DuI
	PmhOzT12KK9dzgdGoHhmQ+/TCdwZkCThmvMuEFSl3f/WyeMtL1qY77cxPxSAoW6mQJ0Uj8z6T+h+Z
	QoMrd/ijHl9G4kC2j8bYI5WrprqFdpIYPBRHsdV4j17hVY7Ia5z4rLAVJhU2nFstY1RAKyFXPJktO
	amn6ke63mnQdux+8hcWuysnIbUIXtHXn4EcykdGHd4dN55vmvRAnp4rzWoEk5e3mE8Foj5RIGwq8T
	Dlqrpkmt9OhKhwR9xUkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npydZ-002Dsp-8f; Sat, 14 May 2022 20:45:17 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npydL-002DmW-W2
 for linux-phy@lists.infradead.org; Sat, 14 May 2022 20:45:05 +0000
Received: by mail-lf1-x12a.google.com with SMTP id d19so19876778lfj.4
 for <linux-phy@lists.infradead.org>; Sat, 14 May 2022 13:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=MdfM/HONZC3fS+MtAXHVlITNlpLFIi5MOZuDuXkooss=;
 b=khMzfOKisE9yhASS0XyoadCXEjwNI9/6dbBzGKxChR0LJbgMgMBBYOWeg+nYuuhUEi
 1mQTHxlSGWbOc43CcFAGyzUoPW3E870lAghxtmIqDhhs7Z5B4eAxeTAmbHymp7Q6j4kS
 RlrIDgAfmh+RJuAbCOTwImywdKNVnRRLlzrv7CsN64R7kAiBPoNwT3NuG5LCADJUJgX5
 5Ig+uhURyT2PYeh7MdPfQruC3sUVF3Nlx4G6ubLmlQhzwQOJ49W7v1Rp6Njo7/PRqpiu
 il81A7dTLCnHCvERK5RhLfMko6H6g8WnZD0CewABufBbB3KX0bniT1mgWPkhmHbfg+t9
 axtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=MdfM/HONZC3fS+MtAXHVlITNlpLFIi5MOZuDuXkooss=;
 b=ouqwKbvTQb16Qj8ZhkltuMGqOxJJFl9syBOJy4J1J+76SjgjaCFsQ0pdkGDiODvHh9
 gtQRjdl8ME0D5T7w5kSIL9w8Fo8/WBcJDs1BC8TsJ+ssvz3SPxHV6kZ3TbjR1ay8efa4
 az8Zd5Fek7eZqg2ph79vc/EPrBJJgLDsn/eAm2FgMszuJBvWZoW04kbc6HNIg2VgB3ZS
 D34oeK8PDHcpoqMDBbx5IPmzbHeLpewBJvHkIIsnpHyGZUXi8rJfy7hzlQExCDZIkljT
 MYiPwGiH7EPWe0H8uF2+BFWMxYvuFGxCSjrhteIX4o6h8AqdMK7Ee4vNeI3G6UGF+cvF
 pVfA==
X-Gm-Message-State: AOAM5338yot4AjUV1A2H8qw0Pzl2O+zrqFRwjBAu/S7h0V2OmiNtJdNO
 4Jz6r0KNMdFw2mbnA9838g5M3g==
X-Google-Smtp-Source: ABdhPJy2KoQq0Weib9Kud6u4wMDOWPKK1rWbgJ/y837Uw6TP1i6MtO7ganhIRIxennTKxocnqGUmEw==
X-Received: by 2002:a19:5043:0:b0:472:36fd:4fc2 with SMTP id
 z3-20020a195043000000b0047236fd4fc2mr7660828lfj.258.1652561100624; 
 Sat, 14 May 2022 13:45:00 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl.
 [78.11.189.27]) by smtp.gmail.com with ESMTPSA id
 h25-20020ac250d9000000b0047255d211a5sm804213lfm.212.2022.05.14.13.44.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 14 May 2022 13:45:00 -0700 (PDT)
Message-ID: <9fb50d77-89a5-65a0-ba77-2a810f901518@linaro.org>
Date: Sat, 14 May 2022 22:44:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [RFC v3 1/5] dt-bindings: phy: rockchip: add PCIe v3 phy
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?=
 <kw@linux.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Johan Jonker <jbx6244@gmail.com>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20220514115946.8858-1-linux@fw-web.de>
 <20220514115946.8858-2-linux@fw-web.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220514115946.8858-2-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220514_134504_061564_D8A503E2 
X-CRM114-Status: UNSURE (   7.59  )
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

On 14/05/2022 13:59, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add a new binding file for Rockchip PCIe v3 phy driver.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
