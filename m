Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD82AECAAA1
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 13:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TU391D1342finerAGYCMPMVxedOP8Fh3O5SbIdpx/Fs=; b=VSv7S5zG1XYqTV
	IbqTMnon5W5WF+y6CbqUBi0uunmSBQAB09XrFLo1EGH+ZZo6zXOvqtMQH98wbOuPFJVgt1yneRpJU
	kW1dos0X21t/XI8DOTL/zp1dwyoITnLdGKsmPx4XzaHaXHwR1TJYnT7MwLFeYwNjQ2lAgz5b8WE0X
	1byMC5RqF7U3P/l8wDrgZ+l0JR5lUtWV+8OKgihQURydsN+n6G+QCKV4UYPE2t8szwPwmB4TYgMty
	A9lxoq1tHU/EuR3ZTQFjx+KmqZUu9KRkH/f6aqw2Zd+P0AbPklGsO8C8oAd76ZbCFKySQmfWowjdU
	AU12jjSOOnVv8l4mRkgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxYk-001ihV-7y; Mon, 24 Oct 2022 13:32:06 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxYh-001igU-H9
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 13:32:04 +0000
Received: by mail-lj1-x22a.google.com with SMTP id bs14so12799747ljb.9
        for <linux-phy@lists.infradead.org>; Mon, 24 Oct 2022 06:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9mKsfIWpa7V9k46Arai0KI6Ar9k3GJZZKenWY2uV0rU=;
        b=ywvMqT+z+qb9B9IOh9FO4Rw7gnnbwZSApPutG7lpctxAL21queUrkzYeLZMeloFSbl
         x9K6DXvCSWwG5lU0epxgjqFuxhgMeSengsuV6d2ZycOPLYNh0dncq5S+MZMG2Fql+Z4k
         qEcdJojzp98vOr12LtDmQ5+cffJNfr7Um1/EhAT4wttCCc0XT/Xhr5x38xAQUvI0DCxs
         hW6XWRLOOVNGql9EuG43BKD6ioeYzglQemNd1zoJb6YdYeWSDe9Jq+9FsBigPvh9hpuf
         MMjOCRzfG7gYxAxAj6hb49pVwp/pJTEVl8sCqKMYxVnf3zagnVChCsiZ4qxC5u//c1nl
         B3Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9mKsfIWpa7V9k46Arai0KI6Ar9k3GJZZKenWY2uV0rU=;
        b=mDvswOdBCDkhlbDiVc6/JLPghE1SVAiQVACaXthAhrLuDreTT7vHb28lHUV1y34x0i
         kJiUfmLUm97WzTntm0svRqhTUeNvpNKISza0LBwGG/+/AK5PWg8uPoXpCemOmrQ9QRO1
         bm12j+Bz16X0Mssq3nzkDk/Cm0Kd42U+3JwfclZaEEkSSJmO9zcfOpbMM+yYOFG7DuiZ
         pgH3Ini54oj2K8tg8JIVuU4+hXKTMbrgnSltuj0WzguHmFafEYBJgZ7t+RHWgX30TjD6
         MxBQ0edUe9iOyxHz+l+GBHypkBxmj+C+f8cIQRpjVVCBrY5Fl2cZ7cPlBJE3Dl481MPm
         7myA==
X-Gm-Message-State: ACrzQf2Cqp6C6n8zE+hvxAmuYrxgelJgKqxOFMxV9qQREniH1X6of7yH
	rMdv6ZYpaKlEPY2lYrWO0dmfHw==
X-Google-Smtp-Source: AMsMyM7WUs6aeUNCICLhdJhwB77WGIRqZ7ubxT1Qp1R7WDdA/kFHuprTdIx1QPeWe6A8jDWVL7bYxg==
X-Received: by 2002:a2e:8697:0:b0:26f:b795:8b39 with SMTP id l23-20020a2e8697000000b0026fb7958b39mr12457697lji.218.1666618322142;
        Mon, 24 Oct 2022 06:32:02 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c24-20020ac244b8000000b004947f8b6266sm4411058lfm.203.2022.10.24.06.32.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 06:32:01 -0700 (PDT)
Message-ID: <d8ffbfeb-be30-e221-6185-974569f72515@linaro.org>
Date: Mon, 24 Oct 2022 16:32:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 09/10] phy: qcom-qmp-ufs: restructure PHY creation
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024090041.19574-1-johan+linaro@kernel.org>
 <20221024090041.19574-10-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221024090041.19574-10-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_063203_598264_6387669F 
X-CRM114-Status: UNSURE (   9.84  )
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

On 24/10/2022 12:00, Johan Hovold wrote:
> In preparation for supporting devicetree bindings which do not use a
> child node, move the PHY creation to probe() proper and parse the serdes
> resource in what is now the legacy devicetree helper.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 34 ++++++++++++-------------
>   1 file changed, 16 insertions(+), 18 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
