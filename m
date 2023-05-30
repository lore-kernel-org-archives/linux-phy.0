Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42CE3C7EE23
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 13:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vAMdH2lXeigt+8KOJ9AZDjyA5x/fJepbPF4bxCW7U+4=; b=ASh77kh5RPYaJM
	K6gDJnq0i/zBTYYOOZpfiA4TDRlQSrebuwGTVqr07rndTmnopjdWDXGR7+FRHl3WDeon7ErK7DJsA
	9xgX50h3ekknLvScq63h9F/I//m69SrhngiRvKIgKdYfGLKRtgYOWaVlBKVRvBs90rKmFBu1+pHSp
	w80iMJXjD+BfaAn+RXXMdzL9KohaOWoaKVqei4WEKLozTaUPjWIG6niUmKkDyo8rkbKW7dCBYU5YF
	YewtqzXNwHwTQdcmJA6J3Q+ozF/8HnmkNW1L3AhQALWgzafzroHJHR3kxWq4L1zldfEaGdAesvBsL
	adEFIUk82mqiHX3zKJ7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3zHh-00E1Z0-2I;
	Tue, 30 May 2023 13:21:09 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3zHf-00E1Xf-1C
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 13:21:08 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-51496f57e59so3817284a12.2
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 06:21:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685452866; x=1688044866;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E+eOOtFzZaMUgzpRXCTOhauCZvZ2ynFbGFE/iL/+7bs=;
        b=FYCaGVlW5w5LKnkaLbT/K7xC4sgxPR9LtKj7+k4YLieH0eGiQwzMy+hgpJbbRrj9MC
         5y1WhbO6jFitH0xRstz2DVx118ojkGzHVGlmIVywkanTiNLlzAwmMkkZmVvKf3W/k3Ts
         XcK5GVJT5x0S3qBuuYtYTLqh1JScJsTfJxvv49HT2qyr+IvgZpnz7dHO/VAFgh3Br7vM
         T3vXJ236PEesrfuIxqpCIJh1EP4+g6X0Ck2ptZKBWOkRO6QL4DHgyFGSy0SnymRd4pWj
         W0swycRrswpcYUvK1i5IROG7IuIbAFZnIpfGK7NbheBjBSopHyYIVc+cdHwyqbJPEPBH
         w27w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685452866; x=1688044866;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E+eOOtFzZaMUgzpRXCTOhauCZvZ2ynFbGFE/iL/+7bs=;
        b=XCFN6zjUw5QL3Il0OTHKfldnQjXMR0bn+eGFi5wS9fTcdNvb4XFrLv10YkpRIlLjr2
         OplXGxXiXsy5BYRa4Frf5qJIJXohsAXSZuXb+X9NkTIY55vxrXOWAGQ7Kk0q+Gcn6Fwi
         Y7sql3MYS9Hg02nampAy3osR+xauSR0elwNVYqvU3qgqCHCroUlAuu5Pd1KAd62M7MMb
         Sc99hXNAHcCXMj8dlupF6oAwksso+5u3gtUibhiZqePTfQBLiSmaAFbIr0/vsQzSt5is
         hrX5FXkB6fnmJhY6APJpKkW39YgAOjHfsHbPMK7N8j9vDhgnq1NAkh+wfUJEUOpjvxfv
         amMg==
X-Gm-Message-State: AC+VfDzkpRbG4Td70vH/S8R/yhZbyIzI5SCgvqymSs4iyu7ZDRQakc8h
	epp117JjLbMHZNxLOdt2sodahQ==
X-Google-Smtp-Source: ACHHUZ5g3cfwTuUld8iB6zign2Xojoa+5qld/dJybIZhplIUr7yPUPRkQLMzEu0iOZGJjcIMDnWldg==
X-Received: by 2002:a17:906:db0e:b0:970:e80:e29a with SMTP id xj14-20020a170906db0e00b009700e80e29amr2500203ejb.68.1685452865904;
        Tue, 30 May 2023 06:21:05 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id pg27-20020a170907205b00b009662d0e637esm7252694ejb.155.2023.05.30.06.21.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 06:21:05 -0700 (PDT)
Message-ID: <6cea59fe-3192-0a0f-9633-7c2d83d5a87f@linaro.org>
Date: Tue, 30 May 2023 15:21:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 0/4] Samsung Galaxy Express SGH-I437 Support
Content-Language: en-US
To: Rudraksha Gupta <guptarud@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>, soc@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <20230527040905.stmnoshkdqgiaex6@ripper>
 <20230528001010.47868-1-guptarud@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230528001010.47868-1-guptarud@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_062107_405261_233589E3 
X-CRM114-Status: GOOD (  14.07  )
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

On 28/05/2023 02:10, Rudraksha Gupta wrote:
> This patch series adds support for the Samsung Galaxy Express SGH-I437.
> Currently the following things work on this phone: UART, eMMC, SD Card, and USB.
> 
> version 2:
> - Combined patch 1 into patch 4, as the sleep_clk label is specifically needed for the USB node.
> - Reformatted the commit messages to align with the style used in other commit messages that modify the same files.
> - Included a cover letter to provide an overview of the patch series.
> - Slight refactoring of the device tree source (DTS) file.
> 

Do not attach (thread) your patchsets to some other threads (unrelated
or older versions). This buries them deep in the mailbox and might
interfere with applying entire sets.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
