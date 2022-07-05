Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A52BC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GluCwfJjtpDx0BkFMFjZ/Hqvqlq85GnKe6K3yC5RcUg=; b=XhVF+ns0jjCyQB
	7RiDKvuNMBHYOhEy1f5rxCJQferG2AG4LR7n1e4irsqUFPVVXPIc992mhZd8JleqB/kEWaU9G1XSk
	UizS6KfWRULcMgriPw1S2wsv3XT6x1X//8MJySNBGQtmyNNhb4lm9nTRnun1cFWZ8NaBcgFry040z
	eQywzykBiP4y8yg6yAR1QrOhj4fAdc5YtnbrW4rawx29VyyW8ezhfQw6YO5oig8VlE/hG3JCkB0uC
	l50YCDMUZDif85K0slmZn2smgK0N1wKp71OMQv/g3VL0YgIzCAaqpipHSm/bzFoBIvsLAS25aCwz1
	tslThJjJkkk+MYGMJACQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fiU-00H8os-TN; Tue, 05 Jul 2022 10:23:38 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fiR-00H8nj-Md
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:23:36 +0000
Received: by mail-lf1-x130.google.com with SMTP id i18so19740145lfu.8
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 03:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=D5siEQlI9XeniTKofv/2Ej6WMzqEAvwWpsCPDQ5Kx7k=;
        b=RGrEAp7zvLo7CTBtpOOl5wiObpP8CTfkfXlUAXMlhsoqFhctrsSeGyQvtum9CIMClQ
         T2ionu2utuPpEtPp8pEJ1SrdUwt2orU2kEVDrs+3cuzWyq/aWS8d8HJ1BODLE3gLG/HQ
         RBUoCV972pvReTzlL93EsOl9qCj7Q0tfHPFaOGFNAc11JkQgLqlPVzTqZU0rPwrcPWPM
         zqah7tRBSuz0NI3lQ0TFfXPoX1D5qN8bfxwKApd5EefSfCQaNvTQxv8fRbZDoiTJmfhX
         MqhY2392OhqhTie0d3Dt2sfN2AmOf8QjBFhWFMU/jXuVt2SwDcxGluCbmyzT1H/m4MVZ
         aNlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=D5siEQlI9XeniTKofv/2Ej6WMzqEAvwWpsCPDQ5Kx7k=;
        b=COKA+jTVN7baSNRcZZNDmyZ3io4pGrpbRObbzhMJVm+CgjmFytkEeAC77XgUydhFRe
         sj6viYOAXQzjNozBuR0veSqt3aWkPVgSGjSv4RZwjqL61Xq8qscn+xmxsP+bYEE/hmhl
         5HCK8GJVpVh6bpeKTi2kxvJaZhD6omjsSanbyIf6p4DDz821LMZg17CJiI0gbozG9+xd
         B0NkJBzQOikL0Jyp1JOppnZSfKx2WweK5Nyesbgd0UxrzfcEDkCRzJ6UXuPMbeTkAL3I
         KDS1Y5lRg9HdR+NNhO769JR3oud994CSTCOcg7Bq/cJneOqqXc8U4NXv2xjRxGCROZvi
         TeGQ==
X-Gm-Message-State: AJIora+o3QrE2PpguOpDtkoXqWuU/Dtq7tejBD5LY2izT/crizW3WrVv
	I9G9MD4rgHB329n84vEvwaO5aw==
X-Google-Smtp-Source: AGRyM1u/5ekv4E6MjvZ4URSOmp1X5JoJIqCjqdBiA5tEuuxuPaVwWaOw4MHCavNj71iNDl2hB3U8ng==
X-Received: by 2002:a05:6512:260e:b0:47d:ae43:62b3 with SMTP id bt14-20020a056512260e00b0047dae4362b3mr23834973lfb.77.1657016613842;
        Tue, 05 Jul 2022 03:23:33 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id s6-20020a056512214600b0047b0f2d7650sm5622474lfr.271.2022.07.05.03.23.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:23:33 -0700 (PDT)
Message-ID: <b1a14a8d-489c-6871-332d-230811baace3@linaro.org>
Date: Tue, 5 Jul 2022 12:23:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 07/43] dt-bindings: phy: qcom,msm8996-qmp-pcie: clean up
 constraints
Content-Language: en-US
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-8-johan+linaro@kernel.org>
 <4b1a9ded-24b1-faf1-e105-f18afef57682@linaro.org>
 <YsQQnT5ixHtSo+vk@hovoldconsulting.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YsQQnT5ixHtSo+vk@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_032335_788165_221528E9 
X-CRM114-Status: GOOD (  10.82  )
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

On 05/07/2022 12:21, Johan Hovold wrote:
> On Tue, Jul 05, 2022 at 12:09:19PM +0200, Krzysztof Kozlowski wrote:
>> On 05/07/2022 11:42, Johan Hovold wrote:
>>> Drop the compatible conditional and tighten the property constraints.
>>>
>>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>>
>> Squash it with previous patch. Does not make sense to add new file and a
>> patch later change it.
> 
> I beg to differ, for the reasons I just spelled out in my previous
> reply.

So let's keep the discussion there.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
