Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DDDEC636D6
	for <linux-phy@archiver.kernel.org>; Thu, 23 Feb 2023 09:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t4ILI62JHBxAxX7BEcu/nvA6e7kegJm8WEziDMdPxCM=; b=HiAnvYv5eXE6G6
	tpLQ3J2SGWiDhOsu8zJNzGP3KgZSIYxOUQckG/xdusF3wfXKQfvneBnHYsIU/USneOPaMb531LFbC
	HtoJEc/Eo/U65VDcoriT4qGXxBhKepri37kKhhytNfkalr6Cz5fXJLqxbffVF5hSE2POCCuMuvBsd
	4Uxn5TqskfbybmN2rDC9YDSwEpsdX9mNm4i/pm8VE9ijFAQNyAbtnT0++ONHJOLahod+s4OfSIGpT
	XU43awpNxTW9jZkjYOqWhzlV1RxFxWAqlcLD8Hl4pbnka+X8tOo7GVS+gl3Li89TKNRbyh4LQzObK
	elv2mWIvqu9+ufjSNfrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pV81L-00FkLQ-Rf; Thu, 23 Feb 2023 09:36:11 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pV81J-00FkJs-LG
	for linux-phy@lists.infradead.org; Thu, 23 Feb 2023 09:36:10 +0000
Received: by mail-wr1-x42f.google.com with SMTP id c12so10129340wrw.1
        for <linux-phy@lists.infradead.org>; Thu, 23 Feb 2023 01:36:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8+c3O+JKb+ygyDEtjXcAkTDQCL5lhMHIdEFdwOPkUzM=;
        b=GJAvOM7vT6y+dpNnUBSXR8Ebltv2bQljUUOjeCVhH+BHrudJbK6t3LP+tnTTJyVur7
         S/W8Iuh4ID/TlBggamOu7aFWsNu2AMd3kK5xLMgYsbr9G/hGMCNh4kAF0htl8p4FtDpc
         kliFUM4kqlARQ+W5qLa649a6zqvToo665hF/E0ErCtfI1V1WSv4OnuuHaxvm/RvVF3BC
         o4gk8RuiYnYyTs4yd0Z8n1BOs2onAiZBqpj3LT1HBFN1vIQOZARwLGmGLToZajHrkgPQ
         B5Kl01grWp/Y1cWhljIkZMdMPpUuABL61kL/hYXukh5zJN6H7NQnzHQ20N8QpSykhAqT
         L5ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8+c3O+JKb+ygyDEtjXcAkTDQCL5lhMHIdEFdwOPkUzM=;
        b=Mni0/AXykJaomusjROT9vv1Y8OulaPw0/DCEOM1tM8RtGN+AVWHhoevSLouduLy1PR
         R09YWVj2tavVGi3ncPbjVjNHTb3VuMccOD1QOGsanedu+m5DnoTuw+Ofl3odMcLfENvG
         7l0wGqNkE6S0amMs0hlFgBnTs7cAEUWmKNHMcBxgaryqMcFNsPlUHfT8FMC72W60eFTq
         jlzjBKMQ7AWo+GxoztmuwBAH9VYBOkBjHkohaDxadnaNcKBJBHNZhvbAQ+4tZOKhhcUi
         NXmu5v7dYh9MTxWwph1Bp/gbmo9zlCOx4cKpT2YCrf+3N0KbwuKBBdOMstVWS39q7wbi
         tpug==
X-Gm-Message-State: AO0yUKXUjDkm9348S8XnO8TXRQXtc5Wt0vNU/A2HKx74pYkvKykcuQmv
	mcLzDSsgTCv2Ek2U7HrSWnGEww==
X-Google-Smtp-Source: AK7set8QN3z8iyphsQHHkmevnZI5JlReWkBkgbZdtR+/J74U1LMkYhlHUOO2fryJAU1hiUfczkXfHA==
X-Received: by 2002:a5d:6a04:0:b0:2c3:db98:3e87 with SMTP id m4-20020a5d6a04000000b002c3db983e87mr11353074wru.20.1677144965983;
        Thu, 23 Feb 2023 01:36:05 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id n10-20020a05600c500a00b003ea57808179sm1577581wmr.38.2023.02.23.01.36.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Feb 2023 01:36:05 -0800 (PST)
Message-ID: <4e2ea3e3-8a5d-0e9f-f16a-acedacc99b95@linaro.org>
Date: Thu, 23 Feb 2023 10:36:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 01/11] dt-bindings: PCI: qcom: Update maintainers entry
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 andersson@kernel.org, lpieralisi@kernel.org, robh@kernel.org, kw@linux.com,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org
Cc: konrad.dybcio@linaro.org, bhelgaas@google.com, kishon@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
 <20230222153251.254492-2-manivannan.sadhasivam@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230222153251.254492-2-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230223_013609_725030_1A879300 
X-CRM114-Status: UNSURE (   5.73  )
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

On 22/02/2023 16:32, Manivannan Sadhasivam wrote:
> Stan is no longer working with MMSOL and expressed his interest to not
> continue maintaining Qcom PCIe driver. Since I took over the driver
> maintainership, I'm stepping in to maintain the binding also.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
