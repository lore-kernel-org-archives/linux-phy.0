Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D544FC43334
	for <linux-phy@archiver.kernel.org>; Mon, 18 Jul 2022 14:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DdzdxPYZZ5rGUh47PYVVsQ8MT6l7iyU7Mr9fj8knxtE=; b=Mfrs/j9kFrSt79
	leZ5swQRwhLwCaQy8KchrxdLnf5oeePOFp8U8JABBU6fESjnj7vqUr7kmdcTwU6EdXqxlNxI0nOxk
	1X2S7S5pdwUaB0+JlboaXJW0XFWfQiEUMORVsEGVnqFtGRCAnh7UnsPqoIG1rAfdEE0rA/v4FxZVj
	GlURbxChXJttgUaxLy95i79s978O7tAtkfbwlVyfWhdXcojoDj56k5u7iX/4PePcQSukfjgaZG9/E
	NMPJoT5iGDI4+cnpqrAy1E40EmBT9Vcvje5bV9gNb2URAir63BnPD6dQc+8wPRen4HssZ7bvptDSl
	qwBMNNIxAUZ1JXz0Db+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDRlE-00Eh3h-96; Mon, 18 Jul 2022 14:30:12 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDRlB-00EgyM-1H
	for linux-phy@lists.infradead.org; Mon, 18 Jul 2022 14:30:10 +0000
Received: by mail-lj1-x233.google.com with SMTP id u15so13782043lji.10
        for <linux-phy@lists.infradead.org>; Mon, 18 Jul 2022 07:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=/5oIvxDhU1wNW+eL7Qgvi7dKgqP5roy0pnTZFlmRHxE=;
        b=iCPfT+Xn0NP2BrOqLN6FJa1BYWwl2rY4H9AvMI3zt0sk8J+Ov4JOmhI1YXJxVJGvdq
         iIYTvhQ2KfaoyTwDuo+3koLssU06OCgZBYRpzPlJ+HZSkn4WsHEzHvyeVyb9atfi9Xd2
         4uIjIZUKD86hg75VTvHxwMdnCuopt/1cfQy8yDRmJivAv6VMDpLIfpq5CDtcdD+LGHMu
         RKV+pxpvXbqKgI+xo5QjVXN7OO52FES+RoUkZJKONrdY9ydMCTB0n87X4ysU9rO+zTtw
         9yiDCzX56WCKn6uKndbSUuAboPBm5Ojw3TY57DuaMPGm4OD/gYJP/FZUXxM/q7uGPyNl
         YTog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=/5oIvxDhU1wNW+eL7Qgvi7dKgqP5roy0pnTZFlmRHxE=;
        b=g/24x5USX2FA+QdiAgYCqIDP9IdbMGNTGuaz4tZKvXaCxrZuw4dtUzczdP824dIcsy
         053IDpJ8wQYmeoygNAwDJfzi/OSwAYH4lHavxSy8uOQv1qDUmMmcC/ydUnIs8bYYlWpf
         RhunoJ9mK1goYbMfMEcNLccZx6vcqMqQcNZNxwxSf6fOUu7m91qzC3/72nTFkBR8Lo1/
         o4+g912OdY4RM4RPBunrKaQZ3MSOhEDU4o5rRFAjSgyL9Va54k9zynADJ7nj8gZhkZWK
         4ehPyaWHi0qMLGzhcF0t1fnEzU+v2ucpZhy64enSoPoxM2Ra2bKULjarjJ0S0N2SP3mU
         3jMA==
X-Gm-Message-State: AJIora/PdyJrlbrzhp3Vhyy8vcO7iIxunAc8oRPu8WOHBnITMLR7IzAF
	CMLV8FibaosQk2XbuXffVfk8vQ==
X-Google-Smtp-Source: AGRyM1uyh1ig1wRtCAeayUglHsEzfADmdSe/JCLJNHNmtTJeS57mUYCm9kEivg0IyHc2hj9uj3EMVw==
X-Received: by 2002:a2e:9690:0:b0:25d:5357:37db with SMTP id q16-20020a2e9690000000b0025d535737dbmr12322895lji.62.1658154605338;
        Mon, 18 Jul 2022 07:30:05 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id c39-20020a05651223a700b0047f76a935a5sm2619108lfv.137.2022.07.18.07.30.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jul 2022 07:30:04 -0700 (PDT)
Message-ID: <7ed2f112-54d4-2652-542e-079541aed394@linaro.org>
Date: Mon, 18 Jul 2022 16:30:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 3/6] dt-bindings: phy: qcom,usb-snps-femto-v2: Add SM6375
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@somainline.org>,
 ~postmarketos/upstreaming@lists.sr.ht
Cc: martin.botka@somainline.org, angelogioacchino.delregno@somainline.org,
 marijn.suijten@somainline.org, jamipkettunen@somainline.org,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220716193257.456023-1-konrad.dybcio@somainline.org>
 <20220716193257.456023-3-konrad.dybcio@somainline.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220716193257.456023-3-konrad.dybcio@somainline.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_073009_149596_472F5C15 
X-CRM114-Status: UNSURE (   6.71  )
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

On 16/07/2022 21:32, Konrad Dybcio wrote:
> Add a compatible for the USB PHY on SM6375
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
