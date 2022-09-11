Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4829C54EE9
	for <linux-phy@archiver.kernel.org>; Sun, 11 Sep 2022 13:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UvcbI+Qx4wT2+lESc0u0MLrZzsgXsp27jLN8aPD9Yh8=; b=N5dz/BOgoPX+Mm
	2iGL+o+Khq0UsV1R/IqxSK8xvvGzpuz9Qcs8Q8s/LLKIq55/EYdzyCF6hqFy5pwgAv0ieZ1lnadXo
	hv9ZNYTCETvF6SDEMruWHk+JMsmdzyl7EBMzzroEZBxX0MLaxttB4dvJ2VO3XeGvlR0CvALcczp3h
	YNANoKj+F6ZjHjEdRBbdWrlUZvAZQ0pe+K4RNHWOo1R00lF29HFy4c1agKWpivTn1ZZ0sOLnuF2e+
	1ZSIjJKNvLgTLOwx82FJSbv/BHq6rVjWO+qV4wwoV85d0HPiY3qMmxwXU4TH9R4SdNupX7WjCVHEN
	/nigfsM5D8GRL5nOZvEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXN3W-0025iF-1Z; Sun, 11 Sep 2022 13:31:26 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXN3R-0025Ut-W2
	for linux-phy@lists.infradead.org; Sun, 11 Sep 2022 13:31:23 +0000
Received: by mail-lj1-x22b.google.com with SMTP id x10so7616523ljq.4
        for <linux-phy@lists.infradead.org>; Sun, 11 Sep 2022 06:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=ZjdYZup4hi3M7uU6008ZlQ2fxrTrRXAq7VJNcgGePcM=;
        b=sbJ7wXb5kTSc8AAFdwvRQdd+PVXXYYQOnf/uBCOShZwedclF4AwzdIFIog8PtnkmlH
         cnmdNrRjTGPeo+/vPq4V9tM7FVdq3NpnHOEd6fWimIGo4hnVrhERhZL3Gzu/Rx2/gNAo
         vz+EP9657hFzpw//HTZMTpFPtqPLVMvD9250KCt87T/kQaHGzoZgfZ0GqZJuYbye6rRV
         pp7AORI020E2kyjPQIGd+862yBbsPzRx3yBg1waPVLxnvPMRdSxeJoX35U2iJtjz+RMS
         59Yzdmy9joveJyylXQkKfMveGjxW9hsQ/ExZN+Lx/ffHUXY1+Aoh8InWLkR0Vy0lVhXT
         lY2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=ZjdYZup4hi3M7uU6008ZlQ2fxrTrRXAq7VJNcgGePcM=;
        b=UkkTFbQvjqr2Kk3KdKZJxSi0WGdP6zD5Lwvl2DEcGuoIjpI5BaEhQuCQtZNPNL7fhZ
         OpVL87/W3IfJOL7vYWY1/7hpm2ywSf+1xkM4CvaYhaZ9jGmQ6GDxvUZ3icHhXi2idfiD
         GSy2cV9RkfDCfnuFXaZoDm+djaviMl6VL06K74W/DRLKeGKvBn4GXTg0XTGiF7e0hkyK
         00ZAC+ErPQncnq9XgkwpL4CKdi5dtcRqkTjvgAxN8kRZ8wGSzkEKQW3HOJfd6PKOFfFy
         7IPKfFHqVEp2EXCgQLNISVgg1ReIEDTP1on9kAK4Nk26ym8eIPdBPy7Q+LcOtrfT80+A
         Y4wg==
X-Gm-Message-State: ACgBeo0yMbMHa76ODrQdxL0EXT9XyW1y5lYL1XfRZ6s7Nf0OvHMAfHNI
	hFA1+7nXNWJfoqkPweVTbz6NIA==
X-Google-Smtp-Source: AA6agR407SxA2qhyTMLTWVfeK2LQFV3uqfjQbJ8mN8zjxZfMzZjW5772CX7prkwwVBFrUiWkXnsfkg==
X-Received: by 2002:a2e:808f:0:b0:26a:b498:2c87 with SMTP id i15-20020a2e808f000000b0026ab4982c87mr6723966ljg.279.1662903058171;
        Sun, 11 Sep 2022 06:30:58 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id w18-20020a05651234d200b0049a3f2b1193sm233621lfr.154.2022.09.11.06.30.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Sep 2022 06:30:57 -0700 (PDT)
Message-ID: <5b8e8da6-0bd6-cf26-5c2b-887cd1d4475e@linaro.org>
Date: Sun, 11 Sep 2022 15:30:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v3 6/9] dt-bindings: phy: qcom,qmp-ufs: Fix SM6115 clocks,
 regs
Content-Language: en-US
To: Iskren Chernev <iskren.chernev@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc: phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 Andy Gross <agross@kernel.org>, Konrad Dybcio
 <konrad.dybcio@somainline.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220910143213.477261-1-iskren.chernev@gmail.com>
 <20220910143213.477261-7-iskren.chernev@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220910143213.477261-7-iskren.chernev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220911_063122_060369_0E1F023C 
X-CRM114-Status: UNSURE (   5.47  )
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

On 10/09/2022 16:32, Iskren Chernev wrote:
> The Sm6115 UFS PHY has 2 clocks and 3 regs.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
