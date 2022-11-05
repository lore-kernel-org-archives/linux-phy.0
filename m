Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0CF4C43219
	for <linux-phy@archiver.kernel.org>; Sat,  5 Nov 2022 21:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mo0KSoF3swtQJUjYH5QFhqf1s0Ovc1t9kLOxIfMLenw=; b=OTHlki/ot46/Y8
	uOX5Hkjiv2g3GVJx6jsDr/Ug4cfutyjqVPu0/E51s+lcDYFkNrqrnpSuyBhRM7n5eUhT36G2dyXmh
	PARiUqO4YXcToF0ECsAjgun95EhtIBwpiYPOHbzdXon8qo0ZEfW43LmvnZlpi22F6Sv1FMafsvXhR
	yLrPTsiEAPCqnxRK/mSRpYYzq3SDVAMQh6BQJ4UKdcswxcfwtx8I7roI+VyGbNYAaiGN5y1mAmlv5
	XXKb1hiRSw2oJarJyRkHbta3RnLIYCvaLUXKC6JpAYZP9Yy9+bIq4QVneNmhMVLAujnhEjcTVfS/0
	MxXmMMmjyA/SpRED0htA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orQtP-007Hcf-Vn; Sat, 05 Nov 2022 21:39:55 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orQtN-007HcI-VC
	for linux-phy@lists.infradead.org; Sat, 05 Nov 2022 21:39:55 +0000
Received: by mail-lj1-x236.google.com with SMTP id x21so10998392ljg.10
        for <linux-phy@lists.infradead.org>; Sat, 05 Nov 2022 14:39:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wDcIJcBi6g/qTugxSJoaAlKPWTs30yKTjAwn5zyj53s=;
        b=ASDj/J9+wRrN00QLmymSnOx9IIJdjK5+0StudWW/LmTirKiy2F45mqhrLIVz1l9x/a
         dnDOfINvFkq0Y9bJlNGy0BIBcTgK6682rHySG69N8oVxuiEn6cYq6kHthqJOTsnlZt8+
         5P113RmeGEgZITcq1Goi6uvdmX61U8to5y3g0TjATI14ljcaq/HWmRBeqWTJph0cEUtU
         VRg9wtwh7P9ia1TjzPoHH0RAaMqlsg9s8ecU02y9WNVxeF94DuixW4IN8Ay6gURVF1vx
         WV6aKMj3PIgfNQwg+/NU03a+tMvQ4czhWIbRTJ63hUunZKrZDgqCUbUoWw9++Q6S9U/s
         QfUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wDcIJcBi6g/qTugxSJoaAlKPWTs30yKTjAwn5zyj53s=;
        b=I5Pkj4+g4rL8SUxY1oJq57oTiS1wX1kMCX/ASB/rLazLpcpaOnRJQs0kDvsYxfj4Ob
         e/QEjYGwdylrGKbAzqlXaJQufbdzfL3tGqpxB5rsgRMNWHWPAzK0eMEH4Ur0k4/WYiAT
         W8tsh6OC7XCLF1uvDZQJf3OswlKou6yniJKbGHHVpd7AWrJmVjAbIKy2wo/amcpTYy4P
         d5aZkm5/BEDX6eLyQxTds6ESAttgFaJy2sDkF9PQVNXMWBEu5GoKAcJTa9Oq/d2QwvsT
         hKBq/zZzXxorJUo5gzuacKyRKQYeo0lUJ/hdbOo1o3xd0NT5ppWWGdRGWhGTNsBNwpLW
         07LA==
X-Gm-Message-State: ANoB5pnAO1FgGK9OMFBSlS+NrzfviejQNzbY/0u0owX2IIWRkpefsOdZ
	HMBd+rwzE00RJ/qOWW9kQAdtQA==
X-Google-Smtp-Source: AA0mqf4IKa3pR/UQQq2LsUdHHa3ZRD5v/r/aPDwmpGOTRKJqEPMiSadFo8MeoPeXSdY1rfyR10yAFw==
X-Received: by 2002:a2e:5c42:0:b0:277:9847:286a with SMTP id q63-20020a2e5c42000000b002779847286amr1123359ljb.309.1667684390373;
        Sat, 05 Nov 2022 14:39:50 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id b22-20020a056512305600b004a8f824466bsm423619lfb.188.2022.11.05.14.39.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Nov 2022 14:39:49 -0700 (PDT)
Message-ID: <2bee4c98-d8f3-69fd-4a1e-7a9abc4f7e3e@linaro.org>
Date: Sun, 6 Nov 2022 00:39:49 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v5 08/16] phy: qcom-qmp-pcie: use shorter tables
 identifiers
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221105145939.20318-1-johan+linaro@kernel.org>
 <20221105145939.20318-9-johan+linaro@kernel.org>
Content-Language: en-GB
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221105145939.20318-9-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_143954_035792_A358FE27 
X-CRM114-Status: UNSURE (   8.67  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 05/11/2022 17:59, Johan Hovold wrote:
> The QMP drivers all use 'tbl' to refer to their register initialisation
> tables.
> 
> For consistency use 'tbls' rather than 'tables' to refer to the new
> aggregate table structures.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 90 ++++++++++++------------
>   1 file changed, 45 insertions(+), 45 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
