Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF8E2C433EF
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jun 2022 07:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XUWW1R7MYYpj3XWREXutF2dans49wgaxUzsl8N8wv34=; b=BTZcPXz2AUwDPA
	fMA5+R8yX28uR90hYXkLF8cK95o4UXbnOZk9Ataq83S3wRdLfyFM4WaT+Frq6gOzep28biljE16Xs
	MN3CR2TGzqP8bbu8PGLMKagElz6iNyWBnKSHaCtzgkwiQ8cqEoKtN3OjmdNSe0cDpIopeVUpBnJXI
	rE0gAJ/ImtYWwyz1zVP0N3M1MfkA1l9Dw1S7Jk2OGN3RZvjv7FoEjXC9ncuN7138i3PAb0XFPSBt0
	uj2h1CLbXHS3a/jT0DTdGsFcqR10f8pWKIQQDvka9+lftLF0Ftvg/9M1cO6IXATvbm85Dr2i+oZag
	ZISyqpUMW1YFzeykaf7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx1of-006MRM-UZ; Fri, 03 Jun 2022 07:33:54 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx1od-006MON-Qo
	for linux-phy@lists.infradead.org; Fri, 03 Jun 2022 07:33:53 +0000
Received: by mail-ej1-x635.google.com with SMTP id v1so3616014ejg.13
        for <linux-phy@lists.infradead.org>; Fri, 03 Jun 2022 00:33:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=M10o54sTZvRy17C3pDC23gX+CuR4aMGD8UzGX2WMoMQ=;
        b=kFDEaqUzl3hYfbJ0sxUumnEbCBnKfF+EOl9AvTzBjiuP4XKwPl+nZlvehW7y3VE8PG
         lNRjXc8N/vvsf040kvBQZzeaCgcCEXygqygB0wQnAeN4KDjKFyjtxFa6BfJ+Pu6hM+8e
         mXoSRz9aKys+M9uf6lGJRigGkH6K5yZH2PwwWo/kaFzXetUNUP+GnZtr2PvXSASpeKgj
         h0sBACxcQiXTdr5pDPjehv4ljtGY3hY5eK/RiHadB0gXjg/recI9vsJZVuVu7KryAvZa
         8beSCB4hK01FSCxfptrKX7fLr4jWYErOYnYtXpkxMZJIHTKPO3mt9W/MJ6KZXhpXQGb8
         pXOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=M10o54sTZvRy17C3pDC23gX+CuR4aMGD8UzGX2WMoMQ=;
        b=cc2GE436KWQlVBDw7xptP7kM0nDUb8aC+TlrZ7WiJGKsJYQsJlHNzts7YLFBDF0+MD
         UrSXwiXHVSNM76KTAZTwKn3e2nlRpC988z+edVAxrNBBsKA/UarSCS4+jYh1zJZD6ZWb
         WofKaqlURmbOaxdeJEV0aC/qBlmUCgajETG8FWpE1KOK5pFWcZcbUXFUqlBlnbLOKb7o
         1XR7FM3bkJDNglyPI17kHF+uqvj0jBen36VhTZGOjsHdNihx1CzPE+rpWIMiqrxmAdro
         idKyC/wYhoJIWkcwYEKSkJkfKcXLPY/oi29NcDG97p6mCPDg057tFQ/pKKd662+usBHq
         FR/Q==
X-Gm-Message-State: AOAM531wnNXml6duQSEiCXQbmo/j0TydQ0wdZzOZJlbSAxIb4kxVfiHk
	layCqdsCjsn3CesRChOA9i2OkA==
X-Google-Smtp-Source: ABdhPJw/l8CtC/oAgwkZakL9NahA1dUU5X0+2D/Z6/uAlo7dulXIk0x+O/uittuON2sFQiK9v2K8yA==
X-Received: by 2002:a17:907:1c8d:b0:6f2:eb2:1cd6 with SMTP id nb13-20020a1709071c8d00b006f20eb21cd6mr7282450ejc.568.1654241627415;
        Fri, 03 Jun 2022 00:33:47 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id t26-20020a17090605da00b006fe7d269db8sm2535595ejt.104.2022.06.03.00.33.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jun 2022 00:33:46 -0700 (PDT)
Message-ID: <6a421c56-0616-c61a-608c-2907faeff424@linaro.org>
Date: Fri, 3 Jun 2022 09:33:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] dt-bindings: Update QCOM USB subsystem maintainer
 information
Content-Language: en-US
To: Wesley Cheng <quic_wcheng@quicinc.com>,
 krzysztof.kozlowski+dt@linaro.org, lgirdwood@gmail.com, broonie@kernel.org,
 gregkh@linuxfoundation.org, bjorn.andersson@linaro.org, kishon@ti.com,
 robh+dt@kernel.org, agross@kernel.org, vkoul@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, quic_jackp@quicinc.com
References: <20220603021432.13365-1-quic_wcheng@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220603021432.13365-1-quic_wcheng@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220603_003351_957762_93F9FC0D 
X-CRM114-Status: UNSURE (   6.23  )
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

On 03/06/2022 04:14, Wesley Cheng wrote:
> Update devicetree binding files with the proper maintainer, and updated
> contact email.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>

Thanks for updating the email address!

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
