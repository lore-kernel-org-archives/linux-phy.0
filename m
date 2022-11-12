Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97737C4332F
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 07:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LB5dOYZ43z1gbdSA+clxYpI5V0nkiGXeDlFWJqkn2R0=; b=R1fnwejZ9HP3IL
	hjCGKrnc8rk5QJShCJdW317lS6U9Q3Fj8taHN2haBAxSpTMC/pFAOdu9oFf2oqjM7FIU0qpq9omap
	M9+m9la5VDMY3XkbQ8ZmZb7YA6ZU8SgQaPHVdtAMS8Nne/se56uMMKEFxDJ05TdQjHzijLRz7sZel
	sbS1yr1Eh5XnXTE43BnSHt2ruMLvekJDk48gpp9oVU8AcgVcjEnjURY1DnsnnUTVNpYFzbJQOCKsX
	4RKMfk6nYhSs7KncOTOfVvTqf/wR0MuEs1em9cNESdXv3xR1BtEIkKW4JcM/pOFWS+lixqX0QUirX
	5qvfEPApLL5rJ8KnO7Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otl0Y-003wmk-Sc; Sat, 12 Nov 2022 07:32:54 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otl0W-003wm8-KJ
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 07:32:53 +0000
Received: by mail-lj1-x22d.google.com with SMTP id z24so6837902ljn.4
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 23:32:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZeeRPkiWJ6dgVYLmrtRGsjTc/jG/dNAJ9wPW3QYFgpU=;
        b=tiYHbvZJnvWktz9Q2secp6W0miGCQWW6dBdJfSLlBajb8I7oy4ca6HMy+fv3ptMOk7
         tltt+7dsvMllR0DMVVlwdiC2nRi71/46qXPlgtMLW+B1YFqCueTDWHq/zOjIvszAQAaP
         bHOG0+yQtCO/d8iCQs8xdYIjPaOra4mdHaCotYeCIcUqYeIiy9aGhDVHK9fKeMKYu9xo
         ouGqw0oRoO9tyz9Pm2w7XR3SD/9zVVRHum3VJVwif6yhMvgpla9uMBUuHqsw0sZux9KV
         wgfYYE+QlIrIIOBqAdz9WEyA4VOeXRC50xk/ENTEeFEIrqp/0KIMzmhlRD406nJNZrjA
         pJJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZeeRPkiWJ6dgVYLmrtRGsjTc/jG/dNAJ9wPW3QYFgpU=;
        b=y+C4dEKKjFdqhrJqJNBhljk1XzlYlo0gYpK4R1o7/uu9zK54Qr/LrbhRHKiIrTmGYi
         s1h1A9FhthtUwciPFfC/BnGPoW25h2VSQUOxj05OicUuvSGhkBpHSEdO4KHV17xxt3L+
         aWJGylQqVAYSOaKTWGY7MebXxdsFIkSVO8E3Au9KgBH3hiBfpCXN40IDG3S70HFMOxCj
         W8mslVWXZBen6SYCI1q0c+DWpOvZs6Wpvz9dtMsv0aYOx7LplcjM8ulgCGBRaG2P2+sy
         EQkB1OWPj5z9fL5DjukM+q1Zb3C5+q1UBtE29BS99xhcTOGxNkasVuIrA75qD+ebx1F5
         TFnA==
X-Gm-Message-State: ANoB5pm8u+E8v8fgf27qEFatW8o75Y+HKC4Y5s12mZWvolsxhXNxDdpk
	GSNkCir5cxiNVpagt0FFpaSVFymzsEwfrPZg
X-Google-Smtp-Source: AA0mqf53TKyvPCvEUZkaKsGEYJe0Siut9CWzlvX53yz43w45aFfp8j2EoBX2TEZ3s8BtbCSHF2ZYUg==
X-Received: by 2002:a2e:9982:0:b0:277:2b10:bf69 with SMTP id w2-20020a2e9982000000b002772b10bf69mr1763963lji.392.1668238371299;
        Fri, 11 Nov 2022 23:32:51 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id t12-20020a05651c204c00b00277041268absm783886ljo.78.2022.11.11.23.32.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 23:32:51 -0800 (PST)
Message-ID: <a889bb3a-cedf-4be8-158e-fc6f202fb7c0@linaro.org>
Date: Sat, 12 Nov 2022 10:32:50 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 14/22] phy: qcom-qmp-combo: clean up DP configurations
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-15-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111085643.9478-15-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_233252_696307_5F961FEF 
X-CRM114-Status: UNSURE (   7.74  )
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

On 11/11/2022 11:56, Johan Hovold wrote:
> In preparation for merging the USB and DP configurations, align the
> initialisations of the DP function pointers.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 40 +++++++++++------------
>   1 file changed, 20 insertions(+), 20 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
