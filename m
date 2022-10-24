Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65396ECAAA1
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 13:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PIKgMnqKWlTA4o0zUgoiOSlYnby5RfBy9Z6sUmVk12A=; b=K8ofc3e944XoyI
	MwR9dFa/xmGZ2xUw7LtFm7ccgQptXT3kIEIWw8RYuESph6fIfWv6WHATi2YWW5OgfTKOZfbeYN3t9
	1WXOdiGM/sZmBGFDM2seOIj08K4iQiq/wyX4SsbgkuGbmTkHL58GMqJIwW8umf1XUDs+AcWHzp50v
	k9j6BeuFZfSLm46kgaaHWAXmXN/BTBIFQ0XXyRQW6nNCuoB2b4zxCkQuaEVgaDkpt2ti53yOvUF/d
	llgOFdlLonmxUM5A6BM5wI89O0sMj4l+WaM/ebPX/eEHIDHWiqh5ka7usF4otoMkuhoqyrkJqsDA/
	+GwSnJuJE1wB5WJckRcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxbF-001jNc-Qk; Mon, 24 Oct 2022 13:34:41 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxbD-001jMh-Ij
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 13:34:40 +0000
Received: by mail-lj1-x229.google.com with SMTP id d3so6328763ljl.1
        for <linux-phy@lists.infradead.org>; Mon, 24 Oct 2022 06:34:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bK2ieUrrvYJmE5hExom0WOv1/p68mSRhbKTtAuxpHNc=;
        b=DU+jDj19WXSoI5bv/Tc44cgMOMyQC8VnbbEjETrwpceV8NfNMV2gIAZoGvUzR9um8J
         Q9T2y1PS8UcKXc5h9XtltiTy4Wej7mHSIqgDBjLPSdwhe4siktaQjzy0vdxAzYE4vGgV
         sd3JzHzqE5LCiaIVHbSNCHuJRDIOg51PYRXr1xUG6pxOrYneAmyQCZGWdX1pzjnK5J42
         MhkDxnP4WpsUS5DyLBpMjlPYydQb5oxUIvo9XOh4nLBTuaByTvrvJT74Cy9+SZshODcM
         cEvMGk7jlCp2rLUZR+3bWM+uWxYAGUsNvpI3cE6pIqK5q8nz3v2js/drqsReWKTfvZlA
         J6tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bK2ieUrrvYJmE5hExom0WOv1/p68mSRhbKTtAuxpHNc=;
        b=eOpBMRU/5UncGis1BXpuuvCR95bUnNQ6nvk8tnijWEO3gUIaW7NUoLcgZxgwCQ6JZC
         WabZUJHrnB3nfjvV9FlEZ+XfMSdVf110YLoaEZVSE01PPp+h+cQVdMLdVSFl8ULulrTy
         ac3N1WLPljujd/xZ6cVy5pDrWU+aRgzCjUKcw9F90JXz5Qq7ZwVroWzC1Dw3fgoPOe8Q
         mdzWM7OPpUCCIQMfarz9Ox1o0l77VMJyFLmITFqffRl8uw2r3CN3GH8FlqFphu37jT2k
         +w/uh3vyPA10hroDCu5r2lzR2bML/y2Aq0W3nohFAnEbeFOcO5YCglZUBr9dYZyXO/l3
         WH6Q==
X-Gm-Message-State: ACrzQf3xh7wG+uSSakGyMl3jaNkactXIhrpBUA2JfvNCQ05CcSHB4zWC
	d93XWe8cJJ/UO+Bw4Kq8EWhH/g==
X-Google-Smtp-Source: AMsMyM7VdqMiPzoVj8ODiYzF+mma6Pz21IhmI+Gtd5+td2dZX8TYlIiEuOCzbMgdQlFmaA+VehlFJg==
X-Received: by 2002:a2e:a551:0:b0:26f:ced4:af36 with SMTP id e17-20020a2ea551000000b0026fced4af36mr11588306ljn.90.1666618478179;
        Mon, 24 Oct 2022 06:34:38 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id i9-20020a2ea369000000b002770fb5722fsm265635ljn.123.2022.10.24.06.34.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 06:34:37 -0700 (PDT)
Message-ID: <88765b48-a386-4390-9a06-658ae3185fa7@linaro.org>
Date: Mon, 24 Oct 2022 16:34:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 08/13] phy: qcom-qmp-usb: rename PHY ops structure
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024100632.20549-1-johan+linaro@kernel.org>
 <20221024100632.20549-9-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221024100632.20549-9-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_063439_644773_C081B34F 
X-CRM114-Status: UNSURE (   9.01  )
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

On 24/10/2022 13:06, Johan Hovold wrote:
> Rename the PHY operation structure so that it has a "phy_ops" suffix and
> move it next to the implementation.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
