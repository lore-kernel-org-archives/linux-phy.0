Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E64CCCCA47B
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 11:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x4Jfx7ir69OjswYjZ88xGKa4M8NrsqKYUSqG0MK5Bpc=; b=KC8x991Yn13hKW
	6x9cYFOgcXUMtLRbiIP0E1Pfgp8+VCJynhISiZPPLsVmBGcrH3GLHcKZSxeSUcywufcJRqxVXjgkq
	Kv2c29atZ0QcFnD7TqE519PR0hQ4rTPPq0HAIjLU2XJ/gFTbD5CLmRt3TI2laPdbPSsur4VsqynYC
	iL7WxrKPMOE5EJhMW+qZPH2Ty3Gd2NHDVUXN7OCLJIb/JEsx2TJF7Gw7OLuNrqCboFrVmCl3QqN7u
	BNW0VzLQ6A8Z0lWr2EPSc0pREbChJw0ksR6UWbp9g2YWPjEVFw9rCc1ThIqfcisE9Pr4ak+AI7g2c
	znudnjcSWi4xggneWK1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8gnH-00HR1c-5d; Tue, 05 Jul 2022 11:32:39 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8gnE-00HQyr-Bt
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 11:32:37 +0000
Received: by mail-lj1-x235.google.com with SMTP id o10so3453330ljj.13
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 04:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=qaYi1wEt2C2JhLIJsincP0Q2Rkx1dIZ1ZvSisaiv2yM=;
        b=myegyeCgfK2LkukV+pPs7crITRe2CkDAlueLDUmQmpB0rDV9FGaDYyCNDnNsxHV+I6
         v2s0FdFJ/IiRX4iMHNeuDeaHin3OTvBe/Wg4X88PGFwVM+LEzRwQ3N/Ea8xF1L8EOwng
         zgLZJg/C5HpkbvMHF8VvbGQnxC/c9Q7L0SjwgWDxlwJip3OX/e/BT0Vbcm7ncVDRtjAc
         tcpFhUPNbd6P+gQHeGkH9xVAXIITxOX7PBxqAUMpOfgAzjSthCsPi/qNxkt+W3fTwFJN
         mgIWaQVWOa/7X+KXd8bBy1Ay12dHeKv3ufjgtfZsCeLmhv4e/CPo3OwmPcP6sleDDm+B
         yAZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=qaYi1wEt2C2JhLIJsincP0Q2Rkx1dIZ1ZvSisaiv2yM=;
        b=ZD4gTb5iwOMTJzZJtZ09EET7QwE6FnxljWtBlLRhAnupof78MclRCxhKRqmF8OERQs
         A4zhKBqlFqtbwukItxeFcSmsStrXyZtDsdGYi25iTb7mtXTUlCSEZS5XGJmGvI7zo2hc
         H+rsGm8Wvxvi0UkdEi7U+VYBX/6fis12KPPPtwO1IZh25sYPoypNr8Erotlppik7VO67
         KtWGpfydsNSLY0Vf9uxklFw2+WNR1LOASmjcfLjA0dW8h750QH5jvNCzPA0IzopxAPHg
         bllxDTRtkvpRUzStjiEAYTMHSQ0Mp1OqDEITiI/gLfi6OyFV/4gGMD8QAqULgmy89ETp
         bmhw==
X-Gm-Message-State: AJIora/5zjVIz+NPEMb7/DYCnK6UykUbUsPLI3AKzcoeXjlI1sTxUXwF
	aTlXBcHBSMiM1xPrX/exmlb6Fg==
X-Google-Smtp-Source: AGRyM1sDEMfsIqrE/O54h2/HWiK8uRNTaue2L0djpV2Y+9vKv+BEGYutc3aiZvtNajkxCH+H6rDE7w==
X-Received: by 2002:a05:651c:178a:b0:25a:44ab:593 with SMTP id bn10-20020a05651c178a00b0025a44ab0593mr19941534ljb.358.1657020752431;
        Tue, 05 Jul 2022 04:32:32 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id h15-20020a2eb0ef000000b00255500154fasm5510079ljl.52.2022.07.05.04.32.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 04:32:31 -0700 (PDT)
Message-ID: <3b91ee2f-3e87-c18c-aa04-2cd93273b63f@linaro.org>
Date: Tue, 5 Jul 2022 13:32:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 09/43] dt-bindings: phy: qcom,msm8996-qmp-pcie: add
 example node
Content-Language: en-US
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-10-johan+linaro@kernel.org>
 <8271f4d5-e12e-ddf0-46ab-86a39577755a@linaro.org>
 <YsQQ2o8aYJnnWuNa@hovoldconsulting.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YsQQ2o8aYJnnWuNa@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_043236_456109_0D122A44 
X-CRM114-Status: GOOD (  12.62  )
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

On 05/07/2022 12:22, Johan Hovold wrote:
> On Tue, Jul 05, 2022 at 12:10:29PM +0200, Krzysztof Kozlowski wrote:
>> On 05/07/2022 11:42, Johan Hovold wrote:
>>> Add an example node based on a cleaned up version of msm8996.dtsi.
>>>
>>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>>
>> Squash it, please.
> 
> Why? It's a new addition to the schema.

Because it is not really new. When you add new bindings or convert
existing ones (without example), it is expected that example is within
that commit. You do here the same - add entirely new file. Old file had
example and the bindings. You now split some pieces, convert it, so new
file is also expected to come with the bindings.

The same as there is no point to make half-TXT-YAML conversion, there is
no point in half-split of existing bindings. Either this split is
correct and complete, or it's not a finished commit and we do not commit
half-commits.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
