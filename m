Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5806DC6FD1C
	for <linux-phy@archiver.kernel.org>; Tue, 14 Mar 2023 14:29:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ha1FBkANAlYuBiaG0+eCqXzv5G3yz3H5/fslp37ul6M=; b=Xj4ItNIM92nPLy
	eGMAV+c5O5rjniGdpUzmTbo0SiMzP9mGtLcsKgxbNQtjQsd1GOKlX7mcJ5/DWUxFVIpRbYeLB67LM
	twb7d8lJxTxQhD5o3srqLVZLnSxZWb0g1Jkrtmqk9doFcFN3asJ/Mn2Ath+7tCaG3B01RJzeaqSA2
	i5Czo8lS3ps+2R1d/URWMGTkUYjR5TkiseY2s5Ghv9/0i0uBGhtxldJ8eqnP5eyxkDI3zwOox3BHd
	ntM6SWw6d46W5e/bLJT0ih/osGquCfZQNEO98Iqle6Wx7gZ3d4AgJCgPUqxih5KwKc1JiomBSFjg8
	SL/SlpNkcRHvAdeUW0Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pc5eu-00ASuD-03;
	Tue, 14 Mar 2023 14:29:48 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pc5er-00ASt6-2c
	for linux-phy@lists.infradead.org;
	Tue, 14 Mar 2023 14:29:47 +0000
Received: by mail-ed1-x52d.google.com with SMTP id o12so62810983edb.9
        for <linux-phy@lists.infradead.org>; Tue, 14 Mar 2023 07:29:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678804181;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ElHjwIeT7npoxRMCw2nu+jmWqBva4+bKaapSz/mECSU=;
        b=TwVSJKTA35/n7SvFYUMIlB1ti+ObmERDISpugC0l5FukjPltxsLMTim+fYoqzITV48
         Trw+IaBTNH1Tc9uawQC+HZo+5oPJTqFty35G1Umuv/dmjPrqA7Eqneu1dZxeABPqSIRD
         0f2MjRjrXYt7GZEGmmhaPIVxnGU/zIf6NCHbYcuZXxOkybmaJvexGSBxykK//oLP3mPE
         5NK/nUYaWU/eyPRFiOcLoaP2qNqxVsCFrGcsGYdmIXXdLU2b9X7Pw9KMtNQM3D8xMqkt
         mJvuya1ZYDXNI2zXQb+o408sxCZy1cUeWmQTOZO9EjYw5CFdtzAhPMdhEg8f4Sqa6N5w
         Hc1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678804181;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ElHjwIeT7npoxRMCw2nu+jmWqBva4+bKaapSz/mECSU=;
        b=Tv4vFnKvihFrngyC0xIGaHVQKltKjIJ6z+n/od3Rpe8g0dSbPv36rYnKecAJOrykWc
         TNRTcX1XPWhdL2KwjlOTdtSSVYtnG3Bpv0VqiVbgKZznTIZQDeEuBomIGK0k/K/EuoHX
         FSyVUhRpagjlkxVucGw67GIePQFSwWLDlyYRm9CTcDJnJa4MVvxA8yFMAcfdNHv5IHqP
         4byDfO3L9z/PYNvJRsbiLN/XPl/B/d6mTi+fnsd+NZ1+2Aq2f8llg/hw3ohW+zjWVmuB
         g5E96MSMSzzl7/IgBi5Q/gpZFLQgy+Jjmjfilqu2PFeyn6eFKDMkubFKuW4qOOJNPetN
         +pXA==
X-Gm-Message-State: AO0yUKWn9BJ9jnKErobopBIrSQVaRZgjBZHQa2wal9t6FuiATGhBq+/b
	jl2T8zGBKbVm1vsQpklHy8GQQg==
X-Google-Smtp-Source: AK7set8BTJKzs7H5rL6iH9MVtKlcHgRUHKBlpQX+UW1cWD83NcyG/8r94I7ANT1OFh2CKPgR9hQNTQ==
X-Received: by 2002:a05:6402:202e:b0:4fd:c862:b3b7 with SMTP id ay14-20020a056402202e00b004fdc862b3b7mr2490284edb.20.1678804181215;
        Tue, 14 Mar 2023 07:29:41 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:59be:4b3f:994b:e78c? ([2a02:810d:15c0:828:59be:4b3f:994b:e78c])
        by smtp.gmail.com with ESMTPSA id s23-20020a50ab17000000b004f1e91c9f87sm1147798edc.3.2023.03.14.07.29.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Mar 2023 07:29:40 -0700 (PDT)
Message-ID: <9756a5ae-a5f9-c2e0-1bb4-cdcc4373b891@linaro.org>
Date: Tue, 14 Mar 2023 15:29:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCHv2 1/3] dt-bindings: PCI: dwc: Add rk3588 compatible
Content-Language: en-US
To: Lucas Tanure <lucas.tanure@collabora.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof Wilczynski <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>
Cc: Qu Wenruo <wqu@suse.com>, Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, kernel@collabora.com
References: <20230314135555.44162-1-lucas.tanure@collabora.com>
 <20230314135555.44162-2-lucas.tanure@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230314135555.44162-2-lucas.tanure@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_072945_858324_31E11712 
X-CRM114-Status: UNSURE (   7.66  )
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

On 14/03/2023 14:55, Lucas Tanure wrote:
> PCIe for RK3588 is the same as RK3568.
> 
> Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
