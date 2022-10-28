Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72432C38A02
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 21:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NvP6qt09S4fh6pmipIGk3dGNxqoevxQZ4LiTAq1lwnA=; b=daCyLoTHlBMJ+r
	5iIBv/Ycy9jezFXpZqx1LP4yJ7nabwDDXve0As7aBUYTXv9NcS/tKr55W6DnMHSesqe81vTIPyye+
	UlbLnR9xIC7laM9xLduqvXX/1/beTVedzKp38YIP2YNbnWryVWO0EQrYnmTSKj33SIrxycMMze0aP
	Djb6sIO/SLje086crspWM49p031BLoKEHe4hnMBgMQ6hT2wiuUoUEY/T0ozj3BFkwZZBCCYY/IQbc
	GyNvkxmNe0wWQa11FaROhe2i3fdStL1k8li5duKh0Q3V7d+G3x6IBRASnGjIsqO6qwU53rntnXn5E
	3jz5cts4eVTADpzWU4hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooXDI-002SRt-R1; Fri, 28 Oct 2022 21:48:28 +0000
Received: from mail-qv1-xf2c.google.com ([2607:f8b0:4864:20::f2c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooXDF-002SQ5-TU
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 21:48:27 +0000
Received: by mail-qv1-xf2c.google.com with SMTP id h10so4944294qvq.7
        for <linux-phy@lists.infradead.org>; Fri, 28 Oct 2022 14:48:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SBJznIFzWZyEQbZ4eSSNW6gDtZq5LgNV4oKX/YjGZaU=;
        b=S1rpEcjOVlvANLl0lKIzyQw2/HKiR+gzWh/C1KxmlLUp0TymDAoBBY8Ul+cVdpkdD1
         Qb+bWUawxtnOwh0PeIYsVu+AtzModJPMUMpySwO18TKpURRJCEaWD2UxXDZtkCbTj80K
         kxoqBKC7J3qx9FOP4/N+MzwlGjX2xZocCYVImbCiIPJZBz59J33i7tRXHqlwImhCpS6r
         Xc3omikSPEMPvz741LYlnWLNrU5bPK6HMts1n1I4APzrtQdgsB2sd7z89KuD+OsuRFfE
         Inht9Swb9s7xcvFyzVUOdCUuv8xTNyBBJ9mqwMZKr6At2fkJN5SJC231U7AP+YGuxVuG
         0JLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SBJznIFzWZyEQbZ4eSSNW6gDtZq5LgNV4oKX/YjGZaU=;
        b=o+rBHZeKYdCpo0FKnOFrpk//rbhG+pwGgJJdHWNh39JvtGi0wh/2UdvhP/fupBvrCk
         /UUI6y8V+wmCzAwfY74YRN513u6pbFgmaXmp6Mtny/ukyU39oE5xAWUxKM6iQu2GNnsj
         q0gdZB5GmNEFjLIespOcKrojRyr0P/8HIpej1h22omUPU6+ZOX6YCyAidhtR4YljpRgD
         SQl6/sTTgq5XzpbWvYMsUP9oFR+U2HreieYKGhkXfQX4/Yuyg17Y9Jv9QU8lj0vtl9sx
         +a12xImXcYS5sfUw+oNKaxEVibSgw8Q7H9jXyFVCTP9Npjnvz6FKRYO8RaQdOkuudDQz
         Yj3Q==
X-Gm-Message-State: ACrzQf2IlI0fBMCKofrxKmEc2quqXxuob+ePGQ7oEHINoVXCLHFGXIsk
	YiWnH/MizUTHv+pEpzWVCV8b3g==
X-Google-Smtp-Source: AMsMyM7RVnXDhVMel24hc/A2lGTULvxRB93QAfaenSC9hzmYAcuI1qSvsj4Kp1lV+hm1ywpWSMbBPw==
X-Received: by 2002:a05:6214:29c9:b0:4bb:b957:cd4a with SMTP id gh9-20020a05621429c900b004bbb957cd4amr1364459qvb.108.1666993700285;
        Fri, 28 Oct 2022 14:48:20 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id m22-20020a05620a291600b006f926a0572asm3847258qkp.27.2022.10.28.14.48.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Oct 2022 14:48:19 -0700 (PDT)
Message-ID: <5392d0d9-ab8c-8945-169f-264114017c1f@linaro.org>
Date: Fri, 28 Oct 2022 17:48:17 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 04/11] arm64: tegra: Enable XUSB host and device on Jetson
 AGX Orin
Content-Language: en-US
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Jon Hunter <jonathanh@nvidia.com>, Wayne Chang <waynec@nvidia.com>,
 gregkh@linuxfoundation.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, treding@nvidia.com,
 heikki.krogerus@linux.intel.com, ajayg@nvidia.com, kishon@ti.com,
 vkoul@kernel.org, p.zabel@pengutronix.de, balbi@kernel.org,
 mathias.nyman@intel.com, jckuo@nvidia.com, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 singhanc@nvidia.com, linux-i2c@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
References: <20221024074128.1113554-1-waynec@nvidia.com>
 <20221024074128.1113554-5-waynec@nvidia.com>
 <2059dfe5-b084-42a4-7f35-9da9561fc12b@linaro.org>
 <b803bcf9-fc47-5239-ffe9-707925f324de@nvidia.com>
 <5676bcd2-14fc-4e1d-643e-89e575d190c3@linaro.org> <Y1vNU1KeUH8LvG0r@orome>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y1vNU1KeUH8LvG0r@orome>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_144825_983150_FA0EB9D9 
X-CRM114-Status: GOOD (  13.44  )
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

On 28/10/2022 08:38, Thierry Reding wrote:
>>>
>>> I understand you may not like this approach, however, this comment is 
>>> not really relevant to just this patch, but a general comment. But yes 
>>> we will ensure that this is correct.
>>>
>>
>> Just to clarify - this status looks redundant, but I have no way to tell
>> for sure...
> 
> But that's independent of whether we specify this using the full path or
> reference the node by label, isn't it? The only way to make sure that a
> status = "okay" is not redundant is by manual inspection. I don't know
> of an automated way to do that. Perhaps it's something that could be
> added as a check to DTC?

With overrides/extends pattern it is easy to spot one case of mistakes -
you see override, then status might be needed might not. You see new
node (like here!) - then status=okay is redundant.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
