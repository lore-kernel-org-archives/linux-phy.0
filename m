Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 767B5C76195
	for <linux-phy@archiver.kernel.org>; Mon, 27 Mar 2023 10:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JTBDxGbD+hsIbggv0rO+xKSSMCLeVqM69+5vAE8xhD4=; b=MGI9cub8EFbtNnXXarY3gY8psk
	9czLfDSmrwmPZTOxx03CA5f9QxH0GQ0IDDWi/uEJhyXck61uB0KmbpcrEClMLaxEP5sUcVdfw+f9L
	eEyITcdtRavjtYBul+UnYFqyRDIcEarTFdfziAoMa0madGf2haD0zJnJFw1HLeYW0LAv1OoJArYCz
	tYZOoJqIMSQFUW9ULlA0t0oKGI8GOj6uY/0CUrl96ba7H3+bLA+cFsopDzp4R+ORAQ1crz7FPLpNe
	uYk5yCQjqaPCSPRNrX0Bat7qoNOwLQ1yG5JJAVEa/KpbRBv7Po55xI4GVjz/+ssaPDM1z7NSE69VN
	fEcjoA+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgjmV-00AaUn-0f;
	Mon, 27 Mar 2023 10:08:51 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgjmS-00AaSE-1n
	for linux-phy@lists.infradead.org;
	Mon, 27 Mar 2023 10:08:49 +0000
Received: by mail-lf1-x12e.google.com with SMTP id h11so3678701lfu.8
        for <linux-phy@lists.infradead.org>; Mon, 27 Mar 2023 03:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679911721;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1QE/HFk6s3/5mUxX+QTcSpZJVPO7nyaqVrmY4npbtgI=;
        b=ixBFB3su5MCyL3GVcmGdr/rvKgNQiHLNc10/hEO2aez2/upI1XlreWRJLVaOuS12rm
         b6Qu2rfc7cY31qaGWFmzl8o3QbZx9bJSjB1xKcrMxJVEE9VwtaqtbZm/Ir0OdD8x2R3i
         O92stGag13KcdwVN2syZSW7EjN7WplHMlsNefCDjMAl5uzC5XFOs/y4qf8M1wK7n+WZn
         y/ywVHtxl+/Rsw4tgIdl04zmYpd5vgGj8g6L0cKNWF8T+bnuVzmReKm3znlAlwEkPlRW
         8fGtWQQCae91lC/o77S2XFShmbC+DWNvRQM0DEqqwtxBacL/vw6dzgr+Uhn5HwJCiplu
         w9dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679911721;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1QE/HFk6s3/5mUxX+QTcSpZJVPO7nyaqVrmY4npbtgI=;
        b=20T6oSlNE5rTDbi3VMNNKVLi/2edDfBsO2NBf+FmOWCnTgL0z6uG0psTMlmibLJluX
         1tmGmReSVmMQ7OwvT6eA/mWTyKzg6UegrE/0VSBrGjmDuw6+vbh8JGFLwNGQcMGIF3Jf
         MwXh5ftG2aMbCSzKp+4LhaaE9m58w7mcQ3ISODLBoAp4vvcPdDstUJoRs5MkR+1I0+W5
         JN3avNoPDEJTr/XsjGTmmavghVtFWA1xw/0yJOIyrpVtMNi6Amgfwbg7vtAHqwbX+A/o
         K/3vx7N198Dh5geM3x2GY7J7MlYmWrT4RECpAwjVY1PR35xqFGWOEm8tRgaTsbqzrG3d
         eLUA==
X-Gm-Message-State: AAQBX9cZ1uyIBGOxpWn1KME+A7QcxHN9GyKEArZske+vEMiUptyYc5c4
	OyGecn3E6rpYm28Brab5/pF/jA==
X-Google-Smtp-Source: AKy350Yr6aHq7NchYbNKTii70X6B4hH+TTIuQLgtC2Y3cInvCQMxcQSoH4kKYv+qJut7jAuXG36gNg==
X-Received: by 2002:ac2:4464:0:b0:4e8:4d7b:8b92 with SMTP id y4-20020ac24464000000b004e84d7b8b92mr3203236lfl.13.1679911720789;
        Mon, 27 Mar 2023 03:08:40 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id l21-20020ac24315000000b004b6efcb7bb5sm4600720lfh.169.2023.03.27.03.08.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 03:08:40 -0700 (PDT)
Message-ID: <b555308f-070a-d982-d8b7-761052eb1b40@linaro.org>
Date: Mon, 27 Mar 2023 13:08:39 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v4 5/8] phy: qcom-qusb2: add QUSB2 support for IPQ9574
Content-Language: en-GB
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <cover.1679909245.git.quic_varada@quicinc.com>
 <fdb41b5070461c32590e140064f645ca3d3825b1.1679909245.git.quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <fdb41b5070461c32590e140064f645ca3d3825b1.1679909245.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_030848_591559_D34AAC77 
X-CRM114-Status: GOOD (  10.01  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 27/03/2023 12:30, Varadarajan Narayanan wrote:
> Add the phy init sequence for the Super Speed ports found
> on IPQ9574.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>   Changes in v2:
>          - Place the entry such that the list continues to be sorted
> ---
>   drivers/phy/qualcomm/phy-qcom-qusb2.c | 3 +++
>   1 file changed, 3 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
