Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 526F9ECAAD8
	for <linux-phy@archiver.kernel.org>; Wed, 21 Sep 2022 07:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Z61Fr84k6xnoepp9o/uCFgiLH6HxwKOsGtuwJ98pU4=; b=f4UwWvJ2HcAECq
	WAc0+HiVQ2GQJfiU5GNS4to2yySZItXYDC/h7NAIptj38p0vsMFyQrTggXN8oWqhJEDh/PrGlFENO
	i+NGj/nhVybOiSyzhW82kkPVx1i9sB2Pcb560geOXGS7JpyQg8j7Kvaxvy5UOqqktlGcwihrw4C/3
	w6UBmDwr2mhq1s9DZMYJ/FWwzQ4DgCxhRFYgVjdYbpVXja2aUWjDhqlPXa4Qn14lCmr2pt9dMgE3w
	wHOkxzFF510VDgjGlnDaL4FuM8qWizQEeT3UhBqKOIEmxoCGWPTV6enNNtPagx7HbsmuVQNsFfeB6
	ToNkHsAs0T8UgOpKEPCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oauEw-009d0o-OR; Wed, 21 Sep 2022 07:33:50 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oauEt-009cyD-Ab
	for linux-phy@lists.infradead.org; Wed, 21 Sep 2022 07:33:49 +0000
Received: by mail-lf1-x12e.google.com with SMTP id f14so7787885lfg.5
        for <linux-phy@lists.infradead.org>; Wed, 21 Sep 2022 00:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=aQe4EbEwH+Te0he6Q+LesKbwiVWeT2RRaLMZab1VYVc=;
        b=ZGGRhdXjuUgKIURwXvZnh8kSkfpsyqxgt0sEy77zBa57gAtYN49R7qgpCn6MtAKspp
         6mk27COPAeO7YEREqjiPzss317/5ubdKcPwY6YBwC/Vmp8piNwb9jvZxsxeFBNBlDzkd
         6JlABHQuPDUm2sp/Srxxg88vUvbCxYJc+Q8BwjwbzUHL7O1wy0RpVa5rKy/vr94e5n2s
         UvW6Bl7467JMwvoKM04o0x6LgYjUX+ieDXlj33qWsNwVZUKVMT6WzGgxYlREve3EGUws
         r0bxocxCMvDDwXLRvkq9UYL3LMWPb5FrOzGSY3yT8vSF6Re/66KajnXpOuwE4f0k4C2e
         8ncA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=aQe4EbEwH+Te0he6Q+LesKbwiVWeT2RRaLMZab1VYVc=;
        b=UEdAUWbaC4dWT5fTmUArRBWwyeM92eYlco9X65ZU6FgWFdCtHODjN1fsNLXa6ZifXo
         hH4YFNclThvxKzH9zvBOy1rCPjqB1tJ72JCI1iyKN0ECFGrTuafaxFKKcQY87zbQHkVw
         uDCSAfdqhQ6AGYhI7g+SF45WRpQPUsnvsDSavSjlBGyUSJROmUJPQtzZNQg3ynyFvXaw
         aeCUgftb+PfynFtUiSnKFUln/wZZT9zJEOZxIE8Cmcw5GTyWNMrTOibEAfpjtOa0w3qi
         /ZUNKL688UsMFR1MgNdIEVHRiRHIw5P0mcuV5nlr5iqN92M/NwOfI9xje5Rr+Y/WsYQU
         38BA==
X-Gm-Message-State: ACrzQf05N6q08ysFFuFSXhU2DDza3lkd1XVcut1gmTznCCjDVB7URgy2
	JquO0v9vdNoPbVPjzQoe+XzYUw==
X-Google-Smtp-Source: AMsMyM4vSON1N8m0Ol1b19FpnmbrXqUNNqyWHu5KucxAN2jD4RDa4f61a5MrJj+hQMxzB3IxGQClqA==
X-Received: by 2002:a19:5f4b:0:b0:49f:a4b7:3f1c with SMTP id a11-20020a195f4b000000b0049fa4b73f1cmr5126375lfj.333.1663745624970;
        Wed, 21 Sep 2022 00:33:44 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id x25-20020a19f619000000b004946b549a19sm324282lfe.45.2022.09.21.00.33.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 00:33:44 -0700 (PDT)
Message-ID: <571f8852-0602-04ed-685d-cc972a897f10@linaro.org>
Date: Wed, 21 Sep 2022 09:33:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 3/3] usb: dwc3: qcom: add sdm670 compatible
Content-Language: en-US
To: Richard Acayan <mailingradian@gmail.com>, linux-arm-msm@vger.kernel.org
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felipe Balbi <balbi@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org
References: <20220920224320.152127-1-mailingradian@gmail.com>
 <20220920224320.152127-4-mailingradian@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220920224320.152127-4-mailingradian@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_003347_420849_671D9FFA 
X-CRM114-Status: GOOD (  14.11  )
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

On 21/09/2022 00:43, Richard Acayan wrote:
> The Snapdragon 670 has DWC3 USB support. Add a compatible for device tree
> semantics.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  drivers/usb/dwc3/dwc3-qcom.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
> index 9a94b1ab8f7a..34b70c3c2f70 100644
> --- a/drivers/usb/dwc3/dwc3-qcom.c
> +++ b/drivers/usb/dwc3/dwc3-qcom.c
> @@ -1010,6 +1010,7 @@ static const struct of_device_id dwc3_qcom_of_match[] = {
>  	{ .compatible = "qcom,msm8996-dwc3" },
>  	{ .compatible = "qcom,msm8998-dwc3" },
>  	{ .compatible = "qcom,sdm660-dwc3" },
> +	{ .compatible = "qcom,sdm670-dwc3" },
>  	{ .compatible = "qcom,sdm845-dwc3" },

No. This does not make sense. You already have fallback.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
