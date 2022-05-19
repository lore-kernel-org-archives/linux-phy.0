Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B9B0C43217
	for <linux-phy@archiver.kernel.org>; Thu, 19 May 2022 09:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZIWds2jxCvbIzt1tbu9HkS69EpYSQsFng/jteMptFQ=; b=EWWllHB9PlwVp3
	K1WM4Jfy9YHsLjYhB6hXgmr5Pk/j1fUowuNkq57S7jPf1LAsxoYKAdmS82raU9n9EcvJ7O/1i5oke
	4rgdYyV9/483HaSjO+kE19NRGIBqJgsxxjPZ3mNCgYCsOwDRnLbkehoczFrk4MgWJPE0sPFWHds8C
	TxCjHwDbBHczfp8EHg109C6qZLtQKKcE/jXvYa4CiQR6tEjYTlycOMA/65sjnTu5Zv3OX8QhzQ5fB
	zgz0bMdnSsPLFemPRlQghdoz7p9KOdNv50BCke1Yv1kaCAgIbnL7U1molVkYQptzWfG1pWxK2lRin
	AFpGY3cqyayJPjC+LMrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrcqD-006Byh-1F; Thu, 19 May 2022 09:53:09 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrcq9-006BxM-N5
 for linux-phy@lists.infradead.org; Thu, 19 May 2022 09:53:07 +0000
Received: by mail-lf1-x134.google.com with SMTP id p4so6776119lfg.4
 for <linux-phy@lists.infradead.org>; Thu, 19 May 2022 02:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=ImTMJ7NEr3jThpzaHgd3rGMXcI9+OPwGlMvh89jjfd8=;
 b=yFxY0RmYLbckm7L7RyIXbZBUMKidQnhhLcgwm2rTjG3bG+Sj3j6g3shaZoH7IfNFhL
 IpaTcCNYQVguPwfqcMcqEwciIJcGEuhQChcA5XDy3H9PCRF0A9BMMti6BPy8KgNyw/a7
 iPBzn2wrjxio8ZkE8oS5a5lOLLPYi1sQxHoXblkmr6DZgZus5UXyZC5pB+lFGx3Oj7F/
 UG9rHPROa0J78RDjFqzNmmwIA3+b6wnD6R1rjaDTexKuldKmDYPlKoNQn40mS7tO/A0j
 a4v7X9NidVIrvmDIw5AcM0qrK8yNz92cQFjmxlUYKuhdvD+ibzy27JHPHdJocz6X8hnx
 C8zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=ImTMJ7NEr3jThpzaHgd3rGMXcI9+OPwGlMvh89jjfd8=;
 b=R0Jmb+wKyDTMATGyXbNNRXJ8Zco78QHogt8Ym5lC2rWID5lvbyXc8bVRfYiBRB2DEA
 durFYgP/9PnUehOOUuKUrp5PeZwUGnJVYWaKrxzf75qHI9PmaO1R8Hl94TjmQ6R5cAaP
 MbaEDgqQieKb9RJDkH1Y0me7tK87f/IPTuom8u7bCFtpXTshKQvke5TpTCCOMiB3/FAO
 3gNewGpsntu4O+zaN8ws+7UwYQ0xrranJXK56Z5jls+8HQm19MjtKyme+owum0OWuNzu
 WVAs/jPJaSerWd4QdRKbs6p0WOggQSLOMlPYClpdzLJE0v2Sw/OE54qb/oriQvx7JaqQ
 SgPA==
X-Gm-Message-State: AOAM531lqF0RQVhfDvIGl2EvaouZR92X5w65ZjBNbnGkfC2YxT9buGnQ
 M1kUG58wMYOsn1OOirCJ3cW6jw==
X-Google-Smtp-Source: ABdhPJzZrjcDsXy7nuFWUJ9mKFNUWqpakjcu2AWzmGzIYI+ju02ZJBQZ3RBGJDWYSaml+jR2/C612Q==
X-Received: by 2002:a05:6512:31d2:b0:473:a0c7:ffea with SMTP id
 j18-20020a05651231d200b00473a0c7ffeamr2688485lfe.271.1652953982021; 
 Thu, 19 May 2022 02:53:02 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl.
 [78.11.189.27]) by smtp.gmail.com with ESMTPSA id
 s5-20020a2e83c5000000b0024f3d1daf04sm511024ljh.140.2022.05.19.02.53.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 May 2022 02:53:01 -0700 (PDT)
Message-ID: <bc740a3c-5c12-f9f7-5518-f6f1121d44a4@linaro.org>
Date: Thu, 19 May 2022 11:53:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v6 2/3] phy: qcom-snps: Add support for overriding phy
 tuning parameters
Content-Language: en-US
To: Krishna Kurapati <quic_kriskura@quicinc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <swboyd@chromium.org>, Doug Anderson <dianders@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>, Wesley Cheng <quic_wcheng@quicinc.com>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, quic_pkondeti@quicinc.com,
 quic_ppratap@quicinc.com, quic_vpulyala@quicinc.com
References: <1652934489-23386-1-git-send-email-quic_kriskura@quicinc.com>
 <1652934489-23386-3-git-send-email-quic_kriskura@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1652934489-23386-3-git-send-email-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_025305_817244_6C5A86B4 
X-CRM114-Status: UNSURE (   7.78  )
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

On 19/05/2022 06:28, Krishna Kurapati wrote:
> Add support for overriding electrical signal tuning parameters for
> SNPS HS Phy.


> +
> +static const char *phy_seq_props[] = {
> +	"qcom,hs-disconnect-bp",
> +	"qcom,squelch-detector-bp",
> +	"qcom,hs-amplitude-bp",
> +	"qcom,pre-emphasis-duration-bp",
> +	"qcom,pre-emphasis-amplitude-bp",
> +	"qcom,hs-rise-fall-time-bp",
> +	"qcom,hs-crossover-voltage-microvolt",

Please test your DTS with dtbs_check.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
