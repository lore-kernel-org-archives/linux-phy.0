Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E82A1C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  6 Jul 2022 10:12:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4sEu7vfFU86bo2lsummOSfRw0JOXuujWKKXgbTgTI6A=; b=2EWtpnfPAvv0Bn
	8rLkSDzbkayJtzCpQqBzOQ7aTemNGCJbKM5WAc6PSniIISDH8qp0qspiht7fNGY0lDpFjyEknoEDQ
	XyF9U+ijEhiOXfVGTYUoChZNsws4gOXcNtMnxd0cf2p51210wadzGRDpb65rghgEEQvRKYl3WXjBt
	OM1+wFbKObGgmOiTXmxd0kjqojitMn/Umb4sBAF2QHLRecOy+OM1jpA59//9EMs9X/ZUE0Z1XaccG
	yDnLlFW7aILdQWhcZb8EzjqiSyeaoLejpVzSJgKvewxOfaHptReBLiXD7oDNLF5ArVTzIIED/KLOv
	7drfMXnVMCcsNsXTo1Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o921D-008EyK-Vu; Wed, 06 Jul 2022 10:12:27 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o91o2-008308-HY
	for linux-phy@lists.infradead.org; Wed, 06 Jul 2022 09:58:52 +0000
Received: by mail-lj1-x235.google.com with SMTP id j23so1078353lji.13
        for <linux-phy@lists.infradead.org>; Wed, 06 Jul 2022 02:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=GpoFCpZ8O+svTpauDAo3u58PUgHKFYEWbYXLRGlqYoI=;
        b=fQBiNzPcw6khJIZ+MJnKxSLu+xO+uEeNhlVX/9O2EgoZjfKxokGTrBAI639jhnFbss
         Tu5EexKI/sj5GBhoLe/lMSdh/gpRDpmMhOPsqpDYKdbtLpz+Wq6zWykcUg6je1Cc9l4A
         e5xDnh5fN4sDrwjqPstLnQmQ+RZ1iqBSYFYmYlkXRYOg1eDOahK5I6mLFCDE24sMd/qQ
         IEbqgkoQcSz3BA8l6RasVmJHESsATl3g/r31ztbHw3OCPOb8rjdHUdP/jEf7zs8aaCXd
         lrwDnUw15bQa7iqxN7t7jOl/xSizN0VJ3rMc/lnG4QA9yjiUSl7T3gNnN4584rxZ4VY2
         wXFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=GpoFCpZ8O+svTpauDAo3u58PUgHKFYEWbYXLRGlqYoI=;
        b=wENTOaj5NWF8AjkwWiIE5CQDYBrp8TOh4zG6v9eJbCyVH/S7VHXBGe0+M7KOrv3I6D
         6VReTekYGawSxmRRDPX+Rlvzl9RPwLLrvbOQCp4RzDuPgU2RHPSM6jaoulkDUmeQidI3
         crD1eevb8qfkdeacFMr/RYYJrdlWGiGkgLBBgja4ePOhGpAhU77vgckjnhBy5pz4lz3l
         9qTyR6xs3E3xWe0mOvr1EZLijkO6gKppXhmBtyDlzeORwiVVeRCcdLkUwcYkJX048/dv
         PPrrpebohpTBZ896xcfDdmTGk1QHAbQm0lrf36cp0hCssd31qGg9UtRzPp8D+Y+36647
         tBAg==
X-Gm-Message-State: AJIora/ew616dKFji4UZC1SMkVU3c3r0rGXzdXdMIwnHJvl9kBHcJWG0
	X5r1ZFMX0FKTnEOwqUDEg61E0w==
X-Google-Smtp-Source: AGRyM1vcERb/TA5ylNvEDQakZ4PfRptsZ/M6Y8Wo3syi8+/XiLTxJb4Yj1R8b80RGJ3L7PBUAGQwvQ==
X-Received: by 2002:a2e:9b89:0:b0:25d:1c51:6c6a with SMTP id z9-20020a2e9b89000000b0025d1c516c6amr10198982lji.158.1657101528176;
        Wed, 06 Jul 2022 02:58:48 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id s1-20020a197701000000b0047f6e84f532sm6194015lfc.38.2022.07.06.02.58.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jul 2022 02:58:47 -0700 (PDT)
Message-ID: <e7ba92aa-c501-929b-6962-4cb4c6a1dc48@linaro.org>
Date: Wed, 6 Jul 2022 11:58:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH V3 02/11] dt-bindings: pci: tegra: Convert to json-schema
Content-Language: en-US
To: Vidya Sagar <vidyas@nvidia.com>, bhelgaas@google.com,
 lorenzo.pieralisi@arm.com, robh+dt@kernel.org, thierry.reding@gmail.com,
 jonathanh@nvidia.com
Cc: kishon@ti.com, vkoul@kernel.org, kw@linux.com, p.zabel@pengutronix.de,
 mperttunen@nvidia.com, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 kthota@nvidia.com, mmaddireddy@nvidia.com, sagar.tv@gmail.com,
 Thierry Reding <treding@nvidia.com>
References: <20220629060435.25297-1-vidyas@nvidia.com>
 <20220629060435.25297-3-vidyas@nvidia.com>
 <cab66a0d-18d1-77ba-c0ac-06f802874c0a@linaro.org>
 <3e21dbaa-b478-5713-5355-319d2843167f@nvidia.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <3e21dbaa-b478-5713-5355-319d2843167f@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_025850_654124_67211545 
X-CRM114-Status: GOOD (  13.32  )
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

On 06/07/2022 11:51, Vidya Sagar wrote:
>>> +  phy-names:
>>> +    minItems: 1
>>> +    maxItems: 16
>>> +    items:
>>> +      pattern: "^p2u-[0-9]+$"
>>
>> No, because this allows any/unspecified order. Please list the items, so
>> the order is fixed.
> 
> Not all controllers are going to have all of them specified. Number of
> these entries depend on the number of lanes assigned to that particular 
> controller. In this scenario, I thought specifying it using 'pattern' 
> should be fine. Please let me know if there is any other better way to 
> specify this.

As I understood previous bindings and your message above, these are all
incremented by one, so just list them and drop maxItems.

Trim the context, it makes it easier to spot the actual response. You
quoted a lot above and a lot below. I do not know if there is something
more to discuss? Usually quote means there is but I could not find... If
there is, use replying style matching mailing list.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
