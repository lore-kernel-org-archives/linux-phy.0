Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A336ECAAD3
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 08:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sl/DdDm8P7cVktCmPLOja7/604aSTilC5g8Ba5QWUM8=; b=4y9vL0nX8orSmm
	aRd7lncFHnAxPor2DROpnAxSoiptSsmYebWbfTqWcs0wPUeKhdNVvbIpKWD64l+AqDIgHLewKgHsd
	KJ4XnmrCjn8GFaoaDSJJ7CdRq5LfOIz9tk8+hEfqkZ2AKIXC8jLr+pzJfa8sbKI5H+/vkKc6sMlUs
	w32cQdISeIvb3K7ELDIbSYqdrSwMT+ksUaRnTOxZRvHdjiLaFNiYC5l04qJi3t0wPeSHdJN4ULW8p
	z/8fBr4y9A1p1DQR1EoetiPMM4nSqy/U89kBHbHAEnWR5vjeBwHrzOJisrJFqvS2Z2RXGg9B8zg3V
	gCd35jqV0MIJYvnvLp5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWZMu-00EalV-GE; Fri, 09 Sep 2022 08:28:08 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWZMk-00Eahx-VA
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 08:28:00 +0000
Received: by mail-lf1-x12e.google.com with SMTP id q21so1530807lfo.0
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 01:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=aaJgQP6mmOZSBtHCI9caEKhaJVZ90AwBEM8xc756oKU=;
        b=PkfSceaEsCN3DpwzT8WAOBHdhnr+T+3XRaGeaR7p49jx4tBR9Qj413xsXGQanqhfoU
         uue3QFM5syxSdoOsUTd+FPVTJejwBpH6Xy4kpd6YjS7OIjzBn1gW91Iu4lgohO+zUpes
         NVjdNvCCKSZKyCmQcZnvVzlqFNuZgZZgU++IpRQNCp22jAqHqRacoEip4/LRefcJkcfP
         1wdzAxA2JOc/DW5m9xTso4VANt357kwefrfBgAG8RvRoPoLd27pvP3A7qVhYEEevdzLG
         I43EfJlJeuTCZewT8kop0fv+dBAta9ME61DIoPj6MZTtfNdEF1ZnNfMYXbZlGXO+PiIR
         k/NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=aaJgQP6mmOZSBtHCI9caEKhaJVZ90AwBEM8xc756oKU=;
        b=a6hRxMFJ20PGKY2LVFf0rDYptgGxHTKOXr7e4iRDgeHVxAkOC/H1v7xXFJAi41dafq
         wJ0lLSMocZVj0o8pWXdr5rjTYLIJDK1ekMWuNSNQ5R/SrLdPH0jh6ytpY6qAQX1wB0Ru
         LjLIwvDMtvCwqxRmq8ALygKMQgF3IAW1TjVJeamu6RKgpYjB5jAclhNEfKWDl+tNRL+X
         Gh5pKL528JRYJra14h/QJRCWXb6CP4Bfv8ac3R1Z2sGLb/Oprn9KRGPwg7+Ih9wXCpu2
         fClNQcjPf9WKd/Kk6EY7rqzHMZvRIkEnq7tUAgQKtYYyhhYIuf5ieOIohX/Tfj7yI5iR
         Y0YA==
X-Gm-Message-State: ACgBeo3y40gg/c+xC+Gr5kJLm5FjTU5T7jz2PqoALtF74zTyHMYTZXsA
	1vXqO8bFCXrlF1ETd2CuxjJqog==
X-Google-Smtp-Source: AA6agR6q6dm061SxXLm4iCirWAM8P1i+n441YDphCVJBfNX6AwWGizOpXP2cFam8rCAb/gLNemJBIw==
X-Received: by 2002:a19:9157:0:b0:496:8bd6:a594 with SMTP id y23-20020a199157000000b004968bd6a594mr4174662lfj.314.1662712076092;
        Fri, 09 Sep 2022 01:27:56 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id l6-20020ac24a86000000b00497fed6cbb1sm188710lfp.71.2022.09.09.01.27.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 01:27:55 -0700 (PDT)
Message-ID: <36f9ed08-169b-dc92-2df0-842de4116d49@linaro.org>
Date: Fri, 9 Sep 2022 10:27:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 2/7] dt-bindings: phy: mediatek,tphy: add property to
 set pre-emphasis
Content-Language: en-US
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Eddie Hung <eddie.hung@mediatek.com>
References: <20220829080830.5378-1-chunfeng.yun@mediatek.com>
 <20220829080830.5378-2-chunfeng.yun@mediatek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220829080830.5378-2-chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_012759_021857_9992E939 
X-CRM114-Status: UNSURE (   9.23  )
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

On 29/08/2022 10:08, Chunfeng Yun wrote:
> Add a property to set usb2 phy's pre-emphasis, which used to widen eye
> opening and boost eye swing.
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> v2: Add more description suggested by Krzysztof
> ---
>  .../devicetree/bindings/phy/mediatek,tphy.yaml         | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
