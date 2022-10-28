Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 737C6ECAAA1
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 02:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SpEUXNCHk6Q4XgcpqkHnJANsRKnmlgf+hZIsK1IVdEU=; b=lfeEa6AxyxkHOt
	7u9KmDN2o3bL6ljkzPuPKDS3qvcnSV3lWBCrgDYY/mLucbrZwsfAic6cfcEfec16F234wnquIebMH
	d2mw8buekWQeWpE6XvlLQ5fpiOE4AwCHh/pop9iDyZziaIvIdMNF7IzP42ROKr+t0Btzqvq+mtebl
	zQLaBx3mehsigO/TX1wIFRjdHql72GFldg4afx1uHctvqdCoQKLmaBHJ7qAJeQMcVGfpS7XTgs2xa
	0+2AscpnIGUN4LcNzxwII4UKMZkw77VzD1Mdb4DGZwCQbV1ZAPn3Rv0Cq9oUsuAIgQFTv/HbIztp0
	/NSVHZxB4J/1YxW5ySGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooEui-00FUhV-PM; Fri, 28 Oct 2022 02:16:04 +0000
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooEuU-00FUXQ-Di
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 02:15:51 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id t16so3202989qvm.9
        for <linux-phy@lists.infradead.org>; Thu, 27 Oct 2022 19:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vDQd0R4rcR0/FXPseJDxEhDTM5AtkC9lRAa3LdKXaSk=;
        b=LmDCFy1tXYjyvA0wy/YnmeJMFvgVI7Afo9lZzSpluX899cAbmH7muXYq/r1EHnRZg2
         YnLntgOHKsbdjbiLq49yXbMyb6NM+2UyCBMivZWexjjxBuKJxtk8TonWab/Gv9Z1vrmm
         tgVNln2AO0DiW2U/SKMR4o1FX37uNNVnY8dHqhX/7cCJR9/ioBEWrQe+qvkkMKoJAfis
         uUMxFYlzz2GXSCmDmDF3ABevQ52p4R17GL+yqQ6DEvuDonKirHc3UiN+FahklJdf/eTN
         n4i64gLzGDJzkZBhLkb0FwThI23NBTf97lODoB/LzmQgGxpK5qayH+q7CeK9zvVtOSGj
         H9OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vDQd0R4rcR0/FXPseJDxEhDTM5AtkC9lRAa3LdKXaSk=;
        b=bdyuBk+NYfVUUi+QuQVA9f+En2Fwf3fzrkzWMB9KJxotIykRj3yujssJoDQ35FnwrW
         4oT7ZNTeduR0eRXMgokbWCpQguyBqI0NvEZoBLpFg1swketlghMIv2JPWILrptdyqoTQ
         j9q1D4wKgBETFfyL2wAsd7QRHUkPb/a4h9HbV77R4Gv/Haz/6Vk9TL5aPRpkHgc3/xNY
         02pq7XrY0GeFkdFXP8wD9NgjKGEqk8oPLDpw39G7lMjBlPuHUAG0eSHQyCnnMKQTpJyS
         XHwX4gwDN3kxe9fKPb4MzECHz9E57cSlMMMK7CRE3/m2YCdWQCcTlGd1+hyPw6eLyEzo
         eFvA==
X-Gm-Message-State: ACrzQf1jAknIEwR+Z9Mgb8TjthYtOdvpkAbxib8bOfP3S0Qkceg6nSkO
	vm2zhZe6udCZEyjliYRzjXIqvA==
X-Google-Smtp-Source: AMsMyM6SCC/rxKrC2uDa16vuAPQKi5iVfXCtsMjGk5wwgTYw0H9lNcVYDyzkZ1rDhX+IapJxjaDMcA==
X-Received: by 2002:a0c:e803:0:b0:4bb:a881:e7bd with SMTP id y3-20020a0ce803000000b004bba881e7bdmr3651911qvn.91.1666923348098;
        Thu, 27 Oct 2022 19:15:48 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id cj21-20020a05622a259500b003a4ec43f2b5sm1733027qtb.72.2022.10.27.19.15.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 19:15:47 -0700 (PDT)
Message-ID: <c9940701-8486-5a0c-4c7d-9c85b9460a7f@linaro.org>
Date: Thu, 27 Oct 2022 22:15:45 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 11/13] dt-bindings: phy: qcom,qmp-usb: fix sc8280xp
 binding
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024100632.20549-1-johan+linaro@kernel.org>
 <20221024100632.20549-12-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221024100632.20549-12-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_191550_575609_3CBCCD42 
X-CRM114-Status: GOOD (  11.11  )
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

On 24/10/2022 06:06, Johan Hovold wrote:
> The current QMP USB PHY bindings are based on the original MSM8996 PCIe
> PHY binding which provided multiple PHYs per IP block and these in turn
> were described by child nodes.
> 
> The QMP USB PHY block only provide a single PHY and the remnant child
> node does not really reflect the hardware.
> 
> The original MSM8996 binding also ended up describing the individual
> register blocks as belonging to either the wrapper node or the PHY child
> nodes.
> 

(...)

>      then:
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb-phy.yaml
> new file mode 100644
> index 000000000000..95ee81d782f9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb-phy.yaml

Filename based on compatible, so in this case
"qcom,sc8280xp-qmp-usb3-uni-phy.yaml", unless it's like the PCI case?


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
