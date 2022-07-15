Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2A2ACCA47C
	for <linux-phy@archiver.kernel.org>; Fri, 15 Jul 2022 09:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hr4iiphGynnc7rTKW04RxGhejdIx3ftZSr0ie4Q/ruU=; b=Iqog40fCoepdBV
	8an9mGancl3FkTi4+KTDZrki6WErKzw9zVz+Rl+2z6RebA75k80euhDjKHHUm1vHbYeWx9LAXzf8s
	Use7BE+GSa1bXp8pvjtOqmD1mZ4zq5Bhk6luvpmoL73f9Je0lr3MUVfc3hgD0YcHzfVddEADKO/mC
	3G/fgXBJh5HOHgDrhbVTZk4T++voLp+rBrKARhQfFdqkKV6iYvfwpI4lFE3uCBPLMCSvy9uhOfdbl
	xUCXev0bOXqsFnzE3CsCb3qvIoG5tCM564fa7oXfOemqiPqQCZm3MCUwYugTQ8dAtifGunRQLAbBY
	ifLLU91wpqgCU5gX0jhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCHcL-0068IC-Eg; Fri, 15 Jul 2022 09:28:13 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCHcI-0068A6-LB
	for linux-phy@lists.infradead.org; Fri, 15 Jul 2022 09:28:11 +0000
Received: by mail-lj1-x22f.google.com with SMTP id u15so5049781lji.10
        for <linux-phy@lists.infradead.org>; Fri, 15 Jul 2022 02:28:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=7lAKt2pLXSIw8Y78aDglwxmws3OifCrCJDIyJl/7ydQ=;
        b=oMw5CMKaEe1o0BsrWvjAIjCpfEYcs+CRCqS2mWgW9bf2tWvsMjhXHCWCF2RBm9jAXJ
         zrBwT9R0bJF6NZgKBseIPdhusgIkJGJZQMp13ZyMWDmMb/Po/VBaC+PVC/kzTvITCTh5
         byGOd0DLiNG/HsO02YzZ5kag3cvPGyEl/XNYc24huSzsA1Uiy1WYIs7cHbLw3Ork5chp
         qebxv+3HID7kY+VFDo6Ql7MAZNmZxqfcowZOtXSV2PSKAnthHnHSgXvyWDuwuKmGvxjW
         2srdah9kti2iXNqyMZ72wOxNapfd8hxwG8T/UBOaWTRTnTU4gShq5jEWxeMpZooMkvL2
         eI4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=7lAKt2pLXSIw8Y78aDglwxmws3OifCrCJDIyJl/7ydQ=;
        b=dzwQqnqM1fQBzmQYwmzSUVMYHHuaGMgxyCwpwkifgJS7CtO6zJ4G5nayUA64R9utKd
         yENhKkQp9TUkOOmSZi6Un0AieP+tK0UT+PAFGCYOLW5fduqBQSZMwoKG/Y3cNpwk5JxU
         A5RZMGrVR/LXExZWDAEXgd5MLeyaWld8WV8YXfhMqbx7sgBPrJyqeoUqo5iXkuFnIqoq
         wTOZVRGJecEBrC+C/t/0hwlGg01HqSZVWF9/d1MEcsJ2XahOtZ+/rO1BLX8Wyiwxjp0B
         sq7YIq+AJQEgDHgoynJiBJNWjtXgYLAHb/AdYMGlTqLRQPEKElQ4EcHal/qi12KEkEK/
         TVpQ==
X-Gm-Message-State: AJIora8HaBOuO5vfMZKbLhp52uAqgU6Mi07F5bzvgfkl937A0/YRuGm5
	7UE37n/vS+wYxN+8JmHSCFE3JQ==
X-Google-Smtp-Source: AGRyM1uRqvzl9P25ieuUjyyi2ChznSaWsPC6k4S2UrcNBoBdi+ue0XgO6K1+kzq3688TpGu6J9w29Q==
X-Received: by 2002:a2e:8852:0:b0:25d:4ab5:593b with SMTP id z18-20020a2e8852000000b0025d4ab5593bmr6129325ljj.261.1657877284869;
        Fri, 15 Jul 2022 02:28:04 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id f8-20020a056512360800b004870ef4a0c7sm817849lfs.17.2022.07.15.02.28.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jul 2022 02:28:04 -0700 (PDT)
Message-ID: <46f8d979-3d66-feac-95e9-a0fe73d32ef6@linaro.org>
Date: Fri, 15 Jul 2022 11:28:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v3 20/30] dt-bindings: phy: qcom,qmp-usb: add missing
 child node schema
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220714124333.27643-1-johan+linaro@kernel.org>
 <20220714124333.27643-21-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220714124333.27643-21-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_022810_739956_DC9376BE 
X-CRM114-Status: UNSURE (   7.24  )
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

On 14/07/2022 14:43, Johan Hovold wrote:
> Add the missing the description of the PHY-provider child node which was
> ignored when converting to DT schema.
> 
> Fixes: ccf51c1cedfd ("dt-bindings: phy: qcom,qmp: Convert QMP PHY bindings to yaml")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

I think you missed my tag here.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
