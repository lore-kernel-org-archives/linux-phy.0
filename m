Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6785C54EE9
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 16:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OKZ5T/6OW8xzLvkcXrr8cHZv5A6YuZnuKMZsN4EmVUc=; b=4HGac+0WKUsnzT
	vPHjA0RAlOc5wFezMBnyOpt0Z6dQeRgJFBqXaiXWCLVoiQYlnwdOJKdJmwlwDtsG2eP6bakASobyl
	UzyXU+ivxonEDzYHdr/2TvJGfezff/a3PvGr5N+SGdSh7JJMH+q7K+B/qhyufqZhJCjOi6eJ+Hb/f
	ybqb47a6H8TMjKSNNKDjeLY89PUVTaHyUCG3BNHxuU+aDe4ZQtUK2BSQXH9rUx2RTlAMUJdwy+ycb
	pfmuWPqDTS2vo81rmIDoyqksmYudCR7doofid/Gh5/Vq9GJv+MYT+7CJX32NSnzzQZv/d8rnFsDoN
	G7nGLWrqcTM+Y8jonzaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obOcV-00Gb4W-4m; Thu, 22 Sep 2022 16:00:11 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obOcS-00Gb0o-Ps
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 16:00:10 +0000
Received: by mail-lj1-x235.google.com with SMTP id a14so11536570ljj.8
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 09:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=V6c4rAkBN7foufFnqvB7xWcwVdlx3krdKAsSA3LKM2E=;
        b=EYPGtsJB9cW2i8ii2puNH0fl/Zo+U86V5lGXj2D6qdBeobw33K4NOA3XttPpBcTQxj
         BmifAf8To/Ekt7txQ0CRAsoStMlTM9qzDNX21zyAM+0RsHiy+Du3fI/AJ0fvAiAkfCmw
         2+la+sBJePp/H9saQOBkOdDYQQagqXLVHlNt1DmTlcwiMzBUooRHMOftwDb4KTQPn1EP
         dL1bH1zU6/qLtMD9bx81tSrcuoxmigJIZD0GtFir1mriQVY5T+PGXaJIhR6T8KCnV6W1
         WpxA7eL5BOC1RYZQmGS0iMY+9MlypPsXM70o7KWWjekX3ilZqy9TJShlzaUrx56Rb5V/
         QIZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=V6c4rAkBN7foufFnqvB7xWcwVdlx3krdKAsSA3LKM2E=;
        b=MtNbHj5iVhfO6IA4sNPIOZ1YZI7YbetbTYldePGAwn4P6DsC1mO4JpxfbM6skjKPyo
         MWb+q4/jCfcKYconqN3oSkuikxuNplvQraCN/lYLNf0TYPSmWV4xFul1/Y+W7uv4L9gl
         DQtDdkfM6w8ggVySAnxZdD/AbAl4EIH39VUJCWJ9lUAnVDjd5/wZgWoHzmEaMXgWqldm
         qNBFDdShTuZK+ypmMoX6f8XnmMMc3VjKOhBslcxrjNV2QdMM+wFHT6p7LW2cNjCZUfZ4
         nKLHqr+QhLya3FYb6CeNa5dNUAj0run3DGhs+kH9TmJvST9HRaymgFllJzqt8l5dgMP7
         XcSQ==
X-Gm-Message-State: ACrzQf164crhTnyl6ze5g5l1dndufGhS8T63JCw85M8gV+r3pQ74sMMl
	010YLK0Xw5j1ry/wRyElc575aw==
X-Google-Smtp-Source: AMsMyM73gkh5v4gbhi++Eqv5Q8s+pslKnw3lQRjbKqjuIm9witwFzTyTHNJ1ckYpHAt0TqUTGvqYhg==
X-Received: by 2002:a2e:780b:0:b0:26c:1458:ddc3 with SMTP id t11-20020a2e780b000000b0026c1458ddc3mr1443600ljc.375.1663862404991;
        Thu, 22 Sep 2022 09:00:04 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id d9-20020a196b09000000b004999c243331sm994865lfa.141.2022.09.22.09.00.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 09:00:04 -0700 (PDT)
Message-ID: <297f22b9-931f-669b-6539-c59fb411aa38@linaro.org>
Date: Thu, 22 Sep 2022 18:00:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v6 2/8] dt-bindings: phy: Add Lynx 10G phy binding
Content-Language: en-US
To: Sean Anderson <sean.anderson@seco.com>
Cc: linuxppc-dev@lists.ozlabs.org, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org, Madalin Bucur <madalin.bucur@nxp.com>,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Camelia Alexandra Groza <camelia.groza@nxp.com>,
 Rob Herring <robh@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ioana Ciornei <ioana.ciornei@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org
References: <20220920202356.1451033-1-sean.anderson@seco.com>
 <20220920202356.1451033-3-sean.anderson@seco.com>
 <20220921065718.lafutkkgiium5ycu@krzk-bin>
 <4e125df2-b815-c0cd-336c-97b20c2702c8@seco.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <4e125df2-b815-c0cd-336c-97b20c2702c8@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_090008_870593_6087C050 
X-CRM114-Status: GOOD (  12.44  )
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

On 22/09/2022 17:23, Sean Anderson wrote:
>>
>> This check can fail if there are any dependencies. The base for a patch
>> series is generally the most recent rc1.
>>
>> If you already ran 'make dt_binding_check' and didn't see the above
>> error(s), then make sure 'yamllint' is installed and dt-schema is up to
>> date:
>>
>> pip3 install dtschema --upgrade
>>
>> Please check and re-submit.
>>
> 
> I believe this is due to the previous patch not being applied, same as last time.

Yes, please ignore bot's report.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
