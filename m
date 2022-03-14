Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56D13C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 14 Mar 2022 10:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JB1GcmW9sYRUvHUslgiJGi+6+QM0A/CcoFtUdMPxGrA=; b=4tPxVpidwNqoIP
	y6NpSaSNxk2Z3AXKSQ2x7KhVaoNX80SE3iQKSp5Xd6xwdzymF5jrGtIwiPH9y7gvVSjAs8xRK8rvO
	C5TTSoUoIWP9khwtujNBzql2IpA23SNd8dujRA+/D6OWR97tn6FGbaSiS+VlX/NpLpcB3mj5TowCL
	JbbzxdWaUmtq8ImnSLNzH7nAyi+UxGOYpMis0UzfmEp1+uewRMUJItDxkgp+wmv395r5RjymVpEzm
	8xzSVnhpisgjDemD5rSLWp3c9R/sLkcbFPuM5ArkScZ6jm4XuQ1CxXw5zomxbL07hUsRqtiGKI5Bn
	Ls90aYxEIeDwdY58WHng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTi8r-0050jN-QW; Mon, 14 Mar 2022 10:41:33 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTi8p-0050iA-7I
 for linux-phy@lists.infradead.org; Mon, 14 Mar 2022 10:41:33 +0000
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id B98FE3F7DE
 for <linux-phy@lists.infradead.org>; Mon, 14 Mar 2022 10:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1647254489;
 bh=cR8L9DGP3yJSDi44x8gY1TGjdeDaEHMP44/lzSW8rUQ=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=uZ1YNzHChHmCeH+THODOAPEsCaIwQg65eSDPPYJu4McYWuq9pumNDgtR2wYIVQVuv
 DPDYLKURuGTvJTBPwPrbBQaoNKxezHUDyHTqrQaTItMXmgYe2surs3nryfu7KO8xx2
 7I8aYTM52kGQOjrDfYswCL8R8oVQcsC1KqlJwJ2uVSURDAItNG0VU/L+Ox78/5kHXX
 Dv7VVWdLh4GXZntNWj9L9SuNn89F+nHaWwkskyS8sNivhioMmQtFKTFvCL4jpAvkzV
 uBi92J7/cpR/mvKx6L1DDTTBTbQ5IffRfysUHPrP7BGKuFVfiE0SuCGTqt2OXHO8aF
 MwCqZfGfJcYkw==
Received: by mail-ed1-f72.google.com with SMTP id
 r28-20020a50aadc000000b00418572a365bso3442018edc.0
 for <linux-phy@lists.infradead.org>; Mon, 14 Mar 2022 03:41:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=cR8L9DGP3yJSDi44x8gY1TGjdeDaEHMP44/lzSW8rUQ=;
 b=28Acz/UJ8pZdMeVnF8t5q0Qw5YF3WaUJly5xl9QIfk6RvSW8cE6NggDWwxZBdLhj3e
 ypsKU5Y27X1IJamOlQ7ueXEueZE7llyPCl5qPQIWZ+4E5nVndL2VqutHvi9ILy7VYr5g
 POa858u2UtCnsK3J+W7XJsICM62Mhk/WHoaS3/FmWrbZw9iF54bt1MJzogdd5l5cyhd5
 aQtWFwiXo4R5PJPmsJlC2ku/jef9lcDpwSl+qbA6CbBEetLrZit73KGG9uxcHno7o89M
 3D9zt8FVl0c94qCocVt8MGvylN6BElaFngVSYgDpXCc/rMI0N8QTHIsGS8EL56NQ4bR9
 pc+A==
X-Gm-Message-State: AOAM5323Tu3rYTGBLvOQfeZ5/GoZqAybbWzfW3cKQOoXvg+hqTF0gOZW
 kaqa6fRvRef2jeioxoJSCW12nlJmLjI2t3Ua8NWzTinXacfWYXjn+lEjiNSF3hvsh4StxC8Bi9p
 c36juqmiBMWHP8YR/Km81TiiQ82DdXahp5l0h+Mz3vSY=
X-Received: by 2002:a17:906:c116:b0:6d6:f8b3:cd47 with SMTP id
 do22-20020a170906c11600b006d6f8b3cd47mr18639523ejc.501.1647254489232; 
 Mon, 14 Mar 2022 03:41:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxSOTbmSAF6uG3GM22YAt0E/KC7wWNF2wsOIEvYm9csbBjNR+5AfgsSfbdmR5FElce7jWg1qA==
X-Received: by 2002:a17:906:c116:b0:6d6:f8b3:cd47 with SMTP id
 do22-20020a170906c11600b006d6f8b3cd47mr18639508ejc.501.1647254489015; 
 Mon, 14 Mar 2022 03:41:29 -0700 (PDT)
Received: from [192.168.0.152] (xdsl-188-155-174-239.adslplus.ch.
 [188.155.174.239]) by smtp.googlemail.com with ESMTPSA id
 er12-20020a056402448c00b00413d03ac4a2sm7380218edb.69.2022.03.14.03.41.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Mar 2022 03:41:28 -0700 (PDT)
Message-ID: <fadbc93f-8741-58c6-d0e5-dc740e0f0724@canonical.com>
Date: Mon, 14 Mar 2022 11:41:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom, usb-snps-femto-v2: Add phy
 override params bindings
Content-Language: en-US
To: Pavan Kondeti <quic_pkondeti@quicinc.com>
Cc: Sandeep Maheswaram <quic_c_sanm@quicinc.com>,
 Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <wcheng@codeaurora.org>, Stephen Boyd <swboyd@chromium.org>,
 Doug Anderson <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, quic_ppratap@quicinc.com,
 quic_kriskura@quicinc.com
References: <1646288011-32242-1-git-send-email-quic_c_sanm@quicinc.com>
 <1646288011-32242-2-git-send-email-quic_c_sanm@quicinc.com>
 <b793195b-1d3d-63b2-19d2-72ae2aec8c0f@canonical.com>
 <20220314032952.GA27561@hu-pkondeti-hyd.qualcomm.com>
 <f1621a67-a0ff-f111-c4da-9401924e7f4a@canonical.com>
 <20220314081613.GA28402@hu-pkondeti-hyd.qualcomm.com>
 <c88396f4-4cfe-d375-1dcd-b34a6496cb06@canonical.com>
 <20220314094054.GB28402@hu-pkondeti-hyd.qualcomm.com>
 <b45b3b7e-e1c0-79b6-81c0-53c70427dd10@canonical.com>
 <20220314103045.GA31533@hu-pkondeti-hyd.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220314103045.GA31533@hu-pkondeti-hyd.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_034131_501809_162BD465 
X-CRM114-Status: GOOD (  30.00  )
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

On 14/03/2022 11:30, Pavan Kondeti wrote:
> Hi Krzysztof,
> 
>>
>> Ah, I did not get it. That's not the solution for this case. defines in
>> dt-bindings are for constants which already can be in DT, e.g. IDs. Your
>> register values should not be stored in DT.
>>
> These are again not register definitions. These are encodings that dT and
> driver can use. These would be constants only, no?

What do you mean it is not a register value? I don't have access to
datasheet/manual but I can clearly see code:

+	if (or->hs_disconnect.override)
+		qcom_snps_hsphy_write_mask(hsphy->base,
+			USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X0,
+			HS_DISCONNECT_MASK,
+			or->hs_disconnect.value << HS_DISCONNECT_SHIFT);

You read the value from DT (e.g. "3" which means 6.3% for hs-disconnect)
and you write it to a register. Directly. 3 is a value for the hardware,
meaningless outside of it. It has meaning only in this one hardware
programming model. For humans it means nothing. For humans 6.3% means
something.

>>>
>>>>
>>>> What could be the meaningful value? Percentage could work. You have
>>>> there a negative value, so I wonder what type of percentage is it? What
>>>> is the formula?
>>>
>>> I just multiplied by 100 since device tree has no support for floating (as per
>>> my knowledge). The negative value represents it lowers the disconnect
>>> threshold by 2.72% of the default value. if it makes sense, we could also
>>> start from 0 like below.
>>
>> ok
>>
>>>
>>> #define QCOM_SNPS_FEMTO_HS_DISCONNECT_NEG_2P72_PCT 0
>>> #define QCOM_SNPS_FEMTO_HS_DISCONNECT_DEFAULT	1
>>> #define QCOM_SNPS_FEMTO_HS_DISCONNECT_3P17_PCT	2
>>> #define QCOM_SNPS_FEMTO_HS_DISCONNECT_6P3_PCT	3
>>>
>>> The driver can have a table to map these bindings. This looks much better
>>> than those x100 formula values.
>>
>> Again mention driver how he can map it. I mostly don't care about the
>> driver. :)
>>
>> I think we are getting around the problem, so to emphasize again: do not
>> store register values in the bindings/DT but its meaning, so in your
>> case most likely percentages (or permille or ratio or some other value).
>>
> 
> I am really confused on what is that you mean by not storing the registers
> here. We are only giving enum values for specific percentages supported by
> the PHY. 

The enum consists of values used in hardware registers. Values having
meaning only to this one particular hardware. Any other hardware will
not understand them.

IOW, you embed the hardware programming model in the DT. No.

> if you see -2.72 corresponds to 0 value on 0:2 bits of a register.
> I did not mention that in the device tree. we are giving constant values
> (enums) for all the possible percentage values. The user can see the
> dt-bindings file and pass the approriate value based on the compliance
> results. What is the objection?

You use some unrelated arguments. How does it matter what user can see
or cannot see?

> 
> can you please give an example if you have something in mind? 

I gave you an example - use percentages. Another example how it was done
wrong is here:
https://lore.kernel.org/linux-devicetree/c6607953-927e-4d85-21cb-72e01a121453@kernel.org/


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
